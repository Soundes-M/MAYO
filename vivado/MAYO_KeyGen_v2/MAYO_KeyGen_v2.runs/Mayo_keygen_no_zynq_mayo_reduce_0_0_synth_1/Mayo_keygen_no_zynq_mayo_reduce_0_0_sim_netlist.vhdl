-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Fri Nov  4 22:01:18 2022
-- Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Mayo_keygen_no_zynq_mayo_reduce_0_0_sim_netlist.vhdl
-- Design      : Mayo_keygen_no_zynq_mayo_reduce_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mayo_reduce is
  port (
    o_we0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_rst0 : out STD_LOGIC;
    o_en0 : out STD_LOGIC;
    o_din1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_addr1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_en1 : out STD_LOGIC;
    o_rst1 : out STD_LOGIC;
    o_we1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_addr0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_din0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_done : out STD_LOGIC;
    o_control1 : out STD_LOGIC;
    o_control0 : out STD_LOGIC;
    i_enable : in STD_LOGIC;
    rst : in STD_LOGIC;
    i_bram_sel : in STD_LOGIC;
    i_clk : in STD_LOGIC;
    i_len : in STD_LOGIC_VECTOR ( 30 downto 0 );
    i_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_dout1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_dout0 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mayo_reduce;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mayo_reduce is
  signal \FSM_sequential_t_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_t_state[1]_inv_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_t_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_1_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_2_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_3_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_4_n_0\ : STD_LOGIC;
  signal \i___15_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i___15_carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \i___15_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i___15_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i___15_carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \i___15_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i___15_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i___15_carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i___15_carry_i_1_n_0\ : STD_LOGIC;
  signal \i___15_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i___15_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i___15_carry_i_2_n_0\ : STD_LOGIC;
  signal \i___15_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i___15_carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i___15_carry_i_3_n_0\ : STD_LOGIC;
  signal \i___15_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i___15_carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i___15_carry_i_4_n_0\ : STD_LOGIC;
  signal in6 : STD_LOGIC_VECTOR ( 30 downto 1 );
  signal in8 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^o_control0\ : STD_LOGIC;
  signal o_control0_i_1_n_0 : STD_LOGIC;
  signal o_control0_i_2_n_0 : STD_LOGIC;
  signal \^o_control1\ : STD_LOGIC;
  signal o_control1_i_1_n_0 : STD_LOGIC;
  signal \^o_done\ : STD_LOGIC;
  signal o_done_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_addrb : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_addrb0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_data0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \s_data0__0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \s_data0__0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \s_data0__0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \s_data0__0_carry__0_n_3\ : STD_LOGIC;
  signal \s_data0__0_carry__0_n_6\ : STD_LOGIC;
  signal \s_data0__0_carry__0_n_7\ : STD_LOGIC;
  signal \s_data0__0_carry_i_1_n_0\ : STD_LOGIC;
  signal \s_data0__0_carry_i_2_n_0\ : STD_LOGIC;
  signal \s_data0__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \s_data0__0_carry_i_4_n_0\ : STD_LOGIC;
  signal \s_data0__0_carry_n_0\ : STD_LOGIC;
  signal \s_data0__0_carry_n_1\ : STD_LOGIC;
  signal \s_data0__0_carry_n_2\ : STD_LOGIC;
  signal \s_data0__0_carry_n_3\ : STD_LOGIC;
  signal \s_data0__0_carry_n_4\ : STD_LOGIC;
  signal \s_data0__0_carry_n_5\ : STD_LOGIC;
  signal \s_data0__0_carry_n_6\ : STD_LOGIC;
  signal \s_data0__0_carry_n_7\ : STD_LOGIC;
  signal \s_data0__15_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \s_data0__15_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \s_data0__15_carry__0_n_3\ : STD_LOGIC;
  signal \s_data0__15_carry__0_n_6\ : STD_LOGIC;
  signal \s_data0__15_carry__0_n_7\ : STD_LOGIC;
  signal \s_data0__15_carry_i_1_n_0\ : STD_LOGIC;
  signal \s_data0__15_carry_i_2_n_0\ : STD_LOGIC;
  signal \s_data0__15_carry_i_3_n_0\ : STD_LOGIC;
  signal \s_data0__15_carry_i_4_n_0\ : STD_LOGIC;
  signal \s_data0__15_carry_n_0\ : STD_LOGIC;
  signal \s_data0__15_carry_n_1\ : STD_LOGIC;
  signal \s_data0__15_carry_n_2\ : STD_LOGIC;
  signal \s_data0__15_carry_n_3\ : STD_LOGIC;
  signal \s_data0__15_carry_n_4\ : STD_LOGIC;
  signal \s_data0__15_carry_n_5\ : STD_LOGIC;
  signal \s_data0__15_carry_n_6\ : STD_LOGIC;
  signal \s_data0__15_carry_n_7\ : STD_LOGIC;
  signal \s_data0_inferred__0/i___0_carry__0_n_3\ : STD_LOGIC;
  signal \s_data0_inferred__0/i___0_carry__0_n_6\ : STD_LOGIC;
  signal \s_data0_inferred__0/i___0_carry__0_n_7\ : STD_LOGIC;
  signal \s_data0_inferred__0/i___0_carry_n_0\ : STD_LOGIC;
  signal \s_data0_inferred__0/i___0_carry_n_1\ : STD_LOGIC;
  signal \s_data0_inferred__0/i___0_carry_n_2\ : STD_LOGIC;
  signal \s_data0_inferred__0/i___0_carry_n_3\ : STD_LOGIC;
  signal \s_data0_inferred__0/i___0_carry_n_4\ : STD_LOGIC;
  signal \s_data0_inferred__0/i___0_carry_n_5\ : STD_LOGIC;
  signal \s_data0_inferred__0/i___0_carry_n_6\ : STD_LOGIC;
  signal \s_data0_inferred__0/i___0_carry_n_7\ : STD_LOGIC;
  signal \s_data0_inferred__0/i___15_carry__0_n_3\ : STD_LOGIC;
  signal \s_data0_inferred__0/i___15_carry__0_n_6\ : STD_LOGIC;
  signal \s_data0_inferred__0/i___15_carry__0_n_7\ : STD_LOGIC;
  signal \s_data0_inferred__0/i___15_carry_n_0\ : STD_LOGIC;
  signal \s_data0_inferred__0/i___15_carry_n_1\ : STD_LOGIC;
  signal \s_data0_inferred__0/i___15_carry_n_2\ : STD_LOGIC;
  signal \s_data0_inferred__0/i___15_carry_n_3\ : STD_LOGIC;
  signal \s_data0_inferred__0/i___15_carry_n_4\ : STD_LOGIC;
  signal \s_data0_inferred__0/i___15_carry_n_5\ : STD_LOGIC;
  signal \s_data0_inferred__0/i___15_carry_n_6\ : STD_LOGIC;
  signal \s_data0_inferred__0/i___15_carry_n_7\ : STD_LOGIC;
  signal \s_data0_inferred__1/i___0_carry__0_n_3\ : STD_LOGIC;
  signal \s_data0_inferred__1/i___0_carry__0_n_6\ : STD_LOGIC;
  signal \s_data0_inferred__1/i___0_carry__0_n_7\ : STD_LOGIC;
  signal \s_data0_inferred__1/i___0_carry_n_0\ : STD_LOGIC;
  signal \s_data0_inferred__1/i___0_carry_n_1\ : STD_LOGIC;
  signal \s_data0_inferred__1/i___0_carry_n_2\ : STD_LOGIC;
  signal \s_data0_inferred__1/i___0_carry_n_3\ : STD_LOGIC;
  signal \s_data0_inferred__1/i___0_carry_n_4\ : STD_LOGIC;
  signal \s_data0_inferred__1/i___0_carry_n_5\ : STD_LOGIC;
  signal \s_data0_inferred__1/i___0_carry_n_6\ : STD_LOGIC;
  signal \s_data0_inferred__1/i___0_carry_n_7\ : STD_LOGIC;
  signal \s_data0_inferred__1/i___15_carry__0_n_3\ : STD_LOGIC;
  signal \s_data0_inferred__1/i___15_carry__0_n_6\ : STD_LOGIC;
  signal \s_data0_inferred__1/i___15_carry__0_n_7\ : STD_LOGIC;
  signal \s_data0_inferred__1/i___15_carry_n_0\ : STD_LOGIC;
  signal \s_data0_inferred__1/i___15_carry_n_1\ : STD_LOGIC;
  signal \s_data0_inferred__1/i___15_carry_n_2\ : STD_LOGIC;
  signal \s_data0_inferred__1/i___15_carry_n_3\ : STD_LOGIC;
  signal \s_data0_inferred__1/i___15_carry_n_4\ : STD_LOGIC;
  signal \s_data0_inferred__1/i___15_carry_n_5\ : STD_LOGIC;
  signal \s_data0_inferred__1/i___15_carry_n_6\ : STD_LOGIC;
  signal \s_data0_inferred__1/i___15_carry_n_7\ : STD_LOGIC;
  signal \s_data0_inferred__2/i___0_carry__0_n_3\ : STD_LOGIC;
  signal \s_data0_inferred__2/i___0_carry__0_n_6\ : STD_LOGIC;
  signal \s_data0_inferred__2/i___0_carry__0_n_7\ : STD_LOGIC;
  signal \s_data0_inferred__2/i___0_carry_n_0\ : STD_LOGIC;
  signal \s_data0_inferred__2/i___0_carry_n_1\ : STD_LOGIC;
  signal \s_data0_inferred__2/i___0_carry_n_2\ : STD_LOGIC;
  signal \s_data0_inferred__2/i___0_carry_n_3\ : STD_LOGIC;
  signal \s_data0_inferred__2/i___0_carry_n_4\ : STD_LOGIC;
  signal \s_data0_inferred__2/i___0_carry_n_5\ : STD_LOGIC;
  signal \s_data0_inferred__2/i___0_carry_n_6\ : STD_LOGIC;
  signal \s_data0_inferred__2/i___0_carry_n_7\ : STD_LOGIC;
  signal \s_data0_inferred__2/i___15_carry__0_n_3\ : STD_LOGIC;
  signal \s_data0_inferred__2/i___15_carry__0_n_6\ : STD_LOGIC;
  signal \s_data0_inferred__2/i___15_carry__0_n_7\ : STD_LOGIC;
  signal \s_data0_inferred__2/i___15_carry_n_0\ : STD_LOGIC;
  signal \s_data0_inferred__2/i___15_carry_n_1\ : STD_LOGIC;
  signal \s_data0_inferred__2/i___15_carry_n_2\ : STD_LOGIC;
  signal \s_data0_inferred__2/i___15_carry_n_3\ : STD_LOGIC;
  signal \s_data0_inferred__2/i___15_carry_n_4\ : STD_LOGIC;
  signal \s_data0_inferred__2/i___15_carry_n_5\ : STD_LOGIC;
  signal \s_data0_inferred__2/i___15_carry_n_6\ : STD_LOGIC;
  signal \s_data0_inferred__2/i___15_carry_n_7\ : STD_LOGIC;
  signal \s_data[0]_i_3_n_0\ : STD_LOGIC;
  signal \s_data[10]_i_3_n_0\ : STD_LOGIC;
  signal \s_data[11]_i_3_n_0\ : STD_LOGIC;
  signal \s_data[12]_i_3_n_0\ : STD_LOGIC;
  signal \s_data[16]_i_3_n_0\ : STD_LOGIC;
  signal \s_data[17]_i_3_n_0\ : STD_LOGIC;
  signal \s_data[18]_i_3_n_0\ : STD_LOGIC;
  signal \s_data[19]_i_3_n_0\ : STD_LOGIC;
  signal \s_data[1]_i_3_n_0\ : STD_LOGIC;
  signal \s_data[20]_i_3_n_0\ : STD_LOGIC;
  signal \s_data[2]_i_3_n_0\ : STD_LOGIC;
  signal \s_data[31]_i_1_n_0\ : STD_LOGIC;
  signal \s_data[31]_i_2_n_0\ : STD_LOGIC;
  signal \s_data[3]_i_3_n_0\ : STD_LOGIC;
  signal \s_data[4]_i_3_n_0\ : STD_LOGIC;
  signal \s_data[8]_i_3_n_0\ : STD_LOGIC;
  signal \s_data[9]_i_3_n_0\ : STD_LOGIC;
  signal \s_data_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_data_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \s_data_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \s_data_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \s_data_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \s_data_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \s_data_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \s_data_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \s_data_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_data_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \s_data_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \s_data_reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \s_data_reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \s_data_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \s_data_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \s_data_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_data_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_data_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_data_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \s_data_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \s_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_data_reg_n_0_[16]\ : STD_LOGIC;
  signal \s_data_reg_n_0_[17]\ : STD_LOGIC;
  signal \s_data_reg_n_0_[18]\ : STD_LOGIC;
  signal \s_data_reg_n_0_[19]\ : STD_LOGIC;
  signal \s_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \s_data_reg_n_0_[20]\ : STD_LOGIC;
  signal \s_data_reg_n_0_[21]\ : STD_LOGIC;
  signal \s_data_reg_n_0_[22]\ : STD_LOGIC;
  signal \s_data_reg_n_0_[23]\ : STD_LOGIC;
  signal \s_data_reg_n_0_[24]\ : STD_LOGIC;
  signal \s_data_reg_n_0_[25]\ : STD_LOGIC;
  signal \s_data_reg_n_0_[26]\ : STD_LOGIC;
  signal \s_data_reg_n_0_[27]\ : STD_LOGIC;
  signal \s_data_reg_n_0_[28]\ : STD_LOGIC;
  signal \s_data_reg_n_0_[29]\ : STD_LOGIC;
  signal \s_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_data_reg_n_0_[30]\ : STD_LOGIC;
  signal \s_data_reg_n_0_[31]\ : STD_LOGIC;
  signal \s_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \s_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \s_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \s_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \s_data_reg_n_0_[7]\ : STD_LOGIC;
  signal s_enb_i_1_n_0 : STD_LOGIC;
  signal s_enb_reg_n_0 : STD_LOGIC;
  signal s_index : STD_LOGIC_VECTOR ( 30 downto 1 );
  signal \s_index[30]_i_1_n_0\ : STD_LOGIC;
  signal \s_index[4]_i_3_n_0\ : STD_LOGIC;
  signal \s_index_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \s_index_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \s_index_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \s_index_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \s_index_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \s_index_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \s_index_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \s_index_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \s_index_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \s_index_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \s_index_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \s_index_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \s_index_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \s_index_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \s_index_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \s_index_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \s_index_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \s_index_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \s_index_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \s_index_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \s_index_reg[30]_i_3_n_3\ : STD_LOGIC;
  signal \s_index_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_index_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \s_index_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \s_index_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \s_index_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \s_index_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \s_index_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \s_index_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \s_index_reg_n_0_[10]\ : STD_LOGIC;
  signal \s_index_reg_n_0_[11]\ : STD_LOGIC;
  signal \s_index_reg_n_0_[12]\ : STD_LOGIC;
  signal \s_index_reg_n_0_[13]\ : STD_LOGIC;
  signal \s_index_reg_n_0_[14]\ : STD_LOGIC;
  signal \s_index_reg_n_0_[15]\ : STD_LOGIC;
  signal \s_index_reg_n_0_[16]\ : STD_LOGIC;
  signal \s_index_reg_n_0_[17]\ : STD_LOGIC;
  signal \s_index_reg_n_0_[18]\ : STD_LOGIC;
  signal \s_index_reg_n_0_[19]\ : STD_LOGIC;
  signal \s_index_reg_n_0_[1]\ : STD_LOGIC;
  signal \s_index_reg_n_0_[20]\ : STD_LOGIC;
  signal \s_index_reg_n_0_[21]\ : STD_LOGIC;
  signal \s_index_reg_n_0_[22]\ : STD_LOGIC;
  signal \s_index_reg_n_0_[23]\ : STD_LOGIC;
  signal \s_index_reg_n_0_[24]\ : STD_LOGIC;
  signal \s_index_reg_n_0_[25]\ : STD_LOGIC;
  signal \s_index_reg_n_0_[26]\ : STD_LOGIC;
  signal \s_index_reg_n_0_[27]\ : STD_LOGIC;
  signal \s_index_reg_n_0_[28]\ : STD_LOGIC;
  signal \s_index_reg_n_0_[29]\ : STD_LOGIC;
  signal \s_index_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_index_reg_n_0_[30]\ : STD_LOGIC;
  signal \s_index_reg_n_0_[3]\ : STD_LOGIC;
  signal \s_index_reg_n_0_[4]\ : STD_LOGIC;
  signal \s_index_reg_n_0_[5]\ : STD_LOGIC;
  signal \s_index_reg_n_0_[6]\ : STD_LOGIC;
  signal \s_index_reg_n_0_[7]\ : STD_LOGIC;
  signal \s_index_reg_n_0_[8]\ : STD_LOGIC;
  signal \s_index_reg_n_0_[9]\ : STD_LOGIC;
  signal s_max_len : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \s_max_len[30]_i_1_n_0\ : STD_LOGIC;
  signal s_rstb_i_1_n_0 : STD_LOGIC;
  signal s_rstb_reg_n_0 : STD_LOGIC;
  signal \s_web[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_web_reg_n_0_[3]\ : STD_LOGIC;
  signal t_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \t_state1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \t_state1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \t_state1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \t_state1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \t_state1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \t_state1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \t_state1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \t_state1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \t_state1_carry__0_n_0\ : STD_LOGIC;
  signal \t_state1_carry__0_n_1\ : STD_LOGIC;
  signal \t_state1_carry__0_n_2\ : STD_LOGIC;
  signal \t_state1_carry__0_n_3\ : STD_LOGIC;
  signal \t_state1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \t_state1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \t_state1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \t_state1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \t_state1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \t_state1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \t_state1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \t_state1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \t_state1_carry__1_n_0\ : STD_LOGIC;
  signal \t_state1_carry__1_n_1\ : STD_LOGIC;
  signal \t_state1_carry__1_n_2\ : STD_LOGIC;
  signal \t_state1_carry__1_n_3\ : STD_LOGIC;
  signal \t_state1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \t_state1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \t_state1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \t_state1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \t_state1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \t_state1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \t_state1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \t_state1_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \t_state1_carry__2_n_0\ : STD_LOGIC;
  signal \t_state1_carry__2_n_1\ : STD_LOGIC;
  signal \t_state1_carry__2_n_2\ : STD_LOGIC;
  signal \t_state1_carry__2_n_3\ : STD_LOGIC;
  signal t_state1_carry_i_1_n_0 : STD_LOGIC;
  signal t_state1_carry_i_2_n_0 : STD_LOGIC;
  signal t_state1_carry_i_3_n_0 : STD_LOGIC;
  signal t_state1_carry_i_4_n_0 : STD_LOGIC;
  signal t_state1_carry_i_5_n_0 : STD_LOGIC;
  signal t_state1_carry_i_6_n_0 : STD_LOGIC;
  signal t_state1_carry_i_7_n_0 : STD_LOGIC;
  signal t_state1_carry_i_8_n_0 : STD_LOGIC;
  signal t_state1_carry_n_0 : STD_LOGIC;
  signal t_state1_carry_n_1 : STD_LOGIC;
  signal t_state1_carry_n_2 : STD_LOGIC;
  signal t_state1_carry_n_3 : STD_LOGIC;
  signal \NLW_s_data0__0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_s_data0__0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_s_data0__15_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_s_data0__15_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_s_data0_inferred__0/i___0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_s_data0_inferred__0/i___0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_s_data0_inferred__0/i___15_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_s_data0_inferred__0/i___15_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_s_data0_inferred__1/i___0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_s_data0_inferred__1/i___0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_s_data0_inferred__1/i___15_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_s_data0_inferred__1/i___15_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_s_data0_inferred__2/i___0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_s_data0_inferred__2/i___0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_s_data0_inferred__2/i___15_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_s_data0_inferred__2/i___15_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_s_index_reg[30]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_s_index_reg[30]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_t_state1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_t_state1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_t_state1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_t_state1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_t_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_t_state[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_t_state_reg[0]\ : label is "read2:010,write1:011,write2:100,idle:000,read1:001,read3:110,done:101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_t_state_reg[1]_inv\ : label is "read2:010,write1:011,write2:100,idle:000,read1:001,read3:110,done:101";
  attribute inverted : string;
  attribute inverted of \FSM_sequential_t_state_reg[1]_inv\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_t_state_reg[2]\ : label is "read2:010,write1:011,write2:100,idle:000,read1:001,read3:110,done:101";
  attribute SOFT_HLUTNM of \o_addr0[0]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \o_addr0[10]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \o_addr0[11]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \o_addr0[12]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \o_addr0[13]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \o_addr0[14]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \o_addr0[15]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \o_addr0[16]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \o_addr0[17]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \o_addr0[18]_INST_0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \o_addr0[19]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \o_addr0[1]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \o_addr0[20]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \o_addr0[21]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \o_addr0[22]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \o_addr0[23]_INST_0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \o_addr0[24]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \o_addr0[25]_INST_0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \o_addr0[26]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \o_addr0[27]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \o_addr0[28]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \o_addr0[29]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \o_addr0[2]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \o_addr0[30]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \o_addr0[31]_INST_0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \o_addr0[3]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \o_addr0[4]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \o_addr0[5]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \o_addr0[6]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \o_addr0[7]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \o_addr0[8]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \o_addr0[9]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \o_addr1[0]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \o_addr1[10]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \o_addr1[11]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \o_addr1[12]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \o_addr1[13]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \o_addr1[14]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \o_addr1[15]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \o_addr1[16]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \o_addr1[17]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \o_addr1[18]_INST_0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \o_addr1[19]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \o_addr1[1]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \o_addr1[20]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \o_addr1[21]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \o_addr1[22]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \o_addr1[23]_INST_0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \o_addr1[24]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \o_addr1[25]_INST_0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \o_addr1[26]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \o_addr1[27]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \o_addr1[28]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \o_addr1[29]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \o_addr1[2]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \o_addr1[30]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \o_addr1[31]_INST_0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \o_addr1[3]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \o_addr1[4]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \o_addr1[5]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \o_addr1[6]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \o_addr1[7]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \o_addr1[8]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \o_addr1[9]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of o_control0_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of o_control0_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of o_control1_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \o_din0[0]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \o_din0[10]_INST_0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \o_din0[11]_INST_0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \o_din0[12]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \o_din0[13]_INST_0\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \o_din0[14]_INST_0\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \o_din0[15]_INST_0\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \o_din0[16]_INST_0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \o_din0[17]_INST_0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \o_din0[18]_INST_0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \o_din0[19]_INST_0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \o_din0[1]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \o_din0[20]_INST_0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \o_din0[21]_INST_0\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \o_din0[22]_INST_0\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \o_din0[23]_INST_0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \o_din0[24]_INST_0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \o_din0[25]_INST_0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \o_din0[26]_INST_0\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \o_din0[27]_INST_0\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \o_din0[28]_INST_0\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \o_din0[29]_INST_0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \o_din0[2]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \o_din0[30]_INST_0\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \o_din0[31]_INST_0\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \o_din0[3]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \o_din0[4]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \o_din0[5]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \o_din0[6]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \o_din0[7]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \o_din0[8]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \o_din0[9]_INST_0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \o_din1[0]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \o_din1[10]_INST_0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \o_din1[11]_INST_0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \o_din1[12]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \o_din1[13]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \o_din1[14]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \o_din1[15]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \o_din1[16]_INST_0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \o_din1[17]_INST_0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \o_din1[18]_INST_0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \o_din1[19]_INST_0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \o_din1[1]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \o_din1[20]_INST_0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \o_din1[21]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \o_din1[22]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \o_din1[23]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \o_din1[24]_INST_0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \o_din1[25]_INST_0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \o_din1[26]_INST_0\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \o_din1[27]_INST_0\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \o_din1[28]_INST_0\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \o_din1[29]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \o_din1[2]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \o_din1[30]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \o_din1[31]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \o_din1[3]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \o_din1[4]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \o_din1[5]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \o_din1[6]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \o_din1[7]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \o_din1[8]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \o_din1[9]_INST_0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of o_en0_INST_0 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of o_en1_INST_0 : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of o_rst0_INST_0 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of o_rst1_INST_0 : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \o_we0[0]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \o_we1[0]_INST_0\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \s_addrb[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_addrb[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_addrb[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_addrb[31]_i_1\ : label is "soft_lutpair3";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \s_data0__15_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \s_data0__15_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \s_data0_inferred__0/i___15_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \s_data0_inferred__0/i___15_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \s_data0_inferred__1/i___15_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \s_data0_inferred__1/i___15_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \s_data0_inferred__2/i___15_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \s_data0_inferred__2/i___15_carry__0\ : label is 35;
  attribute SOFT_HLUTNM of \s_data[13]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \s_data[14]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \s_data[15]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s_data[21]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s_data[22]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s_data[23]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s_data[29]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s_data[30]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s_data[31]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s_data[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_data[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s_data[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of s_enb_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_index[10]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \s_index[11]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \s_index[12]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \s_index[13]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \s_index[14]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \s_index[15]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \s_index[16]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \s_index[17]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \s_index[18]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \s_index[19]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \s_index[1]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \s_index[20]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \s_index[21]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \s_index[22]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \s_index[23]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \s_index[24]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \s_index[25]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \s_index[26]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \s_index[27]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \s_index[28]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \s_index[29]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \s_index[2]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \s_index[30]_i_2\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \s_index[3]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \s_index[4]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \s_index[5]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \s_index[6]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \s_index[7]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \s_index[8]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \s_index[9]_i_1\ : label is "soft_lutpair79";
  attribute ADDER_THRESHOLD of \s_index_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \s_index_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \s_index_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \s_index_reg[24]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \s_index_reg[28]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \s_index_reg[30]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \s_index_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \s_index_reg[8]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of s_rstb_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_web[3]_i_1\ : label is "soft_lutpair4";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of t_state1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \t_state1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \t_state1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \t_state1_carry__2\ : label is 11;
begin
  o_control0 <= \^o_control0\;
  o_control1 <= \^o_control1\;
  o_done <= \^o_done\;
\FSM_sequential_t_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FC000AF"
    )
        port map (
      I0 => i_enable,
      I1 => \t_state1_carry__2_n_0\,
      I2 => t_state(1),
      I3 => t_state(0),
      I4 => t_state(2),
      O => \FSM_sequential_t_state[0]_i_1_n_0\
    );
\FSM_sequential_t_state[1]_inv_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C83C"
    )
        port map (
      I0 => \t_state1_carry__2_n_0\,
      I1 => t_state(1),
      I2 => t_state(0),
      I3 => t_state(2),
      O => \FSM_sequential_t_state[1]_inv_i_1_n_0\
    );
\FSM_sequential_t_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"64"
    )
        port map (
      I0 => t_state(1),
      I1 => t_state(0),
      I2 => t_state(2),
      O => \FSM_sequential_t_state[2]_i_1_n_0\
    );
\FSM_sequential_t_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => \FSM_sequential_t_state[0]_i_1_n_0\,
      Q => t_state(0),
      R => rst
    );
\FSM_sequential_t_state_reg[1]_inv\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => \FSM_sequential_t_state[1]_inv_i_1_n_0\,
      Q => t_state(1),
      S => rst
    );
\FSM_sequential_t_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => \FSM_sequential_t_state[2]_i_1_n_0\,
      Q => t_state(2),
      R => rst
    );
\i___0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => p_0_in(7),
      I1 => p_0_in(6),
      I2 => p_0_in(5),
      O => \i___0_carry__0_i_1_n_0\
    );
\i___0_carry__0_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \s_data_reg_n_0_[23]\,
      I1 => \s_data_reg_n_0_[22]\,
      I2 => \s_data_reg_n_0_[21]\,
      O => \i___0_carry__0_i_1__0_n_0\
    );
\i___0_carry__0_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \s_data_reg_n_0_[31]\,
      I1 => \s_data_reg_n_0_[30]\,
      I2 => \s_data_reg_n_0_[29]\,
      O => \i___0_carry__0_i_1__1_n_0\
    );
