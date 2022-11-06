-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Sun Oct 23 16:36:09 2022
-- Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0/Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0_stub.vhdl
-- Design      : Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0 is
  Port ( 
    rst : in STD_LOGIC;
    o_en : out STD_LOGIC;
    o_mlen : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_olen : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_write_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_read_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_done : in STD_LOGIC;
    i_dyn_done : in STD_LOGIC;
    i_key_en : in STD_LOGIC;
    i_key_mlen : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_key_olen : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_key_write_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_key_read_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_key_done : out STD_LOGIC;
    o_key_dyn_done : out STD_LOGIC;
    i_sam_en : in STD_LOGIC;
    i_sam_mlen : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_sam_olen : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_sam_write_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_sam_read_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_sam_done : out STD_LOGIC;
    o_sam_dyn_done : out STD_LOGIC
  );

end Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0;

architecture stub of Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rst,o_en,o_mlen[31:0],o_olen[31:0],o_write_adr[31:0],o_read_adr[31:0],i_done,i_dyn_done,i_key_en,i_key_mlen[31:0],i_key_olen[31:0],i_key_write_adr[31:0],i_key_read_adr[31:0],o_key_done,o_key_dyn_done,i_sam_en,i_sam_mlen[31:0],i_sam_olen[31:0],i_sam_write_adr[31:0],i_sam_read_adr[31:0],o_sam_done,o_sam_dyn_done";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mayo_hash_arbiter,Vivado 2020.2";
begin
end;
