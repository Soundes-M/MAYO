-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Fri Dec  8 17:14:14 2023
-- Host        : zenith running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Mayo_sign_mayo_sample_oil_space_0_0_sim_netlist.vhdl
-- Design      : Mayo_sign_mayo_sample_oil_space_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mayo_sample_oil_space is
  port (
    o_mema_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mema_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_controla : out STD_LOGIC;
    o_memb_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memb_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_controlb : out STD_LOGIC;
    o_trng_en : out STD_LOGIC;
    o_mema_en : out STD_LOGIC;
    o_mema_we : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_memb_en : out STD_LOGIC;
    o_memb_we : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_trng_sel : out STD_LOGIC;
    o_done : out STD_LOGIC;
    rst : in STD_LOGIC;
    i_clk : in STD_LOGIC;
    i_mema_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_enable : in STD_LOGIC;
    i_trng_valid : in STD_LOGIC;
    i_trng_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_oil_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mode : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mayo_sample_oil_space;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mayo_sample_oil_space is
  signal data0 : STD_LOGIC_VECTOR ( 30 downto 4 );
  signal data1 : STD_LOGIC_VECTOR ( 30 downto 4 );
  signal data2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i : STD_LOGIC;
  signal i0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \i0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \i1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i1_carry__0_n_0\ : STD_LOGIC;
  signal \i1_carry__0_n_1\ : STD_LOGIC;
  signal \i1_carry__0_n_2\ : STD_LOGIC;
  signal \i1_carry__0_n_3\ : STD_LOGIC;
  signal \i1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i1_carry__1_n_0\ : STD_LOGIC;
  signal \i1_carry__1_n_1\ : STD_LOGIC;
  signal \i1_carry__1_n_2\ : STD_LOGIC;
  signal \i1_carry__1_n_3\ : STD_LOGIC;
  signal \i1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i1_carry__2_n_0\ : STD_LOGIC;
  signal \i1_carry__2_n_1\ : STD_LOGIC;
  signal \i1_carry__2_n_2\ : STD_LOGIC;
  signal \i1_carry__2_n_3\ : STD_LOGIC;
  signal i1_carry_i_1_n_0 : STD_LOGIC;
  signal i1_carry_i_2_n_0 : STD_LOGIC;
  signal i1_carry_i_3_n_0 : STD_LOGIC;
  signal i1_carry_i_4_n_0 : STD_LOGIC;
  signal i1_carry_i_5_n_0 : STD_LOGIC;
  signal i1_carry_n_0 : STD_LOGIC;
  signal i1_carry_n_1 : STD_LOGIC;
  signal i1_carry_n_2 : STD_LOGIC;
  signal i1_carry_n_3 : STD_LOGIC;
  signal \i[0]_i_1_n_0\ : STD_LOGIC;
  signal \i[10]_i_1_n_0\ : STD_LOGIC;
  signal \i[11]_i_1_n_0\ : STD_LOGIC;
  signal \i[12]_i_1_n_0\ : STD_LOGIC;
  signal \i[13]_i_1_n_0\ : STD_LOGIC;
  signal \i[14]_i_1_n_0\ : STD_LOGIC;
  signal \i[15]_i_1_n_0\ : STD_LOGIC;
  signal \i[16]_i_1_n_0\ : STD_LOGIC;
  signal \i[17]_i_1_n_0\ : STD_LOGIC;
  signal \i[18]_i_1_n_0\ : STD_LOGIC;
  signal \i[19]_i_1_n_0\ : STD_LOGIC;
  signal \i[1]_i_1_n_0\ : STD_LOGIC;
  signal \i[20]_i_1_n_0\ : STD_LOGIC;
  signal \i[21]_i_1_n_0\ : STD_LOGIC;
  signal \i[22]_i_1_n_0\ : STD_LOGIC;
  signal \i[23]_i_1_n_0\ : STD_LOGIC;
  signal \i[24]_i_1_n_0\ : STD_LOGIC;
  signal \i[25]_i_1_n_0\ : STD_LOGIC;
  signal \i[26]_i_1_n_0\ : STD_LOGIC;
  signal \i[27]_i_1_n_0\ : STD_LOGIC;
  signal \i[28]_i_1_n_0\ : STD_LOGIC;
  signal \i[29]_i_1_n_0\ : STD_LOGIC;
  signal \i[2]_i_1_n_0\ : STD_LOGIC;
  signal \i[30]_i_1_n_0\ : STD_LOGIC;
  signal \i[31]_i_2_n_0\ : STD_LOGIC;
  signal \i[31]_i_3_n_0\ : STD_LOGIC;
  signal \i[31]_i_4_n_0\ : STD_LOGIC;
  signal \i[3]_i_1_n_0\ : STD_LOGIC;
  signal \i[4]_i_1_n_0\ : STD_LOGIC;
  signal \i[5]_i_1_n_0\ : STD_LOGIC;
  signal \i[6]_i_1_n_0\ : STD_LOGIC;
  signal \i[7]_i_1_n_0\ : STD_LOGIC;
  signal \i[8]_i_1_n_0\ : STD_LOGIC;
  signal \i[9]_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \i_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \i_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \i_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \i_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \i_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \i_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \i_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \i_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \i_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \i_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \i_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \i_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \i_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \i_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \i_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \i_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \i_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \i_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \i_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \i_reg[31]_i_5_n_2\ : STD_LOGIC;
  signal \i_reg[31]_i_5_n_3\ : STD_LOGIC;
  signal \i_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \i_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \i_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \i_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \i_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \i_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \i_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \i_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \i_reg_n_0_[29]\ : STD_LOGIC;
  signal \i_reg_n_0_[30]\ : STD_LOGIC;
  signal \i_reg_n_0_[31]\ : STD_LOGIC;
  signal index : STD_LOGIC_VECTOR ( 30 downto 1 );
  signal index0 : STD_LOGIC_VECTOR ( 30 downto 1 );
  signal \index0_carry__0_n_0\ : STD_LOGIC;
  signal \index0_carry__0_n_1\ : STD_LOGIC;
  signal \index0_carry__0_n_2\ : STD_LOGIC;
  signal \index0_carry__0_n_3\ : STD_LOGIC;
  signal \index0_carry__1_n_0\ : STD_LOGIC;
  signal \index0_carry__1_n_1\ : STD_LOGIC;
  signal \index0_carry__1_n_2\ : STD_LOGIC;
  signal \index0_carry__1_n_3\ : STD_LOGIC;
  signal \index0_carry__2_n_0\ : STD_LOGIC;
  signal \index0_carry__2_n_1\ : STD_LOGIC;
  signal \index0_carry__2_n_2\ : STD_LOGIC;
  signal \index0_carry__2_n_3\ : STD_LOGIC;
  signal \index0_carry__3_n_0\ : STD_LOGIC;
  signal \index0_carry__3_n_1\ : STD_LOGIC;
  signal \index0_carry__3_n_2\ : STD_LOGIC;
  signal \index0_carry__3_n_3\ : STD_LOGIC;
  signal \index0_carry__4_n_0\ : STD_LOGIC;
  signal \index0_carry__4_n_1\ : STD_LOGIC;
  signal \index0_carry__4_n_2\ : STD_LOGIC;
  signal \index0_carry__4_n_3\ : STD_LOGIC;
  signal \index0_carry__5_n_0\ : STD_LOGIC;
  signal \index0_carry__5_n_1\ : STD_LOGIC;
  signal \index0_carry__5_n_2\ : STD_LOGIC;
  signal \index0_carry__5_n_3\ : STD_LOGIC;
  signal \index0_carry__6_n_3\ : STD_LOGIC;
  signal index0_carry_i_1_n_0 : STD_LOGIC;
  signal index0_carry_n_0 : STD_LOGIC;
  signal index0_carry_n_1 : STD_LOGIC;
  signal index0_carry_n_2 : STD_LOGIC;
  signal index0_carry_n_3 : STD_LOGIC;
  signal \index[30]_i_1_n_0\ : STD_LOGIC;
  signal k0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \k[0]_i_1_n_0\ : STD_LOGIC;
  signal \k[10]_i_1_n_0\ : STD_LOGIC;
  signal \k[11]_i_1_n_0\ : STD_LOGIC;
  signal \k[12]_i_1_n_0\ : STD_LOGIC;
  signal \k[13]_i_1_n_0\ : STD_LOGIC;
  signal \k[14]_i_1_n_0\ : STD_LOGIC;
  signal \k[15]_i_1_n_0\ : STD_LOGIC;
  signal \k[16]_i_1_n_0\ : STD_LOGIC;
  signal \k[17]_i_1_n_0\ : STD_LOGIC;
  signal \k[18]_i_1_n_0\ : STD_LOGIC;
  signal \k[19]_i_1_n_0\ : STD_LOGIC;
  signal \k[1]_i_1_n_0\ : STD_LOGIC;
  signal \k[20]_i_1_n_0\ : STD_LOGIC;
  signal \k[21]_i_1_n_0\ : STD_LOGIC;
  signal \k[22]_i_1_n_0\ : STD_LOGIC;
  signal \k[23]_i_1_n_0\ : STD_LOGIC;
  signal \k[24]_i_1_n_0\ : STD_LOGIC;
  signal \k[25]_i_1_n_0\ : STD_LOGIC;
  signal \k[26]_i_1_n_0\ : STD_LOGIC;
  signal \k[27]_i_1_n_0\ : STD_LOGIC;
  signal \k[28]_i_1_n_0\ : STD_LOGIC;
  signal \k[29]_i_1_n_0\ : STD_LOGIC;
  signal \k[2]_i_1_n_0\ : STD_LOGIC;
  signal \k[30]_i_1_n_0\ : STD_LOGIC;
  signal \k[31]_i_1_n_0\ : STD_LOGIC;
  signal \k[31]_i_2_n_0\ : STD_LOGIC;
  signal \k[3]_i_1_n_0\ : STD_LOGIC;
  signal \k[4]_i_1_n_0\ : STD_LOGIC;
  signal \k[5]_i_1_n_0\ : STD_LOGIC;
  signal \k[6]_i_1_n_0\ : STD_LOGIC;
  signal \k[7]_i_1_n_0\ : STD_LOGIC;
  signal \k[8]_i_1_n_0\ : STD_LOGIC;
  signal \k[9]_i_1_n_0\ : STD_LOGIC;
  signal \k_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \k_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \k_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \k_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \k_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \k_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \k_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \k_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \k_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \k_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \k_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \k_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \k_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \k_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \k_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \k_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \k_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \k_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \k_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \k_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \k_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \k_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \k_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \k_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \k_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \k_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \k_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \k_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \k_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \k_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \k_reg_n_0_[29]\ : STD_LOGIC;
  signal \k_reg_n_0_[30]\ : STD_LOGIC;
  signal \k_reg_n_0_[31]\ : STD_LOGIC;
  signal mode : STD_LOGIC;
  signal mode_i_1_n_0 : STD_LOGIC;
  signal \^o_done\ : STD_LOGIC;
  signal o_done_i_1_n_0 : STD_LOGIC;
  signal \o_mema_addr0_carry__0_n_0\ : STD_LOGIC;
  signal \o_mema_addr0_carry__0_n_1\ : STD_LOGIC;
  signal \o_mema_addr0_carry__0_n_2\ : STD_LOGIC;
  signal \o_mema_addr0_carry__0_n_3\ : STD_LOGIC;
  signal \o_mema_addr0_carry__1_n_0\ : STD_LOGIC;
  signal \o_mema_addr0_carry__1_n_1\ : STD_LOGIC;
  signal \o_mema_addr0_carry__1_n_2\ : STD_LOGIC;
  signal \o_mema_addr0_carry__1_n_3\ : STD_LOGIC;
  signal \o_mema_addr0_carry__2_n_0\ : STD_LOGIC;
  signal \o_mema_addr0_carry__2_n_1\ : STD_LOGIC;
  signal \o_mema_addr0_carry__2_n_2\ : STD_LOGIC;
  signal \o_mema_addr0_carry__2_n_3\ : STD_LOGIC;
  signal \o_mema_addr0_carry__3_n_0\ : STD_LOGIC;
  signal \o_mema_addr0_carry__3_n_1\ : STD_LOGIC;
  signal \o_mema_addr0_carry__3_n_2\ : STD_LOGIC;
  signal \o_mema_addr0_carry__3_n_3\ : STD_LOGIC;
  signal \o_mema_addr0_carry__4_n_0\ : STD_LOGIC;
  signal \o_mema_addr0_carry__4_n_1\ : STD_LOGIC;
  signal \o_mema_addr0_carry__4_n_2\ : STD_LOGIC;
  signal \o_mema_addr0_carry__4_n_3\ : STD_LOGIC;
  signal \o_mema_addr0_carry__5_n_2\ : STD_LOGIC;
  signal \o_mema_addr0_carry__5_n_3\ : STD_LOGIC;
  signal o_mema_addr0_carry_i_1_n_0 : STD_LOGIC;
  signal o_mema_addr0_carry_n_0 : STD_LOGIC;
  signal o_mema_addr0_carry_n_1 : STD_LOGIC;
  signal o_mema_addr0_carry_n_2 : STD_LOGIC;
  signal o_mema_addr0_carry_n_3 : STD_LOGIC;
  signal \o_mema_addr0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \o_mema_addr0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \o_mema_addr0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \o_mema_addr0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \o_mema_addr0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \o_mema_addr0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \o_mema_addr0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \o_mema_addr0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \o_mema_addr0_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \o_mema_addr0_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \o_mema_addr0_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \o_mema_addr0_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \o_mema_addr0_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \o_mema_addr0_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \o_mema_addr0_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \o_mema_addr0_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \o_mema_addr0_inferred__0/i__carry__4_n_0\ : STD_LOGIC;
  signal \o_mema_addr0_inferred__0/i__carry__4_n_1\ : STD_LOGIC;
  signal \o_mema_addr0_inferred__0/i__carry__4_n_2\ : STD_LOGIC;
  signal \o_mema_addr0_inferred__0/i__carry__4_n_3\ : STD_LOGIC;
  signal \o_mema_addr0_inferred__0/i__carry__5_n_2\ : STD_LOGIC;
  signal \o_mema_addr0_inferred__0/i__carry__5_n_3\ : STD_LOGIC;
  signal \o_mema_addr0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \o_mema_addr0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \o_mema_addr0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \o_mema_addr0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \o_mema_addr[11]_i_3_n_0\ : STD_LOGIC;
  signal \o_mema_addr[31]_i_1_n_0\ : STD_LOGIC;
  signal \o_mema_addr[3]_i_3_n_0\ : STD_LOGIC;
  signal \o_mema_addr[3]_i_4_n_0\ : STD_LOGIC;
  signal \o_mema_addr[7]_i_3_n_0\ : STD_LOGIC;
  signal \o_mema_addr[7]_i_4_n_0\ : STD_LOGIC;
  signal \o_mema_addr[7]_i_5_n_0\ : STD_LOGIC;
  signal \o_mema_addr[7]_i_6_n_0\ : STD_LOGIC;
  signal o_mema_addr_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \o_mema_addr_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \o_mema_addr_reg[11]_i_2_n_1\ : STD_LOGIC;
  signal \o_mema_addr_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \o_mema_addr_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \o_mema_addr_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \o_mema_addr_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \o_mema_addr_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \o_mema_addr_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \o_mema_addr_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \o_mema_addr_reg[19]_i_2_n_1\ : STD_LOGIC;
  signal \o_mema_addr_reg[19]_i_2_n_2\ : STD_LOGIC;
  signal \o_mema_addr_reg[19]_i_2_n_3\ : STD_LOGIC;
  signal \o_mema_addr_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \o_mema_addr_reg[23]_i_2_n_1\ : STD_LOGIC;
  signal \o_mema_addr_reg[23]_i_2_n_2\ : STD_LOGIC;
  signal \o_mema_addr_reg[23]_i_2_n_3\ : STD_LOGIC;
  signal \o_mema_addr_reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \o_mema_addr_reg[27]_i_2_n_1\ : STD_LOGIC;
  signal \o_mema_addr_reg[27]_i_2_n_2\ : STD_LOGIC;
  signal \o_mema_addr_reg[27]_i_2_n_3\ : STD_LOGIC;
  signal \o_mema_addr_reg[31]_i_3_n_1\ : STD_LOGIC;
  signal \o_mema_addr_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \o_mema_addr_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \o_mema_addr_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \o_mema_addr_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \o_mema_addr_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \o_mema_addr_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \o_mema_addr_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \o_mema_addr_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \o_mema_addr_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \o_mema_addr_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \o_mema_din[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_mema_din[10]_i_1_n_0\ : STD_LOGIC;
  signal \o_mema_din[11]_i_1_n_0\ : STD_LOGIC;
  signal \o_mema_din[12]_i_1_n_0\ : STD_LOGIC;
  signal \o_mema_din[13]_i_1_n_0\ : STD_LOGIC;
  signal \o_mema_din[14]_i_1_n_0\ : STD_LOGIC;
  signal \o_mema_din[15]_i_1_n_0\ : STD_LOGIC;
  signal \o_mema_din[16]_i_1_n_0\ : STD_LOGIC;
  signal \o_mema_din[17]_i_1_n_0\ : STD_LOGIC;
  signal \o_mema_din[18]_i_1_n_0\ : STD_LOGIC;
  signal \o_mema_din[19]_i_1_n_0\ : STD_LOGIC;
  signal \o_mema_din[1]_i_1_n_0\ : STD_LOGIC;
  signal \o_mema_din[20]_i_1_n_0\ : STD_LOGIC;
  signal \o_mema_din[21]_i_1_n_0\ : STD_LOGIC;
  signal \o_mema_din[22]_i_1_n_0\ : STD_LOGIC;
  signal \o_mema_din[23]_i_1_n_0\ : STD_LOGIC;
  signal \o_mema_din[24]_i_1_n_0\ : STD_LOGIC;
  signal \o_mema_din[25]_i_1_n_0\ : STD_LOGIC;
  signal \o_mema_din[26]_i_1_n_0\ : STD_LOGIC;
  signal \o_mema_din[27]_i_1_n_0\ : STD_LOGIC;
  signal \o_mema_din[28]_i_1_n_0\ : STD_LOGIC;
  signal \o_mema_din[29]_i_1_n_0\ : STD_LOGIC;
  signal \o_mema_din[2]_i_1_n_0\ : STD_LOGIC;
  signal \o_mema_din[30]_i_1_n_0\ : STD_LOGIC;
  signal \o_mema_din[31]_i_1_n_0\ : STD_LOGIC;
  signal \o_mema_din[31]_i_2_n_0\ : STD_LOGIC;
  signal \o_mema_din[3]_i_1_n_0\ : STD_LOGIC;
  signal \o_mema_din[4]_i_1_n_0\ : STD_LOGIC;
  signal \o_mema_din[5]_i_1_n_0\ : STD_LOGIC;
  signal \o_mema_din[6]_i_1_n_0\ : STD_LOGIC;
  signal \o_mema_din[7]_i_1_n_0\ : STD_LOGIC;
  signal \o_mema_din[8]_i_1_n_0\ : STD_LOGIC;
  signal \o_mema_din[9]_i_1_n_0\ : STD_LOGIC;
  signal \^o_mema_en\ : STD_LOGIC;
  signal o_mema_en_i_1_n_0 : STD_LOGIC;
  signal o_mema_en_i_2_n_0 : STD_LOGIC;
  signal \^o_mema_we\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \o_mema_we[3]_i_1_n_0\ : STD_LOGIC;
  signal \o_memb_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_memb_addr[10]_i_1_n_0\ : STD_LOGIC;
  signal \o_memb_addr[11]_i_1_n_0\ : STD_LOGIC;
  signal \o_memb_addr[12]_i_1_n_0\ : STD_LOGIC;
  signal \o_memb_addr[13]_i_1_n_0\ : STD_LOGIC;
  signal \o_memb_addr[14]_i_1_n_0\ : STD_LOGIC;
  signal \o_memb_addr[15]_i_1_n_0\ : STD_LOGIC;
  signal \o_memb_addr[16]_i_1_n_0\ : STD_LOGIC;
  signal \o_memb_addr[17]_i_1_n_0\ : STD_LOGIC;
  signal \o_memb_addr[18]_i_1_n_0\ : STD_LOGIC;
  signal \o_memb_addr[19]_i_1_n_0\ : STD_LOGIC;
  signal \o_memb_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \o_memb_addr[20]_i_1_n_0\ : STD_LOGIC;
  signal \o_memb_addr[21]_i_1_n_0\ : STD_LOGIC;
  signal \o_memb_addr[22]_i_1_n_0\ : STD_LOGIC;
  signal \o_memb_addr[23]_i_1_n_0\ : STD_LOGIC;
  signal \o_memb_addr[24]_i_1_n_0\ : STD_LOGIC;
  signal \o_memb_addr[25]_i_1_n_0\ : STD_LOGIC;
  signal \o_memb_addr[26]_i_1_n_0\ : STD_LOGIC;
  signal \o_memb_addr[27]_i_1_n_0\ : STD_LOGIC;
  signal \o_memb_addr[28]_i_1_n_0\ : STD_LOGIC;
  signal \o_memb_addr[29]_i_1_n_0\ : STD_LOGIC;
  signal \o_memb_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \o_memb_addr[30]_i_1_n_0\ : STD_LOGIC;
  signal \o_memb_addr[31]_i_1_n_0\ : STD_LOGIC;
  signal \o_memb_addr[31]_i_2_n_0\ : STD_LOGIC;
  signal \o_memb_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \o_memb_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \o_memb_addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \o_memb_addr[6]_i_1_n_0\ : STD_LOGIC;
  signal \o_memb_addr[7]_i_1_n_0\ : STD_LOGIC;
  signal \o_memb_addr[8]_i_1_n_0\ : STD_LOGIC;
  signal \o_memb_addr[9]_i_1_n_0\ : STD_LOGIC;
  signal \o_memb_din[31]_i_1_n_0\ : STD_LOGIC;
  signal \^o_memb_en\ : STD_LOGIC;
  signal o_memb_en_i_1_n_0 : STD_LOGIC;
  signal \^o_memb_we\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \o_memb_we[3]_i_1_n_0\ : STD_LOGIC;
  signal \^o_trng_en\ : STD_LOGIC;
  signal o_trng_en_i_1_n_0 : STD_LOGIC;
  signal \^o_trng_sel\ : STD_LOGIC;
  signal o_trng_sel_i_1_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 30 downto 1 );
  signal s_ctr : STD_LOGIC_VECTOR ( 30 downto 1 );
  signal s_ctr0 : STD_LOGIC_VECTOR ( 30 downto 1 );
  signal \s_ctr0_carry__0_n_0\ : STD_LOGIC;
  signal \s_ctr0_carry__0_n_1\ : STD_LOGIC;
  signal \s_ctr0_carry__0_n_2\ : STD_LOGIC;
  signal \s_ctr0_carry__0_n_3\ : STD_LOGIC;
  signal \s_ctr0_carry__1_n_0\ : STD_LOGIC;
  signal \s_ctr0_carry__1_n_1\ : STD_LOGIC;
  signal \s_ctr0_carry__1_n_2\ : STD_LOGIC;
  signal \s_ctr0_carry__1_n_3\ : STD_LOGIC;
  signal \s_ctr0_carry__2_n_0\ : STD_LOGIC;
  signal \s_ctr0_carry__2_n_1\ : STD_LOGIC;
  signal \s_ctr0_carry__2_n_2\ : STD_LOGIC;
  signal \s_ctr0_carry__2_n_3\ : STD_LOGIC;
  signal \s_ctr0_carry__3_n_0\ : STD_LOGIC;
  signal \s_ctr0_carry__3_n_1\ : STD_LOGIC;
  signal \s_ctr0_carry__3_n_2\ : STD_LOGIC;
  signal \s_ctr0_carry__3_n_3\ : STD_LOGIC;
  signal \s_ctr0_carry__4_n_0\ : STD_LOGIC;
  signal \s_ctr0_carry__4_n_1\ : STD_LOGIC;
  signal \s_ctr0_carry__4_n_2\ : STD_LOGIC;
  signal \s_ctr0_carry__4_n_3\ : STD_LOGIC;
  signal \s_ctr0_carry__5_n_0\ : STD_LOGIC;
  signal \s_ctr0_carry__5_n_1\ : STD_LOGIC;
  signal \s_ctr0_carry__5_n_2\ : STD_LOGIC;
  signal \s_ctr0_carry__5_n_3\ : STD_LOGIC;
  signal \s_ctr0_carry__6_n_3\ : STD_LOGIC;
  signal s_ctr0_carry_i_1_n_0 : STD_LOGIC;
  signal s_ctr0_carry_n_0 : STD_LOGIC;
  signal s_ctr0_carry_n_1 : STD_LOGIC;
  signal s_ctr0_carry_n_2 : STD_LOGIC;
  signal s_ctr0_carry_n_3 : STD_LOGIC;
  signal \s_ctr[10]_i_1_n_0\ : STD_LOGIC;
  signal \s_ctr[11]_i_1_n_0\ : STD_LOGIC;
  signal \s_ctr[12]_i_1_n_0\ : STD_LOGIC;
  signal \s_ctr[13]_i_1_n_0\ : STD_LOGIC;
  signal \s_ctr[14]_i_1_n_0\ : STD_LOGIC;
  signal \s_ctr[15]_i_1_n_0\ : STD_LOGIC;
  signal \s_ctr[16]_i_1_n_0\ : STD_LOGIC;
  signal \s_ctr[17]_i_1_n_0\ : STD_LOGIC;
  signal \s_ctr[18]_i_1_n_0\ : STD_LOGIC;
  signal \s_ctr[19]_i_1_n_0\ : STD_LOGIC;
  signal \s_ctr[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_ctr[20]_i_1_n_0\ : STD_LOGIC;
  signal \s_ctr[21]_i_1_n_0\ : STD_LOGIC;
  signal \s_ctr[22]_i_1_n_0\ : STD_LOGIC;
  signal \s_ctr[23]_i_1_n_0\ : STD_LOGIC;
  signal \s_ctr[24]_i_1_n_0\ : STD_LOGIC;
  signal \s_ctr[25]_i_1_n_0\ : STD_LOGIC;
  signal \s_ctr[26]_i_1_n_0\ : STD_LOGIC;
  signal \s_ctr[27]_i_1_n_0\ : STD_LOGIC;
  signal \s_ctr[28]_i_1_n_0\ : STD_LOGIC;
  signal \s_ctr[29]_i_1_n_0\ : STD_LOGIC;
  signal \s_ctr[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_ctr[30]_i_2_n_0\ : STD_LOGIC;
  signal \s_ctr[30]_i_3_n_0\ : STD_LOGIC;
  signal \s_ctr[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_ctr[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_ctr[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_ctr[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_ctr[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_ctr[8]_i_1_n_0\ : STD_LOGIC;
  signal \s_ctr[9]_i_1_n_0\ : STD_LOGIC;
  signal s_ctr_2 : STD_LOGIC;
  signal s_oil_adr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \s_oil_adr[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_adr[10]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_adr[11]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_adr[12]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_adr[13]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_adr[14]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_adr[15]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_adr[16]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_adr[17]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_adr[18]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_adr[19]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_adr[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_adr[20]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_adr[21]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_adr[22]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_adr[23]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_adr[24]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_adr[25]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_adr[26]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_adr[27]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_adr[28]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_adr[29]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_adr[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_adr[30]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_adr[31]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_adr[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_adr[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_adr[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_adr[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_adr[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_adr[8]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_adr[9]_i_1_n_0\ : STD_LOGIC;
  signal s_oil_adr_0 : STD_LOGIC;
  signal s_oil_index : STD_LOGIC;
  signal \s_oil_index[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_index[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_index[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_index[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_index[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_index[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_index[8]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_index[8]_i_3_n_0\ : STD_LOGIC;
  signal \s_oil_index[8]_i_4_n_0\ : STD_LOGIC;
  signal \s_oil_index[8]_i_5_n_0\ : STD_LOGIC;
  signal \s_oil_index_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_oil_index_reg_n_0_[3]\ : STD_LOGIC;
  signal \s_oil_index_reg_n_0_[4]\ : STD_LOGIC;
  signal \s_oil_index_reg_n_0_[5]\ : STD_LOGIC;
  signal \s_oil_index_reg_n_0_[6]\ : STD_LOGIC;
  signal \s_oil_index_reg_n_0_[7]\ : STD_LOGIC;
  signal \s_oil_index_reg_n_0_[8]\ : STD_LOGIC;
  signal s_oil_space : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_oil_space0 : STD_LOGIC_VECTOR ( 31 downto 29 );
  signal s_oil_space1 : STD_LOGIC_VECTOR ( 31 downto 3 );
  signal s_oil_space10_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal s_oil_space2 : STD_LOGIC_VECTOR ( 31 downto 3 );
  signal \s_oil_space[15]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_space[23]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_space[31]_i_10_n_0\ : STD_LOGIC;
  signal \s_oil_space[31]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_space[31]_i_3_n_0\ : STD_LOGIC;
  signal \s_oil_space[31]_i_4_n_0\ : STD_LOGIC;
  signal \s_oil_space[31]_i_5_n_0\ : STD_LOGIC;
  signal \s_oil_space[31]_i_6_n_0\ : STD_LOGIC;
  signal \s_oil_space[31]_i_7_n_0\ : STD_LOGIC;
  signal \s_oil_space[31]_i_8_n_0\ : STD_LOGIC;
  signal \s_oil_space[31]_i_9_n_0\ : STD_LOGIC;
  signal \s_oil_space[7]_i_1_n_0\ : STD_LOGIC;
  signal s_rand : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \s_rand[31]_i_1_n_0\ : STD_LOGIC;
  signal t_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \t_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \t_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \t_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \t_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \t_state[3]_i_10_n_0\ : STD_LOGIC;
  signal \t_state[3]_i_11_n_0\ : STD_LOGIC;
  signal \t_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \t_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \t_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \t_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \t_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \t_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \t_state[3]_i_8_n_0\ : STD_LOGIC;
  signal \t_state[3]_i_9_n_0\ : STD_LOGIC;
  signal \t_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \t_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \t_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \t_state_reg_n_0_[3]\ : STD_LOGIC;
  signal tmp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \tmp[4]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_i0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i0_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i0_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i0_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_i1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i_reg[31]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i_reg[31]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_index0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_index0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_k_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_k_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_o_mema_addr0_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_o_mema_addr0_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_o_mema_addr0_inferred__0/i__carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_o_mema_addr0_inferred__0/i__carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_o_mema_addr_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_s_ctr0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_s_ctr0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \i0_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \i0_inferred__0/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \i0_inferred__0/i__carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \i0_inferred__0/i__carry__2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of i1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \i1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \i1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \i1_carry__2\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \i[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \i[10]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \i[11]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \i[12]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \i[13]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \i[14]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \i[15]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \i[16]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \i[17]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \i[18]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \i[19]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \i[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \i[20]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \i[21]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \i[22]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \i[23]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \i[24]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \i[25]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \i[26]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \i[27]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \i[28]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i[29]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \i[30]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \i[31]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \i[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \i[4]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \i[5]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \i[6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \i[7]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \i[8]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \i[9]_i_1\ : label is "soft_lutpair15";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \i_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \i_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \i_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \i_reg[24]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \i_reg[28]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \i_reg[31]_i_5\ : label is 35;
  attribute ADDER_THRESHOLD of \i_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \i_reg[8]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of index0_carry : label is 35;
  attribute ADDER_THRESHOLD of \index0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \index0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \index0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \index0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \index0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \index0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \index0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \index[10]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \index[11]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \index[12]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \index[13]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \index[14]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \index[15]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \index[16]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \index[17]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \index[18]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \index[19]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \index[1]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \index[20]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \index[21]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \index[22]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \index[23]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \index[24]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \index[25]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \index[26]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \index[27]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \index[28]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \index[29]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \index[2]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \index[30]_i_2\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \index[3]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \index[4]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \index[5]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \index[6]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \index[7]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \index[8]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \index[9]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \k[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \k[10]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \k[11]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \k[12]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \k[13]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \k[14]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \k[15]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \k[16]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \k[17]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \k[18]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \k[19]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \k[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \k[20]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \k[21]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \k[22]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \k[23]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \k[24]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \k[25]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \k[26]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \k[27]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \k[28]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \k[29]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \k[2]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \k[30]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \k[31]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \k[3]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \k[4]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \k[5]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \k[6]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \k[7]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \k[8]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \k[9]_i_1\ : label is "soft_lutpair41";
  attribute ADDER_THRESHOLD of \k_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \k_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \k_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \k_reg[24]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \k_reg[28]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \k_reg[31]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \k_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \k_reg[8]_i_2\ : label is 35;
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of o_controla_reg : label is "no";
  attribute x_interface_info : string;
  attribute x_interface_info of o_controla_reg : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama CTRL";
  attribute equivalent_register_removal of o_controlb_reg : label is "no";
  attribute x_interface_info of o_controlb_reg : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb CTRL";
  attribute ADDER_THRESHOLD of o_mema_addr0_carry : label is 35;
  attribute ADDER_THRESHOLD of \o_mema_addr0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \o_mema_addr0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \o_mema_addr0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \o_mema_addr0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \o_mema_addr0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \o_mema_addr0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \o_mema_addr0_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \o_mema_addr0_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \o_mema_addr0_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \o_mema_addr0_inferred__0/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \o_mema_addr0_inferred__0/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \o_mema_addr0_inferred__0/i__carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \o_mema_addr0_inferred__0/i__carry__5\ : label is 35;
  attribute SOFT_HLUTNM of \o_mema_addr[0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \o_mema_addr[31]_i_2\ : label is "soft_lutpair37";
  attribute x_interface_info of \o_mema_addr_reg[0]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama ADDR";
  attribute x_interface_info of \o_mema_addr_reg[10]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama ADDR";
  attribute x_interface_info of \o_mema_addr_reg[11]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama ADDR";
  attribute ADDER_THRESHOLD of \o_mema_addr_reg[11]_i_2\ : label is 35;
  attribute x_interface_info of \o_mema_addr_reg[12]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama ADDR";
  attribute x_interface_info of \o_mema_addr_reg[13]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama ADDR";
  attribute x_interface_info of \o_mema_addr_reg[14]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama ADDR";
  attribute x_interface_info of \o_mema_addr_reg[15]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama ADDR";
  attribute ADDER_THRESHOLD of \o_mema_addr_reg[15]_i_2\ : label is 35;
  attribute x_interface_info of \o_mema_addr_reg[16]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama ADDR";
  attribute x_interface_info of \o_mema_addr_reg[17]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama ADDR";
  attribute x_interface_info of \o_mema_addr_reg[18]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama ADDR";
  attribute x_interface_info of \o_mema_addr_reg[19]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama ADDR";
  attribute ADDER_THRESHOLD of \o_mema_addr_reg[19]_i_2\ : label is 35;
  attribute x_interface_info of \o_mema_addr_reg[1]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama ADDR";
  attribute x_interface_info of \o_mema_addr_reg[20]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama ADDR";
  attribute x_interface_info of \o_mema_addr_reg[21]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama ADDR";
  attribute x_interface_info of \o_mema_addr_reg[22]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama ADDR";
  attribute x_interface_info of \o_mema_addr_reg[23]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama ADDR";
  attribute ADDER_THRESHOLD of \o_mema_addr_reg[23]_i_2\ : label is 35;
  attribute x_interface_info of \o_mema_addr_reg[24]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama ADDR";
  attribute x_interface_info of \o_mema_addr_reg[25]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama ADDR";
  attribute x_interface_info of \o_mema_addr_reg[26]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama ADDR";
  attribute x_interface_info of \o_mema_addr_reg[27]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama ADDR";
  attribute ADDER_THRESHOLD of \o_mema_addr_reg[27]_i_2\ : label is 35;
  attribute x_interface_info of \o_mema_addr_reg[28]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama ADDR";
  attribute x_interface_info of \o_mema_addr_reg[29]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama ADDR";
  attribute x_interface_info of \o_mema_addr_reg[2]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama ADDR";
  attribute x_interface_info of \o_mema_addr_reg[30]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama ADDR";
  attribute x_interface_info of \o_mema_addr_reg[31]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama ADDR";
  attribute ADDER_THRESHOLD of \o_mema_addr_reg[31]_i_3\ : label is 35;
  attribute x_interface_info of \o_mema_addr_reg[3]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama ADDR";
  attribute ADDER_THRESHOLD of \o_mema_addr_reg[3]_i_2\ : label is 35;
  attribute x_interface_info of \o_mema_addr_reg[4]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama ADDR";
  attribute x_interface_info of \o_mema_addr_reg[5]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama ADDR";
  attribute x_interface_info of \o_mema_addr_reg[6]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama ADDR";
  attribute x_interface_info of \o_mema_addr_reg[7]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama ADDR";
  attribute ADDER_THRESHOLD of \o_mema_addr_reg[7]_i_2\ : label is 35;
  attribute x_interface_info of \o_mema_addr_reg[8]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama ADDR";
  attribute x_interface_info of \o_mema_addr_reg[9]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama ADDR";
  attribute SOFT_HLUTNM of \o_mema_din[0]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \o_mema_din[10]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \o_mema_din[11]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \o_mema_din[12]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \o_mema_din[13]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \o_mema_din[14]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \o_mema_din[15]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \o_mema_din[16]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \o_mema_din[17]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \o_mema_din[18]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \o_mema_din[19]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \o_mema_din[1]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \o_mema_din[20]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \o_mema_din[21]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \o_mema_din[22]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \o_mema_din[23]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \o_mema_din[24]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \o_mema_din[25]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \o_mema_din[26]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \o_mema_din[27]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \o_mema_din[28]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \o_mema_din[29]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \o_mema_din[2]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \o_mema_din[30]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \o_mema_din[31]_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \o_mema_din[3]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \o_mema_din[4]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \o_mema_din[5]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \o_mema_din[6]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \o_mema_din[7]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \o_mema_din[8]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \o_mema_din[9]_i_1\ : label is "soft_lutpair64";
  attribute x_interface_info of \o_mema_din_reg[0]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama DIN";
  attribute x_interface_info of \o_mema_din_reg[10]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama DIN";
  attribute x_interface_info of \o_mema_din_reg[11]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama DIN";
  attribute x_interface_info of \o_mema_din_reg[12]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama DIN";
  attribute x_interface_info of \o_mema_din_reg[13]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama DIN";
  attribute x_interface_info of \o_mema_din_reg[14]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama DIN";
  attribute x_interface_info of \o_mema_din_reg[15]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama DIN";
  attribute x_interface_info of \o_mema_din_reg[16]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama DIN";
  attribute x_interface_info of \o_mema_din_reg[17]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama DIN";
  attribute x_interface_info of \o_mema_din_reg[18]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama DIN";
  attribute x_interface_info of \o_mema_din_reg[19]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama DIN";
  attribute x_interface_info of \o_mema_din_reg[1]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama DIN";
  attribute x_interface_info of \o_mema_din_reg[20]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama DIN";
  attribute x_interface_info of \o_mema_din_reg[21]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama DIN";
  attribute x_interface_info of \o_mema_din_reg[22]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama DIN";
  attribute x_interface_info of \o_mema_din_reg[23]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama DIN";
  attribute x_interface_info of \o_mema_din_reg[24]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama DIN";
  attribute x_interface_info of \o_mema_din_reg[25]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama DIN";
  attribute x_interface_info of \o_mema_din_reg[26]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama DIN";
  attribute x_interface_info of \o_mema_din_reg[27]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama DIN";
  attribute x_interface_info of \o_mema_din_reg[28]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama DIN";
  attribute x_interface_info of \o_mema_din_reg[29]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama DIN";
  attribute x_interface_info of \o_mema_din_reg[2]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama DIN";
  attribute x_interface_info of \o_mema_din_reg[30]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama DIN";
  attribute x_interface_info of \o_mema_din_reg[31]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama DIN";
  attribute x_interface_info of \o_mema_din_reg[3]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama DIN";
  attribute x_interface_info of \o_mema_din_reg[4]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama DIN";
  attribute x_interface_info of \o_mema_din_reg[5]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama DIN";
  attribute x_interface_info of \o_mema_din_reg[6]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama DIN";
  attribute x_interface_info of \o_mema_din_reg[7]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama DIN";
  attribute x_interface_info of \o_mema_din_reg[8]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama DIN";
  attribute x_interface_info of \o_mema_din_reg[9]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama DIN";
  attribute SOFT_HLUTNM of o_mema_en_i_2 : label is "soft_lutpair2";
  attribute x_interface_info of o_mema_en_reg : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama EN";
  attribute x_interface_info of \o_mema_we_reg[3]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama WE";
  attribute SOFT_HLUTNM of \o_memb_addr[0]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \o_memb_addr[10]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \o_memb_addr[11]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \o_memb_addr[12]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \o_memb_addr[13]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \o_memb_addr[14]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \o_memb_addr[15]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \o_memb_addr[16]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \o_memb_addr[17]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \o_memb_addr[18]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \o_memb_addr[19]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \o_memb_addr[1]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \o_memb_addr[20]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \o_memb_addr[21]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \o_memb_addr[22]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \o_memb_addr[23]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \o_memb_addr[24]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \o_memb_addr[25]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \o_memb_addr[26]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \o_memb_addr[27]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \o_memb_addr[28]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \o_memb_addr[29]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \o_memb_addr[2]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \o_memb_addr[30]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \o_memb_addr[31]_i_2\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \o_memb_addr[3]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \o_memb_addr[4]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \o_memb_addr[5]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \o_memb_addr[6]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \o_memb_addr[7]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \o_memb_addr[8]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \o_memb_addr[9]_i_1\ : label is "soft_lutpair111";
  attribute x_interface_info of \o_memb_addr_reg[0]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb ADDR";
  attribute x_interface_info of \o_memb_addr_reg[10]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb ADDR";
  attribute x_interface_info of \o_memb_addr_reg[11]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb ADDR";
  attribute x_interface_info of \o_memb_addr_reg[12]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb ADDR";
  attribute x_interface_info of \o_memb_addr_reg[13]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb ADDR";
  attribute x_interface_info of \o_memb_addr_reg[14]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb ADDR";
  attribute x_interface_info of \o_memb_addr_reg[15]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb ADDR";
  attribute x_interface_info of \o_memb_addr_reg[16]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb ADDR";
  attribute x_interface_info of \o_memb_addr_reg[17]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb ADDR";
  attribute x_interface_info of \o_memb_addr_reg[18]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb ADDR";
  attribute x_interface_info of \o_memb_addr_reg[19]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb ADDR";
  attribute x_interface_info of \o_memb_addr_reg[1]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb ADDR";
  attribute x_interface_info of \o_memb_addr_reg[20]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb ADDR";
  attribute x_interface_info of \o_memb_addr_reg[21]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb ADDR";
  attribute x_interface_info of \o_memb_addr_reg[22]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb ADDR";
  attribute x_interface_info of \o_memb_addr_reg[23]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb ADDR";
  attribute x_interface_info of \o_memb_addr_reg[24]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb ADDR";
  attribute x_interface_info of \o_memb_addr_reg[25]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb ADDR";
  attribute x_interface_info of \o_memb_addr_reg[26]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb ADDR";
  attribute x_interface_info of \o_memb_addr_reg[27]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb ADDR";
  attribute x_interface_info of \o_memb_addr_reg[28]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb ADDR";
  attribute x_interface_info of \o_memb_addr_reg[29]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb ADDR";
  attribute x_interface_info of \o_memb_addr_reg[2]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb ADDR";
  attribute x_interface_info of \o_memb_addr_reg[30]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb ADDR";
  attribute x_interface_info of \o_memb_addr_reg[31]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb ADDR";
  attribute x_interface_info of \o_memb_addr_reg[3]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb ADDR";
  attribute x_interface_info of \o_memb_addr_reg[4]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb ADDR";
  attribute x_interface_info of \o_memb_addr_reg[5]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb ADDR";
  attribute x_interface_info of \o_memb_addr_reg[6]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb ADDR";
  attribute x_interface_info of \o_memb_addr_reg[7]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb ADDR";
  attribute x_interface_info of \o_memb_addr_reg[8]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb ADDR";
  attribute x_interface_info of \o_memb_addr_reg[9]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb ADDR";
  attribute x_interface_info of \o_memb_din_reg[0]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb DIN";
  attribute x_interface_info of \o_memb_din_reg[10]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb DIN";
  attribute x_interface_info of \o_memb_din_reg[11]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb DIN";
  attribute x_interface_info of \o_memb_din_reg[12]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb DIN";
  attribute x_interface_info of \o_memb_din_reg[13]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb DIN";
  attribute x_interface_info of \o_memb_din_reg[14]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb DIN";
  attribute x_interface_info of \o_memb_din_reg[15]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb DIN";
  attribute x_interface_info of \o_memb_din_reg[16]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb DIN";
  attribute x_interface_info of \o_memb_din_reg[17]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb DIN";
  attribute x_interface_info of \o_memb_din_reg[18]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb DIN";
  attribute x_interface_info of \o_memb_din_reg[19]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb DIN";
  attribute x_interface_info of \o_memb_din_reg[1]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb DIN";
  attribute x_interface_info of \o_memb_din_reg[20]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb DIN";
  attribute x_interface_info of \o_memb_din_reg[21]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb DIN";
  attribute x_interface_info of \o_memb_din_reg[22]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb DIN";
  attribute x_interface_info of \o_memb_din_reg[23]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb DIN";
  attribute x_interface_info of \o_memb_din_reg[24]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb DIN";
  attribute x_interface_info of \o_memb_din_reg[25]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb DIN";
  attribute x_interface_info of \o_memb_din_reg[26]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb DIN";
  attribute x_interface_info of \o_memb_din_reg[27]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb DIN";
  attribute x_interface_info of \o_memb_din_reg[28]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb DIN";
  attribute x_interface_info of \o_memb_din_reg[29]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb DIN";
  attribute x_interface_info of \o_memb_din_reg[2]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb DIN";
  attribute x_interface_info of \o_memb_din_reg[30]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb DIN";
  attribute x_interface_info of \o_memb_din_reg[31]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb DIN";
  attribute x_interface_info of \o_memb_din_reg[3]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb DIN";
  attribute x_interface_info of \o_memb_din_reg[4]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb DIN";
  attribute x_interface_info of \o_memb_din_reg[5]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb DIN";
  attribute x_interface_info of \o_memb_din_reg[6]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb DIN";
  attribute x_interface_info of \o_memb_din_reg[7]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb DIN";
  attribute x_interface_info of \o_memb_din_reg[8]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb DIN";
  attribute x_interface_info of \o_memb_din_reg[9]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb DIN";
  attribute x_interface_info of o_memb_en_reg : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb EN";
  attribute x_interface_info of \o_memb_we_reg[3]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Samb WE";
  attribute SOFT_HLUTNM of o_trng_en_i_1 : label is "soft_lutpair3";
  attribute ADDER_THRESHOLD of s_ctr0_carry : label is 35;
  attribute ADDER_THRESHOLD of \s_ctr0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \s_ctr0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \s_ctr0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \s_ctr0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \s_ctr0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \s_ctr0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \s_ctr0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \s_ctr[10]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s_ctr[11]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \s_ctr[12]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \s_ctr[13]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s_ctr[14]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s_ctr[15]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \s_ctr[16]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \s_ctr[17]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s_ctr[18]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s_ctr[19]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \s_ctr[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \s_ctr[20]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \s_ctr[21]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \s_ctr[22]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \s_ctr[23]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \s_ctr[24]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \s_ctr[25]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \s_ctr[26]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \s_ctr[27]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \s_ctr[28]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \s_ctr[29]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \s_ctr[2]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \s_ctr[30]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \s_ctr[30]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_ctr[3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s_ctr[4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s_ctr[5]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s_ctr[6]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s_ctr[7]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_ctr[8]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_ctr[9]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s_oil_adr[0]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \s_oil_adr[10]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \s_oil_adr[11]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \s_oil_adr[12]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \s_oil_adr[13]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \s_oil_adr[14]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \s_oil_adr[15]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \s_oil_adr[16]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \s_oil_adr[17]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \s_oil_adr[18]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \s_oil_adr[19]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \s_oil_adr[1]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \s_oil_adr[20]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \s_oil_adr[21]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \s_oil_adr[22]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \s_oil_adr[23]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \s_oil_adr[24]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \s_oil_adr[25]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \s_oil_adr[26]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \s_oil_adr[27]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \s_oil_adr[28]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \s_oil_adr[29]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \s_oil_adr[2]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \s_oil_adr[30]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \s_oil_adr[31]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \s_oil_adr[3]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \s_oil_adr[4]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \s_oil_adr[5]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \s_oil_adr[6]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \s_oil_adr[7]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \s_oil_adr[8]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \s_oil_adr[9]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \s_oil_index[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_oil_index[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_oil_index[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_oil_index[5]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_oil_space[31]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \t_state[0]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \t_state[1]_i_1\ : label is "soft_lutpair2";
begin
  o_done <= \^o_done\;
  o_mema_en <= \^o_mema_en\;
  o_mema_we(0) <= \^o_mema_we\(0);
  o_memb_en <= \^o_memb_en\;
  o_memb_we(0) <= \^o_memb_we\(0);
  o_trng_en <= \^o_trng_en\;
  o_trng_sel <= \^o_trng_sel\;
\i0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i0_inferred__0/i__carry_n_0\,
      CO(2) => \i0_inferred__0/i__carry_n_1\,
      CO(1) => \i0_inferred__0/i__carry_n_2\,
      CO(0) => \i0_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \i__carry_i_1_n_0\,
      O(3 downto 0) => \NLW_i0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_2_n_0\,
      S(2) => \i__carry_i_3_n_0\,
      S(1) => \i__carry_i_4_n_0\,
      S(0) => \i__carry_i_5_n_0\
    );
\i0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \i0_inferred__0/i__carry_n_0\,
      CO(3) => \i0_inferred__0/i__carry__0_n_0\,
      CO(2) => \i0_inferred__0/i__carry__0_n_1\,
      CO(1) => \i0_inferred__0/i__carry__0_n_2\,
      CO(0) => \i0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_i0_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\i0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i0_inferred__0/i__carry__0_n_0\,
      CO(3) => \i0_inferred__0/i__carry__1_n_0\,
      CO(2) => \i0_inferred__0/i__carry__1_n_1\,
      CO(1) => \i0_inferred__0/i__carry__1_n_2\,
      CO(0) => \i0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_i0_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\i0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \i0_inferred__0/i__carry__1_n_0\,
      CO(3) => \i0_inferred__0/i__carry__2_n_0\,
      CO(2) => \i0_inferred__0/i__carry__2_n_1\,
      CO(1) => \i0_inferred__0/i__carry__2_n_2\,
      CO(0) => \i0_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \i_reg_n_0_[31]\,
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_i0_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
i1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => i1_carry_n_0,
      CO(2) => i1_carry_n_1,
      CO(1) => i1_carry_n_2,
      CO(0) => i1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => i1_carry_i_1_n_0,
      O(3 downto 0) => NLW_i1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => i1_carry_i_2_n_0,
      S(2) => i1_carry_i_3_n_0,
      S(1) => i1_carry_i_4_n_0,
      S(0) => i1_carry_i_5_n_0
    );
\i1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => i1_carry_n_0,
      CO(3) => \i1_carry__0_n_0\,
      CO(2) => \i1_carry__0_n_1\,
      CO(1) => \i1_carry__0_n_2\,
      CO(0) => \i1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_i1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i1_carry__0_i_1_n_0\,
      S(2) => \i1_carry__0_i_2_n_0\,
      S(1) => \i1_carry__0_i_3_n_0\,
      S(0) => \i1_carry__0_i_4_n_0\
    );
\i1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space1(17),
      I1 => s_oil_space1(18),
      O => \i1_carry__0_i_1_n_0\
    );
\i1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space1(15),
      I1 => s_oil_space1(16),
      O => \i1_carry__0_i_2_n_0\
    );
\i1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space1(13),
      I1 => s_oil_space1(14),
      O => \i1_carry__0_i_3_n_0\
    );
\i1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space1(11),
      I1 => s_oil_space1(12),
      O => \i1_carry__0_i_4_n_0\
    );
\i1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i1_carry__0_n_0\,
      CO(3) => \i1_carry__1_n_0\,
      CO(2) => \i1_carry__1_n_1\,
      CO(1) => \i1_carry__1_n_2\,
      CO(0) => \i1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_i1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i1_carry__1_i_1_n_0\,
      S(2) => \i1_carry__1_i_2_n_0\,
      S(1) => \i1_carry__1_i_3_n_0\,
      S(0) => \i1_carry__1_i_4_n_0\
    );
\i1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space1(25),
      I1 => s_oil_space1(26),
      O => \i1_carry__1_i_1_n_0\
    );
\i1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space1(23),
      I1 => s_oil_space1(24),
      O => \i1_carry__1_i_2_n_0\
    );
\i1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space1(21),
      I1 => s_oil_space1(22),
      O => \i1_carry__1_i_3_n_0\
    );
\i1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space1(19),
      I1 => s_oil_space1(20),
      O => \i1_carry__1_i_4_n_0\
    );
\i1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \i1_carry__1_n_0\,
      CO(3) => \i1_carry__2_n_0\,
      CO(2) => \i1_carry__2_n_1\,
      CO(1) => \i1_carry__2_n_2\,
      CO(0) => \i1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \k_reg_n_0_[31]\,
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_i1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i1_carry__2_i_1_n_0\,
      S(2) => \i1_carry__2_i_2_n_0\,
      S(1) => \i1_carry__2_i_3_n_0\,
      S(0) => \i1_carry__2_i_4_n_0\
    );
\i1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \k_reg_n_0_[31]\,
      I1 => \k_reg_n_0_[30]\,
      O => \i1_carry__2_i_1_n_0\
    );
\i1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \k_reg_n_0_[29]\,
      I1 => s_oil_space1(31),
      O => \i1_carry__2_i_2_n_0\
    );
\i1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space1(29),
      I1 => s_oil_space1(30),
      O => \i1_carry__2_i_3_n_0\
    );
\i1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space1(27),
      I1 => s_oil_space1(28),
      O => \i1_carry__2_i_4_n_0\
    );
i1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_oil_space1(3),
      I1 => s_oil_space1(4),
      O => i1_carry_i_1_n_0
    );
i1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space1(9),
      I1 => s_oil_space1(10),
      O => i1_carry_i_2_n_0
    );
i1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space1(7),
      I1 => s_oil_space1(8),
      O => i1_carry_i_3_n_0
    );
i1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space1(6),
      I1 => s_oil_space1(5),
      O => i1_carry_i_4_n_0
    );
i1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_oil_space1(4),
      I1 => s_oil_space1(3),
      O => i1_carry_i_5_n_0
    );
\i[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A3"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => \t_state_reg_n_0_[0]\,
      I2 => \t_state_reg_n_0_[2]\,
      I3 => s_oil_space2(3),
      O => \i[0]_i_1_n_0\
    );
\i[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"880C"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => i0(10),
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[2]\,
      O => \i[10]_i_1_n_0\
    );
\i[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"880C"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => i0(11),
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[2]\,
      O => \i[11]_i_1_n_0\
    );
\i[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"880C"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => i0(12),
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[2]\,
      O => \i[12]_i_1_n_0\
    );
\i[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"880C"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => i0(13),
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[2]\,
      O => \i[13]_i_1_n_0\
    );
\i[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"880C"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => i0(14),
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[2]\,
      O => \i[14]_i_1_n_0\
    );
\i[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"880C"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => i0(15),
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[2]\,
      O => \i[15]_i_1_n_0\
    );
\i[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"880C"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => i0(16),
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[2]\,
      O => \i[16]_i_1_n_0\
    );
\i[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"880C"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => i0(17),
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[2]\,
      O => \i[17]_i_1_n_0\
    );
\i[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"880C"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => i0(18),
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[2]\,
      O => \i[18]_i_1_n_0\
    );
\i[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"880C"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => i0(19),
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[2]\,
      O => \i[19]_i_1_n_0\
    );
\i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"880C"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => i0(1),
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[2]\,
      O => \i[1]_i_1_n_0\
    );
\i[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"880C"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => i0(20),
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[2]\,
      O => \i[20]_i_1_n_0\
    );
\i[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"880C"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => i0(21),
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[2]\,
      O => \i[21]_i_1_n_0\
    );
\i[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"880C"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => i0(22),
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[2]\,
      O => \i[22]_i_1_n_0\
    );
\i[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"880C"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => i0(23),
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[2]\,
      O => \i[23]_i_1_n_0\
    );
\i[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"880C"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => i0(24),
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[2]\,
      O => \i[24]_i_1_n_0\
    );
\i[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"880C"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => i0(25),
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[2]\,
      O => \i[25]_i_1_n_0\
    );
\i[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"880C"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => i0(26),
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[2]\,
      O => \i[26]_i_1_n_0\
    );
\i[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"880C"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => i0(27),
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[2]\,
      O => \i[27]_i_1_n_0\
    );
\i[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"880C"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => i0(28),
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[2]\,
      O => \i[28]_i_1_n_0\
    );
\i[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"880C"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => i0(29),
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[2]\,
      O => \i[29]_i_1_n_0\
    );
\i[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"880C"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => i0(2),
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[2]\,
      O => \i[2]_i_1_n_0\
    );
\i[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"880C"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => i0(30),
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[2]\,
      O => \i[30]_i_1_n_0\
    );
\i[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"880C"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => i0(31),
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[2]\,
      O => \i[31]_i_2_n_0\
    );
\i[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA000080"
    )
        port map (
      I0 => \t_state_reg_n_0_[3]\,
      I1 => \i0_inferred__0/i__carry__2_n_0\,
      I2 => \i1_carry__2_n_0\,
      I3 => \t_state_reg_n_0_[0]\,
      I4 => \t_state_reg_n_0_[2]\,
      O => \i[31]_i_3_n_0\
    );
\i[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CD000C000D000C0"
    )
        port map (
      I0 => \s_oil_index[8]_i_4_n_0\,
      I1 => \t_state_reg_n_0_[0]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => \t_state_reg_n_0_[2]\,
      I4 => \i0_inferred__0/i__carry__2_n_0\,
      I5 => \t_state[2]_i_2_n_0\,
      O => \i[31]_i_4_n_0\
    );
\i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"880C"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => i0(3),
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[2]\,
      O => \i[3]_i_1_n_0\
    );
\i[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"880C"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => i0(4),
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[2]\,
      O => \i[4]_i_1_n_0\
    );
\i[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"880C"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => i0(5),
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[2]\,
      O => \i[5]_i_1_n_0\
    );
\i[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"880C"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => i0(6),
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[2]\,
      O => \i[6]_i_1_n_0\
    );
\i[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"880C"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => i0(7),
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[2]\,
      O => \i[7]_i_1_n_0\
    );
\i[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"880C"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => i0(8),
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[2]\,
      O => \i[8]_i_1_n_0\
    );
\i[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"880C"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => i0(9),
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[2]\,
      O => \i[9]_i_1_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space2(18),
      I1 => s_oil_space2(17),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space2(16),
      I1 => s_oil_space2(15),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space2(14),
      I1 => s_oil_space2(13),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space2(12),
      I1 => s_oil_space2(11),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space2(26),
      I1 => s_oil_space2(25),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space2(24),
      I1 => s_oil_space2(23),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space2(22),
      I1 => s_oil_space2(21),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space2(20),
      I1 => s_oil_space2(19),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i_reg_n_0_[31]\,
      I1 => \i_reg_n_0_[30]\,
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i_reg_n_0_[29]\,
      I1 => s_oil_space2(31),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space2(30),
      I1 => s_oil_space2(29),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space2(28),
      I1 => s_oil_space2(27),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_oil_space2(3),
      I1 => s_oil_space2(4),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_ctr(5),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space2(10),
      I1 => s_oil_space2(9),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space2(8),
      I1 => s_oil_space2(7),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space2(6),
      I1 => s_oil_space2(5),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_oil_space2(4),
      I1 => s_oil_space2(3),
      O => \i__carry_i_5_n_0\
    );
\i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => i,
      D => \i[0]_i_1_n_0\,
      Q => s_oil_space2(3),
      R => rst
    );
\i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => i,
      D => \i[10]_i_1_n_0\,
      Q => s_oil_space2(13),
      R => rst
    );
\i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => i,
      D => \i[11]_i_1_n_0\,
      Q => s_oil_space2(14),
      R => rst
    );
\i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => i,
      D => \i[12]_i_1_n_0\,
      Q => s_oil_space2(15),
      R => rst
    );
\i_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[8]_i_2_n_0\,
      CO(3) => \i_reg[12]_i_2_n_0\,
      CO(2) => \i_reg[12]_i_2_n_1\,
      CO(1) => \i_reg[12]_i_2_n_2\,
      CO(0) => \i_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => i0(12 downto 9),
      S(3 downto 0) => s_oil_space2(15 downto 12)
    );
\i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => i,
      D => \i[13]_i_1_n_0\,
      Q => s_oil_space2(16),
      R => rst
    );
\i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => i,
      D => \i[14]_i_1_n_0\,
      Q => s_oil_space2(17),
      R => rst
    );
\i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => i,
      D => \i[15]_i_1_n_0\,
      Q => s_oil_space2(18),
      R => rst
    );
\i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => i,
      D => \i[16]_i_1_n_0\,
      Q => s_oil_space2(19),
      R => rst
    );
\i_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[12]_i_2_n_0\,
      CO(3) => \i_reg[16]_i_2_n_0\,
      CO(2) => \i_reg[16]_i_2_n_1\,
      CO(1) => \i_reg[16]_i_2_n_2\,
      CO(0) => \i_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => i0(16 downto 13),
      S(3 downto 0) => s_oil_space2(19 downto 16)
    );
\i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => i,
      D => \i[17]_i_1_n_0\,
      Q => s_oil_space2(20),
      R => rst
    );
