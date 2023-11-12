-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Sun Nov 12 18:19:46 2023
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
    o_trng_r : out STD_LOGIC;
    o_trng_w : out STD_LOGIC;
    o_trng_data : out STD_LOGIC_VECTOR ( 0 to 0 );
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
    i_trng_done : in STD_LOGIC;
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
  signal \i[31]_i_3_n_0\ : STD_LOGIC;
  signal \i[31]_i_4_n_0\ : STD_LOGIC;
  signal \i[31]_i_5_n_0\ : STD_LOGIC;
  signal \i[31]_i_6_n_0\ : STD_LOGIC;
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
  signal \i_reg[31]_i_7_n_2\ : STD_LOGIC;
  signal \i_reg[31]_i_7_n_3\ : STD_LOGIC;
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
  signal \index[2]_i_1_n_0\ : STD_LOGIC;
  signal \index[2]_i_3_n_0\ : STD_LOGIC;
  signal index_reg : STD_LOGIC_VECTOR ( 30 downto 2 );
  signal \index_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \index_reg[10]_i_1_n_1\ : STD_LOGIC;
  signal \index_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \index_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \index_reg[10]_i_1_n_4\ : STD_LOGIC;
  signal \index_reg[10]_i_1_n_5\ : STD_LOGIC;
  signal \index_reg[10]_i_1_n_6\ : STD_LOGIC;
  signal \index_reg[10]_i_1_n_7\ : STD_LOGIC;
  signal \index_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \index_reg[14]_i_1_n_1\ : STD_LOGIC;
  signal \index_reg[14]_i_1_n_2\ : STD_LOGIC;
  signal \index_reg[14]_i_1_n_3\ : STD_LOGIC;
  signal \index_reg[14]_i_1_n_4\ : STD_LOGIC;
  signal \index_reg[14]_i_1_n_5\ : STD_LOGIC;
  signal \index_reg[14]_i_1_n_6\ : STD_LOGIC;
  signal \index_reg[14]_i_1_n_7\ : STD_LOGIC;
  signal \index_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \index_reg[18]_i_1_n_1\ : STD_LOGIC;
  signal \index_reg[18]_i_1_n_2\ : STD_LOGIC;
  signal \index_reg[18]_i_1_n_3\ : STD_LOGIC;
  signal \index_reg[18]_i_1_n_4\ : STD_LOGIC;
  signal \index_reg[18]_i_1_n_5\ : STD_LOGIC;
  signal \index_reg[18]_i_1_n_6\ : STD_LOGIC;
  signal \index_reg[18]_i_1_n_7\ : STD_LOGIC;
  signal \index_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \index_reg[22]_i_1_n_1\ : STD_LOGIC;
  signal \index_reg[22]_i_1_n_2\ : STD_LOGIC;
  signal \index_reg[22]_i_1_n_3\ : STD_LOGIC;
  signal \index_reg[22]_i_1_n_4\ : STD_LOGIC;
  signal \index_reg[22]_i_1_n_5\ : STD_LOGIC;
  signal \index_reg[22]_i_1_n_6\ : STD_LOGIC;
  signal \index_reg[22]_i_1_n_7\ : STD_LOGIC;
  signal \index_reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \index_reg[26]_i_1_n_1\ : STD_LOGIC;
  signal \index_reg[26]_i_1_n_2\ : STD_LOGIC;
  signal \index_reg[26]_i_1_n_3\ : STD_LOGIC;
  signal \index_reg[26]_i_1_n_4\ : STD_LOGIC;
  signal \index_reg[26]_i_1_n_5\ : STD_LOGIC;
  signal \index_reg[26]_i_1_n_6\ : STD_LOGIC;
  signal \index_reg[26]_i_1_n_7\ : STD_LOGIC;
  signal \index_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \index_reg[2]_i_2_n_1\ : STD_LOGIC;
  signal \index_reg[2]_i_2_n_2\ : STD_LOGIC;
  signal \index_reg[2]_i_2_n_3\ : STD_LOGIC;
  signal \index_reg[2]_i_2_n_4\ : STD_LOGIC;
  signal \index_reg[2]_i_2_n_5\ : STD_LOGIC;
  signal \index_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \index_reg[2]_i_2_n_7\ : STD_LOGIC;
  signal \index_reg[30]_i_1_n_7\ : STD_LOGIC;
  signal \index_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \index_reg[6]_i_1_n_1\ : STD_LOGIC;
  signal \index_reg[6]_i_1_n_2\ : STD_LOGIC;
  signal \index_reg[6]_i_1_n_3\ : STD_LOGIC;
  signal \index_reg[6]_i_1_n_4\ : STD_LOGIC;
  signal \index_reg[6]_i_1_n_5\ : STD_LOGIC;
  signal \index_reg[6]_i_1_n_6\ : STD_LOGIC;
  signal \index_reg[6]_i_1_n_7\ : STD_LOGIC;
  signal k0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \k[31]_i_1_n_0\ : STD_LOGIC;
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
  signal mode_i_2_n_0 : STD_LOGIC;
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
  signal o_mema_addr_2 : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  signal \^o_trng_data\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \o_trng_data[9]_i_1_n_0\ : STD_LOGIC;
  signal \^o_trng_r\ : STD_LOGIC;
  signal o_trng_r_i_1_n_0 : STD_LOGIC;
  signal \^o_trng_sel\ : STD_LOGIC;
  signal o_trng_sel_i_1_n_0 : STD_LOGIC;
  signal \^o_trng_w\ : STD_LOGIC;
  signal o_trng_w_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  signal s_ctr_0 : STD_LOGIC;
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
  signal s_oil_adr_3 : STD_LOGIC;
  signal s_oil_index : STD_LOGIC_VECTOR ( 8 downto 2 );
  signal \s_oil_index[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_oil_index[8]_i_3_n_0\ : STD_LOGIC;
  signal \s_oil_index[8]_i_4_n_0\ : STD_LOGIC;
  signal s_oil_index_1 : STD_LOGIC;
  signal \s_oil_index_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_oil_index_reg_n_0_[3]\ : STD_LOGIC;
  signal \s_oil_index_reg_n_0_[4]\ : STD_LOGIC;
  signal \s_oil_index_reg_n_0_[5]\ : STD_LOGIC;
  signal \s_oil_index_reg_n_0_[6]\ : STD_LOGIC;
  signal \s_oil_index_reg_n_0_[7]\ : STD_LOGIC;
  signal \s_oil_index_reg_n_0_[8]\ : STD_LOGIC;
  signal s_oil_space : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_oil_space1 : STD_LOGIC_VECTOR ( 31 downto 3 );
  signal s_oil_space10_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \s_oil_space10_in__0\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal s_oil_space2 : STD_LOGIC_VECTOR ( 31 downto 3 );
  signal \s_oil_space[15]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_space[23]_i_1_n_0\ : STD_LOGIC;
  signal \s_oil_space[23]_i_2_n_0\ : STD_LOGIC;
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
  signal \t_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \t_state[2]_rep_i_1__0_n_0\ : STD_LOGIC;
  signal \t_state[2]_rep_i_1_n_0\ : STD_LOGIC;
  signal \t_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \t_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \t_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \t_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \t_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \t_state_reg[2]_rep__0_n_0\ : STD_LOGIC;
  signal \t_state_reg[2]_rep_n_0\ : STD_LOGIC;
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
  signal \NLW_i1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i_reg[31]_i_7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i_reg[31]_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_index_reg[30]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_index_reg[30]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
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
  attribute SOFT_HLUTNM of \i[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \i[10]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \i[11]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \i[12]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \i[13]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \i[14]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \i[15]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \i[16]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \i[17]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \i[18]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \i[19]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \i[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \i[20]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \i[21]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \i[22]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \i[23]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \i[24]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \i[25]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \i[26]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \i[27]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \i[28]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \i[29]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \i[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \i[30]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \i[31]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \i[31]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \i[31]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \i[31]_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \i[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \i[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \i[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \i[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \i[8]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \i[9]_i_1\ : label is "soft_lutpair11";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \i_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \i_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \i_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \i_reg[24]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \i_reg[28]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \i_reg[31]_i_7\ : label is 35;
  attribute ADDER_THRESHOLD of \i_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \i_reg[8]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \index_reg[10]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \index_reg[14]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \index_reg[18]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \index_reg[22]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \index_reg[26]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \index_reg[2]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \index_reg[30]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \index_reg[6]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \k[0]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \k[10]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \k[11]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \k[12]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \k[13]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \k[14]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \k[15]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \k[16]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \k[17]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \k[18]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \k[19]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \k[1]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \k[20]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \k[21]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \k[22]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \k[23]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \k[24]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \k[25]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \k[26]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \k[27]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \k[28]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \k[29]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \k[2]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \k[30]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \k[31]_i_2\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \k[3]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \k[4]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \k[5]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \k[6]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \k[7]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \k[8]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \k[9]_i_1\ : label is "soft_lutpair44";
  attribute ADDER_THRESHOLD of \k_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \k_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \k_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \k_reg[24]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \k_reg[28]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \k_reg[31]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \k_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \k_reg[8]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of mode_i_2 : label is "soft_lutpair3";
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
  attribute SOFT_HLUTNM of \o_mema_addr[0]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \o_mema_addr[1]_i_1\ : label is "soft_lutpair24";
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
  attribute SOFT_HLUTNM of \o_mema_din[0]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \o_mema_din[10]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \o_mema_din[11]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \o_mema_din[12]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \o_mema_din[13]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \o_mema_din[14]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \o_mema_din[15]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \o_mema_din[16]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \o_mema_din[17]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \o_mema_din[18]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \o_mema_din[19]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \o_mema_din[1]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \o_mema_din[20]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \o_mema_din[21]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \o_mema_din[22]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \o_mema_din[23]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \o_mema_din[24]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \o_mema_din[25]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \o_mema_din[26]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \o_mema_din[27]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \o_mema_din[28]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \o_mema_din[29]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \o_mema_din[2]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \o_mema_din[30]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \o_mema_din[31]_i_2\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \o_mema_din[3]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \o_mema_din[4]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \o_mema_din[5]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \o_mema_din[6]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \o_mema_din[7]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \o_mema_din[8]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \o_mema_din[9]_i_1\ : label is "soft_lutpair68";
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
  attribute SOFT_HLUTNM of o_mema_en_i_2 : label is "soft_lutpair4";
  attribute x_interface_info of o_mema_en_reg : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama EN";
  attribute x_interface_info of \o_mema_we_reg[3]\ : label is "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sama WE";
  attribute SOFT_HLUTNM of \o_memb_addr[0]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \o_memb_addr[10]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \o_memb_addr[11]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \o_memb_addr[12]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \o_memb_addr[13]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \o_memb_addr[14]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \o_memb_addr[15]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \o_memb_addr[16]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \o_memb_addr[17]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \o_memb_addr[18]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \o_memb_addr[19]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \o_memb_addr[1]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \o_memb_addr[20]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \o_memb_addr[21]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \o_memb_addr[22]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \o_memb_addr[23]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \o_memb_addr[24]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \o_memb_addr[25]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \o_memb_addr[26]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \o_memb_addr[27]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \o_memb_addr[28]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \o_memb_addr[29]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \o_memb_addr[2]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \o_memb_addr[30]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \o_memb_addr[31]_i_2\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \o_memb_addr[3]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \o_memb_addr[4]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \o_memb_addr[5]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \o_memb_addr[6]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \o_memb_addr[7]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \o_memb_addr[8]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \o_memb_addr[9]_i_1\ : label is "soft_lutpair100";
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
  attribute ADDER_THRESHOLD of s_ctr0_carry : label is 35;
  attribute ADDER_THRESHOLD of \s_ctr0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \s_ctr0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \s_ctr0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \s_ctr0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \s_ctr0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \s_ctr0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \s_ctr0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \s_ctr[10]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \s_ctr[11]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s_ctr[12]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s_ctr[13]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \s_ctr[14]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \s_ctr[15]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \s_ctr[16]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \s_ctr[17]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \s_ctr[18]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \s_ctr[19]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \s_ctr[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_ctr[20]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \s_ctr[21]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \s_ctr[22]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \s_ctr[23]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \s_ctr[24]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \s_ctr[25]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \s_ctr[26]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \s_ctr[27]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \s_ctr[28]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \s_ctr[29]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \s_ctr[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_ctr[30]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \s_ctr[30]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_ctr[3]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s_ctr[4]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s_ctr[5]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \s_ctr[6]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \s_ctr[7]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s_ctr[8]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s_ctr[9]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \s_oil_adr[0]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \s_oil_adr[10]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \s_oil_adr[11]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \s_oil_adr[12]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \s_oil_adr[13]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \s_oil_adr[14]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \s_oil_adr[15]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \s_oil_adr[16]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \s_oil_adr[17]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \s_oil_adr[18]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \s_oil_adr[19]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \s_oil_adr[1]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \s_oil_adr[20]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \s_oil_adr[21]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \s_oil_adr[22]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \s_oil_adr[23]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \s_oil_adr[24]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \s_oil_adr[25]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \s_oil_adr[26]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \s_oil_adr[27]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \s_oil_adr[28]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \s_oil_adr[29]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \s_oil_adr[2]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \s_oil_adr[30]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \s_oil_adr[31]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \s_oil_adr[3]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \s_oil_adr[4]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \s_oil_adr[5]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \s_oil_adr[6]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \s_oil_adr[7]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \s_oil_adr[8]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \s_oil_adr[9]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \s_oil_index[2]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \s_oil_index[3]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \s_oil_index[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_oil_index[5]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_oil_index[7]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_oil_index[8]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s_oil_index[8]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_oil_space[23]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s_oil_space[31]_i_3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \t_state[0]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \t_state[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \t_state[3]_i_4\ : label is "soft_lutpair2";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \t_state_reg[2]\ : label is "t_state_reg[2]";
  attribute ORIG_CELL_NAME of \t_state_reg[2]_rep\ : label is "t_state_reg[2]";
  attribute ORIG_CELL_NAME of \t_state_reg[2]_rep__0\ : label is "t_state_reg[2]";
begin
  o_done <= \^o_done\;
  o_mema_en <= \^o_mema_en\;
  o_mema_we(0) <= \^o_mema_we\(0);
  o_memb_en <= \^o_memb_en\;
  o_memb_we(0) <= \^o_memb_we\(0);
  o_trng_data(0) <= \^o_trng_data\(0);
  o_trng_r <= \^o_trng_r\;
  o_trng_sel <= \^o_trng_sel\;
  o_trng_w <= \^o_trng_w\;
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
      CYINIT => i1_carry_i_1_n_0,
      DI(3 downto 0) => B"0000",
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
      I0 => s_oil_space1(20),
      I1 => s_oil_space1(19),
      O => \i1_carry__0_i_1_n_0\
    );
\i1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space1(18),
      I1 => s_oil_space1(17),
      O => \i1_carry__0_i_2_n_0\
    );
\i1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space1(16),
      I1 => s_oil_space1(15),
      O => \i1_carry__0_i_3_n_0\
    );
\i1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space1(14),
      I1 => s_oil_space1(13),
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
      I0 => s_oil_space1(28),
      I1 => s_oil_space1(27),
      O => \i1_carry__1_i_1_n_0\
    );
\i1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space1(26),
      I1 => s_oil_space1(25),
      O => \i1_carry__1_i_2_n_0\
    );
\i1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space1(24),
      I1 => s_oil_space1(23),
      O => \i1_carry__1_i_3_n_0\
    );
\i1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space1(22),
      I1 => s_oil_space1(21),
      O => \i1_carry__1_i_4_n_0\
    );
\i1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \i1_carry__1_n_0\,
      CO(3) => \NLW_i1_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \i1_carry__2_n_1\,
      CO(1) => \i1_carry__2_n_2\,
      CO(0) => \i1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \k_reg_n_0_[31]\,
      DI(1 downto 0) => B"00",
      O(3 downto 0) => \NLW_i1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i1_carry__2_i_1_n_0\,
      S(1) => \i1_carry__2_i_2_n_0\,
      S(0) => \i1_carry__2_i_3_n_0\
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
      I0 => s_oil_space1(30),
      I1 => s_oil_space1(29),
      O => \i1_carry__2_i_3_n_0\
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
      I0 => s_oil_space1(12),
      I1 => s_oil_space1(11),
      O => i1_carry_i_2_n_0
    );
i1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space1(10),
      I1 => s_oil_space1(9),
      O => i1_carry_i_3_n_0
    );
i1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space1(8),
      I1 => s_oil_space1(7),
      O => i1_carry_i_4_n_0
    );
i1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_oil_space1(6),
      I1 => s_oil_space1(5),
      O => i1_carry_i_5_n_0
    );
\i[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"008D"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => s_oil_space2(3),
      O => p_0_in(0)
    );
\i[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8D00"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => i0(10),
      O => p_0_in(10)
    );
\i[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8D00"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => i0(11),
      O => p_0_in(11)
    );
\i[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8D00"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => i0(12),
      O => p_0_in(12)
    );
\i[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8D00"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => i0(13),
      O => p_0_in(13)
    );
\i[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8D00"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => i0(14),
      O => p_0_in(14)
    );
\i[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8D00"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => i0(15),
      O => p_0_in(15)
    );
\i[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8D00"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => i0(16),
      O => p_0_in(16)
    );
\i[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8D00"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => i0(17),
      O => p_0_in(17)
    );
\i[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8D00"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => i0(18),
      O => p_0_in(18)
    );
\i[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8D00"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => i0(19),
      O => p_0_in(19)
    );
\i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8D00"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => i0(1),
      O => p_0_in(1)
    );