\i___0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => p_0_in(5),
      I1 => p_0_in(7),
      I2 => p_0_in(6),
      O => \i___0_carry__0_i_2_n_0\
    );
\i___0_carry__0_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \s_data_reg_n_0_[21]\,
      I1 => \s_data_reg_n_0_[23]\,
      I2 => \s_data_reg_n_0_[22]\,
      O => \i___0_carry__0_i_2__0_n_0\
    );
\i___0_carry__0_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \s_data_reg_n_0_[29]\,
      I1 => \s_data_reg_n_0_[31]\,
      I2 => \s_data_reg_n_0_[30]\,
      O => \i___0_carry__0_i_2__1_n_0\
    );
\i___0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7E"
    )
        port map (
      I0 => p_0_in(6),
      I1 => p_0_in(7),
      I2 => p_0_in(5),
      O => \i___0_carry__0_i_3_n_0\
    );
\i___0_carry__0_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7E"
    )
        port map (
      I0 => \s_data_reg_n_0_[22]\,
      I1 => \s_data_reg_n_0_[23]\,
      I2 => \s_data_reg_n_0_[21]\,
      O => \i___0_carry__0_i_3__0_n_0\
    );
\i___0_carry__0_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7E"
    )
        port map (
      I0 => \s_data_reg_n_0_[30]\,
      I1 => \s_data_reg_n_0_[31]\,
      I2 => \s_data_reg_n_0_[29]\,
      O => \i___0_carry__0_i_3__1_n_0\
    );
\i___0_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \s_data_reg_n_0_[30]\,
      I1 => \s_data_reg_n_0_[31]\,
      I2 => \s_data_reg_n_0_[29]\,
      O => \i___0_carry_i_1_n_0\
    );
\i___0_carry_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \s_data_reg_n_0_[22]\,
      I1 => \s_data_reg_n_0_[23]\,
      I2 => \s_data_reg_n_0_[21]\,
      O => \i___0_carry_i_1__0_n_0\
    );
\i___0_carry_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in(6),
      I1 => p_0_in(7),
      I2 => p_0_in(5),
      O => \i___0_carry_i_1__1_n_0\
    );
\i___0_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => p_0_in(5),
      I1 => p_0_in(6),
      I2 => p_0_in(7),
      O => \i___0_carry_i_2_n_0\
    );
\i___0_carry_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => \s_data_reg_n_0_[21]\,
      I1 => \s_data_reg_n_0_[22]\,
      I2 => \s_data_reg_n_0_[23]\,
      O => \i___0_carry_i_2__0_n_0\
    );
\i___0_carry_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => \s_data_reg_n_0_[29]\,
      I1 => \s_data_reg_n_0_[30]\,
      I2 => \s_data_reg_n_0_[31]\,
      O => \i___0_carry_i_2__1_n_0\
    );
\i___0_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in(6),
      I1 => p_0_in(7),
      I2 => p_0_in(5),
      O => \i___0_carry_i_3_n_0\
    );
\i___0_carry_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \s_data_reg_n_0_[22]\,
      I1 => \s_data_reg_n_0_[23]\,
      I2 => \s_data_reg_n_0_[21]\,
      O => \i___0_carry_i_3__0_n_0\
    );
\i___0_carry_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \s_data_reg_n_0_[30]\,
      I1 => \s_data_reg_n_0_[31]\,
      I2 => \s_data_reg_n_0_[29]\,
      O => \i___0_carry_i_3__1_n_0\
    );
\i___0_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in(5),
      I1 => p_0_in(6),
      O => \i___0_carry_i_4_n_0\
    );
\i___0_carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \s_data_reg_n_0_[21]\,
      I1 => \s_data_reg_n_0_[22]\,
      O => \i___0_carry_i_4__0_n_0\
    );
\i___0_carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \s_data_reg_n_0_[29]\,
      I1 => \s_data_reg_n_0_[30]\,
      O => \i___0_carry_i_4__1_n_0\
    );
\i___15_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in(5),
      I1 => \s_data0_inferred__0/i___0_carry__0_n_6\,
      O => \i___15_carry__0_i_1_n_0\
    );
\i___15_carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \s_data_reg_n_0_[21]\,
      I1 => \s_data0_inferred__1/i___0_carry__0_n_6\,
      O => \i___15_carry__0_i_1__0_n_0\
    );
\i___15_carry__0_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \s_data_reg_n_0_[29]\,
      I1 => \s_data0_inferred__2/i___0_carry__0_n_6\,
      O => \i___15_carry__0_i_1__1_n_0\
    );
\i___15_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in(4),
      I1 => \s_data0_inferred__0/i___0_carry__0_n_7\,
      O => \i___15_carry__0_i_2_n_0\
    );
\i___15_carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \s_data_reg_n_0_[20]\,
      I1 => \s_data0_inferred__1/i___0_carry__0_n_7\,
      O => \i___15_carry__0_i_2__0_n_0\
    );
\i___15_carry__0_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \s_data_reg_n_0_[28]\,
      I1 => \s_data0_inferred__2/i___0_carry__0_n_7\,
      O => \i___15_carry__0_i_2__1_n_0\
    );
\i___15_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in(3),
      I1 => \s_data0_inferred__0/i___0_carry_n_4\,
      O => \i___15_carry_i_1_n_0\
    );
