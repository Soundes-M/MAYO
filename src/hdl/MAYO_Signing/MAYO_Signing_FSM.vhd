LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use STD.textio.all;
use ieee.std_logic_textio.all;

use work.MAYO_COMMON.all;
use work.UTILS_COMMON.all;

entity MAYO_SIGNING_FSM is
	port (
		clk      : in  std_logic;
		rst      : in  std_logic;
		i_enable : in  std_logic;
		o_done   : out std_logic;

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
		o_sam_oil_addr : out std_logic_vector(31 downto 0);

		--REDUCE CORE
		o_red_enable   : out std_logic;
		o_red_len      : out std_logic_vector (31 downto 0);
		o_red_adr      : out std_logic_vector (31 downto 0);
		o_red_bram_sel : out std_logic;
		i_red_done     : in  std_logic;

		--MEMCPY CORE
		o_memcpy_start        : in  std_logic;
		o_memcpy_src_adr      : in  std_logic_vector(31 downto 0);
		o_memcpy_dst_adr      : in  std_logic_vector(31 downto 0);
		o_memcpy_len          : in  std_logic_vector(31 downto 0);
		i_memcpy_done         : out std_logic;
		o_memcpy_mem_port_sel : in  std_logic_vector(1 downto 0);


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
		o_mem1a_we   : out std_logic_vector (3 downto 0)
	);

end entity MAYO_SIGNING_FSM;

ARCHITECTURE Behavioral OF MAYO_SIGNING_FSM IS
	type state_fsm_t is (idle,expand_sk0,expand_sk1,expand_sk2,expand_sk3,expand_sk4,expand_sk5,expand_sk6, expand_sk7,expand_sk8, sample0, sample1,sample2, done);
	signal sign_fsm_state : state_fsm_t := idle;
	signal index          : integer     := 0;
	signal s_hash_mem_sel : std_logic   := '1';
	signal s_sam_mem_sel  : std_logic   := '1'; -- TODO : Use FOR SAMPLE OUT
	signal counter        : integer     := 0;
	signal i              : integer     := 0;
	signal j              : integer     := 0;

	signal s_p1p1t_adr     : std_logic_vector(31 downto 0) := ZERO_32;
	signal s_p1_adr        : std_logic_vector(31 downto 0) := ZERO_32;
	signal s_p1p1t_inv_adr : std_logic_vector(31 downto 0) := ZERO_32;


	------------------------------------------------------------------------------
	-- BRAM
	------------------------------------------------------------------------------
	signal bram0a : bram_t := DEFAULT_BRAM;
	signal bram0b : bram_t := DEFAULT_BRAM;
	signal bram1a : bram_t := DEFAULT_BRAM;

	------------------------------------------------------------------------------
	-- DEBUG
	------------------------------------------------------------------------------
	constant C_DEBUG : std_logic := '1';
	file myFile      : text;
	signal debug_ctr : integer := 0 ;