\i[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8D00"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => i0(20),
      O => p_0_in(20)
    );
\i[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8D00"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => i0(21),
      O => p_0_in(21)
    );
\i[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8D00"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => i0(22),
      O => p_0_in(22)
    );
\i[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8D00"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => i0(23),
      O => p_0_in(23)
    );
\i[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8D00"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => i0(24),
      O => p_0_in(24)
    );
\i[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8D00"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => i0(25),
      O => p_0_in(25)
    );
\i[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8D00"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => i0(26),
      O => p_0_in(26)
    );
\i[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8D00"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => i0(27),
      O => p_0_in(27)
    );
\i[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8D00"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => i0(28),
      O => p_0_in(28)
    );
\i[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8D00"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => i0(29),
      O => p_0_in(29)
    );
\i[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8D00"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => i0(2),
      O => p_0_in(2)
    );
\i[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8D00"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => i0(30),
      O => p_0_in(30)
    );
\i[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAAAAAAAEAAA"
    )
        port map (
      I0 => \i[31]_i_3_n_0\,
      I1 => \i[31]_i_4_n_0\,
      I2 => \i0_inferred__0/i__carry__2_n_0\,
      I3 => \i[31]_i_5_n_0\,
      I4 => \t_state_reg_n_0_[1]\,
      I5 => \i[31]_i_6_n_0\,
      O => i
    );
\i[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8D00"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => i0(31),
      O => p_0_in(31)
    );
\i[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \t_state_reg_n_0_[3]\,
      I1 => \t_state_reg[2]_rep_n_0\,
      I2 => \t_state_reg_n_0_[1]\,
      I3 => \t_state_reg_n_0_[0]\,
      O => \i[31]_i_3_n_0\
    );
\i[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \t_state_reg_n_0_[3]\,
      I1 => \t_state_reg_n_0_[0]\,
      O => \i[31]_i_4_n_0\
    );
\i[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i1_carry__2_n_1\,
      I1 => \t_state_reg[2]_rep_n_0\,
      O => \i[31]_i_5_n_0\
    );
\i[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FC550000CC0000"
    )
        port map (
      I0 => \t_state[3]_i_6_n_0\,
      I1 => \t_state_reg_n_0_[0]\,
      I2 => \s_oil_index[8]_i_3_n_0\,
      I3 => \t_state_reg[2]_rep_n_0\,
      I4 => \t_state_reg_n_0_[3]\,
      I5 => \i0_inferred__0/i__carry__2_n_0\,
      O => \i[31]_i_6_n_0\
    );
\i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8D00"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => i0(3),
      O => p_0_in(3)
    );
\i[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8D00"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => i0(4),
      O => p_0_in(4)
    );
\i[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8D00"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => i0(5),
      O => p_0_in(5)
    );
\i[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8D00"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => i0(6),
      O => p_0_in(6)
    );
\i[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8D00"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => i0(7),
      O => p_0_in(7)
    );
\i[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8D00"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => i0(8),
      O => p_0_in(8)
    );
\i[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8D00"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => i0(9),
      O => p_0_in(9)
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
      I0 => s_oil_space2(4),
      I1 => s_oil_space2(3),
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
      I0 => s_oil_space2(3),
      I1 => s_oil_space2(4),
      O => \i__carry_i_5_n_0\
    );
\i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => i,
      D => p_0_in(0),
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
      D => p_0_in(10),
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
      D => p_0_in(11),
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
      D => p_0_in(12),
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
      D => p_0_in(13),
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
      D => p_0_in(14),
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
      D => p_0_in(15),
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
      D => p_0_in(16),
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
      D => p_0_in(17),
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
      D => p_0_in(18),
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
      D => p_0_in(19),
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
      D => p_0_in(1),
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
      D => p_0_in(20),
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
      D => p_0_in(21),
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
      D => p_0_in(22),
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
      D => p_0_in(23),
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
      D => p_0_in(24),
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
      D => p_0_in(25),
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
      D => p_0_in(26),
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
      D => p_0_in(27),
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
      D => p_0_in(28),
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
      D => p_0_in(29),
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
      D => p_0_in(2),
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
      D => p_0_in(30),
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
      D => p_0_in(31),
      Q => \i_reg_n_0_[31]\,
      R => rst
    );
\i_reg[31]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_i_reg[31]_i_7_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \i_reg[31]_i_7_n_2\,
      CO(0) => \i_reg[31]_i_7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_i_reg[31]_i_7_O_UNCONNECTED\(3),
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
      D => p_0_in(3),
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
      D => p_0_in(4),
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
      D => p_0_in(5),
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
      D => p_0_in(6),
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
      D => p_0_in(7),
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
      D => p_0_in(8),
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
      D => p_0_in(9),
      Q => s_oil_space2(12),
      R => rst
    );