\i___15_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \s_data_reg_n_0_[19]\,
      I1 => \s_data0_inferred__1/i___0_carry_n_4\,
      O => \i___15_carry_i_1__0_n_0\
    );
\i___15_carry_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \s_data_reg_n_0_[27]\,
      I1 => \s_data0_inferred__2/i___0_carry_n_4\,
      O => \i___15_carry_i_1__1_n_0\
    );
\i___15_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in(2),
      I1 => \s_data0_inferred__0/i___0_carry_n_5\,
      O => \i___15_carry_i_2_n_0\
    );
\i___15_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \s_data_reg_n_0_[18]\,
      I1 => \s_data0_inferred__1/i___0_carry_n_5\,
      O => \i___15_carry_i_2__0_n_0\
    );
\i___15_carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \s_data_reg_n_0_[26]\,
      I1 => \s_data0_inferred__2/i___0_carry_n_5\,
      O => \i___15_carry_i_2__1_n_0\
    );
\i___15_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \s_data0_inferred__0/i___0_carry_n_6\,
      O => \i___15_carry_i_3_n_0\
    );
\i___15_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \s_data_reg_n_0_[17]\,
      I1 => \s_data0_inferred__1/i___0_carry_n_6\,
      O => \i___15_carry_i_3__0_n_0\
    );
\i___15_carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \s_data_reg_n_0_[25]\,
      I1 => \s_data0_inferred__2/i___0_carry_n_6\,
      O => \i___15_carry_i_3__1_n_0\
    );
\i___15_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \s_data0_inferred__0/i___0_carry_n_7\,
      O => \i___15_carry_i_4_n_0\
    );
\i___15_carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \s_data_reg_n_0_[16]\,
      I1 => \s_data0_inferred__1/i___0_carry_n_7\,
      O => \i___15_carry_i_4__0_n_0\
    );
\i___15_carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \s_data_reg_n_0_[24]\,
      I1 => \s_data0_inferred__2/i___0_carry_n_7\,
      O => \i___15_carry_i_4__1_n_0\
    );
\o_addr0[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_addrb(0),
      I1 => i_bram_sel,
      O => o_addr0(0)
    );
\o_addr0[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_addrb(10),
      I1 => i_bram_sel,
      O => o_addr0(10)
    );
\o_addr0[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_addrb(11),
      I1 => i_bram_sel,
      O => o_addr0(11)
    );
\o_addr0[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_addrb(12),
      I1 => i_bram_sel,
      O => o_addr0(12)
    );
\o_addr0[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_addrb(13),
      I1 => i_bram_sel,
      O => o_addr0(13)
    );
\o_addr0[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_addrb(14),
      I1 => i_bram_sel,
      O => o_addr0(14)
    );
\o_addr0[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_addrb(15),
      I1 => i_bram_sel,
      O => o_addr0(15)
    );
\o_addr0[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_addrb(16),
      I1 => i_bram_sel,
      O => o_addr0(16)
    );
\o_addr0[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_addrb(17),
      I1 => i_bram_sel,
      O => o_addr0(17)
    );
\o_addr0[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_addrb(18),
      I1 => i_bram_sel,
      O => o_addr0(18)
    );
\o_addr0[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_addrb(19),
      I1 => i_bram_sel,
      O => o_addr0(19)
    );
\o_addr0[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_addrb(1),
      I1 => i_bram_sel,
      O => o_addr0(1)
    );
\o_addr0[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_addrb(20),
      I1 => i_bram_sel,
      O => o_addr0(20)
    );
\o_addr0[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_addrb(21),
      I1 => i_bram_sel,
      O => o_addr0(21)
    );
\o_addr0[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_addrb(22),
      I1 => i_bram_sel,
      O => o_addr0(22)
    );
\o_addr0[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_addrb(23),
      I1 => i_bram_sel,
      O => o_addr0(23)
    );
\o_addr0[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_addrb(24),
      I1 => i_bram_sel,
      O => o_addr0(24)
    );
\o_addr0[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_addrb(25),
      I1 => i_bram_sel,
      O => o_addr0(25)
    );
\o_addr0[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_addrb(26),
      I1 => i_bram_sel,
      O => o_addr0(26)
    );
\o_addr0[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_addrb(27),
      I1 => i_bram_sel,
      O => o_addr0(27)
    );
\o_addr0[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_addrb(28),
      I1 => i_bram_sel,
      O => o_addr0(28)
    );
\o_addr0[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_addrb(29),
      I1 => i_bram_sel,
      O => o_addr0(29)
    );
\o_addr0[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_addrb(2),
      I1 => i_bram_sel,
      O => o_addr0(2)
    );
\o_addr0[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_addrb(30),
      I1 => i_bram_sel,
      O => o_addr0(30)
    );
\o_addr0[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_addrb(31),
      I1 => i_bram_sel,
      O => o_addr0(31)
    );
\o_addr0[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_addrb(3),
      I1 => i_bram_sel,
      O => o_addr0(3)
    );
\o_addr0[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_addrb(4),
      I1 => i_bram_sel,
      O => o_addr0(4)
    );
\o_addr0[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_addrb(5),
      I1 => i_bram_sel,
      O => o_addr0(5)
    );
\o_addr0[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_addrb(6),
      I1 => i_bram_sel,
      O => o_addr0(6)
    );
\o_addr0[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_addrb(7),
      I1 => i_bram_sel,
      O => o_addr0(7)
    );
\o_addr0[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_addrb(8),
      I1 => i_bram_sel,
      O => o_addr0(8)
    );
\o_addr0[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_addrb(9),
      I1 => i_bram_sel,
      O => o_addr0(9)
    );
\o_addr1[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => s_addrb(0),
      O => o_addr1(0)
    );
\o_addr1[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => s_addrb(10),
      O => o_addr1(10)
    );
\o_addr1[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => s_addrb(11),
      O => o_addr1(11)
    );
\o_addr1[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => s_addrb(12),
      O => o_addr1(12)
    );
\o_addr1[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => s_addrb(13),
      O => o_addr1(13)
    );
\o_addr1[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => s_addrb(14),
      O => o_addr1(14)
    );
\o_addr1[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => s_addrb(15),
      O => o_addr1(15)
    );
\o_addr1[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => s_addrb(16),
      O => o_addr1(16)
    );
\o_addr1[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => s_addrb(17),
      O => o_addr1(17)
    );
\o_addr1[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => s_addrb(18),
      O => o_addr1(18)
    );
\o_addr1[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => s_addrb(19),
      O => o_addr1(19)
    );
\o_addr1[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => s_addrb(1),
      O => o_addr1(1)
    );
\o_addr1[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => s_addrb(20),
      O => o_addr1(20)
    );
\o_addr1[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => s_addrb(21),
      O => o_addr1(21)
    );
\o_addr1[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => s_addrb(22),
      O => o_addr1(22)
    );
\o_addr1[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => s_addrb(23),
      O => o_addr1(23)
    );
\o_addr1[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => s_addrb(24),
      O => o_addr1(24)
    );
\o_addr1[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => s_addrb(25),
      O => o_addr1(25)
    );
\o_addr1[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => s_addrb(26),
      O => o_addr1(26)
    );
\o_addr1[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => s_addrb(27),
      O => o_addr1(27)
    );
\o_addr1[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => s_addrb(28),
      O => o_addr1(28)
    );
\o_addr1[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => s_addrb(29),
      O => o_addr1(29)
    );
\o_addr1[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => s_addrb(2),
      O => o_addr1(2)
    );
\o_addr1[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => s_addrb(30),
      O => o_addr1(30)
    );
\o_addr1[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => s_addrb(31),
      O => o_addr1(31)
    );
\o_addr1[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => s_addrb(3),
      O => o_addr1(3)
    );
\o_addr1[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => s_addrb(4),
      O => o_addr1(4)
    );
\o_addr1[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => s_addrb(5),
      O => o_addr1(5)
    );
\o_addr1[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => s_addrb(6),
      O => o_addr1(6)
    );
\o_addr1[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => s_addrb(7),
      O => o_addr1(7)
    );
\o_addr1[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => s_addrb(8),
      O => o_addr1(8)
    );
\o_addr1[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => s_addrb(9),
      O => o_addr1(9)
    );
o_control0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => i_enable,
      I1 => i_bram_sel,
      I2 => o_control0_i_2_n_0,
      I3 => \^o_control0\,
      O => o_control0_i_1_n_0
    );
o_control0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => t_state(2),
      I1 => t_state(0),
      I2 => t_state(1),
      I3 => rst,
      O => o_control0_i_2_n_0
    );
o_control0_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => o_control0_i_1_n_0,
      Q => \^o_control0\,
      R => '0'
    );
o_control1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FA3A"
    )
        port map (
      I0 => \^o_control1\,
      I1 => i_enable,
      I2 => o_control0_i_2_n_0,
      I3 => i_bram_sel,
      O => o_control1_i_1_n_0
    );
o_control1_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => o_control1_i_1_n_0,
      Q => \^o_control1\,
      R => '0'
    );
\o_din0[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_data_reg_n_0_[0]\,
      I1 => i_bram_sel,
      O => o_din0(0)
    );
\o_din0[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in(2),
      I1 => i_bram_sel,
      O => o_din0(10)
    );
\o_din0[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in(3),
      I1 => i_bram_sel,
      O => o_din0(11)
    );
\o_din0[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in(4),
      I1 => i_bram_sel,
      O => o_din0(12)
    );
\o_din0[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in(5),
      I1 => i_bram_sel,
      O => o_din0(13)
    );
\o_din0[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in(6),
      I1 => i_bram_sel,
      O => o_din0(14)
    );
\o_din0[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in(7),
      I1 => i_bram_sel,
      O => o_din0(15)
    );
\o_din0[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_data_reg_n_0_[16]\,
      I1 => i_bram_sel,
      O => o_din0(16)
    );
\o_din0[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_data_reg_n_0_[17]\,
      I1 => i_bram_sel,
      O => o_din0(17)
    );
\o_din0[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_data_reg_n_0_[18]\,
      I1 => i_bram_sel,
      O => o_din0(18)
    );
\o_din0[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_data_reg_n_0_[19]\,
      I1 => i_bram_sel,
      O => o_din0(19)
    );
\o_din0[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_data_reg_n_0_[1]\,
      I1 => i_bram_sel,
      O => o_din0(1)
    );
\o_din0[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_data_reg_n_0_[20]\,
      I1 => i_bram_sel,
      O => o_din0(20)
    );
\o_din0[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_data_reg_n_0_[21]\,
      I1 => i_bram_sel,
      O => o_din0(21)
    );
\o_din0[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_data_reg_n_0_[22]\,
      I1 => i_bram_sel,
      O => o_din0(22)
    );
\o_din0[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_data_reg_n_0_[23]\,
      I1 => i_bram_sel,
      O => o_din0(23)
    );
\o_din0[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_data_reg_n_0_[24]\,
      I1 => i_bram_sel,
      O => o_din0(24)
    );
\o_din0[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_data_reg_n_0_[25]\,
      I1 => i_bram_sel,
      O => o_din0(25)
    );
\o_din0[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_data_reg_n_0_[26]\,
      I1 => i_bram_sel,
      O => o_din0(26)
    );
\o_din0[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_data_reg_n_0_[27]\,
      I1 => i_bram_sel,
      O => o_din0(27)
    );
\o_din0[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_data_reg_n_0_[28]\,
      I1 => i_bram_sel,
      O => o_din0(28)
    );
\o_din0[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_data_reg_n_0_[29]\,
      I1 => i_bram_sel,
      O => o_din0(29)
    );
\o_din0[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_data_reg_n_0_[2]\,
      I1 => i_bram_sel,
      O => o_din0(2)
    );
\o_din0[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_data_reg_n_0_[30]\,
      I1 => i_bram_sel,
      O => o_din0(30)
    );
\o_din0[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_data_reg_n_0_[31]\,
      I1 => i_bram_sel,
      O => o_din0(31)
    );
\o_din0[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_data_reg_n_0_[3]\,
      I1 => i_bram_sel,
      O => o_din0(3)
    );
\o_din0[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_data_reg_n_0_[4]\,
      I1 => i_bram_sel,
      O => o_din0(4)
    );
\o_din0[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_data_reg_n_0_[5]\,
      I1 => i_bram_sel,
      O => o_din0(5)
    );
\o_din0[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_data_reg_n_0_[6]\,
      I1 => i_bram_sel,
      O => o_din0(6)
    );
\o_din0[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_data_reg_n_0_[7]\,
      I1 => i_bram_sel,
      O => o_din0(7)
    );
\o_din0[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in(0),
      I1 => i_bram_sel,
      O => o_din0(8)
    );
\o_din0[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in(1),
      I1 => i_bram_sel,
      O => o_din0(9)
    );
\o_din1[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => \s_data_reg_n_0_[0]\,
      O => o_din1(0)
    );
\o_din1[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => p_0_in(2),
      O => o_din1(10)
    );
\o_din1[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => p_0_in(3),
      O => o_din1(11)
    );
\o_din1[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => p_0_in(4),
      O => o_din1(12)
    );
\o_din1[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => p_0_in(5),
      O => o_din1(13)
    );
\o_din1[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => p_0_in(6),
      O => o_din1(14)
    );
\o_din1[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => p_0_in(7),
      O => o_din1(15)
    );
\o_din1[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => \s_data_reg_n_0_[16]\,
      O => o_din1(16)
    );
\o_din1[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => \s_data_reg_n_0_[17]\,
      O => o_din1(17)
    );
\o_din1[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => \s_data_reg_n_0_[18]\,
      O => o_din1(18)
    );
\o_din1[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => \s_data_reg_n_0_[19]\,
      O => o_din1(19)
    );
\o_din1[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => \s_data_reg_n_0_[1]\,
      O => o_din1(1)
    );
\o_din1[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => \s_data_reg_n_0_[20]\,
      O => o_din1(20)
    );
\o_din1[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => \s_data_reg_n_0_[21]\,
      O => o_din1(21)
    );
\o_din1[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => \s_data_reg_n_0_[22]\,
      O => o_din1(22)
    );
\o_din1[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => \s_data_reg_n_0_[23]\,
      O => o_din1(23)
    );
\o_din1[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => \s_data_reg_n_0_[24]\,
      O => o_din1(24)
    );
\o_din1[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => \s_data_reg_n_0_[25]\,
      O => o_din1(25)
    );
\o_din1[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => \s_data_reg_n_0_[26]\,
      O => o_din1(26)
    );
\o_din1[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => \s_data_reg_n_0_[27]\,
      O => o_din1(27)
    );
\o_din1[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => \s_data_reg_n_0_[28]\,
      O => o_din1(28)
    );
\o_din1[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => \s_data_reg_n_0_[29]\,
      O => o_din1(29)
    );
\o_din1[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => \s_data_reg_n_0_[2]\,
      O => o_din1(2)
    );
\o_din1[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => \s_data_reg_n_0_[30]\,
      O => o_din1(30)
    );
\o_din1[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => \s_data_reg_n_0_[31]\,
      O => o_din1(31)
    );
\o_din1[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => \s_data_reg_n_0_[3]\,
      O => o_din1(3)
    );
\o_din1[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => \s_data_reg_n_0_[4]\,
      O => o_din1(4)
    );
\o_din1[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => \s_data_reg_n_0_[5]\,
      O => o_din1(5)
    );
\o_din1[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => \s_data_reg_n_0_[6]\,
      O => o_din1(6)
    );
\o_din1[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => \s_data_reg_n_0_[7]\,
      O => o_din1(7)
    );
\o_din1[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => p_0_in(0),
      O => o_din1(8)
    );
\o_din1[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => p_0_in(1),
      O => o_din1(9)
    );
o_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD80"
    )
        port map (
      I0 => t_state(1),
      I1 => t_state(2),
      I2 => t_state(0),
      I3 => \^o_done\,
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
o_en0_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_enb_reg_n_0,
      I1 => i_bram_sel,
      O => o_en0
    );
o_en1_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => s_enb_reg_n_0,
      O => o_en1
    );
o_rst0_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_rstb_reg_n_0,
      I1 => i_bram_sel,
      O => o_rst0
    );
o_rst1_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => s_rstb_reg_n_0,
      O => o_rst1
    );
\o_we0[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_web_reg_n_0_[3]\,
      I1 => i_bram_sel,
      O => o_we0(0)
    );
\o_we1[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_bram_sel,
      I1 => \s_web_reg_n_0_[3]\,
      O => o_we1(0)
    );
