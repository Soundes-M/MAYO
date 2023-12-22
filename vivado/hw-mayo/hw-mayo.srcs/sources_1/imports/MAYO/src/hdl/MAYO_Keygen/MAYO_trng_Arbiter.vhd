library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

use work.MAYO_COMMON.all;
use work.UTILS_COMMON.all;

entity mayo_trng_arbiter is
	port(
		-- 00 : In0, 01 : In1, 10 : In2
		i_trng_sel : in std_logic_vector(1 downto 0);
		-- OUTPUT
		o_trng_en          : out std_logic;
		i_trng_random_data : in  std_logic_vector(127 downto 0);
		i_trng_valid       : in  std_logic;

		-- Input 0 
		i_trng0_en          : in  std_logic;
		o_trng0_random_data : out std_logic_vector(127 downto 0);
		o_trng0_valid       : out std_logic;

		--Input 1
		i_trng1_en          : in  std_logic;
		o_trng1_random_data : out std_logic_vector(127 downto 0);
		o_trng1_valid       : out std_logic;


		-- Input 2
		i_trng2_en          : in  std_logic;
		o_trng2_random_data : out std_logic_vector(127 downto 0);
		o_trng2_valid       : out std_logic

	);


end entity mayo_trng_arbiter;

architecture Behavioral of mayo_trng_arbiter is

begin

	o_trng_en <= i_trng0_en when i_trng_sel = "00" else i_trng1_en when i_trng_sel = "01" else i_trng2_en;

	o_trng0_random_data <= i_trng_random_data when i_trng_sel = "00" else (others => '0');
	o_trng0_valid       <= i_trng_valid       when i_trng_sel = "00" else '0';


	o_trng1_random_data <= i_trng_random_data when i_trng_sel = "01" else (others => '0');
	o_trng1_valid       <= i_trng_valid       when i_trng_sel = "01" else '0';

	o_trng2_random_data <= i_trng_random_data when i_trng_sel = "10" else (others => '0');
	o_trng2_valid       <= i_trng_valid       when i_trng_sel = "10" else '0';


end architecture Behavioral;