\i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => i,
      D => \i[18]_i_1_n_0\,
      Q => s_oil_space2(21),
      R => rst
    );
\i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => i,
      D => \i[19]_i_1_n_0\,
      Q => s_oil_space2(22),
      R => rst
    );
\i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => i,
      D => \i[1]_i_1_n_0\,
      Q => s_oil_space2(4),
      R => rst
    );
\i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => i,
      D => \i[20]_i_1_n_0\,
      Q => s_oil_space2(23),
      R => rst
    );
\i_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[16]_i_2_n_0\,
      CO(3) => \i_reg[20]_i_2_n_0\,
      CO(2) => \i_reg[20]_i_2_n_1\,
      CO(1) => \i_reg[20]_i_2_n_2\,
      CO(0) => \i_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => i0(20 downto 17),
      S(3 downto 0) => s_oil_space2(23 downto 20)
    );
\i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => i,
      D => \i[21]_i_1_n_0\,
      Q => s_oil_space2(24),
      R => rst
    );
\i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => i,
      D => \i[22]_i_1_n_0\,
      Q => s_oil_space2(25),
      R => rst
    );
\i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => i,
      D => \i[23]_i_1_n_0\,
      Q => s_oil_space2(26),
      R => rst
    );
\i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => i,
      D => \i[24]_i_1_n_0\,
      Q => s_oil_space2(27),
      R => rst
    );
