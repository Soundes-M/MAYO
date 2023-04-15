library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pivotRow_cell is
	port (
		clk : in std_logic;
		rst : in std_logic;

		en    : in std_logic;
		load  : in std_logic;
		fetch : in std_logic;

		data_in  : in  std_logic_vector(7 downto 0);
		data_out : out std_logic_vector(7 downto 0);

		out1 : out std_logic_vector(7 downto 0);
		out2 : out std_logic_vector(7 downto 0);

		in1 : in std_logic_vector(7 downto 0);
		in2 : in std_logic_vector(7 downto 0);

		piv_found : in std_logic;

		row_data : in  std_logic_vector(7 downto 0);
		col_data : out std_logic_vector(7 downto 0)
	);

end entity pivotRow_cell;

architecture Behav of pivotRow_cell is
	signal r                 : std_logic_vector(7 downto 0);
	signal col_data_internal : unsigned(15 downto 0);

begin
	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				r <= (others => '0');
			else-- Fig. 4. GSMITH: Schematic of a pivot row c
				if (en = '1') then
					if (load = '1') then
						r <= data_in;
					elsif (fetch = '1') then
						data_out <= r;
					else
						if (piv_found = '1') then
							r <= in2;
						else
							r <= in1;
						end if;
					end if;
				end if;
			end if;
		end if;
	end process;
	out1              <= r;
	col_data_internal <= (unsigned(r) * unsigned(row_data)) mod 31;
	out2              <= std_logic_vector(col_data_internal(7 downto 0));
	col_data          <= std_logic_vector(col_data_internal(7 downto 0));

end architecture Behav;
