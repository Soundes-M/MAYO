--------------------------------------------------------------------------------
-- Title       : Sample Oil
-- Project     : MAYO
--------------------------------------------------------------------------------
-- File        : MAYO_Sample_Oil.vhd
-- Author      : Oussama Sayari
-- Company     : TU Berlin
-- Created     : Sat Apr 22 15:07:52 2023
-- Last update : Wed Apr 26 11:41:05 2023
-- Platform    : Designed for Zynq 7000 Series
-- Standard    : <VHDL-2008 | VHDL-2002 | VHDL-1993 | VHDL-1987>
--------------------------------------------------------------------------------
-- Copyright (c) 2023 TU Berlin
-------------------------------------------------------------------------------
-- Description: 
-- Sample the oil and get a solution if possible
-- Look at o_ret for return value
-- LFSR included (Not using TRNG)
--------------------------------------------------------------------------------
-- Revisions:  Revisions and documentation are controlled by
-- the revision control system (RCS).  The RCS should be consulted
-- on revision history.
-------------------------------------------------------------------------------

LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use std.textio.all;
use ieee.std_logic_textio.all;

use work.MAYO_COMMON.all;
use work.UTILS_COMMON.all;

entity mayo_sample_oil is
	port (
		clk    : in  std_logic;
		rst    : in  std_logic;
		en     : in  std_logic;
		o_ret  : out std_logic; -- 1 if fail else 0 for success(sync with o_done)
		o_done : out std_logic;

		-- big bram 2 
		--BRAM0-A
		i_mem0a_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem0a_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem0a_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem0a_en   : out std_logic;
		o_mem0a_rst  : out std_logic;
		o_mem0a_we   : out std_logic_vector (3 downto 0);
		o_control0a  : out std_logic;

		--BRAM0-B
		i_mem0b_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem0b_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem0b_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem0b_en   : out std_logic;
		o_mem0b_rst  : out std_logic;
		o_mem0b_we   : out std_logic_vector (3 downto 0);
		o_control0b  : out std_logic;

		--SMALL BRAM
		--BRAM1-A
		i_mem1a_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem1a_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem1a_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mem1a_en   : out std_logic;
		o_mem1a_rst  : out std_logic;
		o_mem1a_we   : out std_logic_vector (3 downto 0);
		o_control1a  : out std_logic
	);

end entity mayo_sample_oil;