\s_addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_adr(0),
      Q => s_addr(0),
      R => '0'
    );
\s_addr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_adr(10),
      Q => s_addr(10),
      R => '0'
    );
\s_addr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_adr(11),
      Q => s_addr(11),
      R => '0'
    );
\s_addr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_adr(12),
      Q => s_addr(12),
      R => '0'
    );
\s_addr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_adr(13),
      Q => s_addr(13),
      R => '0'
    );
\s_addr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_adr(14),
      Q => s_addr(14),
      R => '0'
    );
\s_addr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_adr(15),
      Q => s_addr(15),
      R => '0'
    );
\s_addr_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_adr(16),
      Q => s_addr(16),
      R => '0'
    );
\s_addr_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_adr(17),
      Q => s_addr(17),
      R => '0'
    );
\s_addr_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_adr(18),
      Q => s_addr(18),
      R => '0'
    );
\s_addr_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_adr(19),
      Q => s_addr(19),
      R => '0'
    );
\s_addr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_adr(1),
      Q => s_addr(1),
      R => '0'
    );
\s_addr_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_adr(20),
      Q => s_addr(20),
      R => '0'
    );
\s_addr_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_adr(21),
      Q => s_addr(21),
      R => '0'
    );
\s_addr_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_adr(22),
      Q => s_addr(22),
      R => '0'
    );
\s_addr_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_adr(23),
      Q => s_addr(23),
      R => '0'
    );
\s_addr_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_adr(24),
      Q => s_addr(24),
      R => '0'
    );
\s_addr_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_adr(25),
      Q => s_addr(25),
      R => '0'
    );
\s_addr_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_adr(26),
      Q => s_addr(26),
      R => '0'
    );
\s_addr_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_adr(27),
      Q => s_addr(27),
      R => '0'
    );
\s_addr_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_adr(28),
      Q => s_addr(28),
      R => '0'
    );
\s_addr_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_adr(29),
      Q => s_addr(29),
      R => '0'
    );
\s_addr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_adr(2),
      Q => s_addr(2),
      R => '0'
    );
\s_addr_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_adr(30),
      Q => s_addr(30),
      R => '0'
    );
\s_addr_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_adr(31),
      Q => s_addr(31),
      R => '0'
    );
\s_addr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_adr(3),
      Q => s_addr(3),
      R => '0'
    );
\s_addr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_adr(4),
      Q => s_addr(4),
      R => '0'
    );
\s_addr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_adr(5),
      Q => s_addr(5),
      R => '0'
    );
\s_addr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_adr(6),
      Q => s_addr(6),
      R => '0'
    );
\s_addr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_adr(7),
      Q => s_addr(7),
      R => '0'
    );
\s_addr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_adr(8),
      Q => s_addr(8),
      R => '0'
    );
\s_addr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_adr(9),
      Q => s_addr(9),
      R => '0'
    );
\s_addrb[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => t_state(0),
      I1 => t_state(2),
      I2 => s_addr(0),
      O => s_addrb0_in(0)
    );
\s_addrb[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => s_addr(10),
      I1 => t_state(0),
      I2 => t_state(2),
      I3 => \s_index_reg_n_0_[10]\,
      O => s_addrb0_in(10)
    );
\s_addrb[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => s_addr(11),
      I1 => t_state(0),
      I2 => t_state(2),
      I3 => \s_index_reg_n_0_[11]\,
      O => s_addrb0_in(11)
    );
\s_addrb[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => s_addr(12),
      I1 => t_state(0),
      I2 => t_state(2),
      I3 => \s_index_reg_n_0_[12]\,
      O => s_addrb0_in(12)
    );
\s_addrb[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => s_addr(13),
      I1 => t_state(0),
      I2 => t_state(2),
      I3 => \s_index_reg_n_0_[13]\,
      O => s_addrb0_in(13)
    );
\s_addrb[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => s_addr(14),
      I1 => t_state(0),
      I2 => t_state(2),
      I3 => \s_index_reg_n_0_[14]\,
      O => s_addrb0_in(14)
    );
\s_addrb[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => s_addr(15),
      I1 => t_state(0),
      I2 => t_state(2),
      I3 => \s_index_reg_n_0_[15]\,
      O => s_addrb0_in(15)
    );
\s_addrb[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => s_addr(16),
      I1 => t_state(0),
      I2 => t_state(2),
      I3 => \s_index_reg_n_0_[16]\,
      O => s_addrb0_in(16)
    );
\s_addrb[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => s_addr(17),
      I1 => t_state(0),
      I2 => t_state(2),
      I3 => \s_index_reg_n_0_[17]\,
      O => s_addrb0_in(17)
    );
\s_addrb[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => s_addr(18),
      I1 => t_state(0),
      I2 => t_state(2),
      I3 => \s_index_reg_n_0_[18]\,
      O => s_addrb0_in(18)
    );
\s_addrb[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => s_addr(19),
      I1 => t_state(0),
      I2 => t_state(2),
      I3 => \s_index_reg_n_0_[19]\,
      O => s_addrb0_in(19)
    );
\s_addrb[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => s_addr(1),
      I1 => t_state(0),
      I2 => t_state(2),
      I3 => \s_index_reg_n_0_[1]\,
      O => s_addrb0_in(1)
    );
\s_addrb[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => s_addr(20),
      I1 => t_state(0),
      I2 => t_state(2),
      I3 => \s_index_reg_n_0_[20]\,
      O => s_addrb0_in(20)
    );
\s_addrb[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => s_addr(21),
      I1 => t_state(0),
      I2 => t_state(2),
      I3 => \s_index_reg_n_0_[21]\,
      O => s_addrb0_in(21)
    );
\s_addrb[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => s_addr(22),
      I1 => t_state(0),
      I2 => t_state(2),
      I3 => \s_index_reg_n_0_[22]\,
      O => s_addrb0_in(22)
    );
\s_addrb[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => s_addr(23),
      I1 => t_state(0),
      I2 => t_state(2),
      I3 => \s_index_reg_n_0_[23]\,
      O => s_addrb0_in(23)
    );
\s_addrb[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => s_addr(24),
      I1 => t_state(0),
      I2 => t_state(2),
      I3 => \s_index_reg_n_0_[24]\,
      O => s_addrb0_in(24)
    );
\s_addrb[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => s_addr(25),
      I1 => t_state(0),
      I2 => t_state(2),
      I3 => \s_index_reg_n_0_[25]\,
      O => s_addrb0_in(25)
    );
\s_addrb[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => s_addr(26),
      I1 => t_state(0),
      I2 => t_state(2),
      I3 => \s_index_reg_n_0_[26]\,
      O => s_addrb0_in(26)
    );
\s_addrb[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => s_addr(27),
      I1 => t_state(0),
      I2 => t_state(2),
      I3 => \s_index_reg_n_0_[27]\,
      O => s_addrb0_in(27)
    );
\s_addrb[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => s_addr(28),
      I1 => t_state(0),
      I2 => t_state(2),
      I3 => \s_index_reg_n_0_[28]\,
      O => s_addrb0_in(28)
    );
\s_addrb[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => s_addr(29),
      I1 => t_state(0),
      I2 => t_state(2),
      I3 => \s_index_reg_n_0_[29]\,
      O => s_addrb0_in(29)
    );
\s_addrb[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => s_addr(2),
      I1 => t_state(0),
      I2 => t_state(2),
      I3 => \s_index_reg_n_0_[2]\,
      O => s_addrb0_in(2)
    );
\s_addrb[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => s_addr(30),
      I1 => t_state(0),
      I2 => t_state(2),
      I3 => \s_index_reg_n_0_[30]\,
      O => s_addrb0_in(30)
    );
\s_addrb[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_addr(31),
      I1 => t_state(0),
      I2 => t_state(2),
      O => s_addrb0_in(31)
    );
\s_addrb[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => s_addr(3),
      I1 => t_state(0),
      I2 => t_state(2),
      I3 => \s_index_reg_n_0_[3]\,
      O => s_addrb0_in(3)
    );
\s_addrb[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => s_addr(4),
      I1 => t_state(0),
      I2 => t_state(2),
      I3 => \s_index_reg_n_0_[4]\,
      O => s_addrb0_in(4)
    );
\s_addrb[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => s_addr(5),
      I1 => t_state(0),
      I2 => t_state(2),
      I3 => \s_index_reg_n_0_[5]\,
      O => s_addrb0_in(5)
    );
\s_addrb[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => s_addr(6),
      I1 => t_state(0),
      I2 => t_state(2),
      I3 => \s_index_reg_n_0_[6]\,
      O => s_addrb0_in(6)
    );
\s_addrb[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => s_addr(7),
      I1 => t_state(0),
      I2 => t_state(2),
      I3 => \s_index_reg_n_0_[7]\,
      O => s_addrb0_in(7)
    );
\s_addrb[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => s_addr(8),
      I1 => t_state(0),
      I2 => t_state(2),
      I3 => \s_index_reg_n_0_[8]\,
      O => s_addrb0_in(8)
    );
\s_addrb[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => s_addr(9),
      I1 => t_state(0),
      I2 => t_state(2),
      I3 => \s_index_reg_n_0_[9]\,
      O => s_addrb0_in(9)
    );
\s_addrb_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => t_state(1),
      D => s_addrb0_in(0),
      Q => s_addrb(0),
      R => rst
    );
\s_addrb_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => t_state(1),
      D => s_addrb0_in(10),
      Q => s_addrb(10),
      R => rst
    );
\s_addrb_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => t_state(1),
      D => s_addrb0_in(11),
      Q => s_addrb(11),
      R => rst
    );
\s_addrb_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => t_state(1),
      D => s_addrb0_in(12),
      Q => s_addrb(12),
      R => rst
    );
\s_addrb_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => t_state(1),
      D => s_addrb0_in(13),
      Q => s_addrb(13),
      R => rst
    );
\s_addrb_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => t_state(1),
      D => s_addrb0_in(14),
      Q => s_addrb(14),
      R => rst
    );
\s_addrb_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => t_state(1),
      D => s_addrb0_in(15),
      Q => s_addrb(15),
      R => rst
    );
\s_addrb_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => t_state(1),
      D => s_addrb0_in(16),
      Q => s_addrb(16),
      R => rst
    );
\s_addrb_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => t_state(1),
      D => s_addrb0_in(17),
      Q => s_addrb(17),
      R => rst
    );
\s_addrb_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => t_state(1),
      D => s_addrb0_in(18),
      Q => s_addrb(18),
      R => rst
    );
\s_addrb_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => t_state(1),
      D => s_addrb0_in(19),
      Q => s_addrb(19),
      R => rst
    );
\s_addrb_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => t_state(1),
      D => s_addrb0_in(1),
      Q => s_addrb(1),
      R => rst
    );
\s_addrb_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => t_state(1),
      D => s_addrb0_in(20),
      Q => s_addrb(20),
      R => rst
    );
\s_addrb_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => t_state(1),
      D => s_addrb0_in(21),
      Q => s_addrb(21),
      R => rst
    );
\s_addrb_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => t_state(1),
      D => s_addrb0_in(22),
      Q => s_addrb(22),
      R => rst
    );
\s_addrb_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => t_state(1),
      D => s_addrb0_in(23),
      Q => s_addrb(23),
      R => rst
    );
\s_addrb_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => t_state(1),
      D => s_addrb0_in(24),
      Q => s_addrb(24),
      R => rst
    );
\s_addrb_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => t_state(1),
      D => s_addrb0_in(25),
      Q => s_addrb(25),
      R => rst
    );
\s_addrb_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => t_state(1),
      D => s_addrb0_in(26),
      Q => s_addrb(26),
      R => rst
    );
\s_addrb_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => t_state(1),
      D => s_addrb0_in(27),
      Q => s_addrb(27),
      R => rst
    );
\s_addrb_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => t_state(1),
      D => s_addrb0_in(28),
      Q => s_addrb(28),
      R => rst
    );
\s_addrb_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => t_state(1),
      D => s_addrb0_in(29),
      Q => s_addrb(29),
      R => rst
    );
\s_addrb_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => t_state(1),
      D => s_addrb0_in(2),
      Q => s_addrb(2),
      R => rst
    );
\s_addrb_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => t_state(1),
      D => s_addrb0_in(30),
      Q => s_addrb(30),
      R => rst
    );
\s_addrb_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => t_state(1),
      D => s_addrb0_in(31),
      Q => s_addrb(31),
      R => rst
    );
\s_addrb_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => t_state(1),
      D => s_addrb0_in(3),
      Q => s_addrb(3),
      R => rst
    );
\s_addrb_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => t_state(1),
      D => s_addrb0_in(4),
      Q => s_addrb(4),
      R => rst
    );
\s_addrb_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => t_state(1),
      D => s_addrb0_in(5),
      Q => s_addrb(5),
      R => rst
    );
\s_addrb_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => t_state(1),
      D => s_addrb0_in(6),
      Q => s_addrb(6),
      R => rst
    );
\s_addrb_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => t_state(1),
      D => s_addrb0_in(7),
      Q => s_addrb(7),
      R => rst
    );
\s_addrb_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => t_state(1),
      D => s_addrb0_in(8),
      Q => s_addrb(8),
      R => rst
    );
\s_addrb_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => t_state(1),
      D => s_addrb0_in(9),
      Q => s_addrb(9),
      R => rst
    );
\s_data0__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \s_data0__0_carry_n_0\,
      CO(2) => \s_data0__0_carry_n_1\,
      CO(1) => \s_data0__0_carry_n_2\,
      CO(0) => \s_data0__0_carry_n_3\,
      CYINIT => '0',
      DI(3) => \s_data0__0_carry_i_1_n_0\,
      DI(2) => \s_data_reg_n_0_[5]\,
      DI(1) => \s_data_reg_n_0_[5]\,
      DI(0) => '0',
      O(3) => \s_data0__0_carry_n_4\,
      O(2) => \s_data0__0_carry_n_5\,
      O(1) => \s_data0__0_carry_n_6\,
      O(0) => \s_data0__0_carry_n_7\,
      S(3) => \s_data0__0_carry_i_2_n_0\,
      S(2) => \s_data0__0_carry_i_3_n_0\,
      S(1) => \s_data0__0_carry_i_4_n_0\,
      S(0) => \s_data_reg_n_0_[5]\
    );
\s_data0__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_data0__0_carry_n_0\,
      CO(3 downto 1) => \NLW_s_data0__0_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \s_data0__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \s_data0__0_carry__0_i_1_n_0\,
      O(3 downto 2) => \NLW_s_data0__0_carry__0_O_UNCONNECTED\(3 downto 2),
      O(1) => \s_data0__0_carry__0_n_6\,
      O(0) => \s_data0__0_carry__0_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \s_data0__0_carry__0_i_2_n_0\,
      S(0) => \s_data0__0_carry__0_i_3_n_0\
    );
\s_data0__0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \s_data_reg_n_0_[7]\,
      I1 => \s_data_reg_n_0_[6]\,
      I2 => \s_data_reg_n_0_[5]\,
      O => \s_data0__0_carry__0_i_1_n_0\
    );
\s_data0__0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \s_data_reg_n_0_[5]\,
      I1 => \s_data_reg_n_0_[7]\,
      I2 => \s_data_reg_n_0_[6]\,
      O => \s_data0__0_carry__0_i_2_n_0\
    );
\s_data0__0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7E"
    )
        port map (
      I0 => \s_data_reg_n_0_[6]\,
      I1 => \s_data_reg_n_0_[7]\,
      I2 => \s_data_reg_n_0_[5]\,
      O => \s_data0__0_carry__0_i_3_n_0\
    );
\s_data0__0_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \s_data_reg_n_0_[6]\,
      I1 => \s_data_reg_n_0_[7]\,
      I2 => \s_data_reg_n_0_[5]\,
      O => \s_data0__0_carry_i_1_n_0\
    );
\s_data0__0_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => \s_data_reg_n_0_[5]\,
      I1 => \s_data_reg_n_0_[6]\,
      I2 => \s_data_reg_n_0_[7]\,
      O => \s_data0__0_carry_i_2_n_0\
    );
\s_data0__0_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \s_data_reg_n_0_[6]\,
      I1 => \s_data_reg_n_0_[7]\,
      I2 => \s_data_reg_n_0_[5]\,
      O => \s_data0__0_carry_i_3_n_0\
    );
\s_data0__0_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \s_data_reg_n_0_[5]\,
      I1 => \s_data_reg_n_0_[6]\,
      O => \s_data0__0_carry_i_4_n_0\
    );
