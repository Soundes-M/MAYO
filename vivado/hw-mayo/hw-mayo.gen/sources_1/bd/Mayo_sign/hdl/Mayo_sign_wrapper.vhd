--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
--Date        : Sun Nov 12 20:11:24 2023
--Host        : zenith running 64-bit Ubuntu 22.04.3 LTS
--Command     : generate_target Mayo_sign_wrapper.bd
--Design      : Mayo_sign_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Mayo_sign_wrapper is
  port (
    clk : in STD_LOGIC;
    done : out STD_LOGIC;
    i_enable : in STD_LOGIC;
    i_secret : in STD_LOGIC;
    o_err : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rst : in STD_LOGIC
  );
end Mayo_sign_wrapper;

architecture STRUCTURE of Mayo_sign_wrapper is
  component Mayo_sign is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    done : out STD_LOGIC;
    i_enable : in STD_LOGIC;
    o_err : out STD_LOGIC_VECTOR ( 1 downto 0 );
    i_secret : in STD_LOGIC
  );
  end component Mayo_sign;
begin
Mayo_sign_i: component Mayo_sign
     port map (
      clk => clk,
      done => done,
      i_enable => i_enable,
      i_secret => i_secret,
      o_err(1 downto 0) => o_err(1 downto 0),
      rst => rst
    );
end STRUCTURE;
