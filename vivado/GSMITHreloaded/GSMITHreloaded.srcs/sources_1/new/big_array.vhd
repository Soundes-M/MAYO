----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/29/2023 07:34:41 PM
-- Design Name: 
-- Module Name: big_array - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

use work.MAYO_COMMON.all;
use work.UTILS_COMMON.all;

entity big_array is
	Port (
		clk          : in  std_logic;
		rst          : in  std_logic;
		i_load       : in  std_logic;
		i_fetch      : in  std_logic;
		i_matrix_adr : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_full       : out std_logic;
		o_no_solve   : out std_logic;
		o_done       : out std_logic;

		-- Same BRAM Port (Same Space)
		i_mema_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mema_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mema_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_mema_en   : out std_logic;
		o_mema_rst  : out std_logic;
		o_mema_we   : out std_logic_vector (3 downto 0);
		o_controla  : out std_logic;

		i_memb_dout : in  std_logic_vector(PORT_WIDTH-1 downto 0);
		o_memb_din  : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_memb_addr : out std_logic_vector(PORT_WIDTH-1 downto 0);
		o_memb_en   : out std_logic;
		o_memb_rst  : out std_logic;
		o_memb_we   : out std_logic_vector (3 downto 0);
		o_controlb  : out std_logic
	);
end big_array;

architecture Behavioral of big_array is

	-- Matrix Size (ROWS*COLS)
	CONSTANT ROWS : integer := 60;
	CONSTANT COLS : integer := 61;

	type vector8_2d is array (0 to ROWS-1, 0 to COLS-1) of std_logic_vector(4 downto 0);
	type vectorInt_1d is array (0 to ROWS-1) of integer range 0 to ROWS-1;
	type vector8_1d is array(natural range <>) of std_logic_vector(4 downto 0);

	signal big_matrix : vector8_2d;

	signal s_tmp_arr : vector8_1d(0 to COLS-1);

	signal s_rowCtr      : integer range 0 to ROWS-1;
	signal s_colCtr      : integer range 0 to COLS-1;
	signal s_full        : std_logic;
	signal s_matrAdr     : std_logic_vector(PORT_WIDTH-1 downto 0);
	signal s_origMatrAdr : std_logic_vector(PORT_WIDTH-1 downto 0);

	signal it     : integer range 1 to 2;
	signal piv    : integer range 0 to ROWS-1;
	signal col    : integer range 0 to COLS-1;
	signal row    : integer range 0 to ROWS-1;
	signal s_inv  : unsigned(4 downto 0);
	signal s_done : std_logic;
	signal ctr    : integer := 0;
	signal i : integer;

	signal bram0a               : bram_t := DEFAULT_BRAM;
	signal bram0b               : bram_t := DEFAULT_BRAM;
	signal control0a, control0b : std_logic;

	type states is (idle, read0, read1, read2, main0, main1, main2, main3, main4, main5, done);
	signal s_state : states := idle;

	-- Function to increment ctrs of the matrix 
	type matrixCounters_t is record
		row_ctr : integer;
		col_ctr : integer;
	end record;
	signal s_tmpCtrs : matrixCounters_t;
	function update_counters(rowctr : integer; colctr : integer; iter : integer range 1 to 2) return matrixCounters_t is
		variable v_output               : matrixCounters_t;
	begin
		if (colctr < COLS-1) then
			v_output.col_ctr := colctr + 4;
		else
			v_output.col_ctr := 0;
			if (rowctr < ROWS-1) then
				v_output.row_ctr := rowctr + iter;
			else
				v_output.row_ctr := 0;
			end if;
		end if;
		return v_output;
	end function update_counters;

	type lut_type is array (0 to PRIME-1) of std_logic_vector(4 downto 0);
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

	function modinv(x : unsigned) return unsigned is
		variable result   : unsigned(4 downto 0);
	begin
		if (x = 0) then
			result := (others => '0');
		else
			result := unsigned(INV(to_integer(x mod PRIME)));
		end if;
		return resize(result,5);
	end function;