\s_data0__15_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \s_data0__15_carry_n_0\,
      CO(2) => \s_data0__15_carry_n_1\,
      CO(1) => \s_data0__15_carry_n_2\,
      CO(0) => \s_data0__15_carry_n_3\,
      CYINIT => '1',
      DI(3) => \s_data_reg_n_0_[3]\,
      DI(2) => \s_data_reg_n_0_[2]\,
      DI(1) => \s_data_reg_n_0_[1]\,
      DI(0) => \s_data_reg_n_0_[0]\,
      O(3) => \s_data0__15_carry_n_4\,
      O(2) => \s_data0__15_carry_n_5\,
      O(1) => \s_data0__15_carry_n_6\,
      O(0) => \s_data0__15_carry_n_7\,
      S(3) => \s_data0__15_carry_i_1_n_0\,
      S(2) => \s_data0__15_carry_i_2_n_0\,
      S(1) => \s_data0__15_carry_i_3_n_0\,
      S(0) => \s_data0__15_carry_i_4_n_0\
    );
\s_data0__15_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_data0__15_carry_n_0\,
      CO(3 downto 1) => \NLW_s_data0__15_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \s_data0__15_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \s_data_reg_n_0_[4]\,
      O(3 downto 2) => \NLW_s_data0__15_carry__0_O_UNCONNECTED\(3 downto 2),
      O(1) => \s_data0__15_carry__0_n_6\,
      O(0) => \s_data0__15_carry__0_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \s_data0__15_carry__0_i_1_n_0\,
      S(0) => \s_data0__15_carry__0_i_2_n_0\
    );
\s_data0__15_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \s_data_reg_n_0_[5]\,
      I1 => \s_data0__0_carry__0_n_6\,
      O => \s_data0__15_carry__0_i_1_n_0\
    );
\s_data0__15_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \s_data_reg_n_0_[4]\,
      I1 => \s_data0__0_carry__0_n_7\,
      O => \s_data0__15_carry__0_i_2_n_0\
    );
\s_data0__15_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \s_data_reg_n_0_[3]\,
      I1 => \s_data0__0_carry_n_4\,
      O => \s_data0__15_carry_i_1_n_0\
    );
\s_data0__15_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \s_data_reg_n_0_[2]\,
      I1 => \s_data0__0_carry_n_5\,
      O => \s_data0__15_carry_i_2_n_0\
    );
\s_data0__15_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \s_data_reg_n_0_[1]\,
      I1 => \s_data0__0_carry_n_6\,
      O => \s_data0__15_carry_i_3_n_0\
    );
\s_data0__15_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \s_data_reg_n_0_[0]\,
      I1 => \s_data0__0_carry_n_7\,
      O => \s_data0__15_carry_i_4_n_0\
    );
\s_data0_inferred__0/i___0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \s_data0_inferred__0/i___0_carry_n_0\,
      CO(2) => \s_data0_inferred__0/i___0_carry_n_1\,
      CO(1) => \s_data0_inferred__0/i___0_carry_n_2\,
      CO(0) => \s_data0_inferred__0/i___0_carry_n_3\,
      CYINIT => '0',
      DI(3) => \i___0_carry_i_1__1_n_0\,
      DI(2) => p_0_in(5),
      DI(1) => p_0_in(5),
      DI(0) => '0',
      O(3) => \s_data0_inferred__0/i___0_carry_n_4\,
      O(2) => \s_data0_inferred__0/i___0_carry_n_5\,
      O(1) => \s_data0_inferred__0/i___0_carry_n_6\,
      O(0) => \s_data0_inferred__0/i___0_carry_n_7\,
      S(3) => \i___0_carry_i_2_n_0\,
      S(2) => \i___0_carry_i_3_n_0\,
      S(1) => \i___0_carry_i_4_n_0\,
      S(0) => p_0_in(5)
    );
\s_data0_inferred__0/i___0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_data0_inferred__0/i___0_carry_n_0\,
      CO(3 downto 1) => \NLW_s_data0_inferred__0/i___0_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \s_data0_inferred__0/i___0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \i___0_carry__0_i_1_n_0\,
      O(3 downto 2) => \NLW_s_data0_inferred__0/i___0_carry__0_O_UNCONNECTED\(3 downto 2),
      O(1) => \s_data0_inferred__0/i___0_carry__0_n_6\,
      O(0) => \s_data0_inferred__0/i___0_carry__0_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \i___0_carry__0_i_2_n_0\,
      S(0) => \i___0_carry__0_i_3_n_0\
    );
\s_data0_inferred__0/i___15_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \s_data0_inferred__0/i___15_carry_n_0\,
      CO(2) => \s_data0_inferred__0/i___15_carry_n_1\,
      CO(1) => \s_data0_inferred__0/i___15_carry_n_2\,
      CO(0) => \s_data0_inferred__0/i___15_carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => p_0_in(3 downto 0),
      O(3) => \s_data0_inferred__0/i___15_carry_n_4\,
      O(2) => \s_data0_inferred__0/i___15_carry_n_5\,
      O(1) => \s_data0_inferred__0/i___15_carry_n_6\,
      O(0) => \s_data0_inferred__0/i___15_carry_n_7\,
      S(3) => \i___15_carry_i_1_n_0\,
      S(2) => \i___15_carry_i_2_n_0\,
      S(1) => \i___15_carry_i_3_n_0\,
      S(0) => \i___15_carry_i_4_n_0\
    );
\s_data0_inferred__0/i___15_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_data0_inferred__0/i___15_carry_n_0\,
      CO(3 downto 1) => \NLW_s_data0_inferred__0/i___15_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \s_data0_inferred__0/i___15_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => p_0_in(4),
      O(3 downto 2) => \NLW_s_data0_inferred__0/i___15_carry__0_O_UNCONNECTED\(3 downto 2),
      O(1) => \s_data0_inferred__0/i___15_carry__0_n_6\,
      O(0) => \s_data0_inferred__0/i___15_carry__0_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \i___15_carry__0_i_1_n_0\,
      S(0) => \i___15_carry__0_i_2_n_0\
    );
\s_data0_inferred__1/i___0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \s_data0_inferred__1/i___0_carry_n_0\,
      CO(2) => \s_data0_inferred__1/i___0_carry_n_1\,
      CO(1) => \s_data0_inferred__1/i___0_carry_n_2\,
      CO(0) => \s_data0_inferred__1/i___0_carry_n_3\,
      CYINIT => '0',
      DI(3) => \i___0_carry_i_1__0_n_0\,
      DI(2) => \s_data_reg_n_0_[21]\,
      DI(1) => \s_data_reg_n_0_[21]\,
      DI(0) => '0',
      O(3) => \s_data0_inferred__1/i___0_carry_n_4\,
      O(2) => \s_data0_inferred__1/i___0_carry_n_5\,
      O(1) => \s_data0_inferred__1/i___0_carry_n_6\,
      O(0) => \s_data0_inferred__1/i___0_carry_n_7\,
      S(3) => \i___0_carry_i_2__0_n_0\,
      S(2) => \i___0_carry_i_3__0_n_0\,
      S(1) => \i___0_carry_i_4__0_n_0\,
      S(0) => \s_data_reg_n_0_[21]\
    );
\s_data0_inferred__1/i___0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_data0_inferred__1/i___0_carry_n_0\,
      CO(3 downto 1) => \NLW_s_data0_inferred__1/i___0_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \s_data0_inferred__1/i___0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \i___0_carry__0_i_1__0_n_0\,
      O(3 downto 2) => \NLW_s_data0_inferred__1/i___0_carry__0_O_UNCONNECTED\(3 downto 2),
      O(1) => \s_data0_inferred__1/i___0_carry__0_n_6\,
      O(0) => \s_data0_inferred__1/i___0_carry__0_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \i___0_carry__0_i_2__0_n_0\,
      S(0) => \i___0_carry__0_i_3__0_n_0\
    );
\s_data0_inferred__1/i___15_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \s_data0_inferred__1/i___15_carry_n_0\,
      CO(2) => \s_data0_inferred__1/i___15_carry_n_1\,
      CO(1) => \s_data0_inferred__1/i___15_carry_n_2\,
      CO(0) => \s_data0_inferred__1/i___15_carry_n_3\,
      CYINIT => '1',
      DI(3) => \s_data_reg_n_0_[19]\,
      DI(2) => \s_data_reg_n_0_[18]\,
      DI(1) => \s_data_reg_n_0_[17]\,
      DI(0) => \s_data_reg_n_0_[16]\,
      O(3) => \s_data0_inferred__1/i___15_carry_n_4\,
      O(2) => \s_data0_inferred__1/i___15_carry_n_5\,
      O(1) => \s_data0_inferred__1/i___15_carry_n_6\,
      O(0) => \s_data0_inferred__1/i___15_carry_n_7\,
      S(3) => \i___15_carry_i_1__0_n_0\,
      S(2) => \i___15_carry_i_2__0_n_0\,
      S(1) => \i___15_carry_i_3__0_n_0\,
      S(0) => \i___15_carry_i_4__0_n_0\
    );
\s_data0_inferred__1/i___15_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_data0_inferred__1/i___15_carry_n_0\,
      CO(3 downto 1) => \NLW_s_data0_inferred__1/i___15_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \s_data0_inferred__1/i___15_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \s_data_reg_n_0_[20]\,
      O(3 downto 2) => \NLW_s_data0_inferred__1/i___15_carry__0_O_UNCONNECTED\(3 downto 2),
      O(1) => \s_data0_inferred__1/i___15_carry__0_n_6\,
      O(0) => \s_data0_inferred__1/i___15_carry__0_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \i___15_carry__0_i_1__0_n_0\,
      S(0) => \i___15_carry__0_i_2__0_n_0\
    );
\s_data0_inferred__2/i___0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \s_data0_inferred__2/i___0_carry_n_0\,
      CO(2) => \s_data0_inferred__2/i___0_carry_n_1\,
      CO(1) => \s_data0_inferred__2/i___0_carry_n_2\,
      CO(0) => \s_data0_inferred__2/i___0_carry_n_3\,
      CYINIT => '0',
      DI(3) => \i___0_carry_i_1_n_0\,
      DI(2) => \s_data_reg_n_0_[29]\,
      DI(1) => \s_data_reg_n_0_[29]\,
      DI(0) => '0',
      O(3) => \s_data0_inferred__2/i___0_carry_n_4\,
      O(2) => \s_data0_inferred__2/i___0_carry_n_5\,
      O(1) => \s_data0_inferred__2/i___0_carry_n_6\,
      O(0) => \s_data0_inferred__2/i___0_carry_n_7\,
      S(3) => \i___0_carry_i_2__1_n_0\,
      S(2) => \i___0_carry_i_3__1_n_0\,
      S(1) => \i___0_carry_i_4__1_n_0\,
      S(0) => \s_data_reg_n_0_[29]\
    );
\s_data0_inferred__2/i___0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_data0_inferred__2/i___0_carry_n_0\,
      CO(3 downto 1) => \NLW_s_data0_inferred__2/i___0_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \s_data0_inferred__2/i___0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \i___0_carry__0_i_1__1_n_0\,
      O(3 downto 2) => \NLW_s_data0_inferred__2/i___0_carry__0_O_UNCONNECTED\(3 downto 2),
      O(1) => \s_data0_inferred__2/i___0_carry__0_n_6\,
      O(0) => \s_data0_inferred__2/i___0_carry__0_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \i___0_carry__0_i_2__1_n_0\,
      S(0) => \i___0_carry__0_i_3__1_n_0\
    );
\s_data0_inferred__2/i___15_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \s_data0_inferred__2/i___15_carry_n_0\,
      CO(2) => \s_data0_inferred__2/i___15_carry_n_1\,
      CO(1) => \s_data0_inferred__2/i___15_carry_n_2\,
      CO(0) => \s_data0_inferred__2/i___15_carry_n_3\,
      CYINIT => '1',
      DI(3) => \s_data_reg_n_0_[27]\,
      DI(2) => \s_data_reg_n_0_[26]\,
      DI(1) => \s_data_reg_n_0_[25]\,
      DI(0) => \s_data_reg_n_0_[24]\,
      O(3) => \s_data0_inferred__2/i___15_carry_n_4\,
      O(2) => \s_data0_inferred__2/i___15_carry_n_5\,
      O(1) => \s_data0_inferred__2/i___15_carry_n_6\,
      O(0) => \s_data0_inferred__2/i___15_carry_n_7\,
      S(3) => \i___15_carry_i_1__1_n_0\,
      S(2) => \i___15_carry_i_2__1_n_0\,
      S(1) => \i___15_carry_i_3__1_n_0\,
      S(0) => \i___15_carry_i_4__1_n_0\
    );
\s_data0_inferred__2/i___15_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_data0_inferred__2/i___15_carry_n_0\,
      CO(3 downto 1) => \NLW_s_data0_inferred__2/i___15_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \s_data0_inferred__2/i___15_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \s_data_reg_n_0_[28]\,
      O(3 downto 2) => \NLW_s_data0_inferred__2/i___15_carry__0_O_UNCONNECTED\(3 downto 2),
      O(1) => \s_data0_inferred__2/i___15_carry__0_n_6\,
      O(0) => \s_data0_inferred__2/i___15_carry__0_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \i___15_carry__0_i_1__1_n_0\,
      S(0) => \i___15_carry__0_i_2__1_n_0\
    );
\s_data[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dout1(0),
      I1 => i_bram_sel,
      I2 => i_dout0(0),
      O => in8(0)
    );
\s_data[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15555555AAAAAAAA"
    )
        port map (
      I0 => \s_data0__15_carry__0_n_6\,
      I1 => \s_data0__15_carry__0_n_7\,
      I2 => \s_data0__15_carry_n_5\,
      I3 => \s_data0__15_carry_n_6\,
      I4 => \s_data0__15_carry_n_4\,
      I5 => \s_data0__15_carry_n_7\,
      O => \s_data[0]_i_3_n_0\
    );
\s_data[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dout1(10),
      I1 => i_bram_sel,
      I2 => i_dout0(10),
      O => in8(10)
    );
\s_data[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FC03FC07F00FF00"
    )
        port map (
      I0 => \s_data0_inferred__0/i___15_carry_n_4\,
      I1 => \s_data0_inferred__0/i___15_carry_n_6\,
      I2 => \s_data0_inferred__0/i___15_carry_n_7\,
      I3 => \s_data0_inferred__0/i___15_carry_n_5\,
      I4 => \s_data0_inferred__0/i___15_carry__0_n_7\,
      I5 => \s_data0_inferred__0/i___15_carry__0_n_6\,
      O => \s_data[10]_i_3_n_0\
    );
\s_data[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dout1(11),
      I1 => i_bram_sel,
      I2 => i_dout0(11),
      O => in8(11)
    );
\s_data[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAA6AAA2AAAAAAA"
    )
        port map (
      I0 => \s_data0_inferred__0/i___15_carry_n_4\,
      I1 => \s_data0_inferred__0/i___15_carry_n_6\,
      I2 => \s_data0_inferred__0/i___15_carry_n_7\,
      I3 => \s_data0_inferred__0/i___15_carry_n_5\,
      I4 => \s_data0_inferred__0/i___15_carry__0_n_7\,
      I5 => \s_data0_inferred__0/i___15_carry__0_n_6\,
      O => \s_data[11]_i_3_n_0\
    );
\s_data[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dout1(12),
      I1 => i_bram_sel,
      I2 => i_dout0(12),
      O => in8(12)
    );
\s_data[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF80007FFF0000"
    )
        port map (
      I0 => \s_data0_inferred__0/i___15_carry_n_4\,
      I1 => \s_data0_inferred__0/i___15_carry_n_6\,
      I2 => \s_data0_inferred__0/i___15_carry_n_7\,
      I3 => \s_data0_inferred__0/i___15_carry_n_5\,
      I4 => \s_data0_inferred__0/i___15_carry__0_n_7\,
      I5 => \s_data0_inferred__0/i___15_carry__0_n_6\,
      O => \s_data[12]_i_3_n_0\
    );
\s_data[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dout1(13),
      I1 => i_bram_sel,
      I2 => i_dout0(13),
      O => in8(13)
    );
\s_data[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dout1(14),
      I1 => i_bram_sel,
      I2 => i_dout0(14),
      O => in8(14)
    );
\s_data[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dout1(15),
      I1 => i_bram_sel,
      I2 => i_dout0(15),
      O => in8(15)
    );
\s_data[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dout1(16),
      I1 => i_bram_sel,
      I2 => i_dout0(16),
      O => in8(16)
    );