\i_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[20]_i_2_n_0\,
      CO(3) => \i_reg[24]_i_2_n_0\,
      CO(2) => \i_reg[24]_i_2_n_1\,
      CO(1) => \i_reg[24]_i_2_n_2\,
      CO(0) => \i_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => i0(24 downto 21),
      S(3 downto 0) => s_oil_space2(27 downto 24)
    );
\i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => i,
      D => \i[25]_i_1_n_0\,
      Q => s_oil_space2(28),
      R => rst
    );
\i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => i,
      D => \i[26]_i_1_n_0\,
      Q => s_oil_space2(29),
      R => rst
    );
\i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => i,
      D => \i[27]_i_1_n_0\,
      Q => s_oil_space2(30),
      R => rst
    );
\i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => i,
      D => \i[28]_i_1_n_0\,
      Q => s_oil_space2(31),
      R => rst
    );
\i_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[24]_i_2_n_0\,
      CO(3) => \i_reg[28]_i_2_n_0\,
      CO(2) => \i_reg[28]_i_2_n_1\,
      CO(1) => \i_reg[28]_i_2_n_2\,
      CO(0) => \i_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => i0(28 downto 25),
      S(3 downto 0) => s_oil_space2(31 downto 28)
    );
\i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => i,
      D => \i[29]_i_1_n_0\,
      Q => \i_reg_n_0_[29]\,
      R => rst
    );
\i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => i,
      D => \i[2]_i_1_n_0\,
      Q => s_oil_space2(5),
      R => rst
    );
\i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => i,
      D => \i[30]_i_1_n_0\,
      Q => \i_reg_n_0_[30]\,
      R => rst
    );
\i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => i,
      D => \i[31]_i_2_n_0\,
      Q => \i_reg_n_0_[31]\,
      R => rst
    );
\i_reg[31]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \i[31]_i_3_n_0\,
      I1 => \i[31]_i_4_n_0\,
      O => i,
      S => \t_state_reg_n_0_[1]\
    );
\i_reg[31]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_i_reg[31]_i_5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \i_reg[31]_i_5_n_2\,
      CO(0) => \i_reg[31]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_i_reg[31]_i_5_O_UNCONNECTED\(3),
      O(2 downto 0) => i0(31 downto 29),
      S(3) => '0',
      S(2) => \i_reg_n_0_[31]\,
      S(1) => \i_reg_n_0_[30]\,
      S(0) => \i_reg_n_0_[29]\
    );
\i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => i,
      D => \i[3]_i_1_n_0\,
      Q => s_oil_space2(6),
      R => rst
    );
\i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => i,
      D => \i[4]_i_1_n_0\,
      Q => s_oil_space2(7),
      R => rst
    );
\i_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i_reg[4]_i_2_n_0\,
      CO(2) => \i_reg[4]_i_2_n_1\,
      CO(1) => \i_reg[4]_i_2_n_2\,
      CO(0) => \i_reg[4]_i_2_n_3\,
      CYINIT => s_oil_space2(3),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => i0(4 downto 1),
      S(3 downto 0) => s_oil_space2(7 downto 4)
    );
\i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => i,
      D => \i[5]_i_1_n_0\,
      Q => s_oil_space2(8),
      R => rst
    );
\i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => i,
      D => \i[6]_i_1_n_0\,
      Q => s_oil_space2(9),
      R => rst
    );
\i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => i,
      D => \i[7]_i_1_n_0\,
      Q => s_oil_space2(10),
      R => rst
    );
\i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => i,
      D => \i[8]_i_1_n_0\,
      Q => s_oil_space2(11),
      R => rst
    );
\i_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[4]_i_2_n_0\,
      CO(3) => \i_reg[8]_i_2_n_0\,
      CO(2) => \i_reg[8]_i_2_n_1\,
      CO(1) => \i_reg[8]_i_2_n_2\,
      CO(0) => \i_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => i0(8 downto 5),
      S(3 downto 0) => s_oil_space2(11 downto 8)
    );
\i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => i,
      D => \i[9]_i_1_n_0\,
      Q => s_oil_space2(12),
      R => rst
    );
index0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => index0_carry_n_0,
      CO(2) => index0_carry_n_1,
      CO(1) => index0_carry_n_2,
      CO(0) => index0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => index(2),
      DI(0) => '0',
      O(3 downto 0) => index0(4 downto 1),
      S(3 downto 2) => index(4 downto 3),
      S(1) => index0_carry_i_1_n_0,
      S(0) => index(1)
    );
\index0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => index0_carry_n_0,
      CO(3) => \index0_carry__0_n_0\,
      CO(2) => \index0_carry__0_n_1\,
      CO(1) => \index0_carry__0_n_2\,
      CO(0) => \index0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => index0(8 downto 5),
      S(3 downto 0) => index(8 downto 5)
    );
\index0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \index0_carry__0_n_0\,
      CO(3) => \index0_carry__1_n_0\,
      CO(2) => \index0_carry__1_n_1\,
      CO(1) => \index0_carry__1_n_2\,
      CO(0) => \index0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => index0(12 downto 9),
      S(3 downto 0) => index(12 downto 9)
    );
\index0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \index0_carry__1_n_0\,
      CO(3) => \index0_carry__2_n_0\,
      CO(2) => \index0_carry__2_n_1\,
      CO(1) => \index0_carry__2_n_2\,
      CO(0) => \index0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => index0(16 downto 13),
      S(3 downto 0) => index(16 downto 13)
    );
\index0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \index0_carry__2_n_0\,
      CO(3) => \index0_carry__3_n_0\,
      CO(2) => \index0_carry__3_n_1\,
      CO(1) => \index0_carry__3_n_2\,
      CO(0) => \index0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => index0(20 downto 17),
      S(3 downto 0) => index(20 downto 17)
    );
\index0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \index0_carry__3_n_0\,
      CO(3) => \index0_carry__4_n_0\,
      CO(2) => \index0_carry__4_n_1\,
      CO(1) => \index0_carry__4_n_2\,
      CO(0) => \index0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => index0(24 downto 21),
      S(3 downto 0) => index(24 downto 21)
    );
\index0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \index0_carry__4_n_0\,
      CO(3) => \index0_carry__5_n_0\,
      CO(2) => \index0_carry__5_n_1\,
      CO(1) => \index0_carry__5_n_2\,
      CO(0) => \index0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => index0(28 downto 25),
      S(3 downto 0) => index(28 downto 25)
    );
\index0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \index0_carry__5_n_0\,
      CO(3 downto 1) => \NLW_index0_carry__6_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \index0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_index0_carry__6_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => index0(30 downto 29),
      S(3 downto 2) => B"00",
      S(1 downto 0) => index(30 downto 29)
    );
index0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => index(2),
      O => index0_carry_i_1_n_0
    );
\index[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => index0(10),
      O => p_1_in(10)
    );
\index[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => index0(11),
      O => p_1_in(11)
    );
\index[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => index0(12),
      O => p_1_in(12)
    );
\index[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => index0(13),
      O => p_1_in(13)
    );
\index[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => index0(14),
      O => p_1_in(14)
    );
\index[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => index0(15),
      O => p_1_in(15)
    );
\index[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => index0(16),
      O => p_1_in(16)
    );
\index[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => index0(17),
      O => p_1_in(17)
    );
\index[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => index0(18),
      O => p_1_in(18)
    );
\index[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => index0(19),
      O => p_1_in(19)
    );
\index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => index0(1),
      O => p_1_in(1)
    );
\index[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => index0(20),
      O => p_1_in(20)
    );
\index[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => index0(21),
      O => p_1_in(21)
    );
\index[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => index0(22),
      O => p_1_in(22)
    );
\index[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => index0(23),
      O => p_1_in(23)
    );
\index[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => index0(24),
      O => p_1_in(24)
    );
\index[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => index0(25),
      O => p_1_in(25)
    );
\index[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => index0(26),
      O => p_1_in(26)
    );
\index[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => index0(27),
      O => p_1_in(27)
    );
\index[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => index0(28),
      O => p_1_in(28)
    );
\index[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => index0(29),
      O => p_1_in(29)
    );
\index[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => index0(2),
      O => p_1_in(2)
    );
\index[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000D0"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => i_trng_valid,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[3]\,
      I4 => \t_state_reg_n_0_[2]\,
      O => \index[30]_i_1_n_0\
    );
\index[30]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => index0(30),
      O => p_1_in(30)
    );
\index[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => index0(3),
      O => p_1_in(3)
    );
