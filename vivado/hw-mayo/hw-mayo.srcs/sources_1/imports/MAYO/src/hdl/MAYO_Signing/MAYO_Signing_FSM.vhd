--------------------------------------------------------------------------------
-- Title       : SIGN FSM
-- Project     : MAYO
--------------------------------------------------------------------------------
-- File        : MAYO_Signing_FSM.vhd
-- Author      : XXXXX
-- Company     : XXXXX
-- Created     : Sat Apr 29 18:37:13 2023
-- Last update : Fri Nov 24 20:05:44 2023
-- Platform    : Designed for Zynq 7000 Series
-- Standard    : <VHDL-2008 | VHDL-2002 | VHDL-1993 | VHDL-1987>
--------------------------------------------------------------------------------
-- Copyright (c) 2023 XXXXX
-------------------------------------------------------------------------------
-- Description: FSM that describes the main function for the signing process in MAYO
-- This should be used with the BRAM Arbiters and the available cores.
--------------------------------------------------------------------------------
-- Revisions:  Revisions and documentation are controlled by
-- the revision control system (RCS).  The RCS should be consulted
-- on revision history.
-------------------------------------------------------------------------------

LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use ieee.math_real.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

use work.MAYO_COMMON.all;
use work.UTILS_COMMON.all;

entity MAYO_SIGNING_FSM is
	port (
		clk      : in  std_logic;
		rst      : in  std_logic;
		i_enable : in  std_logic;
		i_secret : in  std_logic;
		o_done   : out std_logic;
		o_busy   : out std_logic;
		o_err    : out std_logic_vector(1 downto 0);

		o_trng_en    : out std_logic;
		i_trng_valid : in  std_logic;
		i_trng_data  : in  std_logic_vector(127 downto 0);

		--HASH (EXPAND [SHAKE128])
		o_hash_en        : out std_logic;
		o_hash_mlen      : out std_logic_vector(31 downto 0);
		o_hash_olen      : out std_logic_vector(31 downto 0);
		o_hash_write_adr : out std_logic_vector(31 downto 0);
		o_hash_read_adr  : out std_logic_vector(31 downto 0);
		i_hash_done      : in  std_logic;
		i_hash_dyn_done  : in  std_logic;
		o_hash_memsel    : out std_logic;

		-- SAMPLE OIL SPACE
		o_sam_enable   : out std_logic;
		i_sam_done     : in  std_logic;
		o_sam_mode     : out std_logic;
		o_sam_oil_addr : out std_logic_vector(31 downto 0);

		--REDUCE CORE
		o_red_enable   : out std_logic;
		o_red_len      : out std_logic_vector (31 downto 0);
		o_red_adr      : out std_logic_vector (31 downto 0);
		o_red_bram_sel : out std_logic;
		i_red_done     : in  std_logic;

		--MEMCPY CORE
		o_memcpy_start        : out std_logic;
		o_memcpy_src_adr      : out std_logic_vector(31 downto 0);
		o_memcpy_dst_adr      : out std_logic_vector(31 downto 0);
		o_memcpy_len          : out std_logic_vector(31 downto 0);
		i_memcpy_done         : in  std_logic;
		o_memcpy_mem_port_sel : out std_logic_vector(1 downto 0);

		o_memcpy1_start        : out std_logic;
		o_memcpy1_src_adr      : out std_logic_vector(31 downto 0);
		o_memcpy1_dst_adr      : out std_logic_vector(31 downto 0);
		o_memcpy1_len          : out std_logic_vector(31 downto 0);
		i_memcpy1_done         : in  std_logic;
		o_memcpy1_mem_port_sel : out std_logic_vector(1 downto 0);

		-- P1P1T Compute Core
		o_p1p1t_enable   : out std_logic;
		i_p1p1t_done     : in  std_logic;
		o_p1p1t_src_adr  : out std_logic_vector(31 downto 0);
		o_p1p1t_dsta_adr : out std_logic_vector(31 downto 0);
		o_p1p1t_dstb_adr : out std_logic_vector(31 downto 0);
		o_p1p1t_ji_equal : out std_logic;

		-- LINEAR COMBINATION 
		o_lin_enable         : out std_logic;
		i_lin_done           : in  std_logic;
		o_lin_bram_halt      : out std_logic; -- DMA Wait for Copy (Big BRAM)
		o_lin_vec_addr       : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_lin_coeffs_addr    : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_lin_out_addr       : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_lin_len            : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_lin_demux_bram_sel : out std_logic_vector(4 downto 0);

		-- ADD VECTORS
		o_add_enable         : out std_logic;
		o_add_v1_addr        : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_add_v2_addr        : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_add_out_addr       : out std_logic_vector(PORT_WIDTH-1 downto 0);
		i_add_done           : in  std_logic;
		o_add_bram_sel       : out std_logic_vector(1 downto 0);
		o_add_demux_bram_sel : out std_logic_vector(4 downto 0);

		-- Sample Vinegar
		o_sam_vin_en        : out std_logic;
		i_sam_vin_done      : in  std_logic;
		o_sam_vin_input_adr : out std_logic_vector(PORT_WIDTH-1 downto 0);

		--Reduce extension
		o_red_ext_en         : out std_logic;
		i_red_ext_done       : in  std_logic;
		o_red_ext_input_adr  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_red_ext_output_adr : out std_logic_vector(PORT_WIDTH-1 downto 0);

		-- NEGATE CORE
		o_neg_enable : out std_logic;
		o_neg_len    : out std_logic_vector (31 downto 0);
		o_neg_adr    : out std_logic_vector(PORT_WIDTH-1 downto 0);
		i_neg_done   : in  std_logic;

		--SAMPLE OIL CORE
		o_sam_oil_en   : out std_logic;
		i_sam_oil_ret  : in  std_logic; -- 1 if fail else 0 for success(sync with o_done)
		i_sam_oil_done : in  std_logic;

		-- ADD OIL CORE
		o_add_oil_enable : out std_logic;
		i_add_oil_done   : in  std_logic;

		--BRAM0-A
		i_mem0a_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem0a_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem0a_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem0a_en   : out std_logic;
		o_mem0a_rst  : out std_logic;
		o_mem0a_we   : out std_logic_vector (3 downto 0);

		--BRAM0-B
		i_mem0b_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem0b_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem0b_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem0b_en   : out std_logic;
		o_mem0b_rst  : out std_logic;
		o_mem0b_we   : out std_logic_vector (3 downto 0);

		--BRAM1-A
		i_mem1a_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem1a_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem1a_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem1a_en   : out std_logic;
		o_mem1a_rst  : out std_logic;
		o_mem1a_we   : out std_logic_vector (3 downto 0);

		--BRAM2-A
		i_mem2a_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem2a_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem2a_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem2a_en   : out std_logic;
		o_mem2a_rst  : out std_logic;
		o_mem2a_we   : out std_logic_vector (3 downto 0);

		--BRAM2-B
		i_mem2b_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem2b_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem2b_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem2b_en   : out std_logic;
		o_mem2b_rst  : out std_logic;
		o_mem2b_we   : out std_logic_vector (3 downto 0);

		o_control0a : out std_logic;
		o_control0b : out std_logic;
		o_control1a : out std_logic;
		o_control2a : out std_logic;
		o_control2b : out std_logic
	);

end entity MAYO_SIGNING_FSM;

