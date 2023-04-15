LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use std.textio.all;
use ieee.std_logic_textio.all;

use work.MAYO_COMMON.all;
use work.UTILS_COMMON.all;

entity mayo_sample_oil is
	generic ( -- Generics are usualy linked to constants, but can be set as INs
		RHS_ADR : integer := RHS_BASE_ADR;
		LIN_ADR : integer := LINEAR_BASE_ADR;
		SOL_ADR : integer := OILSOL_BASE_ADR
	);
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
		o_control0b  : out std_logic
	);

end entity mayo_sample_oil;

architecture Behavioral of mayo_sample_oil is

	------------------------------------------------------------------------------
	-- BRAM
	------------------------------------------------------------------------------
	signal bram0a : bram_t := DEFAULT_BRAM;
	signal bram0b : bram_t := DEFAULT_BRAM;
	signal bram2b : bram_t := DEFAULT_BRAM;
	signal bram2a : bram_t := DEFAULT_BRAM;

	signal s_lin_adr : std_logic_vector(PORT_WIDTH-1 downto 0);
	signal s_rhs_adr : std_logic_vector(PORT_WIDTH-1 downto 0);

	type state_t is (idle, unpack0, unpack1, unpack2, unpack3, unpack4, unpack5, unpack6, unpack7, unpack8, unpack9, unpack10,
			debug0, debug1, debug2, debug3, debug4, debug5, debug6, debug7,
			piv0, piv1, piv2, piv3,
			swap0, swap1, swap2, swap3,
			scale0, scale1, scale2, scale3, scale4, scale5, scale6, scale7, scale8,
			rowop0, rowop1, rowop2, rowop3, rowop4, rowop5, rowop6, rowop7, rowop8, rowop9, rowop10, rowop11, rowop12, rowop13, rowop14, rowop15, rowop16, rowop17, rowop18, rowop19
			,done);
	signal state          : state_t := idle;
	signal tmp            : std_logic_vector(PORT_WIDTH-1 downto 0);
	signal utmp           : unsigned(PORT_WIDTH-1 downto 0);
	signal utmp1          : unsigned(PORT_WIDTH-1 downto 0);
	signal booltmp        : std_logic;
	signal unpack_ctr     : integer;
	signal unpack_lin_ctr : integer;
	signal unpack_ctr1    : integer;
	signal cached_rhs     : std_logic_vector(PORT_WIDTH-1 downto 0);
	signal col            : integer;
	signal row            : integer;
	signal rowcols_ctr    : integer;
	signal find_row       : integer;
	signal i              : integer;
	signal j              : integer;
	signal s_inv          : unsigned(7 downto 0);
	signal s_isColEven    : std_logic;

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
		if (isUneven(adr) = '1')then
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
		variable v_coef       : unsigned(4 downto 0);
		variable v_myLine     : line;

	begin
		if (rising_edge(clk)) then
			if (rst = '1') then
				s_lin_adr      <= ZERO_32;
				s_rhs_adr      <= ZERO_32;
				unpack_ctr     <= 0;
				unpack_ctr1    <= 0;
				unpack_lin_ctr <= 0;
				cached_rhs     <= ZERO_32;
				col            <= 0;
				row            <= 0;
				rowcols_ctr    <= 0;
				i              <= 0;
				j              <= 0;
				find_row       <= 0;
				booltmp        <= '1';
				o_control0a    <= '0';
				o_control0b    <= '0';
				o_ret          <= '0';

				state <= idle;

			else
				case (state) is
					when idle =>
						o_done <= '0';
						o_ret  <= '0';

						if (en = '1') then
							s_lin_adr      <= std_logic_vector(to_unsigned(LIN_ADR,PORT_WIDTH));
							s_rhs_adr      <= std_logic_vector(to_unsigned(RHS_ADR,PORT_WIDTH));
							unpack_ctr     <= 0;
							unpack_ctr1    <= 0;
							unpack_lin_ctr <= 0;
							cached_rhs     <= ZERO_32;
							col            <= 0;
							row            <= 0;
							rowcols_ctr    <= 0;
							i              <= 0;
							j              <= 0;
							booltmp        <= '1';
							o_control0a    <= '1';
							o_control0b    <= '1';
							state          <= unpack0;
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
							o_control0a <= '0';
							o_control0b <= '0';
							state       <= done;
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
						report "Pivot at (" & integer'image(find_row) & "," & integer'image(col) & ")" severity note;

						if (find_row /= row) then -- swap row!
							report "Swapping " & integer'image(find_row) & " and " & integer'image(row) severity note;
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

						if (i < K*O) then -- TODO : Maybe wrong
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
							s_inv <= modinv(unsigned(bram0a.i.i_dout(15 downto 0)));
						end if ;
						booltmp <= '1'; -- 2OP or 1OP
						state   <= scale3;

					when scale3 =>
						report "mod_inverse " & integer'image(to_integer(s_inv));

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

						if (i < K*O-2) then -- move in 2 ops
							i     <= i +4;
							state <= scale3;
						elsif (i = K*O-2) then -- last one (requires one op)
							i       <= i+2;
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

					when done =>
					   o_done <= '1';
						state  <= idle;
						--state <= debug4;

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
						--------------------------------------------------------------------------------
						o_done <= '1';
						state  <= idle;

					when others =>
						null;

				end case ;
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
end architecture Behavioral;