\index[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \t_state_reg_n_0_[3]\,
      I2 => i_trng_valid,
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[0]\,
      O => \index[2]_i_1_n_0\
    );
\index[2]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => index_reg(2),
      O => \index[2]_i_3_n_0\
    );
\index_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[2]_i_1_n_0\,
      D => \index_reg[10]_i_1_n_7\,
      Q => index_reg(10),
      R => rst
    );
\index_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \index_reg[6]_i_1_n_0\,
      CO(3) => \index_reg[10]_i_1_n_0\,
      CO(2) => \index_reg[10]_i_1_n_1\,
      CO(1) => \index_reg[10]_i_1_n_2\,
      CO(0) => \index_reg[10]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \index_reg[10]_i_1_n_4\,
      O(2) => \index_reg[10]_i_1_n_5\,
      O(1) => \index_reg[10]_i_1_n_6\,
      O(0) => \index_reg[10]_i_1_n_7\,
      S(3 downto 0) => index_reg(13 downto 10)
    );
\index_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[2]_i_1_n_0\,
      D => \index_reg[10]_i_1_n_6\,
      Q => index_reg(11),
      R => rst
    );
\index_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[2]_i_1_n_0\,
      D => \index_reg[10]_i_1_n_5\,
      Q => index_reg(12),
      R => rst
    );
\index_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[2]_i_1_n_0\,
      D => \index_reg[10]_i_1_n_4\,
      Q => index_reg(13),
      R => rst
    );
\index_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[2]_i_1_n_0\,
      D => \index_reg[14]_i_1_n_7\,
      Q => index_reg(14),
      R => rst
    );
\index_reg[14]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \index_reg[10]_i_1_n_0\,
      CO(3) => \index_reg[14]_i_1_n_0\,
      CO(2) => \index_reg[14]_i_1_n_1\,
      CO(1) => \index_reg[14]_i_1_n_2\,
      CO(0) => \index_reg[14]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \index_reg[14]_i_1_n_4\,
      O(2) => \index_reg[14]_i_1_n_5\,
      O(1) => \index_reg[14]_i_1_n_6\,
      O(0) => \index_reg[14]_i_1_n_7\,
      S(3 downto 0) => index_reg(17 downto 14)
    );
\index_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[2]_i_1_n_0\,
      D => \index_reg[14]_i_1_n_6\,
      Q => index_reg(15),
      R => rst
    );
\index_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[2]_i_1_n_0\,
      D => \index_reg[14]_i_1_n_5\,
      Q => index_reg(16),
      R => rst
    );
\index_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[2]_i_1_n_0\,
      D => \index_reg[14]_i_1_n_4\,
      Q => index_reg(17),
      R => rst
    );
\index_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[2]_i_1_n_0\,
      D => \index_reg[18]_i_1_n_7\,
      Q => index_reg(18),
      R => rst
    );
\index_reg[18]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \index_reg[14]_i_1_n_0\,
      CO(3) => \index_reg[18]_i_1_n_0\,
      CO(2) => \index_reg[18]_i_1_n_1\,
      CO(1) => \index_reg[18]_i_1_n_2\,
      CO(0) => \index_reg[18]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \index_reg[18]_i_1_n_4\,
      O(2) => \index_reg[18]_i_1_n_5\,
      O(1) => \index_reg[18]_i_1_n_6\,
      O(0) => \index_reg[18]_i_1_n_7\,
      S(3 downto 0) => index_reg(21 downto 18)
    );
\index_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[2]_i_1_n_0\,
      D => \index_reg[18]_i_1_n_6\,
      Q => index_reg(19),
      R => rst
    );
\index_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[2]_i_1_n_0\,
      D => \index_reg[18]_i_1_n_5\,
      Q => index_reg(20),
      R => rst
    );
\index_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[2]_i_1_n_0\,
      D => \index_reg[18]_i_1_n_4\,
      Q => index_reg(21),
      R => rst
    );
\index_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[2]_i_1_n_0\,
      D => \index_reg[22]_i_1_n_7\,
      Q => index_reg(22),
      R => rst
    );
\index_reg[22]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \index_reg[18]_i_1_n_0\,
      CO(3) => \index_reg[22]_i_1_n_0\,
      CO(2) => \index_reg[22]_i_1_n_1\,
      CO(1) => \index_reg[22]_i_1_n_2\,
      CO(0) => \index_reg[22]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \index_reg[22]_i_1_n_4\,
      O(2) => \index_reg[22]_i_1_n_5\,
      O(1) => \index_reg[22]_i_1_n_6\,
      O(0) => \index_reg[22]_i_1_n_7\,
      S(3 downto 0) => index_reg(25 downto 22)
    );
\index_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[2]_i_1_n_0\,
      D => \index_reg[22]_i_1_n_6\,
      Q => index_reg(23),
      R => rst
    );
\index_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[2]_i_1_n_0\,
      D => \index_reg[22]_i_1_n_5\,
      Q => index_reg(24),
      R => rst
    );
\index_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[2]_i_1_n_0\,
      D => \index_reg[22]_i_1_n_4\,
      Q => index_reg(25),
      R => rst
    );
\index_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[2]_i_1_n_0\,
      D => \index_reg[26]_i_1_n_7\,
      Q => index_reg(26),
      R => rst
    );
\index_reg[26]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \index_reg[22]_i_1_n_0\,
      CO(3) => \index_reg[26]_i_1_n_0\,
      CO(2) => \index_reg[26]_i_1_n_1\,
      CO(1) => \index_reg[26]_i_1_n_2\,
      CO(0) => \index_reg[26]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \index_reg[26]_i_1_n_4\,
      O(2) => \index_reg[26]_i_1_n_5\,
      O(1) => \index_reg[26]_i_1_n_6\,
      O(0) => \index_reg[26]_i_1_n_7\,
      S(3 downto 0) => index_reg(29 downto 26)
    );
\index_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[2]_i_1_n_0\,
      D => \index_reg[26]_i_1_n_6\,
      Q => index_reg(27),
      R => rst
    );
\index_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[2]_i_1_n_0\,
      D => \index_reg[26]_i_1_n_5\,
      Q => index_reg(28),
      R => rst
    );
\index_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[2]_i_1_n_0\,
      D => \index_reg[26]_i_1_n_4\,
      Q => index_reg(29),
      R => rst
    );
\index_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[2]_i_1_n_0\,
      D => \index_reg[2]_i_2_n_7\,
      Q => index_reg(2),
      R => rst
    );
\index_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \index_reg[2]_i_2_n_0\,
      CO(2) => \index_reg[2]_i_2_n_1\,
      CO(1) => \index_reg[2]_i_2_n_2\,
      CO(0) => \index_reg[2]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \index_reg[2]_i_2_n_4\,
      O(2) => \index_reg[2]_i_2_n_5\,
      O(1) => \index_reg[2]_i_2_n_6\,
      O(0) => \index_reg[2]_i_2_n_7\,
      S(3 downto 1) => index_reg(5 downto 3),
      S(0) => \index[2]_i_3_n_0\
    );
\index_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[2]_i_1_n_0\,
      D => \index_reg[30]_i_1_n_7\,
      Q => index_reg(30),
      R => rst
    );
\index_reg[30]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \index_reg[26]_i_1_n_0\,
      CO(3 downto 0) => \NLW_index_reg[30]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_index_reg[30]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \index_reg[30]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => index_reg(30)
    );
\index_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[2]_i_1_n_0\,
      D => \index_reg[2]_i_2_n_6\,
      Q => index_reg(3),
      R => rst
    );
\index_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[2]_i_1_n_0\,
      D => \index_reg[2]_i_2_n_5\,
      Q => index_reg(4),
      R => rst
    );
\index_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[2]_i_1_n_0\,
      D => \index_reg[2]_i_2_n_4\,
      Q => index_reg(5),
      R => rst
    );
\index_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[2]_i_1_n_0\,
      D => \index_reg[6]_i_1_n_7\,
      Q => index_reg(6),
      R => rst
    );
\index_reg[6]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \index_reg[2]_i_2_n_0\,
      CO(3) => \index_reg[6]_i_1_n_0\,
      CO(2) => \index_reg[6]_i_1_n_1\,
      CO(1) => \index_reg[6]_i_1_n_2\,
      CO(0) => \index_reg[6]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \index_reg[6]_i_1_n_4\,
      O(2) => \index_reg[6]_i_1_n_5\,
      O(1) => \index_reg[6]_i_1_n_6\,
      O(0) => \index_reg[6]_i_1_n_7\,
      S(3 downto 0) => index_reg(9 downto 6)
    );
\index_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[2]_i_1_n_0\,
      D => \index_reg[6]_i_1_n_6\,
      Q => index_reg(7),
      R => rst
    );
\index_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[2]_i_1_n_0\,
      D => \index_reg[6]_i_1_n_5\,
      Q => index_reg(8),
      R => rst
    );
\index_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \index[2]_i_1_n_0\,
      D => \index_reg[6]_i_1_n_4\,
      Q => index_reg(9),
      R => rst
    );
\k[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \i1_carry__2_n_1\,
      I2 => s_oil_space1(3),
      O => p_1_in(0)
    );
\k[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \i1_carry__2_n_1\,
      I2 => k0(10),
      O => p_1_in(10)
    );
\k[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \i1_carry__2_n_1\,
      I2 => k0(11),
      O => p_1_in(11)
    );
\k[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \i1_carry__2_n_1\,
      I2 => k0(12),
      O => p_1_in(12)
    );
\k[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \i1_carry__2_n_1\,
      I2 => k0(13),
      O => p_1_in(13)
    );
\k[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \i1_carry__2_n_1\,
      I2 => k0(14),
      O => p_1_in(14)
    );
\k[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \i1_carry__2_n_1\,
      I2 => k0(15),
      O => p_1_in(15)
    );
\k[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \i1_carry__2_n_1\,
      I2 => k0(16),
      O => p_1_in(16)
    );
\k[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \i1_carry__2_n_1\,
      I2 => k0(17),
      O => p_1_in(17)
    );
\k[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \i1_carry__2_n_1\,
      I2 => k0(18),
      O => p_1_in(18)
    );
\k[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \i1_carry__2_n_1\,
      I2 => k0(19),
      O => p_1_in(19)
    );
\k[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \i1_carry__2_n_1\,
      I2 => k0(1),
      O => p_1_in(1)
    );
\k[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \i1_carry__2_n_1\,
      I2 => k0(20),
      O => p_1_in(20)
    );
\k[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \i1_carry__2_n_1\,
      I2 => k0(21),
      O => p_1_in(21)
    );
\k[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \i1_carry__2_n_1\,
      I2 => k0(22),
      O => p_1_in(22)
    );
\k[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \i1_carry__2_n_1\,
      I2 => k0(23),
      O => p_1_in(23)
    );
\k[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \i1_carry__2_n_1\,
      I2 => k0(24),
      O => p_1_in(24)
    );
\k[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \i1_carry__2_n_1\,
      I2 => k0(25),
      O => p_1_in(25)
    );