\s_data[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15555555AAAAAAAA"
    )
        port map (
      I0 => \s_data0_inferred__1/i___15_carry__0_n_6\,
      I1 => \s_data0_inferred__1/i___15_carry__0_n_7\,
      I2 => \s_data0_inferred__1/i___15_carry_n_5\,
      I3 => \s_data0_inferred__1/i___15_carry_n_6\,
      I4 => \s_data0_inferred__1/i___15_carry_n_4\,
      I5 => \s_data0_inferred__1/i___15_carry_n_7\,
      O => \s_data[16]_i_3_n_0\
    );
\s_data[17]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dout1(17),
      I1 => i_bram_sel,
      I2 => i_dout0(17),
      O => in8(17)
    );
\s_data[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C3C3C3C4CCCCCCC"
    )
        port map (
      I0 => \s_data0_inferred__1/i___15_carry_n_4\,
      I1 => \s_data0_inferred__1/i___15_carry_n_6\,
      I2 => \s_data0_inferred__1/i___15_carry_n_7\,
      I3 => \s_data0_inferred__1/i___15_carry_n_5\,
      I4 => \s_data0_inferred__1/i___15_carry__0_n_7\,
      I5 => \s_data0_inferred__1/i___15_carry__0_n_6\,
      O => \s_data[17]_i_3_n_0\
    );
\s_data[18]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dout1(18),
      I1 => i_bram_sel,
      I2 => i_dout0(18),
      O => in8(18)
    );
\s_data[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FC03FC07F00FF00"
    )
        port map (
      I0 => \s_data0_inferred__1/i___15_carry_n_4\,
      I1 => \s_data0_inferred__1/i___15_carry_n_6\,
      I2 => \s_data0_inferred__1/i___15_carry_n_7\,
      I3 => \s_data0_inferred__1/i___15_carry_n_5\,
      I4 => \s_data0_inferred__1/i___15_carry__0_n_7\,
      I5 => \s_data0_inferred__1/i___15_carry__0_n_6\,
      O => \s_data[18]_i_3_n_0\
    );
\s_data[19]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dout1(19),
      I1 => i_bram_sel,
      I2 => i_dout0(19),
      O => in8(19)
    );
\s_data[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAA6AAA2AAAAAAA"
    )
        port map (
      I0 => \s_data0_inferred__1/i___15_carry_n_4\,
      I1 => \s_data0_inferred__1/i___15_carry_n_6\,
      I2 => \s_data0_inferred__1/i___15_carry_n_7\,
      I3 => \s_data0_inferred__1/i___15_carry_n_5\,
      I4 => \s_data0_inferred__1/i___15_carry__0_n_7\,
      I5 => \s_data0_inferred__1/i___15_carry__0_n_6\,
      O => \s_data[19]_i_3_n_0\
    );
\s_data[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dout1(1),
      I1 => i_bram_sel,
      I2 => i_dout0(1),
      O => in8(1)
    );
\s_data[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C3C3C3C4CCCCCCC"
    )
        port map (
      I0 => \s_data0__15_carry_n_4\,
      I1 => \s_data0__15_carry_n_6\,
      I2 => \s_data0__15_carry_n_7\,
      I3 => \s_data0__15_carry_n_5\,
      I4 => \s_data0__15_carry__0_n_7\,
      I5 => \s_data0__15_carry__0_n_6\,
      O => \s_data[1]_i_3_n_0\
    );
\s_data[20]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dout1(20),
      I1 => i_bram_sel,
      I2 => i_dout0(20),
      O => in8(20)
    );
\s_data[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF80007FFF0000"
    )
        port map (
      I0 => \s_data0_inferred__1/i___15_carry_n_4\,
      I1 => \s_data0_inferred__1/i___15_carry_n_6\,
      I2 => \s_data0_inferred__1/i___15_carry_n_7\,
      I3 => \s_data0_inferred__1/i___15_carry_n_5\,
      I4 => \s_data0_inferred__1/i___15_carry__0_n_7\,
      I5 => \s_data0_inferred__1/i___15_carry__0_n_6\,
      O => \s_data[20]_i_3_n_0\
    );
\s_data[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dout1(21),
      I1 => i_bram_sel,
      I2 => i_dout0(21),
      O => in8(21)
    );
\s_data[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dout1(22),
      I1 => i_bram_sel,
      I2 => i_dout0(22),
      O => in8(22)
    );
\s_data[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dout1(23),
      I1 => i_bram_sel,
      I2 => i_dout0(23),
      O => in8(23)
    );
\s_data[24]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dout1(24),
      I1 => i_bram_sel,
      I2 => i_dout0(24),
      O => in8(24)
    );
\s_data[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15555555AAAAAAAA"
    )
        port map (
      I0 => \s_data0_inferred__2/i___15_carry__0_n_6\,
      I1 => \s_data0_inferred__2/i___15_carry__0_n_7\,
      I2 => \s_data0_inferred__2/i___15_carry_n_5\,
      I3 => \s_data0_inferred__2/i___15_carry_n_6\,
      I4 => \s_data0_inferred__2/i___15_carry_n_4\,
      I5 => \s_data0_inferred__2/i___15_carry_n_7\,
      O => s_data0(0)
    );
\s_data[25]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dout1(25),
      I1 => i_bram_sel,
      I2 => i_dout0(25),
      O => in8(25)
    );
\s_data[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C3C3C3C4CCCCCCC"
    )
        port map (
      I0 => \s_data0_inferred__2/i___15_carry_n_4\,
      I1 => \s_data0_inferred__2/i___15_carry_n_6\,
      I2 => \s_data0_inferred__2/i___15_carry_n_7\,
      I3 => \s_data0_inferred__2/i___15_carry_n_5\,
      I4 => \s_data0_inferred__2/i___15_carry__0_n_7\,
      I5 => \s_data0_inferred__2/i___15_carry__0_n_6\,
      O => s_data0(1)
    );
\s_data[26]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dout1(26),
      I1 => i_bram_sel,
      I2 => i_dout0(26),
      O => in8(26)
    );
\s_data[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FC03FC07F00FF00"
    )
        port map (
      I0 => \s_data0_inferred__2/i___15_carry_n_4\,
      I1 => \s_data0_inferred__2/i___15_carry_n_6\,
      I2 => \s_data0_inferred__2/i___15_carry_n_7\,
      I3 => \s_data0_inferred__2/i___15_carry_n_5\,
      I4 => \s_data0_inferred__2/i___15_carry__0_n_7\,
      I5 => \s_data0_inferred__2/i___15_carry__0_n_6\,
      O => s_data0(2)
    );
\s_data[27]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dout1(27),
      I1 => i_bram_sel,
      I2 => i_dout0(27),
      O => in8(27)
    );
\s_data[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAA6AAA2AAAAAAA"
    )
        port map (
      I0 => \s_data0_inferred__2/i___15_carry_n_4\,
      I1 => \s_data0_inferred__2/i___15_carry_n_6\,
      I2 => \s_data0_inferred__2/i___15_carry_n_7\,
      I3 => \s_data0_inferred__2/i___15_carry_n_5\,
      I4 => \s_data0_inferred__2/i___15_carry__0_n_7\,
      I5 => \s_data0_inferred__2/i___15_carry__0_n_6\,
      O => s_data0(3)
    );
\s_data[28]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dout1(28),
      I1 => i_bram_sel,
      I2 => i_dout0(28),
      O => in8(28)
    );
\s_data[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF80007FFF0000"
    )
        port map (
      I0 => \s_data0_inferred__2/i___15_carry_n_4\,
      I1 => \s_data0_inferred__2/i___15_carry_n_6\,
      I2 => \s_data0_inferred__2/i___15_carry_n_7\,
      I3 => \s_data0_inferred__2/i___15_carry_n_5\,
      I4 => \s_data0_inferred__2/i___15_carry__0_n_7\,
      I5 => \s_data0_inferred__2/i___15_carry__0_n_6\,
      O => s_data0(4)
    );
\s_data[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dout1(29),
      I1 => i_bram_sel,
      I2 => i_dout0(29),
      O => in8(29)
    );
\s_data[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dout1(2),
      I1 => i_bram_sel,
      I2 => i_dout0(2),
      O => in8(2)
    );
\s_data[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FC03FC07F00FF00"
    )
        port map (
      I0 => \s_data0__15_carry_n_4\,
      I1 => \s_data0__15_carry_n_6\,
      I2 => \s_data0__15_carry_n_7\,
      I3 => \s_data0__15_carry_n_5\,
      I4 => \s_data0__15_carry__0_n_7\,
      I5 => \s_data0__15_carry__0_n_6\,
      O => \s_data[2]_i_3_n_0\
    );
\s_data[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dout1(30),
      I1 => i_bram_sel,
      I2 => i_dout0(30),
      O => in8(30)
    );
\s_data[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => t_state(0),
      I1 => rst,
      I2 => t_state(1),
      I3 => t_state(2),
      O => \s_data[31]_i_1_n_0\
    );
\s_data[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_state(2),
      I1 => t_state(1),
      I2 => rst,
      O => \s_data[31]_i_2_n_0\
    );
\s_data[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dout1(31),
      I1 => i_bram_sel,
      I2 => i_dout0(31),
      O => in8(31)
    );
\s_data[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dout1(3),
      I1 => i_bram_sel,
      I2 => i_dout0(3),
      O => in8(3)
    );
\s_data[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAA6AAA2AAAAAAA"
    )
        port map (
      I0 => \s_data0__15_carry_n_4\,
      I1 => \s_data0__15_carry_n_6\,
      I2 => \s_data0__15_carry_n_7\,
      I3 => \s_data0__15_carry_n_5\,
      I4 => \s_data0__15_carry__0_n_7\,
      I5 => \s_data0__15_carry__0_n_6\,
      O => \s_data[3]_i_3_n_0\
    );
\s_data[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dout1(4),
      I1 => i_bram_sel,
      I2 => i_dout0(4),
      O => in8(4)
    );
\s_data[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF80007FFF0000"
    )
        port map (
      I0 => \s_data0__15_carry_n_4\,
      I1 => \s_data0__15_carry_n_6\,
      I2 => \s_data0__15_carry_n_7\,
      I3 => \s_data0__15_carry_n_5\,
      I4 => \s_data0__15_carry__0_n_7\,
      I5 => \s_data0__15_carry__0_n_6\,
      O => \s_data[4]_i_3_n_0\
    );
\s_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dout1(5),
      I1 => i_bram_sel,
      I2 => i_dout0(5),
      O => in8(5)
    );
\s_data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dout1(6),
      I1 => i_bram_sel,
      I2 => i_dout0(6),
      O => in8(6)
    );
\s_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dout1(7),
      I1 => i_bram_sel,
      I2 => i_dout0(7),
      O => in8(7)
    );
\s_data[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dout1(8),
      I1 => i_bram_sel,
      I2 => i_dout0(8),
      O => in8(8)
    );
\s_data[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15555555AAAAAAAA"
    )
        port map (
      I0 => \s_data0_inferred__0/i___15_carry__0_n_6\,
      I1 => \s_data0_inferred__0/i___15_carry__0_n_7\,
      I2 => \s_data0_inferred__0/i___15_carry_n_5\,
      I3 => \s_data0_inferred__0/i___15_carry_n_6\,
      I4 => \s_data0_inferred__0/i___15_carry_n_4\,
      I5 => \s_data0_inferred__0/i___15_carry_n_7\,
      O => \s_data[8]_i_3_n_0\
    );
\s_data[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_dout1(9),
      I1 => i_bram_sel,
      I2 => i_dout0(9),
      O => in8(9)
    );
\s_data[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C3C3C3C4CCCCCCC"
    )
        port map (
      I0 => \s_data0_inferred__0/i___15_carry_n_4\,
      I1 => \s_data0_inferred__0/i___15_carry_n_6\,
      I2 => \s_data0_inferred__0/i___15_carry_n_7\,
      I3 => \s_data0_inferred__0/i___15_carry_n_5\,
      I4 => \s_data0_inferred__0/i___15_carry__0_n_7\,
      I5 => \s_data0_inferred__0/i___15_carry__0_n_6\,
      O => \s_data[9]_i_3_n_0\
    );
\s_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_data[31]_i_2_n_0\,
      D => \s_data_reg[0]_i_1_n_0\,
      Q => \s_data_reg_n_0_[0]\,
      R => '0'
    );
\s_data_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => in8(0),
      I1 => \s_data[0]_i_3_n_0\,
      O => \s_data_reg[0]_i_1_n_0\,
      S => t_state(0)
    );
\s_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_data[31]_i_2_n_0\,
      D => \s_data_reg[10]_i_1_n_0\,
      Q => p_0_in(2),
      R => '0'
    );
\s_data_reg[10]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => in8(10),
      I1 => \s_data[10]_i_3_n_0\,
      O => \s_data_reg[10]_i_1_n_0\,
      S => t_state(0)
    );
\s_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_data[31]_i_2_n_0\,
      D => \s_data_reg[11]_i_1_n_0\,
      Q => p_0_in(3),
      R => '0'
    );
\s_data_reg[11]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => in8(11),
      I1 => \s_data[11]_i_3_n_0\,
      O => \s_data_reg[11]_i_1_n_0\,
      S => t_state(0)
    );
\s_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_data[31]_i_2_n_0\,
      D => \s_data_reg[12]_i_1_n_0\,
      Q => p_0_in(4),
      R => '0'
    );
\s_data_reg[12]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => in8(12),
      I1 => \s_data[12]_i_3_n_0\,
      O => \s_data_reg[12]_i_1_n_0\,
      S => t_state(0)
    );
\s_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_data[31]_i_2_n_0\,
      D => in8(13),
      Q => p_0_in(5),
      R => \s_data[31]_i_1_n_0\
    );
\s_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_data[31]_i_2_n_0\,
      D => in8(14),
      Q => p_0_in(6),
      R => \s_data[31]_i_1_n_0\
    );
\s_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_data[31]_i_2_n_0\,
      D => in8(15),
      Q => p_0_in(7),
      R => \s_data[31]_i_1_n_0\
    );
\s_data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_data[31]_i_2_n_0\,
      D => \s_data_reg[16]_i_1_n_0\,
      Q => \s_data_reg_n_0_[16]\,
      R => '0'
    );
\s_data_reg[16]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => in8(16),
      I1 => \s_data[16]_i_3_n_0\,
      O => \s_data_reg[16]_i_1_n_0\,
      S => t_state(0)
    );
\s_data_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_data[31]_i_2_n_0\,
      D => \s_data_reg[17]_i_1_n_0\,
      Q => \s_data_reg_n_0_[17]\,
      R => '0'
    );
\s_data_reg[17]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => in8(17),
      I1 => \s_data[17]_i_3_n_0\,
      O => \s_data_reg[17]_i_1_n_0\,
      S => t_state(0)
    );
\s_data_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_data[31]_i_2_n_0\,
      D => \s_data_reg[18]_i_1_n_0\,
      Q => \s_data_reg_n_0_[18]\,
      R => '0'
    );
\s_data_reg[18]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => in8(18),
      I1 => \s_data[18]_i_3_n_0\,
      O => \s_data_reg[18]_i_1_n_0\,
      S => t_state(0)
    );
\s_data_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_data[31]_i_2_n_0\,
      D => \s_data_reg[19]_i_1_n_0\,
      Q => \s_data_reg_n_0_[19]\,
      R => '0'
    );
\s_data_reg[19]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => in8(19),
      I1 => \s_data[19]_i_3_n_0\,
      O => \s_data_reg[19]_i_1_n_0\,
      S => t_state(0)
    );
\s_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_data[31]_i_2_n_0\,
      D => \s_data_reg[1]_i_1_n_0\,
      Q => \s_data_reg_n_0_[1]\,
      R => '0'
    );
\s_data_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => in8(1),
      I1 => \s_data[1]_i_3_n_0\,
      O => \s_data_reg[1]_i_1_n_0\,
      S => t_state(0)
    );
\s_data_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_data[31]_i_2_n_0\,
      D => \s_data_reg[20]_i_1_n_0\,
      Q => \s_data_reg_n_0_[20]\,
      R => '0'
    );
\s_data_reg[20]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => in8(20),
      I1 => \s_data[20]_i_3_n_0\,
      O => \s_data_reg[20]_i_1_n_0\,
      S => t_state(0)
    );
\s_data_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_data[31]_i_2_n_0\,
      D => in8(21),
      Q => \s_data_reg_n_0_[21]\,
      R => \s_data[31]_i_1_n_0\
    );
\s_data_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_data[31]_i_2_n_0\,
      D => in8(22),
      Q => \s_data_reg_n_0_[22]\,
      R => \s_data[31]_i_1_n_0\
    );
\s_data_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_data[31]_i_2_n_0\,
      D => in8(23),
      Q => \s_data_reg_n_0_[23]\,
      R => \s_data[31]_i_1_n_0\
    );
