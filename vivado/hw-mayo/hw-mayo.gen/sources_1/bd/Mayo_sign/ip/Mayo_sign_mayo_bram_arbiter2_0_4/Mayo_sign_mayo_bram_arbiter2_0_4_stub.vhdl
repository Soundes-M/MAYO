-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Sun Nov 12 18:18:16 2023
-- Host        : zenith running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/osm/Documents/Sect/SECT-MAYO/MAYO/vivado/hw-mayo/hw-mayo.gen/sources_1/bd/Mayo_sign/ip/Mayo_sign_mayo_bram_arbiter2_0_4/Mayo_sign_mayo_bram_arbiter2_0_4_stub.vhdl
-- Design      : Mayo_sign_mayo_bram_arbiter2_0_4
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mayo_sign_mayo_bram_arbiter2_0_4 is
  Port ( 
    BRAM_sign_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sign_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sign_en : in STD_LOGIC;
    BRAM_sign_rst : in STD_LOGIC;
    BRAM_sign_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_sign_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sign_control : in STD_LOGIC;
    BRAM_add_vec_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_vec_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_vec_en : in STD_LOGIC;
    BRAM_add_vec_rst : in STD_LOGIC;
    BRAM_add_vec_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_add_vec_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_vec_control : in STD_LOGIC;
    BRAM_lin_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_en : in STD_LOGIC;
    BRAM_lin_rst : in STD_LOGIC;
    BRAM_lin_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_lin_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_control : in STD_LOGIC;
    BRAM_neg_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_en : in STD_LOGIC;
    BRAM_neg_rst : in STD_LOGIC;
    BRAM_neg_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_neg_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_control : in STD_LOGIC;
    BRAM_red_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_en : in STD_LOGIC;
    BRAM_red_rst : in STD_LOGIC;
    BRAM_red_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_red_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_control : in STD_LOGIC;
    BRAM_sam_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_en : in STD_LOGIC;
    BRAM_sam_rst : in STD_LOGIC;
    BRAM_sam_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_sam_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_control : in STD_LOGIC;
    BRAM_memcpy0_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy0_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy0_en : in STD_LOGIC;
    BRAM_memcpy0_rst : in STD_LOGIC;
    BRAM_memcpy0_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_memcpy0_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy0_control : in STD_LOGIC;
    BRAM_memcpy1_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy1_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy1_en : in STD_LOGIC;
    BRAM_memcpy1_rst : in STD_LOGIC;
    BRAM_memcpy1_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_memcpy1_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy1_control : in STD_LOGIC;
    BRAM_p1p1t_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_p1p1t_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_p1p1t_en : in STD_LOGIC;
    BRAM_p1p1t_rst : in STD_LOGIC;
    BRAM_p1p1t_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_p1p1t_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_p1p1t_control : in STD_LOGIC;
    BRAM_red_ext_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_ext_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_ext_en : in STD_LOGIC;
    BRAM_red_ext_rst : in STD_LOGIC;
    BRAM_red_ext_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_red_ext_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_ext_control : in STD_LOGIC;
    BRAM_sam_vin_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_vin_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_vin_en : in STD_LOGIC;
    BRAM_sam_vin_rst : in STD_LOGIC;
    BRAM_sam_vin_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_sam_vin_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_vin_control : in STD_LOGIC;
    BRAM_sam_oil_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_oil_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_oil_en : in STD_LOGIC;
    BRAM_sam_oil_rst : in STD_LOGIC;
    BRAM_sam_oil_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_sam_oil_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_oil_control : in STD_LOGIC;
    BRAM_add_oil_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_oil_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_oil_en : in STD_LOGIC;
    BRAM_add_oil_rst : in STD_LOGIC;
    BRAM_add_oil_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_add_oil_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_oil_control : in STD_LOGIC;
    BRAM_hash_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_en : in STD_LOGIC;
    BRAM_hash_rst : in STD_LOGIC;
    BRAM_hash_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_hash_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_control : in STD_LOGIC;
    BRAM_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_en : out STD_LOGIC;
    BRAM_rst : out STD_LOGIC;
    BRAM_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_dout : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end Mayo_sign_mayo_bram_arbiter2_0_4;

architecture stub of Mayo_sign_mayo_bram_arbiter2_0_4 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "BRAM_sign_din[31:0],BRAM_sign_addr[31:0],BRAM_sign_en,BRAM_sign_rst,BRAM_sign_we[3:0],BRAM_sign_dout[31:0],BRAM_sign_control,BRAM_add_vec_din[31:0],BRAM_add_vec_addr[31:0],BRAM_add_vec_en,BRAM_add_vec_rst,BRAM_add_vec_we[3:0],BRAM_add_vec_dout[31:0],BRAM_add_vec_control,BRAM_lin_din[31:0],BRAM_lin_addr[31:0],BRAM_lin_en,BRAM_lin_rst,BRAM_lin_we[3:0],BRAM_lin_dout[31:0],BRAM_lin_control,BRAM_neg_din[31:0],BRAM_neg_addr[31:0],BRAM_neg_en,BRAM_neg_rst,BRAM_neg_we[3:0],BRAM_neg_dout[31:0],BRAM_neg_control,BRAM_red_din[31:0],BRAM_red_addr[31:0],BRAM_red_en,BRAM_red_rst,BRAM_red_we[3:0],BRAM_red_dout[31:0],BRAM_red_control,BRAM_sam_din[31:0],BRAM_sam_addr[31:0],BRAM_sam_en,BRAM_sam_rst,BRAM_sam_we[3:0],BRAM_sam_dout[31:0],BRAM_sam_control,BRAM_memcpy0_din[31:0],BRAM_memcpy0_addr[31:0],BRAM_memcpy0_en,BRAM_memcpy0_rst,BRAM_memcpy0_we[3:0],BRAM_memcpy0_dout[31:0],BRAM_memcpy0_control,BRAM_memcpy1_din[31:0],BRAM_memcpy1_addr[31:0],BRAM_memcpy1_en,BRAM_memcpy1_rst,BRAM_memcpy1_we[3:0],BRAM_memcpy1_dout[31:0],BRAM_memcpy1_control,BRAM_p1p1t_din[31:0],BRAM_p1p1t_addr[31:0],BRAM_p1p1t_en,BRAM_p1p1t_rst,BRAM_p1p1t_we[3:0],BRAM_p1p1t_dout[31:0],BRAM_p1p1t_control,BRAM_red_ext_din[31:0],BRAM_red_ext_addr[31:0],BRAM_red_ext_en,BRAM_red_ext_rst,BRAM_red_ext_we[3:0],BRAM_red_ext_dout[31:0],BRAM_red_ext_control,BRAM_sam_vin_din[31:0],BRAM_sam_vin_addr[31:0],BRAM_sam_vin_en,BRAM_sam_vin_rst,BRAM_sam_vin_we[3:0],BRAM_sam_vin_dout[31:0],BRAM_sam_vin_control,BRAM_sam_oil_din[31:0],BRAM_sam_oil_addr[31:0],BRAM_sam_oil_en,BRAM_sam_oil_rst,BRAM_sam_oil_we[3:0],BRAM_sam_oil_dout[31:0],BRAM_sam_oil_control,BRAM_add_oil_din[31:0],BRAM_add_oil_addr[31:0],BRAM_add_oil_en,BRAM_add_oil_rst,BRAM_add_oil_we[3:0],BRAM_add_oil_dout[31:0],BRAM_add_oil_control,BRAM_hash_din[31:0],BRAM_hash_addr[31:0],BRAM_hash_en,BRAM_hash_rst,BRAM_hash_we[3:0],BRAM_hash_dout[31:0],BRAM_hash_control,BRAM_din[31:0],BRAM_addr[31:0],BRAM_en,BRAM_rst,BRAM_we[3:0],BRAM_dout[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mayo_bram_arbiter2,Vivado 2020.2";
begin
end;