\index[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => index0(4),
      O => p_1_in(4)
    );
\index[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => index0(5),
      O => p_1_in(5)
    );
\index[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => index0(6),
      O => p_1_in(6)
    );
\index[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => index0(7),
      O => p_1_in(7)
    );
\index[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => index0(8),
      O => p_1_in(8)
    );
\index[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => index0(9),
      O => p_1_in(9)
    );
\index_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[30]_i_1_n_0\,
      D => p_1_in(10),
      Q => index(10),
      R => rst
    );
\index_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[30]_i_1_n_0\,
      D => p_1_in(11),
      Q => index(11),
      R => rst
    );
\index_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[30]_i_1_n_0\,
      D => p_1_in(12),
      Q => index(12),
      R => rst
    );
\index_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[30]_i_1_n_0\,
      D => p_1_in(13),
      Q => index(13),
      R => rst
    );
\index_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[30]_i_1_n_0\,
      D => p_1_in(14),
      Q => index(14),
      R => rst
    );
\index_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[30]_i_1_n_0\,
      D => p_1_in(15),
      Q => index(15),
      R => rst
    );
\index_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[30]_i_1_n_0\,
      D => p_1_in(16),
      Q => index(16),
      R => rst
    );
\index_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[30]_i_1_n_0\,
      D => p_1_in(17),
      Q => index(17),
      R => rst
    );
\index_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[30]_i_1_n_0\,
      D => p_1_in(18),
      Q => index(18),
      R => rst
    );
\index_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[30]_i_1_n_0\,
      D => p_1_in(19),
      Q => index(19),
      R => rst
    );
\index_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[30]_i_1_n_0\,
      D => p_1_in(1),
      Q => index(1),
      R => rst
    );
\index_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[30]_i_1_n_0\,
      D => p_1_in(20),
      Q => index(20),
      R => rst
    );
\index_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[30]_i_1_n_0\,
      D => p_1_in(21),
      Q => index(21),
      R => rst
    );
\index_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[30]_i_1_n_0\,
      D => p_1_in(22),
      Q => index(22),
      R => rst
    );
\index_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[30]_i_1_n_0\,
      D => p_1_in(23),
      Q => index(23),
      R => rst
    );
\index_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[30]_i_1_n_0\,
      D => p_1_in(24),
      Q => index(24),
      R => rst
    );
\index_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[30]_i_1_n_0\,
      D => p_1_in(25),
      Q => index(25),
      R => rst
    );
\index_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[30]_i_1_n_0\,
      D => p_1_in(26),
      Q => index(26),
      R => rst
    );
\index_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[30]_i_1_n_0\,
      D => p_1_in(27),
      Q => index(27),
      R => rst
    );
\index_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[30]_i_1_n_0\,
      D => p_1_in(28),
      Q => index(28),
      R => rst
    );
\index_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[30]_i_1_n_0\,
      D => p_1_in(29),
      Q => index(29),
      R => rst
    );
\index_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[30]_i_1_n_0\,
      D => p_1_in(2),
      Q => index(2),
      R => rst
    );
\index_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[30]_i_1_n_0\,
      D => p_1_in(30),
      Q => index(30),
      R => rst
    );
\index_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[30]_i_1_n_0\,
      D => p_1_in(3),
      Q => index(3),
      R => rst
    );
\index_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[30]_i_1_n_0\,
      D => p_1_in(4),
      Q => index(4),
      R => rst
    );
\index_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[30]_i_1_n_0\,
      D => p_1_in(5),
      Q => index(5),
      R => rst
    );
\index_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[30]_i_1_n_0\,
      D => p_1_in(6),
      Q => index(6),
      R => rst
    );
\index_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[30]_i_1_n_0\,
      D => p_1_in(7),
      Q => index(7),
      R => rst
    );
\index_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[30]_i_1_n_0\,
      D => p_1_in(8),
      Q => index(8),
      R => rst
    );
\index_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[30]_i_1_n_0\,
      D => p_1_in(9),
      Q => index(9),
      R => rst
    );
\k[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => s_oil_space1(3),
      I1 => \i1_carry__2_n_0\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \k[0]_i_1_n_0\
    );
\k[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => k0(10),
      I1 => \i1_carry__2_n_0\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \k[10]_i_1_n_0\
    );
\k[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => k0(11),
      I1 => \i1_carry__2_n_0\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \k[11]_i_1_n_0\
    );
\k[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => k0(12),
      I1 => \i1_carry__2_n_0\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \k[12]_i_1_n_0\
    );
\k[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => k0(13),
      I1 => \i1_carry__2_n_0\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \k[13]_i_1_n_0\
    );
\k[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => k0(14),
      I1 => \i1_carry__2_n_0\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \k[14]_i_1_n_0\
    );
\k[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => k0(15),
      I1 => \i1_carry__2_n_0\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \k[15]_i_1_n_0\
    );
\k[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => k0(16),
      I1 => \i1_carry__2_n_0\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \k[16]_i_1_n_0\
    );
\k[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => k0(17),
      I1 => \i1_carry__2_n_0\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \k[17]_i_1_n_0\
    );
\k[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => k0(18),
      I1 => \i1_carry__2_n_0\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \k[18]_i_1_n_0\
    );
\k[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => k0(19),
      I1 => \i1_carry__2_n_0\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \k[19]_i_1_n_0\
    );
\k[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => k0(1),
      I1 => \i1_carry__2_n_0\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \k[1]_i_1_n_0\
    );
\k[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => k0(20),
      I1 => \i1_carry__2_n_0\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \k[20]_i_1_n_0\
    );
\k[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => k0(21),
      I1 => \i1_carry__2_n_0\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \k[21]_i_1_n_0\
    );
\k[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => k0(22),
      I1 => \i1_carry__2_n_0\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \k[22]_i_1_n_0\
    );
\k[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => k0(23),
      I1 => \i1_carry__2_n_0\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \k[23]_i_1_n_0\
    );
\k[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => k0(24),
      I1 => \i1_carry__2_n_0\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \k[24]_i_1_n_0\
    );
\k[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => k0(25),
      I1 => \i1_carry__2_n_0\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \k[25]_i_1_n_0\
    );
\k[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => k0(26),
      I1 => \i1_carry__2_n_0\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \k[26]_i_1_n_0\
    );
\k[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => k0(27),
      I1 => \i1_carry__2_n_0\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \k[27]_i_1_n_0\
    );
\k[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => k0(28),
      I1 => \i1_carry__2_n_0\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \k[28]_i_1_n_0\
    );
\k[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => k0(29),
      I1 => \i1_carry__2_n_0\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \k[29]_i_1_n_0\
    );
\k[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => k0(2),
      I1 => \i1_carry__2_n_0\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \k[2]_i_1_n_0\
    );
\k[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => k0(30),
      I1 => \i1_carry__2_n_0\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \k[30]_i_1_n_0\
    );
\k[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4004"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => \t_state_reg_n_0_[3]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[2]\,
      O => \k[31]_i_1_n_0\
    );
\k[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => k0(31),
      I1 => \i1_carry__2_n_0\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \k[31]_i_2_n_0\
    );
\k[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => k0(3),
      I1 => \i1_carry__2_n_0\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \k[3]_i_1_n_0\
    );
\k[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => k0(4),
      I1 => \i1_carry__2_n_0\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \k[4]_i_1_n_0\
    );
\k[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => k0(5),
      I1 => \i1_carry__2_n_0\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \k[5]_i_1_n_0\
    );
\k[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => k0(6),
      I1 => \i1_carry__2_n_0\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \k[6]_i_1_n_0\
    );
\k[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => k0(7),
      I1 => \i1_carry__2_n_0\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \k[7]_i_1_n_0\
    );
\k[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => k0(8),
      I1 => \i1_carry__2_n_0\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \k[8]_i_1_n_0\
    );
\k[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => k0(9),
      I1 => \i1_carry__2_n_0\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \k[9]_i_1_n_0\
    );
\k_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \k[31]_i_1_n_0\,
      D => \k[0]_i_1_n_0\,
      Q => s_oil_space1(3),
      R => rst
    );
\k_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \k[31]_i_1_n_0\,
      D => \k[10]_i_1_n_0\,
      Q => s_oil_space1(13),
      R => rst
    );
\k_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \k[31]_i_1_n_0\,
      D => \k[11]_i_1_n_0\,
      Q => s_oil_space1(14),
      R => rst
    );
\k_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \k[31]_i_1_n_0\,
      D => \k[12]_i_1_n_0\,
      Q => s_oil_space1(15),
      R => rst
    );
\k_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \k_reg[8]_i_2_n_0\,
      CO(3) => \k_reg[12]_i_2_n_0\,
      CO(2) => \k_reg[12]_i_2_n_1\,
      CO(1) => \k_reg[12]_i_2_n_2\,
      CO(0) => \k_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => k0(12 downto 9),
      S(3 downto 0) => s_oil_space1(15 downto 12)
    );
\k_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \k[31]_i_1_n_0\,
      D => \k[13]_i_1_n_0\,
      Q => s_oil_space1(16),
      R => rst
    );
\k_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \k[31]_i_1_n_0\,
      D => \k[14]_i_1_n_0\,
      Q => s_oil_space1(17),
      R => rst
    );
\k_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \k[31]_i_1_n_0\,
      D => \k[15]_i_1_n_0\,
      Q => s_oil_space1(18),
      R => rst
    );
\k_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \k[31]_i_1_n_0\,
      D => \k[16]_i_1_n_0\,
      Q => s_oil_space1(19),
      R => rst
    );
\k_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \k_reg[12]_i_2_n_0\,
      CO(3) => \k_reg[16]_i_2_n_0\,
      CO(2) => \k_reg[16]_i_2_n_1\,
      CO(1) => \k_reg[16]_i_2_n_2\,
      CO(0) => \k_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => k0(16 downto 13),
      S(3 downto 0) => s_oil_space1(19 downto 16)
    );
\k_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \k[31]_i_1_n_0\,
      D => \k[17]_i_1_n_0\,
      Q => s_oil_space1(20),
      R => rst
    );
\k_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \k[31]_i_1_n_0\,
      D => \k[18]_i_1_n_0\,
      Q => s_oil_space1(21),
      R => rst
    );
\k_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \k[31]_i_1_n_0\,
      D => \k[19]_i_1_n_0\,
      Q => s_oil_space1(22),
      R => rst
    );
\k_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \k[31]_i_1_n_0\,
      D => \k[1]_i_1_n_0\,
      Q => s_oil_space1(4),
      R => rst
    );
\k_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \k[31]_i_1_n_0\,
      D => \k[20]_i_1_n_0\,
      Q => s_oil_space1(23),
      R => rst
    );
\k_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \k_reg[16]_i_2_n_0\,
      CO(3) => \k_reg[20]_i_2_n_0\,
      CO(2) => \k_reg[20]_i_2_n_1\,
      CO(1) => \k_reg[20]_i_2_n_2\,
      CO(0) => \k_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => k0(20 downto 17),
      S(3 downto 0) => s_oil_space1(23 downto 20)
    );
\k_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \k[31]_i_1_n_0\,
      D => \k[21]_i_1_n_0\,
      Q => s_oil_space1(24),
      R => rst
    );
\k_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \k[31]_i_1_n_0\,
      D => \k[22]_i_1_n_0\,
      Q => s_oil_space1(25),
      R => rst
    );
\k_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \k[31]_i_1_n_0\,
      D => \k[23]_i_1_n_0\,
      Q => s_oil_space1(26),
      R => rst
    );
\k_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \k[31]_i_1_n_0\,
      D => \k[24]_i_1_n_0\,
      Q => s_oil_space1(27),
      R => rst
    );
\k_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \k_reg[20]_i_2_n_0\,
      CO(3) => \k_reg[24]_i_2_n_0\,
      CO(2) => \k_reg[24]_i_2_n_1\,
      CO(1) => \k_reg[24]_i_2_n_2\,
      CO(0) => \k_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => k0(24 downto 21),
      S(3 downto 0) => s_oil_space1(27 downto 24)
    );
\k_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \k[31]_i_1_n_0\,
      D => \k[25]_i_1_n_0\,
      Q => s_oil_space1(28),
      R => rst
    );
\k_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \k[31]_i_1_n_0\,
      D => \k[26]_i_1_n_0\,
      Q => s_oil_space1(29),
      R => rst
    );
\k_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \k[31]_i_1_n_0\,
      D => \k[27]_i_1_n_0\,
      Q => s_oil_space1(30),
      R => rst
    );
\k_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \k[31]_i_1_n_0\,
      D => \k[28]_i_1_n_0\,
      Q => s_oil_space1(31),
      R => rst
    );
\k_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \k_reg[24]_i_2_n_0\,
      CO(3) => \k_reg[28]_i_2_n_0\,
      CO(2) => \k_reg[28]_i_2_n_1\,
      CO(1) => \k_reg[28]_i_2_n_2\,
      CO(0) => \k_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => k0(28 downto 25),
      S(3 downto 0) => s_oil_space1(31 downto 28)
    );
\k_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \k[31]_i_1_n_0\,
      D => \k[29]_i_1_n_0\,
      Q => \k_reg_n_0_[29]\,
      R => rst
    );
\k_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \k[31]_i_1_n_0\,
      D => \k[2]_i_1_n_0\,
      Q => s_oil_space1(5),
      R => rst
    );
\k_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \k[31]_i_1_n_0\,
      D => \k[30]_i_1_n_0\,
      Q => \k_reg_n_0_[30]\,
      R => rst
    );
\k_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \k[31]_i_1_n_0\,
      D => \k[31]_i_2_n_0\,
      Q => \k_reg_n_0_[31]\,
      R => rst
    );
\k_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \k_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_k_reg[31]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \k_reg[31]_i_3_n_2\,
      CO(0) => \k_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_k_reg[31]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => k0(31 downto 29),
      S(3) => '0',
      S(2) => \k_reg_n_0_[31]\,
      S(1) => \k_reg_n_0_[30]\,
      S(0) => \k_reg_n_0_[29]\
    );
\k_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \k[31]_i_1_n_0\,
      D => \k[3]_i_1_n_0\,
      Q => s_oil_space1(6),
      R => rst
    );
\k_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \k[31]_i_1_n_0\,
      D => \k[4]_i_1_n_0\,
      Q => s_oil_space1(7),
      R => rst
    );
\k_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \k_reg[4]_i_2_n_0\,
      CO(2) => \k_reg[4]_i_2_n_1\,
      CO(1) => \k_reg[4]_i_2_n_2\,
      CO(0) => \k_reg[4]_i_2_n_3\,
      CYINIT => s_oil_space1(3),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => k0(4 downto 1),
      S(3 downto 0) => s_oil_space1(7 downto 4)
    );
\k_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \k[31]_i_1_n_0\,
      D => \k[5]_i_1_n_0\,
      Q => s_oil_space1(8),
      R => rst
    );
\k_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \k[31]_i_1_n_0\,
      D => \k[6]_i_1_n_0\,
      Q => s_oil_space1(9),
      R => rst
    );
\k_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \k[31]_i_1_n_0\,
      D => \k[7]_i_1_n_0\,
      Q => s_oil_space1(10),
      R => rst
    );
\k_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \k[31]_i_1_n_0\,
      D => \k[8]_i_1_n_0\,
      Q => s_oil_space1(11),
      R => rst
    );
\k_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \k_reg[4]_i_2_n_0\,
      CO(3) => \k_reg[8]_i_2_n_0\,
      CO(2) => \k_reg[8]_i_2_n_1\,
      CO(1) => \k_reg[8]_i_2_n_2\,
      CO(0) => \k_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => k0(8 downto 5),
      S(3 downto 0) => s_oil_space1(11 downto 8)
    );
\k_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \k[31]_i_1_n_0\,
      D => \k[9]_i_1_n_0\,
      Q => s_oil_space1(12),
      R => rst
    );
mode_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => i_mode,
      I1 => i_enable,
      I2 => s_oil_adr_0,
      I3 => mode,
      O => mode_i_1_n_0
    );
mode_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => mode_i_1_n_0,
      Q => mode,
      R => rst
    );
o_controla_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => \t_state_reg_n_0_[2]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[3]\,
      O => s_oil_adr_0
    );
o_controla_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_0,
      D => i_enable,
      Q => o_controla,
      R => rst
    );
o_controlb_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_0,
      D => i_enable,
      Q => o_controlb,
      R => rst
    );
o_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0080"
    )
        port map (
      I0 => \t_state_reg_n_0_[3]\,
      I1 => \t_state_reg_n_0_[0]\,
      I2 => \t_state_reg_n_0_[2]\,
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \^o_done\,
      O => o_done_i_1_n_0
    );
o_done_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => o_done_i_1_n_0,
      Q => \^o_done\,
      R => rst
    );
o_mema_addr0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => o_mema_addr0_carry_n_0,
      CO(2) => o_mema_addr0_carry_n_1,
      CO(1) => o_mema_addr0_carry_n_2,
      CO(0) => o_mema_addr0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => index(5),
      DI(0) => '0',
      O(3 downto 0) => data0(7 downto 4),
      S(3 downto 2) => index(7 downto 6),
      S(1) => o_mema_addr0_carry_i_1_n_0,
      S(0) => index(4)
    );
\o_mema_addr0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => o_mema_addr0_carry_n_0,
      CO(3) => \o_mema_addr0_carry__0_n_0\,
      CO(2) => \o_mema_addr0_carry__0_n_1\,
      CO(1) => \o_mema_addr0_carry__0_n_2\,
      CO(0) => \o_mema_addr0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(11 downto 8),
      S(3 downto 0) => index(11 downto 8)
    );
\o_mema_addr0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_mema_addr0_carry__0_n_0\,
      CO(3) => \o_mema_addr0_carry__1_n_0\,
      CO(2) => \o_mema_addr0_carry__1_n_1\,
      CO(1) => \o_mema_addr0_carry__1_n_2\,
      CO(0) => \o_mema_addr0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(15 downto 12),
      S(3 downto 0) => index(15 downto 12)
    );
\o_mema_addr0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_mema_addr0_carry__1_n_0\,
      CO(3) => \o_mema_addr0_carry__2_n_0\,
      CO(2) => \o_mema_addr0_carry__2_n_1\,
      CO(1) => \o_mema_addr0_carry__2_n_2\,
      CO(0) => \o_mema_addr0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(19 downto 16),
      S(3 downto 0) => index(19 downto 16)
    );
\o_mema_addr0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_mema_addr0_carry__2_n_0\,
      CO(3) => \o_mema_addr0_carry__3_n_0\,
      CO(2) => \o_mema_addr0_carry__3_n_1\,
      CO(1) => \o_mema_addr0_carry__3_n_2\,
      CO(0) => \o_mema_addr0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(23 downto 20),
      S(3 downto 0) => index(23 downto 20)
    );
\o_mema_addr0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_mema_addr0_carry__3_n_0\,
      CO(3) => \o_mema_addr0_carry__4_n_0\,
      CO(2) => \o_mema_addr0_carry__4_n_1\,
      CO(1) => \o_mema_addr0_carry__4_n_2\,
      CO(0) => \o_mema_addr0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(27 downto 24),
      S(3 downto 0) => index(27 downto 24)
    );
\o_mema_addr0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_mema_addr0_carry__4_n_0\,
      CO(3 downto 2) => \NLW_o_mema_addr0_carry__5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \o_mema_addr0_carry__5_n_2\,
      CO(0) => \o_mema_addr0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_o_mema_addr0_carry__5_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(30 downto 28),
      S(3) => '0',
      S(2 downto 0) => index(30 downto 28)
    );
o_mema_addr0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => index(5),
      O => o_mema_addr0_carry_i_1_n_0
    );
\o_mema_addr0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \o_mema_addr0_inferred__0/i__carry_n_0\,
      CO(2) => \o_mema_addr0_inferred__0/i__carry_n_1\,
      CO(1) => \o_mema_addr0_inferred__0/i__carry_n_2\,
      CO(0) => \o_mema_addr0_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => s_ctr(5),
      DI(0) => '0',
      O(3 downto 0) => data1(7 downto 4),
      S(3 downto 2) => s_ctr(7 downto 6),
      S(1) => \i__carry_i_1__0_n_0\,
      S(0) => s_ctr(4)
    );
\o_mema_addr0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_mema_addr0_inferred__0/i__carry_n_0\,
      CO(3) => \o_mema_addr0_inferred__0/i__carry__0_n_0\,
      CO(2) => \o_mema_addr0_inferred__0/i__carry__0_n_1\,
      CO(1) => \o_mema_addr0_inferred__0/i__carry__0_n_2\,
      CO(0) => \o_mema_addr0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data1(11 downto 8),
      S(3 downto 0) => s_ctr(11 downto 8)
    );
\o_mema_addr0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_mema_addr0_inferred__0/i__carry__0_n_0\,
      CO(3) => \o_mema_addr0_inferred__0/i__carry__1_n_0\,
      CO(2) => \o_mema_addr0_inferred__0/i__carry__1_n_1\,
      CO(1) => \o_mema_addr0_inferred__0/i__carry__1_n_2\,
      CO(0) => \o_mema_addr0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data1(15 downto 12),
      S(3 downto 0) => s_ctr(15 downto 12)
    );
\o_mema_addr0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_mema_addr0_inferred__0/i__carry__1_n_0\,
      CO(3) => \o_mema_addr0_inferred__0/i__carry__2_n_0\,
      CO(2) => \o_mema_addr0_inferred__0/i__carry__2_n_1\,
      CO(1) => \o_mema_addr0_inferred__0/i__carry__2_n_2\,
      CO(0) => \o_mema_addr0_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data1(19 downto 16),
      S(3 downto 0) => s_ctr(19 downto 16)
    );
\o_mema_addr0_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_mema_addr0_inferred__0/i__carry__2_n_0\,
      CO(3) => \o_mema_addr0_inferred__0/i__carry__3_n_0\,
      CO(2) => \o_mema_addr0_inferred__0/i__carry__3_n_1\,
      CO(1) => \o_mema_addr0_inferred__0/i__carry__3_n_2\,
      CO(0) => \o_mema_addr0_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data1(23 downto 20),
      S(3 downto 0) => s_ctr(23 downto 20)
    );
\o_mema_addr0_inferred__0/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_mema_addr0_inferred__0/i__carry__3_n_0\,
      CO(3) => \o_mema_addr0_inferred__0/i__carry__4_n_0\,
      CO(2) => \o_mema_addr0_inferred__0/i__carry__4_n_1\,
      CO(1) => \o_mema_addr0_inferred__0/i__carry__4_n_2\,
      CO(0) => \o_mema_addr0_inferred__0/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data1(27 downto 24),
      S(3 downto 0) => s_ctr(27 downto 24)
    );
\o_mema_addr0_inferred__0/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_mema_addr0_inferred__0/i__carry__4_n_0\,
      CO(3 downto 2) => \NLW_o_mema_addr0_inferred__0/i__carry__5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \o_mema_addr0_inferred__0/i__carry__5_n_2\,
      CO(0) => \o_mema_addr0_inferred__0/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_o_mema_addr0_inferred__0/i__carry__5_O_UNCONNECTED\(3),
      O(2 downto 0) => data1(30 downto 28),
      S(3) => '0',
      S(2 downto 0) => s_ctr(30 downto 28)
    );
\o_mema_addr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => data2(0),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      O => o_mema_addr_1(0)
    );
\o_mema_addr[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECEFCCC32023000"
    )
        port map (
      I0 => data1(10),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => data2(10),
      I4 => \t_state_reg_n_0_[2]\,
      I5 => data0(10),
      O => o_mema_addr_1(10)
    );
\o_mema_addr[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECEFCCC32023000"
    )
        port map (
      I0 => data1(11),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => data2(11),
      I4 => \t_state_reg_n_0_[2]\,
      I5 => data0(11),
      O => o_mema_addr_1(11)
    );
\o_mema_addr[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_oil_adr(8),
      I1 => \s_oil_index_reg_n_0_[8]\,
      O => \o_mema_addr[11]_i_3_n_0\
    );
