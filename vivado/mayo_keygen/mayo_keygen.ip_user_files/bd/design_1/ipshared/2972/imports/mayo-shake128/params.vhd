library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package params is   
    constant n : integer := 32;
	constant MAX_MLEN : integer := 2048;

	-- TOP records
    type absorb_message_output_type is record
        done : std_logic;
        mnext: std_logic;
        o    : std_logic_vector((n*8)-1 downto 0);
	end record;

	type absorb_message_input_type is record
	    halt  : std_logic;
        enable: std_logic;
        len   : integer range 0 to 2048;
        input : std_logic_vector((n*8)-1 downto 0);
    end record;


    -- Main SHAKE component records
    type shake_input_type is record
       start  : std_logic;
	   absorb    : std_logic;
	   din : STD_LOGIC_VECTOR (1343 DOWNTO 0);
    end record;
    
    type shake_output_type is record
       dout : STD_LOGIC_VECTOR (1343 DOWNTO 0);
	   ready   : std_logic;
	end record;

end package;