--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
--Date        : Wed May 25 17:05:19 2022
--Host        : debian running 64-bit Debian GNU/Linux 11 (bullseye)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  attribute core_generation_info : string;
  attribute core_generation_info of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute hw_handoff : string;
  attribute hw_handoff of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_neoTRNG_0_0 is
  port (
    clk_i : in STD_LOGIC;
    enable_i : in STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    valid_o : out STD_LOGIC
  );
  end component design_1_neoTRNG_0_0;
  signal NLW_neoTRNG_0_valid_o_UNCONNECTED : STD_LOGIC;
  signal NLW_neoTRNG_0_data_o_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
neoTRNG_0: component design_1_neoTRNG_0_0
     port map (
      clk_i => '0',
      data_o(7 downto 0) => NLW_neoTRNG_0_data_o_UNCONNECTED(7 downto 0),
      enable_i => '0',
      valid_o => NLW_neoTRNG_0_valid_o_UNCONNECTED
    );
end STRUCTURE;