\k[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \i1_carry__2_n_1\,
      I2 => k0(26),
      O => p_1_in(26)
    );
\k[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \i1_carry__2_n_1\,
      I2 => k0(27),
      O => p_1_in(27)
    );
\k[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \i1_carry__2_n_1\,
      I2 => k0(28),
      O => p_1_in(28)
    );
\k[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \i1_carry__2_n_1\,
      I2 => k0(29),
      O => p_1_in(29)
    );
\k[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \i1_carry__2_n_1\,
      I2 => k0(2),
      O => p_1_in(2)
    );
\k[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \i1_carry__2_n_1\,
      I2 => k0(30),
      O => p_1_in(30)
    );
\k[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4004"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => \t_state_reg_n_0_[3]\,
      I2 => \t_state_reg[2]_rep_n_0\,
      I3 => \t_state_reg_n_0_[0]\,
      O => \k[31]_i_1_n_0\
    );
\k[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \i1_carry__2_n_1\,
      I2 => k0(31),
      O => p_1_in(31)
    );
\k[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \i1_carry__2_n_1\,
      I2 => k0(3),
      O => p_1_in(3)
    );
\k[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \i1_carry__2_n_1\,
      I2 => k0(4),
      O => p_1_in(4)
    );
\k[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \i1_carry__2_n_1\,
      I2 => k0(5),
      O => p_1_in(5)
    );
\k[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \i1_carry__2_n_1\,
      I2 => k0(6),
      O => p_1_in(6)
    );
\k[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \i1_carry__2_n_1\,
      I2 => k0(7),
      O => p_1_in(7)
    );
\k[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \i1_carry__2_n_1\,
      I2 => k0(8),
      O => p_1_in(8)
    );
\k[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \i1_carry__2_n_1\,
      I2 => k0(9),
      O => p_1_in(9)
    );
\k_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \k[31]_i_1_n_0\,
      D => p_1_in(0),
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
      D => p_1_in(10),
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
      D => p_1_in(11),
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
      D => p_1_in(12),
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
      D => p_1_in(13),
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
      D => p_1_in(14),
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
      D => p_1_in(15),
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
      D => p_1_in(16),
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
      D => p_1_in(17),
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
      D => p_1_in(18),
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
      D => p_1_in(19),
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
      D => p_1_in(1),
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
      D => p_1_in(20),
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
      D => p_1_in(21),
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
      D => p_1_in(22),
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
      D => p_1_in(23),
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
      D => p_1_in(24),
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
      D => p_1_in(25),
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
      D => p_1_in(26),
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
      D => p_1_in(27),
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
      D => p_1_in(28),
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
      D => p_1_in(29),
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
      D => p_1_in(2),
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
      D => p_1_in(30),
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
      D => p_1_in(31),
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
      D => p_1_in(3),
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
      D => p_1_in(4),
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
      D => p_1_in(5),
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
      D => p_1_in(6),
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
      D => p_1_in(7),
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
      D => p_1_in(8),
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
      D => p_1_in(9),
      Q => s_oil_space1(12),
      R => rst
    );
mode_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => i_mode,
      I1 => i_enable,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[3]\,
      I4 => mode_i_2_n_0,
      I5 => mode,
      O => mode_i_1_n_0
    );
mode_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => \t_state_reg[2]_rep_n_0\,
      O => mode_i_2_n_0
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
      I1 => \t_state_reg_n_0_[0]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => \t_state_reg[2]_rep_n_0\,
      O => s_oil_adr_3
    );
o_controla_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_3,
      D => i_enable,
      Q => o_controla,
      R => rst
    );
o_controlb_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_3,
      D => i_enable,
      Q => o_controlb,
      R => rst
    );
o_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => \t_state_reg_n_0_[0]\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[2]\,
      I3 => \t_state_reg_n_0_[3]\,
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
      DI(1) => index_reg(5),
      DI(0) => '0',
      O(3 downto 0) => data0(7 downto 4),
      S(3 downto 2) => index_reg(7 downto 6),
      S(1) => o_mema_addr0_carry_i_1_n_0,
      S(0) => index_reg(4)
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
      S(3 downto 0) => index_reg(11 downto 8)
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
      S(3 downto 0) => index_reg(15 downto 12)
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
      S(3 downto 0) => index_reg(19 downto 16)
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
      S(3 downto 0) => index_reg(23 downto 20)
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
      S(3 downto 0) => index_reg(27 downto 24)
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
      S(2 downto 0) => index_reg(30 downto 28)
    );
o_mema_addr0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => index_reg(5),
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
\o_mema_addr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_state_reg_n_0_[3]\,
      I1 => data2(0),
      O => o_mema_addr_2(0)
    );
\o_mema_addr[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0AAAAF0F0CC00"
    )
        port map (
      I0 => data1(10),
      I1 => data0(10),
      I2 => data2(10),
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[3]\,
      I5 => \t_state_reg[2]_rep__0_n_0\,
      O => o_mema_addr_2(10)
    );
\o_mema_addr[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0AAAAF0F0CC00"
    )
        port map (
      I0 => data1(11),
      I1 => data0(11),
      I2 => data2(11),
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[3]\,
      I5 => \t_state_reg[2]_rep__0_n_0\,
      O => o_mema_addr_2(11)
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
      INIT => X"F0F0AAAAF0F0CC00"
    )
        port map (
      I0 => data1(12),
      I1 => data0(12),
      I2 => data2(12),
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[3]\,
      I5 => \t_state_reg[2]_rep__0_n_0\,
      O => o_mema_addr_2(12)
    );
\o_mema_addr[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0AAAAF0F0CC00"
    )
        port map (
      I0 => data1(13),
      I1 => data0(13),
      I2 => data2(13),
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[3]\,
      I5 => \t_state_reg[2]_rep__0_n_0\,
      O => o_mema_addr_2(13)
    );
\o_mema_addr[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0AAAAF0F0CC00"
    )
        port map (
      I0 => data1(14),
      I1 => data0(14),
      I2 => data2(14),
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[3]\,
      I5 => \t_state_reg[2]_rep__0_n_0\,
      O => o_mema_addr_2(14)
    );
\o_mema_addr[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0AAAAF0F0CC00"
    )
        port map (
      I0 => data1(15),
      I1 => data0(15),
      I2 => data2(15),
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[3]\,
      I5 => \t_state_reg[2]_rep__0_n_0\,
      O => o_mema_addr_2(15)
    );
\o_mema_addr[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0AAAAF0F0CC00"
    )
        port map (
      I0 => data1(16),
      I1 => data0(16),
      I2 => data2(16),
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[3]\,
      I5 => \t_state_reg[2]_rep__0_n_0\,
      O => o_mema_addr_2(16)
    );
\o_mema_addr[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0AAAAF0F0CC00"
    )
        port map (
      I0 => data1(17),
      I1 => data0(17),
      I2 => data2(17),
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[3]\,
      I5 => \t_state_reg[2]_rep__0_n_0\,
      O => o_mema_addr_2(17)
    );
\o_mema_addr[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0AAAAF0F0CC00"
    )
        port map (
      I0 => data1(18),
      I1 => data0(18),
      I2 => data2(18),
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[3]\,
      I5 => \t_state_reg[2]_rep__0_n_0\,
      O => o_mema_addr_2(18)
    );
\o_mema_addr[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0AAAAF0F0CC00"
    )
        port map (
      I0 => data1(19),
      I1 => data0(19),
      I2 => data2(19),
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[3]\,
      I5 => \t_state_reg[2]_rep__0_n_0\,
      O => o_mema_addr_2(19)
    );
\o_mema_addr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACA0"
    )
        port map (
      I0 => data2(1),
      I1 => s_ctr(1),
      I2 => \t_state_reg_n_0_[3]\,
      I3 => \t_state_reg[2]_rep__0_n_0\,
      O => o_mema_addr_2(1)
    );
\o_mema_addr[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0AAAAF0F0CC00"
    )
        port map (
      I0 => data1(20),
      I1 => data0(20),
      I2 => data2(20),
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[3]\,
      I5 => \t_state_reg[2]_rep__0_n_0\,
      O => o_mema_addr_2(20)
    );
\o_mema_addr[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0AAAAF0F0CC00"
    )
        port map (
      I0 => data1(21),
      I1 => data0(21),
      I2 => data2(21),
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[3]\,
      I5 => \t_state_reg[2]_rep__0_n_0\,
      O => o_mema_addr_2(21)
    );
\o_mema_addr[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0AAAAF0F0CC00"
    )
        port map (
      I0 => data1(22),
      I1 => data0(22),
      I2 => data2(22),
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[3]\,
      I5 => \t_state_reg[2]_rep__0_n_0\,
      O => o_mema_addr_2(22)
    );
\o_mema_addr[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0AAAAF0F0CC00"
    )
        port map (
      I0 => data1(23),
      I1 => data0(23),
      I2 => data2(23),
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[3]\,
      I5 => \t_state_reg[2]_rep__0_n_0\,
      O => o_mema_addr_2(23)
    );
\o_mema_addr[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0AAAAF0F0CC00"
    )
        port map (
      I0 => data1(24),
      I1 => data0(24),
      I2 => data2(24),
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[3]\,
      I5 => \t_state_reg[2]_rep__0_n_0\,
      O => o_mema_addr_2(24)
    );
\o_mema_addr[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0AAAAF0F0CC00"
    )
        port map (
      I0 => data1(25),
      I1 => data0(25),
      I2 => data2(25),
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[3]\,
      I5 => \t_state_reg[2]_rep__0_n_0\,
      O => o_mema_addr_2(25)
    );
\o_mema_addr[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0AAAAF0F0CC00"
    )
        port map (
      I0 => data1(26),
      I1 => data0(26),
      I2 => data2(26),
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[3]\,
      I5 => \t_state_reg[2]_rep__0_n_0\,
      O => o_mema_addr_2(26)
    );
\o_mema_addr[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0AAAAF0F0CC00"
    )
        port map (
      I0 => data1(27),
      I1 => data0(27),
      I2 => data2(27),
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[3]\,
      I5 => \t_state_reg[2]_rep__0_n_0\,
      O => o_mema_addr_2(27)
    );
\o_mema_addr[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0AAAAF0F0CC00"
    )
        port map (
      I0 => data1(28),
      I1 => data0(28),
      I2 => data2(28),
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[3]\,
      I5 => \t_state_reg[2]_rep__0_n_0\,
      O => o_mema_addr_2(28)
    );
\o_mema_addr[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0AAAAF0F0CC00"
    )
        port map (
      I0 => data1(29),
      I1 => data0(29),
      I2 => data2(29),
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[3]\,
      I5 => \t_state_reg[2]_rep__0_n_0\,
      O => o_mema_addr_2(29)
    );
\o_mema_addr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0AAAAF0F0CC00"
    )
        port map (
      I0 => s_ctr(2),
      I1 => index_reg(2),
      I2 => data2(2),
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[3]\,
      I5 => \t_state_reg[2]_rep__0_n_0\,
      O => o_mema_addr_2(2)
    );
