library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity basic_cell is
	port (
		clk : in std_logic;
		rst : in std_logic;

		en    : in std_logic;
		load  : in std_logic;
		fetch : in std_logic;

		data_in  : in  std_logic_vector(7 downto 0);
		data_out : out std_logic_vector(7 downto 0);

		out1 : out std_logic_vector(7 downto 0); -- Upper neighbor
		out2 : out std_logic_vector(7 downto 0); -- Upper left

		lock_lower_row_out : out std_logic; -- Upper neighbor
		lock_lower_row_in  : in  std_logic; -- Lower neighbor

		in1 : in std_logic_vector(7 downto 0); -- Lower neighbor
		in2 : in std_logic_vector(7 downto 0); -- Lower right

		lock_row  : in std_logic;
		piv_found : in std_logic;

		row_data : in std_logic_vector(7 downto 0);
		col_data : in std_logic_vector(7 downto 0)
	);

end entity basic_cell;

architecture Behavioral of basic_cell is
	signal r : std_logic_vector(7 downto 0);
begin
	process(clk)
		variable tmp : unsigned(15 downto 0);
	begin
		if rising_edge(clk) then
			if rst = '1' then
				r <= (others => '0');
			else-- Fig. 2. GSMITH: Schematic of a basic cell
				if (en = '1') then
					if (load = '1') then
						r <= data_in; -- Force Input 
					elsif (fetch = '1') then
						data_out <= r;
					else
						if (piv_found = '0' and lock_row = '1') then
							r <= r;
						elsif (piv_found = '1') then
							r <= in2;
						elsif (piv_found = '0' and lock_lower_row_in = '1' and lock_row = '0') then
							r <= col_data;
						elsif (piv_found = '0' and lock_lower_row_in = '0') then
							r <= in1;
						else
							report "Error, case not expected";
							r <= r;
						end if;
					end if;
					tmp  := unsigned(r) + (unsigned(col_data) * unsigned(row_data) mod 31);
					out2 <= std_logic_vector(tmp(7 downto 0));
				end if;
			end if;
		end if;
	end process;
	out1               <= r;
	lock_lower_row_out <= lock_row;
end architecture Behavioral;