library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pivot_cell is
	port (
		clk : in std_logic;
		rst : in std_logic;

		en    : in std_logic;
		load  : in std_logic;
		fetch : in std_logic;

		data_in  : in  std_logic_vector(7 downto 0);
		data_out : out std_logic_vector(7 downto 0);

		in1 : in std_logic_vector(7 downto 0);
		in2 : in std_logic_vector(7 downto 0);

		row_data  : out std_logic_vector(7 downto 0);
		piv_found : out std_logic
	);

end entity pivot_cell;

architecture Behavioral of pivot_cell is
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

	signal r           : std_logic_vector(7 downto 0);
	signal s_piv_found : std_logic;

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

begin
	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				r <= (others => '0');
			else
				if (en = '1') then
					if (load = '1') then
						r <= data_in;
					elsif (fetch = '1') then
						data_out <= r;
					else
						if (s_piv_found = '1') then
							r <= in1;
						else
							r <= in2;
						end if;
					end if ;
				end if;
			end if;
		end if;
	end process;
	s_piv_found <= '1' when unsigned(r) /= 0 else '0';
	row_data    <= std_logic_vector(modinv(unsigned(r)));
	piv_found   <= s_piv_found;
end architecture Behavioral;