\o_mema_addr[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0AAAAF0F0CC00"
    )
        port map (
      I0 => data1(30),
      I1 => data0(30),
      I2 => data2(30),
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[3]\,
      I5 => \t_state_reg[2]_rep__0_n_0\,
      O => o_mema_addr_2(30)
    );
\o_mema_addr[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0022222A0000222A"
    )
        port map (
      I0 => \t_state_reg_n_0_[0]\,
      I1 => \t_state_reg_n_0_[3]\,
      I2 => mode,
      I3 => \t_state_reg[2]_rep__0_n_0\,
      I4 => \t_state_reg_n_0_[1]\,
      I5 => i_trng_valid,
      O => \o_mema_addr[31]_i_1_n_0\
    );
\o_mema_addr[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_state_reg_n_0_[3]\,
      I1 => data2(31),
      O => o_mema_addr_2(31)
    );
\o_mema_addr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0AAAAF0F0CC00"
    )
        port map (
      I0 => s_ctr(3),
      I1 => index_reg(3),
      I2 => data2(3),
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[3]\,
      I5 => \t_state_reg[2]_rep__0_n_0\,
      O => o_mema_addr_2(3)
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
      INIT => X"F0F0AAAAF0F0CC00"
    )
        port map (
      I0 => data1(4),
      I1 => data0(4),
      I2 => data2(4),
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[3]\,
      I5 => \t_state_reg[2]_rep__0_n_0\,
      O => o_mema_addr_2(4)
    );
\o_mema_addr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAACCFFCCAACC0F"
    )
        port map (
      I0 => data1(5),
      I1 => data2(5),
      I2 => \t_state_reg_n_0_[1]\,
      I3 => \t_state_reg_n_0_[3]\,
      I4 => \t_state_reg[2]_rep__0_n_0\,
      I5 => data0(5),
      O => o_mema_addr_2(5)
    );
\o_mema_addr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0AAAAF0F0CC00"
    )
        port map (
      I0 => data1(6),
      I1 => data0(6),
      I2 => data2(6),
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[3]\,
      I5 => \t_state_reg[2]_rep__0_n_0\,
      O => o_mema_addr_2(6)
    );
\o_mema_addr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0AAAAF0F0CC00"
    )
        port map (
      I0 => data1(7),
      I1 => data0(7),
      I2 => data2(7),
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[3]\,
      I5 => \t_state_reg[2]_rep__0_n_0\,
      O => o_mema_addr_2(7)
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
      INIT => X"F0F0AAAAF0F0CC00"
    )
        port map (
      I0 => data1(8),
      I1 => data0(8),
      I2 => data2(8),
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[3]\,
      I5 => \t_state_reg[2]_rep__0_n_0\,
      O => o_mema_addr_2(8)
    );
\o_mema_addr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0AAAAF0F0CC00"
    )
        port map (
      I0 => data1(9),
      I1 => data0(9),
      I2 => data2(9),
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[3]\,
      I5 => \t_state_reg[2]_rep__0_n_0\,
      O => o_mema_addr_2(9)
    );
\o_mema_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_2(0),
      Q => o_mema_addr(0),
      R => rst
    );
\o_mema_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_2(10),
      Q => o_mema_addr(10),
      R => rst
    );
\o_mema_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_2(11),
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
      D => o_mema_addr_2(12),
      Q => o_mema_addr(12),
      R => rst
    );
\o_mema_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_2(13),
      Q => o_mema_addr(13),
      R => rst
    );
\o_mema_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_2(14),
      Q => o_mema_addr(14),
      R => rst
    );
\o_mema_addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_2(15),
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
      D => o_mema_addr_2(16),
      Q => o_mema_addr(16),
      R => rst
    );
\o_mema_addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_2(17),
      Q => o_mema_addr(17),
      R => rst
    );
\o_mema_addr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_2(18),
      Q => o_mema_addr(18),
      R => rst
    );
\o_mema_addr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_2(19),
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
      D => o_mema_addr_2(1),
      Q => o_mema_addr(1),
      R => rst
    );
\o_mema_addr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_2(20),
      Q => o_mema_addr(20),
      R => rst
    );
\o_mema_addr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_2(21),
      Q => o_mema_addr(21),
      R => rst
    );
\o_mema_addr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_2(22),
      Q => o_mema_addr(22),
      R => rst
    );
\o_mema_addr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_2(23),
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
      D => o_mema_addr_2(24),
      Q => o_mema_addr(24),
      R => rst
    );
\o_mema_addr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_2(25),
      Q => o_mema_addr(25),
      R => rst
    );
\o_mema_addr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_2(26),
      Q => o_mema_addr(26),
      R => rst
    );
\o_mema_addr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_2(27),
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
      D => o_mema_addr_2(28),
      Q => o_mema_addr(28),
      R => rst
    );
\o_mema_addr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_2(29),
      Q => o_mema_addr(29),
      R => rst
    );
\o_mema_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_2(2),
      Q => o_mema_addr(2),
      R => rst
    );
\o_mema_addr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_2(30),
      Q => o_mema_addr(30),
      R => rst
    );
\o_mema_addr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_2(31),
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
      D => o_mema_addr_2(3),
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
      D => o_mema_addr_2(4),
      Q => o_mema_addr(4),
      R => rst
    );
\o_mema_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_2(5),
      Q => o_mema_addr(5),
      R => rst
    );
\o_mema_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_2(6),
      Q => o_mema_addr(6),
      R => rst
    );
\o_mema_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_2(7),
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
      D => o_mema_addr_2(8),
      Q => o_mema_addr(8),
      R => rst
    );
\o_mema_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \o_mema_addr[31]_i_1_n_0\,
      D => o_mema_addr_2(9),
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
      INIT => X"010C010000000000"
    )
        port map (
      I0 => mode,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg[2]_rep__0_n_0\,
      I3 => \t_state_reg_n_0_[3]\,
      I4 => i_trng_valid,
      I5 => \t_state_reg_n_0_[0]\,
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
      INIT => X"B0FFB000"
    )
        port map (
      I0 => i_trng_valid,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => o_mema_en_i_2_n_0,
      I4 => \^o_mema_en\,
      O => o_mema_en_i_1_n_0
    );
o_mema_en_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"12221662"
    )
        port map (
      I0 => \t_state_reg[2]_rep__0_n_0\,
      I1 => \t_state_reg_n_0_[3]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[1]\,
      I4 => mode,
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
      INIT => X"FCFCFFBF00000700"
    )
        port map (
      I0 => mode,
      I1 => \t_state_reg_n_0_[3]\,
      I2 => \t_state_reg_n_0_[1]\,
      I3 => \t_state_reg_n_0_[0]\,
      I4 => \t_state_reg[2]_rep__0_n_0\,
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
      I1 => \t_state_reg[2]_rep__0_n_0\,
      O => \o_memb_addr[0]_i_1_n_0\
    );
\o_memb_addr[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(10),
      I1 => \t_state_reg[2]_rep__0_n_0\,
      O => \o_memb_addr[10]_i_1_n_0\
    );
\o_memb_addr[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(11),
      I1 => \t_state_reg[2]_rep__0_n_0\,
      O => \o_memb_addr[11]_i_1_n_0\
    );
\o_memb_addr[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(12),
      I1 => \t_state_reg[2]_rep__0_n_0\,
      O => \o_memb_addr[12]_i_1_n_0\
    );
\o_memb_addr[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(13),
      I1 => \t_state_reg[2]_rep__0_n_0\,
      O => \o_memb_addr[13]_i_1_n_0\
    );
\o_memb_addr[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(14),
      I1 => \t_state_reg[2]_rep__0_n_0\,
      O => \o_memb_addr[14]_i_1_n_0\
    );
\o_memb_addr[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(15),
      I1 => \t_state_reg[2]_rep__0_n_0\,
      O => \o_memb_addr[15]_i_1_n_0\
    );
\o_memb_addr[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(16),
      I1 => \t_state_reg[2]_rep__0_n_0\,
      O => \o_memb_addr[16]_i_1_n_0\
    );
\o_memb_addr[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(17),
      I1 => \t_state_reg[2]_rep__0_n_0\,
      O => \o_memb_addr[17]_i_1_n_0\
    );
\o_memb_addr[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(18),
      I1 => \t_state_reg[2]_rep__0_n_0\,
      O => \o_memb_addr[18]_i_1_n_0\
    );
\o_memb_addr[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(19),
      I1 => \t_state_reg[2]_rep__0_n_0\,
      O => \o_memb_addr[19]_i_1_n_0\
    );
\o_memb_addr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(1),
      I1 => \t_state_reg[2]_rep__0_n_0\,
      O => \o_memb_addr[1]_i_1_n_0\
    );
\o_memb_addr[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(20),
      I1 => \t_state_reg[2]_rep__0_n_0\,
      O => \o_memb_addr[20]_i_1_n_0\
    );
\o_memb_addr[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(21),
      I1 => \t_state_reg[2]_rep__0_n_0\,
      O => \o_memb_addr[21]_i_1_n_0\
    );
\o_memb_addr[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(22),
      I1 => \t_state_reg[2]_rep__0_n_0\,
      O => \o_memb_addr[22]_i_1_n_0\
    );
\o_memb_addr[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(23),
      I1 => \t_state_reg[2]_rep__0_n_0\,
      O => \o_memb_addr[23]_i_1_n_0\
    );
\o_memb_addr[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(24),
      I1 => \t_state_reg[2]_rep__0_n_0\,
      O => \o_memb_addr[24]_i_1_n_0\
    );
\o_memb_addr[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(25),
      I1 => \t_state_reg[2]_rep__0_n_0\,
      O => \o_memb_addr[25]_i_1_n_0\
    );
\o_memb_addr[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(26),
      I1 => \t_state_reg[2]_rep__0_n_0\,
      O => \o_memb_addr[26]_i_1_n_0\
    );
\o_memb_addr[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(27),
      I1 => \t_state_reg[2]_rep__0_n_0\,
      O => \o_memb_addr[27]_i_1_n_0\
    );
\o_memb_addr[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(28),
      I1 => \t_state_reg[2]_rep__0_n_0\,
      O => \o_memb_addr[28]_i_1_n_0\
    );
\o_memb_addr[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(29),
      I1 => \t_state_reg[2]_rep__0_n_0\,
      O => \o_memb_addr[29]_i_1_n_0\
    );
\o_memb_addr[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(2),
      I1 => \t_state_reg[2]_rep__0_n_0\,
      O => \o_memb_addr[2]_i_1_n_0\
    );
\o_memb_addr[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(30),
      I1 => \t_state_reg[2]_rep__0_n_0\,
      O => \o_memb_addr[30]_i_1_n_0\
    );
\o_memb_addr[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404000"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => \t_state_reg_n_0_[0]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => mode,
      I4 => \t_state_reg[2]_rep__0_n_0\,
      O => \o_memb_addr[31]_i_1_n_0\
    );
\o_memb_addr[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(31),
      I1 => \t_state_reg[2]_rep__0_n_0\,
      O => \o_memb_addr[31]_i_2_n_0\
    );
\o_memb_addr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(3),
      I1 => \t_state_reg[2]_rep__0_n_0\,
      O => \o_memb_addr[3]_i_1_n_0\
    );
