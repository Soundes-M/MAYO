library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity gsmith_top is
	port (
		clk  : in  std_logic;
		rst  : in  std_logic;
		done : out std_logic
	);

end entity gsmith_top;

architecture arch of gsmith_top is

	component gsmith is
		port (
			clk  : in  std_logic;
			rst  : in  std_logic;
			done : out std_logic
		);
	end component gsmith;

begin
		top : gsmith port map (
			clk  => clk,
			rst  => rst,
			done => done
		);

end architecture arch;