library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

use work.MAYO_COMMON.all;
use work.UTILS_COMMON.all;

entity mayo_trng_arbiter is
	port(
		-- 0 : In0, 1 : In1
		i_trng_sel : in std_logic;
		-- OUTPUT
		o_trng_r     : out std_logic;
		o_trng_w     : out std_logic;
		o_trng_data  : out std_logic_vector(31 downto 0);
		i_trng_data  : in  std_logic_vector(31 downto 0);
		i_trng_valid : in  std_logic;
		i_trng_done  : in  std_logic;

		-- Input 1 
		i_trng0_r     : in  std_logic;
		i_trng0_w     : in  std_logic;
		i_trng0_data  : in  std_logic_vector(31 downto 0);
		o_trng0_data  : out std_logic_vector(31 downto 0);
		o_trng0_valid : out std_logic;
		o_trng0_done  : out std_logic;

		--Input 2
		i_trng1_r     : in  std_logic;
		i_trng1_w     : in  std_logic;
		i_trng1_data  : in  std_logic_vector(31 downto 0);
		o_trng1_data  : out std_logic_vector(31 downto 0);
		o_trng1_valid : out std_logic;
		o_trng1_done  : out std_logic
	);


end entity mayo_trng_arbiter;

architecture Behavioral of mayo_trng_arbiter is

begin

	o_trng_r    <= i_trng0_r    when i_trng_sel = '0' else i_trng1_r;
	o_trng_w    <= i_trng0_w    when i_trng_sel = '0' else i_trng1_w;
	o_trng_data <= i_trng0_data when i_trng_sel = '0' else i_trng1_data;

	o_trng0_data  <= i_trng_data  when i_trng_sel = '0' else ZERO_32;
	o_trng0_valid <= i_trng_valid when i_trng_sel = '0' else '0';
	o_trng0_done  <= i_trng_done  when i_trng_sel = '0' else '0';

	o_trng1_data  <= i_trng_data  when i_trng_sel = '1' else ZERO_32;
	o_trng1_valid <= i_trng_valid when i_trng_sel = '1' else '0';
	o_trng1_done  <= i_trng_done  when i_trng_sel = '1' else '0';


end architecture Behavioral;