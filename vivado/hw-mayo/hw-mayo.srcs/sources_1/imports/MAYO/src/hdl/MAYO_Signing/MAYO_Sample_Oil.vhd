--------------------------------------------------------------------------------
-- Title       : Sample Oil
-- Project     : MAYO
--------------------------------------------------------------------------------
-- File        : MAYO_Sample_Oil.vhd
-- Author      : XXXXX
-- Company     : XXXXX
-- Created     : Sat Apr 22 15:07:52 2023
-- Last update : Thu Jun 29 19:39:47 2023
-- Platform    : Designed for Zynq 7000 Series
-- Standard    : <VHDL-2008 | VHDL-2002 | VHDL-1993 | VHDL-1987>
--------------------------------------------------------------------------------
-- Copyright (c) 2023 XXXXX
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
	ATTRIBUTE X_INTERFACE_IGNORE       : STRING;
	ATTRIBUTE X_INTERFACE_IGNORE OF en : SIGNAL IS "TRUE";

	ATTRIBUTE X_INTERFACE_INFO                 : STRING;
	ATTRIBUTE X_INTERFACE_INFO of o_mem0a_din  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sample_oil0a DIN";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0a_addr : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sample_oil0a ADDR";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0a_en   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sample_oil0a EN";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0a_rst  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sample_oil0a RST";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0a_we   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sample_oil0a WE";
	ATTRIBUTE X_INTERFACE_INFO of i_mem0a_dout : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sample_oil0a DOUT";
	ATTRIBUTE X_INTERFACE_INFO of o_control0a  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sample_oil0a CTRL";

	ATTRIBUTE X_INTERFACE_INFO of o_mem0b_din  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sample_oil0b DIN";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0b_addr : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sample_oil0b ADDR";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0b_en   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sample_oil0b EN";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0b_rst  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sample_oil0b RST";
	ATTRIBUTE X_INTERFACE_INFO of o_mem0b_we   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sample_oil0b WE";
	ATTRIBUTE X_INTERFACE_INFO of i_mem0b_dout : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sample_oil0b DOUT";
	ATTRIBUTE X_INTERFACE_INFO of o_control0b  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sample_oil0b CTRL";

	ATTRIBUTE X_INTERFACE_INFO of o_mem1a_din  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sample_oil1a DIN";
	ATTRIBUTE X_INTERFACE_INFO of o_mem1a_addr : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sample_oil1a ADDR";
	ATTRIBUTE X_INTERFACE_INFO of o_mem1a_en   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sample_oil1a EN";
	ATTRIBUTE X_INTERFACE_INFO of o_mem1a_rst  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sample_oil1a RST";
	ATTRIBUTE X_INTERFACE_INFO of o_mem1a_we   : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sample_oil1a WE";
	ATTRIBUTE X_INTERFACE_INFO of i_mem1a_dout : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sample_oil1a DOUT";
	ATTRIBUTE X_INTERFACE_INFO of o_control1a  : SIGNAL is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sample_oil1a CTRL";

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
			piv0, piv1, piv2, piv3, piv4,
			swap0, swap1, swap2, swap3,
			sol0, sol1, sol2, sol3, sol4, sol5, sol6, sol7, sol8, sol9, sol10, sol11, sol12, sol13, sol14, sol15, sol16,
			sol17, sol18, sol19, sol20, sol21, sol22, sol23, sol24, sol25, sol26, sol27, sol28, sol29,
			scale0, scale1, scale2, scale3, scale4, scale5, scale6, scale7, scale8, scale10, scale11, scale12, scale13,
			rowop0, rowop1, rowop2, rowop3, rowop4, rowop5, rowop6, rowop7, rowop8, rowop9, rowop10, rowop11, rowop12, rowop13, rowop14, done);
	signal state              : state_t := idle;
	signal tmp                : std_logic_vector(PORT_WIDTH-1 downto 0);
	signal tmp0               : std_logic_vector(PORT_WIDTH-1 downto 0);
	signal utmp               : unsigned(PORT_WIDTH-1 downto 0);
	signal utmp1              : unsigned(PORT_WIDTH-1 downto 0);
	signal utmp2              : unsigned(PORT_WIDTH-1 downto 0);
	signal utmp16_0           : unsigned(15 downto 0);
	signal utmp16_1           : unsigned(15 downto 0);
	signal booltmp            : std_logic;
	signal unpack_lin_ctr     : integer                           := 0;
	signal unpack_ctr1        : integer                           := 0;
	signal col                : integer range 0 to (K*O +2)       := 0;
	signal row                : integer range 0 to (M+2)          := 0;
	signal col2               : integer range 0 to (K*O +2)       := 0;
	signal find_row           : integer range 0 to (M+2)          := 0;
	signal i                  : integer range 0 to (M+2)          := 0;
	signal j                  : integer range 0 to (K*O +2)       := 0;
	signal uoffset0, uoffset1 : integer range 0 to (K*O +2)*(M+2) := 0;
	signal s_inv              : unsigned(PRIME_BITS-1 downto 0);
	signal s_isColEven        : std_logic;
	signal s_solution_col     : std_logic_vector(PORT_WIDTH-1 downto 0);
	signal s_coef             : unsigned(PRIME_BITS-1 downto 0); -- debug

	constant RHS_ADR : integer := RHS_BASE_ADR;
	constant LIN_ADR : integer := LINEAR_BASE_ADR;
	constant SOL_ADR : integer := OILSOL_BASE_ADR;

	constant UPRIME : unsigned(PRIME_BITS-1 downto 0) := to_unsigned(PRIME,PRIME_BITS);

	alias sol_ctr is unpack_lin_ctr;

	signal s_lfsr_rnd  : std_logic_vector(5 downto 0);
	constant LSFR_SEED : std_logic_vector(s_lfsr_rnd'LENGTH-1 downto 0) := "101011";
	signal lfsr_en     : std_logic                                      := '0';

	file myFile      : text;
	signal debug_ctr : integer := 0 ;

	------------------------------------------------------------------------------
	--	LUT
	------------------------------------------------------------------------------
	type lut_type is array (0 to PRIME-1) of unsigned(PRIME_BITS-1 downto 0);
	constant INV : lut_type := (
			0  => "00000", -- 0
			1  => "00001", -- 1
			2  => "10000", -- 16
			3  => "10101", -- 21
			4  => "01000", -- 8
			5  => "11001", -- 25
			6  => "11010", -- 26
			7  => "01001", -- 9
			8  => "00100", -- 4
			9  => "00111", -- 7
			10 => "11100", -- 28
			11 => "10001", -- 17
			12 => "01101", -- 13
			13 => "01100", -- 12
			14 => "10100", -- 20
			15 => "11101", -- 29
			16 => "00010", -- 2
			17 => "01011", -- 11
			18 => "10011", -- 19
			19 => "10010", -- 18
			20 => "01110", -- 14
			21 => "00011", -- 3
			22 => "11000", -- 24
			23 => "11011", -- 27
			24 => "10110", -- 22
			25 => "00101", -- 5
			26 => "00110", -- 6
			27 => "10111", -- 23
			28 => "01010", -- 10
			29 => "01111", -- 15
			30 => "11110"  -- 30
		);               -- precalculated LUT values of mod inverse

	-- Calculates inverse of x mod PRIME using LookUpTables
	function modinv(x : unsigned) return unsigned is
		variable result   : unsigned(PRIME_BITS-1 downto 0);
	begin
		if (x = 0) then
			result := (others => '0');
		else
			result := INV(to_integer(unsigned(x) mod UPRIME));
		end if;
		return result;
	end function;

	-- Calculates Memory offset in unpacked memory space 
	-- Unpacked means that each line in BRAM has 2*16bits instead of 4*8bits
	function unpackAdrOffset(adr : integer) return integer is
		variable res                 : integer;
	begin
		if (isUneven(adr) = '1') then
			res := (adr -1 ) * 2;
		else
			res := adr * 2;
		end if;
		return res;
	end function;

begin
	process(clk) is
		variable v_tmp    : integer;
		variable v_myLine : line; -- debug

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
				i              <= 0;
				j              <= 0;
				find_row       <= 0;
				utmp           <= (others => '0');
				utmp1          <= (others => '0');
				utmp2          <= (others => '0');
				utmp16_0       <= (others => '0');
				utmp16_1       <= (others => '0');
				s_coef         <= (others => '0');
				tmp            <= ZERO_32;
				tmp0           <= ZERO_32;
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
						uoffset0 <= unpackAdrOffset(row*(K*O+2) + col);     -- first 
						uoffset1 <= unpackAdrOffset((row+1)*(K*O+2) + col); -- second
						state    <= unpack2;

					when unpack2 =>
						tmp <= bram0a.i.i_dout;

						bram0a.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ uoffset0);
						bram0a.o.o_en   <= '1';
						if (s_isColEven = '1') then
							bram0a.o.o_we  <= "0011";
							bram0a.o.o_din <= X"00_00_00" & bram0a.i.i_dout(7 downto 0); -- padding
						else
							bram0a.o.o_we  <= "1100";
							bram0a.o.o_din <= X"00" & bram0a.i.i_dout(7 downto 0) & X"00_00"; -- padding
						end if;

						bram0b.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH) + uoffset1);
						bram0b.o.o_en   <= '1';
						if (s_isColEven = '1') then
							bram0b.o.o_we  <= "0011";
							bram0b.o.o_din <= X"00_00_00" & bram0a.i.i_dout(15 downto 8); -- padding
						else
							bram0b.o.o_we  <= "1100";
							bram0b.o.o_din <= X"00" & bram0a.i.i_dout(15 downto 8) & X"00_00"; -- padding
						end if;
						uoffset0 <= unpackAdrOffset((row+2)*(K*O+2) + col); -- third 
						uoffset1 <= unpackAdrOffset((row+3)*(K*O+2) + col); -- fourth
						state    <= unpack9;

					when unpack9 =>
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ uoffset0);
						bram0a.o.o_en   <= '1';
						if (s_isColEven = '1') then
							bram0a.o.o_we  <= "0011";
							bram0a.o.o_din <= X"00_00_00" & tmp(23 downto 16); -- padding
						else
							bram0a.o.o_we  <= "1100";
							bram0a.o.o_din <= X"00" & tmp(23 downto 16) & X"00_00"; -- padding
						end if;

						bram0b.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH) + uoffset1);
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
						uoffset0 <= unpackAdrOffset(row*(K*O+2) + (K*O));
						uoffset1 <= unpackAdrOffset((row+1)*(K*O+2) + (K*O));
						state    <= unpack5;

					when unpack5 =>
						tmp             <= bram0b.i.i_dout;
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ uoffset0);
						bram0a.o.o_we   <= "1111";
						bram0a.o.o_en   <= '1';
						bram0a.o.o_din  <= X"00_00_00" & bram0b.i.i_dout(7 downto 0);

						bram0b.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ uoffset1);
						bram0b.o.o_we   <= "1111";
						bram0b.o.o_en   <= '1';
						bram0b.o.o_din  <= X"00_00_00" & bram0b.i.i_dout(15 downto 8);

						uoffset0 <= unpackAdrOffset((row+2)*(K*O+2) + (K*O));
						uoffset1 <= unpackAdrOffset((row+3)*(K*O+2) + (K*O));
						state    <= unpack10;

					when unpack10 =>
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ uoffset0);
						bram0a.o.o_we   <= "1111";
						bram0a.o.o_en   <= '1';
						bram0a.o.o_din  <= X"00_00_00" & tmp(23 downto 16);

						bram0b.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ uoffset1);
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
						state         <= unpack7;
						--state         <= debug0;

					------------------------------------------------------------------------------
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
						------------------------------------------------------------------------------

					when unpack7 => -- while(1)
						if (row = M) then
							state <= sol0;
							--state <= debug4;
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
						bram0a.o.o_we <= "0000";
						bram0a.o.o_en <= '0';
						tmp           <= bram0a.i.i_dout;
						state         <= piv4;

					when piv4 =>
						tmp(PRIME_BITS-1 downto 0)             <= std_logic_vector(unsigned(tmp(15 downto 0)) mod UPRIME);
						tmp(15 downto PRIME_BITS)              <= (others => '0');
						tmp(16+PRIME_BITS-1 downto 16)         <= std_logic_vector(unsigned(tmp(31 downto 16)) mod UPRIME);
						tmp(PORT_WIDTH-1 downto 16+PRIME_BITS) <= (others => '0');
						state                                  <= piv2;

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
							uoffset0 <= unpackAdrOffset(row * (K*O+2));
							uoffset1 <= unpackAdrOffset(find_row * (K*O+2));
							state    <= swap0;
						else
							uoffset0 <= unpackAdrOffset(row * (K*O+2)+col);
							state    <= scale0;
						end if;

					when swap0 =>
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ uoffset0);
						bram0a.o.o_en   <= '1';
						bram0a.o.o_we   <= "0000";

						bram0b.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ uoffset1);
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
							i        <= i +2;
							uoffset0 <= unpackAdrOffset(row * (K*O+2)+i+2);
							uoffset1 <= unpackAdrOffset(find_row * (K*O+2)+i+2);
							state    <= swap0;
						else
							i     <= 0;
							state <= swap3;
						end if;

					when swap3 =>
						bram0a.o.o_en <= '0';
						bram0b.o.o_en <= '0';
						bram0a.o.o_we <= "0000";
						bram0b.o.o_we <= "0000";
						uoffset0      <= unpackAdrOffset(row * (K*O+2)+col);
						state         <= scale0;

					when scale0 =>
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ uoffset0);
						bram0a.o.o_en   <= '1';
						bram0a.o.o_we   <= "0000";
						state           <= scale1;

					when scale1 =>
						state <= scale13;

					when scale13 =>
						tmp           <= bram0a.i.i_dout;
						bram0a.o.o_en <= '0';
						state         <= scale2;

					when scale2 =>
						if (isUneven(col) = '0') then -- Pick lower words
							s_inv <= modinv(unsigned(tmp(15 downto 0)));
						else -- Pick upper words
							s_inv <= modinv(unsigned(tmp(31 downto 16)));
						end if ;
						booltmp  <= '1'; -- 2OP or 1OP
						uoffset0 <= unpackAdrOffset(row * (K*O+2)+i);
						uoffset1 <= unpackAdrOffset(row * (K*O+2)+i+2);
						state    <= scale3;

					when scale3 =>
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ uoffset0);
						bram0a.o.o_en   <= '1';
						bram0a.o.o_we   <= "0000";
						if (booltmp = '1') then
							bram0b.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ uoffset1);
							bram0b.o.o_en   <= '1';
							bram0b.o.o_we   <= "0000";
						end if;
						state <= scale4;

					when scale4 =>
						state <= scale5;

					when scale5 =>
						bram0a.o.o_en <= '0';
						bram0b.o.o_en <= '0';
						tmp           <= bram0a.i.i_dout;
						tmp0          <= bram0b.i.i_dout;
						state         <= scale12;

					when scale12 =>
						utmp16_0 <= unsigned(tmp(15 downto 0));
						utmp16_1 <= unsigned(tmp(31 downto 16));
						if (booltmp = '1') then
							utmp1(15 downto 0)  <= unsigned(tmp0(15 downto 0));
							utmp1(31 downto 16) <= unsigned(tmp0(31 downto 16));
						end if;
						state <= scale11;

					when scale11 =>
						utmp(PRIME_BITS-1 downto 0)             <= utmp16_0 mod UPRIME;
						utmp(15 downto PRIME_BITS)              <= (others => '0');
						utmp(16+PRIME_BITS-1 downto 16)         <= utmp16_1 mod UPRIME;
						utmp(PORT_WIDTH-1 downto 16+PRIME_BITS) <= (others => '0');

						if (booltmp = '1') then
							utmp1(PRIME_BITS-1 downto 0)             <= utmp1(15 downto 0) mod UPRIME;
							utmp1(15 downto PRIME_BITS)              <= (others => '0');
							utmp1(16+PRIME_BITS-1 downto 16)         <= utmp1(31 downto 16) mod UPRIME;
							utmp1(PORT_WIDTH-1 downto 16+PRIME_BITS) <= (others => '0');
						end if;
						state <= scale10;

					when scale10 =>
						utmp(PRIME_BITS*2-1 downto 0)             <= utmp(PRIME_BITS-1 downto 0) * s_inv;
						utmp(15 downto PRIME_BITS*2)              <= (others => '0');
						utmp(PRIME_BITS*2-1+16 downto 16)         <= utmp(16+PRIME_BITS-1 downto 16) * s_inv;
						utmp(PORT_WIDTH-1 downto 16+PRIME_BITS*2) <= (others => '0');

						if (booltmp = '1') then
							utmp1(PRIME_BITS*2-1 downto 0)             <= utmp1(PRIME_BITS-1 downto 0) * s_inv;
							utmp1(15 downto PRIME_BITS*2)              <= (others => '0');
							utmp1(PRIME_BITS*2-1+16 downto 16)         <= utmp1(16+PRIME_BITS-1 downto 16) * s_inv;
							utmp1(PORT_WIDTH-1 downto 16+PRIME_BITS*2) <= (others => '0');
						end if;
						state <= scale6;

					when scale6 =>
						bram0a.o.o_en                             <= '1';
						bram0a.o.o_we                             <= "1111";
						bram0a.o.o_din(PRIME_BITS-1 downto 0)     <= std_logic_vector(utmp(PRIME_BITS*2-1 downto 0) mod UPRIME);
						bram0a.o.o_din(15 downto PRIME_BITS)      <= (others => '0');
						bram0a.o.o_din(PRIME_BITS-1+16 downto 16) <= std_logic_vector(utmp(PRIME_BITS*2-1+16 downto 16) mod UPRIME);
						bram0a.o.o_din(31 downto 16+PRIME_BITS)   <= (others => '0');

						if (booltmp = '1') then
							bram0b.o.o_en <= '1';
							bram0b.o.o_we <= "1111";
						end if;
						bram0b.o.o_din(PRIME_BITS-1 downto 0)     <= std_logic_vector(utmp1(PRIME_BITS*2-1 downto 0) mod UPRIME);
						bram0b.o.o_din(15 downto PRIME_BITS)      <= (others => '0');
						bram0b.o.o_din(PRIME_BITS-1+16 downto 16) <= std_logic_vector(utmp1(PRIME_BITS*2-1+16 downto 16) mod UPRIME);
						bram0b.o.o_din(31 downto 16+PRIME_BITS)   <= (others => '0');

						if (i < K*O-4) then -- move in 2 ops
							i        <= i +4;
							uoffset0 <= unpackAdrOffset(row * (K*O+2)+i+4);
							uoffset1 <= unpackAdrOffset(row * (K*O+2)+i+6);
							state    <= scale3;
						elsif (i = K*O-4) then -- last one (requires one op)
							i        <= i+4;
							booltmp  <= '0';
							uoffset0 <= unpackAdrOffset(row * (K*O+2)+i+4);
							uoffset1 <= unpackAdrOffset(row * (K*O+2)+i+6);
							state    <= scale3;
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
							j        <= row;
							uoffset0 <= unpackAdrOffset(i*(K*O+2)+col);
							state    <= rowop2;
						else
							state <= rowop11;
						end if;

					when rowop2 =>
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ uoffset0);
						bram0a.o.o_en   <= '1';
						bram0a.o.o_we   <= "0000";
						state           <= rowop3;

					when rowop3 =>
						state <= rowop4;

					when rowop4 =>
						bram0a.o.o_en <= '0';
						tmp           <= bram0a.i.i_dout;
						state         <= rowop13;

					when rowop13 =>
						utmp16_0 <= unsigned(tmp(15 downto 0)) mod PRIME;
						utmp16_1 <= unsigned(tmp(31 downto 16)) mod PRIME;
						state    <= rowop5;

					when rowop5 =>
						utmp16_0(PRIME_BITS-1 downto 0) <= (to_unsigned(PRIME,PRIME_BITS) - utmp16_0(PRIME_BITS-1 downto 0)) mod UPRIME;
						utmp16_1(PRIME_BITS-1 downto 0) <= (to_unsigned(PRIME,PRIME_BITS) - utmp16_1(PRIME_BITS-1 downto 0)) mod UPRIME;
						state                           <= rowop6;

					when rowop6 =>
						utmp          <= utmp16_1 & utmp16_0;
						bram0a.o.o_en <= '0';
						bram0a.o.o_we <= "0000";
						if (j < K*O+1) then
							uoffset0 <= unpackAdrOffset(i*(K*O+2)+j);
							uoffset1 <= unpackAdrOffset(row*(K*O+2)+j);
							state    <= rowop7;
						else
							state <= rowop10;
						end if;

					when rowop7 =>
						bram0a.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ uoffset0);
						bram0a.o.o_en   <= '1';
						bram0a.o.o_we   <= "0000";

						bram0b.o.o_addr <= std_logic_vector(to_unsigned(UNPACKED_AUGMENT_BASE_ADR,PORT_WIDTH)+ uoffset1);
						bram0b.o.o_en   <= '1';
						bram0b.o.o_we   <= "0000";
						state           <= rowop8;

					when rowop8 =>
						state <= rowop12;

					when rowop12 =>
						tmp           <= bram0a.i.i_dout;
						tmp0          <= bram0b.i.i_dout;
						bram0a.o.o_en <= '0';
						bram0b.o.o_en <= '0';
						if (s_isColEven = '1') then              -- Pick lower or upper part
							s_coef <= utmp(PRIME_BITS-1 downto 0); -- Coef can be represented in only 5 bits
						else
							s_coef <= utmp(PRIME_BITS-1+16 downto 16);
						end if;
						state <= rowop14;

					when rowop14 =>
						if (isUneven(j) = '1') then
							utmp2(31 downto 16) <= resize(unsigned(tmp0(31 downto 16)) * s_coef,16);
						else
							utmp2(15 downto 0)  <= resize(unsigned(tmp0(15 downto 0)) * s_coef,16);
							utmp2(31 downto 16) <= resize(unsigned(tmp0(31 downto 16)) * s_coef,16);
						end if;
						state <= rowop9;

					when rowop9 =>
						if (isUneven(j) = '1') then
							bram0a.o.o_din(31 downto 16) <= std_logic_vector(unsigned(tmp(31 downto 16)) + utmp2(31 downto 16));
							bram0a.o.o_en                <= '1';
							bram0a.o.o_we                <= "1100";
							j                            <= j+1;
						else
							bram0a.o.o_din(15 downto 0)  <= std_logic_vector(unsigned(tmp(15 downto 0)) + utmp2(15 downto 0));
							bram0a.o.o_din(31 downto 16) <= std_logic_vector(unsigned(tmp(31 downto 16)) + utmp2(31 downto 16));
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
						bram0a.o.o_en <= '0';
						utmp16_0      <= unsigned(bram0a.i.i_dout(15 downto 0));
						utmp16_1      <= unsigned(bram0a.i.i_dout(31 downto 16));
						utmp          <= (others => '0');
						state         <= sol29;

					when sol29 =>
						utmp(PRIME_BITS-1 downto 0)     <= utmp16_0 mod UPRIME;
						utmp(PRIME_BITS-1+16 downto 16) <= utmp16_1 mod UPRIME;
						state                           <= sol5;

					when sol5 =>
						if (utmp(PRIME_BITS-1 downto 0) = 0 and utmp(PRIME_BITS-1+16 downto 16) = 0) then
							col2 <= col2 +2;
							if (col2 < K*O) then
								state <= sol2;
							else
								state <= sol6; --break of LOOP2
							end if ;

						elsif (utmp(PRIME_BITS-1 downto 0) = 0 and utmp(PRIME_BITS-1+16 downto 16) /= 0) then
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
						if (isUneven(col) = '0') then
							utmp2(15 downto 0) <= unsigned(bram0a.i.i_dout(15 downto 0));
						else
							utmp2(15 downto 0) <= unsigned(bram0a.i.i_dout(31 downto 16));
						end if;
						utmp2(31 downto 16) <= unsigned(bram0b.i.i_dout(15 downto 0));
						state               <= sol25;

					when sol25 =>
						utmp1(16+PRIME_BITS-1 downto 0) <= utmp(PRIME_BITS-1 downto 0) * utmp2(15 downto 0);
						state                           <= sol23;

					when sol23 =>
						utmp1(16+PRIME_BITS-1 downto 0)          <= utmp2(31 downto 16) + utmp1(16+PRIME_BITS-1 downto 0);
						utmp1(PORT_WIDTH-1 downto PRIME_BITS+16) <= (others => '0');
						state                                    <= sol12;

					when sol12 =>
						bram0b.o.o_en                         <= '1';
						bram0b.o.o_we                         <= "0011";
						bram0b.o.o_din(PRIME_BITS-1 downto 0) <= std_logic_vector(utmp1(16+PRIME_BITS-1 downto 0) mod UPRIME);
						bram0b.o.o_din(15 downto PRIME_BITS)  <= (others => '0');

						i     <= i+1;
						state <= sol8;

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
						i     <= 0 ;
						tmp   <= bram0a.i.i_dout;
						state <= sol28;

					when sol28 =>
						utmp  <= to_unsigned(PRIME,PORT_WIDTH) - unsigned(tmp(7 downto 0)); -- One's Complement
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

						if (isUneven(col) = '0') then
							utmp2(15 downto 0) <= unsigned(bram0a.i.i_dout(15 downto 0));
						else
							utmp2(15 downto 0) <= unsigned(bram0a.i.i_dout(31 downto 16));
						end if;
						utmp2(31 downto 16) <= unsigned(bram0b.i.i_dout(15 downto 0));
						state               <= sol26;

					when sol26 =>
						utmp1(16+PRIME_BITS-1 downto 0) <= utmp(PRIME_BITS-1 downto 0) * utmp2(15 downto 0);
						state                           <= sol24;

					when sol24 =>
						utmp1(16+PRIME_BITS-1 downto 0)          <= utmp2(31 downto 16) + utmp1(16+PRIME_BITS-1 downto 0);
						utmp1(PORT_WIDTH-1 downto PRIME_BITS+16) <= (others => '0');
						state                                    <= sol20;

					when sol20 =>
						bram0b.o.o_en                         <= '1';
						bram0b.o.o_we                         <= "0011";
						bram0b.o.o_din(PRIME_BITS-1 downto 0) <= std_logic_vector(utmp1(16+PRIME_BITS-1 downto 0) mod UPRIME);
						bram0b.o.o_din(15 downto PRIME_BITS)  <= (others => '0');
						i                                     <= i+1;
						state                                 <= sol16;

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