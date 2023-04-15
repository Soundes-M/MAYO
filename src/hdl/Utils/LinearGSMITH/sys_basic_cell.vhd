library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sys_basic_cell is
	generic (
		K : integer := 8
	);
	port (
		clk : in  std_logic;
		rst : in  std_logic;
		i_T : in  std_logic;
		i_D : in  std_logic_vector(K-1 downto 0);
		i_E : in  std_logic_vector(K-1 downto 0);
		o_E : out std_logic_vector(K-1 downto 0);
		o_D : out std_logic_vector(K-1 downto 0);
		o_T : out std_logic
	);

end entity sys_basic_cell;

architecture comb of sys_basic_cell is
	constant PRIME : integer := 31; -- PRIME GF(2power5)
	signal s_reg   : unsigned(K-1 downto 0);

begin
	o_T <= i_T;
	--o_D <= std_logic_vector(s_reg) when (i_T = '0') else std_logic_vector( resize((unsigned(i_D) + unsigned(i_E)*s_reg)) mod PRIME,K); -- TODO 2 multipliers?

	process(clk)
		variable v_res : unsigned(K-1 downto 0);
	begin
		if rising_edge(clk) then
			if(rst = '1') then
				s_reg <= (others => '0');
			else
				v_res := resize(unsigned(i_D) * unsigned(i_E),K); -- Multiplier

				if (i_T = '0') then
					s_reg <= v_res;
					o_D   <= std_logic_vector(s_reg);
				else
					s_reg <= s_reg;
					o_D   <= std_logic_vector((unsigned(i_D) + v_res mod PRIME));
				end if;
			end if;
		end if;
	end process;
end architecture comb;

---------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SR is
	generic (
		K : integer := 8
	);
	port (
		clk    : in  std_logic;
		rst    : in  std_logic;
		en     : in  std_logic;
		i_data : in  std_logic_vector(K-1 downto 0);
		o_data : out std_logic_vector(K-1 downto 0)
	);

end entity SR;

architecture Behavioral of SR is
	signal s_reg : std_logic_vector(K-1 downto 0);
begin

	process(clk)
	begin
		if rising_edge(clk) then
			if (rst = '1')then
				s_reg <= (others => '0');
			else
				if (en = '1')then
					s_reg  <= i_data;
					o_data <= s_reg;
				end if;
			end if;
		end if;
	end process;

end architecture Behavioral;