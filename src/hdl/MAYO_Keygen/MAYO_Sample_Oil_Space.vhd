LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

use work.MAYO_COMMON.all;

entity mayo_sample_oil_space is
	port(
		i_clk    : in std_logic; -- CLK
		rst      : in std_logic; -- RST
		i_enable : in std_logic; -- ENABLE
		o_hash_len : out std_logic_vector(31 downto 0);
		i_hash_done : 

		-- WE NEED FSM	for while loop
		-- + FSM for read write from BRAM randomness 
		-- + FSM for hash done 
		-- + FSM randomness fetch 4 cells at a time. 
		-- + FSM  to read seed which is 128 Bits --> 16 Bytes Can be implelemnted as simple regs 

	);

end entity mayo_sample_oil_space;
