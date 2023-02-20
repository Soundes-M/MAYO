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
		o_done   : out std_logic;

		o_trng_r     : out std_logic;
		o_trng_w     : out std_logic;
		o_trng_data  : out std_logic_vector(31 downto 0);
		i_trng_data  : in  std_logic_vector(31 downto 0);
		i_trng_valid : in  std_logic;
		i_trng_done  : in  std_logic;

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
		o_memcpy_start        : out std_logic;
		o_memcpy_src_adr      : out std_logic_vector(31 downto 0);
		o_memcpy_dst_adr      : out std_logic_vector(31 downto 0);
		o_memcpy_len          : out std_logic_vector(31 downto 0);
		i_memcpy_done         : in  std_logic;
		o_memcpy_mem_port_sel : out std_logic_vector(1 downto 0);

		-- P1P1T Compute Core
		o_p1p1t_enable   : out std_logic;
		i_p1p1t_done     : in  std_logic;
		o_p1p1t_src_adr  : out std_logic_vector(31 downto 0);
		o_p1p1t_dsta_adr : out std_logic_vector(31 downto 0);
		o_p1p1t_dstb_adr : out std_logic_vector(31 downto 0);
		o_p1p1t_ji_equal : out std_logic;

		-- LINEAR COMBINATION 
		o_lin_enable      : out std_logic;
		i_lin_done        : in  std_logic;
		o_lin_bram_halt   : out std_logic; -- DMA Wait for Copy (Big BRAM)
		o_lin_vec_addr    : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_lin_coeffs_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_lin_out_addr    : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_lin_len         : out std_logic_vector(PORT_WIDTH-1 downto 0);

		-- ADD VECTORS
		o_add_enable   : out std_logic;
		o_add_v1_addr  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_add_v2_addr  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_add_out_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		i_add_done     : in  std_logic;
		o_add_bram_sel : out std_logic_vector(1 downto 0);

		-- Sample Vinegar
		o_sam_vin_en        : out std_logic;
		i_sam_vin_done      : in  std_logic;
		o_sam_vin_input_adr : out std_logic_vector(PORT_WIDTH-1 downto 0);

		--Reduce extension
		o_red_ext_en         : out std_logic;
		i_red_ext_done       : in  std_logic;
		o_red_ext_input_adr  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_red_ext_output_adr : out std_logic_vector(PORT_WIDTH-1 downto 0);

		o_neg_enable : out std_logic;
		o_neg_len    : out std_logic_vector (31 downto 0);
		o_neg_adr    : out std_logic_vector(PORT_WIDTH-1 downto 0);
		i_neg_done   : in  std_logic;


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
		o_mem2b_we   : out std_logic_vector (3 downto 0)
	);

end entity MAYO_SIGNING_FSM;