\o_memb_addr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(4),
      I1 => \t_state_reg[2]_rep__0_n_0\,
      O => \o_memb_addr[4]_i_1_n_0\
    );
\o_memb_addr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(5),
      I1 => \t_state_reg[2]_rep__0_n_0\,
      O => \o_memb_addr[5]_i_1_n_0\
    );
\o_memb_addr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(6),
      I1 => \t_state_reg[2]_rep__0_n_0\,
      O => \o_memb_addr[6]_i_1_n_0\
    );
\o_memb_addr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(7),
      I1 => \t_state_reg[2]_rep__0_n_0\,
      O => \o_memb_addr[7]_i_1_n_0\
    );
\o_memb_addr[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(8),
      I1 => \t_state_reg[2]_rep__0_n_0\,
      O => \o_memb_addr[8]_i_1_n_0\
    );
\o_memb_addr[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(9),
      I1 => \t_state_reg[2]_rep__0_n_0\,
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
      INIT => X"00080000"
    )
        port map (
      I0 => mode,
      I1 => \t_state_reg_n_0_[0]\,
      I2 => \t_state_reg_n_0_[1]\,
      I3 => \t_state_reg[2]_rep_n_0\,
      I4 => \t_state_reg_n_0_[3]\,
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
      INIT => X"DFDFBFFF00002000"
    )
        port map (
      I0 => \t_state_reg_n_0_[0]\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => mode,
      I4 => \t_state_reg[2]_rep__0_n_0\,
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
      INIT => X"DFDFBFFF00002000"
    )
        port map (
      I0 => \t_state_reg_n_0_[0]\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => mode,
      I4 => \t_state_reg[2]_rep__0_n_0\,
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
\o_trng_data[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000100"
    )
        port map (
      I0 => \t_state_reg_n_0_[2]\,
      I1 => \t_state_reg_n_0_[3]\,
      I2 => \t_state_reg_n_0_[1]\,
      I3 => \t_state_reg_n_0_[0]\,
      I4 => rst,
      I5 => \^o_trng_data\(0),
      O => \o_trng_data[9]_i_1_n_0\
    );
\o_trng_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \o_trng_data[9]_i_1_n_0\,
      Q => \^o_trng_data\(0),
      R => '0'
    );
o_trng_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFB0200"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => \t_state_reg_n_0_[2]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => \t_state_reg_n_0_[0]\,
      I4 => \^o_trng_r\,
      O => o_trng_r_i_1_n_0
    );
o_trng_r_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => o_trng_r_i_1_n_0,
      Q => \^o_trng_r\,
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
      I3 => \t_state_reg_n_0_[2]\,
      I4 => \t_state_reg_n_0_[0]\,
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
o_trng_w_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0002"
    )
        port map (
      I0 => \t_state_reg_n_0_[0]\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => \t_state_reg_n_0_[2]\,
      I4 => \^o_trng_w\,
      O => o_trng_w_i_1_n_0
    );
o_trng_w_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => o_trng_w_i_1_n_0,
      Q => \^o_trng_w\,
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
      I2 => \t_state_reg[2]_rep__0_n_0\,
      O => \s_ctr[10]_i_1_n_0\
    );
\s_ctr[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(11),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg[2]_rep__0_n_0\,
      O => \s_ctr[11]_i_1_n_0\
    );
\s_ctr[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(12),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg[2]_rep__0_n_0\,
      O => \s_ctr[12]_i_1_n_0\
    );
\s_ctr[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(13),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg[2]_rep__0_n_0\,
      O => \s_ctr[13]_i_1_n_0\
    );
\s_ctr[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(14),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg[2]_rep__0_n_0\,
      O => \s_ctr[14]_i_1_n_0\
    );
\s_ctr[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(15),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg[2]_rep__0_n_0\,
      O => \s_ctr[15]_i_1_n_0\
    );
\s_ctr[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(16),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg[2]_rep__0_n_0\,
      O => \s_ctr[16]_i_1_n_0\
    );
\s_ctr[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(17),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg[2]_rep__0_n_0\,
      O => \s_ctr[17]_i_1_n_0\
    );
\s_ctr[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(18),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg[2]_rep__0_n_0\,
      O => \s_ctr[18]_i_1_n_0\
    );
\s_ctr[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(19),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg[2]_rep__0_n_0\,
      O => \s_ctr[19]_i_1_n_0\
    );
\s_ctr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(1),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg[2]_rep_n_0\,
      O => \s_ctr[1]_i_1_n_0\
    );
\s_ctr[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(20),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg[2]_rep__0_n_0\,
      O => \s_ctr[20]_i_1_n_0\
    );
\s_ctr[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(21),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg[2]_rep__0_n_0\,
      O => \s_ctr[21]_i_1_n_0\
    );
\s_ctr[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(22),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg[2]_rep__0_n_0\,
      O => \s_ctr[22]_i_1_n_0\
    );
\s_ctr[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(23),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg[2]_rep__0_n_0\,
      O => \s_ctr[23]_i_1_n_0\
    );
\s_ctr[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(24),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg[2]_rep__0_n_0\,
      O => \s_ctr[24]_i_1_n_0\
    );
\s_ctr[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(25),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg[2]_rep__0_n_0\,
      O => \s_ctr[25]_i_1_n_0\
    );
\s_ctr[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(26),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg[2]_rep__0_n_0\,
      O => \s_ctr[26]_i_1_n_0\
    );
\s_ctr[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(27),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg[2]_rep__0_n_0\,
      O => \s_ctr[27]_i_1_n_0\
    );
\s_ctr[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(28),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg[2]_rep__0_n_0\,
      O => \s_ctr[28]_i_1_n_0\
    );
\s_ctr[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(29),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg[2]_rep__0_n_0\,
      O => \s_ctr[29]_i_1_n_0\
    );
\s_ctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(2),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg[2]_rep_n_0\,
      O => \s_ctr[2]_i_1_n_0\
    );
\s_ctr[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C0282830C03828"
    )
        port map (
      I0 => \s_ctr[30]_i_3_n_0\,
      I1 => \t_state_reg_n_0_[3]\,
      I2 => \t_state_reg[2]_rep_n_0\,
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[0]\,
      I5 => \t_state[3]_i_5_n_0\,
      O => s_ctr_0
    );
\s_ctr[30]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(30),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg[2]_rep__0_n_0\,
      O => \s_ctr[30]_i_2_n_0\
    );
\s_ctr[30]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF3022"
    )
        port map (
      I0 => \i1_carry__2_n_1\,
      I1 => \i0_inferred__0/i__carry__2_n_0\,
      I2 => \s_oil_index[8]_i_3_n_0\,
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg[2]_rep_n_0\,
      O => \s_ctr[30]_i_3_n_0\
    );
\s_ctr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(3),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg[2]_rep_n_0\,
      O => \s_ctr[3]_i_1_n_0\
    );
\s_ctr[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(4),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg[2]_rep__0_n_0\,
      O => \s_ctr[4]_i_1_n_0\
    );
\s_ctr[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(5),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg[2]_rep__0_n_0\,
      O => \s_ctr[5]_i_1_n_0\
    );
\s_ctr[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(6),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg[2]_rep__0_n_0\,
      O => \s_ctr[6]_i_1_n_0\
    );
\s_ctr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(7),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg[2]_rep__0_n_0\,
      O => \s_ctr[7]_i_1_n_0\
    );
\s_ctr[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(8),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg[2]_rep__0_n_0\,
      O => \s_ctr[8]_i_1_n_0\
    );
\s_ctr[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_ctr0(9),
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg[2]_rep__0_n_0\,
      O => \s_ctr[9]_i_1_n_0\
    );
\s_ctr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_ctr_0,
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
      CE => s_ctr_0,
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
      CE => s_ctr_0,
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
      CE => s_ctr_0,
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
      CE => s_ctr_0,
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
      CE => s_ctr_0,
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
      CE => s_ctr_0,
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
      CE => s_ctr_0,
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
      CE => s_ctr_0,
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
      CE => s_ctr_0,
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
      CE => s_ctr_0,
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
      CE => s_ctr_0,
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
      CE => s_ctr_0,
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
      CE => s_ctr_0,
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
      CE => s_ctr_0,
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
      CE => s_ctr_0,
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
      CE => s_ctr_0,
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
      CE => s_ctr_0,
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
      CE => s_ctr_0,
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
      CE => s_ctr_0,
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
      CE => s_ctr_0,
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
      CE => s_ctr_0,
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
      CE => s_ctr_0,
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
      CE => s_ctr_0,
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
      CE => s_ctr_0,
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
      CE => s_ctr_0,
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
      CE => s_ctr_0,
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
      CE => s_ctr_0,
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
      CE => s_ctr_0,
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
      CE => s_ctr_0,
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
      CE => s_oil_adr_3,
      D => \s_oil_adr[0]_i_1_n_0\,
      Q => s_oil_adr(0),
      R => rst
    );
\s_oil_adr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_3,
      D => \s_oil_adr[10]_i_1_n_0\,
      Q => s_oil_adr(10),
      R => rst
    );
\s_oil_adr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_3,
      D => \s_oil_adr[11]_i_1_n_0\,
      Q => s_oil_adr(11),
      R => rst
    );
\s_oil_adr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_3,
      D => \s_oil_adr[12]_i_1_n_0\,
      Q => s_oil_adr(12),
      R => rst
    );
\s_oil_adr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_3,
      D => \s_oil_adr[13]_i_1_n_0\,
      Q => s_oil_adr(13),
      R => rst
    );
\s_oil_adr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_3,
      D => \s_oil_adr[14]_i_1_n_0\,
      Q => s_oil_adr(14),
      R => rst
    );
\s_oil_adr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_3,
      D => \s_oil_adr[15]_i_1_n_0\,
      Q => s_oil_adr(15),
      R => rst
    );
\s_oil_adr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_3,
      D => \s_oil_adr[16]_i_1_n_0\,
      Q => s_oil_adr(16),
      R => rst
    );
\s_oil_adr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_3,
      D => \s_oil_adr[17]_i_1_n_0\,
      Q => s_oil_adr(17),
      R => rst
    );
\s_oil_adr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_3,
      D => \s_oil_adr[18]_i_1_n_0\,
      Q => s_oil_adr(18),
      R => rst
    );
\s_oil_adr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_3,
      D => \s_oil_adr[19]_i_1_n_0\,
      Q => s_oil_adr(19),
      R => rst
    );
\s_oil_adr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_3,
      D => \s_oil_adr[1]_i_1_n_0\,
      Q => s_oil_adr(1),
      R => rst
    );
\s_oil_adr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_3,
      D => \s_oil_adr[20]_i_1_n_0\,
      Q => s_oil_adr(20),
      R => rst
    );
\s_oil_adr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_3,
      D => \s_oil_adr[21]_i_1_n_0\,
      Q => s_oil_adr(21),
      R => rst
    );
\s_oil_adr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_3,
      D => \s_oil_adr[22]_i_1_n_0\,
      Q => s_oil_adr(22),
      R => rst
    );
\s_oil_adr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_3,
      D => \s_oil_adr[23]_i_1_n_0\,
      Q => s_oil_adr(23),
      R => rst
    );
