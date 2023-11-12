-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Sun Nov 12 18:18:09 2023
-- Host        : zenith running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/osm/Documents/Sect/SECT-MAYO/MAYO/vivado/hw-mayo/hw-mayo.gen/sources_1/bd/Mayo_sign/ip/Mayo_sign_mayo_trng_arbiter_0_0/Mayo_sign_mayo_trng_arbiter_0_0_stub.vhdl
-- Design      : Mayo_sign_mayo_trng_arbiter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mayo_sign_mayo_trng_arbiter_0_0 is
  Port ( 
    i_trng_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    o_trng_r : out STD_LOGIC;
    o_trng_w : out STD_LOGIC;
    o_trng_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_trng_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_trng_valid : in STD_LOGIC;
    i_trng_done : in STD_LOGIC;
    i_trng0_r : in STD_LOGIC;
    i_trng0_w : in STD_LOGIC;
    i_trng0_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_trng0_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_trng0_valid : out STD_LOGIC;
    o_trng0_done : out STD_LOGIC;
    i_trng1_r : in STD_LOGIC;
    i_trng1_w : in STD_LOGIC;
    i_trng1_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_trng1_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_trng1_valid : out STD_LOGIC;
    o_trng1_done : out STD_LOGIC;
    i_trng2_r : in STD_LOGIC;
    i_trng2_w : in STD_LOGIC;
    i_trng2_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_trng2_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_trng2_valid : out STD_LOGIC;
    o_trng2_done : out STD_LOGIC
  );

end Mayo_sign_mayo_trng_arbiter_0_0;

architecture stub of Mayo_sign_mayo_trng_arbiter_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_trng_sel[1:0],o_trng_r,o_trng_w,o_trng_data[31:0],i_trng_data[31:0],i_trng_valid,i_trng_done,i_trng0_r,i_trng0_w,i_trng0_data[31:0],o_trng0_data[31:0],o_trng0_valid,o_trng0_done,i_trng1_r,i_trng1_w,i_trng1_data[31:0],o_trng1_data[31:0],o_trng1_valid,o_trng1_done,i_trng2_r,i_trng2_w,i_trng2_data[31:0],o_trng2_data[31:0],o_trng2_valid,o_trng2_done";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mayo_trng_arbiter,Vivado 2020.2";
begin
end;
