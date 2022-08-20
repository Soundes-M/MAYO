--------------------------------------------------------------------------------
-- Title       : Utility Package
-- Project     : MAYO
--------------------------------------------------------------------------------
-- File        : utils.vhd
-- Author      : Oussama Sayari <oussama.sayari@campus.tu-berlin.de>
-- Company     : TU Berlin
-- Created     : 
-- Last update : Sat Aug 20 21:56:54 2022
-- Platform    : Designed for Zynq 7000 Series
-- Standard    : <VHDL-2008 | VHDL-2002 | VHDL-1993 | VHDL-1987>
--------------------------------------------------------------------------------
-- Copyright (c) 2022 TU Berlin
-------------------------------------------------------------------------------
-- Description: 
--------------------------------------------------------------------------------
-- Revisions:  Revisions and documentation are controlled by
-- the revision control system (RCS).  The RCS should be consulted
-- on revision history.
-------------------------------------------------------------------------------

LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
-- PACKAGE
PACKAGE UTILS_COMMON IS

  -- PARAMETERS
  CONSTANT PORT_WIDTH : natural := 32; -- 32 Bit arch

  -- BRAM Types
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

  constant DEFAULT_IN_BRAM : i_bram := (
      i_dout => (others => '0'));

  constant DEFAULT_OUT_BRAM : o_bram := (
      o_din  => (others => '0'),
      o_addr => (others => '0'),
      o_en   => '0',
      o_rst  => '0',
      o_we   => (others => '0'));

  type bram_t is record
    o : o_bram; -- TO BRAM
    i : i_bram; -- FROM BRAM
  end record bram_t;

  constant DEFAULT_BRAM : bram_t := (
      o => DEFAULT_OUT_BRAM,
      i => DEFAULT_IN_BRAM);

  type demux_output is array (natural range <>) of o_bram;
  type demux_input is array (natural range <>) of i_bram;

  -- Small storage arrays(LUTs)
  type array_32 is array(natural range <>) of std_logic_vector(31 downto 0);
  type array_16 is array(natural range <>) of std_logic_vector(15 downto 0);
  type array_8 is array(natural range <>) of std_logic_vector(7 downto 0);

  constant ZERO_32 : std_logic_vector(31 downto 0) := (others => '0');

  -- DMA
  constant DMA_PRE_LOAD_DELAY : positive := 16;

END PACKAGE UTILS_COMMON;

-- PACKAGE BODY
PACKAGE BODY UTILS_COMMON IS
END PACKAGE BODY UTILS_COMMON;