\s_oil_adr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_3,
      D => \s_oil_adr[24]_i_1_n_0\,
      Q => s_oil_adr(24),
      R => rst
    );
\s_oil_adr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_3,
      D => \s_oil_adr[25]_i_1_n_0\,
      Q => s_oil_adr(25),
      R => rst
    );
\s_oil_adr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_3,
      D => \s_oil_adr[26]_i_1_n_0\,
      Q => s_oil_adr(26),
      R => rst
    );
\s_oil_adr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_3,
      D => \s_oil_adr[27]_i_1_n_0\,
      Q => s_oil_adr(27),
      R => rst
    );
\s_oil_adr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_3,
      D => \s_oil_adr[28]_i_1_n_0\,
      Q => s_oil_adr(28),
      R => rst
    );
\s_oil_adr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_3,
      D => \s_oil_adr[29]_i_1_n_0\,
      Q => s_oil_adr(29),
      R => rst
    );
\s_oil_adr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_3,
      D => \s_oil_adr[2]_i_1_n_0\,
      Q => s_oil_adr(2),
      R => rst
    );
\s_oil_adr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_3,
      D => \s_oil_adr[30]_i_1_n_0\,
      Q => s_oil_adr(30),
      R => rst
    );
\s_oil_adr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_3,
      D => \s_oil_adr[31]_i_1_n_0\,
      Q => s_oil_adr(31),
      R => rst
    );
\s_oil_adr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_3,
      D => \s_oil_adr[3]_i_1_n_0\,
      Q => s_oil_adr(3),
      R => rst
    );
\s_oil_adr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_3,
      D => \s_oil_adr[4]_i_1_n_0\,
      Q => s_oil_adr(4),
      R => rst
    );
\s_oil_adr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_3,
      D => \s_oil_adr[5]_i_1_n_0\,
      Q => s_oil_adr(5),
      R => rst
    );
\s_oil_adr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_3,
      D => \s_oil_adr[6]_i_1_n_0\,
      Q => s_oil_adr(6),
      R => rst
    );
\s_oil_adr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_3,
      D => \s_oil_adr[7]_i_1_n_0\,
      Q => s_oil_adr(7),
      R => rst
    );
\s_oil_adr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_3,
      D => \s_oil_adr[8]_i_1_n_0\,
      Q => s_oil_adr(8),
      R => rst
    );
\s_oil_adr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => s_oil_adr_3,
      D => \s_oil_adr[9]_i_1_n_0\,
      Q => s_oil_adr(9),
      R => rst
    );
\s_oil_index[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \t_state_reg[2]_rep_n_0\,
      I1 => \s_oil_index_reg_n_0_[2]\,
      O => s_oil_index(2)
    );
\s_oil_index[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \s_oil_index_reg_n_0_[2]\,
      I1 => \s_oil_index_reg_n_0_[3]\,
      I2 => \t_state_reg[2]_rep_n_0\,
      O => s_oil_index(3)
    );
\s_oil_index[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \s_oil_index_reg_n_0_[2]\,
      I1 => \s_oil_index_reg_n_0_[3]\,
      I2 => \s_oil_index_reg_n_0_[4]\,
      I3 => \t_state_reg[2]_rep_n_0\,
      O => s_oil_index(4)
    );
\s_oil_index[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \s_oil_index_reg_n_0_[4]\,
      I1 => \s_oil_index_reg_n_0_[3]\,
      I2 => \s_oil_index_reg_n_0_[2]\,
      I3 => \s_oil_index_reg_n_0_[5]\,
      I4 => \t_state_reg[2]_rep_n_0\,
      O => s_oil_index(5)
    );
\s_oil_index[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => \s_oil_index_reg_n_0_[5]\,
      I1 => \s_oil_index_reg_n_0_[2]\,
      I2 => \s_oil_index_reg_n_0_[3]\,
      I3 => \s_oil_index_reg_n_0_[4]\,
      I4 => \s_oil_index_reg_n_0_[6]\,
      I5 => \t_state_reg[2]_rep_n_0\,
      O => s_oil_index(6)
    );
\s_oil_index[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F7FF0800"
    )
        port map (
      I0 => \s_oil_index_reg_n_0_[6]\,
      I1 => \s_oil_index_reg_n_0_[4]\,
      I2 => \s_oil_index[7]_i_2_n_0\,
      I3 => \s_oil_index_reg_n_0_[5]\,
      I4 => \s_oil_index_reg_n_0_[7]\,
      I5 => \t_state_reg[2]_rep_n_0\,
      O => s_oil_index(7)
    );
\s_oil_index[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \s_oil_index_reg_n_0_[2]\,
      I1 => \s_oil_index_reg_n_0_[3]\,
      O => \s_oil_index[7]_i_2_n_0\
    );
\s_oil_index[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000009200900"
    )
        port map (
      I0 => \t_state_reg_n_0_[3]\,
      I1 => \t_state_reg_n_0_[0]\,
      I2 => \t_state_reg_n_0_[1]\,
      I3 => \t_state_reg[2]_rep_n_0\,
      I4 => \s_oil_index[8]_i_3_n_0\,
      I5 => rst,
      O => s_oil_index_1
    );
\s_oil_index[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \s_oil_index_reg_n_0_[7]\,
      I1 => \s_oil_index[8]_i_4_n_0\,
      I2 => \s_oil_index_reg_n_0_[8]\,
      I3 => \t_state_reg[2]_rep_n_0\,
      O => s_oil_index(8)
    );
\s_oil_index[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00045555FFFFFFFF"
    )
        port map (
      I0 => \s_oil_index_reg_n_0_[7]\,
      I1 => \s_oil_index[7]_i_2_n_0\,
      I2 => \s_oil_index_reg_n_0_[4]\,
      I3 => \s_oil_index_reg_n_0_[5]\,
      I4 => \s_oil_index_reg_n_0_[6]\,
      I5 => \s_oil_index_reg_n_0_[8]\,
      O => \s_oil_index[8]_i_3_n_0\
    );
\s_oil_index[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \s_oil_index_reg_n_0_[6]\,
      I1 => \s_oil_index_reg_n_0_[4]\,
      I2 => \s_oil_index_reg_n_0_[3]\,
      I3 => \s_oil_index_reg_n_0_[2]\,
      I4 => \s_oil_index_reg_n_0_[5]\,
      O => \s_oil_index[8]_i_4_n_0\
    );
\s_oil_index_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_oil_index_1,
      D => s_oil_index(2),
      Q => \s_oil_index_reg_n_0_[2]\,
      R => '0'
    );
\s_oil_index_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_oil_index_1,
      D => s_oil_index(3),
      Q => \s_oil_index_reg_n_0_[3]\,
      R => '0'
    );
\s_oil_index_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_oil_index_1,
      D => s_oil_index(4),
      Q => \s_oil_index_reg_n_0_[4]\,
      R => '0'
    );
\s_oil_index_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_oil_index_1,
      D => s_oil_index(5),
      Q => \s_oil_index_reg_n_0_[5]\,
      R => '0'
    );
\s_oil_index_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_oil_index_1,
      D => s_oil_index(6),
      Q => \s_oil_index_reg_n_0_[6]\,
      R => '0'
    );
\s_oil_index_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_oil_index_1,
      D => s_oil_index(7),
      Q => \s_oil_index_reg_n_0_[7]\,
      R => '0'
    );
\s_oil_index_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => s_oil_index_1,
      D => s_oil_index(8),
      Q => \s_oil_index_reg_n_0_[8]\,
      R => '0'
    );
\s_oil_space[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => s_oil_space1(4),
      I1 => \t_state_reg_n_0_[0]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => \t_state_reg[2]_rep_n_0\,
      I4 => \t_state_reg_n_0_[1]\,
      I5 => \s_oil_space[31]_i_3_n_0\,
      O => \s_oil_space[15]_i_1_n_0\
    );
\s_oil_space[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => s_oil_space1(4),
      I1 => \t_state_reg_n_0_[0]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => \t_state_reg[2]_rep_n_0\,
      I4 => \t_state_reg_n_0_[1]\,
      I5 => \s_oil_space[23]_i_2_n_0\,
      O => \s_oil_space[23]_i_1_n_0\
    );
\s_oil_space[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \s_oil_space[31]_i_4_n_0\,
      I1 => \s_oil_space[31]_i_5_n_0\,
      I2 => \s_oil_space[31]_i_6_n_0\,
      I3 => s_oil_space1(3),
      O => \s_oil_space[23]_i_2_n_0\
    );
\s_oil_space[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => s_rand(21),
      I1 => s_rand(29),
      I2 => s_oil_space2(3),
      I3 => s_oil_space2(4),
      I4 => s_rand(5),
      I5 => s_rand(13),
      O => \s_oil_space10_in__0\(5)
    );
\s_oil_space[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => s_rand(22),
      I1 => s_rand(30),
      I2 => s_oil_space2(3),
      I3 => s_oil_space2(4),
      I4 => s_rand(6),
      I5 => s_rand(14),
      O => \s_oil_space10_in__0\(6)
    );
\s_oil_space[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => s_oil_space1(4),
      I1 => \t_state_reg_n_0_[0]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => \t_state_reg[2]_rep_n_0\,
      I4 => \t_state_reg_n_0_[1]\,
      I5 => \s_oil_space[31]_i_3_n_0\,
      O => \s_oil_space[31]_i_1_n_0\
    );
\s_oil_space[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_oil_space1(27),
      I1 => s_oil_space1(26),
      I2 => s_oil_space1(25),
      I3 => s_oil_space1(24),
      O => \s_oil_space[31]_i_10_n_0\
    );
\s_oil_space[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => s_rand(23),
      I1 => s_rand(31),
      I2 => s_oil_space2(3),
      I3 => s_oil_space2(4),
      I4 => s_rand(7),
      I5 => s_rand(15),
      O => \s_oil_space10_in__0\(7)
    );
\s_oil_space[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \s_oil_space[31]_i_4_n_0\,
      I1 => \s_oil_space[31]_i_5_n_0\,
      I2 => \s_oil_space[31]_i_6_n_0\,
      I3 => s_oil_space1(3),
      O => \s_oil_space[31]_i_3_n_0\
    );
\s_oil_space[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => s_oil_space1(7),
      I1 => s_oil_space1(6),
      I2 => s_oil_space1(14),
      I3 => \s_oil_space[31]_i_7_n_0\,
      I4 => \s_oil_space[31]_i_8_n_0\,
      O => \s_oil_space[31]_i_4_n_0\
    );
\s_oil_space[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => s_oil_space1(18),
      I1 => s_oil_space1(19),
      I2 => s_oil_space1(16),
      I3 => s_oil_space1(17),
      I4 => \s_oil_space[31]_i_9_n_0\,
      O => \s_oil_space[31]_i_5_n_0\
    );
\s_oil_space[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => s_oil_space1(28),
      I1 => s_oil_space1(29),
      I2 => s_oil_space1(30),
      I3 => s_oil_space1(31),
      I4 => \s_oil_space[31]_i_10_n_0\,
      O => \s_oil_space[31]_i_6_n_0\
    );
