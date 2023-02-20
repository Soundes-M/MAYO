-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue Jan 10 17:14:51 2023
-- Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ip/Mayo_keygen_TRNG_0_0/Mayo_keygen_TRNG_0_0_stub.vhdl
-- Design      : Mayo_keygen_TRNG_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mayo_keygen_TRNG_0_0 is
  Port ( 
    CLK_I : in STD_LOGIC;
    RST : in STD_LOGIC;
    R_I : in STD_LOGIC;
    W_I : in STD_LOGIC;
    TRNG_DATA_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRNG_DATA_O : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRNG_VALID_O : out STD_LOGIC;
    TRNG_DONE_O : out STD_LOGIC
  );

end Mayo_keygen_TRNG_0_0;

architecture stub of Mayo_keygen_TRNG_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK_I,RST,R_I,W_I,TRNG_DATA_I[31:0],TRNG_DATA_O[31:0],TRNG_VALID_O,TRNG_DONE_O";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "TRNG,Vivado 2020.2";
begin
end;