ARCHITECTURE Behavioral OF MAYO_SIGNING_FSM IS
	type state_fsm_t is (idle,expand_sk0,expand_sk1,expand_sk2,expand_sk3,expand_sk4,expand_sk5,expand_sk6, expand_sk7, expand_sk8, sample0, sample1, sample2, sample3, sample4, sample5, computeBil0,
			computeBil1, computeBil2, computeBil3, computeBil4, computeBil5, computeBil6, computeBil7, computeBil8, computeBil9, computeBil10, computeBil11, computeBil12, computeBil13,
			computeBil14, computeBil15, transpose0, transpose1, transpose2, transpose3, sign0, sign1, sign2, sign3, sign4, sign5, sign6, sign7, sign8, sign9, sign10, sign11, sign12, sign13,
			sign14, sign15, sign16, sign17, sign18, sign19, sign20, sign21, sign22, sign23, sign24, sign25, sign26, sign27, sign28, sign29, sign30, sign31, sign32, sign33, sign34,
			sign35, sign36, sign37, sign38, sign39, sign40, sign41, sign42, sign43, sign44, sign45, sign46, sign47, sign48, sign49, sign50, neg0, neg1,
			signX, msgdgst0, msgdgst1, msgdgst2, msgdgst3, msgdgst4, msgdgst5, msgdgst6, msgdgst7,msgdgst8,msgdgst9, add_mult0, add_mult1, add_mult2, add_mult3, add_mult4, add_mult5,
			done);
	signal state          : state_fsm_t := idle;
	signal index          : integer     := 0;
	signal s_hash_mem_sel : std_logic   := '1';
	signal s_sam_mem_sel  : std_logic   := '1'; -- TODO : Use FOR SAMPLE OUT
	signal counter        : integer     := 0;
	signal i              : integer     := 0;
	signal j              : integer     := 0;
	signal k              : integer     := 0;
	signal l,m            : integer     := 0;
	signal ctr            : integer     := 0;
	signal c              : integer     := 0;

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


	signal s_src_index  : integer := 0;
	signal s_dest_index : integer := 0;
	signal s_utmp       : integer := 0;
	signal unsigned_tmp : unsigned(PORT_WIDTH -1 downto 0);

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
				k               <= 0;
				l               <= 0;
				m               <= 0;
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
				state           <= idle;

			else
				case (state) is
					when idle =>
						if (i_enable = '1') then
							state <= expand_sk0;
							index <= 0 ;
						else
							state <= idle;
						end if;

						-- TODO : Add expose

					when expand_sk0 => -- first copy Public seed to bigbram for hash
						bram0a.o.o_en   <= '1';
						bram0a.o.o_we   <= "0000";
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(SK_BASE_ADR,PORT_WIDTH)) ; -- TODO : Check
						state           <= expand_sk1;

					when expand_sk1 => -- BRAM LATENCY
						bram1a.o.o_en <= '0';
						bram1a.o.o_we <= "0000";
						state         <= expand_sk2;

					when expand_sk2 =>
						bram1a.o.o_din  <= bram0a.i.i_dout; -- TODO : Maybe timing viloation
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
						o_hash_read_adr  <= std_logic_vector(to_unsigned(SK_EXP_BASE_ADR + SK_EXP_P1,PORT_WIDTH));
						o_hash_write_adr <= std_logic_vector(to_unsigned(SK_EXP_BASE_ADR + SK_EXP_P1,PORT_WIDTH)); -- Linked to BRAM 1 (BIG)
						o_hash_en        <= '1';
						state            <= expand_sk4;

					when expand_sk4 =>
						o_hash_en        <= '0';
						o_hash_mlen      <= ZERO_32;
						o_hash_olen      <= ZERO_32;
						o_hash_read_adr  <= ZERO_32;
						o_hash_write_adr <= ZERO_32;
						state            <= expand_sk5;

					when expand_sk5 =>
						if (i_hash_done = '1') then
							o_red_bram_sel <= '1';
							state          <= expand_sk6;
						end if;

					when expand_sk6 =>
						o_red_adr    <= std_logic_vector(to_unsigned(SK_EXP_BASE_ADR + SK_EXP_P1,PORT_WIDTH));
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
					when sample0 => -- USES BOTH BRAM 0 PORTS!
						o_sam_enable   <= '1';
						o_sam_oil_addr <= std_logic_vector(to_unsigned(SK_EXP_BASE_ADR + SK_EXP_OIL,PORT_WIDTH));
						state          <= sample1;

					when sample1 =>
						o_sam_enable <= '0';
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

					when computeBil3 => -- Runs for M 
						o_p1p1t_src_adr  <= s_p1_adr;
						o_p1p1t_dsta_adr <= s_p1p1t_adr;
						o_p1p1t_dstb_adr <= s_p1p1t_inv_adr;
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
						o_lin_enable      <= '1';
						o_lin_len         <= std_logic_vector(to_unsigned(N-O,PORT_WIDTH));
						o_lin_vec_addr    <= s_p1_adr;
						o_lin_coeffs_addr <= s_p1p1t_adr;
						o_lin_out_addr    <= s_p1p1t_inv_adr;
						state             <= computeBil10;

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
						o_add_enable   <= '1';
						o_add_v1_addr  <= s_p1p1t_adr;
						o_add_v2_addr  <= s_p1_adr;
						o_add_out_addr <= s_p1p1t_adr;
						o_add_bram_sel <= "00"; -- TODO : Make sure that demux understands this 
						state          <= computeBil14;

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
						o_memcpy_src_adr      <= std_logic_vector(to_unsigned(s_src_index,PORT_WIDTH)) ;
						o_memcpy_dst_adr      <= std_logic_vector(to_unsigned(s_dest_index,PORT_WIDTH));
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
						o_trng_w      <= '1';
						o_trng_r      <= '0';
						o_trng_data   <= std_logic_vector(to_unsigned(SEED_BYTES,PORT_WIDTH));
						bram2a.o.o_we <= "1111";
						bram2b.o.o_we <= "1111";
						index         <= 0 ;
						state         <= sign1;
					when sign1 =>
						o_trng_w <= '0';
						o_trng_r <= '0';
						state    <= sign2;

					when sign2 =>
						o_trng_w <= '0';
						o_trng_r <= '1';

						if (i_trng_valid = '1') then
							bram2a.o.o_din  <= i_trng_data;
							bram2a.o.o_en   <= '1';
							bram2a.o.o_addr <= std_logic_vector(to_unsigned(SIG_BASE_ADR+index,PORT_WIDTH)) ;

							-- Also copy in here for message digest
							bram2b.o.o_din  <= i_trng_data;
							bram2b.o.o_en   <= '1';
							bram2b.o.o_addr <= std_logic_vector(to_unsigned(DIG_BASE_ADR+index,PORT_WIDTH)) ;

							index <= index + 4;

						else
							bram2a.o.o_en <= '0';
							bram2b.o.o_en <= '0';
						end if;

						if (i_trng_done = '1') then
							state <= sign3;
						end if;

					when sign3 =>
						o_trng_r      <= '0';
						bram2a.o.o_en <= '0';
						bram2a.o.o_we <= "0000";
						bram2b.o.o_en <= '0';
						bram2b.o.o_we <= "0000";
						state         <= msgdgst0;
					--------------------------------------------------------
					-- Msg digest
					--------------------------------------------------------
					when msgdgst0 =>
						s_hash_mem_sel <= '0';
						-- Hash using small BRAM (2)
						o_hash_mlen      <= std_logic_vector(to_unsigned(MESSAGE_BYTES,PORT_WIDTH));
						o_hash_olen      <= std_logic_vector(to_unsigned(HASH_BYTES,PORT_WIDTH));
						o_hash_read_adr  <= std_logic_vector(to_unsigned(MSG_BASE_ADR,PORT_WIDTH));
						o_hash_write_adr <= std_logic_vector(to_unsigned(DIG_BASE_ADR + SEED_BYTES,PORT_WIDTH)); -- Linked to BRAM 1 (BIG)
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

					when msgdgst3 => -- delay wait for hash reset [10 Clks]
						index <= index +1;
						if(index >= 10) then
							state <= msgdgst4;
						end if;

					when msgdgst4 =>

						s_hash_mem_sel <= '0';
						-- Hash using small BRAM (2)
						o_hash_mlen      <= std_logic_vector(to_unsigned(SEED_BYTES + HASH_BYTES,PORT_WIDTH));
						o_hash_olen      <= std_logic_vector(to_unsigned(DIG_RANGE,PORT_WIDTH));
						o_hash_read_adr  <= std_logic_vector(to_unsigned(DIG_BASE_ADR,PORT_WIDTH));
						o_hash_write_adr <= std_logic_vector(to_unsigned(DIG_BASE_ADR,PORT_WIDTH)); -- Linked to BRAM 1 (BIG)
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
						o_red_adr    <= std_logic_vector(to_unsigned(DIG_BASE_ADR,PORT_WIDTH));
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
					-- INFINITE LOOP BEGIN
					--------------------------------------------------------
					when sign4 =>
						o_sam_vin_input_adr <= std_logic_vector(to_unsigned(SIG_INPUTS,PORT_WIDTH)); -- Small BRAM
						o_sam_vin_en        <= '1';
						state               <= sign5;

					when sign5 =>
						o_sam_vin_input_adr <= ZERO_32;
						o_sam_vin_en        <= '0';
						if ( i_sam_vin_done = '1') then
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
							k             <= 0;
							s_outputs_adr <= std_logic_vector(to_unsigned(VINEVAL_BASE_ADR,PORT_WIDTH));
							s_temp_adr    <= std_logic_vector(to_unsigned(SM_TEMP_BASE_ADR,PORT_WIDTH));
							state         <= sign36;
						end if;

					when sign7 =>
						if (j < K) then
							k           <= 0 ;
							s_sign2_adr <= std_logic_vector(unsigned(s_sign2_adr)+N);
							state       <= sign12;
						else
							i           <= i+1;
							s_sign1_adr <= std_logic_vector(unsigned(s_sign1_adr)+N);
							state       <= sign6;
						end if;

					when sign12 =>
						bram2b.o.o_we <= "0000";
						bram2a.o.o_en <= '0';

						if (k < N) then
							state <= sign8;
						else
							l     <= 0 ;
							m     <= 0 ;
							k     <= 0 ;
							state <= sign13;
						end if;


					when sign8 =>
						bram2a.o.o_we   <= "0000";
						bram2a.o.o_en   <= '1';
						bram2a.o.o_addr <= std_logic_vector(unsigned(s_sign1_adr)+k) ;

						if (s_sign1_adr /= s_sign2_adr) then -- Avoid read collisions
							bram2b.o.o_we   <= "0000";
							bram2b.o.o_en   <= '1';
							bram2b.o.o_addr <= std_logic_vector(unsigned(s_sign2_adr)+k) ;
						end if;
						state <= sign9;

					when sign9 =>
						state <= sign10;

					when sign10 =>
						bram2a.o.o_en <= '0';
						bram2b.o.o_en <= '0';
						if (s_sign1_adr /= s_sign2_adr) then
							for x in 0 to 3 loop
								unsigned_tmp(7+x*8 downto x*8) <= (unsigned(i_mem2a_dout(7+x*8 downto x*8)) + unsigned(i_mem2b_dout(7+x*8 downto x*8))) mod PRIME;
							end loop;
						else
							for x in 0 to 3 loop
								unsigned_tmp(7+x*8 downto x*8) <= (unsigned(i_mem2a_dout(7+x*8 downto x*8)) + unsigned(i_mem2a_dout(7+x*8 downto x*8))) mod PRIME;
							end loop;
						end if;
						state <= sign11;

					when sign11 =>
						bram2b.o.o_we   <= "1111";
						bram2a.o.o_en   <= '1';
						bram2a.o.o_din  <= std_logic_vector(unsigned_tmp);
						bram2a.o.o_addr <= std_logic_vector(unsigned(s_vin_adr) + k) ;
						k               <= k +4;
						state           <= sign12;

					--------------------------------------------------------
					-- EvaluateP_vinegar BEGIN
					--------------------------------------------------------
					when sign13 =>
						if (l < N-O) then
							m     <= l;
							state <= sign14;
						else
							state <= sign19;
						end if;

					when sign14 =>
						if (m < N-O) then
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

						if (l /= m) then -- Avoid read collisions
							bram2b.o.o_we   <= "0000";
							bram2b.o.o_en   <= '1';
							bram2b.o.o_addr <= std_logic_vector(unsigned(s_sign2_adr)+m) ;
						end if;

						state <= sign16;

					when sign16 =>
						state <= sign17;

					when sign17 =>
						bram2a.o.o_en <= '0';
						bram2b.o.o_en <= '0';
						if (l /= m) then
							for x in 0 to 3 loop
								unsigned_tmp(7+x*8 downto x*8) <= (unsigned(i_mem2a_dout(7+index*8 downto index*8)) * unsigned(i_mem2b_dout(7+x*8 downto x*8))) mod PRIME;
							end loop;
						else
							for x in 0 to 3 loop
								unsigned_tmp(7+x*8 downto x*8) <= (unsigned(i_mem2a_dout(7+index*8 downto index*8)) * unsigned(i_mem2a_dout(7+x*8 downto x*8))) mod PRIME;
							end loop;
						end if;

						state <= sign18;

					when sign18 =>
						bram0a.o.o_en   <= '1';
						bram0a.o.o_we   <= "1111";
						bram0a.o.o_din  <= std_logic_vector(unsigned_tmp);
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(PRODUCT_BASE_ADR,PORT_WIDTH)+ counter);
						counter         <= counter+4;
						m               <= m+4 ;
						state           <= sign14;

					when sign19 =>                                                                                  -- TODO Check linear comb bram connections
						o_lin_vec_addr    <= std_logic_vector(to_unsigned(SK_EXP_BASE_ADR + SK_EXP_P1,PORT_WIDTH)); -- Big bram 1
						o_lin_coeffs_addr <= std_logic_vector(to_unsigned(PRODUCT_BASE_ADR,PORT_WIDTH));            -- big bram 2 
						o_lin_out_addr    <= std_logic_vector(to_unsigned(VINEVAL_BASE_ADR + ctr*M,PORT_WIDTH));    -- (BIG DATA2)
						o_lin_len         <= std_logic_vector(to_unsigned((N-O)*(N-O+1)/2,PORT_WIDTH));
						o_lin_enable      <= '1';

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
							s_lin_adr <= std_logic_vector(to_unsigned(LINEAR_BASE_ADR,PORT_WIDTH));                   -- bram big 2
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
							state <= sign32;
						end if;

					when sign22 =>
						o_lin_vec_addr    <= s_bil_adr;
						o_lin_coeffs_addr <= std_logic_vector(to_unsigned(VIN_BASE_ADR,PORT_WIDTH));
						o_lin_out_addr    <= std_logic_vector(to_unsigned(P2VEC_BASE_ADR,PORT_WIDTH));
						o_lin_len         <= std_logic_vector(to_unsigned(N-O,PORT_WIDTH));
						o_lin_enable      <= '1';
						state             <= sign23;

					when sign23 =>
						o_lin_vec_addr    <= ZERO_32;
						o_lin_coeffs_addr <= ZERO_32;
						o_lin_out_addr    <= ZERO_32;
						o_lin_len         <= ZERO_32;
						o_lin_enable      <= '0';
						if (i_lin_done = '1') then
							state      <= sign24;
							l          <= 0 ;
							m          <= 0 ;
							s_temp_adr <= std_logic_vector(to_unsigned(SM_TEMP_BASE_ADR,PORT_WIDTH));
						end if;

					------------------ ~MULTIPLY EXTENSION FIELD~ --------------------------------------- 
					-- Storage : Small BRAM
					when sign24 =>
						if (l < M) then
							m <= 0;

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
							state <= sign33;
						end if;

					when sign25 =>
						if (m < M) then
							state <= sign26;
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
							bram2a.o.o_din(31 downto 16) <= std_logic_vector(unsigned(i_mem2b_dout(31 downto 15)) + unsigned(i_mem2a_dout(7 downto 0)));
							bram2a.o.o_we                <= "1100";
						else
							bram2a.o.o_din(15 downto 0)  <= std_logic_vector(unsigned(i_mem2b_dout(15 downto 0)) + unsigned(i_mem2a_dout(7 downto 0)));
							bram2a.o.o_din(31 downto 16) <= std_logic_vector(unsigned(i_mem2b_dout(31 downto 15)) + unsigned(i_mem2a_dout(15 downto 8)));
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
							bram2b.o.o_din(31 downto 16) <= std_logic_vector(unsigned(i_mem2b_dout(31 downto 15)) + unsigned(tmp(24 downto 16)));
							bram2b.o.o_we                <= "1111";
							state                        <= sign31; -- Temp Third part is needed!
						else
							bram2b.o.o_din(15 downto 0)  <= std_logic_vector(unsigned(i_mem2b_dout(15 downto 0)) + unsigned(tmp(24 downto 16)));
							bram2b.o.o_din(31 downto 16) <= std_logic_vector(unsigned(i_mem2b_dout(31 downto 15)) + unsigned(tmp(31 downto 25)));
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
						bram2b.o.o_din(15 downto 0)  <= std_logic_vector(unsigned(i_mem2b_dout(31 downto 15)) + unsigned(tmp(31 downto 25)));
						bram2b.o.o_din(31 downto 16) <= X"FF_FF";
						bram2b.o.o_we                <= "0011";
						bram2b.o.o_addr              <= std_logic_vector(unsigned(s_temp_adr)+8); -- Write third last part if needed
						state                        <= sign32;

					when sign32 =>
						bram2b.o.o_en   <= '0';
						bram2b.o.o_we   <= "0000";
						bram2b.o.o_addr <= ZERO_32;

						-- Increment loop 
						m          <= m +4;
						s_temp_adr <= std_logic_vector(unsigned(s_temp_adr)+8); -- In both even/uneven cases adr is incremented by 8(64 bits/ 4*16)
						state      <= sign25;
					------------------ ~END MULTIPLY EXTENSION FIELD~ --------------------------------------- 
					when sign33 =>
						o_red_ext_en         <= '1';
						o_red_ext_input_adr  <= std_logic_vector(to_unsigned(SM_TEMP_BASE_ADR,PORT_WIDTH));
						o_red_ext_output_adr <= std_logic_vector(to_unsigned(MULTIED_BASE_ADR,PORT_WIDTH)); -- bram 2; (bram0a)
						state                <= sign34;

					when sign34 =>
						o_red_ext_en <= '0';
						if (i_red_ext_done = '1') then
							state <= add_mult0;
						end if;

					when add_mult0 =>
						if (k < M) then
							state <= add_mult1;
						else
							state <= sign35;
						end if;

					when add_mult1 =>
						o_add_enable   <= '1';
						o_add_v1_addr  <= std_logic_vector(to_unsigned(MULTIED_BASE_ADR,PORT_WIDTH));
						o_add_v2_addr  <= s_lin_adr;
						o_add_out_addr <= s_lin_adr;
						o_add_bram_sel <= "00"; -- ALL IN BIG bram 2

						state <= add_mult2;

					when add_mult2 =>
						o_add_enable <= '0';
						if (i_add_done = '1') then
							state <= add_mult3;
						end if;

					when add_mult3 =>
						o_add_enable   <= '1';
						o_add_v1_addr  <= std_logic_vector(to_unsigned(MULTIED_BASE_ADR,PORT_WIDTH));
						o_add_v2_addr  <= s_lin1_adr;
						o_add_out_addr <= s_lin1_adr;
						o_add_bram_sel <= "00"; -- ALL IN BIG bram 2

						state <= add_mult4;

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
						state      <= add_mult0;

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
							err <= "11"; --todo -- todo: add error port
						end if;

						if(k < KC2) then
							s_utmp <= k mod 2; -- Indexing in TEMP (Which short to chose? LSB or MSB)
							state  <= sign37;
						else
							state <= sign45;
						end if;

					when sign37 =>
						if (i < M) then
							state <= sign38;
						else
							k <= k +1 ;
							if (isUneven(k) = '1') then -- We need this to increment aligned16 data in BRAM
								s_temp_adr <= std_logic_vector(to_unsigned(SM_TEMP_BASE_ADR + (k+1)*2,PORT_WIDTH));
							end if;
							s_outputs_adr <= std_logic_vector(to_unsigned(VINEVAL_BASE_ADR + (k+1)*M,PORT_WIDTH));
							state         <= sign36;
						end if;

					when sign38 =>
						--read actually 64 bits (Depending on k) Hint, look at multiply_extension_field
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
							bram2a.o.o_din(31 downto 16) <= std_logic_vector(unsigned(i_mem2a_dout(31 downto 15)) + unsigned(i_mem0a_dout(7 downto 0)));
							bram2a.o.o_we                <= "1100";
							bram2a.o.o_addr              <= s_temp_adr;
							----------------------------------------------------
							bram2b.o.o_din(15 downto 0)  <= std_logic_vector(unsigned(i_mem2b_dout(15 downto 0)) + unsigned(i_mem0a_dout(15 downto 8)));
							bram2b.o.o_din(31 downto 16) <= std_logic_vector(unsigned(i_mem2b_dout(31 downto 15)) + unsigned(i_mem0a_dout(24 downto 16)));
							bram2b.o.o_we                <= "1111";
							bram2b.o.o_addr              <= std_logic_vector(unsigned(s_temp_adr)+4);
							state                        <= sign41; -- One more write is needed 
						else
							bram2a.o.o_din(15 downto 0)  <= std_logic_vector(unsigned(i_mem2a_dout(15 downto 0)) + unsigned(i_mem0a_dout(7 downto 0)));
							bram2a.o.o_din(31 downto 16) <= std_logic_vector(unsigned(i_mem2a_dout(31 downto 15)) + unsigned(i_mem0a_dout(15 downto 8)));
							bram2a.o.o_we                <= "1111";
							bram2a.o.o_addr              <= s_temp_adr;
							----------------------------------------------------
							bram2b.o.o_din(15 downto 0)  <= std_logic_vector(unsigned(i_mem2b_dout(15 downto 0)) + unsigned(i_mem0a_dout(24 downto 16)));
							bram2b.o.o_din(31 downto 16) <= std_logic_vector(unsigned(i_mem2b_dout(31 downto 15)) + unsigned(i_mem0a_dout(31 downto 25)));
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
						o_red_ext_input_adr  <= std_logic_vector(to_unsigned(SM_TEMP_BASE_ADR,PORT_WIDTH));
						o_red_ext_output_adr <= std_logic_vector(to_unsigned(RHS_BASE_ADR,PORT_WIDTH)); -- bram 2; (bram0a)
						state                <= sign46;

					when sign46 =>
						o_red_ext_en <= '0';
						if (i_red_ext_done = '1') then
							state <= neg0;
						end if;
					when neg0 =>
						o_neg_enable <= '1';
						o_neg_len    <= std_logic_vector(to_unsigned(M,PORT_WIDTH));
						o_neg_adr    <= std_logic_vector(to_unsigned(RHS_BASE_ADR,PORT_WIDTH));
						state        <= neg1;

					when neg1 =>
						o_neg_enable <= '0';
						if (i_neg_done = '1') then
							state <= sign47;
						end if;

					when sign47 =>
						o_add_enable   <= '1';
						o_add_v1_addr  <= std_logic_vector(to_unsigned(RHS_BASE_ADR,PORT_WIDTH));
						o_add_v2_addr  <= std_logic_vector(to_unsigned(DIG_BASE_ADR,PORT_WIDTH)); -- Linked to BRAM 1 (BIG)
						o_add_out_addr <= std_logic_vector(to_unsigned(RHS_BASE_ADR,PORT_WIDTH));
						o_add_bram_sel <= "00";
						state          <= sign48;
					when sign48 =>
						o_add_enable <= '0';
						if (i_add_done = '1') then
							state <= sample3;
						end if;

					when sample3 =>
						-- TODO : sample oil /solve gaussian 

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