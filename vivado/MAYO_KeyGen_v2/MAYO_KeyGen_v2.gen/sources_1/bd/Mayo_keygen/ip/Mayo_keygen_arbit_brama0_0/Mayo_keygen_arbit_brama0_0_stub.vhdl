-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Mon Jan 16 19:40:38 2023
-- Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ip/Mayo_keygen_arbit_brama0_0/Mayo_keygen_arbit_brama0_0_stub.vhdl
-- Design      : Mayo_keygen_arbit_brama0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mayo_keygen_arbit_brama0_0 is
  Port ( 
    BRAM_add_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_en : in STD_LOGIC;
    BRAM_add_rst : in STD_LOGIC;
    BRAM_add_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_add_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_en : in STD_LOGIC;
    BRAM_lin_rst : in STD_LOGIC;
    BRAM_lin_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_lin_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_en : in STD_LOGIC;
    BRAM_neg_rst : in STD_LOGIC;
    BRAM_neg_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_neg_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_en : in STD_LOGIC;
    BRAM_red_rst : in STD_LOGIC;
    BRAM_red_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_red_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_key_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_key_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_key_en : in STD_LOGIC;
    BRAM_key_rst : in STD_LOGIC;
    BRAM_key_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_key_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_en : in STD_LOGIC;
    BRAM_sam_rst : in STD_LOGIC;
    BRAM_sam_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_sam_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_en : in STD_LOGIC;
    BRAM_hash_rst : in STD_LOGIC;
    BRAM_hash_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_hash_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_en : out STD_LOGIC;
    BRAM_rst : out STD_LOGIC;
    BRAM_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    add_control : in STD_LOGIC;
    lin_control : in STD_LOGIC;
    neg_control : in STD_LOGIC;
    red_control : in STD_LOGIC;
    sam_control : in STD_LOGIC;
    hash_control : in STD_LOGIC;
    bram_control : in STD_LOGIC
  );

end Mayo_keygen_arbit_brama0_0;

architecture stub of Mayo_keygen_arbit_brama0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "BRAM_add_din[31:0],BRAM_add_addr[31:0],BRAM_add_en,BRAM_add_rst,BRAM_add_we[3:0],BRAM_add_dout[31:0],BRAM_lin_din[31:0],BRAM_lin_addr[31:0],BRAM_lin_en,BRAM_lin_rst,BRAM_lin_we[3:0],BRAM_lin_dout[31:0],BRAM_neg_din[31:0],BRAM_neg_addr[31:0],BRAM_neg_en,BRAM_neg_rst,BRAM_neg_we[3:0],BRAM_neg_dout[31:0],BRAM_red_din[31:0],BRAM_red_addr[31:0],BRAM_red_en,BRAM_red_rst,BRAM_red_we[3:0],BRAM_red_dout[31:0],BRAM_key_din[31:0],BRAM_key_addr[31:0],BRAM_key_en,BRAM_key_rst,BRAM_key_we[3:0],BRAM_key_dout[31:0],BRAM_sam_din[31:0],BRAM_sam_addr[31:0],BRAM_sam_en,BRAM_sam_rst,BRAM_sam_we[3:0],BRAM_sam_dout[31:0],BRAM_hash_din[31:0],BRAM_hash_addr[31:0],BRAM_hash_en,BRAM_hash_rst,BRAM_hash_we[3:0],BRAM_hash_dout[31:0],BRAM_din[31:0],BRAM_addr[31:0],BRAM_en,BRAM_rst,BRAM_we[3:0],BRAM_dout[31:0],add_control,lin_control,neg_control,red_control,sam_control,hash_control,bram_control";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mayo_bram_arbiter,Vivado 2020.2";
begin
end;
