--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
--Date        : Tue Jan 10 17:55:09 2023
--Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
--Command     : generate_target Mayo_keygen_no_zynq_wrapper.bd
--Design      : Mayo_keygen_no_zynq_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Mayo_keygen_no_zynq_wrapper is
  port (
    clk : in STD_LOGIC;
    done : out STD_LOGIC;
    enable : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end Mayo_keygen_no_zynq_wrapper;

architecture STRUCTURE of Mayo_keygen_no_zynq_wrapper is
  component Mayo_keygen_no_zynq is
  port (
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    done : out STD_LOGIC
  );
  end component Mayo_keygen_no_zynq;
begin
Mayo_keygen_no_zynq_i: component Mayo_keygen_no_zynq
     port map (
      clk => clk,
      done => done,
      enable => enable,
      rst => rst
    );
end STRUCTURE;