\o_mema_addr[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECEFCCC32023000"
    )
        port map (
      I0 => data1(12),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => data2(12),
      I4 => \t_state_reg_n_0_[2]\,
      I5 => data0(12),
      O => o_mema_addr_1(12)
    );
\o_mema_addr[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECEFCCC32023000"
    )
        port map (
      I0 => data1(13),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => data2(13),
      I4 => \t_state_reg_n_0_[2]\,
      I5 => data0(13),
      O => o_mema_addr_1(13)
    );
\o_mema_addr[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECEFCCC32023000"
    )
        port map (
      I0 => data1(14),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => data2(14),
      I4 => \t_state_reg_n_0_[2]\,
      I5 => data0(14),
      O => o_mema_addr_1(14)
    );
\o_mema_addr[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECEFCCC32023000"
    )
        port map (
      I0 => data1(15),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => data2(15),
      I4 => \t_state_reg_n_0_[2]\,
      I5 => data0(15),
      O => o_mema_addr_1(15)
    );
\o_mema_addr[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECEFCCC32023000"
    )
        port map (
      I0 => data1(16),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => data2(16),
      I4 => \t_state_reg_n_0_[2]\,
      I5 => data0(16),
      O => o_mema_addr_1(16)
    );
\o_mema_addr[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECEFCCC32023000"
    )
        port map (
      I0 => data1(17),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => data2(17),
      I4 => \t_state_reg_n_0_[2]\,
      I5 => data0(17),
      O => o_mema_addr_1(17)
    );
\o_mema_addr[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECEFCCC32023000"
    )
        port map (
      I0 => data1(18),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => data2(18),
      I4 => \t_state_reg_n_0_[2]\,
      I5 => data0(18),
      O => o_mema_addr_1(18)
    );
\o_mema_addr[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECEFCCC32023000"
    )
        port map (
      I0 => data1(19),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => data2(19),
      I4 => \t_state_reg_n_0_[2]\,
      I5 => data0(19),
      O => o_mema_addr_1(19)
    );
\o_mema_addr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECEFCCC32023000"
    )
        port map (
      I0 => s_ctr(1),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => data2(1),
      I4 => \t_state_reg_n_0_[2]\,
      I5 => index(1),
      O => o_mema_addr_1(1)
    );
\o_mema_addr[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECEFCCC32023000"
    )
        port map (
      I0 => data1(20),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => data2(20),
      I4 => \t_state_reg_n_0_[2]\,
      I5 => data0(20),
      O => o_mema_addr_1(20)
    );
\o_mema_addr[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECEFCCC32023000"
    )
        port map (
      I0 => data1(21),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => data2(21),
      I4 => \t_state_reg_n_0_[2]\,
      I5 => data0(21),
      O => o_mema_addr_1(21)
    );
\o_mema_addr[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECEFCCC32023000"
    )
        port map (
      I0 => data1(22),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => data2(22),
      I4 => \t_state_reg_n_0_[2]\,
      I5 => data0(22),
      O => o_mema_addr_1(22)
    );
\o_mema_addr[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECEFCCC32023000"
    )
        port map (
      I0 => data1(23),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => data2(23),
      I4 => \t_state_reg_n_0_[2]\,
      I5 => data0(23),
      O => o_mema_addr_1(23)
    );
\o_mema_addr[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECEFCCC32023000"
    )
        port map (
      I0 => data1(24),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => data2(24),
      I4 => \t_state_reg_n_0_[2]\,
      I5 => data0(24),
      O => o_mema_addr_1(24)
    );
\o_mema_addr[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECEFCCC32023000"
    )
        port map (
      I0 => data1(25),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => data2(25),
      I4 => \t_state_reg_n_0_[2]\,
      I5 => data0(25),
      O => o_mema_addr_1(25)
    );
\o_mema_addr[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECEFCCC32023000"
    )
        port map (
      I0 => data1(26),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => data2(26),
      I4 => \t_state_reg_n_0_[2]\,
      I5 => data0(26),
      O => o_mema_addr_1(26)
    );
\o_mema_addr[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECEFCCC32023000"
    )
        port map (
      I0 => data1(27),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => data2(27),
      I4 => \t_state_reg_n_0_[2]\,
      I5 => data0(27),
      O => o_mema_addr_1(27)
    );
\o_mema_addr[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECEFCCC32023000"
    )
        port map (
      I0 => data1(28),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => data2(28),
      I4 => \t_state_reg_n_0_[2]\,
      I5 => data0(28),
      O => o_mema_addr_1(28)
    );
\o_mema_addr[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECEFCCC32023000"
    )
        port map (
      I0 => data1(29),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => data2(29),
      I4 => \t_state_reg_n_0_[2]\,
      I5 => data0(29),
      O => o_mema_addr_1(29)
    );
\o_mema_addr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECEFCCC32023000"
    )
        port map (
      I0 => s_ctr(2),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => data2(2),
      I4 => \t_state_reg_n_0_[2]\,
      I5 => index(2),
      O => o_mema_addr_1(2)
    );
\o_mema_addr[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECEFCCC32023000"
    )
        port map (
      I0 => data1(30),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => data2(30),
      I4 => \t_state_reg_n_0_[2]\,
      I5 => data0(30),
      O => o_mema_addr_1(30)
    );
\o_mema_addr[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000CC0044C0CC"
    )
        port map (
      I0 => mode,
      I1 => \t_state_reg_n_0_[0]\,
      I2 => i_trng_valid,
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[3]\,
      I5 => \t_state_reg_n_0_[2]\,
      O => \o_mema_addr[31]_i_1_n_0\
    );
\o_mema_addr[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => data2(31),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      O => o_mema_addr_1(31)
    );
\o_mema_addr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECEFCCC32023000"
    )
        port map (
      I0 => s_ctr(3),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => data2(3),
      I4 => \t_state_reg_n_0_[2]\,
      I5 => index(3),
      O => o_mema_addr_1(3)
    );
\o_mema_addr[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_oil_adr(3),
      I1 => \s_oil_index_reg_n_0_[3]\,
      O => \o_mema_addr[3]_i_3_n_0\
    );
\o_mema_addr[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_oil_adr(2),
      I1 => \s_oil_index_reg_n_0_[2]\,
      O => \o_mema_addr[3]_i_4_n_0\
    );
\o_mema_addr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECEFCCC32023000"
    )
        port map (
      I0 => data1(4),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => data2(4),
      I4 => \t_state_reg_n_0_[2]\,
      I5 => data0(4),
      O => o_mema_addr_1(4)
    );
\o_mema_addr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECEFFCF32023303"
    )
        port map (
      I0 => data1(5),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => data2(5),
      I4 => \t_state_reg_n_0_[2]\,
      I5 => data0(5),
      O => o_mema_addr_1(5)
    );
\o_mema_addr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECEFCCC32023000"
    )
        port map (
      I0 => data1(6),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => data2(6),
      I4 => \t_state_reg_n_0_[2]\,
      I5 => data0(6),
      O => o_mema_addr_1(6)
    );
\o_mema_addr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECEFCCC32023000"
    )
        port map (
      I0 => data1(7),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => data2(7),
      I4 => \t_state_reg_n_0_[2]\,
      I5 => data0(7),
      O => o_mema_addr_1(7)
    );
\o_mema_addr[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_oil_adr(7),
      I1 => \s_oil_index_reg_n_0_[7]\,
      O => \o_mema_addr[7]_i_3_n_0\
    );
\o_mema_addr[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_oil_adr(6),
      I1 => \s_oil_index_reg_n_0_[6]\,
      O => \o_mema_addr[7]_i_4_n_0\
    );
\o_mema_addr[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_oil_adr(5),
      I1 => \s_oil_index_reg_n_0_[5]\,
      O => \o_mema_addr[7]_i_5_n_0\
    );
\o_mema_addr[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_oil_adr(4),
      I1 => \s_oil_index_reg_n_0_[4]\,
      O => \o_mema_addr[7]_i_6_n_0\
    );
\o_mema_addr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECEFCCC32023000"
    )
        port map (
      I0 => data1(8),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => data2(8),
      I4 => \t_state_reg_n_0_[2]\,
      I5 => data0(8),
      O => o_mema_addr_1(8)
    );
\o_mema_addr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECEFCCC32023000"
    )
        port map (
      I0 => data1(9),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => data2(9),
      I4 => \t_state_reg_n_0_[2]\,
      I5 => data0(9),
      O => o_mema_addr_1(9)
    );
\o_mema_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_1(0),
      Q => o_mema_addr(0),
      R => rst
    );
\o_mema_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_1(10),
      Q => o_mema_addr(10),
      R => rst
    );
\o_mema_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_1(11),
      Q => o_mema_addr(11),
      R => rst
    );
\o_mema_addr_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_mema_addr_reg[7]_i_2_n_0\,
      CO(3) => \o_mema_addr_reg[11]_i_2_n_0\,
      CO(2) => \o_mema_addr_reg[11]_i_2_n_1\,
      CO(1) => \o_mema_addr_reg[11]_i_2_n_2\,
      CO(0) => \o_mema_addr_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => s_oil_adr(8),
      O(3 downto 0) => data2(11 downto 8),
      S(3 downto 1) => s_oil_adr(11 downto 9),
      S(0) => \o_mema_addr[11]_i_3_n_0\
    );
\o_mema_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_1(12),
      Q => o_mema_addr(12),
      R => rst
    );
\o_mema_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_1(13),
      Q => o_mema_addr(13),
      R => rst
    );
\o_mema_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_1(14),
      Q => o_mema_addr(14),
      R => rst
    );
\o_mema_addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_1(15),
      Q => o_mema_addr(15),
      R => rst
    );
\o_mema_addr_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_mema_addr_reg[11]_i_2_n_0\,
      CO(3) => \o_mema_addr_reg[15]_i_2_n_0\,
      CO(2) => \o_mema_addr_reg[15]_i_2_n_1\,
      CO(1) => \o_mema_addr_reg[15]_i_2_n_2\,
      CO(0) => \o_mema_addr_reg[15]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data2(15 downto 12),
      S(3 downto 0) => s_oil_adr(15 downto 12)
    );
\o_mema_addr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_1(16),
      Q => o_mema_addr(16),
      R => rst
    );
\o_mema_addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_1(17),
      Q => o_mema_addr(17),
      R => rst
    );
\o_mema_addr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_1(18),
      Q => o_mema_addr(18),
      R => rst
    );
\o_mema_addr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_1(19),
      Q => o_mema_addr(19),
      R => rst
    );
\o_mema_addr_reg[19]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_mema_addr_reg[15]_i_2_n_0\,
      CO(3) => \o_mema_addr_reg[19]_i_2_n_0\,
      CO(2) => \o_mema_addr_reg[19]_i_2_n_1\,
      CO(1) => \o_mema_addr_reg[19]_i_2_n_2\,
      CO(0) => \o_mema_addr_reg[19]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data2(19 downto 16),
      S(3 downto 0) => s_oil_adr(19 downto 16)
    );
\o_mema_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_1(1),
      Q => o_mema_addr(1),
      R => rst
    );
\o_mema_addr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_1(20),
      Q => o_mema_addr(20),
      R => rst
    );
\o_mema_addr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_1(21),
      Q => o_mema_addr(21),
      R => rst
    );
\o_mema_addr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_1(22),
      Q => o_mema_addr(22),
      R => rst
    );
\o_mema_addr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_1(23),
      Q => o_mema_addr(23),
      R => rst
    );
\o_mema_addr_reg[23]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_mema_addr_reg[19]_i_2_n_0\,
      CO(3) => \o_mema_addr_reg[23]_i_2_n_0\,
      CO(2) => \o_mema_addr_reg[23]_i_2_n_1\,
      CO(1) => \o_mema_addr_reg[23]_i_2_n_2\,
      CO(0) => \o_mema_addr_reg[23]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data2(23 downto 20),
      S(3 downto 0) => s_oil_adr(23 downto 20)
    );
\o_mema_addr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_1(24),
      Q => o_mema_addr(24),
      R => rst
    );
\o_mema_addr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_1(25),
      Q => o_mema_addr(25),
      R => rst
    );
\o_mema_addr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_1(26),
      Q => o_mema_addr(26),
      R => rst
    );
\o_mema_addr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_1(27),
      Q => o_mema_addr(27),
      R => rst
    );
\o_mema_addr_reg[27]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_mema_addr_reg[23]_i_2_n_0\,
      CO(3) => \o_mema_addr_reg[27]_i_2_n_0\,
      CO(2) => \o_mema_addr_reg[27]_i_2_n_1\,
      CO(1) => \o_mema_addr_reg[27]_i_2_n_2\,
      CO(0) => \o_mema_addr_reg[27]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data2(27 downto 24),
      S(3 downto 0) => s_oil_adr(27 downto 24)
    );
\o_mema_addr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_1(28),
      Q => o_mema_addr(28),
      R => rst
    );
\o_mema_addr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_1(29),
      Q => o_mema_addr(29),
      R => rst
    );
\o_mema_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_1(2),
      Q => o_mema_addr(2),
      R => rst
    );
\o_mema_addr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_1(30),
      Q => o_mema_addr(30),
      R => rst
    );
\o_mema_addr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_1(31),
      Q => o_mema_addr(31),
      R => rst
    );
\o_mema_addr_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_mema_addr_reg[27]_i_2_n_0\,
      CO(3) => \NLW_o_mema_addr_reg[31]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \o_mema_addr_reg[31]_i_3_n_1\,
      CO(1) => \o_mema_addr_reg[31]_i_3_n_2\,
      CO(0) => \o_mema_addr_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data2(31 downto 28),
      S(3 downto 0) => s_oil_adr(31 downto 28)
    );
\o_mema_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_1(3),
      Q => o_mema_addr(3),
      R => rst
    );
\o_mema_addr_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \o_mema_addr_reg[3]_i_2_n_0\,
      CO(2) => \o_mema_addr_reg[3]_i_2_n_1\,
      CO(1) => \o_mema_addr_reg[3]_i_2_n_2\,
      CO(0) => \o_mema_addr_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => s_oil_adr(3 downto 0),
      O(3 downto 0) => data2(3 downto 0),
      S(3) => \o_mema_addr[3]_i_3_n_0\,
      S(2) => \o_mema_addr[3]_i_4_n_0\,
      S(1 downto 0) => s_oil_adr(1 downto 0)
    );
\o_mema_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_1(4),
      Q => o_mema_addr(4),
      R => rst
    );
\o_mema_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_1(5),
      Q => o_mema_addr(5),
      R => rst
    );
\o_mema_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_1(6),
      Q => o_mema_addr(6),
      R => rst
    );
\o_mema_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_1(7),
      Q => o_mema_addr(7),
      R => rst
    );
\o_mema_addr_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_mema_addr_reg[3]_i_2_n_0\,
      CO(3) => \o_mema_addr_reg[7]_i_2_n_0\,
      CO(2) => \o_mema_addr_reg[7]_i_2_n_1\,
      CO(1) => \o_mema_addr_reg[7]_i_2_n_2\,
      CO(0) => \o_mema_addr_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => s_oil_adr(7 downto 4),
      O(3 downto 0) => data2(7 downto 4),
      S(3) => \o_mema_addr[7]_i_3_n_0\,
      S(2) => \o_mema_addr[7]_i_4_n_0\,
      S(1) => \o_mema_addr[7]_i_5_n_0\,
      S(0) => \o_mema_addr[7]_i_6_n_0\
    );
\o_mema_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_1(8),
      Q => o_mema_addr(8),
      R => rst
    );
\o_mema_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_1(9),
      Q => o_mema_addr(9),
      R => rst
    );
\o_mema_din[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_trng_data(0),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => s_oil_space(0),
      O => \o_mema_din[0]_i_1_n_0\
    );
\o_mema_din[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_trng_data(10),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => s_oil_space(10),
      O => \o_mema_din[10]_i_1_n_0\
    );
\o_mema_din[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_trng_data(11),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => s_oil_space(11),
      O => \o_mema_din[11]_i_1_n_0\
    );
\o_mema_din[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_trng_data(12),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => s_oil_space(12),
      O => \o_mema_din[12]_i_1_n_0\
    );
\o_mema_din[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_trng_data(13),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => s_oil_space(13),
      O => \o_mema_din[13]_i_1_n_0\
    );
\o_mema_din[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_trng_data(14),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => s_oil_space(14),
      O => \o_mema_din[14]_i_1_n_0\
    );
\o_mema_din[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_trng_data(15),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => s_oil_space(15),
      O => \o_mema_din[15]_i_1_n_0\
    );
\o_mema_din[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_trng_data(16),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => s_oil_space(16),
      O => \o_mema_din[16]_i_1_n_0\
    );
\o_mema_din[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_trng_data(17),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => s_oil_space(17),
      O => \o_mema_din[17]_i_1_n_0\
    );
\o_mema_din[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_trng_data(18),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => s_oil_space(18),
      O => \o_mema_din[18]_i_1_n_0\
    );
\o_mema_din[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_trng_data(19),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => s_oil_space(19),
      O => \o_mema_din[19]_i_1_n_0\
    );
\o_mema_din[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_trng_data(1),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => s_oil_space(1),
      O => \o_mema_din[1]_i_1_n_0\
    );
\o_mema_din[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_trng_data(20),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => s_oil_space(20),
      O => \o_mema_din[20]_i_1_n_0\
    );
\o_mema_din[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_trng_data(21),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => s_oil_space(21),
      O => \o_mema_din[21]_i_1_n_0\
    );
\o_mema_din[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_trng_data(22),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => s_oil_space(22),
      O => \o_mema_din[22]_i_1_n_0\
    );
\o_mema_din[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_trng_data(23),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => s_oil_space(23),
      O => \o_mema_din[23]_i_1_n_0\
    );
\o_mema_din[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_trng_data(24),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => s_oil_space(24),
      O => \o_mema_din[24]_i_1_n_0\
    );
\o_mema_din[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_trng_data(25),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => s_oil_space(25),
      O => \o_mema_din[25]_i_1_n_0\
    );
\o_mema_din[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_trng_data(26),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => s_oil_space(26),
      O => \o_mema_din[26]_i_1_n_0\
    );
\o_mema_din[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_trng_data(27),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => s_oil_space(27),
      O => \o_mema_din[27]_i_1_n_0\
    );
\o_mema_din[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_trng_data(28),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => s_oil_space(28),
      O => \o_mema_din[28]_i_1_n_0\
    );
\o_mema_din[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_trng_data(29),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => s_oil_space(29),
      O => \o_mema_din[29]_i_1_n_0\
    );
\o_mema_din[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_trng_data(2),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => s_oil_space(2),
      O => \o_mema_din[2]_i_1_n_0\
    );
\o_mema_din[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_trng_data(30),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => s_oil_space(30),
      O => \o_mema_din[30]_i_1_n_0\
    );
\o_mema_din[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00020A0000020000"
    )
        port map (
      I0 => \t_state_reg_n_0_[0]\,
      I1 => mode,
      I2 => \t_state_reg_n_0_[2]\,
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[3]\,
      I5 => i_trng_valid,
      O => \o_mema_din[31]_i_1_n_0\
    );
\o_mema_din[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_trng_data(31),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => s_oil_space(31),
      O => \o_mema_din[31]_i_2_n_0\
    );
\o_mema_din[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_trng_data(3),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => s_oil_space(3),
      O => \o_mema_din[3]_i_1_n_0\
    );
\o_mema_din[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_trng_data(4),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => s_oil_space(4),
      O => \o_mema_din[4]_i_1_n_0\
    );
\o_mema_din[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_trng_data(5),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => s_oil_space(5),
      O => \o_mema_din[5]_i_1_n_0\
    );
\o_mema_din[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_trng_data(6),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => s_oil_space(6),
      O => \o_mema_din[6]_i_1_n_0\
    );
\o_mema_din[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_trng_data(7),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => s_oil_space(7),
      O => \o_mema_din[7]_i_1_n_0\
    );
\o_mema_din[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_trng_data(8),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => s_oil_space(8),
      O => \o_mema_din[8]_i_1_n_0\
    );
\o_mema_din[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_trng_data(9),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => s_oil_space(9),
      O => \o_mema_din[9]_i_1_n_0\
    );
\o_mema_din_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_din[31]_i_1_n_0\,
      D => \o_mema_din[0]_i_1_n_0\,
      Q => o_mema_din(0),
      R => rst
    );
\o_mema_din_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_din[31]_i_1_n_0\,
      D => \o_mema_din[10]_i_1_n_0\,
      Q => o_mema_din(10),
      R => rst
    );
\o_mema_din_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_din[31]_i_1_n_0\,
      D => \o_mema_din[11]_i_1_n_0\,
      Q => o_mema_din(11),
      R => rst
    );
\o_mema_din_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_din[31]_i_1_n_0\,
      D => \o_mema_din[12]_i_1_n_0\,
      Q => o_mema_din(12),
      R => rst
    );
\o_mema_din_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_din[31]_i_1_n_0\,
      D => \o_mema_din[13]_i_1_n_0\,
      Q => o_mema_din(13),
      R => rst
    );
\o_mema_din_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_din[31]_i_1_n_0\,
      D => \o_mema_din[14]_i_1_n_0\,
      Q => o_mema_din(14),
      R => rst
    );
\o_mema_din_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_din[31]_i_1_n_0\,
      D => \o_mema_din[15]_i_1_n_0\,
      Q => o_mema_din(15),
      R => rst
    );
\o_mema_din_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_din[31]_i_1_n_0\,
      D => \o_mema_din[16]_i_1_n_0\,
      Q => o_mema_din(16),
      R => rst
    );
\o_mema_din_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_din[31]_i_1_n_0\,
      D => \o_mema_din[17]_i_1_n_0\,
      Q => o_mema_din(17),
      R => rst
    );
\o_mema_din_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_din[31]_i_1_n_0\,
      D => \o_mema_din[18]_i_1_n_0\,
      Q => o_mema_din(18),
      R => rst
    );
\o_mema_din_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_din[31]_i_1_n_0\,
      D => \o_mema_din[19]_i_1_n_0\,
      Q => o_mema_din(19),
      R => rst
    );
\o_mema_din_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_din[31]_i_1_n_0\,
      D => \o_mema_din[1]_i_1_n_0\,
      Q => o_mema_din(1),
      R => rst
    );
\o_mema_din_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_din[31]_i_1_n_0\,
      D => \o_mema_din[20]_i_1_n_0\,
      Q => o_mema_din(20),
      R => rst
    );
\o_mema_din_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_din[31]_i_1_n_0\,
      D => \o_mema_din[21]_i_1_n_0\,
      Q => o_mema_din(21),
      R => rst
    );
\o_mema_din_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_din[31]_i_1_n_0\,
      D => \o_mema_din[22]_i_1_n_0\,
      Q => o_mema_din(22),
      R => rst
    );
\o_mema_din_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_din[31]_i_1_n_0\,
      D => \o_mema_din[23]_i_1_n_0\,
      Q => o_mema_din(23),
      R => rst
    );
\o_mema_din_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_din[31]_i_1_n_0\,
      D => \o_mema_din[24]_i_1_n_0\,
      Q => o_mema_din(24),
      R => rst
    );
\o_mema_din_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_din[31]_i_1_n_0\,
      D => \o_mema_din[25]_i_1_n_0\,
      Q => o_mema_din(25),
      R => rst
    );
\o_mema_din_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_din[31]_i_1_n_0\,
      D => \o_mema_din[26]_i_1_n_0\,
      Q => o_mema_din(26),
      R => rst
    );
\o_mema_din_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_din[31]_i_1_n_0\,
      D => \o_mema_din[27]_i_1_n_0\,
      Q => o_mema_din(27),
      R => rst
    );
\o_mema_din_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_din[31]_i_1_n_0\,
      D => \o_mema_din[28]_i_1_n_0\,
      Q => o_mema_din(28),
      R => rst
    );
