-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Sat Jun 24 11:48:20 2023
-- Host        : osm-hzb running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_mayo_sample_oil_0_0/Mayo_sign_with_zynq_mayo_sample_oil_0_0_stub.vhdl
-- Design      : Mayo_sign_with_zynq_mayo_sample_oil_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mayo_sign_with_zynq_mayo_sample_oil_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    o_ret : out STD_LOGIC;
    o_done : out STD_LOGIC;
    i_mem0a_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0a_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0a_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0a_en : out STD_LOGIC;
    o_mem0a_rst : out STD_LOGIC;
    o_mem0a_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_control0a : out STD_LOGIC;
    i_mem0b_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0b_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0b_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0b_en : out STD_LOGIC;
    o_mem0b_rst : out STD_LOGIC;
    o_mem0b_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_control0b : out STD_LOGIC;
    i_mem1a_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem1a_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem1a_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem1a_en : out STD_LOGIC;
    o_mem1a_rst : out STD_LOGIC;
    o_mem1a_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_control1a : out STD_LOGIC
  );

end Mayo_sign_with_zynq_mayo_sample_oil_0_0;

architecture stub of Mayo_sign_with_zynq_mayo_sample_oil_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,en,o_ret,o_done,i_mem0a_dout[31:0],o_mem0a_din[31:0],o_mem0a_addr[31:0],o_mem0a_en,o_mem0a_rst,o_mem0a_we[3:0],o_control0a,i_mem0b_dout[31:0],o_mem0b_din[31:0],o_mem0b_addr[31:0],o_mem0b_en,o_mem0b_rst,o_mem0b_we[3:0],o_control0b,i_mem1a_dout[31:0],o_mem1a_din[31:0],o_mem1a_addr[31:0],o_mem1a_en,o_mem1a_rst,o_mem1a_we[3:0],o_control1a";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mayo_sample_oil,Vivado 2020.2";
begin
end;
