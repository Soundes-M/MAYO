library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity weirdMult is
	port (
		clk      : in  std_logic;
		rst      : in  std_logic;
		enable   : in  std_logic;
		load     : in  std_logic;
		data_in  : in  std_logic_vector(7 downto 0);
		data_out : out std_logic_vector(7 downto 0);
		done     : out std_logic
	);
end entity weirdMult;

architecture Behavioral of weirdMult is
	signal r : std_logic_vector(7 downto 0) := (others => '0');
	signal d : std_logic                    := '0';
begin

	process(clk)
		variable tmp : std_logic_vector(7 downto 0);
	begin
		if rising_edge(clk) then
			if rst = '1' then
				r <= (others => '0');
			else
				if load = '1' and enable = '0' then
					r <= data_in;
				elsif load = '0' and enable = '1' then
					tmp      := std_logic_vector(resize(unsigned(r)*unsigned(r),8));
					data_out <= tmp;
					r        <= tmp;
					d        <= '1';
				else
					d <= '0';
					r <= r;
				end if;
			end if;
		end if;
	end process;
	done <= d;
end architecture Behavioral;

-------------------------------------------------------------------------------TOP
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity weirdMultTop is
	port (
		clk      : in  std_logic;
		rst      : in  std_logic;
		enable   : in  std_logic;
		load     : in  std_logic;
		data_in  : in  std_logic_vector(7 downto 0);
		data_out : out std_logic_vector(7 downto 0);
		done     : out std_logic
	);
end entity weirdMultTop;

architecture Behavioral of weirdMultTop is
	component weirdMult is
		port (
			clk      : in  std_logic;
			rst      : in  std_logic;
			enable   : in  std_logic;
			load     : in  std_logic;
			data_in  : in  std_logic_vector(7 downto 0);
			data_out : out std_logic_vector(7 downto 0);
			done     : out std_logic
		);
	end component weirdMult;
	type vector8 is array (natural range <>) of std_logic_vector(7 downto 0);
	type vector1 is array (natural range <>) of std_logic;

	signal s_data_in  : vector8(0 to 5);
	signal s_data_out : vector8(0 to 5);
	signal s_done     : vector1(0 to 5);
	signal s_enable   : vector1(0 to 5);
	signal s_data     : vector8(0 to 5);
begin

	s_enable(0) <= enable;
	s_enable(1) <= s_done(0);
	s_enable(2) <= s_done(1);
	s_enable(3) <= s_done(2);
	s_enable(4) <= s_done(3);
	done        <= s_done(4);

	s_data_in(0) <= data_in;
	s_data_in(1) <= s_data_out(0);
	s_data_in(2) <= s_data_out(1);
	s_data_in(3) <= s_data_out(2);
	s_data_in(4) <= s_data_out(3);
	data_out     <= s_data_out(4);

	gen : for i in 0 to 4 generate
			mult : entity work.weirdMult port map (
				clk      => clk,
				rst      => rst,
				enable   => s_enable(i),
				load     => load,
				data_in  => s_data_in(i),
				data_out => s_data_out(i),
				done     => s_done(i)
			);
	end generate;

end architecture Behavioral;