begin
	SIGNING           : PROCESS(CLK) is
		variable v_myLine : line;
	begin
		if (rising_edge(clk)) then
			if(rst = '1') then
				-- reset werte!
				s_hash_mem_sel <= '1';
				bram0a.o       <= DEFAULT_OUT_BRAM;
				bram0b.o       <= DEFAULT_OUT_BRAM;
				bram1a.o       <= DEFAULT_OUT_BRAM;
				s_sam_mem_sel  <= '1';
				s_hash_mem_sel <= '1';
				index          <= 0;
				i              <= 0;
				j              <= 0;
				counter        <= 0;

			else
				case (sign_fsm_state) is
					when idle =>
						if (i_enable = '1') then
							sign_fsm_state <= expand_sk0;
							index          <= 0 ;
						else
							sign_fsm_state <= idle;
						end if;

						-- TODO : Add expose

					when expand_sk0 => -- first copy Public seed to bigbram for hash
						bram0a.o.o_en   <= '1';
						bram0a.o.o_we   <= "0000";
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(SK_BASE_ADR,PORT_WIDTH)) ; -- TODO : Check
						sign_fsm_state  <= expand_sk1;

					when expand_sk1 => -- BRAM LATENCY
						bram1a.o.o_en  <= '0';
						bram1a.o.o_we  <= "0000";
						sign_fsm_state <= expand_sk2;

					when expand_sk2 =>
						bram1a.o.o_din  <= bram0a.i.i_dout; -- TODO : Maybe timing viloation
						bram1a.o.o_en   <= '1';
						bram1a.o.o_we   <= "1111";
						bram1a.o.o_addr <= std_logic_vector(to_unsigned(SK_EXP_BASE_ADR + SK_EXP_P1 + index,PORT_WIDTH));

						if (index < SEED_BYTES) then -- TODO check this loop?
							index           <= index +4 ;
							bram0a.o.o_addr <= std_logic_vector(unsigned(bram0a.o.o_addr) +4);
							sign_fsm_state  <= expand_sk1;
						else
							index          <= 0 ;
							s_hash_mem_sel <= '0';
							sign_fsm_state <= expand_sk3;
						end if;

					when expand_sk3 =>
						bram1a.o.o_en <= '0';
						bram1a.o.o_we <= "0000";
						--------------------------------------------------------------------
						-- EXPAND PK  BEGIN
						-- Hash using big BRAM
						--------------------------------------------------------------------
						-- USING BRAM1A && 0A
						o_hash_mlen      <= std_logic_vector(to_unsigned(SEED_BYTES,PORT_WIDTH));
						o_hash_olen      <= std_logic_vector(to_unsigned(P1_BYTES,PORT_WIDTH));
						o_hash_read_adr  <= std_logic_vector(to_unsigned(SK_EXP_BASE_ADR + SK_EXP_P1,PORT_WIDTH));
						o_hash_write_adr <= std_logic_vector(to_unsigned(SK_EXP_BASE_ADR + SK_EXP_P1,PORT_WIDTH)); -- Linked to BRAM 1 (BIG)
						o_hash_en        <= '1';
						sign_fsm_state   <= expand_sk4;

					when expand_sk4 =>
						o_hash_en        <= '0';
						o_hash_mlen      <= ZERO_32;
						o_hash_olen      <= ZERO_32;
						o_hash_read_adr  <= ZERO_32;
						o_hash_write_adr <= ZERO_32;
						sign_fsm_state   <= expand_sk5;

					when expand_sk5 =>
						if (i_hash_done = '1') then
							o_red_bram_sel <= '1';
							sign_fsm_state <= expand_sk6;
						end if;

					when expand_sk6 =>
						o_red_adr      <= std_logic_vector(to_unsigned(SK_EXP_BASE_ADR + SK_EXP_P1,PORT_WIDTH));
						o_red_len      <= std_logic_vector(to_unsigned(P1_BYTES,PORT_WIDTH));
						o_red_enable   <= '1';
						sign_fsm_state <= expand_sk7;

					when expand_sk7 =>
						o_red_enable   <= '0';
						sign_fsm_state <= expand_sk8;

					when expand_sk8 =>
						if (i_red_done = '1') then
							s_hash_mem_sel <= '0'; -- Hash using small bram
							sign_fsm_state <= sample0;
						end if;
					--------------------------------------------------------------------
					-- EXPAND PK END
					--------------------------------------------------------------------
					when sample0 =>            -- USES BOTH BRAM 0 PORTS!
						o_sam_enable   <= '1'; -- TODO add bram ports
						o_sam_oil_addr <= std_logic_vector(to_unsigned(OIL_SPACE_BASE_ADR,PORT_WIDTH));
						sign_fsm_state <= sample1;

					when sample1 =>
						o_sam_enable   <= '0';
						sign_fsm_state <= sample2;

					when sample2 =>
						if (i_sam_done = '1') then
							sign_fsm_state <= computeBil0;
						else
							sign_fsm_state <= sample2;
						end if;

					when computeBil0 =>
						counter <= 0;
						i       <= 0;
						j       <= 0;

						s_p1p1t_inv_adr <= P1P1T_BASE_ADR;
						s_p1p1t_adr     <= P1P1T_BASE_ADR;
						s_p1_adr        <= SK_EXP_BASE_ADR + SK_EXP_P1;

						sign_fsm_state <= computeBil1;

					when computeBil1 =>
						if (i < N-O) then
							sign_fsm_state <= computeBil2 ;
							j              <= i;
						else
							sign_fsm_state <= ?????;
						end if;

					when computeBil2 =>
						if (j < N-O) then
							sign_fsm_state <= computeBil3;
						else
							i              <= i+1;
							sign_fsm_state <= computeBil1;
						end if;

					when computeBil3 =>
						o_memcpy_src_adr      <= s_p1p1t_adr;
						o_memcpy_dst_adr      <= s_p1_adr;
						o_memcpy_start        <= '1';
						o_memcpy_mem_port_sel <= "01"; -- TODO : FIX THIS ONCE ALL IS SETUP
						sign_fsm_state        <= computeBil4;

					when computeBil4 =>
						o_memcpy_start <= '0';

						if (i_memcpy_done = '1') then
							if (i = j) then
								sign_fsm_state <= computeBil5; -- TODO : MULTIPLY 2 (ADDVEC)
							else
								sign_fsm_state <= computeBil6;
							end if;
						else
							sign_fsm_state <= computeBil4;
						end if;


					when computeBil5 =>



					when computeBil6 => -- safe cycle delay 
						sign_fsm_state <= computeBil8;

					when computeBil8 =>

						o_memcpy_src_adr      <= s_p1p1t_inv_adr;
						o_memcpy_dst_adr      <= s_p1_adr;
						o_memcpy_start        <= '1';
						o_memcpy_mem_port_sel <= "01"; -- TODO : FIX THIS ONCE ALL IS SETUP
						sign_fsm_state        <= computeBil???;






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
END ARCHITECTURE Behavioral;