begin
	process(clk)
		variable v_out   : matrixCounters_t;
		variable tmp_arr : vector8_1d(0 to COLS-1);
	begin
		if (rising_edge(clk)) then
			if (rst = '1') then
				for s_i in 0 to ROWS-1 loop
					for s_j in 0 to COLS-1 loop
						big_matrix(s_i,s_j) <= (others => '0');
					end loop;
				end loop;

				s_rowCtr <= 0;
				s_colCtr <= 0;
				s_state  <= idle;

			else
				case (s_state) is
					when idle =>
						o_no_solve <= '0';
						s_done     <= '0';
						piv        <= 0;
						s_rowCtr   <= 0;
						s_colCtr   <= 0;

						if (i_load = '1') then
							s_matrAdr     <= i_matrix_adr;
							s_origMatrAdr <= i_matrix_adr;
							it            <= 2; -- How many "Rows per iterations"
							s_state       <= read0;
						elsif (i_fetch = '1') then
							s_state <= read0;
						else
							s_state <= idle;
						end if;

					when read0 =>
						-- First Row
						bram0a.o.o_addr <= std_logic_vector(unsigned(s_matrAdr) + TO_UNSIGNED(s_colCtr,PORT_WIDTH));
						bram0a.o.o_en   <= '1';
						bram0a.o.o_we   <= "0000";

						-- 2nd Row
						if (it= 2) then
							bram0b.o.o_addr <= std_logic_vector(unsigned(s_matrAdr) + (COLS-1) + TO_UNSIGNED(s_colCtr,PORT_WIDTH)); -- COLS%4 ==! 1 
							bram0b.o.o_en   <= '1';
							bram0b.o.o_we   <= "0000";
						end if ;
						s_state <= read1;

					when read1 =>
						s_tmpCtrs <= update_counters(s_rowCtr,s_colCtr,it); -- Counters for next iteration
						s_state   <= read2;

					when read2 =>

						for k in 0 to 3 loop
							big_matrix(s_rowCtr ,s_colCtr+k) <= i_mema_dout(4+k*8 downto k*8);
						end loop;

						if (it = 2) then
							for k in 0 to 3 loop
								big_matrix(s_rowCtr+1 ,s_colCtr+k) <= i_memb_dout(4+k*8 downto k*8);
							end loop;
						end if;

						s_rowCtr <= s_tmpCtrs.row_ctr;
						s_colCtr <= s_tmpCtrs.col_ctr;

						if (s_tmpCtrs.col_ctr = 0) then -- Increment Matrix base adr
							if (it = 2) then
								s_matrAdr <= std_logic_vector(unsigned(s_matrAdr) + TO_UNSIGNED((COLS-1) * 2,PORT_WIDTH));
							else -- it = 1!
								s_matrAdr <= std_logic_vector(unsigned(s_matrAdr) + COLS-1);
							end if;
						end if;

						if (s_tmpCtrs.row_ctr = 0 and s_tmpCtrs.col_ctr = 0) then -- done writing into FFs
							bram0a.o.o_en <= '0';
							bram0b.o.o_en <= '0';
							row           <= 0;
							col           <= 0;
							piv           <= 0;
							s_state       <= main0;

						elsif (s_tmpCtrs.row_ctr < ROWS-1 ) then -- More rows for 2 it calc. available
							it      <= 2;
							s_state <= read0;

						else -- One Row remaining
							it      <= 1;
							s_state <= read0;
						end if;

					when main0 => -- PIVOT LOOKUP
						if ((unsigned(big_matrix(row+piv,col)) mod PRIME) = 0) then
							big_matrix(row+piv,col) <= (others => '0');
							if(piv < ROWS-1) then
								piv <= piv +1;
							else
								piv <= row;
								if (col < COLS-1) then
									col <= col +1;
								else
									s_state    <= idle;
									o_no_solve <= '1'; -- NOT SOLVABLE (NO PIVOT FOUND)
								end if;
							end if;
							s_state <= main0;
						else
							s_state <= main2;
						end if;

					when main1 =>
						null;

					when main2 =>
						--if (piv /= row) then -- Swap
						--	for x in 0 to COLS-1 loop
						--		tmp_arr(x)        := big_matrix(row,x);
						--		big_matrix(row,x) <= big_matrix(piv,x);
						--		big_matrix(piv,x) <= tmp_arr(x);
						--	end loop;
						--end if ;
						s_state <= main3;

					when main3 => --scale
						s_inv   <= modinv(unsigned(big_matrix(row,col)));
						i <= 0;
						s_state <= main4;

					when main4 =>
						if (i <= COLS-1) then
							s_tmp_arr(i) <= std_logic_vector((unsigned(big_matrix(row, i)) mod PRIME));
							i            <= i + 1;
						else
							i       <= 0;
							s_state <= main5;
						end if;
						--for x in 0 to COLS-1 loop
						--	s_tmp_arr(x) <= std_logic_vector((unsigned(big_matrix(row, x)) mod PRIME));
						--end loop;
						--s_state <= main5;

					when main5 =>
						if (i <= COLS-1) then
							big_matrix(row,i) <= std_logic_vector(resize((unsigned(s_tmp_arr(i))*s_inv) mod PRIME,5));
							i                 <= i + 1;
						else
							i       <= 0;
							s_done  <= '1';
							s_state <= done;
						end if;

						--for x in 0 to COLS-1 loop
						--	big_matrix(row,x) <= std_logic_vector(resize((unsigned(s_tmp_arr(x))*s_inv) mod PRIME,8));
						--end loop;
						--s_done  <= '1';
						--s_state <= done;

					when done =>
						s_done  <= '1';
						s_state <= idle;

				end case;
			end if;
		end if;
	end process;

	s_full <= '1' when (s_rowCtr = ROWS-1 and s_colCtr = COLS-1) else '0';
	o_done <= s_done;

	bram0a.i.i_dout <= i_mema_dout;
	o_mema_din      <= bram0a.o.o_din;
	o_mema_addr     <= bram0a.o.o_addr;
	o_mema_en       <= bram0a.o.o_en;
	o_mema_rst      <= bram0a.o.o_rst;
	o_mema_we       <= bram0a.o.o_we;
	o_controla      <= control0a;

	--BRAM0-B
	bram0b.i.i_dout <= i_memb_dout;
	o_memb_din      <= bram0b.o.o_din;
	o_memb_addr     <= bram0b.o.o_addr;
	o_memb_en       <= bram0b.o.o_en;
	o_memb_rst      <= bram0b.o.o_rst;
	o_memb_we       <= bram0b.o.o_we;
	o_controlb      <= control0b;

end Behavioral;