\o_mema_din_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_din[31]_i_1_n_0\,
      D => \o_mema_din[29]_i_1_n_0\,
      Q => o_mema_din(29),
      R => rst
    );
\o_mema_din_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_din[31]_i_1_n_0\,
      D => \o_mema_din[2]_i_1_n_0\,
      Q => o_mema_din(2),
      R => rst
    );
\o_mema_din_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_din[31]_i_1_n_0\,
      D => \o_mema_din[30]_i_1_n_0\,
      Q => o_mema_din(30),
      R => rst
    );
\o_mema_din_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_din[31]_i_1_n_0\,
      D => \o_mema_din[31]_i_2_n_0\,
      Q => o_mema_din(31),
      R => rst
    );
\o_mema_din_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_din[31]_i_1_n_0\,
      D => \o_mema_din[3]_i_1_n_0\,
      Q => o_mema_din(3),
      R => rst
    );
\o_mema_din_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_din[31]_i_1_n_0\,
      D => \o_mema_din[4]_i_1_n_0\,
      Q => o_mema_din(4),
      R => rst
    );
\o_mema_din_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_din[31]_i_1_n_0\,
      D => \o_mema_din[5]_i_1_n_0\,
      Q => o_mema_din(5),
      R => rst
    );
\o_mema_din_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_din[31]_i_1_n_0\,
      D => \o_mema_din[6]_i_1_n_0\,
      Q => o_mema_din(6),
      R => rst
    );
\o_mema_din_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_din[31]_i_1_n_0\,
      D => \o_mema_din[7]_i_1_n_0\,
      Q => o_mema_din(7),
      R => rst
    );
\o_mema_din_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_din[31]_i_1_n_0\,
      D => \o_mema_din[8]_i_1_n_0\,
      Q => o_mema_din(8),
      R => rst
    );
\o_mema_din_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_din[31]_i_1_n_0\,
      D => \o_mema_din[9]_i_1_n_0\,
      Q => o_mema_din(9),
      R => rst
    );
o_mema_en_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AFF8A00"
    )
        port map (
      I0 => \t_state_reg_n_0_[0]\,
      I1 => i_trng_valid,
      I2 => \t_state_reg_n_0_[1]\,
      I3 => o_mema_en_i_2_n_0,
      I4 => \^o_mema_en\,
      O => o_mema_en_i_1_n_0
    );
o_mema_en_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"051A1A0A"
    )
        port map (
      I0 => \t_state_reg_n_0_[2]\,
      I1 => mode,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[0]\,
      O => o_mema_en_i_2_n_0
    );
o_mema_en_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => o_mema_en_i_1_n_0,
      Q => \^o_mema_en\,
      R => rst
    );
\o_mema_we[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF3EFF300020022"
    )
        port map (
      I0 => \t_state_reg_n_0_[0]\,
      I1 => \t_state_reg_n_0_[2]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => \t_state_reg_n_0_[1]\,
      I4 => mode,
      I5 => \^o_mema_we\(0),
      O => \o_mema_we[3]_i_1_n_0\
    );
\o_mema_we_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \o_mema_we[3]_i_1_n_0\,
      Q => \^o_mema_we\(0),
      R => rst
    );
\o_memb_addr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(0),
      I1 => \t_state_reg_n_0_[2]\,
      O => \o_memb_addr[0]_i_1_n_0\
    );
\o_memb_addr[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(10),
      I1 => \t_state_reg_n_0_[2]\,
      O => \o_memb_addr[10]_i_1_n_0\
    );
\o_memb_addr[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(11),
      I1 => \t_state_reg_n_0_[2]\,
      O => \o_memb_addr[11]_i_1_n_0\
    );
\o_memb_addr[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(12),
      I1 => \t_state_reg_n_0_[2]\,
      O => \o_memb_addr[12]_i_1_n_0\
    );
\o_memb_addr[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(13),
      I1 => \t_state_reg_n_0_[2]\,
      O => \o_memb_addr[13]_i_1_n_0\
    );
\o_memb_addr[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(14),
      I1 => \t_state_reg_n_0_[2]\,
      O => \o_memb_addr[14]_i_1_n_0\
    );
\o_memb_addr[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(15),
      I1 => \t_state_reg_n_0_[2]\,
      O => \o_memb_addr[15]_i_1_n_0\
    );
\o_memb_addr[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(16),
      I1 => \t_state_reg_n_0_[2]\,
      O => \o_memb_addr[16]_i_1_n_0\
    );
\o_memb_addr[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(17),
      I1 => \t_state_reg_n_0_[2]\,
      O => \o_memb_addr[17]_i_1_n_0\
    );
\o_memb_addr[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(18),
      I1 => \t_state_reg_n_0_[2]\,
      O => \o_memb_addr[18]_i_1_n_0\
    );
\o_memb_addr[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(19),
      I1 => \t_state_reg_n_0_[2]\,
      O => \o_memb_addr[19]_i_1_n_0\
    );
\o_memb_addr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(1),
      I1 => \t_state_reg_n_0_[2]\,
      O => \o_memb_addr[1]_i_1_n_0\
    );
\o_memb_addr[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(20),
      I1 => \t_state_reg_n_0_[2]\,
      O => \o_memb_addr[20]_i_1_n_0\
    );
\o_memb_addr[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(21),
      I1 => \t_state_reg_n_0_[2]\,
      O => \o_memb_addr[21]_i_1_n_0\
    );
\o_memb_addr[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(22),
      I1 => \t_state_reg_n_0_[2]\,
      O => \o_memb_addr[22]_i_1_n_0\
    );
\o_memb_addr[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(23),
      I1 => \t_state_reg_n_0_[2]\,
      O => \o_memb_addr[23]_i_1_n_0\
    );
\o_memb_addr[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(24),
      I1 => \t_state_reg_n_0_[2]\,
      O => \o_memb_addr[24]_i_1_n_0\
    );
\o_memb_addr[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(25),
      I1 => \t_state_reg_n_0_[2]\,
      O => \o_memb_addr[25]_i_1_n_0\
    );
\o_memb_addr[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(26),
      I1 => \t_state_reg_n_0_[2]\,
      O => \o_memb_addr[26]_i_1_n_0\
    );
\o_memb_addr[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(27),
      I1 => \t_state_reg_n_0_[2]\,
      O => \o_memb_addr[27]_i_1_n_0\
    );
\o_memb_addr[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(28),
      I1 => \t_state_reg_n_0_[2]\,
      O => \o_memb_addr[28]_i_1_n_0\
    );
\o_memb_addr[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(29),
      I1 => \t_state_reg_n_0_[2]\,
      O => \o_memb_addr[29]_i_1_n_0\
    );
\o_memb_addr[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(2),
      I1 => \t_state_reg_n_0_[2]\,
      O => \o_memb_addr[2]_i_1_n_0\
    );
\o_memb_addr[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(30),
      I1 => \t_state_reg_n_0_[2]\,
      O => \o_memb_addr[30]_i_1_n_0\
    );
\o_memb_addr[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08080800"
    )
        port map (
      I0 => \t_state_reg_n_0_[0]\,
      I1 => \t_state_reg_n_0_[3]\,
      I2 => \t_state_reg_n_0_[1]\,
      I3 => mode,
      I4 => \t_state_reg_n_0_[2]\,
      O => \o_memb_addr[31]_i_1_n_0\
    );
\o_memb_addr[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(31),
      I1 => \t_state_reg_n_0_[2]\,
      O => \o_memb_addr[31]_i_2_n_0\
    );
\o_memb_addr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(3),
      I1 => \t_state_reg_n_0_[2]\,
      O => \o_memb_addr[3]_i_1_n_0\
    );
\o_memb_addr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(4),
      I1 => \t_state_reg_n_0_[2]\,
      O => \o_memb_addr[4]_i_1_n_0\
    );
\o_memb_addr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(5),
      I1 => \t_state_reg_n_0_[2]\,
      O => \o_memb_addr[5]_i_1_n_0\
    );
\o_memb_addr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(6),
      I1 => \t_state_reg_n_0_[2]\,
      O => \o_memb_addr[6]_i_1_n_0\
    );
\o_memb_addr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(7),
      I1 => \t_state_reg_n_0_[2]\,
      O => \o_memb_addr[7]_i_1_n_0\
    );
\o_memb_addr[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(8),
      I1 => \t_state_reg_n_0_[2]\,
      O => \o_memb_addr[8]_i_1_n_0\
    );
\o_memb_addr[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(9),
      I1 => \t_state_reg_n_0_[2]\,
      O => \o_memb_addr[9]_i_1_n_0\
    );
\o_memb_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_addr[31]_i_1_n_0\,
      D => \o_memb_addr[0]_i_1_n_0\,
      Q => o_memb_addr(0),
      R => rst
    );
\o_memb_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_addr[31]_i_1_n_0\,
      D => \o_memb_addr[10]_i_1_n_0\,
      Q => o_memb_addr(10),
      R => rst
    );
\o_memb_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_addr[31]_i_1_n_0\,
      D => \o_memb_addr[11]_i_1_n_0\,
      Q => o_memb_addr(11),
      R => rst
    );
\o_memb_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_addr[31]_i_1_n_0\,
      D => \o_memb_addr[12]_i_1_n_0\,
      Q => o_memb_addr(12),
      R => rst
    );
\o_memb_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_addr[31]_i_1_n_0\,
      D => \o_memb_addr[13]_i_1_n_0\,
      Q => o_memb_addr(13),
      R => rst
    );
\o_memb_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_addr[31]_i_1_n_0\,
      D => \o_memb_addr[14]_i_1_n_0\,
      Q => o_memb_addr(14),
      R => rst
    );
\o_memb_addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_addr[31]_i_1_n_0\,
      D => \o_memb_addr[15]_i_1_n_0\,
      Q => o_memb_addr(15),
      R => rst
    );
\o_memb_addr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_addr[31]_i_1_n_0\,
      D => \o_memb_addr[16]_i_1_n_0\,
      Q => o_memb_addr(16),
      R => rst
    );
\o_memb_addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_addr[31]_i_1_n_0\,
      D => \o_memb_addr[17]_i_1_n_0\,
      Q => o_memb_addr(17),
      R => rst
    );
\o_memb_addr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_addr[31]_i_1_n_0\,
      D => \o_memb_addr[18]_i_1_n_0\,
      Q => o_memb_addr(18),
      R => rst
    );
\o_memb_addr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_addr[31]_i_1_n_0\,
      D => \o_memb_addr[19]_i_1_n_0\,
      Q => o_memb_addr(19),
      R => rst
    );
\o_memb_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_addr[31]_i_1_n_0\,
      D => \o_memb_addr[1]_i_1_n_0\,
      Q => o_memb_addr(1),
      R => rst
    );
\o_memb_addr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_addr[31]_i_1_n_0\,
      D => \o_memb_addr[20]_i_1_n_0\,
      Q => o_memb_addr(20),
      R => rst
    );
\o_memb_addr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_addr[31]_i_1_n_0\,
      D => \o_memb_addr[21]_i_1_n_0\,
      Q => o_memb_addr(21),
      R => rst
    );
\o_memb_addr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_addr[31]_i_1_n_0\,
      D => \o_memb_addr[22]_i_1_n_0\,
      Q => o_memb_addr(22),
      R => rst
    );
\o_memb_addr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_addr[31]_i_1_n_0\,
      D => \o_memb_addr[23]_i_1_n_0\,
      Q => o_memb_addr(23),
      R => rst
    );
\o_memb_addr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_addr[31]_i_1_n_0\,
      D => \o_memb_addr[24]_i_1_n_0\,
      Q => o_memb_addr(24),
      R => rst
    );
\o_memb_addr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_addr[31]_i_1_n_0\,
      D => \o_memb_addr[25]_i_1_n_0\,
      Q => o_memb_addr(25),
      R => rst
    );
\o_memb_addr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_addr[31]_i_1_n_0\,
      D => \o_memb_addr[26]_i_1_n_0\,
      Q => o_memb_addr(26),
      R => rst
    );
\o_memb_addr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_addr[31]_i_1_n_0\,
      D => \o_memb_addr[27]_i_1_n_0\,
      Q => o_memb_addr(27),
      R => rst
    );
\o_memb_addr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_addr[31]_i_1_n_0\,
      D => \o_memb_addr[28]_i_1_n_0\,
      Q => o_memb_addr(28),
      R => rst
    );
\o_memb_addr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_addr[31]_i_1_n_0\,
      D => \o_memb_addr[29]_i_1_n_0\,
      Q => o_memb_addr(29),
      R => rst
    );
\o_memb_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_addr[31]_i_1_n_0\,
      D => \o_memb_addr[2]_i_1_n_0\,
      Q => o_memb_addr(2),
      R => rst
    );
\o_memb_addr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_addr[31]_i_1_n_0\,
      D => \o_memb_addr[30]_i_1_n_0\,
      Q => o_memb_addr(30),
      R => rst
    );
\o_memb_addr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_addr[31]_i_1_n_0\,
      D => \o_memb_addr[31]_i_2_n_0\,
      Q => o_memb_addr(31),
      R => rst
    );
\o_memb_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_addr[31]_i_1_n_0\,
      D => \o_memb_addr[3]_i_1_n_0\,
      Q => o_memb_addr(3),
      R => rst
    );
\o_memb_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_addr[31]_i_1_n_0\,
      D => \o_memb_addr[4]_i_1_n_0\,
      Q => o_memb_addr(4),
      R => rst
    );
\o_memb_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_addr[31]_i_1_n_0\,
      D => \o_memb_addr[5]_i_1_n_0\,
      Q => o_memb_addr(5),
      R => rst
    );
\o_memb_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_addr[31]_i_1_n_0\,
      D => \o_memb_addr[6]_i_1_n_0\,
      Q => o_memb_addr(6),
      R => rst
    );
\o_memb_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_addr[31]_i_1_n_0\,
      D => \o_memb_addr[7]_i_1_n_0\,
      Q => o_memb_addr(7),
      R => rst
    );
\o_memb_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_addr[31]_i_1_n_0\,
      D => \o_memb_addr[8]_i_1_n_0\,
      Q => o_memb_addr(8),
      R => rst
    );
\o_memb_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_addr[31]_i_1_n_0\,
      D => \o_memb_addr[9]_i_1_n_0\,
      Q => o_memb_addr(9),
      R => rst
    );
\o_memb_din[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \t_state_reg_n_0_[3]\,
      I1 => mode,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[2]\,
      I4 => \t_state_reg_n_0_[1]\,
      O => \o_memb_din[31]_i_1_n_0\
    );
\o_memb_din_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_din[31]_i_1_n_0\,
      D => s_oil_space(0),
      Q => o_memb_din(0),
      R => rst
    );
\o_memb_din_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_din[31]_i_1_n_0\,
      D => s_oil_space(10),
      Q => o_memb_din(10),
      R => rst
    );
\o_memb_din_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_din[31]_i_1_n_0\,
      D => s_oil_space(11),
      Q => o_memb_din(11),
      R => rst
    );
\o_memb_din_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_din[31]_i_1_n_0\,
      D => s_oil_space(12),
      Q => o_memb_din(12),
      R => rst
    );
\o_memb_din_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_din[31]_i_1_n_0\,
      D => s_oil_space(13),
      Q => o_memb_din(13),
      R => rst
    );
\o_memb_din_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_din[31]_i_1_n_0\,
      D => s_oil_space(14),
      Q => o_memb_din(14),
      R => rst
    );
\o_memb_din_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_din[31]_i_1_n_0\,
      D => s_oil_space(15),
      Q => o_memb_din(15),
      R => rst
    );
\o_memb_din_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_din[31]_i_1_n_0\,
      D => s_oil_space(16),
      Q => o_memb_din(16),
      R => rst
    );
\o_memb_din_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_din[31]_i_1_n_0\,
      D => s_oil_space(17),
      Q => o_memb_din(17),
      R => rst
    );
\o_memb_din_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_din[31]_i_1_n_0\,
      D => s_oil_space(18),
      Q => o_memb_din(18),
      R => rst
    );
\o_memb_din_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_din[31]_i_1_n_0\,
      D => s_oil_space(19),
      Q => o_memb_din(19),
      R => rst
    );
\o_memb_din_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_din[31]_i_1_n_0\,
      D => s_oil_space(1),
      Q => o_memb_din(1),
      R => rst
    );
\o_memb_din_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_din[31]_i_1_n_0\,
      D => s_oil_space(20),
      Q => o_memb_din(20),
      R => rst
    );
\o_memb_din_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_din[31]_i_1_n_0\,
      D => s_oil_space(21),
      Q => o_memb_din(21),
      R => rst
    );
\o_memb_din_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_din[31]_i_1_n_0\,
      D => s_oil_space(22),
      Q => o_memb_din(22),
      R => rst
    );
\o_memb_din_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_din[31]_i_1_n_0\,
      D => s_oil_space(23),
      Q => o_memb_din(23),
      R => rst
    );
\o_memb_din_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_din[31]_i_1_n_0\,
      D => s_oil_space(24),
      Q => o_memb_din(24),
      R => rst
    );
\o_memb_din_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_din[31]_i_1_n_0\,
      D => s_oil_space(25),
      Q => o_memb_din(25),
      R => rst
    );
\o_memb_din_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_din[31]_i_1_n_0\,
      D => s_oil_space(26),
      Q => o_memb_din(26),
      R => rst
    );
\o_memb_din_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_din[31]_i_1_n_0\,
      D => s_oil_space(27),
      Q => o_memb_din(27),
      R => rst
    );
\o_memb_din_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_din[31]_i_1_n_0\,
      D => s_oil_space(28),
      Q => o_memb_din(28),
      R => rst
    );
\o_memb_din_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_din[31]_i_1_n_0\,
      D => s_oil_space(29),
      Q => o_memb_din(29),
      R => rst
    );
\o_memb_din_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_din[31]_i_1_n_0\,
      D => s_oil_space(2),
      Q => o_memb_din(2),
      R => rst
    );
\o_memb_din_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_din[31]_i_1_n_0\,
      D => s_oil_space(30),
      Q => o_memb_din(30),
      R => rst
    );
\o_memb_din_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_din[31]_i_1_n_0\,
      D => s_oil_space(31),
      Q => o_memb_din(31),
      R => rst
    );
\o_memb_din_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_din[31]_i_1_n_0\,
      D => s_oil_space(3),
      Q => o_memb_din(3),
      R => rst
    );
\o_memb_din_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_din[31]_i_1_n_0\,
      D => s_oil_space(4),
      Q => o_memb_din(4),
      R => rst
    );
\o_memb_din_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_din[31]_i_1_n_0\,
      D => s_oil_space(5),
      Q => o_memb_din(5),
      R => rst
    );
\o_memb_din_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_din[31]_i_1_n_0\,
      D => s_oil_space(6),
      Q => o_memb_din(6),
      R => rst
    );
\o_memb_din_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_din[31]_i_1_n_0\,
      D => s_oil_space(7),
      Q => o_memb_din(7),
      R => rst
    );
\o_memb_din_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_din[31]_i_1_n_0\,
      D => s_oil_space(8),
      Q => o_memb_din(8),
      R => rst
    );
\o_memb_din_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_memb_din[31]_i_1_n_0\,
      D => s_oil_space(9),
      Q => o_memb_din(9),
      R => rst
    );
o_memb_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BDFFBFFF04000000"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => \t_state_reg_n_0_[0]\,
      I2 => \t_state_reg_n_0_[2]\,
      I3 => \t_state_reg_n_0_[3]\,
      I4 => mode,
      I5 => \^o_memb_en\,
      O => o_memb_en_i_1_n_0
    );
o_memb_en_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => o_memb_en_i_1_n_0,
      Q => \^o_memb_en\,
      R => rst
    );
\o_memb_we[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BDFFBFFF04000000"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => \t_state_reg_n_0_[0]\,
      I2 => \t_state_reg_n_0_[2]\,
      I3 => \t_state_reg_n_0_[3]\,
      I4 => mode,
      I5 => \^o_memb_we\(0),
      O => \o_memb_we[3]_i_1_n_0\
    );
\o_memb_we_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \o_memb_we[3]_i_1_n_0\,
      Q => \^o_memb_we\(0),
      R => rst
    );
o_trng_en_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0022"
    )
        port map (
      I0 => \t_state_reg_n_0_[0]\,
      I1 => \t_state_reg_n_0_[2]\,
      I2 => \t_state_reg_n_0_[1]\,
      I3 => \t_state_reg_n_0_[3]\,
      I4 => \^o_trng_en\,
      O => o_trng_en_i_1_n_0
    );
o_trng_en_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => o_trng_en_i_1_n_0,
      Q => \^o_trng_en\,
      R => rst
    );
o_trng_sel_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFFFFE00000002"
    )
        port map (
      I0 => i_enable,
      I1 => \t_state_reg_n_0_[3]\,
      I2 => \t_state_reg_n_0_[1]\,
      I3 => \t_state_reg_n_0_[0]\,
      I4 => \t_state_reg_n_0_[2]\,
      I5 => \^o_trng_sel\,
      O => o_trng_sel_i_1_n_0
    );
o_trng_sel_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => o_trng_sel_i_1_n_0,
      Q => \^o_trng_sel\,
      R => rst
    );
s_ctr0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => s_ctr0_carry_n_0,
      CO(2) => s_ctr0_carry_n_1,
      CO(1) => s_ctr0_carry_n_2,
      CO(0) => s_ctr0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => s_ctr(2),
      DI(0) => '0',
      O(3 downto 0) => s_ctr0(4 downto 1),
      S(3 downto 2) => s_ctr(4 downto 3),
      S(1) => s_ctr0_carry_i_1_n_0,
      S(0) => s_ctr(1)
    );
\s_ctr0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => s_ctr0_carry_n_0,
      CO(3) => \s_ctr0_carry__0_n_0\,
      CO(2) => \s_ctr0_carry__0_n_1\,
      CO(1) => \s_ctr0_carry__0_n_2\,
      CO(0) => \s_ctr0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => s_ctr0(8 downto 5),
      S(3 downto 0) => s_ctr(8 downto 5)
    );
\s_ctr0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_ctr0_carry__0_n_0\,
      CO(3) => \s_ctr0_carry__1_n_0\,
      CO(2) => \s_ctr0_carry__1_n_1\,
      CO(1) => \s_ctr0_carry__1_n_2\,
      CO(0) => \s_ctr0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => s_ctr0(12 downto 9),
      S(3 downto 0) => s_ctr(12 downto 9)
    );
\s_ctr0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_ctr0_carry__1_n_0\,
      CO(3) => \s_ctr0_carry__2_n_0\,
      CO(2) => \s_ctr0_carry__2_n_1\,
      CO(1) => \s_ctr0_carry__2_n_2\,
      CO(0) => \s_ctr0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => s_ctr0(16 downto 13),
      S(3 downto 0) => s_ctr(16 downto 13)
    );
\s_ctr0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_ctr0_carry__2_n_0\,
      CO(3) => \s_ctr0_carry__3_n_0\,
      CO(2) => \s_ctr0_carry__3_n_1\,
      CO(1) => \s_ctr0_carry__3_n_2\,
      CO(0) => \s_ctr0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => s_ctr0(20 downto 17),
      S(3 downto 0) => s_ctr(20 downto 17)
    );
\s_ctr0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_ctr0_carry__3_n_0\,
      CO(3) => \s_ctr0_carry__4_n_0\,
      CO(2) => \s_ctr0_carry__4_n_1\,
      CO(1) => \s_ctr0_carry__4_n_2\,
      CO(0) => \s_ctr0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => s_ctr0(24 downto 21),
      S(3 downto 0) => s_ctr(24 downto 21)
    );
\s_ctr0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_ctr0_carry__4_n_0\,
      CO(3) => \s_ctr0_carry__5_n_0\,
      CO(2) => \s_ctr0_carry__5_n_1\,
      CO(1) => \s_ctr0_carry__5_n_2\,
      CO(0) => \s_ctr0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => s_ctr0(28 downto 25),
      S(3 downto 0) => s_ctr(28 downto 25)
    );
