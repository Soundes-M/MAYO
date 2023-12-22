-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Sat Dec  9 15:37:22 2023
-- Host        : zenith running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/osm/Documents/Sect/SECT-MAYO/MAYO/vivado/hw-mayo/hw-mayo.gen/sources_1/bd/Mayo_sign/ip/Mayo_sign_aes_128_ctr_0_1/Mayo_sign_aes_128_ctr_0_1_stub.vhdl
-- Design      : Mayo_sign_aes_128_ctr_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mayo_sign_aes_128_ctr_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    o_valid : out STD_LOGIC;
    o_random_data : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );

end Mayo_sign_aes_128_ctr_0_1;

architecture stub of Mayo_sign_aes_128_ctr_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,en,o_valid,o_random_data[127:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "aes_128_ctr,Vivado 2020.2";
begin
end;
