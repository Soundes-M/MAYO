-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Thu Nov 24 23:40:11 2022
-- Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_mayo_reduce_0_0/Mayo_keygen_no_zynq_mayo_reduce_0_0_stub.vhdl
-- Design      : Mayo_keygen_no_zynq_mayo_reduce_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mayo_keygen_no_zynq_mayo_reduce_0_0 is
  Port ( 
    i_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    i_enable : in STD_LOGIC;
    i_bram_sel : in STD_LOGIC;
    i_len : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_dout0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_addr0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_din0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_en0 : out STD_LOGIC;
    o_rst0 : out STD_LOGIC;
    o_we0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    i_dout1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_addr1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_din1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_en1 : out STD_LOGIC;
    o_rst1 : out STD_LOGIC;
    o_we1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_done : out STD_LOGIC;
    o_control0 : out STD_LOGIC;
    o_control1 : out STD_LOGIC
  );

end Mayo_keygen_no_zynq_mayo_reduce_0_0;

architecture stub of Mayo_keygen_no_zynq_mayo_reduce_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_clk,rst,i_enable,i_bram_sel,i_len[31:0],i_adr[31:0],i_dout0[31:0],o_addr0[31:0],o_din0[31:0],o_en0,o_rst0,o_we0[3:0],i_dout1[31:0],o_addr1[31:0],o_din1[31:0],o_en1,o_rst1,o_we1[3:0],o_done,o_control0,o_control1";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mayo_reduce,Vivado 2020.2";
begin
end;