\s_ctr0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_ctr0_carry__5_n_0\,
      CO(3 downto 1) => \NLW_s_ctr0_carry__6_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \s_ctr0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_s_ctr0_carry__6_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => s_ctr0(30 downto 29),
      S(3 downto 2) => B"00",
      S(1 downto 0) => s_ctr(30 downto 29)
    );
s_ctr0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_ctr(2),
      O => s_ctr0_carry_i_1_n_0
    );
\s_ctr[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(10),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \s_ctr[10]_i_1_n_0\
    );
\s_ctr[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(11),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \s_ctr[11]_i_1_n_0\
    );
\s_ctr[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(12),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \s_ctr[12]_i_1_n_0\
    );
\s_ctr[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(13),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \s_ctr[13]_i_1_n_0\
    );
\s_ctr[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(14),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \s_ctr[14]_i_1_n_0\
    );
\s_ctr[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(15),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \s_ctr[15]_i_1_n_0\
    );
\s_ctr[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(16),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \s_ctr[16]_i_1_n_0\
    );
\s_ctr[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(17),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \s_ctr[17]_i_1_n_0\
    );
\s_ctr[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(18),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \s_ctr[18]_i_1_n_0\
    );
\s_ctr[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(19),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \s_ctr[19]_i_1_n_0\
    );
\s_ctr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(1),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \s_ctr[1]_i_1_n_0\
    );
\s_ctr[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(20),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \s_ctr[20]_i_1_n_0\
    );
\s_ctr[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(21),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \s_ctr[21]_i_1_n_0\
    );
\s_ctr[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(22),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \s_ctr[22]_i_1_n_0\
    );
\s_ctr[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(23),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \s_ctr[23]_i_1_n_0\
    );
\s_ctr[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(24),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \s_ctr[24]_i_1_n_0\
    );
\s_ctr[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(25),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \s_ctr[25]_i_1_n_0\
    );
\s_ctr[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(26),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \s_ctr[26]_i_1_n_0\
    );
\s_ctr[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(27),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \s_ctr[27]_i_1_n_0\
    );
\s_ctr[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(28),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \s_ctr[28]_i_1_n_0\
    );
\s_ctr[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(29),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \s_ctr[29]_i_1_n_0\
    );
\s_ctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(2),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \s_ctr[2]_i_1_n_0\
    );
\s_ctr[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F0C0CAE0C0CAE0C"
    )
        port map (
      I0 => \s_ctr[30]_i_3_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state[0]_i_2_n_0\,
      I3 => \t_state_reg_n_0_[2]\,
      I4 => \t_state_reg_n_0_[0]\,
      I5 => \t_state_reg_n_0_[3]\,
      O => s_ctr_2
    );
\s_ctr[30]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(30),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \s_ctr[30]_i_2_n_0\
    );
\s_ctr[30]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF0322"
    )
        port map (
      I0 => \i1_carry__2_n_0\,
      I1 => \i0_inferred__0/i__carry__2_n_0\,
      I2 => \s_oil_index[8]_i_4_n_0\,
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[2]\,
      O => \s_ctr[30]_i_3_n_0\
    );
\s_ctr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(3),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \s_ctr[3]_i_1_n_0\
    );
\s_ctr[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(4),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \s_ctr[4]_i_1_n_0\
    );
\s_ctr[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(5),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \s_ctr[5]_i_1_n_0\
    );
\s_ctr[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(6),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \s_ctr[6]_i_1_n_0\
    );
\s_ctr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(7),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \s_ctr[7]_i_1_n_0\
    );
\s_ctr[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(8),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \s_ctr[8]_i_1_n_0\
    );
\s_ctr[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(9),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[2]\,
      O => \s_ctr[9]_i_1_n_0\
    );
\s_ctr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_ctr_2,
      D => \s_ctr[10]_i_1_n_0\,
      Q => s_ctr(10),
      R => rst
    );
\s_ctr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_ctr_2,
      D => \s_ctr[11]_i_1_n_0\,
      Q => s_ctr(11),
      R => rst
    );
\s_ctr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_ctr_2,
      D => \s_ctr[12]_i_1_n_0\,
      Q => s_ctr(12),
      R => rst
    );
\s_ctr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_ctr_2,
      D => \s_ctr[13]_i_1_n_0\,
      Q => s_ctr(13),
      R => rst
    );
\s_ctr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_ctr_2,
      D => \s_ctr[14]_i_1_n_0\,
      Q => s_ctr(14),
      R => rst
    );
\s_ctr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_ctr_2,
      D => \s_ctr[15]_i_1_n_0\,
      Q => s_ctr(15),
      R => rst
    );
\s_ctr_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_ctr_2,
      D => \s_ctr[16]_i_1_n_0\,
      Q => s_ctr(16),
      R => rst
    );
\s_ctr_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_ctr_2,
      D => \s_ctr[17]_i_1_n_0\,
      Q => s_ctr(17),
      R => rst
    );
\s_ctr_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_ctr_2,
      D => \s_ctr[18]_i_1_n_0\,
      Q => s_ctr(18),
      R => rst
    );
\s_ctr_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_ctr_2,
      D => \s_ctr[19]_i_1_n_0\,
      Q => s_ctr(19),
      R => rst
    );
\s_ctr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_ctr_2,
      D => \s_ctr[1]_i_1_n_0\,
      Q => s_ctr(1),
      R => rst
    );
\s_ctr_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_ctr_2,
      D => \s_ctr[20]_i_1_n_0\,
      Q => s_ctr(20),
      R => rst
    );
\s_ctr_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_ctr_2,
      D => \s_ctr[21]_i_1_n_0\,
      Q => s_ctr(21),
      R => rst
    );
\s_ctr_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_ctr_2,
      D => \s_ctr[22]_i_1_n_0\,
      Q => s_ctr(22),
      R => rst
    );
\s_ctr_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_ctr_2,
      D => \s_ctr[23]_i_1_n_0\,
      Q => s_ctr(23),
      R => rst
    );
\s_ctr_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_ctr_2,
      D => \s_ctr[24]_i_1_n_0\,
      Q => s_ctr(24),
      R => rst
    );
\s_ctr_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_ctr_2,
      D => \s_ctr[25]_i_1_n_0\,
      Q => s_ctr(25),
      R => rst
    );
\s_ctr_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_ctr_2,
      D => \s_ctr[26]_i_1_n_0\,
      Q => s_ctr(26),
      R => rst
    );
\s_ctr_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_ctr_2,
      D => \s_ctr[27]_i_1_n_0\,
      Q => s_ctr(27),
      R => rst
    );
\s_ctr_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_ctr_2,
      D => \s_ctr[28]_i_1_n_0\,
      Q => s_ctr(28),
      R => rst
    );
\s_ctr_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_ctr_2,
      D => \s_ctr[29]_i_1_n_0\,
      Q => s_ctr(29),
      R => rst
    );
\s_ctr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_ctr_2,
      D => \s_ctr[2]_i_1_n_0\,
      Q => s_ctr(2),
      R => rst
    );
\s_ctr_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_ctr_2,
      D => \s_ctr[30]_i_2_n_0\,
      Q => s_ctr(30),
      R => rst
    );
\s_ctr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_ctr_2,
      D => \s_ctr[3]_i_1_n_0\,
      Q => s_ctr(3),
      R => rst
    );
\s_ctr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_ctr_2,
      D => \s_ctr[4]_i_1_n_0\,
      Q => s_ctr(4),
      R => rst
    );
\s_ctr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_ctr_2,
      D => \s_ctr[5]_i_1_n_0\,
      Q => s_ctr(5),
      R => rst
    );
\s_ctr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_ctr_2,
      D => \s_ctr[6]_i_1_n_0\,
      Q => s_ctr(6),
      R => rst
    );
\s_ctr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_ctr_2,
      D => \s_ctr[7]_i_1_n_0\,
      Q => s_ctr(7),
      R => rst
    );
\s_ctr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_ctr_2,
      D => \s_ctr[8]_i_1_n_0\,
      Q => s_ctr(8),
      R => rst
    );
\s_ctr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_ctr_2,
      D => \s_ctr[9]_i_1_n_0\,
      Q => s_ctr(9),
      R => rst
    );
\s_oil_adr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_enable,
      I1 => i_oil_addr(0),
      O => \s_oil_adr[0]_i_1_n_0\
    );
\s_oil_adr[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_enable,
      I1 => i_oil_addr(10),
      O => \s_oil_adr[10]_i_1_n_0\
    );
\s_oil_adr[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_enable,
      I1 => i_oil_addr(11),
      O => \s_oil_adr[11]_i_1_n_0\
    );
\s_oil_adr[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_enable,
      I1 => i_oil_addr(12),
      O => \s_oil_adr[12]_i_1_n_0\
    );
\s_oil_adr[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_enable,
      I1 => i_oil_addr(13),
      O => \s_oil_adr[13]_i_1_n_0\
    );
\s_oil_adr[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_enable,
      I1 => i_oil_addr(14),
      O => \s_oil_adr[14]_i_1_n_0\
    );
\s_oil_adr[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_enable,
      I1 => i_oil_addr(15),
      O => \s_oil_adr[15]_i_1_n_0\
    );
\s_oil_adr[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_enable,
      I1 => i_oil_addr(16),
      O => \s_oil_adr[16]_i_1_n_0\
    );
\s_oil_adr[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_enable,
      I1 => i_oil_addr(17),
      O => \s_oil_adr[17]_i_1_n_0\
    );
\s_oil_adr[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_enable,
      I1 => i_oil_addr(18),
      O => \s_oil_adr[18]_i_1_n_0\
    );
\s_oil_adr[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_enable,
      I1 => i_oil_addr(19),
      O => \s_oil_adr[19]_i_1_n_0\
    );
\s_oil_adr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_enable,
      I1 => i_oil_addr(1),
      O => \s_oil_adr[1]_i_1_n_0\
    );
\s_oil_adr[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_enable,
      I1 => i_oil_addr(20),
      O => \s_oil_adr[20]_i_1_n_0\
    );
\s_oil_adr[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_enable,
      I1 => i_oil_addr(21),
      O => \s_oil_adr[21]_i_1_n_0\
    );
\s_oil_adr[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_enable,
      I1 => i_oil_addr(22),
      O => \s_oil_adr[22]_i_1_n_0\
    );
\s_oil_adr[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_enable,
      I1 => i_oil_addr(23),
      O => \s_oil_adr[23]_i_1_n_0\
    );
\s_oil_adr[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_enable,
      I1 => i_oil_addr(24),
      O => \s_oil_adr[24]_i_1_n_0\
    );
\s_oil_adr[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_enable,
      I1 => i_oil_addr(25),
      O => \s_oil_adr[25]_i_1_n_0\
    );
\s_oil_adr[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_enable,
      I1 => i_oil_addr(26),
      O => \s_oil_adr[26]_i_1_n_0\
    );
\s_oil_adr[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_enable,
      I1 => i_oil_addr(27),
      O => \s_oil_adr[27]_i_1_n_0\
    );
\s_oil_adr[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_enable,
      I1 => i_oil_addr(28),
      O => \s_oil_adr[28]_i_1_n_0\
    );
\s_oil_adr[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_enable,
      I1 => i_oil_addr(29),
      O => \s_oil_adr[29]_i_1_n_0\
    );
\s_oil_adr[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_enable,
      I1 => i_oil_addr(2),
      O => \s_oil_adr[2]_i_1_n_0\
    );
\s_oil_adr[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_enable,
      I1 => i_oil_addr(30),
      O => \s_oil_adr[30]_i_1_n_0\
    );
\s_oil_adr[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_enable,
      I1 => i_oil_addr(31),
      O => \s_oil_adr[31]_i_1_n_0\
    );
\s_oil_adr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_enable,
      I1 => i_oil_addr(3),
      O => \s_oil_adr[3]_i_1_n_0\
    );
\s_oil_adr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_enable,
      I1 => i_oil_addr(4),
      O => \s_oil_adr[4]_i_1_n_0\
    );
\s_oil_adr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_enable,
      I1 => i_oil_addr(5),
      O => \s_oil_adr[5]_i_1_n_0\
    );
\s_oil_adr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_enable,
      I1 => i_oil_addr(6),
      O => \s_oil_adr[6]_i_1_n_0\
    );
\s_oil_adr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_enable,
      I1 => i_oil_addr(7),
      O => \s_oil_adr[7]_i_1_n_0\
    );
\s_oil_adr[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_enable,
      I1 => i_oil_addr(8),
      O => \s_oil_adr[8]_i_1_n_0\
    );
\s_oil_adr[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_enable,
      I1 => i_oil_addr(9),
      O => \s_oil_adr[9]_i_1_n_0\
    );
\s_oil_adr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_0,
      D => \s_oil_adr[0]_i_1_n_0\,
      Q => s_oil_adr(0),
      R => rst
    );
\s_oil_adr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_0,
      D => \s_oil_adr[10]_i_1_n_0\,
      Q => s_oil_adr(10),
      R => rst
    );
\s_oil_adr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_0,
      D => \s_oil_adr[11]_i_1_n_0\,
      Q => s_oil_adr(11),
      R => rst
    );
\s_oil_adr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_0,
      D => \s_oil_adr[12]_i_1_n_0\,
      Q => s_oil_adr(12),
      R => rst
    );
\s_oil_adr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_0,
      D => \s_oil_adr[13]_i_1_n_0\,
      Q => s_oil_adr(13),
      R => rst
    );
\s_oil_adr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_0,
      D => \s_oil_adr[14]_i_1_n_0\,
      Q => s_oil_adr(14),
      R => rst
    );
\s_oil_adr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_0,
      D => \s_oil_adr[15]_i_1_n_0\,
      Q => s_oil_adr(15),
      R => rst
    );
\s_oil_adr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_0,
      D => \s_oil_adr[16]_i_1_n_0\,
      Q => s_oil_adr(16),
      R => rst
    );
\s_oil_adr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_0,
      D => \s_oil_adr[17]_i_1_n_0\,
      Q => s_oil_adr(17),
      R => rst
    );
\s_oil_adr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_0,
      D => \s_oil_adr[18]_i_1_n_0\,
      Q => s_oil_adr(18),
      R => rst
    );
\s_oil_adr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_0,
      D => \s_oil_adr[19]_i_1_n_0\,
      Q => s_oil_adr(19),
      R => rst
    );
\s_oil_adr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_0,
      D => \s_oil_adr[1]_i_1_n_0\,
      Q => s_oil_adr(1),
      R => rst
    );
\s_oil_adr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_0,
      D => \s_oil_adr[20]_i_1_n_0\,
      Q => s_oil_adr(20),
      R => rst
    );
\s_oil_adr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_0,
      D => \s_oil_adr[21]_i_1_n_0\,
      Q => s_oil_adr(21),
      R => rst
    );
\s_oil_adr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_0,
      D => \s_oil_adr[22]_i_1_n_0\,
      Q => s_oil_adr(22),
      R => rst
    );
\s_oil_adr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_0,
      D => \s_oil_adr[23]_i_1_n_0\,
      Q => s_oil_adr(23),
      R => rst
    );
\s_oil_adr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_0,
      D => \s_oil_adr[24]_i_1_n_0\,
      Q => s_oil_adr(24),
      R => rst
    );
\s_oil_adr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_0,
      D => \s_oil_adr[25]_i_1_n_0\,
      Q => s_oil_adr(25),
      R => rst
    );
\s_oil_adr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_0,
      D => \s_oil_adr[26]_i_1_n_0\,
      Q => s_oil_adr(26),
      R => rst
    );
\s_oil_adr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_0,
      D => \s_oil_adr[27]_i_1_n_0\,
      Q => s_oil_adr(27),
      R => rst
    );
\s_oil_adr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_0,
      D => \s_oil_adr[28]_i_1_n_0\,
      Q => s_oil_adr(28),
      R => rst
    );
\s_oil_adr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_0,
      D => \s_oil_adr[29]_i_1_n_0\,
      Q => s_oil_adr(29),
      R => rst
    );
\s_oil_adr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_0,
      D => \s_oil_adr[2]_i_1_n_0\,
      Q => s_oil_adr(2),
      R => rst
    );
\s_oil_adr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_0,
      D => \s_oil_adr[30]_i_1_n_0\,
      Q => s_oil_adr(30),
      R => rst
    );
\s_oil_adr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_0,
      D => \s_oil_adr[31]_i_1_n_0\,
      Q => s_oil_adr(31),
      R => rst
    );
\s_oil_adr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_0,
      D => \s_oil_adr[3]_i_1_n_0\,
      Q => s_oil_adr(3),
      R => rst
    );
\s_oil_adr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_0,
      D => \s_oil_adr[4]_i_1_n_0\,
      Q => s_oil_adr(4),
      R => rst
    );
\s_oil_adr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_0,
      D => \s_oil_adr[5]_i_1_n_0\,
      Q => s_oil_adr(5),
      R => rst
    );
\s_oil_adr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_0,
      D => \s_oil_adr[6]_i_1_n_0\,
      Q => s_oil_adr(6),
      R => rst
    );
\s_oil_adr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_0,
      D => \s_oil_adr[7]_i_1_n_0\,
      Q => s_oil_adr(7),
      R => rst
    );
\s_oil_adr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_0,
      D => \s_oil_adr[8]_i_1_n_0\,
      Q => s_oil_adr(8),
      R => rst
    );
\s_oil_adr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_0,
      D => \s_oil_adr[9]_i_1_n_0\,
      Q => s_oil_adr(9),
      R => rst
    );
\s_oil_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"26"
    )
        port map (
      I0 => \s_oil_index_reg_n_0_[2]\,
      I1 => s_oil_index,
      I2 => \t_state_reg_n_0_[2]\,
      O => \s_oil_index[2]_i_1_n_0\
    );
\s_oil_index[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A6A"
    )
        port map (
      I0 => \s_oil_index_reg_n_0_[3]\,
      I1 => \s_oil_index_reg_n_0_[2]\,
      I2 => s_oil_index,
      I3 => \t_state_reg_n_0_[2]\,
      O => \s_oil_index[3]_i_1_n_0\
    );
\s_oil_index[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1444"
    )
        port map (
      I0 => \t_state_reg_n_0_[2]\,
      I1 => \s_oil_index_reg_n_0_[4]\,
      I2 => \s_oil_index_reg_n_0_[3]\,
      I3 => \s_oil_index_reg_n_0_[2]\,
      O => \s_oil_index[4]_i_1_n_0\
    );
\s_oil_index[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14444444"
    )
        port map (
      I0 => \t_state_reg_n_0_[2]\,
      I1 => \s_oil_index_reg_n_0_[5]\,
      I2 => \s_oil_index_reg_n_0_[4]\,
      I3 => \s_oil_index_reg_n_0_[2]\,
      I4 => \s_oil_index_reg_n_0_[3]\,
      O => \s_oil_index[5]_i_1_n_0\
    );
\s_oil_index[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1444444444444444"
    )
        port map (
      I0 => \t_state_reg_n_0_[2]\,
      I1 => \s_oil_index_reg_n_0_[6]\,
      I2 => \s_oil_index_reg_n_0_[5]\,
      I3 => \s_oil_index_reg_n_0_[3]\,
      I4 => \s_oil_index_reg_n_0_[2]\,
      I5 => \s_oil_index_reg_n_0_[4]\,
      O => \s_oil_index[6]_i_1_n_0\
    );
\s_oil_index[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \s_oil_index_reg_n_0_[7]\,
      I1 => \s_oil_index_reg_n_0_[6]\,
      I2 => \s_oil_index_reg_n_0_[4]\,
      I3 => \s_oil_index_reg_n_0_[2]\,
      I4 => \s_oil_index_reg_n_0_[3]\,
      I5 => \s_oil_index_reg_n_0_[5]\,
      O => \s_oil_index[7]_i_1_n_0\
    );
\s_oil_index[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_state_reg_n_0_[2]\,
      I1 => s_oil_index,
      O => \s_oil_index[8]_i_1_n_0\
    );
\s_oil_index[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000A00250"
    )
        port map (
      I0 => \t_state_reg_n_0_[3]\,
      I1 => \s_oil_index[8]_i_4_n_0\,
      I2 => \t_state_reg_n_0_[2]\,
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[0]\,
      I5 => rst,
      O => s_oil_index
    );
\s_oil_index[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAAAAA"
    )
        port map (
      I0 => \s_oil_index_reg_n_0_[8]\,
      I1 => \s_oil_index_reg_n_0_[7]\,
      I2 => \s_oil_index_reg_n_0_[5]\,
      I3 => \s_oil_index[8]_i_5_n_0\,
      I4 => \s_oil_index_reg_n_0_[4]\,
      I5 => \s_oil_index_reg_n_0_[6]\,
      O => \s_oil_index[8]_i_3_n_0\
    );
\s_oil_index[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA88808888"
    )
        port map (
      I0 => \s_oil_index_reg_n_0_[8]\,
      I1 => \s_oil_index_reg_n_0_[6]\,
      I2 => \s_oil_index_reg_n_0_[4]\,
      I3 => \s_oil_index_reg_n_0_[5]\,
      I4 => \s_oil_index[8]_i_5_n_0\,
      I5 => \s_oil_index_reg_n_0_[7]\,
      O => \s_oil_index[8]_i_4_n_0\
    );
\s_oil_index[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \s_oil_index_reg_n_0_[2]\,
      I1 => \s_oil_index_reg_n_0_[3]\,
      O => \s_oil_index[8]_i_5_n_0\
    );
\s_oil_index_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => \s_oil_index[2]_i_1_n_0\,
      Q => \s_oil_index_reg_n_0_[2]\,
      R => '0'
    );
\s_oil_index_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => \s_oil_index[3]_i_1_n_0\,
      Q => \s_oil_index_reg_n_0_[3]\,
      R => '0'
    );
\s_oil_index_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_oil_index,
      D => \s_oil_index[4]_i_1_n_0\,
      Q => \s_oil_index_reg_n_0_[4]\,
      R => '0'
    );
\s_oil_index_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_oil_index,
      D => \s_oil_index[5]_i_1_n_0\,
      Q => \s_oil_index_reg_n_0_[5]\,
      R => '0'
    );
\s_oil_index_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_oil_index,
      D => \s_oil_index[6]_i_1_n_0\,
      Q => \s_oil_index_reg_n_0_[6]\,
      R => '0'
    );
\s_oil_index_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_oil_index,
      D => \s_oil_index[7]_i_1_n_0\,
      Q => \s_oil_index_reg_n_0_[7]\,
      R => \s_oil_index[8]_i_1_n_0\
    );
\s_oil_index_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_oil_index,
      D => \s_oil_index[8]_i_3_n_0\,
      Q => \s_oil_index_reg_n_0_[8]\,
      R => \s_oil_index[8]_i_1_n_0\
    );
\s_oil_space[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \s_oil_space[31]_i_3_n_0\,
      I1 => s_oil_space1(3),
      I2 => s_oil_space1(4),
      I3 => \t_state_reg_n_0_[0]\,
      I4 => \s_oil_space[31]_i_4_n_0\,
      O => \s_oil_space[15]_i_1_n_0\
    );
\s_oil_space[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \s_oil_space[31]_i_3_n_0\,
      I1 => s_oil_space1(3),
      I2 => \t_state_reg_n_0_[0]\,
      I3 => s_oil_space1(4),
      I4 => \s_oil_space[31]_i_4_n_0\,
      O => \s_oil_space[23]_i_1_n_0\
    );
\s_oil_space[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_rand(29),
      I1 => s_rand(13),
      I2 => s_oil_space2(3),
      I3 => s_rand(21),
      I4 => s_oil_space2(4),
      I5 => s_rand(5),
      O => s_oil_space0(29)
    );
\s_oil_space[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_rand(30),
      I1 => s_rand(14),
      I2 => s_oil_space2(3),
      I3 => s_rand(22),
      I4 => s_oil_space2(4),
      I5 => s_rand(6),
      O => s_oil_space0(30)
    );
\s_oil_space[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \s_oil_space[31]_i_3_n_0\,
      I1 => s_oil_space1(3),
      I2 => \t_state_reg_n_0_[0]\,
      I3 => s_oil_space1(4),
      I4 => \s_oil_space[31]_i_4_n_0\,
      O => \s_oil_space[31]_i_1_n_0\
    );