ARCHITECTURE Behavioral OF MAYO_SIGNING_FSM IS
	--------------------------------------------------------------------------------
	-- INTERFACES
	--------------------------------------------------------------------------------
	ATTRIBUTE X_INTERFACE_INFO                 : STRING;
	ATTRIBUTE X_INTERFACE_INFO of o_mem0a_din  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign0a DIN";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0a_addr : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign0a ADDR";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0a_en   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign0a EN";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0a_rst  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign0a RST";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0a_we   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign0a WE";
	ATTRIBUTE X_INTERFACE_INFO of i_mem0a_dout : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign0a DOUT";
	ATTRIBUTE X_INTERFACE_INFO of o_control0a  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign0a CTRL";

	ATTRIBUTE X_INTERFACE_INFO of o_mem0b_din  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign0b DIN";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0b_addr : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign0b ADDR";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0b_en   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign0b EN";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0b_rst  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign0b RST";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0b_we   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign0b WE";
	ATTRIBUTE X_INTERFACE_INFO of i_mem0b_dout : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign0b DOUT";
	ATTRIBUTE X_INTERFACE_INFO of o_control0b  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign0b CTRL";

	ATTRIBUTE X_INTERFACE_INFO of o_mem1a_din  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign1a DIN";
	ATTRIBUTE X_INTERFACE_INFO of o_mem1a_addr : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign1a ADDR";
	ATTRIBUTE X_INTERFACE_INFO of o_mem1a_en   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign1a EN";
	ATTRIBUTE X_INTERFACE_INFO of o_mem1a_rst  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign1a RST";
	ATTRIBUTE X_INTERFACE_INFO of o_mem1a_we   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign1a WE";
	ATTRIBUTE X_INTERFACE_INFO of i_mem1a_dout : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign1a DOUT";
	ATTRIBUTE X_INTERFACE_INFO of o_control1a  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign1a CTRL";

	ATTRIBUTE X_INTERFACE_INFO of o_mem2a_din  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign2a DIN";
	ATTRIBUTE X_INTERFACE_INFO of o_mem2a_addr : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign2a ADDR";
	ATTRIBUTE X_INTERFACE_INFO of o_mem2a_en   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign2a EN";
	ATTRIBUTE X_INTERFACE_INFO of o_mem2a_rst  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign2a RST";
	ATTRIBUTE X_INTERFACE_INFO of o_mem2a_we   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign2a WE";
	ATTRIBUTE X_INTERFACE_INFO of i_mem2a_dout : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign2a DOUT";
	ATTRIBUTE X_INTERFACE_INFO of o_control2a  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign2a CTRL";

	ATTRIBUTE X_INTERFACE_INFO of o_mem2b_din  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign2b DIN";
	ATTRIBUTE X_INTERFACE_INFO of o_mem2b_addr : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign2b ADDR";
	ATTRIBUTE X_INTERFACE_INFO of o_mem2b_en   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign2b EN";
	ATTRIBUTE X_INTERFACE_INFO of o_mem2b_rst  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign2b RST";
	ATTRIBUTE X_INTERFACE_INFO of o_mem2b_we   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign2b WE";
	ATTRIBUTE X_INTERFACE_INFO of i_mem2b_dout : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign2b DOUT";
	ATTRIBUTE X_INTERFACE_INFO of o_control2b  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sign2b CTRL";

	ATTRIBUTE X_INTERFACE_IGNORE                      : STRING;
	ATTRIBUTE X_INTERFACE_IGNORE OF o_lin_vec_addr    : SIGNAL IS "TRUE";
	ATTRIBUTE X_INTERFACE_IGNORE OF o_lin_coeffs_addr : SIGNAL IS "TRUE";
	ATTRIBUTE X_INTERFACE_IGNORE OF o_lin_out_addr    : SIGNAL IS "TRUE";
	ATTRIBUTE X_INTERFACE_IGNORE OF o_add_v1_addr     : SIGNAL IS "TRUE";
	ATTRIBUTE X_INTERFACE_IGNORE OF o_add_v2_addr     : SIGNAL IS "TRUE";
	ATTRIBUTE X_INTERFACE_IGNORE OF o_add_out_addr    : SIGNAL IS "TRUE";
	ATTRIBUTE X_INTERFACE_IGNORE OF o_sam_oil_addr    : SIGNAL IS "TRUE";
	ATTRIBUTE X_INTERFACE_IGNORE OF o_hash_en         : SIGNAL IS "TRUE";
	ATTRIBUTE X_INTERFACE_IGNORE OF o_sam_vin_en      : SIGNAL IS "TRUE";
	ATTRIBUTE X_INTERFACE_IGNORE OF o_red_ext_en      : SIGNAL IS "TRUE";
	ATTRIBUTE X_INTERFACE_IGNORE OF o_sam_oil_en      : SIGNAL IS "TRUE";

	type state_fsm_t is (idle,expand_sk0,expand_sk1,expand_sk2,expand_sk3,expand_sk4,expand_sk5,expand_sk6, expand_sk7, expand_sk8, sample0, sample1, sample2, sample3, sample4, sample5, computeBil0,
			computeBil1, computeBil2, computeBil3, computeBil4, computeBil5, computeBil6, computeBil7, computeBil8, computeBil9, computeBil10, computeBil11, computeBil12, computeBil13,
			computeBil14, computeBil15, transpose0, transpose1, transpose2, transpose3, sign0, sign1, sign2, sign3, sign4, sign5, sign6, sign7, sign8, sign9, sign10, sign11, sign12, sign13,
			sign14, sign15, sign16, sign17, sign18, sign19, sign20, sign21, sign22, sign23, sign24, sign25, sign26, sign27, sign28, sign29, sign30, sign31, sign32, sign33, sign34,
			sign35, sign36, sign37, sign38, sign39, sign40, sign41, sign42, sign43, sign44, sign45, sign46, sign47, sign48, sign49, sign50, sign51, neg0, neg1, sample6, sample7, sample8,
			msgdgst0, msgdgst1, msgdgst2, msgdgst3, msgdgst4, msgdgst5, msgdgst6, msgdgst7,msgdgst8,msgdgst9, add_mult0, add_mult1, add_mult2, add_mult3, add_mult4, add_mult5,
			msg0, msg1, msg2, msg3, msg4, msg5, msg6, msg7, msg8, msg9, msg10,
			done);
	signal state          : state_fsm_t := idle;
	signal index          : integer     := 0;
	signal s_hash_mem_sel : std_logic   := '1';
	signal s_sam_mem_sel  : std_logic   := '1'; -- TODO : Use FOR SAMPLE OUT
	signal counter        : integer     := 0;
	signal i              : integer     := 0;
	signal j              : integer     := 0;
	signal s_k            : integer     := 0;
	signal l,s_m          : integer     := 0;
	signal ctr            : integer     := 0;
	signal c              : integer     := 0;
	signal s_secret       : std_logic   := '0';

	signal err : std_logic_vector(1 downto 0);

	signal s_p1p1t_adr     : std_logic_vector(31 downto 0) := ZERO_32;
	signal s_p1_adr        : std_logic_vector(31 downto 0) := ZERO_32;
	signal s_p1p1t_inv_adr : std_logic_vector(31 downto 0) := ZERO_32;

	signal s_temp_adr    : std_logic_vector(31 downto 0) := ZERO_32;
	signal s_outputs_adr : std_logic_vector(31 downto 0) := ZERO_32;

	signal tmp  : std_logic_vector(31 downto 0) := ZERO_32;
	signal tmp1 : std_logic_vector(31 downto 0) := ZERO_32;
	signal tmp2 : std_logic_vector(31 downto 0) := ZERO_32;

	-- Register reuse through alias
	alias s_sign1_adr is s_p1p1t_adr;
	alias s_sign2_adr is s_p1_adr;
	alias s_vin_adr is s_p1p1t_inv_adr;

	alias s_bil_adr is s_p1p1t_adr;
	alias s_lin_adr is s_p1_adr;
	alias s_lin1_adr is s_p1p1t_inv_adr;

	signal s_src_index    : integer := 0;
	signal s_dest_index   : integer := 0;
	signal s_utmp         : integer := 0;
	signal unsigned_tmp   : unsigned(PORT_WIDTH -1 downto 0);
	signal unsigned_tmp64 : unsigned(PORT_WIDTH*2 -1 downto 0);

	constant UPRIME : unsigned(PRIME_BITS-1 downto 0) := to_unsigned(PRIME,PRIME_BITS);

	------------------------------------------------------------------------------
	-- BRAM
	------------------------------------------------------------------------------
	signal bram0a : bram_t := DEFAULT_BRAM;
	signal bram0b : bram_t := DEFAULT_BRAM;
	signal bram1a : bram_t := DEFAULT_BRAM;
	signal bram2b : bram_t := DEFAULT_BRAM;
	signal bram2a : bram_t := DEFAULT_BRAM;

	------------------------------------------------------------------------------
	-- DEBUG
	------------------------------------------------------------------------------
	constant C_DEBUG : std_logic := '1';
	file myFile      : text;
	signal debug_ctr : integer := 0 ;