\s_oil_space[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_oil_space1(8),
      I1 => s_oil_space1(11),
      I2 => s_oil_space1(5),
      I3 => s_oil_space1(9),
      O => \s_oil_space[31]_i_7_n_0\
    );
\s_oil_space[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_oil_space1(12),
      I1 => s_oil_space1(15),
      I2 => s_oil_space1(10),
      I3 => s_oil_space1(13),
      O => \s_oil_space[31]_i_8_n_0\
    );
\s_oil_space[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_oil_space1(23),
      I1 => s_oil_space1(22),
      I2 => s_oil_space1(21),
      I3 => s_oil_space1(20),
      O => \s_oil_space[31]_i_9_n_0\
    );
\s_oil_space[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => s_oil_space1(4),
      I1 => \t_state_reg_n_0_[0]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => \t_state_reg[2]_rep_n_0\,
      I4 => \t_state_reg_n_0_[1]\,
      I5 => \s_oil_space[23]_i_2_n_0\,
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
      D => \s_oil_space10_in__0\(5),
      Q => s_oil_space(13),
      R => rst
    );
\s_oil_space_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[15]_i_1_n_0\,
      D => \s_oil_space10_in__0\(6),
      Q => s_oil_space(14),
      R => rst
    );
\s_oil_space_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[15]_i_1_n_0\,
      D => \s_oil_space10_in__0\(7),
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
      D => \s_oil_space10_in__0\(5),
      Q => s_oil_space(21),
      R => rst
    );
\s_oil_space_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[23]_i_1_n_0\,
      D => \s_oil_space10_in__0\(6),
      Q => s_oil_space(22),
      R => rst
    );
\s_oil_space_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[23]_i_1_n_0\,
      D => \s_oil_space10_in__0\(7),
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
      D => \s_oil_space10_in__0\(5),
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
      D => \s_oil_space10_in__0\(6),
      Q => s_oil_space(30),
      R => rst
    );
\s_oil_space_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[31]_i_1_n_0\,
      D => \s_oil_space10_in__0\(7),
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
      D => \s_oil_space10_in__0\(5),
      Q => s_oil_space(5),
      R => rst
    );
\s_oil_space_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[7]_i_1_n_0\,
      D => \s_oil_space10_in__0\(6),
      Q => s_oil_space(6),
      R => rst
    );
\s_oil_space_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \s_oil_space[7]_i_1_n_0\,
      D => \s_oil_space10_in__0\(7),
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
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[3]\,
      I3 => \t_state_reg[2]_rep_n_0\,
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
      INIT => X"0F0F7777FF000F0F"
    )
        port map (
      I0 => \t_state[3]_i_5_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state[0]_i_2_n_0\,
      I4 => \t_state_reg_n_0_[3]\,
      I5 => \t_state_reg[2]_rep_n_0\,
      O => t_state(0)
    );
\t_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005F77"
    )
        port map (
      I0 => \i0_inferred__0/i__carry__2_n_0\,
      I1 => \i1_carry__2_n_1\,
      I2 => \s_oil_index[8]_i_3_n_0\,
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[0]\,
      O => \t_state[0]_i_2_n_0\
    );
\t_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2798"
    )
        port map (
      I0 => \t_state_reg_n_0_[3]\,
      I1 => \t_state_reg[2]_rep_n_0\,
      I2 => \t_state_reg_n_0_[1]\,
      I3 => \t_state_reg_n_0_[0]\,
      O => t_state(1)
    );
\t_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F0FFCFC0F0F0808"
    )
        port map (
      I0 => \i1_carry__2_n_1\,
      I1 => \t_state_reg_n_0_[3]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state[2]_i_2_n_0\,
      I4 => \t_state_reg_n_0_[2]\,
      I5 => \t_state_reg_n_0_[1]\,
      O => t_state(2)
    );
\t_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => tmp(0),
      I1 => tmp(1),
      I2 => tmp(2),
      I3 => tmp(4),
      I4 => tmp(3),
      O => \t_state[2]_i_2_n_0\
    );
\t_state[2]_rep_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F0FFCFC0F0F0808"
    )
        port map (
      I0 => \i1_carry__2_n_1\,
      I1 => \t_state_reg_n_0_[3]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state[2]_i_2_n_0\,
      I4 => \t_state_reg_n_0_[2]\,
      I5 => \t_state_reg_n_0_[1]\,
      O => \t_state[2]_rep_i_1_n_0\
    );
\t_state[2]_rep_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F0FFCFC0F0F0808"
    )
        port map (
      I0 => \i1_carry__2_n_1\,
      I1 => \t_state_reg_n_0_[3]\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state[2]_i_2_n_0\,
      I4 => \t_state_reg_n_0_[2]\,
      I5 => \t_state_reg_n_0_[1]\,
      O => \t_state[2]_rep_i_1__0_n_0\
    );
\t_state[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F70"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => \t_state_reg_n_0_[3]\,
      I2 => \t_state_reg[2]_rep_n_0\,
      I3 => \t_state[3]_i_3_n_0\,
      O => \t_state[3]_i_1_n_0\
    );
\t_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CCAA00"
    )
        port map (
      I0 => \t_state[3]_i_4_n_0\,
      I1 => \t_state_reg_n_0_[0]\,
      I2 => \t_state[3]_i_5_n_0\,
      I3 => \t_state_reg_n_0_[3]\,
      I4 => \t_state_reg[2]_rep_n_0\,
      I5 => \t_state_reg_n_0_[1]\,
      O => t_state(3)
    );
\t_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFC0FFFFAA"
    )
        port map (
      I0 => i_enable,
      I1 => i_trng_done,
      I2 => i_trng_valid,
      I3 => \t_state_reg_n_0_[1]\,
      I4 => \t_state_reg_n_0_[0]\,
      I5 => \t_state_reg_n_0_[3]\,
      O => \t_state[3]_i_3_n_0\
    );
\t_state[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3333FF47"
    )
        port map (
      I0 => \s_oil_index[8]_i_3_n_0\,
      I1 => \t_state_reg_n_0_[1]\,
      I2 => \i1_carry__2_n_1\,
      I3 => \i0_inferred__0/i__carry__2_n_0\,
      I4 => \t_state_reg_n_0_[0]\,
      O => \t_state[3]_i_4_n_0\
    );
\t_state[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \t_state[3]_i_6_n_0\,
      I1 => \i0_inferred__0/i__carry__2_n_0\,
      O => \t_state[3]_i_5_n_0\
    );
\t_state[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => tmp(3),
      I1 => tmp(4),
      I2 => tmp(2),
      I3 => tmp(1),
      I4 => tmp(0),
      I5 => \t_state_reg_n_0_[0]\,
      O => \t_state[3]_i_6_n_0\
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
\t_state_reg[2]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \t_state[3]_i_1_n_0\,
      D => \t_state[2]_rep_i_1_n_0\,
      Q => \t_state_reg[2]_rep_n_0\,
      R => rst
    );
\t_state_reg[2]_rep__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \t_state[3]_i_1_n_0\,
      D => \t_state[2]_rep_i_1__0_n_0\,
      Q => \t_state_reg[2]_rep__0_n_0\,
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
\tmp[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => s_rand(16),
      I1 => s_rand(24),
      I2 => s_oil_space2(3),
      I3 => s_oil_space2(4),
      I4 => s_rand(0),
      I5 => s_rand(8),
      O => s_oil_space10_in(0)
    );
\tmp[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => s_rand(17),
      I1 => s_rand(25),
      I2 => s_oil_space2(3),
      I3 => s_oil_space2(4),
      I4 => s_rand(1),
      I5 => s_rand(9),
      O => s_oil_space10_in(1)
    );
\tmp[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => s_rand(18),
      I1 => s_rand(26),
      I2 => s_oil_space2(3),
      I3 => s_oil_space2(4),
      I4 => s_rand(2),
      I5 => s_rand(10),
      O => s_oil_space10_in(2)
    );
\tmp[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => s_rand(19),
      I1 => s_rand(27),
      I2 => s_oil_space2(3),
      I3 => s_oil_space2(4),
      I4 => s_rand(3),
      I5 => s_rand(11),
      O => s_oil_space10_in(3)
    );
\tmp[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \t_state_reg_n_0_[1]\,
      I1 => \t_state_reg[2]_rep_n_0\,
      I2 => \t_state_reg_n_0_[0]\,
      I3 => \t_state_reg_n_0_[3]\,
      O => \tmp[4]_i_1_n_0\
    );
\tmp[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => s_rand(20),
      I1 => s_rand(28),
      I2 => s_oil_space2(3),
      I3 => s_oil_space2(4),
      I4 => s_rand(4),
      I5 => s_rand(12),
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
  signal \^o_trng_data\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute x_interface_info : string;
  attribute x_interface_info of i_clk : signal is "xilinx.com:signal:clock:1.0 i_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of i_clk : signal is "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN Mayo_sign_clk, INSERT_VIP 0";
  attribute x_interface_info of o_controla : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sama CTRL";
  attribute x_interface_info of o_controlb : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Samb CTRL";
  attribute x_interface_info of o_mema_en : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sama EN";
  attribute x_interface_info of o_mema_rst : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sama RST";
  attribute x_interface_info of o_memb_en : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Samb EN";
  attribute x_interface_info of o_memb_rst : signal is "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Samb RST";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
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
  o_trng_data(31) <= \<const0>\;
  o_trng_data(30) <= \<const0>\;
  o_trng_data(29) <= \<const0>\;
  o_trng_data(28) <= \<const0>\;
  o_trng_data(27) <= \<const0>\;
  o_trng_data(26) <= \<const0>\;
  o_trng_data(25) <= \<const0>\;
  o_trng_data(24) <= \<const0>\;
  o_trng_data(23) <= \<const0>\;
  o_trng_data(22) <= \<const0>\;
  o_trng_data(21) <= \<const0>\;
  o_trng_data(20) <= \<const0>\;
  o_trng_data(19) <= \<const0>\;
  o_trng_data(18) <= \<const0>\;
  o_trng_data(17) <= \<const0>\;
  o_trng_data(16) <= \<const0>\;
  o_trng_data(15) <= \<const0>\;
  o_trng_data(14) <= \<const0>\;
  o_trng_data(13) <= \<const0>\;
  o_trng_data(12) <= \<const0>\;
  o_trng_data(11) <= \<const0>\;
  o_trng_data(10) <= \<const0>\;
  o_trng_data(9) <= \^o_trng_data\(7);
  o_trng_data(8) <= \<const0>\;
  o_trng_data(7) <= \^o_trng_data\(7);
  o_trng_data(6) <= \<const0>\;
  o_trng_data(5) <= \^o_trng_data\(7);
  o_trng_data(4) <= \<const0>\;
  o_trng_data(3) <= \<const0>\;
  o_trng_data(2) <= \<const0>\;
  o_trng_data(1) <= \<const0>\;
  o_trng_data(0) <= \<const0>\;
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
      i_trng_done => i_trng_done,
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
      o_trng_data(0) => \^o_trng_data\(7),
      o_trng_r => o_trng_r,
      o_trng_sel => o_trng_sel,
      o_trng_w => o_trng_w,
      rst => rst
    );
end STRUCTURE;
