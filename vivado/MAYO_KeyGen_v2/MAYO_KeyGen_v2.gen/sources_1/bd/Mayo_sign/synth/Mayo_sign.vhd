--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
--Date        : Mon May  8 12:25:28 2023
--Host        : osm-hzb running 64-bit Ubuntu 20.04.6 LTS
--Command     : generate_target Mayo_sign.bd
--Design      : Mayo_sign
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BigBRAM1_imp_FGVWIZ is
  port (
    BRAM_Add_oil_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_oil_ctrl : in STD_LOGIC;
    BRAM_Add_oil_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_oil_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_oil_en : in STD_LOGIC;
    BRAM_Add_oil_rst : in STD_LOGIC;
    BRAM_Add_oil_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Add_vec_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_vec_ctrl : in STD_LOGIC;
    BRAM_Add_vec_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_vec_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_vec_en : in STD_LOGIC;
    BRAM_Add_vec_rst : in STD_LOGIC;
    BRAM_Add_vec_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Hash_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Hash_ctrl : in STD_LOGIC;
    BRAM_Hash_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Hash_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Hash_en : in STD_LOGIC;
    BRAM_Hash_rst : in STD_LOGIC;
    BRAM_Hash_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Lin_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Lin_ctrl : in STD_LOGIC;
    BRAM_Lin_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Lin_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Lin_en : in STD_LOGIC;
    BRAM_Lin_rst : in STD_LOGIC;
    BRAM_Lin_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Memcpy0_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Memcpy0_ctrl : in STD_LOGIC;
    BRAM_Memcpy0_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Memcpy0_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Memcpy0_en : in STD_LOGIC;
    BRAM_Memcpy0_rst : in STD_LOGIC;
    BRAM_Memcpy0_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Memcpy1_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Memcpy1_ctrl : in STD_LOGIC;
    BRAM_Memcpy1_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Memcpy1_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Memcpy1_en : in STD_LOGIC;
    BRAM_Memcpy1_rst : in STD_LOGIC;
    BRAM_Memcpy1_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_P1P1T_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_P1P1T_ctrl : in STD_LOGIC;
    BRAM_P1P1T_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_P1P1T_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_P1P1T_en : in STD_LOGIC;
    BRAM_P1P1T_rst : in STD_LOGIC;
    BRAM_P1P1T_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Red_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Red_ctrl : in STD_LOGIC;
    BRAM_Red_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Red_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Red_en : in STD_LOGIC;
    BRAM_Red_rst : in STD_LOGIC;
    BRAM_Red_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Sam_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_ctrl : in STD_LOGIC;
    BRAM_Sam_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_en : in STD_LOGIC;
    BRAM_Sam_oil_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_oil_ctrl : in STD_LOGIC;
    BRAM_Sam_oil_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_oil_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_oil_en : in STD_LOGIC;
    BRAM_Sam_oil_rst : in STD_LOGIC;
    BRAM_Sam_oil_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Sam_rst : in STD_LOGIC;
    BRAM_Sam_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Sign_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sign_ctrl : in STD_LOGIC;
    BRAM_Sign_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sign_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sign_en : in STD_LOGIC;
    BRAM_Sign_rst : in STD_LOGIC;
    BRAM_Sign_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_0 : in STD_LOGIC;
    zero0 : in STD_LOGIC;
    zero32 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    zero4 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end BigBRAM1_imp_FGVWIZ;

architecture STRUCTURE of BigBRAM1_imp_FGVWIZ is
  component Mayo_sign_SmallBRAM8K_1 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC
  );
  end component Mayo_sign_SmallBRAM8K_1;
  component Mayo_sign_mayo_bram_arbiter2_0_2 is
  port (
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
  end component Mayo_sign_mayo_bram_arbiter2_0_2;
  component Mayo_sign_mayo_bram_arbiter2_1_0 is
  port (
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
  end component Mayo_sign_mayo_bram_arbiter2_1_0;
  signal BRAM_Add_vec_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_vec_1_CTRL : STD_LOGIC;
  signal BRAM_Add_vec_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_vec_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_vec_1_EN : STD_LOGIC;
  signal BRAM_Add_vec_1_RST : STD_LOGIC;
  signal BRAM_Add_vec_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_Hash_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Hash_1_CTRL : STD_LOGIC;
  signal BRAM_Hash_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Hash_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Hash_1_EN : STD_LOGIC;
  signal BRAM_Hash_1_RST : STD_LOGIC;
  signal BRAM_Hash_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_Lin_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Lin_1_CTRL : STD_LOGIC;
  signal BRAM_Lin_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Lin_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Lin_1_EN : STD_LOGIC;
  signal BRAM_Lin_1_RST : STD_LOGIC;
  signal BRAM_Lin_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_Sign_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Sign_1_CTRL : STD_LOGIC;
  signal BRAM_Sign_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Sign_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Sign_1_EN : STD_LOGIC;
  signal BRAM_Sign_1_RST : STD_LOGIC;
  signal BRAM_Sign_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_memcpy0_din1_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_memcpy0_en1_1 : STD_LOGIC;
  signal BRAM_memcpy0_we1_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BigBRAM_2_256K_douta : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BigBRAM_2_256K_doutb : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_CTRL : STD_LOGIC;
  signal Conn1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_EN : STD_LOGIC;
  signal Conn1_RST : STD_LOGIC;
  signal Conn1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_CTRL : STD_LOGIC;
  signal Conn2_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_EN : STD_LOGIC;
  signal Conn2_RST : STD_LOGIC;
  signal Conn2_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn3_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_CTRL : STD_LOGIC;
  signal Conn3_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_EN : STD_LOGIC;
  signal Conn3_RST : STD_LOGIC;
  signal Conn3_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn4_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_CTRL : STD_LOGIC;
  signal Conn4_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_EN : STD_LOGIC;
  signal Conn4_RST : STD_LOGIC;
  signal Conn4_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn5_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn5_CTRL : STD_LOGIC;
  signal Conn5_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn5_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn5_EN : STD_LOGIC;
  signal Conn5_RST : STD_LOGIC;
  signal Conn5_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn6_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn6_CTRL : STD_LOGIC;
  signal Conn6_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn6_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn6_EN : STD_LOGIC;
  signal Conn6_RST : STD_LOGIC;
  signal Conn6_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn7_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn7_CTRL : STD_LOGIC;
  signal Conn7_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn7_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn7_EN : STD_LOGIC;
  signal Conn7_RST : STD_LOGIC;
  signal Conn7_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clk_0_1 : STD_LOGIC;
  signal mayo_bram_arbiter2_0_BRAM_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_bram_arbiter2_0_BRAM_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_bram_arbiter2_0_BRAM_en : STD_LOGIC;
  signal mayo_bram_arbiter2_0_BRAM_rst : STD_LOGIC;
  signal mayo_bram_arbiter2_0_BRAM_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_bram_arbiter2_1_BRAM_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_bram_arbiter2_1_BRAM_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_bram_arbiter2_1_BRAM_en : STD_LOGIC;
  signal mayo_bram_arbiter2_1_BRAM_rst : STD_LOGIC;
  signal mayo_bram_arbiter2_1_BRAM_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_BigBRAM_2_256K_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_BigBRAM_2_256K_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_mayo_bram_arbiter2_a_BRAM_memcpy0_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_a_BRAM_memcpy1_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_a_BRAM_neg_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_a_BRAM_p1p1t_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_a_BRAM_red_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_a_BRAM_red_ext_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_a_BRAM_sam_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_a_BRAM_sam_oil_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_a_BRAM_sam_vin_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_add_oil_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_add_vec_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_hash_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_lin_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_neg_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_red_ext_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_sam_vin_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_sign_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  BRAM_Add_oil_dout(31 downto 0) <= Conn1_DOUT(31 downto 0);
  BRAM_Add_vec_1_ADDR(31 downto 0) <= BRAM_Add_vec_addr(31 downto 0);
  BRAM_Add_vec_1_CTRL <= BRAM_Add_vec_ctrl;
  BRAM_Add_vec_1_DIN(31 downto 0) <= BRAM_Add_vec_din(31 downto 0);
  BRAM_Add_vec_1_EN <= BRAM_Add_vec_en;
  BRAM_Add_vec_1_RST <= BRAM_Add_vec_rst;
  BRAM_Add_vec_1_WE(3 downto 0) <= BRAM_Add_vec_we(3 downto 0);
  BRAM_Add_vec_dout(31 downto 0) <= BRAM_Add_vec_1_DOUT(31 downto 0);
  BRAM_Hash_1_ADDR(31 downto 0) <= BRAM_Hash_addr(31 downto 0);
  BRAM_Hash_1_CTRL <= BRAM_Hash_ctrl;
  BRAM_Hash_1_DIN(31 downto 0) <= BRAM_Hash_din(31 downto 0);
  BRAM_Hash_1_EN <= BRAM_Hash_en;
  BRAM_Hash_1_RST <= BRAM_Hash_rst;
  BRAM_Hash_1_WE(3 downto 0) <= BRAM_Hash_we(3 downto 0);
  BRAM_Hash_dout(31 downto 0) <= BRAM_Hash_1_DOUT(31 downto 0);
  BRAM_Lin_1_ADDR(31 downto 0) <= BRAM_Lin_addr(31 downto 0);
  BRAM_Lin_1_CTRL <= BRAM_Lin_ctrl;
  BRAM_Lin_1_DIN(31 downto 0) <= BRAM_Lin_din(31 downto 0);
  BRAM_Lin_1_EN <= BRAM_Lin_en;
  BRAM_Lin_1_RST <= BRAM_Lin_rst;
  BRAM_Lin_1_WE(3 downto 0) <= BRAM_Lin_we(3 downto 0);
  BRAM_Lin_dout(31 downto 0) <= BRAM_Lin_1_DOUT(31 downto 0);
  BRAM_Memcpy0_dout(31 downto 0) <= Conn6_DOUT(31 downto 0);
  BRAM_Memcpy1_dout(31 downto 0) <= Conn7_DOUT(31 downto 0);
  BRAM_P1P1T_dout(31 downto 0) <= Conn2_DOUT(31 downto 0);
  BRAM_Red_dout(31 downto 0) <= Conn4_DOUT(31 downto 0);
  BRAM_Sam_dout(31 downto 0) <= Conn5_DOUT(31 downto 0);
  BRAM_Sam_oil_dout(31 downto 0) <= Conn3_DOUT(31 downto 0);
  BRAM_Sign_1_ADDR(31 downto 0) <= BRAM_Sign_addr(31 downto 0);
  BRAM_Sign_1_CTRL <= BRAM_Sign_ctrl;
  BRAM_Sign_1_DIN(31 downto 0) <= BRAM_Sign_din(31 downto 0);
  BRAM_Sign_1_EN <= BRAM_Sign_en;
  BRAM_Sign_1_RST <= BRAM_Sign_rst;
  BRAM_Sign_1_WE(3 downto 0) <= BRAM_Sign_we(3 downto 0);
  BRAM_Sign_dout(31 downto 0) <= BRAM_Sign_1_DOUT(31 downto 0);
  BRAM_memcpy0_din1_1(31 downto 0) <= zero32(31 downto 0);
  BRAM_memcpy0_en1_1 <= zero0;
  BRAM_memcpy0_we1_1(3 downto 0) <= zero4(3 downto 0);
  Conn1_ADDR(31 downto 0) <= BRAM_Add_oil_addr(31 downto 0);
  Conn1_CTRL <= BRAM_Add_oil_ctrl;
  Conn1_DIN(31 downto 0) <= BRAM_Add_oil_din(31 downto 0);
  Conn1_EN <= BRAM_Add_oil_en;
  Conn1_RST <= BRAM_Add_oil_rst;
  Conn1_WE(3 downto 0) <= BRAM_Add_oil_we(3 downto 0);
  Conn2_ADDR(31 downto 0) <= BRAM_P1P1T_addr(31 downto 0);
  Conn2_CTRL <= BRAM_P1P1T_ctrl;
  Conn2_DIN(31 downto 0) <= BRAM_P1P1T_din(31 downto 0);
  Conn2_EN <= BRAM_P1P1T_en;
  Conn2_RST <= BRAM_P1P1T_rst;
  Conn2_WE(3 downto 0) <= BRAM_P1P1T_we(3 downto 0);
  Conn3_ADDR(31 downto 0) <= BRAM_Sam_oil_addr(31 downto 0);
  Conn3_CTRL <= BRAM_Sam_oil_ctrl;
  Conn3_DIN(31 downto 0) <= BRAM_Sam_oil_din(31 downto 0);
  Conn3_EN <= BRAM_Sam_oil_en;
  Conn3_RST <= BRAM_Sam_oil_rst;
  Conn3_WE(3 downto 0) <= BRAM_Sam_oil_we(3 downto 0);
  Conn4_ADDR(31 downto 0) <= BRAM_Red_addr(31 downto 0);
  Conn4_CTRL <= BRAM_Red_ctrl;
  Conn4_DIN(31 downto 0) <= BRAM_Red_din(31 downto 0);
  Conn4_EN <= BRAM_Red_en;
  Conn4_RST <= BRAM_Red_rst;
  Conn4_WE(3 downto 0) <= BRAM_Red_we(3 downto 0);
  Conn5_ADDR(31 downto 0) <= BRAM_Sam_addr(31 downto 0);
  Conn5_CTRL <= BRAM_Sam_ctrl;
  Conn5_DIN(31 downto 0) <= BRAM_Sam_din(31 downto 0);
  Conn5_EN <= BRAM_Sam_en;
  Conn5_RST <= BRAM_Sam_rst;
  Conn5_WE(3 downto 0) <= BRAM_Sam_we(3 downto 0);
  Conn6_ADDR(31 downto 0) <= BRAM_Memcpy0_addr(31 downto 0);
  Conn6_CTRL <= BRAM_Memcpy0_ctrl;
  Conn6_DIN(31 downto 0) <= BRAM_Memcpy0_din(31 downto 0);
  Conn6_EN <= BRAM_Memcpy0_en;
  Conn6_RST <= BRAM_Memcpy0_rst;
  Conn6_WE(3 downto 0) <= BRAM_Memcpy0_we(3 downto 0);
  Conn7_ADDR(31 downto 0) <= BRAM_Memcpy1_addr(31 downto 0);
  Conn7_CTRL <= BRAM_Memcpy1_ctrl;
  Conn7_DIN(31 downto 0) <= BRAM_Memcpy1_din(31 downto 0);
  Conn7_EN <= BRAM_Memcpy1_en;
  Conn7_RST <= BRAM_Memcpy1_rst;
  Conn7_WE(3 downto 0) <= BRAM_Memcpy1_we(3 downto 0);
  clk_0_1 <= clk_0;
BigBRAM_2_256K: component Mayo_sign_SmallBRAM8K_1
     port map (
      addra(31 downto 0) => mayo_bram_arbiter2_1_BRAM_addr(31 downto 0),
      addrb(31 downto 0) => mayo_bram_arbiter2_0_BRAM_addr(31 downto 0),
      clka => clk_0_1,
      clkb => clk_0_1,
      dina(31 downto 0) => mayo_bram_arbiter2_1_BRAM_din(31 downto 0),
      dinb(31 downto 0) => mayo_bram_arbiter2_0_BRAM_din(31 downto 0),
      douta(31 downto 0) => BigBRAM_2_256K_douta(31 downto 0),
      doutb(31 downto 0) => BigBRAM_2_256K_doutb(31 downto 0),
      ena => mayo_bram_arbiter2_1_BRAM_en,
      enb => mayo_bram_arbiter2_0_BRAM_en,
      rsta => mayo_bram_arbiter2_1_BRAM_rst,
      rsta_busy => NLW_BigBRAM_2_256K_rsta_busy_UNCONNECTED,
      rstb => mayo_bram_arbiter2_0_BRAM_rst,
      rstb_busy => NLW_BigBRAM_2_256K_rstb_busy_UNCONNECTED,
      wea(3 downto 0) => mayo_bram_arbiter2_1_BRAM_we(3 downto 0),
      web(3 downto 0) => mayo_bram_arbiter2_0_BRAM_we(3 downto 0)
    );
mayo_bram_arbiter2_a: component Mayo_sign_mayo_bram_arbiter2_1_0
     port map (
      BRAM_add_oil_addr(31 downto 0) => Conn1_ADDR(31 downto 0),
      BRAM_add_oil_control => Conn1_CTRL,
      BRAM_add_oil_din(31 downto 0) => Conn1_DIN(31 downto 0),
      BRAM_add_oil_dout(31 downto 0) => Conn1_DOUT(31 downto 0),
      BRAM_add_oil_en => Conn1_EN,
      BRAM_add_oil_rst => Conn1_RST,
      BRAM_add_oil_we(3 downto 0) => Conn1_WE(3 downto 0),
      BRAM_add_vec_addr(31 downto 0) => BRAM_Add_vec_1_ADDR(31 downto 0),
      BRAM_add_vec_control => BRAM_Add_vec_1_CTRL,
      BRAM_add_vec_din(31 downto 0) => BRAM_Add_vec_1_DIN(31 downto 0),
      BRAM_add_vec_dout(31 downto 0) => BRAM_Add_vec_1_DOUT(31 downto 0),
      BRAM_add_vec_en => BRAM_Add_vec_1_EN,
      BRAM_add_vec_rst => BRAM_Add_vec_1_RST,
      BRAM_add_vec_we(3 downto 0) => BRAM_Add_vec_1_WE(3 downto 0),
      BRAM_addr(31 downto 0) => mayo_bram_arbiter2_1_BRAM_addr(31 downto 0),
      BRAM_din(31 downto 0) => mayo_bram_arbiter2_1_BRAM_din(31 downto 0),
      BRAM_dout(31 downto 0) => BigBRAM_2_256K_douta(31 downto 0),
      BRAM_en => mayo_bram_arbiter2_1_BRAM_en,
      BRAM_hash_addr(31 downto 0) => BRAM_Hash_1_ADDR(31 downto 0),
      BRAM_hash_control => BRAM_Hash_1_CTRL,
      BRAM_hash_din(31 downto 0) => BRAM_Hash_1_DIN(31 downto 0),
      BRAM_hash_dout(31 downto 0) => BRAM_Hash_1_DOUT(31 downto 0),
      BRAM_hash_en => BRAM_Hash_1_EN,
      BRAM_hash_rst => BRAM_Hash_1_RST,
      BRAM_hash_we(3 downto 0) => BRAM_Hash_1_WE(3 downto 0),
      BRAM_lin_addr(31 downto 0) => BRAM_Lin_1_ADDR(31 downto 0),
      BRAM_lin_control => BRAM_Lin_1_CTRL,
      BRAM_lin_din(31 downto 0) => BRAM_Lin_1_DIN(31 downto 0),
      BRAM_lin_dout(31 downto 0) => BRAM_Lin_1_DOUT(31 downto 0),
      BRAM_lin_en => BRAM_Lin_1_EN,
      BRAM_lin_rst => BRAM_Lin_1_RST,
      BRAM_lin_we(3 downto 0) => BRAM_Lin_1_WE(3 downto 0),
      BRAM_memcpy0_addr(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_memcpy0_control => BRAM_memcpy0_en1_1,
      BRAM_memcpy0_din(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_memcpy0_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_memcpy0_dout_UNCONNECTED(31 downto 0),
      BRAM_memcpy0_en => BRAM_memcpy0_en1_1,
      BRAM_memcpy0_rst => BRAM_memcpy0_en1_1,
      BRAM_memcpy0_we(3 downto 0) => BRAM_memcpy0_we1_1(3 downto 0),
      BRAM_memcpy1_addr(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_memcpy1_control => BRAM_memcpy0_en1_1,
      BRAM_memcpy1_din(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_memcpy1_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_memcpy1_dout_UNCONNECTED(31 downto 0),
      BRAM_memcpy1_en => BRAM_memcpy0_en1_1,
      BRAM_memcpy1_rst => BRAM_memcpy0_en1_1,
      BRAM_memcpy1_we(3 downto 0) => BRAM_memcpy0_we1_1(3 downto 0),
      BRAM_neg_addr(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_neg_control => BRAM_memcpy0_en1_1,
      BRAM_neg_din(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_neg_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_neg_dout_UNCONNECTED(31 downto 0),
      BRAM_neg_en => BRAM_memcpy0_en1_1,
      BRAM_neg_rst => BRAM_memcpy0_en1_1,
      BRAM_neg_we(3 downto 0) => BRAM_memcpy0_we1_1(3 downto 0),
      BRAM_p1p1t_addr(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_p1p1t_control => BRAM_memcpy0_en1_1,
      BRAM_p1p1t_din(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_p1p1t_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_p1p1t_dout_UNCONNECTED(31 downto 0),
      BRAM_p1p1t_en => BRAM_memcpy0_en1_1,
      BRAM_p1p1t_rst => BRAM_memcpy0_en1_1,
      BRAM_p1p1t_we(3 downto 0) => BRAM_memcpy0_we1_1(3 downto 0),
      BRAM_red_addr(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_red_control => BRAM_memcpy0_en1_1,
      BRAM_red_din(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_red_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_red_dout_UNCONNECTED(31 downto 0),
      BRAM_red_en => BRAM_memcpy0_en1_1,
      BRAM_red_ext_addr(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_red_ext_control => BRAM_memcpy0_en1_1,
      BRAM_red_ext_din(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_red_ext_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_red_ext_dout_UNCONNECTED(31 downto 0),
      BRAM_red_ext_en => BRAM_memcpy0_en1_1,
      BRAM_red_ext_rst => BRAM_memcpy0_en1_1,
      BRAM_red_ext_we(3 downto 0) => BRAM_memcpy0_we1_1(3 downto 0),
      BRAM_red_rst => BRAM_memcpy0_en1_1,
      BRAM_red_we(3 downto 0) => BRAM_memcpy0_we1_1(3 downto 0),
      BRAM_rst => mayo_bram_arbiter2_1_BRAM_rst,
      BRAM_sam_addr(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_sam_control => BRAM_memcpy0_en1_1,
      BRAM_sam_din(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_sam_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_sam_dout_UNCONNECTED(31 downto 0),
      BRAM_sam_en => BRAM_memcpy0_en1_1,
      BRAM_sam_oil_addr(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_sam_oil_control => BRAM_memcpy0_en1_1,
      BRAM_sam_oil_din(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_sam_oil_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_sam_oil_dout_UNCONNECTED(31 downto 0),
      BRAM_sam_oil_en => BRAM_memcpy0_en1_1,
      BRAM_sam_oil_rst => BRAM_memcpy0_en1_1,
      BRAM_sam_oil_we(3 downto 0) => BRAM_memcpy0_we1_1(3 downto 0),
      BRAM_sam_rst => BRAM_memcpy0_en1_1,
      BRAM_sam_vin_addr(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_sam_vin_control => BRAM_memcpy0_en1_1,
      BRAM_sam_vin_din(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_sam_vin_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_sam_vin_dout_UNCONNECTED(31 downto 0),
      BRAM_sam_vin_en => BRAM_memcpy0_en1_1,
      BRAM_sam_vin_rst => BRAM_memcpy0_en1_1,
      BRAM_sam_vin_we(3 downto 0) => BRAM_memcpy0_we1_1(3 downto 0),
      BRAM_sam_we(3 downto 0) => BRAM_memcpy0_we1_1(3 downto 0),
      BRAM_sign_addr(31 downto 0) => BRAM_Sign_1_ADDR(31 downto 0),
      BRAM_sign_control => BRAM_Sign_1_CTRL,
      BRAM_sign_din(31 downto 0) => BRAM_Sign_1_DIN(31 downto 0),
      BRAM_sign_dout(31 downto 0) => BRAM_Sign_1_DOUT(31 downto 0),
      BRAM_sign_en => BRAM_Sign_1_EN,
      BRAM_sign_rst => BRAM_Sign_1_RST,
      BRAM_sign_we(3 downto 0) => BRAM_Sign_1_WE(3 downto 0),
      BRAM_we(3 downto 0) => mayo_bram_arbiter2_1_BRAM_we(3 downto 0)
    );
mayo_bram_arbiter2_b: component Mayo_sign_mayo_bram_arbiter2_0_2
     port map (
      BRAM_add_oil_addr(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_add_oil_control => BRAM_memcpy0_en1_1,
      BRAM_add_oil_din(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_add_oil_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_add_oil_dout_UNCONNECTED(31 downto 0),
      BRAM_add_oil_en => BRAM_memcpy0_en1_1,
      BRAM_add_oil_rst => BRAM_memcpy0_en1_1,
      BRAM_add_oil_we(3 downto 0) => BRAM_memcpy0_we1_1(3 downto 0),
      BRAM_add_vec_addr(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_add_vec_control => BRAM_memcpy0_en1_1,
      BRAM_add_vec_din(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_add_vec_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_add_vec_dout_UNCONNECTED(31 downto 0),
      BRAM_add_vec_en => BRAM_memcpy0_en1_1,
      BRAM_add_vec_rst => BRAM_memcpy0_en1_1,
      BRAM_add_vec_we(3 downto 0) => BRAM_memcpy0_we1_1(3 downto 0),
      BRAM_addr(31 downto 0) => mayo_bram_arbiter2_0_BRAM_addr(31 downto 0),
      BRAM_din(31 downto 0) => mayo_bram_arbiter2_0_BRAM_din(31 downto 0),
      BRAM_dout(31 downto 0) => BigBRAM_2_256K_doutb(31 downto 0),
      BRAM_en => mayo_bram_arbiter2_0_BRAM_en,
      BRAM_hash_addr(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_hash_control => BRAM_memcpy0_en1_1,
      BRAM_hash_din(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_hash_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_hash_dout_UNCONNECTED(31 downto 0),
      BRAM_hash_en => BRAM_memcpy0_en1_1,
      BRAM_hash_rst => BRAM_memcpy0_en1_1,
      BRAM_hash_we(3 downto 0) => BRAM_memcpy0_we1_1(3 downto 0),
      BRAM_lin_addr(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_lin_control => BRAM_memcpy0_en1_1,
      BRAM_lin_din(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_lin_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_lin_dout_UNCONNECTED(31 downto 0),
      BRAM_lin_en => BRAM_memcpy0_en1_1,
      BRAM_lin_rst => BRAM_memcpy0_en1_1,
      BRAM_lin_we(3 downto 0) => BRAM_memcpy0_we1_1(3 downto 0),
      BRAM_memcpy0_addr(31 downto 0) => Conn6_ADDR(31 downto 0),
      BRAM_memcpy0_control => Conn6_CTRL,
      BRAM_memcpy0_din(31 downto 0) => Conn6_DIN(31 downto 0),
      BRAM_memcpy0_dout(31 downto 0) => Conn6_DOUT(31 downto 0),
      BRAM_memcpy0_en => Conn6_EN,
      BRAM_memcpy0_rst => Conn6_RST,
      BRAM_memcpy0_we(3 downto 0) => Conn6_WE(3 downto 0),
      BRAM_memcpy1_addr(31 downto 0) => Conn7_ADDR(31 downto 0),
      BRAM_memcpy1_control => Conn7_CTRL,
      BRAM_memcpy1_din(31 downto 0) => Conn7_DIN(31 downto 0),
      BRAM_memcpy1_dout(31 downto 0) => Conn7_DOUT(31 downto 0),
      BRAM_memcpy1_en => Conn7_EN,
      BRAM_memcpy1_rst => Conn7_RST,
      BRAM_memcpy1_we(3 downto 0) => Conn7_WE(3 downto 0),
      BRAM_neg_addr(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_neg_control => BRAM_memcpy0_en1_1,
      BRAM_neg_din(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_neg_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_neg_dout_UNCONNECTED(31 downto 0),
      BRAM_neg_en => BRAM_memcpy0_en1_1,
      BRAM_neg_rst => BRAM_memcpy0_en1_1,
      BRAM_neg_we(3 downto 0) => BRAM_memcpy0_we1_1(3 downto 0),
      BRAM_p1p1t_addr(31 downto 0) => Conn2_ADDR(31 downto 0),
      BRAM_p1p1t_control => Conn2_CTRL,
      BRAM_p1p1t_din(31 downto 0) => Conn2_DIN(31 downto 0),
      BRAM_p1p1t_dout(31 downto 0) => Conn2_DOUT(31 downto 0),
      BRAM_p1p1t_en => Conn2_EN,
      BRAM_p1p1t_rst => Conn2_RST,
      BRAM_p1p1t_we(3 downto 0) => Conn2_WE(3 downto 0),
      BRAM_red_addr(31 downto 0) => Conn4_ADDR(31 downto 0),
      BRAM_red_control => Conn4_CTRL,
      BRAM_red_din(31 downto 0) => Conn4_DIN(31 downto 0),
      BRAM_red_dout(31 downto 0) => Conn4_DOUT(31 downto 0),
      BRAM_red_en => Conn4_EN,
      BRAM_red_ext_addr(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_red_ext_control => BRAM_memcpy0_en1_1,
      BRAM_red_ext_din(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_red_ext_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_red_ext_dout_UNCONNECTED(31 downto 0),
      BRAM_red_ext_en => BRAM_memcpy0_en1_1,
      BRAM_red_ext_rst => BRAM_memcpy0_en1_1,
      BRAM_red_ext_we(3 downto 0) => BRAM_memcpy0_we1_1(3 downto 0),
      BRAM_red_rst => Conn4_RST,
      BRAM_red_we(3 downto 0) => Conn4_WE(3 downto 0),
      BRAM_rst => mayo_bram_arbiter2_0_BRAM_rst,
      BRAM_sam_addr(31 downto 0) => Conn5_ADDR(31 downto 0),
      BRAM_sam_control => Conn5_CTRL,
      BRAM_sam_din(31 downto 0) => Conn5_DIN(31 downto 0),
      BRAM_sam_dout(31 downto 0) => Conn5_DOUT(31 downto 0),
      BRAM_sam_en => Conn5_EN,
      BRAM_sam_oil_addr(31 downto 0) => Conn3_ADDR(31 downto 0),
      BRAM_sam_oil_control => Conn3_CTRL,
      BRAM_sam_oil_din(31 downto 0) => Conn3_DIN(31 downto 0),
      BRAM_sam_oil_dout(31 downto 0) => Conn3_DOUT(31 downto 0),
      BRAM_sam_oil_en => Conn3_EN,
      BRAM_sam_oil_rst => Conn3_RST,
      BRAM_sam_oil_we(3 downto 0) => Conn3_WE(3 downto 0),
      BRAM_sam_rst => Conn5_RST,
      BRAM_sam_vin_addr(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_sam_vin_control => BRAM_memcpy0_en1_1,
      BRAM_sam_vin_din(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_sam_vin_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_sam_vin_dout_UNCONNECTED(31 downto 0),
      BRAM_sam_vin_en => BRAM_memcpy0_en1_1,
      BRAM_sam_vin_rst => BRAM_memcpy0_en1_1,
      BRAM_sam_vin_we(3 downto 0) => BRAM_memcpy0_we1_1(3 downto 0),
      BRAM_sam_we(3 downto 0) => Conn5_WE(3 downto 0),
      BRAM_sign_addr(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_sign_control => BRAM_memcpy0_en1_1,
      BRAM_sign_din(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_sign_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_sign_dout_UNCONNECTED(31 downto 0),
      BRAM_sign_en => BRAM_memcpy0_en1_1,
      BRAM_sign_rst => BRAM_memcpy0_en1_1,
      BRAM_sign_we(3 downto 0) => BRAM_memcpy0_we1_1(3 downto 0),
      BRAM_we(3 downto 0) => mayo_bram_arbiter2_0_BRAM_we(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BigBRAM2_imp_1PB6TEW is
  port (
    BRAM_Add_vec1_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_vec1_ctrl : in STD_LOGIC;
    BRAM_Add_vec1_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_vec1_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_vec1_en : in STD_LOGIC;
    BRAM_Add_vec1_rst : in STD_LOGIC;
    BRAM_Add_vec1_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Add_vec_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_vec_ctrl : in STD_LOGIC;
    BRAM_Add_vec_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_vec_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_vec_en : in STD_LOGIC;
    BRAM_Add_vec_rst : in STD_LOGIC;
    BRAM_Add_vec_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Lin1_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Lin1_ctrl : in STD_LOGIC;
    BRAM_Lin1_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Lin1_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Lin1_en : in STD_LOGIC;
    BRAM_Lin1_rst : in STD_LOGIC;
    BRAM_Lin1_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Lin_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Lin_ctrl : in STD_LOGIC;
    BRAM_Lin_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Lin_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Lin_en : in STD_LOGIC;
    BRAM_Lin_rst : in STD_LOGIC;
    BRAM_Lin_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Memcpy0_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Memcpy0_ctrl : in STD_LOGIC;
    BRAM_Memcpy0_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Memcpy0_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Memcpy0_en : in STD_LOGIC;
    BRAM_Memcpy0_rst : in STD_LOGIC;
    BRAM_Memcpy0_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Neg_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Neg_ctrl : in STD_LOGIC;
    BRAM_Neg_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Neg_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Neg_en : in STD_LOGIC;
    BRAM_Neg_rst : in STD_LOGIC;
    BRAM_Neg_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Red_ext1_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Red_ext1_ctrl : in STD_LOGIC;
    BRAM_Red_ext1_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Red_ext1_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Red_ext1_en : in STD_LOGIC;
    BRAM_Red_ext1_rst : in STD_LOGIC;
    BRAM_Red_ext1_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Sign1_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sign1_ctrl : in STD_LOGIC;
    BRAM_Sign1_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sign1_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sign1_en : in STD_LOGIC;
    BRAM_Sign1_rst : in STD_LOGIC;
    BRAM_Sign1_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Sign_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sign_ctrl : in STD_LOGIC;
    BRAM_Sign_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sign_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sign_en : in STD_LOGIC;
    BRAM_Sign_rst : in STD_LOGIC;
    BRAM_Sign_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Zero0 : in STD_LOGIC;
    Zero32 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Zero4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC
  );
end BigBRAM2_imp_1PB6TEW;

architecture STRUCTURE of BigBRAM2_imp_1PB6TEW is
  component Mayo_sign_SmallBRAM8K_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC
  );
  end component Mayo_sign_SmallBRAM8K_0;
  component Mayo_sign_mayo_bram_arbiter2_0_4 is
  port (
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
  end component Mayo_sign_mayo_bram_arbiter2_0_4;
  component Mayo_sign_mayo_bram_arbiter2_0_3 is
  port (
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
  end component Mayo_sign_mayo_bram_arbiter2_0_3;
  signal BRAM_Add_vec1_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_vec1_1_CTRL : STD_LOGIC;
  signal BRAM_Add_vec1_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_vec1_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_vec1_1_EN : STD_LOGIC;
  signal BRAM_Add_vec1_1_RST : STD_LOGIC;
  signal BRAM_Add_vec1_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_Add_vec_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_vec_1_CTRL : STD_LOGIC;
  signal BRAM_Add_vec_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_vec_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_vec_1_EN : STD_LOGIC;
  signal BRAM_Add_vec_1_RST : STD_LOGIC;
  signal BRAM_Add_vec_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_Lin1_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Lin1_1_CTRL : STD_LOGIC;
  signal BRAM_Lin1_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Lin1_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Lin1_1_EN : STD_LOGIC;
  signal BRAM_Lin1_1_RST : STD_LOGIC;
  signal BRAM_Lin1_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_Lin_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Lin_1_CTRL : STD_LOGIC;
  signal BRAM_Lin_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Lin_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Lin_1_EN : STD_LOGIC;
  signal BRAM_Lin_1_RST : STD_LOGIC;
  signal BRAM_Lin_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_neg_din1_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_neg_en1_1 : STD_LOGIC;
  signal BRAM_neg_we1_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BigBRAM_3_256K_douta : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BigBRAM_3_256K_doutb : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_CTRL : STD_LOGIC;
  signal Conn1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_EN : STD_LOGIC;
  signal Conn1_RST : STD_LOGIC;
  signal Conn1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_CTRL : STD_LOGIC;
  signal Conn2_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_EN : STD_LOGIC;
  signal Conn2_RST : STD_LOGIC;
  signal Conn2_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn3_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_CTRL : STD_LOGIC;
  signal Conn3_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_EN : STD_LOGIC;
  signal Conn3_RST : STD_LOGIC;
  signal Conn3_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn4_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_CTRL : STD_LOGIC;
  signal Conn4_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_EN : STD_LOGIC;
  signal Conn4_RST : STD_LOGIC;
  signal Conn4_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn5_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn5_CTRL : STD_LOGIC;
  signal Conn5_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn5_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn5_EN : STD_LOGIC;
  signal Conn5_RST : STD_LOGIC;
  signal Conn5_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clka_0_1 : STD_LOGIC;
  signal mayo_bram_arbiter2_0_BRAM_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_bram_arbiter2_0_BRAM_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_bram_arbiter2_0_BRAM_en : STD_LOGIC;
  signal mayo_bram_arbiter2_0_BRAM_rst : STD_LOGIC;
  signal mayo_bram_arbiter2_0_BRAM_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_bram_arbiter2_1_BRAM_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_bram_arbiter2_1_BRAM_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_bram_arbiter2_1_BRAM_en : STD_LOGIC;
  signal mayo_bram_arbiter2_1_BRAM_rst : STD_LOGIC;
  signal mayo_bram_arbiter2_1_BRAM_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_BigBRAM_3_256K_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_BigBRAM_3_256K_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_mayo_bram_arbiter2_a_BRAM_add_oil_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_a_BRAM_hash_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_a_BRAM_memcpy0_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_a_BRAM_memcpy1_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_a_BRAM_p1p1t_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_a_BRAM_red_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_a_BRAM_red_ext_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_a_BRAM_sam_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_a_BRAM_sam_oil_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_a_BRAM_sam_vin_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_add_oil_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_hash_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_memcpy1_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_neg_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_p1p1t_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_red_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_sam_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_sam_oil_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_sam_vin_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  BRAM_Add_vec1_1_ADDR(31 downto 0) <= BRAM_Add_vec1_addr(31 downto 0);
  BRAM_Add_vec1_1_CTRL <= BRAM_Add_vec1_ctrl;
  BRAM_Add_vec1_1_DIN(31 downto 0) <= BRAM_Add_vec1_din(31 downto 0);
  BRAM_Add_vec1_1_EN <= BRAM_Add_vec1_en;
  BRAM_Add_vec1_1_RST <= BRAM_Add_vec1_rst;
  BRAM_Add_vec1_1_WE(3 downto 0) <= BRAM_Add_vec1_we(3 downto 0);
  BRAM_Add_vec1_dout(31 downto 0) <= BRAM_Add_vec1_1_DOUT(31 downto 0);
  BRAM_Add_vec_1_ADDR(31 downto 0) <= BRAM_Add_vec_addr(31 downto 0);
  BRAM_Add_vec_1_CTRL <= BRAM_Add_vec_ctrl;
  BRAM_Add_vec_1_DIN(31 downto 0) <= BRAM_Add_vec_din(31 downto 0);
  BRAM_Add_vec_1_EN <= BRAM_Add_vec_en;
  BRAM_Add_vec_1_RST <= BRAM_Add_vec_rst;
  BRAM_Add_vec_1_WE(3 downto 0) <= BRAM_Add_vec_we(3 downto 0);
  BRAM_Add_vec_dout(31 downto 0) <= BRAM_Add_vec_1_DOUT(31 downto 0);
  BRAM_Lin1_1_ADDR(31 downto 0) <= BRAM_Lin1_addr(31 downto 0);
  BRAM_Lin1_1_CTRL <= BRAM_Lin1_ctrl;
  BRAM_Lin1_1_DIN(31 downto 0) <= BRAM_Lin1_din(31 downto 0);
  BRAM_Lin1_1_EN <= BRAM_Lin1_en;
  BRAM_Lin1_1_RST <= BRAM_Lin1_rst;
  BRAM_Lin1_1_WE(3 downto 0) <= BRAM_Lin1_we(3 downto 0);
  BRAM_Lin1_dout(31 downto 0) <= BRAM_Lin1_1_DOUT(31 downto 0);
  BRAM_Lin_1_ADDR(31 downto 0) <= BRAM_Lin_addr(31 downto 0);
  BRAM_Lin_1_CTRL <= BRAM_Lin_ctrl;
  BRAM_Lin_1_DIN(31 downto 0) <= BRAM_Lin_din(31 downto 0);
  BRAM_Lin_1_EN <= BRAM_Lin_en;
  BRAM_Lin_1_RST <= BRAM_Lin_rst;
  BRAM_Lin_1_WE(3 downto 0) <= BRAM_Lin_we(3 downto 0);
  BRAM_Lin_dout(31 downto 0) <= BRAM_Lin_1_DOUT(31 downto 0);
  BRAM_Memcpy0_dout(31 downto 0) <= Conn4_DOUT(31 downto 0);
  BRAM_Neg_dout(31 downto 0) <= Conn3_DOUT(31 downto 0);
  BRAM_Red_ext1_dout(31 downto 0) <= Conn5_DOUT(31 downto 0);
  BRAM_Sign1_dout(31 downto 0) <= Conn2_DOUT(31 downto 0);
  BRAM_Sign_dout(31 downto 0) <= Conn1_DOUT(31 downto 0);
  BRAM_neg_din1_1(31 downto 0) <= Zero32(31 downto 0);
  BRAM_neg_en1_1 <= Zero0;
  BRAM_neg_we1_1(3 downto 0) <= Zero4(3 downto 0);
  Conn1_ADDR(31 downto 0) <= BRAM_Sign_addr(31 downto 0);
  Conn1_CTRL <= BRAM_Sign_ctrl;
  Conn1_DIN(31 downto 0) <= BRAM_Sign_din(31 downto 0);
  Conn1_EN <= BRAM_Sign_en;
  Conn1_RST <= BRAM_Sign_rst;
  Conn1_WE(3 downto 0) <= BRAM_Sign_we(3 downto 0);
  Conn2_ADDR(31 downto 0) <= BRAM_Sign1_addr(31 downto 0);
  Conn2_CTRL <= BRAM_Sign1_ctrl;
  Conn2_DIN(31 downto 0) <= BRAM_Sign1_din(31 downto 0);
  Conn2_EN <= BRAM_Sign1_en;
  Conn2_RST <= BRAM_Sign1_rst;
  Conn2_WE(3 downto 0) <= BRAM_Sign1_we(3 downto 0);
  Conn3_ADDR(31 downto 0) <= BRAM_Neg_addr(31 downto 0);
  Conn3_CTRL <= BRAM_Neg_ctrl;
  Conn3_DIN(31 downto 0) <= BRAM_Neg_din(31 downto 0);
  Conn3_EN <= BRAM_Neg_en;
  Conn3_RST <= BRAM_Neg_rst;
  Conn3_WE(3 downto 0) <= BRAM_Neg_we(3 downto 0);
  Conn4_ADDR(31 downto 0) <= BRAM_Memcpy0_addr(31 downto 0);
  Conn4_CTRL <= BRAM_Memcpy0_ctrl;
  Conn4_DIN(31 downto 0) <= BRAM_Memcpy0_din(31 downto 0);
  Conn4_EN <= BRAM_Memcpy0_en;
  Conn4_RST <= BRAM_Memcpy0_rst;
  Conn4_WE(3 downto 0) <= BRAM_Memcpy0_we(3 downto 0);
  Conn5_ADDR(31 downto 0) <= BRAM_Red_ext1_addr(31 downto 0);
  Conn5_CTRL <= BRAM_Red_ext1_ctrl;
  Conn5_DIN(31 downto 0) <= BRAM_Red_ext1_din(31 downto 0);
  Conn5_EN <= BRAM_Red_ext1_en;
  Conn5_RST <= BRAM_Red_ext1_rst;
  Conn5_WE(3 downto 0) <= BRAM_Red_ext1_we(3 downto 0);
  clka_0_1 <= clk;
BigBRAM_3_256K: component Mayo_sign_SmallBRAM8K_0
     port map (
      addra(31 downto 0) => mayo_bram_arbiter2_1_BRAM_addr(31 downto 0),
      addrb(31 downto 0) => mayo_bram_arbiter2_0_BRAM_addr(31 downto 0),
      clka => clka_0_1,
      clkb => clka_0_1,
      dina(31 downto 0) => mayo_bram_arbiter2_1_BRAM_din(31 downto 0),
      dinb(31 downto 0) => mayo_bram_arbiter2_0_BRAM_din(31 downto 0),
      douta(31 downto 0) => BigBRAM_3_256K_douta(31 downto 0),
      doutb(31 downto 0) => BigBRAM_3_256K_doutb(31 downto 0),
      ena => mayo_bram_arbiter2_1_BRAM_en,
      enb => mayo_bram_arbiter2_0_BRAM_en,
      rsta => mayo_bram_arbiter2_1_BRAM_rst,
      rsta_busy => NLW_BigBRAM_3_256K_rsta_busy_UNCONNECTED,
      rstb => mayo_bram_arbiter2_0_BRAM_rst,
      rstb_busy => NLW_BigBRAM_3_256K_rstb_busy_UNCONNECTED,
      wea(3 downto 0) => mayo_bram_arbiter2_1_BRAM_we(3 downto 0),
      web(3 downto 0) => mayo_bram_arbiter2_0_BRAM_we(3 downto 0)
    );
mayo_bram_arbiter2_a: component Mayo_sign_mayo_bram_arbiter2_0_4
     port map (
      BRAM_add_oil_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_add_oil_control => BRAM_neg_en1_1,
      BRAM_add_oil_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_add_oil_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_add_oil_dout_UNCONNECTED(31 downto 0),
      BRAM_add_oil_en => BRAM_neg_en1_1,
      BRAM_add_oil_rst => BRAM_neg_en1_1,
      BRAM_add_oil_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_add_vec_addr(31 downto 0) => BRAM_Add_vec_1_ADDR(31 downto 0),
      BRAM_add_vec_control => BRAM_Add_vec_1_CTRL,
      BRAM_add_vec_din(31 downto 0) => BRAM_Add_vec_1_DIN(31 downto 0),
      BRAM_add_vec_dout(31 downto 0) => BRAM_Add_vec_1_DOUT(31 downto 0),
      BRAM_add_vec_en => BRAM_Add_vec_1_EN,
      BRAM_add_vec_rst => BRAM_Add_vec_1_RST,
      BRAM_add_vec_we(3 downto 0) => BRAM_Add_vec_1_WE(3 downto 0),
      BRAM_addr(31 downto 0) => mayo_bram_arbiter2_1_BRAM_addr(31 downto 0),
      BRAM_din(31 downto 0) => mayo_bram_arbiter2_1_BRAM_din(31 downto 0),
      BRAM_dout(31 downto 0) => BigBRAM_3_256K_douta(31 downto 0),
      BRAM_en => mayo_bram_arbiter2_1_BRAM_en,
      BRAM_hash_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_hash_control => BRAM_neg_en1_1,
      BRAM_hash_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_hash_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_hash_dout_UNCONNECTED(31 downto 0),
      BRAM_hash_en => BRAM_neg_en1_1,
      BRAM_hash_rst => BRAM_neg_en1_1,
      BRAM_hash_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_lin_addr(31 downto 0) => BRAM_Lin_1_ADDR(31 downto 0),
      BRAM_lin_control => BRAM_Lin_1_CTRL,
      BRAM_lin_din(31 downto 0) => BRAM_Lin_1_DIN(31 downto 0),
      BRAM_lin_dout(31 downto 0) => BRAM_Lin_1_DOUT(31 downto 0),
      BRAM_lin_en => BRAM_Lin_1_EN,
      BRAM_lin_rst => BRAM_Lin_1_RST,
      BRAM_lin_we(3 downto 0) => BRAM_Lin_1_WE(3 downto 0),
      BRAM_memcpy0_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_memcpy0_control => BRAM_neg_en1_1,
      BRAM_memcpy0_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_memcpy0_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_memcpy0_dout_UNCONNECTED(31 downto 0),
      BRAM_memcpy0_en => BRAM_neg_en1_1,
      BRAM_memcpy0_rst => BRAM_neg_en1_1,
      BRAM_memcpy0_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_memcpy1_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_memcpy1_control => BRAM_neg_en1_1,
      BRAM_memcpy1_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_memcpy1_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_memcpy1_dout_UNCONNECTED(31 downto 0),
      BRAM_memcpy1_en => BRAM_neg_en1_1,
      BRAM_memcpy1_rst => BRAM_neg_en1_1,
      BRAM_memcpy1_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_neg_addr(31 downto 0) => Conn3_ADDR(31 downto 0),
      BRAM_neg_control => Conn3_CTRL,
      BRAM_neg_din(31 downto 0) => Conn3_DIN(31 downto 0),
      BRAM_neg_dout(31 downto 0) => Conn3_DOUT(31 downto 0),
      BRAM_neg_en => Conn3_EN,
      BRAM_neg_rst => Conn3_RST,
      BRAM_neg_we(3 downto 0) => Conn3_WE(3 downto 0),
      BRAM_p1p1t_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_p1p1t_control => BRAM_neg_en1_1,
      BRAM_p1p1t_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_p1p1t_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_p1p1t_dout_UNCONNECTED(31 downto 0),
      BRAM_p1p1t_en => BRAM_neg_en1_1,
      BRAM_p1p1t_rst => BRAM_neg_en1_1,
      BRAM_p1p1t_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_red_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_red_control => BRAM_neg_en1_1,
      BRAM_red_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_red_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_red_dout_UNCONNECTED(31 downto 0),
      BRAM_red_en => BRAM_neg_en1_1,
      BRAM_red_ext_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_red_ext_control => BRAM_neg_en1_1,
      BRAM_red_ext_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_red_ext_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_red_ext_dout_UNCONNECTED(31 downto 0),
      BRAM_red_ext_en => BRAM_neg_en1_1,
      BRAM_red_ext_rst => BRAM_neg_en1_1,
      BRAM_red_ext_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_red_rst => BRAM_neg_en1_1,
      BRAM_red_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_rst => mayo_bram_arbiter2_1_BRAM_rst,
      BRAM_sam_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_sam_control => BRAM_neg_en1_1,
      BRAM_sam_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_sam_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_sam_dout_UNCONNECTED(31 downto 0),
      BRAM_sam_en => BRAM_neg_en1_1,
      BRAM_sam_oil_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_sam_oil_control => BRAM_neg_en1_1,
      BRAM_sam_oil_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_sam_oil_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_sam_oil_dout_UNCONNECTED(31 downto 0),
      BRAM_sam_oil_en => BRAM_neg_en1_1,
      BRAM_sam_oil_rst => BRAM_neg_en1_1,
      BRAM_sam_oil_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_sam_rst => BRAM_neg_en1_1,
      BRAM_sam_vin_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_sam_vin_control => BRAM_neg_en1_1,
      BRAM_sam_vin_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_sam_vin_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_sam_vin_dout_UNCONNECTED(31 downto 0),
      BRAM_sam_vin_en => BRAM_neg_en1_1,
      BRAM_sam_vin_rst => BRAM_neg_en1_1,
      BRAM_sam_vin_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_sam_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_sign_addr(31 downto 0) => Conn1_ADDR(31 downto 0),
      BRAM_sign_control => Conn1_CTRL,
      BRAM_sign_din(31 downto 0) => Conn1_DIN(31 downto 0),
      BRAM_sign_dout(31 downto 0) => Conn1_DOUT(31 downto 0),
      BRAM_sign_en => Conn1_EN,
      BRAM_sign_rst => Conn1_RST,
      BRAM_sign_we(3 downto 0) => Conn1_WE(3 downto 0),
      BRAM_we(3 downto 0) => mayo_bram_arbiter2_1_BRAM_we(3 downto 0)
    );
mayo_bram_arbiter2_b: component Mayo_sign_mayo_bram_arbiter2_0_3
     port map (
      BRAM_add_oil_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_add_oil_control => BRAM_neg_en1_1,
      BRAM_add_oil_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_add_oil_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_add_oil_dout_UNCONNECTED(31 downto 0),
      BRAM_add_oil_en => BRAM_neg_en1_1,
      BRAM_add_oil_rst => BRAM_neg_en1_1,
      BRAM_add_oil_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_add_vec_addr(31 downto 0) => BRAM_Add_vec1_1_ADDR(31 downto 0),
      BRAM_add_vec_control => BRAM_Add_vec1_1_CTRL,
      BRAM_add_vec_din(31 downto 0) => BRAM_Add_vec1_1_DIN(31 downto 0),
      BRAM_add_vec_dout(31 downto 0) => BRAM_Add_vec1_1_DOUT(31 downto 0),
      BRAM_add_vec_en => BRAM_Add_vec1_1_EN,
      BRAM_add_vec_rst => BRAM_Add_vec1_1_RST,
      BRAM_add_vec_we(3 downto 0) => BRAM_Add_vec1_1_WE(3 downto 0),
      BRAM_addr(31 downto 0) => mayo_bram_arbiter2_0_BRAM_addr(31 downto 0),
      BRAM_din(31 downto 0) => mayo_bram_arbiter2_0_BRAM_din(31 downto 0),
      BRAM_dout(31 downto 0) => BigBRAM_3_256K_doutb(31 downto 0),
      BRAM_en => mayo_bram_arbiter2_0_BRAM_en,
      BRAM_hash_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_hash_control => BRAM_neg_en1_1,
      BRAM_hash_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_hash_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_hash_dout_UNCONNECTED(31 downto 0),
      BRAM_hash_en => BRAM_neg_en1_1,
      BRAM_hash_rst => BRAM_neg_en1_1,
      BRAM_hash_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_lin_addr(31 downto 0) => BRAM_Lin1_1_ADDR(31 downto 0),
      BRAM_lin_control => BRAM_Lin1_1_CTRL,
      BRAM_lin_din(31 downto 0) => BRAM_Lin1_1_DIN(31 downto 0),
      BRAM_lin_dout(31 downto 0) => BRAM_Lin1_1_DOUT(31 downto 0),
      BRAM_lin_en => BRAM_Lin1_1_EN,
      BRAM_lin_rst => BRAM_Lin1_1_RST,
      BRAM_lin_we(3 downto 0) => BRAM_Lin1_1_WE(3 downto 0),
      BRAM_memcpy0_addr(31 downto 0) => Conn4_ADDR(31 downto 0),
      BRAM_memcpy0_control => Conn4_CTRL,
      BRAM_memcpy0_din(31 downto 0) => Conn4_DIN(31 downto 0),
      BRAM_memcpy0_dout(31 downto 0) => Conn4_DOUT(31 downto 0),
      BRAM_memcpy0_en => Conn4_EN,
      BRAM_memcpy0_rst => Conn4_RST,
      BRAM_memcpy0_we(3 downto 0) => Conn4_WE(3 downto 0),
      BRAM_memcpy1_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_memcpy1_control => BRAM_neg_en1_1,
      BRAM_memcpy1_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_memcpy1_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_memcpy1_dout_UNCONNECTED(31 downto 0),
      BRAM_memcpy1_en => BRAM_neg_en1_1,
      BRAM_memcpy1_rst => BRAM_neg_en1_1,
      BRAM_memcpy1_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_neg_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_neg_control => BRAM_neg_en1_1,
      BRAM_neg_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_neg_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_neg_dout_UNCONNECTED(31 downto 0),
      BRAM_neg_en => BRAM_neg_en1_1,
      BRAM_neg_rst => BRAM_neg_en1_1,
      BRAM_neg_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_p1p1t_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_p1p1t_control => BRAM_neg_en1_1,
      BRAM_p1p1t_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_p1p1t_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_p1p1t_dout_UNCONNECTED(31 downto 0),
      BRAM_p1p1t_en => BRAM_neg_en1_1,
      BRAM_p1p1t_rst => BRAM_neg_en1_1,
      BRAM_p1p1t_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_red_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_red_control => BRAM_neg_en1_1,
      BRAM_red_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_red_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_red_dout_UNCONNECTED(31 downto 0),
      BRAM_red_en => BRAM_neg_en1_1,
      BRAM_red_ext_addr(31 downto 0) => Conn5_ADDR(31 downto 0),
      BRAM_red_ext_control => Conn5_CTRL,
      BRAM_red_ext_din(31 downto 0) => Conn5_DIN(31 downto 0),
      BRAM_red_ext_dout(31 downto 0) => Conn5_DOUT(31 downto 0),
      BRAM_red_ext_en => Conn5_EN,
      BRAM_red_ext_rst => Conn5_RST,
      BRAM_red_ext_we(3 downto 0) => Conn5_WE(3 downto 0),
      BRAM_red_rst => BRAM_neg_en1_1,
      BRAM_red_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_rst => mayo_bram_arbiter2_0_BRAM_rst,
      BRAM_sam_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_sam_control => BRAM_neg_en1_1,
      BRAM_sam_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_sam_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_sam_dout_UNCONNECTED(31 downto 0),
      BRAM_sam_en => BRAM_neg_en1_1,
      BRAM_sam_oil_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_sam_oil_control => BRAM_neg_en1_1,
      BRAM_sam_oil_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_sam_oil_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_sam_oil_dout_UNCONNECTED(31 downto 0),
      BRAM_sam_oil_en => BRAM_neg_en1_1,
      BRAM_sam_oil_rst => BRAM_neg_en1_1,
      BRAM_sam_oil_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_sam_rst => BRAM_neg_en1_1,
      BRAM_sam_vin_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_sam_vin_control => BRAM_neg_en1_1,
      BRAM_sam_vin_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_sam_vin_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_sam_vin_dout_UNCONNECTED(31 downto 0),
      BRAM_sam_vin_en => BRAM_neg_en1_1,
      BRAM_sam_vin_rst => BRAM_neg_en1_1,
      BRAM_sam_vin_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_sam_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_sign_addr(31 downto 0) => Conn2_ADDR(31 downto 0),
      BRAM_sign_control => Conn2_CTRL,
      BRAM_sign_din(31 downto 0) => Conn2_DIN(31 downto 0),
      BRAM_sign_dout(31 downto 0) => Conn2_DOUT(31 downto 0),
      BRAM_sign_en => Conn2_EN,
      BRAM_sign_rst => Conn2_RST,
      BRAM_sign_we(3 downto 0) => Conn2_WE(3 downto 0),
      BRAM_we(3 downto 0) => mayo_bram_arbiter2_0_BRAM_we(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity LInear_Combination_imp_DQ7H61 is
  port (
    BRAM_O_LinArb0a_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_LinArb0a_ctrl : out STD_LOGIC;
    BRAM_O_LinArb0a_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_LinArb0a_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_LinArb0a_en : out STD_LOGIC;
    BRAM_O_LinArb0a_rst : out STD_LOGIC;
    BRAM_O_LinArb0a_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_O_LinArb0b_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_LinArb0b_ctrl : out STD_LOGIC;
    BRAM_O_LinArb0b_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_LinArb0b_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_LinArb0b_en : out STD_LOGIC;
    BRAM_O_LinArb0b_rst : out STD_LOGIC;
    BRAM_O_LinArb0b_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_O_LinArb1a_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_LinArb1a_ctrl : out STD_LOGIC;
    BRAM_O_LinArb1a_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_LinArb1a_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_LinArb1a_en : out STD_LOGIC;
    BRAM_O_LinArb1a_rst : out STD_LOGIC;
    BRAM_O_LinArb1a_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_O_LinArb2a_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_LinArb2a_ctrl : out STD_LOGIC;
    BRAM_O_LinArb2a_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_LinArb2a_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_LinArb2a_en : out STD_LOGIC;
    BRAM_O_LinArb2a_rst : out STD_LOGIC;
    BRAM_O_LinArb2a_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_O_LinArb2b_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_LinArb2b_ctrl : out STD_LOGIC;
    BRAM_O_LinArb2b_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_LinArb2b_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_LinArb2b_en : out STD_LOGIC;
    BRAM_O_LinArb2b_rst : out STD_LOGIC;
    BRAM_O_LinArb2b_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_sel : in STD_LOGIC_VECTOR ( 4 downto 0 );
    clk_0 : in STD_LOGIC;
    i_bram_halt : in STD_LOGIC;
    i_coeffs_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_enable : in STD_LOGIC;
    i_len : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_out_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_vec_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_done : out STD_LOGIC;
    rst_0 : in STD_LOGIC
  );
end LInear_Combination_imp_DQ7H61;

architecture STRUCTURE of LInear_Combination_imp_DQ7H61 is
  component Mayo_sign_mayo_lin_comb_arbiter_0_0 is
  port (
    bram_sel : in STD_LOGIC_VECTOR ( 4 downto 0 );
    o_mem0a_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mem0a_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mem0a_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mem0a_en : in STD_LOGIC;
    i_mem0a_rst : in STD_LOGIC;
    i_mem0a_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_control0a : in STD_LOGIC;
    o_mem0b_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mem0b_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mem0b_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mem0b_en : in STD_LOGIC;
    i_mem0b_rst : in STD_LOGIC;
    i_mem0b_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_control0b : in STD_LOGIC;
    o_mem1a_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mem1a_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mem1a_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mem1a_en : in STD_LOGIC;
    i_mem1a_rst : in STD_LOGIC;
    i_mem1a_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_control1a : in STD_LOGIC;
    i_BRAM0A_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM0A_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM0A_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM0A_en : out STD_LOGIC;
    o_BRAM0A_rst : out STD_LOGIC;
    o_BRAM0A_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_BRAM0A_control : out STD_LOGIC;
    i_BRAM0B_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM0B_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM0B_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM0B_en : out STD_LOGIC;
    o_BRAM0B_rst : out STD_LOGIC;
    o_BRAM0B_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_BRAM0B_control : out STD_LOGIC;
    i_BRAM1A_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM1A_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM1A_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM1A_en : out STD_LOGIC;
    o_BRAM1A_rst : out STD_LOGIC;
    o_BRAM1A_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_BRAM1A_control : out STD_LOGIC;
    i_BRAM2A_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM2A_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM2A_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM2A_en : out STD_LOGIC;
    o_BRAM2A_rst : out STD_LOGIC;
    o_BRAM2A_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_BRAM2A_control : out STD_LOGIC;
    i_BRAM2B_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM2B_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM2B_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM2B_en : out STD_LOGIC;
    o_BRAM2B_rst : out STD_LOGIC;
    o_BRAM2B_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_BRAM2B_control : out STD_LOGIC
  );
  end component Mayo_sign_mayo_lin_comb_arbiter_0_0;
  component Mayo_sign_mayo_linear_combinat_0_0 is
  port (
    i_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    i_enable : in STD_LOGIC;
    o_done : out STD_LOGIC;
    i_bram_halt : in STD_LOGIC;
    i_vec_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_coeffs_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_out_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_len : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mem0a_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0a_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0a_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0a_en : out STD_LOGIC;
    o_mem0a_rst : out STD_LOGIC;
    o_mem0a_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    i_mem0b_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0b_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0b_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0b_en : out STD_LOGIC;
    o_mem0b_rst : out STD_LOGIC;
    o_mem0b_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    i_mem1a_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem1a_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem1a_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem1a_en : out STD_LOGIC;
    o_mem1a_rst : out STD_LOGIC;
    o_mem1a_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_control0a : out STD_LOGIC;
    o_control0b : out STD_LOGIC;
    o_control1a : out STD_LOGIC
  );
  end component Mayo_sign_mayo_linear_combinat_0_0;
  signal Conn1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_CTRL : STD_LOGIC;
  signal Conn1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_EN : STD_LOGIC;
  signal Conn1_RST : STD_LOGIC;
  signal Conn1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_CTRL : STD_LOGIC;
  signal Conn2_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_EN : STD_LOGIC;
  signal Conn2_RST : STD_LOGIC;
  signal Conn2_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_lin_bram_halt : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_lin_coeffs_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_lin_enable : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_lin_len : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_lin_out_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_lin_vec_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal bram_sel_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal clk_0_1 : STD_LOGIC;
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_CTRL : STD_LOGIC;
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_EN : STD_LOGIC;
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_RST : STD_LOGIC;
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_CTRL : STD_LOGIC;
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_EN : STD_LOGIC;
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_RST : STD_LOGIC;
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_CTRL : STD_LOGIC;
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_EN : STD_LOGIC;
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_RST : STD_LOGIC;
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_linear_combinat_0_BRAM_Lin0a_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_linear_combinat_0_BRAM_Lin0a_CTRL : STD_LOGIC;
  signal mayo_linear_combinat_0_BRAM_Lin0a_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_linear_combinat_0_BRAM_Lin0a_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_linear_combinat_0_BRAM_Lin0a_EN : STD_LOGIC;
  signal mayo_linear_combinat_0_BRAM_Lin0a_RST : STD_LOGIC;
  signal mayo_linear_combinat_0_BRAM_Lin0a_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_linear_combinat_0_BRAM_Lin0b_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_linear_combinat_0_BRAM_Lin0b_CTRL : STD_LOGIC;
  signal mayo_linear_combinat_0_BRAM_Lin0b_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_linear_combinat_0_BRAM_Lin0b_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_linear_combinat_0_BRAM_Lin0b_EN : STD_LOGIC;
  signal mayo_linear_combinat_0_BRAM_Lin0b_RST : STD_LOGIC;
  signal mayo_linear_combinat_0_BRAM_Lin0b_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_linear_combinat_0_BRAM_Lin1a_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_linear_combinat_0_BRAM_Lin1a_CTRL : STD_LOGIC;
  signal mayo_linear_combinat_0_BRAM_Lin1a_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_linear_combinat_0_BRAM_Lin1a_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_linear_combinat_0_BRAM_Lin1a_EN : STD_LOGIC;
  signal mayo_linear_combinat_0_BRAM_Lin1a_RST : STD_LOGIC;
  signal mayo_linear_combinat_0_BRAM_Lin1a_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_linear_combinat_0_o_done : STD_LOGIC;
  signal rst_0_1 : STD_LOGIC;
begin
  BRAM_O_LinArb0a_addr(31 downto 0) <= Conn1_ADDR(31 downto 0);
  BRAM_O_LinArb0a_ctrl <= Conn1_CTRL;
  BRAM_O_LinArb0a_din(31 downto 0) <= Conn1_DIN(31 downto 0);
  BRAM_O_LinArb0a_en <= Conn1_EN;
  BRAM_O_LinArb0a_rst <= Conn1_RST;
  BRAM_O_LinArb0a_we(3 downto 0) <= Conn1_WE(3 downto 0);
  BRAM_O_LinArb0b_addr(31 downto 0) <= Conn2_ADDR(31 downto 0);
  BRAM_O_LinArb0b_ctrl <= Conn2_CTRL;
  BRAM_O_LinArb0b_din(31 downto 0) <= Conn2_DIN(31 downto 0);
  BRAM_O_LinArb0b_en <= Conn2_EN;
  BRAM_O_LinArb0b_rst <= Conn2_RST;
  BRAM_O_LinArb0b_we(3 downto 0) <= Conn2_WE(3 downto 0);
  BRAM_O_LinArb1a_addr(31 downto 0) <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_ADDR(31 downto 0);
  BRAM_O_LinArb1a_ctrl <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_CTRL;
  BRAM_O_LinArb1a_din(31 downto 0) <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_DIN(31 downto 0);
  BRAM_O_LinArb1a_en <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_EN;
  BRAM_O_LinArb1a_rst <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_RST;
  BRAM_O_LinArb1a_we(3 downto 0) <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_WE(3 downto 0);
  BRAM_O_LinArb2a_addr(31 downto 0) <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_ADDR(31 downto 0);
  BRAM_O_LinArb2a_ctrl <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_CTRL;
  BRAM_O_LinArb2a_din(31 downto 0) <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_DIN(31 downto 0);
  BRAM_O_LinArb2a_en <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_EN;
  BRAM_O_LinArb2a_rst <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_RST;
  BRAM_O_LinArb2a_we(3 downto 0) <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_WE(3 downto 0);
  BRAM_O_LinArb2b_addr(31 downto 0) <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_ADDR(31 downto 0);
  BRAM_O_LinArb2b_ctrl <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_CTRL;
  BRAM_O_LinArb2b_din(31 downto 0) <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_DIN(31 downto 0);
  BRAM_O_LinArb2b_en <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_EN;
  BRAM_O_LinArb2b_rst <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_RST;
  BRAM_O_LinArb2b_we(3 downto 0) <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_WE(3 downto 0);
  Conn1_DOUT(31 downto 0) <= BRAM_O_LinArb0a_dout(31 downto 0);
  Conn2_DOUT(31 downto 0) <= BRAM_O_LinArb0b_dout(31 downto 0);
  MAYO_SIGNING_FSM_0_o_lin_bram_halt <= i_bram_halt;
  MAYO_SIGNING_FSM_0_o_lin_coeffs_addr(31 downto 0) <= i_coeffs_addr(31 downto 0);
  MAYO_SIGNING_FSM_0_o_lin_enable <= i_enable;
  MAYO_SIGNING_FSM_0_o_lin_len(31 downto 0) <= i_len(31 downto 0);
  MAYO_SIGNING_FSM_0_o_lin_out_addr(31 downto 0) <= i_out_addr(31 downto 0);
  MAYO_SIGNING_FSM_0_o_lin_vec_addr(31 downto 0) <= i_vec_addr(31 downto 0);
  bram_sel_1(4 downto 0) <= bram_sel(4 downto 0);
  clk_0_1 <= clk_0;
  mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_DOUT(31 downto 0) <= BRAM_O_LinArb1a_dout(31 downto 0);
  mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_DOUT(31 downto 0) <= BRAM_O_LinArb2a_dout(31 downto 0);
  mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_DOUT(31 downto 0) <= BRAM_O_LinArb2b_dout(31 downto 0);
  o_done <= mayo_linear_combinat_0_o_done;
  rst_0_1 <= rst_0;
mayo_lin_comb_arbiter_0: component Mayo_sign_mayo_lin_comb_arbiter_0_0
     port map (
      bram_sel(4 downto 0) => bram_sel_1(4 downto 0),
      i_BRAM0A_dout(31 downto 0) => Conn1_DOUT(31 downto 0),
      i_BRAM0B_dout(31 downto 0) => Conn2_DOUT(31 downto 0),
      i_BRAM1A_dout(31 downto 0) => mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_DOUT(31 downto 0),
      i_BRAM2A_dout(31 downto 0) => mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_DOUT(31 downto 0),
      i_BRAM2B_dout(31 downto 0) => mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_DOUT(31 downto 0),
      i_control0a => mayo_linear_combinat_0_BRAM_Lin0a_CTRL,
      i_control0b => mayo_linear_combinat_0_BRAM_Lin0b_CTRL,
      i_control1a => mayo_linear_combinat_0_BRAM_Lin1a_CTRL,
      i_mem0a_addr(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin0a_ADDR(31 downto 0),
      i_mem0a_din(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin0a_DIN(31 downto 0),
      i_mem0a_en => mayo_linear_combinat_0_BRAM_Lin0a_EN,
      i_mem0a_rst => mayo_linear_combinat_0_BRAM_Lin0a_RST,
      i_mem0a_we(3 downto 0) => mayo_linear_combinat_0_BRAM_Lin0a_WE(3 downto 0),
      i_mem0b_addr(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin0b_ADDR(31 downto 0),
      i_mem0b_din(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin0b_DIN(31 downto 0),
      i_mem0b_en => mayo_linear_combinat_0_BRAM_Lin0b_EN,
      i_mem0b_rst => mayo_linear_combinat_0_BRAM_Lin0b_RST,
      i_mem0b_we(3 downto 0) => mayo_linear_combinat_0_BRAM_Lin0b_WE(3 downto 0),
      i_mem1a_addr(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin1a_ADDR(31 downto 0),
      i_mem1a_din(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin1a_DIN(31 downto 0),
      i_mem1a_en => mayo_linear_combinat_0_BRAM_Lin1a_EN,
      i_mem1a_rst => mayo_linear_combinat_0_BRAM_Lin1a_RST,
      i_mem1a_we(3 downto 0) => mayo_linear_combinat_0_BRAM_Lin1a_WE(3 downto 0),
      o_BRAM0A_addr(31 downto 0) => Conn1_ADDR(31 downto 0),
      o_BRAM0A_control => Conn1_CTRL,
      o_BRAM0A_din(31 downto 0) => Conn1_DIN(31 downto 0),
      o_BRAM0A_en => Conn1_EN,
      o_BRAM0A_rst => Conn1_RST,
      o_BRAM0A_we(3 downto 0) => Conn1_WE(3 downto 0),
      o_BRAM0B_addr(31 downto 0) => Conn2_ADDR(31 downto 0),
      o_BRAM0B_control => Conn2_CTRL,
      o_BRAM0B_din(31 downto 0) => Conn2_DIN(31 downto 0),
      o_BRAM0B_en => Conn2_EN,
      o_BRAM0B_rst => Conn2_RST,
      o_BRAM0B_we(3 downto 0) => Conn2_WE(3 downto 0),
      o_BRAM1A_addr(31 downto 0) => mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_ADDR(31 downto 0),
      o_BRAM1A_control => mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_CTRL,
      o_BRAM1A_din(31 downto 0) => mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_DIN(31 downto 0),
      o_BRAM1A_en => mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_EN,
      o_BRAM1A_rst => mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_RST,
      o_BRAM1A_we(3 downto 0) => mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_WE(3 downto 0),
      o_BRAM2A_addr(31 downto 0) => mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_ADDR(31 downto 0),
      o_BRAM2A_control => mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_CTRL,
      o_BRAM2A_din(31 downto 0) => mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_DIN(31 downto 0),
      o_BRAM2A_en => mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_EN,
      o_BRAM2A_rst => mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_RST,
      o_BRAM2A_we(3 downto 0) => mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_WE(3 downto 0),
      o_BRAM2B_addr(31 downto 0) => mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_ADDR(31 downto 0),
      o_BRAM2B_control => mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_CTRL,
      o_BRAM2B_din(31 downto 0) => mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_DIN(31 downto 0),
      o_BRAM2B_en => mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_EN,
      o_BRAM2B_rst => mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_RST,
      o_BRAM2B_we(3 downto 0) => mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_WE(3 downto 0),
      o_mem0a_dout(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin0a_DOUT(31 downto 0),
      o_mem0b_dout(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin0b_DOUT(31 downto 0),
      o_mem1a_dout(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin1a_DOUT(31 downto 0)
    );
mayo_linear_combinat_0: component Mayo_sign_mayo_linear_combinat_0_0
     port map (
      i_bram_halt => MAYO_SIGNING_FSM_0_o_lin_bram_halt,
      i_clk => clk_0_1,
      i_coeffs_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_lin_coeffs_addr(31 downto 0),
      i_enable => MAYO_SIGNING_FSM_0_o_lin_enable,
      i_len(31 downto 0) => MAYO_SIGNING_FSM_0_o_lin_len(31 downto 0),
      i_mem0a_dout(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin0a_DOUT(31 downto 0),
      i_mem0b_dout(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin0b_DOUT(31 downto 0),
      i_mem1a_dout(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin1a_DOUT(31 downto 0),
      i_out_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_lin_out_addr(31 downto 0),
      i_vec_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_lin_vec_addr(31 downto 0),
      o_control0a => mayo_linear_combinat_0_BRAM_Lin0a_CTRL,
      o_control0b => mayo_linear_combinat_0_BRAM_Lin0b_CTRL,
      o_control1a => mayo_linear_combinat_0_BRAM_Lin1a_CTRL,
      o_done => mayo_linear_combinat_0_o_done,
      o_mem0a_addr(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin0a_ADDR(31 downto 0),
      o_mem0a_din(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin0a_DIN(31 downto 0),
      o_mem0a_en => mayo_linear_combinat_0_BRAM_Lin0a_EN,
      o_mem0a_rst => mayo_linear_combinat_0_BRAM_Lin0a_RST,
      o_mem0a_we(3 downto 0) => mayo_linear_combinat_0_BRAM_Lin0a_WE(3 downto 0),
      o_mem0b_addr(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin0b_ADDR(31 downto 0),
      o_mem0b_din(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin0b_DIN(31 downto 0),
      o_mem0b_en => mayo_linear_combinat_0_BRAM_Lin0b_EN,
      o_mem0b_rst => mayo_linear_combinat_0_BRAM_Lin0b_RST,
      o_mem0b_we(3 downto 0) => mayo_linear_combinat_0_BRAM_Lin0b_WE(3 downto 0),
      o_mem1a_addr(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin1a_ADDR(31 downto 0),
      o_mem1a_din(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin1a_DIN(31 downto 0),
      o_mem1a_en => mayo_linear_combinat_0_BRAM_Lin1a_EN,
      o_mem1a_rst => mayo_linear_combinat_0_BRAM_Lin1a_RST,
      o_mem1a_we(3 downto 0) => mayo_linear_combinat_0_BRAM_Lin1a_WE(3 downto 0),
      rst => rst_0_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SmallBRAM_imp_MCN2TS is
  port (
    BRAM_Add_oil1_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_oil1_ctrl : in STD_LOGIC;
    BRAM_Add_oil1_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_oil1_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_oil1_en : in STD_LOGIC;
    BRAM_Add_oil1_rst : in STD_LOGIC;
    BRAM_Add_oil1_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Add_oil_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_oil_ctrl : in STD_LOGIC;
    BRAM_Add_oil_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_oil_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_oil_en : in STD_LOGIC;
    BRAM_Add_oil_rst : in STD_LOGIC;
    BRAM_Add_oil_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Add_vec_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_vec_ctrl : in STD_LOGIC;
    BRAM_Add_vec_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_vec_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_vec_en : in STD_LOGIC;
    BRAM_Add_vec_rst : in STD_LOGIC;
    BRAM_Add_vec_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Hash_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Hash_ctrl : in STD_LOGIC;
    BRAM_Hash_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Hash_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Hash_en : in STD_LOGIC;
    BRAM_Hash_rst : in STD_LOGIC;
    BRAM_Hash_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Lin1_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Lin1_ctrl : in STD_LOGIC;
    BRAM_Lin1_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Lin1_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Lin1_en : in STD_LOGIC;
    BRAM_Lin1_rst : in STD_LOGIC;
    BRAM_Lin1_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Lin_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Lin_ctrl : in STD_LOGIC;
    BRAM_Lin_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Lin_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Lin_en : in STD_LOGIC;
    BRAM_Lin_rst : in STD_LOGIC;
    BRAM_Lin_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_P1P1T_ctrl : in STD_LOGIC;
    BRAM_P1P1T_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_P1P1T_en : in STD_LOGIC;
    BRAM_P1P1T_rst : in STD_LOGIC;
    BRAM_Red_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Red_ctrl : in STD_LOGIC;
    BRAM_Red_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Red_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Red_en : in STD_LOGIC;
    BRAM_Red_ext1_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Red_ext1_ctrl : in STD_LOGIC;
    BRAM_Red_ext1_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Red_ext1_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Red_ext1_en : in STD_LOGIC;
    BRAM_Red_ext1_rst : in STD_LOGIC;
    BRAM_Red_ext1_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Red_ext_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Red_ext_ctrl : in STD_LOGIC;
    BRAM_Red_ext_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Red_ext_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Red_ext_en : in STD_LOGIC;
    BRAM_Red_ext_rst : in STD_LOGIC;
    BRAM_Red_ext_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Red_rst : in STD_LOGIC;
    BRAM_Red_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Sam_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_ctrl : in STD_LOGIC;
    BRAM_Sam_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_en : in STD_LOGIC;
    BRAM_Sam_oil1_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_oil1_ctrl : in STD_LOGIC;
    BRAM_Sam_oil1_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_oil1_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_oil1_en : in STD_LOGIC;
    BRAM_Sam_oil1_rst : in STD_LOGIC;
    BRAM_Sam_oil1_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Sam_oil_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_oil_ctrl : in STD_LOGIC;
    BRAM_Sam_oil_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_oil_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_oil_en : in STD_LOGIC;
    BRAM_Sam_oil_rst : in STD_LOGIC;
    BRAM_Sam_oil_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Sam_rst : in STD_LOGIC;
    BRAM_Sam_vin_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_vin_ctrl : in STD_LOGIC;
    BRAM_Sam_vin_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_vin_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_vin_en : in STD_LOGIC;
    BRAM_Sam_vin_rst : in STD_LOGIC;
    BRAM_Sam_vin_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Sam_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Sign1_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sign1_ctrl : in STD_LOGIC;
    BRAM_Sign1_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sign1_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sign1_en : in STD_LOGIC;
    BRAM_Sign1_rst : in STD_LOGIC;
    BRAM_Sign1_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Sign_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sign_ctrl : in STD_LOGIC;
    BRAM_Sign_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sign_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sign_en : in STD_LOGIC;
    BRAM_Sign_rst : in STD_LOGIC;
    BRAM_Sign_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_0 : in STD_LOGIC;
    zero : in STD_LOGIC_VECTOR ( 31 downto 0 );
    zero0 : in STD_LOGIC;
    zero4 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end SmallBRAM_imp_MCN2TS;

architecture STRUCTURE of SmallBRAM_imp_MCN2TS is
  component Mayo_sign_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC
  );
  end component Mayo_sign_blk_mem_gen_0_0;
  component Mayo_sign_mayo_bram_arbiter2_0_0 is
  port (
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
  end component Mayo_sign_mayo_bram_arbiter2_0_0;
  component Mayo_sign_mayo_bram_arbiter2_0_1 is
  port (
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
  end component Mayo_sign_mayo_bram_arbiter2_0_1;
  signal BRAM_Add_oil1_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_oil1_1_CTRL : STD_LOGIC;
  signal BRAM_Add_oil1_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_oil1_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_oil1_1_EN : STD_LOGIC;
  signal BRAM_Add_oil1_1_RST : STD_LOGIC;
  signal BRAM_Add_oil1_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_Add_oil_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_oil_1_CTRL : STD_LOGIC;
  signal BRAM_Add_oil_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_oil_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_oil_1_EN : STD_LOGIC;
  signal BRAM_Add_oil_1_RST : STD_LOGIC;
  signal BRAM_Add_oil_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_Hash_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Hash_1_CTRL : STD_LOGIC;
  signal BRAM_Hash_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Hash_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Hash_1_EN : STD_LOGIC;
  signal BRAM_Hash_1_RST : STD_LOGIC;
  signal BRAM_Hash_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_Red_ext_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Red_ext_1_CTRL : STD_LOGIC;
  signal BRAM_Red_ext_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Red_ext_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Red_ext_1_EN : STD_LOGIC;
  signal BRAM_Red_ext_1_RST : STD_LOGIC;
  signal BRAM_Red_ext_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_add_vec_din1_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_add_vec_en1_1 : STD_LOGIC;
  signal BRAM_neg_we_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_CTRL : STD_LOGIC;
  signal Conn1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_EN : STD_LOGIC;
  signal Conn1_RST : STD_LOGIC;
  signal Conn1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_CTRL : STD_LOGIC;
  signal Conn2_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_EN : STD_LOGIC;
  signal Conn2_RST : STD_LOGIC;
  signal Conn2_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn3_CTRL : STD_LOGIC;
  signal Conn3_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_EN : STD_LOGIC;
  signal Conn3_RST : STD_LOGIC;
  signal Conn4_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_CTRL : STD_LOGIC;
  signal Conn4_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_EN : STD_LOGIC;
  signal Conn4_RST : STD_LOGIC;
  signal Conn4_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn5_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn5_CTRL : STD_LOGIC;
  signal Conn5_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn5_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn5_EN : STD_LOGIC;
  signal Conn5_RST : STD_LOGIC;
  signal Conn5_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn6_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn6_CTRL : STD_LOGIC;
  signal Conn6_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn6_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn6_EN : STD_LOGIC;
  signal Conn6_RST : STD_LOGIC;
  signal Conn6_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn7_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn7_CTRL : STD_LOGIC;
  signal Conn7_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn7_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn7_EN : STD_LOGIC;
  signal Conn7_RST : STD_LOGIC;
  signal Conn7_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn8_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn8_CTRL : STD_LOGIC;
  signal Conn8_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn8_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn8_EN : STD_LOGIC;
  signal Conn8_RST : STD_LOGIC;
  signal Conn8_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn9_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn9_CTRL : STD_LOGIC;
  signal Conn9_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn9_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn9_EN : STD_LOGIC;
  signal Conn9_RST : STD_LOGIC;
  signal Conn9_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0a_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0a_CTRL : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0a_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0a_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0a_EN : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0a_RST : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0a_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0b_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0b_CTRL : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0b_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0b_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0b_EN : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0b_RST : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0b_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal SmallBRAM_1_8K_douta : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SmallBRAM_1_8K_doutb : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal clk_0_1 : STD_LOGIC;
  signal mayo_add_vectors_0_BRAM_Add_VecA_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_0_BRAM_Add_VecA_CTRL : STD_LOGIC;
  signal mayo_add_vectors_0_BRAM_Add_VecA_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_0_BRAM_Add_VecA_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_0_BRAM_Add_VecA_EN : STD_LOGIC;
  signal mayo_add_vectors_0_BRAM_Add_VecA_RST : STD_LOGIC;
  signal mayo_add_vectors_0_BRAM_Add_VecA_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_bram_arbiter2_0_BRAM_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_bram_arbiter2_0_BRAM_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_bram_arbiter2_0_BRAM_en : STD_LOGIC;
  signal mayo_bram_arbiter2_0_BRAM_rst : STD_LOGIC;
  signal mayo_bram_arbiter2_0_BRAM_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_bram_arbiter2_1_BRAM_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_bram_arbiter2_1_BRAM_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_bram_arbiter2_1_BRAM_en : STD_LOGIC;
  signal mayo_bram_arbiter2_1_BRAM_rst : STD_LOGIC;
  signal mayo_bram_arbiter2_1_BRAM_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SmallBRAM_1_8K_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_SmallBRAM_1_8K_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_mayo_bram_arbiter2_a_BRAM_memcpy0_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_a_BRAM_memcpy1_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_a_BRAM_neg_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_a_BRAM_p1p1t_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_add_vec_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_hash_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_memcpy0_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_memcpy1_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_neg_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_red_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_sam_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_sam_vin_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  BRAM_Add_oil1_1_ADDR(31 downto 0) <= BRAM_Add_oil1_addr(31 downto 0);
  BRAM_Add_oil1_1_CTRL <= BRAM_Add_oil1_ctrl;
  BRAM_Add_oil1_1_DIN(31 downto 0) <= BRAM_Add_oil1_din(31 downto 0);
  BRAM_Add_oil1_1_EN <= BRAM_Add_oil1_en;
  BRAM_Add_oil1_1_RST <= BRAM_Add_oil1_rst;
  BRAM_Add_oil1_1_WE(3 downto 0) <= BRAM_Add_oil1_we(3 downto 0);
  BRAM_Add_oil1_dout(31 downto 0) <= BRAM_Add_oil1_1_DOUT(31 downto 0);
  BRAM_Add_oil_1_ADDR(31 downto 0) <= BRAM_Add_oil_addr(31 downto 0);
  BRAM_Add_oil_1_CTRL <= BRAM_Add_oil_ctrl;
  BRAM_Add_oil_1_DIN(31 downto 0) <= BRAM_Add_oil_din(31 downto 0);
  BRAM_Add_oil_1_EN <= BRAM_Add_oil_en;
  BRAM_Add_oil_1_RST <= BRAM_Add_oil_rst;
  BRAM_Add_oil_1_WE(3 downto 0) <= BRAM_Add_oil_we(3 downto 0);
  BRAM_Add_oil_dout(31 downto 0) <= BRAM_Add_oil_1_DOUT(31 downto 0);
  BRAM_Add_vec_dout(31 downto 0) <= mayo_add_vectors_0_BRAM_Add_VecA_DOUT(31 downto 0);
  BRAM_Hash_1_ADDR(31 downto 0) <= BRAM_Hash_addr(31 downto 0);
  BRAM_Hash_1_CTRL <= BRAM_Hash_ctrl;
  BRAM_Hash_1_DIN(31 downto 0) <= BRAM_Hash_din(31 downto 0);
  BRAM_Hash_1_EN <= BRAM_Hash_en;
  BRAM_Hash_1_RST <= BRAM_Hash_rst;
  BRAM_Hash_1_WE(3 downto 0) <= BRAM_Hash_we(3 downto 0);
  BRAM_Hash_dout(31 downto 0) <= BRAM_Hash_1_DOUT(31 downto 0);
  BRAM_Lin1_dout(31 downto 0) <= Conn2_DOUT(31 downto 0);
  BRAM_Lin_dout(31 downto 0) <= Conn1_DOUT(31 downto 0);
  BRAM_P1P1T_dout(31 downto 0) <= Conn3_DOUT(31 downto 0);
  BRAM_Red_dout(31 downto 0) <= Conn7_DOUT(31 downto 0);
  BRAM_Red_ext1_dout(31 downto 0) <= Conn9_DOUT(31 downto 0);
  BRAM_Red_ext_1_ADDR(31 downto 0) <= BRAM_Red_ext_addr(31 downto 0);
  BRAM_Red_ext_1_CTRL <= BRAM_Red_ext_ctrl;
  BRAM_Red_ext_1_DIN(31 downto 0) <= BRAM_Red_ext_din(31 downto 0);
  BRAM_Red_ext_1_EN <= BRAM_Red_ext_en;
  BRAM_Red_ext_1_RST <= BRAM_Red_ext_rst;
  BRAM_Red_ext_1_WE(3 downto 0) <= BRAM_Red_ext_we(3 downto 0);
  BRAM_Red_ext_dout(31 downto 0) <= BRAM_Red_ext_1_DOUT(31 downto 0);
  BRAM_Sam_dout(31 downto 0) <= Conn8_DOUT(31 downto 0);
  BRAM_Sam_oil1_dout(31 downto 0) <= Conn5_DOUT(31 downto 0);
  BRAM_Sam_oil_dout(31 downto 0) <= Conn4_DOUT(31 downto 0);
  BRAM_Sam_vin_dout(31 downto 0) <= Conn6_DOUT(31 downto 0);
  BRAM_Sign1_dout(31 downto 0) <= MAYO_SIGNING_FSM_0_BRAM_Sign0b_DOUT(31 downto 0);
  BRAM_Sign_dout(31 downto 0) <= MAYO_SIGNING_FSM_0_BRAM_Sign0a_DOUT(31 downto 0);
  BRAM_add_vec_din1_1(31 downto 0) <= zero(31 downto 0);
  BRAM_add_vec_en1_1 <= zero0;
  BRAM_neg_we_1(3 downto 0) <= zero4(3 downto 0);
  Conn1_ADDR(31 downto 0) <= BRAM_Lin_addr(31 downto 0);
  Conn1_CTRL <= BRAM_Lin_ctrl;
  Conn1_DIN(31 downto 0) <= BRAM_Lin_din(31 downto 0);
  Conn1_EN <= BRAM_Lin_en;
  Conn1_RST <= BRAM_Lin_rst;
  Conn1_WE(3 downto 0) <= BRAM_Lin_we(3 downto 0);
  Conn2_ADDR(31 downto 0) <= BRAM_Lin1_addr(31 downto 0);
  Conn2_CTRL <= BRAM_Lin1_ctrl;
  Conn2_DIN(31 downto 0) <= BRAM_Lin1_din(31 downto 0);
  Conn2_EN <= BRAM_Lin1_en;
  Conn2_RST <= BRAM_Lin1_rst;
  Conn2_WE(3 downto 0) <= BRAM_Lin1_we(3 downto 0);
  Conn3_CTRL <= BRAM_P1P1T_ctrl;
  Conn3_EN <= BRAM_P1P1T_en;
  Conn3_RST <= BRAM_P1P1T_rst;
  Conn4_ADDR(31 downto 0) <= BRAM_Sam_oil_addr(31 downto 0);
  Conn4_CTRL <= BRAM_Sam_oil_ctrl;
  Conn4_DIN(31 downto 0) <= BRAM_Sam_oil_din(31 downto 0);
  Conn4_EN <= BRAM_Sam_oil_en;
  Conn4_RST <= BRAM_Sam_oil_rst;
  Conn4_WE(3 downto 0) <= BRAM_Sam_oil_we(3 downto 0);
  Conn5_ADDR(31 downto 0) <= BRAM_Sam_oil1_addr(31 downto 0);
  Conn5_CTRL <= BRAM_Sam_oil1_ctrl;
  Conn5_DIN(31 downto 0) <= BRAM_Sam_oil1_din(31 downto 0);
  Conn5_EN <= BRAM_Sam_oil1_en;
  Conn5_RST <= BRAM_Sam_oil1_rst;
  Conn5_WE(3 downto 0) <= BRAM_Sam_oil1_we(3 downto 0);
  Conn6_ADDR(31 downto 0) <= BRAM_Sam_vin_addr(31 downto 0);
  Conn6_CTRL <= BRAM_Sam_vin_ctrl;
  Conn6_DIN(31 downto 0) <= BRAM_Sam_vin_din(31 downto 0);
  Conn6_EN <= BRAM_Sam_vin_en;
  Conn6_RST <= BRAM_Sam_vin_rst;
  Conn6_WE(3 downto 0) <= BRAM_Sam_vin_we(3 downto 0);
  Conn7_ADDR(31 downto 0) <= BRAM_Red_addr(31 downto 0);
  Conn7_CTRL <= BRAM_Red_ctrl;
  Conn7_DIN(31 downto 0) <= BRAM_Red_din(31 downto 0);
  Conn7_EN <= BRAM_Red_en;
  Conn7_RST <= BRAM_Red_rst;
  Conn7_WE(3 downto 0) <= BRAM_Red_we(3 downto 0);
  Conn8_ADDR(31 downto 0) <= BRAM_Sam_addr(31 downto 0);
  Conn8_CTRL <= BRAM_Sam_ctrl;
  Conn8_DIN(31 downto 0) <= BRAM_Sam_din(31 downto 0);
  Conn8_EN <= BRAM_Sam_en;
  Conn8_RST <= BRAM_Sam_rst;
  Conn8_WE(3 downto 0) <= BRAM_Sam_we(3 downto 0);
  Conn9_ADDR(31 downto 0) <= BRAM_Red_ext1_addr(31 downto 0);
  Conn9_CTRL <= BRAM_Red_ext1_ctrl;
  Conn9_DIN(31 downto 0) <= BRAM_Red_ext1_din(31 downto 0);
  Conn9_EN <= BRAM_Red_ext1_en;
  Conn9_RST <= BRAM_Red_ext1_rst;
  Conn9_WE(3 downto 0) <= BRAM_Red_ext1_we(3 downto 0);
  MAYO_SIGNING_FSM_0_BRAM_Sign0a_ADDR(31 downto 0) <= BRAM_Sign_addr(31 downto 0);
  MAYO_SIGNING_FSM_0_BRAM_Sign0a_CTRL <= BRAM_Sign_ctrl;
  MAYO_SIGNING_FSM_0_BRAM_Sign0a_DIN(31 downto 0) <= BRAM_Sign_din(31 downto 0);
  MAYO_SIGNING_FSM_0_BRAM_Sign0a_EN <= BRAM_Sign_en;
  MAYO_SIGNING_FSM_0_BRAM_Sign0a_RST <= BRAM_Sign_rst;
  MAYO_SIGNING_FSM_0_BRAM_Sign0a_WE(3 downto 0) <= BRAM_Sign_we(3 downto 0);
  MAYO_SIGNING_FSM_0_BRAM_Sign0b_ADDR(31 downto 0) <= BRAM_Sign1_addr(31 downto 0);
  MAYO_SIGNING_FSM_0_BRAM_Sign0b_CTRL <= BRAM_Sign1_ctrl;
  MAYO_SIGNING_FSM_0_BRAM_Sign0b_DIN(31 downto 0) <= BRAM_Sign1_din(31 downto 0);
  MAYO_SIGNING_FSM_0_BRAM_Sign0b_EN <= BRAM_Sign1_en;
  MAYO_SIGNING_FSM_0_BRAM_Sign0b_RST <= BRAM_Sign1_rst;
  MAYO_SIGNING_FSM_0_BRAM_Sign0b_WE(3 downto 0) <= BRAM_Sign1_we(3 downto 0);
  clk_0_1 <= clk_0;
  mayo_add_vectors_0_BRAM_Add_VecA_ADDR(31 downto 0) <= BRAM_Add_vec_addr(31 downto 0);
  mayo_add_vectors_0_BRAM_Add_VecA_CTRL <= BRAM_Add_vec_ctrl;
  mayo_add_vectors_0_BRAM_Add_VecA_DIN(31 downto 0) <= BRAM_Add_vec_din(31 downto 0);
  mayo_add_vectors_0_BRAM_Add_VecA_EN <= BRAM_Add_vec_en;
  mayo_add_vectors_0_BRAM_Add_VecA_RST <= BRAM_Add_vec_rst;
  mayo_add_vectors_0_BRAM_Add_VecA_WE(3 downto 0) <= BRAM_Add_vec_we(3 downto 0);
SmallBRAM_1_8K: component Mayo_sign_blk_mem_gen_0_0
     port map (
      addra(31 downto 0) => mayo_bram_arbiter2_0_BRAM_addr(31 downto 0),
      addrb(31 downto 0) => mayo_bram_arbiter2_1_BRAM_addr(31 downto 0),
      clka => clk_0_1,
      clkb => clk_0_1,
      dina(31 downto 0) => mayo_bram_arbiter2_0_BRAM_din(31 downto 0),
      dinb(31 downto 0) => mayo_bram_arbiter2_1_BRAM_din(31 downto 0),
      douta(31 downto 0) => SmallBRAM_1_8K_douta(31 downto 0),
      doutb(31 downto 0) => SmallBRAM_1_8K_doutb(31 downto 0),
      ena => mayo_bram_arbiter2_0_BRAM_en,
      enb => mayo_bram_arbiter2_1_BRAM_en,
      rsta => mayo_bram_arbiter2_0_BRAM_rst,
      rsta_busy => NLW_SmallBRAM_1_8K_rsta_busy_UNCONNECTED,
      rstb => mayo_bram_arbiter2_1_BRAM_rst,
      rstb_busy => NLW_SmallBRAM_1_8K_rstb_busy_UNCONNECTED,
      wea(3 downto 0) => mayo_bram_arbiter2_0_BRAM_we(3 downto 0),
      web(3 downto 0) => mayo_bram_arbiter2_1_BRAM_we(3 downto 0)
    );
mayo_bram_arbiter2_a: component Mayo_sign_mayo_bram_arbiter2_0_0
     port map (
      BRAM_add_oil_addr(31 downto 0) => BRAM_Add_oil_1_ADDR(31 downto 0),
      BRAM_add_oil_control => BRAM_Add_oil_1_CTRL,
      BRAM_add_oil_din(31 downto 0) => BRAM_Add_oil_1_DIN(31 downto 0),
      BRAM_add_oil_dout(31 downto 0) => BRAM_Add_oil_1_DOUT(31 downto 0),
      BRAM_add_oil_en => BRAM_Add_oil_1_EN,
      BRAM_add_oil_rst => BRAM_Add_oil_1_RST,
      BRAM_add_oil_we(3 downto 0) => BRAM_Add_oil_1_WE(3 downto 0),
      BRAM_add_vec_addr(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecA_ADDR(31 downto 0),
      BRAM_add_vec_control => mayo_add_vectors_0_BRAM_Add_VecA_CTRL,
      BRAM_add_vec_din(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecA_DIN(31 downto 0),
      BRAM_add_vec_dout(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecA_DOUT(31 downto 0),
      BRAM_add_vec_en => mayo_add_vectors_0_BRAM_Add_VecA_EN,
      BRAM_add_vec_rst => mayo_add_vectors_0_BRAM_Add_VecA_RST,
      BRAM_add_vec_we(3 downto 0) => mayo_add_vectors_0_BRAM_Add_VecA_WE(3 downto 0),
      BRAM_addr(31 downto 0) => mayo_bram_arbiter2_0_BRAM_addr(31 downto 0),
      BRAM_din(31 downto 0) => mayo_bram_arbiter2_0_BRAM_din(31 downto 0),
      BRAM_dout(31 downto 0) => SmallBRAM_1_8K_douta(31 downto 0),
      BRAM_en => mayo_bram_arbiter2_0_BRAM_en,
      BRAM_hash_addr(31 downto 0) => BRAM_Hash_1_ADDR(31 downto 0),
      BRAM_hash_control => BRAM_Hash_1_CTRL,
      BRAM_hash_din(31 downto 0) => BRAM_Hash_1_DIN(31 downto 0),
      BRAM_hash_dout(31 downto 0) => BRAM_Hash_1_DOUT(31 downto 0),
      BRAM_hash_en => BRAM_Hash_1_EN,
      BRAM_hash_rst => BRAM_Hash_1_RST,
      BRAM_hash_we(3 downto 0) => BRAM_Hash_1_WE(3 downto 0),
      BRAM_lin_addr(31 downto 0) => Conn1_ADDR(31 downto 0),
      BRAM_lin_control => Conn1_CTRL,
      BRAM_lin_din(31 downto 0) => Conn1_DIN(31 downto 0),
      BRAM_lin_dout(31 downto 0) => Conn1_DOUT(31 downto 0),
      BRAM_lin_en => Conn1_EN,
      BRAM_lin_rst => Conn1_RST,
      BRAM_lin_we(3 downto 0) => Conn1_WE(3 downto 0),
      BRAM_memcpy0_addr(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_memcpy0_control => BRAM_add_vec_en1_1,
      BRAM_memcpy0_din(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_memcpy0_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_memcpy0_dout_UNCONNECTED(31 downto 0),
      BRAM_memcpy0_en => BRAM_add_vec_en1_1,
      BRAM_memcpy0_rst => BRAM_add_vec_en1_1,
      BRAM_memcpy0_we(3 downto 0) => BRAM_neg_we_1(3 downto 0),
      BRAM_memcpy1_addr(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_memcpy1_control => BRAM_add_vec_en1_1,
      BRAM_memcpy1_din(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_memcpy1_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_memcpy1_dout_UNCONNECTED(31 downto 0),
      BRAM_memcpy1_en => BRAM_add_vec_en1_1,
      BRAM_memcpy1_rst => BRAM_add_vec_en1_1,
      BRAM_memcpy1_we(3 downto 0) => BRAM_neg_we_1(3 downto 0),
      BRAM_neg_addr(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_neg_control => BRAM_add_vec_en1_1,
      BRAM_neg_din(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_neg_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_neg_dout_UNCONNECTED(31 downto 0),
      BRAM_neg_en => BRAM_add_vec_en1_1,
      BRAM_neg_rst => BRAM_add_vec_en1_1,
      BRAM_neg_we(3 downto 0) => BRAM_neg_we_1(3 downto 0),
      BRAM_p1p1t_addr(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_p1p1t_control => BRAM_add_vec_en1_1,
      BRAM_p1p1t_din(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_p1p1t_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_p1p1t_dout_UNCONNECTED(31 downto 0),
      BRAM_p1p1t_en => BRAM_add_vec_en1_1,
      BRAM_p1p1t_rst => BRAM_add_vec_en1_1,
      BRAM_p1p1t_we(3 downto 0) => BRAM_neg_we_1(3 downto 0),
      BRAM_red_addr(31 downto 0) => Conn7_ADDR(31 downto 0),
      BRAM_red_control => Conn7_CTRL,
      BRAM_red_din(31 downto 0) => Conn7_DIN(31 downto 0),
      BRAM_red_dout(31 downto 0) => Conn7_DOUT(31 downto 0),
      BRAM_red_en => Conn7_EN,
      BRAM_red_ext_addr(31 downto 0) => BRAM_Red_ext_1_ADDR(31 downto 0),
      BRAM_red_ext_control => BRAM_Red_ext_1_CTRL,
      BRAM_red_ext_din(31 downto 0) => BRAM_Red_ext_1_DIN(31 downto 0),
      BRAM_red_ext_dout(31 downto 0) => BRAM_Red_ext_1_DOUT(31 downto 0),
      BRAM_red_ext_en => BRAM_Red_ext_1_EN,
      BRAM_red_ext_rst => BRAM_Red_ext_1_RST,
      BRAM_red_ext_we(3 downto 0) => BRAM_Red_ext_1_WE(3 downto 0),
      BRAM_red_rst => Conn7_RST,
      BRAM_red_we(3 downto 0) => Conn7_WE(3 downto 0),
      BRAM_rst => mayo_bram_arbiter2_0_BRAM_rst,
      BRAM_sam_addr(31 downto 0) => Conn8_ADDR(31 downto 0),
      BRAM_sam_control => Conn8_CTRL,
      BRAM_sam_din(31 downto 0) => Conn8_DIN(31 downto 0),
      BRAM_sam_dout(31 downto 0) => Conn8_DOUT(31 downto 0),
      BRAM_sam_en => Conn8_EN,
      BRAM_sam_oil_addr(31 downto 0) => Conn4_ADDR(31 downto 0),
      BRAM_sam_oil_control => Conn4_CTRL,
      BRAM_sam_oil_din(31 downto 0) => Conn4_DIN(31 downto 0),
      BRAM_sam_oil_dout(31 downto 0) => Conn4_DOUT(31 downto 0),
      BRAM_sam_oil_en => Conn4_EN,
      BRAM_sam_oil_rst => Conn4_RST,
      BRAM_sam_oil_we(3 downto 0) => Conn4_WE(3 downto 0),
      BRAM_sam_rst => Conn8_RST,
      BRAM_sam_vin_addr(31 downto 0) => Conn6_ADDR(31 downto 0),
      BRAM_sam_vin_control => Conn6_CTRL,
      BRAM_sam_vin_din(31 downto 0) => Conn6_DIN(31 downto 0),
      BRAM_sam_vin_dout(31 downto 0) => Conn6_DOUT(31 downto 0),
      BRAM_sam_vin_en => Conn6_EN,
      BRAM_sam_vin_rst => Conn6_RST,
      BRAM_sam_vin_we(3 downto 0) => Conn6_WE(3 downto 0),
      BRAM_sam_we(3 downto 0) => Conn8_WE(3 downto 0),
      BRAM_sign_addr(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0a_ADDR(31 downto 0),
      BRAM_sign_control => MAYO_SIGNING_FSM_0_BRAM_Sign0a_CTRL,
      BRAM_sign_din(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0a_DIN(31 downto 0),
      BRAM_sign_dout(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0a_DOUT(31 downto 0),
      BRAM_sign_en => MAYO_SIGNING_FSM_0_BRAM_Sign0a_EN,
      BRAM_sign_rst => MAYO_SIGNING_FSM_0_BRAM_Sign0a_RST,
      BRAM_sign_we(3 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0a_WE(3 downto 0),
      BRAM_we(3 downto 0) => mayo_bram_arbiter2_0_BRAM_we(3 downto 0)
    );
mayo_bram_arbiter2_b: component Mayo_sign_mayo_bram_arbiter2_0_1
     port map (
      BRAM_add_oil_addr(31 downto 0) => BRAM_Add_oil1_1_ADDR(31 downto 0),
      BRAM_add_oil_control => BRAM_Add_oil1_1_CTRL,
      BRAM_add_oil_din(31 downto 0) => BRAM_Add_oil1_1_DIN(31 downto 0),
      BRAM_add_oil_dout(31 downto 0) => BRAM_Add_oil1_1_DOUT(31 downto 0),
      BRAM_add_oil_en => BRAM_Add_oil1_1_EN,
      BRAM_add_oil_rst => BRAM_Add_oil1_1_RST,
      BRAM_add_oil_we(3 downto 0) => BRAM_Add_oil1_1_WE(3 downto 0),
      BRAM_add_vec_addr(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_add_vec_control => BRAM_add_vec_en1_1,
      BRAM_add_vec_din(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_add_vec_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_add_vec_dout_UNCONNECTED(31 downto 0),
      BRAM_add_vec_en => BRAM_add_vec_en1_1,
      BRAM_add_vec_rst => BRAM_add_vec_en1_1,
      BRAM_add_vec_we(3 downto 0) => BRAM_neg_we_1(3 downto 0),
      BRAM_addr(31 downto 0) => mayo_bram_arbiter2_1_BRAM_addr(31 downto 0),
      BRAM_din(31 downto 0) => mayo_bram_arbiter2_1_BRAM_din(31 downto 0),
      BRAM_dout(31 downto 0) => SmallBRAM_1_8K_doutb(31 downto 0),
      BRAM_en => mayo_bram_arbiter2_1_BRAM_en,
      BRAM_hash_addr(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_hash_control => BRAM_add_vec_en1_1,
      BRAM_hash_din(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_hash_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_hash_dout_UNCONNECTED(31 downto 0),
      BRAM_hash_en => BRAM_add_vec_en1_1,
      BRAM_hash_rst => BRAM_add_vec_en1_1,
      BRAM_hash_we(3 downto 0) => BRAM_neg_we_1(3 downto 0),
      BRAM_lin_addr(31 downto 0) => Conn2_ADDR(31 downto 0),
      BRAM_lin_control => Conn2_CTRL,
      BRAM_lin_din(31 downto 0) => Conn2_DIN(31 downto 0),
      BRAM_lin_dout(31 downto 0) => Conn2_DOUT(31 downto 0),
      BRAM_lin_en => Conn2_EN,
      BRAM_lin_rst => Conn2_RST,
      BRAM_lin_we(3 downto 0) => Conn2_WE(3 downto 0),
      BRAM_memcpy0_addr(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_memcpy0_control => BRAM_add_vec_en1_1,
      BRAM_memcpy0_din(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_memcpy0_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_memcpy0_dout_UNCONNECTED(31 downto 0),
      BRAM_memcpy0_en => BRAM_add_vec_en1_1,
      BRAM_memcpy0_rst => BRAM_add_vec_en1_1,
      BRAM_memcpy0_we(3 downto 0) => BRAM_neg_we_1(3 downto 0),
      BRAM_memcpy1_addr(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_memcpy1_control => BRAM_add_vec_en1_1,
      BRAM_memcpy1_din(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_memcpy1_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_memcpy1_dout_UNCONNECTED(31 downto 0),
      BRAM_memcpy1_en => BRAM_add_vec_en1_1,
      BRAM_memcpy1_rst => BRAM_add_vec_en1_1,
      BRAM_memcpy1_we(3 downto 0) => BRAM_neg_we_1(3 downto 0),
      BRAM_neg_addr(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_neg_control => BRAM_add_vec_en1_1,
      BRAM_neg_din(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_neg_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_neg_dout_UNCONNECTED(31 downto 0),
      BRAM_neg_en => BRAM_add_vec_en1_1,
      BRAM_neg_rst => BRAM_add_vec_en1_1,
      BRAM_neg_we(3 downto 0) => BRAM_neg_we_1(3 downto 0),
      BRAM_p1p1t_addr(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_p1p1t_control => Conn3_CTRL,
      BRAM_p1p1t_din(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_p1p1t_dout(31 downto 0) => Conn3_DOUT(31 downto 0),
      BRAM_p1p1t_en => Conn3_EN,
      BRAM_p1p1t_rst => Conn3_RST,
      BRAM_p1p1t_we(3 downto 0) => BRAM_neg_we_1(3 downto 0),
      BRAM_red_addr(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_red_control => BRAM_add_vec_en1_1,
      BRAM_red_din(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_red_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_red_dout_UNCONNECTED(31 downto 0),
      BRAM_red_en => BRAM_add_vec_en1_1,
      BRAM_red_ext_addr(31 downto 0) => Conn9_ADDR(31 downto 0),
      BRAM_red_ext_control => Conn9_CTRL,
      BRAM_red_ext_din(31 downto 0) => Conn9_DIN(31 downto 0),
      BRAM_red_ext_dout(31 downto 0) => Conn9_DOUT(31 downto 0),
      BRAM_red_ext_en => Conn9_EN,
      BRAM_red_ext_rst => Conn9_RST,
      BRAM_red_ext_we(3 downto 0) => Conn9_WE(3 downto 0),
      BRAM_red_rst => BRAM_add_vec_en1_1,
      BRAM_red_we(3 downto 0) => BRAM_neg_we_1(3 downto 0),
      BRAM_rst => mayo_bram_arbiter2_1_BRAM_rst,
      BRAM_sam_addr(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_sam_control => BRAM_add_vec_en1_1,
      BRAM_sam_din(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_sam_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_sam_dout_UNCONNECTED(31 downto 0),
      BRAM_sam_en => BRAM_add_vec_en1_1,
      BRAM_sam_oil_addr(31 downto 0) => Conn5_ADDR(31 downto 0),
      BRAM_sam_oil_control => Conn5_CTRL,
      BRAM_sam_oil_din(31 downto 0) => Conn5_DIN(31 downto 0),
      BRAM_sam_oil_dout(31 downto 0) => Conn5_DOUT(31 downto 0),
      BRAM_sam_oil_en => Conn5_EN,
      BRAM_sam_oil_rst => Conn5_RST,
      BRAM_sam_oil_we(3 downto 0) => Conn5_WE(3 downto 0),
      BRAM_sam_rst => BRAM_add_vec_en1_1,
      BRAM_sam_vin_addr(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_sam_vin_control => BRAM_add_vec_en1_1,
      BRAM_sam_vin_din(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_sam_vin_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_sam_vin_dout_UNCONNECTED(31 downto 0),
      BRAM_sam_vin_en => BRAM_add_vec_en1_1,
      BRAM_sam_vin_rst => BRAM_add_vec_en1_1,
      BRAM_sam_vin_we(3 downto 0) => BRAM_neg_we_1(3 downto 0),
      BRAM_sam_we(3 downto 0) => BRAM_neg_we_1(3 downto 0),
      BRAM_sign_addr(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0b_ADDR(31 downto 0),
      BRAM_sign_control => MAYO_SIGNING_FSM_0_BRAM_Sign0b_CTRL,
      BRAM_sign_din(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0b_DIN(31 downto 0),
      BRAM_sign_dout(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0b_DOUT(31 downto 0),
      BRAM_sign_en => MAYO_SIGNING_FSM_0_BRAM_Sign0b_EN,
      BRAM_sign_rst => MAYO_SIGNING_FSM_0_BRAM_Sign0b_RST,
      BRAM_sign_we(3 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0b_WE(3 downto 0),
      BRAM_we(3 downto 0) => mayo_bram_arbiter2_1_BRAM_we(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TRNG_imp_803AL3 is
  port (
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    i_trng0_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_trng0_r : in STD_LOGIC;
    i_trng0_w : in STD_LOGIC;
    i_trng1_data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_trng1_r : in STD_LOGIC;
    i_trng1_w : in STD_LOGIC;
    i_trng2_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_trng2_r : in STD_LOGIC;
    i_trng2_w : in STD_LOGIC;
    i_trng_sel : in STD_LOGIC;
    o_trng0_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_trng0_done : out STD_LOGIC;
    o_trng0_valid : out STD_LOGIC;
    o_trng1_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_trng1_done : out STD_LOGIC;
    o_trng1_valid : out STD_LOGIC;
    o_trng2_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_trng2_done : out STD_LOGIC;
    o_trng2_valid : out STD_LOGIC;
    rst : in STD_LOGIC
  );
end TRNG_imp_803AL3;

architecture STRUCTURE of TRNG_imp_803AL3 is
  component Mayo_sign_TRNG_0_0 is
  port (
    CLK_I : in STD_LOGIC;
    RST : in STD_LOGIC;
    R_I : in STD_LOGIC;
    W_I : in STD_LOGIC;
    TRNG_DATA_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRNG_DATA_O : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRNG_VALID_O : out STD_LOGIC;
    TRNG_DONE_O : out STD_LOGIC
  );
  end component Mayo_sign_TRNG_0_0;
  component Mayo_sign_mayo_trng_arbiter_0_0 is
  port (
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
  end component Mayo_sign_mayo_trng_arbiter_0_0;
  component Mayo_sign_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component Mayo_sign_xlconcat_0_0;
  signal In1_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRNG_0_TRNG_DATA_O : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRNG_0_TRNG_DONE_O : STD_LOGIC;
  signal TRNG_0_TRNG_VALID_O : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal i_trng0_data_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i_trng0_r_1 : STD_LOGIC;
  signal i_trng0_w_1 : STD_LOGIC;
  signal i_trng1_data1_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i_trng1_r_1 : STD_LOGIC;
  signal i_trng1_w_1 : STD_LOGIC;
  signal i_trng2_data_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i_trng2_r_1 : STD_LOGIC;
  signal i_trng2_w_1 : STD_LOGIC;
  signal i_trng_sel_1 : STD_LOGIC;
  signal mayo_trng_arbiter_0_o_trng0_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_trng_arbiter_0_o_trng0_done : STD_LOGIC;
  signal mayo_trng_arbiter_0_o_trng0_valid : STD_LOGIC;
  signal mayo_trng_arbiter_0_o_trng1_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_trng_arbiter_0_o_trng1_done : STD_LOGIC;
  signal mayo_trng_arbiter_0_o_trng1_valid : STD_LOGIC;
  signal mayo_trng_arbiter_0_o_trng2_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_trng_arbiter_0_o_trng2_done : STD_LOGIC;
  signal mayo_trng_arbiter_0_o_trng2_valid : STD_LOGIC;
  signal mayo_trng_arbiter_0_o_trng_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_trng_arbiter_0_o_trng_r : STD_LOGIC;
  signal mayo_trng_arbiter_0_o_trng_w : STD_LOGIC;
  signal rst_1 : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  In1_1(0) <= In1(0);
  clk_1 <= clk;
  i_trng0_data_1(31 downto 0) <= i_trng0_data(31 downto 0);
  i_trng0_r_1 <= i_trng0_r;
  i_trng0_w_1 <= i_trng0_w;
  i_trng1_data1_1(31 downto 0) <= i_trng1_data1(31 downto 0);
  i_trng1_r_1 <= i_trng1_r;
  i_trng1_w_1 <= i_trng1_w;
  i_trng2_data_1(31 downto 0) <= i_trng2_data(31 downto 0);
  i_trng2_r_1 <= i_trng2_r;
  i_trng2_w_1 <= i_trng2_w;
  i_trng_sel_1 <= i_trng_sel;
  o_trng0_data(31 downto 0) <= mayo_trng_arbiter_0_o_trng0_data(31 downto 0);
  o_trng0_done <= mayo_trng_arbiter_0_o_trng0_done;
  o_trng0_valid <= mayo_trng_arbiter_0_o_trng0_valid;
  o_trng1_data(31 downto 0) <= mayo_trng_arbiter_0_o_trng1_data(31 downto 0);
  o_trng1_done <= mayo_trng_arbiter_0_o_trng1_done;
  o_trng1_valid <= mayo_trng_arbiter_0_o_trng1_valid;
  o_trng2_data(31 downto 0) <= mayo_trng_arbiter_0_o_trng2_data(31 downto 0);
  o_trng2_done <= mayo_trng_arbiter_0_o_trng2_done;
  o_trng2_valid <= mayo_trng_arbiter_0_o_trng2_valid;
  rst_1 <= rst;
TRNG_0: component Mayo_sign_TRNG_0_0
     port map (
      CLK_I => clk_1,
      RST => rst_1,
      R_I => mayo_trng_arbiter_0_o_trng_r,
      TRNG_DATA_I(31 downto 0) => mayo_trng_arbiter_0_o_trng_data(31 downto 0),
      TRNG_DATA_O(31 downto 0) => TRNG_0_TRNG_DATA_O(31 downto 0),
      TRNG_DONE_O => TRNG_0_TRNG_DONE_O,
      TRNG_VALID_O => TRNG_0_TRNG_VALID_O,
      W_I => mayo_trng_arbiter_0_o_trng_w
    );
mayo_trng_arbiter_0: component Mayo_sign_mayo_trng_arbiter_0_0
     port map (
      i_trng0_data(31 downto 0) => i_trng0_data_1(31 downto 0),
      i_trng0_r => i_trng0_r_1,
      i_trng0_w => i_trng0_w_1,
      i_trng1_data(31 downto 0) => i_trng1_data1_1(31 downto 0),
      i_trng1_r => i_trng1_r_1,
      i_trng1_w => i_trng1_w_1,
      i_trng2_data(31 downto 0) => i_trng2_data_1(31 downto 0),
      i_trng2_r => i_trng2_r_1,
      i_trng2_w => i_trng2_w_1,
      i_trng_data(31 downto 0) => TRNG_0_TRNG_DATA_O(31 downto 0),
      i_trng_done => TRNG_0_TRNG_DONE_O,
      i_trng_sel(1 downto 0) => xlconcat_0_dout(1 downto 0),
      i_trng_valid => TRNG_0_TRNG_VALID_O,
      o_trng0_data(31 downto 0) => mayo_trng_arbiter_0_o_trng0_data(31 downto 0),
      o_trng0_done => mayo_trng_arbiter_0_o_trng0_done,
      o_trng0_valid => mayo_trng_arbiter_0_o_trng0_valid,
      o_trng1_data(31 downto 0) => mayo_trng_arbiter_0_o_trng1_data(31 downto 0),
      o_trng1_done => mayo_trng_arbiter_0_o_trng1_done,
      o_trng1_valid => mayo_trng_arbiter_0_o_trng1_valid,
      o_trng2_data(31 downto 0) => mayo_trng_arbiter_0_o_trng2_data(31 downto 0),
      o_trng2_done => mayo_trng_arbiter_0_o_trng2_done,
      o_trng2_valid => mayo_trng_arbiter_0_o_trng2_valid,
      o_trng_data(31 downto 0) => mayo_trng_arbiter_0_o_trng_data(31 downto 0),
      o_trng_r => mayo_trng_arbiter_0_o_trng_r,
      o_trng_w => mayo_trng_arbiter_0_o_trng_w
    );
xlconcat_0: component Mayo_sign_xlconcat_0_0
     port map (
      In0(0) => i_trng_sel_1,
      In1(0) => In1_1(0),
      dout(1 downto 0) => xlconcat_0_dout(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity add_vectors_imp_5D59YL is
  port (
    BRAM_O_Add0A_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_Add0A_ctrl : out STD_LOGIC;
    BRAM_O_Add0A_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_Add0A_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_Add0A_en : out STD_LOGIC;
    BRAM_O_Add0A_rst : out STD_LOGIC;
    BRAM_O_Add0A_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_O_Add1A_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_Add1A_ctrl : out STD_LOGIC;
    BRAM_O_Add1A_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_Add1A_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_Add1A_en : out STD_LOGIC;
    BRAM_O_Add1A_rst : out STD_LOGIC;
    BRAM_O_Add1A_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_O_Add2A_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_Add2A_ctrl : out STD_LOGIC;
    BRAM_O_Add2A_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_Add2A_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_Add2A_en : out STD_LOGIC;
    BRAM_O_Add2A_rst : out STD_LOGIC;
    BRAM_O_Add2A_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_O_Add2B_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_Add2B_ctrl : out STD_LOGIC;
    BRAM_O_Add2B_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_Add2B_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_Add2B_en : out STD_LOGIC;
    BRAM_O_Add2B_rst : out STD_LOGIC;
    BRAM_O_Add2B_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_sel : in STD_LOGIC_VECTOR ( 4 downto 0 );
    clk_0 : in STD_LOGIC;
    i_bram_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_enable : in STD_LOGIC;
    i_out_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_v1_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_v2_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_done : out STD_LOGIC;
    rst_0 : in STD_LOGIC
  );
end add_vectors_imp_5D59YL;

architecture STRUCTURE of add_vectors_imp_5D59YL is
  component Mayo_sign_mayo_add_vectors_0_0 is
  port (
    i_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    i_enable : in STD_LOGIC;
    i_v1_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_v2_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_out_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_bram_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    o_done : out STD_LOGIC;
    i_mema_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mema_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mema_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mema_en : out STD_LOGIC;
    o_mema_rst : out STD_LOGIC;
    o_mema_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    i_memb_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memb_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memb_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memb_en : out STD_LOGIC;
    o_memb_rst : out STD_LOGIC;
    o_memb_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    i_memc_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memc_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memc_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memc_en : out STD_LOGIC;
    o_memc_rst : out STD_LOGIC;
    o_memc_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_controla : out STD_LOGIC;
    o_controlb : out STD_LOGIC;
    o_controlc : out STD_LOGIC
  );
  end component Mayo_sign_mayo_add_vectors_0_0;
  component Mayo_sign_mayo_add_vectors_arb_0_0 is
  port (
    bram_sel : in STD_LOGIC_VECTOR ( 4 downto 0 );
    o_mema_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mema_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mema_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mema_en : in STD_LOGIC;
    i_mema_rst : in STD_LOGIC;
    i_mema_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_controla : in STD_LOGIC;
    o_memb_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_memb_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_memb_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_memb_en : in STD_LOGIC;
    i_memb_rst : in STD_LOGIC;
    i_memb_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_controlb : in STD_LOGIC;
    o_memc_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_memc_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_memc_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_memc_en : in STD_LOGIC;
    i_memc_rst : in STD_LOGIC;
    i_memc_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_controlc : in STD_LOGIC;
    i_BRAM0A_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM0A_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM0A_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM0A_en : out STD_LOGIC;
    o_BRAM0A_rst : out STD_LOGIC;
    o_BRAM0A_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_BRAM0A_control : out STD_LOGIC;
    i_BRAM1A_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM1A_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM1A_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM1A_en : out STD_LOGIC;
    o_BRAM1A_rst : out STD_LOGIC;
    o_BRAM1A_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_BRAM1A_control : out STD_LOGIC;
    i_BRAM2A_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM2A_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM2A_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM2A_en : out STD_LOGIC;
    o_BRAM2A_rst : out STD_LOGIC;
    o_BRAM2A_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_BRAM2A_control : out STD_LOGIC;
    i_BRAM2B_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM2B_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM2B_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM2B_en : out STD_LOGIC;
    o_BRAM2B_rst : out STD_LOGIC;
    o_BRAM2B_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_BRAM2B_control : out STD_LOGIC
  );
  end component Mayo_sign_mayo_add_vectors_arb_0_0;
  signal Conn1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_CTRL : STD_LOGIC;
  signal Conn1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_EN : STD_LOGIC;
  signal Conn1_RST : STD_LOGIC;
  signal Conn1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_add_bram_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_add_enable : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_add_out_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_add_v1_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_add_v2_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal bram_sel_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal clk_0_1 : STD_LOGIC;
  signal mayo_add_vectors_0_BRAM_Add_VecA_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_0_BRAM_Add_VecA_CTRL : STD_LOGIC;
  signal mayo_add_vectors_0_BRAM_Add_VecA_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_0_BRAM_Add_VecA_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_0_BRAM_Add_VecA_EN : STD_LOGIC;
  signal mayo_add_vectors_0_BRAM_Add_VecA_RST : STD_LOGIC;
  signal mayo_add_vectors_0_BRAM_Add_VecA_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_add_vectors_0_BRAM_Add_VecB_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_0_BRAM_Add_VecB_CTRL : STD_LOGIC;
  signal mayo_add_vectors_0_BRAM_Add_VecB_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_0_BRAM_Add_VecB_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_0_BRAM_Add_VecB_EN : STD_LOGIC;
  signal mayo_add_vectors_0_BRAM_Add_VecB_RST : STD_LOGIC;
  signal mayo_add_vectors_0_BRAM_Add_VecB_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_add_vectors_0_BRAM_Add_VecC_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_0_BRAM_Add_VecC_CTRL : STD_LOGIC;
  signal mayo_add_vectors_0_BRAM_Add_VecC_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_0_BRAM_Add_VecC_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_0_BRAM_Add_VecC_EN : STD_LOGIC;
  signal mayo_add_vectors_0_BRAM_Add_VecC_RST : STD_LOGIC;
  signal mayo_add_vectors_0_BRAM_Add_VecC_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_add_vectors_0_o_done : STD_LOGIC;
  signal mayo_add_vectors_arb_0_BRAM_O_Add1A_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_arb_0_BRAM_O_Add1A_CTRL : STD_LOGIC;
  signal mayo_add_vectors_arb_0_BRAM_O_Add1A_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_arb_0_BRAM_O_Add1A_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_arb_0_BRAM_O_Add1A_EN : STD_LOGIC;
  signal mayo_add_vectors_arb_0_BRAM_O_Add1A_RST : STD_LOGIC;
  signal mayo_add_vectors_arb_0_BRAM_O_Add1A_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_add_vectors_arb_0_BRAM_O_Add2A_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_arb_0_BRAM_O_Add2A_CTRL : STD_LOGIC;
  signal mayo_add_vectors_arb_0_BRAM_O_Add2A_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_arb_0_BRAM_O_Add2A_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_arb_0_BRAM_O_Add2A_EN : STD_LOGIC;
  signal mayo_add_vectors_arb_0_BRAM_O_Add2A_RST : STD_LOGIC;
  signal mayo_add_vectors_arb_0_BRAM_O_Add2A_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_add_vectors_arb_0_BRAM_O_Add2B_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_arb_0_BRAM_O_Add2B_CTRL : STD_LOGIC;
  signal mayo_add_vectors_arb_0_BRAM_O_Add2B_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_arb_0_BRAM_O_Add2B_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_arb_0_BRAM_O_Add2B_EN : STD_LOGIC;
  signal mayo_add_vectors_arb_0_BRAM_O_Add2B_RST : STD_LOGIC;
  signal mayo_add_vectors_arb_0_BRAM_O_Add2B_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst_0_1 : STD_LOGIC;
begin
  BRAM_O_Add0A_addr(31 downto 0) <= Conn1_ADDR(31 downto 0);
  BRAM_O_Add0A_ctrl <= Conn1_CTRL;
  BRAM_O_Add0A_din(31 downto 0) <= Conn1_DIN(31 downto 0);
  BRAM_O_Add0A_en <= Conn1_EN;
  BRAM_O_Add0A_rst <= Conn1_RST;
  BRAM_O_Add0A_we(3 downto 0) <= Conn1_WE(3 downto 0);
  BRAM_O_Add1A_addr(31 downto 0) <= mayo_add_vectors_arb_0_BRAM_O_Add1A_ADDR(31 downto 0);
  BRAM_O_Add1A_ctrl <= mayo_add_vectors_arb_0_BRAM_O_Add1A_CTRL;
  BRAM_O_Add1A_din(31 downto 0) <= mayo_add_vectors_arb_0_BRAM_O_Add1A_DIN(31 downto 0);
  BRAM_O_Add1A_en <= mayo_add_vectors_arb_0_BRAM_O_Add1A_EN;
  BRAM_O_Add1A_rst <= mayo_add_vectors_arb_0_BRAM_O_Add1A_RST;
  BRAM_O_Add1A_we(3 downto 0) <= mayo_add_vectors_arb_0_BRAM_O_Add1A_WE(3 downto 0);
  BRAM_O_Add2A_addr(31 downto 0) <= mayo_add_vectors_arb_0_BRAM_O_Add2A_ADDR(31 downto 0);
  BRAM_O_Add2A_ctrl <= mayo_add_vectors_arb_0_BRAM_O_Add2A_CTRL;
  BRAM_O_Add2A_din(31 downto 0) <= mayo_add_vectors_arb_0_BRAM_O_Add2A_DIN(31 downto 0);
  BRAM_O_Add2A_en <= mayo_add_vectors_arb_0_BRAM_O_Add2A_EN;
  BRAM_O_Add2A_rst <= mayo_add_vectors_arb_0_BRAM_O_Add2A_RST;
  BRAM_O_Add2A_we(3 downto 0) <= mayo_add_vectors_arb_0_BRAM_O_Add2A_WE(3 downto 0);
  BRAM_O_Add2B_addr(31 downto 0) <= mayo_add_vectors_arb_0_BRAM_O_Add2B_ADDR(31 downto 0);
  BRAM_O_Add2B_ctrl <= mayo_add_vectors_arb_0_BRAM_O_Add2B_CTRL;
  BRAM_O_Add2B_din(31 downto 0) <= mayo_add_vectors_arb_0_BRAM_O_Add2B_DIN(31 downto 0);
  BRAM_O_Add2B_en <= mayo_add_vectors_arb_0_BRAM_O_Add2B_EN;
  BRAM_O_Add2B_rst <= mayo_add_vectors_arb_0_BRAM_O_Add2B_RST;
  BRAM_O_Add2B_we(3 downto 0) <= mayo_add_vectors_arb_0_BRAM_O_Add2B_WE(3 downto 0);
  Conn1_DOUT(31 downto 0) <= BRAM_O_Add0A_dout(31 downto 0);
  MAYO_SIGNING_FSM_0_o_add_bram_sel(1 downto 0) <= i_bram_sel(1 downto 0);
  MAYO_SIGNING_FSM_0_o_add_enable <= i_enable;
  MAYO_SIGNING_FSM_0_o_add_out_addr(31 downto 0) <= i_out_addr(31 downto 0);
  MAYO_SIGNING_FSM_0_o_add_v1_addr(31 downto 0) <= i_v1_addr(31 downto 0);
  MAYO_SIGNING_FSM_0_o_add_v2_addr(31 downto 0) <= i_v2_addr(31 downto 0);
  bram_sel_1(4 downto 0) <= bram_sel(4 downto 0);
  clk_0_1 <= clk_0;
  mayo_add_vectors_arb_0_BRAM_O_Add1A_DOUT(31 downto 0) <= BRAM_O_Add1A_dout(31 downto 0);
  mayo_add_vectors_arb_0_BRAM_O_Add2A_DOUT(31 downto 0) <= BRAM_O_Add2A_dout(31 downto 0);
  mayo_add_vectors_arb_0_BRAM_O_Add2B_DOUT(31 downto 0) <= BRAM_O_Add2B_dout(31 downto 0);
  o_done <= mayo_add_vectors_0_o_done;
  rst_0_1 <= rst_0;
mayo_add_vectors_0: component Mayo_sign_mayo_add_vectors_0_0
     port map (
      i_bram_sel(1 downto 0) => MAYO_SIGNING_FSM_0_o_add_bram_sel(1 downto 0),
      i_clk => clk_0_1,
      i_enable => MAYO_SIGNING_FSM_0_o_add_enable,
      i_mema_dout(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecA_DOUT(31 downto 0),
      i_memb_dout(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecB_DOUT(31 downto 0),
      i_memc_dout(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecC_DOUT(31 downto 0),
      i_out_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_add_out_addr(31 downto 0),
      i_v1_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_add_v1_addr(31 downto 0),
      i_v2_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_add_v2_addr(31 downto 0),
      o_controla => mayo_add_vectors_0_BRAM_Add_VecA_CTRL,
      o_controlb => mayo_add_vectors_0_BRAM_Add_VecB_CTRL,
      o_controlc => mayo_add_vectors_0_BRAM_Add_VecC_CTRL,
      o_done => mayo_add_vectors_0_o_done,
      o_mema_addr(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecA_ADDR(31 downto 0),
      o_mema_din(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecA_DIN(31 downto 0),
      o_mema_en => mayo_add_vectors_0_BRAM_Add_VecA_EN,
      o_mema_rst => mayo_add_vectors_0_BRAM_Add_VecA_RST,
      o_mema_we(3 downto 0) => mayo_add_vectors_0_BRAM_Add_VecA_WE(3 downto 0),
      o_memb_addr(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecB_ADDR(31 downto 0),
      o_memb_din(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecB_DIN(31 downto 0),
      o_memb_en => mayo_add_vectors_0_BRAM_Add_VecB_EN,
      o_memb_rst => mayo_add_vectors_0_BRAM_Add_VecB_RST,
      o_memb_we(3 downto 0) => mayo_add_vectors_0_BRAM_Add_VecB_WE(3 downto 0),
      o_memc_addr(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecC_ADDR(31 downto 0),
      o_memc_din(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecC_DIN(31 downto 0),
      o_memc_en => mayo_add_vectors_0_BRAM_Add_VecC_EN,
      o_memc_rst => mayo_add_vectors_0_BRAM_Add_VecC_RST,
      o_memc_we(3 downto 0) => mayo_add_vectors_0_BRAM_Add_VecC_WE(3 downto 0),
      rst => rst_0_1
    );
mayo_add_vectors_arb_0: component Mayo_sign_mayo_add_vectors_arb_0_0
     port map (
      bram_sel(4 downto 0) => bram_sel_1(4 downto 0),
      i_BRAM0A_dout(31 downto 0) => Conn1_DOUT(31 downto 0),
      i_BRAM1A_dout(31 downto 0) => mayo_add_vectors_arb_0_BRAM_O_Add1A_DOUT(31 downto 0),
      i_BRAM2A_dout(31 downto 0) => mayo_add_vectors_arb_0_BRAM_O_Add2A_DOUT(31 downto 0),
      i_BRAM2B_dout(31 downto 0) => mayo_add_vectors_arb_0_BRAM_O_Add2B_DOUT(31 downto 0),
      i_controla => mayo_add_vectors_0_BRAM_Add_VecA_CTRL,
      i_controlb => mayo_add_vectors_0_BRAM_Add_VecB_CTRL,
      i_controlc => mayo_add_vectors_0_BRAM_Add_VecC_CTRL,
      i_mema_addr(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecA_ADDR(31 downto 0),
      i_mema_din(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecA_DIN(31 downto 0),
      i_mema_en => mayo_add_vectors_0_BRAM_Add_VecA_EN,
      i_mema_rst => mayo_add_vectors_0_BRAM_Add_VecA_RST,
      i_mema_we(3 downto 0) => mayo_add_vectors_0_BRAM_Add_VecA_WE(3 downto 0),
      i_memb_addr(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecB_ADDR(31 downto 0),
      i_memb_din(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecB_DIN(31 downto 0),
      i_memb_en => mayo_add_vectors_0_BRAM_Add_VecB_EN,
      i_memb_rst => mayo_add_vectors_0_BRAM_Add_VecB_RST,
      i_memb_we(3 downto 0) => mayo_add_vectors_0_BRAM_Add_VecB_WE(3 downto 0),
      i_memc_addr(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecC_ADDR(31 downto 0),
      i_memc_din(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecC_DIN(31 downto 0),
      i_memc_en => mayo_add_vectors_0_BRAM_Add_VecC_EN,
      i_memc_rst => mayo_add_vectors_0_BRAM_Add_VecC_RST,
      i_memc_we(3 downto 0) => mayo_add_vectors_0_BRAM_Add_VecC_WE(3 downto 0),
      o_BRAM0A_addr(31 downto 0) => Conn1_ADDR(31 downto 0),
      o_BRAM0A_control => Conn1_CTRL,
      o_BRAM0A_din(31 downto 0) => Conn1_DIN(31 downto 0),
      o_BRAM0A_en => Conn1_EN,
      o_BRAM0A_rst => Conn1_RST,
      o_BRAM0A_we(3 downto 0) => Conn1_WE(3 downto 0),
      o_BRAM1A_addr(31 downto 0) => mayo_add_vectors_arb_0_BRAM_O_Add1A_ADDR(31 downto 0),
      o_BRAM1A_control => mayo_add_vectors_arb_0_BRAM_O_Add1A_CTRL,
      o_BRAM1A_din(31 downto 0) => mayo_add_vectors_arb_0_BRAM_O_Add1A_DIN(31 downto 0),
      o_BRAM1A_en => mayo_add_vectors_arb_0_BRAM_O_Add1A_EN,
      o_BRAM1A_rst => mayo_add_vectors_arb_0_BRAM_O_Add1A_RST,
      o_BRAM1A_we(3 downto 0) => mayo_add_vectors_arb_0_BRAM_O_Add1A_WE(3 downto 0),
      o_BRAM2A_addr(31 downto 0) => mayo_add_vectors_arb_0_BRAM_O_Add2A_ADDR(31 downto 0),
      o_BRAM2A_control => mayo_add_vectors_arb_0_BRAM_O_Add2A_CTRL,
      o_BRAM2A_din(31 downto 0) => mayo_add_vectors_arb_0_BRAM_O_Add2A_DIN(31 downto 0),
      o_BRAM2A_en => mayo_add_vectors_arb_0_BRAM_O_Add2A_EN,
      o_BRAM2A_rst => mayo_add_vectors_arb_0_BRAM_O_Add2A_RST,
      o_BRAM2A_we(3 downto 0) => mayo_add_vectors_arb_0_BRAM_O_Add2A_WE(3 downto 0),
      o_BRAM2B_addr(31 downto 0) => mayo_add_vectors_arb_0_BRAM_O_Add2B_ADDR(31 downto 0),
      o_BRAM2B_control => mayo_add_vectors_arb_0_BRAM_O_Add2B_CTRL,
      o_BRAM2B_din(31 downto 0) => mayo_add_vectors_arb_0_BRAM_O_Add2B_DIN(31 downto 0),
      o_BRAM2B_en => mayo_add_vectors_arb_0_BRAM_O_Add2B_EN,
      o_BRAM2B_rst => mayo_add_vectors_arb_0_BRAM_O_Add2B_RST,
      o_BRAM2B_we(3 downto 0) => mayo_add_vectors_arb_0_BRAM_O_Add2B_WE(3 downto 0),
      o_mema_dout(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecA_DOUT(31 downto 0),
      o_memb_dout(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecB_DOUT(31 downto 0),
      o_memc_dout(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecC_DOUT(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hash_imp_1H0AQ0H is
  port (
    BRAM_HashBig_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_HashBig_ctrl : out STD_LOGIC;
    BRAM_HashBig_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_HashBig_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_HashBig_en : out STD_LOGIC;
    BRAM_HashBig_rst : out STD_LOGIC;
    BRAM_HashBig_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_HashSmall_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_HashSmall_ctrl : out STD_LOGIC;
    BRAM_HashSmall_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_HashSmall_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_HashSmall_en : out STD_LOGIC;
    BRAM_HashSmall_rst : out STD_LOGIC;
    BRAM_HashSmall_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_sel : in STD_LOGIC;
    clk : in STD_LOGIC;
    i_key_en : in STD_LOGIC;
    i_key_mlen : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_key_olen : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_key_read_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_key_write_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_key_done : out STD_LOGIC;
    o_key_dyn_done : out STD_LOGIC;
    rst : in STD_LOGIC
  );
end hash_imp_1H0AQ0H;

architecture STRUCTURE of hash_imp_1H0AQ0H is
  component Mayo_sign_MAYO_SHAKE_1_0 is
  port (
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    mlen : in STD_LOGIC_VECTOR ( 31 downto 0 );
    olen : in STD_LOGIC_VECTOR ( 31 downto 0 );
    write_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    read_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dyn_done : out STD_LOGIC;
    done : out STD_LOGIC;
    o_control : out STD_LOGIC;
    BRAMA_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAMA_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAMA_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAMA_en : out STD_LOGIC;
    BRAMA_dout : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Mayo_sign_MAYO_SHAKE_1_0;
  component Mayo_sign_mayo_hash_bram_arbit_0_0 is
  port (
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
  end component Mayo_sign_mayo_hash_bram_arbit_0_0;
  signal MAYO_SHAKE_1_BRAMA_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SHAKE_1_BRAMA_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SHAKE_1_BRAMA_en : STD_LOGIC;
  signal MAYO_SHAKE_1_BRAMA_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MAYO_SHAKE_1_done : STD_LOGIC;
  signal MAYO_SHAKE_1_dyn_done : STD_LOGIC;
  signal MAYO_SHAKE_1_o_control : STD_LOGIC;
  signal bram_sel_1 : STD_LOGIC;
  signal i_key_en_1 : STD_LOGIC;
  signal i_key_mlen_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i_key_olen_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i_key_read_adr_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i_key_write_adr_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_hash_bram_arbit_0_BRAM_HashBig_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_hash_bram_arbit_0_BRAM_HashBig_CTRL : STD_LOGIC;
  signal mayo_hash_bram_arbit_0_BRAM_HashBig_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_hash_bram_arbit_0_BRAM_HashBig_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_hash_bram_arbit_0_BRAM_HashBig_EN : STD_LOGIC;
  signal mayo_hash_bram_arbit_0_BRAM_HashBig_RST : STD_LOGIC;
  signal mayo_hash_bram_arbit_0_BRAM_HashBig_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_hash_bram_arbit_0_BRAM_HashSmall_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_hash_bram_arbit_0_BRAM_HashSmall_CTRL : STD_LOGIC;
  signal mayo_hash_bram_arbit_0_BRAM_HashSmall_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_hash_bram_arbit_0_BRAM_HashSmall_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_hash_bram_arbit_0_BRAM_HashSmall_EN : STD_LOGIC;
  signal mayo_hash_bram_arbit_0_BRAM_HashSmall_RST : STD_LOGIC;
  signal mayo_hash_bram_arbit_0_BRAM_HashSmall_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_hash_bram_arbit_0_hash_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal rst_ps7_0_100M_peripheral_aresetn : STD_LOGIC;
begin
  BRAM_HashBig_addr(31 downto 0) <= mayo_hash_bram_arbit_0_BRAM_HashBig_ADDR(31 downto 0);
  BRAM_HashBig_ctrl <= mayo_hash_bram_arbit_0_BRAM_HashBig_CTRL;
  BRAM_HashBig_din(31 downto 0) <= mayo_hash_bram_arbit_0_BRAM_HashBig_DIN(31 downto 0);
  BRAM_HashBig_en <= mayo_hash_bram_arbit_0_BRAM_HashBig_EN;
  BRAM_HashBig_rst <= mayo_hash_bram_arbit_0_BRAM_HashBig_RST;
  BRAM_HashBig_we(3 downto 0) <= mayo_hash_bram_arbit_0_BRAM_HashBig_WE(3 downto 0);
  BRAM_HashSmall_addr(31 downto 0) <= mayo_hash_bram_arbit_0_BRAM_HashSmall_ADDR(31 downto 0);
  BRAM_HashSmall_ctrl <= mayo_hash_bram_arbit_0_BRAM_HashSmall_CTRL;
  BRAM_HashSmall_din(31 downto 0) <= mayo_hash_bram_arbit_0_BRAM_HashSmall_DIN(31 downto 0);
  BRAM_HashSmall_en <= mayo_hash_bram_arbit_0_BRAM_HashSmall_EN;
  BRAM_HashSmall_rst <= mayo_hash_bram_arbit_0_BRAM_HashSmall_RST;
  BRAM_HashSmall_we(3 downto 0) <= mayo_hash_bram_arbit_0_BRAM_HashSmall_WE(3 downto 0);
  bram_sel_1 <= bram_sel;
  i_key_en_1 <= i_key_en;
  i_key_mlen_1(31 downto 0) <= i_key_mlen(31 downto 0);
  i_key_olen_1(31 downto 0) <= i_key_olen(31 downto 0);
  i_key_read_adr_1(31 downto 0) <= i_key_read_adr(31 downto 0);
  i_key_write_adr_1(31 downto 0) <= i_key_write_adr(31 downto 0);
  mayo_hash_bram_arbit_0_BRAM_HashBig_DOUT(31 downto 0) <= BRAM_HashBig_dout(31 downto 0);
  mayo_hash_bram_arbit_0_BRAM_HashSmall_DOUT(31 downto 0) <= BRAM_HashSmall_dout(31 downto 0);
  o_key_done <= MAYO_SHAKE_1_done;
  o_key_dyn_done <= MAYO_SHAKE_1_dyn_done;
  processing_system7_0_FCLK_CLK0 <= clk;
  rst_ps7_0_100M_peripheral_aresetn <= rst;
MAYO_SHAKE_1: component Mayo_sign_MAYO_SHAKE_1_0
     port map (
      BRAMA_addr(31 downto 0) => MAYO_SHAKE_1_BRAMA_addr(31 downto 0),
      BRAMA_din(31 downto 0) => MAYO_SHAKE_1_BRAMA_din(31 downto 0),
      BRAMA_dout(31 downto 0) => mayo_hash_bram_arbit_0_hash_dout(31 downto 0),
      BRAMA_en => MAYO_SHAKE_1_BRAMA_en,
      BRAMA_we(3 downto 0) => MAYO_SHAKE_1_BRAMA_we(3 downto 0),
      clk => processing_system7_0_FCLK_CLK0,
      done => MAYO_SHAKE_1_done,
      dyn_done => MAYO_SHAKE_1_dyn_done,
      en => i_key_en_1,
      mlen(31 downto 0) => i_key_mlen_1(31 downto 0),
      o_control => MAYO_SHAKE_1_o_control,
      olen(31 downto 0) => i_key_olen_1(31 downto 0),
      read_adr(31 downto 0) => i_key_read_adr_1(31 downto 0),
      rst => rst_ps7_0_100M_peripheral_aresetn,
      write_adr(31 downto 0) => i_key_write_adr_1(31 downto 0)
    );
mayo_hash_bram_arbit_0: component Mayo_sign_mayo_hash_bram_arbit_0_0
     port map (
      BRAM0_addr(31 downto 0) => mayo_hash_bram_arbit_0_BRAM_HashSmall_ADDR(31 downto 0),
      BRAM0_control => mayo_hash_bram_arbit_0_BRAM_HashSmall_CTRL,
      BRAM0_din(31 downto 0) => mayo_hash_bram_arbit_0_BRAM_HashSmall_DIN(31 downto 0),
      BRAM0_dout(31 downto 0) => mayo_hash_bram_arbit_0_BRAM_HashSmall_DOUT(31 downto 0),
      BRAM0_en => mayo_hash_bram_arbit_0_BRAM_HashSmall_EN,
      BRAM0_rst => mayo_hash_bram_arbit_0_BRAM_HashSmall_RST,
      BRAM0_we(3 downto 0) => mayo_hash_bram_arbit_0_BRAM_HashSmall_WE(3 downto 0),
      BRAM1_addr(31 downto 0) => mayo_hash_bram_arbit_0_BRAM_HashBig_ADDR(31 downto 0),
      BRAM1_control => mayo_hash_bram_arbit_0_BRAM_HashBig_CTRL,
      BRAM1_din(31 downto 0) => mayo_hash_bram_arbit_0_BRAM_HashBig_DIN(31 downto 0),
      BRAM1_dout(31 downto 0) => mayo_hash_bram_arbit_0_BRAM_HashBig_DOUT(31 downto 0),
      BRAM1_en => mayo_hash_bram_arbit_0_BRAM_HashBig_EN,
      BRAM1_rst => mayo_hash_bram_arbit_0_BRAM_HashBig_RST,
      BRAM1_we(3 downto 0) => mayo_hash_bram_arbit_0_BRAM_HashBig_WE(3 downto 0),
      bram_sel => bram_sel_1,
      hash_addr(31 downto 0) => MAYO_SHAKE_1_BRAMA_addr(31 downto 0),
      hash_control => MAYO_SHAKE_1_o_control,
      hash_din(31 downto 0) => MAYO_SHAKE_1_BRAMA_din(31 downto 0),
      hash_dout(31 downto 0) => mayo_hash_bram_arbit_0_hash_dout(31 downto 0),
      hash_en => MAYO_SHAKE_1_BRAMA_en,
      hash_we(3 downto 0) => MAYO_SHAKE_1_BRAMA_we(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Mayo_sign is
  port (
    clk : in STD_LOGIC;
    done : out STD_LOGIC;
    i_enable : in STD_LOGIC;
    i_secret : in STD_LOGIC;
    o_err : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rst : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Mayo_sign : entity is "Mayo_sign,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Mayo_sign,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=39,numReposBlks=32,numNonXlnxBlks=2,numHierBlks=7,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=23,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of Mayo_sign : entity is "Mayo_sign.hwdef";
end Mayo_sign;

architecture STRUCTURE of Mayo_sign is
  component Mayo_sign_Ground0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component Mayo_sign_Ground0_0;
  component Mayo_sign_Ground32_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Mayo_sign_Ground32_0;
  component Mayo_sign_Ground4_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component Mayo_sign_Ground4_0;
  component Mayo_sign_MAYO_P1P1T_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    enable : in STD_LOGIC;
    o_done : out STD_LOGIC;
    i_src_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_dsta_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_dstb_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_ji_equal : in STD_LOGIC;
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
  end component Mayo_sign_MAYO_P1P1T_0_0;
  component Mayo_sign_mayo_add_oil_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    i_enable : in STD_LOGIC;
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
  end component Mayo_sign_mayo_add_oil_0_0;
  component Mayo_sign_mayo_negate_0_0 is
  port (
    i_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    i_enable : in STD_LOGIC;
    i_len : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_doutb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_addrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_dinb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_enb : out STD_LOGIC;
    o_rstb : out STD_LOGIC;
    o_web : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_done : out STD_LOGIC;
    o_control : out STD_LOGIC
  );
  end component Mayo_sign_mayo_negate_0_0;
  component Mayo_sign_mayo_reduce_0_0 is
  port (
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
  end component Mayo_sign_mayo_reduce_0_0;
  component Mayo_sign_mayo_sample_oil_0_0 is
  port (
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
  end component Mayo_sign_mayo_sample_oil_0_0;
  component Mayo_sign_mayo_sample_vinegar_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    o_done : out STD_LOGIC;
    i_input_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_trng_r : out STD_LOGIC;
    o_trng_w : out STD_LOGIC;
    o_trng_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_trng_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_trng_valid : in STD_LOGIC;
    i_trng_done : in STD_LOGIC;
    o_trng_sel : out STD_LOGIC;
    i_memb_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memb_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memb_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memb_en : out STD_LOGIC;
    o_memb_rst : out STD_LOGIC;
    o_memb_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_controlb : out STD_LOGIC
  );
  end component Mayo_sign_mayo_sample_vinegar_0_0;
  component Mayo_sign_memcpy_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    start : in STD_LOGIC;
    i_src_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_dst_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_len : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_done : out STD_LOGIC;
    i_mem_port_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_src_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_src_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_src_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_src_en : out STD_LOGIC;
    o_src_rst : out STD_LOGIC;
    o_src_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_src_control : out STD_LOGIC;
    i_dest_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_dest_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_dest_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_dest_en : out STD_LOGIC;
    o_dest_rst : out STD_LOGIC;
    o_dest_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_dest_control : out STD_LOGIC
  );
  end component Mayo_sign_memcpy_0_0;
  component Mayo_sign_memcpy_0_1 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    start : in STD_LOGIC;
    i_src_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_dst_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_len : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_done : out STD_LOGIC;
    i_mem_port_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_src_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_src_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_src_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_src_en : out STD_LOGIC;
    o_src_rst : out STD_LOGIC;
    o_src_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_src_control : out STD_LOGIC;
    i_dest_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_dest_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_dest_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_dest_en : out STD_LOGIC;
    o_dest_rst : out STD_LOGIC;
    o_dest_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_dest_control : out STD_LOGIC
  );
  end component Mayo_sign_memcpy_0_1;
  component Mayo_sign_MAYO_SIGNING_FSM_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    i_enable : in STD_LOGIC;
    i_secret : in STD_LOGIC;
    o_done : out STD_LOGIC;
    o_err : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_trng_r : out STD_LOGIC;
    o_trng_w : out STD_LOGIC;
    o_trng_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_trng_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_trng_valid : in STD_LOGIC;
    i_trng_done : in STD_LOGIC;
    o_hash_en : out STD_LOGIC;
    o_hash_mlen : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_hash_olen : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_hash_write_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_hash_read_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_hash_done : in STD_LOGIC;
    i_hash_dyn_done : in STD_LOGIC;
    o_hash_memsel : out STD_LOGIC;
    o_sam_enable : out STD_LOGIC;
    i_sam_done : in STD_LOGIC;
    o_sam_mode : out STD_LOGIC;
    o_sam_oil_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_red_enable : out STD_LOGIC;
    o_red_len : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_red_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_red_bram_sel : out STD_LOGIC;
    i_red_done : in STD_LOGIC;
    o_memcpy_start : out STD_LOGIC;
    o_memcpy_src_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memcpy_dst_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memcpy_len : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_memcpy_done : in STD_LOGIC;
    o_memcpy_mem_port_sel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_memcpy1_start : out STD_LOGIC;
    o_memcpy1_src_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memcpy1_dst_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memcpy1_len : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_memcpy1_done : in STD_LOGIC;
    o_memcpy1_mem_port_sel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_p1p1t_enable : out STD_LOGIC;
    i_p1p1t_done : in STD_LOGIC;
    o_p1p1t_src_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_p1p1t_dsta_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_p1p1t_dstb_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_p1p1t_ji_equal : out STD_LOGIC;
    o_lin_enable : out STD_LOGIC;
    i_lin_done : in STD_LOGIC;
    o_lin_bram_halt : out STD_LOGIC;
    o_lin_vec_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_lin_coeffs_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_lin_out_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_lin_len : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_lin_demux_bram_sel : out STD_LOGIC_VECTOR ( 4 downto 0 );
    o_add_enable : out STD_LOGIC;
    o_add_v1_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_add_v2_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_add_out_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_add_done : in STD_LOGIC;
    o_add_bram_sel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_add_demux_bram_sel : out STD_LOGIC_VECTOR ( 4 downto 0 );
    o_sam_vin_en : out STD_LOGIC;
    i_sam_vin_done : in STD_LOGIC;
    o_sam_vin_input_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_red_ext_en : out STD_LOGIC;
    i_red_ext_done : in STD_LOGIC;
    o_red_ext_input_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_red_ext_output_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_neg_enable : out STD_LOGIC;
    o_neg_len : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_neg_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_neg_done : in STD_LOGIC;
    o_sam_oil_en : out STD_LOGIC;
    i_sam_oil_ret : in STD_LOGIC;
    i_sam_oil_done : in STD_LOGIC;
    o_add_oil_enable : out STD_LOGIC;
    i_add_oil_done : in STD_LOGIC;
    i_mem0a_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0a_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0a_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0a_en : out STD_LOGIC;
    o_mem0a_rst : out STD_LOGIC;
    o_mem0a_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    i_mem0b_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0b_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0b_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0b_en : out STD_LOGIC;
    o_mem0b_rst : out STD_LOGIC;
    o_mem0b_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    i_mem1a_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem1a_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem1a_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem1a_en : out STD_LOGIC;
    o_mem1a_rst : out STD_LOGIC;
    o_mem1a_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    i_mem2a_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem2a_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem2a_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem2a_en : out STD_LOGIC;
    o_mem2a_rst : out STD_LOGIC;
    o_mem2a_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    i_mem2b_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem2b_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem2b_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem2b_en : out STD_LOGIC;
    o_mem2b_rst : out STD_LOGIC;
    o_mem2b_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_control0a : out STD_LOGIC;
    o_control0b : out STD_LOGIC;
    o_control1a : out STD_LOGIC;
    o_control2a : out STD_LOGIC;
    o_control2b : out STD_LOGIC
  );
  end component Mayo_sign_MAYO_SIGNING_FSM_0_0;
  component Mayo_sign_mayo_sample_oil_space_0_0 is
  port (
    i_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    i_enable : in STD_LOGIC;
    o_done : out STD_LOGIC;
    i_oil_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mode : in STD_LOGIC;
    o_trng_r : out STD_LOGIC;
    o_trng_w : out STD_LOGIC;
    o_trng_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_trng_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_trng_valid : in STD_LOGIC;
    i_trng_done : in STD_LOGIC;
    i_mema_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mema_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mema_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mema_en : out STD_LOGIC;
    o_mema_rst : out STD_LOGIC;
    o_mema_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_controla : out STD_LOGIC;
    i_memb_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memb_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memb_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memb_en : out STD_LOGIC;
    o_memb_rst : out STD_LOGIC;
    o_memb_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_controlb : out STD_LOGIC;
    o_trng_sel : out STD_LOGIC
  );
  end component Mayo_sign_mayo_sample_oil_space_0_0;
  component Mayo_sign_mayo_reduce_extension_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    o_done : out STD_LOGIC;
    i_input_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_output_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mema_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mema_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mema_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mema_en : out STD_LOGIC;
    o_mema_rst : out STD_LOGIC;
    o_mema_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_controla : out STD_LOGIC;
    i_memb_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memb_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memb_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memb_en : out STD_LOGIC;
    o_memb_rst : out STD_LOGIC;
    o_memb_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_controlb : out STD_LOGIC;
    i_memc_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memc_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memc_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memc_en : out STD_LOGIC;
    o_memc_rst : out STD_LOGIC;
    o_memc_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_controlc : out STD_LOGIC
  );
  end component Mayo_sign_mayo_reduce_extension_0_0;
  signal BRAM_Add_vec_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_vec_1_CTRL : STD_LOGIC;
  signal BRAM_Add_vec_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_vec_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_vec_1_EN : STD_LOGIC;
  signal BRAM_Add_vec_1_RST : STD_LOGIC;
  signal BRAM_Add_vec_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_Lin1_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Lin1_1_CTRL : STD_LOGIC;
  signal BRAM_Lin1_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Lin1_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Lin1_1_EN : STD_LOGIC;
  signal BRAM_Lin1_1_RST : STD_LOGIC;
  signal BRAM_Lin1_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_Lin_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Lin_1_CTRL : STD_LOGIC;
  signal BRAM_Lin_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Lin_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Lin_1_EN : STD_LOGIC;
  signal BRAM_Lin_1_RST : STD_LOGIC;
  signal BRAM_Lin_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Ground0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Ground32_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Ground4_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal LInear_Combination_BRAM_O_LinArb1a_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal LInear_Combination_BRAM_O_LinArb1a_CTRL : STD_LOGIC;
  signal LInear_Combination_BRAM_O_LinArb1a_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal LInear_Combination_BRAM_O_LinArb1a_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal LInear_Combination_BRAM_O_LinArb1a_EN : STD_LOGIC;
  signal LInear_Combination_BRAM_O_LinArb1a_RST : STD_LOGIC;
  signal LInear_Combination_BRAM_O_LinArb1a_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal LInear_Combination_BRAM_O_LinArb2a_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal LInear_Combination_BRAM_O_LinArb2a_CTRL : STD_LOGIC;
  signal LInear_Combination_BRAM_O_LinArb2a_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal LInear_Combination_BRAM_O_LinArb2a_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal LInear_Combination_BRAM_O_LinArb2a_EN : STD_LOGIC;
  signal LInear_Combination_BRAM_O_LinArb2a_RST : STD_LOGIC;
  signal LInear_Combination_BRAM_O_LinArb2a_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal LInear_Combination_BRAM_O_LinArb2b_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal LInear_Combination_BRAM_O_LinArb2b_CTRL : STD_LOGIC;
  signal LInear_Combination_BRAM_O_LinArb2b_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal LInear_Combination_BRAM_O_LinArb2b_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal LInear_Combination_BRAM_O_LinArb2b_EN : STD_LOGIC;
  signal LInear_Combination_BRAM_O_LinArb2b_RST : STD_LOGIC;
  signal LInear_Combination_BRAM_O_LinArb2b_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MAYO_P1P1T_0_BRAM_P1P1T0b_CTRL : STD_LOGIC;
  signal MAYO_P1P1T_0_BRAM_P1P1T0b_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_P1P1T_0_BRAM_P1P1T0b_EN : STD_LOGIC;
  signal MAYO_P1P1T_0_BRAM_P1P1T0b_RST : STD_LOGIC;
  signal MAYO_P1P1T_0_BRAM_P1P1T1a_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_P1P1T_0_BRAM_P1P1T1a_CTRL : STD_LOGIC;
  signal MAYO_P1P1T_0_BRAM_P1P1T1a_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_P1P1T_0_BRAM_P1P1T1a_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_P1P1T_0_BRAM_P1P1T1a_EN : STD_LOGIC;
  signal MAYO_P1P1T_0_BRAM_P1P1T1a_RST : STD_LOGIC;
  signal MAYO_P1P1T_0_BRAM_P1P1T1a_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MAYO_P1P1T_0_o_done : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0a_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0a_CTRL : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0a_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0a_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0a_EN : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0a_RST : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0a_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0b_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0b_CTRL : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0b_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0b_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0b_EN : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0b_RST : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0b_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign1a_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign1a_CTRL : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign1a_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign1a_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign1a_EN : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign1a_RST : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign1a_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign2a_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign2a_CTRL : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign2a_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign2a_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign2a_EN : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign2a_RST : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign2a_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign2b_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign2b_CTRL : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign2b_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign2b_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign2b_EN : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign2b_RST : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign2b_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_add_bram_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_add_demux_bram_sel : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_add_enable : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_add_oil_enable : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_add_out_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_add_v1_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_add_v2_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_done : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_err : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_hash_en : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_hash_memsel : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_hash_mlen : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_hash_olen : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_hash_read_adr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_hash_write_adr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_lin_bram_halt : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_lin_coeffs_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_lin_demux_bram_sel : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_lin_enable : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_lin_len : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_lin_out_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_lin_vec_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_memcpy1_dst_adr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_memcpy1_len : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_memcpy1_mem_port_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_memcpy1_src_adr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_memcpy1_start : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_memcpy_dst_adr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_memcpy_len : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_memcpy_mem_port_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_memcpy_src_adr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_memcpy_start : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_neg_adr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_neg_enable : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_neg_len : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_p1p1t_dsta_adr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_p1p1t_dstb_adr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_p1p1t_enable : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_p1p1t_ji_equal : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_p1p1t_src_adr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_red_adr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_red_bram_sel : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_red_enable : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_red_ext_en : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_red_ext_input_adr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_red_ext_output_adr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_red_len : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_sam_enable : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_sam_mode : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_sam_oil_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_sam_oil_en : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_sam_vin_en : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_sam_vin_input_adr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_trng_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_trng_r : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_trng_w : STD_LOGIC;
  signal TRNG_o_trng0_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRNG_o_trng0_done : STD_LOGIC;
  signal TRNG_o_trng0_valid : STD_LOGIC;
  signal TRNG_o_trng1_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRNG_o_trng1_done : STD_LOGIC;
  signal TRNG_o_trng1_valid : STD_LOGIC;
  signal TRNG_o_trng2_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRNG_o_trng2_done : STD_LOGIC;
  signal TRNG_o_trng2_valid : STD_LOGIC;
  signal add_vectors_BRAM_O_Add1A_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal add_vectors_BRAM_O_Add1A_CTRL : STD_LOGIC;
  signal add_vectors_BRAM_O_Add1A_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal add_vectors_BRAM_O_Add1A_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal add_vectors_BRAM_O_Add1A_EN : STD_LOGIC;
  signal add_vectors_BRAM_O_Add1A_RST : STD_LOGIC;
  signal add_vectors_BRAM_O_Add1A_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal add_vectors_BRAM_O_Add2A_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal add_vectors_BRAM_O_Add2A_CTRL : STD_LOGIC;
  signal add_vectors_BRAM_O_Add2A_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal add_vectors_BRAM_O_Add2A_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal add_vectors_BRAM_O_Add2A_EN : STD_LOGIC;
  signal add_vectors_BRAM_O_Add2A_RST : STD_LOGIC;
  signal add_vectors_BRAM_O_Add2A_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal add_vectors_BRAM_O_Add2B_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal add_vectors_BRAM_O_Add2B_CTRL : STD_LOGIC;
  signal add_vectors_BRAM_O_Add2B_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal add_vectors_BRAM_O_Add2B_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal add_vectors_BRAM_O_Add2B_EN : STD_LOGIC;
  signal add_vectors_BRAM_O_Add2B_RST : STD_LOGIC;
  signal add_vectors_BRAM_O_Add2B_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clk_0_1 : STD_LOGIC;
  signal hash_BRAM_HashBig_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hash_BRAM_HashBig_CTRL : STD_LOGIC;
  signal hash_BRAM_HashBig_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hash_BRAM_HashBig_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hash_BRAM_HashBig_EN : STD_LOGIC;
  signal hash_BRAM_HashBig_RST : STD_LOGIC;
  signal hash_BRAM_HashBig_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hash_BRAM_HashSmall_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hash_BRAM_HashSmall_CTRL : STD_LOGIC;
  signal hash_BRAM_HashSmall_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hash_BRAM_HashSmall_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hash_BRAM_HashSmall_EN : STD_LOGIC;
  signal hash_BRAM_HashSmall_RST : STD_LOGIC;
  signal hash_BRAM_HashSmall_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hash_o_key_done : STD_LOGIC;
  signal hash_o_key_dyn_done : STD_LOGIC;
  signal i_enable_0_1 : STD_LOGIC;
  signal i_secret_0_1 : STD_LOGIC;
  signal i_trng1_data1_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i_trng1_r_1 : STD_LOGIC;
  signal mayo_add_oil_0_BRAM_Add_oil0a_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_oil_0_BRAM_Add_oil0a_CTRL : STD_LOGIC;
  signal mayo_add_oil_0_BRAM_Add_oil0a_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_oil_0_BRAM_Add_oil0a_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_oil_0_BRAM_Add_oil0a_EN : STD_LOGIC;
  signal mayo_add_oil_0_BRAM_Add_oil0a_RST : STD_LOGIC;
  signal mayo_add_oil_0_BRAM_Add_oil0a_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_add_oil_0_BRAM_Add_oil0b_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_oil_0_BRAM_Add_oil0b_CTRL : STD_LOGIC;
  signal mayo_add_oil_0_BRAM_Add_oil0b_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_oil_0_BRAM_Add_oil0b_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_oil_0_BRAM_Add_oil0b_EN : STD_LOGIC;
  signal mayo_add_oil_0_BRAM_Add_oil0b_RST : STD_LOGIC;
  signal mayo_add_oil_0_BRAM_Add_oil0b_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_add_oil_0_BRAM_Add_oil1a_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_oil_0_BRAM_Add_oil1a_CTRL : STD_LOGIC;
  signal mayo_add_oil_0_BRAM_Add_oil1a_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_oil_0_BRAM_Add_oil1a_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_oil_0_BRAM_Add_oil1a_EN : STD_LOGIC;
  signal mayo_add_oil_0_BRAM_Add_oil1a_RST : STD_LOGIC;
  signal mayo_add_oil_0_BRAM_Add_oil1a_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_add_oil_0_o_done : STD_LOGIC;
  signal mayo_add_vectors_0_o_done : STD_LOGIC;
  signal mayo_linear_combinat_0_o_done : STD_LOGIC;
  signal mayo_negate_0_BRAM_Negate_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_negate_0_BRAM_Negate_CTRL : STD_LOGIC;
  signal mayo_negate_0_BRAM_Negate_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_negate_0_BRAM_Negate_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_negate_0_BRAM_Negate_EN : STD_LOGIC;
  signal mayo_negate_0_BRAM_Negate_RST : STD_LOGIC;
  signal mayo_negate_0_BRAM_Negate_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_negate_0_o_done : STD_LOGIC;
  signal mayo_reduce_0_BRAM_Red0_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_0_BRAM_Red0_CTRL : STD_LOGIC;
  signal mayo_reduce_0_BRAM_Red0_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_0_BRAM_Red0_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_0_BRAM_Red0_EN : STD_LOGIC;
  signal mayo_reduce_0_BRAM_Red0_RST : STD_LOGIC;
  signal mayo_reduce_0_BRAM_Red0_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_reduce_0_BRAM_Red1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_0_BRAM_Red1_CTRL : STD_LOGIC;
  signal mayo_reduce_0_BRAM_Red1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_0_BRAM_Red1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_0_BRAM_Red1_EN : STD_LOGIC;
  signal mayo_reduce_0_BRAM_Red1_RST : STD_LOGIC;
  signal mayo_reduce_0_BRAM_Red1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_reduce_0_o_done : STD_LOGIC;
  signal mayo_reduce_extension_0_BRAM_Red_Exta_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_extension_0_BRAM_Red_Exta_CTRL : STD_LOGIC;
  signal mayo_reduce_extension_0_BRAM_Red_Exta_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_extension_0_BRAM_Red_Exta_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_extension_0_BRAM_Red_Exta_EN : STD_LOGIC;
  signal mayo_reduce_extension_0_BRAM_Red_Exta_RST : STD_LOGIC;
  signal mayo_reduce_extension_0_BRAM_Red_Exta_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_reduce_extension_0_BRAM_Red_Extb_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_extension_0_BRAM_Red_Extb_CTRL : STD_LOGIC;
  signal mayo_reduce_extension_0_BRAM_Red_Extb_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_extension_0_BRAM_Red_Extb_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_extension_0_BRAM_Red_Extb_EN : STD_LOGIC;
  signal mayo_reduce_extension_0_BRAM_Red_Extb_RST : STD_LOGIC;
  signal mayo_reduce_extension_0_BRAM_Red_Extb_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_reduce_extension_0_BRAM_Red_Extc_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_extension_0_BRAM_Red_Extc_CTRL : STD_LOGIC;
  signal mayo_reduce_extension_0_BRAM_Red_Extc_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_extension_0_BRAM_Red_Extc_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_extension_0_BRAM_Red_Extc_EN : STD_LOGIC;
  signal mayo_reduce_extension_0_BRAM_Red_Extc_RST : STD_LOGIC;
  signal mayo_reduce_extension_0_BRAM_Red_Extc_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_reduce_extension_0_o_done : STD_LOGIC;
  signal mayo_sample_oil_0_BRAM_Sample_oil0a_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_0_BRAM_Sample_oil0a_CTRL : STD_LOGIC;
  signal mayo_sample_oil_0_BRAM_Sample_oil0a_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_0_BRAM_Sample_oil0a_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_0_BRAM_Sample_oil0a_EN : STD_LOGIC;
  signal mayo_sample_oil_0_BRAM_Sample_oil0a_RST : STD_LOGIC;
  signal mayo_sample_oil_0_BRAM_Sample_oil0a_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_sample_oil_0_BRAM_Sample_oil0b_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_0_BRAM_Sample_oil0b_CTRL : STD_LOGIC;
  signal mayo_sample_oil_0_BRAM_Sample_oil0b_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_0_BRAM_Sample_oil0b_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_0_BRAM_Sample_oil0b_EN : STD_LOGIC;
  signal mayo_sample_oil_0_BRAM_Sample_oil0b_RST : STD_LOGIC;
  signal mayo_sample_oil_0_BRAM_Sample_oil0b_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_sample_oil_0_BRAM_Sample_oil1a_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_0_BRAM_Sample_oil1a_CTRL : STD_LOGIC;
  signal mayo_sample_oil_0_BRAM_Sample_oil1a_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_0_BRAM_Sample_oil1a_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_0_BRAM_Sample_oil1a_EN : STD_LOGIC;
  signal mayo_sample_oil_0_BRAM_Sample_oil1a_RST : STD_LOGIC;
  signal mayo_sample_oil_0_BRAM_Sample_oil1a_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_sample_oil_0_o_done : STD_LOGIC;
  signal mayo_sample_oil_0_o_ret : STD_LOGIC;
  signal mayo_sample_oil_space_0_BRAM_Sama_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_space_0_BRAM_Sama_CTRL : STD_LOGIC;
  signal mayo_sample_oil_space_0_BRAM_Sama_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_space_0_BRAM_Sama_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_space_0_BRAM_Sama_EN : STD_LOGIC;
  signal mayo_sample_oil_space_0_BRAM_Sama_RST : STD_LOGIC;
  signal mayo_sample_oil_space_0_BRAM_Sama_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_sample_oil_space_0_BRAM_Samb_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_space_0_BRAM_Samb_CTRL : STD_LOGIC;
  signal mayo_sample_oil_space_0_BRAM_Samb_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_space_0_BRAM_Samb_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_space_0_BRAM_Samb_EN : STD_LOGIC;
  signal mayo_sample_oil_space_0_BRAM_Samb_RST : STD_LOGIC;
  signal mayo_sample_oil_space_0_BRAM_Samb_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_sample_oil_space_0_o_done : STD_LOGIC;
  signal mayo_sample_oil_space_0_o_trng_sel : STD_LOGIC;
  signal mayo_sample_oil_space_0_o_trng_w : STD_LOGIC;
  signal mayo_sample_vinegar_0_BRAM_Sam_vin0a_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_vinegar_0_BRAM_Sam_vin0a_CTRL : STD_LOGIC;
  signal mayo_sample_vinegar_0_BRAM_Sam_vin0a_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_vinegar_0_BRAM_Sam_vin0a_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_vinegar_0_BRAM_Sam_vin0a_EN : STD_LOGIC;
  signal mayo_sample_vinegar_0_BRAM_Sam_vin0a_RST : STD_LOGIC;
  signal mayo_sample_vinegar_0_BRAM_Sam_vin0a_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_sample_vinegar_0_o_done : STD_LOGIC;
  signal mayo_sample_vinegar_0_o_trng_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_vinegar_0_o_trng_r : STD_LOGIC;
  signal mayo_sample_vinegar_0_o_trng_sel : STD_LOGIC;
  signal mayo_sample_vinegar_0_o_trng_w : STD_LOGIC;
  signal memcpy_0_BRAM_Dest_PORTB_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal memcpy_0_BRAM_Dest_PORTB_CTRL : STD_LOGIC;
  signal memcpy_0_BRAM_Dest_PORTB_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal memcpy_0_BRAM_Dest_PORTB_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal memcpy_0_BRAM_Dest_PORTB_EN : STD_LOGIC;
  signal memcpy_0_BRAM_Dest_PORTB_RST : STD_LOGIC;
  signal memcpy_0_BRAM_Dest_PORTB_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal memcpy_0_BRAM_Src_PORTA_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal memcpy_0_BRAM_Src_PORTA_CTRL : STD_LOGIC;
  signal memcpy_0_BRAM_Src_PORTA_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal memcpy_0_BRAM_Src_PORTA_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal memcpy_0_BRAM_Src_PORTA_EN : STD_LOGIC;
  signal memcpy_0_BRAM_Src_PORTA_RST : STD_LOGIC;
  signal memcpy_0_BRAM_Src_PORTA_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal memcpy_0_o_done : STD_LOGIC;
  signal memcpy_1_BRAM_Src_PORTA_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal memcpy_1_BRAM_Src_PORTA_CTRL : STD_LOGIC;
  signal memcpy_1_BRAM_Src_PORTA_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal memcpy_1_BRAM_Src_PORTA_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal memcpy_1_BRAM_Src_PORTA_EN : STD_LOGIC;
  signal memcpy_1_BRAM_Src_PORTA_RST : STD_LOGIC;
  signal memcpy_1_BRAM_Src_PORTA_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal memcpy_1_o_done : STD_LOGIC;
  signal rst_0_1 : STD_LOGIC;
  signal NLW_MAYO_P1P1T_0_o_mem0b_addr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_MAYO_P1P1T_0_o_mem0b_din_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_MAYO_P1P1T_0_o_mem0b_we_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_memcpy_1_o_dest_control_UNCONNECTED : STD_LOGIC;
  signal NLW_memcpy_1_o_dest_en_UNCONNECTED : STD_LOGIC;
  signal NLW_memcpy_1_o_dest_rst_UNCONNECTED : STD_LOGIC;
  signal NLW_memcpy_1_o_dest_addr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memcpy_1_o_dest_din_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memcpy_1_o_dest_we_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN Mayo_sign_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 RST.RST RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  clk_0_1 <= clk;
  done <= MAYO_SIGNING_FSM_0_o_done;
  i_enable_0_1 <= i_enable;
  i_secret_0_1 <= i_secret;
  o_err(1 downto 0) <= MAYO_SIGNING_FSM_0_o_err(1 downto 0);
  rst_0_1 <= rst;
BigBRAM1: entity work.BigBRAM1_imp_FGVWIZ
     port map (
      BRAM_Add_oil_addr(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil1a_ADDR(31 downto 0),
      BRAM_Add_oil_ctrl => mayo_add_oil_0_BRAM_Add_oil1a_CTRL,
      BRAM_Add_oil_din(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil1a_DIN(31 downto 0),
      BRAM_Add_oil_dout(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil1a_DOUT(31 downto 0),
      BRAM_Add_oil_en => mayo_add_oil_0_BRAM_Add_oil1a_EN,
      BRAM_Add_oil_rst => mayo_add_oil_0_BRAM_Add_oil1a_RST,
      BRAM_Add_oil_we(3 downto 0) => mayo_add_oil_0_BRAM_Add_oil1a_WE(3 downto 0),
      BRAM_Add_vec_addr(31 downto 0) => add_vectors_BRAM_O_Add1A_ADDR(31 downto 0),
      BRAM_Add_vec_ctrl => add_vectors_BRAM_O_Add1A_CTRL,
      BRAM_Add_vec_din(31 downto 0) => add_vectors_BRAM_O_Add1A_DIN(31 downto 0),
      BRAM_Add_vec_dout(31 downto 0) => add_vectors_BRAM_O_Add1A_DOUT(31 downto 0),
      BRAM_Add_vec_en => add_vectors_BRAM_O_Add1A_EN,
      BRAM_Add_vec_rst => add_vectors_BRAM_O_Add1A_RST,
      BRAM_Add_vec_we(3 downto 0) => add_vectors_BRAM_O_Add1A_WE(3 downto 0),
      BRAM_Hash_addr(31 downto 0) => hash_BRAM_HashBig_ADDR(31 downto 0),
      BRAM_Hash_ctrl => hash_BRAM_HashBig_CTRL,
      BRAM_Hash_din(31 downto 0) => hash_BRAM_HashBig_DIN(31 downto 0),
      BRAM_Hash_dout(31 downto 0) => hash_BRAM_HashBig_DOUT(31 downto 0),
      BRAM_Hash_en => hash_BRAM_HashBig_EN,
      BRAM_Hash_rst => hash_BRAM_HashBig_RST,
      BRAM_Hash_we(3 downto 0) => hash_BRAM_HashBig_WE(3 downto 0),
      BRAM_Lin_addr(31 downto 0) => LInear_Combination_BRAM_O_LinArb1a_ADDR(31 downto 0),
      BRAM_Lin_ctrl => LInear_Combination_BRAM_O_LinArb1a_CTRL,
      BRAM_Lin_din(31 downto 0) => LInear_Combination_BRAM_O_LinArb1a_DIN(31 downto 0),
      BRAM_Lin_dout(31 downto 0) => LInear_Combination_BRAM_O_LinArb1a_DOUT(31 downto 0),
      BRAM_Lin_en => LInear_Combination_BRAM_O_LinArb1a_EN,
      BRAM_Lin_rst => LInear_Combination_BRAM_O_LinArb1a_RST,
      BRAM_Lin_we(3 downto 0) => LInear_Combination_BRAM_O_LinArb1a_WE(3 downto 0),
      BRAM_Memcpy0_addr(31 downto 0) => memcpy_0_BRAM_Dest_PORTB_ADDR(31 downto 0),
      BRAM_Memcpy0_ctrl => memcpy_0_BRAM_Dest_PORTB_CTRL,
      BRAM_Memcpy0_din(31 downto 0) => memcpy_0_BRAM_Dest_PORTB_DIN(31 downto 0),
      BRAM_Memcpy0_dout(31 downto 0) => memcpy_0_BRAM_Dest_PORTB_DOUT(31 downto 0),
      BRAM_Memcpy0_en => memcpy_0_BRAM_Dest_PORTB_EN,
      BRAM_Memcpy0_rst => memcpy_0_BRAM_Dest_PORTB_RST,
      BRAM_Memcpy0_we(3 downto 0) => memcpy_0_BRAM_Dest_PORTB_WE(3 downto 0),
      BRAM_Memcpy1_addr(31 downto 0) => memcpy_1_BRAM_Src_PORTA_ADDR(31 downto 0),
      BRAM_Memcpy1_ctrl => memcpy_1_BRAM_Src_PORTA_CTRL,
      BRAM_Memcpy1_din(31 downto 0) => memcpy_1_BRAM_Src_PORTA_DIN(31 downto 0),
      BRAM_Memcpy1_dout(31 downto 0) => memcpy_1_BRAM_Src_PORTA_DOUT(31 downto 0),
      BRAM_Memcpy1_en => memcpy_1_BRAM_Src_PORTA_EN,
      BRAM_Memcpy1_rst => memcpy_1_BRAM_Src_PORTA_RST,
      BRAM_Memcpy1_we(3 downto 0) => memcpy_1_BRAM_Src_PORTA_WE(3 downto 0),
      BRAM_P1P1T_addr(31 downto 0) => MAYO_P1P1T_0_BRAM_P1P1T1a_ADDR(31 downto 0),
      BRAM_P1P1T_ctrl => MAYO_P1P1T_0_BRAM_P1P1T1a_CTRL,
      BRAM_P1P1T_din(31 downto 0) => MAYO_P1P1T_0_BRAM_P1P1T1a_DIN(31 downto 0),
      BRAM_P1P1T_dout(31 downto 0) => MAYO_P1P1T_0_BRAM_P1P1T1a_DOUT(31 downto 0),
      BRAM_P1P1T_en => MAYO_P1P1T_0_BRAM_P1P1T1a_EN,
      BRAM_P1P1T_rst => MAYO_P1P1T_0_BRAM_P1P1T1a_RST,
      BRAM_P1P1T_we(3 downto 0) => MAYO_P1P1T_0_BRAM_P1P1T1a_WE(3 downto 0),
      BRAM_Red_addr(31 downto 0) => mayo_reduce_0_BRAM_Red1_ADDR(31 downto 0),
      BRAM_Red_ctrl => mayo_reduce_0_BRAM_Red1_CTRL,
      BRAM_Red_din(31 downto 0) => mayo_reduce_0_BRAM_Red1_DIN(31 downto 0),
      BRAM_Red_dout(31 downto 0) => mayo_reduce_0_BRAM_Red1_DOUT(31 downto 0),
      BRAM_Red_en => mayo_reduce_0_BRAM_Red1_EN,
      BRAM_Red_rst => mayo_reduce_0_BRAM_Red1_RST,
      BRAM_Red_we(3 downto 0) => mayo_reduce_0_BRAM_Red1_WE(3 downto 0),
      BRAM_Sam_addr(31 downto 0) => mayo_sample_oil_space_0_BRAM_Samb_ADDR(31 downto 0),
      BRAM_Sam_ctrl => mayo_sample_oil_space_0_BRAM_Samb_CTRL,
      BRAM_Sam_din(31 downto 0) => mayo_sample_oil_space_0_BRAM_Samb_DIN(31 downto 0),
      BRAM_Sam_dout(31 downto 0) => mayo_sample_oil_space_0_BRAM_Samb_DOUT(31 downto 0),
      BRAM_Sam_en => mayo_sample_oil_space_0_BRAM_Samb_EN,
      BRAM_Sam_oil_addr(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil1a_ADDR(31 downto 0),
      BRAM_Sam_oil_ctrl => mayo_sample_oil_0_BRAM_Sample_oil1a_CTRL,
      BRAM_Sam_oil_din(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil1a_DIN(31 downto 0),
      BRAM_Sam_oil_dout(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil1a_DOUT(31 downto 0),
      BRAM_Sam_oil_en => mayo_sample_oil_0_BRAM_Sample_oil1a_EN,
      BRAM_Sam_oil_rst => mayo_sample_oil_0_BRAM_Sample_oil1a_RST,
      BRAM_Sam_oil_we(3 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil1a_WE(3 downto 0),
      BRAM_Sam_rst => mayo_sample_oil_space_0_BRAM_Samb_RST,
      BRAM_Sam_we(3 downto 0) => mayo_sample_oil_space_0_BRAM_Samb_WE(3 downto 0),
      BRAM_Sign_addr(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign1a_ADDR(31 downto 0),
      BRAM_Sign_ctrl => MAYO_SIGNING_FSM_0_BRAM_Sign1a_CTRL,
      BRAM_Sign_din(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign1a_DIN(31 downto 0),
      BRAM_Sign_dout(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign1a_DOUT(31 downto 0),
      BRAM_Sign_en => MAYO_SIGNING_FSM_0_BRAM_Sign1a_EN,
      BRAM_Sign_rst => MAYO_SIGNING_FSM_0_BRAM_Sign1a_RST,
      BRAM_Sign_we(3 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign1a_WE(3 downto 0),
      clk_0 => clk_0_1,
      zero0 => Ground0_dout(0),
      zero32(31 downto 0) => Ground32_dout(31 downto 0),
      zero4(3 downto 0) => Ground4_dout(3 downto 0)
    );
BigBRAM2: entity work.BigBRAM2_imp_1PB6TEW
     port map (
      BRAM_Add_vec1_addr(31 downto 0) => add_vectors_BRAM_O_Add2B_ADDR(31 downto 0),
      BRAM_Add_vec1_ctrl => add_vectors_BRAM_O_Add2B_CTRL,
      BRAM_Add_vec1_din(31 downto 0) => add_vectors_BRAM_O_Add2B_DIN(31 downto 0),
      BRAM_Add_vec1_dout(31 downto 0) => add_vectors_BRAM_O_Add2B_DOUT(31 downto 0),
      BRAM_Add_vec1_en => add_vectors_BRAM_O_Add2B_EN,
      BRAM_Add_vec1_rst => add_vectors_BRAM_O_Add2B_RST,
      BRAM_Add_vec1_we(3 downto 0) => add_vectors_BRAM_O_Add2B_WE(3 downto 0),
      BRAM_Add_vec_addr(31 downto 0) => add_vectors_BRAM_O_Add2A_ADDR(31 downto 0),
      BRAM_Add_vec_ctrl => add_vectors_BRAM_O_Add2A_CTRL,
      BRAM_Add_vec_din(31 downto 0) => add_vectors_BRAM_O_Add2A_DIN(31 downto 0),
      BRAM_Add_vec_dout(31 downto 0) => add_vectors_BRAM_O_Add2A_DOUT(31 downto 0),
      BRAM_Add_vec_en => add_vectors_BRAM_O_Add2A_EN,
      BRAM_Add_vec_rst => add_vectors_BRAM_O_Add2A_RST,
      BRAM_Add_vec_we(3 downto 0) => add_vectors_BRAM_O_Add2A_WE(3 downto 0),
      BRAM_Lin1_addr(31 downto 0) => LInear_Combination_BRAM_O_LinArb2b_ADDR(31 downto 0),
      BRAM_Lin1_ctrl => LInear_Combination_BRAM_O_LinArb2b_CTRL,
      BRAM_Lin1_din(31 downto 0) => LInear_Combination_BRAM_O_LinArb2b_DIN(31 downto 0),
      BRAM_Lin1_dout(31 downto 0) => LInear_Combination_BRAM_O_LinArb2b_DOUT(31 downto 0),
      BRAM_Lin1_en => LInear_Combination_BRAM_O_LinArb2b_EN,
      BRAM_Lin1_rst => LInear_Combination_BRAM_O_LinArb2b_RST,
      BRAM_Lin1_we(3 downto 0) => LInear_Combination_BRAM_O_LinArb2b_WE(3 downto 0),
      BRAM_Lin_addr(31 downto 0) => LInear_Combination_BRAM_O_LinArb2a_ADDR(31 downto 0),
      BRAM_Lin_ctrl => LInear_Combination_BRAM_O_LinArb2a_CTRL,
      BRAM_Lin_din(31 downto 0) => LInear_Combination_BRAM_O_LinArb2a_DIN(31 downto 0),
      BRAM_Lin_dout(31 downto 0) => LInear_Combination_BRAM_O_LinArb2a_DOUT(31 downto 0),
      BRAM_Lin_en => LInear_Combination_BRAM_O_LinArb2a_EN,
      BRAM_Lin_rst => LInear_Combination_BRAM_O_LinArb2a_RST,
      BRAM_Lin_we(3 downto 0) => LInear_Combination_BRAM_O_LinArb2a_WE(3 downto 0),
      BRAM_Memcpy0_addr(31 downto 0) => memcpy_0_BRAM_Src_PORTA_ADDR(31 downto 0),
      BRAM_Memcpy0_ctrl => memcpy_0_BRAM_Src_PORTA_CTRL,
      BRAM_Memcpy0_din(31 downto 0) => memcpy_0_BRAM_Src_PORTA_DIN(31 downto 0),
      BRAM_Memcpy0_dout(31 downto 0) => memcpy_0_BRAM_Src_PORTA_DOUT(31 downto 0),
      BRAM_Memcpy0_en => memcpy_0_BRAM_Src_PORTA_EN,
      BRAM_Memcpy0_rst => memcpy_0_BRAM_Src_PORTA_RST,
      BRAM_Memcpy0_we(3 downto 0) => memcpy_0_BRAM_Src_PORTA_WE(3 downto 0),
      BRAM_Neg_addr(31 downto 0) => mayo_negate_0_BRAM_Negate_ADDR(31 downto 0),
      BRAM_Neg_ctrl => mayo_negate_0_BRAM_Negate_CTRL,
      BRAM_Neg_din(31 downto 0) => mayo_negate_0_BRAM_Negate_DIN(31 downto 0),
      BRAM_Neg_dout(31 downto 0) => mayo_negate_0_BRAM_Negate_DOUT(31 downto 0),
      BRAM_Neg_en => mayo_negate_0_BRAM_Negate_EN,
      BRAM_Neg_rst => mayo_negate_0_BRAM_Negate_RST,
      BRAM_Neg_we(3 downto 0) => mayo_negate_0_BRAM_Negate_WE(3 downto 0),
      BRAM_Red_ext1_addr(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Extc_ADDR(31 downto 0),
      BRAM_Red_ext1_ctrl => mayo_reduce_extension_0_BRAM_Red_Extc_CTRL,
      BRAM_Red_ext1_din(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Extc_DIN(31 downto 0),
      BRAM_Red_ext1_dout(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Extc_DOUT(31 downto 0),
      BRAM_Red_ext1_en => mayo_reduce_extension_0_BRAM_Red_Extc_EN,
      BRAM_Red_ext1_rst => mayo_reduce_extension_0_BRAM_Red_Extc_RST,
      BRAM_Red_ext1_we(3 downto 0) => mayo_reduce_extension_0_BRAM_Red_Extc_WE(3 downto 0),
      BRAM_Sign1_addr(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign2b_ADDR(31 downto 0),
      BRAM_Sign1_ctrl => MAYO_SIGNING_FSM_0_BRAM_Sign2b_CTRL,
      BRAM_Sign1_din(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign2b_DIN(31 downto 0),
      BRAM_Sign1_dout(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign2b_DOUT(31 downto 0),
      BRAM_Sign1_en => MAYO_SIGNING_FSM_0_BRAM_Sign2b_EN,
      BRAM_Sign1_rst => MAYO_SIGNING_FSM_0_BRAM_Sign2b_RST,
      BRAM_Sign1_we(3 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign2b_WE(3 downto 0),
      BRAM_Sign_addr(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign2a_ADDR(31 downto 0),
      BRAM_Sign_ctrl => MAYO_SIGNING_FSM_0_BRAM_Sign2a_CTRL,
      BRAM_Sign_din(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign2a_DIN(31 downto 0),
      BRAM_Sign_dout(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign2a_DOUT(31 downto 0),
      BRAM_Sign_en => MAYO_SIGNING_FSM_0_BRAM_Sign2a_EN,
      BRAM_Sign_rst => MAYO_SIGNING_FSM_0_BRAM_Sign2a_RST,
      BRAM_Sign_we(3 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign2a_WE(3 downto 0),
      Zero0 => Ground0_dout(0),
      Zero32(31 downto 0) => Ground32_dout(31 downto 0),
      Zero4(3 downto 0) => Ground4_dout(3 downto 0),
      clk => clk_0_1
    );
Ground0: component Mayo_sign_Ground0_0
     port map (
      dout(0) => Ground0_dout(0)
    );
Ground32: component Mayo_sign_Ground32_0
     port map (
      dout(31 downto 0) => Ground32_dout(31 downto 0)
    );
Ground4: component Mayo_sign_Ground4_0
     port map (
      dout(3 downto 0) => Ground4_dout(3 downto 0)
    );
LInear_Combination: entity work.LInear_Combination_imp_DQ7H61
     port map (
      BRAM_O_LinArb0a_addr(31 downto 0) => BRAM_Lin_1_ADDR(31 downto 0),
      BRAM_O_LinArb0a_ctrl => BRAM_Lin_1_CTRL,
      BRAM_O_LinArb0a_din(31 downto 0) => BRAM_Lin_1_DIN(31 downto 0),
      BRAM_O_LinArb0a_dout(31 downto 0) => BRAM_Lin_1_DOUT(31 downto 0),
      BRAM_O_LinArb0a_en => BRAM_Lin_1_EN,
      BRAM_O_LinArb0a_rst => BRAM_Lin_1_RST,
      BRAM_O_LinArb0a_we(3 downto 0) => BRAM_Lin_1_WE(3 downto 0),
      BRAM_O_LinArb0b_addr(31 downto 0) => BRAM_Lin1_1_ADDR(31 downto 0),
      BRAM_O_LinArb0b_ctrl => BRAM_Lin1_1_CTRL,
      BRAM_O_LinArb0b_din(31 downto 0) => BRAM_Lin1_1_DIN(31 downto 0),
      BRAM_O_LinArb0b_dout(31 downto 0) => BRAM_Lin1_1_DOUT(31 downto 0),
      BRAM_O_LinArb0b_en => BRAM_Lin1_1_EN,
      BRAM_O_LinArb0b_rst => BRAM_Lin1_1_RST,
      BRAM_O_LinArb0b_we(3 downto 0) => BRAM_Lin1_1_WE(3 downto 0),
      BRAM_O_LinArb1a_addr(31 downto 0) => LInear_Combination_BRAM_O_LinArb1a_ADDR(31 downto 0),
      BRAM_O_LinArb1a_ctrl => LInear_Combination_BRAM_O_LinArb1a_CTRL,
      BRAM_O_LinArb1a_din(31 downto 0) => LInear_Combination_BRAM_O_LinArb1a_DIN(31 downto 0),
      BRAM_O_LinArb1a_dout(31 downto 0) => LInear_Combination_BRAM_O_LinArb1a_DOUT(31 downto 0),
      BRAM_O_LinArb1a_en => LInear_Combination_BRAM_O_LinArb1a_EN,
      BRAM_O_LinArb1a_rst => LInear_Combination_BRAM_O_LinArb1a_RST,
      BRAM_O_LinArb1a_we(3 downto 0) => LInear_Combination_BRAM_O_LinArb1a_WE(3 downto 0),
      BRAM_O_LinArb2a_addr(31 downto 0) => LInear_Combination_BRAM_O_LinArb2a_ADDR(31 downto 0),
      BRAM_O_LinArb2a_ctrl => LInear_Combination_BRAM_O_LinArb2a_CTRL,
      BRAM_O_LinArb2a_din(31 downto 0) => LInear_Combination_BRAM_O_LinArb2a_DIN(31 downto 0),
      BRAM_O_LinArb2a_dout(31 downto 0) => LInear_Combination_BRAM_O_LinArb2a_DOUT(31 downto 0),
      BRAM_O_LinArb2a_en => LInear_Combination_BRAM_O_LinArb2a_EN,
      BRAM_O_LinArb2a_rst => LInear_Combination_BRAM_O_LinArb2a_RST,
      BRAM_O_LinArb2a_we(3 downto 0) => LInear_Combination_BRAM_O_LinArb2a_WE(3 downto 0),
      BRAM_O_LinArb2b_addr(31 downto 0) => LInear_Combination_BRAM_O_LinArb2b_ADDR(31 downto 0),
      BRAM_O_LinArb2b_ctrl => LInear_Combination_BRAM_O_LinArb2b_CTRL,
      BRAM_O_LinArb2b_din(31 downto 0) => LInear_Combination_BRAM_O_LinArb2b_DIN(31 downto 0),
      BRAM_O_LinArb2b_dout(31 downto 0) => LInear_Combination_BRAM_O_LinArb2b_DOUT(31 downto 0),
      BRAM_O_LinArb2b_en => LInear_Combination_BRAM_O_LinArb2b_EN,
      BRAM_O_LinArb2b_rst => LInear_Combination_BRAM_O_LinArb2b_RST,
      BRAM_O_LinArb2b_we(3 downto 0) => LInear_Combination_BRAM_O_LinArb2b_WE(3 downto 0),
      bram_sel(4 downto 0) => MAYO_SIGNING_FSM_0_o_lin_demux_bram_sel(4 downto 0),
      clk_0 => clk_0_1,
      i_bram_halt => MAYO_SIGNING_FSM_0_o_lin_bram_halt,
      i_coeffs_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_lin_coeffs_addr(31 downto 0),
      i_enable => MAYO_SIGNING_FSM_0_o_lin_enable,
      i_len(31 downto 0) => MAYO_SIGNING_FSM_0_o_lin_len(31 downto 0),
      i_out_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_lin_out_addr(31 downto 0),
      i_vec_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_lin_vec_addr(31 downto 0),
      o_done => mayo_linear_combinat_0_o_done,
      rst_0 => rst_0_1
    );
MAYO_P1P1T_0: component Mayo_sign_MAYO_P1P1T_0_0
     port map (
      clk => clk_0_1,
      enable => MAYO_SIGNING_FSM_0_o_p1p1t_enable,
      i_dsta_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_p1p1t_dsta_adr(31 downto 0),
      i_dstb_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_p1p1t_dstb_adr(31 downto 0),
      i_ji_equal => MAYO_SIGNING_FSM_0_o_p1p1t_ji_equal,
      i_mem0b_dout(31 downto 0) => MAYO_P1P1T_0_BRAM_P1P1T0b_DOUT(31 downto 0),
      i_mem1a_dout(31 downto 0) => MAYO_P1P1T_0_BRAM_P1P1T1a_DOUT(31 downto 0),
      i_src_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_p1p1t_src_adr(31 downto 0),
      o_control0b => MAYO_P1P1T_0_BRAM_P1P1T0b_CTRL,
      o_control1a => MAYO_P1P1T_0_BRAM_P1P1T1a_CTRL,
      o_done => MAYO_P1P1T_0_o_done,
      o_mem0b_addr(31 downto 0) => NLW_MAYO_P1P1T_0_o_mem0b_addr_UNCONNECTED(31 downto 0),
      o_mem0b_din(31 downto 0) => NLW_MAYO_P1P1T_0_o_mem0b_din_UNCONNECTED(31 downto 0),
      o_mem0b_en => MAYO_P1P1T_0_BRAM_P1P1T0b_EN,
      o_mem0b_rst => MAYO_P1P1T_0_BRAM_P1P1T0b_RST,
      o_mem0b_we(3 downto 0) => NLW_MAYO_P1P1T_0_o_mem0b_we_UNCONNECTED(3 downto 0),
      o_mem1a_addr(31 downto 0) => MAYO_P1P1T_0_BRAM_P1P1T1a_ADDR(31 downto 0),
      o_mem1a_din(31 downto 0) => MAYO_P1P1T_0_BRAM_P1P1T1a_DIN(31 downto 0),
      o_mem1a_en => MAYO_P1P1T_0_BRAM_P1P1T1a_EN,
      o_mem1a_rst => MAYO_P1P1T_0_BRAM_P1P1T1a_RST,
      o_mem1a_we(3 downto 0) => MAYO_P1P1T_0_BRAM_P1P1T1a_WE(3 downto 0),
      rst => rst_0_1
    );
MAYO_SIGNING_FSM_0: component Mayo_sign_MAYO_SIGNING_FSM_0_0
     port map (
      clk => clk_0_1,
      i_add_done => mayo_add_vectors_0_o_done,
      i_add_oil_done => mayo_add_oil_0_o_done,
      i_enable => i_enable_0_1,
      i_hash_done => hash_o_key_done,
      i_hash_dyn_done => hash_o_key_dyn_done,
      i_lin_done => mayo_linear_combinat_0_o_done,
      i_mem0a_dout(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0a_DOUT(31 downto 0),
      i_mem0b_dout(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0b_DOUT(31 downto 0),
      i_mem1a_dout(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign1a_DOUT(31 downto 0),
      i_mem2a_dout(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign2a_DOUT(31 downto 0),
      i_mem2b_dout(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign2b_DOUT(31 downto 0),
      i_memcpy1_done => memcpy_1_o_done,
      i_memcpy_done => memcpy_0_o_done,
      i_neg_done => mayo_negate_0_o_done,
      i_p1p1t_done => MAYO_P1P1T_0_o_done,
      i_red_done => mayo_reduce_0_o_done,
      i_red_ext_done => mayo_reduce_extension_0_o_done,
      i_sam_done => mayo_sample_oil_space_0_o_done,
      i_sam_oil_done => mayo_sample_oil_0_o_done,
      i_sam_oil_ret => mayo_sample_oil_0_o_ret,
      i_sam_vin_done => mayo_sample_vinegar_0_o_done,
      i_secret => i_secret_0_1,
      i_trng_data(31 downto 0) => TRNG_o_trng0_data(31 downto 0),
      i_trng_done => TRNG_o_trng0_done,
      i_trng_valid => TRNG_o_trng0_valid,
      o_add_bram_sel(1 downto 0) => MAYO_SIGNING_FSM_0_o_add_bram_sel(1 downto 0),
      o_add_demux_bram_sel(4 downto 0) => MAYO_SIGNING_FSM_0_o_add_demux_bram_sel(4 downto 0),
      o_add_enable => MAYO_SIGNING_FSM_0_o_add_enable,
      o_add_oil_enable => MAYO_SIGNING_FSM_0_o_add_oil_enable,
      o_add_out_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_add_out_addr(31 downto 0),
      o_add_v1_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_add_v1_addr(31 downto 0),
      o_add_v2_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_add_v2_addr(31 downto 0),
      o_control0a => MAYO_SIGNING_FSM_0_BRAM_Sign0a_CTRL,
      o_control0b => MAYO_SIGNING_FSM_0_BRAM_Sign0b_CTRL,
      o_control1a => MAYO_SIGNING_FSM_0_BRAM_Sign1a_CTRL,
      o_control2a => MAYO_SIGNING_FSM_0_BRAM_Sign2a_CTRL,
      o_control2b => MAYO_SIGNING_FSM_0_BRAM_Sign2b_CTRL,
      o_done => MAYO_SIGNING_FSM_0_o_done,
      o_err(1 downto 0) => MAYO_SIGNING_FSM_0_o_err(1 downto 0),
      o_hash_en => MAYO_SIGNING_FSM_0_o_hash_en,
      o_hash_memsel => MAYO_SIGNING_FSM_0_o_hash_memsel,
      o_hash_mlen(31 downto 0) => MAYO_SIGNING_FSM_0_o_hash_mlen(31 downto 0),
      o_hash_olen(31 downto 0) => MAYO_SIGNING_FSM_0_o_hash_olen(31 downto 0),
      o_hash_read_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_hash_read_adr(31 downto 0),
      o_hash_write_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_hash_write_adr(31 downto 0),
      o_lin_bram_halt => MAYO_SIGNING_FSM_0_o_lin_bram_halt,
      o_lin_coeffs_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_lin_coeffs_addr(31 downto 0),
      o_lin_demux_bram_sel(4 downto 0) => MAYO_SIGNING_FSM_0_o_lin_demux_bram_sel(4 downto 0),
      o_lin_enable => MAYO_SIGNING_FSM_0_o_lin_enable,
      o_lin_len(31 downto 0) => MAYO_SIGNING_FSM_0_o_lin_len(31 downto 0),
      o_lin_out_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_lin_out_addr(31 downto 0),
      o_lin_vec_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_lin_vec_addr(31 downto 0),
      o_mem0a_addr(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0a_ADDR(31 downto 0),
      o_mem0a_din(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0a_DIN(31 downto 0),
      o_mem0a_en => MAYO_SIGNING_FSM_0_BRAM_Sign0a_EN,
      o_mem0a_rst => MAYO_SIGNING_FSM_0_BRAM_Sign0a_RST,
      o_mem0a_we(3 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0a_WE(3 downto 0),
      o_mem0b_addr(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0b_ADDR(31 downto 0),
      o_mem0b_din(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0b_DIN(31 downto 0),
      o_mem0b_en => MAYO_SIGNING_FSM_0_BRAM_Sign0b_EN,
      o_mem0b_rst => MAYO_SIGNING_FSM_0_BRAM_Sign0b_RST,
      o_mem0b_we(3 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0b_WE(3 downto 0),
      o_mem1a_addr(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign1a_ADDR(31 downto 0),
      o_mem1a_din(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign1a_DIN(31 downto 0),
      o_mem1a_en => MAYO_SIGNING_FSM_0_BRAM_Sign1a_EN,
      o_mem1a_rst => MAYO_SIGNING_FSM_0_BRAM_Sign1a_RST,
      o_mem1a_we(3 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign1a_WE(3 downto 0),
      o_mem2a_addr(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign2a_ADDR(31 downto 0),
      o_mem2a_din(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign2a_DIN(31 downto 0),
      o_mem2a_en => MAYO_SIGNING_FSM_0_BRAM_Sign2a_EN,
      o_mem2a_rst => MAYO_SIGNING_FSM_0_BRAM_Sign2a_RST,
      o_mem2a_we(3 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign2a_WE(3 downto 0),
      o_mem2b_addr(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign2b_ADDR(31 downto 0),
      o_mem2b_din(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign2b_DIN(31 downto 0),
      o_mem2b_en => MAYO_SIGNING_FSM_0_BRAM_Sign2b_EN,
      o_mem2b_rst => MAYO_SIGNING_FSM_0_BRAM_Sign2b_RST,
      o_mem2b_we(3 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign2b_WE(3 downto 0),
      o_memcpy1_dst_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_memcpy1_dst_adr(31 downto 0),
      o_memcpy1_len(31 downto 0) => MAYO_SIGNING_FSM_0_o_memcpy1_len(31 downto 0),
      o_memcpy1_mem_port_sel(1 downto 0) => MAYO_SIGNING_FSM_0_o_memcpy1_mem_port_sel(1 downto 0),
      o_memcpy1_src_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_memcpy1_src_adr(31 downto 0),
      o_memcpy1_start => MAYO_SIGNING_FSM_0_o_memcpy1_start,
      o_memcpy_dst_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_memcpy_dst_adr(31 downto 0),
      o_memcpy_len(31 downto 0) => MAYO_SIGNING_FSM_0_o_memcpy_len(31 downto 0),
      o_memcpy_mem_port_sel(1 downto 0) => MAYO_SIGNING_FSM_0_o_memcpy_mem_port_sel(1 downto 0),
      o_memcpy_src_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_memcpy_src_adr(31 downto 0),
      o_memcpy_start => MAYO_SIGNING_FSM_0_o_memcpy_start,
      o_neg_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_neg_adr(31 downto 0),
      o_neg_enable => MAYO_SIGNING_FSM_0_o_neg_enable,
      o_neg_len(31 downto 0) => MAYO_SIGNING_FSM_0_o_neg_len(31 downto 0),
      o_p1p1t_dsta_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_p1p1t_dsta_adr(31 downto 0),
      o_p1p1t_dstb_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_p1p1t_dstb_adr(31 downto 0),
      o_p1p1t_enable => MAYO_SIGNING_FSM_0_o_p1p1t_enable,
      o_p1p1t_ji_equal => MAYO_SIGNING_FSM_0_o_p1p1t_ji_equal,
      o_p1p1t_src_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_p1p1t_src_adr(31 downto 0),
      o_red_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_red_adr(31 downto 0),
      o_red_bram_sel => MAYO_SIGNING_FSM_0_o_red_bram_sel,
      o_red_enable => MAYO_SIGNING_FSM_0_o_red_enable,
      o_red_ext_en => MAYO_SIGNING_FSM_0_o_red_ext_en,
      o_red_ext_input_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_red_ext_input_adr(31 downto 0),
      o_red_ext_output_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_red_ext_output_adr(31 downto 0),
      o_red_len(31 downto 0) => MAYO_SIGNING_FSM_0_o_red_len(31 downto 0),
      o_sam_enable => MAYO_SIGNING_FSM_0_o_sam_enable,
      o_sam_mode => MAYO_SIGNING_FSM_0_o_sam_mode,
      o_sam_oil_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_sam_oil_addr(31 downto 0),
      o_sam_oil_en => MAYO_SIGNING_FSM_0_o_sam_oil_en,
      o_sam_vin_en => MAYO_SIGNING_FSM_0_o_sam_vin_en,
      o_sam_vin_input_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_sam_vin_input_adr(31 downto 0),
      o_trng_data(31 downto 0) => MAYO_SIGNING_FSM_0_o_trng_data(31 downto 0),
      o_trng_r => MAYO_SIGNING_FSM_0_o_trng_r,
      o_trng_w => MAYO_SIGNING_FSM_0_o_trng_w,
      rst => rst_0_1
    );
SmallBRAM: entity work.SmallBRAM_imp_MCN2TS
     port map (
      BRAM_Add_oil1_addr(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil0b_ADDR(31 downto 0),
      BRAM_Add_oil1_ctrl => mayo_add_oil_0_BRAM_Add_oil0b_CTRL,
      BRAM_Add_oil1_din(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil0b_DIN(31 downto 0),
      BRAM_Add_oil1_dout(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil0b_DOUT(31 downto 0),
      BRAM_Add_oil1_en => mayo_add_oil_0_BRAM_Add_oil0b_EN,
      BRAM_Add_oil1_rst => mayo_add_oil_0_BRAM_Add_oil0b_RST,
      BRAM_Add_oil1_we(3 downto 0) => mayo_add_oil_0_BRAM_Add_oil0b_WE(3 downto 0),
      BRAM_Add_oil_addr(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil0a_ADDR(31 downto 0),
      BRAM_Add_oil_ctrl => mayo_add_oil_0_BRAM_Add_oil0a_CTRL,
      BRAM_Add_oil_din(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil0a_DIN(31 downto 0),
      BRAM_Add_oil_dout(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil0a_DOUT(31 downto 0),
      BRAM_Add_oil_en => mayo_add_oil_0_BRAM_Add_oil0a_EN,
      BRAM_Add_oil_rst => mayo_add_oil_0_BRAM_Add_oil0a_RST,
      BRAM_Add_oil_we(3 downto 0) => mayo_add_oil_0_BRAM_Add_oil0a_WE(3 downto 0),
      BRAM_Add_vec_addr(31 downto 0) => BRAM_Add_vec_1_ADDR(31 downto 0),
      BRAM_Add_vec_ctrl => BRAM_Add_vec_1_CTRL,
      BRAM_Add_vec_din(31 downto 0) => BRAM_Add_vec_1_DIN(31 downto 0),
      BRAM_Add_vec_dout(31 downto 0) => BRAM_Add_vec_1_DOUT(31 downto 0),
      BRAM_Add_vec_en => BRAM_Add_vec_1_EN,
      BRAM_Add_vec_rst => BRAM_Add_vec_1_RST,
      BRAM_Add_vec_we(3 downto 0) => BRAM_Add_vec_1_WE(3 downto 0),
      BRAM_Hash_addr(31 downto 0) => hash_BRAM_HashSmall_ADDR(31 downto 0),
      BRAM_Hash_ctrl => hash_BRAM_HashSmall_CTRL,
      BRAM_Hash_din(31 downto 0) => hash_BRAM_HashSmall_DIN(31 downto 0),
      BRAM_Hash_dout(31 downto 0) => hash_BRAM_HashSmall_DOUT(31 downto 0),
      BRAM_Hash_en => hash_BRAM_HashSmall_EN,
      BRAM_Hash_rst => hash_BRAM_HashSmall_RST,
      BRAM_Hash_we(3 downto 0) => hash_BRAM_HashSmall_WE(3 downto 0),
      BRAM_Lin1_addr(31 downto 0) => BRAM_Lin1_1_ADDR(31 downto 0),
      BRAM_Lin1_ctrl => BRAM_Lin1_1_CTRL,
      BRAM_Lin1_din(31 downto 0) => BRAM_Lin1_1_DIN(31 downto 0),
      BRAM_Lin1_dout(31 downto 0) => BRAM_Lin1_1_DOUT(31 downto 0),
      BRAM_Lin1_en => BRAM_Lin1_1_EN,
      BRAM_Lin1_rst => BRAM_Lin1_1_RST,
      BRAM_Lin1_we(3 downto 0) => BRAM_Lin1_1_WE(3 downto 0),
      BRAM_Lin_addr(31 downto 0) => BRAM_Lin_1_ADDR(31 downto 0),
      BRAM_Lin_ctrl => BRAM_Lin_1_CTRL,
      BRAM_Lin_din(31 downto 0) => BRAM_Lin_1_DIN(31 downto 0),
      BRAM_Lin_dout(31 downto 0) => BRAM_Lin_1_DOUT(31 downto 0),
      BRAM_Lin_en => BRAM_Lin_1_EN,
      BRAM_Lin_rst => BRAM_Lin_1_RST,
      BRAM_Lin_we(3 downto 0) => BRAM_Lin_1_WE(3 downto 0),
      BRAM_P1P1T_ctrl => MAYO_P1P1T_0_BRAM_P1P1T0b_CTRL,
      BRAM_P1P1T_dout(31 downto 0) => MAYO_P1P1T_0_BRAM_P1P1T0b_DOUT(31 downto 0),
      BRAM_P1P1T_en => MAYO_P1P1T_0_BRAM_P1P1T0b_EN,
      BRAM_P1P1T_rst => MAYO_P1P1T_0_BRAM_P1P1T0b_RST,
      BRAM_Red_addr(31 downto 0) => mayo_reduce_0_BRAM_Red0_ADDR(31 downto 0),
      BRAM_Red_ctrl => mayo_reduce_0_BRAM_Red0_CTRL,
      BRAM_Red_din(31 downto 0) => mayo_reduce_0_BRAM_Red0_DIN(31 downto 0),
      BRAM_Red_dout(31 downto 0) => mayo_reduce_0_BRAM_Red0_DOUT(31 downto 0),
      BRAM_Red_en => mayo_reduce_0_BRAM_Red0_EN,
      BRAM_Red_ext1_addr(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Extb_ADDR(31 downto 0),
      BRAM_Red_ext1_ctrl => mayo_reduce_extension_0_BRAM_Red_Extb_CTRL,
      BRAM_Red_ext1_din(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Extb_DIN(31 downto 0),
      BRAM_Red_ext1_dout(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Extb_DOUT(31 downto 0),
      BRAM_Red_ext1_en => mayo_reduce_extension_0_BRAM_Red_Extb_EN,
      BRAM_Red_ext1_rst => mayo_reduce_extension_0_BRAM_Red_Extb_RST,
      BRAM_Red_ext1_we(3 downto 0) => mayo_reduce_extension_0_BRAM_Red_Extb_WE(3 downto 0),
      BRAM_Red_ext_addr(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Exta_ADDR(31 downto 0),
      BRAM_Red_ext_ctrl => mayo_reduce_extension_0_BRAM_Red_Exta_CTRL,
      BRAM_Red_ext_din(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Exta_DIN(31 downto 0),
      BRAM_Red_ext_dout(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Exta_DOUT(31 downto 0),
      BRAM_Red_ext_en => mayo_reduce_extension_0_BRAM_Red_Exta_EN,
      BRAM_Red_ext_rst => mayo_reduce_extension_0_BRAM_Red_Exta_RST,
      BRAM_Red_ext_we(3 downto 0) => mayo_reduce_extension_0_BRAM_Red_Exta_WE(3 downto 0),
      BRAM_Red_rst => mayo_reduce_0_BRAM_Red0_RST,
      BRAM_Red_we(3 downto 0) => mayo_reduce_0_BRAM_Red0_WE(3 downto 0),
      BRAM_Sam_addr(31 downto 0) => mayo_sample_oil_space_0_BRAM_Sama_ADDR(31 downto 0),
      BRAM_Sam_ctrl => mayo_sample_oil_space_0_BRAM_Sama_CTRL,
      BRAM_Sam_din(31 downto 0) => mayo_sample_oil_space_0_BRAM_Sama_DIN(31 downto 0),
      BRAM_Sam_dout(31 downto 0) => mayo_sample_oil_space_0_BRAM_Sama_DOUT(31 downto 0),
      BRAM_Sam_en => mayo_sample_oil_space_0_BRAM_Sama_EN,
      BRAM_Sam_oil1_addr(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil0b_ADDR(31 downto 0),
      BRAM_Sam_oil1_ctrl => mayo_sample_oil_0_BRAM_Sample_oil0b_CTRL,
      BRAM_Sam_oil1_din(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil0b_DIN(31 downto 0),
      BRAM_Sam_oil1_dout(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil0b_DOUT(31 downto 0),
      BRAM_Sam_oil1_en => mayo_sample_oil_0_BRAM_Sample_oil0b_EN,
      BRAM_Sam_oil1_rst => mayo_sample_oil_0_BRAM_Sample_oil0b_RST,
      BRAM_Sam_oil1_we(3 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil0b_WE(3 downto 0),
      BRAM_Sam_oil_addr(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil0a_ADDR(31 downto 0),
      BRAM_Sam_oil_ctrl => mayo_sample_oil_0_BRAM_Sample_oil0a_CTRL,
      BRAM_Sam_oil_din(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil0a_DIN(31 downto 0),
      BRAM_Sam_oil_dout(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil0a_DOUT(31 downto 0),
      BRAM_Sam_oil_en => mayo_sample_oil_0_BRAM_Sample_oil0a_EN,
      BRAM_Sam_oil_rst => mayo_sample_oil_0_BRAM_Sample_oil0a_RST,
      BRAM_Sam_oil_we(3 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil0a_WE(3 downto 0),
      BRAM_Sam_rst => mayo_sample_oil_space_0_BRAM_Sama_RST,
      BRAM_Sam_vin_addr(31 downto 0) => mayo_sample_vinegar_0_BRAM_Sam_vin0a_ADDR(31 downto 0),
      BRAM_Sam_vin_ctrl => mayo_sample_vinegar_0_BRAM_Sam_vin0a_CTRL,
      BRAM_Sam_vin_din(31 downto 0) => mayo_sample_vinegar_0_BRAM_Sam_vin0a_DIN(31 downto 0),
      BRAM_Sam_vin_dout(31 downto 0) => mayo_sample_vinegar_0_BRAM_Sam_vin0a_DOUT(31 downto 0),
      BRAM_Sam_vin_en => mayo_sample_vinegar_0_BRAM_Sam_vin0a_EN,
      BRAM_Sam_vin_rst => mayo_sample_vinegar_0_BRAM_Sam_vin0a_RST,
      BRAM_Sam_vin_we(3 downto 0) => mayo_sample_vinegar_0_BRAM_Sam_vin0a_WE(3 downto 0),
      BRAM_Sam_we(3 downto 0) => mayo_sample_oil_space_0_BRAM_Sama_WE(3 downto 0),
      BRAM_Sign1_addr(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0b_ADDR(31 downto 0),
      BRAM_Sign1_ctrl => MAYO_SIGNING_FSM_0_BRAM_Sign0b_CTRL,
      BRAM_Sign1_din(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0b_DIN(31 downto 0),
      BRAM_Sign1_dout(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0b_DOUT(31 downto 0),
      BRAM_Sign1_en => MAYO_SIGNING_FSM_0_BRAM_Sign0b_EN,
      BRAM_Sign1_rst => MAYO_SIGNING_FSM_0_BRAM_Sign0b_RST,
      BRAM_Sign1_we(3 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0b_WE(3 downto 0),
      BRAM_Sign_addr(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0a_ADDR(31 downto 0),
      BRAM_Sign_ctrl => MAYO_SIGNING_FSM_0_BRAM_Sign0a_CTRL,
      BRAM_Sign_din(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0a_DIN(31 downto 0),
      BRAM_Sign_dout(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0a_DOUT(31 downto 0),
      BRAM_Sign_en => MAYO_SIGNING_FSM_0_BRAM_Sign0a_EN,
      BRAM_Sign_rst => MAYO_SIGNING_FSM_0_BRAM_Sign0a_RST,
      BRAM_Sign_we(3 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0a_WE(3 downto 0),
      clk_0 => clk_0_1,
      zero(31 downto 0) => Ground32_dout(31 downto 0),
      zero0 => Ground0_dout(0),
      zero4(3 downto 0) => Ground4_dout(3 downto 0)
    );
TRNG: entity work.TRNG_imp_803AL3
     port map (
      In1(0) => mayo_sample_vinegar_0_o_trng_sel,
      clk => clk_0_1,
      i_trng0_data(31 downto 0) => MAYO_SIGNING_FSM_0_o_trng_data(31 downto 0),
      i_trng0_r => MAYO_SIGNING_FSM_0_o_trng_r,
      i_trng0_w => MAYO_SIGNING_FSM_0_o_trng_w,
      i_trng1_data1(31 downto 0) => i_trng1_data1_1(31 downto 0),
      i_trng1_r => i_trng1_r_1,
      i_trng1_w => mayo_sample_oil_space_0_o_trng_w,
      i_trng2_data(31 downto 0) => mayo_sample_vinegar_0_o_trng_data(31 downto 0),
      i_trng2_r => mayo_sample_vinegar_0_o_trng_r,
      i_trng2_w => mayo_sample_vinegar_0_o_trng_w,
      i_trng_sel => mayo_sample_oil_space_0_o_trng_sel,
      o_trng0_data(31 downto 0) => TRNG_o_trng0_data(31 downto 0),
      o_trng0_done => TRNG_o_trng0_done,
      o_trng0_valid => TRNG_o_trng0_valid,
      o_trng1_data(31 downto 0) => TRNG_o_trng1_data(31 downto 0),
      o_trng1_done => TRNG_o_trng1_done,
      o_trng1_valid => TRNG_o_trng1_valid,
      o_trng2_data(31 downto 0) => TRNG_o_trng2_data(31 downto 0),
      o_trng2_done => TRNG_o_trng2_done,
      o_trng2_valid => TRNG_o_trng2_valid,
      rst => rst_0_1
    );
add_vectors: entity work.add_vectors_imp_5D59YL
     port map (
      BRAM_O_Add0A_addr(31 downto 0) => BRAM_Add_vec_1_ADDR(31 downto 0),
      BRAM_O_Add0A_ctrl => BRAM_Add_vec_1_CTRL,
      BRAM_O_Add0A_din(31 downto 0) => BRAM_Add_vec_1_DIN(31 downto 0),
      BRAM_O_Add0A_dout(31 downto 0) => BRAM_Add_vec_1_DOUT(31 downto 0),
      BRAM_O_Add0A_en => BRAM_Add_vec_1_EN,
      BRAM_O_Add0A_rst => BRAM_Add_vec_1_RST,
      BRAM_O_Add0A_we(3 downto 0) => BRAM_Add_vec_1_WE(3 downto 0),
      BRAM_O_Add1A_addr(31 downto 0) => add_vectors_BRAM_O_Add1A_ADDR(31 downto 0),
      BRAM_O_Add1A_ctrl => add_vectors_BRAM_O_Add1A_CTRL,
      BRAM_O_Add1A_din(31 downto 0) => add_vectors_BRAM_O_Add1A_DIN(31 downto 0),
      BRAM_O_Add1A_dout(31 downto 0) => add_vectors_BRAM_O_Add1A_DOUT(31 downto 0),
      BRAM_O_Add1A_en => add_vectors_BRAM_O_Add1A_EN,
      BRAM_O_Add1A_rst => add_vectors_BRAM_O_Add1A_RST,
      BRAM_O_Add1A_we(3 downto 0) => add_vectors_BRAM_O_Add1A_WE(3 downto 0),
      BRAM_O_Add2A_addr(31 downto 0) => add_vectors_BRAM_O_Add2A_ADDR(31 downto 0),
      BRAM_O_Add2A_ctrl => add_vectors_BRAM_O_Add2A_CTRL,
      BRAM_O_Add2A_din(31 downto 0) => add_vectors_BRAM_O_Add2A_DIN(31 downto 0),
      BRAM_O_Add2A_dout(31 downto 0) => add_vectors_BRAM_O_Add2A_DOUT(31 downto 0),
      BRAM_O_Add2A_en => add_vectors_BRAM_O_Add2A_EN,
      BRAM_O_Add2A_rst => add_vectors_BRAM_O_Add2A_RST,
      BRAM_O_Add2A_we(3 downto 0) => add_vectors_BRAM_O_Add2A_WE(3 downto 0),
      BRAM_O_Add2B_addr(31 downto 0) => add_vectors_BRAM_O_Add2B_ADDR(31 downto 0),
      BRAM_O_Add2B_ctrl => add_vectors_BRAM_O_Add2B_CTRL,
      BRAM_O_Add2B_din(31 downto 0) => add_vectors_BRAM_O_Add2B_DIN(31 downto 0),
      BRAM_O_Add2B_dout(31 downto 0) => add_vectors_BRAM_O_Add2B_DOUT(31 downto 0),
      BRAM_O_Add2B_en => add_vectors_BRAM_O_Add2B_EN,
      BRAM_O_Add2B_rst => add_vectors_BRAM_O_Add2B_RST,
      BRAM_O_Add2B_we(3 downto 0) => add_vectors_BRAM_O_Add2B_WE(3 downto 0),
      bram_sel(4 downto 0) => MAYO_SIGNING_FSM_0_o_add_demux_bram_sel(4 downto 0),
      clk_0 => clk_0_1,
      i_bram_sel(1 downto 0) => MAYO_SIGNING_FSM_0_o_add_bram_sel(1 downto 0),
      i_enable => MAYO_SIGNING_FSM_0_o_add_enable,
      i_out_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_add_out_addr(31 downto 0),
      i_v1_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_add_v1_addr(31 downto 0),
      i_v2_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_add_v2_addr(31 downto 0),
      o_done => mayo_add_vectors_0_o_done,
      rst_0 => rst_0_1
    );
hash: entity work.hash_imp_1H0AQ0H
     port map (
      BRAM_HashBig_addr(31 downto 0) => hash_BRAM_HashBig_ADDR(31 downto 0),
      BRAM_HashBig_ctrl => hash_BRAM_HashBig_CTRL,
      BRAM_HashBig_din(31 downto 0) => hash_BRAM_HashBig_DIN(31 downto 0),
      BRAM_HashBig_dout(31 downto 0) => hash_BRAM_HashBig_DOUT(31 downto 0),
      BRAM_HashBig_en => hash_BRAM_HashBig_EN,
      BRAM_HashBig_rst => hash_BRAM_HashBig_RST,
      BRAM_HashBig_we(3 downto 0) => hash_BRAM_HashBig_WE(3 downto 0),
      BRAM_HashSmall_addr(31 downto 0) => hash_BRAM_HashSmall_ADDR(31 downto 0),
      BRAM_HashSmall_ctrl => hash_BRAM_HashSmall_CTRL,
      BRAM_HashSmall_din(31 downto 0) => hash_BRAM_HashSmall_DIN(31 downto 0),
      BRAM_HashSmall_dout(31 downto 0) => hash_BRAM_HashSmall_DOUT(31 downto 0),
      BRAM_HashSmall_en => hash_BRAM_HashSmall_EN,
      BRAM_HashSmall_rst => hash_BRAM_HashSmall_RST,
      BRAM_HashSmall_we(3 downto 0) => hash_BRAM_HashSmall_WE(3 downto 0),
      bram_sel => MAYO_SIGNING_FSM_0_o_hash_memsel,
      clk => clk_0_1,
      i_key_en => MAYO_SIGNING_FSM_0_o_hash_en,
      i_key_mlen(31 downto 0) => MAYO_SIGNING_FSM_0_o_hash_mlen(31 downto 0),
      i_key_olen(31 downto 0) => MAYO_SIGNING_FSM_0_o_hash_olen(31 downto 0),
      i_key_read_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_hash_read_adr(31 downto 0),
      i_key_write_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_hash_write_adr(31 downto 0),
      o_key_done => hash_o_key_done,
      o_key_dyn_done => hash_o_key_dyn_done,
      rst => rst_0_1
    );
mayo_add_oil_0: component Mayo_sign_mayo_add_oil_0_0
     port map (
      clk => clk_0_1,
      i_enable => MAYO_SIGNING_FSM_0_o_add_oil_enable,
      i_mem0a_dout(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil0a_DOUT(31 downto 0),
      i_mem0b_dout(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil0b_DOUT(31 downto 0),
      i_mem1a_dout(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil1a_DOUT(31 downto 0),
      o_control0a => mayo_add_oil_0_BRAM_Add_oil0a_CTRL,
      o_control0b => mayo_add_oil_0_BRAM_Add_oil0b_CTRL,
      o_control1a => mayo_add_oil_0_BRAM_Add_oil1a_CTRL,
      o_done => mayo_add_oil_0_o_done,
      o_mem0a_addr(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil0a_ADDR(31 downto 0),
      o_mem0a_din(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil0a_DIN(31 downto 0),
      o_mem0a_en => mayo_add_oil_0_BRAM_Add_oil0a_EN,
      o_mem0a_rst => mayo_add_oil_0_BRAM_Add_oil0a_RST,
      o_mem0a_we(3 downto 0) => mayo_add_oil_0_BRAM_Add_oil0a_WE(3 downto 0),
      o_mem0b_addr(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil0b_ADDR(31 downto 0),
      o_mem0b_din(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil0b_DIN(31 downto 0),
      o_mem0b_en => mayo_add_oil_0_BRAM_Add_oil0b_EN,
      o_mem0b_rst => mayo_add_oil_0_BRAM_Add_oil0b_RST,
      o_mem0b_we(3 downto 0) => mayo_add_oil_0_BRAM_Add_oil0b_WE(3 downto 0),
      o_mem1a_addr(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil1a_ADDR(31 downto 0),
      o_mem1a_din(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil1a_DIN(31 downto 0),
      o_mem1a_en => mayo_add_oil_0_BRAM_Add_oil1a_EN,
      o_mem1a_rst => mayo_add_oil_0_BRAM_Add_oil1a_RST,
      o_mem1a_we(3 downto 0) => mayo_add_oil_0_BRAM_Add_oil1a_WE(3 downto 0),
      rst => rst_0_1
    );
mayo_negate_0: component Mayo_sign_mayo_negate_0_0
     port map (
      i_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_neg_adr(31 downto 0),
      i_clk => clk_0_1,
      i_doutb(31 downto 0) => mayo_negate_0_BRAM_Negate_DOUT(31 downto 0),
      i_enable => MAYO_SIGNING_FSM_0_o_neg_enable,
      i_len(31 downto 0) => MAYO_SIGNING_FSM_0_o_neg_len(31 downto 0),
      o_addrb(31 downto 0) => mayo_negate_0_BRAM_Negate_ADDR(31 downto 0),
      o_control => mayo_negate_0_BRAM_Negate_CTRL,
      o_dinb(31 downto 0) => mayo_negate_0_BRAM_Negate_DIN(31 downto 0),
      o_done => mayo_negate_0_o_done,
      o_enb => mayo_negate_0_BRAM_Negate_EN,
      o_rstb => mayo_negate_0_BRAM_Negate_RST,
      o_web(3 downto 0) => mayo_negate_0_BRAM_Negate_WE(3 downto 0),
      rst => rst_0_1
    );
mayo_reduce_0: component Mayo_sign_mayo_reduce_0_0
     port map (
      i_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_red_adr(31 downto 0),
      i_bram_sel => MAYO_SIGNING_FSM_0_o_red_bram_sel,
      i_clk => clk_0_1,
      i_dout0(31 downto 0) => mayo_reduce_0_BRAM_Red0_DOUT(31 downto 0),
      i_dout1(31 downto 0) => mayo_reduce_0_BRAM_Red1_DOUT(31 downto 0),
      i_enable => MAYO_SIGNING_FSM_0_o_red_enable,
      i_len(31 downto 0) => MAYO_SIGNING_FSM_0_o_red_len(31 downto 0),
      o_addr0(31 downto 0) => mayo_reduce_0_BRAM_Red0_ADDR(31 downto 0),
      o_addr1(31 downto 0) => mayo_reduce_0_BRAM_Red1_ADDR(31 downto 0),
      o_control0 => mayo_reduce_0_BRAM_Red0_CTRL,
      o_control1 => mayo_reduce_0_BRAM_Red1_CTRL,
      o_din0(31 downto 0) => mayo_reduce_0_BRAM_Red0_DIN(31 downto 0),
      o_din1(31 downto 0) => mayo_reduce_0_BRAM_Red1_DIN(31 downto 0),
      o_done => mayo_reduce_0_o_done,
      o_en0 => mayo_reduce_0_BRAM_Red0_EN,
      o_en1 => mayo_reduce_0_BRAM_Red1_EN,
      o_rst0 => mayo_reduce_0_BRAM_Red0_RST,
      o_rst1 => mayo_reduce_0_BRAM_Red1_RST,
      o_we0(3 downto 0) => mayo_reduce_0_BRAM_Red0_WE(3 downto 0),
      o_we1(3 downto 0) => mayo_reduce_0_BRAM_Red1_WE(3 downto 0),
      rst => rst_0_1
    );
mayo_reduce_extension_0: component Mayo_sign_mayo_reduce_extension_0_0
     port map (
      clk => clk_0_1,
      en => MAYO_SIGNING_FSM_0_o_red_ext_en,
      i_input_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_red_ext_input_adr(31 downto 0),
      i_mema_dout(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Exta_DOUT(31 downto 0),
      i_memb_dout(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Extb_DOUT(31 downto 0),
      i_memc_dout(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Extc_DOUT(31 downto 0),
      i_output_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_red_ext_output_adr(31 downto 0),
      o_controla => mayo_reduce_extension_0_BRAM_Red_Exta_CTRL,
      o_controlb => mayo_reduce_extension_0_BRAM_Red_Extb_CTRL,
      o_controlc => mayo_reduce_extension_0_BRAM_Red_Extc_CTRL,
      o_done => mayo_reduce_extension_0_o_done,
      o_mema_addr(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Exta_ADDR(31 downto 0),
      o_mema_din(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Exta_DIN(31 downto 0),
      o_mema_en => mayo_reduce_extension_0_BRAM_Red_Exta_EN,
      o_mema_rst => mayo_reduce_extension_0_BRAM_Red_Exta_RST,
      o_mema_we(3 downto 0) => mayo_reduce_extension_0_BRAM_Red_Exta_WE(3 downto 0),
      o_memb_addr(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Extb_ADDR(31 downto 0),
      o_memb_din(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Extb_DIN(31 downto 0),
      o_memb_en => mayo_reduce_extension_0_BRAM_Red_Extb_EN,
      o_memb_rst => mayo_reduce_extension_0_BRAM_Red_Extb_RST,
      o_memb_we(3 downto 0) => mayo_reduce_extension_0_BRAM_Red_Extb_WE(3 downto 0),
      o_memc_addr(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Extc_ADDR(31 downto 0),
      o_memc_din(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Extc_DIN(31 downto 0),
      o_memc_en => mayo_reduce_extension_0_BRAM_Red_Extc_EN,
      o_memc_rst => mayo_reduce_extension_0_BRAM_Red_Extc_RST,
      o_memc_we(3 downto 0) => mayo_reduce_extension_0_BRAM_Red_Extc_WE(3 downto 0),
      rst => rst_0_1
    );
mayo_sample_oil_0: component Mayo_sign_mayo_sample_oil_0_0
     port map (
      clk => clk_0_1,
      en => MAYO_SIGNING_FSM_0_o_sam_oil_en,
      i_mem0a_dout(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil0a_DOUT(31 downto 0),
      i_mem0b_dout(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil0b_DOUT(31 downto 0),
      i_mem1a_dout(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil1a_DOUT(31 downto 0),
      o_control0a => mayo_sample_oil_0_BRAM_Sample_oil0a_CTRL,
      o_control0b => mayo_sample_oil_0_BRAM_Sample_oil0b_CTRL,
      o_control1a => mayo_sample_oil_0_BRAM_Sample_oil1a_CTRL,
      o_done => mayo_sample_oil_0_o_done,
      o_mem0a_addr(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil0a_ADDR(31 downto 0),
      o_mem0a_din(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil0a_DIN(31 downto 0),
      o_mem0a_en => mayo_sample_oil_0_BRAM_Sample_oil0a_EN,
      o_mem0a_rst => mayo_sample_oil_0_BRAM_Sample_oil0a_RST,
      o_mem0a_we(3 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil0a_WE(3 downto 0),
      o_mem0b_addr(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil0b_ADDR(31 downto 0),
      o_mem0b_din(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil0b_DIN(31 downto 0),
      o_mem0b_en => mayo_sample_oil_0_BRAM_Sample_oil0b_EN,
      o_mem0b_rst => mayo_sample_oil_0_BRAM_Sample_oil0b_RST,
      o_mem0b_we(3 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil0b_WE(3 downto 0),
      o_mem1a_addr(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil1a_ADDR(31 downto 0),
      o_mem1a_din(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil1a_DIN(31 downto 0),
      o_mem1a_en => mayo_sample_oil_0_BRAM_Sample_oil1a_EN,
      o_mem1a_rst => mayo_sample_oil_0_BRAM_Sample_oil1a_RST,
      o_mem1a_we(3 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil1a_WE(3 downto 0),
      o_ret => mayo_sample_oil_0_o_ret,
      rst => rst_0_1
    );
mayo_sample_oil_space_0: component Mayo_sign_mayo_sample_oil_space_0_0
     port map (
      i_clk => clk_0_1,
      i_enable => MAYO_SIGNING_FSM_0_o_sam_enable,
      i_mema_dout(31 downto 0) => mayo_sample_oil_space_0_BRAM_Sama_DOUT(31 downto 0),
      i_memb_dout(31 downto 0) => mayo_sample_oil_space_0_BRAM_Samb_DOUT(31 downto 0),
      i_mode => MAYO_SIGNING_FSM_0_o_sam_mode,
      i_oil_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_sam_oil_addr(31 downto 0),
      i_trng_data(31 downto 0) => TRNG_o_trng1_data(31 downto 0),
      i_trng_done => TRNG_o_trng1_done,
      i_trng_valid => TRNG_o_trng1_valid,
      o_controla => mayo_sample_oil_space_0_BRAM_Sama_CTRL,
      o_controlb => mayo_sample_oil_space_0_BRAM_Samb_CTRL,
      o_done => mayo_sample_oil_space_0_o_done,
      o_mema_addr(31 downto 0) => mayo_sample_oil_space_0_BRAM_Sama_ADDR(31 downto 0),
      o_mema_din(31 downto 0) => mayo_sample_oil_space_0_BRAM_Sama_DIN(31 downto 0),
      o_mema_en => mayo_sample_oil_space_0_BRAM_Sama_EN,
      o_mema_rst => mayo_sample_oil_space_0_BRAM_Sama_RST,
      o_mema_we(3 downto 0) => mayo_sample_oil_space_0_BRAM_Sama_WE(3 downto 0),
      o_memb_addr(31 downto 0) => mayo_sample_oil_space_0_BRAM_Samb_ADDR(31 downto 0),
      o_memb_din(31 downto 0) => mayo_sample_oil_space_0_BRAM_Samb_DIN(31 downto 0),
      o_memb_en => mayo_sample_oil_space_0_BRAM_Samb_EN,
      o_memb_rst => mayo_sample_oil_space_0_BRAM_Samb_RST,
      o_memb_we(3 downto 0) => mayo_sample_oil_space_0_BRAM_Samb_WE(3 downto 0),
      o_trng_data(31 downto 0) => i_trng1_data1_1(31 downto 0),
      o_trng_r => i_trng1_r_1,
      o_trng_sel => mayo_sample_oil_space_0_o_trng_sel,
      o_trng_w => mayo_sample_oil_space_0_o_trng_w,
      rst => rst_0_1
    );
mayo_sample_vinegar_0: component Mayo_sign_mayo_sample_vinegar_0_0
     port map (
      clk => clk_0_1,
      en => MAYO_SIGNING_FSM_0_o_sam_vin_en,
      i_input_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_sam_vin_input_adr(31 downto 0),
      i_memb_dout(31 downto 0) => mayo_sample_vinegar_0_BRAM_Sam_vin0a_DOUT(31 downto 0),
      i_trng_data(31 downto 0) => TRNG_o_trng2_data(31 downto 0),
      i_trng_done => TRNG_o_trng2_done,
      i_trng_valid => TRNG_o_trng2_valid,
      o_controlb => mayo_sample_vinegar_0_BRAM_Sam_vin0a_CTRL,
      o_done => mayo_sample_vinegar_0_o_done,
      o_memb_addr(31 downto 0) => mayo_sample_vinegar_0_BRAM_Sam_vin0a_ADDR(31 downto 0),
      o_memb_din(31 downto 0) => mayo_sample_vinegar_0_BRAM_Sam_vin0a_DIN(31 downto 0),
      o_memb_en => mayo_sample_vinegar_0_BRAM_Sam_vin0a_EN,
      o_memb_rst => mayo_sample_vinegar_0_BRAM_Sam_vin0a_RST,
      o_memb_we(3 downto 0) => mayo_sample_vinegar_0_BRAM_Sam_vin0a_WE(3 downto 0),
      o_trng_data(31 downto 0) => mayo_sample_vinegar_0_o_trng_data(31 downto 0),
      o_trng_r => mayo_sample_vinegar_0_o_trng_r,
      o_trng_sel => mayo_sample_vinegar_0_o_trng_sel,
      o_trng_w => mayo_sample_vinegar_0_o_trng_w,
      rst => rst_0_1
    );
memcpy_0: component Mayo_sign_memcpy_0_0
     port map (
      clk => clk_0_1,
      i_dest_dout(31 downto 0) => memcpy_0_BRAM_Dest_PORTB_DOUT(31 downto 0),
      i_dst_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_memcpy_dst_adr(31 downto 0),
      i_len(31 downto 0) => MAYO_SIGNING_FSM_0_o_memcpy_len(31 downto 0),
      i_mem_port_sel(1 downto 0) => MAYO_SIGNING_FSM_0_o_memcpy_mem_port_sel(1 downto 0),
      i_src_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_memcpy_src_adr(31 downto 0),
      i_src_dout(31 downto 0) => memcpy_0_BRAM_Src_PORTA_DOUT(31 downto 0),
      o_dest_addr(31 downto 0) => memcpy_0_BRAM_Dest_PORTB_ADDR(31 downto 0),
      o_dest_control => memcpy_0_BRAM_Dest_PORTB_CTRL,
      o_dest_din(31 downto 0) => memcpy_0_BRAM_Dest_PORTB_DIN(31 downto 0),
      o_dest_en => memcpy_0_BRAM_Dest_PORTB_EN,
      o_dest_rst => memcpy_0_BRAM_Dest_PORTB_RST,
      o_dest_we(3 downto 0) => memcpy_0_BRAM_Dest_PORTB_WE(3 downto 0),
      o_done => memcpy_0_o_done,
      o_src_addr(31 downto 0) => memcpy_0_BRAM_Src_PORTA_ADDR(31 downto 0),
      o_src_control => memcpy_0_BRAM_Src_PORTA_CTRL,
      o_src_din(31 downto 0) => memcpy_0_BRAM_Src_PORTA_DIN(31 downto 0),
      o_src_en => memcpy_0_BRAM_Src_PORTA_EN,
      o_src_rst => memcpy_0_BRAM_Src_PORTA_RST,
      o_src_we(3 downto 0) => memcpy_0_BRAM_Src_PORTA_WE(3 downto 0),
      rst => rst_0_1,
      start => MAYO_SIGNING_FSM_0_o_memcpy_start
    );
memcpy_1: component Mayo_sign_memcpy_0_1
     port map (
      clk => clk_0_1,
      i_dest_dout(31 downto 0) => B"00000000000000000000000000001000",
      i_dst_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_memcpy1_dst_adr(31 downto 0),
      i_len(31 downto 0) => MAYO_SIGNING_FSM_0_o_memcpy1_len(31 downto 0),
      i_mem_port_sel(1 downto 0) => MAYO_SIGNING_FSM_0_o_memcpy1_mem_port_sel(1 downto 0),
      i_src_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_memcpy1_src_adr(31 downto 0),
      i_src_dout(31 downto 0) => memcpy_1_BRAM_Src_PORTA_DOUT(31 downto 0),
      o_dest_addr(31 downto 0) => NLW_memcpy_1_o_dest_addr_UNCONNECTED(31 downto 0),
      o_dest_control => NLW_memcpy_1_o_dest_control_UNCONNECTED,
      o_dest_din(31 downto 0) => NLW_memcpy_1_o_dest_din_UNCONNECTED(31 downto 0),
      o_dest_en => NLW_memcpy_1_o_dest_en_UNCONNECTED,
      o_dest_rst => NLW_memcpy_1_o_dest_rst_UNCONNECTED,
      o_dest_we(3 downto 0) => NLW_memcpy_1_o_dest_we_UNCONNECTED(3 downto 0),
      o_done => memcpy_1_o_done,
      o_src_addr(31 downto 0) => memcpy_1_BRAM_Src_PORTA_ADDR(31 downto 0),
      o_src_control => memcpy_1_BRAM_Src_PORTA_CTRL,
      o_src_din(31 downto 0) => memcpy_1_BRAM_Src_PORTA_DIN(31 downto 0),
      o_src_en => memcpy_1_BRAM_Src_PORTA_EN,
      o_src_rst => memcpy_1_BRAM_Src_PORTA_RST,
      o_src_we(3 downto 0) => memcpy_1_BRAM_Src_PORTA_WE(3 downto 0),
      rst => rst_0_1,
      start => MAYO_SIGNING_FSM_0_o_memcpy1_start
    );
end STRUCTURE;
