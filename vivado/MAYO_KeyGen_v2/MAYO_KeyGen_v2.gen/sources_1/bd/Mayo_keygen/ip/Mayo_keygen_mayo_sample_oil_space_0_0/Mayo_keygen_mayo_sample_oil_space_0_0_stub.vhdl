-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue Jan 10 17:15:03 2023
-- Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ip/Mayo_keygen_mayo_sample_oil_space_0_0/Mayo_keygen_mayo_sample_oil_space_0_0_stub.vhdl
-- Design      : Mayo_keygen_mayo_sample_oil_space_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mayo_keygen_mayo_sample_oil_space_0_0 is
  Port ( 
    i_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    i_enable : in STD_LOGIC;
    o_done : out STD_LOGIC;
    i_oil_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_trng_r : out STD_LOGIC;
    o_trng_w : out STD_LOGIC;
    o_trng_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_trng_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_trng_valid : in STD_LOGIC;
    i_trng_done : in STD_LOGIC;
    i_memb_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memb_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memb_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memb_en : out STD_LOGIC;
    o_memb_rst : out STD_LOGIC;
    o_memb_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_controlb : out STD_LOGIC;
    o_trng_sel : out STD_LOGIC
  );

end Mayo_keygen_mayo_sample_oil_space_0_0;

architecture stub of Mayo_keygen_mayo_sample_oil_space_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_clk,rst,i_enable,o_done,i_oil_addr[31:0],o_trng_r,o_trng_w,o_trng_data[31:0],i_trng_data[31:0],i_trng_valid,i_trng_done,i_memb_dout[31:0],o_memb_din[31:0],o_memb_addr[31:0],o_memb_en,o_memb_rst,o_memb_we[3:0],o_controlb,o_trng_sel";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mayo_sample_oil_space,Vivado 2020.2";
begin
end;
