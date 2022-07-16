LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
-- PACKAGE
PACKAGE UTILS_COMMON IS

  -- PARAMETERS
  CONSTANT PORT_WIDTH : natural : 32; -- 32 Bit arch

  -- BRAM
  type i_bram is record -- IN from BRAM
    i_dout : std_logic_vector(PORT_WIDTH-1 downto 0);
  end record i_bram;

  type o_bram is record -- OUT to BRAM
    o_din  : std_logic_vector(PORT_WIDTH-1 downto 0);
    o_addr : std_logic_vector (PORT_WIDTH-1 downto 0);
    o_en   : std_logic;
    o_rst  : std_logic;
    o_we   : std_logic_vector (3 downto 0);
  end record o_bram;

  type demux_output is array (natrual range <>) of o_bram;
  type demux_input is array (natrual range <>) of i_bram;

END PACKAGE UTILS_COMMON;

-- PACKAGE BODY
PACKAGE BODY UTILS_COMMON IS
END PACKAGE BODY UTILS_COMMON;