\s_data_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_data[31]_i_2_n_0\,
      D => \s_data_reg[24]_i_1_n_0\,
      Q => \s_data_reg_n_0_[24]\,
      R => '0'
    );
\s_data_reg[24]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => in8(24),
      I1 => s_data0(0),
      O => \s_data_reg[24]_i_1_n_0\,
      S => t_state(0)
    );
\s_data_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_data[31]_i_2_n_0\,
      D => \s_data_reg[25]_i_1_n_0\,
      Q => \s_data_reg_n_0_[25]\,
      R => '0'
    );
\s_data_reg[25]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => in8(25),
      I1 => s_data0(1),
      O => \s_data_reg[25]_i_1_n_0\,
      S => t_state(0)
    );
\s_data_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_data[31]_i_2_n_0\,
      D => \s_data_reg[26]_i_1_n_0\,
      Q => \s_data_reg_n_0_[26]\,
      R => '0'
    );
\s_data_reg[26]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => in8(26),
      I1 => s_data0(2),
      O => \s_data_reg[26]_i_1_n_0\,
      S => t_state(0)
    );
\s_data_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_data[31]_i_2_n_0\,
      D => \s_data_reg[27]_i_1_n_0\,
      Q => \s_data_reg_n_0_[27]\,
      R => '0'
    );
\s_data_reg[27]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => in8(27),
      I1 => s_data0(3),
      O => \s_data_reg[27]_i_1_n_0\,
      S => t_state(0)
    );
\s_data_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_data[31]_i_2_n_0\,
      D => \s_data_reg[28]_i_1_n_0\,
      Q => \s_data_reg_n_0_[28]\,
      R => '0'
    );
\s_data_reg[28]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => in8(28),
      I1 => s_data0(4),
      O => \s_data_reg[28]_i_1_n_0\,
      S => t_state(0)
    );
\s_data_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_data[31]_i_2_n_0\,
      D => in8(29),
      Q => \s_data_reg_n_0_[29]\,
      R => \s_data[31]_i_1_n_0\
    );
\s_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_data[31]_i_2_n_0\,
      D => \s_data_reg[2]_i_1_n_0\,
      Q => \s_data_reg_n_0_[2]\,
      R => '0'
    );
\s_data_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => in8(2),
      I1 => \s_data[2]_i_3_n_0\,
      O => \s_data_reg[2]_i_1_n_0\,
      S => t_state(0)
    );
\s_data_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_data[31]_i_2_n_0\,
      D => in8(30),
      Q => \s_data_reg_n_0_[30]\,
      R => \s_data[31]_i_1_n_0\
    );
\s_data_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_data[31]_i_2_n_0\,
      D => in8(31),
      Q => \s_data_reg_n_0_[31]\,
      R => \s_data[31]_i_1_n_0\
    );
\s_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_data[31]_i_2_n_0\,
      D => \s_data_reg[3]_i_1_n_0\,
      Q => \s_data_reg_n_0_[3]\,
      R => '0'
    );
\s_data_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => in8(3),
      I1 => \s_data[3]_i_3_n_0\,
      O => \s_data_reg[3]_i_1_n_0\,
      S => t_state(0)
    );
\s_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_data[31]_i_2_n_0\,
      D => \s_data_reg[4]_i_1_n_0\,
      Q => \s_data_reg_n_0_[4]\,
      R => '0'
    );
\s_data_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => in8(4),
      I1 => \s_data[4]_i_3_n_0\,
      O => \s_data_reg[4]_i_1_n_0\,
      S => t_state(0)
    );
\s_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_data[31]_i_2_n_0\,
      D => in8(5),
      Q => \s_data_reg_n_0_[5]\,
      R => \s_data[31]_i_1_n_0\
    );
\s_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_data[31]_i_2_n_0\,
      D => in8(6),
      Q => \s_data_reg_n_0_[6]\,
      R => \s_data[31]_i_1_n_0\
    );
\s_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_data[31]_i_2_n_0\,
      D => in8(7),
      Q => \s_data_reg_n_0_[7]\,
      R => \s_data[31]_i_1_n_0\
    );
\s_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_data[31]_i_2_n_0\,
      D => \s_data_reg[8]_i_1_n_0\,
      Q => p_0_in(0),
      R => '0'
    );
\s_data_reg[8]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => in8(8),
      I1 => \s_data[8]_i_3_n_0\,
      O => \s_data_reg[8]_i_1_n_0\,
      S => t_state(0)
    );
\s_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_data[31]_i_2_n_0\,
      D => \s_data_reg[9]_i_1_n_0\,
      Q => p_0_in(1),
      R => '0'
    );
\s_data_reg[9]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => in8(9),
      I1 => \s_data[9]_i_3_n_0\,
      O => \s_data_reg[9]_i_1_n_0\,
      S => t_state(0)
    );
s_enb_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6E62"
    )
        port map (
      I0 => t_state(2),
      I1 => t_state(0),
      I2 => t_state(1),
      I3 => s_enb_reg_n_0,
      O => s_enb_i_1_n_0
    );
s_enb_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => s_enb_i_1_n_0,
      Q => s_enb_reg_n_0,
      R => rst
    );
\s_index[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in6(10),
      I1 => t_state(0),
      O => s_index(10)
    );
\s_index[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in6(11),
      I1 => t_state(0),
      O => s_index(11)
    );
\s_index[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in6(12),
      I1 => t_state(0),
      O => s_index(12)
    );
\s_index[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in6(13),
      I1 => t_state(0),
      O => s_index(13)
    );
\s_index[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in6(14),
      I1 => t_state(0),
      O => s_index(14)
    );
\s_index[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in6(15),
      I1 => t_state(0),
      O => s_index(15)
    );
\s_index[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in6(16),
      I1 => t_state(0),
      O => s_index(16)
    );
\s_index[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in6(17),
      I1 => t_state(0),
      O => s_index(17)
    );
\s_index[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in6(18),
      I1 => t_state(0),
      O => s_index(18)
    );
\s_index[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in6(19),
      I1 => t_state(0),
      O => s_index(19)
    );
\s_index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in6(1),
      I1 => t_state(0),
      O => s_index(1)
    );
\s_index[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in6(20),
      I1 => t_state(0),
      O => s_index(20)
    );
\s_index[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in6(21),
      I1 => t_state(0),
      O => s_index(21)
    );
\s_index[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in6(22),
      I1 => t_state(0),
      O => s_index(22)
    );
\s_index[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in6(23),
      I1 => t_state(0),
      O => s_index(23)
    );
\s_index[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in6(24),
      I1 => t_state(0),
      O => s_index(24)
    );
\s_index[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in6(25),
      I1 => t_state(0),
      O => s_index(25)
    );
\s_index[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in6(26),
      I1 => t_state(0),
      O => s_index(26)
    );
\s_index[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in6(27),
      I1 => t_state(0),
      O => s_index(27)
    );
\s_index[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in6(28),
      I1 => t_state(0),
      O => s_index(28)
    );
\s_index[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in6(29),
      I1 => t_state(0),
      O => s_index(29)
    );
\s_index[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in6(2),
      I1 => t_state(0),
      O => s_index(2)
    );
\s_index[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A00"
    )
        port map (
      I0 => t_state(1),
      I1 => t_state(0),
      I2 => \t_state1_carry__2_n_0\,
      I3 => t_state(2),
      O => \s_index[30]_i_1_n_0\
    );
\s_index[30]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in6(30),
      I1 => t_state(0),
      O => s_index(30)
    );
\s_index[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in6(3),
      I1 => t_state(0),
      O => s_index(3)
    );
\s_index[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in6(4),
      I1 => t_state(0),
      O => s_index(4)
    );
\s_index[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \s_index_reg_n_0_[2]\,
      O => \s_index[4]_i_3_n_0\
    );
\s_index[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in6(5),
      I1 => t_state(0),
      O => s_index(5)
    );
\s_index[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in6(6),
      I1 => t_state(0),
      O => s_index(6)
    );
\s_index[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in6(7),
      I1 => t_state(0),
      O => s_index(7)
    );
\s_index[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in6(8),
      I1 => t_state(0),
      O => s_index(8)
    );
\s_index[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in6(9),
      I1 => t_state(0),
      O => s_index(9)
    );
\s_index_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_index[30]_i_1_n_0\,
      D => s_index(10),
      Q => \s_index_reg_n_0_[10]\,
      R => rst
    );
\s_index_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_index[30]_i_1_n_0\,
      D => s_index(11),
      Q => \s_index_reg_n_0_[11]\,
      R => rst
    );
\s_index_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_index[30]_i_1_n_0\,
      D => s_index(12),
      Q => \s_index_reg_n_0_[12]\,
      R => rst
    );
\s_index_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_index_reg[8]_i_2_n_0\,
      CO(3) => \s_index_reg[12]_i_2_n_0\,
      CO(2) => \s_index_reg[12]_i_2_n_1\,
      CO(1) => \s_index_reg[12]_i_2_n_2\,
      CO(0) => \s_index_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in6(12 downto 9),
      S(3) => \s_index_reg_n_0_[12]\,
      S(2) => \s_index_reg_n_0_[11]\,
      S(1) => \s_index_reg_n_0_[10]\,
      S(0) => \s_index_reg_n_0_[9]\
    );
\s_index_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_index[30]_i_1_n_0\,
      D => s_index(13),
      Q => \s_index_reg_n_0_[13]\,
      R => rst
    );
\s_index_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_index[30]_i_1_n_0\,
      D => s_index(14),
      Q => \s_index_reg_n_0_[14]\,
      R => rst
    );
\s_index_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_index[30]_i_1_n_0\,
      D => s_index(15),
      Q => \s_index_reg_n_0_[15]\,
      R => rst
    );
\s_index_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_index[30]_i_1_n_0\,
      D => s_index(16),
      Q => \s_index_reg_n_0_[16]\,
      R => rst
    );
\s_index_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_index_reg[12]_i_2_n_0\,
      CO(3) => \s_index_reg[16]_i_2_n_0\,
      CO(2) => \s_index_reg[16]_i_2_n_1\,
      CO(1) => \s_index_reg[16]_i_2_n_2\,
      CO(0) => \s_index_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in6(16 downto 13),
      S(3) => \s_index_reg_n_0_[16]\,
      S(2) => \s_index_reg_n_0_[15]\,
      S(1) => \s_index_reg_n_0_[14]\,
      S(0) => \s_index_reg_n_0_[13]\
    );
\s_index_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_index[30]_i_1_n_0\,
      D => s_index(17),
      Q => \s_index_reg_n_0_[17]\,
      R => rst
    );
\s_index_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_index[30]_i_1_n_0\,
      D => s_index(18),
      Q => \s_index_reg_n_0_[18]\,
      R => rst
    );
\s_index_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_index[30]_i_1_n_0\,
      D => s_index(19),
      Q => \s_index_reg_n_0_[19]\,
      R => rst
    );
\s_index_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_index[30]_i_1_n_0\,
      D => s_index(1),
      Q => \s_index_reg_n_0_[1]\,
      R => rst
    );
\s_index_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_index[30]_i_1_n_0\,
      D => s_index(20),
      Q => \s_index_reg_n_0_[20]\,
      R => rst
    );
\s_index_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_index_reg[16]_i_2_n_0\,
      CO(3) => \s_index_reg[20]_i_2_n_0\,
      CO(2) => \s_index_reg[20]_i_2_n_1\,
      CO(1) => \s_index_reg[20]_i_2_n_2\,
      CO(0) => \s_index_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in6(20 downto 17),
      S(3) => \s_index_reg_n_0_[20]\,
      S(2) => \s_index_reg_n_0_[19]\,
      S(1) => \s_index_reg_n_0_[18]\,
      S(0) => \s_index_reg_n_0_[17]\
    );
\s_index_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_index[30]_i_1_n_0\,
      D => s_index(21),
      Q => \s_index_reg_n_0_[21]\,
      R => rst
    );
\s_index_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_index[30]_i_1_n_0\,
      D => s_index(22),
      Q => \s_index_reg_n_0_[22]\,
      R => rst
    );
\s_index_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_index[30]_i_1_n_0\,
      D => s_index(23),
      Q => \s_index_reg_n_0_[23]\,
      R => rst
    );
\s_index_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_index[30]_i_1_n_0\,
      D => s_index(24),
      Q => \s_index_reg_n_0_[24]\,
      R => rst
    );
\s_index_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_index_reg[20]_i_2_n_0\,
      CO(3) => \s_index_reg[24]_i_2_n_0\,
      CO(2) => \s_index_reg[24]_i_2_n_1\,
      CO(1) => \s_index_reg[24]_i_2_n_2\,
      CO(0) => \s_index_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in6(24 downto 21),
      S(3) => \s_index_reg_n_0_[24]\,
      S(2) => \s_index_reg_n_0_[23]\,
      S(1) => \s_index_reg_n_0_[22]\,
      S(0) => \s_index_reg_n_0_[21]\
    );
\s_index_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_index[30]_i_1_n_0\,
      D => s_index(25),
      Q => \s_index_reg_n_0_[25]\,
      R => rst
    );
\s_index_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_index[30]_i_1_n_0\,
      D => s_index(26),
      Q => \s_index_reg_n_0_[26]\,
      R => rst
    );
\s_index_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_index[30]_i_1_n_0\,
      D => s_index(27),
      Q => \s_index_reg_n_0_[27]\,
      R => rst
    );
\s_index_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_index[30]_i_1_n_0\,
      D => s_index(28),
      Q => \s_index_reg_n_0_[28]\,
      R => rst
    );
\s_index_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_index_reg[24]_i_2_n_0\,
      CO(3) => \s_index_reg[28]_i_2_n_0\,
      CO(2) => \s_index_reg[28]_i_2_n_1\,
      CO(1) => \s_index_reg[28]_i_2_n_2\,
      CO(0) => \s_index_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in6(28 downto 25),
      S(3) => \s_index_reg_n_0_[28]\,
      S(2) => \s_index_reg_n_0_[27]\,
      S(1) => \s_index_reg_n_0_[26]\,
      S(0) => \s_index_reg_n_0_[25]\
    );
\s_index_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_index[30]_i_1_n_0\,
      D => s_index(29),
      Q => \s_index_reg_n_0_[29]\,
      R => rst
    );
\s_index_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_index[30]_i_1_n_0\,
      D => s_index(2),
      Q => \s_index_reg_n_0_[2]\,
      R => rst
    );
\s_index_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_index[30]_i_1_n_0\,
      D => s_index(30),
      Q => \s_index_reg_n_0_[30]\,
      R => rst
    );
\s_index_reg[30]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_index_reg[28]_i_2_n_0\,
      CO(3 downto 1) => \NLW_s_index_reg[30]_i_3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \s_index_reg[30]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_s_index_reg[30]_i_3_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => in6(30 downto 29),
      S(3 downto 2) => B"00",
      S(1) => \s_index_reg_n_0_[30]\,
      S(0) => \s_index_reg_n_0_[29]\
    );
\s_index_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_index[30]_i_1_n_0\,
      D => s_index(3),
      Q => \s_index_reg_n_0_[3]\,
      R => rst
    );
\s_index_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_index[30]_i_1_n_0\,
      D => s_index(4),
      Q => \s_index_reg_n_0_[4]\,
      R => rst
    );
\s_index_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \s_index_reg[4]_i_2_n_0\,
      CO(2) => \s_index_reg[4]_i_2_n_1\,
      CO(1) => \s_index_reg[4]_i_2_n_2\,
      CO(0) => \s_index_reg[4]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \s_index_reg_n_0_[2]\,
      DI(0) => '0',
      O(3 downto 0) => in6(4 downto 1),
      S(3) => \s_index_reg_n_0_[4]\,
      S(2) => \s_index_reg_n_0_[3]\,
      S(1) => \s_index[4]_i_3_n_0\,
      S(0) => \s_index_reg_n_0_[1]\
    );
\s_index_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_index[30]_i_1_n_0\,
      D => s_index(5),
      Q => \s_index_reg_n_0_[5]\,
      R => rst
    );
\s_index_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_index[30]_i_1_n_0\,
      D => s_index(6),
      Q => \s_index_reg_n_0_[6]\,
      R => rst
    );
\s_index_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_index[30]_i_1_n_0\,
      D => s_index(7),
      Q => \s_index_reg_n_0_[7]\,
      R => rst
    );
\s_index_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_index[30]_i_1_n_0\,
      D => s_index(8),
      Q => \s_index_reg_n_0_[8]\,
      R => rst
    );
