library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity sys_piv_cell is
	generic (
		K : integer := 8
	);
	port (
		clk  : in  std_logic;
		rst  : in  std_logic;
		i_Cr : in  std_logic;
		i_E  : in  std_logic_vector(K-1 downto 0);
		o_E  : out std_logic_vector(K-1 downto 0);
		o_T  : out std_logic
	);

end entity sys_piv_cell;

architecture comb of sys_piv_cell is
	signal s_zero_piv_found : std_logic := '0';
	signal s_T              : std_logic;

	constant PRIME : integer := 31; -- PRIME GF(2power5)
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

	function modinv(x : std_logic_vector) return unsigned is
		variable result   : unsigned(7 downto 0);
	begin
		if (x = 0) then
			result := x"01";
		else
			result := INV(to_integer(unsigned(x) mod PRIME));
		end if;
		return result;
	end function;

begin
	o_T <= s_T;
	o_E <= std_logic_vector(modinv(i_E)) when (s_T = '0') else i_E;

	--initialization and backward-substitution mode (Crin = 0) and the elimination mode (Crin = 1)
	s_T              <= i_Cr and s_zero_piv_found;
	s_zero_piv_found <= s_T or (i_E = (others => '0')); -- Todo: What??? 
end architecture comb;