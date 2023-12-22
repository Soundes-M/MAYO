-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Sat Dec  9 16:22:21 2023
-- Host        : zenith running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/osm/Documents/Sect/SECT-MAYO/MAYO/vivado/hw-mayo/hw-mayo.gen/sources_1/bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_tdp_SmallBRAM_1_0_0/Mayo_sign_with_zynq_tdp_SmallBRAM_1_0_0_stub.vhdl
-- Design      : Mayo_sign_with_zynq_tdp_SmallBRAM_1_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mayo_sign_with_zynq_tdp_SmallBRAM_1_0_0 is
  Port ( 
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    rsta : in STD_LOGIC;
    rstb : in STD_LOGIC;
    regcea : in STD_LOGIC;
    regceb : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end Mayo_sign_with_zynq_tdp_SmallBRAM_1_0_0;

architecture stub of Mayo_sign_with_zynq_tdp_SmallBRAM_1_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "addra[31:0],addrb[31:0],dina[31:0],dinb[31:0],clka,clkb,wea[3:0],web[3:0],ena,enb,rsta,rstb,regcea,regceb,douta[31:0],doutb[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "tdp_SmallBRAM_1,Vivado 2020.2";
begin
end;