architecture Behavioral of mayo_sample_oil is

	------------------------------------------------------------------------------
	-- BRAM
	------------------------------------------------------------------------------
	signal bram0a : bram_t := DEFAULT_BRAM;
	signal bram0b : bram_t := DEFAULT_BRAM;
	signal bram1a : bram_t := DEFAULT_BRAM;
	------------------------------------------------------------------------------

	signal s_lin_adr : std_logic_vector(PORT_WIDTH-1 downto 0);
	signal s_rhs_adr : std_logic_vector(PORT_WIDTH-1 downto 0);

	type state_t is (idle, unpack0, unpack1, unpack2, unpack3, unpack4, unpack5, unpack6, unpack7, unpack8, unpack9, unpack10,
			debug0, debug1, debug2, debug3, debug4, debug5, debug6, debug7,
			piv0, piv1, piv2, piv3,
			swap0, swap1, swap2, swap3,
			sol0, sol1, sol2, sol3, sol4, sol5, sol6, sol7, sol8, sol9, sol10, sol11, sol12, sol13, sol14, sol15, sol16,
			sol17, sol18, sol19, sol20, sol21, sol22, sol23, sol24, sol25, sol26, sol27, sol28, sol29,
			scale0, scale1, scale2, scale3, scale4, scale5, scale6, scale7, scale8,
			rowop0, rowop1, rowop2, rowop3, rowop4, rowop5, rowop6, rowop7, rowop8, rowop9, rowop10, rowop11, done);
	signal state          : state_t := idle;
	signal tmp            : std_logic_vector(PORT_WIDTH-1 downto 0);
	signal utmp           : unsigned(PORT_WIDTH-1 downto 0);
	signal utmp1          : unsigned(PORT_WIDTH-1 downto 0);
	signal booltmp        : std_logic;
	signal unpack_lin_ctr : integer := 0;
	signal unpack_ctr1    : integer := 0;
	signal col            : integer := 0;
	signal row            : integer := 0;
	signal rowcols_ctr    : integer := 0;
	signal find_row       : integer := 0;
	signal i              : integer := 0;
	signal j              : integer := 0;
	signal s_inv          : unsigned(7 downto 0);
	signal s_isColEven    : std_logic;
	signal s_solution_col : std_logic_vector(PORT_WIDTH-1 downto 0);

	constant RHS_ADR : integer := RHS_BASE_ADR;
	constant LIN_ADR : integer := LINEAR_BASE_ADR;
	constant SOL_ADR : integer := OILSOL_BASE_ADR;

	alias col2 is rowcols_ctr;
	alias sol_ctr is unpack_lin_ctr;

	signal s_lfsr_rnd  : std_logic_vector(5 downto 0);
	constant LSFR_SEED : std_logic_vector(s_lfsr_rnd'LENGTH-1 downto 0) := "101011";
	signal lfsr_en     : std_logic := '0';

	file myFile      : text;
	signal debug_ctr : integer := 0 ;

	------------------------------------------------------------------------------
	--	LUT
	------------------------------------------------------------------------------
	type lut_type is array (0 to PRIME-1) of unsigned(7 downto 0);
	constant INV : lut_type := (
			0  => x"00",
			1  => x"01",
			2  => x"10",
			3  => x"15",
			4  => x"08",
			5  => x"19",
			6  => x"1A",
			7  => x"09",
			8  => x"04",
			9  => x"07",
			10 => x"1C",
			11 => x"11",
			12 => x"0D",
			13 => x"0C",
			14 => x"14",
			15 => x"1D",
			16 => x"02",
			17 => x"0B",
			18 => x"13",
			19 => x"12",
			20 => x"0E",
			21 => x"03",
			22 => x"18",
			23 => x"1B",
			24 => x"16",
			25 => x"05",
			26 => x"06",
			27 => x"17",
			28 => x"0A",
			29 => x"0F",
			30 => x"1E"
		); -- precalculated LUT values of mod inverse

	-- Calculates inverse of x mod PRIME using LookUpTables
	function modinv(x : unsigned) return unsigned is
		variable result   : unsigned(7 downto 0);
	begin
		if (x = 0) then
			result := x"00";
		else
			result := INV(to_integer(unsigned(x) mod PRIME));
		end if;
		return result;
	end function;

	-- Calculates Memory offset in unpacked memory space 
	-- Unpacked means that each line in BRAM has 2*16bits instead of 4*8bits
	function unpackAdrOffset(adr : integer) return integer is
		variable res                 : integer;
	begin
		if (isUneven(adr) = '1') then
			res := (adr -1 )*2;
		else
			res := adr *2;
		end if;
		return res;
	end function;

begin
	process(clk) is
		variable v_tmp,v_tmp0 : integer;
		variable v_tmp1       : std_logic;
		variable v_coef       : unsigned(4 downto 0); -- debug
		variable v_myLine     : line;                 -- debug

	begin
		if (rising_edge(clk)) then
			if (rst = '1') then
				s_lin_adr      <= ZERO_32;
				s_rhs_adr      <= ZERO_32;
				unpack_ctr1    <= 0;
				unpack_lin_ctr <= 0;
				s_solution_col <= ZERO_32;
				col            <= 0;
				row            <= 0;
				rowcols_ctr    <= 0;
				i              <= 0;
				j              <= 0;
				find_row       <= 0;
				booltmp        <= '1';
				o_ret          <= '0';
				lfsr_en        <= '0';
				bram0a.o       <= DEFAULT_OUT_BRAM;
				bram0b.o       <= DEFAULT_OUT_BRAM;
				bram1a.o       <= DEFAULT_OUT_BRAM;
				o_control0a    <= '0';
				o_control0b    <= '0';
				o_control1a    <= '0';
				state          <= idle;

			else
				case (state) is
					when idle =>
						o_done      <= '0';
						o_ret       <= '0';
						lfsr_en     <= '0';
						o_control0a <= '0';
						o_control0b <= '0';
						o_control1a <= '0';

						if (en = '1') then
							s_lin_adr      <= std_logic_vector(to_unsigned(LIN_ADR,PORT_WIDTH));
							s_rhs_adr      <= std_logic_vector(to_unsigned(RHS_ADR,PORT_WIDTH));
							unpack_ctr1    <= 0;
							unpack_lin_ctr <= 0;
							col            <= 0;
							row            <= 0;
							rowcols_ctr    <= 0;
							i              <= 0;
							j              <= 0;
							booltmp        <= '1';
							o_control0a    <= '1';
							o_control0b    <= '1';
							lfsr_en        <= '1';
							report "Sample_oil core :" &
							LF & "LINEAR ADR : " & integer'image(LIN_ADR) &
							LF & "RHS ADR: " & integer'image(RHS_ADR) &
							LF & "AUGmatrix ADR: " & integer'image(UNPACKED_AUGMENT_BASE_ADR) &
							LF & "SOL ADR :" & integer'image(SOL_ADR) severity note;
							state <= unpack0;
						else
							state <= idle;
						end if;

					-- Unpack 8 bits to 16 bits for overflow and calc. purposes
					-- Unpacked_aug is linear.T
					when unpack0 =>
						bram0a.o.o_addr <= std_logic_vector(unsigned(s_lin_adr)+ unpack_lin_ctr);
						bram0a.o.o_en   <= '1';
						bram0a.o.o_we   <= "0000";

						bram0b.o.o_en <= '0';
						bram0b.o.o_we <= "0000";
						state         <= unpack1;

					when unpack1 =>
						state <= unpack2;

					when unpack2 =>
						tmp <= bram0a.i.i_dout;

						v_tmp           := unpackAdrOffset(row*(K*O+2) + col); -- first 
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ v_tmp);
						bram0a.o.o_en   <= '1';
						if (s_isColEven = '1') then
							bram0a.o.o_we  <= "0011";
							bram0a.o.o_din <= X"00_00_00" & bram0a.i.i_dout(7 downto 0); -- padding
						else
							bram0a.o.o_we  <= "1100";
							bram0a.o.o_din <= X"00" & bram0a.i.i_dout(7 downto 0) & X"00_00"; -- padding
						end if;

						v_tmp0          := unpackAdrOffset((row+1)*(K*O+2) + col); -- second
						bram0b.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH) + v_tmp0);
						bram0b.o.o_en   <= '1';
						if (s_isColEven = '1') then
							bram0b.o.o_we  <= "0011";
							bram0b.o.o_din <= X"00_00_00" & bram0a.i.i_dout(15 downto 8); -- padding
						else
							bram0b.o.o_we  <= "1100";
							bram0b.o.o_din <= X"00" & bram0a.i.i_dout(15 downto 8) & X"00_00"; -- padding
						end if;
						state <= unpack9;

					when unpack9 =>
						v_tmp           := unpackAdrOffset((row+2)*(K*O+2) + col); -- third 
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ v_tmp);
						bram0a.o.o_en   <= '1';
						if (s_isColEven = '1') then
							bram0a.o.o_we  <= "0011";
							bram0a.o.o_din <= X"00_00_00" & tmp(23 downto 16); -- padding
						else
							bram0a.o.o_we  <= "1100";
							bram0a.o.o_din <= X"00" & tmp(23 downto 16) & X"00_00"; -- padding
						end if;

						v_tmp0          := unpackAdrOffset((row+3)*(K*O+2) + col); -- fourth
						bram0b.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH) + v_tmp0);
						bram0b.o.o_en   <= '1';
						if (s_isColEven = '1') then
							bram0b.o.o_we  <= "0011";
							bram0b.o.o_din <= X"00_00_00" & tmp(31 downto 24); -- padding
						else
							bram0b.o.o_we  <= "1100";
							bram0b.o.o_din <= X"00" & tmp(31 downto 24) & X"00_00"; -- padding
						end if;

						unpack_lin_ctr <= unpack_lin_ctr +4;
						if (row = M -4) then
							col <= col +1;
							row <= 0;
							if (col < K*O -1) then
								state <= unpack0;
							else
								state <= unpack3; -- Load b (rhs) Ax =b ; [A|b] matrix 
							end if ;
						else
							row   <= row +4;
							state <= unpack0;
						end if;

					when unpack3 =>
						bram0a.o.o_en <= '0';
						bram0a.o.o_we <= "0000";

						bram0b.o.o_addr <= std_logic_vector(unsigned(s_rhs_adr)+unpack_ctr1); --rhs read
						bram0b.o.o_en   <= '1';
						bram0b.o.o_we   <= "0000";
						state           <= unpack4;

					when unpack4 =>
						state <= unpack5;

					when unpack5 =>
						tmp             <= bram0b.i.i_dout;
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ unpackAdrOffset(row*(K*O+2) + (K*O)));
						bram0a.o.o_we   <= "1111";
						bram0a.o.o_en   <= '1';
						bram0a.o.o_din  <= X"00_00_00" & bram0b.i.i_dout(7 downto 0);

						bram0b.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ unpackAdrOffset((row+1)*(K*O+2) + (K*O)));
						bram0b.o.o_we   <= "1111";
						bram0b.o.o_en   <= '1';
						bram0b.o.o_din  <= X"00_00_00" & bram0b.i.i_dout(15 downto 8);
						state           <= unpack10;

					when unpack10 =>
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ unpackAdrOffset((row+2)*(K*O+2) + (K*O)));
						bram0a.o.o_we   <= "1111";
						bram0a.o.o_en   <= '1';
						bram0a.o.o_din  <= X"00_00_00" & tmp(23 downto 16);

						bram0b.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ unpackAdrOffset((row+3)*(K*O+2) + (K*O)));
						bram0b.o.o_we   <= "1111";
						bram0b.o.o_en   <= '1';
						bram0b.o.o_din  <= X"00_00_00" & tmp(31 downto 24);

						unpack_ctr1 <= unpack_ctr1 +4;
						if (row < M-4) then
							row   <= row +4 ;
							state <= unpack3;
						else
							col   <= 0;
							state <= unpack6;
						end if;
					----------------------------------------------------------------------- UNPACK DONE---
					when unpack6 =>
						bram0a.o.o_en <= '0';
						bram0a.o.o_we <= "0000";
						bram0b.o.o_en <= '0';
						bram0b.o.o_we <= "0000";
						row           <= 0;
						col           <= 0;
						find_row      <= 0;
						rowcols_ctr   <= 0;
						state         <= unpack7;

					--------------------------------------------------------------------------------
					when debug0 =>
						report "Writing AUG_MATR";
						file_open(myFile, "AUG_MATR.txt", write_mode);
						i               <= 0;
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH));
						bram0a.o.o_we   <= "0000";
						bram0a.o.o_en   <= '1';
						state           <= debug1;

					when debug1 =>
						state <= debug2;

					when debug2 =>
						write(v_myLine, to_integer(unsigned(bram0a.i.i_dout(15 downto 0))),RIGHT,2);
						write(v_myLine, string'(" "));
						write(v_myLine, to_integer(unsigned(bram0a.i.i_dout(31 downto 16))),RIGHT,2);
						write(v_myLine, string'(" "));
						if (col = K*O) then
							col <= 0;
							writeline(myFile, v_myLine);
						else
							col <= col +2;
						end if;
						bram0a.o.o_addr <= std_logic_vector(unsigned(bram0a.o.o_addr) +4);

						if (i <= UNPACKED_AUGMENT_RANGE - 4 ) then
							i     <= i+4;
							state <= debug1;
						else
							state <= debug3;
						end if;

					when debug3 =>
						bram0a.o.o_en <= '0';
						col           <= 0;
						i             <= 0;
						file_close(myFile);
						state <= unpack7;
						--------------------------------------------------------------------------------

					when unpack7 => -- while(1)
						if (row = M) then
							state <= sol0;
						else
							find_row <= row;
							state    <= unpack8;
						end if;

					when unpack8 => -- pivot lookup
						v_tmp           := unpackAdrOffset(find_row * (K*O+2)+col);
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ v_tmp);
						bram0a.o.o_en   <= '1';
						bram0a.o.o_we   <= "0000";
						bram0b.o.o_en   <= '0';
						state           <= piv0;

					when piv0 =>
						state <= piv1;

					when piv1 =>
						bram0a.o.o_we     <= "0000";
						bram0a.o.o_en     <= '0';
						tmp(15 downto 0)  <= std_logic_vector(unsigned(bram0a.i.i_dout(15 downto 0)) mod PRIME);
						tmp(31 downto 16) <= std_logic_vector(unsigned(bram0a.i.i_dout(31 downto 16)) mod PRIME);
						state             <= piv2;

					when piv2 =>
						bram0a.o.o_we <= "0000";
						bram0a.o.o_en <= '0';

						if (s_isColEven = '1') then
							-- First elem. Check 
							if (unsigned(tmp(15 downto 0)) = 0) then
								bram0a.o.o_din(15 downto 0) <= ZERO_16; -- we need to set the element to actual ZERO if it's true
								bram0a.o.o_we(1 downto 0)   <= "11";
								bram0a.o.o_en               <= '1';

								-- update counters
								if (find_row < M-1)then
									find_row <= find_row +1;
									state    <= unpack8;
								else
									if (col < K*O -1)then
										find_row <= row;
										col      <= col +1;
										state    <= unpack8;
									else
										o_ret  <= '1';
										o_done <= '1';
										state  <= done;
										report "Error: not solvable" severity error;
									end if;
								end if;
							else
								state <= piv3; -- LOOP EXIT
							end if ;

						else
							-- Second elem. Check
							if (unsigned(tmp(31 downto 16)) = 0) then -- Second elem
								bram0a.o.o_din(15 downto 0) <= ZERO_16;
								bram0a.o.o_we(3 downto 2)   <= "11";
								bram0a.o.o_en               <= '1';
								-- update counters
								if (find_row < M-1)then
									find_row <= find_row +1;
									state    <= unpack8;
								else
									if (col < K*O -1)then
										find_row <= row;
										col      <= col +1;
										state    <= unpack8;
									else
										o_ret  <= '1';
										o_done <= '1';
										state  <= done;
										report "Error: not solvable" severity error;
									end if;
								end if;
							else
								state <= piv3; -- LOOP EXIT
							end if ;
						end if;

					when piv3 =>
						bram0a.o.o_we <= "0000";
						bram0a.o.o_en <= '0';
						i             <= 0;

						if (find_row /= row) then -- swap row!
							state <= swap0;
						else
							state <= scale0;
						end if;

					when swap0 =>
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ unpackAdrOffset(row * (K*O+2)+i));
						bram0a.o.o_en   <= '1';
						bram0a.o.o_we   <= "0000";

						bram0b.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ unpackAdrOffset(find_row * (K*O+2)+i));
						bram0b.o.o_en   <= '1';
						bram0b.o.o_we   <= "0000";
						state           <= swap1;

					when swap1 =>
						state <= swap2;

					when swap2 =>
						-- SWAP
						bram0a.o.o_din <= bram0b.i.i_dout;
						bram0a.o.o_en  <= '1';
						bram0a.o.o_we  <= "1111";

						bram0b.o.o_din <= bram0a.i.i_dout;
						bram0b.o.o_en  <= '1';
						bram0b.o.o_we  <= "1111";

						if (i < K*O) then
							i     <= i +2;
							state <= swap0;
						else
							i     <= 0;
							state <= swap3;
						end if;

					when swap3 =>
						bram0a.o.o_en <= '0';
						bram0b.o.o_en <= '0';
						bram0a.o.o_we <= "0000";
						bram0b.o.o_we <= "0000";
						state         <= scale0;

					when scale0 =>
						v_tmp           := unpackAdrOffset(row * (K*O+2)+col);
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ v_tmp);
						bram0a.o.o_en   <= '1';
						bram0a.o.o_we   <= "0000";
						state           <= scale1;

					when scale1 =>
						state <= scale2;

					when scale2 =>
						bram0a.o.o_en <= '0';
						if (s_isColEven = '1') then -- Pick lower words
							s_inv <= modinv(unsigned(bram0a.i.i_dout(15 downto 0)));
						else -- Pick upper words
							s_inv <= modinv(unsigned(bram0a.i.i_dout(31 downto 16)));
						end if ;
						booltmp <= '1'; -- 2OP or 1OP
						state   <= scale3;

					when scale3 =>
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ unpackAdrOffset(row * (K*O+2)+i));
						bram0a.o.o_en   <= '1';
						bram0a.o.o_we   <= "0000";
						if (booltmp = '1') then
							bram0b.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ unpackAdrOffset(row * (K*O+2)+i+2));
							bram0b.o.o_en   <= '1';
							bram0b.o.o_we   <= "0000";
						end if;
						state <= scale4;

					when scale4 =>
						state <= scale5;

					when scale5 =>
						bram0a.o.o_en <= '0';
						bram0b.o.o_en <= '0';

						utmp(15 downto 0)  <= resize((unsigned(bram0a.i.i_dout(15 downto 0)) mod PRIME) * s_inv,16);
						utmp(31 downto 16) <= resize((unsigned(bram0a.i.i_dout(31 downto 16)) mod PRIME) * s_inv,16);
						if (booltmp = '1') then
							utmp1(15 downto 0)  <= resize((unsigned(bram0b.i.i_dout(15 downto 0)) mod PRIME) * s_inv,16);
							utmp1(31 downto 16) <= resize((unsigned(bram0b.i.i_dout(31 downto 16)) mod PRIME) * s_inv,16);
						end if;
						state <= scale6;

					when scale6 =>
						bram0a.o.o_en                <= '1';
						bram0a.o.o_we                <= "1111";
						bram0a.o.o_din(15 downto 0)  <= std_logic_vector(utmp(15 downto 0) mod PRIME);
						bram0a.o.o_din(31 downto 16) <= std_logic_vector(utmp(31 downto 16) mod PRIME);
						if (booltmp = '1') then
							bram0b.o.o_en                <= '1';
							bram0b.o.o_we                <= "1111";
							bram0b.o.o_din(15 downto 0)  <= std_logic_vector(utmp1(15 downto 0) mod PRIME);
							bram0b.o.o_din(31 downto 16) <= std_logic_vector(utmp1(31 downto 16) mod PRIME);
						end if;

						if (i < K*O-4) then -- move in 2 ops
							i     <= i +4;
							state <= scale3;
						elsif (i = K*O-4) then -- last one (requires one op)
							i       <= i+4;
							booltmp <= '0';
							state   <= scale3;
						else -- END SCALE
							i     <= find_row+1;
							state <= rowop0;
						end if;

					when rowop0 =>
						bram0a.o.o_en <= '0';
						bram0a.o.o_we <= "0000";
						bram0b.o.o_en <= '0';
						bram0b.o.o_we <= "0000";
						state         <= rowop1;

					--------------------------------------------------------------------
					when rowop1 =>
						if (i < M) then
							j     <= row;
							state <= rowop2;
						else
							state <= rowop11;
						end if;

					when rowop2 =>
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ unpackAdrOffset(i*(K*O+2)+col));
						bram0a.o.o_en   <= '1';
						bram0a.o.o_we   <= "0000";
						state           <= rowop3;

					when rowop3 =>
						state <= rowop4;

					when rowop4 =>
						bram0a.o.o_en      <= '0';
						utmp(15 downto 0)  <= unsigned(bram0a.i.i_dout(15 downto 0)) mod PRIME;
						utmp(31 downto 16) <= unsigned(bram0a.i.i_dout(31 downto 16)) mod PRIME;
						state              <= rowop5;

					when rowop5 =>
						utmp(15 downto 0)  <= (to_unsigned(PRIME,16) - utmp(15 downto 0)) mod PRIME;
						utmp(31 downto 16) <= (to_unsigned(PRIME,16) - utmp(31 downto 16)) mod PRIME;
						state              <= rowop6;

					when rowop6 =>
						bram0a.o.o_en <= '0';
						bram0a.o.o_we <= "0000";
						if (j < K*O+1) then
							state <= rowop7;
						else
							state <= rowop10;
						end if;

					when rowop7 =>
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ unpackAdrOffset(i*(K*O+2)+j));
						bram0a.o.o_en   <= '1';
						bram0a.o.o_we   <= "0000";

						bram0b.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ unpackAdrOffset(row*(K*O+2)+j));
						bram0b.o.o_en   <= '1';
						bram0b.o.o_we   <= "0000";
						state           <= rowop8;

					when rowop8 =>
						state <= rowop9;

					when rowop9 =>
						if (s_isColEven = '1') then   -- Pick lower or upper part
							v_coef := utmp(4 downto 0); -- Coef can be represented in only 5 bits
						else
							v_coef := utmp(20 downto 16);
						end if;

						if (isUneven(j) = '1') then
							bram0a.o.o_din(31 downto 16) <= std_logic_vector(resize(unsigned(bram0a.i.i_dout(31 downto 16)) + unsigned(bram0b.i.i_dout(31 downto 16)) * v_coef,16));
							bram0a.o.o_en                <= '1';
							bram0a.o.o_we                <= "1100";
							j                            <= j+1;
						else
							bram0a.o.o_din(15 downto 0)  <= std_logic_vector(resize(unsigned(bram0a.i.i_dout(15 downto 0)) + unsigned(bram0b.i.i_dout(15 downto 0)) * v_coef,16));
							bram0a.o.o_din(31 downto 16) <= std_logic_vector(resize(unsigned(bram0a.i.i_dout(31 downto 16)) + unsigned(bram0b.i.i_dout(31 downto 16)) * v_coef,16));
							bram0a.o.o_en                <= '1';
							bram0a.o.o_we                <= "1111";
							j                            <= j+2;
						end if;
						state <= rowop6;

					when rowop10 =>
						bram0a.o.o_en <= '0';
						bram0a.o.o_we <= "0000";
						i             <= i+1;
						state         <= rowop1;

					when rowop11 =>
						row   <= row +1;
						col   <= col +1;
						state <= unpack7;

					--------------------------------------------------------------------------------
					when debug4 =>
						report "Writing AUG_MATR_POST";
						file_open(myFile, "AUG_MATR_POST.txt", write_mode);
						i               <= 0;
						col             <= 0 ;
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH));
						bram0a.o.o_we   <= "0000";
						bram0a.o.o_en   <= '1';
						state           <= debug5;

					when debug5 =>
						state <= debug6;

					when debug6 =>
						write(v_myLine, to_integer(unsigned(bram0a.i.i_dout(15 downto 0))),RIGHT,2);
						write(v_myLine, string'(" "));
						write(v_myLine, to_integer(unsigned(bram0a.i.i_dout(31 downto 16))),RIGHT,2);
						write(v_myLine, string'(" "));
						if (col = K*O) then
							col <= 0;
							writeline(myFile, v_myLine);
						else
							col <= col +2;
						end if;
						bram0a.o.o_addr <= std_logic_vector(unsigned(bram0a.o.o_addr) +4);

						if (i <= UNPACKED_AUGMENT_RANGE - 4 ) then
							i     <= i+4;
							state <= debug5;
						else
							state <= debug7;
						end if;

					when debug7 =>
						bram0a.o.o_en <= '0';
						col           <= 0;
						i             <= 0;
						file_close(myFile);
						state <= sol0;
						--state <= done;

					--------------------------------------------------------------------------------
					-- READ SOLUTION AFTER GAUSSIAN REDUCTiON
					when sol0 =>
						col     <= K*O;
						sol_ctr <= K*O -4;
						col2    <= 0;
						j       <= 3;
						row     <= M-1;
						state   <= sol1;

					when sol1 =>
						--while(row >= 0) -- LOOP1
						if (row >= 0) then
							col2  <= 0;
							state <= sol2;
						else
							state <= done; -- out of big while
						end if ;

					when sol2 => -- LOOP2
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ unpackAdrOffset(row*(K*O+2)+col2));
						bram0a.o.o_en   <= '1';
						bram0a.o.o_we   <= "0000";
						state           <= sol3;

					when sol3 =>
						state <= sol4;

					when sol4 =>
						bram0a.o.o_en      <= '0';
						utmp(15 downto 0)  <= unsigned(bram0a.i.i_dout(15 downto 0)) mod PRIME;
						utmp(31 downto 16) <= unsigned(bram0a.i.i_dout(31 downto 16)) mod PRIME;
						state              <= sol5;

					when sol5 =>
						if (utmp(15 downto 0) = 0 and utmp(31 downto 16) = 0) then
							col2 <= col2 +2;
							if (col2 < K*O) then
								state <= sol2;
							else
								state <= sol6; --break of LOOP2
							end if ;

						elsif (utmp(15 downto 0) = 0 and utmp(31 downto 16) /= 0) then
							col2  <= col2 +1;
							state <= sol6; --break of LOOP2

						else -- utmp(15 downto 0) /= 0, utmp(31 downto 16): DONT CARE
							state <= sol6;
						end if;

					when sol6 =>
						if (col2 = K*O+1) then
							row   <= row -1;
							state <= sol1; -- LOOP1
						elsif (col2 = K*O) then
							report "Error, solution not found" severity warning;
							o_ret  <= '1';
							o_done <= '1';
							state  <= done;
						else
							state <= sol7;
						end if;

					when sol7 =>
						if (col > col2+1) then
							col                              <= col -1;
							s_solution_col(j*8+7 downto j*8) <= "00" & s_lfsr_rnd; -- todo not sure if works 
							report "-> Choosing solution at random" &
							LF & "solution[" & integer'image(col-1) & "]= " & integer'image(to_integer(unsigned(s_lfsr_rnd)));

							if (j = 0) then
								bram1a.o.o_addr <= std_logic_vector(to_unsigned(SOL_ADR,PORT_WIDTH)+ sol_ctr);
								bram1a.o.o_din  <= s_solution_col(31 downto 8) & "00" & s_lfsr_rnd;
								bram1a.o.o_en   <= '1';
								bram1a.o.o_we   <= "1111";
								sol_ctr         <= sol_ctr -4;
								j               <= 3;
							else
								j <= j-1;
							end if;

							i     <= 0;
							utmp  <= resize(to_unsigned(PRIME,6) - unsigned(s_lfsr_rnd),PORT_WIDTH); -- One's Complement
							state <= sol8;

						else
							state <= sol13;
						end if;

					when sol8 =>
						bram1a.o.o_en <= '0';
						bram1a.o.o_we <= "0000";
						bram0b.o.o_en <= '0';
						bram0b.o.o_we <= "0000";
						if (i < M) then
							state <= sol9;
						else
							state <= sol7;
						end if;

					when sol9 =>
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ unpackAdrOffset(i*(K*O+2)+col)); -- RS2
						bram0a.o.o_en   <= '1';
						bram0a.o.o_we   <= "0000";

						bram0b.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ unpackAdrOffset(i*(K*O+2)+K*O)); --RS1
						bram0b.o.o_en   <= '1';
						bram0b.o.o_we   <= "0000";
						state           <= sol10;

					when sol10 =>
						state <= sol11;

					when sol11 =>
						bram0a.o.o_en <= '0';
						bram0b.o.o_en <= '0';

						if (s_isColEven = '1') then
							utmp1 <= resize(unsigned(bram0b.i.i_dout(15 downto 0)) + utmp(5 downto 0) * unsigned(bram0a.i.i_dout(15 downto 0)),PORT_WIDTH); -- TODO: maybe too much
						else
							utmp1 <= resize(unsigned(bram0b.i.i_dout(15 downto 0)) + utmp(5 downto 0) * unsigned(bram0a.i.i_dout(31 downto 16)),PORT_WIDTH); -- TODO: maybe too much
						end if ;
						state <= sol12;

					when sol12 =>
						bram0b.o.o_en               <= '1';
						bram0b.o.o_we               <= "0011";
						bram0b.o.o_din(15 downto 0) <= std_logic_vector(resize(utmp1 mod PRIME,16));
						i                           <= i+1;
						state                       <= sol8;

					---------------------------------------------------------------------------------
					when sol13 =>
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ unpackAdrOffset(row*(K*O+2)+K*O)); -- RS2
						bram0a.o.o_en   <= '1';
						bram0a.o.o_we   <= "0000";
						state           <= sol14;

					when sol14 =>
						state <= sol15;

					when sol15 =>
						bram0a.o.o_en <= '0';
						col           <= col -1;
						-- Suppose that the unpacked version can fit into packed (16--> 8)
						s_solution_col(j*8+7 downto j*8) <= bram0a.i.i_dout(7 downto 0); -- todo not sure if works 

						report "solution[" & integer'image(col-1) & "]= " & integer'image(to_integer(unsigned(bram0a.i.i_dout(7 downto 0))));

						if (j = 0) then
							bram1a.o.o_addr <= std_logic_vector(to_unsigned(SOL_ADR,PORT_WIDTH)+ sol_ctr);
							bram1a.o.o_din  <= s_solution_col(31 downto 8) & bram0a.i.i_dout(7 downto 0);
							bram1a.o.o_en   <= '1';
							bram1a.o.o_we   <= "1111";
							sol_ctr         <= sol_ctr-4;
							j               <= 3;
						else
							j <= j-1;
						end if;

						i    <= 0 ;
						utmp <= resize(to_unsigned(PRIME,8) - unsigned(bram0a.i.i_dout(7 downto 0)),PORT_WIDTH); -- One's Complement

						state <= sol16;

					when sol16 =>
						bram1a.o.o_en <= '0';
						bram1a.o.o_we <= "0000";
						bram0b.o.o_en <= '0';
						bram0b.o.o_we <= "0000";
						if (i < M) then
							state <= sol17;
						else
							state <= sol21;
						end if;

					when sol17 =>
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ unpackAdrOffset(i*(K*O+2)+col)); -- RS2
						bram0a.o.o_en   <= '1';
						bram0a.o.o_we   <= "0000";

						bram0b.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ unpackAdrOffset(i*(K*O+2)+K*O)); --RS1
						bram0b.o.o_en   <= '1';
						bram0b.o.o_we   <= "0000";
						state           <= sol18;

					when sol18 =>
						state <= sol19;

					when sol19 =>
						bram0a.o.o_en <= '0';
						bram0b.o.o_en <= '0';

						if (s_isColEven = '1') then
							utmp1 <= resize(unsigned(bram0b.i.i_dout(15 downto 0)) + utmp(5 downto 0) * unsigned(bram0a.i.i_dout(15 downto 0)),PORT_WIDTH); -- TODO: maybe too much
						else
							utmp1 <= resize(unsigned(bram0b.i.i_dout(15 downto 0)) + utmp(5 downto 0) * unsigned(bram0a.i.i_dout(31 downto 16)),PORT_WIDTH); -- TODO: maybe too much
						end if ;
						state <= sol20;

					when sol20 =>
						bram0b.o.o_en               <= '1';
						bram0b.o.o_we               <= "0011";
						bram0b.o.o_din(15 downto 0) <= std_logic_vector(resize(utmp1 mod PRIME,16));
						i                           <= i+1;
						state                       <= sol16;

					when sol21 =>
						row   <= row -1;
						state <= sol1;

					when sol22 =>
						o_done <= '1';
						o_ret  <= '0';
						state  <= done;

					when done =>
						o_done <= '1';
						state  <= idle;

					when others =>
						null;

				end case ;
			end if;
		end if;
	end process;

	rng : process(clk,rst)
	begin
		if (rst = '1') then
			s_lfsr_rnd <= LSFR_SEED; -- reset LFSR to a seed
		elsif rising_edge(clk) then
			-- LFSR Feedback
			if (lfsr_en = '1')then
				s_lfsr_rnd <= s_lfsr_rnd(4 downto 0) & (s_lfsr_rnd(5) xor s_lfsr_rnd(3) xor s_lfsr_rnd(2) xor s_lfsr_rnd(0));
			else
				s_lfsr_rnd <= s_lfsr_rnd;
			end if;
		end if;
	end process;

	s_isColEven <= not isUneven(col);

	bram0a.i.i_dout <= i_mem0a_dout;
	o_mem0a_din     <= bram0a.o.o_din;
	o_mem0a_addr    <= bram0a.o.o_addr;
	o_mem0a_en      <= bram0a.o.o_en;
	o_mem0a_rst     <= bram0a.o.o_rst;
	o_mem0a_we      <= bram0a.o.o_we;

	bram0b.i.i_dout <= i_mem0b_dout;
	o_mem0b_din     <= bram0b.o.o_din;
	o_mem0b_addr    <= bram0b.o.o_addr;
	o_mem0b_en      <= bram0b.o.o_en;
	o_mem0b_rst     <= bram0b.o.o_rst;
	o_mem0b_we      <= bram0b.o.o_we;

	bram1a.i.i_dout <= i_mem1a_dout;
	o_mem1a_din     <= bram1a.o.o_din;
	o_mem1a_addr    <= bram1a.o.o_addr;
	o_mem1a_en      <= bram1a.o.o_en;
	o_mem1a_rst     <= bram1a.o.o_rst;
	o_mem1a_we      <= bram1a.o.o_we;
end architecture Behavioral;