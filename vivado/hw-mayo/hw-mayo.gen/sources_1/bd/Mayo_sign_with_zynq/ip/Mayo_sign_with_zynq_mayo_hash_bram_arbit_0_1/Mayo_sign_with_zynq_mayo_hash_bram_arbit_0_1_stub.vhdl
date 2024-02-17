-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Sat Dec  9 16:23:34 2023
-- Host        : zenith running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/osm/Documents/Sect/SECT-MAYO/MAYO/vivado/hw-mayo/hw-mayo.gen/sources_1/bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_mayo_hash_bram_arbit_0_1/Mayo_sign_with_zynq_mayo_hash_bram_arbit_0_1_stub.vhdl
-- Design      : Mayo_sign_with_zynq_mayo_hash_bram_arbit_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mayo_sign_with_zynq_mayo_hash_bram_arbit_0_1 is
  Port ( 
    bram_sel : in STD_LOGIC;
    hash_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    hash_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    hash_en : in STD_LOGIC;
    hash_control : in STD_LOGIC;
    hash_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    hash_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM0_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM0_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM0_en : out STD_LOGIC;
    BRAM0_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM0_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM0_rst : out STD_LOGIC;
    BRAM0_control : out STD_LOGIC;
    BRAM1_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM1_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM1_en : out STD_LOGIC;
    BRAM1_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM1_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM1_rst : out STD_LOGIC;
    BRAM1_control : out STD_LOGIC
  );

end Mayo_sign_with_zynq_mayo_hash_bram_arbit_0_1;

architecture stub of Mayo_sign_with_zynq_mayo_hash_bram_arbit_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "bram_sel,hash_din[31:0],hash_addr[31:0],hash_en,hash_control,hash_we[3:0],hash_dout[31:0],BRAM0_din[31:0],BRAM0_addr[31:0],BRAM0_en,BRAM0_we[3:0],BRAM0_dout[31:0],BRAM0_rst,BRAM0_control,BRAM1_din[31:0],BRAM1_addr[31:0],BRAM1_en,BRAM1_we[3:0],BRAM1_dout[31:0],BRAM1_rst,BRAM1_control";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mayo_hash_bram_arbiter,Vivado 2020.2";
begin
end;