\s_index_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_index_reg[4]_i_2_n_0\,
      CO(3) => \s_index_reg[8]_i_2_n_0\,
      CO(2) => \s_index_reg[8]_i_2_n_1\,
      CO(1) => \s_index_reg[8]_i_2_n_2\,
      CO(0) => \s_index_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in6(8 downto 5),
      S(3) => \s_index_reg_n_0_[8]\,
      S(2) => \s_index_reg_n_0_[7]\,
      S(1) => \s_index_reg_n_0_[6]\,
      S(0) => \s_index_reg_n_0_[5]\
    );
\s_index_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_index[30]_i_1_n_0\,
      D => s_index(9),
      Q => \s_index_reg_n_0_[9]\,
      R => rst
    );
\s_max_len[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => t_state(1),
      I1 => i_enable,
      I2 => t_state(2),
      I3 => t_state(0),
      I4 => rst,
      O => \s_max_len[30]_i_1_n_0\
    );
\s_max_len_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_len(0),
      Q => s_max_len(0),
      R => '0'
    );
\s_max_len_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_len(10),
      Q => s_max_len(10),
      R => '0'
    );
\s_max_len_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_len(11),
      Q => s_max_len(11),
      R => '0'
    );
\s_max_len_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_len(12),
      Q => s_max_len(12),
      R => '0'
    );
\s_max_len_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_len(13),
      Q => s_max_len(13),
      R => '0'
    );
\s_max_len_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_len(14),
      Q => s_max_len(14),
      R => '0'
    );
\s_max_len_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_len(15),
      Q => s_max_len(15),
      R => '0'
    );
\s_max_len_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_len(16),
      Q => s_max_len(16),
      R => '0'
    );
\s_max_len_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_len(17),
      Q => s_max_len(17),
      R => '0'
    );
\s_max_len_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_len(18),
      Q => s_max_len(18),
      R => '0'
    );
\s_max_len_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_len(19),
      Q => s_max_len(19),
      R => '0'
    );
\s_max_len_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_len(1),
      Q => s_max_len(1),
      R => '0'
    );
\s_max_len_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_len(20),
      Q => s_max_len(20),
      R => '0'
    );
\s_max_len_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_len(21),
      Q => s_max_len(21),
      R => '0'
    );
\s_max_len_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_len(22),
      Q => s_max_len(22),
      R => '0'
    );
\s_max_len_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_len(23),
      Q => s_max_len(23),
      R => '0'
    );
\s_max_len_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_len(24),
      Q => s_max_len(24),
      R => '0'
    );
\s_max_len_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_len(25),
      Q => s_max_len(25),
      R => '0'
    );
\s_max_len_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_len(26),
      Q => s_max_len(26),
      R => '0'
    );
\s_max_len_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_len(27),
      Q => s_max_len(27),
      R => '0'
    );
\s_max_len_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_len(28),
      Q => s_max_len(28),
      R => '0'
    );
\s_max_len_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_len(29),
      Q => s_max_len(29),
      R => '0'
    );
\s_max_len_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_len(2),
      Q => s_max_len(2),
      R => '0'
    );
\s_max_len_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_len(30),
      Q => s_max_len(30),
      R => '0'
    );
\s_max_len_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_len(3),
      Q => s_max_len(3),
      R => '0'
    );
\s_max_len_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_len(4),
      Q => s_max_len(4),
      R => '0'
    );
\s_max_len_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_len(5),
      Q => s_max_len(5),
      R => '0'
    );
\s_max_len_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_len(6),
      Q => s_max_len(6),
      R => '0'
    );
\s_max_len_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_len(7),
      Q => s_max_len(7),
      R => '0'
    );
\s_max_len_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_len(8),
      Q => s_max_len(8),
      R => '0'
    );
\s_max_len_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \s_max_len[30]_i_1_n_0\,
      D => i_len(9),
      Q => s_max_len(9),
      R => '0'
    );
s_rstb_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A82"
    )
        port map (
      I0 => s_rstb_reg_n_0,
      I1 => t_state(2),
      I2 => t_state(1),
      I3 => t_state(0),
      O => s_rstb_i_1_n_0
    );
s_rstb_reg: unisim.vcomponents.FDSE
     port map (
      C => i_clk,
      CE => '1',
      D => s_rstb_i_1_n_0,
      Q => s_rstb_reg_n_0,
      S => rst
    );
\s_web[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4B40"
    )
        port map (
      I0 => t_state(0),
      I1 => t_state(2),
      I2 => t_state(1),
      I3 => \s_web_reg_n_0_[3]\,
      O => \s_web[3]_i_1_n_0\
    );
\s_web_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \s_web[3]_i_1_n_0\,
      Q => \s_web_reg_n_0_[3]\,
      R => rst
    );
t_state1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => t_state1_carry_n_0,
      CO(2) => t_state1_carry_n_1,
      CO(1) => t_state1_carry_n_2,
      CO(0) => t_state1_carry_n_3,
      CYINIT => '0',
      DI(3) => t_state1_carry_i_1_n_0,
      DI(2) => t_state1_carry_i_2_n_0,
      DI(1) => t_state1_carry_i_3_n_0,
      DI(0) => t_state1_carry_i_4_n_0,
      O(3 downto 0) => NLW_t_state1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => t_state1_carry_i_5_n_0,
      S(2) => t_state1_carry_i_6_n_0,
      S(1) => t_state1_carry_i_7_n_0,
      S(0) => t_state1_carry_i_8_n_0
    );
\t_state1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => t_state1_carry_n_0,
      CO(3) => \t_state1_carry__0_n_0\,
      CO(2) => \t_state1_carry__0_n_1\,
      CO(1) => \t_state1_carry__0_n_2\,
      CO(0) => \t_state1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \t_state1_carry__0_i_1_n_0\,
      DI(2) => \t_state1_carry__0_i_2_n_0\,
      DI(1) => \t_state1_carry__0_i_3_n_0\,
      DI(0) => \t_state1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_t_state1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \t_state1_carry__0_i_5_n_0\,
      S(2) => \t_state1_carry__0_i_6_n_0\,
      S(1) => \t_state1_carry__0_i_7_n_0\,
      S(0) => \t_state1_carry__0_i_8_n_0\
    );
\t_state1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \s_index_reg_n_0_[14]\,
      I1 => s_max_len(14),
      I2 => s_max_len(15),
      I3 => \s_index_reg_n_0_[15]\,
      O => \t_state1_carry__0_i_1_n_0\
    );
\t_state1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \s_index_reg_n_0_[12]\,
      I1 => s_max_len(12),
      I2 => s_max_len(13),
      I3 => \s_index_reg_n_0_[13]\,
      O => \t_state1_carry__0_i_2_n_0\
    );
\t_state1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \s_index_reg_n_0_[10]\,
      I1 => s_max_len(10),
      I2 => s_max_len(11),
      I3 => \s_index_reg_n_0_[11]\,
      O => \t_state1_carry__0_i_3_n_0\
    );
\t_state1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \s_index_reg_n_0_[8]\,
      I1 => s_max_len(8),
      I2 => s_max_len(9),
      I3 => \s_index_reg_n_0_[9]\,
      O => \t_state1_carry__0_i_4_n_0\
    );
\t_state1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \s_index_reg_n_0_[14]\,
      I1 => s_max_len(14),
      I2 => \s_index_reg_n_0_[15]\,
      I3 => s_max_len(15),
      O => \t_state1_carry__0_i_5_n_0\
    );
\t_state1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \s_index_reg_n_0_[12]\,
      I1 => s_max_len(12),
      I2 => \s_index_reg_n_0_[13]\,
      I3 => s_max_len(13),
      O => \t_state1_carry__0_i_6_n_0\
    );
\t_state1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \s_index_reg_n_0_[10]\,
      I1 => s_max_len(10),
      I2 => \s_index_reg_n_0_[11]\,
      I3 => s_max_len(11),
      O => \t_state1_carry__0_i_7_n_0\
    );
\t_state1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \s_index_reg_n_0_[8]\,
      I1 => s_max_len(8),
      I2 => \s_index_reg_n_0_[9]\,
      I3 => s_max_len(9),
      O => \t_state1_carry__0_i_8_n_0\
    );
\t_state1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t_state1_carry__0_n_0\,
      CO(3) => \t_state1_carry__1_n_0\,
      CO(2) => \t_state1_carry__1_n_1\,
      CO(1) => \t_state1_carry__1_n_2\,
      CO(0) => \t_state1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \t_state1_carry__1_i_1_n_0\,
      DI(2) => \t_state1_carry__1_i_2_n_0\,
      DI(1) => \t_state1_carry__1_i_3_n_0\,
      DI(0) => \t_state1_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_t_state1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \t_state1_carry__1_i_5_n_0\,
      S(2) => \t_state1_carry__1_i_6_n_0\,
      S(1) => \t_state1_carry__1_i_7_n_0\,
      S(0) => \t_state1_carry__1_i_8_n_0\
    );
\t_state1_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \s_index_reg_n_0_[22]\,
      I1 => s_max_len(22),
      I2 => s_max_len(23),
      I3 => \s_index_reg_n_0_[23]\,
      O => \t_state1_carry__1_i_1_n_0\
    );
\t_state1_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \s_index_reg_n_0_[20]\,
      I1 => s_max_len(20),
      I2 => s_max_len(21),
      I3 => \s_index_reg_n_0_[21]\,
      O => \t_state1_carry__1_i_2_n_0\
    );
\t_state1_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \s_index_reg_n_0_[18]\,
      I1 => s_max_len(18),
      I2 => s_max_len(19),
      I3 => \s_index_reg_n_0_[19]\,
      O => \t_state1_carry__1_i_3_n_0\
    );
\t_state1_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \s_index_reg_n_0_[16]\,
      I1 => s_max_len(16),
      I2 => s_max_len(17),
      I3 => \s_index_reg_n_0_[17]\,
      O => \t_state1_carry__1_i_4_n_0\
    );
\t_state1_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \s_index_reg_n_0_[22]\,
      I1 => s_max_len(22),
      I2 => \s_index_reg_n_0_[23]\,
      I3 => s_max_len(23),
      O => \t_state1_carry__1_i_5_n_0\
    );
\t_state1_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \s_index_reg_n_0_[20]\,
      I1 => s_max_len(20),
      I2 => \s_index_reg_n_0_[21]\,
      I3 => s_max_len(21),
      O => \t_state1_carry__1_i_6_n_0\
    );
\t_state1_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \s_index_reg_n_0_[18]\,
      I1 => s_max_len(18),
      I2 => \s_index_reg_n_0_[19]\,
      I3 => s_max_len(19),
      O => \t_state1_carry__1_i_7_n_0\
    );
\t_state1_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \s_index_reg_n_0_[16]\,
      I1 => s_max_len(16),
      I2 => \s_index_reg_n_0_[17]\,
      I3 => s_max_len(17),
      O => \t_state1_carry__1_i_8_n_0\
    );
\t_state1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \t_state1_carry__1_n_0\,
      CO(3) => \t_state1_carry__2_n_0\,
      CO(2) => \t_state1_carry__2_n_1\,
      CO(1) => \t_state1_carry__2_n_2\,
      CO(0) => \t_state1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \t_state1_carry__2_i_1_n_0\,
      DI(2) => \t_state1_carry__2_i_2_n_0\,
      DI(1) => \t_state1_carry__2_i_3_n_0\,
      DI(0) => \t_state1_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_t_state1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \t_state1_carry__2_i_5_n_0\,
      S(2) => \t_state1_carry__2_i_6_n_0\,
      S(1) => \t_state1_carry__2_i_7_n_0\,
      S(0) => \t_state1_carry__2_i_8_n_0\
    );
\t_state1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_index_reg_n_0_[30]\,
      I1 => s_max_len(30),
      O => \t_state1_carry__2_i_1_n_0\
    );
\t_state1_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \s_index_reg_n_0_[28]\,
      I1 => s_max_len(28),
      I2 => s_max_len(29),
      I3 => \s_index_reg_n_0_[29]\,
      O => \t_state1_carry__2_i_2_n_0\
    );
\t_state1_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \s_index_reg_n_0_[26]\,
      I1 => s_max_len(26),
      I2 => s_max_len(27),
      I3 => \s_index_reg_n_0_[27]\,
      O => \t_state1_carry__2_i_3_n_0\
    );
\t_state1_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \s_index_reg_n_0_[24]\,
      I1 => s_max_len(24),
      I2 => s_max_len(25),
      I3 => \s_index_reg_n_0_[25]\,
      O => \t_state1_carry__2_i_4_n_0\
    );
\t_state1_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_max_len(30),
      I1 => \s_index_reg_n_0_[30]\,
      O => \t_state1_carry__2_i_5_n_0\
    );
\t_state1_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \s_index_reg_n_0_[28]\,
      I1 => s_max_len(28),
      I2 => \s_index_reg_n_0_[29]\,
      I3 => s_max_len(29),
      O => \t_state1_carry__2_i_6_n_0\
    );
\t_state1_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \s_index_reg_n_0_[26]\,
      I1 => s_max_len(26),
      I2 => \s_index_reg_n_0_[27]\,
      I3 => s_max_len(27),
      O => \t_state1_carry__2_i_7_n_0\
    );
\t_state1_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \s_index_reg_n_0_[24]\,
      I1 => s_max_len(24),
      I2 => \s_index_reg_n_0_[25]\,
      I3 => s_max_len(25),
      O => \t_state1_carry__2_i_8_n_0\
    );
t_state1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \s_index_reg_n_0_[6]\,
      I1 => s_max_len(6),
      I2 => s_max_len(7),
      I3 => \s_index_reg_n_0_[7]\,
      O => t_state1_carry_i_1_n_0
    );
t_state1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \s_index_reg_n_0_[4]\,
      I1 => s_max_len(4),
      I2 => s_max_len(5),
      I3 => \s_index_reg_n_0_[5]\,
      O => t_state1_carry_i_2_n_0
    );
t_state1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \s_index_reg_n_0_[2]\,
      I1 => s_max_len(2),
      I2 => s_max_len(3),
      I3 => \s_index_reg_n_0_[3]\,
      O => t_state1_carry_i_3_n_0
    );
t_state1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_index_reg_n_0_[1]\,
      I1 => s_max_len(1),
      O => t_state1_carry_i_4_n_0
    );
t_state1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \s_index_reg_n_0_[6]\,
      I1 => s_max_len(6),
      I2 => \s_index_reg_n_0_[7]\,
      I3 => s_max_len(7),
      O => t_state1_carry_i_5_n_0
    );
t_state1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \s_index_reg_n_0_[4]\,
      I1 => s_max_len(4),
      I2 => \s_index_reg_n_0_[5]\,
      I3 => s_max_len(5),
      O => t_state1_carry_i_6_n_0
    );
t_state1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \s_index_reg_n_0_[2]\,
      I1 => s_max_len(2),
      I2 => \s_index_reg_n_0_[3]\,
      I3 => s_max_len(3),
      O => t_state1_carry_i_7_n_0
    );
t_state1_carry_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \s_index_reg_n_0_[1]\,
      I1 => s_max_len(1),
      I2 => s_max_len(0),
      O => t_state1_carry_i_8_n_0
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Mayo_keygen_no_zynq_mayo_reduce_0_0,mayo_reduce,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "mayo_reduce,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^o_we0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^o_we1\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute x_interface_info : string;
  attribute x_interface_info of i_clk : signal is "xilinx.com:signal:clock:1.0 i_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of i_clk : signal is "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  o_we0(3) <= \^o_we0\(0);
  o_we0(2) <= \^o_we0\(0);
  o_we0(1) <= \^o_we0\(0);
  o_we0(0) <= \^o_we0\(0);
  o_we1(3) <= \^o_we1\(3);
  o_we1(2) <= \^o_we1\(3);
  o_we1(1) <= \^o_we1\(3);
  o_we1(0) <= \^o_we1\(3);
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mayo_reduce
     port map (
      i_adr(31 downto 0) => i_adr(31 downto 0),
      i_bram_sel => i_bram_sel,
      i_clk => i_clk,
      i_dout0(31 downto 0) => i_dout0(31 downto 0),
      i_dout1(31 downto 0) => i_dout1(31 downto 0),
      i_enable => i_enable,
      i_len(30 downto 0) => i_len(30 downto 0),
      o_addr0(31 downto 0) => o_addr0(31 downto 0),
      o_addr1(31 downto 0) => o_addr1(31 downto 0),
      o_control0 => o_control0,
      o_control1 => o_control1,
      o_din0(31 downto 0) => o_din0(31 downto 0),
      o_din1(31 downto 0) => o_din1(31 downto 0),
      o_done => o_done,
      o_en0 => o_en0,
      o_en1 => o_en1,
      o_rst0 => o_rst0,
      o_rst1 => o_rst1,
      o_we0(0) => \^o_we0\(0),
      o_we1(0) => \^o_we1\(3),
      rst => rst
    );
end STRUCTURE;