\s_oil_space[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_oil_space1(7),
      I1 => s_oil_space1(8),
      I2 => s_oil_space1(27),
      I3 => s_oil_space1(28),
      O => \s_oil_space[31]_i_10_n_0\
    );
\s_oil_space[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_rand(31),
      I1 => s_rand(15),
      I2 => s_oil_space2(3),
      I3 => s_rand(23),
      I4 => s_oil_space2(4),
      I5 => s_rand(7),
      O => s_oil_space0(31)
    );
\s_oil_space[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \s_oil_space[31]_i_5_n_0\,
      I1 => s_oil_space1(31),
      I2 => s_oil_space1(5),
      I3 => s_oil_space1(6),
      I4 => \s_oil_space[31]_i_6_n_0\,
      I5 => \s_oil_space[31]_i_7_n_0\,
      O => \s_oil_space[31]_i_3_n_0\
    );
\s_oil_space[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => \t_state_reg_n_0_[2]\,
      I2 => \t_state_reg_n_0_[3]\,
      O => \s_oil_space[31]_i_4_n_0\
    );
\s_oil_space[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => s_oil_space1(30),
      I1 => s_oil_space1(29),
      I2 => s_oil_space1(14),
      I3 => s_oil_space1(13),
      I4 => \s_oil_space[31]_i_8_n_0\,
      O => \s_oil_space[31]_i_5_n_0\
    );
\s_oil_space[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => s_oil_space1(26),
      I1 => s_oil_space1(25),
      I2 => s_oil_space1(16),
      I3 => s_oil_space1(15),
      I4 => \s_oil_space[31]_i_9_n_0\,
      O => \s_oil_space[31]_i_6_n_0\
    );
\s_oil_space[31]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => s_oil_space1(24),
      I1 => s_oil_space1(23),
      I2 => s_oil_space1(10),
      I3 => s_oil_space1(9),
      I4 => \s_oil_space[31]_i_10_n_0\,
      O => \s_oil_space[31]_i_7_n_0\
    );
\s_oil_space[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_oil_space1(17),
      I1 => s_oil_space1(18),
      I2 => s_oil_space1(19),
      I3 => s_oil_space1(20),
      O => \s_oil_space[31]_i_8_n_0\
    );
\s_oil_space[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_oil_space1(11),
      I1 => s_oil_space1(12),
      I2 => s_oil_space1(21),
      I3 => s_oil_space1(22),
      O => \s_oil_space[31]_i_9_n_0\
    );
\s_oil_space[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \s_oil_space[31]_i_3_n_0\,
      I1 => s_oil_space1(3),
      I2 => s_oil_space1(4),
      I3 => \t_state_reg_n_0_[0]\,
      I4 => \s_oil_space[31]_i_4_n_0\,
      O => \s_oil_space[7]_i_1_n_0\
    );
\s_oil_space_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[7]_i_1_n_0\,
      D => s_oil_space10_in(0),
      Q => s_oil_space(0),
      R => rst
    );
\s_oil_space_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[15]_i_1_n_0\,
      D => s_oil_space10_in(2),
      Q => s_oil_space(10),
      R => rst
    );
\s_oil_space_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[15]_i_1_n_0\,
      D => s_oil_space10_in(3),
      Q => s_oil_space(11),
      R => rst
    );
\s_oil_space_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[15]_i_1_n_0\,
      D => s_oil_space10_in(4),
      Q => s_oil_space(12),
      R => rst
    );
\s_oil_space_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[15]_i_1_n_0\,
      D => s_oil_space0(29),
      Q => s_oil_space(13),
      R => rst
    );
\s_oil_space_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[15]_i_1_n_0\,
      D => s_oil_space0(30),
      Q => s_oil_space(14),
      R => rst
    );
\s_oil_space_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[15]_i_1_n_0\,
      D => s_oil_space0(31),
      Q => s_oil_space(15),
      R => rst
    );
\s_oil_space_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[23]_i_1_n_0\,
      D => s_oil_space10_in(0),
      Q => s_oil_space(16),
      R => rst
    );
\s_oil_space_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[23]_i_1_n_0\,
      D => s_oil_space10_in(1),
      Q => s_oil_space(17),
      R => rst
    );
\s_oil_space_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[23]_i_1_n_0\,
      D => s_oil_space10_in(2),
      Q => s_oil_space(18),
      R => rst
    );
\s_oil_space_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[23]_i_1_n_0\,
      D => s_oil_space10_in(3),
      Q => s_oil_space(19),
      R => rst
    );
\s_oil_space_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[7]_i_1_n_0\,
      D => s_oil_space10_in(1),
      Q => s_oil_space(1),
      R => rst
    );
\s_oil_space_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[23]_i_1_n_0\,
      D => s_oil_space10_in(4),
      Q => s_oil_space(20),
      R => rst
    );
\s_oil_space_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[23]_i_1_n_0\,
      D => s_oil_space0(29),
      Q => s_oil_space(21),
      R => rst
    );
\s_oil_space_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[23]_i_1_n_0\,
      D => s_oil_space0(30),
      Q => s_oil_space(22),
      R => rst
    );
\s_oil_space_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[23]_i_1_n_0\,
      D => s_oil_space0(31),
      Q => s_oil_space(23),
      R => rst
    );
\s_oil_space_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[31]_i_1_n_0\,
      D => s_oil_space10_in(0),
      Q => s_oil_space(24),
      R => rst
    );
\s_oil_space_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[31]_i_1_n_0\,
      D => s_oil_space10_in(1),
      Q => s_oil_space(25),
      R => rst
    );
\s_oil_space_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[31]_i_1_n_0\,
      D => s_oil_space10_in(2),
      Q => s_oil_space(26),
      R => rst
    );
\s_oil_space_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[31]_i_1_n_0\,
      D => s_oil_space10_in(3),
      Q => s_oil_space(27),
      R => rst
    );
\s_oil_space_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[31]_i_1_n_0\,
      D => s_oil_space10_in(4),
      Q => s_oil_space(28),
      R => rst
    );
\s_oil_space_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[31]_i_1_n_0\,
      D => s_oil_space0(29),
      Q => s_oil_space(29),
      R => rst
    );
\s_oil_space_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[7]_i_1_n_0\,
      D => s_oil_space10_in(2),
      Q => s_oil_space(2),
      R => rst
    );
\s_oil_space_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[31]_i_1_n_0\,
      D => s_oil_space0(30),
      Q => s_oil_space(30),
      R => rst
    );
\s_oil_space_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[31]_i_1_n_0\,
      D => s_oil_space0(31),
      Q => s_oil_space(31),
      R => rst
    );
\s_oil_space_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[7]_i_1_n_0\,
      D => s_oil_space10_in(3),
      Q => s_oil_space(3),
      R => rst
    );
\s_oil_space_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[7]_i_1_n_0\,
      D => s_oil_space10_in(4),
      Q => s_oil_space(4),
      R => rst
    );
\s_oil_space_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[7]_i_1_n_0\,
      D => s_oil_space0(29),
      Q => s_oil_space(5),
      R => rst
    );
\s_oil_space_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[7]_i_1_n_0\,
      D => s_oil_space0(30),
      Q => s_oil_space(6),
      R => rst
    );
\s_oil_space_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[7]_i_1_n_0\,
      D => s_oil_space0(31),
      Q => s_oil_space(7),
      R => rst
    );
\s_oil_space_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[15]_i_1_n_0\,
      D => s_oil_space10_in(0),
      Q => s_oil_space(8),
      R => rst
    );
\s_oil_space_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[15]_i_1_n_0\,
      D => s_oil_space10_in(1),
      Q => s_oil_space(9),
      R => rst
    );
\s_rand[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \t_state_reg_n_0_[0]\,
      I1 => \t_state_reg_n_0_[2]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => \t_state_reg_n_0_[1]\,
      O => \s_rand[31]_i_1_n_0\
    );
\s_rand_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_rand[31]_i_1_n_0\,
      D => i_mema_dout(0),
      Q => s_rand(0),
      R => rst
    );
\s_rand_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_rand[31]_i_1_n_0\,
      D => i_mema_dout(10),
      Q => s_rand(10),
      R => rst
    );
\s_rand_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_rand[31]_i_1_n_0\,
      D => i_mema_dout(11),
      Q => s_rand(11),
      R => rst
    );
\s_rand_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_rand[31]_i_1_n_0\,
      D => i_mema_dout(12),
      Q => s_rand(12),
      R => rst
    );
\s_rand_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_rand[31]_i_1_n_0\,
      D => i_mema_dout(13),
      Q => s_rand(13),
      R => rst
    );
\s_rand_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_rand[31]_i_1_n_0\,
      D => i_mema_dout(14),
      Q => s_rand(14),
      R => rst
    );
\s_rand_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_rand[31]_i_1_n_0\,
      D => i_mema_dout(15),
      Q => s_rand(15),
      R => rst
    );
\s_rand_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_rand[31]_i_1_n_0\,
      D => i_mema_dout(16),
      Q => s_rand(16),
      R => rst
    );
\s_rand_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_rand[31]_i_1_n_0\,
      D => i_mema_dout(17),
      Q => s_rand(17),
      R => rst
    );
\s_rand_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_rand[31]_i_1_n_0\,
      D => i_mema_dout(18),
      Q => s_rand(18),
      R => rst
    );
\s_rand_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_rand[31]_i_1_n_0\,
      D => i_mema_dout(19),
      Q => s_rand(19),
      R => rst
    );
\s_rand_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_rand[31]_i_1_n_0\,
      D => i_mema_dout(1),
      Q => s_rand(1),
      R => rst
    );
\s_rand_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_rand[31]_i_1_n_0\,
      D => i_mema_dout(20),
      Q => s_rand(20),
      R => rst
    );
\s_rand_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_rand[31]_i_1_n_0\,
      D => i_mema_dout(21),
      Q => s_rand(21),
      R => rst
    );
\s_rand_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_rand[31]_i_1_n_0\,
      D => i_mema_dout(22),
      Q => s_rand(22),
      R => rst
    );
\s_rand_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_rand[31]_i_1_n_0\,
      D => i_mema_dout(23),
      Q => s_rand(23),
      R => rst
    );
\s_rand_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_rand[31]_i_1_n_0\,
      D => i_mema_dout(24),
      Q => s_rand(24),
      R => rst
    );
\s_rand_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_rand[31]_i_1_n_0\,
      D => i_mema_dout(25),
      Q => s_rand(25),
      R => rst
    );
\s_rand_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_rand[31]_i_1_n_0\,
      D => i_mema_dout(26),
      Q => s_rand(26),
      R => rst
    );
\s_rand_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_rand[31]_i_1_n_0\,
      D => i_mema_dout(27),
      Q => s_rand(27),
      R => rst
    );
\s_rand_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_rand[31]_i_1_n_0\,
      D => i_mema_dout(28),
      Q => s_rand(28),
      R => rst
    );
\s_rand_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_rand[31]_i_1_n_0\,
      D => i_mema_dout(29),
      Q => s_rand(29),
      R => rst
    );
\s_rand_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_rand[31]_i_1_n_0\,
      D => i_mema_dout(2),
      Q => s_rand(2),
      R => rst
    );
\s_rand_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_rand[31]_i_1_n_0\,
      D => i_mema_dout(30),
      Q => s_rand(30),
      R => rst
    );
\s_rand_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_rand[31]_i_1_n_0\,
      D => i_mema_dout(31),
      Q => s_rand(31),
      R => rst
    );
\s_rand_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_rand[31]_i_1_n_0\,
      D => i_mema_dout(3),
      Q => s_rand(3),
      R => rst
    );
\s_rand_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_rand[31]_i_1_n_0\,
      D => i_mema_dout(4),
      Q => s_rand(4),
      R => rst
    );
\s_rand_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_rand[31]_i_1_n_0\,
      D => i_mema_dout(5),
      Q => s_rand(5),
      R => rst
    );
\s_rand_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_rand[31]_i_1_n_0\,
      D => i_mema_dout(6),
      Q => s_rand(6),
      R => rst
    );
\s_rand_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_rand[31]_i_1_n_0\,
      D => i_mema_dout(7),
      Q => s_rand(7),
      R => rst
    );
\s_rand_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_rand[31]_i_1_n_0\,
      D => i_mema_dout(8),
      Q => s_rand(8),
      R => rst
    );
\s_rand_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_rand[31]_i_1_n_0\,
      D => i_mema_dout(9),
      Q => s_rand(9),
      R => rst
    );
\t_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000077777F77"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => \t_state[0]_i_2_n_0\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[3]\,
      I4 => \t_state[0]_i_3_n_0\,
      I5 => \t_state[0]_i_4_n_0\,
      O => t_state(0)
    );
\t_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDFFF"
    )
        port map (
      I0 => \t_state_reg_n_0_[0]\,
      I1 => \i0_inferred__0/i__carry__2_n_0\,
      I2 => \t_state[2]_i_2_n_0\,
      I3 => \t_state_reg_n_0_[2]\,
      I4 => \t_state_reg_n_0_[3]\,
      O => \t_state[0]_i_2_n_0\
    );
\t_state[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i0_inferred__0/i__carry__2_n_0\,
      I1 => \s_oil_index[8]_i_4_n_0\,
      O => \t_state[0]_i_3_n_0\
    );
\t_state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2300220022002200"
    )
        port map (
      I0 => \t_state_reg_n_0_[0]\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[2]\,
      I3 => \t_state_reg_n_0_[3]\,
      I4 => \i0_inferred__0/i__carry__2_n_0\,
      I5 => \i1_carry__2_n_0\,
      O => \t_state[0]_i_4_n_0\
    );
\t_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C708"
    )
        port map (
      I0 => \t_state_reg_n_0_[2]\,
      I1 => \t_state_reg_n_0_[3]\,
      I2 => \t_state_reg_n_0_[1]\,
      I3 => \t_state_reg_n_0_[0]\,
      O => t_state(1)
    );
\t_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC88CCCCFFFFFCCC"
    )
        port map (
      I0 => \t_state[2]_i_2_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \i1_carry__2_n_0\,
      I3 => \t_state_reg_n_0_[3]\,
      I4 => \t_state_reg_n_0_[2]\,
      I5 => \t_state_reg_n_0_[0]\,
      O => t_state(2)
    );
\t_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => tmp(3),
      I1 => tmp(2),
      I2 => tmp(0),
      I3 => tmp(4),
      I4 => tmp(1),
      O => \t_state[2]_i_2_n_0\
    );
\t_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF0FFFEFFFAFFFE"
    )
        port map (
      I0 => \t_state_reg_n_0_[0]\,
      I1 => i_enable,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => \t_state_reg_n_0_[2]\,
      I4 => \t_state_reg_n_0_[1]\,
      I5 => \t_state[3]_i_3_n_0\,
      O => \t_state[3]_i_1_n_0\
    );
\t_state[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => index(13),
      I1 => index(14),
      I2 => index(15),
      I3 => index(12),
      I4 => index(11),
      I5 => index(10),
      O => \t_state[3]_i_10_n_0\
    );
\t_state[3]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => index(28),
      I1 => index(30),
      I2 => index(24),
      I3 => index(27),
      O => \t_state[3]_i_11_n_0\
    );
\t_state[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF02FFFF"
    )
        port map (
      I0 => \t_state[3]_i_6_n_0\,
      I1 => \t_state[3]_i_7_n_0\,
      I2 => \t_state[3]_i_8_n_0\,
      I3 => \t_state_reg_n_0_[3]\,
      I4 => i_trng_valid,
      O => \t_state[3]_i_3_n_0\
    );
\t_state[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66662022"
    )
        port map (
      I0 => \t_state_reg_n_0_[3]\,
      I1 => \t_state_reg_n_0_[2]\,
      I2 => \i0_inferred__0/i__carry__2_n_0\,
      I3 => \i1_carry__2_n_0\,
      I4 => \t_state_reg_n_0_[0]\,
      O => \t_state[3]_i_4_n_0\
    );
\t_state[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30300030FCFCB8B8"
    )
        port map (
      I0 => \s_oil_index[8]_i_4_n_0\,
      I1 => \t_state_reg_n_0_[3]\,
      I2 => \t_state_reg_n_0_[2]\,
      I3 => \t_state[2]_i_2_n_0\,
      I4 => \i0_inferred__0/i__carry__2_n_0\,
      I5 => \t_state_reg_n_0_[0]\,
      O => \t_state[3]_i_5_n_0\
    );
\t_state[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555777F"
    )
        port map (
      I0 => index(9),
      I1 => index(7),
      I2 => index(6),
      I3 => index(5),
      I4 => index(8),
      O => \t_state[3]_i_6_n_0\
    );
\t_state[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \t_state[3]_i_9_n_0\,
      I1 => index(26),
      I2 => index(25),
      I3 => index(29),
      O => \t_state[3]_i_7_n_0\
    );
\t_state[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \t_state[3]_i_10_n_0\,
      I1 => \t_state[3]_i_11_n_0\,
      I2 => index(20),
      I3 => index(23),
      I4 => index(17),
      I5 => index(18),
      O => \t_state[3]_i_8_n_0\
    );
\t_state[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => index(21),
      I1 => index(22),
      I2 => index(16),
      I3 => index(19),
      O => \t_state[3]_i_9_n_0\
    );
\t_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \t_state[3]_i_1_n_0\,
      D => t_state(0),
      Q => \t_state_reg_n_0_[0]\,
      R => rst
    );
\t_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \t_state[3]_i_1_n_0\,
      D => t_state(1),
      Q => \t_state_reg_n_0_[1]\,
      R => rst
    );
\t_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \t_state[3]_i_1_n_0\,
      D => t_state(2),
      Q => \t_state_reg_n_0_[2]\,
      R => rst
    );
\t_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \t_state[3]_i_1_n_0\,
      D => t_state(3),
      Q => \t_state_reg_n_0_[3]\,
      R => rst
    );
\t_state_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \t_state[3]_i_4_n_0\,
      I1 => \t_state[3]_i_5_n_0\,
      O => t_state(3),
      S => \t_state_reg_n_0_[1]\
    );
\tmp[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_rand(24),
      I1 => s_rand(8),
      I2 => s_oil_space2(3),
      I3 => s_rand(16),
      I4 => s_oil_space2(4),
      I5 => s_rand(0),
      O => s_oil_space10_in(0)
    );
\tmp[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_rand(25),
      I1 => s_rand(9),
      I2 => s_oil_space2(3),
      I3 => s_rand(17),
      I4 => s_oil_space2(4),
      I5 => s_rand(1),
      O => s_oil_space10_in(1)
    );
\tmp[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_rand(26),
      I1 => s_rand(10),
      I2 => s_oil_space2(3),
      I3 => s_rand(18),
      I4 => s_oil_space2(4),
      I5 => s_rand(2),
      O => s_oil_space10_in(2)
    );
\tmp[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_rand(27),
      I1 => s_rand(11),
      I2 => s_oil_space2(3),
      I3 => s_rand(19),
      I4 => s_oil_space2(4),
      I5 => s_rand(3),
      O => s_oil_space10_in(3)
    );
\tmp[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \t_state_reg_n_0_[0]\,
      I1 => \t_state_reg_n_0_[2]\,
      I2 => \t_state_reg_n_0_[1]\,
      I3 => \t_state_reg_n_0_[3]\,
      O => \tmp[4]_i_1_n_0\
    );
\tmp[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_rand(28),
      I1 => s_rand(12),
      I2 => s_oil_space2(3),
      I3 => s_rand(20),
      I4 => s_oil_space2(4),
      I5 => s_rand(4),
      O => s_oil_space10_in(4)
    );
\tmp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \tmp[4]_i_1_n_0\,
      D => s_oil_space10_in(0),
      Q => tmp(0),
      R => rst
    );
\tmp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \tmp[4]_i_1_n_0\,
      D => s_oil_space10_in(1),
      Q => tmp(1),
      R => rst
    );
\tmp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \tmp[4]_i_1_n_0\,
      D => s_oil_space10_in(2),
      Q => tmp(2),
      R => rst
    );
\tmp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \tmp[4]_i_1_n_0\,
      D => s_oil_space10_in(3),
      Q => tmp(3),
      R => rst
    );
\tmp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \tmp[4]_i_1_n_0\,
      D => s_oil_space10_in(4),
      Q => tmp(4),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    i_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    i_enable : in STD_LOGIC;
    o_done : out STD_LOGIC;
    i_oil_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mode : in STD_LOGIC;
    o_trng_en : out STD_LOGIC;
    i_trng_valid : in STD_LOGIC;
    i_trng_data : in STD_LOGIC_VECTOR ( 127 downto 0 );
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Mayo_sign_mayo_sample_oil_space_0_0,mayo_sample_oil_space,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "mayo_sample_oil_space,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^o_mema_we\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \^o_memb_we\ : STD_LOGIC_VECTOR ( 2 to 2 );
  attribute x_interface_info : string;
  attribute x_interface_info of i_clk : signal is "xilinx.com:signal:clock:1.0 i_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of i_clk : signal is "XIL_INTERFACENAME i_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN Mayo_sign_clk, INSERT_VIP 0";
  attribute x_interface_info of o_controla : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sama CTRL";
  attribute x_interface_info of o_controlb : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Samb CTRL";
  attribute x_interface_info of o_mema_en : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sama EN";
  attribute x_interface_info of o_mema_rst : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sama RST";
  attribute x_interface_info of o_memb_en : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Samb EN";
  attribute x_interface_info of o_memb_rst : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Samb RST";
  attribute x_interface_info of o_trng_en : signal is "MAYO:user:BRAM_BUS_custom:1.0 o_trng EN";
  attribute x_interface_info of rst : signal is "MAYO:user:BRAM_BUS_custom:1.0 o_trng RST";
  attribute x_interface_info of i_mema_dout : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sama DOUT";
  attribute x_interface_info of i_memb_dout : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Samb DOUT";
  attribute x_interface_ignore : string;
  attribute x_interface_ignore of i_oil_addr : signal is "TRUE";
  attribute x_interface_info of o_mema_addr : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sama ADDR";
  attribute x_interface_info of o_mema_din : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sama DIN";
  attribute x_interface_info of o_mema_we : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sama WE";
  attribute x_interface_info of o_memb_addr : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Samb ADDR";
  attribute x_interface_info of o_memb_din : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Samb DIN";
  attribute x_interface_info of o_memb_we : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Samb WE";
begin
  o_mema_rst <= \<const0>\;
  o_mema_we(3) <= \^o_mema_we\(2);
  o_mema_we(2) <= \^o_mema_we\(2);
  o_mema_we(1) <= \^o_mema_we\(2);
  o_mema_we(0) <= \^o_mema_we\(2);
  o_memb_rst <= \<const0>\;
  o_memb_we(3) <= \^o_memb_we\(2);
  o_memb_we(2) <= \^o_memb_we\(2);
  o_memb_we(1) <= \^o_memb_we\(2);
  o_memb_we(0) <= \^o_memb_we\(2);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mayo_sample_oil_space
     port map (
      i_clk => i_clk,
      i_enable => i_enable,
      i_mema_dout(31 downto 0) => i_mema_dout(31 downto 0),
      i_mode => i_mode,
      i_oil_addr(31 downto 0) => i_oil_addr(31 downto 0),
      i_trng_data(31 downto 0) => i_trng_data(31 downto 0),
      i_trng_valid => i_trng_valid,
      o_controla => o_controla,
      o_controlb => o_controlb,
      o_done => o_done,
      o_mema_addr(31 downto 0) => o_mema_addr(31 downto 0),
      o_mema_din(31 downto 0) => o_mema_din(31 downto 0),
      o_mema_en => o_mema_en,
      o_mema_we(0) => \^o_mema_we\(2),
      o_memb_addr(31 downto 0) => o_memb_addr(31 downto 0),
      o_memb_din(31 downto 0) => o_memb_din(31 downto 0),
      o_memb_en => o_memb_en,
      o_memb_we(0) => \^o_memb_we\(2),
      o_trng_en => o_trng_en,
      o_trng_sel => o_trng_sel,
      rst => rst
    );
end STRUCTURE;
