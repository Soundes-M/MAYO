library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity splitter_2_4 is

	port (
		i_s0  : in  std_logic_vector(31 downto 0);
		i_s1  : in  std_logic;
		o_s00 : out std_logic_vector(31 downto 0);
		o_s01 : out std_logic_vector(31 downto 0);
		o_s10 : out std_logic;
		o_s11 : out std_logic
	);
end splitter_2_4;

architecture arch of splitter_2_4 is

begin
	o_s00 <= i_s0;
	o_s01 <= i_s0;
	o_s10 <= i_s1;
	o_s11 <= i_s1;

end architecture arch;