begin
	SIGNING           : PROCESS(CLK) is
		variable v_myLine : line;
		variable v_range  : range_t;
	begin
		if (rising_edge(clk)) then
			if(rst = '1') then
				-- reset werte!
				bram0a.o        <= DEFAULT_OUT_BRAM;
				bram0b.o        <= DEFAULT_OUT_BRAM;
				bram1a.o        <= DEFAULT_OUT_BRAM;
				s_sam_mem_sel   <= '1';
				s_hash_mem_sel  <= '1';
				index           <= 0;
				i               <= 0;
				j               <= 0;
				s_k             <= 0;
				l               <= 0;
				s_m             <= 0;
				c               <= 0;
				ctr             <= 0;
				tmp             <= ZERO_32;
				tmp1            <= ZERO_32;
				tmp2            <= ZERO_32;
				counter         <= 0;
				s_utmp          <= 0;
				s_p1p1t_adr     <= ZERO_32;
				s_p1_adr        <= ZERO_32;
				s_p1p1t_inv_adr <= ZERO_32;
				s_temp_adr      <= ZERO_32;
				s_outputs_adr   <= ZERO_32;
				s_secret        <= '0';
				o_busy          <= '0';
				o_done          <= '0';
				o_control0a     <= '0';
				o_control0a     <= '0';
				o_control1a     <= '0';
				o_control2a     <= '0';
				o_control2b     <= '0';
				unsigned_tmp    <= (others => '0');
				unsigned_tmp64  <= (others => '0');
				state           <= idle;

			else
				case (state) is
					when idle =>
						o_done      <= '0';
						o_err       <= "00";
						o_control0a <= '0';
						o_control0a <= '0';
						o_control1a <= '0';
						o_control2a <= '0';
						o_control2b <= '0';

						if (i_enable = '1') then
							report "MAYO Signing core :" &
							LF & "PK_ADR : " & integer'image(PK_BASE_ADR) & "<->" & integer'image(CPU_SPACE_PK_BASE_ADR) &
							LF & "SK_ADR: " & integer'image(SK_BASE_ADR) & "<->" & integer'image(CPU_SPACE_SK_BASE_ADR) &
							LF & "MSG_ADR: " & integer'image(MSG_BASE_ADR) & "<->" & integer'image(CPU_SPACE_MESSAGE_BASE_ADR) &
							LF & "SIG_ADR :" & integer'image(SIG_BASE_ADR) & "<->" & integer'image(CPU_SPACE_SIG_BASE_ADR) severity note;
							s_secret <= i_secret;
							index    <= 0;
							state    <= msg0;
							o_busy   <= '1';
							state    <= sign4; -- debug bruteforce
						else
							state <= idle;
						end if;

					------------------------------------------------------------------------
					-- COPY CPU INPUT (IF EXPOSE(not used) ENABLED, COPY ALL)
					------------------------------------------------------------------------
					when msg0 =>
						o_memcpy1_start        <= '1';
						o_memcpy1_src_adr      <= std_logic_vector(to_unsigned(CPU_SPACE_PK_BASE_ADR,PORT_WIDTH)); -- BRAM II 
						o_memcpy1_dst_adr      <= std_logic_vector(to_unsigned(PK_BASE_ADR,PORT_WIDTH));           -- BRAM II 
						o_memcpy1_len          <= std_logic_vector(to_unsigned(PK_BYTES,PORT_WIDTH));
						o_memcpy1_mem_port_sel <= "01";
						state                  <= msg1;

					when msg1 =>
						o_memcpy1_start <= '0';
						if (i_memcpy1_done = '1') then
							state <= msg2;
						else
							state <= msg1;
						end if;

					when msg2 =>
						if (s_secret = '1') then
							o_memcpy1_start        <= '1';
							o_memcpy1_src_adr      <= std_logic_vector(to_unsigned(CPU_SPACE_SK_BASE_ADR,PORT_WIDTH)); -- BRAM II 
							o_memcpy1_dst_adr      <= std_logic_vector(to_unsigned(SK_BASE_ADR,PORT_WIDTH));           -- BRAM II 
							o_memcpy1_len          <= std_logic_vector(to_unsigned(SK_BYTES,PORT_WIDTH));
							o_memcpy1_mem_port_sel <= "01";
							state                  <= msg3;
						else
							o_control0a <= '1';
							i           <= 0;
							report "Using internal secret key";
							state <= msg6;
						end if;

					when msg3 =>
						o_control0a     <= '0';
						o_memcpy1_start <= '0';
						if (i_memcpy1_done = '1') then
							state <= msg4;
						else
							state <= msg3;
						end if;

					when msg6 =>
						if (index = SK_RANGE) then
							bram0a.o.o_en <= '0';
							bram0a.o.o_we <= "0000";
							index         <= 0;
							i             <= 0;
							state         <= msg4;
						else
							bram0a.o.o_en   <= '1';
							bram0a.o.o_we   <= "1111";
							bram0a.o.o_din  <= NOT_SECRECT_KEY(i);
							bram0a.o.o_addr <= std_logic_vector(to_unsigned(SK_BASE_ADR,PORT_WIDTH)+index) ;
							index           <= index +4;
							i               <= i +1;
							state           <= msg6;
						end if;

					when msg4 =>
						o_memcpy1_start        <= '1';
						o_memcpy1_src_adr      <= std_logic_vector(to_unsigned(CPU_SPACE_MESSAGE_BASE_ADR,PORT_WIDTH)) ; -- BRAM II 
						o_memcpy1_dst_adr      <= std_logic_vector(to_unsigned(MSG_BASE_ADR,PORT_WIDTH));                -- BRAM II 
						o_memcpy1_len          <= std_logic_vector(to_unsigned(MESSAGE_BYTES,PORT_WIDTH));
						o_memcpy1_mem_port_sel <= "01";
						state                  <= msg5;

					when msg5 =>
						o_memcpy1_start <= '0';
						if (i_memcpy1_done = '1') then
							state       <= expand_sk0;
							o_control0a <= '1';
							o_control1a <= '1';
						else
							state <= msg5;
						end if;
					------------------------------------------------------------------------
					-- SIGN START
					------------------------------------------------------------------------
					when expand_sk0 => -- first copy Public seed to bigbram for hash
						bram0a.o.o_en   <= '1';
						bram0a.o.o_we   <= "0000";
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(SK_BASE_ADR,PORT_WIDTH)) ; -- TODO : Check
						state           <= expand_sk1;

					when expand_sk1 =>
						bram1a.o.o_en <= '0';
						bram1a.o.o_we <= "0000";
						state         <= expand_sk2;

					when expand_sk2 =>
						bram1a.o.o_din  <= bram0a.i.i_dout;
						bram1a.o.o_en   <= '1';
						bram1a.o.o_we   <= "1111";
						bram1a.o.o_addr <= std_logic_vector(to_unsigned(SK_EXP_BASE_ADR + SK_EXP_P1 + index,PORT_WIDTH));

						if (index < SEED_BYTES) then -- TODO check this loop?
							index           <= index +4 ;
							bram0a.o.o_addr <= std_logic_vector(unsigned(bram0a.o.o_addr) +4);
							state           <= expand_sk1;
						else
							index          <= 0 ;
							s_hash_mem_sel <= '1';
							state          <= expand_sk3;
						end if;

					when expand_sk3 =>
						bram0a.o.o_en <= '0';
						bram1a.o.o_en <= '0';
						bram1a.o.o_we <= "0000";
						--------------------------------------------------------------------
						-- EXPAND PK  BEGIN
						-- Hash using big BRAM 1
						--------------------------------------------------------------------
						o_hash_mlen      <= std_logic_vector(to_unsigned(SEED_BYTES,PORT_WIDTH));
						o_hash_olen      <= std_logic_vector(to_unsigned(P1_BYTES,PORT_WIDTH));
						o_hash_read_adr  <= std_logic_vector(to_unsigned(SK_EXP_BASE_ADR + SK_EXP_P1,PORT_WIDTH)); -- BRAM II
						o_hash_write_adr <= std_logic_vector(to_unsigned(SK_EXP_BASE_ADR + SK_EXP_P1,PORT_WIDTH)); -- BRAM II
						o_hash_en        <= '1';
						state            <= expand_sk4;

					when expand_sk4 =>
						o_control0a      <= '0';
						o_control1a      <= '0';
						o_hash_en        <= '0';
						o_hash_mlen      <= ZERO_32;
						o_hash_olen      <= ZERO_32;
						o_hash_read_adr  <= ZERO_32;
						o_hash_write_adr <= ZERO_32;
						state            <= expand_sk5;

					when expand_sk5 =>
						if (i_hash_done = '1') then
							o_red_bram_sel <= '1'; -- BRAM II only
							state          <= expand_sk6;
						end if;

					when expand_sk6 =>
						o_red_adr    <= std_logic_vector(to_unsigned(SK_EXP_BASE_ADR + SK_EXP_P1,PORT_WIDTH)); -- BRAM II 
						o_red_len    <= std_logic_vector(to_unsigned(P1_BYTES,PORT_WIDTH));
						o_red_enable <= '1';
						state        <= expand_sk7;

					when expand_sk7 =>
						o_red_enable <= '0';
						state        <= expand_sk8;

					when expand_sk8 =>
						if (i_red_done = '1') then
							s_hash_mem_sel <= '0'; -- Hash using small bram
							state          <= sample0;
						end if;
					--------------------------------------------------------------------
					-- EXPAND PK END
					--------------------------------------------------------------------
					when sample0 =>
						o_sam_enable   <= '1';
						o_sam_mode     <= '1';                                                                    -- Sign
						o_sam_oil_addr <= std_logic_vector(to_unsigned(SK_EXP_BASE_ADR + SK_EXP_OIL,PORT_WIDTH)); -- BRAM II
						state          <= sample1;

					when sample1 =>
						o_sam_enable <= '0';
						o_sam_mode   <= '0';
						state        <= sample2;

					when sample2 =>
						if (i_sam_done = '1') then
							state <= computeBil0;
						else
							state <= sample2;
						end if;

					--------------------------------------------------------------------
					-- Compute Bilinear BEGIN
					--------------------------------------------------------------------
					when computeBil0 =>
						counter <= 0;
						i       <= 0;
						j       <= 0;

						s_p1p1t_inv_adr <= std_logic_vector(to_unsigned(P1P1T_BASE_ADR,PORT_WIDTH));
						s_p1p1t_adr     <= std_logic_vector(to_unsigned(P1P1T_BASE_ADR,PORT_WIDTH));
						s_p1_adr        <= std_logic_vector(to_unsigned(SK_EXP_BASE_ADR + SK_EXP_P1,PORT_WIDTH));

						state <= computeBil1;

					when computeBil1 =>
						if (i < N-O) then
							state           <= computeBil2 ;
							j               <= i;
							s_p1p1t_adr     <= std_logic_vector(to_unsigned(P1P1T_BASE_ADR,PORT_WIDTH) + M*(i*(N-O)+i)); -- i = j !!
							s_p1p1t_inv_adr <= std_logic_vector(to_unsigned(P1P1T_BASE_ADR,PORT_WIDTH) + M*(i*(N-O)+i));
						else
							state <= computeBil6;
						end if;

					when computeBil2 =>
						if (j < N-O) then
							state <= computeBil3;
						else
							i     <= i+1;
							state <= computeBil1;
						end if;

					when computeBil3 =>                      -- Runs for M 
						o_p1p1t_src_adr  <= s_p1_adr;        -- BRAM II 
						o_p1p1t_dsta_adr <= s_p1p1t_adr;     -- BRAM III 
						o_p1p1t_dstb_adr <= s_p1p1t_inv_adr; -- BRAM III 
						if (i = j) then
							o_p1p1t_ji_equal <= '1';
						else
							o_p1p1t_ji_equal <= '0';
						end if;
						o_p1p1t_enable <= '1';
						state          <= computeBil4;

					when computeBil4 =>
						o_p1p1t_enable <= '0';

						if (i_p1p1t_done = '1') then
							state <= computeBil5;
						else
							state <= computeBil4;
						end if;

					when computeBil5 =>
						counter  <= counter +1;
						s_p1_adr <= std_logic_vector(unsigned(s_p1_adr) + M);

						j               <= j +1;
						s_p1p1t_adr     <= std_logic_vector(unsigned(s_p1p1t_adr) + M);
						s_p1p1t_inv_adr <= std_logic_vector(unsigned(s_p1p1t_inv_adr) + M*(N-O));
						state           <= computeBil2;

						--------------------------------------------------------

					when computeBil6 =>
						i <= 0;
						j <= 0;

						--Warning: signal names dont matter here anymore!
						s_p1_adr        <= std_logic_vector(to_unsigned(P1P1T_BASE_ADR,PORT_WIDTH));               -- VECS [BIG BRAM 2]
						s_p1p1t_adr     <= std_logic_vector(to_unsigned(SK_EXP_BASE_ADR + SK_EXP_OIL,PORT_WIDTH)); -- OILSPACE (Coefs)  [BIG BRAM 1]
						s_p1p1t_inv_adr <= std_logic_vector(to_unsigned(BILINEAR_TEMP_BASE_ADR,PORT_WIDTH));       -- OUT [BIG BRAM 2]

						state <= computeBil7;

					when computeBil7 =>
						if (i < N-O) then
							state           <= computeBil8 ;
							s_p1_adr        <= std_logic_vector(to_unsigned(P1P1T_BASE_ADR,PORT_WIDTH) + M*(i*(N-O)));
							s_p1p1t_adr     <= std_logic_vector(to_unsigned(SK_EXP_BASE_ADR + SK_EXP_OIL,PORT_WIDTH)); -- j = 0
							s_p1p1t_inv_adr <= std_logic_vector(to_unsigned(BILINEAR_TEMP_BASE_ADR,PORT_WIDTH) + i*O*M);
						else
							-- ready for add_vec
							i           <= 0;
							j           <= 0;
							s_p1_adr    <= std_logic_vector(to_unsigned(SK_EXP_BASE_ADR + SK_EXP_P1,PORT_WIDTH)+ M*counter);
							s_p1p1t_adr <= std_logic_vector(to_unsigned(BILINEAR_TEMP_BASE_ADR,PORT_WIDTH));
							s_utmp      <= 0;

							state <= computeBil11;
						end if;

					when computeBil8 =>
						if (j < O) then
							state <= computeBil9;
						else
							i     <= i+1;
							j     <= 0;
							state <= computeBil7;
						end if;

					when computeBil9 =>
						o_lin_enable         <= '1';
						o_lin_demux_bram_sel <= "00001"; -- Look at readme
						o_lin_len            <= std_logic_vector(to_unsigned(N-O,PORT_WIDTH));
						o_lin_vec_addr       <= s_p1_adr;        -- BRAM III
						o_lin_coeffs_addr    <= s_p1p1t_adr;     -- BRAM II
						o_lin_out_addr       <= s_p1p1t_inv_adr; -- BRAM III
						state                <= computeBil10;

					when computeBil10 =>
						o_lin_enable <= '0';

						if (i_lin_done = '1') then
							state           <= computeBil8;
							j               <= j+1;
							s_p1p1t_adr     <= std_logic_vector(unsigned(s_p1p1t_adr) + (N-O));
							s_p1p1t_inv_adr <= std_logic_vector(unsigned(s_p1p1t_inv_adr) + M);
						else
							state <= computeBil10;
						end if;

					--------------------------------------------------------
					-- add_vectors : 
					-- V1 --> BIG BRAM2
					-- v2 --> BIG BRAM1
					-- OUT --> BIG BRAM2
					when computeBil11 =>
						if (i < N-O) then
							state       <= computeBil12 ;
							s_p1p1t_adr <= std_logic_vector(to_unsigned(BILINEAR_TEMP_BASE_ADR,PORT_WIDTH) + i*O*M);
							s_p1_adr    <= std_logic_vector(to_unsigned(SK_EXP_BASE_ADR + SK_EXP_P1,PORT_WIDTH) + M*(counter+s_utmp));
						else
							-- ready for tranpose
							i            <= 0 ;
							j            <= 0 ;
							s_src_index  <= BILINEAR_TEMP_BASE_ADR;            -- BIG BRAM 2
							s_dest_index <= SK_EXP_BASE_ADR + SK_EXP_BILINEAR; --BIG BRAM 1 

							state <= transpose0;
						end if;

					when computeBil12 =>
						if (j < O) then
							state <= computeBil13;
						else
							i      <= i+1;
							j      <= 0;
							s_utmp <= s_utmp + O;
							state  <= computeBil11;
						end if;

					when computeBil13 =>
						o_add_enable         <= '1';
						o_add_v1_addr        <= s_p1p1t_adr; -- BRAM III
						o_add_v2_addr        <= s_p1_adr;    -- BRAM II
						o_add_out_addr       <= s_p1p1t_adr; -- BRAM III
						o_add_bram_sel       <= "00";
						o_add_demux_bram_sel <= "00000";
						state                <= computeBil14;

					when computeBil14 =>
						o_add_enable <= '0';

						if (i_add_done = '1') then
							state       <= computeBil12;
							j           <= j+1;
							s_p1p1t_adr <= std_logic_vector(unsigned(s_p1p1t_adr) + M);
							s_p1_adr    <= std_logic_vector(unsigned(s_p1_adr) + M);
						else
							state <= computeBil14;
						end if;

					------------------------------------------------------------------
					-- BEGIN TRANSPOSE bilinear_temp  -> bilinear 
					------------------------------------------------------------------
					when transpose0 =>
						if (i < N-O) then
							state        <= transpose2;
							s_src_index  <= BILINEAR_TEMP_BASE_ADR + i*O*M;
							s_dest_index <= SK_EXP_BASE_ADR + SK_EXP_BILINEAR + i*M;
						else
							state <= sign0; --DEBUG OFF
						end if;

					when transpose1 =>
						if (j < O) then
							state <= transpose2;
						else
							j     <= 0 ;
							i     <= i+1;
							state <= transpose0;
						end if;

					when transpose2 =>
						o_memcpy_start        <= '1';
						o_memcpy_src_adr      <= std_logic_vector(to_unsigned(s_src_index,PORT_WIDTH)) ; -- BRAM III
						o_memcpy_dst_adr      <= std_logic_vector(to_unsigned(s_dest_index,PORT_WIDTH)); -- BRAM II
						o_memcpy_len          <= std_logic_vector(to_unsigned(M,PORT_WIDTH));
						o_memcpy_mem_port_sel <= "00";
						state                 <= transpose3;

					when transpose3 =>
						o_memcpy_start <= '0';
						if (i_memcpy_done = '1') then
							state        <= transpose1;
							j            <= j+1;
							s_dest_index <= s_dest_index + (N-O);
							s_src_index  <= s_src_index + M;
						else
							state <= transpose3;
						end if;

					------------------------------------------------------------------
					-- END TRANSPOSE TEMP -> 
					-- BEGIN SIGN FAST
					-----------------------------------------------------------------
					when sign0 => --randomized message digest 
						o_trng_en     <= '1';
						o_control2a   <= '1';
						o_control2b   <= '1';
						bram2a.o.o_we <= "0000";
						bram2b.o.o_we <= "0000";
						index         <= 0 ;
						state         <= sign2;

					when sign2 =>

						if (i_trng_valid = '1') then
							bram2a.o.o_din  <= i_trng_data(PORT_WIDTH-1 downto 0);
							bram2a.o.o_en   <= '1';
							bram2a.o.o_addr <= std_logic_vector(to_unsigned(SIG_BASE_ADR+index,PORT_WIDTH)) ;
							bram2a.o.o_we   <= "0000";

							-- Also copy in here for message digest
							bram2b.o.o_din  <= i_trng_data(PORT_WIDTH-1 downto 0);
							bram2b.o.o_en   <= '1';
							bram2b.o.o_addr <= std_logic_vector(to_unsigned(DIG_BASE_ADR+index,PORT_WIDTH)) ;
							bram2b.o.o_we   <= "0000";

							index <= index + 4;

						else
							bram2a.o.o_en <= '0';
							bram2b.o.o_en <= '0';
						end if;

						if (index >= SEED_BYTES) then
							state <= sign3;
						end if;

					when sign3 =>
						o_trng_en     <= '0';
						bram2a.o.o_en <= '0';
						bram2a.o.o_we <= "0000";
						bram2b.o.o_en <= '0';
						bram2b.o.o_we <= "0000";
						state         <= msgdgst0;
					--------------------------------------------------------
					-- Msg digest
					--------------------------------------------------------
					when msgdgst0 =>
						o_control2a    <= '0';
						o_control2b    <= '0';
						s_hash_mem_sel <= '0';
						-- Hash using small BRAM (2)
						o_hash_mlen      <= std_logic_vector(to_unsigned(MESSAGE_BYTES,PORT_WIDTH));
						o_hash_olen      <= std_logic_vector(to_unsigned(HASH_BYTES,PORT_WIDTH));
						o_hash_read_adr  <= std_logic_vector(to_unsigned(MSG_BASE_ADR,PORT_WIDTH));              -- BRAM I 
						o_hash_write_adr <= std_logic_vector(to_unsigned(DIG_BASE_ADR + SEED_BYTES,PORT_WIDTH)); -- BRAM I 
						o_hash_en        <= '1';
						state            <= msgdgst1;

					when msgdgst1 =>
						o_hash_en        <= '0';
						o_hash_mlen      <= ZERO_32;
						o_hash_olen      <= ZERO_32;
						o_hash_read_adr  <= ZERO_32;
						o_hash_write_adr <= ZERO_32;
						state            <= msgdgst2;

					when msgdgst2 =>
						if (i_hash_done = '1') then
							index <= 0;
							state <= msgdgst3;
						end if;

					when msgdgst3 => -- delay wait for hash reset [100 Clks]
						index <= index +1;
						if(index >= 100) then
							state <= msgdgst4;
						end if;

					when msgdgst4 =>

						s_hash_mem_sel <= '0';
						-- Hash using small BRAM (2)
						o_hash_mlen      <= std_logic_vector(to_unsigned(SEED_BYTES + HASH_BYTES,PORT_WIDTH));
						o_hash_olen      <= std_logic_vector(to_unsigned(DIG_RANGE,PORT_WIDTH));
						o_hash_read_adr  <= std_logic_vector(to_unsigned(DIG_BASE_ADR,PORT_WIDTH)); -- BRAM I 
						o_hash_write_adr <= std_logic_vector(to_unsigned(DIG_BASE_ADR,PORT_WIDTH)); -- BRAM I 
						o_hash_en        <= '1';
						state            <= msgdgst5;

					when msgdgst5 =>
						o_hash_en        <= '0';
						o_hash_mlen      <= ZERO_32;
						o_hash_olen      <= ZERO_32;
						o_hash_read_adr  <= ZERO_32;
						o_hash_write_adr <= ZERO_32;
						state            <= msgdgst6;

					when msgdgst6 =>
						if (i_hash_done = '1') then
							index          <= 0;
							o_red_bram_sel <= '0'; -- reduce on small bram 
							state          <= msgdgst7;
						end if;

					when msgdgst7 =>
						o_red_adr    <= std_logic_vector(to_unsigned(DIG_BASE_ADR,PORT_WIDTH)); -- BRAM I 
						o_red_len    <= std_logic_vector(to_unsigned(DIG_RANGE,PORT_WIDTH));
						o_red_enable <= '1';
						state        <= msgdgst8;

					when msgdgst8 =>
						o_red_enable <= '0';
						state        <= msgdgst9;

					when msgdgst9 =>
						if (i_red_done = '1') then
							state <= sign4;
							report "Message Digest Done!";
						end if;

					--------------------------------------------------------
					-- INFINITE WHILE LOOP BEGIN
					--------------------------------------------------------
					when sign4 =>
						o_err               <= "00";
						o_sam_vin_input_adr <= std_logic_vector(to_unsigned(SIG_INPUTS,PORT_WIDTH)); -- Small BRAM
						o_sam_vin_en        <= '1';
						state               <= sign5;

					when sign5 =>
						o_sam_vin_input_adr <= ZERO_32;
						o_sam_vin_en        <= '0';
						if (i_sam_vin_done = '1') then
							ctr <= 0;
							i   <= 0 ;
							j   <= 0 ;

							-- Mem reuse (FF)
							s_sign1_adr <= std_logic_vector(to_unsigned(SIG_INPUTS,PORT_WIDTH));   -- Small BRAM [rows] / inputs[i*N + k]
							s_sign2_adr <= std_logic_vector(to_unsigned(SIG_INPUTS,PORT_WIDTH));   -- Small BRAM [cols] / inputs[j*N + k]
							s_vin_adr   <= std_logic_vector(to_unsigned(VIN_BASE_ADR,PORT_WIDTH)); -- Using P2VEC as VINEGAR{N}! 
							state       <= sign6;
						end if;

					when sign6 =>
						if (i < K) then
							j           <= i ;
							s_sign2_adr <= s_sign1_adr;
							state       <= sign7;
						else
							i             <= 0;
							j             <= 0;
							s_k           <= 0;
							s_outputs_adr <= std_logic_vector(to_unsigned(VINEVAL_BASE_ADR,PORT_WIDTH));
							s_temp_adr    <= std_logic_vector(to_unsigned(SM_TEMP_BASE_ADR,PORT_WIDTH));
							state         <= sign36; -- Out of the IJ LOOP
						end if;

					when sign7 =>
						if (j < K) then
							s_k         <= 0 ;
							s_sign2_adr <= std_logic_vector(unsigned(s_sign2_adr)+N);
							o_control2a <= '1';
							o_control2b <= '1';
							state       <= sign12;
						else
							i           <= i+1;
							s_sign1_adr <= std_logic_vector(unsigned(s_sign1_adr)+N);
							state       <= sign6;
						end if;

					when sign12 =>
						bram2b.o.o_we <= "0000";
						bram2a.o.o_en <= '0';

						if (s_k < N) then
							state <= sign8;
						else
							l     <= 0 ;
							s_m   <= 0 ;
							s_k   <= 0 ;
							state <= sign13;
						end if;

					when sign8 =>
						bram2a.o.o_we   <= "0000";
						bram2a.o.o_en   <= '1';
						bram2a.o.o_addr <= std_logic_vector(unsigned(s_sign1_adr)+s_k) ;

						if (s_sign1_adr /= s_sign2_adr) then -- Avoid read collisions
							bram2b.o.o_we   <= "0000";
							bram2b.o.o_en   <= '1';
							bram2b.o.o_addr <= std_logic_vector(unsigned(s_sign2_adr)+s_k) ;
						end if;
						state <= sign9;

					when sign9 =>
						state <= sign10;

					when sign10 =>
						bram2a.o.o_en <= '0';
						bram2b.o.o_en <= '0';
						if (s_sign1_adr /= s_sign2_adr) then
							for x in 0 to 3 loop
								unsigned_tmp(7+x*8 downto x*8) <= (unsigned(i_mem2a_dout(7+x*8 downto x*8)) + unsigned(i_mem2b_dout(7+x*8 downto x*8)));
							end loop;
						else
							for x in 0 to 3 loop
								unsigned_tmp(7+x*8 downto x*8) <= (unsigned(i_mem2a_dout(7+x*8 downto x*8)) + unsigned(i_mem2a_dout(7+x*8 downto x*8)));
							end loop;
						end if;
						state <= sign51;

					when sign51 =>
						for x in 0 to 3 loop
							unsigned_tmp(7+x*8 downto x*8) <= unsigned_tmp(7+x*8 downto x*8) mod PRIME;
						end loop;
						state <= sign11;

					when sign11 =>
						bram2b.o.o_we   <= "1111";
						bram2a.o.o_en   <= '1';
						bram2a.o.o_din  <= std_logic_vector(unsigned_tmp);
						bram2a.o.o_addr <= std_logic_vector(unsigned(s_vin_adr) + s_k) ;
						s_k             <= s_k +4;
						state           <= sign12;

					--------------------------------------------------------
					-- EvaluateP_vinegar BEGIN
					--------------------------------------------------------
					when sign13 =>
						o_control2a <= '1';
						o_control0a <= '1';
						o_control2b <= '0';
						if (l < N-O) then
							s_m   <= l;
							state <= sign14;
						else
							state <= sign19;
						end if;

					when sign14 =>
						if (s_m < N-O) then
							state <= sign15;
						else
							l <= l+1;

							if (index <3) then
								index <= index +1;
							else
								index <= 0 ;
							end if;

							state <= sign13;
						end if;
						bram0a.o.o_en <= '0';
						bram0a.o.o_we <= "0000";

					when sign15 =>
						bram2a.o.o_we   <= "0000";
						bram2a.o.o_en   <= '1';
						bram2a.o.o_addr <= std_logic_vector(unsigned(s_sign1_adr)+l);

						if (l /= s_m) then -- Avoid read collisions
							bram2b.o.o_we   <= "0000";
							bram2b.o.o_en   <= '1';
							bram2b.o.o_addr <= std_logic_vector(unsigned(s_sign2_adr)+s_m) ;
						end if;

						state <= sign16;

					when sign16 =>
						state <= sign17;

					when sign17 =>
						bram2a.o.o_en <= '0';
						bram2b.o.o_en <= '0';
						tmp1          <= bram2a.i.i_dout;
						tmp2          <= bram2b.i.i_dout;
						state         <= sign50;

					when sign50 =>
						if (l /= s_m) then
							for x in 0 to 3 loop
								unsigned_tmp64(15+x*16 downto x*16) <= unsigned(tmp1(7+index*8 downto index*8)) * unsigned(tmp2(7+x*8 downto x*8));
							end loop;
						else
							for x in 0 to 3 loop
								unsigned_tmp64(15+x*16 downto x*16) <= unsigned(tmp1(7+index*8 downto index*8)) * unsigned(tmp1(7+x*8 downto x*8));
							end loop;
						end if;
						state <= sign49;

					when sign49 =>
						for x in 0 to 3 loop
							unsigned_tmp(7+x*8 downto x*8) <= resize(unsigned_tmp64(15+x*16 downto x*16) mod UPRIME,8);
						end loop;
						state <= sign18;

					when sign18 =>
						bram0a.o.o_en   <= '1';
						bram0a.o.o_we   <= "1111";
						bram0a.o.o_din  <= std_logic_vector(unsigned_tmp);
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(PRODUCT_BASE_ADR,PORT_WIDTH)+ counter);
						counter         <= counter+4;
						s_m             <= m+4 ;
						state           <= sign14;

					when sign19 =>
						o_control2a <= '0';
						o_control0a <= '0';
						-- TODO Check linear comb bram connections
						o_lin_vec_addr       <= std_logic_vector(to_unsigned(SK_EXP_BASE_ADR + SK_EXP_P1,PORT_WIDTH)); -- BRAM II
						o_lin_coeffs_addr    <= std_logic_vector(to_unsigned(PRODUCT_BASE_ADR,PORT_WIDTH));            -- BRAM III
						o_lin_out_addr       <= std_logic_vector(to_unsigned(VINEVAL_BASE_ADR + ctr*M,PORT_WIDTH));    -- BRAM III
						o_lin_len            <= std_logic_vector(to_unsigned((N-O)*(N-O+1)/2,PORT_WIDTH));
						o_lin_enable         <= '1';
						o_lin_demux_bram_sel <= "00010";

						state <= sign20;

					when sign20 =>
						o_lin_vec_addr    <= ZERO_32;
						o_lin_coeffs_addr <= ZERO_32;
						o_lin_out_addr    <= ZERO_32;
						o_lin_len         <= ZERO_32;
						o_lin_enable      <= '0';

						if (i_lin_done = '1') then
							report "EvaluteP_vin done";
							c         <= 0 ;
							s_bil_adr <= std_logic_vector(to_unsigned(SK_EXP_BASE_ADR + SK_EXP_BILINEAR,PORT_WIDTH)); -- big bram 1 
							s_lin_adr <= std_logic_vector(to_unsigned(LINEAR_BASE_ADR,PORT_WIDTH));                   -- big bram 2
							state     <= sign21;
						end if;
						--------------------------------------------------------
						-- EvaluateP_vinegar END
						--------------------------------------------------------

					-- Compute linear part
					when sign21 =>
						if(c < O) then
							state <= sign22;
						else
							state <= sign35;
						end if;

					when sign22 =>
						o_lin_vec_addr       <= s_bil_adr;                                                -- BRAM II
						o_lin_coeffs_addr    <= std_logic_vector(to_unsigned(VIN_BASE_ADR,PORT_WIDTH));   -- BRAM I
						o_lin_out_addr       <= std_logic_vector(to_unsigned(P2VEC_BASE_ADR,PORT_WIDTH)); -- BRAM I 
						o_lin_len            <= std_logic_vector(to_unsigned(N-O,PORT_WIDTH));
						o_lin_enable         <= '1';
						o_lin_demux_bram_sel <= "00000";
						state                <= sign23;

					when sign23 =>
						o_lin_vec_addr    <= ZERO_32;
						o_lin_coeffs_addr <= ZERO_32;
						o_lin_out_addr    <= ZERO_32;
						o_lin_len         <= ZERO_32;
						o_lin_enable      <= '0';
						if (i_lin_done = '1') then
							state      <= sign24;
							l          <= 0 ;
							s_m        <= 0 ;
							s_temp_adr <= std_logic_vector(to_unsigned(SM_TEMP_BASE_ADR,PORT_WIDTH));
						end if;

						------------------ ~MULTIPLY EXTENSION FIELD~ --------------------------------------- 

					-- Storage : Small BRAM
					when sign24 =>
						if (l < M) then
							s_m <= 0;

							v_range := four_range(ctr);
							-- Only add when counter == l !
							if (l < v_range.upper) and (l >= v_range.lower) then -- todo : check timing
								state <= sign25;
							else
								l <= l+1 ;
								if (isUneven(l) = '1') then -- We need this to increment aligned16 data in BRAM
									s_temp_adr <= std_logic_vector(to_unsigned(SM_TEMP_BASE_ADR + (l+1)*2,PORT_WIDTH));
								end if;
								state <= sign24;
							end if;
							s_utmp <= l mod 2; -- Indexing in TEMP (Which short to chose? LSB or MSB)

						else
							o_control2a <= '0';
							o_control2b <= '0';
							state       <= sign33;
						end if;

					when sign25 =>
						if (s_m< M) then
							o_control2a <= '1';
							o_control2b <= '1';
							state       <= sign26;
						else
							l <= l+1;
							if (isUneven(l) = '1') then
								s_temp_adr <= std_logic_vector(to_unsigned(SM_TEMP_BASE_ADR + (l+1)*2,PORT_WIDTH));
							end if;
							state <= sign24;
						end if;

					---------------------------------------------------- TEMP is either |0,1|2,3| or |_,0|1,2|3,_| 
					when sign26 => --get B and first part of temp
						bram2a.o.o_we   <= "0000";
						bram2a.o.o_en   <= '1';
						bram2a.o.o_addr <= std_logic_vector(to_unsigned(P2VEC_BASE_ADR+m,PORT_WIDTH));

						bram2b.o.o_we   <= "0000";
						bram2b.o.o_en   <= '1';
						bram2b.o.o_addr <= s_temp_adr; -- read first part of temp
						state           <= sign27;

					when sign27 =>
						state <= sign28;

					when sign28 =>
						tmp <= i_mem2a_dout; -- 4 bytes! B[i]
						if (s_utmp = 1) then
							bram2a.o.o_din(15 downto 0)  <= X"FF_FF";
							bram2a.o.o_din(31 downto 16) <= std_logic_vector(unsigned(i_mem2b_dout(31 downto 16)) + unsigned(i_mem2a_dout(7 downto 0)));
							bram2a.o.o_we                <= "1100";
						else
							bram2a.o.o_din(15 downto 0)  <= std_logic_vector(unsigned(i_mem2b_dout(15 downto 0)) + unsigned(i_mem2a_dout(7 downto 0)));
							bram2a.o.o_din(31 downto 16) <= std_logic_vector(unsigned(i_mem2b_dout(31 downto 16)) + unsigned(i_mem2a_dout(15 downto 8)));
							bram2a.o.o_we                <= "1111";
						end if;
						bram2a.o.o_en   <= '1';
						bram2a.o.o_addr <= s_temp_adr; -- Write First Part of temp

						bram2b.o.o_en   <= '1'; -- Read second part of temp
						bram2b.o.o_addr <= std_logic_vector(unsigned(s_temp_adr)+4);
						bram2b.o.o_we   <= "0000";
						state           <= sign29;

					when sign29 =>
						bram2a.o.o_addr <= std_logic_vector(unsigned(s_temp_adr)+8); -- Read third part of temp (Can be not used)
						bram2a.o.o_en   <= '1';
						bram2a.o.o_we   <= "0000";
						state           <= sign30;

					when sign30 =>
						if (s_utmp = 1) then
							bram2b.o.o_din(15 downto 0)  <= std_logic_vector(unsigned(i_mem2b_dout(15 downto 0)) + unsigned(tmp(15 downto 8)));
							bram2b.o.o_din(31 downto 16) <= std_logic_vector(unsigned(i_mem2b_dout(31 downto 16)) + unsigned(tmp(24 downto 16)));
							bram2b.o.o_we                <= "1111";
							state                        <= sign31; -- Temp Third part is needed!
						else
							bram2b.o.o_din(15 downto 0)  <= std_logic_vector(unsigned(i_mem2b_dout(15 downto 0)) + unsigned(tmp(24 downto 16)));
							bram2b.o.o_din(31 downto 16) <= std_logic_vector(unsigned(i_mem2b_dout(31 downto 16)) + unsigned(tmp(31 downto 25)));
							bram2b.o.o_we                <= "1111";
							state                        <= sign32; -- Done 
						end if;
						bram2b.o.o_en   <= '1';
						bram2b.o.o_addr <= std_logic_vector(unsigned(s_temp_adr)+4); -- Write Second Part of temp

						bram2a.o.o_en   <= '0'; -- Port A off
						bram2a.o.o_addr <= ZERO_32;
						state           <= sign31;

					when sign31 =>
						bram2b.o.o_en                <= '1';
						bram2b.o.o_din(15 downto 0)  <= std_logic_vector(unsigned(i_mem2b_dout(31 downto 16)) + unsigned(tmp(31 downto 25)));
						bram2b.o.o_din(31 downto 16) <= X"FF_FF";
						bram2b.o.o_we                <= "0011";
						bram2b.o.o_addr              <= std_logic_vector(unsigned(s_temp_adr)+8); -- Write third last part if needed
						state                        <= sign32;

					when sign32 =>
						bram2b.o.o_en   <= '0';
						bram2b.o.o_we   <= "0000";
						bram2b.o.o_addr <= ZERO_32;

						-- Increment loop 
						s_m        <= s_m+4;
						s_temp_adr <= std_logic_vector(unsigned(s_temp_adr)+8); -- In both even/uneven cases adr is incremented by 8(64 bits/ 4*16)
						state      <= sign25;


					when sign33 =>
						o_red_ext_en         <= '1';
						o_red_ext_input_adr  <= std_logic_vector(to_unsigned(SM_TEMP_BASE_ADR,PORT_WIDTH)); -- BRAM I
						o_red_ext_output_adr <= std_logic_vector(to_unsigned(MULTIED_BASE_ADR,PORT_WIDTH)); -- BRAM III
						state                <= sign34;

					when sign34 =>
						o_red_ext_en <= '0';
						if (i_red_ext_done = '1') then
							state <= add_mult1;
						end if;

						------------------ ~END MULTIPLY EXTENSION FIELD~ --------------------------------------- 

						--when add_mult0 =>
						--	if (s_k < M) then
						--		state <= add_mult1;
						--	else
						--		state <= sign35;
						--	end if;

					when add_mult1 =>
						o_add_enable         <= '1';
						o_add_v1_addr        <= std_logic_vector(to_unsigned(MULTIED_BASE_ADR,PORT_WIDTH)); -- BRAM III
						o_add_v2_addr        <= s_lin_adr;                                                  -- BRAM III
						o_add_out_addr       <= s_lin_adr;                                                  -- BRAM III
						o_add_bram_sel       <= "10";                                                       -- ALL IN BIG bram 2
						o_add_demux_bram_sel <= "00001";
						state                <= add_mult2;

					when add_mult2 =>
						o_add_enable <= '0';
						if (i_add_done = '1') then
							state <= add_mult3;
						end if;

					when add_mult3 =>
						o_add_enable         <= '1';
						o_add_v1_addr        <= std_logic_vector(to_unsigned(MULTIED_BASE_ADR,PORT_WIDTH)); -- BRAM III
						o_add_v2_addr        <= s_lin1_adr;                                                 -- BRAM III
						o_add_out_addr       <= s_lin1_adr;                                                 -- BRAM III
						o_add_bram_sel       <= "10";                                                       -- ALL IN BIG bram 2
						o_add_demux_bram_sel <= "00001";
						state                <= add_mult4;

					when add_mult4 =>
						o_add_enable <= '0';
						if (i_add_done = '1') then
							state <= add_mult5;
						end if;

					when add_mult5 =>
						c          <= c +1;
						s_bil_adr  <= std_logic_vector(unsigned(s_bil_adr) + (N-O)*M);
						s_lin_adr  <= std_logic_vector(unsigned(s_lin_adr) + M);
						s_lin1_adr <= std_logic_vector(unsigned(s_lin1_adr) + M);
						state      <= sign21;

					when sign35 =>
						s_lin_adr  <= std_logic_vector(to_unsigned(LINEAR_BASE_ADR + M*i*O, PORT_WIDTH));
						s_lin1_adr <= std_logic_vector(to_unsigned(LINEAR_BASE_ADR + M*(j+1)*O, PORT_WIDTH));

						ctr   <= ctr +1;
						j     <= j +1;
						state <= sign7;

						------------------ ~MERGE OUTPUTS~ --------------------------------------- 

					when sign36 => --  (Only small bram also reusing SM_TEMP mem space)-- vineval/outputs = bram 0 , rhs/merged = bram 0, temp = bram2
						if (KC2 > M) then
							report "KC2 > M not supported" severity error;
							err <= "11"; --- TODO: add error port
						end if;

						if(s_k < KC2) then
							s_utmp <= s_k mod 2; -- Indexing in TEMP (Which short to chose? LSB or MSB)
							state  <= sign37;
						else
							o_control0a <= '0';
							o_control2a <= '0' ;
							o_control2b <= '0';
							state       <= sign45;
						end if;

					when sign37 =>
						if (i < M) then
							o_control0a <= '1';
							o_control2a <= '1';
							o_control2b <= '1';
							state       <= sign38;
						else
							i   <= 0;
							s_k <= s_k +1 ;
							if (isUneven(s_k) = '1') then -- We need this to increment aligned16 data in BRAM
								s_temp_adr <= std_logic_vector(to_unsigned(SM_TEMP_BASE_ADR + (s_k+1)*2,PORT_WIDTH));
							end if;
							s_outputs_adr <= std_logic_vector(to_unsigned(VINEVAL_BASE_ADR + (s_k+1)*M,PORT_WIDTH));
							state         <= sign36;
						end if;

					when sign38 =>
						--read actually 64 bits (Depending on k); Hint, look at multiply_extension_field
						bram0a.o.o_en   <= '1';
						bram0a.o.o_addr <= s_outputs_adr;
						bram0a.o.o_we   <= "0000";
						--------------------------------------------------------
						bram2a.o.o_en   <= '1';
						bram2a.o.o_addr <= s_temp_adr;
						bram2a.o.o_we   <= "0000";
						--------------------------------------------------------
						bram2b.o.o_en   <= '1';
						bram2b.o.o_addr <= std_logic_vector(unsigned(s_temp_adr)+4);
						bram2b.o.o_we   <= "0000";

						state <= sign39;

					when sign39 =>
						state <= sign40;

					when sign40 =>
						bram0a.o.o_en <= '0';
						tmp           <= i_mem0a_dout;
						if (s_utmp = 1) then
							bram2a.o.o_din(15 downto 0)  <= X"FF_FF";
							bram2a.o.o_din(31 downto 16) <= std_logic_vector(unsigned(i_mem2a_dout(31 downto 16)) + unsigned(i_mem0a_dout(7 downto 0)));
							bram2a.o.o_we                <= "1100";
							bram2a.o.o_addr              <= s_temp_adr;
							----------------------------------------------------
							bram2b.o.o_din(15 downto 0)  <= std_logic_vector(unsigned(i_mem2b_dout(15 downto 0)) + unsigned(i_mem0a_dout(15 downto 8)));
							bram2b.o.o_din(31 downto 16) <= std_logic_vector(unsigned(i_mem2b_dout(31 downto 16)) + unsigned(i_mem0a_dout(24 downto 16)));
							bram2b.o.o_we                <= "1111";
							bram2b.o.o_addr              <= std_logic_vector(unsigned(s_temp_adr)+4);
							state                        <= sign41; -- One more write is needed 
						else
							bram2a.o.o_din(15 downto 0)  <= std_logic_vector(unsigned(i_mem2a_dout(15 downto 0)) + unsigned(i_mem0a_dout(7 downto 0)));
							bram2a.o.o_din(31 downto 16) <= std_logic_vector(unsigned(i_mem2a_dout(31 downto 16)) + unsigned(i_mem0a_dout(15 downto 8)));
							bram2a.o.o_we                <= "1111";
							bram2a.o.o_addr              <= s_temp_adr;
							----------------------------------------------------
							bram2b.o.o_din(15 downto 0)  <= std_logic_vector(unsigned(i_mem2b_dout(15 downto 0)) + unsigned(i_mem0a_dout(24 downto 16)));
							bram2b.o.o_din(31 downto 16) <= std_logic_vector(unsigned(i_mem2b_dout(31 downto 16)) + unsigned(i_mem0a_dout(31 downto 25)));
							bram2b.o.o_we                <= "1111";
							bram2b.o.o_addr              <= std_logic_vector(unsigned(s_temp_adr)+4);
							state                        <= sign44; -- done 
						end if;

						bram2a.o.o_en <= '1';
						bram2b.o.o_en <= '1';

					when sign41 =>
						bram2b.o.o_en   <= '0';
						bram2b.o.o_we   <= "0000";
						bram2a.o.o_en   <= '1';
						bram2a.o.o_we   <= "0000";
						bram2a.o.o_addr <= std_logic_vector(unsigned(s_temp_adr)+8);
						state           <= sign42;

					when sign42 =>
						state <= sign43;

					when sign43 => --write back last part
						bram2a.o.o_din(15 downto 0)  <= std_logic_vector(unsigned(i_mem2a_dout(15 downto 0)) + unsigned(tmp(31 downto 25)));
						bram2a.o.o_din(31 downto 16) <= X"FF_FF";
						bram2a.o.o_we                <= "0011";
						bram2a.o.o_addr              <= std_logic_vector(unsigned(s_temp_adr)+8);
						bram2a.o.o_en                <= '1';
						state                        <= sign44;

					when sign44 =>
						bram2a.o.o_en   <= '0';
						bram2a.o.o_we   <= "0000";
						bram2a.o.o_addr <= ZERO_32;
						bram2b.o.o_en   <= '0';
						bram2b.o.o_we   <= "0000";
						bram2b.o.o_addr <= ZERO_32;
						s_temp_adr      <= std_logic_vector(unsigned(s_temp_adr)+8); -- In both even/uneven cases, adr is incremented by 8(64 bits/ 4*16)
						s_outputs_adr   <= std_logic_vector(unsigned(s_outputs_adr)+4);
						i               <= i+4;
						state           <= sign37;

						------------------ ~END MERGE OUTPUTS~ --------------------------------------- 

					when sign45 =>
						o_red_ext_en         <= '1';
						o_red_ext_input_adr  <= std_logic_vector(to_unsigned(SM_TEMP_BASE_ADR,PORT_WIDTH)); -- BRAM I 
						o_red_ext_output_adr <= std_logic_vector(to_unsigned(RHS_BASE_ADR,PORT_WIDTH));     -- BRAM III
						state                <= sign46;

					when sign46 =>
						o_red_ext_en <= '0';
						if (i_red_ext_done = '1') then
							state <= neg0;
						end if;

					when neg0 =>
						o_neg_enable <= '1';
						o_neg_len    <= std_logic_vector(to_unsigned(M,PORT_WIDTH));
						o_neg_adr    <= std_logic_vector(to_unsigned(RHS_BASE_ADR,PORT_WIDTH)); -- BRAM III
						state        <= neg1;

					when neg1 =>
						o_neg_enable <= '0';
						if (i_neg_done = '1') then
							state <= sign47;
						end if;

					when sign47 =>
						o_add_enable         <= '1';
						o_add_v1_addr        <= std_logic_vector(to_unsigned(RHS_BASE_ADR,PORT_WIDTH)); -- BRAM III
						o_add_v2_addr        <= std_logic_vector(to_unsigned(DIG_BASE_ADR,PORT_WIDTH)); -- BRAM I
						o_add_out_addr       <= std_logic_vector(to_unsigned(RHS_BASE_ADR,PORT_WIDTH)); -- BRAM III
						o_add_bram_sel       <= "00";
						o_add_demux_bram_sel <= "00010";
						state                <= sign48;
					when sign48 =>
						o_add_enable <= '0';
						if (i_add_done = '1') then
							state <= sample3;
						end if;

					when sample3 =>
						o_sam_oil_en <= '1';
						state        <= sample4;

					when sample4 =>
						o_sam_oil_en <= '0';
						state        <= sample5;

					when sample5 =>
						if(i_sam_oil_done = '1')then
							if (i_sam_oil_ret= '0') then --SUCCESS
								state <= sample6;
							else
								--state <= sign4;    -- OUT OF WHILE LOOP
								state <= sample6 ; -- DEBUG bruteforce
								o_err <= "01";
								report "Sample oil did not find a solution, repeating...";
							end if;
						else
							state <= sample5;
						end if;

					--------------------------------------------------------
					-- INFINITE WHILE LOOP END
					--------------------------------------------------------
					when sample6 =>
						o_add_oil_enable <= '1';
						state            <= sample7;

					when sample7 =>
						o_add_oil_enable <= '0';
						state            <= sample8;

					when sample8 =>
						if(i_add_oil_done = '1')then
							state <= msg8;
						else
							state <= sample8;
						end if;

					when msg8 =>
						o_memcpy1_start        <= '1';
						o_memcpy1_src_adr      <= std_logic_vector(to_unsigned(SIG_BASE_ADR,PORT_WIDTH));           -- BRAM II 
						o_memcpy1_dst_adr      <= std_logic_vector(to_unsigned(CPU_SPACE_SIG_BASE_ADR,PORT_WIDTH)); -- BRAM II 
						o_memcpy1_len          <= std_logic_vector(to_unsigned(SIG_BYTES,PORT_WIDTH));
						o_memcpy1_mem_port_sel <= "01";
						state                  <= msg9;

					when msg9 =>
						o_memcpy1_start <= '0';
						if (i_memcpy1_done = '1') then
							state <= done;
						else
							state <= msg9;
						end if;

					when done =>
						o_done <= '1';
						o_busy <= '0';
						report "Sign Done";
						state <= idle;

					when others =>
						null;
				end case;
			end if;
		end if;
	end process;

	o_hash_memsel <= s_hash_mem_sel;

	--- brams
	--BRAM0-A
	bram0a.i.i_dout <= i_mem0a_dout;
	o_mem0a_din     <= bram0a.o.o_din;
	o_mem0a_addr    <= bram0a.o.o_addr;
	o_mem0a_en      <= bram0a.o.o_en;
	o_mem0a_rst     <= bram0a.o.o_rst;
	o_mem0a_we      <= bram0a.o.o_we;

	--BRAM0-B
	-- bram0b.i.i_dout <= i_mem0b_dout;
	o_mem0b_din  <= bram0b.o.o_din;
	o_mem0b_addr <= bram0b.o.o_addr;
	o_mem0b_en   <= bram0b.o.o_en;
	o_mem0b_rst  <= bram0b.o.o_rst;
	o_mem0b_we   <= bram0b.o.o_we;

	--BRAM1-A
	bram1a.i.i_dout <= i_mem1a_dout;
	o_mem1a_din     <= bram1a.o.o_din;
	o_mem1a_addr    <= bram1a.o.o_addr;
	o_mem1a_en      <= bram1a.o.o_en;
	o_mem1a_rst     <= bram1a.o.o_rst;
	o_mem1a_we      <= bram1a.o.o_we;

	--BRAM2-A
	--bram2a.i.i_dout <= i_mem2a_dout;
	o_mem2a_din  <= bram2a.o.o_din;
	o_mem2a_addr <= bram2a.o.o_addr;
	o_mem2a_en   <= bram2a.o.o_en;
	o_mem2a_rst  <= bram2a.o.o_rst;
	o_mem2a_we   <= bram2a.o.o_we;

	--BRAM2-B
	-- bram2b.i.i_dout <= i_mem2b_dout;
	o_mem2b_din  <= bram2b.o.o_din;
	o_mem2b_addr <= bram2b.o.o_addr;
	o_mem2b_en   <= bram2b.o.o_en;
	o_mem2b_rst  <= bram2b.o.o_rst;
	o_mem2b_we   <= bram2b.o.o_we;
END ARCHITECTURE Behavioral;
