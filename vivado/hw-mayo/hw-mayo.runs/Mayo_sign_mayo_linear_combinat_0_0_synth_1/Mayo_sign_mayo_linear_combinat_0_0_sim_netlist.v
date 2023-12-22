// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Dec  8 17:15:51 2023
// Host        : zenith running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Mayo_sign_mayo_linear_combinat_0_0_sim_netlist.v
// Design      : Mayo_sign_mayo_linear_combinat_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DSP_Accum
   (CEA2,
    in0,
    \s_acc[1] ,
    \s_acc[2] ,
    \s_acc[3] ,
    \s_acc[4] ,
    \s_acc[5] ,
    \s_acc[6] ,
    \s_acc[7] ,
    Q,
    \acc_b_reg[2]_0 ,
    \acc_b_reg[2]_1 ,
    i_mem0a_dout,
    \acc_b_reg[3]_0 ,
    sel0,
    i_clk,
    rst,
    i_mem1a_dout,
    s_acc_sel,
    \acc_b_reg[3]_1 ,
    s_main);
  output CEA2;
  output [4:0]in0;
  output [4:0]\s_acc[1] ;
  output [4:0]\s_acc[2] ;
  output [4:0]\s_acc[3] ;
  output [4:0]\s_acc[4] ;
  output [4:0]\s_acc[5] ;
  output [4:0]\s_acc[6] ;
  output [4:0]\s_acc[7] ;
  input [2:0]Q;
  input [2:0]\acc_b_reg[2]_0 ;
  input \acc_b_reg[2]_1 ;
  input [7:0]i_mem0a_dout;
  input [31:0]\acc_b_reg[3]_0 ;
  input [31:0]sel0;
  input i_clk;
  input rst;
  input [31:0]i_mem1a_dout;
  input s_acc_sel;
  input \acc_b_reg[3]_1 ;
  input s_main;

  wire CEA2;
  wire [2:0]Q;
  wire RSTM;
  wire RSTP;
  wire \acc_a_reg[0]_i_14_n_0 ;
  wire \acc_a_reg[0]_i_15_n_0 ;
  wire \acc_a_reg[0]_i_16_n_0 ;
  wire \acc_a_reg[0]_i_17_n_0 ;
  wire \acc_a_reg[0]_i_18_n_0 ;
  wire \acc_a_reg[0]_i_27_n_0 ;
  wire \acc_a_reg[0]_i_28_n_0 ;
  wire \acc_a_reg[0]_i_29_n_0 ;
  wire \acc_a_reg[0]_i_2_n_0 ;
  wire \acc_a_reg[0]_i_30_n_0 ;
  wire \acc_a_reg[0]_i_3_n_0 ;
  wire \acc_a_reg_n_100_[0] ;
  wire \acc_a_reg_n_100_[1] ;
  wire \acc_a_reg_n_100_[2] ;
  wire \acc_a_reg_n_100_[3] ;
  wire \acc_a_reg_n_101_[0] ;
  wire \acc_a_reg_n_101_[1] ;
  wire \acc_a_reg_n_101_[2] ;
  wire \acc_a_reg_n_101_[3] ;
  wire \acc_a_reg_n_102_[0] ;
  wire \acc_a_reg_n_102_[1] ;
  wire \acc_a_reg_n_102_[2] ;
  wire \acc_a_reg_n_102_[3] ;
  wire \acc_a_reg_n_103_[0] ;
  wire \acc_a_reg_n_103_[1] ;
  wire \acc_a_reg_n_103_[2] ;
  wire \acc_a_reg_n_103_[3] ;
  wire \acc_a_reg_n_104_[0] ;
  wire \acc_a_reg_n_104_[1] ;
  wire \acc_a_reg_n_104_[2] ;
  wire \acc_a_reg_n_104_[3] ;
  wire \acc_a_reg_n_105_[0] ;
  wire \acc_a_reg_n_105_[1] ;
  wire \acc_a_reg_n_105_[2] ;
  wire \acc_a_reg_n_105_[3] ;
  wire \acc_a_reg_n_90_[0] ;
  wire \acc_a_reg_n_90_[1] ;
  wire \acc_a_reg_n_90_[2] ;
  wire \acc_a_reg_n_90_[3] ;
  wire \acc_a_reg_n_91_[0] ;
  wire \acc_a_reg_n_91_[1] ;
  wire \acc_a_reg_n_91_[2] ;
  wire \acc_a_reg_n_91_[3] ;
  wire \acc_a_reg_n_92_[0] ;
  wire \acc_a_reg_n_92_[1] ;
  wire \acc_a_reg_n_92_[2] ;
  wire \acc_a_reg_n_92_[3] ;
  wire \acc_a_reg_n_93_[0] ;
  wire \acc_a_reg_n_93_[1] ;
  wire \acc_a_reg_n_93_[2] ;
  wire \acc_a_reg_n_93_[3] ;
  wire \acc_a_reg_n_94_[0] ;
  wire \acc_a_reg_n_94_[1] ;
  wire \acc_a_reg_n_94_[2] ;
  wire \acc_a_reg_n_94_[3] ;
  wire \acc_a_reg_n_95_[0] ;
  wire \acc_a_reg_n_95_[1] ;
  wire \acc_a_reg_n_95_[2] ;
  wire \acc_a_reg_n_95_[3] ;
  wire \acc_a_reg_n_96_[0] ;
  wire \acc_a_reg_n_96_[1] ;
  wire \acc_a_reg_n_96_[2] ;
  wire \acc_a_reg_n_96_[3] ;
  wire \acc_a_reg_n_97_[0] ;
  wire \acc_a_reg_n_97_[1] ;
  wire \acc_a_reg_n_97_[2] ;
  wire \acc_a_reg_n_97_[3] ;
  wire \acc_a_reg_n_98_[0] ;
  wire \acc_a_reg_n_98_[1] ;
  wire \acc_a_reg_n_98_[2] ;
  wire \acc_a_reg_n_98_[3] ;
  wire \acc_a_reg_n_99_[0] ;
  wire \acc_a_reg_n_99_[1] ;
  wire \acc_a_reg_n_99_[2] ;
  wire \acc_a_reg_n_99_[3] ;
  wire \acc_b_reg[0]_i_1_n_0 ;
  wire \acc_b_reg[0]_i_2_n_0 ;
  wire [2:0]\acc_b_reg[2]_0 ;
  wire \acc_b_reg[2]_1 ;
  wire [31:0]\acc_b_reg[3]_0 ;
  wire \acc_b_reg[3]_1 ;
  wire \acc_b_reg_n_100_[0] ;
  wire \acc_b_reg_n_100_[1] ;
  wire \acc_b_reg_n_100_[2] ;
  wire \acc_b_reg_n_100_[3] ;
  wire \acc_b_reg_n_101_[0] ;
  wire \acc_b_reg_n_101_[1] ;
  wire \acc_b_reg_n_101_[2] ;
  wire \acc_b_reg_n_101_[3] ;
  wire \acc_b_reg_n_102_[0] ;
  wire \acc_b_reg_n_102_[1] ;
  wire \acc_b_reg_n_102_[2] ;
  wire \acc_b_reg_n_102_[3] ;
  wire \acc_b_reg_n_103_[0] ;
  wire \acc_b_reg_n_103_[1] ;
  wire \acc_b_reg_n_103_[2] ;
  wire \acc_b_reg_n_103_[3] ;
  wire \acc_b_reg_n_104_[0] ;
  wire \acc_b_reg_n_104_[1] ;
  wire \acc_b_reg_n_104_[2] ;
  wire \acc_b_reg_n_104_[3] ;
  wire \acc_b_reg_n_105_[0] ;
  wire \acc_b_reg_n_105_[1] ;
  wire \acc_b_reg_n_105_[2] ;
  wire \acc_b_reg_n_105_[3] ;
  wire \acc_b_reg_n_90_[0] ;
  wire \acc_b_reg_n_90_[1] ;
  wire \acc_b_reg_n_90_[2] ;
  wire \acc_b_reg_n_90_[3] ;
  wire \acc_b_reg_n_91_[0] ;
  wire \acc_b_reg_n_91_[1] ;
  wire \acc_b_reg_n_91_[2] ;
  wire \acc_b_reg_n_91_[3] ;
  wire \acc_b_reg_n_92_[0] ;
  wire \acc_b_reg_n_92_[1] ;
  wire \acc_b_reg_n_92_[2] ;
  wire \acc_b_reg_n_92_[3] ;
  wire \acc_b_reg_n_93_[0] ;
  wire \acc_b_reg_n_93_[1] ;
  wire \acc_b_reg_n_93_[2] ;
  wire \acc_b_reg_n_93_[3] ;
  wire \acc_b_reg_n_94_[0] ;
  wire \acc_b_reg_n_94_[1] ;
  wire \acc_b_reg_n_94_[2] ;
  wire \acc_b_reg_n_94_[3] ;
  wire \acc_b_reg_n_95_[0] ;
  wire \acc_b_reg_n_95_[1] ;
  wire \acc_b_reg_n_95_[2] ;
  wire \acc_b_reg_n_95_[3] ;
  wire \acc_b_reg_n_96_[0] ;
  wire \acc_b_reg_n_96_[1] ;
  wire \acc_b_reg_n_96_[2] ;
  wire \acc_b_reg_n_96_[3] ;
  wire \acc_b_reg_n_97_[0] ;
  wire \acc_b_reg_n_97_[1] ;
  wire \acc_b_reg_n_97_[2] ;
  wire \acc_b_reg_n_97_[3] ;
  wire \acc_b_reg_n_98_[0] ;
  wire \acc_b_reg_n_98_[1] ;
  wire \acc_b_reg_n_98_[2] ;
  wire \acc_b_reg_n_98_[3] ;
  wire \acc_b_reg_n_99_[0] ;
  wire \acc_b_reg_n_99_[1] ;
  wire \acc_b_reg_n_99_[2] ;
  wire \acc_b_reg_n_99_[3] ;
  wire [7:0]data1;
  wire [7:0]dspb;
  wire i_clk;
  wire [7:0]i_mem0a_dout;
  wire [31:0]i_mem1a_dout;
  wire [4:0]in0;
  wire rst;
  wire \s_acc[0]_inferred_i_10_n_0 ;
  wire \s_acc[0]_inferred_i_11_n_0 ;
  wire \s_acc[0]_inferred_i_12_n_0 ;
  wire \s_acc[0]_inferred_i_13_n_0 ;
  wire \s_acc[0]_inferred_i_14_n_2 ;
  wire \s_acc[0]_inferred_i_14_n_3 ;
  wire \s_acc[0]_inferred_i_14_n_5 ;
  wire \s_acc[0]_inferred_i_14_n_6 ;
  wire \s_acc[0]_inferred_i_14_n_7 ;
  wire \s_acc[0]_inferred_i_15_n_0 ;
  wire \s_acc[0]_inferred_i_15_n_1 ;
  wire \s_acc[0]_inferred_i_15_n_2 ;
  wire \s_acc[0]_inferred_i_15_n_3 ;
  wire \s_acc[0]_inferred_i_15_n_4 ;
  wire \s_acc[0]_inferred_i_15_n_5 ;
  wire \s_acc[0]_inferred_i_15_n_6 ;
  wire \s_acc[0]_inferred_i_15_n_7 ;
  wire \s_acc[0]_inferred_i_16_n_0 ;
  wire \s_acc[0]_inferred_i_17_n_0 ;
  wire \s_acc[0]_inferred_i_18_n_0 ;
  wire \s_acc[0]_inferred_i_19_n_0 ;
  wire \s_acc[0]_inferred_i_20_n_0 ;
  wire \s_acc[0]_inferred_i_20_n_1 ;
  wire \s_acc[0]_inferred_i_20_n_2 ;
  wire \s_acc[0]_inferred_i_20_n_3 ;
  wire \s_acc[0]_inferred_i_20_n_4 ;
  wire \s_acc[0]_inferred_i_21_n_0 ;
  wire \s_acc[0]_inferred_i_22_n_0 ;
  wire \s_acc[0]_inferred_i_23_n_0 ;
  wire \s_acc[0]_inferred_i_24_n_0 ;
  wire \s_acc[0]_inferred_i_24_n_1 ;
  wire \s_acc[0]_inferred_i_24_n_2 ;
  wire \s_acc[0]_inferred_i_24_n_3 ;
  wire \s_acc[0]_inferred_i_24_n_4 ;
  wire \s_acc[0]_inferred_i_24_n_5 ;
  wire \s_acc[0]_inferred_i_24_n_6 ;
  wire \s_acc[0]_inferred_i_24_n_7 ;
  wire \s_acc[0]_inferred_i_25_n_3 ;
  wire \s_acc[0]_inferred_i_25_n_6 ;
  wire \s_acc[0]_inferred_i_25_n_7 ;
  wire \s_acc[0]_inferred_i_26_n_0 ;
  wire \s_acc[0]_inferred_i_26_n_1 ;
  wire \s_acc[0]_inferred_i_26_n_2 ;
  wire \s_acc[0]_inferred_i_26_n_3 ;
  wire \s_acc[0]_inferred_i_27_n_0 ;
  wire \s_acc[0]_inferred_i_28_n_0 ;
  wire \s_acc[0]_inferred_i_29_n_0 ;
  wire \s_acc[0]_inferred_i_30_n_0 ;
  wire \s_acc[0]_inferred_i_31_n_0 ;
  wire \s_acc[0]_inferred_i_32_n_0 ;
  wire \s_acc[0]_inferred_i_33_n_0 ;
  wire \s_acc[0]_inferred_i_34_n_0 ;
  wire \s_acc[0]_inferred_i_35_n_0 ;
  wire \s_acc[0]_inferred_i_36_n_0 ;
  wire \s_acc[0]_inferred_i_37_n_0 ;
  wire \s_acc[0]_inferred_i_38_n_0 ;
  wire \s_acc[0]_inferred_i_39_n_0 ;
  wire \s_acc[0]_inferred_i_40_n_0 ;
  wire \s_acc[0]_inferred_i_41_n_0 ;
  wire \s_acc[0]_inferred_i_42_n_0 ;
  wire \s_acc[0]_inferred_i_43_n_0 ;
  wire \s_acc[0]_inferred_i_44_n_0 ;
  wire \s_acc[0]_inferred_i_45_n_0 ;
  wire \s_acc[0]_inferred_i_45_n_1 ;
  wire \s_acc[0]_inferred_i_45_n_2 ;
  wire \s_acc[0]_inferred_i_45_n_3 ;
  wire \s_acc[0]_inferred_i_46_n_0 ;
  wire \s_acc[0]_inferred_i_47_n_0 ;
  wire \s_acc[0]_inferred_i_48_n_0 ;
  wire \s_acc[0]_inferred_i_49_n_0 ;
  wire \s_acc[0]_inferred_i_50_n_0 ;
  wire \s_acc[0]_inferred_i_51_n_7 ;
  wire \s_acc[0]_inferred_i_52_n_0 ;
  wire \s_acc[0]_inferred_i_53_n_0 ;
  wire \s_acc[0]_inferred_i_54_n_0 ;
  wire \s_acc[0]_inferred_i_55_n_0 ;
  wire \s_acc[0]_inferred_i_6_n_0 ;
  wire \s_acc[0]_inferred_i_6_n_1 ;
  wire \s_acc[0]_inferred_i_6_n_2 ;
  wire \s_acc[0]_inferred_i_6_n_3 ;
  wire \s_acc[0]_inferred_i_6_n_4 ;
  wire \s_acc[0]_inferred_i_6_n_5 ;
  wire \s_acc[0]_inferred_i_6_n_6 ;
  wire \s_acc[0]_inferred_i_6_n_7 ;
  wire \s_acc[0]_inferred_i_7_n_3 ;
  wire \s_acc[0]_inferred_i_7_n_6 ;
  wire \s_acc[0]_inferred_i_7_n_7 ;
  wire \s_acc[0]_inferred_i_8_n_0 ;
  wire \s_acc[0]_inferred_i_9_n_0 ;
  wire [4:0]\s_acc[1] ;
  wire \s_acc[1]_inferred_i_10_n_0 ;
  wire \s_acc[1]_inferred_i_11_n_0 ;
  wire \s_acc[1]_inferred_i_12_n_0 ;
  wire \s_acc[1]_inferred_i_13_n_0 ;
  wire \s_acc[1]_inferred_i_14_n_2 ;
  wire \s_acc[1]_inferred_i_14_n_3 ;
  wire \s_acc[1]_inferred_i_14_n_5 ;
  wire \s_acc[1]_inferred_i_14_n_6 ;
  wire \s_acc[1]_inferred_i_14_n_7 ;
  wire \s_acc[1]_inferred_i_15_n_0 ;
  wire \s_acc[1]_inferred_i_15_n_1 ;
  wire \s_acc[1]_inferred_i_15_n_2 ;
  wire \s_acc[1]_inferred_i_15_n_3 ;
  wire \s_acc[1]_inferred_i_15_n_4 ;
  wire \s_acc[1]_inferred_i_15_n_5 ;
  wire \s_acc[1]_inferred_i_15_n_6 ;
  wire \s_acc[1]_inferred_i_15_n_7 ;
  wire \s_acc[1]_inferred_i_16_n_0 ;
  wire \s_acc[1]_inferred_i_17_n_0 ;
  wire \s_acc[1]_inferred_i_18_n_0 ;
  wire \s_acc[1]_inferred_i_19_n_0 ;
  wire \s_acc[1]_inferred_i_20_n_0 ;
  wire \s_acc[1]_inferred_i_20_n_1 ;
  wire \s_acc[1]_inferred_i_20_n_2 ;
  wire \s_acc[1]_inferred_i_20_n_3 ;
  wire \s_acc[1]_inferred_i_20_n_4 ;
  wire \s_acc[1]_inferred_i_21_n_0 ;
  wire \s_acc[1]_inferred_i_22_n_0 ;
  wire \s_acc[1]_inferred_i_23_n_0 ;
  wire \s_acc[1]_inferred_i_24_n_0 ;
  wire \s_acc[1]_inferred_i_24_n_1 ;
  wire \s_acc[1]_inferred_i_24_n_2 ;
  wire \s_acc[1]_inferred_i_24_n_3 ;
  wire \s_acc[1]_inferred_i_24_n_4 ;
  wire \s_acc[1]_inferred_i_24_n_5 ;
  wire \s_acc[1]_inferred_i_24_n_6 ;
  wire \s_acc[1]_inferred_i_24_n_7 ;
  wire \s_acc[1]_inferred_i_25_n_3 ;
  wire \s_acc[1]_inferred_i_25_n_6 ;
  wire \s_acc[1]_inferred_i_25_n_7 ;
  wire \s_acc[1]_inferred_i_26_n_0 ;
  wire \s_acc[1]_inferred_i_26_n_1 ;
  wire \s_acc[1]_inferred_i_26_n_2 ;
  wire \s_acc[1]_inferred_i_26_n_3 ;
  wire \s_acc[1]_inferred_i_27_n_0 ;
  wire \s_acc[1]_inferred_i_28_n_0 ;
  wire \s_acc[1]_inferred_i_29_n_0 ;
  wire \s_acc[1]_inferred_i_30_n_0 ;
  wire \s_acc[1]_inferred_i_31_n_0 ;
  wire \s_acc[1]_inferred_i_32_n_0 ;
  wire \s_acc[1]_inferred_i_33_n_0 ;
  wire \s_acc[1]_inferred_i_34_n_0 ;
  wire \s_acc[1]_inferred_i_35_n_0 ;
  wire \s_acc[1]_inferred_i_36_n_0 ;
  wire \s_acc[1]_inferred_i_37_n_0 ;
  wire \s_acc[1]_inferred_i_38_n_0 ;
  wire \s_acc[1]_inferred_i_39_n_0 ;
  wire \s_acc[1]_inferred_i_40_n_0 ;
  wire \s_acc[1]_inferred_i_41_n_0 ;
  wire \s_acc[1]_inferred_i_42_n_0 ;
  wire \s_acc[1]_inferred_i_43_n_0 ;
  wire \s_acc[1]_inferred_i_44_n_0 ;
  wire \s_acc[1]_inferred_i_45_n_0 ;
  wire \s_acc[1]_inferred_i_45_n_1 ;
  wire \s_acc[1]_inferred_i_45_n_2 ;
  wire \s_acc[1]_inferred_i_45_n_3 ;
  wire \s_acc[1]_inferred_i_46_n_0 ;
  wire \s_acc[1]_inferred_i_47_n_0 ;
  wire \s_acc[1]_inferred_i_48_n_0 ;
  wire \s_acc[1]_inferred_i_49_n_0 ;
  wire \s_acc[1]_inferred_i_50_n_0 ;
  wire \s_acc[1]_inferred_i_51_n_7 ;
  wire \s_acc[1]_inferred_i_52_n_0 ;
  wire \s_acc[1]_inferred_i_53_n_0 ;
  wire \s_acc[1]_inferred_i_54_n_0 ;
  wire \s_acc[1]_inferred_i_55_n_0 ;
  wire \s_acc[1]_inferred_i_6_n_0 ;
  wire \s_acc[1]_inferred_i_6_n_1 ;
  wire \s_acc[1]_inferred_i_6_n_2 ;
  wire \s_acc[1]_inferred_i_6_n_3 ;
  wire \s_acc[1]_inferred_i_6_n_4 ;
  wire \s_acc[1]_inferred_i_6_n_5 ;
  wire \s_acc[1]_inferred_i_6_n_6 ;
  wire \s_acc[1]_inferred_i_6_n_7 ;
  wire \s_acc[1]_inferred_i_7_n_3 ;
  wire \s_acc[1]_inferred_i_7_n_6 ;
  wire \s_acc[1]_inferred_i_7_n_7 ;
  wire \s_acc[1]_inferred_i_8_n_0 ;
  wire \s_acc[1]_inferred_i_9_n_0 ;
  wire [4:0]\s_acc[2] ;
  wire \s_acc[2]_inferred_i_10_n_0 ;
  wire \s_acc[2]_inferred_i_11_n_0 ;
  wire \s_acc[2]_inferred_i_12_n_0 ;
  wire \s_acc[2]_inferred_i_13_n_0 ;
  wire \s_acc[2]_inferred_i_14_n_2 ;
  wire \s_acc[2]_inferred_i_14_n_3 ;
  wire \s_acc[2]_inferred_i_14_n_5 ;
  wire \s_acc[2]_inferred_i_14_n_6 ;
  wire \s_acc[2]_inferred_i_14_n_7 ;
  wire \s_acc[2]_inferred_i_15_n_0 ;
  wire \s_acc[2]_inferred_i_15_n_1 ;
  wire \s_acc[2]_inferred_i_15_n_2 ;
  wire \s_acc[2]_inferred_i_15_n_3 ;
  wire \s_acc[2]_inferred_i_15_n_4 ;
  wire \s_acc[2]_inferred_i_15_n_5 ;
  wire \s_acc[2]_inferred_i_15_n_6 ;
  wire \s_acc[2]_inferred_i_15_n_7 ;
  wire \s_acc[2]_inferred_i_16_n_0 ;
  wire \s_acc[2]_inferred_i_17_n_0 ;
  wire \s_acc[2]_inferred_i_18_n_0 ;
  wire \s_acc[2]_inferred_i_19_n_0 ;
  wire \s_acc[2]_inferred_i_20_n_0 ;
  wire \s_acc[2]_inferred_i_20_n_1 ;
  wire \s_acc[2]_inferred_i_20_n_2 ;
  wire \s_acc[2]_inferred_i_20_n_3 ;
  wire \s_acc[2]_inferred_i_20_n_4 ;
  wire \s_acc[2]_inferred_i_21_n_0 ;
  wire \s_acc[2]_inferred_i_22_n_0 ;
  wire \s_acc[2]_inferred_i_23_n_0 ;
  wire \s_acc[2]_inferred_i_24_n_0 ;
  wire \s_acc[2]_inferred_i_24_n_1 ;
  wire \s_acc[2]_inferred_i_24_n_2 ;
  wire \s_acc[2]_inferred_i_24_n_3 ;
  wire \s_acc[2]_inferred_i_24_n_4 ;
  wire \s_acc[2]_inferred_i_24_n_5 ;
  wire \s_acc[2]_inferred_i_24_n_6 ;
  wire \s_acc[2]_inferred_i_24_n_7 ;
  wire \s_acc[2]_inferred_i_25_n_3 ;
  wire \s_acc[2]_inferred_i_25_n_6 ;
  wire \s_acc[2]_inferred_i_25_n_7 ;
  wire \s_acc[2]_inferred_i_26_n_0 ;
  wire \s_acc[2]_inferred_i_26_n_1 ;
  wire \s_acc[2]_inferred_i_26_n_2 ;
  wire \s_acc[2]_inferred_i_26_n_3 ;
  wire \s_acc[2]_inferred_i_27_n_0 ;
  wire \s_acc[2]_inferred_i_28_n_0 ;
  wire \s_acc[2]_inferred_i_29_n_0 ;
  wire \s_acc[2]_inferred_i_30_n_0 ;
  wire \s_acc[2]_inferred_i_31_n_0 ;
  wire \s_acc[2]_inferred_i_32_n_0 ;
  wire \s_acc[2]_inferred_i_33_n_0 ;
  wire \s_acc[2]_inferred_i_34_n_0 ;
  wire \s_acc[2]_inferred_i_35_n_0 ;
  wire \s_acc[2]_inferred_i_36_n_0 ;
  wire \s_acc[2]_inferred_i_37_n_0 ;
  wire \s_acc[2]_inferred_i_38_n_0 ;
  wire \s_acc[2]_inferred_i_39_n_0 ;
  wire \s_acc[2]_inferred_i_40_n_0 ;
  wire \s_acc[2]_inferred_i_41_n_0 ;
  wire \s_acc[2]_inferred_i_42_n_0 ;
  wire \s_acc[2]_inferred_i_43_n_0 ;
  wire \s_acc[2]_inferred_i_44_n_0 ;
  wire \s_acc[2]_inferred_i_45_n_0 ;
  wire \s_acc[2]_inferred_i_45_n_1 ;
  wire \s_acc[2]_inferred_i_45_n_2 ;
  wire \s_acc[2]_inferred_i_45_n_3 ;
  wire \s_acc[2]_inferred_i_46_n_0 ;
  wire \s_acc[2]_inferred_i_47_n_0 ;
  wire \s_acc[2]_inferred_i_48_n_0 ;
  wire \s_acc[2]_inferred_i_49_n_0 ;
  wire \s_acc[2]_inferred_i_50_n_0 ;
  wire \s_acc[2]_inferred_i_51_n_7 ;
  wire \s_acc[2]_inferred_i_52_n_0 ;
  wire \s_acc[2]_inferred_i_53_n_0 ;
  wire \s_acc[2]_inferred_i_54_n_0 ;
  wire \s_acc[2]_inferred_i_55_n_0 ;
  wire \s_acc[2]_inferred_i_6_n_0 ;
  wire \s_acc[2]_inferred_i_6_n_1 ;
  wire \s_acc[2]_inferred_i_6_n_2 ;
  wire \s_acc[2]_inferred_i_6_n_3 ;
  wire \s_acc[2]_inferred_i_6_n_4 ;
  wire \s_acc[2]_inferred_i_6_n_5 ;
  wire \s_acc[2]_inferred_i_6_n_6 ;
  wire \s_acc[2]_inferred_i_6_n_7 ;
  wire \s_acc[2]_inferred_i_7_n_3 ;
  wire \s_acc[2]_inferred_i_7_n_6 ;
  wire \s_acc[2]_inferred_i_7_n_7 ;
  wire \s_acc[2]_inferred_i_8_n_0 ;
  wire \s_acc[2]_inferred_i_9_n_0 ;
  wire [4:0]\s_acc[3] ;
  wire \s_acc[3]_inferred_i_10_n_0 ;
  wire \s_acc[3]_inferred_i_11_n_0 ;
  wire \s_acc[3]_inferred_i_12_n_0 ;
  wire \s_acc[3]_inferred_i_13_n_0 ;
  wire \s_acc[3]_inferred_i_14_n_2 ;
  wire \s_acc[3]_inferred_i_14_n_3 ;
  wire \s_acc[3]_inferred_i_14_n_5 ;
  wire \s_acc[3]_inferred_i_14_n_6 ;
  wire \s_acc[3]_inferred_i_14_n_7 ;
  wire \s_acc[3]_inferred_i_15_n_0 ;
  wire \s_acc[3]_inferred_i_15_n_1 ;
  wire \s_acc[3]_inferred_i_15_n_2 ;
  wire \s_acc[3]_inferred_i_15_n_3 ;
  wire \s_acc[3]_inferred_i_15_n_4 ;
  wire \s_acc[3]_inferred_i_15_n_5 ;
  wire \s_acc[3]_inferred_i_15_n_6 ;
  wire \s_acc[3]_inferred_i_15_n_7 ;
  wire \s_acc[3]_inferred_i_16_n_0 ;
  wire \s_acc[3]_inferred_i_17_n_0 ;
  wire \s_acc[3]_inferred_i_18_n_0 ;
  wire \s_acc[3]_inferred_i_19_n_0 ;
  wire \s_acc[3]_inferred_i_20_n_0 ;
  wire \s_acc[3]_inferred_i_20_n_1 ;
  wire \s_acc[3]_inferred_i_20_n_2 ;
  wire \s_acc[3]_inferred_i_20_n_3 ;
  wire \s_acc[3]_inferred_i_20_n_4 ;
  wire \s_acc[3]_inferred_i_21_n_0 ;
  wire \s_acc[3]_inferred_i_22_n_0 ;
  wire \s_acc[3]_inferred_i_23_n_0 ;
  wire \s_acc[3]_inferred_i_24_n_0 ;
  wire \s_acc[3]_inferred_i_24_n_1 ;
  wire \s_acc[3]_inferred_i_24_n_2 ;
  wire \s_acc[3]_inferred_i_24_n_3 ;
  wire \s_acc[3]_inferred_i_24_n_4 ;
  wire \s_acc[3]_inferred_i_24_n_5 ;
  wire \s_acc[3]_inferred_i_24_n_6 ;
  wire \s_acc[3]_inferred_i_24_n_7 ;
  wire \s_acc[3]_inferred_i_25_n_3 ;
  wire \s_acc[3]_inferred_i_25_n_6 ;
  wire \s_acc[3]_inferred_i_25_n_7 ;
  wire \s_acc[3]_inferred_i_26_n_0 ;
  wire \s_acc[3]_inferred_i_26_n_1 ;
  wire \s_acc[3]_inferred_i_26_n_2 ;
  wire \s_acc[3]_inferred_i_26_n_3 ;
  wire \s_acc[3]_inferred_i_27_n_0 ;
  wire \s_acc[3]_inferred_i_28_n_0 ;
  wire \s_acc[3]_inferred_i_29_n_0 ;
  wire \s_acc[3]_inferred_i_30_n_0 ;
  wire \s_acc[3]_inferred_i_31_n_0 ;
  wire \s_acc[3]_inferred_i_32_n_0 ;
  wire \s_acc[3]_inferred_i_33_n_0 ;
  wire \s_acc[3]_inferred_i_34_n_0 ;
  wire \s_acc[3]_inferred_i_35_n_0 ;
  wire \s_acc[3]_inferred_i_36_n_0 ;
  wire \s_acc[3]_inferred_i_37_n_0 ;
  wire \s_acc[3]_inferred_i_38_n_0 ;
  wire \s_acc[3]_inferred_i_39_n_0 ;
  wire \s_acc[3]_inferred_i_40_n_0 ;
  wire \s_acc[3]_inferred_i_41_n_0 ;
  wire \s_acc[3]_inferred_i_42_n_0 ;
  wire \s_acc[3]_inferred_i_43_n_0 ;
  wire \s_acc[3]_inferred_i_44_n_0 ;
  wire \s_acc[3]_inferred_i_45_n_0 ;
  wire \s_acc[3]_inferred_i_45_n_1 ;
  wire \s_acc[3]_inferred_i_45_n_2 ;
  wire \s_acc[3]_inferred_i_45_n_3 ;
  wire \s_acc[3]_inferred_i_46_n_0 ;
  wire \s_acc[3]_inferred_i_47_n_0 ;
  wire \s_acc[3]_inferred_i_48_n_0 ;
  wire \s_acc[3]_inferred_i_49_n_0 ;
  wire \s_acc[3]_inferred_i_50_n_0 ;
  wire \s_acc[3]_inferred_i_51_n_7 ;
  wire \s_acc[3]_inferred_i_52_n_0 ;
  wire \s_acc[3]_inferred_i_53_n_0 ;
  wire \s_acc[3]_inferred_i_54_n_0 ;
  wire \s_acc[3]_inferred_i_55_n_0 ;
  wire \s_acc[3]_inferred_i_6_n_0 ;
  wire \s_acc[3]_inferred_i_6_n_1 ;
  wire \s_acc[3]_inferred_i_6_n_2 ;
  wire \s_acc[3]_inferred_i_6_n_3 ;
  wire \s_acc[3]_inferred_i_6_n_4 ;
  wire \s_acc[3]_inferred_i_6_n_5 ;
  wire \s_acc[3]_inferred_i_6_n_6 ;
  wire \s_acc[3]_inferred_i_6_n_7 ;
  wire \s_acc[3]_inferred_i_7_n_3 ;
  wire \s_acc[3]_inferred_i_7_n_6 ;
  wire \s_acc[3]_inferred_i_7_n_7 ;
  wire \s_acc[3]_inferred_i_8_n_0 ;
  wire \s_acc[3]_inferred_i_9_n_0 ;
  wire [4:0]\s_acc[4] ;
  wire \s_acc[4]_inferred_i_10_n_0 ;
  wire \s_acc[4]_inferred_i_11_n_0 ;
  wire \s_acc[4]_inferred_i_12_n_0 ;
  wire \s_acc[4]_inferred_i_13_n_0 ;
  wire \s_acc[4]_inferred_i_14_n_2 ;
  wire \s_acc[4]_inferred_i_14_n_3 ;
  wire \s_acc[4]_inferred_i_14_n_5 ;
  wire \s_acc[4]_inferred_i_14_n_6 ;
  wire \s_acc[4]_inferred_i_14_n_7 ;
  wire \s_acc[4]_inferred_i_15_n_0 ;
  wire \s_acc[4]_inferred_i_15_n_1 ;
  wire \s_acc[4]_inferred_i_15_n_2 ;
  wire \s_acc[4]_inferred_i_15_n_3 ;
  wire \s_acc[4]_inferred_i_15_n_4 ;
  wire \s_acc[4]_inferred_i_15_n_5 ;
  wire \s_acc[4]_inferred_i_15_n_6 ;
  wire \s_acc[4]_inferred_i_15_n_7 ;
  wire \s_acc[4]_inferred_i_16_n_0 ;
  wire \s_acc[4]_inferred_i_17_n_0 ;
  wire \s_acc[4]_inferred_i_18_n_0 ;
  wire \s_acc[4]_inferred_i_19_n_0 ;
  wire \s_acc[4]_inferred_i_20_n_0 ;
  wire \s_acc[4]_inferred_i_20_n_1 ;
  wire \s_acc[4]_inferred_i_20_n_2 ;
  wire \s_acc[4]_inferred_i_20_n_3 ;
  wire \s_acc[4]_inferred_i_20_n_4 ;
  wire \s_acc[4]_inferred_i_21_n_0 ;
  wire \s_acc[4]_inferred_i_22_n_0 ;
  wire \s_acc[4]_inferred_i_23_n_0 ;
  wire \s_acc[4]_inferred_i_24_n_0 ;
  wire \s_acc[4]_inferred_i_24_n_1 ;
  wire \s_acc[4]_inferred_i_24_n_2 ;
  wire \s_acc[4]_inferred_i_24_n_3 ;
  wire \s_acc[4]_inferred_i_24_n_4 ;
  wire \s_acc[4]_inferred_i_24_n_5 ;
  wire \s_acc[4]_inferred_i_24_n_6 ;
  wire \s_acc[4]_inferred_i_24_n_7 ;
  wire \s_acc[4]_inferred_i_25_n_3 ;
  wire \s_acc[4]_inferred_i_25_n_6 ;
  wire \s_acc[4]_inferred_i_25_n_7 ;
  wire \s_acc[4]_inferred_i_26_n_0 ;
  wire \s_acc[4]_inferred_i_26_n_1 ;
  wire \s_acc[4]_inferred_i_26_n_2 ;
  wire \s_acc[4]_inferred_i_26_n_3 ;
  wire \s_acc[4]_inferred_i_27_n_0 ;
  wire \s_acc[4]_inferred_i_28_n_0 ;
  wire \s_acc[4]_inferred_i_29_n_0 ;
  wire \s_acc[4]_inferred_i_30_n_0 ;
  wire \s_acc[4]_inferred_i_31_n_0 ;
  wire \s_acc[4]_inferred_i_32_n_0 ;
  wire \s_acc[4]_inferred_i_33_n_0 ;
  wire \s_acc[4]_inferred_i_34_n_0 ;
  wire \s_acc[4]_inferred_i_35_n_0 ;
  wire \s_acc[4]_inferred_i_36_n_0 ;
  wire \s_acc[4]_inferred_i_37_n_0 ;
  wire \s_acc[4]_inferred_i_38_n_0 ;
  wire \s_acc[4]_inferred_i_39_n_0 ;
  wire \s_acc[4]_inferred_i_40_n_0 ;
  wire \s_acc[4]_inferred_i_41_n_0 ;
  wire \s_acc[4]_inferred_i_42_n_0 ;
  wire \s_acc[4]_inferred_i_43_n_0 ;
  wire \s_acc[4]_inferred_i_44_n_0 ;
  wire \s_acc[4]_inferred_i_45_n_0 ;
  wire \s_acc[4]_inferred_i_45_n_1 ;
  wire \s_acc[4]_inferred_i_45_n_2 ;
  wire \s_acc[4]_inferred_i_45_n_3 ;
  wire \s_acc[4]_inferred_i_46_n_0 ;
  wire \s_acc[4]_inferred_i_47_n_0 ;
  wire \s_acc[4]_inferred_i_48_n_0 ;
  wire \s_acc[4]_inferred_i_49_n_0 ;
  wire \s_acc[4]_inferred_i_50_n_0 ;
  wire \s_acc[4]_inferred_i_51_n_7 ;
  wire \s_acc[4]_inferred_i_52_n_0 ;
  wire \s_acc[4]_inferred_i_53_n_0 ;
  wire \s_acc[4]_inferred_i_54_n_0 ;
  wire \s_acc[4]_inferred_i_55_n_0 ;
  wire \s_acc[4]_inferred_i_6_n_0 ;
  wire \s_acc[4]_inferred_i_6_n_1 ;
  wire \s_acc[4]_inferred_i_6_n_2 ;
  wire \s_acc[4]_inferred_i_6_n_3 ;
  wire \s_acc[4]_inferred_i_6_n_4 ;
  wire \s_acc[4]_inferred_i_6_n_5 ;
  wire \s_acc[4]_inferred_i_6_n_6 ;
  wire \s_acc[4]_inferred_i_6_n_7 ;
  wire \s_acc[4]_inferred_i_7_n_3 ;
  wire \s_acc[4]_inferred_i_7_n_6 ;
  wire \s_acc[4]_inferred_i_7_n_7 ;
  wire \s_acc[4]_inferred_i_8_n_0 ;
  wire \s_acc[4]_inferred_i_9_n_0 ;
  wire [4:0]\s_acc[5] ;
  wire \s_acc[5]_inferred_i_10_n_0 ;
  wire \s_acc[5]_inferred_i_11_n_0 ;
  wire \s_acc[5]_inferred_i_12_n_0 ;
  wire \s_acc[5]_inferred_i_13_n_0 ;
  wire \s_acc[5]_inferred_i_14_n_2 ;
  wire \s_acc[5]_inferred_i_14_n_3 ;
  wire \s_acc[5]_inferred_i_14_n_5 ;
  wire \s_acc[5]_inferred_i_14_n_6 ;
  wire \s_acc[5]_inferred_i_14_n_7 ;
  wire \s_acc[5]_inferred_i_15_n_0 ;
  wire \s_acc[5]_inferred_i_15_n_1 ;
  wire \s_acc[5]_inferred_i_15_n_2 ;
  wire \s_acc[5]_inferred_i_15_n_3 ;
  wire \s_acc[5]_inferred_i_15_n_4 ;
  wire \s_acc[5]_inferred_i_15_n_5 ;
  wire \s_acc[5]_inferred_i_15_n_6 ;
  wire \s_acc[5]_inferred_i_15_n_7 ;
  wire \s_acc[5]_inferred_i_16_n_0 ;
  wire \s_acc[5]_inferred_i_17_n_0 ;
  wire \s_acc[5]_inferred_i_18_n_0 ;
  wire \s_acc[5]_inferred_i_19_n_0 ;
  wire \s_acc[5]_inferred_i_20_n_0 ;
  wire \s_acc[5]_inferred_i_20_n_1 ;
  wire \s_acc[5]_inferred_i_20_n_2 ;
  wire \s_acc[5]_inferred_i_20_n_3 ;
  wire \s_acc[5]_inferred_i_20_n_4 ;
  wire \s_acc[5]_inferred_i_21_n_0 ;
  wire \s_acc[5]_inferred_i_22_n_0 ;
  wire \s_acc[5]_inferred_i_23_n_0 ;
  wire \s_acc[5]_inferred_i_24_n_0 ;
  wire \s_acc[5]_inferred_i_24_n_1 ;
  wire \s_acc[5]_inferred_i_24_n_2 ;
  wire \s_acc[5]_inferred_i_24_n_3 ;
  wire \s_acc[5]_inferred_i_24_n_4 ;
  wire \s_acc[5]_inferred_i_24_n_5 ;
  wire \s_acc[5]_inferred_i_24_n_6 ;
  wire \s_acc[5]_inferred_i_24_n_7 ;
  wire \s_acc[5]_inferred_i_25_n_3 ;
  wire \s_acc[5]_inferred_i_25_n_6 ;
  wire \s_acc[5]_inferred_i_25_n_7 ;
  wire \s_acc[5]_inferred_i_26_n_0 ;
  wire \s_acc[5]_inferred_i_26_n_1 ;
  wire \s_acc[5]_inferred_i_26_n_2 ;
  wire \s_acc[5]_inferred_i_26_n_3 ;
  wire \s_acc[5]_inferred_i_27_n_0 ;
  wire \s_acc[5]_inferred_i_28_n_0 ;
  wire \s_acc[5]_inferred_i_29_n_0 ;
  wire \s_acc[5]_inferred_i_30_n_0 ;
  wire \s_acc[5]_inferred_i_31_n_0 ;
  wire \s_acc[5]_inferred_i_32_n_0 ;
  wire \s_acc[5]_inferred_i_33_n_0 ;
  wire \s_acc[5]_inferred_i_34_n_0 ;
  wire \s_acc[5]_inferred_i_35_n_0 ;
  wire \s_acc[5]_inferred_i_36_n_0 ;
  wire \s_acc[5]_inferred_i_37_n_0 ;
  wire \s_acc[5]_inferred_i_38_n_0 ;
  wire \s_acc[5]_inferred_i_39_n_0 ;
  wire \s_acc[5]_inferred_i_40_n_0 ;
  wire \s_acc[5]_inferred_i_41_n_0 ;
  wire \s_acc[5]_inferred_i_42_n_0 ;
  wire \s_acc[5]_inferred_i_43_n_0 ;
  wire \s_acc[5]_inferred_i_44_n_0 ;
  wire \s_acc[5]_inferred_i_45_n_0 ;
  wire \s_acc[5]_inferred_i_45_n_1 ;
  wire \s_acc[5]_inferred_i_45_n_2 ;
  wire \s_acc[5]_inferred_i_45_n_3 ;
  wire \s_acc[5]_inferred_i_46_n_0 ;
  wire \s_acc[5]_inferred_i_47_n_0 ;
  wire \s_acc[5]_inferred_i_48_n_0 ;
  wire \s_acc[5]_inferred_i_49_n_0 ;
  wire \s_acc[5]_inferred_i_50_n_0 ;
  wire \s_acc[5]_inferred_i_51_n_7 ;
  wire \s_acc[5]_inferred_i_52_n_0 ;
  wire \s_acc[5]_inferred_i_53_n_0 ;
  wire \s_acc[5]_inferred_i_54_n_0 ;
  wire \s_acc[5]_inferred_i_55_n_0 ;
  wire \s_acc[5]_inferred_i_6_n_0 ;
  wire \s_acc[5]_inferred_i_6_n_1 ;
  wire \s_acc[5]_inferred_i_6_n_2 ;
  wire \s_acc[5]_inferred_i_6_n_3 ;
  wire \s_acc[5]_inferred_i_6_n_4 ;
  wire \s_acc[5]_inferred_i_6_n_5 ;
  wire \s_acc[5]_inferred_i_6_n_6 ;
  wire \s_acc[5]_inferred_i_6_n_7 ;
  wire \s_acc[5]_inferred_i_7_n_3 ;
  wire \s_acc[5]_inferred_i_7_n_6 ;
  wire \s_acc[5]_inferred_i_7_n_7 ;
  wire \s_acc[5]_inferred_i_8_n_0 ;
  wire \s_acc[5]_inferred_i_9_n_0 ;
  wire [4:0]\s_acc[6] ;
  wire \s_acc[6]_inferred_i_10_n_0 ;
  wire \s_acc[6]_inferred_i_11_n_0 ;
  wire \s_acc[6]_inferred_i_12_n_0 ;
  wire \s_acc[6]_inferred_i_13_n_0 ;
  wire \s_acc[6]_inferred_i_14_n_2 ;
  wire \s_acc[6]_inferred_i_14_n_3 ;
  wire \s_acc[6]_inferred_i_14_n_5 ;
  wire \s_acc[6]_inferred_i_14_n_6 ;
  wire \s_acc[6]_inferred_i_14_n_7 ;
  wire \s_acc[6]_inferred_i_15_n_0 ;
  wire \s_acc[6]_inferred_i_15_n_1 ;
  wire \s_acc[6]_inferred_i_15_n_2 ;
  wire \s_acc[6]_inferred_i_15_n_3 ;
  wire \s_acc[6]_inferred_i_15_n_4 ;
  wire \s_acc[6]_inferred_i_15_n_5 ;
  wire \s_acc[6]_inferred_i_15_n_6 ;
  wire \s_acc[6]_inferred_i_15_n_7 ;
  wire \s_acc[6]_inferred_i_16_n_0 ;
  wire \s_acc[6]_inferred_i_17_n_0 ;
  wire \s_acc[6]_inferred_i_18_n_0 ;
  wire \s_acc[6]_inferred_i_19_n_0 ;
  wire \s_acc[6]_inferred_i_20_n_0 ;
  wire \s_acc[6]_inferred_i_20_n_1 ;
  wire \s_acc[6]_inferred_i_20_n_2 ;
  wire \s_acc[6]_inferred_i_20_n_3 ;
  wire \s_acc[6]_inferred_i_20_n_4 ;
  wire \s_acc[6]_inferred_i_21_n_0 ;
  wire \s_acc[6]_inferred_i_22_n_0 ;
  wire \s_acc[6]_inferred_i_23_n_0 ;
  wire \s_acc[6]_inferred_i_24_n_0 ;
  wire \s_acc[6]_inferred_i_24_n_1 ;
  wire \s_acc[6]_inferred_i_24_n_2 ;
  wire \s_acc[6]_inferred_i_24_n_3 ;
  wire \s_acc[6]_inferred_i_24_n_4 ;
  wire \s_acc[6]_inferred_i_24_n_5 ;
  wire \s_acc[6]_inferred_i_24_n_6 ;
  wire \s_acc[6]_inferred_i_24_n_7 ;
  wire \s_acc[6]_inferred_i_25_n_3 ;
  wire \s_acc[6]_inferred_i_25_n_6 ;
  wire \s_acc[6]_inferred_i_25_n_7 ;
  wire \s_acc[6]_inferred_i_26_n_0 ;
  wire \s_acc[6]_inferred_i_26_n_1 ;
  wire \s_acc[6]_inferred_i_26_n_2 ;
  wire \s_acc[6]_inferred_i_26_n_3 ;
  wire \s_acc[6]_inferred_i_27_n_0 ;
  wire \s_acc[6]_inferred_i_28_n_0 ;
  wire \s_acc[6]_inferred_i_29_n_0 ;
  wire \s_acc[6]_inferred_i_30_n_0 ;
  wire \s_acc[6]_inferred_i_31_n_0 ;
  wire \s_acc[6]_inferred_i_32_n_0 ;
  wire \s_acc[6]_inferred_i_33_n_0 ;
  wire \s_acc[6]_inferred_i_34_n_0 ;
  wire \s_acc[6]_inferred_i_35_n_0 ;
  wire \s_acc[6]_inferred_i_36_n_0 ;
  wire \s_acc[6]_inferred_i_37_n_0 ;
  wire \s_acc[6]_inferred_i_38_n_0 ;
  wire \s_acc[6]_inferred_i_39_n_0 ;
  wire \s_acc[6]_inferred_i_40_n_0 ;
  wire \s_acc[6]_inferred_i_41_n_0 ;
  wire \s_acc[6]_inferred_i_42_n_0 ;
  wire \s_acc[6]_inferred_i_43_n_0 ;
  wire \s_acc[6]_inferred_i_44_n_0 ;
  wire \s_acc[6]_inferred_i_45_n_0 ;
  wire \s_acc[6]_inferred_i_45_n_1 ;
  wire \s_acc[6]_inferred_i_45_n_2 ;
  wire \s_acc[6]_inferred_i_45_n_3 ;
  wire \s_acc[6]_inferred_i_46_n_0 ;
  wire \s_acc[6]_inferred_i_47_n_0 ;
  wire \s_acc[6]_inferred_i_48_n_0 ;
  wire \s_acc[6]_inferred_i_49_n_0 ;
  wire \s_acc[6]_inferred_i_50_n_0 ;
  wire \s_acc[6]_inferred_i_51_n_7 ;
  wire \s_acc[6]_inferred_i_52_n_0 ;
  wire \s_acc[6]_inferred_i_53_n_0 ;
  wire \s_acc[6]_inferred_i_54_n_0 ;
  wire \s_acc[6]_inferred_i_55_n_0 ;
  wire \s_acc[6]_inferred_i_6_n_0 ;
  wire \s_acc[6]_inferred_i_6_n_1 ;
  wire \s_acc[6]_inferred_i_6_n_2 ;
  wire \s_acc[6]_inferred_i_6_n_3 ;
  wire \s_acc[6]_inferred_i_6_n_4 ;
  wire \s_acc[6]_inferred_i_6_n_5 ;
  wire \s_acc[6]_inferred_i_6_n_6 ;
  wire \s_acc[6]_inferred_i_6_n_7 ;
  wire \s_acc[6]_inferred_i_7_n_3 ;
  wire \s_acc[6]_inferred_i_7_n_6 ;
  wire \s_acc[6]_inferred_i_7_n_7 ;
  wire \s_acc[6]_inferred_i_8_n_0 ;
  wire \s_acc[6]_inferred_i_9_n_0 ;
  wire [4:0]\s_acc[7] ;
  wire \s_acc[7]_inferred_i_10_n_0 ;
  wire \s_acc[7]_inferred_i_11_n_0 ;
  wire \s_acc[7]_inferred_i_12_n_0 ;
  wire \s_acc[7]_inferred_i_13_n_0 ;
  wire \s_acc[7]_inferred_i_14_n_2 ;
  wire \s_acc[7]_inferred_i_14_n_3 ;
  wire \s_acc[7]_inferred_i_14_n_5 ;
  wire \s_acc[7]_inferred_i_14_n_6 ;
  wire \s_acc[7]_inferred_i_14_n_7 ;
  wire \s_acc[7]_inferred_i_15_n_0 ;
  wire \s_acc[7]_inferred_i_15_n_1 ;
  wire \s_acc[7]_inferred_i_15_n_2 ;
  wire \s_acc[7]_inferred_i_15_n_3 ;
  wire \s_acc[7]_inferred_i_15_n_4 ;
  wire \s_acc[7]_inferred_i_15_n_5 ;
  wire \s_acc[7]_inferred_i_15_n_6 ;
  wire \s_acc[7]_inferred_i_15_n_7 ;
  wire \s_acc[7]_inferred_i_16_n_0 ;
  wire \s_acc[7]_inferred_i_17_n_0 ;
  wire \s_acc[7]_inferred_i_18_n_0 ;
  wire \s_acc[7]_inferred_i_19_n_0 ;
  wire \s_acc[7]_inferred_i_20_n_0 ;
  wire \s_acc[7]_inferred_i_20_n_1 ;
  wire \s_acc[7]_inferred_i_20_n_2 ;
  wire \s_acc[7]_inferred_i_20_n_3 ;
  wire \s_acc[7]_inferred_i_20_n_4 ;
  wire \s_acc[7]_inferred_i_21_n_0 ;
  wire \s_acc[7]_inferred_i_22_n_0 ;
  wire \s_acc[7]_inferred_i_23_n_0 ;
  wire \s_acc[7]_inferred_i_24_n_0 ;
  wire \s_acc[7]_inferred_i_24_n_1 ;
  wire \s_acc[7]_inferred_i_24_n_2 ;
  wire \s_acc[7]_inferred_i_24_n_3 ;
  wire \s_acc[7]_inferred_i_24_n_4 ;
  wire \s_acc[7]_inferred_i_24_n_5 ;
  wire \s_acc[7]_inferred_i_24_n_6 ;
  wire \s_acc[7]_inferred_i_24_n_7 ;
  wire \s_acc[7]_inferred_i_25_n_3 ;
  wire \s_acc[7]_inferred_i_25_n_6 ;
  wire \s_acc[7]_inferred_i_25_n_7 ;
  wire \s_acc[7]_inferred_i_26_n_0 ;
  wire \s_acc[7]_inferred_i_26_n_1 ;
  wire \s_acc[7]_inferred_i_26_n_2 ;
  wire \s_acc[7]_inferred_i_26_n_3 ;
  wire \s_acc[7]_inferred_i_27_n_0 ;
  wire \s_acc[7]_inferred_i_28_n_0 ;
  wire \s_acc[7]_inferred_i_29_n_0 ;
  wire \s_acc[7]_inferred_i_30_n_0 ;
  wire \s_acc[7]_inferred_i_31_n_0 ;
  wire \s_acc[7]_inferred_i_32_n_0 ;
  wire \s_acc[7]_inferred_i_33_n_0 ;
  wire \s_acc[7]_inferred_i_34_n_0 ;
  wire \s_acc[7]_inferred_i_35_n_0 ;
  wire \s_acc[7]_inferred_i_36_n_0 ;
  wire \s_acc[7]_inferred_i_37_n_0 ;
  wire \s_acc[7]_inferred_i_38_n_0 ;
  wire \s_acc[7]_inferred_i_39_n_0 ;
  wire \s_acc[7]_inferred_i_40_n_0 ;
  wire \s_acc[7]_inferred_i_41_n_0 ;
  wire \s_acc[7]_inferred_i_42_n_0 ;
  wire \s_acc[7]_inferred_i_43_n_0 ;
  wire \s_acc[7]_inferred_i_44_n_0 ;
  wire \s_acc[7]_inferred_i_45_n_0 ;
  wire \s_acc[7]_inferred_i_45_n_1 ;
  wire \s_acc[7]_inferred_i_45_n_2 ;
  wire \s_acc[7]_inferred_i_45_n_3 ;
  wire \s_acc[7]_inferred_i_46_n_0 ;
  wire \s_acc[7]_inferred_i_47_n_0 ;
  wire \s_acc[7]_inferred_i_48_n_0 ;
  wire \s_acc[7]_inferred_i_49_n_0 ;
  wire \s_acc[7]_inferred_i_50_n_0 ;
  wire \s_acc[7]_inferred_i_51_n_7 ;
  wire \s_acc[7]_inferred_i_52_n_0 ;
  wire \s_acc[7]_inferred_i_53_n_0 ;
  wire \s_acc[7]_inferred_i_54_n_0 ;
  wire \s_acc[7]_inferred_i_55_n_0 ;
  wire \s_acc[7]_inferred_i_6_n_0 ;
  wire \s_acc[7]_inferred_i_6_n_1 ;
  wire \s_acc[7]_inferred_i_6_n_2 ;
  wire \s_acc[7]_inferred_i_6_n_3 ;
  wire \s_acc[7]_inferred_i_6_n_4 ;
  wire \s_acc[7]_inferred_i_6_n_5 ;
  wire \s_acc[7]_inferred_i_6_n_6 ;
  wire \s_acc[7]_inferred_i_6_n_7 ;
  wire \s_acc[7]_inferred_i_7_n_3 ;
  wire \s_acc[7]_inferred_i_7_n_6 ;
  wire \s_acc[7]_inferred_i_7_n_7 ;
  wire \s_acc[7]_inferred_i_8_n_0 ;
  wire \s_acc[7]_inferred_i_9_n_0 ;
  wire s_acc_sel;
  wire s_main;
  wire [31:0]sel0;
  wire \NLW_acc_a_reg[0]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_acc_a_reg[0]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_acc_a_reg[0]_OVERFLOW_UNCONNECTED ;
  wire \NLW_acc_a_reg[0]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_acc_a_reg[0]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_acc_a_reg[0]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_acc_a_reg[0]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_acc_a_reg[0]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_acc_a_reg[0]_CARRYOUT_UNCONNECTED ;
  wire [47:16]\NLW_acc_a_reg[0]_P_UNCONNECTED ;
  wire [47:0]\NLW_acc_a_reg[0]_PCOUT_UNCONNECTED ;
  wire \NLW_acc_a_reg[1]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_acc_a_reg[1]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_acc_a_reg[1]_OVERFLOW_UNCONNECTED ;
  wire \NLW_acc_a_reg[1]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_acc_a_reg[1]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_acc_a_reg[1]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_acc_a_reg[1]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_acc_a_reg[1]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_acc_a_reg[1]_CARRYOUT_UNCONNECTED ;
  wire [47:16]\NLW_acc_a_reg[1]_P_UNCONNECTED ;
  wire [47:0]\NLW_acc_a_reg[1]_PCOUT_UNCONNECTED ;
  wire \NLW_acc_a_reg[2]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_acc_a_reg[2]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_acc_a_reg[2]_OVERFLOW_UNCONNECTED ;
  wire \NLW_acc_a_reg[2]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_acc_a_reg[2]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_acc_a_reg[2]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_acc_a_reg[2]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_acc_a_reg[2]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_acc_a_reg[2]_CARRYOUT_UNCONNECTED ;
  wire [47:16]\NLW_acc_a_reg[2]_P_UNCONNECTED ;
  wire [47:0]\NLW_acc_a_reg[2]_PCOUT_UNCONNECTED ;
  wire \NLW_acc_a_reg[3]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_acc_a_reg[3]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_acc_a_reg[3]_OVERFLOW_UNCONNECTED ;
  wire \NLW_acc_a_reg[3]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_acc_a_reg[3]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_acc_a_reg[3]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_acc_a_reg[3]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_acc_a_reg[3]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_acc_a_reg[3]_CARRYOUT_UNCONNECTED ;
  wire [47:16]\NLW_acc_a_reg[3]_P_UNCONNECTED ;
  wire [47:0]\NLW_acc_a_reg[3]_PCOUT_UNCONNECTED ;
  wire \NLW_acc_b_reg[0]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_acc_b_reg[0]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_acc_b_reg[0]_OVERFLOW_UNCONNECTED ;
  wire \NLW_acc_b_reg[0]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_acc_b_reg[0]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_acc_b_reg[0]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_acc_b_reg[0]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_acc_b_reg[0]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_acc_b_reg[0]_CARRYOUT_UNCONNECTED ;
  wire [47:16]\NLW_acc_b_reg[0]_P_UNCONNECTED ;
  wire [47:0]\NLW_acc_b_reg[0]_PCOUT_UNCONNECTED ;
  wire \NLW_acc_b_reg[1]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_acc_b_reg[1]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_acc_b_reg[1]_OVERFLOW_UNCONNECTED ;
  wire \NLW_acc_b_reg[1]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_acc_b_reg[1]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_acc_b_reg[1]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_acc_b_reg[1]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_acc_b_reg[1]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_acc_b_reg[1]_CARRYOUT_UNCONNECTED ;
  wire [47:16]\NLW_acc_b_reg[1]_P_UNCONNECTED ;
  wire [47:0]\NLW_acc_b_reg[1]_PCOUT_UNCONNECTED ;
  wire \NLW_acc_b_reg[2]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_acc_b_reg[2]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_acc_b_reg[2]_OVERFLOW_UNCONNECTED ;
  wire \NLW_acc_b_reg[2]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_acc_b_reg[2]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_acc_b_reg[2]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_acc_b_reg[2]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_acc_b_reg[2]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_acc_b_reg[2]_CARRYOUT_UNCONNECTED ;
  wire [47:16]\NLW_acc_b_reg[2]_P_UNCONNECTED ;
  wire [47:0]\NLW_acc_b_reg[2]_PCOUT_UNCONNECTED ;
  wire \NLW_acc_b_reg[3]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_acc_b_reg[3]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_acc_b_reg[3]_OVERFLOW_UNCONNECTED ;
  wire \NLW_acc_b_reg[3]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_acc_b_reg[3]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_acc_b_reg[3]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_acc_b_reg[3]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_acc_b_reg[3]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_acc_b_reg[3]_CARRYOUT_UNCONNECTED ;
  wire [47:16]\NLW_acc_b_reg[3]_P_UNCONNECTED ;
  wire [47:0]\NLW_acc_b_reg[3]_PCOUT_UNCONNECTED ;
  wire [3:2]\NLW_s_acc[0]_inferred_i_14_CO_UNCONNECTED ;
  wire [3:3]\NLW_s_acc[0]_inferred_i_14_O_UNCONNECTED ;
  wire [2:0]\NLW_s_acc[0]_inferred_i_20_O_UNCONNECTED ;
  wire [3:1]\NLW_s_acc[0]_inferred_i_25_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_acc[0]_inferred_i_25_O_UNCONNECTED ;
  wire [3:0]\NLW_s_acc[0]_inferred_i_26_O_UNCONNECTED ;
  wire [3:0]\NLW_s_acc[0]_inferred_i_45_O_UNCONNECTED ;
  wire [3:0]\NLW_s_acc[0]_inferred_i_51_CO_UNCONNECTED ;
  wire [3:1]\NLW_s_acc[0]_inferred_i_51_O_UNCONNECTED ;
  wire [3:1]\NLW_s_acc[0]_inferred_i_7_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_acc[0]_inferred_i_7_O_UNCONNECTED ;
  wire [3:2]\NLW_s_acc[1]_inferred_i_14_CO_UNCONNECTED ;
  wire [3:3]\NLW_s_acc[1]_inferred_i_14_O_UNCONNECTED ;
  wire [2:0]\NLW_s_acc[1]_inferred_i_20_O_UNCONNECTED ;
  wire [3:1]\NLW_s_acc[1]_inferred_i_25_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_acc[1]_inferred_i_25_O_UNCONNECTED ;
  wire [3:0]\NLW_s_acc[1]_inferred_i_26_O_UNCONNECTED ;
  wire [3:0]\NLW_s_acc[1]_inferred_i_45_O_UNCONNECTED ;
  wire [3:0]\NLW_s_acc[1]_inferred_i_51_CO_UNCONNECTED ;
  wire [3:1]\NLW_s_acc[1]_inferred_i_51_O_UNCONNECTED ;
  wire [3:1]\NLW_s_acc[1]_inferred_i_7_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_acc[1]_inferred_i_7_O_UNCONNECTED ;
  wire [3:2]\NLW_s_acc[2]_inferred_i_14_CO_UNCONNECTED ;
  wire [3:3]\NLW_s_acc[2]_inferred_i_14_O_UNCONNECTED ;
  wire [2:0]\NLW_s_acc[2]_inferred_i_20_O_UNCONNECTED ;
  wire [3:1]\NLW_s_acc[2]_inferred_i_25_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_acc[2]_inferred_i_25_O_UNCONNECTED ;
  wire [3:0]\NLW_s_acc[2]_inferred_i_26_O_UNCONNECTED ;
  wire [3:0]\NLW_s_acc[2]_inferred_i_45_O_UNCONNECTED ;
  wire [3:0]\NLW_s_acc[2]_inferred_i_51_CO_UNCONNECTED ;
  wire [3:1]\NLW_s_acc[2]_inferred_i_51_O_UNCONNECTED ;
  wire [3:1]\NLW_s_acc[2]_inferred_i_7_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_acc[2]_inferred_i_7_O_UNCONNECTED ;
  wire [3:2]\NLW_s_acc[3]_inferred_i_14_CO_UNCONNECTED ;
  wire [3:3]\NLW_s_acc[3]_inferred_i_14_O_UNCONNECTED ;
  wire [2:0]\NLW_s_acc[3]_inferred_i_20_O_UNCONNECTED ;
  wire [3:1]\NLW_s_acc[3]_inferred_i_25_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_acc[3]_inferred_i_25_O_UNCONNECTED ;
  wire [3:0]\NLW_s_acc[3]_inferred_i_26_O_UNCONNECTED ;
  wire [3:0]\NLW_s_acc[3]_inferred_i_45_O_UNCONNECTED ;
  wire [3:0]\NLW_s_acc[3]_inferred_i_51_CO_UNCONNECTED ;
  wire [3:1]\NLW_s_acc[3]_inferred_i_51_O_UNCONNECTED ;
  wire [3:1]\NLW_s_acc[3]_inferred_i_7_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_acc[3]_inferred_i_7_O_UNCONNECTED ;
  wire [3:2]\NLW_s_acc[4]_inferred_i_14_CO_UNCONNECTED ;
  wire [3:3]\NLW_s_acc[4]_inferred_i_14_O_UNCONNECTED ;
  wire [2:0]\NLW_s_acc[4]_inferred_i_20_O_UNCONNECTED ;
  wire [3:1]\NLW_s_acc[4]_inferred_i_25_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_acc[4]_inferred_i_25_O_UNCONNECTED ;
  wire [3:0]\NLW_s_acc[4]_inferred_i_26_O_UNCONNECTED ;
  wire [3:0]\NLW_s_acc[4]_inferred_i_45_O_UNCONNECTED ;
  wire [3:0]\NLW_s_acc[4]_inferred_i_51_CO_UNCONNECTED ;
  wire [3:1]\NLW_s_acc[4]_inferred_i_51_O_UNCONNECTED ;
  wire [3:1]\NLW_s_acc[4]_inferred_i_7_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_acc[4]_inferred_i_7_O_UNCONNECTED ;
  wire [3:2]\NLW_s_acc[5]_inferred_i_14_CO_UNCONNECTED ;
  wire [3:3]\NLW_s_acc[5]_inferred_i_14_O_UNCONNECTED ;
  wire [2:0]\NLW_s_acc[5]_inferred_i_20_O_UNCONNECTED ;
  wire [3:1]\NLW_s_acc[5]_inferred_i_25_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_acc[5]_inferred_i_25_O_UNCONNECTED ;
  wire [3:0]\NLW_s_acc[5]_inferred_i_26_O_UNCONNECTED ;
  wire [3:0]\NLW_s_acc[5]_inferred_i_45_O_UNCONNECTED ;
  wire [3:0]\NLW_s_acc[5]_inferred_i_51_CO_UNCONNECTED ;
  wire [3:1]\NLW_s_acc[5]_inferred_i_51_O_UNCONNECTED ;
  wire [3:1]\NLW_s_acc[5]_inferred_i_7_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_acc[5]_inferred_i_7_O_UNCONNECTED ;
  wire [3:2]\NLW_s_acc[6]_inferred_i_14_CO_UNCONNECTED ;
  wire [3:3]\NLW_s_acc[6]_inferred_i_14_O_UNCONNECTED ;
  wire [2:0]\NLW_s_acc[6]_inferred_i_20_O_UNCONNECTED ;
  wire [3:1]\NLW_s_acc[6]_inferred_i_25_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_acc[6]_inferred_i_25_O_UNCONNECTED ;
  wire [3:0]\NLW_s_acc[6]_inferred_i_26_O_UNCONNECTED ;
  wire [3:0]\NLW_s_acc[6]_inferred_i_45_O_UNCONNECTED ;
  wire [3:0]\NLW_s_acc[6]_inferred_i_51_CO_UNCONNECTED ;
  wire [3:1]\NLW_s_acc[6]_inferred_i_51_O_UNCONNECTED ;
  wire [3:1]\NLW_s_acc[6]_inferred_i_7_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_acc[6]_inferred_i_7_O_UNCONNECTED ;
  wire [3:2]\NLW_s_acc[7]_inferred_i_14_CO_UNCONNECTED ;
  wire [3:3]\NLW_s_acc[7]_inferred_i_14_O_UNCONNECTED ;
  wire [2:0]\NLW_s_acc[7]_inferred_i_20_O_UNCONNECTED ;
  wire [3:1]\NLW_s_acc[7]_inferred_i_25_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_acc[7]_inferred_i_25_O_UNCONNECTED ;
  wire [3:0]\NLW_s_acc[7]_inferred_i_26_O_UNCONNECTED ;
  wire [3:0]\NLW_s_acc[7]_inferred_i_45_O_UNCONNECTED ;
  wire [3:0]\NLW_s_acc[7]_inferred_i_51_CO_UNCONNECTED ;
  wire [3:1]\NLW_s_acc[7]_inferred_i_51_O_UNCONNECTED ;
  wire [3:1]\NLW_s_acc[7]_inferred_i_7_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_acc[7]_inferred_i_7_O_UNCONNECTED ;

  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    \acc_a_reg[0] 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,i_mem1a_dout[7:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_acc_a_reg[0]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dspb}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_acc_a_reg[0]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_acc_a_reg[0]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_acc_a_reg[0]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(CEA2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(\acc_a_reg[0]_i_2_n_0 ),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(\acc_a_reg[0]_i_3_n_0 ),
        .CEP(\acc_a_reg[0]_i_3_n_0 ),
        .CLK(i_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_acc_a_reg[0]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_acc_a_reg[0]_OVERFLOW_UNCONNECTED ),
        .P({\NLW_acc_a_reg[0]_P_UNCONNECTED [47:16],\acc_a_reg_n_90_[0] ,\acc_a_reg_n_91_[0] ,\acc_a_reg_n_92_[0] ,\acc_a_reg_n_93_[0] ,\acc_a_reg_n_94_[0] ,\acc_a_reg_n_95_[0] ,\acc_a_reg_n_96_[0] ,\acc_a_reg_n_97_[0] ,\acc_a_reg_n_98_[0] ,\acc_a_reg_n_99_[0] ,\acc_a_reg_n_100_[0] ,\acc_a_reg_n_101_[0] ,\acc_a_reg_n_102_[0] ,\acc_a_reg_n_103_[0] ,\acc_a_reg_n_104_[0] ,\acc_a_reg_n_105_[0] }),
        .PATTERNBDETECT(\NLW_acc_a_reg[0]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_acc_a_reg[0]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_acc_a_reg[0]_PCOUT_UNCONNECTED [47:0]),
        .RSTA(rst),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(RSTM),
        .RSTP(RSTP),
        .UNDERFLOW(\NLW_acc_a_reg[0]_UNDERFLOW_UNCONNECTED ));
  LUT3 #(
    .INIT(8'h06)) 
    \acc_a_reg[0]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(CEA2));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \acc_a_reg[0]_i_10 
       (.I0(i_mem0a_dout[3]),
        .I1(\acc_a_reg[0]_i_15_n_0 ),
        .I2(\acc_a_reg[0]_i_16_n_0 ),
        .I3(\acc_a_reg[0]_i_17_n_0 ),
        .I4(\acc_a_reg[0]_i_18_n_0 ),
        .I5(data1[3]),
        .O(dspb[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \acc_a_reg[0]_i_11 
       (.I0(i_mem0a_dout[2]),
        .I1(\acc_a_reg[0]_i_15_n_0 ),
        .I2(\acc_a_reg[0]_i_16_n_0 ),
        .I3(\acc_a_reg[0]_i_17_n_0 ),
        .I4(\acc_a_reg[0]_i_18_n_0 ),
        .I5(data1[2]),
        .O(dspb[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \acc_a_reg[0]_i_12 
       (.I0(i_mem0a_dout[1]),
        .I1(\acc_a_reg[0]_i_15_n_0 ),
        .I2(\acc_a_reg[0]_i_16_n_0 ),
        .I3(\acc_a_reg[0]_i_17_n_0 ),
        .I4(\acc_a_reg[0]_i_18_n_0 ),
        .I5(data1[1]),
        .O(dspb[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \acc_a_reg[0]_i_13 
       (.I0(i_mem0a_dout[0]),
        .I1(\acc_a_reg[0]_i_15_n_0 ),
        .I2(\acc_a_reg[0]_i_16_n_0 ),
        .I3(\acc_a_reg[0]_i_17_n_0 ),
        .I4(\acc_a_reg[0]_i_18_n_0 ),
        .I5(data1[0]),
        .O(dspb[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \acc_a_reg[0]_i_14 
       (.I0(Q[2]),
        .I1(Q[0]),
        .O(\acc_a_reg[0]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \acc_a_reg[0]_i_15 
       (.I0(sel0[11]),
        .I1(sel0[10]),
        .I2(sel0[9]),
        .I3(sel0[8]),
        .I4(\acc_a_reg[0]_i_27_n_0 ),
        .O(\acc_a_reg[0]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \acc_a_reg[0]_i_16 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\acc_a_reg[0]_i_28_n_0 ),
        .O(\acc_a_reg[0]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \acc_a_reg[0]_i_17 
       (.I0(sel0[27]),
        .I1(sel0[26]),
        .I2(sel0[25]),
        .I3(sel0[24]),
        .I4(\acc_a_reg[0]_i_29_n_0 ),
        .O(\acc_a_reg[0]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \acc_a_reg[0]_i_18 
       (.I0(sel0[19]),
        .I1(sel0[18]),
        .I2(sel0[17]),
        .I3(sel0[16]),
        .I4(\acc_a_reg[0]_i_30_n_0 ),
        .O(\acc_a_reg[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \acc_a_reg[0]_i_19 
       (.I0(\acc_b_reg[3]_0 [31]),
        .I1(\acc_b_reg[3]_0 [15]),
        .I2(sel0[0]),
        .I3(\acc_b_reg[3]_0 [23]),
        .I4(sel0[1]),
        .I5(\acc_b_reg[3]_0 [7]),
        .O(data1[7]));
  LUT3 #(
    .INIT(8'h02)) 
    \acc_a_reg[0]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\acc_a_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \acc_a_reg[0]_i_20 
       (.I0(\acc_b_reg[3]_0 [30]),
        .I1(\acc_b_reg[3]_0 [14]),
        .I2(sel0[0]),
        .I3(\acc_b_reg[3]_0 [22]),
        .I4(sel0[1]),
        .I5(\acc_b_reg[3]_0 [6]),
        .O(data1[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \acc_a_reg[0]_i_21 
       (.I0(\acc_b_reg[3]_0 [29]),
        .I1(\acc_b_reg[3]_0 [13]),
        .I2(sel0[0]),
        .I3(\acc_b_reg[3]_0 [21]),
        .I4(sel0[1]),
        .I5(\acc_b_reg[3]_0 [5]),
        .O(data1[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \acc_a_reg[0]_i_22 
       (.I0(\acc_b_reg[3]_0 [28]),
        .I1(\acc_b_reg[3]_0 [12]),
        .I2(sel0[0]),
        .I3(\acc_b_reg[3]_0 [20]),
        .I4(sel0[1]),
        .I5(\acc_b_reg[3]_0 [4]),
        .O(data1[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \acc_a_reg[0]_i_23 
       (.I0(\acc_b_reg[3]_0 [27]),
        .I1(\acc_b_reg[3]_0 [11]),
        .I2(sel0[0]),
        .I3(\acc_b_reg[3]_0 [19]),
        .I4(sel0[1]),
        .I5(\acc_b_reg[3]_0 [3]),
        .O(data1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \acc_a_reg[0]_i_24 
       (.I0(\acc_b_reg[3]_0 [26]),
        .I1(\acc_b_reg[3]_0 [10]),
        .I2(sel0[0]),
        .I3(\acc_b_reg[3]_0 [18]),
        .I4(sel0[1]),
        .I5(\acc_b_reg[3]_0 [2]),
        .O(data1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \acc_a_reg[0]_i_25 
       (.I0(\acc_b_reg[3]_0 [25]),
        .I1(\acc_b_reg[3]_0 [9]),
        .I2(sel0[0]),
        .I3(\acc_b_reg[3]_0 [17]),
        .I4(sel0[1]),
        .I5(\acc_b_reg[3]_0 [1]),
        .O(data1[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \acc_a_reg[0]_i_26 
       (.I0(\acc_b_reg[3]_0 [24]),
        .I1(\acc_b_reg[3]_0 [8]),
        .I2(sel0[0]),
        .I3(\acc_b_reg[3]_0 [16]),
        .I4(sel0[1]),
        .I5(\acc_b_reg[3]_0 [0]),
        .O(data1[0]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \acc_a_reg[0]_i_27 
       (.I0(sel0[12]),
        .I1(sel0[13]),
        .I2(sel0[14]),
        .I3(sel0[15]),
        .O(\acc_a_reg[0]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \acc_a_reg[0]_i_28 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[6]),
        .I3(sel0[7]),
        .O(\acc_a_reg[0]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \acc_a_reg[0]_i_29 
       (.I0(sel0[28]),
        .I1(sel0[29]),
        .I2(sel0[30]),
        .I3(sel0[31]),
        .O(\acc_a_reg[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \acc_a_reg[0]_i_3 
       (.I0(\acc_b_reg[2]_0 [1]),
        .I1(\acc_b_reg[2]_0 [0]),
        .I2(\acc_b_reg[2]_0 [2]),
        .I3(Q[1]),
        .I4(\acc_a_reg[0]_i_14_n_0 ),
        .I5(\acc_b_reg[2]_1 ),
        .O(\acc_a_reg[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \acc_a_reg[0]_i_30 
       (.I0(sel0[20]),
        .I1(sel0[21]),
        .I2(sel0[22]),
        .I3(sel0[23]),
        .O(\acc_a_reg[0]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hFFD0)) 
    \acc_a_reg[0]_i_4 
       (.I0(s_main),
        .I1(s_acc_sel),
        .I2(\acc_a_reg[0]_i_3_n_0 ),
        .I3(rst),
        .O(RSTM));
  LUT4 #(
    .INIT(16'hFF80)) 
    \acc_a_reg[0]_i_5 
       (.I0(s_acc_sel),
        .I1(\acc_a_reg[0]_i_3_n_0 ),
        .I2(\acc_b_reg[3]_1 ),
        .I3(rst),
        .O(RSTP));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \acc_a_reg[0]_i_6 
       (.I0(i_mem0a_dout[7]),
        .I1(\acc_a_reg[0]_i_15_n_0 ),
        .I2(\acc_a_reg[0]_i_16_n_0 ),
        .I3(\acc_a_reg[0]_i_17_n_0 ),
        .I4(\acc_a_reg[0]_i_18_n_0 ),
        .I5(data1[7]),
        .O(dspb[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \acc_a_reg[0]_i_7 
       (.I0(i_mem0a_dout[6]),
        .I1(\acc_a_reg[0]_i_15_n_0 ),
        .I2(\acc_a_reg[0]_i_16_n_0 ),
        .I3(\acc_a_reg[0]_i_17_n_0 ),
        .I4(\acc_a_reg[0]_i_18_n_0 ),
        .I5(data1[6]),
        .O(dspb[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \acc_a_reg[0]_i_8 
       (.I0(i_mem0a_dout[5]),
        .I1(\acc_a_reg[0]_i_15_n_0 ),
        .I2(\acc_a_reg[0]_i_16_n_0 ),
        .I3(\acc_a_reg[0]_i_17_n_0 ),
        .I4(\acc_a_reg[0]_i_18_n_0 ),
        .I5(data1[5]),
        .O(dspb[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \acc_a_reg[0]_i_9 
       (.I0(i_mem0a_dout[4]),
        .I1(\acc_a_reg[0]_i_15_n_0 ),
        .I2(\acc_a_reg[0]_i_16_n_0 ),
        .I3(\acc_a_reg[0]_i_17_n_0 ),
        .I4(\acc_a_reg[0]_i_18_n_0 ),
        .I5(data1[4]),
        .O(dspb[4]));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    \acc_a_reg[1] 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,i_mem1a_dout[15:8]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_acc_a_reg[1]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dspb}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_acc_a_reg[1]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_acc_a_reg[1]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_acc_a_reg[1]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(CEA2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(\acc_a_reg[0]_i_2_n_0 ),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(\acc_a_reg[0]_i_3_n_0 ),
        .CEP(\acc_a_reg[0]_i_3_n_0 ),
        .CLK(i_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_acc_a_reg[1]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_acc_a_reg[1]_OVERFLOW_UNCONNECTED ),
        .P({\NLW_acc_a_reg[1]_P_UNCONNECTED [47:16],\acc_a_reg_n_90_[1] ,\acc_a_reg_n_91_[1] ,\acc_a_reg_n_92_[1] ,\acc_a_reg_n_93_[1] ,\acc_a_reg_n_94_[1] ,\acc_a_reg_n_95_[1] ,\acc_a_reg_n_96_[1] ,\acc_a_reg_n_97_[1] ,\acc_a_reg_n_98_[1] ,\acc_a_reg_n_99_[1] ,\acc_a_reg_n_100_[1] ,\acc_a_reg_n_101_[1] ,\acc_a_reg_n_102_[1] ,\acc_a_reg_n_103_[1] ,\acc_a_reg_n_104_[1] ,\acc_a_reg_n_105_[1] }),
        .PATTERNBDETECT(\NLW_acc_a_reg[1]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_acc_a_reg[1]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_acc_a_reg[1]_PCOUT_UNCONNECTED [47:0]),
        .RSTA(rst),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(RSTM),
        .RSTP(RSTP),
        .UNDERFLOW(\NLW_acc_a_reg[1]_UNDERFLOW_UNCONNECTED ));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    \acc_a_reg[2] 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,i_mem1a_dout[23:16]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_acc_a_reg[2]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dspb}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_acc_a_reg[2]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_acc_a_reg[2]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_acc_a_reg[2]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(CEA2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(\acc_a_reg[0]_i_2_n_0 ),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(\acc_a_reg[0]_i_3_n_0 ),
        .CEP(\acc_a_reg[0]_i_3_n_0 ),
        .CLK(i_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_acc_a_reg[2]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_acc_a_reg[2]_OVERFLOW_UNCONNECTED ),
        .P({\NLW_acc_a_reg[2]_P_UNCONNECTED [47:16],\acc_a_reg_n_90_[2] ,\acc_a_reg_n_91_[2] ,\acc_a_reg_n_92_[2] ,\acc_a_reg_n_93_[2] ,\acc_a_reg_n_94_[2] ,\acc_a_reg_n_95_[2] ,\acc_a_reg_n_96_[2] ,\acc_a_reg_n_97_[2] ,\acc_a_reg_n_98_[2] ,\acc_a_reg_n_99_[2] ,\acc_a_reg_n_100_[2] ,\acc_a_reg_n_101_[2] ,\acc_a_reg_n_102_[2] ,\acc_a_reg_n_103_[2] ,\acc_a_reg_n_104_[2] ,\acc_a_reg_n_105_[2] }),
        .PATTERNBDETECT(\NLW_acc_a_reg[2]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_acc_a_reg[2]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_acc_a_reg[2]_PCOUT_UNCONNECTED [47:0]),
        .RSTA(rst),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(RSTM),
        .RSTP(RSTP),
        .UNDERFLOW(\NLW_acc_a_reg[2]_UNDERFLOW_UNCONNECTED ));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    \acc_a_reg[3] 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,i_mem1a_dout[31:24]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_acc_a_reg[3]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dspb}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_acc_a_reg[3]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_acc_a_reg[3]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_acc_a_reg[3]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(CEA2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(\acc_a_reg[0]_i_2_n_0 ),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(\acc_a_reg[0]_i_3_n_0 ),
        .CEP(\acc_a_reg[0]_i_3_n_0 ),
        .CLK(i_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_acc_a_reg[3]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_acc_a_reg[3]_OVERFLOW_UNCONNECTED ),
        .P({\NLW_acc_a_reg[3]_P_UNCONNECTED [47:16],\acc_a_reg_n_90_[3] ,\acc_a_reg_n_91_[3] ,\acc_a_reg_n_92_[3] ,\acc_a_reg_n_93_[3] ,\acc_a_reg_n_94_[3] ,\acc_a_reg_n_95_[3] ,\acc_a_reg_n_96_[3] ,\acc_a_reg_n_97_[3] ,\acc_a_reg_n_98_[3] ,\acc_a_reg_n_99_[3] ,\acc_a_reg_n_100_[3] ,\acc_a_reg_n_101_[3] ,\acc_a_reg_n_102_[3] ,\acc_a_reg_n_103_[3] ,\acc_a_reg_n_104_[3] ,\acc_a_reg_n_105_[3] }),
        .PATTERNBDETECT(\NLW_acc_a_reg[3]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_acc_a_reg[3]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_acc_a_reg[3]_PCOUT_UNCONNECTED [47:0]),
        .RSTA(rst),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(RSTM),
        .RSTP(RSTP),
        .UNDERFLOW(\NLW_acc_a_reg[3]_UNDERFLOW_UNCONNECTED ));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    \acc_b_reg[0] 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,i_mem1a_dout[7:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_acc_b_reg[0]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dspb}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_acc_b_reg[0]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_acc_b_reg[0]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_acc_b_reg[0]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(CEA2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(\acc_a_reg[0]_i_2_n_0 ),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(\acc_a_reg[0]_i_3_n_0 ),
        .CEP(\acc_a_reg[0]_i_3_n_0 ),
        .CLK(i_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_acc_b_reg[0]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_acc_b_reg[0]_OVERFLOW_UNCONNECTED ),
        .P({\NLW_acc_b_reg[0]_P_UNCONNECTED [47:16],\acc_b_reg_n_90_[0] ,\acc_b_reg_n_91_[0] ,\acc_b_reg_n_92_[0] ,\acc_b_reg_n_93_[0] ,\acc_b_reg_n_94_[0] ,\acc_b_reg_n_95_[0] ,\acc_b_reg_n_96_[0] ,\acc_b_reg_n_97_[0] ,\acc_b_reg_n_98_[0] ,\acc_b_reg_n_99_[0] ,\acc_b_reg_n_100_[0] ,\acc_b_reg_n_101_[0] ,\acc_b_reg_n_102_[0] ,\acc_b_reg_n_103_[0] ,\acc_b_reg_n_104_[0] ,\acc_b_reg_n_105_[0] }),
        .PATTERNBDETECT(\NLW_acc_b_reg[0]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_acc_b_reg[0]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_acc_b_reg[0]_PCOUT_UNCONNECTED [47:0]),
        .RSTA(rst),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(\acc_b_reg[0]_i_1_n_0 ),
        .RSTP(\acc_b_reg[0]_i_2_n_0 ),
        .UNDERFLOW(\NLW_acc_b_reg[0]_UNDERFLOW_UNCONNECTED ));
  LUT4 #(
    .INIT(16'hFF70)) 
    \acc_b_reg[0]_i_1 
       (.I0(s_acc_sel),
        .I1(s_main),
        .I2(\acc_a_reg[0]_i_3_n_0 ),
        .I3(rst),
        .O(\acc_b_reg[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF40)) 
    \acc_b_reg[0]_i_2 
       (.I0(s_acc_sel),
        .I1(\acc_a_reg[0]_i_3_n_0 ),
        .I2(\acc_b_reg[3]_1 ),
        .I3(rst),
        .O(\acc_b_reg[0]_i_2_n_0 ));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    \acc_b_reg[1] 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,i_mem1a_dout[15:8]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_acc_b_reg[1]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dspb}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_acc_b_reg[1]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_acc_b_reg[1]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_acc_b_reg[1]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(CEA2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(\acc_a_reg[0]_i_2_n_0 ),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(\acc_a_reg[0]_i_3_n_0 ),
        .CEP(\acc_a_reg[0]_i_3_n_0 ),
        .CLK(i_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_acc_b_reg[1]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_acc_b_reg[1]_OVERFLOW_UNCONNECTED ),
        .P({\NLW_acc_b_reg[1]_P_UNCONNECTED [47:16],\acc_b_reg_n_90_[1] ,\acc_b_reg_n_91_[1] ,\acc_b_reg_n_92_[1] ,\acc_b_reg_n_93_[1] ,\acc_b_reg_n_94_[1] ,\acc_b_reg_n_95_[1] ,\acc_b_reg_n_96_[1] ,\acc_b_reg_n_97_[1] ,\acc_b_reg_n_98_[1] ,\acc_b_reg_n_99_[1] ,\acc_b_reg_n_100_[1] ,\acc_b_reg_n_101_[1] ,\acc_b_reg_n_102_[1] ,\acc_b_reg_n_103_[1] ,\acc_b_reg_n_104_[1] ,\acc_b_reg_n_105_[1] }),
        .PATTERNBDETECT(\NLW_acc_b_reg[1]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_acc_b_reg[1]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_acc_b_reg[1]_PCOUT_UNCONNECTED [47:0]),
        .RSTA(rst),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(\acc_b_reg[0]_i_1_n_0 ),
        .RSTP(\acc_b_reg[0]_i_2_n_0 ),
        .UNDERFLOW(\NLW_acc_b_reg[1]_UNDERFLOW_UNCONNECTED ));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    \acc_b_reg[2] 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,i_mem1a_dout[23:16]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_acc_b_reg[2]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dspb}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_acc_b_reg[2]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_acc_b_reg[2]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_acc_b_reg[2]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(CEA2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(\acc_a_reg[0]_i_2_n_0 ),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(\acc_a_reg[0]_i_3_n_0 ),
        .CEP(\acc_a_reg[0]_i_3_n_0 ),
        .CLK(i_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_acc_b_reg[2]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_acc_b_reg[2]_OVERFLOW_UNCONNECTED ),
        .P({\NLW_acc_b_reg[2]_P_UNCONNECTED [47:16],\acc_b_reg_n_90_[2] ,\acc_b_reg_n_91_[2] ,\acc_b_reg_n_92_[2] ,\acc_b_reg_n_93_[2] ,\acc_b_reg_n_94_[2] ,\acc_b_reg_n_95_[2] ,\acc_b_reg_n_96_[2] ,\acc_b_reg_n_97_[2] ,\acc_b_reg_n_98_[2] ,\acc_b_reg_n_99_[2] ,\acc_b_reg_n_100_[2] ,\acc_b_reg_n_101_[2] ,\acc_b_reg_n_102_[2] ,\acc_b_reg_n_103_[2] ,\acc_b_reg_n_104_[2] ,\acc_b_reg_n_105_[2] }),
        .PATTERNBDETECT(\NLW_acc_b_reg[2]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_acc_b_reg[2]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_acc_b_reg[2]_PCOUT_UNCONNECTED [47:0]),
        .RSTA(rst),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(\acc_b_reg[0]_i_1_n_0 ),
        .RSTP(\acc_b_reg[0]_i_2_n_0 ),
        .UNDERFLOW(\NLW_acc_b_reg[2]_UNDERFLOW_UNCONNECTED ));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    \acc_b_reg[3] 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,i_mem1a_dout[31:24]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_acc_b_reg[3]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dspb}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_acc_b_reg[3]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_acc_b_reg[3]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_acc_b_reg[3]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(CEA2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(\acc_a_reg[0]_i_2_n_0 ),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(\acc_a_reg[0]_i_3_n_0 ),
        .CEP(\acc_a_reg[0]_i_3_n_0 ),
        .CLK(i_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_acc_b_reg[3]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_acc_b_reg[3]_OVERFLOW_UNCONNECTED ),
        .P({\NLW_acc_b_reg[3]_P_UNCONNECTED [47:16],\acc_b_reg_n_90_[3] ,\acc_b_reg_n_91_[3] ,\acc_b_reg_n_92_[3] ,\acc_b_reg_n_93_[3] ,\acc_b_reg_n_94_[3] ,\acc_b_reg_n_95_[3] ,\acc_b_reg_n_96_[3] ,\acc_b_reg_n_97_[3] ,\acc_b_reg_n_98_[3] ,\acc_b_reg_n_99_[3] ,\acc_b_reg_n_100_[3] ,\acc_b_reg_n_101_[3] ,\acc_b_reg_n_102_[3] ,\acc_b_reg_n_103_[3] ,\acc_b_reg_n_104_[3] ,\acc_b_reg_n_105_[3] }),
        .PATTERNBDETECT(\NLW_acc_b_reg[3]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_acc_b_reg[3]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_acc_b_reg[3]_PCOUT_UNCONNECTED [47:0]),
        .RSTA(rst),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rst),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(\acc_b_reg[0]_i_1_n_0 ),
        .RSTP(\acc_b_reg[0]_i_2_n_0 ),
        .UNDERFLOW(\NLW_acc_b_reg[3]_UNDERFLOW_UNCONNECTED ));
  LUT6 #(
    .INIT(64'h7FFF80007FFF0000)) 
    \s_acc[0]_inferred_i_1 
       (.I0(\s_acc[0]_inferred_i_6_n_4 ),
        .I1(\s_acc[0]_inferred_i_6_n_6 ),
        .I2(\s_acc[0]_inferred_i_6_n_7 ),
        .I3(\s_acc[0]_inferred_i_6_n_5 ),
        .I4(\s_acc[0]_inferred_i_7_n_7 ),
        .I5(\s_acc[0]_inferred_i_7_n_6 ),
        .O(in0[4]));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[0]_inferred_i_10 
       (.I0(\acc_a_reg_n_104_[0] ),
        .I1(\s_acc[0]_inferred_i_15_n_6 ),
        .O(\s_acc[0]_inferred_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[0]_inferred_i_11 
       (.I0(\acc_a_reg_n_105_[0] ),
        .I1(\s_acc[0]_inferred_i_15_n_7 ),
        .O(\s_acc[0]_inferred_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[0]_inferred_i_12 
       (.I0(\acc_a_reg_n_100_[0] ),
        .I1(\s_acc[0]_inferred_i_14_n_5 ),
        .O(\s_acc[0]_inferred_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[0]_inferred_i_13 
       (.I0(\acc_a_reg_n_101_[0] ),
        .I1(\s_acc[0]_inferred_i_14_n_6 ),
        .O(\s_acc[0]_inferred_i_13_n_0 ));
  CARRY4 \s_acc[0]_inferred_i_14 
       (.CI(1'b0),
        .CO({\NLW_s_acc[0]_inferred_i_14_CO_UNCONNECTED [3:2],\s_acc[0]_inferred_i_14_n_2 ,\s_acc[0]_inferred_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\s_acc[0]_inferred_i_16_n_0 ,1'b0}),
        .O({\NLW_s_acc[0]_inferred_i_14_O_UNCONNECTED [3],\s_acc[0]_inferred_i_14_n_5 ,\s_acc[0]_inferred_i_14_n_6 ,\s_acc[0]_inferred_i_14_n_7 }),
        .S({1'b0,\s_acc[0]_inferred_i_17_n_0 ,\s_acc[0]_inferred_i_18_n_0 ,\s_acc[0]_inferred_i_19_n_0 }));
  CARRY4 \s_acc[0]_inferred_i_15 
       (.CI(1'b0),
        .CO({\s_acc[0]_inferred_i_15_n_0 ,\s_acc[0]_inferred_i_15_n_1 ,\s_acc[0]_inferred_i_15_n_2 ,\s_acc[0]_inferred_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_acc[0]_inferred_i_20_n_4 ,1'b0,1'b0,1'b1}),
        .O({\s_acc[0]_inferred_i_15_n_4 ,\s_acc[0]_inferred_i_15_n_5 ,\s_acc[0]_inferred_i_15_n_6 ,\s_acc[0]_inferred_i_15_n_7 }),
        .S({\s_acc[0]_inferred_i_21_n_0 ,\s_acc[0]_inferred_i_22_n_0 ,\s_acc[0]_inferred_i_23_n_0 ,\s_acc[0]_inferred_i_20_n_4 }));
  LUT2 #(
    .INIT(4'hB)) 
    \s_acc[0]_inferred_i_16 
       (.I0(\s_acc[0]_inferred_i_15_n_4 ),
        .I1(\s_acc[0]_inferred_i_20_n_4 ),
        .O(\s_acc[0]_inferred_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \s_acc[0]_inferred_i_17 
       (.I0(\s_acc[0]_inferred_i_24_n_6 ),
        .I1(\s_acc[0]_inferred_i_25_n_6 ),
        .I2(\s_acc[0]_inferred_i_20_n_4 ),
        .I3(\s_acc[0]_inferred_i_24_n_7 ),
        .I4(\s_acc[0]_inferred_i_25_n_7 ),
        .O(\s_acc[0]_inferred_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \s_acc[0]_inferred_i_18 
       (.I0(\s_acc[0]_inferred_i_20_n_4 ),
        .I1(\s_acc[0]_inferred_i_15_n_4 ),
        .I2(\s_acc[0]_inferred_i_25_n_7 ),
        .I3(\s_acc[0]_inferred_i_24_n_7 ),
        .O(\s_acc[0]_inferred_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[0]_inferred_i_19 
       (.I0(\s_acc[0]_inferred_i_20_n_4 ),
        .I1(\s_acc[0]_inferred_i_15_n_4 ),
        .O(\s_acc[0]_inferred_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h6AAA6AAA2AAAAAAA)) 
    \s_acc[0]_inferred_i_2 
       (.I0(\s_acc[0]_inferred_i_6_n_4 ),
        .I1(\s_acc[0]_inferred_i_6_n_6 ),
        .I2(\s_acc[0]_inferred_i_6_n_7 ),
        .I3(\s_acc[0]_inferred_i_6_n_5 ),
        .I4(\s_acc[0]_inferred_i_7_n_7 ),
        .I5(\s_acc[0]_inferred_i_7_n_6 ),
        .O(in0[3]));
  CARRY4 \s_acc[0]_inferred_i_20 
       (.CI(\s_acc[0]_inferred_i_26_n_0 ),
        .CO({\s_acc[0]_inferred_i_20_n_0 ,\s_acc[0]_inferred_i_20_n_1 ,\s_acc[0]_inferred_i_20_n_2 ,\s_acc[0]_inferred_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_acc[0]_inferred_i_27_n_0 ,\s_acc[0]_inferred_i_28_n_0 ,\s_acc[0]_inferred_i_29_n_0 ,\s_acc[0]_inferred_i_30_n_0 }),
        .O({\s_acc[0]_inferred_i_20_n_4 ,\NLW_s_acc[0]_inferred_i_20_O_UNCONNECTED [2:0]}),
        .S({\s_acc[0]_inferred_i_31_n_0 ,\s_acc[0]_inferred_i_32_n_0 ,\s_acc[0]_inferred_i_33_n_0 ,\s_acc[0]_inferred_i_34_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[0]_inferred_i_21 
       (.I0(\s_acc[0]_inferred_i_20_n_4 ),
        .I1(\s_acc[0]_inferred_i_24_n_5 ),
        .O(\s_acc[0]_inferred_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_acc[0]_inferred_i_22 
       (.I0(\s_acc[0]_inferred_i_24_n_6 ),
        .O(\s_acc[0]_inferred_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_acc[0]_inferred_i_23 
       (.I0(\s_acc[0]_inferred_i_24_n_7 ),
        .O(\s_acc[0]_inferred_i_23_n_0 ));
  CARRY4 \s_acc[0]_inferred_i_24 
       (.CI(\s_acc[0]_inferred_i_20_n_0 ),
        .CO({\s_acc[0]_inferred_i_24_n_0 ,\s_acc[0]_inferred_i_24_n_1 ,\s_acc[0]_inferred_i_24_n_2 ,\s_acc[0]_inferred_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_acc[0]_inferred_i_35_n_0 ,\s_acc[0]_inferred_i_36_n_0 ,\s_acc[0]_inferred_i_37_n_0 ,\s_acc[0]_inferred_i_38_n_0 }),
        .O({\s_acc[0]_inferred_i_24_n_4 ,\s_acc[0]_inferred_i_24_n_5 ,\s_acc[0]_inferred_i_24_n_6 ,\s_acc[0]_inferred_i_24_n_7 }),
        .S({\s_acc[0]_inferred_i_39_n_0 ,\s_acc[0]_inferred_i_40_n_0 ,\s_acc[0]_inferred_i_41_n_0 ,\s_acc[0]_inferred_i_42_n_0 }));
  CARRY4 \s_acc[0]_inferred_i_25 
       (.CI(\s_acc[0]_inferred_i_15_n_0 ),
        .CO({\NLW_s_acc[0]_inferred_i_25_CO_UNCONNECTED [3:1],\s_acc[0]_inferred_i_25_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\s_acc[0]_inferred_i_24_n_7 }),
        .O({\NLW_s_acc[0]_inferred_i_25_O_UNCONNECTED [3:2],\s_acc[0]_inferred_i_25_n_6 ,\s_acc[0]_inferred_i_25_n_7 }),
        .S({1'b0,1'b0,\s_acc[0]_inferred_i_43_n_0 ,\s_acc[0]_inferred_i_44_n_0 }));
  CARRY4 \s_acc[0]_inferred_i_26 
       (.CI(\s_acc[0]_inferred_i_45_n_0 ),
        .CO({\s_acc[0]_inferred_i_26_n_0 ,\s_acc[0]_inferred_i_26_n_1 ,\s_acc[0]_inferred_i_26_n_2 ,\s_acc[0]_inferred_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_acc[0]_inferred_i_46_n_0 ,\acc_a_reg_n_95_[0] ,\acc_a_reg_n_96_[0] ,\acc_a_reg_n_97_[0] }),
        .O(\NLW_s_acc[0]_inferred_i_26_O_UNCONNECTED [3:0]),
        .S({\s_acc[0]_inferred_i_47_n_0 ,\s_acc[0]_inferred_i_48_n_0 ,\s_acc[0]_inferred_i_49_n_0 ,\s_acc[0]_inferred_i_50_n_0 }));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[0]_inferred_i_27 
       (.I0(\acc_a_reg_n_101_[0] ),
        .I1(\acc_a_reg_n_96_[0] ),
        .I2(\acc_a_reg_n_91_[0] ),
        .O(\s_acc[0]_inferred_i_27_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[0]_inferred_i_28 
       (.I0(\acc_a_reg_n_102_[0] ),
        .I1(\acc_a_reg_n_97_[0] ),
        .I2(\acc_a_reg_n_92_[0] ),
        .O(\s_acc[0]_inferred_i_28_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[0]_inferred_i_29 
       (.I0(\acc_a_reg_n_103_[0] ),
        .I1(\acc_a_reg_n_98_[0] ),
        .I2(\acc_a_reg_n_93_[0] ),
        .O(\s_acc[0]_inferred_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h3FC03FC07F00FF00)) 
    \s_acc[0]_inferred_i_3 
       (.I0(\s_acc[0]_inferred_i_6_n_4 ),
        .I1(\s_acc[0]_inferred_i_6_n_6 ),
        .I2(\s_acc[0]_inferred_i_6_n_7 ),
        .I3(\s_acc[0]_inferred_i_6_n_5 ),
        .I4(\s_acc[0]_inferred_i_7_n_7 ),
        .I5(\s_acc[0]_inferred_i_7_n_6 ),
        .O(in0[2]));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[0]_inferred_i_30 
       (.I0(\acc_a_reg_n_104_[0] ),
        .I1(\acc_a_reg_n_99_[0] ),
        .I2(\acc_a_reg_n_94_[0] ),
        .O(\s_acc[0]_inferred_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \s_acc[0]_inferred_i_31 
       (.I0(\s_acc[0]_inferred_i_27_n_0 ),
        .I1(\acc_a_reg_n_95_[0] ),
        .I2(\acc_a_reg_n_100_[0] ),
        .I3(\acc_a_reg_n_90_[0] ),
        .O(\s_acc[0]_inferred_i_31_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \s_acc[0]_inferred_i_32 
       (.I0(\acc_a_reg_n_101_[0] ),
        .I1(\acc_a_reg_n_96_[0] ),
        .I2(\acc_a_reg_n_91_[0] ),
        .I3(\s_acc[0]_inferred_i_28_n_0 ),
        .O(\s_acc[0]_inferred_i_32_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \s_acc[0]_inferred_i_33 
       (.I0(\acc_a_reg_n_102_[0] ),
        .I1(\acc_a_reg_n_97_[0] ),
        .I2(\acc_a_reg_n_92_[0] ),
        .I3(\s_acc[0]_inferred_i_29_n_0 ),
        .O(\s_acc[0]_inferred_i_33_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \s_acc[0]_inferred_i_34 
       (.I0(\acc_a_reg_n_103_[0] ),
        .I1(\acc_a_reg_n_98_[0] ),
        .I2(\acc_a_reg_n_93_[0] ),
        .I3(\s_acc[0]_inferred_i_30_n_0 ),
        .O(\s_acc[0]_inferred_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_acc[0]_inferred_i_35 
       (.I0(\acc_a_reg_n_92_[0] ),
        .I1(\acc_a_reg_n_97_[0] ),
        .O(\s_acc[0]_inferred_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_acc[0]_inferred_i_36 
       (.I0(\acc_a_reg_n_93_[0] ),
        .I1(\acc_a_reg_n_98_[0] ),
        .O(\s_acc[0]_inferred_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_acc[0]_inferred_i_37 
       (.I0(\acc_a_reg_n_94_[0] ),
        .I1(\acc_a_reg_n_99_[0] ),
        .O(\s_acc[0]_inferred_i_37_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[0]_inferred_i_38 
       (.I0(\acc_a_reg_n_100_[0] ),
        .I1(\acc_a_reg_n_95_[0] ),
        .I2(\acc_a_reg_n_90_[0] ),
        .O(\s_acc[0]_inferred_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \s_acc[0]_inferred_i_39 
       (.I0(\acc_a_reg_n_92_[0] ),
        .I1(\acc_a_reg_n_97_[0] ),
        .I2(\acc_a_reg_n_96_[0] ),
        .I3(\acc_a_reg_n_91_[0] ),
        .O(\s_acc[0]_inferred_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C3C3C4CCCCCCC)) 
    \s_acc[0]_inferred_i_4 
       (.I0(\s_acc[0]_inferred_i_6_n_4 ),
        .I1(\s_acc[0]_inferred_i_6_n_6 ),
        .I2(\s_acc[0]_inferred_i_6_n_7 ),
        .I3(\s_acc[0]_inferred_i_6_n_5 ),
        .I4(\s_acc[0]_inferred_i_7_n_7 ),
        .I5(\s_acc[0]_inferred_i_7_n_6 ),
        .O(in0[1]));
  LUT4 #(
    .INIT(16'h8778)) 
    \s_acc[0]_inferred_i_40 
       (.I0(\acc_a_reg_n_93_[0] ),
        .I1(\acc_a_reg_n_98_[0] ),
        .I2(\acc_a_reg_n_97_[0] ),
        .I3(\acc_a_reg_n_92_[0] ),
        .O(\s_acc[0]_inferred_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \s_acc[0]_inferred_i_41 
       (.I0(\acc_a_reg_n_94_[0] ),
        .I1(\acc_a_reg_n_99_[0] ),
        .I2(\acc_a_reg_n_98_[0] ),
        .I3(\acc_a_reg_n_93_[0] ),
        .O(\s_acc[0]_inferred_i_41_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \s_acc[0]_inferred_i_42 
       (.I0(\acc_a_reg_n_90_[0] ),
        .I1(\acc_a_reg_n_95_[0] ),
        .I2(\acc_a_reg_n_100_[0] ),
        .I3(\acc_a_reg_n_99_[0] ),
        .I4(\acc_a_reg_n_94_[0] ),
        .O(\s_acc[0]_inferred_i_42_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[0]_inferred_i_43 
       (.I0(\s_acc[0]_inferred_i_24_n_6 ),
        .I1(\s_acc[0]_inferred_i_51_n_7 ),
        .O(\s_acc[0]_inferred_i_43_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[0]_inferred_i_44 
       (.I0(\s_acc[0]_inferred_i_24_n_7 ),
        .I1(\s_acc[0]_inferred_i_24_n_4 ),
        .O(\s_acc[0]_inferred_i_44_n_0 ));
  CARRY4 \s_acc[0]_inferred_i_45 
       (.CI(1'b0),
        .CO({\s_acc[0]_inferred_i_45_n_0 ,\s_acc[0]_inferred_i_45_n_1 ,\s_acc[0]_inferred_i_45_n_2 ,\s_acc[0]_inferred_i_45_n_3 }),
        .CYINIT(1'b0),
        .DI({\acc_a_reg_n_98_[0] ,\acc_a_reg_n_99_[0] ,\acc_a_reg_n_100_[0] ,1'b0}),
        .O(\NLW_s_acc[0]_inferred_i_45_O_UNCONNECTED [3:0]),
        .S({\s_acc[0]_inferred_i_52_n_0 ,\s_acc[0]_inferred_i_53_n_0 ,\s_acc[0]_inferred_i_54_n_0 ,\acc_a_reg_n_101_[0] }));
  LUT3 #(
    .INIT(8'h96)) 
    \s_acc[0]_inferred_i_46 
       (.I0(\acc_a_reg_n_94_[0] ),
        .I1(\acc_a_reg_n_104_[0] ),
        .I2(\acc_a_reg_n_99_[0] ),
        .O(\s_acc[0]_inferred_i_46_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \s_acc[0]_inferred_i_47 
       (.I0(\acc_a_reg_n_104_[0] ),
        .I1(\acc_a_reg_n_99_[0] ),
        .I2(\acc_a_reg_n_94_[0] ),
        .I3(\acc_a_reg_n_100_[0] ),
        .I4(\acc_a_reg_n_105_[0] ),
        .O(\s_acc[0]_inferred_i_47_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \s_acc[0]_inferred_i_48 
       (.I0(\acc_a_reg_n_105_[0] ),
        .I1(\acc_a_reg_n_100_[0] ),
        .I2(\acc_a_reg_n_95_[0] ),
        .O(\s_acc[0]_inferred_i_48_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[0]_inferred_i_49 
       (.I0(\acc_a_reg_n_96_[0] ),
        .I1(\acc_a_reg_n_101_[0] ),
        .O(\s_acc[0]_inferred_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h15555555AAAAAAAA)) 
    \s_acc[0]_inferred_i_5 
       (.I0(\s_acc[0]_inferred_i_7_n_6 ),
        .I1(\s_acc[0]_inferred_i_7_n_7 ),
        .I2(\s_acc[0]_inferred_i_6_n_5 ),
        .I3(\s_acc[0]_inferred_i_6_n_6 ),
        .I4(\s_acc[0]_inferred_i_6_n_4 ),
        .I5(\s_acc[0]_inferred_i_6_n_7 ),
        .O(in0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[0]_inferred_i_50 
       (.I0(\acc_a_reg_n_97_[0] ),
        .I1(\acc_a_reg_n_102_[0] ),
        .O(\s_acc[0]_inferred_i_50_n_0 ));
  CARRY4 \s_acc[0]_inferred_i_51 
       (.CI(\s_acc[0]_inferred_i_24_n_0 ),
        .CO(\NLW_s_acc[0]_inferred_i_51_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_s_acc[0]_inferred_i_51_O_UNCONNECTED [3:1],\s_acc[0]_inferred_i_51_n_7 }),
        .S({1'b0,1'b0,1'b0,\s_acc[0]_inferred_i_55_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[0]_inferred_i_52 
       (.I0(\acc_a_reg_n_98_[0] ),
        .I1(\acc_a_reg_n_103_[0] ),
        .O(\s_acc[0]_inferred_i_52_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[0]_inferred_i_53 
       (.I0(\acc_a_reg_n_99_[0] ),
        .I1(\acc_a_reg_n_104_[0] ),
        .O(\s_acc[0]_inferred_i_53_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[0]_inferred_i_54 
       (.I0(\acc_a_reg_n_100_[0] ),
        .I1(\acc_a_reg_n_105_[0] ),
        .O(\s_acc[0]_inferred_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \s_acc[0]_inferred_i_55 
       (.I0(\acc_a_reg_n_91_[0] ),
        .I1(\acc_a_reg_n_96_[0] ),
        .I2(\acc_a_reg_n_95_[0] ),
        .I3(\acc_a_reg_n_90_[0] ),
        .O(\s_acc[0]_inferred_i_55_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_acc[0]_inferred_i_6 
       (.CI(1'b0),
        .CO({\s_acc[0]_inferred_i_6_n_0 ,\s_acc[0]_inferred_i_6_n_1 ,\s_acc[0]_inferred_i_6_n_2 ,\s_acc[0]_inferred_i_6_n_3 }),
        .CYINIT(1'b1),
        .DI({\acc_a_reg_n_102_[0] ,\acc_a_reg_n_103_[0] ,\acc_a_reg_n_104_[0] ,\acc_a_reg_n_105_[0] }),
        .O({\s_acc[0]_inferred_i_6_n_4 ,\s_acc[0]_inferred_i_6_n_5 ,\s_acc[0]_inferred_i_6_n_6 ,\s_acc[0]_inferred_i_6_n_7 }),
        .S({\s_acc[0]_inferred_i_8_n_0 ,\s_acc[0]_inferred_i_9_n_0 ,\s_acc[0]_inferred_i_10_n_0 ,\s_acc[0]_inferred_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_acc[0]_inferred_i_7 
       (.CI(\s_acc[0]_inferred_i_6_n_0 ),
        .CO({\NLW_s_acc[0]_inferred_i_7_CO_UNCONNECTED [3:1],\s_acc[0]_inferred_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\acc_a_reg_n_101_[0] }),
        .O({\NLW_s_acc[0]_inferred_i_7_O_UNCONNECTED [3:2],\s_acc[0]_inferred_i_7_n_6 ,\s_acc[0]_inferred_i_7_n_7 }),
        .S({1'b0,1'b0,\s_acc[0]_inferred_i_12_n_0 ,\s_acc[0]_inferred_i_13_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[0]_inferred_i_8 
       (.I0(\acc_a_reg_n_102_[0] ),
        .I1(\s_acc[0]_inferred_i_14_n_7 ),
        .O(\s_acc[0]_inferred_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[0]_inferred_i_9 
       (.I0(\acc_a_reg_n_103_[0] ),
        .I1(\s_acc[0]_inferred_i_15_n_5 ),
        .O(\s_acc[0]_inferred_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF80007FFF0000)) 
    \s_acc[1]_inferred_i_1 
       (.I0(\s_acc[1]_inferred_i_6_n_4 ),
        .I1(\s_acc[1]_inferred_i_6_n_6 ),
        .I2(\s_acc[1]_inferred_i_6_n_7 ),
        .I3(\s_acc[1]_inferred_i_6_n_5 ),
        .I4(\s_acc[1]_inferred_i_7_n_7 ),
        .I5(\s_acc[1]_inferred_i_7_n_6 ),
        .O(\s_acc[1] [4]));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[1]_inferred_i_10 
       (.I0(\acc_a_reg_n_104_[1] ),
        .I1(\s_acc[1]_inferred_i_15_n_6 ),
        .O(\s_acc[1]_inferred_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[1]_inferred_i_11 
       (.I0(\acc_a_reg_n_105_[1] ),
        .I1(\s_acc[1]_inferred_i_15_n_7 ),
        .O(\s_acc[1]_inferred_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[1]_inferred_i_12 
       (.I0(\acc_a_reg_n_100_[1] ),
        .I1(\s_acc[1]_inferred_i_14_n_5 ),
        .O(\s_acc[1]_inferred_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[1]_inferred_i_13 
       (.I0(\acc_a_reg_n_101_[1] ),
        .I1(\s_acc[1]_inferred_i_14_n_6 ),
        .O(\s_acc[1]_inferred_i_13_n_0 ));
  CARRY4 \s_acc[1]_inferred_i_14 
       (.CI(1'b0),
        .CO({\NLW_s_acc[1]_inferred_i_14_CO_UNCONNECTED [3:2],\s_acc[1]_inferred_i_14_n_2 ,\s_acc[1]_inferred_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\s_acc[1]_inferred_i_16_n_0 ,1'b0}),
        .O({\NLW_s_acc[1]_inferred_i_14_O_UNCONNECTED [3],\s_acc[1]_inferred_i_14_n_5 ,\s_acc[1]_inferred_i_14_n_6 ,\s_acc[1]_inferred_i_14_n_7 }),
        .S({1'b0,\s_acc[1]_inferred_i_17_n_0 ,\s_acc[1]_inferred_i_18_n_0 ,\s_acc[1]_inferred_i_19_n_0 }));
  CARRY4 \s_acc[1]_inferred_i_15 
       (.CI(1'b0),
        .CO({\s_acc[1]_inferred_i_15_n_0 ,\s_acc[1]_inferred_i_15_n_1 ,\s_acc[1]_inferred_i_15_n_2 ,\s_acc[1]_inferred_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_acc[1]_inferred_i_20_n_4 ,1'b0,1'b0,1'b1}),
        .O({\s_acc[1]_inferred_i_15_n_4 ,\s_acc[1]_inferred_i_15_n_5 ,\s_acc[1]_inferred_i_15_n_6 ,\s_acc[1]_inferred_i_15_n_7 }),
        .S({\s_acc[1]_inferred_i_21_n_0 ,\s_acc[1]_inferred_i_22_n_0 ,\s_acc[1]_inferred_i_23_n_0 ,\s_acc[1]_inferred_i_20_n_4 }));
  LUT2 #(
    .INIT(4'hB)) 
    \s_acc[1]_inferred_i_16 
       (.I0(\s_acc[1]_inferred_i_15_n_4 ),
        .I1(\s_acc[1]_inferred_i_20_n_4 ),
        .O(\s_acc[1]_inferred_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \s_acc[1]_inferred_i_17 
       (.I0(\s_acc[1]_inferred_i_24_n_6 ),
        .I1(\s_acc[1]_inferred_i_25_n_6 ),
        .I2(\s_acc[1]_inferred_i_20_n_4 ),
        .I3(\s_acc[1]_inferred_i_24_n_7 ),
        .I4(\s_acc[1]_inferred_i_25_n_7 ),
        .O(\s_acc[1]_inferred_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \s_acc[1]_inferred_i_18 
       (.I0(\s_acc[1]_inferred_i_20_n_4 ),
        .I1(\s_acc[1]_inferred_i_15_n_4 ),
        .I2(\s_acc[1]_inferred_i_25_n_7 ),
        .I3(\s_acc[1]_inferred_i_24_n_7 ),
        .O(\s_acc[1]_inferred_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[1]_inferred_i_19 
       (.I0(\s_acc[1]_inferred_i_20_n_4 ),
        .I1(\s_acc[1]_inferred_i_15_n_4 ),
        .O(\s_acc[1]_inferred_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h6AAA6AAA2AAAAAAA)) 
    \s_acc[1]_inferred_i_2 
       (.I0(\s_acc[1]_inferred_i_6_n_4 ),
        .I1(\s_acc[1]_inferred_i_6_n_6 ),
        .I2(\s_acc[1]_inferred_i_6_n_7 ),
        .I3(\s_acc[1]_inferred_i_6_n_5 ),
        .I4(\s_acc[1]_inferred_i_7_n_7 ),
        .I5(\s_acc[1]_inferred_i_7_n_6 ),
        .O(\s_acc[1] [3]));
  CARRY4 \s_acc[1]_inferred_i_20 
       (.CI(\s_acc[1]_inferred_i_26_n_0 ),
        .CO({\s_acc[1]_inferred_i_20_n_0 ,\s_acc[1]_inferred_i_20_n_1 ,\s_acc[1]_inferred_i_20_n_2 ,\s_acc[1]_inferred_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_acc[1]_inferred_i_27_n_0 ,\s_acc[1]_inferred_i_28_n_0 ,\s_acc[1]_inferred_i_29_n_0 ,\s_acc[1]_inferred_i_30_n_0 }),
        .O({\s_acc[1]_inferred_i_20_n_4 ,\NLW_s_acc[1]_inferred_i_20_O_UNCONNECTED [2:0]}),
        .S({\s_acc[1]_inferred_i_31_n_0 ,\s_acc[1]_inferred_i_32_n_0 ,\s_acc[1]_inferred_i_33_n_0 ,\s_acc[1]_inferred_i_34_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[1]_inferred_i_21 
       (.I0(\s_acc[1]_inferred_i_20_n_4 ),
        .I1(\s_acc[1]_inferred_i_24_n_5 ),
        .O(\s_acc[1]_inferred_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_acc[1]_inferred_i_22 
       (.I0(\s_acc[1]_inferred_i_24_n_6 ),
        .O(\s_acc[1]_inferred_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_acc[1]_inferred_i_23 
       (.I0(\s_acc[1]_inferred_i_24_n_7 ),
        .O(\s_acc[1]_inferred_i_23_n_0 ));
  CARRY4 \s_acc[1]_inferred_i_24 
       (.CI(\s_acc[1]_inferred_i_20_n_0 ),
        .CO({\s_acc[1]_inferred_i_24_n_0 ,\s_acc[1]_inferred_i_24_n_1 ,\s_acc[1]_inferred_i_24_n_2 ,\s_acc[1]_inferred_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_acc[1]_inferred_i_35_n_0 ,\s_acc[1]_inferred_i_36_n_0 ,\s_acc[1]_inferred_i_37_n_0 ,\s_acc[1]_inferred_i_38_n_0 }),
        .O({\s_acc[1]_inferred_i_24_n_4 ,\s_acc[1]_inferred_i_24_n_5 ,\s_acc[1]_inferred_i_24_n_6 ,\s_acc[1]_inferred_i_24_n_7 }),
        .S({\s_acc[1]_inferred_i_39_n_0 ,\s_acc[1]_inferred_i_40_n_0 ,\s_acc[1]_inferred_i_41_n_0 ,\s_acc[1]_inferred_i_42_n_0 }));
  CARRY4 \s_acc[1]_inferred_i_25 
       (.CI(\s_acc[1]_inferred_i_15_n_0 ),
        .CO({\NLW_s_acc[1]_inferred_i_25_CO_UNCONNECTED [3:1],\s_acc[1]_inferred_i_25_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\s_acc[1]_inferred_i_24_n_7 }),
        .O({\NLW_s_acc[1]_inferred_i_25_O_UNCONNECTED [3:2],\s_acc[1]_inferred_i_25_n_6 ,\s_acc[1]_inferred_i_25_n_7 }),
        .S({1'b0,1'b0,\s_acc[1]_inferred_i_43_n_0 ,\s_acc[1]_inferred_i_44_n_0 }));
  CARRY4 \s_acc[1]_inferred_i_26 
       (.CI(\s_acc[1]_inferred_i_45_n_0 ),
        .CO({\s_acc[1]_inferred_i_26_n_0 ,\s_acc[1]_inferred_i_26_n_1 ,\s_acc[1]_inferred_i_26_n_2 ,\s_acc[1]_inferred_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_acc[1]_inferred_i_46_n_0 ,\acc_a_reg_n_95_[1] ,\acc_a_reg_n_96_[1] ,\acc_a_reg_n_97_[1] }),
        .O(\NLW_s_acc[1]_inferred_i_26_O_UNCONNECTED [3:0]),
        .S({\s_acc[1]_inferred_i_47_n_0 ,\s_acc[1]_inferred_i_48_n_0 ,\s_acc[1]_inferred_i_49_n_0 ,\s_acc[1]_inferred_i_50_n_0 }));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[1]_inferred_i_27 
       (.I0(\acc_a_reg_n_101_[1] ),
        .I1(\acc_a_reg_n_96_[1] ),
        .I2(\acc_a_reg_n_91_[1] ),
        .O(\s_acc[1]_inferred_i_27_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[1]_inferred_i_28 
       (.I0(\acc_a_reg_n_102_[1] ),
        .I1(\acc_a_reg_n_97_[1] ),
        .I2(\acc_a_reg_n_92_[1] ),
        .O(\s_acc[1]_inferred_i_28_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[1]_inferred_i_29 
       (.I0(\acc_a_reg_n_103_[1] ),
        .I1(\acc_a_reg_n_98_[1] ),
        .I2(\acc_a_reg_n_93_[1] ),
        .O(\s_acc[1]_inferred_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h3FC03FC07F00FF00)) 
    \s_acc[1]_inferred_i_3 
       (.I0(\s_acc[1]_inferred_i_6_n_4 ),
        .I1(\s_acc[1]_inferred_i_6_n_6 ),
        .I2(\s_acc[1]_inferred_i_6_n_7 ),
        .I3(\s_acc[1]_inferred_i_6_n_5 ),
        .I4(\s_acc[1]_inferred_i_7_n_7 ),
        .I5(\s_acc[1]_inferred_i_7_n_6 ),
        .O(\s_acc[1] [2]));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[1]_inferred_i_30 
       (.I0(\acc_a_reg_n_104_[1] ),
        .I1(\acc_a_reg_n_99_[1] ),
        .I2(\acc_a_reg_n_94_[1] ),
        .O(\s_acc[1]_inferred_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \s_acc[1]_inferred_i_31 
       (.I0(\s_acc[1]_inferred_i_27_n_0 ),
        .I1(\acc_a_reg_n_95_[1] ),
        .I2(\acc_a_reg_n_100_[1] ),
        .I3(\acc_a_reg_n_90_[1] ),
        .O(\s_acc[1]_inferred_i_31_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \s_acc[1]_inferred_i_32 
       (.I0(\acc_a_reg_n_101_[1] ),
        .I1(\acc_a_reg_n_96_[1] ),
        .I2(\acc_a_reg_n_91_[1] ),
        .I3(\s_acc[1]_inferred_i_28_n_0 ),
        .O(\s_acc[1]_inferred_i_32_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \s_acc[1]_inferred_i_33 
       (.I0(\acc_a_reg_n_102_[1] ),
        .I1(\acc_a_reg_n_97_[1] ),
        .I2(\acc_a_reg_n_92_[1] ),
        .I3(\s_acc[1]_inferred_i_29_n_0 ),
        .O(\s_acc[1]_inferred_i_33_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \s_acc[1]_inferred_i_34 
       (.I0(\acc_a_reg_n_103_[1] ),
        .I1(\acc_a_reg_n_98_[1] ),
        .I2(\acc_a_reg_n_93_[1] ),
        .I3(\s_acc[1]_inferred_i_30_n_0 ),
        .O(\s_acc[1]_inferred_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_acc[1]_inferred_i_35 
       (.I0(\acc_a_reg_n_92_[1] ),
        .I1(\acc_a_reg_n_97_[1] ),
        .O(\s_acc[1]_inferred_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_acc[1]_inferred_i_36 
       (.I0(\acc_a_reg_n_93_[1] ),
        .I1(\acc_a_reg_n_98_[1] ),
        .O(\s_acc[1]_inferred_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_acc[1]_inferred_i_37 
       (.I0(\acc_a_reg_n_94_[1] ),
        .I1(\acc_a_reg_n_99_[1] ),
        .O(\s_acc[1]_inferred_i_37_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[1]_inferred_i_38 
       (.I0(\acc_a_reg_n_100_[1] ),
        .I1(\acc_a_reg_n_95_[1] ),
        .I2(\acc_a_reg_n_90_[1] ),
        .O(\s_acc[1]_inferred_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \s_acc[1]_inferred_i_39 
       (.I0(\acc_a_reg_n_92_[1] ),
        .I1(\acc_a_reg_n_97_[1] ),
        .I2(\acc_a_reg_n_96_[1] ),
        .I3(\acc_a_reg_n_91_[1] ),
        .O(\s_acc[1]_inferred_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C3C3C4CCCCCCC)) 
    \s_acc[1]_inferred_i_4 
       (.I0(\s_acc[1]_inferred_i_6_n_4 ),
        .I1(\s_acc[1]_inferred_i_6_n_6 ),
        .I2(\s_acc[1]_inferred_i_6_n_7 ),
        .I3(\s_acc[1]_inferred_i_6_n_5 ),
        .I4(\s_acc[1]_inferred_i_7_n_7 ),
        .I5(\s_acc[1]_inferred_i_7_n_6 ),
        .O(\s_acc[1] [1]));
  LUT4 #(
    .INIT(16'h8778)) 
    \s_acc[1]_inferred_i_40 
       (.I0(\acc_a_reg_n_93_[1] ),
        .I1(\acc_a_reg_n_98_[1] ),
        .I2(\acc_a_reg_n_97_[1] ),
        .I3(\acc_a_reg_n_92_[1] ),
        .O(\s_acc[1]_inferred_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \s_acc[1]_inferred_i_41 
       (.I0(\acc_a_reg_n_94_[1] ),
        .I1(\acc_a_reg_n_99_[1] ),
        .I2(\acc_a_reg_n_98_[1] ),
        .I3(\acc_a_reg_n_93_[1] ),
        .O(\s_acc[1]_inferred_i_41_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \s_acc[1]_inferred_i_42 
       (.I0(\acc_a_reg_n_90_[1] ),
        .I1(\acc_a_reg_n_95_[1] ),
        .I2(\acc_a_reg_n_100_[1] ),
        .I3(\acc_a_reg_n_99_[1] ),
        .I4(\acc_a_reg_n_94_[1] ),
        .O(\s_acc[1]_inferred_i_42_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[1]_inferred_i_43 
       (.I0(\s_acc[1]_inferred_i_24_n_6 ),
        .I1(\s_acc[1]_inferred_i_51_n_7 ),
        .O(\s_acc[1]_inferred_i_43_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[1]_inferred_i_44 
       (.I0(\s_acc[1]_inferred_i_24_n_7 ),
        .I1(\s_acc[1]_inferred_i_24_n_4 ),
        .O(\s_acc[1]_inferred_i_44_n_0 ));
  CARRY4 \s_acc[1]_inferred_i_45 
       (.CI(1'b0),
        .CO({\s_acc[1]_inferred_i_45_n_0 ,\s_acc[1]_inferred_i_45_n_1 ,\s_acc[1]_inferred_i_45_n_2 ,\s_acc[1]_inferred_i_45_n_3 }),
        .CYINIT(1'b0),
        .DI({\acc_a_reg_n_98_[1] ,\acc_a_reg_n_99_[1] ,\acc_a_reg_n_100_[1] ,1'b0}),
        .O(\NLW_s_acc[1]_inferred_i_45_O_UNCONNECTED [3:0]),
        .S({\s_acc[1]_inferred_i_52_n_0 ,\s_acc[1]_inferred_i_53_n_0 ,\s_acc[1]_inferred_i_54_n_0 ,\acc_a_reg_n_101_[1] }));
  LUT3 #(
    .INIT(8'h96)) 
    \s_acc[1]_inferred_i_46 
       (.I0(\acc_a_reg_n_94_[1] ),
        .I1(\acc_a_reg_n_104_[1] ),
        .I2(\acc_a_reg_n_99_[1] ),
        .O(\s_acc[1]_inferred_i_46_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \s_acc[1]_inferred_i_47 
       (.I0(\acc_a_reg_n_104_[1] ),
        .I1(\acc_a_reg_n_99_[1] ),
        .I2(\acc_a_reg_n_94_[1] ),
        .I3(\acc_a_reg_n_100_[1] ),
        .I4(\acc_a_reg_n_105_[1] ),
        .O(\s_acc[1]_inferred_i_47_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \s_acc[1]_inferred_i_48 
       (.I0(\acc_a_reg_n_105_[1] ),
        .I1(\acc_a_reg_n_100_[1] ),
        .I2(\acc_a_reg_n_95_[1] ),
        .O(\s_acc[1]_inferred_i_48_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[1]_inferred_i_49 
       (.I0(\acc_a_reg_n_96_[1] ),
        .I1(\acc_a_reg_n_101_[1] ),
        .O(\s_acc[1]_inferred_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h15555555AAAAAAAA)) 
    \s_acc[1]_inferred_i_5 
       (.I0(\s_acc[1]_inferred_i_7_n_6 ),
        .I1(\s_acc[1]_inferred_i_7_n_7 ),
        .I2(\s_acc[1]_inferred_i_6_n_5 ),
        .I3(\s_acc[1]_inferred_i_6_n_6 ),
        .I4(\s_acc[1]_inferred_i_6_n_4 ),
        .I5(\s_acc[1]_inferred_i_6_n_7 ),
        .O(\s_acc[1] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[1]_inferred_i_50 
       (.I0(\acc_a_reg_n_97_[1] ),
        .I1(\acc_a_reg_n_102_[1] ),
        .O(\s_acc[1]_inferred_i_50_n_0 ));
  CARRY4 \s_acc[1]_inferred_i_51 
       (.CI(\s_acc[1]_inferred_i_24_n_0 ),
        .CO(\NLW_s_acc[1]_inferred_i_51_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_s_acc[1]_inferred_i_51_O_UNCONNECTED [3:1],\s_acc[1]_inferred_i_51_n_7 }),
        .S({1'b0,1'b0,1'b0,\s_acc[1]_inferred_i_55_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[1]_inferred_i_52 
       (.I0(\acc_a_reg_n_98_[1] ),
        .I1(\acc_a_reg_n_103_[1] ),
        .O(\s_acc[1]_inferred_i_52_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[1]_inferred_i_53 
       (.I0(\acc_a_reg_n_99_[1] ),
        .I1(\acc_a_reg_n_104_[1] ),
        .O(\s_acc[1]_inferred_i_53_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[1]_inferred_i_54 
       (.I0(\acc_a_reg_n_100_[1] ),
        .I1(\acc_a_reg_n_105_[1] ),
        .O(\s_acc[1]_inferred_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \s_acc[1]_inferred_i_55 
       (.I0(\acc_a_reg_n_91_[1] ),
        .I1(\acc_a_reg_n_96_[1] ),
        .I2(\acc_a_reg_n_95_[1] ),
        .I3(\acc_a_reg_n_90_[1] ),
        .O(\s_acc[1]_inferred_i_55_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_acc[1]_inferred_i_6 
       (.CI(1'b0),
        .CO({\s_acc[1]_inferred_i_6_n_0 ,\s_acc[1]_inferred_i_6_n_1 ,\s_acc[1]_inferred_i_6_n_2 ,\s_acc[1]_inferred_i_6_n_3 }),
        .CYINIT(1'b1),
        .DI({\acc_a_reg_n_102_[1] ,\acc_a_reg_n_103_[1] ,\acc_a_reg_n_104_[1] ,\acc_a_reg_n_105_[1] }),
        .O({\s_acc[1]_inferred_i_6_n_4 ,\s_acc[1]_inferred_i_6_n_5 ,\s_acc[1]_inferred_i_6_n_6 ,\s_acc[1]_inferred_i_6_n_7 }),
        .S({\s_acc[1]_inferred_i_8_n_0 ,\s_acc[1]_inferred_i_9_n_0 ,\s_acc[1]_inferred_i_10_n_0 ,\s_acc[1]_inferred_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_acc[1]_inferred_i_7 
       (.CI(\s_acc[1]_inferred_i_6_n_0 ),
        .CO({\NLW_s_acc[1]_inferred_i_7_CO_UNCONNECTED [3:1],\s_acc[1]_inferred_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\acc_a_reg_n_101_[1] }),
        .O({\NLW_s_acc[1]_inferred_i_7_O_UNCONNECTED [3:2],\s_acc[1]_inferred_i_7_n_6 ,\s_acc[1]_inferred_i_7_n_7 }),
        .S({1'b0,1'b0,\s_acc[1]_inferred_i_12_n_0 ,\s_acc[1]_inferred_i_13_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[1]_inferred_i_8 
       (.I0(\acc_a_reg_n_102_[1] ),
        .I1(\s_acc[1]_inferred_i_14_n_7 ),
        .O(\s_acc[1]_inferred_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[1]_inferred_i_9 
       (.I0(\acc_a_reg_n_103_[1] ),
        .I1(\s_acc[1]_inferred_i_15_n_5 ),
        .O(\s_acc[1]_inferred_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF80007FFF0000)) 
    \s_acc[2]_inferred_i_1 
       (.I0(\s_acc[2]_inferred_i_6_n_4 ),
        .I1(\s_acc[2]_inferred_i_6_n_6 ),
        .I2(\s_acc[2]_inferred_i_6_n_7 ),
        .I3(\s_acc[2]_inferred_i_6_n_5 ),
        .I4(\s_acc[2]_inferred_i_7_n_7 ),
        .I5(\s_acc[2]_inferred_i_7_n_6 ),
        .O(\s_acc[2] [4]));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[2]_inferred_i_10 
       (.I0(\acc_a_reg_n_104_[2] ),
        .I1(\s_acc[2]_inferred_i_15_n_6 ),
        .O(\s_acc[2]_inferred_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[2]_inferred_i_11 
       (.I0(\acc_a_reg_n_105_[2] ),
        .I1(\s_acc[2]_inferred_i_15_n_7 ),
        .O(\s_acc[2]_inferred_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[2]_inferred_i_12 
       (.I0(\acc_a_reg_n_100_[2] ),
        .I1(\s_acc[2]_inferred_i_14_n_5 ),
        .O(\s_acc[2]_inferred_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[2]_inferred_i_13 
       (.I0(\acc_a_reg_n_101_[2] ),
        .I1(\s_acc[2]_inferred_i_14_n_6 ),
        .O(\s_acc[2]_inferred_i_13_n_0 ));
  CARRY4 \s_acc[2]_inferred_i_14 
       (.CI(1'b0),
        .CO({\NLW_s_acc[2]_inferred_i_14_CO_UNCONNECTED [3:2],\s_acc[2]_inferred_i_14_n_2 ,\s_acc[2]_inferred_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\s_acc[2]_inferred_i_16_n_0 ,1'b0}),
        .O({\NLW_s_acc[2]_inferred_i_14_O_UNCONNECTED [3],\s_acc[2]_inferred_i_14_n_5 ,\s_acc[2]_inferred_i_14_n_6 ,\s_acc[2]_inferred_i_14_n_7 }),
        .S({1'b0,\s_acc[2]_inferred_i_17_n_0 ,\s_acc[2]_inferred_i_18_n_0 ,\s_acc[2]_inferred_i_19_n_0 }));
  CARRY4 \s_acc[2]_inferred_i_15 
       (.CI(1'b0),
        .CO({\s_acc[2]_inferred_i_15_n_0 ,\s_acc[2]_inferred_i_15_n_1 ,\s_acc[2]_inferred_i_15_n_2 ,\s_acc[2]_inferred_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_acc[2]_inferred_i_20_n_4 ,1'b0,1'b0,1'b1}),
        .O({\s_acc[2]_inferred_i_15_n_4 ,\s_acc[2]_inferred_i_15_n_5 ,\s_acc[2]_inferred_i_15_n_6 ,\s_acc[2]_inferred_i_15_n_7 }),
        .S({\s_acc[2]_inferred_i_21_n_0 ,\s_acc[2]_inferred_i_22_n_0 ,\s_acc[2]_inferred_i_23_n_0 ,\s_acc[2]_inferred_i_20_n_4 }));
  LUT2 #(
    .INIT(4'hB)) 
    \s_acc[2]_inferred_i_16 
       (.I0(\s_acc[2]_inferred_i_15_n_4 ),
        .I1(\s_acc[2]_inferred_i_20_n_4 ),
        .O(\s_acc[2]_inferred_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \s_acc[2]_inferred_i_17 
       (.I0(\s_acc[2]_inferred_i_24_n_6 ),
        .I1(\s_acc[2]_inferred_i_25_n_6 ),
        .I2(\s_acc[2]_inferred_i_20_n_4 ),
        .I3(\s_acc[2]_inferred_i_24_n_7 ),
        .I4(\s_acc[2]_inferred_i_25_n_7 ),
        .O(\s_acc[2]_inferred_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \s_acc[2]_inferred_i_18 
       (.I0(\s_acc[2]_inferred_i_20_n_4 ),
        .I1(\s_acc[2]_inferred_i_15_n_4 ),
        .I2(\s_acc[2]_inferred_i_25_n_7 ),
        .I3(\s_acc[2]_inferred_i_24_n_7 ),
        .O(\s_acc[2]_inferred_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[2]_inferred_i_19 
       (.I0(\s_acc[2]_inferred_i_20_n_4 ),
        .I1(\s_acc[2]_inferred_i_15_n_4 ),
        .O(\s_acc[2]_inferred_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h6AAA6AAA2AAAAAAA)) 
    \s_acc[2]_inferred_i_2 
       (.I0(\s_acc[2]_inferred_i_6_n_4 ),
        .I1(\s_acc[2]_inferred_i_6_n_6 ),
        .I2(\s_acc[2]_inferred_i_6_n_7 ),
        .I3(\s_acc[2]_inferred_i_6_n_5 ),
        .I4(\s_acc[2]_inferred_i_7_n_7 ),
        .I5(\s_acc[2]_inferred_i_7_n_6 ),
        .O(\s_acc[2] [3]));
  CARRY4 \s_acc[2]_inferred_i_20 
       (.CI(\s_acc[2]_inferred_i_26_n_0 ),
        .CO({\s_acc[2]_inferred_i_20_n_0 ,\s_acc[2]_inferred_i_20_n_1 ,\s_acc[2]_inferred_i_20_n_2 ,\s_acc[2]_inferred_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_acc[2]_inferred_i_27_n_0 ,\s_acc[2]_inferred_i_28_n_0 ,\s_acc[2]_inferred_i_29_n_0 ,\s_acc[2]_inferred_i_30_n_0 }),
        .O({\s_acc[2]_inferred_i_20_n_4 ,\NLW_s_acc[2]_inferred_i_20_O_UNCONNECTED [2:0]}),
        .S({\s_acc[2]_inferred_i_31_n_0 ,\s_acc[2]_inferred_i_32_n_0 ,\s_acc[2]_inferred_i_33_n_0 ,\s_acc[2]_inferred_i_34_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[2]_inferred_i_21 
       (.I0(\s_acc[2]_inferred_i_20_n_4 ),
        .I1(\s_acc[2]_inferred_i_24_n_5 ),
        .O(\s_acc[2]_inferred_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_acc[2]_inferred_i_22 
       (.I0(\s_acc[2]_inferred_i_24_n_6 ),
        .O(\s_acc[2]_inferred_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_acc[2]_inferred_i_23 
       (.I0(\s_acc[2]_inferred_i_24_n_7 ),
        .O(\s_acc[2]_inferred_i_23_n_0 ));
  CARRY4 \s_acc[2]_inferred_i_24 
       (.CI(\s_acc[2]_inferred_i_20_n_0 ),
        .CO({\s_acc[2]_inferred_i_24_n_0 ,\s_acc[2]_inferred_i_24_n_1 ,\s_acc[2]_inferred_i_24_n_2 ,\s_acc[2]_inferred_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_acc[2]_inferred_i_35_n_0 ,\s_acc[2]_inferred_i_36_n_0 ,\s_acc[2]_inferred_i_37_n_0 ,\s_acc[2]_inferred_i_38_n_0 }),
        .O({\s_acc[2]_inferred_i_24_n_4 ,\s_acc[2]_inferred_i_24_n_5 ,\s_acc[2]_inferred_i_24_n_6 ,\s_acc[2]_inferred_i_24_n_7 }),
        .S({\s_acc[2]_inferred_i_39_n_0 ,\s_acc[2]_inferred_i_40_n_0 ,\s_acc[2]_inferred_i_41_n_0 ,\s_acc[2]_inferred_i_42_n_0 }));
  CARRY4 \s_acc[2]_inferred_i_25 
       (.CI(\s_acc[2]_inferred_i_15_n_0 ),
        .CO({\NLW_s_acc[2]_inferred_i_25_CO_UNCONNECTED [3:1],\s_acc[2]_inferred_i_25_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\s_acc[2]_inferred_i_24_n_7 }),
        .O({\NLW_s_acc[2]_inferred_i_25_O_UNCONNECTED [3:2],\s_acc[2]_inferred_i_25_n_6 ,\s_acc[2]_inferred_i_25_n_7 }),
        .S({1'b0,1'b0,\s_acc[2]_inferred_i_43_n_0 ,\s_acc[2]_inferred_i_44_n_0 }));
  CARRY4 \s_acc[2]_inferred_i_26 
       (.CI(\s_acc[2]_inferred_i_45_n_0 ),
        .CO({\s_acc[2]_inferred_i_26_n_0 ,\s_acc[2]_inferred_i_26_n_1 ,\s_acc[2]_inferred_i_26_n_2 ,\s_acc[2]_inferred_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_acc[2]_inferred_i_46_n_0 ,\acc_a_reg_n_95_[2] ,\acc_a_reg_n_96_[2] ,\acc_a_reg_n_97_[2] }),
        .O(\NLW_s_acc[2]_inferred_i_26_O_UNCONNECTED [3:0]),
        .S({\s_acc[2]_inferred_i_47_n_0 ,\s_acc[2]_inferred_i_48_n_0 ,\s_acc[2]_inferred_i_49_n_0 ,\s_acc[2]_inferred_i_50_n_0 }));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[2]_inferred_i_27 
       (.I0(\acc_a_reg_n_101_[2] ),
        .I1(\acc_a_reg_n_96_[2] ),
        .I2(\acc_a_reg_n_91_[2] ),
        .O(\s_acc[2]_inferred_i_27_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[2]_inferred_i_28 
       (.I0(\acc_a_reg_n_102_[2] ),
        .I1(\acc_a_reg_n_97_[2] ),
        .I2(\acc_a_reg_n_92_[2] ),
        .O(\s_acc[2]_inferred_i_28_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[2]_inferred_i_29 
       (.I0(\acc_a_reg_n_103_[2] ),
        .I1(\acc_a_reg_n_98_[2] ),
        .I2(\acc_a_reg_n_93_[2] ),
        .O(\s_acc[2]_inferred_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h3FC03FC07F00FF00)) 
    \s_acc[2]_inferred_i_3 
       (.I0(\s_acc[2]_inferred_i_6_n_4 ),
        .I1(\s_acc[2]_inferred_i_6_n_6 ),
        .I2(\s_acc[2]_inferred_i_6_n_7 ),
        .I3(\s_acc[2]_inferred_i_6_n_5 ),
        .I4(\s_acc[2]_inferred_i_7_n_7 ),
        .I5(\s_acc[2]_inferred_i_7_n_6 ),
        .O(\s_acc[2] [2]));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[2]_inferred_i_30 
       (.I0(\acc_a_reg_n_104_[2] ),
        .I1(\acc_a_reg_n_99_[2] ),
        .I2(\acc_a_reg_n_94_[2] ),
        .O(\s_acc[2]_inferred_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \s_acc[2]_inferred_i_31 
       (.I0(\s_acc[2]_inferred_i_27_n_0 ),
        .I1(\acc_a_reg_n_95_[2] ),
        .I2(\acc_a_reg_n_100_[2] ),
        .I3(\acc_a_reg_n_90_[2] ),
        .O(\s_acc[2]_inferred_i_31_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \s_acc[2]_inferred_i_32 
       (.I0(\acc_a_reg_n_101_[2] ),
        .I1(\acc_a_reg_n_96_[2] ),
        .I2(\acc_a_reg_n_91_[2] ),
        .I3(\s_acc[2]_inferred_i_28_n_0 ),
        .O(\s_acc[2]_inferred_i_32_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \s_acc[2]_inferred_i_33 
       (.I0(\acc_a_reg_n_102_[2] ),
        .I1(\acc_a_reg_n_97_[2] ),
        .I2(\acc_a_reg_n_92_[2] ),
        .I3(\s_acc[2]_inferred_i_29_n_0 ),
        .O(\s_acc[2]_inferred_i_33_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \s_acc[2]_inferred_i_34 
       (.I0(\acc_a_reg_n_103_[2] ),
        .I1(\acc_a_reg_n_98_[2] ),
        .I2(\acc_a_reg_n_93_[2] ),
        .I3(\s_acc[2]_inferred_i_30_n_0 ),
        .O(\s_acc[2]_inferred_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_acc[2]_inferred_i_35 
       (.I0(\acc_a_reg_n_92_[2] ),
        .I1(\acc_a_reg_n_97_[2] ),
        .O(\s_acc[2]_inferred_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_acc[2]_inferred_i_36 
       (.I0(\acc_a_reg_n_93_[2] ),
        .I1(\acc_a_reg_n_98_[2] ),
        .O(\s_acc[2]_inferred_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_acc[2]_inferred_i_37 
       (.I0(\acc_a_reg_n_94_[2] ),
        .I1(\acc_a_reg_n_99_[2] ),
        .O(\s_acc[2]_inferred_i_37_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[2]_inferred_i_38 
       (.I0(\acc_a_reg_n_100_[2] ),
        .I1(\acc_a_reg_n_95_[2] ),
        .I2(\acc_a_reg_n_90_[2] ),
        .O(\s_acc[2]_inferred_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \s_acc[2]_inferred_i_39 
       (.I0(\acc_a_reg_n_92_[2] ),
        .I1(\acc_a_reg_n_97_[2] ),
        .I2(\acc_a_reg_n_96_[2] ),
        .I3(\acc_a_reg_n_91_[2] ),
        .O(\s_acc[2]_inferred_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C3C3C4CCCCCCC)) 
    \s_acc[2]_inferred_i_4 
       (.I0(\s_acc[2]_inferred_i_6_n_4 ),
        .I1(\s_acc[2]_inferred_i_6_n_6 ),
        .I2(\s_acc[2]_inferred_i_6_n_7 ),
        .I3(\s_acc[2]_inferred_i_6_n_5 ),
        .I4(\s_acc[2]_inferred_i_7_n_7 ),
        .I5(\s_acc[2]_inferred_i_7_n_6 ),
        .O(\s_acc[2] [1]));
  LUT4 #(
    .INIT(16'h8778)) 
    \s_acc[2]_inferred_i_40 
       (.I0(\acc_a_reg_n_93_[2] ),
        .I1(\acc_a_reg_n_98_[2] ),
        .I2(\acc_a_reg_n_97_[2] ),
        .I3(\acc_a_reg_n_92_[2] ),
        .O(\s_acc[2]_inferred_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \s_acc[2]_inferred_i_41 
       (.I0(\acc_a_reg_n_94_[2] ),
        .I1(\acc_a_reg_n_99_[2] ),
        .I2(\acc_a_reg_n_98_[2] ),
        .I3(\acc_a_reg_n_93_[2] ),
        .O(\s_acc[2]_inferred_i_41_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \s_acc[2]_inferred_i_42 
       (.I0(\acc_a_reg_n_90_[2] ),
        .I1(\acc_a_reg_n_95_[2] ),
        .I2(\acc_a_reg_n_100_[2] ),
        .I3(\acc_a_reg_n_99_[2] ),
        .I4(\acc_a_reg_n_94_[2] ),
        .O(\s_acc[2]_inferred_i_42_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[2]_inferred_i_43 
       (.I0(\s_acc[2]_inferred_i_24_n_6 ),
        .I1(\s_acc[2]_inferred_i_51_n_7 ),
        .O(\s_acc[2]_inferred_i_43_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[2]_inferred_i_44 
       (.I0(\s_acc[2]_inferred_i_24_n_7 ),
        .I1(\s_acc[2]_inferred_i_24_n_4 ),
        .O(\s_acc[2]_inferred_i_44_n_0 ));
  CARRY4 \s_acc[2]_inferred_i_45 
       (.CI(1'b0),
        .CO({\s_acc[2]_inferred_i_45_n_0 ,\s_acc[2]_inferred_i_45_n_1 ,\s_acc[2]_inferred_i_45_n_2 ,\s_acc[2]_inferred_i_45_n_3 }),
        .CYINIT(1'b0),
        .DI({\acc_a_reg_n_98_[2] ,\acc_a_reg_n_99_[2] ,\acc_a_reg_n_100_[2] ,1'b0}),
        .O(\NLW_s_acc[2]_inferred_i_45_O_UNCONNECTED [3:0]),
        .S({\s_acc[2]_inferred_i_52_n_0 ,\s_acc[2]_inferred_i_53_n_0 ,\s_acc[2]_inferred_i_54_n_0 ,\acc_a_reg_n_101_[2] }));
  LUT3 #(
    .INIT(8'h96)) 
    \s_acc[2]_inferred_i_46 
       (.I0(\acc_a_reg_n_94_[2] ),
        .I1(\acc_a_reg_n_104_[2] ),
        .I2(\acc_a_reg_n_99_[2] ),
        .O(\s_acc[2]_inferred_i_46_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \s_acc[2]_inferred_i_47 
       (.I0(\acc_a_reg_n_104_[2] ),
        .I1(\acc_a_reg_n_99_[2] ),
        .I2(\acc_a_reg_n_94_[2] ),
        .I3(\acc_a_reg_n_100_[2] ),
        .I4(\acc_a_reg_n_105_[2] ),
        .O(\s_acc[2]_inferred_i_47_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \s_acc[2]_inferred_i_48 
       (.I0(\acc_a_reg_n_105_[2] ),
        .I1(\acc_a_reg_n_100_[2] ),
        .I2(\acc_a_reg_n_95_[2] ),
        .O(\s_acc[2]_inferred_i_48_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[2]_inferred_i_49 
       (.I0(\acc_a_reg_n_96_[2] ),
        .I1(\acc_a_reg_n_101_[2] ),
        .O(\s_acc[2]_inferred_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h15555555AAAAAAAA)) 
    \s_acc[2]_inferred_i_5 
       (.I0(\s_acc[2]_inferred_i_7_n_6 ),
        .I1(\s_acc[2]_inferred_i_7_n_7 ),
        .I2(\s_acc[2]_inferred_i_6_n_5 ),
        .I3(\s_acc[2]_inferred_i_6_n_6 ),
        .I4(\s_acc[2]_inferred_i_6_n_4 ),
        .I5(\s_acc[2]_inferred_i_6_n_7 ),
        .O(\s_acc[2] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[2]_inferred_i_50 
       (.I0(\acc_a_reg_n_97_[2] ),
        .I1(\acc_a_reg_n_102_[2] ),
        .O(\s_acc[2]_inferred_i_50_n_0 ));
  CARRY4 \s_acc[2]_inferred_i_51 
       (.CI(\s_acc[2]_inferred_i_24_n_0 ),
        .CO(\NLW_s_acc[2]_inferred_i_51_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_s_acc[2]_inferred_i_51_O_UNCONNECTED [3:1],\s_acc[2]_inferred_i_51_n_7 }),
        .S({1'b0,1'b0,1'b0,\s_acc[2]_inferred_i_55_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[2]_inferred_i_52 
       (.I0(\acc_a_reg_n_98_[2] ),
        .I1(\acc_a_reg_n_103_[2] ),
        .O(\s_acc[2]_inferred_i_52_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[2]_inferred_i_53 
       (.I0(\acc_a_reg_n_99_[2] ),
        .I1(\acc_a_reg_n_104_[2] ),
        .O(\s_acc[2]_inferred_i_53_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[2]_inferred_i_54 
       (.I0(\acc_a_reg_n_100_[2] ),
        .I1(\acc_a_reg_n_105_[2] ),
        .O(\s_acc[2]_inferred_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \s_acc[2]_inferred_i_55 
       (.I0(\acc_a_reg_n_91_[2] ),
        .I1(\acc_a_reg_n_96_[2] ),
        .I2(\acc_a_reg_n_95_[2] ),
        .I3(\acc_a_reg_n_90_[2] ),
        .O(\s_acc[2]_inferred_i_55_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_acc[2]_inferred_i_6 
       (.CI(1'b0),
        .CO({\s_acc[2]_inferred_i_6_n_0 ,\s_acc[2]_inferred_i_6_n_1 ,\s_acc[2]_inferred_i_6_n_2 ,\s_acc[2]_inferred_i_6_n_3 }),
        .CYINIT(1'b1),
        .DI({\acc_a_reg_n_102_[2] ,\acc_a_reg_n_103_[2] ,\acc_a_reg_n_104_[2] ,\acc_a_reg_n_105_[2] }),
        .O({\s_acc[2]_inferred_i_6_n_4 ,\s_acc[2]_inferred_i_6_n_5 ,\s_acc[2]_inferred_i_6_n_6 ,\s_acc[2]_inferred_i_6_n_7 }),
        .S({\s_acc[2]_inferred_i_8_n_0 ,\s_acc[2]_inferred_i_9_n_0 ,\s_acc[2]_inferred_i_10_n_0 ,\s_acc[2]_inferred_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_acc[2]_inferred_i_7 
       (.CI(\s_acc[2]_inferred_i_6_n_0 ),
        .CO({\NLW_s_acc[2]_inferred_i_7_CO_UNCONNECTED [3:1],\s_acc[2]_inferred_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\acc_a_reg_n_101_[2] }),
        .O({\NLW_s_acc[2]_inferred_i_7_O_UNCONNECTED [3:2],\s_acc[2]_inferred_i_7_n_6 ,\s_acc[2]_inferred_i_7_n_7 }),
        .S({1'b0,1'b0,\s_acc[2]_inferred_i_12_n_0 ,\s_acc[2]_inferred_i_13_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[2]_inferred_i_8 
       (.I0(\acc_a_reg_n_102_[2] ),
        .I1(\s_acc[2]_inferred_i_14_n_7 ),
        .O(\s_acc[2]_inferred_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[2]_inferred_i_9 
       (.I0(\acc_a_reg_n_103_[2] ),
        .I1(\s_acc[2]_inferred_i_15_n_5 ),
        .O(\s_acc[2]_inferred_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF80007FFF0000)) 
    \s_acc[3]_inferred_i_1 
       (.I0(\s_acc[3]_inferred_i_6_n_4 ),
        .I1(\s_acc[3]_inferred_i_6_n_6 ),
        .I2(\s_acc[3]_inferred_i_6_n_7 ),
        .I3(\s_acc[3]_inferred_i_6_n_5 ),
        .I4(\s_acc[3]_inferred_i_7_n_7 ),
        .I5(\s_acc[3]_inferred_i_7_n_6 ),
        .O(\s_acc[3] [4]));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[3]_inferred_i_10 
       (.I0(\acc_a_reg_n_104_[3] ),
        .I1(\s_acc[3]_inferred_i_15_n_6 ),
        .O(\s_acc[3]_inferred_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[3]_inferred_i_11 
       (.I0(\acc_a_reg_n_105_[3] ),
        .I1(\s_acc[3]_inferred_i_15_n_7 ),
        .O(\s_acc[3]_inferred_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[3]_inferred_i_12 
       (.I0(\acc_a_reg_n_100_[3] ),
        .I1(\s_acc[3]_inferred_i_14_n_5 ),
        .O(\s_acc[3]_inferred_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[3]_inferred_i_13 
       (.I0(\acc_a_reg_n_101_[3] ),
        .I1(\s_acc[3]_inferred_i_14_n_6 ),
        .O(\s_acc[3]_inferred_i_13_n_0 ));
  CARRY4 \s_acc[3]_inferred_i_14 
       (.CI(1'b0),
        .CO({\NLW_s_acc[3]_inferred_i_14_CO_UNCONNECTED [3:2],\s_acc[3]_inferred_i_14_n_2 ,\s_acc[3]_inferred_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\s_acc[3]_inferred_i_16_n_0 ,1'b0}),
        .O({\NLW_s_acc[3]_inferred_i_14_O_UNCONNECTED [3],\s_acc[3]_inferred_i_14_n_5 ,\s_acc[3]_inferred_i_14_n_6 ,\s_acc[3]_inferred_i_14_n_7 }),
        .S({1'b0,\s_acc[3]_inferred_i_17_n_0 ,\s_acc[3]_inferred_i_18_n_0 ,\s_acc[3]_inferred_i_19_n_0 }));
  CARRY4 \s_acc[3]_inferred_i_15 
       (.CI(1'b0),
        .CO({\s_acc[3]_inferred_i_15_n_0 ,\s_acc[3]_inferred_i_15_n_1 ,\s_acc[3]_inferred_i_15_n_2 ,\s_acc[3]_inferred_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_acc[3]_inferred_i_20_n_4 ,1'b0,1'b0,1'b1}),
        .O({\s_acc[3]_inferred_i_15_n_4 ,\s_acc[3]_inferred_i_15_n_5 ,\s_acc[3]_inferred_i_15_n_6 ,\s_acc[3]_inferred_i_15_n_7 }),
        .S({\s_acc[3]_inferred_i_21_n_0 ,\s_acc[3]_inferred_i_22_n_0 ,\s_acc[3]_inferred_i_23_n_0 ,\s_acc[3]_inferred_i_20_n_4 }));
  LUT2 #(
    .INIT(4'hB)) 
    \s_acc[3]_inferred_i_16 
       (.I0(\s_acc[3]_inferred_i_15_n_4 ),
        .I1(\s_acc[3]_inferred_i_20_n_4 ),
        .O(\s_acc[3]_inferred_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \s_acc[3]_inferred_i_17 
       (.I0(\s_acc[3]_inferred_i_24_n_6 ),
        .I1(\s_acc[3]_inferred_i_25_n_6 ),
        .I2(\s_acc[3]_inferred_i_20_n_4 ),
        .I3(\s_acc[3]_inferred_i_24_n_7 ),
        .I4(\s_acc[3]_inferred_i_25_n_7 ),
        .O(\s_acc[3]_inferred_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \s_acc[3]_inferred_i_18 
       (.I0(\s_acc[3]_inferred_i_20_n_4 ),
        .I1(\s_acc[3]_inferred_i_15_n_4 ),
        .I2(\s_acc[3]_inferred_i_25_n_7 ),
        .I3(\s_acc[3]_inferred_i_24_n_7 ),
        .O(\s_acc[3]_inferred_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[3]_inferred_i_19 
       (.I0(\s_acc[3]_inferred_i_20_n_4 ),
        .I1(\s_acc[3]_inferred_i_15_n_4 ),
        .O(\s_acc[3]_inferred_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h6AAA6AAA2AAAAAAA)) 
    \s_acc[3]_inferred_i_2 
       (.I0(\s_acc[3]_inferred_i_6_n_4 ),
        .I1(\s_acc[3]_inferred_i_6_n_6 ),
        .I2(\s_acc[3]_inferred_i_6_n_7 ),
        .I3(\s_acc[3]_inferred_i_6_n_5 ),
        .I4(\s_acc[3]_inferred_i_7_n_7 ),
        .I5(\s_acc[3]_inferred_i_7_n_6 ),
        .O(\s_acc[3] [3]));
  CARRY4 \s_acc[3]_inferred_i_20 
       (.CI(\s_acc[3]_inferred_i_26_n_0 ),
        .CO({\s_acc[3]_inferred_i_20_n_0 ,\s_acc[3]_inferred_i_20_n_1 ,\s_acc[3]_inferred_i_20_n_2 ,\s_acc[3]_inferred_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_acc[3]_inferred_i_27_n_0 ,\s_acc[3]_inferred_i_28_n_0 ,\s_acc[3]_inferred_i_29_n_0 ,\s_acc[3]_inferred_i_30_n_0 }),
        .O({\s_acc[3]_inferred_i_20_n_4 ,\NLW_s_acc[3]_inferred_i_20_O_UNCONNECTED [2:0]}),
        .S({\s_acc[3]_inferred_i_31_n_0 ,\s_acc[3]_inferred_i_32_n_0 ,\s_acc[3]_inferred_i_33_n_0 ,\s_acc[3]_inferred_i_34_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[3]_inferred_i_21 
       (.I0(\s_acc[3]_inferred_i_20_n_4 ),
        .I1(\s_acc[3]_inferred_i_24_n_5 ),
        .O(\s_acc[3]_inferred_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_acc[3]_inferred_i_22 
       (.I0(\s_acc[3]_inferred_i_24_n_6 ),
        .O(\s_acc[3]_inferred_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_acc[3]_inferred_i_23 
       (.I0(\s_acc[3]_inferred_i_24_n_7 ),
        .O(\s_acc[3]_inferred_i_23_n_0 ));
  CARRY4 \s_acc[3]_inferred_i_24 
       (.CI(\s_acc[3]_inferred_i_20_n_0 ),
        .CO({\s_acc[3]_inferred_i_24_n_0 ,\s_acc[3]_inferred_i_24_n_1 ,\s_acc[3]_inferred_i_24_n_2 ,\s_acc[3]_inferred_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_acc[3]_inferred_i_35_n_0 ,\s_acc[3]_inferred_i_36_n_0 ,\s_acc[3]_inferred_i_37_n_0 ,\s_acc[3]_inferred_i_38_n_0 }),
        .O({\s_acc[3]_inferred_i_24_n_4 ,\s_acc[3]_inferred_i_24_n_5 ,\s_acc[3]_inferred_i_24_n_6 ,\s_acc[3]_inferred_i_24_n_7 }),
        .S({\s_acc[3]_inferred_i_39_n_0 ,\s_acc[3]_inferred_i_40_n_0 ,\s_acc[3]_inferred_i_41_n_0 ,\s_acc[3]_inferred_i_42_n_0 }));
  CARRY4 \s_acc[3]_inferred_i_25 
       (.CI(\s_acc[3]_inferred_i_15_n_0 ),
        .CO({\NLW_s_acc[3]_inferred_i_25_CO_UNCONNECTED [3:1],\s_acc[3]_inferred_i_25_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\s_acc[3]_inferred_i_24_n_7 }),
        .O({\NLW_s_acc[3]_inferred_i_25_O_UNCONNECTED [3:2],\s_acc[3]_inferred_i_25_n_6 ,\s_acc[3]_inferred_i_25_n_7 }),
        .S({1'b0,1'b0,\s_acc[3]_inferred_i_43_n_0 ,\s_acc[3]_inferred_i_44_n_0 }));
  CARRY4 \s_acc[3]_inferred_i_26 
       (.CI(\s_acc[3]_inferred_i_45_n_0 ),
        .CO({\s_acc[3]_inferred_i_26_n_0 ,\s_acc[3]_inferred_i_26_n_1 ,\s_acc[3]_inferred_i_26_n_2 ,\s_acc[3]_inferred_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_acc[3]_inferred_i_46_n_0 ,\acc_a_reg_n_95_[3] ,\acc_a_reg_n_96_[3] ,\acc_a_reg_n_97_[3] }),
        .O(\NLW_s_acc[3]_inferred_i_26_O_UNCONNECTED [3:0]),
        .S({\s_acc[3]_inferred_i_47_n_0 ,\s_acc[3]_inferred_i_48_n_0 ,\s_acc[3]_inferred_i_49_n_0 ,\s_acc[3]_inferred_i_50_n_0 }));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[3]_inferred_i_27 
       (.I0(\acc_a_reg_n_101_[3] ),
        .I1(\acc_a_reg_n_96_[3] ),
        .I2(\acc_a_reg_n_91_[3] ),
        .O(\s_acc[3]_inferred_i_27_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[3]_inferred_i_28 
       (.I0(\acc_a_reg_n_102_[3] ),
        .I1(\acc_a_reg_n_97_[3] ),
        .I2(\acc_a_reg_n_92_[3] ),
        .O(\s_acc[3]_inferred_i_28_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[3]_inferred_i_29 
       (.I0(\acc_a_reg_n_103_[3] ),
        .I1(\acc_a_reg_n_98_[3] ),
        .I2(\acc_a_reg_n_93_[3] ),
        .O(\s_acc[3]_inferred_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h3FC03FC07F00FF00)) 
    \s_acc[3]_inferred_i_3 
       (.I0(\s_acc[3]_inferred_i_6_n_4 ),
        .I1(\s_acc[3]_inferred_i_6_n_6 ),
        .I2(\s_acc[3]_inferred_i_6_n_7 ),
        .I3(\s_acc[3]_inferred_i_6_n_5 ),
        .I4(\s_acc[3]_inferred_i_7_n_7 ),
        .I5(\s_acc[3]_inferred_i_7_n_6 ),
        .O(\s_acc[3] [2]));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[3]_inferred_i_30 
       (.I0(\acc_a_reg_n_104_[3] ),
        .I1(\acc_a_reg_n_99_[3] ),
        .I2(\acc_a_reg_n_94_[3] ),
        .O(\s_acc[3]_inferred_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \s_acc[3]_inferred_i_31 
       (.I0(\s_acc[3]_inferred_i_27_n_0 ),
        .I1(\acc_a_reg_n_95_[3] ),
        .I2(\acc_a_reg_n_100_[3] ),
        .I3(\acc_a_reg_n_90_[3] ),
        .O(\s_acc[3]_inferred_i_31_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \s_acc[3]_inferred_i_32 
       (.I0(\acc_a_reg_n_101_[3] ),
        .I1(\acc_a_reg_n_96_[3] ),
        .I2(\acc_a_reg_n_91_[3] ),
        .I3(\s_acc[3]_inferred_i_28_n_0 ),
        .O(\s_acc[3]_inferred_i_32_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \s_acc[3]_inferred_i_33 
       (.I0(\acc_a_reg_n_102_[3] ),
        .I1(\acc_a_reg_n_97_[3] ),
        .I2(\acc_a_reg_n_92_[3] ),
        .I3(\s_acc[3]_inferred_i_29_n_0 ),
        .O(\s_acc[3]_inferred_i_33_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \s_acc[3]_inferred_i_34 
       (.I0(\acc_a_reg_n_103_[3] ),
        .I1(\acc_a_reg_n_98_[3] ),
        .I2(\acc_a_reg_n_93_[3] ),
        .I3(\s_acc[3]_inferred_i_30_n_0 ),
        .O(\s_acc[3]_inferred_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_acc[3]_inferred_i_35 
       (.I0(\acc_a_reg_n_92_[3] ),
        .I1(\acc_a_reg_n_97_[3] ),
        .O(\s_acc[3]_inferred_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_acc[3]_inferred_i_36 
       (.I0(\acc_a_reg_n_93_[3] ),
        .I1(\acc_a_reg_n_98_[3] ),
        .O(\s_acc[3]_inferred_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_acc[3]_inferred_i_37 
       (.I0(\acc_a_reg_n_94_[3] ),
        .I1(\acc_a_reg_n_99_[3] ),
        .O(\s_acc[3]_inferred_i_37_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[3]_inferred_i_38 
       (.I0(\acc_a_reg_n_100_[3] ),
        .I1(\acc_a_reg_n_95_[3] ),
        .I2(\acc_a_reg_n_90_[3] ),
        .O(\s_acc[3]_inferred_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \s_acc[3]_inferred_i_39 
       (.I0(\acc_a_reg_n_92_[3] ),
        .I1(\acc_a_reg_n_97_[3] ),
        .I2(\acc_a_reg_n_96_[3] ),
        .I3(\acc_a_reg_n_91_[3] ),
        .O(\s_acc[3]_inferred_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C3C3C4CCCCCCC)) 
    \s_acc[3]_inferred_i_4 
       (.I0(\s_acc[3]_inferred_i_6_n_4 ),
        .I1(\s_acc[3]_inferred_i_6_n_6 ),
        .I2(\s_acc[3]_inferred_i_6_n_7 ),
        .I3(\s_acc[3]_inferred_i_6_n_5 ),
        .I4(\s_acc[3]_inferred_i_7_n_7 ),
        .I5(\s_acc[3]_inferred_i_7_n_6 ),
        .O(\s_acc[3] [1]));
  LUT4 #(
    .INIT(16'h8778)) 
    \s_acc[3]_inferred_i_40 
       (.I0(\acc_a_reg_n_93_[3] ),
        .I1(\acc_a_reg_n_98_[3] ),
        .I2(\acc_a_reg_n_97_[3] ),
        .I3(\acc_a_reg_n_92_[3] ),
        .O(\s_acc[3]_inferred_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \s_acc[3]_inferred_i_41 
       (.I0(\acc_a_reg_n_94_[3] ),
        .I1(\acc_a_reg_n_99_[3] ),
        .I2(\acc_a_reg_n_98_[3] ),
        .I3(\acc_a_reg_n_93_[3] ),
        .O(\s_acc[3]_inferred_i_41_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \s_acc[3]_inferred_i_42 
       (.I0(\acc_a_reg_n_90_[3] ),
        .I1(\acc_a_reg_n_95_[3] ),
        .I2(\acc_a_reg_n_100_[3] ),
        .I3(\acc_a_reg_n_99_[3] ),
        .I4(\acc_a_reg_n_94_[3] ),
        .O(\s_acc[3]_inferred_i_42_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[3]_inferred_i_43 
       (.I0(\s_acc[3]_inferred_i_24_n_6 ),
        .I1(\s_acc[3]_inferred_i_51_n_7 ),
        .O(\s_acc[3]_inferred_i_43_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[3]_inferred_i_44 
       (.I0(\s_acc[3]_inferred_i_24_n_7 ),
        .I1(\s_acc[3]_inferred_i_24_n_4 ),
        .O(\s_acc[3]_inferred_i_44_n_0 ));
  CARRY4 \s_acc[3]_inferred_i_45 
       (.CI(1'b0),
        .CO({\s_acc[3]_inferred_i_45_n_0 ,\s_acc[3]_inferred_i_45_n_1 ,\s_acc[3]_inferred_i_45_n_2 ,\s_acc[3]_inferred_i_45_n_3 }),
        .CYINIT(1'b0),
        .DI({\acc_a_reg_n_98_[3] ,\acc_a_reg_n_99_[3] ,\acc_a_reg_n_100_[3] ,1'b0}),
        .O(\NLW_s_acc[3]_inferred_i_45_O_UNCONNECTED [3:0]),
        .S({\s_acc[3]_inferred_i_52_n_0 ,\s_acc[3]_inferred_i_53_n_0 ,\s_acc[3]_inferred_i_54_n_0 ,\acc_a_reg_n_101_[3] }));
  LUT3 #(
    .INIT(8'h96)) 
    \s_acc[3]_inferred_i_46 
       (.I0(\acc_a_reg_n_94_[3] ),
        .I1(\acc_a_reg_n_104_[3] ),
        .I2(\acc_a_reg_n_99_[3] ),
        .O(\s_acc[3]_inferred_i_46_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \s_acc[3]_inferred_i_47 
       (.I0(\acc_a_reg_n_104_[3] ),
        .I1(\acc_a_reg_n_99_[3] ),
        .I2(\acc_a_reg_n_94_[3] ),
        .I3(\acc_a_reg_n_100_[3] ),
        .I4(\acc_a_reg_n_105_[3] ),
        .O(\s_acc[3]_inferred_i_47_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \s_acc[3]_inferred_i_48 
       (.I0(\acc_a_reg_n_105_[3] ),
        .I1(\acc_a_reg_n_100_[3] ),
        .I2(\acc_a_reg_n_95_[3] ),
        .O(\s_acc[3]_inferred_i_48_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[3]_inferred_i_49 
       (.I0(\acc_a_reg_n_96_[3] ),
        .I1(\acc_a_reg_n_101_[3] ),
        .O(\s_acc[3]_inferred_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h15555555AAAAAAAA)) 
    \s_acc[3]_inferred_i_5 
       (.I0(\s_acc[3]_inferred_i_7_n_6 ),
        .I1(\s_acc[3]_inferred_i_7_n_7 ),
        .I2(\s_acc[3]_inferred_i_6_n_5 ),
        .I3(\s_acc[3]_inferred_i_6_n_6 ),
        .I4(\s_acc[3]_inferred_i_6_n_4 ),
        .I5(\s_acc[3]_inferred_i_6_n_7 ),
        .O(\s_acc[3] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[3]_inferred_i_50 
       (.I0(\acc_a_reg_n_97_[3] ),
        .I1(\acc_a_reg_n_102_[3] ),
        .O(\s_acc[3]_inferred_i_50_n_0 ));
  CARRY4 \s_acc[3]_inferred_i_51 
       (.CI(\s_acc[3]_inferred_i_24_n_0 ),
        .CO(\NLW_s_acc[3]_inferred_i_51_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_s_acc[3]_inferred_i_51_O_UNCONNECTED [3:1],\s_acc[3]_inferred_i_51_n_7 }),
        .S({1'b0,1'b0,1'b0,\s_acc[3]_inferred_i_55_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[3]_inferred_i_52 
       (.I0(\acc_a_reg_n_98_[3] ),
        .I1(\acc_a_reg_n_103_[3] ),
        .O(\s_acc[3]_inferred_i_52_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[3]_inferred_i_53 
       (.I0(\acc_a_reg_n_99_[3] ),
        .I1(\acc_a_reg_n_104_[3] ),
        .O(\s_acc[3]_inferred_i_53_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[3]_inferred_i_54 
       (.I0(\acc_a_reg_n_100_[3] ),
        .I1(\acc_a_reg_n_105_[3] ),
        .O(\s_acc[3]_inferred_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \s_acc[3]_inferred_i_55 
       (.I0(\acc_a_reg_n_91_[3] ),
        .I1(\acc_a_reg_n_96_[3] ),
        .I2(\acc_a_reg_n_95_[3] ),
        .I3(\acc_a_reg_n_90_[3] ),
        .O(\s_acc[3]_inferred_i_55_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_acc[3]_inferred_i_6 
       (.CI(1'b0),
        .CO({\s_acc[3]_inferred_i_6_n_0 ,\s_acc[3]_inferred_i_6_n_1 ,\s_acc[3]_inferred_i_6_n_2 ,\s_acc[3]_inferred_i_6_n_3 }),
        .CYINIT(1'b1),
        .DI({\acc_a_reg_n_102_[3] ,\acc_a_reg_n_103_[3] ,\acc_a_reg_n_104_[3] ,\acc_a_reg_n_105_[3] }),
        .O({\s_acc[3]_inferred_i_6_n_4 ,\s_acc[3]_inferred_i_6_n_5 ,\s_acc[3]_inferred_i_6_n_6 ,\s_acc[3]_inferred_i_6_n_7 }),
        .S({\s_acc[3]_inferred_i_8_n_0 ,\s_acc[3]_inferred_i_9_n_0 ,\s_acc[3]_inferred_i_10_n_0 ,\s_acc[3]_inferred_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_acc[3]_inferred_i_7 
       (.CI(\s_acc[3]_inferred_i_6_n_0 ),
        .CO({\NLW_s_acc[3]_inferred_i_7_CO_UNCONNECTED [3:1],\s_acc[3]_inferred_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\acc_a_reg_n_101_[3] }),
        .O({\NLW_s_acc[3]_inferred_i_7_O_UNCONNECTED [3:2],\s_acc[3]_inferred_i_7_n_6 ,\s_acc[3]_inferred_i_7_n_7 }),
        .S({1'b0,1'b0,\s_acc[3]_inferred_i_12_n_0 ,\s_acc[3]_inferred_i_13_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[3]_inferred_i_8 
       (.I0(\acc_a_reg_n_102_[3] ),
        .I1(\s_acc[3]_inferred_i_14_n_7 ),
        .O(\s_acc[3]_inferred_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[3]_inferred_i_9 
       (.I0(\acc_a_reg_n_103_[3] ),
        .I1(\s_acc[3]_inferred_i_15_n_5 ),
        .O(\s_acc[3]_inferred_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF80007FFF0000)) 
    \s_acc[4]_inferred_i_1 
       (.I0(\s_acc[4]_inferred_i_6_n_4 ),
        .I1(\s_acc[4]_inferred_i_6_n_6 ),
        .I2(\s_acc[4]_inferred_i_6_n_7 ),
        .I3(\s_acc[4]_inferred_i_6_n_5 ),
        .I4(\s_acc[4]_inferred_i_7_n_7 ),
        .I5(\s_acc[4]_inferred_i_7_n_6 ),
        .O(\s_acc[4] [4]));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[4]_inferred_i_10 
       (.I0(\acc_b_reg_n_104_[0] ),
        .I1(\s_acc[4]_inferred_i_15_n_6 ),
        .O(\s_acc[4]_inferred_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[4]_inferred_i_11 
       (.I0(\acc_b_reg_n_105_[0] ),
        .I1(\s_acc[4]_inferred_i_15_n_7 ),
        .O(\s_acc[4]_inferred_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[4]_inferred_i_12 
       (.I0(\acc_b_reg_n_100_[0] ),
        .I1(\s_acc[4]_inferred_i_14_n_5 ),
        .O(\s_acc[4]_inferred_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[4]_inferred_i_13 
       (.I0(\acc_b_reg_n_101_[0] ),
        .I1(\s_acc[4]_inferred_i_14_n_6 ),
        .O(\s_acc[4]_inferred_i_13_n_0 ));
  CARRY4 \s_acc[4]_inferred_i_14 
       (.CI(1'b0),
        .CO({\NLW_s_acc[4]_inferred_i_14_CO_UNCONNECTED [3:2],\s_acc[4]_inferred_i_14_n_2 ,\s_acc[4]_inferred_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\s_acc[4]_inferred_i_16_n_0 ,1'b0}),
        .O({\NLW_s_acc[4]_inferred_i_14_O_UNCONNECTED [3],\s_acc[4]_inferred_i_14_n_5 ,\s_acc[4]_inferred_i_14_n_6 ,\s_acc[4]_inferred_i_14_n_7 }),
        .S({1'b0,\s_acc[4]_inferred_i_17_n_0 ,\s_acc[4]_inferred_i_18_n_0 ,\s_acc[4]_inferred_i_19_n_0 }));
  CARRY4 \s_acc[4]_inferred_i_15 
       (.CI(1'b0),
        .CO({\s_acc[4]_inferred_i_15_n_0 ,\s_acc[4]_inferred_i_15_n_1 ,\s_acc[4]_inferred_i_15_n_2 ,\s_acc[4]_inferred_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_acc[4]_inferred_i_20_n_4 ,1'b0,1'b0,1'b1}),
        .O({\s_acc[4]_inferred_i_15_n_4 ,\s_acc[4]_inferred_i_15_n_5 ,\s_acc[4]_inferred_i_15_n_6 ,\s_acc[4]_inferred_i_15_n_7 }),
        .S({\s_acc[4]_inferred_i_21_n_0 ,\s_acc[4]_inferred_i_22_n_0 ,\s_acc[4]_inferred_i_23_n_0 ,\s_acc[4]_inferred_i_20_n_4 }));
  LUT2 #(
    .INIT(4'hB)) 
    \s_acc[4]_inferred_i_16 
       (.I0(\s_acc[4]_inferred_i_15_n_4 ),
        .I1(\s_acc[4]_inferred_i_20_n_4 ),
        .O(\s_acc[4]_inferred_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \s_acc[4]_inferred_i_17 
       (.I0(\s_acc[4]_inferred_i_24_n_6 ),
        .I1(\s_acc[4]_inferred_i_25_n_6 ),
        .I2(\s_acc[4]_inferred_i_20_n_4 ),
        .I3(\s_acc[4]_inferred_i_24_n_7 ),
        .I4(\s_acc[4]_inferred_i_25_n_7 ),
        .O(\s_acc[4]_inferred_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \s_acc[4]_inferred_i_18 
       (.I0(\s_acc[4]_inferred_i_20_n_4 ),
        .I1(\s_acc[4]_inferred_i_15_n_4 ),
        .I2(\s_acc[4]_inferred_i_25_n_7 ),
        .I3(\s_acc[4]_inferred_i_24_n_7 ),
        .O(\s_acc[4]_inferred_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[4]_inferred_i_19 
       (.I0(\s_acc[4]_inferred_i_20_n_4 ),
        .I1(\s_acc[4]_inferred_i_15_n_4 ),
        .O(\s_acc[4]_inferred_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h6AAA6AAA2AAAAAAA)) 
    \s_acc[4]_inferred_i_2 
       (.I0(\s_acc[4]_inferred_i_6_n_4 ),
        .I1(\s_acc[4]_inferred_i_6_n_6 ),
        .I2(\s_acc[4]_inferred_i_6_n_7 ),
        .I3(\s_acc[4]_inferred_i_6_n_5 ),
        .I4(\s_acc[4]_inferred_i_7_n_7 ),
        .I5(\s_acc[4]_inferred_i_7_n_6 ),
        .O(\s_acc[4] [3]));
  CARRY4 \s_acc[4]_inferred_i_20 
       (.CI(\s_acc[4]_inferred_i_26_n_0 ),
        .CO({\s_acc[4]_inferred_i_20_n_0 ,\s_acc[4]_inferred_i_20_n_1 ,\s_acc[4]_inferred_i_20_n_2 ,\s_acc[4]_inferred_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_acc[4]_inferred_i_27_n_0 ,\s_acc[4]_inferred_i_28_n_0 ,\s_acc[4]_inferred_i_29_n_0 ,\s_acc[4]_inferred_i_30_n_0 }),
        .O({\s_acc[4]_inferred_i_20_n_4 ,\NLW_s_acc[4]_inferred_i_20_O_UNCONNECTED [2:0]}),
        .S({\s_acc[4]_inferred_i_31_n_0 ,\s_acc[4]_inferred_i_32_n_0 ,\s_acc[4]_inferred_i_33_n_0 ,\s_acc[4]_inferred_i_34_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[4]_inferred_i_21 
       (.I0(\s_acc[4]_inferred_i_20_n_4 ),
        .I1(\s_acc[4]_inferred_i_24_n_5 ),
        .O(\s_acc[4]_inferred_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_acc[4]_inferred_i_22 
       (.I0(\s_acc[4]_inferred_i_24_n_6 ),
        .O(\s_acc[4]_inferred_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_acc[4]_inferred_i_23 
       (.I0(\s_acc[4]_inferred_i_24_n_7 ),
        .O(\s_acc[4]_inferred_i_23_n_0 ));
  CARRY4 \s_acc[4]_inferred_i_24 
       (.CI(\s_acc[4]_inferred_i_20_n_0 ),
        .CO({\s_acc[4]_inferred_i_24_n_0 ,\s_acc[4]_inferred_i_24_n_1 ,\s_acc[4]_inferred_i_24_n_2 ,\s_acc[4]_inferred_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_acc[4]_inferred_i_35_n_0 ,\s_acc[4]_inferred_i_36_n_0 ,\s_acc[4]_inferred_i_37_n_0 ,\s_acc[4]_inferred_i_38_n_0 }),
        .O({\s_acc[4]_inferred_i_24_n_4 ,\s_acc[4]_inferred_i_24_n_5 ,\s_acc[4]_inferred_i_24_n_6 ,\s_acc[4]_inferred_i_24_n_7 }),
        .S({\s_acc[4]_inferred_i_39_n_0 ,\s_acc[4]_inferred_i_40_n_0 ,\s_acc[4]_inferred_i_41_n_0 ,\s_acc[4]_inferred_i_42_n_0 }));
  CARRY4 \s_acc[4]_inferred_i_25 
       (.CI(\s_acc[4]_inferred_i_15_n_0 ),
        .CO({\NLW_s_acc[4]_inferred_i_25_CO_UNCONNECTED [3:1],\s_acc[4]_inferred_i_25_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\s_acc[4]_inferred_i_24_n_7 }),
        .O({\NLW_s_acc[4]_inferred_i_25_O_UNCONNECTED [3:2],\s_acc[4]_inferred_i_25_n_6 ,\s_acc[4]_inferred_i_25_n_7 }),
        .S({1'b0,1'b0,\s_acc[4]_inferred_i_43_n_0 ,\s_acc[4]_inferred_i_44_n_0 }));
  CARRY4 \s_acc[4]_inferred_i_26 
       (.CI(\s_acc[4]_inferred_i_45_n_0 ),
        .CO({\s_acc[4]_inferred_i_26_n_0 ,\s_acc[4]_inferred_i_26_n_1 ,\s_acc[4]_inferred_i_26_n_2 ,\s_acc[4]_inferred_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_acc[4]_inferred_i_46_n_0 ,\acc_b_reg_n_95_[0] ,\acc_b_reg_n_96_[0] ,\acc_b_reg_n_97_[0] }),
        .O(\NLW_s_acc[4]_inferred_i_26_O_UNCONNECTED [3:0]),
        .S({\s_acc[4]_inferred_i_47_n_0 ,\s_acc[4]_inferred_i_48_n_0 ,\s_acc[4]_inferred_i_49_n_0 ,\s_acc[4]_inferred_i_50_n_0 }));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[4]_inferred_i_27 
       (.I0(\acc_b_reg_n_101_[0] ),
        .I1(\acc_b_reg_n_96_[0] ),
        .I2(\acc_b_reg_n_91_[0] ),
        .O(\s_acc[4]_inferred_i_27_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[4]_inferred_i_28 
       (.I0(\acc_b_reg_n_102_[0] ),
        .I1(\acc_b_reg_n_97_[0] ),
        .I2(\acc_b_reg_n_92_[0] ),
        .O(\s_acc[4]_inferred_i_28_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[4]_inferred_i_29 
       (.I0(\acc_b_reg_n_103_[0] ),
        .I1(\acc_b_reg_n_98_[0] ),
        .I2(\acc_b_reg_n_93_[0] ),
        .O(\s_acc[4]_inferred_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h3FC03FC07F00FF00)) 
    \s_acc[4]_inferred_i_3 
       (.I0(\s_acc[4]_inferred_i_6_n_4 ),
        .I1(\s_acc[4]_inferred_i_6_n_6 ),
        .I2(\s_acc[4]_inferred_i_6_n_7 ),
        .I3(\s_acc[4]_inferred_i_6_n_5 ),
        .I4(\s_acc[4]_inferred_i_7_n_7 ),
        .I5(\s_acc[4]_inferred_i_7_n_6 ),
        .O(\s_acc[4] [2]));
  (* HLUTNM = "lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[4]_inferred_i_30 
       (.I0(\acc_b_reg_n_104_[0] ),
        .I1(\acc_b_reg_n_99_[0] ),
        .I2(\acc_b_reg_n_94_[0] ),
        .O(\s_acc[4]_inferred_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \s_acc[4]_inferred_i_31 
       (.I0(\s_acc[4]_inferred_i_27_n_0 ),
        .I1(\acc_b_reg_n_95_[0] ),
        .I2(\acc_b_reg_n_100_[0] ),
        .I3(\acc_b_reg_n_90_[0] ),
        .O(\s_acc[4]_inferred_i_31_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \s_acc[4]_inferred_i_32 
       (.I0(\acc_b_reg_n_101_[0] ),
        .I1(\acc_b_reg_n_96_[0] ),
        .I2(\acc_b_reg_n_91_[0] ),
        .I3(\s_acc[4]_inferred_i_28_n_0 ),
        .O(\s_acc[4]_inferred_i_32_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \s_acc[4]_inferred_i_33 
       (.I0(\acc_b_reg_n_102_[0] ),
        .I1(\acc_b_reg_n_97_[0] ),
        .I2(\acc_b_reg_n_92_[0] ),
        .I3(\s_acc[4]_inferred_i_29_n_0 ),
        .O(\s_acc[4]_inferred_i_33_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \s_acc[4]_inferred_i_34 
       (.I0(\acc_b_reg_n_103_[0] ),
        .I1(\acc_b_reg_n_98_[0] ),
        .I2(\acc_b_reg_n_93_[0] ),
        .I3(\s_acc[4]_inferred_i_30_n_0 ),
        .O(\s_acc[4]_inferred_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_acc[4]_inferred_i_35 
       (.I0(\acc_b_reg_n_92_[0] ),
        .I1(\acc_b_reg_n_97_[0] ),
        .O(\s_acc[4]_inferred_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_acc[4]_inferred_i_36 
       (.I0(\acc_b_reg_n_93_[0] ),
        .I1(\acc_b_reg_n_98_[0] ),
        .O(\s_acc[4]_inferred_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_acc[4]_inferred_i_37 
       (.I0(\acc_b_reg_n_94_[0] ),
        .I1(\acc_b_reg_n_99_[0] ),
        .O(\s_acc[4]_inferred_i_37_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[4]_inferred_i_38 
       (.I0(\acc_b_reg_n_100_[0] ),
        .I1(\acc_b_reg_n_95_[0] ),
        .I2(\acc_b_reg_n_90_[0] ),
        .O(\s_acc[4]_inferred_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \s_acc[4]_inferred_i_39 
       (.I0(\acc_b_reg_n_92_[0] ),
        .I1(\acc_b_reg_n_97_[0] ),
        .I2(\acc_b_reg_n_96_[0] ),
        .I3(\acc_b_reg_n_91_[0] ),
        .O(\s_acc[4]_inferred_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C3C3C4CCCCCCC)) 
    \s_acc[4]_inferred_i_4 
       (.I0(\s_acc[4]_inferred_i_6_n_4 ),
        .I1(\s_acc[4]_inferred_i_6_n_6 ),
        .I2(\s_acc[4]_inferred_i_6_n_7 ),
        .I3(\s_acc[4]_inferred_i_6_n_5 ),
        .I4(\s_acc[4]_inferred_i_7_n_7 ),
        .I5(\s_acc[4]_inferred_i_7_n_6 ),
        .O(\s_acc[4] [1]));
  LUT4 #(
    .INIT(16'h8778)) 
    \s_acc[4]_inferred_i_40 
       (.I0(\acc_b_reg_n_93_[0] ),
        .I1(\acc_b_reg_n_98_[0] ),
        .I2(\acc_b_reg_n_97_[0] ),
        .I3(\acc_b_reg_n_92_[0] ),
        .O(\s_acc[4]_inferred_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \s_acc[4]_inferred_i_41 
       (.I0(\acc_b_reg_n_94_[0] ),
        .I1(\acc_b_reg_n_99_[0] ),
        .I2(\acc_b_reg_n_98_[0] ),
        .I3(\acc_b_reg_n_93_[0] ),
        .O(\s_acc[4]_inferred_i_41_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \s_acc[4]_inferred_i_42 
       (.I0(\acc_b_reg_n_90_[0] ),
        .I1(\acc_b_reg_n_95_[0] ),
        .I2(\acc_b_reg_n_100_[0] ),
        .I3(\acc_b_reg_n_99_[0] ),
        .I4(\acc_b_reg_n_94_[0] ),
        .O(\s_acc[4]_inferred_i_42_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[4]_inferred_i_43 
       (.I0(\s_acc[4]_inferred_i_24_n_6 ),
        .I1(\s_acc[4]_inferred_i_51_n_7 ),
        .O(\s_acc[4]_inferred_i_43_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[4]_inferred_i_44 
       (.I0(\s_acc[4]_inferred_i_24_n_7 ),
        .I1(\s_acc[4]_inferred_i_24_n_4 ),
        .O(\s_acc[4]_inferred_i_44_n_0 ));
  CARRY4 \s_acc[4]_inferred_i_45 
       (.CI(1'b0),
        .CO({\s_acc[4]_inferred_i_45_n_0 ,\s_acc[4]_inferred_i_45_n_1 ,\s_acc[4]_inferred_i_45_n_2 ,\s_acc[4]_inferred_i_45_n_3 }),
        .CYINIT(1'b0),
        .DI({\acc_b_reg_n_98_[0] ,\acc_b_reg_n_99_[0] ,\acc_b_reg_n_100_[0] ,1'b0}),
        .O(\NLW_s_acc[4]_inferred_i_45_O_UNCONNECTED [3:0]),
        .S({\s_acc[4]_inferred_i_52_n_0 ,\s_acc[4]_inferred_i_53_n_0 ,\s_acc[4]_inferred_i_54_n_0 ,\acc_b_reg_n_101_[0] }));
  LUT3 #(
    .INIT(8'h96)) 
    \s_acc[4]_inferred_i_46 
       (.I0(\acc_b_reg_n_94_[0] ),
        .I1(\acc_b_reg_n_104_[0] ),
        .I2(\acc_b_reg_n_99_[0] ),
        .O(\s_acc[4]_inferred_i_46_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \s_acc[4]_inferred_i_47 
       (.I0(\acc_b_reg_n_104_[0] ),
        .I1(\acc_b_reg_n_99_[0] ),
        .I2(\acc_b_reg_n_94_[0] ),
        .I3(\acc_b_reg_n_100_[0] ),
        .I4(\acc_b_reg_n_105_[0] ),
        .O(\s_acc[4]_inferred_i_47_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \s_acc[4]_inferred_i_48 
       (.I0(\acc_b_reg_n_105_[0] ),
        .I1(\acc_b_reg_n_100_[0] ),
        .I2(\acc_b_reg_n_95_[0] ),
        .O(\s_acc[4]_inferred_i_48_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[4]_inferred_i_49 
       (.I0(\acc_b_reg_n_96_[0] ),
        .I1(\acc_b_reg_n_101_[0] ),
        .O(\s_acc[4]_inferred_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h15555555AAAAAAAA)) 
    \s_acc[4]_inferred_i_5 
       (.I0(\s_acc[4]_inferred_i_7_n_6 ),
        .I1(\s_acc[4]_inferred_i_7_n_7 ),
        .I2(\s_acc[4]_inferred_i_6_n_5 ),
        .I3(\s_acc[4]_inferred_i_6_n_6 ),
        .I4(\s_acc[4]_inferred_i_6_n_4 ),
        .I5(\s_acc[4]_inferred_i_6_n_7 ),
        .O(\s_acc[4] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[4]_inferred_i_50 
       (.I0(\acc_b_reg_n_97_[0] ),
        .I1(\acc_b_reg_n_102_[0] ),
        .O(\s_acc[4]_inferred_i_50_n_0 ));
  CARRY4 \s_acc[4]_inferred_i_51 
       (.CI(\s_acc[4]_inferred_i_24_n_0 ),
        .CO(\NLW_s_acc[4]_inferred_i_51_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_s_acc[4]_inferred_i_51_O_UNCONNECTED [3:1],\s_acc[4]_inferred_i_51_n_7 }),
        .S({1'b0,1'b0,1'b0,\s_acc[4]_inferred_i_55_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[4]_inferred_i_52 
       (.I0(\acc_b_reg_n_98_[0] ),
        .I1(\acc_b_reg_n_103_[0] ),
        .O(\s_acc[4]_inferred_i_52_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[4]_inferred_i_53 
       (.I0(\acc_b_reg_n_99_[0] ),
        .I1(\acc_b_reg_n_104_[0] ),
        .O(\s_acc[4]_inferred_i_53_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[4]_inferred_i_54 
       (.I0(\acc_b_reg_n_100_[0] ),
        .I1(\acc_b_reg_n_105_[0] ),
        .O(\s_acc[4]_inferred_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \s_acc[4]_inferred_i_55 
       (.I0(\acc_b_reg_n_91_[0] ),
        .I1(\acc_b_reg_n_96_[0] ),
        .I2(\acc_b_reg_n_95_[0] ),
        .I3(\acc_b_reg_n_90_[0] ),
        .O(\s_acc[4]_inferred_i_55_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_acc[4]_inferred_i_6 
       (.CI(1'b0),
        .CO({\s_acc[4]_inferred_i_6_n_0 ,\s_acc[4]_inferred_i_6_n_1 ,\s_acc[4]_inferred_i_6_n_2 ,\s_acc[4]_inferred_i_6_n_3 }),
        .CYINIT(1'b1),
        .DI({\acc_b_reg_n_102_[0] ,\acc_b_reg_n_103_[0] ,\acc_b_reg_n_104_[0] ,\acc_b_reg_n_105_[0] }),
        .O({\s_acc[4]_inferred_i_6_n_4 ,\s_acc[4]_inferred_i_6_n_5 ,\s_acc[4]_inferred_i_6_n_6 ,\s_acc[4]_inferred_i_6_n_7 }),
        .S({\s_acc[4]_inferred_i_8_n_0 ,\s_acc[4]_inferred_i_9_n_0 ,\s_acc[4]_inferred_i_10_n_0 ,\s_acc[4]_inferred_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_acc[4]_inferred_i_7 
       (.CI(\s_acc[4]_inferred_i_6_n_0 ),
        .CO({\NLW_s_acc[4]_inferred_i_7_CO_UNCONNECTED [3:1],\s_acc[4]_inferred_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\acc_b_reg_n_101_[0] }),
        .O({\NLW_s_acc[4]_inferred_i_7_O_UNCONNECTED [3:2],\s_acc[4]_inferred_i_7_n_6 ,\s_acc[4]_inferred_i_7_n_7 }),
        .S({1'b0,1'b0,\s_acc[4]_inferred_i_12_n_0 ,\s_acc[4]_inferred_i_13_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[4]_inferred_i_8 
       (.I0(\acc_b_reg_n_102_[0] ),
        .I1(\s_acc[4]_inferred_i_14_n_7 ),
        .O(\s_acc[4]_inferred_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[4]_inferred_i_9 
       (.I0(\acc_b_reg_n_103_[0] ),
        .I1(\s_acc[4]_inferred_i_15_n_5 ),
        .O(\s_acc[4]_inferred_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF80007FFF0000)) 
    \s_acc[5]_inferred_i_1 
       (.I0(\s_acc[5]_inferred_i_6_n_4 ),
        .I1(\s_acc[5]_inferred_i_6_n_6 ),
        .I2(\s_acc[5]_inferred_i_6_n_7 ),
        .I3(\s_acc[5]_inferred_i_6_n_5 ),
        .I4(\s_acc[5]_inferred_i_7_n_7 ),
        .I5(\s_acc[5]_inferred_i_7_n_6 ),
        .O(\s_acc[5] [4]));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[5]_inferred_i_10 
       (.I0(\acc_b_reg_n_104_[1] ),
        .I1(\s_acc[5]_inferred_i_15_n_6 ),
        .O(\s_acc[5]_inferred_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[5]_inferred_i_11 
       (.I0(\acc_b_reg_n_105_[1] ),
        .I1(\s_acc[5]_inferred_i_15_n_7 ),
        .O(\s_acc[5]_inferred_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[5]_inferred_i_12 
       (.I0(\acc_b_reg_n_100_[1] ),
        .I1(\s_acc[5]_inferred_i_14_n_5 ),
        .O(\s_acc[5]_inferred_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[5]_inferred_i_13 
       (.I0(\acc_b_reg_n_101_[1] ),
        .I1(\s_acc[5]_inferred_i_14_n_6 ),
        .O(\s_acc[5]_inferred_i_13_n_0 ));
  CARRY4 \s_acc[5]_inferred_i_14 
       (.CI(1'b0),
        .CO({\NLW_s_acc[5]_inferred_i_14_CO_UNCONNECTED [3:2],\s_acc[5]_inferred_i_14_n_2 ,\s_acc[5]_inferred_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\s_acc[5]_inferred_i_16_n_0 ,1'b0}),
        .O({\NLW_s_acc[5]_inferred_i_14_O_UNCONNECTED [3],\s_acc[5]_inferred_i_14_n_5 ,\s_acc[5]_inferred_i_14_n_6 ,\s_acc[5]_inferred_i_14_n_7 }),
        .S({1'b0,\s_acc[5]_inferred_i_17_n_0 ,\s_acc[5]_inferred_i_18_n_0 ,\s_acc[5]_inferred_i_19_n_0 }));
  CARRY4 \s_acc[5]_inferred_i_15 
       (.CI(1'b0),
        .CO({\s_acc[5]_inferred_i_15_n_0 ,\s_acc[5]_inferred_i_15_n_1 ,\s_acc[5]_inferred_i_15_n_2 ,\s_acc[5]_inferred_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_acc[5]_inferred_i_20_n_4 ,1'b0,1'b0,1'b1}),
        .O({\s_acc[5]_inferred_i_15_n_4 ,\s_acc[5]_inferred_i_15_n_5 ,\s_acc[5]_inferred_i_15_n_6 ,\s_acc[5]_inferred_i_15_n_7 }),
        .S({\s_acc[5]_inferred_i_21_n_0 ,\s_acc[5]_inferred_i_22_n_0 ,\s_acc[5]_inferred_i_23_n_0 ,\s_acc[5]_inferred_i_20_n_4 }));
  LUT2 #(
    .INIT(4'hB)) 
    \s_acc[5]_inferred_i_16 
       (.I0(\s_acc[5]_inferred_i_15_n_4 ),
        .I1(\s_acc[5]_inferred_i_20_n_4 ),
        .O(\s_acc[5]_inferred_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \s_acc[5]_inferred_i_17 
       (.I0(\s_acc[5]_inferred_i_24_n_6 ),
        .I1(\s_acc[5]_inferred_i_25_n_6 ),
        .I2(\s_acc[5]_inferred_i_20_n_4 ),
        .I3(\s_acc[5]_inferred_i_24_n_7 ),
        .I4(\s_acc[5]_inferred_i_25_n_7 ),
        .O(\s_acc[5]_inferred_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \s_acc[5]_inferred_i_18 
       (.I0(\s_acc[5]_inferred_i_20_n_4 ),
        .I1(\s_acc[5]_inferred_i_15_n_4 ),
        .I2(\s_acc[5]_inferred_i_25_n_7 ),
        .I3(\s_acc[5]_inferred_i_24_n_7 ),
        .O(\s_acc[5]_inferred_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[5]_inferred_i_19 
       (.I0(\s_acc[5]_inferred_i_20_n_4 ),
        .I1(\s_acc[5]_inferred_i_15_n_4 ),
        .O(\s_acc[5]_inferred_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h6AAA6AAA2AAAAAAA)) 
    \s_acc[5]_inferred_i_2 
       (.I0(\s_acc[5]_inferred_i_6_n_4 ),
        .I1(\s_acc[5]_inferred_i_6_n_6 ),
        .I2(\s_acc[5]_inferred_i_6_n_7 ),
        .I3(\s_acc[5]_inferred_i_6_n_5 ),
        .I4(\s_acc[5]_inferred_i_7_n_7 ),
        .I5(\s_acc[5]_inferred_i_7_n_6 ),
        .O(\s_acc[5] [3]));
  CARRY4 \s_acc[5]_inferred_i_20 
       (.CI(\s_acc[5]_inferred_i_26_n_0 ),
        .CO({\s_acc[5]_inferred_i_20_n_0 ,\s_acc[5]_inferred_i_20_n_1 ,\s_acc[5]_inferred_i_20_n_2 ,\s_acc[5]_inferred_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_acc[5]_inferred_i_27_n_0 ,\s_acc[5]_inferred_i_28_n_0 ,\s_acc[5]_inferred_i_29_n_0 ,\s_acc[5]_inferred_i_30_n_0 }),
        .O({\s_acc[5]_inferred_i_20_n_4 ,\NLW_s_acc[5]_inferred_i_20_O_UNCONNECTED [2:0]}),
        .S({\s_acc[5]_inferred_i_31_n_0 ,\s_acc[5]_inferred_i_32_n_0 ,\s_acc[5]_inferred_i_33_n_0 ,\s_acc[5]_inferred_i_34_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[5]_inferred_i_21 
       (.I0(\s_acc[5]_inferred_i_20_n_4 ),
        .I1(\s_acc[5]_inferred_i_24_n_5 ),
        .O(\s_acc[5]_inferred_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_acc[5]_inferred_i_22 
       (.I0(\s_acc[5]_inferred_i_24_n_6 ),
        .O(\s_acc[5]_inferred_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_acc[5]_inferred_i_23 
       (.I0(\s_acc[5]_inferred_i_24_n_7 ),
        .O(\s_acc[5]_inferred_i_23_n_0 ));
  CARRY4 \s_acc[5]_inferred_i_24 
       (.CI(\s_acc[5]_inferred_i_20_n_0 ),
        .CO({\s_acc[5]_inferred_i_24_n_0 ,\s_acc[5]_inferred_i_24_n_1 ,\s_acc[5]_inferred_i_24_n_2 ,\s_acc[5]_inferred_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_acc[5]_inferred_i_35_n_0 ,\s_acc[5]_inferred_i_36_n_0 ,\s_acc[5]_inferred_i_37_n_0 ,\s_acc[5]_inferred_i_38_n_0 }),
        .O({\s_acc[5]_inferred_i_24_n_4 ,\s_acc[5]_inferred_i_24_n_5 ,\s_acc[5]_inferred_i_24_n_6 ,\s_acc[5]_inferred_i_24_n_7 }),
        .S({\s_acc[5]_inferred_i_39_n_0 ,\s_acc[5]_inferred_i_40_n_0 ,\s_acc[5]_inferred_i_41_n_0 ,\s_acc[5]_inferred_i_42_n_0 }));
  CARRY4 \s_acc[5]_inferred_i_25 
       (.CI(\s_acc[5]_inferred_i_15_n_0 ),
        .CO({\NLW_s_acc[5]_inferred_i_25_CO_UNCONNECTED [3:1],\s_acc[5]_inferred_i_25_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\s_acc[5]_inferred_i_24_n_7 }),
        .O({\NLW_s_acc[5]_inferred_i_25_O_UNCONNECTED [3:2],\s_acc[5]_inferred_i_25_n_6 ,\s_acc[5]_inferred_i_25_n_7 }),
        .S({1'b0,1'b0,\s_acc[5]_inferred_i_43_n_0 ,\s_acc[5]_inferred_i_44_n_0 }));
  CARRY4 \s_acc[5]_inferred_i_26 
       (.CI(\s_acc[5]_inferred_i_45_n_0 ),
        .CO({\s_acc[5]_inferred_i_26_n_0 ,\s_acc[5]_inferred_i_26_n_1 ,\s_acc[5]_inferred_i_26_n_2 ,\s_acc[5]_inferred_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_acc[5]_inferred_i_46_n_0 ,\acc_b_reg_n_95_[1] ,\acc_b_reg_n_96_[1] ,\acc_b_reg_n_97_[1] }),
        .O(\NLW_s_acc[5]_inferred_i_26_O_UNCONNECTED [3:0]),
        .S({\s_acc[5]_inferred_i_47_n_0 ,\s_acc[5]_inferred_i_48_n_0 ,\s_acc[5]_inferred_i_49_n_0 ,\s_acc[5]_inferred_i_50_n_0 }));
  (* HLUTNM = "lutpair23" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[5]_inferred_i_27 
       (.I0(\acc_b_reg_n_101_[1] ),
        .I1(\acc_b_reg_n_96_[1] ),
        .I2(\acc_b_reg_n_91_[1] ),
        .O(\s_acc[5]_inferred_i_27_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[5]_inferred_i_28 
       (.I0(\acc_b_reg_n_102_[1] ),
        .I1(\acc_b_reg_n_97_[1] ),
        .I2(\acc_b_reg_n_92_[1] ),
        .O(\s_acc[5]_inferred_i_28_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[5]_inferred_i_29 
       (.I0(\acc_b_reg_n_103_[1] ),
        .I1(\acc_b_reg_n_98_[1] ),
        .I2(\acc_b_reg_n_93_[1] ),
        .O(\s_acc[5]_inferred_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h3FC03FC07F00FF00)) 
    \s_acc[5]_inferred_i_3 
       (.I0(\s_acc[5]_inferred_i_6_n_4 ),
        .I1(\s_acc[5]_inferred_i_6_n_6 ),
        .I2(\s_acc[5]_inferred_i_6_n_7 ),
        .I3(\s_acc[5]_inferred_i_6_n_5 ),
        .I4(\s_acc[5]_inferred_i_7_n_7 ),
        .I5(\s_acc[5]_inferred_i_7_n_6 ),
        .O(\s_acc[5] [2]));
  (* HLUTNM = "lutpair20" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[5]_inferred_i_30 
       (.I0(\acc_b_reg_n_104_[1] ),
        .I1(\acc_b_reg_n_99_[1] ),
        .I2(\acc_b_reg_n_94_[1] ),
        .O(\s_acc[5]_inferred_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \s_acc[5]_inferred_i_31 
       (.I0(\s_acc[5]_inferred_i_27_n_0 ),
        .I1(\acc_b_reg_n_95_[1] ),
        .I2(\acc_b_reg_n_100_[1] ),
        .I3(\acc_b_reg_n_90_[1] ),
        .O(\s_acc[5]_inferred_i_31_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \s_acc[5]_inferred_i_32 
       (.I0(\acc_b_reg_n_101_[1] ),
        .I1(\acc_b_reg_n_96_[1] ),
        .I2(\acc_b_reg_n_91_[1] ),
        .I3(\s_acc[5]_inferred_i_28_n_0 ),
        .O(\s_acc[5]_inferred_i_32_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \s_acc[5]_inferred_i_33 
       (.I0(\acc_b_reg_n_102_[1] ),
        .I1(\acc_b_reg_n_97_[1] ),
        .I2(\acc_b_reg_n_92_[1] ),
        .I3(\s_acc[5]_inferred_i_29_n_0 ),
        .O(\s_acc[5]_inferred_i_33_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \s_acc[5]_inferred_i_34 
       (.I0(\acc_b_reg_n_103_[1] ),
        .I1(\acc_b_reg_n_98_[1] ),
        .I2(\acc_b_reg_n_93_[1] ),
        .I3(\s_acc[5]_inferred_i_30_n_0 ),
        .O(\s_acc[5]_inferred_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_acc[5]_inferred_i_35 
       (.I0(\acc_b_reg_n_92_[1] ),
        .I1(\acc_b_reg_n_97_[1] ),
        .O(\s_acc[5]_inferred_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_acc[5]_inferred_i_36 
       (.I0(\acc_b_reg_n_93_[1] ),
        .I1(\acc_b_reg_n_98_[1] ),
        .O(\s_acc[5]_inferred_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_acc[5]_inferred_i_37 
       (.I0(\acc_b_reg_n_94_[1] ),
        .I1(\acc_b_reg_n_99_[1] ),
        .O(\s_acc[5]_inferred_i_37_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[5]_inferred_i_38 
       (.I0(\acc_b_reg_n_100_[1] ),
        .I1(\acc_b_reg_n_95_[1] ),
        .I2(\acc_b_reg_n_90_[1] ),
        .O(\s_acc[5]_inferred_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \s_acc[5]_inferred_i_39 
       (.I0(\acc_b_reg_n_92_[1] ),
        .I1(\acc_b_reg_n_97_[1] ),
        .I2(\acc_b_reg_n_96_[1] ),
        .I3(\acc_b_reg_n_91_[1] ),
        .O(\s_acc[5]_inferred_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C3C3C4CCCCCCC)) 
    \s_acc[5]_inferred_i_4 
       (.I0(\s_acc[5]_inferred_i_6_n_4 ),
        .I1(\s_acc[5]_inferred_i_6_n_6 ),
        .I2(\s_acc[5]_inferred_i_6_n_7 ),
        .I3(\s_acc[5]_inferred_i_6_n_5 ),
        .I4(\s_acc[5]_inferred_i_7_n_7 ),
        .I5(\s_acc[5]_inferred_i_7_n_6 ),
        .O(\s_acc[5] [1]));
  LUT4 #(
    .INIT(16'h8778)) 
    \s_acc[5]_inferred_i_40 
       (.I0(\acc_b_reg_n_93_[1] ),
        .I1(\acc_b_reg_n_98_[1] ),
        .I2(\acc_b_reg_n_97_[1] ),
        .I3(\acc_b_reg_n_92_[1] ),
        .O(\s_acc[5]_inferred_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \s_acc[5]_inferred_i_41 
       (.I0(\acc_b_reg_n_94_[1] ),
        .I1(\acc_b_reg_n_99_[1] ),
        .I2(\acc_b_reg_n_98_[1] ),
        .I3(\acc_b_reg_n_93_[1] ),
        .O(\s_acc[5]_inferred_i_41_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \s_acc[5]_inferred_i_42 
       (.I0(\acc_b_reg_n_90_[1] ),
        .I1(\acc_b_reg_n_95_[1] ),
        .I2(\acc_b_reg_n_100_[1] ),
        .I3(\acc_b_reg_n_99_[1] ),
        .I4(\acc_b_reg_n_94_[1] ),
        .O(\s_acc[5]_inferred_i_42_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[5]_inferred_i_43 
       (.I0(\s_acc[5]_inferred_i_24_n_6 ),
        .I1(\s_acc[5]_inferred_i_51_n_7 ),
        .O(\s_acc[5]_inferred_i_43_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[5]_inferred_i_44 
       (.I0(\s_acc[5]_inferred_i_24_n_7 ),
        .I1(\s_acc[5]_inferred_i_24_n_4 ),
        .O(\s_acc[5]_inferred_i_44_n_0 ));
  CARRY4 \s_acc[5]_inferred_i_45 
       (.CI(1'b0),
        .CO({\s_acc[5]_inferred_i_45_n_0 ,\s_acc[5]_inferred_i_45_n_1 ,\s_acc[5]_inferred_i_45_n_2 ,\s_acc[5]_inferred_i_45_n_3 }),
        .CYINIT(1'b0),
        .DI({\acc_b_reg_n_98_[1] ,\acc_b_reg_n_99_[1] ,\acc_b_reg_n_100_[1] ,1'b0}),
        .O(\NLW_s_acc[5]_inferred_i_45_O_UNCONNECTED [3:0]),
        .S({\s_acc[5]_inferred_i_52_n_0 ,\s_acc[5]_inferred_i_53_n_0 ,\s_acc[5]_inferred_i_54_n_0 ,\acc_b_reg_n_101_[1] }));
  LUT3 #(
    .INIT(8'h96)) 
    \s_acc[5]_inferred_i_46 
       (.I0(\acc_b_reg_n_94_[1] ),
        .I1(\acc_b_reg_n_104_[1] ),
        .I2(\acc_b_reg_n_99_[1] ),
        .O(\s_acc[5]_inferred_i_46_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \s_acc[5]_inferred_i_47 
       (.I0(\acc_b_reg_n_104_[1] ),
        .I1(\acc_b_reg_n_99_[1] ),
        .I2(\acc_b_reg_n_94_[1] ),
        .I3(\acc_b_reg_n_100_[1] ),
        .I4(\acc_b_reg_n_105_[1] ),
        .O(\s_acc[5]_inferred_i_47_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \s_acc[5]_inferred_i_48 
       (.I0(\acc_b_reg_n_105_[1] ),
        .I1(\acc_b_reg_n_100_[1] ),
        .I2(\acc_b_reg_n_95_[1] ),
        .O(\s_acc[5]_inferred_i_48_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[5]_inferred_i_49 
       (.I0(\acc_b_reg_n_96_[1] ),
        .I1(\acc_b_reg_n_101_[1] ),
        .O(\s_acc[5]_inferred_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h15555555AAAAAAAA)) 
    \s_acc[5]_inferred_i_5 
       (.I0(\s_acc[5]_inferred_i_7_n_6 ),
        .I1(\s_acc[5]_inferred_i_7_n_7 ),
        .I2(\s_acc[5]_inferred_i_6_n_5 ),
        .I3(\s_acc[5]_inferred_i_6_n_6 ),
        .I4(\s_acc[5]_inferred_i_6_n_4 ),
        .I5(\s_acc[5]_inferred_i_6_n_7 ),
        .O(\s_acc[5] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[5]_inferred_i_50 
       (.I0(\acc_b_reg_n_97_[1] ),
        .I1(\acc_b_reg_n_102_[1] ),
        .O(\s_acc[5]_inferred_i_50_n_0 ));
  CARRY4 \s_acc[5]_inferred_i_51 
       (.CI(\s_acc[5]_inferred_i_24_n_0 ),
        .CO(\NLW_s_acc[5]_inferred_i_51_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_s_acc[5]_inferred_i_51_O_UNCONNECTED [3:1],\s_acc[5]_inferred_i_51_n_7 }),
        .S({1'b0,1'b0,1'b0,\s_acc[5]_inferred_i_55_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[5]_inferred_i_52 
       (.I0(\acc_b_reg_n_98_[1] ),
        .I1(\acc_b_reg_n_103_[1] ),
        .O(\s_acc[5]_inferred_i_52_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[5]_inferred_i_53 
       (.I0(\acc_b_reg_n_99_[1] ),
        .I1(\acc_b_reg_n_104_[1] ),
        .O(\s_acc[5]_inferred_i_53_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[5]_inferred_i_54 
       (.I0(\acc_b_reg_n_100_[1] ),
        .I1(\acc_b_reg_n_105_[1] ),
        .O(\s_acc[5]_inferred_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \s_acc[5]_inferred_i_55 
       (.I0(\acc_b_reg_n_91_[1] ),
        .I1(\acc_b_reg_n_96_[1] ),
        .I2(\acc_b_reg_n_95_[1] ),
        .I3(\acc_b_reg_n_90_[1] ),
        .O(\s_acc[5]_inferred_i_55_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_acc[5]_inferred_i_6 
       (.CI(1'b0),
        .CO({\s_acc[5]_inferred_i_6_n_0 ,\s_acc[5]_inferred_i_6_n_1 ,\s_acc[5]_inferred_i_6_n_2 ,\s_acc[5]_inferred_i_6_n_3 }),
        .CYINIT(1'b1),
        .DI({\acc_b_reg_n_102_[1] ,\acc_b_reg_n_103_[1] ,\acc_b_reg_n_104_[1] ,\acc_b_reg_n_105_[1] }),
        .O({\s_acc[5]_inferred_i_6_n_4 ,\s_acc[5]_inferred_i_6_n_5 ,\s_acc[5]_inferred_i_6_n_6 ,\s_acc[5]_inferred_i_6_n_7 }),
        .S({\s_acc[5]_inferred_i_8_n_0 ,\s_acc[5]_inferred_i_9_n_0 ,\s_acc[5]_inferred_i_10_n_0 ,\s_acc[5]_inferred_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_acc[5]_inferred_i_7 
       (.CI(\s_acc[5]_inferred_i_6_n_0 ),
        .CO({\NLW_s_acc[5]_inferred_i_7_CO_UNCONNECTED [3:1],\s_acc[5]_inferred_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\acc_b_reg_n_101_[1] }),
        .O({\NLW_s_acc[5]_inferred_i_7_O_UNCONNECTED [3:2],\s_acc[5]_inferred_i_7_n_6 ,\s_acc[5]_inferred_i_7_n_7 }),
        .S({1'b0,1'b0,\s_acc[5]_inferred_i_12_n_0 ,\s_acc[5]_inferred_i_13_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[5]_inferred_i_8 
       (.I0(\acc_b_reg_n_102_[1] ),
        .I1(\s_acc[5]_inferred_i_14_n_7 ),
        .O(\s_acc[5]_inferred_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[5]_inferred_i_9 
       (.I0(\acc_b_reg_n_103_[1] ),
        .I1(\s_acc[5]_inferred_i_15_n_5 ),
        .O(\s_acc[5]_inferred_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF80007FFF0000)) 
    \s_acc[6]_inferred_i_1 
       (.I0(\s_acc[6]_inferred_i_6_n_4 ),
        .I1(\s_acc[6]_inferred_i_6_n_6 ),
        .I2(\s_acc[6]_inferred_i_6_n_7 ),
        .I3(\s_acc[6]_inferred_i_6_n_5 ),
        .I4(\s_acc[6]_inferred_i_7_n_7 ),
        .I5(\s_acc[6]_inferred_i_7_n_6 ),
        .O(\s_acc[6] [4]));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[6]_inferred_i_10 
       (.I0(\acc_b_reg_n_104_[2] ),
        .I1(\s_acc[6]_inferred_i_15_n_6 ),
        .O(\s_acc[6]_inferred_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[6]_inferred_i_11 
       (.I0(\acc_b_reg_n_105_[2] ),
        .I1(\s_acc[6]_inferred_i_15_n_7 ),
        .O(\s_acc[6]_inferred_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[6]_inferred_i_12 
       (.I0(\acc_b_reg_n_100_[2] ),
        .I1(\s_acc[6]_inferred_i_14_n_5 ),
        .O(\s_acc[6]_inferred_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[6]_inferred_i_13 
       (.I0(\acc_b_reg_n_101_[2] ),
        .I1(\s_acc[6]_inferred_i_14_n_6 ),
        .O(\s_acc[6]_inferred_i_13_n_0 ));
  CARRY4 \s_acc[6]_inferred_i_14 
       (.CI(1'b0),
        .CO({\NLW_s_acc[6]_inferred_i_14_CO_UNCONNECTED [3:2],\s_acc[6]_inferred_i_14_n_2 ,\s_acc[6]_inferred_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\s_acc[6]_inferred_i_16_n_0 ,1'b0}),
        .O({\NLW_s_acc[6]_inferred_i_14_O_UNCONNECTED [3],\s_acc[6]_inferred_i_14_n_5 ,\s_acc[6]_inferred_i_14_n_6 ,\s_acc[6]_inferred_i_14_n_7 }),
        .S({1'b0,\s_acc[6]_inferred_i_17_n_0 ,\s_acc[6]_inferred_i_18_n_0 ,\s_acc[6]_inferred_i_19_n_0 }));
  CARRY4 \s_acc[6]_inferred_i_15 
       (.CI(1'b0),
        .CO({\s_acc[6]_inferred_i_15_n_0 ,\s_acc[6]_inferred_i_15_n_1 ,\s_acc[6]_inferred_i_15_n_2 ,\s_acc[6]_inferred_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_acc[6]_inferred_i_20_n_4 ,1'b0,1'b0,1'b1}),
        .O({\s_acc[6]_inferred_i_15_n_4 ,\s_acc[6]_inferred_i_15_n_5 ,\s_acc[6]_inferred_i_15_n_6 ,\s_acc[6]_inferred_i_15_n_7 }),
        .S({\s_acc[6]_inferred_i_21_n_0 ,\s_acc[6]_inferred_i_22_n_0 ,\s_acc[6]_inferred_i_23_n_0 ,\s_acc[6]_inferred_i_20_n_4 }));
  LUT2 #(
    .INIT(4'hB)) 
    \s_acc[6]_inferred_i_16 
       (.I0(\s_acc[6]_inferred_i_15_n_4 ),
        .I1(\s_acc[6]_inferred_i_20_n_4 ),
        .O(\s_acc[6]_inferred_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \s_acc[6]_inferred_i_17 
       (.I0(\s_acc[6]_inferred_i_24_n_6 ),
        .I1(\s_acc[6]_inferred_i_25_n_6 ),
        .I2(\s_acc[6]_inferred_i_20_n_4 ),
        .I3(\s_acc[6]_inferred_i_24_n_7 ),
        .I4(\s_acc[6]_inferred_i_25_n_7 ),
        .O(\s_acc[6]_inferred_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \s_acc[6]_inferred_i_18 
       (.I0(\s_acc[6]_inferred_i_20_n_4 ),
        .I1(\s_acc[6]_inferred_i_15_n_4 ),
        .I2(\s_acc[6]_inferred_i_25_n_7 ),
        .I3(\s_acc[6]_inferred_i_24_n_7 ),
        .O(\s_acc[6]_inferred_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[6]_inferred_i_19 
       (.I0(\s_acc[6]_inferred_i_20_n_4 ),
        .I1(\s_acc[6]_inferred_i_15_n_4 ),
        .O(\s_acc[6]_inferred_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h6AAA6AAA2AAAAAAA)) 
    \s_acc[6]_inferred_i_2 
       (.I0(\s_acc[6]_inferred_i_6_n_4 ),
        .I1(\s_acc[6]_inferred_i_6_n_6 ),
        .I2(\s_acc[6]_inferred_i_6_n_7 ),
        .I3(\s_acc[6]_inferred_i_6_n_5 ),
        .I4(\s_acc[6]_inferred_i_7_n_7 ),
        .I5(\s_acc[6]_inferred_i_7_n_6 ),
        .O(\s_acc[6] [3]));
  CARRY4 \s_acc[6]_inferred_i_20 
       (.CI(\s_acc[6]_inferred_i_26_n_0 ),
        .CO({\s_acc[6]_inferred_i_20_n_0 ,\s_acc[6]_inferred_i_20_n_1 ,\s_acc[6]_inferred_i_20_n_2 ,\s_acc[6]_inferred_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_acc[6]_inferred_i_27_n_0 ,\s_acc[6]_inferred_i_28_n_0 ,\s_acc[6]_inferred_i_29_n_0 ,\s_acc[6]_inferred_i_30_n_0 }),
        .O({\s_acc[6]_inferred_i_20_n_4 ,\NLW_s_acc[6]_inferred_i_20_O_UNCONNECTED [2:0]}),
        .S({\s_acc[6]_inferred_i_31_n_0 ,\s_acc[6]_inferred_i_32_n_0 ,\s_acc[6]_inferred_i_33_n_0 ,\s_acc[6]_inferred_i_34_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[6]_inferred_i_21 
       (.I0(\s_acc[6]_inferred_i_20_n_4 ),
        .I1(\s_acc[6]_inferred_i_24_n_5 ),
        .O(\s_acc[6]_inferred_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_acc[6]_inferred_i_22 
       (.I0(\s_acc[6]_inferred_i_24_n_6 ),
        .O(\s_acc[6]_inferred_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_acc[6]_inferred_i_23 
       (.I0(\s_acc[6]_inferred_i_24_n_7 ),
        .O(\s_acc[6]_inferred_i_23_n_0 ));
  CARRY4 \s_acc[6]_inferred_i_24 
       (.CI(\s_acc[6]_inferred_i_20_n_0 ),
        .CO({\s_acc[6]_inferred_i_24_n_0 ,\s_acc[6]_inferred_i_24_n_1 ,\s_acc[6]_inferred_i_24_n_2 ,\s_acc[6]_inferred_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_acc[6]_inferred_i_35_n_0 ,\s_acc[6]_inferred_i_36_n_0 ,\s_acc[6]_inferred_i_37_n_0 ,\s_acc[6]_inferred_i_38_n_0 }),
        .O({\s_acc[6]_inferred_i_24_n_4 ,\s_acc[6]_inferred_i_24_n_5 ,\s_acc[6]_inferred_i_24_n_6 ,\s_acc[6]_inferred_i_24_n_7 }),
        .S({\s_acc[6]_inferred_i_39_n_0 ,\s_acc[6]_inferred_i_40_n_0 ,\s_acc[6]_inferred_i_41_n_0 ,\s_acc[6]_inferred_i_42_n_0 }));
  CARRY4 \s_acc[6]_inferred_i_25 
       (.CI(\s_acc[6]_inferred_i_15_n_0 ),
        .CO({\NLW_s_acc[6]_inferred_i_25_CO_UNCONNECTED [3:1],\s_acc[6]_inferred_i_25_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\s_acc[6]_inferred_i_24_n_7 }),
        .O({\NLW_s_acc[6]_inferred_i_25_O_UNCONNECTED [3:2],\s_acc[6]_inferred_i_25_n_6 ,\s_acc[6]_inferred_i_25_n_7 }),
        .S({1'b0,1'b0,\s_acc[6]_inferred_i_43_n_0 ,\s_acc[6]_inferred_i_44_n_0 }));
  CARRY4 \s_acc[6]_inferred_i_26 
       (.CI(\s_acc[6]_inferred_i_45_n_0 ),
        .CO({\s_acc[6]_inferred_i_26_n_0 ,\s_acc[6]_inferred_i_26_n_1 ,\s_acc[6]_inferred_i_26_n_2 ,\s_acc[6]_inferred_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_acc[6]_inferred_i_46_n_0 ,\acc_b_reg_n_95_[2] ,\acc_b_reg_n_96_[2] ,\acc_b_reg_n_97_[2] }),
        .O(\NLW_s_acc[6]_inferred_i_26_O_UNCONNECTED [3:0]),
        .S({\s_acc[6]_inferred_i_47_n_0 ,\s_acc[6]_inferred_i_48_n_0 ,\s_acc[6]_inferred_i_49_n_0 ,\s_acc[6]_inferred_i_50_n_0 }));
  (* HLUTNM = "lutpair27" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[6]_inferred_i_27 
       (.I0(\acc_b_reg_n_101_[2] ),
        .I1(\acc_b_reg_n_96_[2] ),
        .I2(\acc_b_reg_n_91_[2] ),
        .O(\s_acc[6]_inferred_i_27_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[6]_inferred_i_28 
       (.I0(\acc_b_reg_n_102_[2] ),
        .I1(\acc_b_reg_n_97_[2] ),
        .I2(\acc_b_reg_n_92_[2] ),
        .O(\s_acc[6]_inferred_i_28_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[6]_inferred_i_29 
       (.I0(\acc_b_reg_n_103_[2] ),
        .I1(\acc_b_reg_n_98_[2] ),
        .I2(\acc_b_reg_n_93_[2] ),
        .O(\s_acc[6]_inferred_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h3FC03FC07F00FF00)) 
    \s_acc[6]_inferred_i_3 
       (.I0(\s_acc[6]_inferred_i_6_n_4 ),
        .I1(\s_acc[6]_inferred_i_6_n_6 ),
        .I2(\s_acc[6]_inferred_i_6_n_7 ),
        .I3(\s_acc[6]_inferred_i_6_n_5 ),
        .I4(\s_acc[6]_inferred_i_7_n_7 ),
        .I5(\s_acc[6]_inferred_i_7_n_6 ),
        .O(\s_acc[6] [2]));
  (* HLUTNM = "lutpair24" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[6]_inferred_i_30 
       (.I0(\acc_b_reg_n_104_[2] ),
        .I1(\acc_b_reg_n_99_[2] ),
        .I2(\acc_b_reg_n_94_[2] ),
        .O(\s_acc[6]_inferred_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \s_acc[6]_inferred_i_31 
       (.I0(\s_acc[6]_inferred_i_27_n_0 ),
        .I1(\acc_b_reg_n_95_[2] ),
        .I2(\acc_b_reg_n_100_[2] ),
        .I3(\acc_b_reg_n_90_[2] ),
        .O(\s_acc[6]_inferred_i_31_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \s_acc[6]_inferred_i_32 
       (.I0(\acc_b_reg_n_101_[2] ),
        .I1(\acc_b_reg_n_96_[2] ),
        .I2(\acc_b_reg_n_91_[2] ),
        .I3(\s_acc[6]_inferred_i_28_n_0 ),
        .O(\s_acc[6]_inferred_i_32_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \s_acc[6]_inferred_i_33 
       (.I0(\acc_b_reg_n_102_[2] ),
        .I1(\acc_b_reg_n_97_[2] ),
        .I2(\acc_b_reg_n_92_[2] ),
        .I3(\s_acc[6]_inferred_i_29_n_0 ),
        .O(\s_acc[6]_inferred_i_33_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \s_acc[6]_inferred_i_34 
       (.I0(\acc_b_reg_n_103_[2] ),
        .I1(\acc_b_reg_n_98_[2] ),
        .I2(\acc_b_reg_n_93_[2] ),
        .I3(\s_acc[6]_inferred_i_30_n_0 ),
        .O(\s_acc[6]_inferred_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_acc[6]_inferred_i_35 
       (.I0(\acc_b_reg_n_92_[2] ),
        .I1(\acc_b_reg_n_97_[2] ),
        .O(\s_acc[6]_inferred_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_acc[6]_inferred_i_36 
       (.I0(\acc_b_reg_n_93_[2] ),
        .I1(\acc_b_reg_n_98_[2] ),
        .O(\s_acc[6]_inferred_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_acc[6]_inferred_i_37 
       (.I0(\acc_b_reg_n_94_[2] ),
        .I1(\acc_b_reg_n_99_[2] ),
        .O(\s_acc[6]_inferred_i_37_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[6]_inferred_i_38 
       (.I0(\acc_b_reg_n_100_[2] ),
        .I1(\acc_b_reg_n_95_[2] ),
        .I2(\acc_b_reg_n_90_[2] ),
        .O(\s_acc[6]_inferred_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \s_acc[6]_inferred_i_39 
       (.I0(\acc_b_reg_n_92_[2] ),
        .I1(\acc_b_reg_n_97_[2] ),
        .I2(\acc_b_reg_n_96_[2] ),
        .I3(\acc_b_reg_n_91_[2] ),
        .O(\s_acc[6]_inferred_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C3C3C4CCCCCCC)) 
    \s_acc[6]_inferred_i_4 
       (.I0(\s_acc[6]_inferred_i_6_n_4 ),
        .I1(\s_acc[6]_inferred_i_6_n_6 ),
        .I2(\s_acc[6]_inferred_i_6_n_7 ),
        .I3(\s_acc[6]_inferred_i_6_n_5 ),
        .I4(\s_acc[6]_inferred_i_7_n_7 ),
        .I5(\s_acc[6]_inferred_i_7_n_6 ),
        .O(\s_acc[6] [1]));
  LUT4 #(
    .INIT(16'h8778)) 
    \s_acc[6]_inferred_i_40 
       (.I0(\acc_b_reg_n_93_[2] ),
        .I1(\acc_b_reg_n_98_[2] ),
        .I2(\acc_b_reg_n_97_[2] ),
        .I3(\acc_b_reg_n_92_[2] ),
        .O(\s_acc[6]_inferred_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \s_acc[6]_inferred_i_41 
       (.I0(\acc_b_reg_n_94_[2] ),
        .I1(\acc_b_reg_n_99_[2] ),
        .I2(\acc_b_reg_n_98_[2] ),
        .I3(\acc_b_reg_n_93_[2] ),
        .O(\s_acc[6]_inferred_i_41_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \s_acc[6]_inferred_i_42 
       (.I0(\acc_b_reg_n_90_[2] ),
        .I1(\acc_b_reg_n_95_[2] ),
        .I2(\acc_b_reg_n_100_[2] ),
        .I3(\acc_b_reg_n_99_[2] ),
        .I4(\acc_b_reg_n_94_[2] ),
        .O(\s_acc[6]_inferred_i_42_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[6]_inferred_i_43 
       (.I0(\s_acc[6]_inferred_i_24_n_6 ),
        .I1(\s_acc[6]_inferred_i_51_n_7 ),
        .O(\s_acc[6]_inferred_i_43_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[6]_inferred_i_44 
       (.I0(\s_acc[6]_inferred_i_24_n_7 ),
        .I1(\s_acc[6]_inferred_i_24_n_4 ),
        .O(\s_acc[6]_inferred_i_44_n_0 ));
  CARRY4 \s_acc[6]_inferred_i_45 
       (.CI(1'b0),
        .CO({\s_acc[6]_inferred_i_45_n_0 ,\s_acc[6]_inferred_i_45_n_1 ,\s_acc[6]_inferred_i_45_n_2 ,\s_acc[6]_inferred_i_45_n_3 }),
        .CYINIT(1'b0),
        .DI({\acc_b_reg_n_98_[2] ,\acc_b_reg_n_99_[2] ,\acc_b_reg_n_100_[2] ,1'b0}),
        .O(\NLW_s_acc[6]_inferred_i_45_O_UNCONNECTED [3:0]),
        .S({\s_acc[6]_inferred_i_52_n_0 ,\s_acc[6]_inferred_i_53_n_0 ,\s_acc[6]_inferred_i_54_n_0 ,\acc_b_reg_n_101_[2] }));
  LUT3 #(
    .INIT(8'h96)) 
    \s_acc[6]_inferred_i_46 
       (.I0(\acc_b_reg_n_94_[2] ),
        .I1(\acc_b_reg_n_104_[2] ),
        .I2(\acc_b_reg_n_99_[2] ),
        .O(\s_acc[6]_inferred_i_46_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \s_acc[6]_inferred_i_47 
       (.I0(\acc_b_reg_n_104_[2] ),
        .I1(\acc_b_reg_n_99_[2] ),
        .I2(\acc_b_reg_n_94_[2] ),
        .I3(\acc_b_reg_n_100_[2] ),
        .I4(\acc_b_reg_n_105_[2] ),
        .O(\s_acc[6]_inferred_i_47_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \s_acc[6]_inferred_i_48 
       (.I0(\acc_b_reg_n_105_[2] ),
        .I1(\acc_b_reg_n_100_[2] ),
        .I2(\acc_b_reg_n_95_[2] ),
        .O(\s_acc[6]_inferred_i_48_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[6]_inferred_i_49 
       (.I0(\acc_b_reg_n_96_[2] ),
        .I1(\acc_b_reg_n_101_[2] ),
        .O(\s_acc[6]_inferred_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h15555555AAAAAAAA)) 
    \s_acc[6]_inferred_i_5 
       (.I0(\s_acc[6]_inferred_i_7_n_6 ),
        .I1(\s_acc[6]_inferred_i_7_n_7 ),
        .I2(\s_acc[6]_inferred_i_6_n_5 ),
        .I3(\s_acc[6]_inferred_i_6_n_6 ),
        .I4(\s_acc[6]_inferred_i_6_n_4 ),
        .I5(\s_acc[6]_inferred_i_6_n_7 ),
        .O(\s_acc[6] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[6]_inferred_i_50 
       (.I0(\acc_b_reg_n_97_[2] ),
        .I1(\acc_b_reg_n_102_[2] ),
        .O(\s_acc[6]_inferred_i_50_n_0 ));
  CARRY4 \s_acc[6]_inferred_i_51 
       (.CI(\s_acc[6]_inferred_i_24_n_0 ),
        .CO(\NLW_s_acc[6]_inferred_i_51_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_s_acc[6]_inferred_i_51_O_UNCONNECTED [3:1],\s_acc[6]_inferred_i_51_n_7 }),
        .S({1'b0,1'b0,1'b0,\s_acc[6]_inferred_i_55_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[6]_inferred_i_52 
       (.I0(\acc_b_reg_n_98_[2] ),
        .I1(\acc_b_reg_n_103_[2] ),
        .O(\s_acc[6]_inferred_i_52_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[6]_inferred_i_53 
       (.I0(\acc_b_reg_n_99_[2] ),
        .I1(\acc_b_reg_n_104_[2] ),
        .O(\s_acc[6]_inferred_i_53_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[6]_inferred_i_54 
       (.I0(\acc_b_reg_n_100_[2] ),
        .I1(\acc_b_reg_n_105_[2] ),
        .O(\s_acc[6]_inferred_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \s_acc[6]_inferred_i_55 
       (.I0(\acc_b_reg_n_91_[2] ),
        .I1(\acc_b_reg_n_96_[2] ),
        .I2(\acc_b_reg_n_95_[2] ),
        .I3(\acc_b_reg_n_90_[2] ),
        .O(\s_acc[6]_inferred_i_55_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_acc[6]_inferred_i_6 
       (.CI(1'b0),
        .CO({\s_acc[6]_inferred_i_6_n_0 ,\s_acc[6]_inferred_i_6_n_1 ,\s_acc[6]_inferred_i_6_n_2 ,\s_acc[6]_inferred_i_6_n_3 }),
        .CYINIT(1'b1),
        .DI({\acc_b_reg_n_102_[2] ,\acc_b_reg_n_103_[2] ,\acc_b_reg_n_104_[2] ,\acc_b_reg_n_105_[2] }),
        .O({\s_acc[6]_inferred_i_6_n_4 ,\s_acc[6]_inferred_i_6_n_5 ,\s_acc[6]_inferred_i_6_n_6 ,\s_acc[6]_inferred_i_6_n_7 }),
        .S({\s_acc[6]_inferred_i_8_n_0 ,\s_acc[6]_inferred_i_9_n_0 ,\s_acc[6]_inferred_i_10_n_0 ,\s_acc[6]_inferred_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_acc[6]_inferred_i_7 
       (.CI(\s_acc[6]_inferred_i_6_n_0 ),
        .CO({\NLW_s_acc[6]_inferred_i_7_CO_UNCONNECTED [3:1],\s_acc[6]_inferred_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\acc_b_reg_n_101_[2] }),
        .O({\NLW_s_acc[6]_inferred_i_7_O_UNCONNECTED [3:2],\s_acc[6]_inferred_i_7_n_6 ,\s_acc[6]_inferred_i_7_n_7 }),
        .S({1'b0,1'b0,\s_acc[6]_inferred_i_12_n_0 ,\s_acc[6]_inferred_i_13_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[6]_inferred_i_8 
       (.I0(\acc_b_reg_n_102_[2] ),
        .I1(\s_acc[6]_inferred_i_14_n_7 ),
        .O(\s_acc[6]_inferred_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[6]_inferred_i_9 
       (.I0(\acc_b_reg_n_103_[2] ),
        .I1(\s_acc[6]_inferred_i_15_n_5 ),
        .O(\s_acc[6]_inferred_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF80007FFF0000)) 
    \s_acc[7]_inferred_i_1 
       (.I0(\s_acc[7]_inferred_i_6_n_4 ),
        .I1(\s_acc[7]_inferred_i_6_n_6 ),
        .I2(\s_acc[7]_inferred_i_6_n_7 ),
        .I3(\s_acc[7]_inferred_i_6_n_5 ),
        .I4(\s_acc[7]_inferred_i_7_n_7 ),
        .I5(\s_acc[7]_inferred_i_7_n_6 ),
        .O(\s_acc[7] [4]));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[7]_inferred_i_10 
       (.I0(\acc_b_reg_n_104_[3] ),
        .I1(\s_acc[7]_inferred_i_15_n_6 ),
        .O(\s_acc[7]_inferred_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[7]_inferred_i_11 
       (.I0(\acc_b_reg_n_105_[3] ),
        .I1(\s_acc[7]_inferred_i_15_n_7 ),
        .O(\s_acc[7]_inferred_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[7]_inferred_i_12 
       (.I0(\acc_b_reg_n_100_[3] ),
        .I1(\s_acc[7]_inferred_i_14_n_5 ),
        .O(\s_acc[7]_inferred_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[7]_inferred_i_13 
       (.I0(\acc_b_reg_n_101_[3] ),
        .I1(\s_acc[7]_inferred_i_14_n_6 ),
        .O(\s_acc[7]_inferred_i_13_n_0 ));
  CARRY4 \s_acc[7]_inferred_i_14 
       (.CI(1'b0),
        .CO({\NLW_s_acc[7]_inferred_i_14_CO_UNCONNECTED [3:2],\s_acc[7]_inferred_i_14_n_2 ,\s_acc[7]_inferred_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\s_acc[7]_inferred_i_16_n_0 ,1'b0}),
        .O({\NLW_s_acc[7]_inferred_i_14_O_UNCONNECTED [3],\s_acc[7]_inferred_i_14_n_5 ,\s_acc[7]_inferred_i_14_n_6 ,\s_acc[7]_inferred_i_14_n_7 }),
        .S({1'b0,\s_acc[7]_inferred_i_17_n_0 ,\s_acc[7]_inferred_i_18_n_0 ,\s_acc[7]_inferred_i_19_n_0 }));
  CARRY4 \s_acc[7]_inferred_i_15 
       (.CI(1'b0),
        .CO({\s_acc[7]_inferred_i_15_n_0 ,\s_acc[7]_inferred_i_15_n_1 ,\s_acc[7]_inferred_i_15_n_2 ,\s_acc[7]_inferred_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_acc[7]_inferred_i_20_n_4 ,1'b0,1'b0,1'b1}),
        .O({\s_acc[7]_inferred_i_15_n_4 ,\s_acc[7]_inferred_i_15_n_5 ,\s_acc[7]_inferred_i_15_n_6 ,\s_acc[7]_inferred_i_15_n_7 }),
        .S({\s_acc[7]_inferred_i_21_n_0 ,\s_acc[7]_inferred_i_22_n_0 ,\s_acc[7]_inferred_i_23_n_0 ,\s_acc[7]_inferred_i_20_n_4 }));
  LUT2 #(
    .INIT(4'hB)) 
    \s_acc[7]_inferred_i_16 
       (.I0(\s_acc[7]_inferred_i_15_n_4 ),
        .I1(\s_acc[7]_inferred_i_20_n_4 ),
        .O(\s_acc[7]_inferred_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \s_acc[7]_inferred_i_17 
       (.I0(\s_acc[7]_inferred_i_24_n_6 ),
        .I1(\s_acc[7]_inferred_i_25_n_6 ),
        .I2(\s_acc[7]_inferred_i_20_n_4 ),
        .I3(\s_acc[7]_inferred_i_24_n_7 ),
        .I4(\s_acc[7]_inferred_i_25_n_7 ),
        .O(\s_acc[7]_inferred_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \s_acc[7]_inferred_i_18 
       (.I0(\s_acc[7]_inferred_i_20_n_4 ),
        .I1(\s_acc[7]_inferred_i_15_n_4 ),
        .I2(\s_acc[7]_inferred_i_25_n_7 ),
        .I3(\s_acc[7]_inferred_i_24_n_7 ),
        .O(\s_acc[7]_inferred_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[7]_inferred_i_19 
       (.I0(\s_acc[7]_inferred_i_20_n_4 ),
        .I1(\s_acc[7]_inferred_i_15_n_4 ),
        .O(\s_acc[7]_inferred_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h6AAA6AAA2AAAAAAA)) 
    \s_acc[7]_inferred_i_2 
       (.I0(\s_acc[7]_inferred_i_6_n_4 ),
        .I1(\s_acc[7]_inferred_i_6_n_6 ),
        .I2(\s_acc[7]_inferred_i_6_n_7 ),
        .I3(\s_acc[7]_inferred_i_6_n_5 ),
        .I4(\s_acc[7]_inferred_i_7_n_7 ),
        .I5(\s_acc[7]_inferred_i_7_n_6 ),
        .O(\s_acc[7] [3]));
  CARRY4 \s_acc[7]_inferred_i_20 
       (.CI(\s_acc[7]_inferred_i_26_n_0 ),
        .CO({\s_acc[7]_inferred_i_20_n_0 ,\s_acc[7]_inferred_i_20_n_1 ,\s_acc[7]_inferred_i_20_n_2 ,\s_acc[7]_inferred_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_acc[7]_inferred_i_27_n_0 ,\s_acc[7]_inferred_i_28_n_0 ,\s_acc[7]_inferred_i_29_n_0 ,\s_acc[7]_inferred_i_30_n_0 }),
        .O({\s_acc[7]_inferred_i_20_n_4 ,\NLW_s_acc[7]_inferred_i_20_O_UNCONNECTED [2:0]}),
        .S({\s_acc[7]_inferred_i_31_n_0 ,\s_acc[7]_inferred_i_32_n_0 ,\s_acc[7]_inferred_i_33_n_0 ,\s_acc[7]_inferred_i_34_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[7]_inferred_i_21 
       (.I0(\s_acc[7]_inferred_i_20_n_4 ),
        .I1(\s_acc[7]_inferred_i_24_n_5 ),
        .O(\s_acc[7]_inferred_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_acc[7]_inferred_i_22 
       (.I0(\s_acc[7]_inferred_i_24_n_6 ),
        .O(\s_acc[7]_inferred_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_acc[7]_inferred_i_23 
       (.I0(\s_acc[7]_inferred_i_24_n_7 ),
        .O(\s_acc[7]_inferred_i_23_n_0 ));
  CARRY4 \s_acc[7]_inferred_i_24 
       (.CI(\s_acc[7]_inferred_i_20_n_0 ),
        .CO({\s_acc[7]_inferred_i_24_n_0 ,\s_acc[7]_inferred_i_24_n_1 ,\s_acc[7]_inferred_i_24_n_2 ,\s_acc[7]_inferred_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_acc[7]_inferred_i_35_n_0 ,\s_acc[7]_inferred_i_36_n_0 ,\s_acc[7]_inferred_i_37_n_0 ,\s_acc[7]_inferred_i_38_n_0 }),
        .O({\s_acc[7]_inferred_i_24_n_4 ,\s_acc[7]_inferred_i_24_n_5 ,\s_acc[7]_inferred_i_24_n_6 ,\s_acc[7]_inferred_i_24_n_7 }),
        .S({\s_acc[7]_inferred_i_39_n_0 ,\s_acc[7]_inferred_i_40_n_0 ,\s_acc[7]_inferred_i_41_n_0 ,\s_acc[7]_inferred_i_42_n_0 }));
  CARRY4 \s_acc[7]_inferred_i_25 
       (.CI(\s_acc[7]_inferred_i_15_n_0 ),
        .CO({\NLW_s_acc[7]_inferred_i_25_CO_UNCONNECTED [3:1],\s_acc[7]_inferred_i_25_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\s_acc[7]_inferred_i_24_n_7 }),
        .O({\NLW_s_acc[7]_inferred_i_25_O_UNCONNECTED [3:2],\s_acc[7]_inferred_i_25_n_6 ,\s_acc[7]_inferred_i_25_n_7 }),
        .S({1'b0,1'b0,\s_acc[7]_inferred_i_43_n_0 ,\s_acc[7]_inferred_i_44_n_0 }));
  CARRY4 \s_acc[7]_inferred_i_26 
       (.CI(\s_acc[7]_inferred_i_45_n_0 ),
        .CO({\s_acc[7]_inferred_i_26_n_0 ,\s_acc[7]_inferred_i_26_n_1 ,\s_acc[7]_inferred_i_26_n_2 ,\s_acc[7]_inferred_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_acc[7]_inferred_i_46_n_0 ,\acc_b_reg_n_95_[3] ,\acc_b_reg_n_96_[3] ,\acc_b_reg_n_97_[3] }),
        .O(\NLW_s_acc[7]_inferred_i_26_O_UNCONNECTED [3:0]),
        .S({\s_acc[7]_inferred_i_47_n_0 ,\s_acc[7]_inferred_i_48_n_0 ,\s_acc[7]_inferred_i_49_n_0 ,\s_acc[7]_inferred_i_50_n_0 }));
  (* HLUTNM = "lutpair31" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[7]_inferred_i_27 
       (.I0(\acc_b_reg_n_101_[3] ),
        .I1(\acc_b_reg_n_96_[3] ),
        .I2(\acc_b_reg_n_91_[3] ),
        .O(\s_acc[7]_inferred_i_27_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[7]_inferred_i_28 
       (.I0(\acc_b_reg_n_102_[3] ),
        .I1(\acc_b_reg_n_97_[3] ),
        .I2(\acc_b_reg_n_92_[3] ),
        .O(\s_acc[7]_inferred_i_28_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[7]_inferred_i_29 
       (.I0(\acc_b_reg_n_103_[3] ),
        .I1(\acc_b_reg_n_98_[3] ),
        .I2(\acc_b_reg_n_93_[3] ),
        .O(\s_acc[7]_inferred_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h3FC03FC07F00FF00)) 
    \s_acc[7]_inferred_i_3 
       (.I0(\s_acc[7]_inferred_i_6_n_4 ),
        .I1(\s_acc[7]_inferred_i_6_n_6 ),
        .I2(\s_acc[7]_inferred_i_6_n_7 ),
        .I3(\s_acc[7]_inferred_i_6_n_5 ),
        .I4(\s_acc[7]_inferred_i_7_n_7 ),
        .I5(\s_acc[7]_inferred_i_7_n_6 ),
        .O(\s_acc[7] [2]));
  (* HLUTNM = "lutpair28" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[7]_inferred_i_30 
       (.I0(\acc_b_reg_n_104_[3] ),
        .I1(\acc_b_reg_n_99_[3] ),
        .I2(\acc_b_reg_n_94_[3] ),
        .O(\s_acc[7]_inferred_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \s_acc[7]_inferred_i_31 
       (.I0(\s_acc[7]_inferred_i_27_n_0 ),
        .I1(\acc_b_reg_n_95_[3] ),
        .I2(\acc_b_reg_n_100_[3] ),
        .I3(\acc_b_reg_n_90_[3] ),
        .O(\s_acc[7]_inferred_i_31_n_0 ));
  (* HLUTNM = "lutpair31" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \s_acc[7]_inferred_i_32 
       (.I0(\acc_b_reg_n_101_[3] ),
        .I1(\acc_b_reg_n_96_[3] ),
        .I2(\acc_b_reg_n_91_[3] ),
        .I3(\s_acc[7]_inferred_i_28_n_0 ),
        .O(\s_acc[7]_inferred_i_32_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \s_acc[7]_inferred_i_33 
       (.I0(\acc_b_reg_n_102_[3] ),
        .I1(\acc_b_reg_n_97_[3] ),
        .I2(\acc_b_reg_n_92_[3] ),
        .I3(\s_acc[7]_inferred_i_29_n_0 ),
        .O(\s_acc[7]_inferred_i_33_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \s_acc[7]_inferred_i_34 
       (.I0(\acc_b_reg_n_103_[3] ),
        .I1(\acc_b_reg_n_98_[3] ),
        .I2(\acc_b_reg_n_93_[3] ),
        .I3(\s_acc[7]_inferred_i_30_n_0 ),
        .O(\s_acc[7]_inferred_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_acc[7]_inferred_i_35 
       (.I0(\acc_b_reg_n_92_[3] ),
        .I1(\acc_b_reg_n_97_[3] ),
        .O(\s_acc[7]_inferred_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_acc[7]_inferred_i_36 
       (.I0(\acc_b_reg_n_93_[3] ),
        .I1(\acc_b_reg_n_98_[3] ),
        .O(\s_acc[7]_inferred_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_acc[7]_inferred_i_37 
       (.I0(\acc_b_reg_n_94_[3] ),
        .I1(\acc_b_reg_n_99_[3] ),
        .O(\s_acc[7]_inferred_i_37_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \s_acc[7]_inferred_i_38 
       (.I0(\acc_b_reg_n_100_[3] ),
        .I1(\acc_b_reg_n_95_[3] ),
        .I2(\acc_b_reg_n_90_[3] ),
        .O(\s_acc[7]_inferred_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \s_acc[7]_inferred_i_39 
       (.I0(\acc_b_reg_n_92_[3] ),
        .I1(\acc_b_reg_n_97_[3] ),
        .I2(\acc_b_reg_n_96_[3] ),
        .I3(\acc_b_reg_n_91_[3] ),
        .O(\s_acc[7]_inferred_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C3C3C4CCCCCCC)) 
    \s_acc[7]_inferred_i_4 
       (.I0(\s_acc[7]_inferred_i_6_n_4 ),
        .I1(\s_acc[7]_inferred_i_6_n_6 ),
        .I2(\s_acc[7]_inferred_i_6_n_7 ),
        .I3(\s_acc[7]_inferred_i_6_n_5 ),
        .I4(\s_acc[7]_inferred_i_7_n_7 ),
        .I5(\s_acc[7]_inferred_i_7_n_6 ),
        .O(\s_acc[7] [1]));
  LUT4 #(
    .INIT(16'h8778)) 
    \s_acc[7]_inferred_i_40 
       (.I0(\acc_b_reg_n_93_[3] ),
        .I1(\acc_b_reg_n_98_[3] ),
        .I2(\acc_b_reg_n_97_[3] ),
        .I3(\acc_b_reg_n_92_[3] ),
        .O(\s_acc[7]_inferred_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \s_acc[7]_inferred_i_41 
       (.I0(\acc_b_reg_n_94_[3] ),
        .I1(\acc_b_reg_n_99_[3] ),
        .I2(\acc_b_reg_n_98_[3] ),
        .I3(\acc_b_reg_n_93_[3] ),
        .O(\s_acc[7]_inferred_i_41_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \s_acc[7]_inferred_i_42 
       (.I0(\acc_b_reg_n_90_[3] ),
        .I1(\acc_b_reg_n_95_[3] ),
        .I2(\acc_b_reg_n_100_[3] ),
        .I3(\acc_b_reg_n_99_[3] ),
        .I4(\acc_b_reg_n_94_[3] ),
        .O(\s_acc[7]_inferred_i_42_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[7]_inferred_i_43 
       (.I0(\s_acc[7]_inferred_i_24_n_6 ),
        .I1(\s_acc[7]_inferred_i_51_n_7 ),
        .O(\s_acc[7]_inferred_i_43_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[7]_inferred_i_44 
       (.I0(\s_acc[7]_inferred_i_24_n_7 ),
        .I1(\s_acc[7]_inferred_i_24_n_4 ),
        .O(\s_acc[7]_inferred_i_44_n_0 ));
  CARRY4 \s_acc[7]_inferred_i_45 
       (.CI(1'b0),
        .CO({\s_acc[7]_inferred_i_45_n_0 ,\s_acc[7]_inferred_i_45_n_1 ,\s_acc[7]_inferred_i_45_n_2 ,\s_acc[7]_inferred_i_45_n_3 }),
        .CYINIT(1'b0),
        .DI({\acc_b_reg_n_98_[3] ,\acc_b_reg_n_99_[3] ,\acc_b_reg_n_100_[3] ,1'b0}),
        .O(\NLW_s_acc[7]_inferred_i_45_O_UNCONNECTED [3:0]),
        .S({\s_acc[7]_inferred_i_52_n_0 ,\s_acc[7]_inferred_i_53_n_0 ,\s_acc[7]_inferred_i_54_n_0 ,\acc_b_reg_n_101_[3] }));
  LUT3 #(
    .INIT(8'h96)) 
    \s_acc[7]_inferred_i_46 
       (.I0(\acc_b_reg_n_94_[3] ),
        .I1(\acc_b_reg_n_104_[3] ),
        .I2(\acc_b_reg_n_99_[3] ),
        .O(\s_acc[7]_inferred_i_46_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \s_acc[7]_inferred_i_47 
       (.I0(\acc_b_reg_n_104_[3] ),
        .I1(\acc_b_reg_n_99_[3] ),
        .I2(\acc_b_reg_n_94_[3] ),
        .I3(\acc_b_reg_n_100_[3] ),
        .I4(\acc_b_reg_n_105_[3] ),
        .O(\s_acc[7]_inferred_i_47_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \s_acc[7]_inferred_i_48 
       (.I0(\acc_b_reg_n_105_[3] ),
        .I1(\acc_b_reg_n_100_[3] ),
        .I2(\acc_b_reg_n_95_[3] ),
        .O(\s_acc[7]_inferred_i_48_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[7]_inferred_i_49 
       (.I0(\acc_b_reg_n_96_[3] ),
        .I1(\acc_b_reg_n_101_[3] ),
        .O(\s_acc[7]_inferred_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h15555555AAAAAAAA)) 
    \s_acc[7]_inferred_i_5 
       (.I0(\s_acc[7]_inferred_i_7_n_6 ),
        .I1(\s_acc[7]_inferred_i_7_n_7 ),
        .I2(\s_acc[7]_inferred_i_6_n_5 ),
        .I3(\s_acc[7]_inferred_i_6_n_6 ),
        .I4(\s_acc[7]_inferred_i_6_n_4 ),
        .I5(\s_acc[7]_inferred_i_6_n_7 ),
        .O(\s_acc[7] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[7]_inferred_i_50 
       (.I0(\acc_b_reg_n_97_[3] ),
        .I1(\acc_b_reg_n_102_[3] ),
        .O(\s_acc[7]_inferred_i_50_n_0 ));
  CARRY4 \s_acc[7]_inferred_i_51 
       (.CI(\s_acc[7]_inferred_i_24_n_0 ),
        .CO(\NLW_s_acc[7]_inferred_i_51_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_s_acc[7]_inferred_i_51_O_UNCONNECTED [3:1],\s_acc[7]_inferred_i_51_n_7 }),
        .S({1'b0,1'b0,1'b0,\s_acc[7]_inferred_i_55_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[7]_inferred_i_52 
       (.I0(\acc_b_reg_n_98_[3] ),
        .I1(\acc_b_reg_n_103_[3] ),
        .O(\s_acc[7]_inferred_i_52_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[7]_inferred_i_53 
       (.I0(\acc_b_reg_n_99_[3] ),
        .I1(\acc_b_reg_n_104_[3] ),
        .O(\s_acc[7]_inferred_i_53_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_acc[7]_inferred_i_54 
       (.I0(\acc_b_reg_n_100_[3] ),
        .I1(\acc_b_reg_n_105_[3] ),
        .O(\s_acc[7]_inferred_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \s_acc[7]_inferred_i_55 
       (.I0(\acc_b_reg_n_91_[3] ),
        .I1(\acc_b_reg_n_96_[3] ),
        .I2(\acc_b_reg_n_95_[3] ),
        .I3(\acc_b_reg_n_90_[3] ),
        .O(\s_acc[7]_inferred_i_55_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_acc[7]_inferred_i_6 
       (.CI(1'b0),
        .CO({\s_acc[7]_inferred_i_6_n_0 ,\s_acc[7]_inferred_i_6_n_1 ,\s_acc[7]_inferred_i_6_n_2 ,\s_acc[7]_inferred_i_6_n_3 }),
        .CYINIT(1'b1),
        .DI({\acc_b_reg_n_102_[3] ,\acc_b_reg_n_103_[3] ,\acc_b_reg_n_104_[3] ,\acc_b_reg_n_105_[3] }),
        .O({\s_acc[7]_inferred_i_6_n_4 ,\s_acc[7]_inferred_i_6_n_5 ,\s_acc[7]_inferred_i_6_n_6 ,\s_acc[7]_inferred_i_6_n_7 }),
        .S({\s_acc[7]_inferred_i_8_n_0 ,\s_acc[7]_inferred_i_9_n_0 ,\s_acc[7]_inferred_i_10_n_0 ,\s_acc[7]_inferred_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_acc[7]_inferred_i_7 
       (.CI(\s_acc[7]_inferred_i_6_n_0 ),
        .CO({\NLW_s_acc[7]_inferred_i_7_CO_UNCONNECTED [3:1],\s_acc[7]_inferred_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\acc_b_reg_n_101_[3] }),
        .O({\NLW_s_acc[7]_inferred_i_7_O_UNCONNECTED [3:2],\s_acc[7]_inferred_i_7_n_6 ,\s_acc[7]_inferred_i_7_n_7 }),
        .S({1'b0,1'b0,\s_acc[7]_inferred_i_12_n_0 ,\s_acc[7]_inferred_i_13_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[7]_inferred_i_8 
       (.I0(\acc_b_reg_n_102_[3] ),
        .I1(\s_acc[7]_inferred_i_14_n_7 ),
        .O(\s_acc[7]_inferred_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_acc[7]_inferred_i_9 
       (.I0(\acc_b_reg_n_103_[3] ),
        .I1(\s_acc[7]_inferred_i_15_n_5 ),
        .O(\s_acc[7]_inferred_i_9_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "Mayo_sign_mayo_linear_combinat_0_0,mayo_linear_combination,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "mayo_linear_combination,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (i_clk,
    rst,
    i_enable,
    o_done,
    i_bram_halt,
    i_vec_addr,
    i_coeffs_addr,
    i_out_addr,
    i_len,
    i_mem0a_dout,
    o_mem0a_din,
    o_mem0a_addr,
    o_mem0a_en,
    o_mem0a_rst,
    o_mem0a_we,
    i_mem0b_dout,
    o_mem0b_din,
    o_mem0b_addr,
    o_mem0b_en,
    o_mem0b_rst,
    o_mem0b_we,
    i_mem1a_dout,
    o_mem1a_din,
    o_mem1a_addr,
    o_mem1a_en,
    o_mem1a_rst,
    o_mem1a_we,
    o_control0a,
    o_control0b,
    o_control1a);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN Mayo_sign_clk, INSERT_VIP 0" *) input i_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input i_enable;
  output o_done;
  input i_bram_halt;
  (* x_interface_ignore = "TRUE" *) input [31:0]i_vec_addr;
  (* x_interface_ignore = "TRUE" *) input [31:0]i_coeffs_addr;
  (* x_interface_ignore = "TRUE" *) input [31:0]i_out_addr;
  input [31:0]i_len;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin0a DOUT" *) input [31:0]i_mem0a_dout;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin0a DIN" *) output [31:0]o_mem0a_din;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin0a ADDR" *) output [31:0]o_mem0a_addr;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin0a EN" *) output o_mem0a_en;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin0a RST" *) output o_mem0a_rst;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin0a WE" *) output [3:0]o_mem0a_we;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin0b DOUT" *) input [31:0]i_mem0b_dout;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin0b DIN" *) output [31:0]o_mem0b_din;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin0b ADDR" *) output [31:0]o_mem0b_addr;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin0b EN" *) output o_mem0b_en;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin0b RST" *) output o_mem0b_rst;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin0b WE" *) output [3:0]o_mem0b_we;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin1a DOUT" *) input [31:0]i_mem1a_dout;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin1a DIN" *) output [31:0]o_mem1a_din;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin1a ADDR" *) output [31:0]o_mem1a_addr;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin1a EN" *) output o_mem1a_en;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin1a RST" *) output o_mem1a_rst;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin1a WE" *) output [3:0]o_mem1a_we;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin0a CTRL" *) output o_control0a;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin0b CTRL" *) output o_control0b;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Lin1a CTRL" *) output o_control1a;

  wire \<const0> ;
  wire i_clk;
  wire [31:0]i_coeffs_addr;
  wire i_enable;
  wire [31:0]i_len;
  wire [31:0]i_mem0a_dout;
  wire [31:0]i_mem1a_dout;
  wire [31:0]i_out_addr;
  wire [31:0]i_vec_addr;
  wire o_control0a;
  wire o_control0b;
  wire o_control1a;
  wire o_done;
  wire [31:0]o_mem0a_addr;
  wire o_mem0a_en;
  wire [31:0]o_mem0b_addr;
  wire [28:0]\^o_mem0b_din ;
  wire o_mem0b_en;
  wire [2:2]\^o_mem0b_we ;
  wire [31:0]o_mem1a_addr;
  wire o_mem1a_en;
  wire rst;

  assign o_mem0a_din[31] = \<const0> ;
  assign o_mem0a_din[30] = \<const0> ;
  assign o_mem0a_din[29] = \<const0> ;
  assign o_mem0a_din[28] = \<const0> ;
  assign o_mem0a_din[27] = \<const0> ;
  assign o_mem0a_din[26] = \<const0> ;
  assign o_mem0a_din[25] = \<const0> ;
  assign o_mem0a_din[24] = \<const0> ;
  assign o_mem0a_din[23] = \<const0> ;
  assign o_mem0a_din[22] = \<const0> ;
  assign o_mem0a_din[21] = \<const0> ;
  assign o_mem0a_din[20] = \<const0> ;
  assign o_mem0a_din[19] = \<const0> ;
  assign o_mem0a_din[18] = \<const0> ;
  assign o_mem0a_din[17] = \<const0> ;
  assign o_mem0a_din[16] = \<const0> ;
  assign o_mem0a_din[15] = \<const0> ;
  assign o_mem0a_din[14] = \<const0> ;
  assign o_mem0a_din[13] = \<const0> ;
  assign o_mem0a_din[12] = \<const0> ;
  assign o_mem0a_din[11] = \<const0> ;
  assign o_mem0a_din[10] = \<const0> ;
  assign o_mem0a_din[9] = \<const0> ;
  assign o_mem0a_din[8] = \<const0> ;
  assign o_mem0a_din[7] = \<const0> ;
  assign o_mem0a_din[6] = \<const0> ;
  assign o_mem0a_din[5] = \<const0> ;
  assign o_mem0a_din[4] = \<const0> ;
  assign o_mem0a_din[3] = \<const0> ;
  assign o_mem0a_din[2] = \<const0> ;
  assign o_mem0a_din[1] = \<const0> ;
  assign o_mem0a_din[0] = \<const0> ;
  assign o_mem0a_rst = \<const0> ;
  assign o_mem0a_we[3] = \<const0> ;
  assign o_mem0a_we[2] = \<const0> ;
  assign o_mem0a_we[1] = \<const0> ;
  assign o_mem0a_we[0] = \<const0> ;
  assign o_mem0b_din[31] = \<const0> ;
  assign o_mem0b_din[30] = \<const0> ;
  assign o_mem0b_din[29] = \<const0> ;
  assign o_mem0b_din[28:24] = \^o_mem0b_din [28:24];
  assign o_mem0b_din[23] = \<const0> ;
  assign o_mem0b_din[22] = \<const0> ;
  assign o_mem0b_din[21] = \<const0> ;
  assign o_mem0b_din[20:16] = \^o_mem0b_din [20:16];
  assign o_mem0b_din[15] = \<const0> ;
  assign o_mem0b_din[14] = \<const0> ;
  assign o_mem0b_din[13] = \<const0> ;
  assign o_mem0b_din[12:8] = \^o_mem0b_din [12:8];
  assign o_mem0b_din[7] = \<const0> ;
  assign o_mem0b_din[6] = \<const0> ;
  assign o_mem0b_din[5] = \<const0> ;
  assign o_mem0b_din[4:0] = \^o_mem0b_din [4:0];
  assign o_mem0b_rst = \<const0> ;
  assign o_mem0b_we[3] = \^o_mem0b_we [2];
  assign o_mem0b_we[2] = \^o_mem0b_we [2];
  assign o_mem0b_we[1] = \^o_mem0b_we [2];
  assign o_mem0b_we[0] = \^o_mem0b_we [2];
  assign o_mem1a_din[31] = \<const0> ;
  assign o_mem1a_din[30] = \<const0> ;
  assign o_mem1a_din[29] = \<const0> ;
  assign o_mem1a_din[28] = \<const0> ;
  assign o_mem1a_din[27] = \<const0> ;
  assign o_mem1a_din[26] = \<const0> ;
  assign o_mem1a_din[25] = \<const0> ;
  assign o_mem1a_din[24] = \<const0> ;
  assign o_mem1a_din[23] = \<const0> ;
  assign o_mem1a_din[22] = \<const0> ;
  assign o_mem1a_din[21] = \<const0> ;
  assign o_mem1a_din[20] = \<const0> ;
  assign o_mem1a_din[19] = \<const0> ;
  assign o_mem1a_din[18] = \<const0> ;
  assign o_mem1a_din[17] = \<const0> ;
  assign o_mem1a_din[16] = \<const0> ;
  assign o_mem1a_din[15] = \<const0> ;
  assign o_mem1a_din[14] = \<const0> ;
  assign o_mem1a_din[13] = \<const0> ;
  assign o_mem1a_din[12] = \<const0> ;
  assign o_mem1a_din[11] = \<const0> ;
  assign o_mem1a_din[10] = \<const0> ;
  assign o_mem1a_din[9] = \<const0> ;
  assign o_mem1a_din[8] = \<const0> ;
  assign o_mem1a_din[7] = \<const0> ;
  assign o_mem1a_din[6] = \<const0> ;
  assign o_mem1a_din[5] = \<const0> ;
  assign o_mem1a_din[4] = \<const0> ;
  assign o_mem1a_din[3] = \<const0> ;
  assign o_mem1a_din[2] = \<const0> ;
  assign o_mem1a_din[1] = \<const0> ;
  assign o_mem1a_din[0] = \<const0> ;
  assign o_mem1a_rst = \<const0> ;
  assign o_mem1a_we[3] = \<const0> ;
  assign o_mem1a_we[2] = \<const0> ;
  assign o_mem1a_we[1] = \<const0> ;
  assign o_mem1a_we[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mayo_linear_combination U0
       (.i_clk(i_clk),
        .i_coeffs_addr(i_coeffs_addr),
        .i_enable(i_enable),
        .i_len(i_len),
        .i_mem0a_dout(i_mem0a_dout),
        .i_mem1a_dout(i_mem1a_dout),
        .i_out_addr(i_out_addr),
        .i_vec_addr(i_vec_addr),
        .o_control0a(o_control0a),
        .o_control0b(o_control0b),
        .o_control1a(o_control1a),
        .o_done(o_done),
        .o_mem0a_addr(o_mem0a_addr),
        .o_mem0a_en(o_mem0a_en),
        .o_mem0b_addr(o_mem0b_addr),
        .o_mem0b_din({\^o_mem0b_din [28:24],\^o_mem0b_din [20:16],\^o_mem0b_din [12:8],\^o_mem0b_din [4:0]}),
        .o_mem0b_en(o_mem0b_en),
        .o_mem0b_we(\^o_mem0b_we ),
        .o_mem1a_addr(o_mem1a_addr),
        .o_mem1a_en(o_mem1a_en),
        .rst(rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mayo_linear_combination
   (o_control0b,
    o_mem0a_addr,
    o_mem0b_din,
    o_mem1a_addr,
    o_mem0b_addr,
    o_done,
    o_mem0b_en,
    o_mem0b_we,
    o_mem1a_en,
    o_mem0a_en,
    o_control1a,
    o_control0a,
    rst,
    i_clk,
    i_mem1a_dout,
    i_len,
    i_coeffs_addr,
    i_mem0a_dout,
    i_out_addr,
    i_vec_addr,
    i_enable);
  output o_control0b;
  output [31:0]o_mem0a_addr;
  output [19:0]o_mem0b_din;
  output [31:0]o_mem1a_addr;
  output [31:0]o_mem0b_addr;
  output o_done;
  output o_mem0b_en;
  output [0:0]o_mem0b_we;
  output o_mem1a_en;
  output o_mem0a_en;
  output o_control1a;
  output o_control0a;
  input rst;
  input i_clk;
  input [31:0]i_mem1a_dout;
  input [31:0]i_len;
  input [31:0]i_coeffs_addr;
  input [31:0]i_mem0a_dout;
  input [31:0]i_out_addr;
  input [31:0]i_vec_addr;
  input i_enable;

  wire CEA2;
  wire CEP;
  wire \bram0a[o][o_addr][0]_i_1_n_0 ;
  wire \bram0a[o][o_addr][10]_i_1_n_0 ;
  wire \bram0a[o][o_addr][11]_i_1_n_0 ;
  wire \bram0a[o][o_addr][12]_i_1_n_0 ;
  wire \bram0a[o][o_addr][13]_i_1_n_0 ;
  wire \bram0a[o][o_addr][14]_i_1_n_0 ;
  wire \bram0a[o][o_addr][15]_i_1_n_0 ;
  wire \bram0a[o][o_addr][16]_i_1_n_0 ;
  wire \bram0a[o][o_addr][17]_i_1_n_0 ;
  wire \bram0a[o][o_addr][18]_i_1_n_0 ;
  wire \bram0a[o][o_addr][19]_i_1_n_0 ;
  wire \bram0a[o][o_addr][1]_i_1_n_0 ;
  wire \bram0a[o][o_addr][20]_i_1_n_0 ;
  wire \bram0a[o][o_addr][21]_i_1_n_0 ;
  wire \bram0a[o][o_addr][22]_i_1_n_0 ;
  wire \bram0a[o][o_addr][23]_i_1_n_0 ;
  wire \bram0a[o][o_addr][24]_i_1_n_0 ;
  wire \bram0a[o][o_addr][25]_i_1_n_0 ;
  wire \bram0a[o][o_addr][26]_i_1_n_0 ;
  wire \bram0a[o][o_addr][27]_i_1_n_0 ;
  wire \bram0a[o][o_addr][28]_i_1_n_0 ;
  wire \bram0a[o][o_addr][29]_i_1_n_0 ;
  wire \bram0a[o][o_addr][2]_i_1_n_0 ;
  wire \bram0a[o][o_addr][30]_i_1_n_0 ;
  wire \bram0a[o][o_addr][31]_i_1_n_0 ;
  wire \bram0a[o][o_addr][31]_i_2_n_0 ;
  wire \bram0a[o][o_addr][3]_i_1_n_0 ;
  wire \bram0a[o][o_addr][4]_i_1_n_0 ;
  wire \bram0a[o][o_addr][5]_i_1_n_0 ;
  wire \bram0a[o][o_addr][6]_i_1_n_0 ;
  wire \bram0a[o][o_addr][7]_i_1_n_0 ;
  wire \bram0a[o][o_addr][8]_i_1_n_0 ;
  wire \bram0a[o][o_addr][9]_i_1_n_0 ;
  wire \bram0a[o][o_en]_i_1_n_0 ;
  wire \bram0b[o][o_addr][0]_i_1_n_0 ;
  wire \bram0b[o][o_addr][12]_i_2_n_0 ;
  wire \bram0b[o][o_addr][12]_i_3_n_0 ;
  wire \bram0b[o][o_addr][12]_i_4_n_0 ;
  wire \bram0b[o][o_addr][12]_i_5_n_0 ;
  wire \bram0b[o][o_addr][16]_i_2_n_0 ;
  wire \bram0b[o][o_addr][16]_i_3_n_0 ;
  wire \bram0b[o][o_addr][16]_i_4_n_0 ;
  wire \bram0b[o][o_addr][16]_i_5_n_0 ;
  wire \bram0b[o][o_addr][20]_i_2_n_0 ;
  wire \bram0b[o][o_addr][20]_i_3_n_0 ;
  wire \bram0b[o][o_addr][20]_i_4_n_0 ;
  wire \bram0b[o][o_addr][20]_i_5_n_0 ;
  wire \bram0b[o][o_addr][24]_i_2_n_0 ;
  wire \bram0b[o][o_addr][24]_i_3_n_0 ;
  wire \bram0b[o][o_addr][24]_i_4_n_0 ;
  wire \bram0b[o][o_addr][24]_i_5_n_0 ;
  wire \bram0b[o][o_addr][28]_i_2_n_0 ;
  wire \bram0b[o][o_addr][28]_i_3_n_0 ;
  wire \bram0b[o][o_addr][28]_i_4_n_0 ;
  wire \bram0b[o][o_addr][28]_i_5_n_0 ;
  wire \bram0b[o][o_addr][31]_i_2_n_0 ;
  wire \bram0b[o][o_addr][31]_i_3_n_0 ;
  wire \bram0b[o][o_addr][31]_i_4_n_0 ;
  wire \bram0b[o][o_addr][4]_i_2_n_0 ;
  wire \bram0b[o][o_addr][4]_i_3_n_0 ;
  wire \bram0b[o][o_addr][4]_i_4_n_0 ;
  wire \bram0b[o][o_addr][4]_i_5_n_0 ;
  wire \bram0b[o][o_addr][8]_i_2_n_0 ;
  wire \bram0b[o][o_addr][8]_i_3_n_0 ;
  wire \bram0b[o][o_addr][8]_i_4_n_0 ;
  wire \bram0b[o][o_addr][8]_i_5_n_0 ;
  wire [4:1]\bram0b[o][o_din]00_in ;
  wire [4:1]\bram0b[o][o_din]01_in ;
  wire [4:1]\bram0b[o][o_din]02_in ;
  wire \bram0b[o][o_din]0__37_carry__0_i_1_n_0 ;
  wire \bram0b[o][o_din]0__37_carry__0_i_2_n_0 ;
  wire \bram0b[o][o_din]0__37_carry__0_n_3 ;
  wire \bram0b[o][o_din]0__37_carry__0_n_6 ;
  wire \bram0b[o][o_din]0__37_carry__0_n_7 ;
  wire \bram0b[o][o_din]0__37_carry_i_1_n_0 ;
  wire \bram0b[o][o_din]0__37_carry_i_2_n_0 ;
  wire \bram0b[o][o_din]0__37_carry_i_3_n_0 ;
  wire \bram0b[o][o_din]0__37_carry_n_0 ;
  wire \bram0b[o][o_din]0__37_carry_n_1 ;
  wire \bram0b[o][o_din]0__37_carry_n_2 ;
  wire \bram0b[o][o_din]0__37_carry_n_3 ;
  wire \bram0b[o][o_din]0__37_carry_n_4 ;
  wire \bram0b[o][o_din]0__37_carry_n_5 ;
  wire \bram0b[o][o_din]0__37_carry_n_6 ;
  wire \bram0b[o][o_din]0__37_carry_n_7 ;
  wire \bram0b[o][o_din]0__51_carry_i_1_n_0 ;
  wire \bram0b[o][o_din]0__51_carry_i_2_n_0 ;
  wire \bram0b[o][o_din]0__51_carry_i_3_n_0 ;
  wire \bram0b[o][o_din]0__51_carry_i_4_n_0 ;
  wire \bram0b[o][o_din]0__51_carry_n_2 ;
  wire \bram0b[o][o_din]0__51_carry_n_3 ;
  wire \bram0b[o][o_din]0__51_carry_n_5 ;
  wire \bram0b[o][o_din]0__51_carry_n_6 ;
  wire \bram0b[o][o_din]0__51_carry_n_7 ;
  wire \bram0b[o][o_din]0__57_carry__0_i_1_n_0 ;
  wire \bram0b[o][o_din]0__57_carry__0_i_2_n_0 ;
  wire \bram0b[o][o_din]0__57_carry__0_n_3 ;
  wire \bram0b[o][o_din]0__57_carry__0_n_6 ;
  wire \bram0b[o][o_din]0__57_carry__0_n_7 ;
  wire \bram0b[o][o_din]0__57_carry_i_1_n_0 ;
  wire \bram0b[o][o_din]0__57_carry_i_2_n_0 ;
  wire \bram0b[o][o_din]0__57_carry_i_3_n_0 ;
  wire \bram0b[o][o_din]0__57_carry_i_4_n_0 ;
  wire \bram0b[o][o_din]0__57_carry_n_0 ;
  wire \bram0b[o][o_din]0__57_carry_n_1 ;
  wire \bram0b[o][o_din]0__57_carry_n_2 ;
  wire \bram0b[o][o_din]0__57_carry_n_3 ;
  wire \bram0b[o][o_din]0__57_carry_n_4 ;
  wire \bram0b[o][o_din]0__57_carry_n_5 ;
  wire \bram0b[o][o_din]0__57_carry_n_6 ;
  wire \bram0b[o][o_din]0__57_carry_n_7 ;
  wire \bram0b[o][o_din]0__5_carry__0_i_1_n_0 ;
  wire \bram0b[o][o_din]0__5_carry__0_i_2_n_0 ;
  wire \bram0b[o][o_din]0__5_carry__0_i_3_n_0 ;
  wire \bram0b[o][o_din]0__5_carry__0_i_4_n_0 ;
  wire \bram0b[o][o_din]0__5_carry__0_i_5_n_0 ;
  wire \bram0b[o][o_din]0__5_carry__0_n_0 ;
  wire \bram0b[o][o_din]0__5_carry__0_n_1 ;
  wire \bram0b[o][o_din]0__5_carry__0_n_2 ;
  wire \bram0b[o][o_din]0__5_carry__0_n_3 ;
  wire \bram0b[o][o_din]0__5_carry__1_i_1_n_0 ;
  wire \bram0b[o][o_din]0__5_carry__1_i_2_n_0 ;
  wire \bram0b[o][o_din]0__5_carry__1_i_3_n_0 ;
  wire \bram0b[o][o_din]0__5_carry__1_i_4_n_0 ;
  wire \bram0b[o][o_din]0__5_carry__1_i_5_n_0 ;
  wire \bram0b[o][o_din]0__5_carry__1_i_6_n_0 ;
  wire \bram0b[o][o_din]0__5_carry__1_i_7_n_0 ;
  wire \bram0b[o][o_din]0__5_carry__1_i_8_n_0 ;
  wire \bram0b[o][o_din]0__5_carry__1_n_0 ;
  wire \bram0b[o][o_din]0__5_carry__1_n_1 ;
  wire \bram0b[o][o_din]0__5_carry__1_n_2 ;
  wire \bram0b[o][o_din]0__5_carry__1_n_3 ;
  wire \bram0b[o][o_din]0__5_carry__1_n_4 ;
  wire \bram0b[o][o_din]0__5_carry__2_i_1_n_0 ;
  wire \bram0b[o][o_din]0__5_carry__2_i_2_n_0 ;
  wire \bram0b[o][o_din]0__5_carry__2_i_3_n_0 ;
  wire \bram0b[o][o_din]0__5_carry__2_i_4_n_0 ;
  wire \bram0b[o][o_din]0__5_carry__2_i_5_n_0 ;
  wire \bram0b[o][o_din]0__5_carry__2_i_6_n_0 ;
  wire \bram0b[o][o_din]0__5_carry__2_i_7_n_0 ;
  wire \bram0b[o][o_din]0__5_carry__2_i_8_n_0 ;
  wire \bram0b[o][o_din]0__5_carry__2_n_0 ;
  wire \bram0b[o][o_din]0__5_carry__2_n_1 ;
  wire \bram0b[o][o_din]0__5_carry__2_n_2 ;
  wire \bram0b[o][o_din]0__5_carry__2_n_3 ;
  wire \bram0b[o][o_din]0__5_carry__2_n_4 ;
  wire \bram0b[o][o_din]0__5_carry__2_n_5 ;
  wire \bram0b[o][o_din]0__5_carry__2_n_6 ;
  wire \bram0b[o][o_din]0__5_carry__2_n_7 ;
  wire \bram0b[o][o_din]0__5_carry__3_i_1_n_0 ;
  wire \bram0b[o][o_din]0__5_carry__3_n_7 ;
  wire \bram0b[o][o_din]0__5_carry_i_1_n_0 ;
  wire \bram0b[o][o_din]0__5_carry_i_2_n_0 ;
  wire \bram0b[o][o_din]0__5_carry_i_3_n_0 ;
  wire \bram0b[o][o_din]0__5_carry_n_0 ;
  wire \bram0b[o][o_din]0__5_carry_n_1 ;
  wire \bram0b[o][o_din]0__5_carry_n_2 ;
  wire \bram0b[o][o_din]0__5_carry_n_3 ;
  wire [4:1]\bram0b[o][o_din]0__77 ;
  wire \bram0b[o][o_din]0_inferred__0/i___37_carry__0_n_3 ;
  wire \bram0b[o][o_din]0_inferred__0/i___37_carry__0_n_6 ;
  wire \bram0b[o][o_din]0_inferred__0/i___37_carry__0_n_7 ;
  wire \bram0b[o][o_din]0_inferred__0/i___37_carry_n_0 ;
  wire \bram0b[o][o_din]0_inferred__0/i___37_carry_n_1 ;
  wire \bram0b[o][o_din]0_inferred__0/i___37_carry_n_2 ;
  wire \bram0b[o][o_din]0_inferred__0/i___37_carry_n_3 ;
  wire \bram0b[o][o_din]0_inferred__0/i___37_carry_n_4 ;
  wire \bram0b[o][o_din]0_inferred__0/i___37_carry_n_5 ;
  wire \bram0b[o][o_din]0_inferred__0/i___37_carry_n_6 ;
  wire \bram0b[o][o_din]0_inferred__0/i___37_carry_n_7 ;
  wire \bram0b[o][o_din]0_inferred__0/i___51_carry_n_2 ;
  wire \bram0b[o][o_din]0_inferred__0/i___51_carry_n_3 ;
  wire \bram0b[o][o_din]0_inferred__0/i___51_carry_n_5 ;
  wire \bram0b[o][o_din]0_inferred__0/i___51_carry_n_6 ;
  wire \bram0b[o][o_din]0_inferred__0/i___51_carry_n_7 ;
  wire \bram0b[o][o_din]0_inferred__0/i___57_carry__0_n_3 ;
  wire \bram0b[o][o_din]0_inferred__0/i___57_carry__0_n_6 ;
  wire \bram0b[o][o_din]0_inferred__0/i___57_carry__0_n_7 ;
  wire \bram0b[o][o_din]0_inferred__0/i___57_carry_n_0 ;
  wire \bram0b[o][o_din]0_inferred__0/i___57_carry_n_1 ;
  wire \bram0b[o][o_din]0_inferred__0/i___57_carry_n_2 ;
  wire \bram0b[o][o_din]0_inferred__0/i___57_carry_n_3 ;
  wire \bram0b[o][o_din]0_inferred__0/i___57_carry_n_4 ;
  wire \bram0b[o][o_din]0_inferred__0/i___57_carry_n_5 ;
  wire \bram0b[o][o_din]0_inferred__0/i___57_carry_n_6 ;
  wire \bram0b[o][o_din]0_inferred__0/i___57_carry_n_7 ;
  wire \bram0b[o][o_din]0_inferred__0/i___5_carry__0_n_0 ;
  wire \bram0b[o][o_din]0_inferred__0/i___5_carry__0_n_1 ;
  wire \bram0b[o][o_din]0_inferred__0/i___5_carry__0_n_2 ;
  wire \bram0b[o][o_din]0_inferred__0/i___5_carry__0_n_3 ;
  wire \bram0b[o][o_din]0_inferred__0/i___5_carry__1_n_0 ;
  wire \bram0b[o][o_din]0_inferred__0/i___5_carry__1_n_1 ;
  wire \bram0b[o][o_din]0_inferred__0/i___5_carry__1_n_2 ;
  wire \bram0b[o][o_din]0_inferred__0/i___5_carry__1_n_3 ;
  wire \bram0b[o][o_din]0_inferred__0/i___5_carry__1_n_4 ;
  wire \bram0b[o][o_din]0_inferred__0/i___5_carry__2_n_0 ;
  wire \bram0b[o][o_din]0_inferred__0/i___5_carry__2_n_1 ;
  wire \bram0b[o][o_din]0_inferred__0/i___5_carry__2_n_2 ;
  wire \bram0b[o][o_din]0_inferred__0/i___5_carry__2_n_3 ;
  wire \bram0b[o][o_din]0_inferred__0/i___5_carry__2_n_4 ;
  wire \bram0b[o][o_din]0_inferred__0/i___5_carry__2_n_5 ;
  wire \bram0b[o][o_din]0_inferred__0/i___5_carry__2_n_6 ;
  wire \bram0b[o][o_din]0_inferred__0/i___5_carry__2_n_7 ;
  wire \bram0b[o][o_din]0_inferred__0/i___5_carry__3_n_7 ;
  wire \bram0b[o][o_din]0_inferred__0/i___5_carry_n_0 ;
  wire \bram0b[o][o_din]0_inferred__0/i___5_carry_n_1 ;
  wire \bram0b[o][o_din]0_inferred__0/i___5_carry_n_2 ;
  wire \bram0b[o][o_din]0_inferred__0/i___5_carry_n_3 ;
  wire \bram0b[o][o_din]0_inferred__1/i___37_carry__0_n_3 ;
  wire \bram0b[o][o_din]0_inferred__1/i___37_carry__0_n_6 ;
  wire \bram0b[o][o_din]0_inferred__1/i___37_carry__0_n_7 ;
  wire \bram0b[o][o_din]0_inferred__1/i___37_carry_n_0 ;
  wire \bram0b[o][o_din]0_inferred__1/i___37_carry_n_1 ;
  wire \bram0b[o][o_din]0_inferred__1/i___37_carry_n_2 ;
  wire \bram0b[o][o_din]0_inferred__1/i___37_carry_n_3 ;
  wire \bram0b[o][o_din]0_inferred__1/i___37_carry_n_4 ;
  wire \bram0b[o][o_din]0_inferred__1/i___37_carry_n_5 ;
  wire \bram0b[o][o_din]0_inferred__1/i___37_carry_n_6 ;
  wire \bram0b[o][o_din]0_inferred__1/i___37_carry_n_7 ;
  wire \bram0b[o][o_din]0_inferred__1/i___51_carry_n_2 ;
  wire \bram0b[o][o_din]0_inferred__1/i___51_carry_n_3 ;
  wire \bram0b[o][o_din]0_inferred__1/i___51_carry_n_5 ;
  wire \bram0b[o][o_din]0_inferred__1/i___51_carry_n_6 ;
  wire \bram0b[o][o_din]0_inferred__1/i___51_carry_n_7 ;
  wire \bram0b[o][o_din]0_inferred__1/i___57_carry__0_n_3 ;
  wire \bram0b[o][o_din]0_inferred__1/i___57_carry__0_n_6 ;
  wire \bram0b[o][o_din]0_inferred__1/i___57_carry__0_n_7 ;
  wire \bram0b[o][o_din]0_inferred__1/i___57_carry_n_0 ;
  wire \bram0b[o][o_din]0_inferred__1/i___57_carry_n_1 ;
  wire \bram0b[o][o_din]0_inferred__1/i___57_carry_n_2 ;
  wire \bram0b[o][o_din]0_inferred__1/i___57_carry_n_3 ;
  wire \bram0b[o][o_din]0_inferred__1/i___57_carry_n_4 ;
  wire \bram0b[o][o_din]0_inferred__1/i___57_carry_n_5 ;
  wire \bram0b[o][o_din]0_inferred__1/i___57_carry_n_6 ;
  wire \bram0b[o][o_din]0_inferred__1/i___57_carry_n_7 ;
  wire \bram0b[o][o_din]0_inferred__1/i___5_carry__0_n_0 ;
  wire \bram0b[o][o_din]0_inferred__1/i___5_carry__0_n_1 ;
  wire \bram0b[o][o_din]0_inferred__1/i___5_carry__0_n_2 ;
  wire \bram0b[o][o_din]0_inferred__1/i___5_carry__0_n_3 ;
  wire \bram0b[o][o_din]0_inferred__1/i___5_carry__1_n_0 ;
  wire \bram0b[o][o_din]0_inferred__1/i___5_carry__1_n_1 ;
  wire \bram0b[o][o_din]0_inferred__1/i___5_carry__1_n_2 ;
  wire \bram0b[o][o_din]0_inferred__1/i___5_carry__1_n_3 ;
  wire \bram0b[o][o_din]0_inferred__1/i___5_carry__1_n_4 ;
  wire \bram0b[o][o_din]0_inferred__1/i___5_carry__2_n_0 ;
  wire \bram0b[o][o_din]0_inferred__1/i___5_carry__2_n_1 ;
  wire \bram0b[o][o_din]0_inferred__1/i___5_carry__2_n_2 ;
  wire \bram0b[o][o_din]0_inferred__1/i___5_carry__2_n_3 ;
  wire \bram0b[o][o_din]0_inferred__1/i___5_carry__2_n_4 ;
  wire \bram0b[o][o_din]0_inferred__1/i___5_carry__2_n_5 ;
  wire \bram0b[o][o_din]0_inferred__1/i___5_carry__2_n_6 ;
  wire \bram0b[o][o_din]0_inferred__1/i___5_carry__2_n_7 ;
  wire \bram0b[o][o_din]0_inferred__1/i___5_carry__3_n_7 ;
  wire \bram0b[o][o_din]0_inferred__1/i___5_carry_n_0 ;
  wire \bram0b[o][o_din]0_inferred__1/i___5_carry_n_1 ;
  wire \bram0b[o][o_din]0_inferred__1/i___5_carry_n_2 ;
  wire \bram0b[o][o_din]0_inferred__1/i___5_carry_n_3 ;
  wire \bram0b[o][o_din]0_inferred__2/i___37_carry__0_n_3 ;
  wire \bram0b[o][o_din]0_inferred__2/i___37_carry__0_n_6 ;
  wire \bram0b[o][o_din]0_inferred__2/i___37_carry__0_n_7 ;
  wire \bram0b[o][o_din]0_inferred__2/i___37_carry_n_0 ;
  wire \bram0b[o][o_din]0_inferred__2/i___37_carry_n_1 ;
  wire \bram0b[o][o_din]0_inferred__2/i___37_carry_n_2 ;
  wire \bram0b[o][o_din]0_inferred__2/i___37_carry_n_3 ;
  wire \bram0b[o][o_din]0_inferred__2/i___37_carry_n_4 ;
  wire \bram0b[o][o_din]0_inferred__2/i___37_carry_n_5 ;
  wire \bram0b[o][o_din]0_inferred__2/i___37_carry_n_6 ;
  wire \bram0b[o][o_din]0_inferred__2/i___37_carry_n_7 ;
  wire \bram0b[o][o_din]0_inferred__2/i___51_carry_n_2 ;
  wire \bram0b[o][o_din]0_inferred__2/i___51_carry_n_3 ;
  wire \bram0b[o][o_din]0_inferred__2/i___51_carry_n_5 ;
  wire \bram0b[o][o_din]0_inferred__2/i___51_carry_n_6 ;
  wire \bram0b[o][o_din]0_inferred__2/i___51_carry_n_7 ;
  wire \bram0b[o][o_din]0_inferred__2/i___57_carry__0_n_3 ;
  wire \bram0b[o][o_din]0_inferred__2/i___57_carry__0_n_6 ;
  wire \bram0b[o][o_din]0_inferred__2/i___57_carry__0_n_7 ;
  wire \bram0b[o][o_din]0_inferred__2/i___57_carry_n_0 ;
  wire \bram0b[o][o_din]0_inferred__2/i___57_carry_n_1 ;
  wire \bram0b[o][o_din]0_inferred__2/i___57_carry_n_2 ;
  wire \bram0b[o][o_din]0_inferred__2/i___57_carry_n_3 ;
  wire \bram0b[o][o_din]0_inferred__2/i___57_carry_n_4 ;
  wire \bram0b[o][o_din]0_inferred__2/i___57_carry_n_5 ;
  wire \bram0b[o][o_din]0_inferred__2/i___57_carry_n_6 ;
  wire \bram0b[o][o_din]0_inferred__2/i___57_carry_n_7 ;
  wire \bram0b[o][o_din]0_inferred__2/i___5_carry__0_n_0 ;
  wire \bram0b[o][o_din]0_inferred__2/i___5_carry__0_n_1 ;
  wire \bram0b[o][o_din]0_inferred__2/i___5_carry__0_n_2 ;
  wire \bram0b[o][o_din]0_inferred__2/i___5_carry__0_n_3 ;
  wire \bram0b[o][o_din]0_inferred__2/i___5_carry__1_n_0 ;
  wire \bram0b[o][o_din]0_inferred__2/i___5_carry__1_n_1 ;
  wire \bram0b[o][o_din]0_inferred__2/i___5_carry__1_n_2 ;
  wire \bram0b[o][o_din]0_inferred__2/i___5_carry__1_n_3 ;
  wire \bram0b[o][o_din]0_inferred__2/i___5_carry__1_n_4 ;
  wire \bram0b[o][o_din]0_inferred__2/i___5_carry__2_n_0 ;
  wire \bram0b[o][o_din]0_inferred__2/i___5_carry__2_n_1 ;
  wire \bram0b[o][o_din]0_inferred__2/i___5_carry__2_n_2 ;
  wire \bram0b[o][o_din]0_inferred__2/i___5_carry__2_n_3 ;
  wire \bram0b[o][o_din]0_inferred__2/i___5_carry__2_n_4 ;
  wire \bram0b[o][o_din]0_inferred__2/i___5_carry__2_n_5 ;
  wire \bram0b[o][o_din]0_inferred__2/i___5_carry__2_n_6 ;
  wire \bram0b[o][o_din]0_inferred__2/i___5_carry__2_n_7 ;
  wire \bram0b[o][o_din]0_inferred__2/i___5_carry__3_n_7 ;
  wire \bram0b[o][o_din]0_inferred__2/i___5_carry_n_0 ;
  wire \bram0b[o][o_din]0_inferred__2/i___5_carry_n_1 ;
  wire \bram0b[o][o_din]0_inferred__2/i___5_carry_n_2 ;
  wire \bram0b[o][o_din]0_inferred__2/i___5_carry_n_3 ;
  wire \bram0b[o][o_din][0]_i_1_n_0 ;
  wire \bram0b[o][o_din][0]_i_2_n_0 ;
  wire \bram0b[o][o_din][10]_i_1_n_0 ;
  wire \bram0b[o][o_din][11]_i_1_n_0 ;
  wire \bram0b[o][o_din][12]_i_1_n_0 ;
  wire \bram0b[o][o_din][16]_i_1_n_0 ;
  wire \bram0b[o][o_din][16]_i_2_n_0 ;
  wire \bram0b[o][o_din][17]_i_1_n_0 ;
  wire \bram0b[o][o_din][18]_i_1_n_0 ;
  wire \bram0b[o][o_din][19]_i_1_n_0 ;
  wire \bram0b[o][o_din][1]_i_1_n_0 ;
  wire \bram0b[o][o_din][20]_i_1_n_0 ;
  wire \bram0b[o][o_din][24]_i_1_n_0 ;
  wire \bram0b[o][o_din][24]_i_2_n_0 ;
  wire \bram0b[o][o_din][25]_i_1_n_0 ;
  wire \bram0b[o][o_din][26]_i_1_n_0 ;
  wire \bram0b[o][o_din][27]_i_1_n_0 ;
  wire \bram0b[o][o_din][28]_i_1_n_0 ;
  wire \bram0b[o][o_din][28]_i_2_n_0 ;
  wire \bram0b[o][o_din][2]_i_1_n_0 ;
  wire \bram0b[o][o_din][3]_i_1_n_0 ;
  wire \bram0b[o][o_din][4]_i_1_n_0 ;
  wire \bram0b[o][o_din][8]_i_1_n_0 ;
  wire \bram0b[o][o_din][8]_i_2_n_0 ;
  wire \bram0b[o][o_din][9]_i_1_n_0 ;
  wire \bram0b[o][o_en]_i_1_n_0 ;
  wire \bram0b[o][o_we][3]_i_1_n_0 ;
  wire \bram0b_reg[o][o_addr][12]_i_1_n_0 ;
  wire \bram0b_reg[o][o_addr][12]_i_1_n_1 ;
  wire \bram0b_reg[o][o_addr][12]_i_1_n_2 ;
  wire \bram0b_reg[o][o_addr][12]_i_1_n_3 ;
  wire \bram0b_reg[o][o_addr][12]_i_1_n_4 ;
  wire \bram0b_reg[o][o_addr][12]_i_1_n_5 ;
  wire \bram0b_reg[o][o_addr][12]_i_1_n_6 ;
  wire \bram0b_reg[o][o_addr][12]_i_1_n_7 ;
  wire \bram0b_reg[o][o_addr][16]_i_1_n_0 ;
  wire \bram0b_reg[o][o_addr][16]_i_1_n_1 ;
  wire \bram0b_reg[o][o_addr][16]_i_1_n_2 ;
  wire \bram0b_reg[o][o_addr][16]_i_1_n_3 ;
  wire \bram0b_reg[o][o_addr][16]_i_1_n_4 ;
  wire \bram0b_reg[o][o_addr][16]_i_1_n_5 ;
  wire \bram0b_reg[o][o_addr][16]_i_1_n_6 ;
  wire \bram0b_reg[o][o_addr][16]_i_1_n_7 ;
  wire \bram0b_reg[o][o_addr][20]_i_1_n_0 ;
  wire \bram0b_reg[o][o_addr][20]_i_1_n_1 ;
  wire \bram0b_reg[o][o_addr][20]_i_1_n_2 ;
  wire \bram0b_reg[o][o_addr][20]_i_1_n_3 ;
  wire \bram0b_reg[o][o_addr][20]_i_1_n_4 ;
  wire \bram0b_reg[o][o_addr][20]_i_1_n_5 ;
  wire \bram0b_reg[o][o_addr][20]_i_1_n_6 ;
  wire \bram0b_reg[o][o_addr][20]_i_1_n_7 ;
  wire \bram0b_reg[o][o_addr][24]_i_1_n_0 ;
  wire \bram0b_reg[o][o_addr][24]_i_1_n_1 ;
  wire \bram0b_reg[o][o_addr][24]_i_1_n_2 ;
  wire \bram0b_reg[o][o_addr][24]_i_1_n_3 ;
  wire \bram0b_reg[o][o_addr][24]_i_1_n_4 ;
  wire \bram0b_reg[o][o_addr][24]_i_1_n_5 ;
  wire \bram0b_reg[o][o_addr][24]_i_1_n_6 ;
  wire \bram0b_reg[o][o_addr][24]_i_1_n_7 ;
  wire \bram0b_reg[o][o_addr][28]_i_1_n_0 ;
  wire \bram0b_reg[o][o_addr][28]_i_1_n_1 ;
  wire \bram0b_reg[o][o_addr][28]_i_1_n_2 ;
  wire \bram0b_reg[o][o_addr][28]_i_1_n_3 ;
  wire \bram0b_reg[o][o_addr][28]_i_1_n_4 ;
  wire \bram0b_reg[o][o_addr][28]_i_1_n_5 ;
  wire \bram0b_reg[o][o_addr][28]_i_1_n_6 ;
  wire \bram0b_reg[o][o_addr][28]_i_1_n_7 ;
  wire \bram0b_reg[o][o_addr][31]_i_1_n_2 ;
  wire \bram0b_reg[o][o_addr][31]_i_1_n_3 ;
  wire \bram0b_reg[o][o_addr][31]_i_1_n_5 ;
  wire \bram0b_reg[o][o_addr][31]_i_1_n_6 ;
  wire \bram0b_reg[o][o_addr][31]_i_1_n_7 ;
  wire \bram0b_reg[o][o_addr][4]_i_1_n_0 ;
  wire \bram0b_reg[o][o_addr][4]_i_1_n_1 ;
  wire \bram0b_reg[o][o_addr][4]_i_1_n_2 ;
  wire \bram0b_reg[o][o_addr][4]_i_1_n_3 ;
  wire \bram0b_reg[o][o_addr][4]_i_1_n_4 ;
  wire \bram0b_reg[o][o_addr][4]_i_1_n_5 ;
  wire \bram0b_reg[o][o_addr][4]_i_1_n_6 ;
  wire \bram0b_reg[o][o_addr][4]_i_1_n_7 ;
  wire \bram0b_reg[o][o_addr][8]_i_1_n_0 ;
  wire \bram0b_reg[o][o_addr][8]_i_1_n_1 ;
  wire \bram0b_reg[o][o_addr][8]_i_1_n_2 ;
  wire \bram0b_reg[o][o_addr][8]_i_1_n_3 ;
  wire \bram0b_reg[o][o_addr][8]_i_1_n_4 ;
  wire \bram0b_reg[o][o_addr][8]_i_1_n_5 ;
  wire \bram0b_reg[o][o_addr][8]_i_1_n_6 ;
  wire \bram0b_reg[o][o_addr][8]_i_1_n_7 ;
  wire \bram1a[o][o_addr][0]_i_1_n_0 ;
  wire \bram1a[o][o_addr][0]_i_2_n_0 ;
  wire \bram1a[o][o_addr][10]_i_1_n_0 ;
  wire \bram1a[o][o_addr][10]_i_2_n_0 ;
  wire \bram1a[o][o_addr][11]_i_1_n_0 ;
  wire \bram1a[o][o_addr][11]_i_2_n_0 ;
  wire \bram1a[o][o_addr][12]_i_1_n_0 ;
  wire \bram1a[o][o_addr][12]_i_2_n_0 ;
  wire \bram1a[o][o_addr][13]_i_1_n_0 ;
  wire \bram1a[o][o_addr][13]_i_2_n_0 ;
  wire \bram1a[o][o_addr][14]_i_1_n_0 ;
  wire \bram1a[o][o_addr][14]_i_2_n_0 ;
  wire \bram1a[o][o_addr][15]_i_1_n_0 ;
  wire \bram1a[o][o_addr][15]_i_2_n_0 ;
  wire \bram1a[o][o_addr][16]_i_1_n_0 ;
  wire \bram1a[o][o_addr][16]_i_2_n_0 ;
  wire \bram1a[o][o_addr][17]_i_1_n_0 ;
  wire \bram1a[o][o_addr][17]_i_2_n_0 ;
  wire \bram1a[o][o_addr][18]_i_1_n_0 ;
  wire \bram1a[o][o_addr][18]_i_2_n_0 ;
  wire \bram1a[o][o_addr][19]_i_1_n_0 ;
  wire \bram1a[o][o_addr][19]_i_2_n_0 ;
  wire \bram1a[o][o_addr][1]_i_1_n_0 ;
  wire \bram1a[o][o_addr][1]_i_2_n_0 ;
  wire \bram1a[o][o_addr][20]_i_1_n_0 ;
  wire \bram1a[o][o_addr][20]_i_2_n_0 ;
  wire \bram1a[o][o_addr][21]_i_1_n_0 ;
  wire \bram1a[o][o_addr][21]_i_2_n_0 ;
  wire \bram1a[o][o_addr][22]_i_1_n_0 ;
  wire \bram1a[o][o_addr][22]_i_2_n_0 ;
  wire \bram1a[o][o_addr][23]_i_1_n_0 ;
  wire \bram1a[o][o_addr][23]_i_2_n_0 ;
  wire \bram1a[o][o_addr][24]_i_1_n_0 ;
  wire \bram1a[o][o_addr][24]_i_2_n_0 ;
  wire \bram1a[o][o_addr][25]_i_1_n_0 ;
  wire \bram1a[o][o_addr][25]_i_2_n_0 ;
  wire \bram1a[o][o_addr][26]_i_1_n_0 ;
  wire \bram1a[o][o_addr][26]_i_2_n_0 ;
  wire \bram1a[o][o_addr][27]_i_1_n_0 ;
  wire \bram1a[o][o_addr][27]_i_2_n_0 ;
  wire \bram1a[o][o_addr][28]_i_1_n_0 ;
  wire \bram1a[o][o_addr][28]_i_2_n_0 ;
  wire \bram1a[o][o_addr][29]_i_1_n_0 ;
  wire \bram1a[o][o_addr][29]_i_2_n_0 ;
  wire \bram1a[o][o_addr][2]_i_1_n_0 ;
  wire \bram1a[o][o_addr][2]_i_2_n_0 ;
  wire \bram1a[o][o_addr][30]_i_1_n_0 ;
  wire \bram1a[o][o_addr][30]_i_2_n_0 ;
  wire \bram1a[o][o_addr][31]_i_1_n_0 ;
  wire \bram1a[o][o_addr][31]_i_2_n_0 ;
  wire \bram1a[o][o_addr][31]_i_3_n_0 ;
  wire \bram1a[o][o_addr][3]_i_1_n_0 ;
  wire \bram1a[o][o_addr][3]_i_2_n_0 ;
  wire \bram1a[o][o_addr][4]_i_1_n_0 ;
  wire \bram1a[o][o_addr][4]_i_2_n_0 ;
  wire \bram1a[o][o_addr][4]_i_4_n_0 ;
  wire \bram1a[o][o_addr][5]_i_1_n_0 ;
  wire \bram1a[o][o_addr][5]_i_2_n_0 ;
  wire \bram1a[o][o_addr][6]_i_1_n_0 ;
  wire \bram1a[o][o_addr][6]_i_2_n_0 ;
  wire \bram1a[o][o_addr][7]_i_1_n_0 ;
  wire \bram1a[o][o_addr][7]_i_2_n_0 ;
  wire \bram1a[o][o_addr][8]_i_1_n_0 ;
  wire \bram1a[o][o_addr][8]_i_2_n_0 ;
  wire \bram1a[o][o_addr][9]_i_1_n_0 ;
  wire \bram1a[o][o_addr][9]_i_2_n_0 ;
  wire \bram1a[o][o_en]_i_1_n_0 ;
  wire \bram1a_reg[o][o_addr][12]_i_3_n_0 ;
  wire \bram1a_reg[o][o_addr][12]_i_3_n_1 ;
  wire \bram1a_reg[o][o_addr][12]_i_3_n_2 ;
  wire \bram1a_reg[o][o_addr][12]_i_3_n_3 ;
  wire \bram1a_reg[o][o_addr][16]_i_3_n_0 ;
  wire \bram1a_reg[o][o_addr][16]_i_3_n_1 ;
  wire \bram1a_reg[o][o_addr][16]_i_3_n_2 ;
  wire \bram1a_reg[o][o_addr][16]_i_3_n_3 ;
  wire \bram1a_reg[o][o_addr][20]_i_3_n_0 ;
  wire \bram1a_reg[o][o_addr][20]_i_3_n_1 ;
  wire \bram1a_reg[o][o_addr][20]_i_3_n_2 ;
  wire \bram1a_reg[o][o_addr][20]_i_3_n_3 ;
  wire \bram1a_reg[o][o_addr][24]_i_3_n_0 ;
  wire \bram1a_reg[o][o_addr][24]_i_3_n_1 ;
  wire \bram1a_reg[o][o_addr][24]_i_3_n_2 ;
  wire \bram1a_reg[o][o_addr][24]_i_3_n_3 ;
  wire \bram1a_reg[o][o_addr][28]_i_3_n_0 ;
  wire \bram1a_reg[o][o_addr][28]_i_3_n_1 ;
  wire \bram1a_reg[o][o_addr][28]_i_3_n_2 ;
  wire \bram1a_reg[o][o_addr][28]_i_3_n_3 ;
  wire \bram1a_reg[o][o_addr][31]_i_4_n_2 ;
  wire \bram1a_reg[o][o_addr][31]_i_4_n_3 ;
  wire \bram1a_reg[o][o_addr][4]_i_3_n_0 ;
  wire \bram1a_reg[o][o_addr][4]_i_3_n_1 ;
  wire \bram1a_reg[o][o_addr][4]_i_3_n_2 ;
  wire \bram1a_reg[o][o_addr][4]_i_3_n_3 ;
  wire \bram1a_reg[o][o_addr][8]_i_3_n_0 ;
  wire \bram1a_reg[o][o_addr][8]_i_3_n_1 ;
  wire \bram1a_reg[o][o_addr][8]_i_3_n_2 ;
  wire \bram1a_reg[o][o_addr][8]_i_3_n_3 ;
  wire [31:1]c0;
  wire c0_carry__0_n_0;
  wire c0_carry__0_n_1;
  wire c0_carry__0_n_2;
  wire c0_carry__0_n_3;
  wire c0_carry__1_n_0;
  wire c0_carry__1_n_1;
  wire c0_carry__1_n_2;
  wire c0_carry__1_n_3;
  wire c0_carry__2_n_0;
  wire c0_carry__2_n_1;
  wire c0_carry__2_n_2;
  wire c0_carry__2_n_3;
  wire c0_carry__3_n_0;
  wire c0_carry__3_n_1;
  wire c0_carry__3_n_2;
  wire c0_carry__3_n_3;
  wire c0_carry__4_n_0;
  wire c0_carry__4_n_1;
  wire c0_carry__4_n_2;
  wire c0_carry__4_n_3;
  wire c0_carry__5_n_0;
  wire c0_carry__5_n_1;
  wire c0_carry__5_n_2;
  wire c0_carry__5_n_3;
  wire c0_carry__6_n_2;
  wire c0_carry__6_n_3;
  wire c0_carry_n_0;
  wire c0_carry_n_1;
  wire c0_carry_n_2;
  wire c0_carry_n_3;
  wire c1_carry__0_i_1_n_0;
  wire c1_carry__0_i_2_n_0;
  wire c1_carry__0_i_3_n_0;
  wire c1_carry__0_i_4_n_0;
  wire c1_carry__0_i_5_n_0;
  wire c1_carry__0_i_6_n_0;
  wire c1_carry__0_i_7_n_0;
  wire c1_carry__0_i_8_n_0;
  wire c1_carry__0_n_0;
  wire c1_carry__0_n_1;
  wire c1_carry__0_n_2;
  wire c1_carry__0_n_3;
  wire c1_carry__1_i_1_n_0;
  wire c1_carry__1_i_2_n_0;
  wire c1_carry__1_i_3_n_0;
  wire c1_carry__1_i_4_n_0;
  wire c1_carry__1_i_5_n_0;
  wire c1_carry__1_i_6_n_0;
  wire c1_carry__1_i_7_n_0;
  wire c1_carry__1_i_8_n_0;
  wire c1_carry__1_n_0;
  wire c1_carry__1_n_1;
  wire c1_carry__1_n_2;
  wire c1_carry__1_n_3;
  wire c1_carry__2_i_1_n_0;
  wire c1_carry__2_i_2_n_0;
  wire c1_carry__2_i_3_n_0;
  wire c1_carry__2_i_4_n_0;
  wire c1_carry__2_i_5_n_0;
  wire c1_carry__2_i_6_n_0;
  wire c1_carry__2_i_7_n_0;
  wire c1_carry__2_i_8_n_0;
  wire c1_carry__2_n_0;
  wire c1_carry__2_n_1;
  wire c1_carry__2_n_2;
  wire c1_carry__2_n_3;
  wire c1_carry_i_1_n_0;
  wire c1_carry_i_2_n_0;
  wire c1_carry_i_3_n_0;
  wire c1_carry_i_4_n_0;
  wire c1_carry_i_5_n_0;
  wire c1_carry_i_6_n_0;
  wire c1_carry_i_7_n_0;
  wire c1_carry_n_0;
  wire c1_carry_n_1;
  wire c1_carry_n_2;
  wire c1_carry_n_3;
  wire \c[0]_i_1_n_0 ;
  wire \c[10]_i_1_n_0 ;
  wire \c[11]_i_1_n_0 ;
  wire \c[12]_i_1_n_0 ;
  wire \c[13]_i_1_n_0 ;
  wire \c[14]_i_1_n_0 ;
  wire \c[15]_i_1_n_0 ;
  wire \c[16]_i_1_n_0 ;
  wire \c[17]_i_1_n_0 ;
  wire \c[18]_i_1_n_0 ;
  wire \c[19]_i_1_n_0 ;
  wire \c[1]_i_1_n_0 ;
  wire \c[20]_i_1_n_0 ;
  wire \c[21]_i_1_n_0 ;
  wire \c[22]_i_1_n_0 ;
  wire \c[23]_i_1_n_0 ;
  wire \c[24]_i_1_n_0 ;
  wire \c[25]_i_1_n_0 ;
  wire \c[26]_i_1_n_0 ;
  wire \c[27]_i_1_n_0 ;
  wire \c[28]_i_1_n_0 ;
  wire \c[29]_i_1_n_0 ;
  wire \c[2]_i_1_n_0 ;
  wire \c[30]_i_1_n_0 ;
  wire \c[31]_i_1_n_0 ;
  wire \c[31]_i_2_n_0 ;
  wire \c[3]_i_1_n_0 ;
  wire \c[4]_i_1_n_0 ;
  wire \c[5]_i_1_n_0 ;
  wire \c[6]_i_1_n_0 ;
  wire \c[7]_i_1_n_0 ;
  wire \c[8]_i_1_n_0 ;
  wire \c[9]_i_1_n_0 ;
  wire first;
  wire first_i_1_n_0;
  wire [31:1]i0;
  wire i0_carry__0_n_0;
  wire i0_carry__0_n_1;
  wire i0_carry__0_n_2;
  wire i0_carry__0_n_3;
  wire i0_carry__1_n_0;
  wire i0_carry__1_n_1;
  wire i0_carry__1_n_2;
  wire i0_carry__1_n_3;
  wire i0_carry__2_n_0;
  wire i0_carry__2_n_1;
  wire i0_carry__2_n_2;
  wire i0_carry__2_n_3;
  wire i0_carry__3_n_0;
  wire i0_carry__3_n_1;
  wire i0_carry__3_n_2;
  wire i0_carry__3_n_3;
  wire i0_carry__4_n_0;
  wire i0_carry__4_n_1;
  wire i0_carry__4_n_2;
  wire i0_carry__4_n_3;
  wire i0_carry__5_n_0;
  wire i0_carry__5_n_1;
  wire i0_carry__5_n_2;
  wire i0_carry__5_n_3;
  wire i0_carry__6_n_2;
  wire i0_carry__6_n_3;
  wire i0_carry_n_0;
  wire i0_carry_n_1;
  wire i0_carry_n_2;
  wire i0_carry_n_3;
  wire \i[0]_i_1_n_0 ;
  wire \i[10]_i_1_n_0 ;
  wire \i[11]_i_1_n_0 ;
  wire \i[12]_i_1_n_0 ;
  wire \i[13]_i_1_n_0 ;
  wire \i[14]_i_1_n_0 ;
  wire \i[15]_i_1_n_0 ;
  wire \i[16]_i_1_n_0 ;
  wire \i[17]_i_1_n_0 ;
  wire \i[18]_i_1_n_0 ;
  wire \i[19]_i_1_n_0 ;
  wire \i[1]_i_1_n_0 ;
  wire \i[20]_i_1_n_0 ;
  wire \i[21]_i_1_n_0 ;
  wire \i[22]_i_1_n_0 ;
  wire \i[23]_i_1_n_0 ;
  wire \i[24]_i_1_n_0 ;
  wire \i[25]_i_1_n_0 ;
  wire \i[26]_i_1_n_0 ;
  wire \i[27]_i_1_n_0 ;
  wire \i[28]_i_1_n_0 ;
  wire \i[29]_i_1_n_0 ;
  wire \i[2]_i_1_n_0 ;
  wire \i[30]_i_1_n_0 ;
  wire \i[31]_i_1_n_0 ;
  wire \i[31]_i_2_n_0 ;
  wire \i[31]_i_3_n_0 ;
  wire \i[3]_i_1_n_0 ;
  wire \i[4]_i_1_n_0 ;
  wire \i[5]_i_1_n_0 ;
  wire \i[6]_i_1_n_0 ;
  wire \i[7]_i_1_n_0 ;
  wire \i[8]_i_1_n_0 ;
  wire \i[9]_i_1_n_0 ;
  wire i___37_carry__0_i_1__0_n_0;
  wire i___37_carry__0_i_1__1_n_0;
  wire i___37_carry__0_i_1_n_0;
  wire i___37_carry__0_i_2__0_n_0;
  wire i___37_carry__0_i_2__1_n_0;
  wire i___37_carry__0_i_2_n_0;
  wire i___37_carry_i_1__0_n_0;
  wire i___37_carry_i_1__1_n_0;
  wire i___37_carry_i_1_n_0;
  wire i___37_carry_i_2__0_n_0;
  wire i___37_carry_i_2__1_n_0;
  wire i___37_carry_i_2_n_0;
  wire i___37_carry_i_3__0_n_0;
  wire i___37_carry_i_3__1_n_0;
  wire i___37_carry_i_3_n_0;
  wire i___51_carry_i_1__0_n_0;
  wire i___51_carry_i_1__1_n_0;
  wire i___51_carry_i_1_n_0;
  wire i___51_carry_i_2__0_n_0;
  wire i___51_carry_i_2__1_n_0;
  wire i___51_carry_i_2_n_0;
  wire i___51_carry_i_3__0_n_0;
  wire i___51_carry_i_3__1_n_0;
  wire i___51_carry_i_3_n_0;
  wire i___51_carry_i_4__0_n_0;
  wire i___51_carry_i_4__1_n_0;
  wire i___51_carry_i_4_n_0;
  wire i___57_carry__0_i_1__0_n_0;
  wire i___57_carry__0_i_1__1_n_0;
  wire i___57_carry__0_i_1_n_0;
  wire i___57_carry__0_i_2__0_n_0;
  wire i___57_carry__0_i_2__1_n_0;
  wire i___57_carry__0_i_2_n_0;
  wire i___57_carry_i_1__0_n_0;
  wire i___57_carry_i_1__1_n_0;
  wire i___57_carry_i_1_n_0;
  wire i___57_carry_i_2__0_n_0;
  wire i___57_carry_i_2__1_n_0;
  wire i___57_carry_i_2_n_0;
  wire i___57_carry_i_3__0_n_0;
  wire i___57_carry_i_3__1_n_0;
  wire i___57_carry_i_3_n_0;
  wire i___57_carry_i_4__0_n_0;
  wire i___57_carry_i_4__1_n_0;
  wire i___57_carry_i_4_n_0;
  wire i___5_carry__0_i_1__0_n_0;
  wire i___5_carry__0_i_1__1_n_0;
  wire i___5_carry__0_i_1_n_0;
  wire i___5_carry__0_i_2__0_n_0;
  wire i___5_carry__0_i_2__1_n_0;
  wire i___5_carry__0_i_2_n_0;
  wire i___5_carry__0_i_3__0_n_0;
  wire i___5_carry__0_i_3__1_n_0;
  wire i___5_carry__0_i_3_n_0;
  wire i___5_carry__0_i_4__0_n_0;
  wire i___5_carry__0_i_4__1_n_0;
  wire i___5_carry__0_i_4_n_0;
  wire i___5_carry__0_i_5__0_n_0;
  wire i___5_carry__0_i_5__1_n_0;
  wire i___5_carry__0_i_5_n_0;
  wire i___5_carry__1_i_1__0_n_0;
  wire i___5_carry__1_i_1__1_n_0;
  wire i___5_carry__1_i_1_n_0;
  wire i___5_carry__1_i_2__0_n_0;
  wire i___5_carry__1_i_2__1_n_0;
  wire i___5_carry__1_i_2_n_0;
  wire i___5_carry__1_i_3__0_n_0;
  wire i___5_carry__1_i_3__1_n_0;
  wire i___5_carry__1_i_3_n_0;
  wire i___5_carry__1_i_4__0_n_0;
  wire i___5_carry__1_i_4__1_n_0;
  wire i___5_carry__1_i_4_n_0;
  wire i___5_carry__1_i_5__0_n_0;
  wire i___5_carry__1_i_5__1_n_0;
  wire i___5_carry__1_i_5_n_0;
  wire i___5_carry__1_i_6__0_n_0;
  wire i___5_carry__1_i_6__1_n_0;
  wire i___5_carry__1_i_6_n_0;
  wire i___5_carry__1_i_7__0_n_0;
  wire i___5_carry__1_i_7__1_n_0;
  wire i___5_carry__1_i_7_n_0;
  wire i___5_carry__1_i_8__0_n_0;
  wire i___5_carry__1_i_8__1_n_0;
  wire i___5_carry__1_i_8_n_0;
  wire i___5_carry__2_i_1__0_n_0;
  wire i___5_carry__2_i_1__1_n_0;
  wire i___5_carry__2_i_1_n_0;
  wire i___5_carry__2_i_2__0_n_0;
  wire i___5_carry__2_i_2__1_n_0;
  wire i___5_carry__2_i_2_n_0;
  wire i___5_carry__2_i_3__0_n_0;
  wire i___5_carry__2_i_3__1_n_0;
  wire i___5_carry__2_i_3_n_0;
  wire i___5_carry__2_i_4__0_n_0;
  wire i___5_carry__2_i_4__1_n_0;
  wire i___5_carry__2_i_4_n_0;
  wire i___5_carry__2_i_5__0_n_0;
  wire i___5_carry__2_i_5__1_n_0;
  wire i___5_carry__2_i_5_n_0;
  wire i___5_carry__2_i_6__0_n_0;
  wire i___5_carry__2_i_6__1_n_0;
  wire i___5_carry__2_i_6_n_0;
  wire i___5_carry__2_i_7__0_n_0;
  wire i___5_carry__2_i_7__1_n_0;
  wire i___5_carry__2_i_7_n_0;
  wire i___5_carry__2_i_8__0_n_0;
  wire i___5_carry__2_i_8__1_n_0;
  wire i___5_carry__2_i_8_n_0;
  wire i___5_carry__3_i_1__0_n_0;
  wire i___5_carry__3_i_1__1_n_0;
  wire i___5_carry__3_i_1_n_0;
  wire i___5_carry_i_1__0_n_0;
  wire i___5_carry_i_1__1_n_0;
  wire i___5_carry_i_1_n_0;
  wire i___5_carry_i_2__0_n_0;
  wire i___5_carry_i_2__1_n_0;
  wire i___5_carry_i_2_n_0;
  wire i___5_carry_i_3__0_n_0;
  wire i___5_carry_i_3__1_n_0;
  wire i___5_carry_i_3_n_0;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5__0_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6__0_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7__0_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8__0_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4__0_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5__0_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6__0_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_7__0_n_0;
  wire i__carry__1_i_7_n_0;
  wire i__carry__1_i_8__0_n_0;
  wire i__carry__1_i_8_n_0;
  wire i__carry__2_i_1__0_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2__0_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3__0_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4__0_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__2_i_5__0_n_0;
  wire i__carry__2_i_5_n_0;
  wire i__carry__2_i_6__0_n_0;
  wire i__carry__2_i_6_n_0;
  wire i__carry__2_i_7__0_n_0;
  wire i__carry__2_i_7_n_0;
  wire i__carry__2_i_8__0_n_0;
  wire i__carry__2_i_8_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry__3_i_5_n_0;
  wire i__carry__3_i_6_n_0;
  wire i__carry__3_i_7_n_0;
  wire i__carry__3_i_8_n_0;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry__4_i_3_n_0;
  wire i__carry__4_i_4_n_0;
  wire i__carry__4_i_5_n_0;
  wire i__carry__4_i_6_n_0;
  wire i__carry__4_i_7_n_0;
  wire i__carry__4_i_8_n_0;
  wire i__carry__5_i_1_n_0;
  wire i__carry__5_i_2_n_0;
  wire i__carry__5_i_3_n_0;
  wire i__carry__5_i_4_n_0;
  wire i__carry__5_i_5_n_0;
  wire i__carry__5_i_6_n_0;
  wire i__carry__5_i_7_n_0;
  wire i__carry__5_i_8_n_0;
  wire i__carry__6_i_1_n_0;
  wire i__carry__6_i_2_n_0;
  wire i__carry__6_i_3_n_0;
  wire i__carry__6_i_4_n_0;
  wire i__carry__6_i_5_n_0;
  wire i__carry__6_i_6_n_0;
  wire i__carry__6_i_7_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire i_clk;
  wire [31:0]i_coeffs_addr;
  wire i_enable;
  wire [31:0]i_len;
  wire [31:0]i_mem0a_dout;
  wire [31:0]i_mem1a_dout;
  wire [31:0]i_out_addr;
  wire \i_reg_n_0_[0] ;
  wire \i_reg_n_0_[10] ;
  wire \i_reg_n_0_[11] ;
  wire \i_reg_n_0_[12] ;
  wire \i_reg_n_0_[13] ;
  wire \i_reg_n_0_[14] ;
  wire \i_reg_n_0_[15] ;
  wire \i_reg_n_0_[16] ;
  wire \i_reg_n_0_[17] ;
  wire \i_reg_n_0_[18] ;
  wire \i_reg_n_0_[19] ;
  wire \i_reg_n_0_[1] ;
  wire \i_reg_n_0_[20] ;
  wire \i_reg_n_0_[21] ;
  wire \i_reg_n_0_[22] ;
  wire \i_reg_n_0_[23] ;
  wire \i_reg_n_0_[24] ;
  wire \i_reg_n_0_[25] ;
  wire \i_reg_n_0_[26] ;
  wire \i_reg_n_0_[27] ;
  wire \i_reg_n_0_[28] ;
  wire \i_reg_n_0_[29] ;
  wire \i_reg_n_0_[2] ;
  wire \i_reg_n_0_[30] ;
  wire \i_reg_n_0_[31] ;
  wire \i_reg_n_0_[3] ;
  wire \i_reg_n_0_[4] ;
  wire \i_reg_n_0_[5] ;
  wire \i_reg_n_0_[6] ;
  wire \i_reg_n_0_[7] ;
  wire \i_reg_n_0_[8] ;
  wire \i_reg_n_0_[9] ;
  wire [31:0]i_vec_addr;
  wire [31:1]j0;
  wire \j[31]_i_1_n_0 ;
  wire \j[31]_i_2_n_0 ;
  wire \j[4]_i_2_n_0 ;
  wire \j_reg[12]_i_1_n_0 ;
  wire \j_reg[12]_i_1_n_1 ;
  wire \j_reg[12]_i_1_n_2 ;
  wire \j_reg[12]_i_1_n_3 ;
  wire \j_reg[16]_i_1_n_0 ;
  wire \j_reg[16]_i_1_n_1 ;
  wire \j_reg[16]_i_1_n_2 ;
  wire \j_reg[16]_i_1_n_3 ;
  wire \j_reg[20]_i_1_n_0 ;
  wire \j_reg[20]_i_1_n_1 ;
  wire \j_reg[20]_i_1_n_2 ;
  wire \j_reg[20]_i_1_n_3 ;
  wire \j_reg[24]_i_1_n_0 ;
  wire \j_reg[24]_i_1_n_1 ;
  wire \j_reg[24]_i_1_n_2 ;
  wire \j_reg[24]_i_1_n_3 ;
  wire \j_reg[28]_i_1_n_0 ;
  wire \j_reg[28]_i_1_n_1 ;
  wire \j_reg[28]_i_1_n_2 ;
  wire \j_reg[28]_i_1_n_3 ;
  wire \j_reg[31]_i_3_n_2 ;
  wire \j_reg[31]_i_3_n_3 ;
  wire \j_reg[4]_i_1_n_0 ;
  wire \j_reg[4]_i_1_n_1 ;
  wire \j_reg[4]_i_1_n_2 ;
  wire \j_reg[4]_i_1_n_3 ;
  wire \j_reg[8]_i_1_n_0 ;
  wire \j_reg[8]_i_1_n_1 ;
  wire \j_reg[8]_i_1_n_2 ;
  wire \j_reg[8]_i_1_n_3 ;
  wire \j_reg_n_0_[10] ;
  wire \j_reg_n_0_[11] ;
  wire \j_reg_n_0_[12] ;
  wire \j_reg_n_0_[13] ;
  wire \j_reg_n_0_[14] ;
  wire \j_reg_n_0_[15] ;
  wire \j_reg_n_0_[16] ;
  wire \j_reg_n_0_[17] ;
  wire \j_reg_n_0_[18] ;
  wire \j_reg_n_0_[19] ;
  wire \j_reg_n_0_[1] ;
  wire \j_reg_n_0_[20] ;
  wire \j_reg_n_0_[21] ;
  wire \j_reg_n_0_[22] ;
  wire \j_reg_n_0_[23] ;
  wire \j_reg_n_0_[24] ;
  wire \j_reg_n_0_[25] ;
  wire \j_reg_n_0_[26] ;
  wire \j_reg_n_0_[27] ;
  wire \j_reg_n_0_[28] ;
  wire \j_reg_n_0_[29] ;
  wire \j_reg_n_0_[2] ;
  wire \j_reg_n_0_[30] ;
  wire \j_reg_n_0_[31] ;
  wire \j_reg_n_0_[3] ;
  wire \j_reg_n_0_[4] ;
  wire \j_reg_n_0_[5] ;
  wire \j_reg_n_0_[6] ;
  wire \j_reg_n_0_[7] ;
  wire \j_reg_n_0_[8] ;
  wire \j_reg_n_0_[9] ;
  wire [31:1]minusOp;
  wire minusOp_carry__0_i_1_n_0;
  wire minusOp_carry__0_i_2_n_0;
  wire minusOp_carry__0_i_3_n_0;
  wire minusOp_carry__0_i_4_n_0;
  wire minusOp_carry__0_n_0;
  wire minusOp_carry__0_n_1;
  wire minusOp_carry__0_n_2;
  wire minusOp_carry__0_n_3;
  wire minusOp_carry__1_i_1_n_0;
  wire minusOp_carry__1_i_2_n_0;
  wire minusOp_carry__1_i_3_n_0;
  wire minusOp_carry__1_i_4_n_0;
  wire minusOp_carry__1_n_0;
  wire minusOp_carry__1_n_1;
  wire minusOp_carry__1_n_2;
  wire minusOp_carry__1_n_3;
  wire minusOp_carry__2_i_1_n_0;
  wire minusOp_carry__2_i_2_n_0;
  wire minusOp_carry__2_i_3_n_0;
  wire minusOp_carry__2_i_4_n_0;
  wire minusOp_carry__2_n_0;
  wire minusOp_carry__2_n_1;
  wire minusOp_carry__2_n_2;
  wire minusOp_carry__2_n_3;
  wire minusOp_carry__3_i_1_n_0;
  wire minusOp_carry__3_i_2_n_0;
  wire minusOp_carry__3_i_3_n_0;
  wire minusOp_carry__3_i_4_n_0;
  wire minusOp_carry__3_n_0;
  wire minusOp_carry__3_n_1;
  wire minusOp_carry__3_n_2;
  wire minusOp_carry__3_n_3;
  wire minusOp_carry__4_i_1_n_0;
  wire minusOp_carry__4_i_2_n_0;
  wire minusOp_carry__4_i_3_n_0;
  wire minusOp_carry__4_i_4_n_0;
  wire minusOp_carry__4_n_0;
  wire minusOp_carry__4_n_1;
  wire minusOp_carry__4_n_2;
  wire minusOp_carry__4_n_3;
  wire minusOp_carry__5_i_1_n_0;
  wire minusOp_carry__5_i_2_n_0;
  wire minusOp_carry__5_i_3_n_0;
  wire minusOp_carry__5_i_4_n_0;
  wire minusOp_carry__5_n_0;
  wire minusOp_carry__5_n_1;
  wire minusOp_carry__5_n_2;
  wire minusOp_carry__5_n_3;
  wire minusOp_carry__6_i_1_n_0;
  wire minusOp_carry__6_i_2_n_0;
  wire minusOp_carry__6_i_3_n_0;
  wire minusOp_carry__6_n_2;
  wire minusOp_carry__6_n_3;
  wire minusOp_carry_i_1_n_0;
  wire minusOp_carry_i_2_n_0;
  wire minusOp_carry_i_3_n_0;
  wire minusOp_carry_i_4_n_0;
  wire minusOp_carry_n_0;
  wire minusOp_carry_n_1;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire o_control0a;
  wire o_control0a_i_10_n_0;
  wire o_control0a_i_1_n_0;
  wire o_control0a_i_3_n_0;
  wire o_control0a_i_4_n_0;
  wire o_control0a_i_5_n_0;
  wire o_control0a_i_6_n_0;
  wire o_control0a_i_7_n_0;
  wire o_control0a_i_8_n_0;
  wire o_control0a_i_9_n_0;
  wire o_control0b;
  wire o_control0b_i_1_n_0;
  wire o_control1a;
  wire o_control1a_i_1_n_0;
  wire o_done;
  wire o_done_i_1_n_0;
  wire [31:0]o_mem0a_addr;
  wire o_mem0a_en;
  wire [31:0]o_mem0b_addr;
  wire [19:0]o_mem0b_din;
  wire o_mem0b_en;
  wire [0:0]o_mem0b_we;
  wire [31:0]o_mem1a_addr;
  wire o_mem1a_en;
  wire [31:1]plusOp;
  wire [31:0]plusOp1_in;
  wire [31:1]plusOp2_in;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__3_n_0;
  wire plusOp_carry__3_n_1;
  wire plusOp_carry__3_n_2;
  wire plusOp_carry__3_n_3;
  wire plusOp_carry__4_n_0;
  wire plusOp_carry__4_n_1;
  wire plusOp_carry__4_n_2;
  wire plusOp_carry__4_n_3;
  wire plusOp_carry__5_n_0;
  wire plusOp_carry__5_n_1;
  wire plusOp_carry__5_n_2;
  wire plusOp_carry__5_n_3;
  wire plusOp_carry__6_n_2;
  wire plusOp_carry__6_n_3;
  wire plusOp_carry_i_1_n_0;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire \plusOp_inferred__0/i__carry__0_n_0 ;
  wire \plusOp_inferred__0/i__carry__0_n_1 ;
  wire \plusOp_inferred__0/i__carry__0_n_2 ;
  wire \plusOp_inferred__0/i__carry__0_n_3 ;
  wire \plusOp_inferred__0/i__carry__0_n_4 ;
  wire \plusOp_inferred__0/i__carry__0_n_5 ;
  wire \plusOp_inferred__0/i__carry__0_n_6 ;
  wire \plusOp_inferred__0/i__carry__0_n_7 ;
  wire \plusOp_inferred__0/i__carry__1_n_0 ;
  wire \plusOp_inferred__0/i__carry__1_n_1 ;
  wire \plusOp_inferred__0/i__carry__1_n_2 ;
  wire \plusOp_inferred__0/i__carry__1_n_3 ;
  wire \plusOp_inferred__0/i__carry__1_n_4 ;
  wire \plusOp_inferred__0/i__carry__1_n_5 ;
  wire \plusOp_inferred__0/i__carry__1_n_6 ;
  wire \plusOp_inferred__0/i__carry__1_n_7 ;
  wire \plusOp_inferred__0/i__carry__2_n_0 ;
  wire \plusOp_inferred__0/i__carry__2_n_1 ;
  wire \plusOp_inferred__0/i__carry__2_n_2 ;
  wire \plusOp_inferred__0/i__carry__2_n_3 ;
  wire \plusOp_inferred__0/i__carry__2_n_4 ;
  wire \plusOp_inferred__0/i__carry__2_n_5 ;
  wire \plusOp_inferred__0/i__carry__2_n_6 ;
  wire \plusOp_inferred__0/i__carry__2_n_7 ;
  wire \plusOp_inferred__0/i__carry__3_n_0 ;
  wire \plusOp_inferred__0/i__carry__3_n_1 ;
  wire \plusOp_inferred__0/i__carry__3_n_2 ;
  wire \plusOp_inferred__0/i__carry__3_n_3 ;
  wire \plusOp_inferred__0/i__carry__3_n_4 ;
  wire \plusOp_inferred__0/i__carry__3_n_5 ;
  wire \plusOp_inferred__0/i__carry__3_n_6 ;
  wire \plusOp_inferred__0/i__carry__3_n_7 ;
  wire \plusOp_inferred__0/i__carry__4_n_0 ;
  wire \plusOp_inferred__0/i__carry__4_n_1 ;
  wire \plusOp_inferred__0/i__carry__4_n_2 ;
  wire \plusOp_inferred__0/i__carry__4_n_3 ;
  wire \plusOp_inferred__0/i__carry__4_n_4 ;
  wire \plusOp_inferred__0/i__carry__4_n_5 ;
  wire \plusOp_inferred__0/i__carry__4_n_6 ;
  wire \plusOp_inferred__0/i__carry__4_n_7 ;
  wire \plusOp_inferred__0/i__carry__5_n_0 ;
  wire \plusOp_inferred__0/i__carry__5_n_1 ;
  wire \plusOp_inferred__0/i__carry__5_n_2 ;
  wire \plusOp_inferred__0/i__carry__5_n_3 ;
  wire \plusOp_inferred__0/i__carry__5_n_4 ;
  wire \plusOp_inferred__0/i__carry__5_n_5 ;
  wire \plusOp_inferred__0/i__carry__5_n_6 ;
  wire \plusOp_inferred__0/i__carry__5_n_7 ;
  wire \plusOp_inferred__0/i__carry__6_n_2 ;
  wire \plusOp_inferred__0/i__carry__6_n_3 ;
  wire \plusOp_inferred__0/i__carry__6_n_5 ;
  wire \plusOp_inferred__0/i__carry__6_n_6 ;
  wire \plusOp_inferred__0/i__carry__6_n_7 ;
  wire \plusOp_inferred__0/i__carry_n_0 ;
  wire \plusOp_inferred__0/i__carry_n_1 ;
  wire \plusOp_inferred__0/i__carry_n_2 ;
  wire \plusOp_inferred__0/i__carry_n_3 ;
  wire \plusOp_inferred__0/i__carry_n_4 ;
  wire \plusOp_inferred__0/i__carry_n_5 ;
  wire \plusOp_inferred__0/i__carry_n_6 ;
  wire \plusOp_inferred__1/i__carry__0_n_0 ;
  wire \plusOp_inferred__1/i__carry__0_n_1 ;
  wire \plusOp_inferred__1/i__carry__0_n_2 ;
  wire \plusOp_inferred__1/i__carry__0_n_3 ;
  wire \plusOp_inferred__1/i__carry__1_n_0 ;
  wire \plusOp_inferred__1/i__carry__1_n_1 ;
  wire \plusOp_inferred__1/i__carry__1_n_2 ;
  wire \plusOp_inferred__1/i__carry__1_n_3 ;
  wire \plusOp_inferred__1/i__carry__2_n_0 ;
  wire \plusOp_inferred__1/i__carry__2_n_1 ;
  wire \plusOp_inferred__1/i__carry__2_n_2 ;
  wire \plusOp_inferred__1/i__carry__2_n_3 ;
  wire \plusOp_inferred__1/i__carry__3_n_0 ;
  wire \plusOp_inferred__1/i__carry__3_n_1 ;
  wire \plusOp_inferred__1/i__carry__3_n_2 ;
  wire \plusOp_inferred__1/i__carry__3_n_3 ;
  wire \plusOp_inferred__1/i__carry__4_n_0 ;
  wire \plusOp_inferred__1/i__carry__4_n_1 ;
  wire \plusOp_inferred__1/i__carry__4_n_2 ;
  wire \plusOp_inferred__1/i__carry__4_n_3 ;
  wire \plusOp_inferred__1/i__carry__5_n_0 ;
  wire \plusOp_inferred__1/i__carry__5_n_1 ;
  wire \plusOp_inferred__1/i__carry__5_n_2 ;
  wire \plusOp_inferred__1/i__carry__5_n_3 ;
  wire \plusOp_inferred__1/i__carry__6_n_1 ;
  wire \plusOp_inferred__1/i__carry__6_n_2 ;
  wire \plusOp_inferred__1/i__carry__6_n_3 ;
  wire \plusOp_inferred__1/i__carry_n_0 ;
  wire \plusOp_inferred__1/i__carry_n_1 ;
  wire \plusOp_inferred__1/i__carry_n_2 ;
  wire \plusOp_inferred__1/i__carry_n_3 ;
  wire rst;
  (* RTL_KEEP = "true" *) wire [4:0]\s_acc[0]_4 ;
  (* RTL_KEEP = "true" *) wire [4:0]\s_acc[1]_5 ;
  (* RTL_KEEP = "true" *) wire [4:0]\s_acc[2]_6 ;
  (* RTL_KEEP = "true" *) wire [4:0]\s_acc[3]_7 ;
  (* RTL_KEEP = "true" *) wire [4:0]\s_acc[4]_0 ;
  (* RTL_KEEP = "true" *) wire [4:0]\s_acc[5]_1 ;
  (* RTL_KEEP = "true" *) wire [4:0]\s_acc[6]_2 ;
  (* RTL_KEEP = "true" *) wire [4:0]\s_acc[7]_3 ;
  wire s_acc_change_i_1_n_0;
  wire s_acc_change_reg_n_0;
  wire s_acc_flush_i_1_n_0;
  wire s_acc_flush_reg_n_0;
  wire s_acc_sel;
  wire s_acc_sel_i_1_n_0;
  wire [31:0]s_coeffs;
  wire s_coeffs0;
  wire \s_coeffs[31]_i_2_n_0 ;
  wire \s_coeffs[31]_i_3_n_0 ;
  wire \s_coeffs[31]_i_4_n_0 ;
  wire \s_coeffs[31]_i_5_n_0 ;
  wire \s_coeffs[31]_i_6_n_0 ;
  wire \s_coeffs[31]_i_7_n_0 ;
  wire \s_coeffs[31]_i_8_n_0 ;
  wire \s_coeffs[31]_i_9_n_0 ;
  wire [31:0]s_coeffs_addr;
  wire s_len;
  wire \s_len_reg_n_0_[0] ;
  wire \s_len_reg_n_0_[10] ;
  wire \s_len_reg_n_0_[11] ;
  wire \s_len_reg_n_0_[12] ;
  wire \s_len_reg_n_0_[13] ;
  wire \s_len_reg_n_0_[14] ;
  wire \s_len_reg_n_0_[15] ;
  wire \s_len_reg_n_0_[16] ;
  wire \s_len_reg_n_0_[17] ;
  wire \s_len_reg_n_0_[18] ;
  wire \s_len_reg_n_0_[19] ;
  wire \s_len_reg_n_0_[1] ;
  wire \s_len_reg_n_0_[20] ;
  wire \s_len_reg_n_0_[21] ;
  wire \s_len_reg_n_0_[22] ;
  wire \s_len_reg_n_0_[23] ;
  wire \s_len_reg_n_0_[24] ;
  wire \s_len_reg_n_0_[25] ;
  wire \s_len_reg_n_0_[26] ;
  wire \s_len_reg_n_0_[27] ;
  wire \s_len_reg_n_0_[28] ;
  wire \s_len_reg_n_0_[29] ;
  wire \s_len_reg_n_0_[2] ;
  wire \s_len_reg_n_0_[30] ;
  wire \s_len_reg_n_0_[31] ;
  wire \s_len_reg_n_0_[3] ;
  wire \s_len_reg_n_0_[4] ;
  wire \s_len_reg_n_0_[5] ;
  wire \s_len_reg_n_0_[6] ;
  wire \s_len_reg_n_0_[7] ;
  wire \s_len_reg_n_0_[8] ;
  wire \s_len_reg_n_0_[9] ;
  wire s_main;
  wire s_main_i_1_n_0;
  wire s_nomac_en;
  wire s_nomac_en_i_2_n_0;
  wire s_nomac_en_i_3_n_0;
  wire s_nomac_en_i_4_n_0;
  wire s_nomac_en_i_5_n_0;
  wire s_nomac_en_i_6_n_0;
  wire s_nomac_en_i_7_n_0;
  wire s_nomac_en_i_8_n_0;
  wire s_nomac_en_i_9_n_0;
  wire s_nomac_en_reg_n_0;
  wire [31:0]s_out_addr;
  wire [31:1]s_out_ctr;
  wire [31:1]s_out_ctr0;
  wire s_out_ctr1_carry__0_i_1_n_0;
  wire s_out_ctr1_carry__0_i_2_n_0;
  wire s_out_ctr1_carry__0_i_3_n_0;
  wire s_out_ctr1_carry__0_i_4_n_0;
  wire s_out_ctr1_carry__0_i_5_n_0;
  wire s_out_ctr1_carry__0_i_6_n_0;
  wire s_out_ctr1_carry__0_i_7_n_0;
  wire s_out_ctr1_carry__0_i_8_n_0;
  wire s_out_ctr1_carry__0_n_0;
  wire s_out_ctr1_carry__0_n_1;
  wire s_out_ctr1_carry__0_n_2;
  wire s_out_ctr1_carry__0_n_3;
  wire s_out_ctr1_carry__1_i_1_n_0;
  wire s_out_ctr1_carry__1_i_2_n_0;
  wire s_out_ctr1_carry__1_i_3_n_0;
  wire s_out_ctr1_carry__1_i_4_n_0;
  wire s_out_ctr1_carry__1_i_5_n_0;
  wire s_out_ctr1_carry__1_i_6_n_0;
  wire s_out_ctr1_carry__1_i_7_n_0;
  wire s_out_ctr1_carry__1_i_8_n_0;
  wire s_out_ctr1_carry__1_n_0;
  wire s_out_ctr1_carry__1_n_1;
  wire s_out_ctr1_carry__1_n_2;
  wire s_out_ctr1_carry__1_n_3;
  wire s_out_ctr1_carry__2_i_1_n_0;
  wire s_out_ctr1_carry__2_i_2_n_0;
  wire s_out_ctr1_carry__2_i_3_n_0;
  wire s_out_ctr1_carry__2_i_4_n_0;
  wire s_out_ctr1_carry__2_i_5_n_0;
  wire s_out_ctr1_carry__2_i_6_n_0;
  wire s_out_ctr1_carry__2_i_7_n_0;
  wire s_out_ctr1_carry__2_i_8_n_0;
  wire s_out_ctr1_carry__2_n_0;
  wire s_out_ctr1_carry__2_n_1;
  wire s_out_ctr1_carry__2_n_2;
  wire s_out_ctr1_carry__2_n_3;
  wire s_out_ctr1_carry_i_1_n_0;
  wire s_out_ctr1_carry_i_2_n_0;
  wire s_out_ctr1_carry_i_3_n_0;
  wire s_out_ctr1_carry_i_4_n_0;
  wire s_out_ctr1_carry_i_5_n_0;
  wire s_out_ctr1_carry_i_6_n_0;
  wire s_out_ctr1_carry_n_0;
  wire s_out_ctr1_carry_n_1;
  wire s_out_ctr1_carry_n_2;
  wire s_out_ctr1_carry_n_3;
  wire \s_out_ctr[10]_i_1_n_0 ;
  wire \s_out_ctr[11]_i_1_n_0 ;
  wire \s_out_ctr[12]_i_1_n_0 ;
  wire \s_out_ctr[13]_i_1_n_0 ;
  wire \s_out_ctr[14]_i_1_n_0 ;
  wire \s_out_ctr[15]_i_1_n_0 ;
  wire \s_out_ctr[16]_i_1_n_0 ;
  wire \s_out_ctr[17]_i_1_n_0 ;
  wire \s_out_ctr[18]_i_1_n_0 ;
  wire \s_out_ctr[19]_i_1_n_0 ;
  wire \s_out_ctr[1]_i_1_n_0 ;
  wire \s_out_ctr[20]_i_1_n_0 ;
  wire \s_out_ctr[21]_i_1_n_0 ;
  wire \s_out_ctr[22]_i_1_n_0 ;
  wire \s_out_ctr[23]_i_1_n_0 ;
  wire \s_out_ctr[24]_i_1_n_0 ;
  wire \s_out_ctr[25]_i_1_n_0 ;
  wire \s_out_ctr[26]_i_1_n_0 ;
  wire \s_out_ctr[27]_i_1_n_0 ;
  wire \s_out_ctr[28]_i_1_n_0 ;
  wire \s_out_ctr[29]_i_1_n_0 ;
  wire \s_out_ctr[2]_i_1_n_0 ;
  wire \s_out_ctr[30]_i_1_n_0 ;
  wire \s_out_ctr[31]_i_1_n_0 ;
  wire \s_out_ctr[31]_i_2_n_0 ;
  wire \s_out_ctr[3]_i_1_n_0 ;
  wire \s_out_ctr[4]_i_1_n_0 ;
  wire \s_out_ctr[4]_i_3_n_0 ;
  wire \s_out_ctr[5]_i_1_n_0 ;
  wire \s_out_ctr[6]_i_1_n_0 ;
  wire \s_out_ctr[7]_i_1_n_0 ;
  wire \s_out_ctr[8]_i_1_n_0 ;
  wire \s_out_ctr[9]_i_1_n_0 ;
  wire \s_out_ctr_reg[12]_i_2_n_0 ;
  wire \s_out_ctr_reg[12]_i_2_n_1 ;
  wire \s_out_ctr_reg[12]_i_2_n_2 ;
  wire \s_out_ctr_reg[12]_i_2_n_3 ;
  wire \s_out_ctr_reg[16]_i_2_n_0 ;
  wire \s_out_ctr_reg[16]_i_2_n_1 ;
  wire \s_out_ctr_reg[16]_i_2_n_2 ;
  wire \s_out_ctr_reg[16]_i_2_n_3 ;
  wire \s_out_ctr_reg[20]_i_2_n_0 ;
  wire \s_out_ctr_reg[20]_i_2_n_1 ;
  wire \s_out_ctr_reg[20]_i_2_n_2 ;
  wire \s_out_ctr_reg[20]_i_2_n_3 ;
  wire \s_out_ctr_reg[24]_i_2_n_0 ;
  wire \s_out_ctr_reg[24]_i_2_n_1 ;
  wire \s_out_ctr_reg[24]_i_2_n_2 ;
  wire \s_out_ctr_reg[24]_i_2_n_3 ;
  wire \s_out_ctr_reg[28]_i_2_n_0 ;
  wire \s_out_ctr_reg[28]_i_2_n_1 ;
  wire \s_out_ctr_reg[28]_i_2_n_2 ;
  wire \s_out_ctr_reg[28]_i_2_n_3 ;
  wire \s_out_ctr_reg[31]_i_3_n_2 ;
  wire \s_out_ctr_reg[31]_i_3_n_3 ;
  wire \s_out_ctr_reg[4]_i_2_n_0 ;
  wire \s_out_ctr_reg[4]_i_2_n_1 ;
  wire \s_out_ctr_reg[4]_i_2_n_2 ;
  wire \s_out_ctr_reg[4]_i_2_n_3 ;
  wire \s_out_ctr_reg[8]_i_2_n_0 ;
  wire \s_out_ctr_reg[8]_i_2_n_1 ;
  wire \s_out_ctr_reg[8]_i_2_n_2 ;
  wire \s_out_ctr_reg[8]_i_2_n_3 ;
  wire [15:0]\s_tmp_nomac_reg[0]0 ;
  wire \s_tmp_nomac_reg[0]0__0_carry__0_i_10_n_0 ;
  wire \s_tmp_nomac_reg[0]0__0_carry__0_i_11_n_0 ;
  wire \s_tmp_nomac_reg[0]0__0_carry__0_i_12_n_0 ;
  wire \s_tmp_nomac_reg[0]0__0_carry__0_i_1_n_0 ;
  wire \s_tmp_nomac_reg[0]0__0_carry__0_i_2_n_0 ;
  wire \s_tmp_nomac_reg[0]0__0_carry__0_i_3_n_0 ;
  wire \s_tmp_nomac_reg[0]0__0_carry__0_i_4_n_0 ;
  wire \s_tmp_nomac_reg[0]0__0_carry__0_i_5_n_0 ;
  wire \s_tmp_nomac_reg[0]0__0_carry__0_i_6_n_0 ;
  wire \s_tmp_nomac_reg[0]0__0_carry__0_i_7_n_0 ;
  wire \s_tmp_nomac_reg[0]0__0_carry__0_i_8_n_0 ;
  wire \s_tmp_nomac_reg[0]0__0_carry__0_i_9_n_0 ;
  wire \s_tmp_nomac_reg[0]0__0_carry__0_n_0 ;
  wire \s_tmp_nomac_reg[0]0__0_carry__0_n_1 ;
  wire \s_tmp_nomac_reg[0]0__0_carry__0_n_2 ;
  wire \s_tmp_nomac_reg[0]0__0_carry__0_n_3 ;
  wire \s_tmp_nomac_reg[0]0__0_carry__0_n_4 ;
  wire \s_tmp_nomac_reg[0]0__0_carry__0_n_5 ;
  wire \s_tmp_nomac_reg[0]0__0_carry__0_n_6 ;
  wire \s_tmp_nomac_reg[0]0__0_carry__0_n_7 ;
  wire \s_tmp_nomac_reg[0]0__0_carry__1_i_1_n_0 ;
  wire \s_tmp_nomac_reg[0]0__0_carry__1_i_2_n_0 ;
  wire \s_tmp_nomac_reg[0]0__0_carry__1_i_3_n_0 ;
  wire \s_tmp_nomac_reg[0]0__0_carry__1_i_4_n_0 ;
  wire \s_tmp_nomac_reg[0]0__0_carry__1_n_1 ;
  wire \s_tmp_nomac_reg[0]0__0_carry__1_n_3 ;
  wire \s_tmp_nomac_reg[0]0__0_carry__1_n_6 ;
  wire \s_tmp_nomac_reg[0]0__0_carry__1_n_7 ;
  wire \s_tmp_nomac_reg[0]0__0_carry_i_1_n_0 ;
  wire \s_tmp_nomac_reg[0]0__0_carry_i_2_n_0 ;
  wire \s_tmp_nomac_reg[0]0__0_carry_i_3_n_0 ;
  wire \s_tmp_nomac_reg[0]0__0_carry_i_4_n_0 ;
  wire \s_tmp_nomac_reg[0]0__0_carry_i_5_n_0 ;
  wire \s_tmp_nomac_reg[0]0__0_carry_i_6_n_0 ;
  wire \s_tmp_nomac_reg[0]0__0_carry_i_7_n_0 ;
  wire \s_tmp_nomac_reg[0]0__0_carry_i_8_n_0 ;
  wire \s_tmp_nomac_reg[0]0__0_carry_n_0 ;
  wire \s_tmp_nomac_reg[0]0__0_carry_n_1 ;
  wire \s_tmp_nomac_reg[0]0__0_carry_n_2 ;
  wire \s_tmp_nomac_reg[0]0__0_carry_n_3 ;
  wire \s_tmp_nomac_reg[0]0__0_carry_n_4 ;
  wire \s_tmp_nomac_reg[0]0__30_carry__0_i_10_n_0 ;
  wire \s_tmp_nomac_reg[0]0__30_carry__0_i_11_n_0 ;
  wire \s_tmp_nomac_reg[0]0__30_carry__0_i_12_n_0 ;
  wire \s_tmp_nomac_reg[0]0__30_carry__0_i_1_n_0 ;
  wire \s_tmp_nomac_reg[0]0__30_carry__0_i_2_n_0 ;
  wire \s_tmp_nomac_reg[0]0__30_carry__0_i_3_n_0 ;
  wire \s_tmp_nomac_reg[0]0__30_carry__0_i_4_n_0 ;
  wire \s_tmp_nomac_reg[0]0__30_carry__0_i_5_n_0 ;
  wire \s_tmp_nomac_reg[0]0__30_carry__0_i_6_n_0 ;
  wire \s_tmp_nomac_reg[0]0__30_carry__0_i_7_n_0 ;
  wire \s_tmp_nomac_reg[0]0__30_carry__0_i_8_n_0 ;
  wire \s_tmp_nomac_reg[0]0__30_carry__0_i_9_n_0 ;
  wire \s_tmp_nomac_reg[0]0__30_carry__0_n_0 ;
  wire \s_tmp_nomac_reg[0]0__30_carry__0_n_1 ;
  wire \s_tmp_nomac_reg[0]0__30_carry__0_n_2 ;
  wire \s_tmp_nomac_reg[0]0__30_carry__0_n_3 ;
  wire \s_tmp_nomac_reg[0]0__30_carry__0_n_4 ;
  wire \s_tmp_nomac_reg[0]0__30_carry__0_n_5 ;
  wire \s_tmp_nomac_reg[0]0__30_carry__0_n_6 ;
  wire \s_tmp_nomac_reg[0]0__30_carry__0_n_7 ;
  wire \s_tmp_nomac_reg[0]0__30_carry__1_i_1_n_0 ;
  wire \s_tmp_nomac_reg[0]0__30_carry__1_i_2_n_0 ;
  wire \s_tmp_nomac_reg[0]0__30_carry__1_i_3_n_0 ;
  wire \s_tmp_nomac_reg[0]0__30_carry__1_i_4_n_0 ;
  wire \s_tmp_nomac_reg[0]0__30_carry__1_n_1 ;
  wire \s_tmp_nomac_reg[0]0__30_carry__1_n_3 ;
  wire \s_tmp_nomac_reg[0]0__30_carry__1_n_6 ;
  wire \s_tmp_nomac_reg[0]0__30_carry__1_n_7 ;
  wire \s_tmp_nomac_reg[0]0__30_carry_i_1_n_0 ;
  wire \s_tmp_nomac_reg[0]0__30_carry_i_2_n_0 ;
  wire \s_tmp_nomac_reg[0]0__30_carry_i_3_n_0 ;
  wire \s_tmp_nomac_reg[0]0__30_carry_i_4_n_0 ;
  wire \s_tmp_nomac_reg[0]0__30_carry_i_5_n_0 ;
  wire \s_tmp_nomac_reg[0]0__30_carry_i_6_n_0 ;
  wire \s_tmp_nomac_reg[0]0__30_carry_i_7_n_0 ;
  wire \s_tmp_nomac_reg[0]0__30_carry_i_8_n_0 ;
  wire \s_tmp_nomac_reg[0]0__30_carry_n_0 ;
  wire \s_tmp_nomac_reg[0]0__30_carry_n_1 ;
  wire \s_tmp_nomac_reg[0]0__30_carry_n_2 ;
  wire \s_tmp_nomac_reg[0]0__30_carry_n_3 ;
  wire \s_tmp_nomac_reg[0]0__30_carry_n_4 ;
  wire \s_tmp_nomac_reg[0]0__30_carry_n_5 ;
  wire \s_tmp_nomac_reg[0]0__30_carry_n_6 ;
  wire \s_tmp_nomac_reg[0]0__30_carry_n_7 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__0_i_10_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__0_i_11_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__0_i_12_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__0_i_13_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__0_i_14_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__0_i_15_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__0_i_16_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__0_i_17_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__0_i_18_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__0_i_19_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__0_i_1_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__0_i_2_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__0_i_3_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__0_i_4_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__0_i_5_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__0_i_6_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__0_i_7_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__0_i_8_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__0_i_9_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__0_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__0_n_1 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__0_n_2 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__0_n_3 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__1_i_10_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__1_i_11_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__1_i_12_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__1_i_13_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__1_i_14_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__1_i_15_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__1_i_16_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__1_i_1_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__1_i_2_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__1_i_3_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__1_i_4_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__1_i_5_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__1_i_6_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__1_i_7_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__1_i_8_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__1_i_9_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__1_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__1_n_1 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__1_n_2 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__1_n_3 ;
  wire \s_tmp_nomac_reg[0]0__60_carry__2_i_1_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry_i_1_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry_i_2_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry_i_3_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry_i_4_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry_i_5_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry_n_0 ;
  wire \s_tmp_nomac_reg[0]0__60_carry_n_1 ;
  wire \s_tmp_nomac_reg[0]0__60_carry_n_2 ;
  wire \s_tmp_nomac_reg[0]0__60_carry_n_3 ;
  wire [15:0]\s_tmp_nomac_reg[1]0 ;
  wire \s_tmp_nomac_reg[1]0__0_carry__0_i_10_n_0 ;
  wire \s_tmp_nomac_reg[1]0__0_carry__0_i_11_n_0 ;
  wire \s_tmp_nomac_reg[1]0__0_carry__0_i_12_n_0 ;
  wire \s_tmp_nomac_reg[1]0__0_carry__0_i_1_n_0 ;
  wire \s_tmp_nomac_reg[1]0__0_carry__0_i_2_n_0 ;
  wire \s_tmp_nomac_reg[1]0__0_carry__0_i_3_n_0 ;
  wire \s_tmp_nomac_reg[1]0__0_carry__0_i_4_n_0 ;
  wire \s_tmp_nomac_reg[1]0__0_carry__0_i_5_n_0 ;
  wire \s_tmp_nomac_reg[1]0__0_carry__0_i_6_n_0 ;
  wire \s_tmp_nomac_reg[1]0__0_carry__0_i_7_n_0 ;
  wire \s_tmp_nomac_reg[1]0__0_carry__0_i_8_n_0 ;
  wire \s_tmp_nomac_reg[1]0__0_carry__0_i_9_n_0 ;
  wire \s_tmp_nomac_reg[1]0__0_carry__0_n_0 ;
  wire \s_tmp_nomac_reg[1]0__0_carry__0_n_1 ;
  wire \s_tmp_nomac_reg[1]0__0_carry__0_n_2 ;
  wire \s_tmp_nomac_reg[1]0__0_carry__0_n_3 ;
  wire \s_tmp_nomac_reg[1]0__0_carry__0_n_4 ;
  wire \s_tmp_nomac_reg[1]0__0_carry__0_n_5 ;
  wire \s_tmp_nomac_reg[1]0__0_carry__0_n_6 ;
  wire \s_tmp_nomac_reg[1]0__0_carry__0_n_7 ;
  wire \s_tmp_nomac_reg[1]0__0_carry__1_i_1_n_0 ;
  wire \s_tmp_nomac_reg[1]0__0_carry__1_i_2_n_0 ;
  wire \s_tmp_nomac_reg[1]0__0_carry__1_i_3_n_0 ;
  wire \s_tmp_nomac_reg[1]0__0_carry__1_i_4_n_0 ;
  wire \s_tmp_nomac_reg[1]0__0_carry__1_n_1 ;
  wire \s_tmp_nomac_reg[1]0__0_carry__1_n_3 ;
  wire \s_tmp_nomac_reg[1]0__0_carry__1_n_6 ;
  wire \s_tmp_nomac_reg[1]0__0_carry__1_n_7 ;
  wire \s_tmp_nomac_reg[1]0__0_carry_i_1_n_0 ;
  wire \s_tmp_nomac_reg[1]0__0_carry_i_2_n_0 ;
  wire \s_tmp_nomac_reg[1]0__0_carry_i_3_n_0 ;
  wire \s_tmp_nomac_reg[1]0__0_carry_i_4_n_0 ;
  wire \s_tmp_nomac_reg[1]0__0_carry_i_5_n_0 ;
  wire \s_tmp_nomac_reg[1]0__0_carry_i_6_n_0 ;
  wire \s_tmp_nomac_reg[1]0__0_carry_i_7_n_0 ;
  wire \s_tmp_nomac_reg[1]0__0_carry_i_8_n_0 ;
  wire \s_tmp_nomac_reg[1]0__0_carry_n_0 ;
  wire \s_tmp_nomac_reg[1]0__0_carry_n_1 ;
  wire \s_tmp_nomac_reg[1]0__0_carry_n_2 ;
  wire \s_tmp_nomac_reg[1]0__0_carry_n_3 ;
  wire \s_tmp_nomac_reg[1]0__0_carry_n_4 ;
  wire \s_tmp_nomac_reg[1]0__30_carry__0_i_10_n_0 ;
  wire \s_tmp_nomac_reg[1]0__30_carry__0_i_11_n_0 ;
  wire \s_tmp_nomac_reg[1]0__30_carry__0_i_12_n_0 ;
  wire \s_tmp_nomac_reg[1]0__30_carry__0_i_1_n_0 ;
  wire \s_tmp_nomac_reg[1]0__30_carry__0_i_2_n_0 ;
  wire \s_tmp_nomac_reg[1]0__30_carry__0_i_3_n_0 ;
  wire \s_tmp_nomac_reg[1]0__30_carry__0_i_4_n_0 ;
  wire \s_tmp_nomac_reg[1]0__30_carry__0_i_5_n_0 ;
  wire \s_tmp_nomac_reg[1]0__30_carry__0_i_6_n_0 ;
  wire \s_tmp_nomac_reg[1]0__30_carry__0_i_7_n_0 ;
  wire \s_tmp_nomac_reg[1]0__30_carry__0_i_8_n_0 ;
  wire \s_tmp_nomac_reg[1]0__30_carry__0_i_9_n_0 ;
  wire \s_tmp_nomac_reg[1]0__30_carry__0_n_0 ;
  wire \s_tmp_nomac_reg[1]0__30_carry__0_n_1 ;
  wire \s_tmp_nomac_reg[1]0__30_carry__0_n_2 ;
  wire \s_tmp_nomac_reg[1]0__30_carry__0_n_3 ;
  wire \s_tmp_nomac_reg[1]0__30_carry__0_n_4 ;
  wire \s_tmp_nomac_reg[1]0__30_carry__0_n_5 ;
  wire \s_tmp_nomac_reg[1]0__30_carry__0_n_6 ;
  wire \s_tmp_nomac_reg[1]0__30_carry__0_n_7 ;
  wire \s_tmp_nomac_reg[1]0__30_carry__1_i_1_n_0 ;
  wire \s_tmp_nomac_reg[1]0__30_carry__1_i_2_n_0 ;
  wire \s_tmp_nomac_reg[1]0__30_carry__1_i_3_n_0 ;
  wire \s_tmp_nomac_reg[1]0__30_carry__1_i_4_n_0 ;
  wire \s_tmp_nomac_reg[1]0__30_carry__1_n_1 ;
  wire \s_tmp_nomac_reg[1]0__30_carry__1_n_3 ;
  wire \s_tmp_nomac_reg[1]0__30_carry__1_n_6 ;
  wire \s_tmp_nomac_reg[1]0__30_carry__1_n_7 ;
  wire \s_tmp_nomac_reg[1]0__30_carry_i_1_n_0 ;
  wire \s_tmp_nomac_reg[1]0__30_carry_i_2_n_0 ;
  wire \s_tmp_nomac_reg[1]0__30_carry_i_3_n_0 ;
  wire \s_tmp_nomac_reg[1]0__30_carry_i_4_n_0 ;
  wire \s_tmp_nomac_reg[1]0__30_carry_i_5_n_0 ;
  wire \s_tmp_nomac_reg[1]0__30_carry_i_6_n_0 ;
  wire \s_tmp_nomac_reg[1]0__30_carry_i_7_n_0 ;
  wire \s_tmp_nomac_reg[1]0__30_carry_i_8_n_0 ;
  wire \s_tmp_nomac_reg[1]0__30_carry_n_0 ;
  wire \s_tmp_nomac_reg[1]0__30_carry_n_1 ;
  wire \s_tmp_nomac_reg[1]0__30_carry_n_2 ;
  wire \s_tmp_nomac_reg[1]0__30_carry_n_3 ;
  wire \s_tmp_nomac_reg[1]0__30_carry_n_4 ;
  wire \s_tmp_nomac_reg[1]0__30_carry_n_5 ;
  wire \s_tmp_nomac_reg[1]0__30_carry_n_6 ;
  wire \s_tmp_nomac_reg[1]0__30_carry_n_7 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__0_i_10_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__0_i_11_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__0_i_12_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__0_i_13_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__0_i_14_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__0_i_15_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__0_i_16_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__0_i_17_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__0_i_18_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__0_i_19_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__0_i_1_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__0_i_2_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__0_i_3_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__0_i_4_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__0_i_5_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__0_i_6_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__0_i_7_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__0_i_8_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__0_i_9_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__0_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__0_n_1 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__0_n_2 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__0_n_3 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__1_i_10_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__1_i_11_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__1_i_12_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__1_i_13_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__1_i_14_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__1_i_15_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__1_i_16_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__1_i_1_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__1_i_2_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__1_i_3_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__1_i_4_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__1_i_5_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__1_i_6_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__1_i_7_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__1_i_8_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__1_i_9_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__1_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__1_n_1 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__1_n_2 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__1_n_3 ;
  wire \s_tmp_nomac_reg[1]0__60_carry__2_i_1_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry_i_1_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry_i_2_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry_i_3_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry_i_4_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry_i_5_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry_n_0 ;
  wire \s_tmp_nomac_reg[1]0__60_carry_n_1 ;
  wire \s_tmp_nomac_reg[1]0__60_carry_n_2 ;
  wire \s_tmp_nomac_reg[1]0__60_carry_n_3 ;
  wire \s_tmp_nomac_reg[1]__0_n_0 ;
  wire \s_tmp_nomac_reg[1]__1_n_0 ;
  wire \s_tmp_nomac_reg[1]__2_n_0 ;
  wire \s_tmp_nomac_reg[1]__3_n_0 ;
  wire \s_tmp_nomac_reg[1]__4_n_0 ;
  wire \s_tmp_nomac_reg[1]__5_n_0 ;
  wire \s_tmp_nomac_reg[1]__6_n_0 ;
  wire [15:0]\s_tmp_nomac_reg[2]0 ;
  wire \s_tmp_nomac_reg[2]0__0_carry__0_i_10_n_0 ;
  wire \s_tmp_nomac_reg[2]0__0_carry__0_i_11_n_0 ;
  wire \s_tmp_nomac_reg[2]0__0_carry__0_i_12_n_0 ;
  wire \s_tmp_nomac_reg[2]0__0_carry__0_i_1_n_0 ;
  wire \s_tmp_nomac_reg[2]0__0_carry__0_i_2_n_0 ;
  wire \s_tmp_nomac_reg[2]0__0_carry__0_i_3_n_0 ;
  wire \s_tmp_nomac_reg[2]0__0_carry__0_i_4_n_0 ;
  wire \s_tmp_nomac_reg[2]0__0_carry__0_i_5_n_0 ;
  wire \s_tmp_nomac_reg[2]0__0_carry__0_i_6_n_0 ;
  wire \s_tmp_nomac_reg[2]0__0_carry__0_i_7_n_0 ;
  wire \s_tmp_nomac_reg[2]0__0_carry__0_i_8_n_0 ;
  wire \s_tmp_nomac_reg[2]0__0_carry__0_i_9_n_0 ;
  wire \s_tmp_nomac_reg[2]0__0_carry__0_n_0 ;
  wire \s_tmp_nomac_reg[2]0__0_carry__0_n_1 ;
  wire \s_tmp_nomac_reg[2]0__0_carry__0_n_2 ;
  wire \s_tmp_nomac_reg[2]0__0_carry__0_n_3 ;
  wire \s_tmp_nomac_reg[2]0__0_carry__0_n_4 ;
  wire \s_tmp_nomac_reg[2]0__0_carry__0_n_5 ;
  wire \s_tmp_nomac_reg[2]0__0_carry__0_n_6 ;
  wire \s_tmp_nomac_reg[2]0__0_carry__0_n_7 ;
  wire \s_tmp_nomac_reg[2]0__0_carry__1_i_1_n_0 ;
  wire \s_tmp_nomac_reg[2]0__0_carry__1_i_2_n_0 ;
  wire \s_tmp_nomac_reg[2]0__0_carry__1_i_3_n_0 ;
  wire \s_tmp_nomac_reg[2]0__0_carry__1_i_4_n_0 ;
  wire \s_tmp_nomac_reg[2]0__0_carry__1_n_1 ;
  wire \s_tmp_nomac_reg[2]0__0_carry__1_n_3 ;
  wire \s_tmp_nomac_reg[2]0__0_carry__1_n_6 ;
  wire \s_tmp_nomac_reg[2]0__0_carry__1_n_7 ;
  wire \s_tmp_nomac_reg[2]0__0_carry_i_1_n_0 ;
  wire \s_tmp_nomac_reg[2]0__0_carry_i_2_n_0 ;
  wire \s_tmp_nomac_reg[2]0__0_carry_i_3_n_0 ;
  wire \s_tmp_nomac_reg[2]0__0_carry_i_4_n_0 ;
  wire \s_tmp_nomac_reg[2]0__0_carry_i_5_n_0 ;
  wire \s_tmp_nomac_reg[2]0__0_carry_i_6_n_0 ;
  wire \s_tmp_nomac_reg[2]0__0_carry_i_7_n_0 ;
  wire \s_tmp_nomac_reg[2]0__0_carry_i_8_n_0 ;
  wire \s_tmp_nomac_reg[2]0__0_carry_n_0 ;
  wire \s_tmp_nomac_reg[2]0__0_carry_n_1 ;
  wire \s_tmp_nomac_reg[2]0__0_carry_n_2 ;
  wire \s_tmp_nomac_reg[2]0__0_carry_n_3 ;
  wire \s_tmp_nomac_reg[2]0__0_carry_n_4 ;
  wire \s_tmp_nomac_reg[2]0__30_carry__0_i_10_n_0 ;
  wire \s_tmp_nomac_reg[2]0__30_carry__0_i_11_n_0 ;
  wire \s_tmp_nomac_reg[2]0__30_carry__0_i_12_n_0 ;
  wire \s_tmp_nomac_reg[2]0__30_carry__0_i_1_n_0 ;
  wire \s_tmp_nomac_reg[2]0__30_carry__0_i_2_n_0 ;
  wire \s_tmp_nomac_reg[2]0__30_carry__0_i_3_n_0 ;
  wire \s_tmp_nomac_reg[2]0__30_carry__0_i_4_n_0 ;
  wire \s_tmp_nomac_reg[2]0__30_carry__0_i_5_n_0 ;
  wire \s_tmp_nomac_reg[2]0__30_carry__0_i_6_n_0 ;
  wire \s_tmp_nomac_reg[2]0__30_carry__0_i_7_n_0 ;
  wire \s_tmp_nomac_reg[2]0__30_carry__0_i_8_n_0 ;
  wire \s_tmp_nomac_reg[2]0__30_carry__0_i_9_n_0 ;
  wire \s_tmp_nomac_reg[2]0__30_carry__0_n_0 ;
  wire \s_tmp_nomac_reg[2]0__30_carry__0_n_1 ;
  wire \s_tmp_nomac_reg[2]0__30_carry__0_n_2 ;
  wire \s_tmp_nomac_reg[2]0__30_carry__0_n_3 ;
  wire \s_tmp_nomac_reg[2]0__30_carry__0_n_4 ;
  wire \s_tmp_nomac_reg[2]0__30_carry__0_n_5 ;
  wire \s_tmp_nomac_reg[2]0__30_carry__0_n_6 ;
  wire \s_tmp_nomac_reg[2]0__30_carry__0_n_7 ;
  wire \s_tmp_nomac_reg[2]0__30_carry__1_i_1_n_0 ;
  wire \s_tmp_nomac_reg[2]0__30_carry__1_i_2_n_0 ;
  wire \s_tmp_nomac_reg[2]0__30_carry__1_i_3_n_0 ;
  wire \s_tmp_nomac_reg[2]0__30_carry__1_i_4_n_0 ;
  wire \s_tmp_nomac_reg[2]0__30_carry__1_n_1 ;
  wire \s_tmp_nomac_reg[2]0__30_carry__1_n_3 ;
  wire \s_tmp_nomac_reg[2]0__30_carry__1_n_6 ;
  wire \s_tmp_nomac_reg[2]0__30_carry__1_n_7 ;
  wire \s_tmp_nomac_reg[2]0__30_carry_i_1_n_0 ;
  wire \s_tmp_nomac_reg[2]0__30_carry_i_2_n_0 ;
  wire \s_tmp_nomac_reg[2]0__30_carry_i_3_n_0 ;
  wire \s_tmp_nomac_reg[2]0__30_carry_i_4_n_0 ;
  wire \s_tmp_nomac_reg[2]0__30_carry_i_5_n_0 ;
  wire \s_tmp_nomac_reg[2]0__30_carry_i_6_n_0 ;
  wire \s_tmp_nomac_reg[2]0__30_carry_i_7_n_0 ;
  wire \s_tmp_nomac_reg[2]0__30_carry_i_8_n_0 ;
  wire \s_tmp_nomac_reg[2]0__30_carry_n_0 ;
  wire \s_tmp_nomac_reg[2]0__30_carry_n_1 ;
  wire \s_tmp_nomac_reg[2]0__30_carry_n_2 ;
  wire \s_tmp_nomac_reg[2]0__30_carry_n_3 ;
  wire \s_tmp_nomac_reg[2]0__30_carry_n_4 ;
  wire \s_tmp_nomac_reg[2]0__30_carry_n_5 ;
  wire \s_tmp_nomac_reg[2]0__30_carry_n_6 ;
  wire \s_tmp_nomac_reg[2]0__30_carry_n_7 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__0_i_10_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__0_i_11_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__0_i_12_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__0_i_13_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__0_i_14_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__0_i_15_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__0_i_16_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__0_i_17_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__0_i_18_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__0_i_19_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__0_i_1_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__0_i_2_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__0_i_3_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__0_i_4_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__0_i_5_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__0_i_6_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__0_i_7_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__0_i_8_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__0_i_9_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__0_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__0_n_1 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__0_n_2 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__0_n_3 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__1_i_10_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__1_i_11_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__1_i_12_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__1_i_13_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__1_i_14_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__1_i_15_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__1_i_16_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__1_i_1_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__1_i_2_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__1_i_3_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__1_i_4_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__1_i_5_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__1_i_6_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__1_i_7_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__1_i_8_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__1_i_9_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__1_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__1_n_1 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__1_n_2 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__1_n_3 ;
  wire \s_tmp_nomac_reg[2]0__60_carry__2_i_1_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry_i_1_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry_i_2_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry_i_3_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry_i_4_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry_i_5_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry_n_0 ;
  wire \s_tmp_nomac_reg[2]0__60_carry_n_1 ;
  wire \s_tmp_nomac_reg[2]0__60_carry_n_2 ;
  wire \s_tmp_nomac_reg[2]0__60_carry_n_3 ;
  wire \s_tmp_nomac_reg[2]__0_n_0 ;
  wire \s_tmp_nomac_reg[2]__1_n_0 ;
  wire \s_tmp_nomac_reg[2]__2_n_0 ;
  wire \s_tmp_nomac_reg[2]__3_n_0 ;
  wire \s_tmp_nomac_reg[2]__4_n_0 ;
  wire \s_tmp_nomac_reg[2]__5_n_0 ;
  wire \s_tmp_nomac_reg[2]__6_n_0 ;
  wire [15:0]\s_tmp_nomac_reg[3]0 ;
  wire \s_tmp_nomac_reg[3]0__0_carry__0_i_10_n_0 ;
  wire \s_tmp_nomac_reg[3]0__0_carry__0_i_11_n_0 ;
  wire \s_tmp_nomac_reg[3]0__0_carry__0_i_12_n_0 ;
  wire \s_tmp_nomac_reg[3]0__0_carry__0_i_1_n_0 ;
  wire \s_tmp_nomac_reg[3]0__0_carry__0_i_2_n_0 ;
  wire \s_tmp_nomac_reg[3]0__0_carry__0_i_3_n_0 ;
  wire \s_tmp_nomac_reg[3]0__0_carry__0_i_4_n_0 ;
  wire \s_tmp_nomac_reg[3]0__0_carry__0_i_5_n_0 ;
  wire \s_tmp_nomac_reg[3]0__0_carry__0_i_6_n_0 ;
  wire \s_tmp_nomac_reg[3]0__0_carry__0_i_7_n_0 ;
  wire \s_tmp_nomac_reg[3]0__0_carry__0_i_8_n_0 ;
  wire \s_tmp_nomac_reg[3]0__0_carry__0_i_9_n_0 ;
  wire \s_tmp_nomac_reg[3]0__0_carry__0_n_0 ;
  wire \s_tmp_nomac_reg[3]0__0_carry__0_n_1 ;
  wire \s_tmp_nomac_reg[3]0__0_carry__0_n_2 ;
  wire \s_tmp_nomac_reg[3]0__0_carry__0_n_3 ;
  wire \s_tmp_nomac_reg[3]0__0_carry__0_n_4 ;
  wire \s_tmp_nomac_reg[3]0__0_carry__0_n_5 ;
  wire \s_tmp_nomac_reg[3]0__0_carry__0_n_6 ;
  wire \s_tmp_nomac_reg[3]0__0_carry__0_n_7 ;
  wire \s_tmp_nomac_reg[3]0__0_carry__1_i_1_n_0 ;
  wire \s_tmp_nomac_reg[3]0__0_carry__1_i_2_n_0 ;
  wire \s_tmp_nomac_reg[3]0__0_carry__1_i_3_n_0 ;
  wire \s_tmp_nomac_reg[3]0__0_carry__1_i_4_n_0 ;
  wire \s_tmp_nomac_reg[3]0__0_carry__1_n_1 ;
  wire \s_tmp_nomac_reg[3]0__0_carry__1_n_3 ;
  wire \s_tmp_nomac_reg[3]0__0_carry__1_n_6 ;
  wire \s_tmp_nomac_reg[3]0__0_carry__1_n_7 ;
  wire \s_tmp_nomac_reg[3]0__0_carry_i_1_n_0 ;
  wire \s_tmp_nomac_reg[3]0__0_carry_i_2_n_0 ;
  wire \s_tmp_nomac_reg[3]0__0_carry_i_3_n_0 ;
  wire \s_tmp_nomac_reg[3]0__0_carry_i_4_n_0 ;
  wire \s_tmp_nomac_reg[3]0__0_carry_i_5_n_0 ;
  wire \s_tmp_nomac_reg[3]0__0_carry_i_6_n_0 ;
  wire \s_tmp_nomac_reg[3]0__0_carry_i_7_n_0 ;
  wire \s_tmp_nomac_reg[3]0__0_carry_i_8_n_0 ;
  wire \s_tmp_nomac_reg[3]0__0_carry_n_0 ;
  wire \s_tmp_nomac_reg[3]0__0_carry_n_1 ;
  wire \s_tmp_nomac_reg[3]0__0_carry_n_2 ;
  wire \s_tmp_nomac_reg[3]0__0_carry_n_3 ;
  wire \s_tmp_nomac_reg[3]0__0_carry_n_4 ;
  wire \s_tmp_nomac_reg[3]0__30_carry__0_i_10_n_0 ;
  wire \s_tmp_nomac_reg[3]0__30_carry__0_i_11_n_0 ;
  wire \s_tmp_nomac_reg[3]0__30_carry__0_i_12_n_0 ;
  wire \s_tmp_nomac_reg[3]0__30_carry__0_i_1_n_0 ;
  wire \s_tmp_nomac_reg[3]0__30_carry__0_i_2_n_0 ;
  wire \s_tmp_nomac_reg[3]0__30_carry__0_i_3_n_0 ;
  wire \s_tmp_nomac_reg[3]0__30_carry__0_i_4_n_0 ;
  wire \s_tmp_nomac_reg[3]0__30_carry__0_i_5_n_0 ;
  wire \s_tmp_nomac_reg[3]0__30_carry__0_i_6_n_0 ;
  wire \s_tmp_nomac_reg[3]0__30_carry__0_i_7_n_0 ;
  wire \s_tmp_nomac_reg[3]0__30_carry__0_i_8_n_0 ;
  wire \s_tmp_nomac_reg[3]0__30_carry__0_i_9_n_0 ;
  wire \s_tmp_nomac_reg[3]0__30_carry__0_n_0 ;
  wire \s_tmp_nomac_reg[3]0__30_carry__0_n_1 ;
  wire \s_tmp_nomac_reg[3]0__30_carry__0_n_2 ;
  wire \s_tmp_nomac_reg[3]0__30_carry__0_n_3 ;
  wire \s_tmp_nomac_reg[3]0__30_carry__0_n_4 ;
  wire \s_tmp_nomac_reg[3]0__30_carry__0_n_5 ;
  wire \s_tmp_nomac_reg[3]0__30_carry__0_n_6 ;
  wire \s_tmp_nomac_reg[3]0__30_carry__0_n_7 ;
  wire \s_tmp_nomac_reg[3]0__30_carry__1_i_1_n_0 ;
  wire \s_tmp_nomac_reg[3]0__30_carry__1_i_2_n_0 ;
  wire \s_tmp_nomac_reg[3]0__30_carry__1_i_3_n_0 ;
  wire \s_tmp_nomac_reg[3]0__30_carry__1_i_4_n_0 ;
  wire \s_tmp_nomac_reg[3]0__30_carry__1_n_1 ;
  wire \s_tmp_nomac_reg[3]0__30_carry__1_n_3 ;
  wire \s_tmp_nomac_reg[3]0__30_carry__1_n_6 ;
  wire \s_tmp_nomac_reg[3]0__30_carry__1_n_7 ;
  wire \s_tmp_nomac_reg[3]0__30_carry_i_1_n_0 ;
  wire \s_tmp_nomac_reg[3]0__30_carry_i_2_n_0 ;
  wire \s_tmp_nomac_reg[3]0__30_carry_i_3_n_0 ;
  wire \s_tmp_nomac_reg[3]0__30_carry_i_4_n_0 ;
  wire \s_tmp_nomac_reg[3]0__30_carry_i_5_n_0 ;
  wire \s_tmp_nomac_reg[3]0__30_carry_i_6_n_0 ;
  wire \s_tmp_nomac_reg[3]0__30_carry_i_7_n_0 ;
  wire \s_tmp_nomac_reg[3]0__30_carry_i_8_n_0 ;
  wire \s_tmp_nomac_reg[3]0__30_carry_n_0 ;
  wire \s_tmp_nomac_reg[3]0__30_carry_n_1 ;
  wire \s_tmp_nomac_reg[3]0__30_carry_n_2 ;
  wire \s_tmp_nomac_reg[3]0__30_carry_n_3 ;
  wire \s_tmp_nomac_reg[3]0__30_carry_n_4 ;
  wire \s_tmp_nomac_reg[3]0__30_carry_n_5 ;
  wire \s_tmp_nomac_reg[3]0__30_carry_n_6 ;
  wire \s_tmp_nomac_reg[3]0__30_carry_n_7 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__0_i_10_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__0_i_11_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__0_i_12_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__0_i_13_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__0_i_14_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__0_i_15_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__0_i_16_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__0_i_17_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__0_i_18_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__0_i_19_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__0_i_1_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__0_i_2_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__0_i_3_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__0_i_4_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__0_i_5_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__0_i_6_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__0_i_7_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__0_i_8_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__0_i_9_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__0_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__0_n_1 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__0_n_2 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__0_n_3 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__1_i_10_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__1_i_11_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__1_i_12_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__1_i_13_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__1_i_14_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__1_i_15_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__1_i_16_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__1_i_1_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__1_i_2_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__1_i_3_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__1_i_4_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__1_i_5_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__1_i_6_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__1_i_7_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__1_i_8_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__1_i_9_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__1_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__1_n_1 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__1_n_2 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__1_n_3 ;
  wire \s_tmp_nomac_reg[3]0__60_carry__2_i_1_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry_i_1_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry_i_2_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry_i_3_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry_i_4_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry_i_5_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry_n_0 ;
  wire \s_tmp_nomac_reg[3]0__60_carry_n_1 ;
  wire \s_tmp_nomac_reg[3]0__60_carry_n_2 ;
  wire \s_tmp_nomac_reg[3]0__60_carry_n_3 ;
  wire \s_tmp_nomac_reg[3]__0_n_0 ;
  wire \s_tmp_nomac_reg[3]__1_n_0 ;
  wire \s_tmp_nomac_reg[3]__2_n_0 ;
  wire \s_tmp_nomac_reg[3]__3_n_0 ;
  wire \s_tmp_nomac_reg[3]__4_n_0 ;
  wire \s_tmp_nomac_reg[3]__5_n_0 ;
  wire \s_tmp_nomac_reg[3]__6_n_0 ;
  wire \s_tmp_nomac_reg_n_0_[0][0] ;
  wire \s_tmp_nomac_reg_n_0_[0][10] ;
  wire \s_tmp_nomac_reg_n_0_[0][11] ;
  wire \s_tmp_nomac_reg_n_0_[0][12] ;
  wire \s_tmp_nomac_reg_n_0_[0][13] ;
  wire \s_tmp_nomac_reg_n_0_[0][14] ;
  wire \s_tmp_nomac_reg_n_0_[0][15] ;
  wire \s_tmp_nomac_reg_n_0_[0][1] ;
  wire \s_tmp_nomac_reg_n_0_[0][2] ;
  wire \s_tmp_nomac_reg_n_0_[0][3] ;
  wire \s_tmp_nomac_reg_n_0_[0][4] ;
  wire \s_tmp_nomac_reg_n_0_[0][5] ;
  wire \s_tmp_nomac_reg_n_0_[0][6] ;
  wire \s_tmp_nomac_reg_n_0_[0][7] ;
  wire \s_tmp_nomac_reg_n_0_[0][8] ;
  wire \s_tmp_nomac_reg_n_0_[0][9] ;
  wire \s_tmp_nomac_reg_n_0_[1] ;
  wire \s_tmp_nomac_reg_n_0_[1][0] ;
  wire \s_tmp_nomac_reg_n_0_[1][10] ;
  wire \s_tmp_nomac_reg_n_0_[1][11] ;
  wire \s_tmp_nomac_reg_n_0_[1][12] ;
  wire \s_tmp_nomac_reg_n_0_[1][13] ;
  wire \s_tmp_nomac_reg_n_0_[1][14] ;
  wire \s_tmp_nomac_reg_n_0_[1][15] ;
  wire \s_tmp_nomac_reg_n_0_[1][1] ;
  wire \s_tmp_nomac_reg_n_0_[1][2] ;
  wire \s_tmp_nomac_reg_n_0_[1][3] ;
  wire \s_tmp_nomac_reg_n_0_[1][4] ;
  wire \s_tmp_nomac_reg_n_0_[1][5] ;
  wire \s_tmp_nomac_reg_n_0_[1][6] ;
  wire \s_tmp_nomac_reg_n_0_[1][7] ;
  wire \s_tmp_nomac_reg_n_0_[1][8] ;
  wire \s_tmp_nomac_reg_n_0_[1][9] ;
  wire \s_tmp_nomac_reg_n_0_[2] ;
  wire \s_tmp_nomac_reg_n_0_[2][0] ;
  wire \s_tmp_nomac_reg_n_0_[2][10] ;
  wire \s_tmp_nomac_reg_n_0_[2][11] ;
  wire \s_tmp_nomac_reg_n_0_[2][12] ;
  wire \s_tmp_nomac_reg_n_0_[2][13] ;
  wire \s_tmp_nomac_reg_n_0_[2][14] ;
  wire \s_tmp_nomac_reg_n_0_[2][15] ;
  wire \s_tmp_nomac_reg_n_0_[2][1] ;
  wire \s_tmp_nomac_reg_n_0_[2][2] ;
  wire \s_tmp_nomac_reg_n_0_[2][3] ;
  wire \s_tmp_nomac_reg_n_0_[2][4] ;
  wire \s_tmp_nomac_reg_n_0_[2][5] ;
  wire \s_tmp_nomac_reg_n_0_[2][6] ;
  wire \s_tmp_nomac_reg_n_0_[2][7] ;
  wire \s_tmp_nomac_reg_n_0_[2][8] ;
  wire \s_tmp_nomac_reg_n_0_[2][9] ;
  wire \s_tmp_nomac_reg_n_0_[3] ;
  wire \s_tmp_nomac_reg_n_0_[3][0] ;
  wire \s_tmp_nomac_reg_n_0_[3][10] ;
  wire \s_tmp_nomac_reg_n_0_[3][11] ;
  wire \s_tmp_nomac_reg_n_0_[3][12] ;
  wire \s_tmp_nomac_reg_n_0_[3][13] ;
  wire \s_tmp_nomac_reg_n_0_[3][14] ;
  wire \s_tmp_nomac_reg_n_0_[3][15] ;
  wire \s_tmp_nomac_reg_n_0_[3][1] ;
  wire \s_tmp_nomac_reg_n_0_[3][2] ;
  wire \s_tmp_nomac_reg_n_0_[3][3] ;
  wire \s_tmp_nomac_reg_n_0_[3][4] ;
  wire \s_tmp_nomac_reg_n_0_[3][5] ;
  wire \s_tmp_nomac_reg_n_0_[3][6] ;
  wire \s_tmp_nomac_reg_n_0_[3][7] ;
  wire \s_tmp_nomac_reg_n_0_[3][8] ;
  wire \s_tmp_nomac_reg_n_0_[3][9] ;
  wire [31:0]s_vecs_addr;
  wire s_vecs_addr0;
  wire \s_vecs_reg_n_0_[0] ;
  wire \s_vecs_reg_n_0_[1] ;
  wire \s_vecs_reg_n_0_[2] ;
  wire \s_vecs_reg_n_0_[3] ;
  wire \s_vecs_reg_n_0_[4] ;
  wire \s_vecs_reg_n_0_[5] ;
  wire \s_vecs_reg_n_0_[6] ;
  wire \s_vecs_reg_n_0_[7] ;
  wire [31:0]sel0;
  wire [1:0]t_state;
  wire [2:0]t_state1;
  wire \t_state1[1]_i_1_n_0 ;
  wire t_state1_carry__0_i_1_n_0;
  wire t_state1_carry__0_i_2_n_0;
  wire t_state1_carry__0_i_3_n_0;
  wire t_state1_carry__0_i_4_n_0;
  wire t_state1_carry__0_i_5_n_0;
  wire t_state1_carry__0_i_6_n_0;
  wire t_state1_carry__0_i_7_n_0;
  wire t_state1_carry__0_i_8_n_0;
  wire t_state1_carry__0_n_0;
  wire t_state1_carry__0_n_1;
  wire t_state1_carry__0_n_2;
  wire t_state1_carry__0_n_3;
  wire t_state1_carry__1_i_1_n_0;
  wire t_state1_carry__1_i_2_n_0;
  wire t_state1_carry__1_i_3_n_0;
  wire t_state1_carry__1_i_4_n_0;
  wire t_state1_carry__1_i_5_n_0;
  wire t_state1_carry__1_i_6_n_0;
  wire t_state1_carry__1_i_7_n_0;
  wire t_state1_carry__1_i_8_n_0;
  wire t_state1_carry__1_n_0;
  wire t_state1_carry__1_n_1;
  wire t_state1_carry__1_n_2;
  wire t_state1_carry__1_n_3;
  wire t_state1_carry__2_i_1_n_0;
  wire t_state1_carry__2_i_2_n_0;
  wire t_state1_carry__2_i_3_n_0;
  wire t_state1_carry__2_i_4_n_0;
  wire t_state1_carry__2_i_5_n_0;
  wire t_state1_carry__2_i_6_n_0;
  wire t_state1_carry__2_i_7_n_0;
  wire t_state1_carry__2_i_8_n_0;
  wire t_state1_carry__2_n_0;
  wire t_state1_carry__2_n_1;
  wire t_state1_carry__2_n_2;
  wire t_state1_carry__2_n_3;
  wire t_state1_carry_i_1_n_0;
  wire t_state1_carry_i_2_n_0;
  wire t_state1_carry_i_3_n_0;
  wire t_state1_carry_i_4_n_0;
  wire t_state1_carry_i_5_n_0;
  wire t_state1_carry_i_6_n_0;
  wire t_state1_carry_n_0;
  wire t_state1_carry_n_1;
  wire t_state1_carry_n_2;
  wire t_state1_carry_n_3;
  wire \t_state1_inferred__0/i__carry__0_n_0 ;
  wire \t_state1_inferred__0/i__carry__0_n_1 ;
  wire \t_state1_inferred__0/i__carry__0_n_2 ;
  wire \t_state1_inferred__0/i__carry__0_n_3 ;
  wire \t_state1_inferred__0/i__carry__1_n_0 ;
  wire \t_state1_inferred__0/i__carry__1_n_1 ;
  wire \t_state1_inferred__0/i__carry__1_n_2 ;
  wire \t_state1_inferred__0/i__carry__1_n_3 ;
  wire \t_state1_inferred__0/i__carry__2_n_0 ;
  wire \t_state1_inferred__0/i__carry__2_n_1 ;
  wire \t_state1_inferred__0/i__carry__2_n_2 ;
  wire \t_state1_inferred__0/i__carry__2_n_3 ;
  wire \t_state1_inferred__0/i__carry_n_0 ;
  wire \t_state1_inferred__0/i__carry_n_1 ;
  wire \t_state1_inferred__0/i__carry_n_2 ;
  wire \t_state1_inferred__0/i__carry_n_3 ;
  wire \t_state1_reg_n_0_[0] ;
  wire \t_state1_reg_n_0_[1] ;
  wire \t_state1_reg_n_0_[2] ;
  wire \t_state[2]_i_1_n_0 ;
  wire \t_state_reg_n_0_[0] ;
  wire \t_state_reg_n_0_[1] ;
  wire \t_state_reg_n_0_[2] ;
  wire \tmp[7]_16 ;
  wire [4:0]\tmp_reg[0]_12 ;
  wire [4:0]\tmp_reg[1]_13 ;
  wire [4:0]\tmp_reg[2]_14 ;
  wire [4:0]\tmp_reg[3]_15 ;
  wire [4:0]\tmp_reg[4]_8 ;
  wire [4:0]\tmp_reg[5]_9 ;
  wire [4:0]\tmp_reg[6]_10 ;
  wire [4:0]\tmp_reg[7]_11 ;
  wire tmp_sel;
  wire tmp_sel_i_1_n_0;
  wire [3:1]\NLW_bram0b[o][o_din]0__37_carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_bram0b[o][o_din]0__37_carry__0_O_UNCONNECTED ;
  wire [3:2]\NLW_bram0b[o][o_din]0__51_carry_CO_UNCONNECTED ;
  wire [3:3]\NLW_bram0b[o][o_din]0__51_carry_O_UNCONNECTED ;
  wire [3:1]\NLW_bram0b[o][o_din]0__57_carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_bram0b[o][o_din]0__57_carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_bram0b[o][o_din]0__5_carry_O_UNCONNECTED ;
  wire [3:0]\NLW_bram0b[o][o_din]0__5_carry__0_O_UNCONNECTED ;
  wire [2:0]\NLW_bram0b[o][o_din]0__5_carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_bram0b[o][o_din]0__5_carry__3_CO_UNCONNECTED ;
  wire [3:1]\NLW_bram0b[o][o_din]0__5_carry__3_O_UNCONNECTED ;
  wire [3:1]\NLW_bram0b[o][o_din]0_inferred__0/i___37_carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_bram0b[o][o_din]0_inferred__0/i___37_carry__0_O_UNCONNECTED ;
  wire [3:2]\NLW_bram0b[o][o_din]0_inferred__0/i___51_carry_CO_UNCONNECTED ;
  wire [3:3]\NLW_bram0b[o][o_din]0_inferred__0/i___51_carry_O_UNCONNECTED ;
  wire [3:1]\NLW_bram0b[o][o_din]0_inferred__0/i___57_carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_bram0b[o][o_din]0_inferred__0/i___57_carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_bram0b[o][o_din]0_inferred__0/i___5_carry_O_UNCONNECTED ;
  wire [3:0]\NLW_bram0b[o][o_din]0_inferred__0/i___5_carry__0_O_UNCONNECTED ;
  wire [2:0]\NLW_bram0b[o][o_din]0_inferred__0/i___5_carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_bram0b[o][o_din]0_inferred__0/i___5_carry__3_CO_UNCONNECTED ;
  wire [3:1]\NLW_bram0b[o][o_din]0_inferred__0/i___5_carry__3_O_UNCONNECTED ;
  wire [3:1]\NLW_bram0b[o][o_din]0_inferred__1/i___37_carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_bram0b[o][o_din]0_inferred__1/i___37_carry__0_O_UNCONNECTED ;
  wire [3:2]\NLW_bram0b[o][o_din]0_inferred__1/i___51_carry_CO_UNCONNECTED ;
  wire [3:3]\NLW_bram0b[o][o_din]0_inferred__1/i___51_carry_O_UNCONNECTED ;
  wire [3:1]\NLW_bram0b[o][o_din]0_inferred__1/i___57_carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_bram0b[o][o_din]0_inferred__1/i___57_carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_bram0b[o][o_din]0_inferred__1/i___5_carry_O_UNCONNECTED ;
  wire [3:0]\NLW_bram0b[o][o_din]0_inferred__1/i___5_carry__0_O_UNCONNECTED ;
  wire [2:0]\NLW_bram0b[o][o_din]0_inferred__1/i___5_carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_bram0b[o][o_din]0_inferred__1/i___5_carry__3_CO_UNCONNECTED ;
  wire [3:1]\NLW_bram0b[o][o_din]0_inferred__1/i___5_carry__3_O_UNCONNECTED ;
  wire [3:1]\NLW_bram0b[o][o_din]0_inferred__2/i___37_carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_bram0b[o][o_din]0_inferred__2/i___37_carry__0_O_UNCONNECTED ;
  wire [3:2]\NLW_bram0b[o][o_din]0_inferred__2/i___51_carry_CO_UNCONNECTED ;
  wire [3:3]\NLW_bram0b[o][o_din]0_inferred__2/i___51_carry_O_UNCONNECTED ;
  wire [3:1]\NLW_bram0b[o][o_din]0_inferred__2/i___57_carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_bram0b[o][o_din]0_inferred__2/i___57_carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_bram0b[o][o_din]0_inferred__2/i___5_carry_O_UNCONNECTED ;
  wire [3:0]\NLW_bram0b[o][o_din]0_inferred__2/i___5_carry__0_O_UNCONNECTED ;
  wire [2:0]\NLW_bram0b[o][o_din]0_inferred__2/i___5_carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_bram0b[o][o_din]0_inferred__2/i___5_carry__3_CO_UNCONNECTED ;
  wire [3:1]\NLW_bram0b[o][o_din]0_inferred__2/i___5_carry__3_O_UNCONNECTED ;
  wire [3:2]\NLW_bram0b_reg[o][o_addr][31]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_bram0b_reg[o][o_addr][31]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_bram1a_reg[o][o_addr][31]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_bram1a_reg[o][o_addr][31]_i_4_O_UNCONNECTED ;
  wire [0:0]\NLW_bram1a_reg[o][o_addr][4]_i_3_O_UNCONNECTED ;
  wire [3:2]NLW_c0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_c0_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_c1_carry_O_UNCONNECTED;
  wire [3:0]NLW_c1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_c1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_c1_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_i0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_i0_carry__6_O_UNCONNECTED;
  wire [3:2]\NLW_j_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_j_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:2]NLW_minusOp_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_minusOp_carry__6_O_UNCONNECTED;
  wire [3:2]NLW_plusOp_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__6_O_UNCONNECTED;
  wire [3:2]\NLW_plusOp_inferred__0/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_plusOp_inferred__0/i__carry__6_O_UNCONNECTED ;
  wire [3:3]\NLW_plusOp_inferred__1/i__carry__6_CO_UNCONNECTED ;
  wire [3:0]NLW_s_out_ctr1_carry_O_UNCONNECTED;
  wire [3:0]NLW_s_out_ctr1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_s_out_ctr1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_s_out_ctr1_carry__2_O_UNCONNECTED;
  wire [3:2]\NLW_s_out_ctr_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_s_out_ctr_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:1]\NLW_s_tmp_nomac_reg[0]0__0_carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_tmp_nomac_reg[0]0__0_carry__1_O_UNCONNECTED ;
  wire [3:1]\NLW_s_tmp_nomac_reg[0]0__30_carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_tmp_nomac_reg[0]0__30_carry__1_O_UNCONNECTED ;
  wire [0:0]\NLW_s_tmp_nomac_reg[0]0__60_carry_O_UNCONNECTED ;
  wire [3:0]\NLW_s_tmp_nomac_reg[0]0__60_carry__2_CO_UNCONNECTED ;
  wire [3:1]\NLW_s_tmp_nomac_reg[0]0__60_carry__2_O_UNCONNECTED ;
  wire [3:1]\NLW_s_tmp_nomac_reg[1]0__0_carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_tmp_nomac_reg[1]0__0_carry__1_O_UNCONNECTED ;
  wire [3:1]\NLW_s_tmp_nomac_reg[1]0__30_carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_tmp_nomac_reg[1]0__30_carry__1_O_UNCONNECTED ;
  wire [0:0]\NLW_s_tmp_nomac_reg[1]0__60_carry_O_UNCONNECTED ;
  wire [3:0]\NLW_s_tmp_nomac_reg[1]0__60_carry__2_CO_UNCONNECTED ;
  wire [3:1]\NLW_s_tmp_nomac_reg[1]0__60_carry__2_O_UNCONNECTED ;
  wire [3:1]\NLW_s_tmp_nomac_reg[2]0__0_carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_tmp_nomac_reg[2]0__0_carry__1_O_UNCONNECTED ;
  wire [3:1]\NLW_s_tmp_nomac_reg[2]0__30_carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_tmp_nomac_reg[2]0__30_carry__1_O_UNCONNECTED ;
  wire [0:0]\NLW_s_tmp_nomac_reg[2]0__60_carry_O_UNCONNECTED ;
  wire [3:0]\NLW_s_tmp_nomac_reg[2]0__60_carry__2_CO_UNCONNECTED ;
  wire [3:1]\NLW_s_tmp_nomac_reg[2]0__60_carry__2_O_UNCONNECTED ;
  wire [3:1]\NLW_s_tmp_nomac_reg[3]0__0_carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_tmp_nomac_reg[3]0__0_carry__1_O_UNCONNECTED ;
  wire [3:1]\NLW_s_tmp_nomac_reg[3]0__30_carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_tmp_nomac_reg[3]0__30_carry__1_O_UNCONNECTED ;
  wire [0:0]\NLW_s_tmp_nomac_reg[3]0__60_carry_O_UNCONNECTED ;
  wire [3:0]\NLW_s_tmp_nomac_reg[3]0__60_carry__2_CO_UNCONNECTED ;
  wire [3:1]\NLW_s_tmp_nomac_reg[3]0__60_carry__2_O_UNCONNECTED ;
  wire [3:0]NLW_t_state1_carry_O_UNCONNECTED;
  wire [3:0]NLW_t_state1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_t_state1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_t_state1_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_t_state1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_t_state1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_t_state1_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_t_state1_inferred__0/i__carry__2_O_UNCONNECTED ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DSP_Accum DSP_Inst
       (.CEA2(CEA2),
        .Q({\t_state_reg_n_0_[2] ,\t_state_reg_n_0_[1] ,\t_state_reg_n_0_[0] }),
        .\acc_b_reg[2]_0 ({\t_state1_reg_n_0_[2] ,\t_state1_reg_n_0_[1] ,\t_state1_reg_n_0_[0] }),
        .\acc_b_reg[2]_1 (s_nomac_en_reg_n_0),
        .\acc_b_reg[3]_0 (s_coeffs),
        .\acc_b_reg[3]_1 (s_acc_flush_reg_n_0),
        .i_clk(i_clk),
        .i_mem0a_dout(i_mem0a_dout[7:0]),
        .i_mem1a_dout(i_mem1a_dout),
        .in0(\s_acc[0]_4 ),
        .rst(rst),
        .\s_acc[1] (\s_acc[1]_5 ),
        .\s_acc[2] (\s_acc[2]_6 ),
        .\s_acc[3] (\s_acc[3]_7 ),
        .\s_acc[4] (\s_acc[4]_0 ),
        .\s_acc[5] (\s_acc[5]_1 ),
        .\s_acc[6] (\s_acc[6]_2 ),
        .\s_acc[7] (\s_acc[7]_3 ),
        .s_acc_sel(s_acc_sel),
        .s_main(s_main),
        .sel0(sel0));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \bram0a[o][o_addr][0]_i_1 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(s_coeffs_addr[0]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I3(o_mem0a_addr[0]),
        .O(\bram0a[o][o_addr][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \bram0a[o][o_addr][10]_i_1 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(s_coeffs_addr[10]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I3(plusOp[10]),
        .O(\bram0a[o][o_addr][10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \bram0a[o][o_addr][11]_i_1 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(s_coeffs_addr[11]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I3(plusOp[11]),
        .O(\bram0a[o][o_addr][11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \bram0a[o][o_addr][12]_i_1 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(s_coeffs_addr[12]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I3(plusOp[12]),
        .O(\bram0a[o][o_addr][12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \bram0a[o][o_addr][13]_i_1 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(s_coeffs_addr[13]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I3(plusOp[13]),
        .O(\bram0a[o][o_addr][13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \bram0a[o][o_addr][14]_i_1 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(s_coeffs_addr[14]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I3(plusOp[14]),
        .O(\bram0a[o][o_addr][14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \bram0a[o][o_addr][15]_i_1 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(s_coeffs_addr[15]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I3(plusOp[15]),
        .O(\bram0a[o][o_addr][15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \bram0a[o][o_addr][16]_i_1 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(s_coeffs_addr[16]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I3(plusOp[16]),
        .O(\bram0a[o][o_addr][16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \bram0a[o][o_addr][17]_i_1 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(s_coeffs_addr[17]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I3(plusOp[17]),
        .O(\bram0a[o][o_addr][17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \bram0a[o][o_addr][18]_i_1 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(s_coeffs_addr[18]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I3(plusOp[18]),
        .O(\bram0a[o][o_addr][18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \bram0a[o][o_addr][19]_i_1 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(s_coeffs_addr[19]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I3(plusOp[19]),
        .O(\bram0a[o][o_addr][19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \bram0a[o][o_addr][1]_i_1 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(s_coeffs_addr[1]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I3(plusOp[1]),
        .O(\bram0a[o][o_addr][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \bram0a[o][o_addr][20]_i_1 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(s_coeffs_addr[20]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I3(plusOp[20]),
        .O(\bram0a[o][o_addr][20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \bram0a[o][o_addr][21]_i_1 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(s_coeffs_addr[21]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I3(plusOp[21]),
        .O(\bram0a[o][o_addr][21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \bram0a[o][o_addr][22]_i_1 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(s_coeffs_addr[22]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I3(plusOp[22]),
        .O(\bram0a[o][o_addr][22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \bram0a[o][o_addr][23]_i_1 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(s_coeffs_addr[23]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I3(plusOp[23]),
        .O(\bram0a[o][o_addr][23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \bram0a[o][o_addr][24]_i_1 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(s_coeffs_addr[24]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I3(plusOp[24]),
        .O(\bram0a[o][o_addr][24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \bram0a[o][o_addr][25]_i_1 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(s_coeffs_addr[25]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I3(plusOp[25]),
        .O(\bram0a[o][o_addr][25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \bram0a[o][o_addr][26]_i_1 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(s_coeffs_addr[26]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I3(plusOp[26]),
        .O(\bram0a[o][o_addr][26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \bram0a[o][o_addr][27]_i_1 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(s_coeffs_addr[27]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I3(plusOp[27]),
        .O(\bram0a[o][o_addr][27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \bram0a[o][o_addr][28]_i_1 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(s_coeffs_addr[28]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I3(plusOp[28]),
        .O(\bram0a[o][o_addr][28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \bram0a[o][o_addr][29]_i_1 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(s_coeffs_addr[29]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I3(plusOp[29]),
        .O(\bram0a[o][o_addr][29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \bram0a[o][o_addr][2]_i_1 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(s_coeffs_addr[2]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I3(plusOp[2]),
        .O(\bram0a[o][o_addr][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \bram0a[o][o_addr][30]_i_1 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(s_coeffs_addr[30]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I3(plusOp[30]),
        .O(\bram0a[o][o_addr][30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000006662)) 
    \bram0a[o][o_addr][31]_i_1 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(\t_state_reg_n_0_[1] ),
        .I2(c1_carry__2_n_0),
        .I3(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I4(\t_state_reg_n_0_[2] ),
        .I5(rst),
        .O(\bram0a[o][o_addr][31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \bram0a[o][o_addr][31]_i_2 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(s_coeffs_addr[31]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I3(plusOp[31]),
        .O(\bram0a[o][o_addr][31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \bram0a[o][o_addr][3]_i_1 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(s_coeffs_addr[3]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I3(plusOp[3]),
        .O(\bram0a[o][o_addr][3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \bram0a[o][o_addr][4]_i_1 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(s_coeffs_addr[4]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I3(plusOp[4]),
        .O(\bram0a[o][o_addr][4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \bram0a[o][o_addr][5]_i_1 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(s_coeffs_addr[5]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I3(plusOp[5]),
        .O(\bram0a[o][o_addr][5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \bram0a[o][o_addr][6]_i_1 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(s_coeffs_addr[6]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I3(plusOp[6]),
        .O(\bram0a[o][o_addr][6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \bram0a[o][o_addr][7]_i_1 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(s_coeffs_addr[7]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I3(plusOp[7]),
        .O(\bram0a[o][o_addr][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \bram0a[o][o_addr][8]_i_1 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(s_coeffs_addr[8]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I3(plusOp[8]),
        .O(\bram0a[o][o_addr][8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \bram0a[o][o_addr][9]_i_1 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(s_coeffs_addr[9]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I3(plusOp[9]),
        .O(\bram0a[o][o_addr][9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF70010)) 
    \bram0a[o][o_en]_i_1 
       (.I0(\t_state_reg_n_0_[2] ),
        .I1(\t_state_reg_n_0_[1] ),
        .I2(\t_state_reg_n_0_[0] ),
        .I3(rst),
        .I4(o_mem0a_en),
        .O(\bram0a[o][o_en]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][0] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][0]_i_1_n_0 ),
        .Q(o_mem0a_addr[0]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][10] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][10]_i_1_n_0 ),
        .Q(o_mem0a_addr[10]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][11] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][11]_i_1_n_0 ),
        .Q(o_mem0a_addr[11]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][12] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][12]_i_1_n_0 ),
        .Q(o_mem0a_addr[12]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][13] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][13]_i_1_n_0 ),
        .Q(o_mem0a_addr[13]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][14] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][14]_i_1_n_0 ),
        .Q(o_mem0a_addr[14]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][15] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][15]_i_1_n_0 ),
        .Q(o_mem0a_addr[15]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][16] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][16]_i_1_n_0 ),
        .Q(o_mem0a_addr[16]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][17] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][17]_i_1_n_0 ),
        .Q(o_mem0a_addr[17]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][18] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][18]_i_1_n_0 ),
        .Q(o_mem0a_addr[18]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][19] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][19]_i_1_n_0 ),
        .Q(o_mem0a_addr[19]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][1] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][1]_i_1_n_0 ),
        .Q(o_mem0a_addr[1]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][20] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][20]_i_1_n_0 ),
        .Q(o_mem0a_addr[20]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][21] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][21]_i_1_n_0 ),
        .Q(o_mem0a_addr[21]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][22] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][22]_i_1_n_0 ),
        .Q(o_mem0a_addr[22]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][23] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][23]_i_1_n_0 ),
        .Q(o_mem0a_addr[23]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][24] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][24]_i_1_n_0 ),
        .Q(o_mem0a_addr[24]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][25] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][25]_i_1_n_0 ),
        .Q(o_mem0a_addr[25]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][26] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][26]_i_1_n_0 ),
        .Q(o_mem0a_addr[26]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][27] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][27]_i_1_n_0 ),
        .Q(o_mem0a_addr[27]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][28] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][28]_i_1_n_0 ),
        .Q(o_mem0a_addr[28]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][29] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][29]_i_1_n_0 ),
        .Q(o_mem0a_addr[29]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][2] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][2]_i_1_n_0 ),
        .Q(o_mem0a_addr[2]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][30] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][30]_i_1_n_0 ),
        .Q(o_mem0a_addr[30]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][31] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][31]_i_2_n_0 ),
        .Q(o_mem0a_addr[31]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][3] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][3]_i_1_n_0 ),
        .Q(o_mem0a_addr[3]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][4] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][4]_i_1_n_0 ),
        .Q(o_mem0a_addr[4]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][5] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][5]_i_1_n_0 ),
        .Q(o_mem0a_addr[5]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][6] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][6]_i_1_n_0 ),
        .Q(o_mem0a_addr[6]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][7] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][7]_i_1_n_0 ),
        .Q(o_mem0a_addr[7]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][8] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][8]_i_1_n_0 ),
        .Q(o_mem0a_addr[8]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][9] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][9]_i_1_n_0 ),
        .Q(o_mem0a_addr[9]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a EN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_en] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\bram0a[o][o_en]_i_1_n_0 ),
        .Q(o_mem0a_en),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_addr][0]_i_1 
       (.I0(o_mem0b_addr[0]),
        .I1(first),
        .I2(s_out_addr[0]),
        .O(\bram0b[o][o_addr][0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_addr][12]_i_2 
       (.I0(o_mem0b_addr[12]),
        .I1(first),
        .I2(s_out_addr[12]),
        .O(\bram0b[o][o_addr][12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_addr][12]_i_3 
       (.I0(o_mem0b_addr[11]),
        .I1(first),
        .I2(s_out_addr[11]),
        .O(\bram0b[o][o_addr][12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_addr][12]_i_4 
       (.I0(o_mem0b_addr[10]),
        .I1(first),
        .I2(s_out_addr[10]),
        .O(\bram0b[o][o_addr][12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_addr][12]_i_5 
       (.I0(o_mem0b_addr[9]),
        .I1(first),
        .I2(s_out_addr[9]),
        .O(\bram0b[o][o_addr][12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_addr][16]_i_2 
       (.I0(o_mem0b_addr[16]),
        .I1(first),
        .I2(s_out_addr[16]),
        .O(\bram0b[o][o_addr][16]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_addr][16]_i_3 
       (.I0(o_mem0b_addr[15]),
        .I1(first),
        .I2(s_out_addr[15]),
        .O(\bram0b[o][o_addr][16]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_addr][16]_i_4 
       (.I0(o_mem0b_addr[14]),
        .I1(first),
        .I2(s_out_addr[14]),
        .O(\bram0b[o][o_addr][16]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_addr][16]_i_5 
       (.I0(o_mem0b_addr[13]),
        .I1(first),
        .I2(s_out_addr[13]),
        .O(\bram0b[o][o_addr][16]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_addr][20]_i_2 
       (.I0(o_mem0b_addr[20]),
        .I1(first),
        .I2(s_out_addr[20]),
        .O(\bram0b[o][o_addr][20]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_addr][20]_i_3 
       (.I0(o_mem0b_addr[19]),
        .I1(first),
        .I2(s_out_addr[19]),
        .O(\bram0b[o][o_addr][20]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_addr][20]_i_4 
       (.I0(o_mem0b_addr[18]),
        .I1(first),
        .I2(s_out_addr[18]),
        .O(\bram0b[o][o_addr][20]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_addr][20]_i_5 
       (.I0(o_mem0b_addr[17]),
        .I1(first),
        .I2(s_out_addr[17]),
        .O(\bram0b[o][o_addr][20]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_addr][24]_i_2 
       (.I0(o_mem0b_addr[24]),
        .I1(first),
        .I2(s_out_addr[24]),
        .O(\bram0b[o][o_addr][24]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_addr][24]_i_3 
       (.I0(o_mem0b_addr[23]),
        .I1(first),
        .I2(s_out_addr[23]),
        .O(\bram0b[o][o_addr][24]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_addr][24]_i_4 
       (.I0(o_mem0b_addr[22]),
        .I1(first),
        .I2(s_out_addr[22]),
        .O(\bram0b[o][o_addr][24]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_addr][24]_i_5 
       (.I0(o_mem0b_addr[21]),
        .I1(first),
        .I2(s_out_addr[21]),
        .O(\bram0b[o][o_addr][24]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_addr][28]_i_2 
       (.I0(o_mem0b_addr[28]),
        .I1(first),
        .I2(s_out_addr[28]),
        .O(\bram0b[o][o_addr][28]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_addr][28]_i_3 
       (.I0(o_mem0b_addr[27]),
        .I1(first),
        .I2(s_out_addr[27]),
        .O(\bram0b[o][o_addr][28]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_addr][28]_i_4 
       (.I0(o_mem0b_addr[26]),
        .I1(first),
        .I2(s_out_addr[26]),
        .O(\bram0b[o][o_addr][28]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_addr][28]_i_5 
       (.I0(o_mem0b_addr[25]),
        .I1(first),
        .I2(s_out_addr[25]),
        .O(\bram0b[o][o_addr][28]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_addr][31]_i_2 
       (.I0(o_mem0b_addr[31]),
        .I1(first),
        .I2(s_out_addr[31]),
        .O(\bram0b[o][o_addr][31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_addr][31]_i_3 
       (.I0(o_mem0b_addr[30]),
        .I1(first),
        .I2(s_out_addr[30]),
        .O(\bram0b[o][o_addr][31]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_addr][31]_i_4 
       (.I0(o_mem0b_addr[29]),
        .I1(first),
        .I2(s_out_addr[29]),
        .O(\bram0b[o][o_addr][31]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_addr][4]_i_2 
       (.I0(o_mem0b_addr[4]),
        .I1(first),
        .I2(s_out_addr[4]),
        .O(\bram0b[o][o_addr][4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_addr][4]_i_3 
       (.I0(o_mem0b_addr[3]),
        .I1(first),
        .I2(s_out_addr[3]),
        .O(\bram0b[o][o_addr][4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \bram0b[o][o_addr][4]_i_4 
       (.I0(s_out_addr[2]),
        .I1(o_mem0b_addr[2]),
        .I2(first),
        .O(\bram0b[o][o_addr][4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_addr][4]_i_5 
       (.I0(o_mem0b_addr[1]),
        .I1(first),
        .I2(s_out_addr[1]),
        .O(\bram0b[o][o_addr][4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_addr][8]_i_2 
       (.I0(o_mem0b_addr[8]),
        .I1(first),
        .I2(s_out_addr[8]),
        .O(\bram0b[o][o_addr][8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_addr][8]_i_3 
       (.I0(o_mem0b_addr[7]),
        .I1(first),
        .I2(s_out_addr[7]),
        .O(\bram0b[o][o_addr][8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_addr][8]_i_4 
       (.I0(o_mem0b_addr[6]),
        .I1(first),
        .I2(s_out_addr[6]),
        .O(\bram0b[o][o_addr][8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_addr][8]_i_5 
       (.I0(o_mem0b_addr[5]),
        .I1(first),
        .I2(s_out_addr[5]),
        .O(\bram0b[o][o_addr][8]_i_5_n_0 ));
  CARRY4 \bram0b[o][o_din]0__37_carry 
       (.CI(1'b0),
        .CO({\bram0b[o][o_din]0__37_carry_n_0 ,\bram0b[o][o_din]0__37_carry_n_1 ,\bram0b[o][o_din]0__37_carry_n_2 ,\bram0b[o][o_din]0__37_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\bram0b[o][o_din]0__5_carry__1_n_4 ,1'b0,1'b0,1'b1}),
        .O({\bram0b[o][o_din]0__37_carry_n_4 ,\bram0b[o][o_din]0__37_carry_n_5 ,\bram0b[o][o_din]0__37_carry_n_6 ,\bram0b[o][o_din]0__37_carry_n_7 }),
        .S({\bram0b[o][o_din]0__37_carry_i_1_n_0 ,\bram0b[o][o_din]0__37_carry_i_2_n_0 ,\bram0b[o][o_din]0__37_carry_i_3_n_0 ,\bram0b[o][o_din]0__5_carry__1_n_4 }));
  CARRY4 \bram0b[o][o_din]0__37_carry__0 
       (.CI(\bram0b[o][o_din]0__37_carry_n_0 ),
        .CO({\NLW_bram0b[o][o_din]0__37_carry__0_CO_UNCONNECTED [3:1],\bram0b[o][o_din]0__37_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\bram0b[o][o_din]0__5_carry__2_n_7 }),
        .O({\NLW_bram0b[o][o_din]0__37_carry__0_O_UNCONNECTED [3:2],\bram0b[o][o_din]0__37_carry__0_n_6 ,\bram0b[o][o_din]0__37_carry__0_n_7 }),
        .S({1'b0,1'b0,\bram0b[o][o_din]0__37_carry__0_i_1_n_0 ,\bram0b[o][o_din]0__37_carry__0_i_2_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \bram0b[o][o_din]0__37_carry__0_i_1 
       (.I0(\bram0b[o][o_din]0__5_carry__2_n_6 ),
        .I1(\bram0b[o][o_din]0__5_carry__3_n_7 ),
        .O(\bram0b[o][o_din]0__37_carry__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bram0b[o][o_din]0__37_carry__0_i_2 
       (.I0(\bram0b[o][o_din]0__5_carry__2_n_7 ),
        .I1(\bram0b[o][o_din]0__5_carry__2_n_4 ),
        .O(\bram0b[o][o_din]0__37_carry__0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bram0b[o][o_din]0__37_carry_i_1 
       (.I0(\bram0b[o][o_din]0__5_carry__1_n_4 ),
        .I1(\bram0b[o][o_din]0__5_carry__2_n_5 ),
        .O(\bram0b[o][o_din]0__37_carry_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bram0b[o][o_din]0__37_carry_i_2 
       (.I0(\bram0b[o][o_din]0__5_carry__2_n_6 ),
        .O(\bram0b[o][o_din]0__37_carry_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bram0b[o][o_din]0__37_carry_i_3 
       (.I0(\bram0b[o][o_din]0__5_carry__2_n_7 ),
        .O(\bram0b[o][o_din]0__37_carry_i_3_n_0 ));
  CARRY4 \bram0b[o][o_din]0__51_carry 
       (.CI(1'b0),
        .CO({\NLW_bram0b[o][o_din]0__51_carry_CO_UNCONNECTED [3:2],\bram0b[o][o_din]0__51_carry_n_2 ,\bram0b[o][o_din]0__51_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\bram0b[o][o_din]0__51_carry_i_1_n_0 ,1'b0}),
        .O({\NLW_bram0b[o][o_din]0__51_carry_O_UNCONNECTED [3],\bram0b[o][o_din]0__51_carry_n_5 ,\bram0b[o][o_din]0__51_carry_n_6 ,\bram0b[o][o_din]0__51_carry_n_7 }),
        .S({1'b0,\bram0b[o][o_din]0__51_carry_i_2_n_0 ,\bram0b[o][o_din]0__51_carry_i_3_n_0 ,\bram0b[o][o_din]0__51_carry_i_4_n_0 }));
  LUT2 #(
    .INIT(4'hB)) 
    \bram0b[o][o_din]0__51_carry_i_1 
       (.I0(\bram0b[o][o_din]0__37_carry_n_4 ),
        .I1(\bram0b[o][o_din]0__5_carry__1_n_4 ),
        .O(\bram0b[o][o_din]0__51_carry_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \bram0b[o][o_din]0__51_carry_i_2 
       (.I0(\bram0b[o][o_din]0__5_carry__2_n_6 ),
        .I1(\bram0b[o][o_din]0__37_carry__0_n_6 ),
        .I2(\bram0b[o][o_din]0__5_carry__1_n_4 ),
        .I3(\bram0b[o][o_din]0__5_carry__2_n_7 ),
        .I4(\bram0b[o][o_din]0__37_carry__0_n_7 ),
        .O(\bram0b[o][o_din]0__51_carry_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \bram0b[o][o_din]0__51_carry_i_3 
       (.I0(\bram0b[o][o_din]0__5_carry__1_n_4 ),
        .I1(\bram0b[o][o_din]0__37_carry_n_4 ),
        .I2(\bram0b[o][o_din]0__37_carry__0_n_7 ),
        .I3(\bram0b[o][o_din]0__5_carry__2_n_7 ),
        .O(\bram0b[o][o_din]0__51_carry_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_din]0__51_carry_i_4 
       (.I0(\bram0b[o][o_din]0__5_carry__1_n_4 ),
        .I1(\bram0b[o][o_din]0__37_carry_n_4 ),
        .O(\bram0b[o][o_din]0__51_carry_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0b[o][o_din]0__57_carry 
       (.CI(1'b0),
        .CO({\bram0b[o][o_din]0__57_carry_n_0 ,\bram0b[o][o_din]0__57_carry_n_1 ,\bram0b[o][o_din]0__57_carry_n_2 ,\bram0b[o][o_din]0__57_carry_n_3 }),
        .CYINIT(1'b1),
        .DI({\s_tmp_nomac_reg_n_0_[0][3] ,\s_tmp_nomac_reg_n_0_[0][2] ,\s_tmp_nomac_reg_n_0_[0][1] ,\s_tmp_nomac_reg_n_0_[0][0] }),
        .O({\bram0b[o][o_din]0__57_carry_n_4 ,\bram0b[o][o_din]0__57_carry_n_5 ,\bram0b[o][o_din]0__57_carry_n_6 ,\bram0b[o][o_din]0__57_carry_n_7 }),
        .S({\bram0b[o][o_din]0__57_carry_i_1_n_0 ,\bram0b[o][o_din]0__57_carry_i_2_n_0 ,\bram0b[o][o_din]0__57_carry_i_3_n_0 ,\bram0b[o][o_din]0__57_carry_i_4_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0b[o][o_din]0__57_carry__0 
       (.CI(\bram0b[o][o_din]0__57_carry_n_0 ),
        .CO({\NLW_bram0b[o][o_din]0__57_carry__0_CO_UNCONNECTED [3:1],\bram0b[o][o_din]0__57_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\s_tmp_nomac_reg_n_0_[0][4] }),
        .O({\NLW_bram0b[o][o_din]0__57_carry__0_O_UNCONNECTED [3:2],\bram0b[o][o_din]0__57_carry__0_n_6 ,\bram0b[o][o_din]0__57_carry__0_n_7 }),
        .S({1'b0,1'b0,\bram0b[o][o_din]0__57_carry__0_i_1_n_0 ,\bram0b[o][o_din]0__57_carry__0_i_2_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \bram0b[o][o_din]0__57_carry__0_i_1 
       (.I0(\s_tmp_nomac_reg_n_0_[0][5] ),
        .I1(\bram0b[o][o_din]0__51_carry_n_5 ),
        .O(\bram0b[o][o_din]0__57_carry__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bram0b[o][o_din]0__57_carry__0_i_2 
       (.I0(\s_tmp_nomac_reg_n_0_[0][4] ),
        .I1(\bram0b[o][o_din]0__51_carry_n_6 ),
        .O(\bram0b[o][o_din]0__57_carry__0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bram0b[o][o_din]0__57_carry_i_1 
       (.I0(\s_tmp_nomac_reg_n_0_[0][3] ),
        .I1(\bram0b[o][o_din]0__51_carry_n_7 ),
        .O(\bram0b[o][o_din]0__57_carry_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bram0b[o][o_din]0__57_carry_i_2 
       (.I0(\s_tmp_nomac_reg_n_0_[0][2] ),
        .I1(\bram0b[o][o_din]0__37_carry_n_5 ),
        .O(\bram0b[o][o_din]0__57_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bram0b[o][o_din]0__57_carry_i_3 
       (.I0(\s_tmp_nomac_reg_n_0_[0][1] ),
        .I1(\bram0b[o][o_din]0__37_carry_n_6 ),
        .O(\bram0b[o][o_din]0__57_carry_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bram0b[o][o_din]0__57_carry_i_4 
       (.I0(\s_tmp_nomac_reg_n_0_[0][0] ),
        .I1(\bram0b[o][o_din]0__37_carry_n_7 ),
        .O(\bram0b[o][o_din]0__57_carry_i_4_n_0 ));
  CARRY4 \bram0b[o][o_din]0__5_carry 
       (.CI(1'b0),
        .CO({\bram0b[o][o_din]0__5_carry_n_0 ,\bram0b[o][o_din]0__5_carry_n_1 ,\bram0b[o][o_din]0__5_carry_n_2 ,\bram0b[o][o_din]0__5_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_tmp_nomac_reg_n_0_[0][7] ,\s_tmp_nomac_reg_n_0_[0][6] ,\s_tmp_nomac_reg_n_0_[0][5] ,1'b0}),
        .O(\NLW_bram0b[o][o_din]0__5_carry_O_UNCONNECTED [3:0]),
        .S({\bram0b[o][o_din]0__5_carry_i_1_n_0 ,\bram0b[o][o_din]0__5_carry_i_2_n_0 ,\bram0b[o][o_din]0__5_carry_i_3_n_0 ,\s_tmp_nomac_reg_n_0_[0][4] }));
  CARRY4 \bram0b[o][o_din]0__5_carry__0 
       (.CI(\bram0b[o][o_din]0__5_carry_n_0 ),
        .CO({\bram0b[o][o_din]0__5_carry__0_n_0 ,\bram0b[o][o_din]0__5_carry__0_n_1 ,\bram0b[o][o_din]0__5_carry__0_n_2 ,\bram0b[o][o_din]0__5_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\bram0b[o][o_din]0__5_carry__0_i_1_n_0 ,\s_tmp_nomac_reg_n_0_[0][10] ,\s_tmp_nomac_reg_n_0_[0][9] ,\s_tmp_nomac_reg_n_0_[0][8] }),
        .O(\NLW_bram0b[o][o_din]0__5_carry__0_O_UNCONNECTED [3:0]),
        .S({\bram0b[o][o_din]0__5_carry__0_i_2_n_0 ,\bram0b[o][o_din]0__5_carry__0_i_3_n_0 ,\bram0b[o][o_din]0__5_carry__0_i_4_n_0 ,\bram0b[o][o_din]0__5_carry__0_i_5_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \bram0b[o][o_din]0__5_carry__0_i_1 
       (.I0(\s_tmp_nomac_reg_n_0_[0][11] ),
        .I1(\s_tmp_nomac_reg_n_0_[0][1] ),
        .I2(\s_tmp_nomac_reg_n_0_[0][6] ),
        .O(\bram0b[o][o_din]0__5_carry__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h69969696)) 
    \bram0b[o][o_din]0__5_carry__0_i_2 
       (.I0(\s_tmp_nomac_reg_n_0_[0][1] ),
        .I1(\s_tmp_nomac_reg_n_0_[0][6] ),
        .I2(\s_tmp_nomac_reg_n_0_[0][11] ),
        .I3(\s_tmp_nomac_reg_n_0_[0][5] ),
        .I4(\s_tmp_nomac_reg_n_0_[0][0] ),
        .O(\bram0b[o][o_din]0__5_carry__0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \bram0b[o][o_din]0__5_carry__0_i_3 
       (.I0(\s_tmp_nomac_reg_n_0_[0][0] ),
        .I1(\s_tmp_nomac_reg_n_0_[0][5] ),
        .I2(\s_tmp_nomac_reg_n_0_[0][10] ),
        .O(\bram0b[o][o_din]0__5_carry__0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_din]0__5_carry__0_i_4 
       (.I0(\s_tmp_nomac_reg_n_0_[0][9] ),
        .I1(\s_tmp_nomac_reg_n_0_[0][4] ),
        .O(\bram0b[o][o_din]0__5_carry__0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_din]0__5_carry__0_i_5 
       (.I0(\s_tmp_nomac_reg_n_0_[0][8] ),
        .I1(\s_tmp_nomac_reg_n_0_[0][3] ),
        .O(\bram0b[o][o_din]0__5_carry__0_i_5_n_0 ));
  CARRY4 \bram0b[o][o_din]0__5_carry__1 
       (.CI(\bram0b[o][o_din]0__5_carry__0_n_0 ),
        .CO({\bram0b[o][o_din]0__5_carry__1_n_0 ,\bram0b[o][o_din]0__5_carry__1_n_1 ,\bram0b[o][o_din]0__5_carry__1_n_2 ,\bram0b[o][o_din]0__5_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\bram0b[o][o_din]0__5_carry__1_i_1_n_0 ,\bram0b[o][o_din]0__5_carry__1_i_2_n_0 ,\bram0b[o][o_din]0__5_carry__1_i_3_n_0 ,\bram0b[o][o_din]0__5_carry__1_i_4_n_0 }),
        .O({\bram0b[o][o_din]0__5_carry__1_n_4 ,\NLW_bram0b[o][o_din]0__5_carry__1_O_UNCONNECTED [2:0]}),
        .S({\bram0b[o][o_din]0__5_carry__1_i_5_n_0 ,\bram0b[o][o_din]0__5_carry__1_i_6_n_0 ,\bram0b[o][o_din]0__5_carry__1_i_7_n_0 ,\bram0b[o][o_din]0__5_carry__1_i_8_n_0 }));
  (* HLUTNM = "lutpair32" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \bram0b[o][o_din]0__5_carry__1_i_1 
       (.I0(\s_tmp_nomac_reg_n_0_[0][4] ),
        .I1(\s_tmp_nomac_reg_n_0_[0][9] ),
        .I2(\s_tmp_nomac_reg_n_0_[0][14] ),
        .O(\bram0b[o][o_din]0__5_carry__1_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \bram0b[o][o_din]0__5_carry__1_i_2 
       (.I0(\s_tmp_nomac_reg_n_0_[0][3] ),
        .I1(\s_tmp_nomac_reg_n_0_[0][8] ),
        .I2(\s_tmp_nomac_reg_n_0_[0][13] ),
        .O(\bram0b[o][o_din]0__5_carry__1_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \bram0b[o][o_din]0__5_carry__1_i_3 
       (.I0(\s_tmp_nomac_reg_n_0_[0][2] ),
        .I1(\s_tmp_nomac_reg_n_0_[0][7] ),
        .I2(\s_tmp_nomac_reg_n_0_[0][12] ),
        .O(\bram0b[o][o_din]0__5_carry__1_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \bram0b[o][o_din]0__5_carry__1_i_4 
       (.I0(\s_tmp_nomac_reg_n_0_[0][1] ),
        .I1(\s_tmp_nomac_reg_n_0_[0][6] ),
        .I2(\s_tmp_nomac_reg_n_0_[0][11] ),
        .O(\bram0b[o][o_din]0__5_carry__1_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \bram0b[o][o_din]0__5_carry__1_i_5 
       (.I0(\bram0b[o][o_din]0__5_carry__1_i_1_n_0 ),
        .I1(\s_tmp_nomac_reg_n_0_[0][10] ),
        .I2(\s_tmp_nomac_reg_n_0_[0][5] ),
        .I3(\s_tmp_nomac_reg_n_0_[0][15] ),
        .O(\bram0b[o][o_din]0__5_carry__1_i_5_n_0 ));
  (* HLUTNM = "lutpair32" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \bram0b[o][o_din]0__5_carry__1_i_6 
       (.I0(\s_tmp_nomac_reg_n_0_[0][4] ),
        .I1(\s_tmp_nomac_reg_n_0_[0][9] ),
        .I2(\s_tmp_nomac_reg_n_0_[0][14] ),
        .I3(\bram0b[o][o_din]0__5_carry__1_i_2_n_0 ),
        .O(\bram0b[o][o_din]0__5_carry__1_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \bram0b[o][o_din]0__5_carry__1_i_7 
       (.I0(\s_tmp_nomac_reg_n_0_[0][3] ),
        .I1(\s_tmp_nomac_reg_n_0_[0][8] ),
        .I2(\s_tmp_nomac_reg_n_0_[0][13] ),
        .I3(\bram0b[o][o_din]0__5_carry__1_i_3_n_0 ),
        .O(\bram0b[o][o_din]0__5_carry__1_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \bram0b[o][o_din]0__5_carry__1_i_8 
       (.I0(\s_tmp_nomac_reg_n_0_[0][2] ),
        .I1(\s_tmp_nomac_reg_n_0_[0][7] ),
        .I2(\s_tmp_nomac_reg_n_0_[0][12] ),
        .I3(\bram0b[o][o_din]0__5_carry__1_i_4_n_0 ),
        .O(\bram0b[o][o_din]0__5_carry__1_i_8_n_0 ));
  CARRY4 \bram0b[o][o_din]0__5_carry__2 
       (.CI(\bram0b[o][o_din]0__5_carry__1_n_0 ),
        .CO({\bram0b[o][o_din]0__5_carry__2_n_0 ,\bram0b[o][o_din]0__5_carry__2_n_1 ,\bram0b[o][o_din]0__5_carry__2_n_2 ,\bram0b[o][o_din]0__5_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({\bram0b[o][o_din]0__5_carry__2_i_1_n_0 ,\bram0b[o][o_din]0__5_carry__2_i_2_n_0 ,\bram0b[o][o_din]0__5_carry__2_i_3_n_0 ,\bram0b[o][o_din]0__5_carry__2_i_4_n_0 }),
        .O({\bram0b[o][o_din]0__5_carry__2_n_4 ,\bram0b[o][o_din]0__5_carry__2_n_5 ,\bram0b[o][o_din]0__5_carry__2_n_6 ,\bram0b[o][o_din]0__5_carry__2_n_7 }),
        .S({\bram0b[o][o_din]0__5_carry__2_i_5_n_0 ,\bram0b[o][o_din]0__5_carry__2_i_6_n_0 ,\bram0b[o][o_din]0__5_carry__2_i_7_n_0 ,\bram0b[o][o_din]0__5_carry__2_i_8_n_0 }));
  LUT2 #(
    .INIT(4'h8)) 
    \bram0b[o][o_din]0__5_carry__2_i_1 
       (.I0(\s_tmp_nomac_reg_n_0_[0][13] ),
        .I1(\s_tmp_nomac_reg_n_0_[0][8] ),
        .O(\bram0b[o][o_din]0__5_carry__2_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bram0b[o][o_din]0__5_carry__2_i_2 
       (.I0(\s_tmp_nomac_reg_n_0_[0][12] ),
        .I1(\s_tmp_nomac_reg_n_0_[0][7] ),
        .O(\bram0b[o][o_din]0__5_carry__2_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bram0b[o][o_din]0__5_carry__2_i_3 
       (.I0(\s_tmp_nomac_reg_n_0_[0][11] ),
        .I1(\s_tmp_nomac_reg_n_0_[0][6] ),
        .O(\bram0b[o][o_din]0__5_carry__2_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \bram0b[o][o_din]0__5_carry__2_i_4 
       (.I0(\s_tmp_nomac_reg_n_0_[0][5] ),
        .I1(\s_tmp_nomac_reg_n_0_[0][10] ),
        .I2(\s_tmp_nomac_reg_n_0_[0][15] ),
        .O(\bram0b[o][o_din]0__5_carry__2_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \bram0b[o][o_din]0__5_carry__2_i_5 
       (.I0(\s_tmp_nomac_reg_n_0_[0][13] ),
        .I1(\s_tmp_nomac_reg_n_0_[0][8] ),
        .I2(\s_tmp_nomac_reg_n_0_[0][9] ),
        .I3(\s_tmp_nomac_reg_n_0_[0][14] ),
        .O(\bram0b[o][o_din]0__5_carry__2_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \bram0b[o][o_din]0__5_carry__2_i_6 
       (.I0(\s_tmp_nomac_reg_n_0_[0][12] ),
        .I1(\s_tmp_nomac_reg_n_0_[0][7] ),
        .I2(\s_tmp_nomac_reg_n_0_[0][8] ),
        .I3(\s_tmp_nomac_reg_n_0_[0][13] ),
        .O(\bram0b[o][o_din]0__5_carry__2_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \bram0b[o][o_din]0__5_carry__2_i_7 
       (.I0(\s_tmp_nomac_reg_n_0_[0][11] ),
        .I1(\s_tmp_nomac_reg_n_0_[0][6] ),
        .I2(\s_tmp_nomac_reg_n_0_[0][7] ),
        .I3(\s_tmp_nomac_reg_n_0_[0][12] ),
        .O(\bram0b[o][o_din]0__5_carry__2_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \bram0b[o][o_din]0__5_carry__2_i_8 
       (.I0(\s_tmp_nomac_reg_n_0_[0][15] ),
        .I1(\s_tmp_nomac_reg_n_0_[0][10] ),
        .I2(\s_tmp_nomac_reg_n_0_[0][5] ),
        .I3(\s_tmp_nomac_reg_n_0_[0][6] ),
        .I4(\s_tmp_nomac_reg_n_0_[0][11] ),
        .O(\bram0b[o][o_din]0__5_carry__2_i_8_n_0 ));
  CARRY4 \bram0b[o][o_din]0__5_carry__3 
       (.CI(\bram0b[o][o_din]0__5_carry__2_n_0 ),
        .CO(\NLW_bram0b[o][o_din]0__5_carry__3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bram0b[o][o_din]0__5_carry__3_O_UNCONNECTED [3:1],\bram0b[o][o_din]0__5_carry__3_n_7 }),
        .S({1'b0,1'b0,1'b0,\bram0b[o][o_din]0__5_carry__3_i_1_n_0 }));
  LUT4 #(
    .INIT(16'h8778)) 
    \bram0b[o][o_din]0__5_carry__3_i_1 
       (.I0(\s_tmp_nomac_reg_n_0_[0][14] ),
        .I1(\s_tmp_nomac_reg_n_0_[0][9] ),
        .I2(\s_tmp_nomac_reg_n_0_[0][10] ),
        .I3(\s_tmp_nomac_reg_n_0_[0][15] ),
        .O(\bram0b[o][o_din]0__5_carry__3_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_din]0__5_carry_i_1 
       (.I0(\s_tmp_nomac_reg_n_0_[0][7] ),
        .I1(\s_tmp_nomac_reg_n_0_[0][2] ),
        .O(\bram0b[o][o_din]0__5_carry_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_din]0__5_carry_i_2 
       (.I0(\s_tmp_nomac_reg_n_0_[0][6] ),
        .I1(\s_tmp_nomac_reg_n_0_[0][1] ),
        .O(\bram0b[o][o_din]0__5_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_din]0__5_carry_i_3 
       (.I0(\s_tmp_nomac_reg_n_0_[0][5] ),
        .I1(\s_tmp_nomac_reg_n_0_[0][0] ),
        .O(\bram0b[o][o_din]0__5_carry_i_3_n_0 ));
  CARRY4 \bram0b[o][o_din]0_inferred__0/i___37_carry 
       (.CI(1'b0),
        .CO({\bram0b[o][o_din]0_inferred__0/i___37_carry_n_0 ,\bram0b[o][o_din]0_inferred__0/i___37_carry_n_1 ,\bram0b[o][o_din]0_inferred__0/i___37_carry_n_2 ,\bram0b[o][o_din]0_inferred__0/i___37_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\bram0b[o][o_din]0_inferred__0/i___5_carry__1_n_4 ,1'b0,1'b0,1'b1}),
        .O({\bram0b[o][o_din]0_inferred__0/i___37_carry_n_4 ,\bram0b[o][o_din]0_inferred__0/i___37_carry_n_5 ,\bram0b[o][o_din]0_inferred__0/i___37_carry_n_6 ,\bram0b[o][o_din]0_inferred__0/i___37_carry_n_7 }),
        .S({i___37_carry_i_1_n_0,i___37_carry_i_2_n_0,i___37_carry_i_3_n_0,\bram0b[o][o_din]0_inferred__0/i___5_carry__1_n_4 }));
  CARRY4 \bram0b[o][o_din]0_inferred__0/i___37_carry__0 
       (.CI(\bram0b[o][o_din]0_inferred__0/i___37_carry_n_0 ),
        .CO({\NLW_bram0b[o][o_din]0_inferred__0/i___37_carry__0_CO_UNCONNECTED [3:1],\bram0b[o][o_din]0_inferred__0/i___37_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\bram0b[o][o_din]0_inferred__0/i___5_carry__2_n_7 }),
        .O({\NLW_bram0b[o][o_din]0_inferred__0/i___37_carry__0_O_UNCONNECTED [3:2],\bram0b[o][o_din]0_inferred__0/i___37_carry__0_n_6 ,\bram0b[o][o_din]0_inferred__0/i___37_carry__0_n_7 }),
        .S({1'b0,1'b0,i___37_carry__0_i_1_n_0,i___37_carry__0_i_2_n_0}));
  CARRY4 \bram0b[o][o_din]0_inferred__0/i___51_carry 
       (.CI(1'b0),
        .CO({\NLW_bram0b[o][o_din]0_inferred__0/i___51_carry_CO_UNCONNECTED [3:2],\bram0b[o][o_din]0_inferred__0/i___51_carry_n_2 ,\bram0b[o][o_din]0_inferred__0/i___51_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i___51_carry_i_1_n_0,1'b0}),
        .O({\NLW_bram0b[o][o_din]0_inferred__0/i___51_carry_O_UNCONNECTED [3],\bram0b[o][o_din]0_inferred__0/i___51_carry_n_5 ,\bram0b[o][o_din]0_inferred__0/i___51_carry_n_6 ,\bram0b[o][o_din]0_inferred__0/i___51_carry_n_7 }),
        .S({1'b0,i___51_carry_i_2_n_0,i___51_carry_i_3_n_0,i___51_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0b[o][o_din]0_inferred__0/i___57_carry 
       (.CI(1'b0),
        .CO({\bram0b[o][o_din]0_inferred__0/i___57_carry_n_0 ,\bram0b[o][o_din]0_inferred__0/i___57_carry_n_1 ,\bram0b[o][o_din]0_inferred__0/i___57_carry_n_2 ,\bram0b[o][o_din]0_inferred__0/i___57_carry_n_3 }),
        .CYINIT(1'b1),
        .DI({\s_tmp_nomac_reg_n_0_[1][3] ,\s_tmp_nomac_reg_n_0_[1][2] ,\s_tmp_nomac_reg_n_0_[1][1] ,\s_tmp_nomac_reg_n_0_[1][0] }),
        .O({\bram0b[o][o_din]0_inferred__0/i___57_carry_n_4 ,\bram0b[o][o_din]0_inferred__0/i___57_carry_n_5 ,\bram0b[o][o_din]0_inferred__0/i___57_carry_n_6 ,\bram0b[o][o_din]0_inferred__0/i___57_carry_n_7 }),
        .S({i___57_carry_i_1_n_0,i___57_carry_i_2_n_0,i___57_carry_i_3_n_0,i___57_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0b[o][o_din]0_inferred__0/i___57_carry__0 
       (.CI(\bram0b[o][o_din]0_inferred__0/i___57_carry_n_0 ),
        .CO({\NLW_bram0b[o][o_din]0_inferred__0/i___57_carry__0_CO_UNCONNECTED [3:1],\bram0b[o][o_din]0_inferred__0/i___57_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\s_tmp_nomac_reg_n_0_[1][4] }),
        .O({\NLW_bram0b[o][o_din]0_inferred__0/i___57_carry__0_O_UNCONNECTED [3:2],\bram0b[o][o_din]0_inferred__0/i___57_carry__0_n_6 ,\bram0b[o][o_din]0_inferred__0/i___57_carry__0_n_7 }),
        .S({1'b0,1'b0,i___57_carry__0_i_1_n_0,i___57_carry__0_i_2_n_0}));
  CARRY4 \bram0b[o][o_din]0_inferred__0/i___5_carry 
       (.CI(1'b0),
        .CO({\bram0b[o][o_din]0_inferred__0/i___5_carry_n_0 ,\bram0b[o][o_din]0_inferred__0/i___5_carry_n_1 ,\bram0b[o][o_din]0_inferred__0/i___5_carry_n_2 ,\bram0b[o][o_din]0_inferred__0/i___5_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_tmp_nomac_reg_n_0_[1][7] ,\s_tmp_nomac_reg_n_0_[1][6] ,\s_tmp_nomac_reg_n_0_[1][5] ,1'b0}),
        .O(\NLW_bram0b[o][o_din]0_inferred__0/i___5_carry_O_UNCONNECTED [3:0]),
        .S({i___5_carry_i_1_n_0,i___5_carry_i_2_n_0,i___5_carry_i_3_n_0,\s_tmp_nomac_reg_n_0_[1][4] }));
  CARRY4 \bram0b[o][o_din]0_inferred__0/i___5_carry__0 
       (.CI(\bram0b[o][o_din]0_inferred__0/i___5_carry_n_0 ),
        .CO({\bram0b[o][o_din]0_inferred__0/i___5_carry__0_n_0 ,\bram0b[o][o_din]0_inferred__0/i___5_carry__0_n_1 ,\bram0b[o][o_din]0_inferred__0/i___5_carry__0_n_2 ,\bram0b[o][o_din]0_inferred__0/i___5_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i___5_carry__0_i_1_n_0,\s_tmp_nomac_reg_n_0_[1][10] ,\s_tmp_nomac_reg_n_0_[1][9] ,\s_tmp_nomac_reg_n_0_[1][8] }),
        .O(\NLW_bram0b[o][o_din]0_inferred__0/i___5_carry__0_O_UNCONNECTED [3:0]),
        .S({i___5_carry__0_i_2_n_0,i___5_carry__0_i_3_n_0,i___5_carry__0_i_4_n_0,i___5_carry__0_i_5_n_0}));
  CARRY4 \bram0b[o][o_din]0_inferred__0/i___5_carry__1 
       (.CI(\bram0b[o][o_din]0_inferred__0/i___5_carry__0_n_0 ),
        .CO({\bram0b[o][o_din]0_inferred__0/i___5_carry__1_n_0 ,\bram0b[o][o_din]0_inferred__0/i___5_carry__1_n_1 ,\bram0b[o][o_din]0_inferred__0/i___5_carry__1_n_2 ,\bram0b[o][o_din]0_inferred__0/i___5_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i___5_carry__1_i_1_n_0,i___5_carry__1_i_2_n_0,i___5_carry__1_i_3_n_0,i___5_carry__1_i_4_n_0}),
        .O({\bram0b[o][o_din]0_inferred__0/i___5_carry__1_n_4 ,\NLW_bram0b[o][o_din]0_inferred__0/i___5_carry__1_O_UNCONNECTED [2:0]}),
        .S({i___5_carry__1_i_5_n_0,i___5_carry__1_i_6_n_0,i___5_carry__1_i_7_n_0,i___5_carry__1_i_8_n_0}));
  CARRY4 \bram0b[o][o_din]0_inferred__0/i___5_carry__2 
       (.CI(\bram0b[o][o_din]0_inferred__0/i___5_carry__1_n_0 ),
        .CO({\bram0b[o][o_din]0_inferred__0/i___5_carry__2_n_0 ,\bram0b[o][o_din]0_inferred__0/i___5_carry__2_n_1 ,\bram0b[o][o_din]0_inferred__0/i___5_carry__2_n_2 ,\bram0b[o][o_din]0_inferred__0/i___5_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i___5_carry__2_i_1_n_0,i___5_carry__2_i_2_n_0,i___5_carry__2_i_3_n_0,i___5_carry__2_i_4_n_0}),
        .O({\bram0b[o][o_din]0_inferred__0/i___5_carry__2_n_4 ,\bram0b[o][o_din]0_inferred__0/i___5_carry__2_n_5 ,\bram0b[o][o_din]0_inferred__0/i___5_carry__2_n_6 ,\bram0b[o][o_din]0_inferred__0/i___5_carry__2_n_7 }),
        .S({i___5_carry__2_i_5_n_0,i___5_carry__2_i_6_n_0,i___5_carry__2_i_7_n_0,i___5_carry__2_i_8_n_0}));
  CARRY4 \bram0b[o][o_din]0_inferred__0/i___5_carry__3 
       (.CI(\bram0b[o][o_din]0_inferred__0/i___5_carry__2_n_0 ),
        .CO(\NLW_bram0b[o][o_din]0_inferred__0/i___5_carry__3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bram0b[o][o_din]0_inferred__0/i___5_carry__3_O_UNCONNECTED [3:1],\bram0b[o][o_din]0_inferred__0/i___5_carry__3_n_7 }),
        .S({1'b0,1'b0,1'b0,i___5_carry__3_i_1_n_0}));
  CARRY4 \bram0b[o][o_din]0_inferred__1/i___37_carry 
       (.CI(1'b0),
        .CO({\bram0b[o][o_din]0_inferred__1/i___37_carry_n_0 ,\bram0b[o][o_din]0_inferred__1/i___37_carry_n_1 ,\bram0b[o][o_din]0_inferred__1/i___37_carry_n_2 ,\bram0b[o][o_din]0_inferred__1/i___37_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\bram0b[o][o_din]0_inferred__1/i___5_carry__1_n_4 ,1'b0,1'b0,1'b1}),
        .O({\bram0b[o][o_din]0_inferred__1/i___37_carry_n_4 ,\bram0b[o][o_din]0_inferred__1/i___37_carry_n_5 ,\bram0b[o][o_din]0_inferred__1/i___37_carry_n_6 ,\bram0b[o][o_din]0_inferred__1/i___37_carry_n_7 }),
        .S({i___37_carry_i_1__0_n_0,i___37_carry_i_2__0_n_0,i___37_carry_i_3__0_n_0,\bram0b[o][o_din]0_inferred__1/i___5_carry__1_n_4 }));
  CARRY4 \bram0b[o][o_din]0_inferred__1/i___37_carry__0 
       (.CI(\bram0b[o][o_din]0_inferred__1/i___37_carry_n_0 ),
        .CO({\NLW_bram0b[o][o_din]0_inferred__1/i___37_carry__0_CO_UNCONNECTED [3:1],\bram0b[o][o_din]0_inferred__1/i___37_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\bram0b[o][o_din]0_inferred__1/i___5_carry__2_n_7 }),
        .O({\NLW_bram0b[o][o_din]0_inferred__1/i___37_carry__0_O_UNCONNECTED [3:2],\bram0b[o][o_din]0_inferred__1/i___37_carry__0_n_6 ,\bram0b[o][o_din]0_inferred__1/i___37_carry__0_n_7 }),
        .S({1'b0,1'b0,i___37_carry__0_i_1__0_n_0,i___37_carry__0_i_2__0_n_0}));
  CARRY4 \bram0b[o][o_din]0_inferred__1/i___51_carry 
       (.CI(1'b0),
        .CO({\NLW_bram0b[o][o_din]0_inferred__1/i___51_carry_CO_UNCONNECTED [3:2],\bram0b[o][o_din]0_inferred__1/i___51_carry_n_2 ,\bram0b[o][o_din]0_inferred__1/i___51_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i___51_carry_i_1__0_n_0,1'b0}),
        .O({\NLW_bram0b[o][o_din]0_inferred__1/i___51_carry_O_UNCONNECTED [3],\bram0b[o][o_din]0_inferred__1/i___51_carry_n_5 ,\bram0b[o][o_din]0_inferred__1/i___51_carry_n_6 ,\bram0b[o][o_din]0_inferred__1/i___51_carry_n_7 }),
        .S({1'b0,i___51_carry_i_2__0_n_0,i___51_carry_i_3__0_n_0,i___51_carry_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0b[o][o_din]0_inferred__1/i___57_carry 
       (.CI(1'b0),
        .CO({\bram0b[o][o_din]0_inferred__1/i___57_carry_n_0 ,\bram0b[o][o_din]0_inferred__1/i___57_carry_n_1 ,\bram0b[o][o_din]0_inferred__1/i___57_carry_n_2 ,\bram0b[o][o_din]0_inferred__1/i___57_carry_n_3 }),
        .CYINIT(1'b1),
        .DI({\s_tmp_nomac_reg_n_0_[2][3] ,\s_tmp_nomac_reg_n_0_[2][2] ,\s_tmp_nomac_reg_n_0_[2][1] ,\s_tmp_nomac_reg_n_0_[2][0] }),
        .O({\bram0b[o][o_din]0_inferred__1/i___57_carry_n_4 ,\bram0b[o][o_din]0_inferred__1/i___57_carry_n_5 ,\bram0b[o][o_din]0_inferred__1/i___57_carry_n_6 ,\bram0b[o][o_din]0_inferred__1/i___57_carry_n_7 }),
        .S({i___57_carry_i_1__0_n_0,i___57_carry_i_2__0_n_0,i___57_carry_i_3__0_n_0,i___57_carry_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0b[o][o_din]0_inferred__1/i___57_carry__0 
       (.CI(\bram0b[o][o_din]0_inferred__1/i___57_carry_n_0 ),
        .CO({\NLW_bram0b[o][o_din]0_inferred__1/i___57_carry__0_CO_UNCONNECTED [3:1],\bram0b[o][o_din]0_inferred__1/i___57_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\s_tmp_nomac_reg_n_0_[2][4] }),
        .O({\NLW_bram0b[o][o_din]0_inferred__1/i___57_carry__0_O_UNCONNECTED [3:2],\bram0b[o][o_din]0_inferred__1/i___57_carry__0_n_6 ,\bram0b[o][o_din]0_inferred__1/i___57_carry__0_n_7 }),
        .S({1'b0,1'b0,i___57_carry__0_i_1__0_n_0,i___57_carry__0_i_2__0_n_0}));
  CARRY4 \bram0b[o][o_din]0_inferred__1/i___5_carry 
       (.CI(1'b0),
        .CO({\bram0b[o][o_din]0_inferred__1/i___5_carry_n_0 ,\bram0b[o][o_din]0_inferred__1/i___5_carry_n_1 ,\bram0b[o][o_din]0_inferred__1/i___5_carry_n_2 ,\bram0b[o][o_din]0_inferred__1/i___5_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_tmp_nomac_reg_n_0_[2][7] ,\s_tmp_nomac_reg_n_0_[2][6] ,\s_tmp_nomac_reg_n_0_[2][5] ,1'b0}),
        .O(\NLW_bram0b[o][o_din]0_inferred__1/i___5_carry_O_UNCONNECTED [3:0]),
        .S({i___5_carry_i_1__0_n_0,i___5_carry_i_2__0_n_0,i___5_carry_i_3__0_n_0,\s_tmp_nomac_reg_n_0_[2][4] }));
  CARRY4 \bram0b[o][o_din]0_inferred__1/i___5_carry__0 
       (.CI(\bram0b[o][o_din]0_inferred__1/i___5_carry_n_0 ),
        .CO({\bram0b[o][o_din]0_inferred__1/i___5_carry__0_n_0 ,\bram0b[o][o_din]0_inferred__1/i___5_carry__0_n_1 ,\bram0b[o][o_din]0_inferred__1/i___5_carry__0_n_2 ,\bram0b[o][o_din]0_inferred__1/i___5_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i___5_carry__0_i_1__0_n_0,\s_tmp_nomac_reg_n_0_[2][10] ,\s_tmp_nomac_reg_n_0_[2][9] ,\s_tmp_nomac_reg_n_0_[2][8] }),
        .O(\NLW_bram0b[o][o_din]0_inferred__1/i___5_carry__0_O_UNCONNECTED [3:0]),
        .S({i___5_carry__0_i_2__0_n_0,i___5_carry__0_i_3__0_n_0,i___5_carry__0_i_4__0_n_0,i___5_carry__0_i_5__0_n_0}));
  CARRY4 \bram0b[o][o_din]0_inferred__1/i___5_carry__1 
       (.CI(\bram0b[o][o_din]0_inferred__1/i___5_carry__0_n_0 ),
        .CO({\bram0b[o][o_din]0_inferred__1/i___5_carry__1_n_0 ,\bram0b[o][o_din]0_inferred__1/i___5_carry__1_n_1 ,\bram0b[o][o_din]0_inferred__1/i___5_carry__1_n_2 ,\bram0b[o][o_din]0_inferred__1/i___5_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i___5_carry__1_i_1__0_n_0,i___5_carry__1_i_2__0_n_0,i___5_carry__1_i_3__0_n_0,i___5_carry__1_i_4__0_n_0}),
        .O({\bram0b[o][o_din]0_inferred__1/i___5_carry__1_n_4 ,\NLW_bram0b[o][o_din]0_inferred__1/i___5_carry__1_O_UNCONNECTED [2:0]}),
        .S({i___5_carry__1_i_5__0_n_0,i___5_carry__1_i_6__0_n_0,i___5_carry__1_i_7__0_n_0,i___5_carry__1_i_8__0_n_0}));
  CARRY4 \bram0b[o][o_din]0_inferred__1/i___5_carry__2 
       (.CI(\bram0b[o][o_din]0_inferred__1/i___5_carry__1_n_0 ),
        .CO({\bram0b[o][o_din]0_inferred__1/i___5_carry__2_n_0 ,\bram0b[o][o_din]0_inferred__1/i___5_carry__2_n_1 ,\bram0b[o][o_din]0_inferred__1/i___5_carry__2_n_2 ,\bram0b[o][o_din]0_inferred__1/i___5_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i___5_carry__2_i_1__0_n_0,i___5_carry__2_i_2__0_n_0,i___5_carry__2_i_3__0_n_0,i___5_carry__2_i_4__0_n_0}),
        .O({\bram0b[o][o_din]0_inferred__1/i___5_carry__2_n_4 ,\bram0b[o][o_din]0_inferred__1/i___5_carry__2_n_5 ,\bram0b[o][o_din]0_inferred__1/i___5_carry__2_n_6 ,\bram0b[o][o_din]0_inferred__1/i___5_carry__2_n_7 }),
        .S({i___5_carry__2_i_5__0_n_0,i___5_carry__2_i_6__0_n_0,i___5_carry__2_i_7__0_n_0,i___5_carry__2_i_8__0_n_0}));
  CARRY4 \bram0b[o][o_din]0_inferred__1/i___5_carry__3 
       (.CI(\bram0b[o][o_din]0_inferred__1/i___5_carry__2_n_0 ),
        .CO(\NLW_bram0b[o][o_din]0_inferred__1/i___5_carry__3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bram0b[o][o_din]0_inferred__1/i___5_carry__3_O_UNCONNECTED [3:1],\bram0b[o][o_din]0_inferred__1/i___5_carry__3_n_7 }),
        .S({1'b0,1'b0,1'b0,i___5_carry__3_i_1__0_n_0}));
  CARRY4 \bram0b[o][o_din]0_inferred__2/i___37_carry 
       (.CI(1'b0),
        .CO({\bram0b[o][o_din]0_inferred__2/i___37_carry_n_0 ,\bram0b[o][o_din]0_inferred__2/i___37_carry_n_1 ,\bram0b[o][o_din]0_inferred__2/i___37_carry_n_2 ,\bram0b[o][o_din]0_inferred__2/i___37_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\bram0b[o][o_din]0_inferred__2/i___5_carry__1_n_4 ,1'b0,1'b0,1'b1}),
        .O({\bram0b[o][o_din]0_inferred__2/i___37_carry_n_4 ,\bram0b[o][o_din]0_inferred__2/i___37_carry_n_5 ,\bram0b[o][o_din]0_inferred__2/i___37_carry_n_6 ,\bram0b[o][o_din]0_inferred__2/i___37_carry_n_7 }),
        .S({i___37_carry_i_1__1_n_0,i___37_carry_i_2__1_n_0,i___37_carry_i_3__1_n_0,\bram0b[o][o_din]0_inferred__2/i___5_carry__1_n_4 }));
  CARRY4 \bram0b[o][o_din]0_inferred__2/i___37_carry__0 
       (.CI(\bram0b[o][o_din]0_inferred__2/i___37_carry_n_0 ),
        .CO({\NLW_bram0b[o][o_din]0_inferred__2/i___37_carry__0_CO_UNCONNECTED [3:1],\bram0b[o][o_din]0_inferred__2/i___37_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\bram0b[o][o_din]0_inferred__2/i___5_carry__2_n_7 }),
        .O({\NLW_bram0b[o][o_din]0_inferred__2/i___37_carry__0_O_UNCONNECTED [3:2],\bram0b[o][o_din]0_inferred__2/i___37_carry__0_n_6 ,\bram0b[o][o_din]0_inferred__2/i___37_carry__0_n_7 }),
        .S({1'b0,1'b0,i___37_carry__0_i_1__1_n_0,i___37_carry__0_i_2__1_n_0}));
  CARRY4 \bram0b[o][o_din]0_inferred__2/i___51_carry 
       (.CI(1'b0),
        .CO({\NLW_bram0b[o][o_din]0_inferred__2/i___51_carry_CO_UNCONNECTED [3:2],\bram0b[o][o_din]0_inferred__2/i___51_carry_n_2 ,\bram0b[o][o_din]0_inferred__2/i___51_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i___51_carry_i_1__1_n_0,1'b0}),
        .O({\NLW_bram0b[o][o_din]0_inferred__2/i___51_carry_O_UNCONNECTED [3],\bram0b[o][o_din]0_inferred__2/i___51_carry_n_5 ,\bram0b[o][o_din]0_inferred__2/i___51_carry_n_6 ,\bram0b[o][o_din]0_inferred__2/i___51_carry_n_7 }),
        .S({1'b0,i___51_carry_i_2__1_n_0,i___51_carry_i_3__1_n_0,i___51_carry_i_4__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0b[o][o_din]0_inferred__2/i___57_carry 
       (.CI(1'b0),
        .CO({\bram0b[o][o_din]0_inferred__2/i___57_carry_n_0 ,\bram0b[o][o_din]0_inferred__2/i___57_carry_n_1 ,\bram0b[o][o_din]0_inferred__2/i___57_carry_n_2 ,\bram0b[o][o_din]0_inferred__2/i___57_carry_n_3 }),
        .CYINIT(1'b1),
        .DI({\s_tmp_nomac_reg_n_0_[3][3] ,\s_tmp_nomac_reg_n_0_[3][2] ,\s_tmp_nomac_reg_n_0_[3][1] ,\s_tmp_nomac_reg_n_0_[3][0] }),
        .O({\bram0b[o][o_din]0_inferred__2/i___57_carry_n_4 ,\bram0b[o][o_din]0_inferred__2/i___57_carry_n_5 ,\bram0b[o][o_din]0_inferred__2/i___57_carry_n_6 ,\bram0b[o][o_din]0_inferred__2/i___57_carry_n_7 }),
        .S({i___57_carry_i_1__1_n_0,i___57_carry_i_2__1_n_0,i___57_carry_i_3__1_n_0,i___57_carry_i_4__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0b[o][o_din]0_inferred__2/i___57_carry__0 
       (.CI(\bram0b[o][o_din]0_inferred__2/i___57_carry_n_0 ),
        .CO({\NLW_bram0b[o][o_din]0_inferred__2/i___57_carry__0_CO_UNCONNECTED [3:1],\bram0b[o][o_din]0_inferred__2/i___57_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\s_tmp_nomac_reg_n_0_[3][4] }),
        .O({\NLW_bram0b[o][o_din]0_inferred__2/i___57_carry__0_O_UNCONNECTED [3:2],\bram0b[o][o_din]0_inferred__2/i___57_carry__0_n_6 ,\bram0b[o][o_din]0_inferred__2/i___57_carry__0_n_7 }),
        .S({1'b0,1'b0,i___57_carry__0_i_1__1_n_0,i___57_carry__0_i_2__1_n_0}));
  CARRY4 \bram0b[o][o_din]0_inferred__2/i___5_carry 
       (.CI(1'b0),
        .CO({\bram0b[o][o_din]0_inferred__2/i___5_carry_n_0 ,\bram0b[o][o_din]0_inferred__2/i___5_carry_n_1 ,\bram0b[o][o_din]0_inferred__2/i___5_carry_n_2 ,\bram0b[o][o_din]0_inferred__2/i___5_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_tmp_nomac_reg_n_0_[3][7] ,\s_tmp_nomac_reg_n_0_[3][6] ,\s_tmp_nomac_reg_n_0_[3][5] ,1'b0}),
        .O(\NLW_bram0b[o][o_din]0_inferred__2/i___5_carry_O_UNCONNECTED [3:0]),
        .S({i___5_carry_i_1__1_n_0,i___5_carry_i_2__1_n_0,i___5_carry_i_3__1_n_0,\s_tmp_nomac_reg_n_0_[3][4] }));
  CARRY4 \bram0b[o][o_din]0_inferred__2/i___5_carry__0 
       (.CI(\bram0b[o][o_din]0_inferred__2/i___5_carry_n_0 ),
        .CO({\bram0b[o][o_din]0_inferred__2/i___5_carry__0_n_0 ,\bram0b[o][o_din]0_inferred__2/i___5_carry__0_n_1 ,\bram0b[o][o_din]0_inferred__2/i___5_carry__0_n_2 ,\bram0b[o][o_din]0_inferred__2/i___5_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i___5_carry__0_i_1__1_n_0,\s_tmp_nomac_reg_n_0_[3][10] ,\s_tmp_nomac_reg_n_0_[3][9] ,\s_tmp_nomac_reg_n_0_[3][8] }),
        .O(\NLW_bram0b[o][o_din]0_inferred__2/i___5_carry__0_O_UNCONNECTED [3:0]),
        .S({i___5_carry__0_i_2__1_n_0,i___5_carry__0_i_3__1_n_0,i___5_carry__0_i_4__1_n_0,i___5_carry__0_i_5__1_n_0}));
  CARRY4 \bram0b[o][o_din]0_inferred__2/i___5_carry__1 
       (.CI(\bram0b[o][o_din]0_inferred__2/i___5_carry__0_n_0 ),
        .CO({\bram0b[o][o_din]0_inferred__2/i___5_carry__1_n_0 ,\bram0b[o][o_din]0_inferred__2/i___5_carry__1_n_1 ,\bram0b[o][o_din]0_inferred__2/i___5_carry__1_n_2 ,\bram0b[o][o_din]0_inferred__2/i___5_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i___5_carry__1_i_1__1_n_0,i___5_carry__1_i_2__1_n_0,i___5_carry__1_i_3__1_n_0,i___5_carry__1_i_4__1_n_0}),
        .O({\bram0b[o][o_din]0_inferred__2/i___5_carry__1_n_4 ,\NLW_bram0b[o][o_din]0_inferred__2/i___5_carry__1_O_UNCONNECTED [2:0]}),
        .S({i___5_carry__1_i_5__1_n_0,i___5_carry__1_i_6__1_n_0,i___5_carry__1_i_7__1_n_0,i___5_carry__1_i_8__1_n_0}));
  CARRY4 \bram0b[o][o_din]0_inferred__2/i___5_carry__2 
       (.CI(\bram0b[o][o_din]0_inferred__2/i___5_carry__1_n_0 ),
        .CO({\bram0b[o][o_din]0_inferred__2/i___5_carry__2_n_0 ,\bram0b[o][o_din]0_inferred__2/i___5_carry__2_n_1 ,\bram0b[o][o_din]0_inferred__2/i___5_carry__2_n_2 ,\bram0b[o][o_din]0_inferred__2/i___5_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i___5_carry__2_i_1__1_n_0,i___5_carry__2_i_2__1_n_0,i___5_carry__2_i_3__1_n_0,i___5_carry__2_i_4__1_n_0}),
        .O({\bram0b[o][o_din]0_inferred__2/i___5_carry__2_n_4 ,\bram0b[o][o_din]0_inferred__2/i___5_carry__2_n_5 ,\bram0b[o][o_din]0_inferred__2/i___5_carry__2_n_6 ,\bram0b[o][o_din]0_inferred__2/i___5_carry__2_n_7 }),
        .S({i___5_carry__2_i_5__1_n_0,i___5_carry__2_i_6__1_n_0,i___5_carry__2_i_7__1_n_0,i___5_carry__2_i_8__1_n_0}));
  CARRY4 \bram0b[o][o_din]0_inferred__2/i___5_carry__3 
       (.CI(\bram0b[o][o_din]0_inferred__2/i___5_carry__2_n_0 ),
        .CO(\NLW_bram0b[o][o_din]0_inferred__2/i___5_carry__3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bram0b[o][o_din]0_inferred__2/i___5_carry__3_O_UNCONNECTED [3:1],\bram0b[o][o_din]0_inferred__2/i___5_carry__3_n_7 }),
        .S({1'b0,1'b0,1'b0,i___5_carry__3_i_1__1_n_0}));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \bram0b[o][o_din][0]_i_1 
       (.I0(\tmp_reg[0]_12 [0]),
        .I1(tmp_sel),
        .I2(\tmp_reg[4]_8 [0]),
        .I3(\t_state1_reg_n_0_[0] ),
        .I4(\bram0b[o][o_din][0]_i_2_n_0 ),
        .I5(\bram0b[o][o_din]0__57_carry_n_7 ),
        .O(\bram0b[o][o_din][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \bram0b[o][o_din][0]_i_2 
       (.I0(\bram0b[o][o_din]0__57_carry_n_4 ),
        .I1(\bram0b[o][o_din]0__57_carry_n_6 ),
        .I2(\bram0b[o][o_din]0__57_carry_n_7 ),
        .I3(\bram0b[o][o_din]0__57_carry_n_5 ),
        .I4(\bram0b[o][o_din]0__57_carry__0_n_7 ),
        .I5(\bram0b[o][o_din]0__57_carry__0_n_6 ),
        .O(\bram0b[o][o_din][0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bram0b[o][o_din][10]_i_1 
       (.I0(\tmp_reg[1]_13 [2]),
        .I1(tmp_sel),
        .I2(\tmp_reg[5]_9 [2]),
        .I3(\t_state1_reg_n_0_[0] ),
        .I4(\bram0b[o][o_din]00_in [2]),
        .O(\bram0b[o][o_din][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3FC03FC07F00FF00)) 
    \bram0b[o][o_din][10]_i_2 
       (.I0(\bram0b[o][o_din]0_inferred__0/i___57_carry_n_4 ),
        .I1(\bram0b[o][o_din]0_inferred__0/i___57_carry_n_6 ),
        .I2(\bram0b[o][o_din]0_inferred__0/i___57_carry_n_7 ),
        .I3(\bram0b[o][o_din]0_inferred__0/i___57_carry_n_5 ),
        .I4(\bram0b[o][o_din]0_inferred__0/i___57_carry__0_n_7 ),
        .I5(\bram0b[o][o_din]0_inferred__0/i___57_carry__0_n_6 ),
        .O(\bram0b[o][o_din]00_in [2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bram0b[o][o_din][11]_i_1 
       (.I0(\tmp_reg[1]_13 [3]),
        .I1(tmp_sel),
        .I2(\tmp_reg[5]_9 [3]),
        .I3(\t_state1_reg_n_0_[0] ),
        .I4(\bram0b[o][o_din]00_in [3]),
        .O(\bram0b[o][o_din][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAA6AAA2AAAAAAA)) 
    \bram0b[o][o_din][11]_i_2 
       (.I0(\bram0b[o][o_din]0_inferred__0/i___57_carry_n_4 ),
        .I1(\bram0b[o][o_din]0_inferred__0/i___57_carry_n_6 ),
        .I2(\bram0b[o][o_din]0_inferred__0/i___57_carry_n_7 ),
        .I3(\bram0b[o][o_din]0_inferred__0/i___57_carry_n_5 ),
        .I4(\bram0b[o][o_din]0_inferred__0/i___57_carry__0_n_7 ),
        .I5(\bram0b[o][o_din]0_inferred__0/i___57_carry__0_n_6 ),
        .O(\bram0b[o][o_din]00_in [3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bram0b[o][o_din][12]_i_1 
       (.I0(\tmp_reg[1]_13 [4]),
        .I1(tmp_sel),
        .I2(\tmp_reg[5]_9 [4]),
        .I3(\t_state1_reg_n_0_[0] ),
        .I4(\bram0b[o][o_din]00_in [4]),
        .O(\bram0b[o][o_din][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF80007FFF0000)) 
    \bram0b[o][o_din][12]_i_2 
       (.I0(\bram0b[o][o_din]0_inferred__0/i___57_carry_n_4 ),
        .I1(\bram0b[o][o_din]0_inferred__0/i___57_carry_n_6 ),
        .I2(\bram0b[o][o_din]0_inferred__0/i___57_carry_n_7 ),
        .I3(\bram0b[o][o_din]0_inferred__0/i___57_carry_n_5 ),
        .I4(\bram0b[o][o_din]0_inferred__0/i___57_carry__0_n_7 ),
        .I5(\bram0b[o][o_din]0_inferred__0/i___57_carry__0_n_6 ),
        .O(\bram0b[o][o_din]00_in [4]));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \bram0b[o][o_din][16]_i_1 
       (.I0(\tmp_reg[2]_14 [0]),
        .I1(tmp_sel),
        .I2(\tmp_reg[6]_10 [0]),
        .I3(\t_state1_reg_n_0_[0] ),
        .I4(\bram0b[o][o_din][16]_i_2_n_0 ),
        .I5(\bram0b[o][o_din]0_inferred__1/i___57_carry_n_7 ),
        .O(\bram0b[o][o_din][16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \bram0b[o][o_din][16]_i_2 
       (.I0(\bram0b[o][o_din]0_inferred__1/i___57_carry_n_4 ),
        .I1(\bram0b[o][o_din]0_inferred__1/i___57_carry_n_6 ),
        .I2(\bram0b[o][o_din]0_inferred__1/i___57_carry_n_7 ),
        .I3(\bram0b[o][o_din]0_inferred__1/i___57_carry_n_5 ),
        .I4(\bram0b[o][o_din]0_inferred__1/i___57_carry__0_n_7 ),
        .I5(\bram0b[o][o_din]0_inferred__1/i___57_carry__0_n_6 ),
        .O(\bram0b[o][o_din][16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bram0b[o][o_din][17]_i_1 
       (.I0(\tmp_reg[2]_14 [1]),
        .I1(tmp_sel),
        .I2(\tmp_reg[6]_10 [1]),
        .I3(\t_state1_reg_n_0_[0] ),
        .I4(\bram0b[o][o_din]01_in [1]),
        .O(\bram0b[o][o_din][17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C3C3C4CCCCCCC)) 
    \bram0b[o][o_din][17]_i_2 
       (.I0(\bram0b[o][o_din]0_inferred__1/i___57_carry_n_4 ),
        .I1(\bram0b[o][o_din]0_inferred__1/i___57_carry_n_6 ),
        .I2(\bram0b[o][o_din]0_inferred__1/i___57_carry_n_7 ),
        .I3(\bram0b[o][o_din]0_inferred__1/i___57_carry_n_5 ),
        .I4(\bram0b[o][o_din]0_inferred__1/i___57_carry__0_n_7 ),
        .I5(\bram0b[o][o_din]0_inferred__1/i___57_carry__0_n_6 ),
        .O(\bram0b[o][o_din]01_in [1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bram0b[o][o_din][18]_i_1 
       (.I0(\tmp_reg[2]_14 [2]),
        .I1(tmp_sel),
        .I2(\tmp_reg[6]_10 [2]),
        .I3(\t_state1_reg_n_0_[0] ),
        .I4(\bram0b[o][o_din]01_in [2]),
        .O(\bram0b[o][o_din][18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3FC03FC07F00FF00)) 
    \bram0b[o][o_din][18]_i_2 
       (.I0(\bram0b[o][o_din]0_inferred__1/i___57_carry_n_4 ),
        .I1(\bram0b[o][o_din]0_inferred__1/i___57_carry_n_6 ),
        .I2(\bram0b[o][o_din]0_inferred__1/i___57_carry_n_7 ),
        .I3(\bram0b[o][o_din]0_inferred__1/i___57_carry_n_5 ),
        .I4(\bram0b[o][o_din]0_inferred__1/i___57_carry__0_n_7 ),
        .I5(\bram0b[o][o_din]0_inferred__1/i___57_carry__0_n_6 ),
        .O(\bram0b[o][o_din]01_in [2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bram0b[o][o_din][19]_i_1 
       (.I0(\tmp_reg[2]_14 [3]),
        .I1(tmp_sel),
        .I2(\tmp_reg[6]_10 [3]),
        .I3(\t_state1_reg_n_0_[0] ),
        .I4(\bram0b[o][o_din]01_in [3]),
        .O(\bram0b[o][o_din][19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAA6AAA2AAAAAAA)) 
    \bram0b[o][o_din][19]_i_2 
       (.I0(\bram0b[o][o_din]0_inferred__1/i___57_carry_n_4 ),
        .I1(\bram0b[o][o_din]0_inferred__1/i___57_carry_n_6 ),
        .I2(\bram0b[o][o_din]0_inferred__1/i___57_carry_n_7 ),
        .I3(\bram0b[o][o_din]0_inferred__1/i___57_carry_n_5 ),
        .I4(\bram0b[o][o_din]0_inferred__1/i___57_carry__0_n_7 ),
        .I5(\bram0b[o][o_din]0_inferred__1/i___57_carry__0_n_6 ),
        .O(\bram0b[o][o_din]01_in [3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bram0b[o][o_din][1]_i_1 
       (.I0(\tmp_reg[0]_12 [1]),
        .I1(tmp_sel),
        .I2(\tmp_reg[4]_8 [1]),
        .I3(\t_state1_reg_n_0_[0] ),
        .I4(\bram0b[o][o_din]0__77 [1]),
        .O(\bram0b[o][o_din][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C3C3C4CCCCCCC)) 
    \bram0b[o][o_din][1]_i_2 
       (.I0(\bram0b[o][o_din]0__57_carry_n_4 ),
        .I1(\bram0b[o][o_din]0__57_carry_n_6 ),
        .I2(\bram0b[o][o_din]0__57_carry_n_7 ),
        .I3(\bram0b[o][o_din]0__57_carry_n_5 ),
        .I4(\bram0b[o][o_din]0__57_carry__0_n_7 ),
        .I5(\bram0b[o][o_din]0__57_carry__0_n_6 ),
        .O(\bram0b[o][o_din]0__77 [1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bram0b[o][o_din][20]_i_1 
       (.I0(\tmp_reg[2]_14 [4]),
        .I1(tmp_sel),
        .I2(\tmp_reg[6]_10 [4]),
        .I3(\t_state1_reg_n_0_[0] ),
        .I4(\bram0b[o][o_din]01_in [4]),
        .O(\bram0b[o][o_din][20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF80007FFF0000)) 
    \bram0b[o][o_din][20]_i_2 
       (.I0(\bram0b[o][o_din]0_inferred__1/i___57_carry_n_4 ),
        .I1(\bram0b[o][o_din]0_inferred__1/i___57_carry_n_6 ),
        .I2(\bram0b[o][o_din]0_inferred__1/i___57_carry_n_7 ),
        .I3(\bram0b[o][o_din]0_inferred__1/i___57_carry_n_5 ),
        .I4(\bram0b[o][o_din]0_inferred__1/i___57_carry__0_n_7 ),
        .I5(\bram0b[o][o_din]0_inferred__1/i___57_carry__0_n_6 ),
        .O(\bram0b[o][o_din]01_in [4]));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \bram0b[o][o_din][24]_i_1 
       (.I0(\tmp_reg[3]_15 [0]),
        .I1(tmp_sel),
        .I2(\tmp_reg[7]_11 [0]),
        .I3(\t_state1_reg_n_0_[0] ),
        .I4(\bram0b[o][o_din][24]_i_2_n_0 ),
        .I5(\bram0b[o][o_din]0_inferred__2/i___57_carry_n_7 ),
        .O(\bram0b[o][o_din][24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \bram0b[o][o_din][24]_i_2 
       (.I0(\bram0b[o][o_din]0_inferred__2/i___57_carry_n_4 ),
        .I1(\bram0b[o][o_din]0_inferred__2/i___57_carry_n_6 ),
        .I2(\bram0b[o][o_din]0_inferred__2/i___57_carry_n_7 ),
        .I3(\bram0b[o][o_din]0_inferred__2/i___57_carry_n_5 ),
        .I4(\bram0b[o][o_din]0_inferred__2/i___57_carry__0_n_7 ),
        .I5(\bram0b[o][o_din]0_inferred__2/i___57_carry__0_n_6 ),
        .O(\bram0b[o][o_din][24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bram0b[o][o_din][25]_i_1 
       (.I0(\tmp_reg[3]_15 [1]),
        .I1(tmp_sel),
        .I2(\tmp_reg[7]_11 [1]),
        .I3(\t_state1_reg_n_0_[0] ),
        .I4(\bram0b[o][o_din]02_in [1]),
        .O(\bram0b[o][o_din][25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C3C3C4CCCCCCC)) 
    \bram0b[o][o_din][25]_i_2 
       (.I0(\bram0b[o][o_din]0_inferred__2/i___57_carry_n_4 ),
        .I1(\bram0b[o][o_din]0_inferred__2/i___57_carry_n_6 ),
        .I2(\bram0b[o][o_din]0_inferred__2/i___57_carry_n_7 ),
        .I3(\bram0b[o][o_din]0_inferred__2/i___57_carry_n_5 ),
        .I4(\bram0b[o][o_din]0_inferred__2/i___57_carry__0_n_7 ),
        .I5(\bram0b[o][o_din]0_inferred__2/i___57_carry__0_n_6 ),
        .O(\bram0b[o][o_din]02_in [1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bram0b[o][o_din][26]_i_1 
       (.I0(\tmp_reg[3]_15 [2]),
        .I1(tmp_sel),
        .I2(\tmp_reg[7]_11 [2]),
        .I3(\t_state1_reg_n_0_[0] ),
        .I4(\bram0b[o][o_din]02_in [2]),
        .O(\bram0b[o][o_din][26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3FC03FC07F00FF00)) 
    \bram0b[o][o_din][26]_i_2 
       (.I0(\bram0b[o][o_din]0_inferred__2/i___57_carry_n_4 ),
        .I1(\bram0b[o][o_din]0_inferred__2/i___57_carry_n_6 ),
        .I2(\bram0b[o][o_din]0_inferred__2/i___57_carry_n_7 ),
        .I3(\bram0b[o][o_din]0_inferred__2/i___57_carry_n_5 ),
        .I4(\bram0b[o][o_din]0_inferred__2/i___57_carry__0_n_7 ),
        .I5(\bram0b[o][o_din]0_inferred__2/i___57_carry__0_n_6 ),
        .O(\bram0b[o][o_din]02_in [2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bram0b[o][o_din][27]_i_1 
       (.I0(\tmp_reg[3]_15 [3]),
        .I1(tmp_sel),
        .I2(\tmp_reg[7]_11 [3]),
        .I3(\t_state1_reg_n_0_[0] ),
        .I4(\bram0b[o][o_din]02_in [3]),
        .O(\bram0b[o][o_din][27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAA6AAA2AAAAAAA)) 
    \bram0b[o][o_din][27]_i_2 
       (.I0(\bram0b[o][o_din]0_inferred__2/i___57_carry_n_4 ),
        .I1(\bram0b[o][o_din]0_inferred__2/i___57_carry_n_6 ),
        .I2(\bram0b[o][o_din]0_inferred__2/i___57_carry_n_7 ),
        .I3(\bram0b[o][o_din]0_inferred__2/i___57_carry_n_5 ),
        .I4(\bram0b[o][o_din]0_inferred__2/i___57_carry__0_n_7 ),
        .I5(\bram0b[o][o_din]0_inferred__2/i___57_carry__0_n_6 ),
        .O(\bram0b[o][o_din]02_in [3]));
  LUT4 #(
    .INIT(16'h0014)) 
    \bram0b[o][o_din][28]_i_1 
       (.I0(\t_state1_reg_n_0_[1] ),
        .I1(\t_state1_reg_n_0_[0] ),
        .I2(\t_state1_reg_n_0_[2] ),
        .I3(rst),
        .O(\bram0b[o][o_din][28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bram0b[o][o_din][28]_i_2 
       (.I0(\tmp_reg[3]_15 [4]),
        .I1(tmp_sel),
        .I2(\tmp_reg[7]_11 [4]),
        .I3(\t_state1_reg_n_0_[0] ),
        .I4(\bram0b[o][o_din]02_in [4]),
        .O(\bram0b[o][o_din][28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF80007FFF0000)) 
    \bram0b[o][o_din][28]_i_3 
       (.I0(\bram0b[o][o_din]0_inferred__2/i___57_carry_n_4 ),
        .I1(\bram0b[o][o_din]0_inferred__2/i___57_carry_n_6 ),
        .I2(\bram0b[o][o_din]0_inferred__2/i___57_carry_n_7 ),
        .I3(\bram0b[o][o_din]0_inferred__2/i___57_carry_n_5 ),
        .I4(\bram0b[o][o_din]0_inferred__2/i___57_carry__0_n_7 ),
        .I5(\bram0b[o][o_din]0_inferred__2/i___57_carry__0_n_6 ),
        .O(\bram0b[o][o_din]02_in [4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bram0b[o][o_din][2]_i_1 
       (.I0(\tmp_reg[0]_12 [2]),
        .I1(tmp_sel),
        .I2(\tmp_reg[4]_8 [2]),
        .I3(\t_state1_reg_n_0_[0] ),
        .I4(\bram0b[o][o_din]0__77 [2]),
        .O(\bram0b[o][o_din][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3FC03FC07F00FF00)) 
    \bram0b[o][o_din][2]_i_2 
       (.I0(\bram0b[o][o_din]0__57_carry_n_4 ),
        .I1(\bram0b[o][o_din]0__57_carry_n_6 ),
        .I2(\bram0b[o][o_din]0__57_carry_n_7 ),
        .I3(\bram0b[o][o_din]0__57_carry_n_5 ),
        .I4(\bram0b[o][o_din]0__57_carry__0_n_7 ),
        .I5(\bram0b[o][o_din]0__57_carry__0_n_6 ),
        .O(\bram0b[o][o_din]0__77 [2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bram0b[o][o_din][3]_i_1 
       (.I0(\tmp_reg[0]_12 [3]),
        .I1(tmp_sel),
        .I2(\tmp_reg[4]_8 [3]),
        .I3(\t_state1_reg_n_0_[0] ),
        .I4(\bram0b[o][o_din]0__77 [3]),
        .O(\bram0b[o][o_din][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAA6AAA2AAAAAAA)) 
    \bram0b[o][o_din][3]_i_2 
       (.I0(\bram0b[o][o_din]0__57_carry_n_4 ),
        .I1(\bram0b[o][o_din]0__57_carry_n_6 ),
        .I2(\bram0b[o][o_din]0__57_carry_n_7 ),
        .I3(\bram0b[o][o_din]0__57_carry_n_5 ),
        .I4(\bram0b[o][o_din]0__57_carry__0_n_7 ),
        .I5(\bram0b[o][o_din]0__57_carry__0_n_6 ),
        .O(\bram0b[o][o_din]0__77 [3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bram0b[o][o_din][4]_i_1 
       (.I0(\tmp_reg[0]_12 [4]),
        .I1(tmp_sel),
        .I2(\tmp_reg[4]_8 [4]),
        .I3(\t_state1_reg_n_0_[0] ),
        .I4(\bram0b[o][o_din]0__77 [4]),
        .O(\bram0b[o][o_din][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF80007FFF0000)) 
    \bram0b[o][o_din][4]_i_2 
       (.I0(\bram0b[o][o_din]0__57_carry_n_4 ),
        .I1(\bram0b[o][o_din]0__57_carry_n_6 ),
        .I2(\bram0b[o][o_din]0__57_carry_n_7 ),
        .I3(\bram0b[o][o_din]0__57_carry_n_5 ),
        .I4(\bram0b[o][o_din]0__57_carry__0_n_7 ),
        .I5(\bram0b[o][o_din]0__57_carry__0_n_6 ),
        .O(\bram0b[o][o_din]0__77 [4]));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \bram0b[o][o_din][8]_i_1 
       (.I0(\tmp_reg[1]_13 [0]),
        .I1(tmp_sel),
        .I2(\tmp_reg[5]_9 [0]),
        .I3(\t_state1_reg_n_0_[0] ),
        .I4(\bram0b[o][o_din][8]_i_2_n_0 ),
        .I5(\bram0b[o][o_din]0_inferred__0/i___57_carry_n_7 ),
        .O(\bram0b[o][o_din][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \bram0b[o][o_din][8]_i_2 
       (.I0(\bram0b[o][o_din]0_inferred__0/i___57_carry_n_4 ),
        .I1(\bram0b[o][o_din]0_inferred__0/i___57_carry_n_6 ),
        .I2(\bram0b[o][o_din]0_inferred__0/i___57_carry_n_7 ),
        .I3(\bram0b[o][o_din]0_inferred__0/i___57_carry_n_5 ),
        .I4(\bram0b[o][o_din]0_inferred__0/i___57_carry__0_n_7 ),
        .I5(\bram0b[o][o_din]0_inferred__0/i___57_carry__0_n_6 ),
        .O(\bram0b[o][o_din][8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bram0b[o][o_din][9]_i_1 
       (.I0(\tmp_reg[1]_13 [1]),
        .I1(tmp_sel),
        .I2(\tmp_reg[5]_9 [1]),
        .I3(\t_state1_reg_n_0_[0] ),
        .I4(\bram0b[o][o_din]00_in [1]),
        .O(\bram0b[o][o_din][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C3C3C4CCCCCCC)) 
    \bram0b[o][o_din][9]_i_2 
       (.I0(\bram0b[o][o_din]0_inferred__0/i___57_carry_n_4 ),
        .I1(\bram0b[o][o_din]0_inferred__0/i___57_carry_n_6 ),
        .I2(\bram0b[o][o_din]0_inferred__0/i___57_carry_n_7 ),
        .I3(\bram0b[o][o_din]0_inferred__0/i___57_carry_n_5 ),
        .I4(\bram0b[o][o_din]0_inferred__0/i___57_carry__0_n_7 ),
        .I5(\bram0b[o][o_din]0_inferred__0/i___57_carry__0_n_6 ),
        .O(\bram0b[o][o_din]00_in [1]));
  LUT5 #(
    .INIT(32'hFFF60006)) 
    \bram0b[o][o_en]_i_1 
       (.I0(\t_state1_reg_n_0_[0] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(rst),
        .I3(\t_state1_reg_n_0_[1] ),
        .I4(o_mem0b_en),
        .O(\bram0b[o][o_en]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF60006)) 
    \bram0b[o][o_we][3]_i_1 
       (.I0(\t_state1_reg_n_0_[0] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(rst),
        .I3(\t_state1_reg_n_0_[1] ),
        .I4(o_mem0b_we),
        .O(\bram0b[o][o_we][3]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][0] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b[o][o_addr][0]_i_1_n_0 ),
        .Q(o_mem0b_addr[0]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][10] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][12]_i_1_n_6 ),
        .Q(o_mem0b_addr[10]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][11] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][12]_i_1_n_5 ),
        .Q(o_mem0b_addr[11]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][12] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][12]_i_1_n_4 ),
        .Q(o_mem0b_addr[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \bram0b_reg[o][o_addr][12]_i_1 
       (.CI(\bram0b_reg[o][o_addr][8]_i_1_n_0 ),
        .CO({\bram0b_reg[o][o_addr][12]_i_1_n_0 ,\bram0b_reg[o][o_addr][12]_i_1_n_1 ,\bram0b_reg[o][o_addr][12]_i_1_n_2 ,\bram0b_reg[o][o_addr][12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bram0b_reg[o][o_addr][12]_i_1_n_4 ,\bram0b_reg[o][o_addr][12]_i_1_n_5 ,\bram0b_reg[o][o_addr][12]_i_1_n_6 ,\bram0b_reg[o][o_addr][12]_i_1_n_7 }),
        .S({\bram0b[o][o_addr][12]_i_2_n_0 ,\bram0b[o][o_addr][12]_i_3_n_0 ,\bram0b[o][o_addr][12]_i_4_n_0 ,\bram0b[o][o_addr][12]_i_5_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][13] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][16]_i_1_n_7 ),
        .Q(o_mem0b_addr[13]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][14] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][16]_i_1_n_6 ),
        .Q(o_mem0b_addr[14]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][15] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][16]_i_1_n_5 ),
        .Q(o_mem0b_addr[15]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][16] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][16]_i_1_n_4 ),
        .Q(o_mem0b_addr[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \bram0b_reg[o][o_addr][16]_i_1 
       (.CI(\bram0b_reg[o][o_addr][12]_i_1_n_0 ),
        .CO({\bram0b_reg[o][o_addr][16]_i_1_n_0 ,\bram0b_reg[o][o_addr][16]_i_1_n_1 ,\bram0b_reg[o][o_addr][16]_i_1_n_2 ,\bram0b_reg[o][o_addr][16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bram0b_reg[o][o_addr][16]_i_1_n_4 ,\bram0b_reg[o][o_addr][16]_i_1_n_5 ,\bram0b_reg[o][o_addr][16]_i_1_n_6 ,\bram0b_reg[o][o_addr][16]_i_1_n_7 }),
        .S({\bram0b[o][o_addr][16]_i_2_n_0 ,\bram0b[o][o_addr][16]_i_3_n_0 ,\bram0b[o][o_addr][16]_i_4_n_0 ,\bram0b[o][o_addr][16]_i_5_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][17] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][20]_i_1_n_7 ),
        .Q(o_mem0b_addr[17]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][18] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][20]_i_1_n_6 ),
        .Q(o_mem0b_addr[18]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][19] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][20]_i_1_n_5 ),
        .Q(o_mem0b_addr[19]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][1] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][4]_i_1_n_7 ),
        .Q(o_mem0b_addr[1]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][20] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][20]_i_1_n_4 ),
        .Q(o_mem0b_addr[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \bram0b_reg[o][o_addr][20]_i_1 
       (.CI(\bram0b_reg[o][o_addr][16]_i_1_n_0 ),
        .CO({\bram0b_reg[o][o_addr][20]_i_1_n_0 ,\bram0b_reg[o][o_addr][20]_i_1_n_1 ,\bram0b_reg[o][o_addr][20]_i_1_n_2 ,\bram0b_reg[o][o_addr][20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bram0b_reg[o][o_addr][20]_i_1_n_4 ,\bram0b_reg[o][o_addr][20]_i_1_n_5 ,\bram0b_reg[o][o_addr][20]_i_1_n_6 ,\bram0b_reg[o][o_addr][20]_i_1_n_7 }),
        .S({\bram0b[o][o_addr][20]_i_2_n_0 ,\bram0b[o][o_addr][20]_i_3_n_0 ,\bram0b[o][o_addr][20]_i_4_n_0 ,\bram0b[o][o_addr][20]_i_5_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][21] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][24]_i_1_n_7 ),
        .Q(o_mem0b_addr[21]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][22] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][24]_i_1_n_6 ),
        .Q(o_mem0b_addr[22]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][23] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][24]_i_1_n_5 ),
        .Q(o_mem0b_addr[23]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][24] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][24]_i_1_n_4 ),
        .Q(o_mem0b_addr[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \bram0b_reg[o][o_addr][24]_i_1 
       (.CI(\bram0b_reg[o][o_addr][20]_i_1_n_0 ),
        .CO({\bram0b_reg[o][o_addr][24]_i_1_n_0 ,\bram0b_reg[o][o_addr][24]_i_1_n_1 ,\bram0b_reg[o][o_addr][24]_i_1_n_2 ,\bram0b_reg[o][o_addr][24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bram0b_reg[o][o_addr][24]_i_1_n_4 ,\bram0b_reg[o][o_addr][24]_i_1_n_5 ,\bram0b_reg[o][o_addr][24]_i_1_n_6 ,\bram0b_reg[o][o_addr][24]_i_1_n_7 }),
        .S({\bram0b[o][o_addr][24]_i_2_n_0 ,\bram0b[o][o_addr][24]_i_3_n_0 ,\bram0b[o][o_addr][24]_i_4_n_0 ,\bram0b[o][o_addr][24]_i_5_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][25] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][28]_i_1_n_7 ),
        .Q(o_mem0b_addr[25]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][26] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][28]_i_1_n_6 ),
        .Q(o_mem0b_addr[26]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][27] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][28]_i_1_n_5 ),
        .Q(o_mem0b_addr[27]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][28] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][28]_i_1_n_4 ),
        .Q(o_mem0b_addr[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \bram0b_reg[o][o_addr][28]_i_1 
       (.CI(\bram0b_reg[o][o_addr][24]_i_1_n_0 ),
        .CO({\bram0b_reg[o][o_addr][28]_i_1_n_0 ,\bram0b_reg[o][o_addr][28]_i_1_n_1 ,\bram0b_reg[o][o_addr][28]_i_1_n_2 ,\bram0b_reg[o][o_addr][28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bram0b_reg[o][o_addr][28]_i_1_n_4 ,\bram0b_reg[o][o_addr][28]_i_1_n_5 ,\bram0b_reg[o][o_addr][28]_i_1_n_6 ,\bram0b_reg[o][o_addr][28]_i_1_n_7 }),
        .S({\bram0b[o][o_addr][28]_i_2_n_0 ,\bram0b[o][o_addr][28]_i_3_n_0 ,\bram0b[o][o_addr][28]_i_4_n_0 ,\bram0b[o][o_addr][28]_i_5_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][29] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][31]_i_1_n_7 ),
        .Q(o_mem0b_addr[29]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][2] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][4]_i_1_n_6 ),
        .Q(o_mem0b_addr[2]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][30] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][31]_i_1_n_6 ),
        .Q(o_mem0b_addr[30]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][31] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][31]_i_1_n_5 ),
        .Q(o_mem0b_addr[31]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \bram0b_reg[o][o_addr][31]_i_1 
       (.CI(\bram0b_reg[o][o_addr][28]_i_1_n_0 ),
        .CO({\NLW_bram0b_reg[o][o_addr][31]_i_1_CO_UNCONNECTED [3:2],\bram0b_reg[o][o_addr][31]_i_1_n_2 ,\bram0b_reg[o][o_addr][31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bram0b_reg[o][o_addr][31]_i_1_O_UNCONNECTED [3],\bram0b_reg[o][o_addr][31]_i_1_n_5 ,\bram0b_reg[o][o_addr][31]_i_1_n_6 ,\bram0b_reg[o][o_addr][31]_i_1_n_7 }),
        .S({1'b0,\bram0b[o][o_addr][31]_i_2_n_0 ,\bram0b[o][o_addr][31]_i_3_n_0 ,\bram0b[o][o_addr][31]_i_4_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][3] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][4]_i_1_n_5 ),
        .Q(o_mem0b_addr[3]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][4] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][4]_i_1_n_4 ),
        .Q(o_mem0b_addr[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \bram0b_reg[o][o_addr][4]_i_1 
       (.CI(1'b0),
        .CO({\bram0b_reg[o][o_addr][4]_i_1_n_0 ,\bram0b_reg[o][o_addr][4]_i_1_n_1 ,\bram0b_reg[o][o_addr][4]_i_1_n_2 ,\bram0b_reg[o][o_addr][4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,first,1'b0}),
        .O({\bram0b_reg[o][o_addr][4]_i_1_n_4 ,\bram0b_reg[o][o_addr][4]_i_1_n_5 ,\bram0b_reg[o][o_addr][4]_i_1_n_6 ,\bram0b_reg[o][o_addr][4]_i_1_n_7 }),
        .S({\bram0b[o][o_addr][4]_i_2_n_0 ,\bram0b[o][o_addr][4]_i_3_n_0 ,\bram0b[o][o_addr][4]_i_4_n_0 ,\bram0b[o][o_addr][4]_i_5_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][5] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][8]_i_1_n_7 ),
        .Q(o_mem0b_addr[5]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][6] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][8]_i_1_n_6 ),
        .Q(o_mem0b_addr[6]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][7] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][8]_i_1_n_5 ),
        .Q(o_mem0b_addr[7]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][8] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][8]_i_1_n_4 ),
        .Q(o_mem0b_addr[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \bram0b_reg[o][o_addr][8]_i_1 
       (.CI(\bram0b_reg[o][o_addr][4]_i_1_n_0 ),
        .CO({\bram0b_reg[o][o_addr][8]_i_1_n_0 ,\bram0b_reg[o][o_addr][8]_i_1_n_1 ,\bram0b_reg[o][o_addr][8]_i_1_n_2 ,\bram0b_reg[o][o_addr][8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bram0b_reg[o][o_addr][8]_i_1_n_4 ,\bram0b_reg[o][o_addr][8]_i_1_n_5 ,\bram0b_reg[o][o_addr][8]_i_1_n_6 ,\bram0b_reg[o][o_addr][8]_i_1_n_7 }),
        .S({\bram0b[o][o_addr][8]_i_2_n_0 ,\bram0b[o][o_addr][8]_i_3_n_0 ,\bram0b[o][o_addr][8]_i_4_n_0 ,\bram0b[o][o_addr][8]_i_5_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][9] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][12]_i_1_n_7 ),
        .Q(o_mem0b_addr[9]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][0] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b[o][o_din][0]_i_1_n_0 ),
        .Q(o_mem0b_din[0]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][10] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b[o][o_din][10]_i_1_n_0 ),
        .Q(o_mem0b_din[7]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][11] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b[o][o_din][11]_i_1_n_0 ),
        .Q(o_mem0b_din[8]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][12] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b[o][o_din][12]_i_1_n_0 ),
        .Q(o_mem0b_din[9]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][16] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b[o][o_din][16]_i_1_n_0 ),
        .Q(o_mem0b_din[10]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][17] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b[o][o_din][17]_i_1_n_0 ),
        .Q(o_mem0b_din[11]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][18] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b[o][o_din][18]_i_1_n_0 ),
        .Q(o_mem0b_din[12]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][19] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b[o][o_din][19]_i_1_n_0 ),
        .Q(o_mem0b_din[13]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][1] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b[o][o_din][1]_i_1_n_0 ),
        .Q(o_mem0b_din[1]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][20] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b[o][o_din][20]_i_1_n_0 ),
        .Q(o_mem0b_din[14]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][24] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b[o][o_din][24]_i_1_n_0 ),
        .Q(o_mem0b_din[15]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][25] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b[o][o_din][25]_i_1_n_0 ),
        .Q(o_mem0b_din[16]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][26] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b[o][o_din][26]_i_1_n_0 ),
        .Q(o_mem0b_din[17]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][27] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b[o][o_din][27]_i_1_n_0 ),
        .Q(o_mem0b_din[18]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][28] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b[o][o_din][28]_i_2_n_0 ),
        .Q(o_mem0b_din[19]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][2] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b[o][o_din][2]_i_1_n_0 ),
        .Q(o_mem0b_din[2]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][3] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b[o][o_din][3]_i_1_n_0 ),
        .Q(o_mem0b_din[3]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][4] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b[o][o_din][4]_i_1_n_0 ),
        .Q(o_mem0b_din[4]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][8] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b[o][o_din][8]_i_1_n_0 ),
        .Q(o_mem0b_din[5]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][9] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][28]_i_1_n_0 ),
        .D(\bram0b[o][o_din][9]_i_1_n_0 ),
        .Q(o_mem0b_din[6]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b EN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_en] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\bram0b[o][o_en]_i_1_n_0 ),
        .Q(o_mem0b_en),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b WE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_we][3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\bram0b[o][o_we][3]_i_1_n_0 ),
        .Q(o_mem0b_we),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \bram1a[o][o_addr][0]_i_1 
       (.I0(plusOp1_in[0]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I2(o_mem1a_addr[0]),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(\bram1a[o][o_addr][0]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram1a[o][o_addr][0]_i_2 
       (.I0(o_mem1a_addr[0]),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(s_vecs_addr[0]),
        .I3(\t_state_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \bram1a[o][o_addr][10]_i_1 
       (.I0(plusOp1_in[10]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I2(\plusOp_inferred__0/i__carry__1_n_6 ),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(\bram1a[o][o_addr][10]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram1a[o][o_addr][10]_i_2 
       (.I0(plusOp2_in[10]),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(s_vecs_addr[10]),
        .I3(\t_state_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \bram1a[o][o_addr][11]_i_1 
       (.I0(plusOp1_in[11]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I2(\plusOp_inferred__0/i__carry__1_n_5 ),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(\bram1a[o][o_addr][11]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram1a[o][o_addr][11]_i_2 
       (.I0(plusOp2_in[11]),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(s_vecs_addr[11]),
        .I3(\t_state_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \bram1a[o][o_addr][12]_i_1 
       (.I0(plusOp1_in[12]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I2(\plusOp_inferred__0/i__carry__1_n_4 ),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(\bram1a[o][o_addr][12]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram1a[o][o_addr][12]_i_2 
       (.I0(plusOp2_in[12]),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(s_vecs_addr[12]),
        .I3(\t_state_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \bram1a[o][o_addr][13]_i_1 
       (.I0(plusOp1_in[13]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I2(\plusOp_inferred__0/i__carry__2_n_7 ),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(\bram1a[o][o_addr][13]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram1a[o][o_addr][13]_i_2 
       (.I0(plusOp2_in[13]),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(s_vecs_addr[13]),
        .I3(\t_state_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \bram1a[o][o_addr][14]_i_1 
       (.I0(plusOp1_in[14]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I2(\plusOp_inferred__0/i__carry__2_n_6 ),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(\bram1a[o][o_addr][14]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram1a[o][o_addr][14]_i_2 
       (.I0(plusOp2_in[14]),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(s_vecs_addr[14]),
        .I3(\t_state_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \bram1a[o][o_addr][15]_i_1 
       (.I0(plusOp1_in[15]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I2(\plusOp_inferred__0/i__carry__2_n_5 ),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(\bram1a[o][o_addr][15]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram1a[o][o_addr][15]_i_2 
       (.I0(plusOp2_in[15]),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(s_vecs_addr[15]),
        .I3(\t_state_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \bram1a[o][o_addr][16]_i_1 
       (.I0(plusOp1_in[16]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I2(\plusOp_inferred__0/i__carry__2_n_4 ),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(\bram1a[o][o_addr][16]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram1a[o][o_addr][16]_i_2 
       (.I0(plusOp2_in[16]),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(s_vecs_addr[16]),
        .I3(\t_state_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \bram1a[o][o_addr][17]_i_1 
       (.I0(plusOp1_in[17]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I2(\plusOp_inferred__0/i__carry__3_n_7 ),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(\bram1a[o][o_addr][17]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram1a[o][o_addr][17]_i_2 
       (.I0(plusOp2_in[17]),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(s_vecs_addr[17]),
        .I3(\t_state_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \bram1a[o][o_addr][18]_i_1 
       (.I0(plusOp1_in[18]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I2(\plusOp_inferred__0/i__carry__3_n_6 ),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(\bram1a[o][o_addr][18]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram1a[o][o_addr][18]_i_2 
       (.I0(plusOp2_in[18]),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(s_vecs_addr[18]),
        .I3(\t_state_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \bram1a[o][o_addr][19]_i_1 
       (.I0(plusOp1_in[19]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I2(\plusOp_inferred__0/i__carry__3_n_5 ),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(\bram1a[o][o_addr][19]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram1a[o][o_addr][19]_i_2 
       (.I0(plusOp2_in[19]),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(s_vecs_addr[19]),
        .I3(\t_state_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \bram1a[o][o_addr][1]_i_1 
       (.I0(plusOp1_in[1]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I2(o_mem1a_addr[1]),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(\bram1a[o][o_addr][1]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram1a[o][o_addr][1]_i_2 
       (.I0(plusOp2_in[1]),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(s_vecs_addr[1]),
        .I3(\t_state_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \bram1a[o][o_addr][20]_i_1 
       (.I0(plusOp1_in[20]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I2(\plusOp_inferred__0/i__carry__3_n_4 ),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(\bram1a[o][o_addr][20]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram1a[o][o_addr][20]_i_2 
       (.I0(plusOp2_in[20]),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(s_vecs_addr[20]),
        .I3(\t_state_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \bram1a[o][o_addr][21]_i_1 
       (.I0(plusOp1_in[21]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I2(\plusOp_inferred__0/i__carry__4_n_7 ),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(\bram1a[o][o_addr][21]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram1a[o][o_addr][21]_i_2 
       (.I0(plusOp2_in[21]),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(s_vecs_addr[21]),
        .I3(\t_state_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \bram1a[o][o_addr][22]_i_1 
       (.I0(plusOp1_in[22]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I2(\plusOp_inferred__0/i__carry__4_n_6 ),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(\bram1a[o][o_addr][22]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram1a[o][o_addr][22]_i_2 
       (.I0(plusOp2_in[22]),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(s_vecs_addr[22]),
        .I3(\t_state_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \bram1a[o][o_addr][23]_i_1 
       (.I0(plusOp1_in[23]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I2(\plusOp_inferred__0/i__carry__4_n_5 ),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(\bram1a[o][o_addr][23]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram1a[o][o_addr][23]_i_2 
       (.I0(plusOp2_in[23]),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(s_vecs_addr[23]),
        .I3(\t_state_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \bram1a[o][o_addr][24]_i_1 
       (.I0(plusOp1_in[24]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I2(\plusOp_inferred__0/i__carry__4_n_4 ),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(\bram1a[o][o_addr][24]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram1a[o][o_addr][24]_i_2 
       (.I0(plusOp2_in[24]),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(s_vecs_addr[24]),
        .I3(\t_state_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \bram1a[o][o_addr][25]_i_1 
       (.I0(plusOp1_in[25]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I2(\plusOp_inferred__0/i__carry__5_n_7 ),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(\bram1a[o][o_addr][25]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram1a[o][o_addr][25]_i_2 
       (.I0(plusOp2_in[25]),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(s_vecs_addr[25]),
        .I3(\t_state_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \bram1a[o][o_addr][26]_i_1 
       (.I0(plusOp1_in[26]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I2(\plusOp_inferred__0/i__carry__5_n_6 ),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(\bram1a[o][o_addr][26]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram1a[o][o_addr][26]_i_2 
       (.I0(plusOp2_in[26]),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(s_vecs_addr[26]),
        .I3(\t_state_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \bram1a[o][o_addr][27]_i_1 
       (.I0(plusOp1_in[27]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I2(\plusOp_inferred__0/i__carry__5_n_5 ),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(\bram1a[o][o_addr][27]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram1a[o][o_addr][27]_i_2 
       (.I0(plusOp2_in[27]),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(s_vecs_addr[27]),
        .I3(\t_state_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \bram1a[o][o_addr][28]_i_1 
       (.I0(plusOp1_in[28]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I2(\plusOp_inferred__0/i__carry__5_n_4 ),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(\bram1a[o][o_addr][28]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram1a[o][o_addr][28]_i_2 
       (.I0(plusOp2_in[28]),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(s_vecs_addr[28]),
        .I3(\t_state_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \bram1a[o][o_addr][29]_i_1 
       (.I0(plusOp1_in[29]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I2(\plusOp_inferred__0/i__carry__6_n_7 ),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(\bram1a[o][o_addr][29]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram1a[o][o_addr][29]_i_2 
       (.I0(plusOp2_in[29]),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(s_vecs_addr[29]),
        .I3(\t_state_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \bram1a[o][o_addr][2]_i_1 
       (.I0(plusOp1_in[2]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I2(\plusOp_inferred__0/i__carry_n_6 ),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(\bram1a[o][o_addr][2]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram1a[o][o_addr][2]_i_2 
       (.I0(plusOp2_in[2]),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(s_vecs_addr[2]),
        .I3(\t_state_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \bram1a[o][o_addr][30]_i_1 
       (.I0(plusOp1_in[30]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I2(\plusOp_inferred__0/i__carry__6_n_6 ),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(\bram1a[o][o_addr][30]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram1a[o][o_addr][30]_i_2 
       (.I0(plusOp2_in[30]),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(s_vecs_addr[30]),
        .I3(\t_state_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][30]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0016)) 
    \bram1a[o][o_addr][31]_i_1 
       (.I0(\t_state_reg_n_0_[2] ),
        .I1(\t_state_reg_n_0_[1] ),
        .I2(\t_state_reg_n_0_[0] ),
        .I3(rst),
        .O(\bram1a[o][o_addr][31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \bram1a[o][o_addr][31]_i_2 
       (.I0(plusOp1_in[31]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I2(\plusOp_inferred__0/i__carry__6_n_5 ),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(\bram1a[o][o_addr][31]_i_3_n_0 ),
        .O(\bram1a[o][o_addr][31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram1a[o][o_addr][31]_i_3 
       (.I0(plusOp2_in[31]),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(s_vecs_addr[31]),
        .I3(\t_state_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \bram1a[o][o_addr][3]_i_1 
       (.I0(plusOp1_in[3]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I2(\plusOp_inferred__0/i__carry_n_5 ),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(\bram1a[o][o_addr][3]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram1a[o][o_addr][3]_i_2 
       (.I0(plusOp2_in[3]),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(s_vecs_addr[3]),
        .I3(\t_state_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \bram1a[o][o_addr][4]_i_1 
       (.I0(plusOp1_in[4]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I2(\plusOp_inferred__0/i__carry_n_4 ),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(\bram1a[o][o_addr][4]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram1a[o][o_addr][4]_i_2 
       (.I0(plusOp2_in[4]),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(s_vecs_addr[4]),
        .I3(\t_state_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bram1a[o][o_addr][4]_i_4 
       (.I0(o_mem1a_addr[2]),
        .O(\bram1a[o][o_addr][4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \bram1a[o][o_addr][5]_i_1 
       (.I0(plusOp1_in[5]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I2(\plusOp_inferred__0/i__carry__0_n_7 ),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(\bram1a[o][o_addr][5]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram1a[o][o_addr][5]_i_2 
       (.I0(plusOp2_in[5]),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(s_vecs_addr[5]),
        .I3(\t_state_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \bram1a[o][o_addr][6]_i_1 
       (.I0(plusOp1_in[6]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I2(\plusOp_inferred__0/i__carry__0_n_6 ),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(\bram1a[o][o_addr][6]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram1a[o][o_addr][6]_i_2 
       (.I0(plusOp2_in[6]),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(s_vecs_addr[6]),
        .I3(\t_state_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \bram1a[o][o_addr][7]_i_1 
       (.I0(plusOp1_in[7]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I2(\plusOp_inferred__0/i__carry__0_n_5 ),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(\bram1a[o][o_addr][7]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram1a[o][o_addr][7]_i_2 
       (.I0(plusOp2_in[7]),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(s_vecs_addr[7]),
        .I3(\t_state_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \bram1a[o][o_addr][8]_i_1 
       (.I0(plusOp1_in[8]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I2(\plusOp_inferred__0/i__carry__0_n_4 ),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(\bram1a[o][o_addr][8]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram1a[o][o_addr][8]_i_2 
       (.I0(plusOp2_in[8]),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(s_vecs_addr[8]),
        .I3(\t_state_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \bram1a[o][o_addr][9]_i_1 
       (.I0(plusOp1_in[9]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I2(\plusOp_inferred__0/i__carry__1_n_7 ),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(\bram1a[o][o_addr][9]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram1a[o][o_addr][9]_i_2 
       (.I0(plusOp2_in[9]),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(s_vecs_addr[9]),
        .I3(\t_state_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF70010)) 
    \bram1a[o][o_en]_i_1 
       (.I0(\t_state_reg_n_0_[2] ),
        .I1(\t_state_reg_n_0_[1] ),
        .I2(\t_state_reg_n_0_[0] ),
        .I3(rst),
        .I4(o_mem1a_en),
        .O(\bram1a[o][o_en]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][0] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][0]_i_1_n_0 ),
        .Q(o_mem1a_addr[0]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][10] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][10]_i_1_n_0 ),
        .Q(o_mem1a_addr[10]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][11] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][11]_i_1_n_0 ),
        .Q(o_mem1a_addr[11]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][12] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][12]_i_1_n_0 ),
        .Q(o_mem1a_addr[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram1a_reg[o][o_addr][12]_i_3 
       (.CI(\bram1a_reg[o][o_addr][8]_i_3_n_0 ),
        .CO({\bram1a_reg[o][o_addr][12]_i_3_n_0 ,\bram1a_reg[o][o_addr][12]_i_3_n_1 ,\bram1a_reg[o][o_addr][12]_i_3_n_2 ,\bram1a_reg[o][o_addr][12]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp2_in[12:9]),
        .S(o_mem1a_addr[12:9]));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][13] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][13]_i_1_n_0 ),
        .Q(o_mem1a_addr[13]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][14] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][14]_i_1_n_0 ),
        .Q(o_mem1a_addr[14]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][15] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][15]_i_1_n_0 ),
        .Q(o_mem1a_addr[15]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][16] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][16]_i_1_n_0 ),
        .Q(o_mem1a_addr[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram1a_reg[o][o_addr][16]_i_3 
       (.CI(\bram1a_reg[o][o_addr][12]_i_3_n_0 ),
        .CO({\bram1a_reg[o][o_addr][16]_i_3_n_0 ,\bram1a_reg[o][o_addr][16]_i_3_n_1 ,\bram1a_reg[o][o_addr][16]_i_3_n_2 ,\bram1a_reg[o][o_addr][16]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp2_in[16:13]),
        .S(o_mem1a_addr[16:13]));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][17] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][17]_i_1_n_0 ),
        .Q(o_mem1a_addr[17]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][18] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][18]_i_1_n_0 ),
        .Q(o_mem1a_addr[18]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][19] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][19]_i_1_n_0 ),
        .Q(o_mem1a_addr[19]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][1] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][1]_i_1_n_0 ),
        .Q(o_mem1a_addr[1]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][20] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][20]_i_1_n_0 ),
        .Q(o_mem1a_addr[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram1a_reg[o][o_addr][20]_i_3 
       (.CI(\bram1a_reg[o][o_addr][16]_i_3_n_0 ),
        .CO({\bram1a_reg[o][o_addr][20]_i_3_n_0 ,\bram1a_reg[o][o_addr][20]_i_3_n_1 ,\bram1a_reg[o][o_addr][20]_i_3_n_2 ,\bram1a_reg[o][o_addr][20]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp2_in[20:17]),
        .S(o_mem1a_addr[20:17]));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][21] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][21]_i_1_n_0 ),
        .Q(o_mem1a_addr[21]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][22] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][22]_i_1_n_0 ),
        .Q(o_mem1a_addr[22]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][23] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][23]_i_1_n_0 ),
        .Q(o_mem1a_addr[23]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][24] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][24]_i_1_n_0 ),
        .Q(o_mem1a_addr[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram1a_reg[o][o_addr][24]_i_3 
       (.CI(\bram1a_reg[o][o_addr][20]_i_3_n_0 ),
        .CO({\bram1a_reg[o][o_addr][24]_i_3_n_0 ,\bram1a_reg[o][o_addr][24]_i_3_n_1 ,\bram1a_reg[o][o_addr][24]_i_3_n_2 ,\bram1a_reg[o][o_addr][24]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp2_in[24:21]),
        .S(o_mem1a_addr[24:21]));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][25] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][25]_i_1_n_0 ),
        .Q(o_mem1a_addr[25]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][26] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][26]_i_1_n_0 ),
        .Q(o_mem1a_addr[26]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][27] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][27]_i_1_n_0 ),
        .Q(o_mem1a_addr[27]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][28] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][28]_i_1_n_0 ),
        .Q(o_mem1a_addr[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram1a_reg[o][o_addr][28]_i_3 
       (.CI(\bram1a_reg[o][o_addr][24]_i_3_n_0 ),
        .CO({\bram1a_reg[o][o_addr][28]_i_3_n_0 ,\bram1a_reg[o][o_addr][28]_i_3_n_1 ,\bram1a_reg[o][o_addr][28]_i_3_n_2 ,\bram1a_reg[o][o_addr][28]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp2_in[28:25]),
        .S(o_mem1a_addr[28:25]));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][29] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][29]_i_1_n_0 ),
        .Q(o_mem1a_addr[29]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][2] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][2]_i_1_n_0 ),
        .Q(o_mem1a_addr[2]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][30] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][30]_i_1_n_0 ),
        .Q(o_mem1a_addr[30]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][31] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][31]_i_2_n_0 ),
        .Q(o_mem1a_addr[31]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram1a_reg[o][o_addr][31]_i_4 
       (.CI(\bram1a_reg[o][o_addr][28]_i_3_n_0 ),
        .CO({\NLW_bram1a_reg[o][o_addr][31]_i_4_CO_UNCONNECTED [3:2],\bram1a_reg[o][o_addr][31]_i_4_n_2 ,\bram1a_reg[o][o_addr][31]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bram1a_reg[o][o_addr][31]_i_4_O_UNCONNECTED [3],plusOp2_in[31:29]}),
        .S({1'b0,o_mem1a_addr[31:29]}));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][3] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][3]_i_1_n_0 ),
        .Q(o_mem1a_addr[3]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][4] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][4]_i_1_n_0 ),
        .Q(o_mem1a_addr[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram1a_reg[o][o_addr][4]_i_3 
       (.CI(1'b0),
        .CO({\bram1a_reg[o][o_addr][4]_i_3_n_0 ,\bram1a_reg[o][o_addr][4]_i_3_n_1 ,\bram1a_reg[o][o_addr][4]_i_3_n_2 ,\bram1a_reg[o][o_addr][4]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,o_mem1a_addr[2],1'b0}),
        .O({plusOp2_in[4:2],\NLW_bram1a_reg[o][o_addr][4]_i_3_O_UNCONNECTED [0]}),
        .S({o_mem1a_addr[4:3],\bram1a[o][o_addr][4]_i_4_n_0 ,o_mem1a_addr[1]}));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][5] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][5]_i_1_n_0 ),
        .Q(o_mem1a_addr[5]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][6] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][6]_i_1_n_0 ),
        .Q(o_mem1a_addr[6]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][7] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][7]_i_1_n_0 ),
        .Q(o_mem1a_addr[7]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][8] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][8]_i_1_n_0 ),
        .Q(o_mem1a_addr[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram1a_reg[o][o_addr][8]_i_3 
       (.CI(\bram1a_reg[o][o_addr][4]_i_3_n_0 ),
        .CO({\bram1a_reg[o][o_addr][8]_i_3_n_0 ,\bram1a_reg[o][o_addr][8]_i_3_n_1 ,\bram1a_reg[o][o_addr][8]_i_3_n_2 ,\bram1a_reg[o][o_addr][8]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp2_in[8:5]),
        .S(o_mem1a_addr[8:5]));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][9] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][9]_i_1_n_0 ),
        .Q(o_mem1a_addr[9]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a EN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_en] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\bram1a[o][o_en]_i_1_n_0 ),
        .Q(o_mem1a_en),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 c0_carry
       (.CI(1'b0),
        .CO({c0_carry_n_0,c0_carry_n_1,c0_carry_n_2,c0_carry_n_3}),
        .CYINIT(sel0[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(c0[4:1]),
        .S(sel0[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 c0_carry__0
       (.CI(c0_carry_n_0),
        .CO({c0_carry__0_n_0,c0_carry__0_n_1,c0_carry__0_n_2,c0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(c0[8:5]),
        .S(sel0[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 c0_carry__1
       (.CI(c0_carry__0_n_0),
        .CO({c0_carry__1_n_0,c0_carry__1_n_1,c0_carry__1_n_2,c0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(c0[12:9]),
        .S(sel0[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 c0_carry__2
       (.CI(c0_carry__1_n_0),
        .CO({c0_carry__2_n_0,c0_carry__2_n_1,c0_carry__2_n_2,c0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(c0[16:13]),
        .S(sel0[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 c0_carry__3
       (.CI(c0_carry__2_n_0),
        .CO({c0_carry__3_n_0,c0_carry__3_n_1,c0_carry__3_n_2,c0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(c0[20:17]),
        .S(sel0[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 c0_carry__4
       (.CI(c0_carry__3_n_0),
        .CO({c0_carry__4_n_0,c0_carry__4_n_1,c0_carry__4_n_2,c0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(c0[24:21]),
        .S(sel0[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 c0_carry__5
       (.CI(c0_carry__4_n_0),
        .CO({c0_carry__5_n_0,c0_carry__5_n_1,c0_carry__5_n_2,c0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(c0[28:25]),
        .S(sel0[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 c0_carry__6
       (.CI(c0_carry__5_n_0),
        .CO({NLW_c0_carry__6_CO_UNCONNECTED[3:2],c0_carry__6_n_2,c0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_c0_carry__6_O_UNCONNECTED[3],c0[31:29]}),
        .S({1'b0,sel0[31:29]}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 c1_carry
       (.CI(1'b0),
        .CO({c1_carry_n_0,c1_carry_n_1,c1_carry_n_2,c1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({c1_carry_i_1_n_0,c1_carry_i_2_n_0,c1_carry_i_3_n_0,1'b0}),
        .O(NLW_c1_carry_O_UNCONNECTED[3:0]),
        .S({c1_carry_i_4_n_0,c1_carry_i_5_n_0,c1_carry_i_6_n_0,c1_carry_i_7_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 c1_carry__0
       (.CI(c1_carry_n_0),
        .CO({c1_carry__0_n_0,c1_carry__0_n_1,c1_carry__0_n_2,c1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({c1_carry__0_i_1_n_0,c1_carry__0_i_2_n_0,c1_carry__0_i_3_n_0,c1_carry__0_i_4_n_0}),
        .O(NLW_c1_carry__0_O_UNCONNECTED[3:0]),
        .S({c1_carry__0_i_5_n_0,c1_carry__0_i_6_n_0,c1_carry__0_i_7_n_0,c1_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    c1_carry__0_i_1
       (.I0(sel0[14]),
        .I1(sel0[15]),
        .O(c1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    c1_carry__0_i_2
       (.I0(sel0[12]),
        .I1(sel0[13]),
        .O(c1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    c1_carry__0_i_3
       (.I0(sel0[10]),
        .I1(sel0[11]),
        .O(c1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    c1_carry__0_i_4
       (.I0(sel0[8]),
        .I1(sel0[9]),
        .O(c1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    c1_carry__0_i_5
       (.I0(sel0[14]),
        .I1(sel0[15]),
        .O(c1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    c1_carry__0_i_6
       (.I0(sel0[12]),
        .I1(sel0[13]),
        .O(c1_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    c1_carry__0_i_7
       (.I0(sel0[10]),
        .I1(sel0[11]),
        .O(c1_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    c1_carry__0_i_8
       (.I0(sel0[8]),
        .I1(sel0[9]),
        .O(c1_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 c1_carry__1
       (.CI(c1_carry__0_n_0),
        .CO({c1_carry__1_n_0,c1_carry__1_n_1,c1_carry__1_n_2,c1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({c1_carry__1_i_1_n_0,c1_carry__1_i_2_n_0,c1_carry__1_i_3_n_0,c1_carry__1_i_4_n_0}),
        .O(NLW_c1_carry__1_O_UNCONNECTED[3:0]),
        .S({c1_carry__1_i_5_n_0,c1_carry__1_i_6_n_0,c1_carry__1_i_7_n_0,c1_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    c1_carry__1_i_1
       (.I0(sel0[22]),
        .I1(sel0[23]),
        .O(c1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    c1_carry__1_i_2
       (.I0(sel0[20]),
        .I1(sel0[21]),
        .O(c1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    c1_carry__1_i_3
       (.I0(sel0[18]),
        .I1(sel0[19]),
        .O(c1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    c1_carry__1_i_4
       (.I0(sel0[16]),
        .I1(sel0[17]),
        .O(c1_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    c1_carry__1_i_5
       (.I0(sel0[22]),
        .I1(sel0[23]),
        .O(c1_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    c1_carry__1_i_6
       (.I0(sel0[20]),
        .I1(sel0[21]),
        .O(c1_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    c1_carry__1_i_7
       (.I0(sel0[18]),
        .I1(sel0[19]),
        .O(c1_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    c1_carry__1_i_8
       (.I0(sel0[16]),
        .I1(sel0[17]),
        .O(c1_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 c1_carry__2
       (.CI(c1_carry__1_n_0),
        .CO({c1_carry__2_n_0,c1_carry__2_n_1,c1_carry__2_n_2,c1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({c1_carry__2_i_1_n_0,c1_carry__2_i_2_n_0,c1_carry__2_i_3_n_0,c1_carry__2_i_4_n_0}),
        .O(NLW_c1_carry__2_O_UNCONNECTED[3:0]),
        .S({c1_carry__2_i_5_n_0,c1_carry__2_i_6_n_0,c1_carry__2_i_7_n_0,c1_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    c1_carry__2_i_1
       (.I0(sel0[30]),
        .I1(sel0[31]),
        .O(c1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    c1_carry__2_i_2
       (.I0(sel0[28]),
        .I1(sel0[29]),
        .O(c1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    c1_carry__2_i_3
       (.I0(sel0[26]),
        .I1(sel0[27]),
        .O(c1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    c1_carry__2_i_4
       (.I0(sel0[24]),
        .I1(sel0[25]),
        .O(c1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    c1_carry__2_i_5
       (.I0(sel0[30]),
        .I1(sel0[31]),
        .O(c1_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    c1_carry__2_i_6
       (.I0(sel0[28]),
        .I1(sel0[29]),
        .O(c1_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    c1_carry__2_i_7
       (.I0(sel0[26]),
        .I1(sel0[27]),
        .O(c1_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    c1_carry__2_i_8
       (.I0(sel0[24]),
        .I1(sel0[25]),
        .O(c1_carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    c1_carry_i_1
       (.I0(sel0[6]),
        .I1(sel0[7]),
        .O(c1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    c1_carry_i_2
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .O(c1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    c1_carry_i_3
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .O(c1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    c1_carry_i_4
       (.I0(sel0[6]),
        .I1(sel0[7]),
        .O(c1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    c1_carry_i_5
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .O(c1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    c1_carry_i_6
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .O(c1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    c1_carry_i_7
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .O(c1_carry_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \c[0]_i_1 
       (.I0(c1_carry__2_n_0),
        .I1(sel0[0]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\c[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c[10]_i_1 
       (.I0(c1_carry__2_n_0),
        .I1(c0[10]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\c[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c[11]_i_1 
       (.I0(c1_carry__2_n_0),
        .I1(c0[11]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\c[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c[12]_i_1 
       (.I0(c1_carry__2_n_0),
        .I1(c0[12]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\c[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c[13]_i_1 
       (.I0(c1_carry__2_n_0),
        .I1(c0[13]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\c[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c[14]_i_1 
       (.I0(c1_carry__2_n_0),
        .I1(c0[14]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\c[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c[15]_i_1 
       (.I0(c1_carry__2_n_0),
        .I1(c0[15]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\c[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c[16]_i_1 
       (.I0(c1_carry__2_n_0),
        .I1(c0[16]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\c[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c[17]_i_1 
       (.I0(c1_carry__2_n_0),
        .I1(c0[17]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\c[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c[18]_i_1 
       (.I0(c1_carry__2_n_0),
        .I1(c0[18]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\c[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c[19]_i_1 
       (.I0(c1_carry__2_n_0),
        .I1(c0[19]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\c[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c[1]_i_1 
       (.I0(c1_carry__2_n_0),
        .I1(c0[1]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\c[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c[20]_i_1 
       (.I0(c1_carry__2_n_0),
        .I1(c0[20]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\c[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c[21]_i_1 
       (.I0(c1_carry__2_n_0),
        .I1(c0[21]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\c[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c[22]_i_1 
       (.I0(c1_carry__2_n_0),
        .I1(c0[22]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\c[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c[23]_i_1 
       (.I0(c1_carry__2_n_0),
        .I1(c0[23]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\c[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c[24]_i_1 
       (.I0(c1_carry__2_n_0),
        .I1(c0[24]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\c[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c[25]_i_1 
       (.I0(c1_carry__2_n_0),
        .I1(c0[25]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\c[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c[26]_i_1 
       (.I0(c1_carry__2_n_0),
        .I1(c0[26]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\c[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c[27]_i_1 
       (.I0(c1_carry__2_n_0),
        .I1(c0[27]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\c[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c[28]_i_1 
       (.I0(c1_carry__2_n_0),
        .I1(c0[28]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\c[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c[29]_i_1 
       (.I0(c1_carry__2_n_0),
        .I1(c0[29]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\c[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c[2]_i_1 
       (.I0(c1_carry__2_n_0),
        .I1(c0[2]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\c[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c[30]_i_1 
       (.I0(c1_carry__2_n_0),
        .I1(c0[30]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\c[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001111111)) 
    \c[31]_i_1 
       (.I0(\t_state_reg_n_0_[2] ),
        .I1(\t_state_reg_n_0_[0] ),
        .I2(t_state1_carry__2_n_0),
        .I3(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I4(\t_state_reg_n_0_[1] ),
        .I5(rst),
        .O(\c[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c[31]_i_2 
       (.I0(c1_carry__2_n_0),
        .I1(c0[31]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\c[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c[3]_i_1 
       (.I0(c1_carry__2_n_0),
        .I1(c0[3]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\c[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c[4]_i_1 
       (.I0(c1_carry__2_n_0),
        .I1(c0[4]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\c[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c[5]_i_1 
       (.I0(c1_carry__2_n_0),
        .I1(c0[5]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\c[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c[6]_i_1 
       (.I0(c1_carry__2_n_0),
        .I1(c0[6]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\c[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c[7]_i_1 
       (.I0(c1_carry__2_n_0),
        .I1(c0[7]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\c[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c[8]_i_1 
       (.I0(c1_carry__2_n_0),
        .I1(c0[8]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\c[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \c[9]_i_1 
       (.I0(c1_carry__2_n_0),
        .I1(c0[9]),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\c[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[0] 
       (.C(i_clk),
        .CE(\c[31]_i_1_n_0 ),
        .D(\c[0]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[10] 
       (.C(i_clk),
        .CE(\c[31]_i_1_n_0 ),
        .D(\c[10]_i_1_n_0 ),
        .Q(sel0[10]),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[11] 
       (.C(i_clk),
        .CE(\c[31]_i_1_n_0 ),
        .D(\c[11]_i_1_n_0 ),
        .Q(sel0[11]),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[12] 
       (.C(i_clk),
        .CE(\c[31]_i_1_n_0 ),
        .D(\c[12]_i_1_n_0 ),
        .Q(sel0[12]),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[13] 
       (.C(i_clk),
        .CE(\c[31]_i_1_n_0 ),
        .D(\c[13]_i_1_n_0 ),
        .Q(sel0[13]),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[14] 
       (.C(i_clk),
        .CE(\c[31]_i_1_n_0 ),
        .D(\c[14]_i_1_n_0 ),
        .Q(sel0[14]),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[15] 
       (.C(i_clk),
        .CE(\c[31]_i_1_n_0 ),
        .D(\c[15]_i_1_n_0 ),
        .Q(sel0[15]),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[16] 
       (.C(i_clk),
        .CE(\c[31]_i_1_n_0 ),
        .D(\c[16]_i_1_n_0 ),
        .Q(sel0[16]),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[17] 
       (.C(i_clk),
        .CE(\c[31]_i_1_n_0 ),
        .D(\c[17]_i_1_n_0 ),
        .Q(sel0[17]),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[18] 
       (.C(i_clk),
        .CE(\c[31]_i_1_n_0 ),
        .D(\c[18]_i_1_n_0 ),
        .Q(sel0[18]),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[19] 
       (.C(i_clk),
        .CE(\c[31]_i_1_n_0 ),
        .D(\c[19]_i_1_n_0 ),
        .Q(sel0[19]),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[1] 
       (.C(i_clk),
        .CE(\c[31]_i_1_n_0 ),
        .D(\c[1]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[20] 
       (.C(i_clk),
        .CE(\c[31]_i_1_n_0 ),
        .D(\c[20]_i_1_n_0 ),
        .Q(sel0[20]),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[21] 
       (.C(i_clk),
        .CE(\c[31]_i_1_n_0 ),
        .D(\c[21]_i_1_n_0 ),
        .Q(sel0[21]),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[22] 
       (.C(i_clk),
        .CE(\c[31]_i_1_n_0 ),
        .D(\c[22]_i_1_n_0 ),
        .Q(sel0[22]),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[23] 
       (.C(i_clk),
        .CE(\c[31]_i_1_n_0 ),
        .D(\c[23]_i_1_n_0 ),
        .Q(sel0[23]),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[24] 
       (.C(i_clk),
        .CE(\c[31]_i_1_n_0 ),
        .D(\c[24]_i_1_n_0 ),
        .Q(sel0[24]),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[25] 
       (.C(i_clk),
        .CE(\c[31]_i_1_n_0 ),
        .D(\c[25]_i_1_n_0 ),
        .Q(sel0[25]),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[26] 
       (.C(i_clk),
        .CE(\c[31]_i_1_n_0 ),
        .D(\c[26]_i_1_n_0 ),
        .Q(sel0[26]),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[27] 
       (.C(i_clk),
        .CE(\c[31]_i_1_n_0 ),
        .D(\c[27]_i_1_n_0 ),
        .Q(sel0[27]),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[28] 
       (.C(i_clk),
        .CE(\c[31]_i_1_n_0 ),
        .D(\c[28]_i_1_n_0 ),
        .Q(sel0[28]),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[29] 
       (.C(i_clk),
        .CE(\c[31]_i_1_n_0 ),
        .D(\c[29]_i_1_n_0 ),
        .Q(sel0[29]),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[2] 
       (.C(i_clk),
        .CE(\c[31]_i_1_n_0 ),
        .D(\c[2]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[30] 
       (.C(i_clk),
        .CE(\c[31]_i_1_n_0 ),
        .D(\c[30]_i_1_n_0 ),
        .Q(sel0[30]),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[31] 
       (.C(i_clk),
        .CE(\c[31]_i_1_n_0 ),
        .D(\c[31]_i_2_n_0 ),
        .Q(sel0[31]),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[3] 
       (.C(i_clk),
        .CE(\c[31]_i_1_n_0 ),
        .D(\c[3]_i_1_n_0 ),
        .Q(sel0[3]),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[4] 
       (.C(i_clk),
        .CE(\c[31]_i_1_n_0 ),
        .D(\c[4]_i_1_n_0 ),
        .Q(sel0[4]),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[5] 
       (.C(i_clk),
        .CE(\c[31]_i_1_n_0 ),
        .D(\c[5]_i_1_n_0 ),
        .Q(sel0[5]),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[6] 
       (.C(i_clk),
        .CE(\c[31]_i_1_n_0 ),
        .D(\c[6]_i_1_n_0 ),
        .Q(sel0[6]),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[7] 
       (.C(i_clk),
        .CE(\c[31]_i_1_n_0 ),
        .D(\c[7]_i_1_n_0 ),
        .Q(sel0[7]),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[8] 
       (.C(i_clk),
        .CE(\c[31]_i_1_n_0 ),
        .D(\c[8]_i_1_n_0 ),
        .Q(sel0[8]),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[9] 
       (.C(i_clk),
        .CE(\c[31]_i_1_n_0 ),
        .D(\c[9]_i_1_n_0 ),
        .Q(sel0[9]),
        .R(\j[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB1F4)) 
    first_i_1
       (.I0(\t_state1_reg_n_0_[1] ),
        .I1(\t_state1_reg_n_0_[0] ),
        .I2(first),
        .I3(\t_state1_reg_n_0_[2] ),
        .O(first_i_1_n_0));
  FDRE first_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(first_i_1_n_0),
        .Q(first),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry
       (.CI(1'b0),
        .CO({i0_carry_n_0,i0_carry_n_1,i0_carry_n_2,i0_carry_n_3}),
        .CYINIT(\i_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i0[4:1]),
        .S({\i_reg_n_0_[4] ,\i_reg_n_0_[3] ,\i_reg_n_0_[2] ,\i_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry__0
       (.CI(i0_carry_n_0),
        .CO({i0_carry__0_n_0,i0_carry__0_n_1,i0_carry__0_n_2,i0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i0[8:5]),
        .S({\i_reg_n_0_[8] ,\i_reg_n_0_[7] ,\i_reg_n_0_[6] ,\i_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry__1
       (.CI(i0_carry__0_n_0),
        .CO({i0_carry__1_n_0,i0_carry__1_n_1,i0_carry__1_n_2,i0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i0[12:9]),
        .S({\i_reg_n_0_[12] ,\i_reg_n_0_[11] ,\i_reg_n_0_[10] ,\i_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry__2
       (.CI(i0_carry__1_n_0),
        .CO({i0_carry__2_n_0,i0_carry__2_n_1,i0_carry__2_n_2,i0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i0[16:13]),
        .S({\i_reg_n_0_[16] ,\i_reg_n_0_[15] ,\i_reg_n_0_[14] ,\i_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry__3
       (.CI(i0_carry__2_n_0),
        .CO({i0_carry__3_n_0,i0_carry__3_n_1,i0_carry__3_n_2,i0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i0[20:17]),
        .S({\i_reg_n_0_[20] ,\i_reg_n_0_[19] ,\i_reg_n_0_[18] ,\i_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry__4
       (.CI(i0_carry__3_n_0),
        .CO({i0_carry__4_n_0,i0_carry__4_n_1,i0_carry__4_n_2,i0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i0[24:21]),
        .S({\i_reg_n_0_[24] ,\i_reg_n_0_[23] ,\i_reg_n_0_[22] ,\i_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry__5
       (.CI(i0_carry__4_n_0),
        .CO({i0_carry__5_n_0,i0_carry__5_n_1,i0_carry__5_n_2,i0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i0[28:25]),
        .S({\i_reg_n_0_[28] ,\i_reg_n_0_[27] ,\i_reg_n_0_[26] ,\i_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry__6
       (.CI(i0_carry__5_n_0),
        .CO({NLW_i0_carry__6_CO_UNCONNECTED[3:2],i0_carry__6_n_2,i0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_i0_carry__6_O_UNCONNECTED[3],i0[31:29]}),
        .S({1'b0,\i_reg_n_0_[31] ,\i_reg_n_0_[30] ,\i_reg_n_0_[29] }));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \i[0]_i_1 
       (.I0(\i_reg_n_0_[0] ),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[10]_i_1 
       (.I0(i0[10]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\i[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[11]_i_1 
       (.I0(i0[11]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\i[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[12]_i_1 
       (.I0(i0[12]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\i[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[13]_i_1 
       (.I0(i0[13]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\i[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[14]_i_1 
       (.I0(i0[14]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\i[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[15]_i_1 
       (.I0(i0[15]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\i[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[16]_i_1 
       (.I0(i0[16]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\i[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[17]_i_1 
       (.I0(i0[17]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\i[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[18]_i_1 
       (.I0(i0[18]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\i[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[19]_i_1 
       (.I0(i0[19]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\i[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[1]_i_1 
       (.I0(i0[1]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[20]_i_1 
       (.I0(i0[20]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\i[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[21]_i_1 
       (.I0(i0[21]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\i[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[22]_i_1 
       (.I0(i0[22]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\i[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[23]_i_1 
       (.I0(i0[23]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\i[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[24]_i_1 
       (.I0(i0[24]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\i[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[25]_i_1 
       (.I0(i0[25]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\i[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[26]_i_1 
       (.I0(i0[26]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\i[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[27]_i_1 
       (.I0(i0[27]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\i[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[28]_i_1 
       (.I0(i0[28]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\i[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[29]_i_1 
       (.I0(i0[29]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\i[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[2]_i_1 
       (.I0(i0[2]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[30]_i_1 
       (.I0(i0[30]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\i[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \i[31]_i_1 
       (.I0(\t_state_reg_n_0_[2] ),
        .I1(\t_state_reg_n_0_[0] ),
        .I2(rst),
        .I3(\t_state_reg_n_0_[1] ),
        .O(\i[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \i[31]_i_2 
       (.I0(rst),
        .I1(\t_state_reg_n_0_[0] ),
        .I2(\t_state_reg_n_0_[2] ),
        .O(\i[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[31]_i_3 
       (.I0(i0[31]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\i[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[3]_i_1 
       (.I0(i0[3]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[4]_i_1 
       (.I0(i0[4]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[5]_i_1 
       (.I0(i0[5]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\i[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[6]_i_1 
       (.I0(i0[6]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\i[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[7]_i_1 
       (.I0(i0[7]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[8]_i_1 
       (.I0(i0[8]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\i[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[9]_i_1 
       (.I0(i0[9]),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .O(\i[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    i___37_carry__0_i_1
       (.I0(\bram0b[o][o_din]0_inferred__0/i___5_carry__2_n_6 ),
        .I1(\bram0b[o][o_din]0_inferred__0/i___5_carry__3_n_7 ),
        .O(i___37_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___37_carry__0_i_1__0
       (.I0(\bram0b[o][o_din]0_inferred__1/i___5_carry__2_n_6 ),
        .I1(\bram0b[o][o_din]0_inferred__1/i___5_carry__3_n_7 ),
        .O(i___37_carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___37_carry__0_i_1__1
       (.I0(\bram0b[o][o_din]0_inferred__2/i___5_carry__2_n_6 ),
        .I1(\bram0b[o][o_din]0_inferred__2/i___5_carry__3_n_7 ),
        .O(i___37_carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___37_carry__0_i_2
       (.I0(\bram0b[o][o_din]0_inferred__0/i___5_carry__2_n_7 ),
        .I1(\bram0b[o][o_din]0_inferred__0/i___5_carry__2_n_4 ),
        .O(i___37_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___37_carry__0_i_2__0
       (.I0(\bram0b[o][o_din]0_inferred__1/i___5_carry__2_n_7 ),
        .I1(\bram0b[o][o_din]0_inferred__1/i___5_carry__2_n_4 ),
        .O(i___37_carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___37_carry__0_i_2__1
       (.I0(\bram0b[o][o_din]0_inferred__2/i___5_carry__2_n_7 ),
        .I1(\bram0b[o][o_din]0_inferred__2/i___5_carry__2_n_4 ),
        .O(i___37_carry__0_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___37_carry_i_1
       (.I0(\bram0b[o][o_din]0_inferred__0/i___5_carry__1_n_4 ),
        .I1(\bram0b[o][o_din]0_inferred__0/i___5_carry__2_n_5 ),
        .O(i___37_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___37_carry_i_1__0
       (.I0(\bram0b[o][o_din]0_inferred__1/i___5_carry__1_n_4 ),
        .I1(\bram0b[o][o_din]0_inferred__1/i___5_carry__2_n_5 ),
        .O(i___37_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___37_carry_i_1__1
       (.I0(\bram0b[o][o_din]0_inferred__2/i___5_carry__1_n_4 ),
        .I1(\bram0b[o][o_din]0_inferred__2/i___5_carry__2_n_5 ),
        .O(i___37_carry_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___37_carry_i_2
       (.I0(\bram0b[o][o_din]0_inferred__0/i___5_carry__2_n_6 ),
        .O(i___37_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___37_carry_i_2__0
       (.I0(\bram0b[o][o_din]0_inferred__1/i___5_carry__2_n_6 ),
        .O(i___37_carry_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___37_carry_i_2__1
       (.I0(\bram0b[o][o_din]0_inferred__2/i___5_carry__2_n_6 ),
        .O(i___37_carry_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___37_carry_i_3
       (.I0(\bram0b[o][o_din]0_inferred__0/i___5_carry__2_n_7 ),
        .O(i___37_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___37_carry_i_3__0
       (.I0(\bram0b[o][o_din]0_inferred__1/i___5_carry__2_n_7 ),
        .O(i___37_carry_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___37_carry_i_3__1
       (.I0(\bram0b[o][o_din]0_inferred__2/i___5_carry__2_n_7 ),
        .O(i___37_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i___51_carry_i_1
       (.I0(\bram0b[o][o_din]0_inferred__0/i___37_carry_n_4 ),
        .I1(\bram0b[o][o_din]0_inferred__0/i___5_carry__1_n_4 ),
        .O(i___51_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i___51_carry_i_1__0
       (.I0(\bram0b[o][o_din]0_inferred__1/i___37_carry_n_4 ),
        .I1(\bram0b[o][o_din]0_inferred__1/i___5_carry__1_n_4 ),
        .O(i___51_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i___51_carry_i_1__1
       (.I0(\bram0b[o][o_din]0_inferred__2/i___37_carry_n_4 ),
        .I1(\bram0b[o][o_din]0_inferred__2/i___5_carry__1_n_4 ),
        .O(i___51_carry_i_1__1_n_0));
  LUT5 #(
    .INIT(32'h69966969)) 
    i___51_carry_i_2
       (.I0(\bram0b[o][o_din]0_inferred__0/i___5_carry__2_n_6 ),
        .I1(\bram0b[o][o_din]0_inferred__0/i___37_carry__0_n_6 ),
        .I2(\bram0b[o][o_din]0_inferred__0/i___5_carry__1_n_4 ),
        .I3(\bram0b[o][o_din]0_inferred__0/i___5_carry__2_n_7 ),
        .I4(\bram0b[o][o_din]0_inferred__0/i___37_carry__0_n_7 ),
        .O(i___51_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h69966969)) 
    i___51_carry_i_2__0
       (.I0(\bram0b[o][o_din]0_inferred__1/i___5_carry__2_n_6 ),
        .I1(\bram0b[o][o_din]0_inferred__1/i___37_carry__0_n_6 ),
        .I2(\bram0b[o][o_din]0_inferred__1/i___5_carry__1_n_4 ),
        .I3(\bram0b[o][o_din]0_inferred__1/i___5_carry__2_n_7 ),
        .I4(\bram0b[o][o_din]0_inferred__1/i___37_carry__0_n_7 ),
        .O(i___51_carry_i_2__0_n_0));
  LUT5 #(
    .INIT(32'h69966969)) 
    i___51_carry_i_2__1
       (.I0(\bram0b[o][o_din]0_inferred__2/i___5_carry__2_n_6 ),
        .I1(\bram0b[o][o_din]0_inferred__2/i___37_carry__0_n_6 ),
        .I2(\bram0b[o][o_din]0_inferred__2/i___5_carry__1_n_4 ),
        .I3(\bram0b[o][o_din]0_inferred__2/i___5_carry__2_n_7 ),
        .I4(\bram0b[o][o_din]0_inferred__2/i___37_carry__0_n_7 ),
        .O(i___51_carry_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    i___51_carry_i_3
       (.I0(\bram0b[o][o_din]0_inferred__0/i___5_carry__1_n_4 ),
        .I1(\bram0b[o][o_din]0_inferred__0/i___37_carry_n_4 ),
        .I2(\bram0b[o][o_din]0_inferred__0/i___37_carry__0_n_7 ),
        .I3(\bram0b[o][o_din]0_inferred__0/i___5_carry__2_n_7 ),
        .O(i___51_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    i___51_carry_i_3__0
       (.I0(\bram0b[o][o_din]0_inferred__1/i___5_carry__1_n_4 ),
        .I1(\bram0b[o][o_din]0_inferred__1/i___37_carry_n_4 ),
        .I2(\bram0b[o][o_din]0_inferred__1/i___37_carry__0_n_7 ),
        .I3(\bram0b[o][o_din]0_inferred__1/i___5_carry__2_n_7 ),
        .O(i___51_carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    i___51_carry_i_3__1
       (.I0(\bram0b[o][o_din]0_inferred__2/i___5_carry__1_n_4 ),
        .I1(\bram0b[o][o_din]0_inferred__2/i___37_carry_n_4 ),
        .I2(\bram0b[o][o_din]0_inferred__2/i___37_carry__0_n_7 ),
        .I3(\bram0b[o][o_din]0_inferred__2/i___5_carry__2_n_7 ),
        .O(i___51_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___51_carry_i_4
       (.I0(\bram0b[o][o_din]0_inferred__0/i___5_carry__1_n_4 ),
        .I1(\bram0b[o][o_din]0_inferred__0/i___37_carry_n_4 ),
        .O(i___51_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___51_carry_i_4__0
       (.I0(\bram0b[o][o_din]0_inferred__1/i___5_carry__1_n_4 ),
        .I1(\bram0b[o][o_din]0_inferred__1/i___37_carry_n_4 ),
        .O(i___51_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___51_carry_i_4__1
       (.I0(\bram0b[o][o_din]0_inferred__2/i___5_carry__1_n_4 ),
        .I1(\bram0b[o][o_din]0_inferred__2/i___37_carry_n_4 ),
        .O(i___51_carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___57_carry__0_i_1
       (.I0(\s_tmp_nomac_reg_n_0_[1][5] ),
        .I1(\bram0b[o][o_din]0_inferred__0/i___51_carry_n_5 ),
        .O(i___57_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___57_carry__0_i_1__0
       (.I0(\s_tmp_nomac_reg_n_0_[2][5] ),
        .I1(\bram0b[o][o_din]0_inferred__1/i___51_carry_n_5 ),
        .O(i___57_carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___57_carry__0_i_1__1
       (.I0(\s_tmp_nomac_reg_n_0_[3][5] ),
        .I1(\bram0b[o][o_din]0_inferred__2/i___51_carry_n_5 ),
        .O(i___57_carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___57_carry__0_i_2
       (.I0(\s_tmp_nomac_reg_n_0_[1][4] ),
        .I1(\bram0b[o][o_din]0_inferred__0/i___51_carry_n_6 ),
        .O(i___57_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___57_carry__0_i_2__0
       (.I0(\s_tmp_nomac_reg_n_0_[2][4] ),
        .I1(\bram0b[o][o_din]0_inferred__1/i___51_carry_n_6 ),
        .O(i___57_carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___57_carry__0_i_2__1
       (.I0(\s_tmp_nomac_reg_n_0_[3][4] ),
        .I1(\bram0b[o][o_din]0_inferred__2/i___51_carry_n_6 ),
        .O(i___57_carry__0_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___57_carry_i_1
       (.I0(\s_tmp_nomac_reg_n_0_[1][3] ),
        .I1(\bram0b[o][o_din]0_inferred__0/i___51_carry_n_7 ),
        .O(i___57_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___57_carry_i_1__0
       (.I0(\s_tmp_nomac_reg_n_0_[2][3] ),
        .I1(\bram0b[o][o_din]0_inferred__1/i___51_carry_n_7 ),
        .O(i___57_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___57_carry_i_1__1
       (.I0(\s_tmp_nomac_reg_n_0_[3][3] ),
        .I1(\bram0b[o][o_din]0_inferred__2/i___51_carry_n_7 ),
        .O(i___57_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___57_carry_i_2
       (.I0(\s_tmp_nomac_reg_n_0_[1][2] ),
        .I1(\bram0b[o][o_din]0_inferred__0/i___37_carry_n_5 ),
        .O(i___57_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___57_carry_i_2__0
       (.I0(\s_tmp_nomac_reg_n_0_[2][2] ),
        .I1(\bram0b[o][o_din]0_inferred__1/i___37_carry_n_5 ),
        .O(i___57_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___57_carry_i_2__1
       (.I0(\s_tmp_nomac_reg_n_0_[3][2] ),
        .I1(\bram0b[o][o_din]0_inferred__2/i___37_carry_n_5 ),
        .O(i___57_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___57_carry_i_3
       (.I0(\s_tmp_nomac_reg_n_0_[1][1] ),
        .I1(\bram0b[o][o_din]0_inferred__0/i___37_carry_n_6 ),
        .O(i___57_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___57_carry_i_3__0
       (.I0(\s_tmp_nomac_reg_n_0_[2][1] ),
        .I1(\bram0b[o][o_din]0_inferred__1/i___37_carry_n_6 ),
        .O(i___57_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___57_carry_i_3__1
       (.I0(\s_tmp_nomac_reg_n_0_[3][1] ),
        .I1(\bram0b[o][o_din]0_inferred__2/i___37_carry_n_6 ),
        .O(i___57_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___57_carry_i_4
       (.I0(\s_tmp_nomac_reg_n_0_[1][0] ),
        .I1(\bram0b[o][o_din]0_inferred__0/i___37_carry_n_7 ),
        .O(i___57_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___57_carry_i_4__0
       (.I0(\s_tmp_nomac_reg_n_0_[2][0] ),
        .I1(\bram0b[o][o_din]0_inferred__1/i___37_carry_n_7 ),
        .O(i___57_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___57_carry_i_4__1
       (.I0(\s_tmp_nomac_reg_n_0_[3][0] ),
        .I1(\bram0b[o][o_din]0_inferred__2/i___37_carry_n_7 ),
        .O(i___57_carry_i_4__1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___5_carry__0_i_1
       (.I0(\s_tmp_nomac_reg_n_0_[1][11] ),
        .I1(\s_tmp_nomac_reg_n_0_[1][1] ),
        .I2(\s_tmp_nomac_reg_n_0_[1][6] ),
        .O(i___5_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___5_carry__0_i_1__0
       (.I0(\s_tmp_nomac_reg_n_0_[2][11] ),
        .I1(\s_tmp_nomac_reg_n_0_[2][1] ),
        .I2(\s_tmp_nomac_reg_n_0_[2][6] ),
        .O(i___5_carry__0_i_1__0_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___5_carry__0_i_1__1
       (.I0(\s_tmp_nomac_reg_n_0_[3][11] ),
        .I1(\s_tmp_nomac_reg_n_0_[3][1] ),
        .I2(\s_tmp_nomac_reg_n_0_[3][6] ),
        .O(i___5_carry__0_i_1__1_n_0));
  LUT5 #(
    .INIT(32'h69969696)) 
    i___5_carry__0_i_2
       (.I0(\s_tmp_nomac_reg_n_0_[1][1] ),
        .I1(\s_tmp_nomac_reg_n_0_[1][6] ),
        .I2(\s_tmp_nomac_reg_n_0_[1][11] ),
        .I3(\s_tmp_nomac_reg_n_0_[1][5] ),
        .I4(\s_tmp_nomac_reg_n_0_[1][0] ),
        .O(i___5_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h69969696)) 
    i___5_carry__0_i_2__0
       (.I0(\s_tmp_nomac_reg_n_0_[2][1] ),
        .I1(\s_tmp_nomac_reg_n_0_[2][6] ),
        .I2(\s_tmp_nomac_reg_n_0_[2][11] ),
        .I3(\s_tmp_nomac_reg_n_0_[2][5] ),
        .I4(\s_tmp_nomac_reg_n_0_[2][0] ),
        .O(i___5_carry__0_i_2__0_n_0));
  LUT5 #(
    .INIT(32'h69969696)) 
    i___5_carry__0_i_2__1
       (.I0(\s_tmp_nomac_reg_n_0_[3][1] ),
        .I1(\s_tmp_nomac_reg_n_0_[3][6] ),
        .I2(\s_tmp_nomac_reg_n_0_[3][11] ),
        .I3(\s_tmp_nomac_reg_n_0_[3][5] ),
        .I4(\s_tmp_nomac_reg_n_0_[3][0] ),
        .O(i___5_carry__0_i_2__1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___5_carry__0_i_3
       (.I0(\s_tmp_nomac_reg_n_0_[1][0] ),
        .I1(\s_tmp_nomac_reg_n_0_[1][5] ),
        .I2(\s_tmp_nomac_reg_n_0_[1][10] ),
        .O(i___5_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___5_carry__0_i_3__0
       (.I0(\s_tmp_nomac_reg_n_0_[2][0] ),
        .I1(\s_tmp_nomac_reg_n_0_[2][5] ),
        .I2(\s_tmp_nomac_reg_n_0_[2][10] ),
        .O(i___5_carry__0_i_3__0_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___5_carry__0_i_3__1
       (.I0(\s_tmp_nomac_reg_n_0_[3][0] ),
        .I1(\s_tmp_nomac_reg_n_0_[3][5] ),
        .I2(\s_tmp_nomac_reg_n_0_[3][10] ),
        .O(i___5_carry__0_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___5_carry__0_i_4
       (.I0(\s_tmp_nomac_reg_n_0_[1][9] ),
        .I1(\s_tmp_nomac_reg_n_0_[1][4] ),
        .O(i___5_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___5_carry__0_i_4__0
       (.I0(\s_tmp_nomac_reg_n_0_[2][9] ),
        .I1(\s_tmp_nomac_reg_n_0_[2][4] ),
        .O(i___5_carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___5_carry__0_i_4__1
       (.I0(\s_tmp_nomac_reg_n_0_[3][9] ),
        .I1(\s_tmp_nomac_reg_n_0_[3][4] ),
        .O(i___5_carry__0_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___5_carry__0_i_5
       (.I0(\s_tmp_nomac_reg_n_0_[1][8] ),
        .I1(\s_tmp_nomac_reg_n_0_[1][3] ),
        .O(i___5_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___5_carry__0_i_5__0
       (.I0(\s_tmp_nomac_reg_n_0_[2][8] ),
        .I1(\s_tmp_nomac_reg_n_0_[2][3] ),
        .O(i___5_carry__0_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___5_carry__0_i_5__1
       (.I0(\s_tmp_nomac_reg_n_0_[3][8] ),
        .I1(\s_tmp_nomac_reg_n_0_[3][3] ),
        .O(i___5_carry__0_i_5__1_n_0));
  (* HLUTNM = "lutpair33" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    i___5_carry__1_i_1
       (.I0(\s_tmp_nomac_reg_n_0_[1][4] ),
        .I1(\s_tmp_nomac_reg_n_0_[1][9] ),
        .I2(\s_tmp_nomac_reg_n_0_[1][14] ),
        .O(i___5_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair34" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    i___5_carry__1_i_1__0
       (.I0(\s_tmp_nomac_reg_n_0_[2][4] ),
        .I1(\s_tmp_nomac_reg_n_0_[2][9] ),
        .I2(\s_tmp_nomac_reg_n_0_[2][14] ),
        .O(i___5_carry__1_i_1__0_n_0));
  (* HLUTNM = "lutpair35" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    i___5_carry__1_i_1__1
       (.I0(\s_tmp_nomac_reg_n_0_[3][4] ),
        .I1(\s_tmp_nomac_reg_n_0_[3][9] ),
        .I2(\s_tmp_nomac_reg_n_0_[3][14] ),
        .O(i___5_carry__1_i_1__1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    i___5_carry__1_i_2
       (.I0(\s_tmp_nomac_reg_n_0_[1][3] ),
        .I1(\s_tmp_nomac_reg_n_0_[1][8] ),
        .I2(\s_tmp_nomac_reg_n_0_[1][13] ),
        .O(i___5_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    i___5_carry__1_i_2__0
       (.I0(\s_tmp_nomac_reg_n_0_[2][3] ),
        .I1(\s_tmp_nomac_reg_n_0_[2][8] ),
        .I2(\s_tmp_nomac_reg_n_0_[2][13] ),
        .O(i___5_carry__1_i_2__0_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    i___5_carry__1_i_2__1
       (.I0(\s_tmp_nomac_reg_n_0_[3][3] ),
        .I1(\s_tmp_nomac_reg_n_0_[3][8] ),
        .I2(\s_tmp_nomac_reg_n_0_[3][13] ),
        .O(i___5_carry__1_i_2__1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    i___5_carry__1_i_3
       (.I0(\s_tmp_nomac_reg_n_0_[1][2] ),
        .I1(\s_tmp_nomac_reg_n_0_[1][7] ),
        .I2(\s_tmp_nomac_reg_n_0_[1][12] ),
        .O(i___5_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    i___5_carry__1_i_3__0
       (.I0(\s_tmp_nomac_reg_n_0_[2][2] ),
        .I1(\s_tmp_nomac_reg_n_0_[2][7] ),
        .I2(\s_tmp_nomac_reg_n_0_[2][12] ),
        .O(i___5_carry__1_i_3__0_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    i___5_carry__1_i_3__1
       (.I0(\s_tmp_nomac_reg_n_0_[3][2] ),
        .I1(\s_tmp_nomac_reg_n_0_[3][7] ),
        .I2(\s_tmp_nomac_reg_n_0_[3][12] ),
        .O(i___5_carry__1_i_3__1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    i___5_carry__1_i_4
       (.I0(\s_tmp_nomac_reg_n_0_[1][1] ),
        .I1(\s_tmp_nomac_reg_n_0_[1][6] ),
        .I2(\s_tmp_nomac_reg_n_0_[1][11] ),
        .O(i___5_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    i___5_carry__1_i_4__0
       (.I0(\s_tmp_nomac_reg_n_0_[2][1] ),
        .I1(\s_tmp_nomac_reg_n_0_[2][6] ),
        .I2(\s_tmp_nomac_reg_n_0_[2][11] ),
        .O(i___5_carry__1_i_4__0_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    i___5_carry__1_i_4__1
       (.I0(\s_tmp_nomac_reg_n_0_[3][1] ),
        .I1(\s_tmp_nomac_reg_n_0_[3][6] ),
        .I2(\s_tmp_nomac_reg_n_0_[3][11] ),
        .O(i___5_carry__1_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    i___5_carry__1_i_5
       (.I0(i___5_carry__1_i_1_n_0),
        .I1(\s_tmp_nomac_reg_n_0_[1][10] ),
        .I2(\s_tmp_nomac_reg_n_0_[1][5] ),
        .I3(\s_tmp_nomac_reg_n_0_[1][15] ),
        .O(i___5_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    i___5_carry__1_i_5__0
       (.I0(i___5_carry__1_i_1__0_n_0),
        .I1(\s_tmp_nomac_reg_n_0_[2][10] ),
        .I2(\s_tmp_nomac_reg_n_0_[2][5] ),
        .I3(\s_tmp_nomac_reg_n_0_[2][15] ),
        .O(i___5_carry__1_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    i___5_carry__1_i_5__1
       (.I0(i___5_carry__1_i_1__1_n_0),
        .I1(\s_tmp_nomac_reg_n_0_[3][10] ),
        .I2(\s_tmp_nomac_reg_n_0_[3][5] ),
        .I3(\s_tmp_nomac_reg_n_0_[3][15] ),
        .O(i___5_carry__1_i_5__1_n_0));
  (* HLUTNM = "lutpair33" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    i___5_carry__1_i_6
       (.I0(\s_tmp_nomac_reg_n_0_[1][4] ),
        .I1(\s_tmp_nomac_reg_n_0_[1][9] ),
        .I2(\s_tmp_nomac_reg_n_0_[1][14] ),
        .I3(i___5_carry__1_i_2_n_0),
        .O(i___5_carry__1_i_6_n_0));
  (* HLUTNM = "lutpair34" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    i___5_carry__1_i_6__0
       (.I0(\s_tmp_nomac_reg_n_0_[2][4] ),
        .I1(\s_tmp_nomac_reg_n_0_[2][9] ),
        .I2(\s_tmp_nomac_reg_n_0_[2][14] ),
        .I3(i___5_carry__1_i_2__0_n_0),
        .O(i___5_carry__1_i_6__0_n_0));
  (* HLUTNM = "lutpair35" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    i___5_carry__1_i_6__1
       (.I0(\s_tmp_nomac_reg_n_0_[3][4] ),
        .I1(\s_tmp_nomac_reg_n_0_[3][9] ),
        .I2(\s_tmp_nomac_reg_n_0_[3][14] ),
        .I3(i___5_carry__1_i_2__1_n_0),
        .O(i___5_carry__1_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    i___5_carry__1_i_7
       (.I0(\s_tmp_nomac_reg_n_0_[1][3] ),
        .I1(\s_tmp_nomac_reg_n_0_[1][8] ),
        .I2(\s_tmp_nomac_reg_n_0_[1][13] ),
        .I3(i___5_carry__1_i_3_n_0),
        .O(i___5_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    i___5_carry__1_i_7__0
       (.I0(\s_tmp_nomac_reg_n_0_[2][3] ),
        .I1(\s_tmp_nomac_reg_n_0_[2][8] ),
        .I2(\s_tmp_nomac_reg_n_0_[2][13] ),
        .I3(i___5_carry__1_i_3__0_n_0),
        .O(i___5_carry__1_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    i___5_carry__1_i_7__1
       (.I0(\s_tmp_nomac_reg_n_0_[3][3] ),
        .I1(\s_tmp_nomac_reg_n_0_[3][8] ),
        .I2(\s_tmp_nomac_reg_n_0_[3][13] ),
        .I3(i___5_carry__1_i_3__1_n_0),
        .O(i___5_carry__1_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    i___5_carry__1_i_8
       (.I0(\s_tmp_nomac_reg_n_0_[1][2] ),
        .I1(\s_tmp_nomac_reg_n_0_[1][7] ),
        .I2(\s_tmp_nomac_reg_n_0_[1][12] ),
        .I3(i___5_carry__1_i_4_n_0),
        .O(i___5_carry__1_i_8_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    i___5_carry__1_i_8__0
       (.I0(\s_tmp_nomac_reg_n_0_[2][2] ),
        .I1(\s_tmp_nomac_reg_n_0_[2][7] ),
        .I2(\s_tmp_nomac_reg_n_0_[2][12] ),
        .I3(i___5_carry__1_i_4__0_n_0),
        .O(i___5_carry__1_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    i___5_carry__1_i_8__1
       (.I0(\s_tmp_nomac_reg_n_0_[3][2] ),
        .I1(\s_tmp_nomac_reg_n_0_[3][7] ),
        .I2(\s_tmp_nomac_reg_n_0_[3][12] ),
        .I3(i___5_carry__1_i_4__1_n_0),
        .O(i___5_carry__1_i_8__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i___5_carry__2_i_1
       (.I0(\s_tmp_nomac_reg_n_0_[1][13] ),
        .I1(\s_tmp_nomac_reg_n_0_[1][8] ),
        .O(i___5_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i___5_carry__2_i_1__0
       (.I0(\s_tmp_nomac_reg_n_0_[2][13] ),
        .I1(\s_tmp_nomac_reg_n_0_[2][8] ),
        .O(i___5_carry__2_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i___5_carry__2_i_1__1
       (.I0(\s_tmp_nomac_reg_n_0_[3][13] ),
        .I1(\s_tmp_nomac_reg_n_0_[3][8] ),
        .O(i___5_carry__2_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i___5_carry__2_i_2
       (.I0(\s_tmp_nomac_reg_n_0_[1][12] ),
        .I1(\s_tmp_nomac_reg_n_0_[1][7] ),
        .O(i___5_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i___5_carry__2_i_2__0
       (.I0(\s_tmp_nomac_reg_n_0_[2][12] ),
        .I1(\s_tmp_nomac_reg_n_0_[2][7] ),
        .O(i___5_carry__2_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i___5_carry__2_i_2__1
       (.I0(\s_tmp_nomac_reg_n_0_[3][12] ),
        .I1(\s_tmp_nomac_reg_n_0_[3][7] ),
        .O(i___5_carry__2_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i___5_carry__2_i_3
       (.I0(\s_tmp_nomac_reg_n_0_[1][11] ),
        .I1(\s_tmp_nomac_reg_n_0_[1][6] ),
        .O(i___5_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i___5_carry__2_i_3__0
       (.I0(\s_tmp_nomac_reg_n_0_[2][11] ),
        .I1(\s_tmp_nomac_reg_n_0_[2][6] ),
        .O(i___5_carry__2_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i___5_carry__2_i_3__1
       (.I0(\s_tmp_nomac_reg_n_0_[3][11] ),
        .I1(\s_tmp_nomac_reg_n_0_[3][6] ),
        .O(i___5_carry__2_i_3__1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    i___5_carry__2_i_4
       (.I0(\s_tmp_nomac_reg_n_0_[1][5] ),
        .I1(\s_tmp_nomac_reg_n_0_[1][10] ),
        .I2(\s_tmp_nomac_reg_n_0_[1][15] ),
        .O(i___5_carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    i___5_carry__2_i_4__0
       (.I0(\s_tmp_nomac_reg_n_0_[2][5] ),
        .I1(\s_tmp_nomac_reg_n_0_[2][10] ),
        .I2(\s_tmp_nomac_reg_n_0_[2][15] ),
        .O(i___5_carry__2_i_4__0_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    i___5_carry__2_i_4__1
       (.I0(\s_tmp_nomac_reg_n_0_[3][5] ),
        .I1(\s_tmp_nomac_reg_n_0_[3][10] ),
        .I2(\s_tmp_nomac_reg_n_0_[3][15] ),
        .O(i___5_carry__2_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i___5_carry__2_i_5
       (.I0(\s_tmp_nomac_reg_n_0_[1][13] ),
        .I1(\s_tmp_nomac_reg_n_0_[1][8] ),
        .I2(\s_tmp_nomac_reg_n_0_[1][9] ),
        .I3(\s_tmp_nomac_reg_n_0_[1][14] ),
        .O(i___5_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i___5_carry__2_i_5__0
       (.I0(\s_tmp_nomac_reg_n_0_[2][13] ),
        .I1(\s_tmp_nomac_reg_n_0_[2][8] ),
        .I2(\s_tmp_nomac_reg_n_0_[2][9] ),
        .I3(\s_tmp_nomac_reg_n_0_[2][14] ),
        .O(i___5_carry__2_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i___5_carry__2_i_5__1
       (.I0(\s_tmp_nomac_reg_n_0_[3][13] ),
        .I1(\s_tmp_nomac_reg_n_0_[3][8] ),
        .I2(\s_tmp_nomac_reg_n_0_[3][9] ),
        .I3(\s_tmp_nomac_reg_n_0_[3][14] ),
        .O(i___5_carry__2_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i___5_carry__2_i_6
       (.I0(\s_tmp_nomac_reg_n_0_[1][12] ),
        .I1(\s_tmp_nomac_reg_n_0_[1][7] ),
        .I2(\s_tmp_nomac_reg_n_0_[1][8] ),
        .I3(\s_tmp_nomac_reg_n_0_[1][13] ),
        .O(i___5_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i___5_carry__2_i_6__0
       (.I0(\s_tmp_nomac_reg_n_0_[2][12] ),
        .I1(\s_tmp_nomac_reg_n_0_[2][7] ),
        .I2(\s_tmp_nomac_reg_n_0_[2][8] ),
        .I3(\s_tmp_nomac_reg_n_0_[2][13] ),
        .O(i___5_carry__2_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i___5_carry__2_i_6__1
       (.I0(\s_tmp_nomac_reg_n_0_[3][12] ),
        .I1(\s_tmp_nomac_reg_n_0_[3][7] ),
        .I2(\s_tmp_nomac_reg_n_0_[3][8] ),
        .I3(\s_tmp_nomac_reg_n_0_[3][13] ),
        .O(i___5_carry__2_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i___5_carry__2_i_7
       (.I0(\s_tmp_nomac_reg_n_0_[1][11] ),
        .I1(\s_tmp_nomac_reg_n_0_[1][6] ),
        .I2(\s_tmp_nomac_reg_n_0_[1][7] ),
        .I3(\s_tmp_nomac_reg_n_0_[1][12] ),
        .O(i___5_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i___5_carry__2_i_7__0
       (.I0(\s_tmp_nomac_reg_n_0_[2][11] ),
        .I1(\s_tmp_nomac_reg_n_0_[2][6] ),
        .I2(\s_tmp_nomac_reg_n_0_[2][7] ),
        .I3(\s_tmp_nomac_reg_n_0_[2][12] ),
        .O(i___5_carry__2_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i___5_carry__2_i_7__1
       (.I0(\s_tmp_nomac_reg_n_0_[3][11] ),
        .I1(\s_tmp_nomac_reg_n_0_[3][6] ),
        .I2(\s_tmp_nomac_reg_n_0_[3][7] ),
        .I3(\s_tmp_nomac_reg_n_0_[3][12] ),
        .O(i___5_carry__2_i_7__1_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    i___5_carry__2_i_8
       (.I0(\s_tmp_nomac_reg_n_0_[1][15] ),
        .I1(\s_tmp_nomac_reg_n_0_[1][10] ),
        .I2(\s_tmp_nomac_reg_n_0_[1][5] ),
        .I3(\s_tmp_nomac_reg_n_0_[1][6] ),
        .I4(\s_tmp_nomac_reg_n_0_[1][11] ),
        .O(i___5_carry__2_i_8_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    i___5_carry__2_i_8__0
       (.I0(\s_tmp_nomac_reg_n_0_[2][15] ),
        .I1(\s_tmp_nomac_reg_n_0_[2][10] ),
        .I2(\s_tmp_nomac_reg_n_0_[2][5] ),
        .I3(\s_tmp_nomac_reg_n_0_[2][6] ),
        .I4(\s_tmp_nomac_reg_n_0_[2][11] ),
        .O(i___5_carry__2_i_8__0_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    i___5_carry__2_i_8__1
       (.I0(\s_tmp_nomac_reg_n_0_[3][15] ),
        .I1(\s_tmp_nomac_reg_n_0_[3][10] ),
        .I2(\s_tmp_nomac_reg_n_0_[3][5] ),
        .I3(\s_tmp_nomac_reg_n_0_[3][6] ),
        .I4(\s_tmp_nomac_reg_n_0_[3][11] ),
        .O(i___5_carry__2_i_8__1_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i___5_carry__3_i_1
       (.I0(\s_tmp_nomac_reg_n_0_[1][14] ),
        .I1(\s_tmp_nomac_reg_n_0_[1][9] ),
        .I2(\s_tmp_nomac_reg_n_0_[1][10] ),
        .I3(\s_tmp_nomac_reg_n_0_[1][15] ),
        .O(i___5_carry__3_i_1_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i___5_carry__3_i_1__0
       (.I0(\s_tmp_nomac_reg_n_0_[2][14] ),
        .I1(\s_tmp_nomac_reg_n_0_[2][9] ),
        .I2(\s_tmp_nomac_reg_n_0_[2][10] ),
        .I3(\s_tmp_nomac_reg_n_0_[2][15] ),
        .O(i___5_carry__3_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i___5_carry__3_i_1__1
       (.I0(\s_tmp_nomac_reg_n_0_[3][14] ),
        .I1(\s_tmp_nomac_reg_n_0_[3][9] ),
        .I2(\s_tmp_nomac_reg_n_0_[3][10] ),
        .I3(\s_tmp_nomac_reg_n_0_[3][15] ),
        .O(i___5_carry__3_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___5_carry_i_1
       (.I0(\s_tmp_nomac_reg_n_0_[1][7] ),
        .I1(\s_tmp_nomac_reg_n_0_[1][2] ),
        .O(i___5_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___5_carry_i_1__0
       (.I0(\s_tmp_nomac_reg_n_0_[2][7] ),
        .I1(\s_tmp_nomac_reg_n_0_[2][2] ),
        .O(i___5_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___5_carry_i_1__1
       (.I0(\s_tmp_nomac_reg_n_0_[3][7] ),
        .I1(\s_tmp_nomac_reg_n_0_[3][2] ),
        .O(i___5_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___5_carry_i_2
       (.I0(\s_tmp_nomac_reg_n_0_[1][6] ),
        .I1(\s_tmp_nomac_reg_n_0_[1][1] ),
        .O(i___5_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___5_carry_i_2__0
       (.I0(\s_tmp_nomac_reg_n_0_[2][6] ),
        .I1(\s_tmp_nomac_reg_n_0_[2][1] ),
        .O(i___5_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___5_carry_i_2__1
       (.I0(\s_tmp_nomac_reg_n_0_[3][6] ),
        .I1(\s_tmp_nomac_reg_n_0_[3][1] ),
        .O(i___5_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___5_carry_i_3
       (.I0(\s_tmp_nomac_reg_n_0_[1][5] ),
        .I1(\s_tmp_nomac_reg_n_0_[1][0] ),
        .O(i___5_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___5_carry_i_3__0
       (.I0(\s_tmp_nomac_reg_n_0_[2][5] ),
        .I1(\s_tmp_nomac_reg_n_0_[2][0] ),
        .O(i___5_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___5_carry_i_3__1
       (.I0(\s_tmp_nomac_reg_n_0_[3][5] ),
        .I1(\s_tmp_nomac_reg_n_0_[3][0] ),
        .O(i___5_carry_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_1
       (.I0(\i_reg_n_0_[14] ),
        .I1(minusOp[14]),
        .I2(minusOp[15]),
        .I3(\i_reg_n_0_[15] ),
        .O(i__carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1__0
       (.I0(o_mem1a_addr[5]),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__0_i_1__1
       (.I0(\j_reg_n_0_[6] ),
        .I1(s_vecs_addr[6]),
        .O(i__carry__0_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_2
       (.I0(\i_reg_n_0_[12] ),
        .I1(minusOp[12]),
        .I2(minusOp[13]),
        .I3(\i_reg_n_0_[13] ),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__0_i_2__0
       (.I0(\j_reg_n_0_[5] ),
        .I1(s_vecs_addr[5]),
        .O(i__carry__0_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_3
       (.I0(\i_reg_n_0_[10] ),
        .I1(minusOp[10]),
        .I2(minusOp[11]),
        .I3(\i_reg_n_0_[11] ),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__0_i_3__0
       (.I0(\j_reg_n_0_[4] ),
        .I1(s_vecs_addr[4]),
        .O(i__carry__0_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_4
       (.I0(\i_reg_n_0_[8] ),
        .I1(minusOp[8]),
        .I2(minusOp[9]),
        .I3(\i_reg_n_0_[9] ),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__0_i_4__0
       (.I0(\j_reg_n_0_[3] ),
        .I1(s_vecs_addr[3]),
        .O(i__carry__0_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5
       (.I0(\i_reg_n_0_[14] ),
        .I1(minusOp[14]),
        .I2(\i_reg_n_0_[15] ),
        .I3(minusOp[15]),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__0_i_5__0
       (.I0(s_vecs_addr[6]),
        .I1(\j_reg_n_0_[6] ),
        .I2(\j_reg_n_0_[7] ),
        .I3(s_vecs_addr[7]),
        .O(i__carry__0_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6
       (.I0(\i_reg_n_0_[12] ),
        .I1(minusOp[12]),
        .I2(\i_reg_n_0_[13] ),
        .I3(minusOp[13]),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__0_i_6__0
       (.I0(s_vecs_addr[5]),
        .I1(\j_reg_n_0_[5] ),
        .I2(\j_reg_n_0_[6] ),
        .I3(s_vecs_addr[6]),
        .O(i__carry__0_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7
       (.I0(\i_reg_n_0_[10] ),
        .I1(minusOp[10]),
        .I2(\i_reg_n_0_[11] ),
        .I3(minusOp[11]),
        .O(i__carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__0_i_7__0
       (.I0(s_vecs_addr[4]),
        .I1(\j_reg_n_0_[4] ),
        .I2(\j_reg_n_0_[5] ),
        .I3(s_vecs_addr[5]),
        .O(i__carry__0_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8
       (.I0(\i_reg_n_0_[8] ),
        .I1(minusOp[8]),
        .I2(\i_reg_n_0_[9] ),
        .I3(minusOp[9]),
        .O(i__carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__0_i_8__0
       (.I0(s_vecs_addr[3]),
        .I1(\j_reg_n_0_[3] ),
        .I2(\j_reg_n_0_[4] ),
        .I3(s_vecs_addr[4]),
        .O(i__carry__0_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_1
       (.I0(\i_reg_n_0_[22] ),
        .I1(minusOp[22]),
        .I2(minusOp[23]),
        .I3(\i_reg_n_0_[23] ),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__1_i_1__0
       (.I0(\j_reg_n_0_[10] ),
        .I1(s_vecs_addr[10]),
        .O(i__carry__1_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_2
       (.I0(\i_reg_n_0_[20] ),
        .I1(minusOp[20]),
        .I2(minusOp[21]),
        .I3(\i_reg_n_0_[21] ),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__1_i_2__0
       (.I0(\j_reg_n_0_[9] ),
        .I1(s_vecs_addr[9]),
        .O(i__carry__1_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_3
       (.I0(\i_reg_n_0_[18] ),
        .I1(minusOp[18]),
        .I2(minusOp[19]),
        .I3(\i_reg_n_0_[19] ),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__1_i_3__0
       (.I0(\j_reg_n_0_[8] ),
        .I1(s_vecs_addr[8]),
        .O(i__carry__1_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_4
       (.I0(\i_reg_n_0_[16] ),
        .I1(minusOp[16]),
        .I2(minusOp[17]),
        .I3(\i_reg_n_0_[17] ),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__1_i_4__0
       (.I0(\j_reg_n_0_[7] ),
        .I1(s_vecs_addr[7]),
        .O(i__carry__1_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_5
       (.I0(\i_reg_n_0_[22] ),
        .I1(minusOp[22]),
        .I2(\i_reg_n_0_[23] ),
        .I3(minusOp[23]),
        .O(i__carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__1_i_5__0
       (.I0(s_vecs_addr[10]),
        .I1(\j_reg_n_0_[10] ),
        .I2(\j_reg_n_0_[11] ),
        .I3(s_vecs_addr[11]),
        .O(i__carry__1_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_6
       (.I0(\i_reg_n_0_[20] ),
        .I1(minusOp[20]),
        .I2(\i_reg_n_0_[21] ),
        .I3(minusOp[21]),
        .O(i__carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__1_i_6__0
       (.I0(s_vecs_addr[9]),
        .I1(\j_reg_n_0_[9] ),
        .I2(\j_reg_n_0_[10] ),
        .I3(s_vecs_addr[10]),
        .O(i__carry__1_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_7
       (.I0(\i_reg_n_0_[18] ),
        .I1(minusOp[18]),
        .I2(\i_reg_n_0_[19] ),
        .I3(minusOp[19]),
        .O(i__carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__1_i_7__0
       (.I0(s_vecs_addr[8]),
        .I1(\j_reg_n_0_[8] ),
        .I2(\j_reg_n_0_[9] ),
        .I3(s_vecs_addr[9]),
        .O(i__carry__1_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_8
       (.I0(\i_reg_n_0_[16] ),
        .I1(minusOp[16]),
        .I2(\i_reg_n_0_[17] ),
        .I3(minusOp[17]),
        .O(i__carry__1_i_8_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__1_i_8__0
       (.I0(s_vecs_addr[7]),
        .I1(\j_reg_n_0_[7] ),
        .I2(\j_reg_n_0_[8] ),
        .I3(s_vecs_addr[8]),
        .O(i__carry__1_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_1
       (.I0(\i_reg_n_0_[30] ),
        .I1(minusOp[30]),
        .I2(minusOp[31]),
        .I3(\i_reg_n_0_[31] ),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__2_i_1__0
       (.I0(\j_reg_n_0_[14] ),
        .I1(s_vecs_addr[14]),
        .O(i__carry__2_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_2
       (.I0(\i_reg_n_0_[28] ),
        .I1(minusOp[28]),
        .I2(minusOp[29]),
        .I3(\i_reg_n_0_[29] ),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__2_i_2__0
       (.I0(\j_reg_n_0_[13] ),
        .I1(s_vecs_addr[13]),
        .O(i__carry__2_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_3
       (.I0(\i_reg_n_0_[26] ),
        .I1(minusOp[26]),
        .I2(minusOp[27]),
        .I3(\i_reg_n_0_[27] ),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__2_i_3__0
       (.I0(\j_reg_n_0_[12] ),
        .I1(s_vecs_addr[12]),
        .O(i__carry__2_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_4
       (.I0(\i_reg_n_0_[24] ),
        .I1(minusOp[24]),
        .I2(minusOp[25]),
        .I3(\i_reg_n_0_[25] ),
        .O(i__carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__2_i_4__0
       (.I0(\j_reg_n_0_[11] ),
        .I1(s_vecs_addr[11]),
        .O(i__carry__2_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_5
       (.I0(\i_reg_n_0_[30] ),
        .I1(minusOp[30]),
        .I2(\i_reg_n_0_[31] ),
        .I3(minusOp[31]),
        .O(i__carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__2_i_5__0
       (.I0(s_vecs_addr[14]),
        .I1(\j_reg_n_0_[14] ),
        .I2(\j_reg_n_0_[15] ),
        .I3(s_vecs_addr[15]),
        .O(i__carry__2_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_6
       (.I0(\i_reg_n_0_[28] ),
        .I1(minusOp[28]),
        .I2(\i_reg_n_0_[29] ),
        .I3(minusOp[29]),
        .O(i__carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__2_i_6__0
       (.I0(s_vecs_addr[13]),
        .I1(\j_reg_n_0_[13] ),
        .I2(\j_reg_n_0_[14] ),
        .I3(s_vecs_addr[14]),
        .O(i__carry__2_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_7
       (.I0(\i_reg_n_0_[26] ),
        .I1(minusOp[26]),
        .I2(\i_reg_n_0_[27] ),
        .I3(minusOp[27]),
        .O(i__carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__2_i_7__0
       (.I0(s_vecs_addr[12]),
        .I1(\j_reg_n_0_[12] ),
        .I2(\j_reg_n_0_[13] ),
        .I3(s_vecs_addr[13]),
        .O(i__carry__2_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_8
       (.I0(\i_reg_n_0_[24] ),
        .I1(minusOp[24]),
        .I2(\i_reg_n_0_[25] ),
        .I3(minusOp[25]),
        .O(i__carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__2_i_8__0
       (.I0(s_vecs_addr[11]),
        .I1(\j_reg_n_0_[11] ),
        .I2(\j_reg_n_0_[12] ),
        .I3(s_vecs_addr[12]),
        .O(i__carry__2_i_8__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__3_i_1
       (.I0(\j_reg_n_0_[18] ),
        .I1(s_vecs_addr[18]),
        .O(i__carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__3_i_2
       (.I0(\j_reg_n_0_[17] ),
        .I1(s_vecs_addr[17]),
        .O(i__carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__3_i_3
       (.I0(\j_reg_n_0_[16] ),
        .I1(s_vecs_addr[16]),
        .O(i__carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__3_i_4
       (.I0(\j_reg_n_0_[15] ),
        .I1(s_vecs_addr[15]),
        .O(i__carry__3_i_4_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__3_i_5
       (.I0(s_vecs_addr[18]),
        .I1(\j_reg_n_0_[18] ),
        .I2(\j_reg_n_0_[19] ),
        .I3(s_vecs_addr[19]),
        .O(i__carry__3_i_5_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__3_i_6
       (.I0(s_vecs_addr[17]),
        .I1(\j_reg_n_0_[17] ),
        .I2(\j_reg_n_0_[18] ),
        .I3(s_vecs_addr[18]),
        .O(i__carry__3_i_6_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__3_i_7
       (.I0(s_vecs_addr[16]),
        .I1(\j_reg_n_0_[16] ),
        .I2(\j_reg_n_0_[17] ),
        .I3(s_vecs_addr[17]),
        .O(i__carry__3_i_7_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__3_i_8
       (.I0(s_vecs_addr[15]),
        .I1(\j_reg_n_0_[15] ),
        .I2(\j_reg_n_0_[16] ),
        .I3(s_vecs_addr[16]),
        .O(i__carry__3_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__4_i_1
       (.I0(\j_reg_n_0_[22] ),
        .I1(s_vecs_addr[22]),
        .O(i__carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__4_i_2
       (.I0(\j_reg_n_0_[21] ),
        .I1(s_vecs_addr[21]),
        .O(i__carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__4_i_3
       (.I0(\j_reg_n_0_[20] ),
        .I1(s_vecs_addr[20]),
        .O(i__carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__4_i_4
       (.I0(\j_reg_n_0_[19] ),
        .I1(s_vecs_addr[19]),
        .O(i__carry__4_i_4_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__4_i_5
       (.I0(s_vecs_addr[22]),
        .I1(\j_reg_n_0_[22] ),
        .I2(\j_reg_n_0_[23] ),
        .I3(s_vecs_addr[23]),
        .O(i__carry__4_i_5_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__4_i_6
       (.I0(s_vecs_addr[21]),
        .I1(\j_reg_n_0_[21] ),
        .I2(\j_reg_n_0_[22] ),
        .I3(s_vecs_addr[22]),
        .O(i__carry__4_i_6_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__4_i_7
       (.I0(s_vecs_addr[20]),
        .I1(\j_reg_n_0_[20] ),
        .I2(\j_reg_n_0_[21] ),
        .I3(s_vecs_addr[21]),
        .O(i__carry__4_i_7_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__4_i_8
       (.I0(s_vecs_addr[19]),
        .I1(\j_reg_n_0_[19] ),
        .I2(\j_reg_n_0_[20] ),
        .I3(s_vecs_addr[20]),
        .O(i__carry__4_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__5_i_1
       (.I0(\j_reg_n_0_[26] ),
        .I1(s_vecs_addr[26]),
        .O(i__carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__5_i_2
       (.I0(\j_reg_n_0_[25] ),
        .I1(s_vecs_addr[25]),
        .O(i__carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__5_i_3
       (.I0(\j_reg_n_0_[24] ),
        .I1(s_vecs_addr[24]),
        .O(i__carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__5_i_4
       (.I0(\j_reg_n_0_[23] ),
        .I1(s_vecs_addr[23]),
        .O(i__carry__5_i_4_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__5_i_5
       (.I0(s_vecs_addr[26]),
        .I1(\j_reg_n_0_[26] ),
        .I2(\j_reg_n_0_[27] ),
        .I3(s_vecs_addr[27]),
        .O(i__carry__5_i_5_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__5_i_6
       (.I0(s_vecs_addr[25]),
        .I1(\j_reg_n_0_[25] ),
        .I2(\j_reg_n_0_[26] ),
        .I3(s_vecs_addr[26]),
        .O(i__carry__5_i_6_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__5_i_7
       (.I0(s_vecs_addr[24]),
        .I1(\j_reg_n_0_[24] ),
        .I2(\j_reg_n_0_[25] ),
        .I3(s_vecs_addr[25]),
        .O(i__carry__5_i_7_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__5_i_8
       (.I0(s_vecs_addr[23]),
        .I1(\j_reg_n_0_[23] ),
        .I2(\j_reg_n_0_[24] ),
        .I3(s_vecs_addr[24]),
        .O(i__carry__5_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__6_i_1
       (.I0(\j_reg_n_0_[29] ),
        .I1(s_vecs_addr[29]),
        .O(i__carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__6_i_2
       (.I0(\j_reg_n_0_[28] ),
        .I1(s_vecs_addr[28]),
        .O(i__carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__6_i_3
       (.I0(\j_reg_n_0_[27] ),
        .I1(s_vecs_addr[27]),
        .O(i__carry__6_i_3_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    i__carry__6_i_4
       (.I0(s_vecs_addr[30]),
        .I1(\j_reg_n_0_[30] ),
        .I2(s_vecs_addr[31]),
        .O(i__carry__6_i_4_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__6_i_5
       (.I0(s_vecs_addr[29]),
        .I1(\j_reg_n_0_[29] ),
        .I2(\j_reg_n_0_[30] ),
        .I3(s_vecs_addr[30]),
        .O(i__carry__6_i_5_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__6_i_6
       (.I0(s_vecs_addr[28]),
        .I1(\j_reg_n_0_[28] ),
        .I2(\j_reg_n_0_[29] ),
        .I3(s_vecs_addr[29]),
        .O(i__carry__6_i_6_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__6_i_7
       (.I0(s_vecs_addr[27]),
        .I1(\j_reg_n_0_[27] ),
        .I2(\j_reg_n_0_[28] ),
        .I3(s_vecs_addr[28]),
        .O(i__carry__6_i_7_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1
       (.I0(\i_reg_n_0_[6] ),
        .I1(minusOp[6]),
        .I2(minusOp[7]),
        .I3(\i_reg_n_0_[7] ),
        .O(i__carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1__0
       (.I0(o_mem1a_addr[4]),
        .O(i__carry_i_1__0_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_1__1
       (.I0(\j_reg_n_0_[2] ),
        .I1(\j_reg_n_0_[3] ),
        .I2(s_vecs_addr[3]),
        .O(i__carry_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2
       (.I0(\i_reg_n_0_[4] ),
        .I1(minusOp[4]),
        .I2(minusOp[5]),
        .I3(\i_reg_n_0_[5] ),
        .O(i__carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2__0
       (.I0(o_mem1a_addr[3]),
        .O(i__carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__1
       (.I0(\j_reg_n_0_[2] ),
        .I1(s_vecs_addr[2]),
        .O(i__carry_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3
       (.I0(\i_reg_n_0_[2] ),
        .I1(minusOp[2]),
        .I2(minusOp[3]),
        .I3(\i_reg_n_0_[3] ),
        .O(i__carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3__0
       (.I0(o_mem1a_addr[2]),
        .O(i__carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3__1
       (.I0(s_vecs_addr[1]),
        .I1(\j_reg_n_0_[1] ),
        .O(i__carry_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h8F08)) 
    i__carry_i_4
       (.I0(\s_len_reg_n_0_[0] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(minusOp[1]),
        .I3(\i_reg_n_0_[1] ),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(\i_reg_n_0_[6] ),
        .I1(minusOp[6]),
        .I2(\i_reg_n_0_[7] ),
        .I3(minusOp[7]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(\i_reg_n_0_[4] ),
        .I1(minusOp[4]),
        .I2(\i_reg_n_0_[5] ),
        .I3(minusOp[5]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(\i_reg_n_0_[2] ),
        .I1(minusOp[2]),
        .I2(\i_reg_n_0_[3] ),
        .I3(minusOp[3]),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    i__carry_i_8
       (.I0(\i_reg_n_0_[0] ),
        .I1(\s_len_reg_n_0_[0] ),
        .I2(\i_reg_n_0_[1] ),
        .I3(minusOp[1]),
        .O(i__carry_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(\i[0]_i_1_n_0 ),
        .Q(\i_reg_n_0_[0] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[10] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(\i[10]_i_1_n_0 ),
        .Q(\i_reg_n_0_[10] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[11] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(\i[11]_i_1_n_0 ),
        .Q(\i_reg_n_0_[11] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[12] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(\i[12]_i_1_n_0 ),
        .Q(\i_reg_n_0_[12] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[13] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(\i[13]_i_1_n_0 ),
        .Q(\i_reg_n_0_[13] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[14] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(\i[14]_i_1_n_0 ),
        .Q(\i_reg_n_0_[14] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[15] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(\i[15]_i_1_n_0 ),
        .Q(\i_reg_n_0_[15] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[16] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(\i[16]_i_1_n_0 ),
        .Q(\i_reg_n_0_[16] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[17] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(\i[17]_i_1_n_0 ),
        .Q(\i_reg_n_0_[17] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[18] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(\i[18]_i_1_n_0 ),
        .Q(\i_reg_n_0_[18] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[19] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(\i[19]_i_1_n_0 ),
        .Q(\i_reg_n_0_[19] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(\i[1]_i_1_n_0 ),
        .Q(\i_reg_n_0_[1] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[20] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(\i[20]_i_1_n_0 ),
        .Q(\i_reg_n_0_[20] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[21] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(\i[21]_i_1_n_0 ),
        .Q(\i_reg_n_0_[21] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[22] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(\i[22]_i_1_n_0 ),
        .Q(\i_reg_n_0_[22] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[23] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(\i[23]_i_1_n_0 ),
        .Q(\i_reg_n_0_[23] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[24] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(\i[24]_i_1_n_0 ),
        .Q(\i_reg_n_0_[24] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[25] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(\i[25]_i_1_n_0 ),
        .Q(\i_reg_n_0_[25] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[26] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(\i[26]_i_1_n_0 ),
        .Q(\i_reg_n_0_[26] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[27] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(\i[27]_i_1_n_0 ),
        .Q(\i_reg_n_0_[27] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[28] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(\i[28]_i_1_n_0 ),
        .Q(\i_reg_n_0_[28] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[29] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(\i[29]_i_1_n_0 ),
        .Q(\i_reg_n_0_[29] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(\i[2]_i_1_n_0 ),
        .Q(\i_reg_n_0_[2] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[30] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(\i[30]_i_1_n_0 ),
        .Q(\i_reg_n_0_[30] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[31] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(\i[31]_i_3_n_0 ),
        .Q(\i_reg_n_0_[31] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[3] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(\i[3]_i_1_n_0 ),
        .Q(\i_reg_n_0_[3] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[4] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(\i[4]_i_1_n_0 ),
        .Q(\i_reg_n_0_[4] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[5] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(\i[5]_i_1_n_0 ),
        .Q(\i_reg_n_0_[5] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[6] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(\i[6]_i_1_n_0 ),
        .Q(\i_reg_n_0_[6] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[7] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(\i[7]_i_1_n_0 ),
        .Q(\i_reg_n_0_[7] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[8] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(\i[8]_i_1_n_0 ),
        .Q(\i_reg_n_0_[8] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[9] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(\i[9]_i_1_n_0 ),
        .Q(\i_reg_n_0_[9] ),
        .R(\i[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \j[31]_i_1 
       (.I0(rst),
        .I1(\t_state_reg_n_0_[0] ),
        .I2(\t_state_reg_n_0_[2] ),
        .I3(\t_state_reg_n_0_[1] ),
        .O(\j[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011000075)) 
    \j[31]_i_2 
       (.I0(\t_state_reg_n_0_[1] ),
        .I1(t_state1_carry__2_n_0),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I3(\t_state_reg_n_0_[2] ),
        .I4(\t_state_reg_n_0_[0] ),
        .I5(rst),
        .O(\j[31]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \j[4]_i_2 
       (.I0(\j_reg_n_0_[2] ),
        .O(\j[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[10] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(j0[10]),
        .Q(\j_reg_n_0_[10] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[11] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(j0[11]),
        .Q(\j_reg_n_0_[11] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[12] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(j0[12]),
        .Q(\j_reg_n_0_[12] ),
        .R(\j[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_reg[12]_i_1 
       (.CI(\j_reg[8]_i_1_n_0 ),
        .CO({\j_reg[12]_i_1_n_0 ,\j_reg[12]_i_1_n_1 ,\j_reg[12]_i_1_n_2 ,\j_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(j0[12:9]),
        .S({\j_reg_n_0_[12] ,\j_reg_n_0_[11] ,\j_reg_n_0_[10] ,\j_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[13] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(j0[13]),
        .Q(\j_reg_n_0_[13] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[14] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(j0[14]),
        .Q(\j_reg_n_0_[14] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[15] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(j0[15]),
        .Q(\j_reg_n_0_[15] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[16] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(j0[16]),
        .Q(\j_reg_n_0_[16] ),
        .R(\j[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_reg[16]_i_1 
       (.CI(\j_reg[12]_i_1_n_0 ),
        .CO({\j_reg[16]_i_1_n_0 ,\j_reg[16]_i_1_n_1 ,\j_reg[16]_i_1_n_2 ,\j_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(j0[16:13]),
        .S({\j_reg_n_0_[16] ,\j_reg_n_0_[15] ,\j_reg_n_0_[14] ,\j_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[17] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(j0[17]),
        .Q(\j_reg_n_0_[17] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[18] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(j0[18]),
        .Q(\j_reg_n_0_[18] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[19] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(j0[19]),
        .Q(\j_reg_n_0_[19] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[1] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(j0[1]),
        .Q(\j_reg_n_0_[1] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[20] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(j0[20]),
        .Q(\j_reg_n_0_[20] ),
        .R(\j[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_reg[20]_i_1 
       (.CI(\j_reg[16]_i_1_n_0 ),
        .CO({\j_reg[20]_i_1_n_0 ,\j_reg[20]_i_1_n_1 ,\j_reg[20]_i_1_n_2 ,\j_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(j0[20:17]),
        .S({\j_reg_n_0_[20] ,\j_reg_n_0_[19] ,\j_reg_n_0_[18] ,\j_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[21] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(j0[21]),
        .Q(\j_reg_n_0_[21] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[22] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(j0[22]),
        .Q(\j_reg_n_0_[22] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[23] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(j0[23]),
        .Q(\j_reg_n_0_[23] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[24] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(j0[24]),
        .Q(\j_reg_n_0_[24] ),
        .R(\j[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_reg[24]_i_1 
       (.CI(\j_reg[20]_i_1_n_0 ),
        .CO({\j_reg[24]_i_1_n_0 ,\j_reg[24]_i_1_n_1 ,\j_reg[24]_i_1_n_2 ,\j_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(j0[24:21]),
        .S({\j_reg_n_0_[24] ,\j_reg_n_0_[23] ,\j_reg_n_0_[22] ,\j_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[25] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(j0[25]),
        .Q(\j_reg_n_0_[25] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[26] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(j0[26]),
        .Q(\j_reg_n_0_[26] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[27] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(j0[27]),
        .Q(\j_reg_n_0_[27] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[28] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(j0[28]),
        .Q(\j_reg_n_0_[28] ),
        .R(\j[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_reg[28]_i_1 
       (.CI(\j_reg[24]_i_1_n_0 ),
        .CO({\j_reg[28]_i_1_n_0 ,\j_reg[28]_i_1_n_1 ,\j_reg[28]_i_1_n_2 ,\j_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(j0[28:25]),
        .S({\j_reg_n_0_[28] ,\j_reg_n_0_[27] ,\j_reg_n_0_[26] ,\j_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[29] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(j0[29]),
        .Q(\j_reg_n_0_[29] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[2] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(j0[2]),
        .Q(\j_reg_n_0_[2] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[30] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(j0[30]),
        .Q(\j_reg_n_0_[30] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[31] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(j0[31]),
        .Q(\j_reg_n_0_[31] ),
        .R(\j[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_reg[31]_i_3 
       (.CI(\j_reg[28]_i_1_n_0 ),
        .CO({\NLW_j_reg[31]_i_3_CO_UNCONNECTED [3:2],\j_reg[31]_i_3_n_2 ,\j_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_j_reg[31]_i_3_O_UNCONNECTED [3],j0[31:29]}),
        .S({1'b0,\j_reg_n_0_[31] ,\j_reg_n_0_[30] ,\j_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[3] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(j0[3]),
        .Q(\j_reg_n_0_[3] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[4] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(j0[4]),
        .Q(\j_reg_n_0_[4] ),
        .R(\j[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\j_reg[4]_i_1_n_0 ,\j_reg[4]_i_1_n_1 ,\j_reg[4]_i_1_n_2 ,\j_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\j_reg_n_0_[2] ,1'b0}),
        .O(j0[4:1]),
        .S({\j_reg_n_0_[4] ,\j_reg_n_0_[3] ,\j[4]_i_2_n_0 ,\j_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[5] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(j0[5]),
        .Q(\j_reg_n_0_[5] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[6] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(j0[6]),
        .Q(\j_reg_n_0_[6] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[7] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(j0[7]),
        .Q(\j_reg_n_0_[7] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[8] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(j0[8]),
        .Q(\j_reg_n_0_[8] ),
        .R(\j[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_reg[8]_i_1 
       (.CI(\j_reg[4]_i_1_n_0 ),
        .CO({\j_reg[8]_i_1_n_0 ,\j_reg[8]_i_1_n_1 ,\j_reg[8]_i_1_n_2 ,\j_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(j0[8:5]),
        .S({\j_reg_n_0_[8] ,\j_reg_n_0_[7] ,\j_reg_n_0_[6] ,\j_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[9] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(j0[9]),
        .Q(\j_reg_n_0_[9] ),
        .R(\j[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,minusOp_carry_n_1,minusOp_carry_n_2,minusOp_carry_n_3}),
        .CYINIT(\s_len_reg_n_0_[0] ),
        .DI({\s_len_reg_n_0_[4] ,\s_len_reg_n_0_[3] ,\s_len_reg_n_0_[2] ,\s_len_reg_n_0_[1] }),
        .O(minusOp[4:1]),
        .S({minusOp_carry_i_1_n_0,minusOp_carry_i_2_n_0,minusOp_carry_i_3_n_0,minusOp_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO({minusOp_carry__0_n_0,minusOp_carry__0_n_1,minusOp_carry__0_n_2,minusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\s_len_reg_n_0_[8] ,\s_len_reg_n_0_[7] ,\s_len_reg_n_0_[6] ,\s_len_reg_n_0_[5] }),
        .O(minusOp[8:5]),
        .S({minusOp_carry__0_i_1_n_0,minusOp_carry__0_i_2_n_0,minusOp_carry__0_i_3_n_0,minusOp_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_1
       (.I0(\s_len_reg_n_0_[8] ),
        .O(minusOp_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_2
       (.I0(\s_len_reg_n_0_[7] ),
        .O(minusOp_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_3
       (.I0(\s_len_reg_n_0_[6] ),
        .O(minusOp_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_4
       (.I0(\s_len_reg_n_0_[5] ),
        .O(minusOp_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__1
       (.CI(minusOp_carry__0_n_0),
        .CO({minusOp_carry__1_n_0,minusOp_carry__1_n_1,minusOp_carry__1_n_2,minusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\s_len_reg_n_0_[12] ,\s_len_reg_n_0_[11] ,\s_len_reg_n_0_[10] ,\s_len_reg_n_0_[9] }),
        .O(minusOp[12:9]),
        .S({minusOp_carry__1_i_1_n_0,minusOp_carry__1_i_2_n_0,minusOp_carry__1_i_3_n_0,minusOp_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_1
       (.I0(\s_len_reg_n_0_[12] ),
        .O(minusOp_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_2
       (.I0(\s_len_reg_n_0_[11] ),
        .O(minusOp_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_3
       (.I0(\s_len_reg_n_0_[10] ),
        .O(minusOp_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_4
       (.I0(\s_len_reg_n_0_[9] ),
        .O(minusOp_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__2
       (.CI(minusOp_carry__1_n_0),
        .CO({minusOp_carry__2_n_0,minusOp_carry__2_n_1,minusOp_carry__2_n_2,minusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\s_len_reg_n_0_[16] ,\s_len_reg_n_0_[15] ,\s_len_reg_n_0_[14] ,\s_len_reg_n_0_[13] }),
        .O(minusOp[16:13]),
        .S({minusOp_carry__2_i_1_n_0,minusOp_carry__2_i_2_n_0,minusOp_carry__2_i_3_n_0,minusOp_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_1
       (.I0(\s_len_reg_n_0_[16] ),
        .O(minusOp_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_2
       (.I0(\s_len_reg_n_0_[15] ),
        .O(minusOp_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_3
       (.I0(\s_len_reg_n_0_[14] ),
        .O(minusOp_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_4
       (.I0(\s_len_reg_n_0_[13] ),
        .O(minusOp_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__3
       (.CI(minusOp_carry__2_n_0),
        .CO({minusOp_carry__3_n_0,minusOp_carry__3_n_1,minusOp_carry__3_n_2,minusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({\s_len_reg_n_0_[20] ,\s_len_reg_n_0_[19] ,\s_len_reg_n_0_[18] ,\s_len_reg_n_0_[17] }),
        .O(minusOp[20:17]),
        .S({minusOp_carry__3_i_1_n_0,minusOp_carry__3_i_2_n_0,minusOp_carry__3_i_3_n_0,minusOp_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__3_i_1
       (.I0(\s_len_reg_n_0_[20] ),
        .O(minusOp_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__3_i_2
       (.I0(\s_len_reg_n_0_[19] ),
        .O(minusOp_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__3_i_3
       (.I0(\s_len_reg_n_0_[18] ),
        .O(minusOp_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__3_i_4
       (.I0(\s_len_reg_n_0_[17] ),
        .O(minusOp_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__4
       (.CI(minusOp_carry__3_n_0),
        .CO({minusOp_carry__4_n_0,minusOp_carry__4_n_1,minusOp_carry__4_n_2,minusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({\s_len_reg_n_0_[24] ,\s_len_reg_n_0_[23] ,\s_len_reg_n_0_[22] ,\s_len_reg_n_0_[21] }),
        .O(minusOp[24:21]),
        .S({minusOp_carry__4_i_1_n_0,minusOp_carry__4_i_2_n_0,minusOp_carry__4_i_3_n_0,minusOp_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__4_i_1
       (.I0(\s_len_reg_n_0_[24] ),
        .O(minusOp_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__4_i_2
       (.I0(\s_len_reg_n_0_[23] ),
        .O(minusOp_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__4_i_3
       (.I0(\s_len_reg_n_0_[22] ),
        .O(minusOp_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__4_i_4
       (.I0(\s_len_reg_n_0_[21] ),
        .O(minusOp_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__5
       (.CI(minusOp_carry__4_n_0),
        .CO({minusOp_carry__5_n_0,minusOp_carry__5_n_1,minusOp_carry__5_n_2,minusOp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({\s_len_reg_n_0_[28] ,\s_len_reg_n_0_[27] ,\s_len_reg_n_0_[26] ,\s_len_reg_n_0_[25] }),
        .O(minusOp[28:25]),
        .S({minusOp_carry__5_i_1_n_0,minusOp_carry__5_i_2_n_0,minusOp_carry__5_i_3_n_0,minusOp_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__5_i_1
       (.I0(\s_len_reg_n_0_[28] ),
        .O(minusOp_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__5_i_2
       (.I0(\s_len_reg_n_0_[27] ),
        .O(minusOp_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__5_i_3
       (.I0(\s_len_reg_n_0_[26] ),
        .O(minusOp_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__5_i_4
       (.I0(\s_len_reg_n_0_[25] ),
        .O(minusOp_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__6
       (.CI(minusOp_carry__5_n_0),
        .CO({NLW_minusOp_carry__6_CO_UNCONNECTED[3:2],minusOp_carry__6_n_2,minusOp_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\s_len_reg_n_0_[30] ,\s_len_reg_n_0_[29] }),
        .O({NLW_minusOp_carry__6_O_UNCONNECTED[3],minusOp[31:29]}),
        .S({1'b0,minusOp_carry__6_i_1_n_0,minusOp_carry__6_i_2_n_0,minusOp_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__6_i_1
       (.I0(\s_len_reg_n_0_[31] ),
        .O(minusOp_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__6_i_2
       (.I0(\s_len_reg_n_0_[30] ),
        .O(minusOp_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__6_i_3
       (.I0(\s_len_reg_n_0_[29] ),
        .O(minusOp_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_1
       (.I0(\s_len_reg_n_0_[4] ),
        .O(minusOp_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_2
       (.I0(\s_len_reg_n_0_[3] ),
        .O(minusOp_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_3
       (.I0(\s_len_reg_n_0_[2] ),
        .O(minusOp_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_4
       (.I0(\s_len_reg_n_0_[1] ),
        .O(minusOp_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    o_control0a_i_1
       (.I0(s_vecs_addr0),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(\t_state_reg_n_0_[0] ),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(rst),
        .I5(o_control0a),
        .O(o_control0a_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_control0a_i_10
       (.I0(i_len[14]),
        .I1(i_len[13]),
        .I2(i_len[16]),
        .I3(i_len[15]),
        .O(o_control0a_i_10_n_0));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    o_control0a_i_2
       (.I0(i_enable),
        .I1(o_control0a_i_3_n_0),
        .I2(o_control0a_i_4_n_0),
        .I3(o_control0a_i_5_n_0),
        .I4(o_control0a_i_6_n_0),
        .O(s_vecs_addr0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    o_control0a_i_3
       (.I0(i_len[19]),
        .I1(i_len[20]),
        .I2(i_len[17]),
        .I3(i_len[18]),
        .I4(o_control0a_i_7_n_0),
        .O(o_control0a_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    o_control0a_i_4
       (.I0(i_len[27]),
        .I1(i_len[28]),
        .I2(i_len[25]),
        .I3(i_len[26]),
        .I4(o_control0a_i_8_n_0),
        .O(o_control0a_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    o_control0a_i_5
       (.I0(i_len[3]),
        .I1(i_len[4]),
        .I2(i_len[1]),
        .I3(i_len[2]),
        .I4(o_control0a_i_9_n_0),
        .O(o_control0a_i_5_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    o_control0a_i_6
       (.I0(i_len[11]),
        .I1(i_len[12]),
        .I2(i_len[9]),
        .I3(i_len[10]),
        .I4(o_control0a_i_10_n_0),
        .O(o_control0a_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_control0a_i_7
       (.I0(i_len[22]),
        .I1(i_len[21]),
        .I2(i_len[24]),
        .I3(i_len[23]),
        .O(o_control0a_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_control0a_i_8
       (.I0(i_len[30]),
        .I1(i_len[29]),
        .I2(i_len[0]),
        .I3(i_len[31]),
        .O(o_control0a_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_control0a_i_9
       (.I0(i_len[6]),
        .I1(i_len[5]),
        .I2(i_len[8]),
        .I3(i_len[7]),
        .O(o_control0a_i_9_n_0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0a CTRL" *) 
  FDRE o_control0a_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_control0a_i_1_n_0),
        .Q(o_control0a),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000100)) 
    o_control0b_i_1
       (.I0(\t_state1_reg_n_0_[1] ),
        .I1(\t_state1_reg_n_0_[0] ),
        .I2(\t_state1_reg_n_0_[2] ),
        .I3(s_acc_change_reg_n_0),
        .I4(rst),
        .I5(o_control0b),
        .O(o_control0b_i_1_n_0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin0b CTRL" *) 
  FDRE o_control0b_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_control0b_i_1_n_0),
        .Q(o_control0b),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    o_control1a_i_1
       (.I0(s_vecs_addr0),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(\t_state_reg_n_0_[0] ),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(rst),
        .I5(o_control1a),
        .O(o_control1a_i_1_n_0));
  (* equivalent_register_removal = "no" *) 
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Lin1a CTRL" *) 
  FDRE o_control1a_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_control1a_i_1_n_0),
        .Q(o_control1a),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFE40)) 
    o_done_i_1
       (.I0(\t_state1_reg_n_0_[1] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(\t_state1_reg_n_0_[0] ),
        .I3(o_done),
        .O(o_done_i_1_n_0));
  FDRE o_done_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_done_i_1_n_0),
        .Q(o_done),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,o_mem0a_addr[2],1'b0}),
        .O(plusOp[4:1]),
        .S({o_mem0a_addr[4:3],plusOp_carry_i_1_n_0,o_mem0a_addr[1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:5]),
        .S(o_mem0a_addr[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[12:9]),
        .S(o_mem0a_addr[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[16:13]),
        .S(o_mem0a_addr[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({plusOp_carry__3_n_0,plusOp_carry__3_n_1,plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[20:17]),
        .S(o_mem0a_addr[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_0),
        .CO({plusOp_carry__4_n_0,plusOp_carry__4_n_1,plusOp_carry__4_n_2,plusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[24:21]),
        .S(o_mem0a_addr[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__5
       (.CI(plusOp_carry__4_n_0),
        .CO({plusOp_carry__5_n_0,plusOp_carry__5_n_1,plusOp_carry__5_n_2,plusOp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[28:25]),
        .S(o_mem0a_addr[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__6
       (.CI(plusOp_carry__5_n_0),
        .CO({NLW_plusOp_carry__6_CO_UNCONNECTED[3:2],plusOp_carry__6_n_2,plusOp_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__6_O_UNCONNECTED[3],plusOp[31:29]}),
        .S({1'b0,o_mem0a_addr[31:29]}));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_carry_i_1
       (.I0(o_mem0a_addr[2]),
        .O(plusOp_carry_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__0/i__carry_n_0 ,\plusOp_inferred__0/i__carry_n_1 ,\plusOp_inferred__0/i__carry_n_2 ,\plusOp_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({o_mem1a_addr[4:2],1'b0}),
        .O({\plusOp_inferred__0/i__carry_n_4 ,\plusOp_inferred__0/i__carry_n_5 ,\plusOp_inferred__0/i__carry_n_6 ,plusOp2_in[1]}),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,o_mem1a_addr[1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__0 
       (.CI(\plusOp_inferred__0/i__carry_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__0_n_0 ,\plusOp_inferred__0/i__carry__0_n_1 ,\plusOp_inferred__0/i__carry__0_n_2 ,\plusOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,o_mem1a_addr[5]}),
        .O({\plusOp_inferred__0/i__carry__0_n_4 ,\plusOp_inferred__0/i__carry__0_n_5 ,\plusOp_inferred__0/i__carry__0_n_6 ,\plusOp_inferred__0/i__carry__0_n_7 }),
        .S({o_mem1a_addr[8:6],i__carry__0_i_1__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__1 
       (.CI(\plusOp_inferred__0/i__carry__0_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__1_n_0 ,\plusOp_inferred__0/i__carry__1_n_1 ,\plusOp_inferred__0/i__carry__1_n_2 ,\plusOp_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry__1_n_4 ,\plusOp_inferred__0/i__carry__1_n_5 ,\plusOp_inferred__0/i__carry__1_n_6 ,\plusOp_inferred__0/i__carry__1_n_7 }),
        .S(o_mem1a_addr[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__2 
       (.CI(\plusOp_inferred__0/i__carry__1_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__2_n_0 ,\plusOp_inferred__0/i__carry__2_n_1 ,\plusOp_inferred__0/i__carry__2_n_2 ,\plusOp_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry__2_n_4 ,\plusOp_inferred__0/i__carry__2_n_5 ,\plusOp_inferred__0/i__carry__2_n_6 ,\plusOp_inferred__0/i__carry__2_n_7 }),
        .S(o_mem1a_addr[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__3 
       (.CI(\plusOp_inferred__0/i__carry__2_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__3_n_0 ,\plusOp_inferred__0/i__carry__3_n_1 ,\plusOp_inferred__0/i__carry__3_n_2 ,\plusOp_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry__3_n_4 ,\plusOp_inferred__0/i__carry__3_n_5 ,\plusOp_inferred__0/i__carry__3_n_6 ,\plusOp_inferred__0/i__carry__3_n_7 }),
        .S(o_mem1a_addr[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__4 
       (.CI(\plusOp_inferred__0/i__carry__3_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__4_n_0 ,\plusOp_inferred__0/i__carry__4_n_1 ,\plusOp_inferred__0/i__carry__4_n_2 ,\plusOp_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry__4_n_4 ,\plusOp_inferred__0/i__carry__4_n_5 ,\plusOp_inferred__0/i__carry__4_n_6 ,\plusOp_inferred__0/i__carry__4_n_7 }),
        .S(o_mem1a_addr[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__5 
       (.CI(\plusOp_inferred__0/i__carry__4_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__5_n_0 ,\plusOp_inferred__0/i__carry__5_n_1 ,\plusOp_inferred__0/i__carry__5_n_2 ,\plusOp_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry__5_n_4 ,\plusOp_inferred__0/i__carry__5_n_5 ,\plusOp_inferred__0/i__carry__5_n_6 ,\plusOp_inferred__0/i__carry__5_n_7 }),
        .S(o_mem1a_addr[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__6 
       (.CI(\plusOp_inferred__0/i__carry__5_n_0 ),
        .CO({\NLW_plusOp_inferred__0/i__carry__6_CO_UNCONNECTED [3:2],\plusOp_inferred__0/i__carry__6_n_2 ,\plusOp_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__0/i__carry__6_O_UNCONNECTED [3],\plusOp_inferred__0/i__carry__6_n_5 ,\plusOp_inferred__0/i__carry__6_n_6 ,\plusOp_inferred__0/i__carry__6_n_7 }),
        .S({1'b0,o_mem1a_addr[31:29]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__1/i__carry_n_0 ,\plusOp_inferred__1/i__carry_n_1 ,\plusOp_inferred__1/i__carry_n_2 ,\plusOp_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\j_reg_n_0_[2] ,s_vecs_addr[2:0]}),
        .O(plusOp1_in[3:0]),
        .S({i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,s_vecs_addr[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__1/i__carry__0 
       (.CI(\plusOp_inferred__1/i__carry_n_0 ),
        .CO({\plusOp_inferred__1/i__carry__0_n_0 ,\plusOp_inferred__1/i__carry__0_n_1 ,\plusOp_inferred__1/i__carry__0_n_2 ,\plusOp_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__1_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}),
        .O(plusOp1_in[7:4]),
        .S({i__carry__0_i_5__0_n_0,i__carry__0_i_6__0_n_0,i__carry__0_i_7__0_n_0,i__carry__0_i_8__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__1/i__carry__1 
       (.CI(\plusOp_inferred__1/i__carry__0_n_0 ),
        .CO({\plusOp_inferred__1/i__carry__1_n_0 ,\plusOp_inferred__1/i__carry__1_n_1 ,\plusOp_inferred__1/i__carry__1_n_2 ,\plusOp_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1__0_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0,i__carry__1_i_4__0_n_0}),
        .O(plusOp1_in[11:8]),
        .S({i__carry__1_i_5__0_n_0,i__carry__1_i_6__0_n_0,i__carry__1_i_7__0_n_0,i__carry__1_i_8__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__1/i__carry__2 
       (.CI(\plusOp_inferred__1/i__carry__1_n_0 ),
        .CO({\plusOp_inferred__1/i__carry__2_n_0 ,\plusOp_inferred__1/i__carry__2_n_1 ,\plusOp_inferred__1/i__carry__2_n_2 ,\plusOp_inferred__1/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1__0_n_0,i__carry__2_i_2__0_n_0,i__carry__2_i_3__0_n_0,i__carry__2_i_4__0_n_0}),
        .O(plusOp1_in[15:12]),
        .S({i__carry__2_i_5__0_n_0,i__carry__2_i_6__0_n_0,i__carry__2_i_7__0_n_0,i__carry__2_i_8__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__1/i__carry__3 
       (.CI(\plusOp_inferred__1/i__carry__2_n_0 ),
        .CO({\plusOp_inferred__1/i__carry__3_n_0 ,\plusOp_inferred__1/i__carry__3_n_1 ,\plusOp_inferred__1/i__carry__3_n_2 ,\plusOp_inferred__1/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}),
        .O(plusOp1_in[19:16]),
        .S({i__carry__3_i_5_n_0,i__carry__3_i_6_n_0,i__carry__3_i_7_n_0,i__carry__3_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__1/i__carry__4 
       (.CI(\plusOp_inferred__1/i__carry__3_n_0 ),
        .CO({\plusOp_inferred__1/i__carry__4_n_0 ,\plusOp_inferred__1/i__carry__4_n_1 ,\plusOp_inferred__1/i__carry__4_n_2 ,\plusOp_inferred__1/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0,i__carry__4_i_4_n_0}),
        .O(plusOp1_in[23:20]),
        .S({i__carry__4_i_5_n_0,i__carry__4_i_6_n_0,i__carry__4_i_7_n_0,i__carry__4_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__1/i__carry__5 
       (.CI(\plusOp_inferred__1/i__carry__4_n_0 ),
        .CO({\plusOp_inferred__1/i__carry__5_n_0 ,\plusOp_inferred__1/i__carry__5_n_1 ,\plusOp_inferred__1/i__carry__5_n_2 ,\plusOp_inferred__1/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__5_i_1_n_0,i__carry__5_i_2_n_0,i__carry__5_i_3_n_0,i__carry__5_i_4_n_0}),
        .O(plusOp1_in[27:24]),
        .S({i__carry__5_i_5_n_0,i__carry__5_i_6_n_0,i__carry__5_i_7_n_0,i__carry__5_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__1/i__carry__6 
       (.CI(\plusOp_inferred__1/i__carry__5_n_0 ),
        .CO({\NLW_plusOp_inferred__1/i__carry__6_CO_UNCONNECTED [3],\plusOp_inferred__1/i__carry__6_n_1 ,\plusOp_inferred__1/i__carry__6_n_2 ,\plusOp_inferred__1/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry__6_i_1_n_0,i__carry__6_i_2_n_0,i__carry__6_i_3_n_0}),
        .O(plusOp1_in[31:28]),
        .S({i__carry__6_i_4_n_0,i__carry__6_i_5_n_0,i__carry__6_i_6_n_0,i__carry__6_i_7_n_0}));
  LUT6 #(
    .INIT(64'hFFFFC3CF000002C0)) 
    s_acc_change_i_1
       (.I0(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I1(\t_state_reg_n_0_[0] ),
        .I2(\t_state_reg_n_0_[2] ),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(rst),
        .I5(s_acc_change_reg_n_0),
        .O(s_acc_change_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_acc_change_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(s_acc_change_i_1_n_0),
        .Q(s_acc_change_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFF60004)) 
    s_acc_flush_i_1
       (.I0(\t_state1_reg_n_0_[2] ),
        .I1(\t_state1_reg_n_0_[0] ),
        .I2(\t_state1_reg_n_0_[1] ),
        .I3(rst),
        .I4(s_acc_flush_reg_n_0),
        .O(s_acc_flush_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_acc_flush_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(s_acc_flush_i_1_n_0),
        .Q(s_acc_flush_reg_n_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    s_acc_sel_i_1
       (.I0(s_acc_change_reg_n_0),
        .I1(s_acc_sel),
        .O(s_acc_sel_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_acc_sel_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(s_acc_sel_i_1_n_0),
        .Q(s_acc_sel),
        .R(rst));
  LUT6 #(
    .INIT(64'h0001000155550000)) 
    \s_coeffs[31]_i_1 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(sel0[31]),
        .I2(\s_coeffs[31]_i_2_n_0 ),
        .I3(\s_coeffs[31]_i_3_n_0 ),
        .I4(\t_state_reg_n_0_[2] ),
        .I5(\t_state_reg_n_0_[1] ),
        .O(s_coeffs0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \s_coeffs[31]_i_2 
       (.I0(\s_coeffs[31]_i_4_n_0 ),
        .I1(sel0[14]),
        .I2(sel0[15]),
        .I3(sel0[12]),
        .I4(sel0[13]),
        .I5(\s_coeffs[31]_i_5_n_0 ),
        .O(\s_coeffs[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \s_coeffs[31]_i_3 
       (.I0(\s_coeffs[31]_i_6_n_0 ),
        .I1(sel0[30]),
        .I2(\t_state_reg_n_0_[2] ),
        .I3(sel0[28]),
        .I4(sel0[29]),
        .I5(\s_coeffs[31]_i_7_n_0 ),
        .O(\s_coeffs[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_coeffs[31]_i_4 
       (.I0(sel0[10]),
        .I1(sel0[11]),
        .I2(sel0[8]),
        .I3(sel0[9]),
        .O(\s_coeffs[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_coeffs[31]_i_5 
       (.I0(sel0[5]),
        .I1(sel0[4]),
        .I2(sel0[7]),
        .I3(sel0[6]),
        .I4(\s_coeffs[31]_i_8_n_0 ),
        .O(\s_coeffs[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_coeffs[31]_i_6 
       (.I0(sel0[26]),
        .I1(sel0[27]),
        .I2(sel0[24]),
        .I3(sel0[25]),
        .O(\s_coeffs[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_coeffs[31]_i_7 
       (.I0(sel0[21]),
        .I1(sel0[20]),
        .I2(sel0[23]),
        .I3(sel0[22]),
        .I4(\s_coeffs[31]_i_9_n_0 ),
        .O(\s_coeffs[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_coeffs[31]_i_8 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(\s_coeffs[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_coeffs[31]_i_9 
       (.I0(sel0[18]),
        .I1(sel0[19]),
        .I2(sel0[16]),
        .I3(sel0[17]),
        .O(\s_coeffs[31]_i_9_n_0 ));
  FDRE \s_coeffs_addr_reg[0] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_coeffs_addr[0]),
        .Q(s_coeffs_addr[0]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[10] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_coeffs_addr[10]),
        .Q(s_coeffs_addr[10]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[11] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_coeffs_addr[11]),
        .Q(s_coeffs_addr[11]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[12] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_coeffs_addr[12]),
        .Q(s_coeffs_addr[12]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[13] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_coeffs_addr[13]),
        .Q(s_coeffs_addr[13]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[14] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_coeffs_addr[14]),
        .Q(s_coeffs_addr[14]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[15] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_coeffs_addr[15]),
        .Q(s_coeffs_addr[15]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[16] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_coeffs_addr[16]),
        .Q(s_coeffs_addr[16]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[17] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_coeffs_addr[17]),
        .Q(s_coeffs_addr[17]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[18] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_coeffs_addr[18]),
        .Q(s_coeffs_addr[18]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[19] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_coeffs_addr[19]),
        .Q(s_coeffs_addr[19]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[1] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_coeffs_addr[1]),
        .Q(s_coeffs_addr[1]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[20] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_coeffs_addr[20]),
        .Q(s_coeffs_addr[20]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[21] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_coeffs_addr[21]),
        .Q(s_coeffs_addr[21]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[22] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_coeffs_addr[22]),
        .Q(s_coeffs_addr[22]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[23] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_coeffs_addr[23]),
        .Q(s_coeffs_addr[23]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[24] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_coeffs_addr[24]),
        .Q(s_coeffs_addr[24]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[25] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_coeffs_addr[25]),
        .Q(s_coeffs_addr[25]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[26] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_coeffs_addr[26]),
        .Q(s_coeffs_addr[26]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[27] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_coeffs_addr[27]),
        .Q(s_coeffs_addr[27]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[28] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_coeffs_addr[28]),
        .Q(s_coeffs_addr[28]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[29] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_coeffs_addr[29]),
        .Q(s_coeffs_addr[29]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[2] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_coeffs_addr[2]),
        .Q(s_coeffs_addr[2]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[30] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_coeffs_addr[30]),
        .Q(s_coeffs_addr[30]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[31] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_coeffs_addr[31]),
        .Q(s_coeffs_addr[31]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[3] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_coeffs_addr[3]),
        .Q(s_coeffs_addr[3]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[4] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_coeffs_addr[4]),
        .Q(s_coeffs_addr[4]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[5] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_coeffs_addr[5]),
        .Q(s_coeffs_addr[5]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[6] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_coeffs_addr[6]),
        .Q(s_coeffs_addr[6]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[7] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_coeffs_addr[7]),
        .Q(s_coeffs_addr[7]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[8] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_coeffs_addr[8]),
        .Q(s_coeffs_addr[8]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[9] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_coeffs_addr[9]),
        .Q(s_coeffs_addr[9]),
        .R(rst));
  FDRE \s_coeffs_reg[0] 
       (.C(i_clk),
        .CE(s_coeffs0),
        .D(i_mem0a_dout[0]),
        .Q(s_coeffs[0]),
        .R(rst));
  FDRE \s_coeffs_reg[10] 
       (.C(i_clk),
        .CE(s_coeffs0),
        .D(i_mem0a_dout[10]),
        .Q(s_coeffs[10]),
        .R(rst));
  FDRE \s_coeffs_reg[11] 
       (.C(i_clk),
        .CE(s_coeffs0),
        .D(i_mem0a_dout[11]),
        .Q(s_coeffs[11]),
        .R(rst));
  FDRE \s_coeffs_reg[12] 
       (.C(i_clk),
        .CE(s_coeffs0),
        .D(i_mem0a_dout[12]),
        .Q(s_coeffs[12]),
        .R(rst));
  FDRE \s_coeffs_reg[13] 
       (.C(i_clk),
        .CE(s_coeffs0),
        .D(i_mem0a_dout[13]),
        .Q(s_coeffs[13]),
        .R(rst));
  FDRE \s_coeffs_reg[14] 
       (.C(i_clk),
        .CE(s_coeffs0),
        .D(i_mem0a_dout[14]),
        .Q(s_coeffs[14]),
        .R(rst));
  FDRE \s_coeffs_reg[15] 
       (.C(i_clk),
        .CE(s_coeffs0),
        .D(i_mem0a_dout[15]),
        .Q(s_coeffs[15]),
        .R(rst));
  FDRE \s_coeffs_reg[16] 
       (.C(i_clk),
        .CE(s_coeffs0),
        .D(i_mem0a_dout[16]),
        .Q(s_coeffs[16]),
        .R(rst));
  FDRE \s_coeffs_reg[17] 
       (.C(i_clk),
        .CE(s_coeffs0),
        .D(i_mem0a_dout[17]),
        .Q(s_coeffs[17]),
        .R(rst));
  FDRE \s_coeffs_reg[18] 
       (.C(i_clk),
        .CE(s_coeffs0),
        .D(i_mem0a_dout[18]),
        .Q(s_coeffs[18]),
        .R(rst));
  FDRE \s_coeffs_reg[19] 
       (.C(i_clk),
        .CE(s_coeffs0),
        .D(i_mem0a_dout[19]),
        .Q(s_coeffs[19]),
        .R(rst));
  FDRE \s_coeffs_reg[1] 
       (.C(i_clk),
        .CE(s_coeffs0),
        .D(i_mem0a_dout[1]),
        .Q(s_coeffs[1]),
        .R(rst));
  FDRE \s_coeffs_reg[20] 
       (.C(i_clk),
        .CE(s_coeffs0),
        .D(i_mem0a_dout[20]),
        .Q(s_coeffs[20]),
        .R(rst));
  FDRE \s_coeffs_reg[21] 
       (.C(i_clk),
        .CE(s_coeffs0),
        .D(i_mem0a_dout[21]),
        .Q(s_coeffs[21]),
        .R(rst));
  FDRE \s_coeffs_reg[22] 
       (.C(i_clk),
        .CE(s_coeffs0),
        .D(i_mem0a_dout[22]),
        .Q(s_coeffs[22]),
        .R(rst));
  FDRE \s_coeffs_reg[23] 
       (.C(i_clk),
        .CE(s_coeffs0),
        .D(i_mem0a_dout[23]),
        .Q(s_coeffs[23]),
        .R(rst));
  FDRE \s_coeffs_reg[24] 
       (.C(i_clk),
        .CE(s_coeffs0),
        .D(i_mem0a_dout[24]),
        .Q(s_coeffs[24]),
        .R(rst));
  FDRE \s_coeffs_reg[25] 
       (.C(i_clk),
        .CE(s_coeffs0),
        .D(i_mem0a_dout[25]),
        .Q(s_coeffs[25]),
        .R(rst));
  FDRE \s_coeffs_reg[26] 
       (.C(i_clk),
        .CE(s_coeffs0),
        .D(i_mem0a_dout[26]),
        .Q(s_coeffs[26]),
        .R(rst));
  FDRE \s_coeffs_reg[27] 
       (.C(i_clk),
        .CE(s_coeffs0),
        .D(i_mem0a_dout[27]),
        .Q(s_coeffs[27]),
        .R(rst));
  FDRE \s_coeffs_reg[28] 
       (.C(i_clk),
        .CE(s_coeffs0),
        .D(i_mem0a_dout[28]),
        .Q(s_coeffs[28]),
        .R(rst));
  FDRE \s_coeffs_reg[29] 
       (.C(i_clk),
        .CE(s_coeffs0),
        .D(i_mem0a_dout[29]),
        .Q(s_coeffs[29]),
        .R(rst));
  FDRE \s_coeffs_reg[2] 
       (.C(i_clk),
        .CE(s_coeffs0),
        .D(i_mem0a_dout[2]),
        .Q(s_coeffs[2]),
        .R(rst));
  FDRE \s_coeffs_reg[30] 
       (.C(i_clk),
        .CE(s_coeffs0),
        .D(i_mem0a_dout[30]),
        .Q(s_coeffs[30]),
        .R(rst));
  FDRE \s_coeffs_reg[31] 
       (.C(i_clk),
        .CE(s_coeffs0),
        .D(i_mem0a_dout[31]),
        .Q(s_coeffs[31]),
        .R(rst));
  FDRE \s_coeffs_reg[3] 
       (.C(i_clk),
        .CE(s_coeffs0),
        .D(i_mem0a_dout[3]),
        .Q(s_coeffs[3]),
        .R(rst));
  FDRE \s_coeffs_reg[4] 
       (.C(i_clk),
        .CE(s_coeffs0),
        .D(i_mem0a_dout[4]),
        .Q(s_coeffs[4]),
        .R(rst));
  FDRE \s_coeffs_reg[5] 
       (.C(i_clk),
        .CE(s_coeffs0),
        .D(i_mem0a_dout[5]),
        .Q(s_coeffs[5]),
        .R(rst));
  FDRE \s_coeffs_reg[6] 
       (.C(i_clk),
        .CE(s_coeffs0),
        .D(i_mem0a_dout[6]),
        .Q(s_coeffs[6]),
        .R(rst));
  FDRE \s_coeffs_reg[7] 
       (.C(i_clk),
        .CE(s_coeffs0),
        .D(i_mem0a_dout[7]),
        .Q(s_coeffs[7]),
        .R(rst));
  FDRE \s_coeffs_reg[8] 
       (.C(i_clk),
        .CE(s_coeffs0),
        .D(i_mem0a_dout[8]),
        .Q(s_coeffs[8]),
        .R(rst));
  FDRE \s_coeffs_reg[9] 
       (.C(i_clk),
        .CE(s_coeffs0),
        .D(i_mem0a_dout[9]),
        .Q(s_coeffs[9]),
        .R(rst));
  LUT4 #(
    .INIT(16'h0010)) 
    \s_len[31]_i_1 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(s_vecs_addr0),
        .I3(\t_state_reg_n_0_[1] ),
        .O(s_len));
  FDRE \s_len_reg[0] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_len[0]),
        .Q(\s_len_reg_n_0_[0] ),
        .R(rst));
  FDRE \s_len_reg[10] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_len[10]),
        .Q(\s_len_reg_n_0_[10] ),
        .R(rst));
  FDRE \s_len_reg[11] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_len[11]),
        .Q(\s_len_reg_n_0_[11] ),
        .R(rst));
  FDRE \s_len_reg[12] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_len[12]),
        .Q(\s_len_reg_n_0_[12] ),
        .R(rst));
  FDRE \s_len_reg[13] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_len[13]),
        .Q(\s_len_reg_n_0_[13] ),
        .R(rst));
  FDRE \s_len_reg[14] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_len[14]),
        .Q(\s_len_reg_n_0_[14] ),
        .R(rst));
  FDRE \s_len_reg[15] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_len[15]),
        .Q(\s_len_reg_n_0_[15] ),
        .R(rst));
  FDRE \s_len_reg[16] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_len[16]),
        .Q(\s_len_reg_n_0_[16] ),
        .R(rst));
  FDRE \s_len_reg[17] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_len[17]),
        .Q(\s_len_reg_n_0_[17] ),
        .R(rst));
  FDRE \s_len_reg[18] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_len[18]),
        .Q(\s_len_reg_n_0_[18] ),
        .R(rst));
  FDRE \s_len_reg[19] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_len[19]),
        .Q(\s_len_reg_n_0_[19] ),
        .R(rst));
  FDRE \s_len_reg[1] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_len[1]),
        .Q(\s_len_reg_n_0_[1] ),
        .R(rst));
  FDRE \s_len_reg[20] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_len[20]),
        .Q(\s_len_reg_n_0_[20] ),
        .R(rst));
  FDRE \s_len_reg[21] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_len[21]),
        .Q(\s_len_reg_n_0_[21] ),
        .R(rst));
  FDRE \s_len_reg[22] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_len[22]),
        .Q(\s_len_reg_n_0_[22] ),
        .R(rst));
  FDRE \s_len_reg[23] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_len[23]),
        .Q(\s_len_reg_n_0_[23] ),
        .R(rst));
  FDRE \s_len_reg[24] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_len[24]),
        .Q(\s_len_reg_n_0_[24] ),
        .R(rst));
  FDRE \s_len_reg[25] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_len[25]),
        .Q(\s_len_reg_n_0_[25] ),
        .R(rst));
  FDRE \s_len_reg[26] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_len[26]),
        .Q(\s_len_reg_n_0_[26] ),
        .R(rst));
  FDRE \s_len_reg[27] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_len[27]),
        .Q(\s_len_reg_n_0_[27] ),
        .R(rst));
  FDRE \s_len_reg[28] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_len[28]),
        .Q(\s_len_reg_n_0_[28] ),
        .R(rst));
  FDRE \s_len_reg[29] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_len[29]),
        .Q(\s_len_reg_n_0_[29] ),
        .R(rst));
  FDRE \s_len_reg[2] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_len[2]),
        .Q(\s_len_reg_n_0_[2] ),
        .R(rst));
  FDRE \s_len_reg[30] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_len[30]),
        .Q(\s_len_reg_n_0_[30] ),
        .R(rst));
  FDRE \s_len_reg[31] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_len[31]),
        .Q(\s_len_reg_n_0_[31] ),
        .R(rst));
  FDRE \s_len_reg[3] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_len[3]),
        .Q(\s_len_reg_n_0_[3] ),
        .R(rst));
  FDRE \s_len_reg[4] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_len[4]),
        .Q(\s_len_reg_n_0_[4] ),
        .R(rst));
  FDRE \s_len_reg[5] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_len[5]),
        .Q(\s_len_reg_n_0_[5] ),
        .R(rst));
  FDRE \s_len_reg[6] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_len[6]),
        .Q(\s_len_reg_n_0_[6] ),
        .R(rst));
  FDRE \s_len_reg[7] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_len[7]),
        .Q(\s_len_reg_n_0_[7] ),
        .R(rst));
  FDRE \s_len_reg[8] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_len[8]),
        .Q(\s_len_reg_n_0_[8] ),
        .R(rst));
  FDRE \s_len_reg[9] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_len[9]),
        .Q(\s_len_reg_n_0_[9] ),
        .R(rst));
  LUT4 #(
    .INIT(16'hD702)) 
    s_main_i_1
       (.I0(\t_state_reg_n_0_[1] ),
        .I1(\t_state_reg_n_0_[2] ),
        .I2(\t_state_reg_n_0_[0] ),
        .I3(s_main),
        .O(s_main_i_1_n_0));
  FDRE s_main_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(s_main_i_1_n_0),
        .Q(s_main),
        .R(rst));
  LUT4 #(
    .INIT(16'h0001)) 
    s_nomac_en_i_1
       (.I0(s_nomac_en_i_2_n_0),
        .I1(s_nomac_en_i_3_n_0),
        .I2(s_nomac_en_i_4_n_0),
        .I3(s_nomac_en_i_5_n_0),
        .O(s_nomac_en));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    s_nomac_en_i_2
       (.I0(i_len[21]),
        .I1(i_len[20]),
        .I2(i_len[23]),
        .I3(i_len[22]),
        .I4(s_nomac_en_i_6_n_0),
        .O(s_nomac_en_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    s_nomac_en_i_3
       (.I0(i_len[29]),
        .I1(i_len[28]),
        .I2(i_len[30]),
        .I3(i_len[31]),
        .I4(s_nomac_en_i_7_n_0),
        .O(s_nomac_en_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    s_nomac_en_i_4
       (.I0(i_len[5]),
        .I1(i_len[4]),
        .I2(i_len[7]),
        .I3(i_len[6]),
        .I4(s_nomac_en_i_8_n_0),
        .O(s_nomac_en_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    s_nomac_en_i_5
       (.I0(i_len[13]),
        .I1(i_len[12]),
        .I2(i_len[15]),
        .I3(i_len[14]),
        .I4(s_nomac_en_i_9_n_0),
        .O(s_nomac_en_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    s_nomac_en_i_6
       (.I0(i_len[18]),
        .I1(i_len[19]),
        .I2(i_len[16]),
        .I3(i_len[17]),
        .O(s_nomac_en_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    s_nomac_en_i_7
       (.I0(i_len[26]),
        .I1(i_len[27]),
        .I2(i_len[24]),
        .I3(i_len[25]),
        .O(s_nomac_en_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    s_nomac_en_i_8
       (.I0(i_len[2]),
        .I1(i_len[3]),
        .I2(i_len[0]),
        .I3(i_len[1]),
        .O(s_nomac_en_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    s_nomac_en_i_9
       (.I0(i_len[10]),
        .I1(i_len[11]),
        .I2(i_len[8]),
        .I3(i_len[9]),
        .O(s_nomac_en_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_nomac_en_reg
       (.C(i_clk),
        .CE(s_len),
        .D(s_nomac_en),
        .Q(s_nomac_en_reg_n_0),
        .R(rst));
  FDRE \s_out_addr_reg[0] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_out_addr[0]),
        .Q(s_out_addr[0]),
        .R(rst));
  FDRE \s_out_addr_reg[10] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_out_addr[10]),
        .Q(s_out_addr[10]),
        .R(rst));
  FDRE \s_out_addr_reg[11] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_out_addr[11]),
        .Q(s_out_addr[11]),
        .R(rst));
  FDRE \s_out_addr_reg[12] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_out_addr[12]),
        .Q(s_out_addr[12]),
        .R(rst));
  FDRE \s_out_addr_reg[13] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_out_addr[13]),
        .Q(s_out_addr[13]),
        .R(rst));
  FDRE \s_out_addr_reg[14] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_out_addr[14]),
        .Q(s_out_addr[14]),
        .R(rst));
  FDRE \s_out_addr_reg[15] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_out_addr[15]),
        .Q(s_out_addr[15]),
        .R(rst));
  FDRE \s_out_addr_reg[16] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_out_addr[16]),
        .Q(s_out_addr[16]),
        .R(rst));
  FDRE \s_out_addr_reg[17] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_out_addr[17]),
        .Q(s_out_addr[17]),
        .R(rst));
  FDRE \s_out_addr_reg[18] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_out_addr[18]),
        .Q(s_out_addr[18]),
        .R(rst));
  FDRE \s_out_addr_reg[19] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_out_addr[19]),
        .Q(s_out_addr[19]),
        .R(rst));
  FDRE \s_out_addr_reg[1] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_out_addr[1]),
        .Q(s_out_addr[1]),
        .R(rst));
  FDRE \s_out_addr_reg[20] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_out_addr[20]),
        .Q(s_out_addr[20]),
        .R(rst));
  FDRE \s_out_addr_reg[21] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_out_addr[21]),
        .Q(s_out_addr[21]),
        .R(rst));
  FDRE \s_out_addr_reg[22] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_out_addr[22]),
        .Q(s_out_addr[22]),
        .R(rst));
  FDRE \s_out_addr_reg[23] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_out_addr[23]),
        .Q(s_out_addr[23]),
        .R(rst));
  FDRE \s_out_addr_reg[24] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_out_addr[24]),
        .Q(s_out_addr[24]),
        .R(rst));
  FDRE \s_out_addr_reg[25] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_out_addr[25]),
        .Q(s_out_addr[25]),
        .R(rst));
  FDRE \s_out_addr_reg[26] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_out_addr[26]),
        .Q(s_out_addr[26]),
        .R(rst));
  FDRE \s_out_addr_reg[27] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_out_addr[27]),
        .Q(s_out_addr[27]),
        .R(rst));
  FDRE \s_out_addr_reg[28] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_out_addr[28]),
        .Q(s_out_addr[28]),
        .R(rst));
  FDRE \s_out_addr_reg[29] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_out_addr[29]),
        .Q(s_out_addr[29]),
        .R(rst));
  FDRE \s_out_addr_reg[2] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_out_addr[2]),
        .Q(s_out_addr[2]),
        .R(rst));
  FDRE \s_out_addr_reg[30] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_out_addr[30]),
        .Q(s_out_addr[30]),
        .R(rst));
  FDRE \s_out_addr_reg[31] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_out_addr[31]),
        .Q(s_out_addr[31]),
        .R(rst));
  FDRE \s_out_addr_reg[3] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_out_addr[3]),
        .Q(s_out_addr[3]),
        .R(rst));
  FDRE \s_out_addr_reg[4] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_out_addr[4]),
        .Q(s_out_addr[4]),
        .R(rst));
  FDRE \s_out_addr_reg[5] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_out_addr[5]),
        .Q(s_out_addr[5]),
        .R(rst));
  FDRE \s_out_addr_reg[6] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_out_addr[6]),
        .Q(s_out_addr[6]),
        .R(rst));
  FDRE \s_out_addr_reg[7] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_out_addr[7]),
        .Q(s_out_addr[7]),
        .R(rst));
  FDRE \s_out_addr_reg[8] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_out_addr[8]),
        .Q(s_out_addr[8]),
        .R(rst));
  FDRE \s_out_addr_reg[9] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_out_addr[9]),
        .Q(s_out_addr[9]),
        .R(rst));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 s_out_ctr1_carry
       (.CI(1'b0),
        .CO({s_out_ctr1_carry_n_0,s_out_ctr1_carry_n_1,s_out_ctr1_carry_n_2,s_out_ctr1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({s_out_ctr1_carry_i_1_n_0,1'b0,s_out_ctr1_carry_i_2_n_0,s_out_ctr[1]}),
        .O(NLW_s_out_ctr1_carry_O_UNCONNECTED[3:0]),
        .S({s_out_ctr1_carry_i_3_n_0,s_out_ctr1_carry_i_4_n_0,s_out_ctr1_carry_i_5_n_0,s_out_ctr1_carry_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 s_out_ctr1_carry__0
       (.CI(s_out_ctr1_carry_n_0),
        .CO({s_out_ctr1_carry__0_n_0,s_out_ctr1_carry__0_n_1,s_out_ctr1_carry__0_n_2,s_out_ctr1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({s_out_ctr1_carry__0_i_1_n_0,s_out_ctr1_carry__0_i_2_n_0,s_out_ctr1_carry__0_i_3_n_0,s_out_ctr1_carry__0_i_4_n_0}),
        .O(NLW_s_out_ctr1_carry__0_O_UNCONNECTED[3:0]),
        .S({s_out_ctr1_carry__0_i_5_n_0,s_out_ctr1_carry__0_i_6_n_0,s_out_ctr1_carry__0_i_7_n_0,s_out_ctr1_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    s_out_ctr1_carry__0_i_1
       (.I0(s_out_ctr[14]),
        .I1(s_out_ctr[15]),
        .O(s_out_ctr1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    s_out_ctr1_carry__0_i_2
       (.I0(s_out_ctr[12]),
        .I1(s_out_ctr[13]),
        .O(s_out_ctr1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    s_out_ctr1_carry__0_i_3
       (.I0(s_out_ctr[10]),
        .I1(s_out_ctr[11]),
        .O(s_out_ctr1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    s_out_ctr1_carry__0_i_4
       (.I0(s_out_ctr[8]),
        .I1(s_out_ctr[9]),
        .O(s_out_ctr1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    s_out_ctr1_carry__0_i_5
       (.I0(s_out_ctr[14]),
        .I1(s_out_ctr[15]),
        .O(s_out_ctr1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    s_out_ctr1_carry__0_i_6
       (.I0(s_out_ctr[12]),
        .I1(s_out_ctr[13]),
        .O(s_out_ctr1_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    s_out_ctr1_carry__0_i_7
       (.I0(s_out_ctr[10]),
        .I1(s_out_ctr[11]),
        .O(s_out_ctr1_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    s_out_ctr1_carry__0_i_8
       (.I0(s_out_ctr[8]),
        .I1(s_out_ctr[9]),
        .O(s_out_ctr1_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 s_out_ctr1_carry__1
       (.CI(s_out_ctr1_carry__0_n_0),
        .CO({s_out_ctr1_carry__1_n_0,s_out_ctr1_carry__1_n_1,s_out_ctr1_carry__1_n_2,s_out_ctr1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({s_out_ctr1_carry__1_i_1_n_0,s_out_ctr1_carry__1_i_2_n_0,s_out_ctr1_carry__1_i_3_n_0,s_out_ctr1_carry__1_i_4_n_0}),
        .O(NLW_s_out_ctr1_carry__1_O_UNCONNECTED[3:0]),
        .S({s_out_ctr1_carry__1_i_5_n_0,s_out_ctr1_carry__1_i_6_n_0,s_out_ctr1_carry__1_i_7_n_0,s_out_ctr1_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    s_out_ctr1_carry__1_i_1
       (.I0(s_out_ctr[22]),
        .I1(s_out_ctr[23]),
        .O(s_out_ctr1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    s_out_ctr1_carry__1_i_2
       (.I0(s_out_ctr[20]),
        .I1(s_out_ctr[21]),
        .O(s_out_ctr1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    s_out_ctr1_carry__1_i_3
       (.I0(s_out_ctr[18]),
        .I1(s_out_ctr[19]),
        .O(s_out_ctr1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    s_out_ctr1_carry__1_i_4
       (.I0(s_out_ctr[16]),
        .I1(s_out_ctr[17]),
        .O(s_out_ctr1_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    s_out_ctr1_carry__1_i_5
       (.I0(s_out_ctr[22]),
        .I1(s_out_ctr[23]),
        .O(s_out_ctr1_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    s_out_ctr1_carry__1_i_6
       (.I0(s_out_ctr[20]),
        .I1(s_out_ctr[21]),
        .O(s_out_ctr1_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    s_out_ctr1_carry__1_i_7
       (.I0(s_out_ctr[18]),
        .I1(s_out_ctr[19]),
        .O(s_out_ctr1_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    s_out_ctr1_carry__1_i_8
       (.I0(s_out_ctr[16]),
        .I1(s_out_ctr[17]),
        .O(s_out_ctr1_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 s_out_ctr1_carry__2
       (.CI(s_out_ctr1_carry__1_n_0),
        .CO({s_out_ctr1_carry__2_n_0,s_out_ctr1_carry__2_n_1,s_out_ctr1_carry__2_n_2,s_out_ctr1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({s_out_ctr1_carry__2_i_1_n_0,s_out_ctr1_carry__2_i_2_n_0,s_out_ctr1_carry__2_i_3_n_0,s_out_ctr1_carry__2_i_4_n_0}),
        .O(NLW_s_out_ctr1_carry__2_O_UNCONNECTED[3:0]),
        .S({s_out_ctr1_carry__2_i_5_n_0,s_out_ctr1_carry__2_i_6_n_0,s_out_ctr1_carry__2_i_7_n_0,s_out_ctr1_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    s_out_ctr1_carry__2_i_1
       (.I0(s_out_ctr[30]),
        .I1(s_out_ctr[31]),
        .O(s_out_ctr1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    s_out_ctr1_carry__2_i_2
       (.I0(s_out_ctr[28]),
        .I1(s_out_ctr[29]),
        .O(s_out_ctr1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    s_out_ctr1_carry__2_i_3
       (.I0(s_out_ctr[26]),
        .I1(s_out_ctr[27]),
        .O(s_out_ctr1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    s_out_ctr1_carry__2_i_4
       (.I0(s_out_ctr[24]),
        .I1(s_out_ctr[25]),
        .O(s_out_ctr1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    s_out_ctr1_carry__2_i_5
       (.I0(s_out_ctr[30]),
        .I1(s_out_ctr[31]),
        .O(s_out_ctr1_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    s_out_ctr1_carry__2_i_6
       (.I0(s_out_ctr[28]),
        .I1(s_out_ctr[29]),
        .O(s_out_ctr1_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    s_out_ctr1_carry__2_i_7
       (.I0(s_out_ctr[26]),
        .I1(s_out_ctr[27]),
        .O(s_out_ctr1_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    s_out_ctr1_carry__2_i_8
       (.I0(s_out_ctr[24]),
        .I1(s_out_ctr[25]),
        .O(s_out_ctr1_carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    s_out_ctr1_carry_i_1
       (.I0(s_out_ctr[6]),
        .I1(s_out_ctr[7]),
        .O(s_out_ctr1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    s_out_ctr1_carry_i_2
       (.I0(s_out_ctr[2]),
        .I1(s_out_ctr[3]),
        .O(s_out_ctr1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    s_out_ctr1_carry_i_3
       (.I0(s_out_ctr[6]),
        .I1(s_out_ctr[7]),
        .O(s_out_ctr1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    s_out_ctr1_carry_i_4
       (.I0(s_out_ctr[4]),
        .I1(s_out_ctr[5]),
        .O(s_out_ctr1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    s_out_ctr1_carry_i_5
       (.I0(s_out_ctr[3]),
        .I1(s_out_ctr[2]),
        .O(s_out_ctr1_carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s_out_ctr1_carry_i_6
       (.I0(s_out_ctr[1]),
        .O(s_out_ctr1_carry_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \s_out_ctr[10]_i_1 
       (.I0(\t_state1_reg_n_0_[0] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(s_out_ctr0[10]),
        .O(\s_out_ctr[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \s_out_ctr[11]_i_1 
       (.I0(\t_state1_reg_n_0_[0] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(s_out_ctr0[11]),
        .O(\s_out_ctr[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \s_out_ctr[12]_i_1 
       (.I0(\t_state1_reg_n_0_[0] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(s_out_ctr0[12]),
        .O(\s_out_ctr[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \s_out_ctr[13]_i_1 
       (.I0(\t_state1_reg_n_0_[0] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(s_out_ctr0[13]),
        .O(\s_out_ctr[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \s_out_ctr[14]_i_1 
       (.I0(\t_state1_reg_n_0_[0] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(s_out_ctr0[14]),
        .O(\s_out_ctr[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \s_out_ctr[15]_i_1 
       (.I0(\t_state1_reg_n_0_[0] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(s_out_ctr0[15]),
        .O(\s_out_ctr[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \s_out_ctr[16]_i_1 
       (.I0(\t_state1_reg_n_0_[0] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(s_out_ctr0[16]),
        .O(\s_out_ctr[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \s_out_ctr[17]_i_1 
       (.I0(\t_state1_reg_n_0_[0] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(s_out_ctr0[17]),
        .O(\s_out_ctr[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \s_out_ctr[18]_i_1 
       (.I0(\t_state1_reg_n_0_[0] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(s_out_ctr0[18]),
        .O(\s_out_ctr[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \s_out_ctr[19]_i_1 
       (.I0(\t_state1_reg_n_0_[0] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(s_out_ctr0[19]),
        .O(\s_out_ctr[19]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h70)) 
    \s_out_ctr[1]_i_1 
       (.I0(\t_state1_reg_n_0_[0] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(s_out_ctr0[1]),
        .O(\s_out_ctr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \s_out_ctr[20]_i_1 
       (.I0(\t_state1_reg_n_0_[0] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(s_out_ctr0[20]),
        .O(\s_out_ctr[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \s_out_ctr[21]_i_1 
       (.I0(\t_state1_reg_n_0_[0] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(s_out_ctr0[21]),
        .O(\s_out_ctr[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \s_out_ctr[22]_i_1 
       (.I0(\t_state1_reg_n_0_[0] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(s_out_ctr0[22]),
        .O(\s_out_ctr[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \s_out_ctr[23]_i_1 
       (.I0(\t_state1_reg_n_0_[0] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(s_out_ctr0[23]),
        .O(\s_out_ctr[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \s_out_ctr[24]_i_1 
       (.I0(\t_state1_reg_n_0_[0] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(s_out_ctr0[24]),
        .O(\s_out_ctr[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \s_out_ctr[25]_i_1 
       (.I0(\t_state1_reg_n_0_[0] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(s_out_ctr0[25]),
        .O(\s_out_ctr[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \s_out_ctr[26]_i_1 
       (.I0(\t_state1_reg_n_0_[0] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(s_out_ctr0[26]),
        .O(\s_out_ctr[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \s_out_ctr[27]_i_1 
       (.I0(\t_state1_reg_n_0_[0] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(s_out_ctr0[27]),
        .O(\s_out_ctr[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \s_out_ctr[28]_i_1 
       (.I0(\t_state1_reg_n_0_[0] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(s_out_ctr0[28]),
        .O(\s_out_ctr[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \s_out_ctr[29]_i_1 
       (.I0(\t_state1_reg_n_0_[0] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(s_out_ctr0[29]),
        .O(\s_out_ctr[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \s_out_ctr[2]_i_1 
       (.I0(\t_state1_reg_n_0_[0] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(s_out_ctr0[2]),
        .O(\s_out_ctr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \s_out_ctr[30]_i_1 
       (.I0(\t_state1_reg_n_0_[0] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(s_out_ctr0[30]),
        .O(\s_out_ctr[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4504)) 
    \s_out_ctr[31]_i_1 
       (.I0(\t_state1_reg_n_0_[1] ),
        .I1(\t_state1_reg_n_0_[0] ),
        .I2(s_out_ctr1_carry__2_n_0),
        .I3(\t_state1_reg_n_0_[2] ),
        .O(\s_out_ctr[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \s_out_ctr[31]_i_2 
       (.I0(\t_state1_reg_n_0_[0] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(s_out_ctr0[31]),
        .O(\s_out_ctr[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \s_out_ctr[3]_i_1 
       (.I0(\t_state1_reg_n_0_[0] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(s_out_ctr0[3]),
        .O(\s_out_ctr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \s_out_ctr[4]_i_1 
       (.I0(\t_state1_reg_n_0_[0] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(s_out_ctr0[4]),
        .O(\s_out_ctr[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_out_ctr[4]_i_3 
       (.I0(s_out_ctr[2]),
        .O(\s_out_ctr[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \s_out_ctr[5]_i_1 
       (.I0(\t_state1_reg_n_0_[0] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(s_out_ctr0[5]),
        .O(\s_out_ctr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \s_out_ctr[6]_i_1 
       (.I0(\t_state1_reg_n_0_[0] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(s_out_ctr0[6]),
        .O(\s_out_ctr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \s_out_ctr[7]_i_1 
       (.I0(\t_state1_reg_n_0_[0] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(s_out_ctr0[7]),
        .O(\s_out_ctr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \s_out_ctr[8]_i_1 
       (.I0(\t_state1_reg_n_0_[0] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(s_out_ctr0[8]),
        .O(\s_out_ctr[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \s_out_ctr[9]_i_1 
       (.I0(\t_state1_reg_n_0_[0] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(s_out_ctr0[9]),
        .O(\s_out_ctr[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[10] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(\s_out_ctr[10]_i_1_n_0 ),
        .Q(s_out_ctr[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[11] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(\s_out_ctr[11]_i_1_n_0 ),
        .Q(s_out_ctr[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[12] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(\s_out_ctr[12]_i_1_n_0 ),
        .Q(s_out_ctr[12]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_out_ctr_reg[12]_i_2 
       (.CI(\s_out_ctr_reg[8]_i_2_n_0 ),
        .CO({\s_out_ctr_reg[12]_i_2_n_0 ,\s_out_ctr_reg[12]_i_2_n_1 ,\s_out_ctr_reg[12]_i_2_n_2 ,\s_out_ctr_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(s_out_ctr0[12:9]),
        .S(s_out_ctr[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[13] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(\s_out_ctr[13]_i_1_n_0 ),
        .Q(s_out_ctr[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[14] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(\s_out_ctr[14]_i_1_n_0 ),
        .Q(s_out_ctr[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[15] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(\s_out_ctr[15]_i_1_n_0 ),
        .Q(s_out_ctr[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[16] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(\s_out_ctr[16]_i_1_n_0 ),
        .Q(s_out_ctr[16]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_out_ctr_reg[16]_i_2 
       (.CI(\s_out_ctr_reg[12]_i_2_n_0 ),
        .CO({\s_out_ctr_reg[16]_i_2_n_0 ,\s_out_ctr_reg[16]_i_2_n_1 ,\s_out_ctr_reg[16]_i_2_n_2 ,\s_out_ctr_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(s_out_ctr0[16:13]),
        .S(s_out_ctr[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[17] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(\s_out_ctr[17]_i_1_n_0 ),
        .Q(s_out_ctr[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[18] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(\s_out_ctr[18]_i_1_n_0 ),
        .Q(s_out_ctr[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[19] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(\s_out_ctr[19]_i_1_n_0 ),
        .Q(s_out_ctr[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[1] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(\s_out_ctr[1]_i_1_n_0 ),
        .Q(s_out_ctr[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[20] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(\s_out_ctr[20]_i_1_n_0 ),
        .Q(s_out_ctr[20]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_out_ctr_reg[20]_i_2 
       (.CI(\s_out_ctr_reg[16]_i_2_n_0 ),
        .CO({\s_out_ctr_reg[20]_i_2_n_0 ,\s_out_ctr_reg[20]_i_2_n_1 ,\s_out_ctr_reg[20]_i_2_n_2 ,\s_out_ctr_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(s_out_ctr0[20:17]),
        .S(s_out_ctr[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[21] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(\s_out_ctr[21]_i_1_n_0 ),
        .Q(s_out_ctr[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[22] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(\s_out_ctr[22]_i_1_n_0 ),
        .Q(s_out_ctr[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[23] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(\s_out_ctr[23]_i_1_n_0 ),
        .Q(s_out_ctr[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[24] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(\s_out_ctr[24]_i_1_n_0 ),
        .Q(s_out_ctr[24]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_out_ctr_reg[24]_i_2 
       (.CI(\s_out_ctr_reg[20]_i_2_n_0 ),
        .CO({\s_out_ctr_reg[24]_i_2_n_0 ,\s_out_ctr_reg[24]_i_2_n_1 ,\s_out_ctr_reg[24]_i_2_n_2 ,\s_out_ctr_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(s_out_ctr0[24:21]),
        .S(s_out_ctr[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[25] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(\s_out_ctr[25]_i_1_n_0 ),
        .Q(s_out_ctr[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[26] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(\s_out_ctr[26]_i_1_n_0 ),
        .Q(s_out_ctr[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[27] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(\s_out_ctr[27]_i_1_n_0 ),
        .Q(s_out_ctr[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[28] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(\s_out_ctr[28]_i_1_n_0 ),
        .Q(s_out_ctr[28]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_out_ctr_reg[28]_i_2 
       (.CI(\s_out_ctr_reg[24]_i_2_n_0 ),
        .CO({\s_out_ctr_reg[28]_i_2_n_0 ,\s_out_ctr_reg[28]_i_2_n_1 ,\s_out_ctr_reg[28]_i_2_n_2 ,\s_out_ctr_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(s_out_ctr0[28:25]),
        .S(s_out_ctr[28:25]));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[29] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(\s_out_ctr[29]_i_1_n_0 ),
        .Q(s_out_ctr[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[2] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(\s_out_ctr[2]_i_1_n_0 ),
        .Q(s_out_ctr[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[30] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(\s_out_ctr[30]_i_1_n_0 ),
        .Q(s_out_ctr[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[31] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(\s_out_ctr[31]_i_2_n_0 ),
        .Q(s_out_ctr[31]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_out_ctr_reg[31]_i_3 
       (.CI(\s_out_ctr_reg[28]_i_2_n_0 ),
        .CO({\NLW_s_out_ctr_reg[31]_i_3_CO_UNCONNECTED [3:2],\s_out_ctr_reg[31]_i_3_n_2 ,\s_out_ctr_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_s_out_ctr_reg[31]_i_3_O_UNCONNECTED [3],s_out_ctr0[31:29]}),
        .S({1'b0,s_out_ctr[31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[3] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(\s_out_ctr[3]_i_1_n_0 ),
        .Q(s_out_ctr[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[4] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(\s_out_ctr[4]_i_1_n_0 ),
        .Q(s_out_ctr[4]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_out_ctr_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\s_out_ctr_reg[4]_i_2_n_0 ,\s_out_ctr_reg[4]_i_2_n_1 ,\s_out_ctr_reg[4]_i_2_n_2 ,\s_out_ctr_reg[4]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s_out_ctr[2],1'b0}),
        .O(s_out_ctr0[4:1]),
        .S({s_out_ctr[4:3],\s_out_ctr[4]_i_3_n_0 ,s_out_ctr[1]}));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[5] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(\s_out_ctr[5]_i_1_n_0 ),
        .Q(s_out_ctr[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[6] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(\s_out_ctr[6]_i_1_n_0 ),
        .Q(s_out_ctr[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[7] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(\s_out_ctr[7]_i_1_n_0 ),
        .Q(s_out_ctr[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[8] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(\s_out_ctr[8]_i_1_n_0 ),
        .Q(s_out_ctr[8]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_out_ctr_reg[8]_i_2 
       (.CI(\s_out_ctr_reg[4]_i_2_n_0 ),
        .CO({\s_out_ctr_reg[8]_i_2_n_0 ,\s_out_ctr_reg[8]_i_2_n_1 ,\s_out_ctr_reg[8]_i_2_n_2 ,\s_out_ctr_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(s_out_ctr0[8:5]),
        .S(s_out_ctr[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[9] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(\s_out_ctr[9]_i_1_n_0 ),
        .Q(s_out_ctr[9]),
        .R(rst));
  LUT3 #(
    .INIT(8'h08)) 
    \s_tmp_nomac[0][15]_i_1 
       (.I0(\t_state_reg_n_0_[2] ),
        .I1(\t_state_reg_n_0_[0] ),
        .I2(\t_state_reg_n_0_[1] ),
        .O(CEP));
  LUT2 #(
    .INIT(4'h6)) 
    \s_tmp_nomac[0][3]_i_1 
       (.I0(\s_tmp_nomac_reg[0]0__0_carry_n_4 ),
        .I1(\s_tmp_nomac_reg[0]0__30_carry_n_7 ),
        .O(\s_tmp_nomac_reg[0]0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \s_tmp_nomac[1][3]_i_1 
       (.I0(\s_tmp_nomac_reg[1]0__0_carry_n_4 ),
        .I1(\s_tmp_nomac_reg[1]0__30_carry_n_7 ),
        .O(\s_tmp_nomac_reg[1]0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \s_tmp_nomac[2][3]_i_1 
       (.I0(\s_tmp_nomac_reg[2]0__0_carry_n_4 ),
        .I1(\s_tmp_nomac_reg[2]0__30_carry_n_7 ),
        .O(\s_tmp_nomac_reg[2]0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \s_tmp_nomac[3][3]_i_1 
       (.I0(\s_tmp_nomac_reg[3]0__0_carry_n_4 ),
        .I1(\s_tmp_nomac_reg[3]0__30_carry_n_7 ),
        .O(\s_tmp_nomac_reg[3]0 [3]));
  CARRY4 \s_tmp_nomac_reg[0]0__0_carry 
       (.CI(1'b0),
        .CO({\s_tmp_nomac_reg[0]0__0_carry_n_0 ,\s_tmp_nomac_reg[0]0__0_carry_n_1 ,\s_tmp_nomac_reg[0]0__0_carry_n_2 ,\s_tmp_nomac_reg[0]0__0_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_tmp_nomac_reg[0]0__0_carry_i_1_n_0 ,\s_tmp_nomac_reg[0]0__0_carry_i_2_n_0 ,\s_tmp_nomac_reg[0]0__0_carry_i_3_n_0 ,1'b0}),
        .O({\s_tmp_nomac_reg[0]0__0_carry_n_4 ,\s_tmp_nomac_reg[0]0 [2:0]}),
        .S({\s_tmp_nomac_reg[0]0__0_carry_i_4_n_0 ,\s_tmp_nomac_reg[0]0__0_carry_i_5_n_0 ,\s_tmp_nomac_reg[0]0__0_carry_i_6_n_0 ,\s_tmp_nomac_reg[0]0__0_carry_i_7_n_0 }));
  CARRY4 \s_tmp_nomac_reg[0]0__0_carry__0 
       (.CI(\s_tmp_nomac_reg[0]0__0_carry_n_0 ),
        .CO({\s_tmp_nomac_reg[0]0__0_carry__0_n_0 ,\s_tmp_nomac_reg[0]0__0_carry__0_n_1 ,\s_tmp_nomac_reg[0]0__0_carry__0_n_2 ,\s_tmp_nomac_reg[0]0__0_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_tmp_nomac_reg[0]0__0_carry__0_i_1_n_0 ,\s_tmp_nomac_reg[0]0__0_carry__0_i_2_n_0 ,\s_tmp_nomac_reg[0]0__0_carry__0_i_3_n_0 ,\s_tmp_nomac_reg[0]0__0_carry__0_i_4_n_0 }),
        .O({\s_tmp_nomac_reg[0]0__0_carry__0_n_4 ,\s_tmp_nomac_reg[0]0__0_carry__0_n_5 ,\s_tmp_nomac_reg[0]0__0_carry__0_n_6 ,\s_tmp_nomac_reg[0]0__0_carry__0_n_7 }),
        .S({\s_tmp_nomac_reg[0]0__0_carry__0_i_5_n_0 ,\s_tmp_nomac_reg[0]0__0_carry__0_i_6_n_0 ,\s_tmp_nomac_reg[0]0__0_carry__0_i_7_n_0 ,\s_tmp_nomac_reg[0]0__0_carry__0_i_8_n_0 }));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[0]0__0_carry__0_i_1 
       (.I0(s_coeffs[2]),
        .I1(\s_vecs_reg_n_0_[4] ),
        .I2(s_coeffs[1]),
        .I3(\s_vecs_reg_n_0_[5] ),
        .I4(s_coeffs[0]),
        .I5(\s_vecs_reg_n_0_[6] ),
        .O(\s_tmp_nomac_reg[0]0__0_carry__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[0]0__0_carry__0_i_10 
       (.I0(\s_vecs_reg_n_0_[4] ),
        .I1(s_coeffs[2]),
        .O(\s_tmp_nomac_reg[0]0__0_carry__0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[0]0__0_carry__0_i_11 
       (.I0(\s_vecs_reg_n_0_[3] ),
        .I1(s_coeffs[2]),
        .O(\s_tmp_nomac_reg[0]0__0_carry__0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[0]0__0_carry__0_i_12 
       (.I0(\s_vecs_reg_n_0_[2] ),
        .I1(s_coeffs[2]),
        .O(\s_tmp_nomac_reg[0]0__0_carry__0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[0]0__0_carry__0_i_2 
       (.I0(s_coeffs[2]),
        .I1(\s_vecs_reg_n_0_[3] ),
        .I2(s_coeffs[1]),
        .I3(\s_vecs_reg_n_0_[4] ),
        .I4(s_coeffs[0]),
        .I5(\s_vecs_reg_n_0_[5] ),
        .O(\s_tmp_nomac_reg[0]0__0_carry__0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[0]0__0_carry__0_i_3 
       (.I0(s_coeffs[2]),
        .I1(\s_vecs_reg_n_0_[2] ),
        .I2(s_coeffs[1]),
        .I3(\s_vecs_reg_n_0_[3] ),
        .I4(s_coeffs[0]),
        .I5(\s_vecs_reg_n_0_[4] ),
        .O(\s_tmp_nomac_reg[0]0__0_carry__0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[0]0__0_carry__0_i_4 
       (.I0(s_coeffs[2]),
        .I1(\s_vecs_reg_n_0_[1] ),
        .I2(s_coeffs[1]),
        .I3(\s_vecs_reg_n_0_[2] ),
        .I4(s_coeffs[0]),
        .I5(\s_vecs_reg_n_0_[3] ),
        .O(\s_tmp_nomac_reg[0]0__0_carry__0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \s_tmp_nomac_reg[0]0__0_carry__0_i_5 
       (.I0(\s_tmp_nomac_reg[0]0__0_carry__0_i_1_n_0 ),
        .I1(s_coeffs[1]),
        .I2(\s_vecs_reg_n_0_[6] ),
        .I3(\s_tmp_nomac_reg[0]0__0_carry__0_i_9_n_0 ),
        .I4(\s_vecs_reg_n_0_[7] ),
        .I5(s_coeffs[0]),
        .O(\s_tmp_nomac_reg[0]0__0_carry__0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \s_tmp_nomac_reg[0]0__0_carry__0_i_6 
       (.I0(\s_tmp_nomac_reg[0]0__0_carry__0_i_2_n_0 ),
        .I1(s_coeffs[1]),
        .I2(\s_vecs_reg_n_0_[5] ),
        .I3(\s_tmp_nomac_reg[0]0__0_carry__0_i_10_n_0 ),
        .I4(\s_vecs_reg_n_0_[6] ),
        .I5(s_coeffs[0]),
        .O(\s_tmp_nomac_reg[0]0__0_carry__0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \s_tmp_nomac_reg[0]0__0_carry__0_i_7 
       (.I0(\s_tmp_nomac_reg[0]0__0_carry__0_i_3_n_0 ),
        .I1(s_coeffs[1]),
        .I2(\s_vecs_reg_n_0_[4] ),
        .I3(\s_tmp_nomac_reg[0]0__0_carry__0_i_11_n_0 ),
        .I4(\s_vecs_reg_n_0_[5] ),
        .I5(s_coeffs[0]),
        .O(\s_tmp_nomac_reg[0]0__0_carry__0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \s_tmp_nomac_reg[0]0__0_carry__0_i_8 
       (.I0(\s_tmp_nomac_reg[0]0__0_carry__0_i_4_n_0 ),
        .I1(s_coeffs[1]),
        .I2(\s_vecs_reg_n_0_[3] ),
        .I3(\s_tmp_nomac_reg[0]0__0_carry__0_i_12_n_0 ),
        .I4(\s_vecs_reg_n_0_[4] ),
        .I5(s_coeffs[0]),
        .O(\s_tmp_nomac_reg[0]0__0_carry__0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[0]0__0_carry__0_i_9 
       (.I0(\s_vecs_reg_n_0_[5] ),
        .I1(s_coeffs[2]),
        .O(\s_tmp_nomac_reg[0]0__0_carry__0_i_9_n_0 ));
  CARRY4 \s_tmp_nomac_reg[0]0__0_carry__1 
       (.CI(\s_tmp_nomac_reg[0]0__0_carry__0_n_0 ),
        .CO({\NLW_s_tmp_nomac_reg[0]0__0_carry__1_CO_UNCONNECTED [3],\s_tmp_nomac_reg[0]0__0_carry__1_n_1 ,\NLW_s_tmp_nomac_reg[0]0__0_carry__1_CO_UNCONNECTED [1],\s_tmp_nomac_reg[0]0__0_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\s_tmp_nomac_reg[0]0__0_carry__1_i_1_n_0 ,\s_tmp_nomac_reg[0]0__0_carry__1_i_2_n_0 }),
        .O({\NLW_s_tmp_nomac_reg[0]0__0_carry__1_O_UNCONNECTED [3:2],\s_tmp_nomac_reg[0]0__0_carry__1_n_6 ,\s_tmp_nomac_reg[0]0__0_carry__1_n_7 }),
        .S({1'b0,1'b1,\s_tmp_nomac_reg[0]0__0_carry__1_i_3_n_0 ,\s_tmp_nomac_reg[0]0__0_carry__1_i_4_n_0 }));
  LUT4 #(
    .INIT(16'h8000)) 
    \s_tmp_nomac_reg[0]0__0_carry__1_i_1 
       (.I0(s_coeffs[2]),
        .I1(\s_vecs_reg_n_0_[6] ),
        .I2(s_coeffs[1]),
        .I3(\s_vecs_reg_n_0_[7] ),
        .O(\s_tmp_nomac_reg[0]0__0_carry__1_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[0]0__0_carry__1_i_2 
       (.I0(s_coeffs[2]),
        .I1(\s_vecs_reg_n_0_[5] ),
        .I2(s_coeffs[1]),
        .I3(\s_vecs_reg_n_0_[6] ),
        .I4(s_coeffs[0]),
        .I5(\s_vecs_reg_n_0_[7] ),
        .O(\s_tmp_nomac_reg[0]0__0_carry__1_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \s_tmp_nomac_reg[0]0__0_carry__1_i_3 
       (.I0(s_coeffs[1]),
        .I1(\s_vecs_reg_n_0_[6] ),
        .I2(s_coeffs[2]),
        .I3(\s_vecs_reg_n_0_[7] ),
        .O(\s_tmp_nomac_reg[0]0__0_carry__1_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE75F30007800F000)) 
    \s_tmp_nomac_reg[0]0__0_carry__1_i_4 
       (.I0(s_coeffs[0]),
        .I1(\s_vecs_reg_n_0_[5] ),
        .I2(\s_vecs_reg_n_0_[6] ),
        .I3(s_coeffs[2]),
        .I4(\s_vecs_reg_n_0_[7] ),
        .I5(s_coeffs[1]),
        .O(\s_tmp_nomac_reg[0]0__0_carry__1_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \s_tmp_nomac_reg[0]0__0_carry_i_1 
       (.I0(s_coeffs[1]),
        .I1(\s_vecs_reg_n_0_[2] ),
        .I2(s_coeffs[2]),
        .I3(\s_vecs_reg_n_0_[1] ),
        .I4(\s_vecs_reg_n_0_[3] ),
        .I5(s_coeffs[0]),
        .O(\s_tmp_nomac_reg[0]0__0_carry_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \s_tmp_nomac_reg[0]0__0_carry_i_2 
       (.I0(s_coeffs[1]),
        .I1(\s_vecs_reg_n_0_[1] ),
        .I2(s_coeffs[2]),
        .I3(\s_vecs_reg_n_0_[0] ),
        .O(\s_tmp_nomac_reg[0]0__0_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_tmp_nomac_reg[0]0__0_carry_i_3 
       (.I0(s_coeffs[0]),
        .I1(\s_vecs_reg_n_0_[1] ),
        .O(\s_tmp_nomac_reg[0]0__0_carry_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \s_tmp_nomac_reg[0]0__0_carry_i_4 
       (.I0(\s_vecs_reg_n_0_[2] ),
        .I1(\s_tmp_nomac_reg[0]0__0_carry_i_8_n_0 ),
        .I2(\s_vecs_reg_n_0_[1] ),
        .I3(s_coeffs[1]),
        .I4(\s_vecs_reg_n_0_[0] ),
        .I5(s_coeffs[2]),
        .O(\s_tmp_nomac_reg[0]0__0_carry_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \s_tmp_nomac_reg[0]0__0_carry_i_5 
       (.I0(\s_vecs_reg_n_0_[0] ),
        .I1(s_coeffs[2]),
        .I2(\s_vecs_reg_n_0_[1] ),
        .I3(s_coeffs[1]),
        .I4(s_coeffs[0]),
        .I5(\s_vecs_reg_n_0_[2] ),
        .O(\s_tmp_nomac_reg[0]0__0_carry_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \s_tmp_nomac_reg[0]0__0_carry_i_6 
       (.I0(s_coeffs[0]),
        .I1(\s_vecs_reg_n_0_[1] ),
        .I2(s_coeffs[1]),
        .I3(\s_vecs_reg_n_0_[0] ),
        .O(\s_tmp_nomac_reg[0]0__0_carry_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_tmp_nomac_reg[0]0__0_carry_i_7 
       (.I0(\s_vecs_reg_n_0_[0] ),
        .I1(s_coeffs[0]),
        .O(\s_tmp_nomac_reg[0]0__0_carry_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[0]0__0_carry_i_8 
       (.I0(\s_vecs_reg_n_0_[3] ),
        .I1(s_coeffs[0]),
        .O(\s_tmp_nomac_reg[0]0__0_carry_i_8_n_0 ));
  CARRY4 \s_tmp_nomac_reg[0]0__30_carry 
       (.CI(1'b0),
        .CO({\s_tmp_nomac_reg[0]0__30_carry_n_0 ,\s_tmp_nomac_reg[0]0__30_carry_n_1 ,\s_tmp_nomac_reg[0]0__30_carry_n_2 ,\s_tmp_nomac_reg[0]0__30_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_tmp_nomac_reg[0]0__30_carry_i_1_n_0 ,\s_tmp_nomac_reg[0]0__30_carry_i_2_n_0 ,\s_tmp_nomac_reg[0]0__30_carry_i_3_n_0 ,1'b0}),
        .O({\s_tmp_nomac_reg[0]0__30_carry_n_4 ,\s_tmp_nomac_reg[0]0__30_carry_n_5 ,\s_tmp_nomac_reg[0]0__30_carry_n_6 ,\s_tmp_nomac_reg[0]0__30_carry_n_7 }),
        .S({\s_tmp_nomac_reg[0]0__30_carry_i_4_n_0 ,\s_tmp_nomac_reg[0]0__30_carry_i_5_n_0 ,\s_tmp_nomac_reg[0]0__30_carry_i_6_n_0 ,\s_tmp_nomac_reg[0]0__30_carry_i_7_n_0 }));
  CARRY4 \s_tmp_nomac_reg[0]0__30_carry__0 
       (.CI(\s_tmp_nomac_reg[0]0__30_carry_n_0 ),
        .CO({\s_tmp_nomac_reg[0]0__30_carry__0_n_0 ,\s_tmp_nomac_reg[0]0__30_carry__0_n_1 ,\s_tmp_nomac_reg[0]0__30_carry__0_n_2 ,\s_tmp_nomac_reg[0]0__30_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_tmp_nomac_reg[0]0__30_carry__0_i_1_n_0 ,\s_tmp_nomac_reg[0]0__30_carry__0_i_2_n_0 ,\s_tmp_nomac_reg[0]0__30_carry__0_i_3_n_0 ,\s_tmp_nomac_reg[0]0__30_carry__0_i_4_n_0 }),
        .O({\s_tmp_nomac_reg[0]0__30_carry__0_n_4 ,\s_tmp_nomac_reg[0]0__30_carry__0_n_5 ,\s_tmp_nomac_reg[0]0__30_carry__0_n_6 ,\s_tmp_nomac_reg[0]0__30_carry__0_n_7 }),
        .S({\s_tmp_nomac_reg[0]0__30_carry__0_i_5_n_0 ,\s_tmp_nomac_reg[0]0__30_carry__0_i_6_n_0 ,\s_tmp_nomac_reg[0]0__30_carry__0_i_7_n_0 ,\s_tmp_nomac_reg[0]0__30_carry__0_i_8_n_0 }));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[0]0__30_carry__0_i_1 
       (.I0(s_coeffs[5]),
        .I1(\s_vecs_reg_n_0_[4] ),
        .I2(s_coeffs[4]),
        .I3(\s_vecs_reg_n_0_[5] ),
        .I4(s_coeffs[3]),
        .I5(\s_vecs_reg_n_0_[6] ),
        .O(\s_tmp_nomac_reg[0]0__30_carry__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[0]0__30_carry__0_i_10 
       (.I0(\s_vecs_reg_n_0_[4] ),
        .I1(s_coeffs[5]),
        .O(\s_tmp_nomac_reg[0]0__30_carry__0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[0]0__30_carry__0_i_11 
       (.I0(\s_vecs_reg_n_0_[3] ),
        .I1(s_coeffs[5]),
        .O(\s_tmp_nomac_reg[0]0__30_carry__0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[0]0__30_carry__0_i_12 
       (.I0(\s_vecs_reg_n_0_[2] ),
        .I1(s_coeffs[5]),
        .O(\s_tmp_nomac_reg[0]0__30_carry__0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[0]0__30_carry__0_i_2 
       (.I0(s_coeffs[5]),
        .I1(\s_vecs_reg_n_0_[3] ),
        .I2(s_coeffs[4]),
        .I3(\s_vecs_reg_n_0_[4] ),
        .I4(s_coeffs[3]),
        .I5(\s_vecs_reg_n_0_[5] ),
        .O(\s_tmp_nomac_reg[0]0__30_carry__0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[0]0__30_carry__0_i_3 
       (.I0(s_coeffs[5]),
        .I1(\s_vecs_reg_n_0_[2] ),
        .I2(s_coeffs[4]),
        .I3(\s_vecs_reg_n_0_[3] ),
        .I4(s_coeffs[3]),
        .I5(\s_vecs_reg_n_0_[4] ),
        .O(\s_tmp_nomac_reg[0]0__30_carry__0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[0]0__30_carry__0_i_4 
       (.I0(s_coeffs[5]),
        .I1(\s_vecs_reg_n_0_[1] ),
        .I2(s_coeffs[4]),
        .I3(\s_vecs_reg_n_0_[2] ),
        .I4(s_coeffs[3]),
        .I5(\s_vecs_reg_n_0_[3] ),
        .O(\s_tmp_nomac_reg[0]0__30_carry__0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \s_tmp_nomac_reg[0]0__30_carry__0_i_5 
       (.I0(\s_tmp_nomac_reg[0]0__30_carry__0_i_1_n_0 ),
        .I1(s_coeffs[4]),
        .I2(\s_vecs_reg_n_0_[6] ),
        .I3(\s_tmp_nomac_reg[0]0__30_carry__0_i_9_n_0 ),
        .I4(\s_vecs_reg_n_0_[7] ),
        .I5(s_coeffs[3]),
        .O(\s_tmp_nomac_reg[0]0__30_carry__0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \s_tmp_nomac_reg[0]0__30_carry__0_i_6 
       (.I0(\s_tmp_nomac_reg[0]0__30_carry__0_i_2_n_0 ),
        .I1(s_coeffs[4]),
        .I2(\s_vecs_reg_n_0_[5] ),
        .I3(\s_tmp_nomac_reg[0]0__30_carry__0_i_10_n_0 ),
        .I4(\s_vecs_reg_n_0_[6] ),
        .I5(s_coeffs[3]),
        .O(\s_tmp_nomac_reg[0]0__30_carry__0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \s_tmp_nomac_reg[0]0__30_carry__0_i_7 
       (.I0(\s_tmp_nomac_reg[0]0__30_carry__0_i_3_n_0 ),
        .I1(s_coeffs[4]),
        .I2(\s_vecs_reg_n_0_[4] ),
        .I3(\s_tmp_nomac_reg[0]0__30_carry__0_i_11_n_0 ),
        .I4(\s_vecs_reg_n_0_[5] ),
        .I5(s_coeffs[3]),
        .O(\s_tmp_nomac_reg[0]0__30_carry__0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \s_tmp_nomac_reg[0]0__30_carry__0_i_8 
       (.I0(\s_tmp_nomac_reg[0]0__30_carry__0_i_4_n_0 ),
        .I1(s_coeffs[4]),
        .I2(\s_vecs_reg_n_0_[3] ),
        .I3(\s_tmp_nomac_reg[0]0__30_carry__0_i_12_n_0 ),
        .I4(\s_vecs_reg_n_0_[4] ),
        .I5(s_coeffs[3]),
        .O(\s_tmp_nomac_reg[0]0__30_carry__0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[0]0__30_carry__0_i_9 
       (.I0(\s_vecs_reg_n_0_[5] ),
        .I1(s_coeffs[5]),
        .O(\s_tmp_nomac_reg[0]0__30_carry__0_i_9_n_0 ));
  CARRY4 \s_tmp_nomac_reg[0]0__30_carry__1 
       (.CI(\s_tmp_nomac_reg[0]0__30_carry__0_n_0 ),
        .CO({\NLW_s_tmp_nomac_reg[0]0__30_carry__1_CO_UNCONNECTED [3],\s_tmp_nomac_reg[0]0__30_carry__1_n_1 ,\NLW_s_tmp_nomac_reg[0]0__30_carry__1_CO_UNCONNECTED [1],\s_tmp_nomac_reg[0]0__30_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\s_tmp_nomac_reg[0]0__30_carry__1_i_1_n_0 ,\s_tmp_nomac_reg[0]0__30_carry__1_i_2_n_0 }),
        .O({\NLW_s_tmp_nomac_reg[0]0__30_carry__1_O_UNCONNECTED [3:2],\s_tmp_nomac_reg[0]0__30_carry__1_n_6 ,\s_tmp_nomac_reg[0]0__30_carry__1_n_7 }),
        .S({1'b0,1'b1,\s_tmp_nomac_reg[0]0__30_carry__1_i_3_n_0 ,\s_tmp_nomac_reg[0]0__30_carry__1_i_4_n_0 }));
  LUT4 #(
    .INIT(16'h8000)) 
    \s_tmp_nomac_reg[0]0__30_carry__1_i_1 
       (.I0(s_coeffs[5]),
        .I1(\s_vecs_reg_n_0_[6] ),
        .I2(s_coeffs[4]),
        .I3(\s_vecs_reg_n_0_[7] ),
        .O(\s_tmp_nomac_reg[0]0__30_carry__1_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[0]0__30_carry__1_i_2 
       (.I0(s_coeffs[5]),
        .I1(\s_vecs_reg_n_0_[5] ),
        .I2(s_coeffs[4]),
        .I3(\s_vecs_reg_n_0_[6] ),
        .I4(s_coeffs[3]),
        .I5(\s_vecs_reg_n_0_[7] ),
        .O(\s_tmp_nomac_reg[0]0__30_carry__1_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \s_tmp_nomac_reg[0]0__30_carry__1_i_3 
       (.I0(s_coeffs[4]),
        .I1(\s_vecs_reg_n_0_[6] ),
        .I2(s_coeffs[5]),
        .I3(\s_vecs_reg_n_0_[7] ),
        .O(\s_tmp_nomac_reg[0]0__30_carry__1_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE75F30007800F000)) 
    \s_tmp_nomac_reg[0]0__30_carry__1_i_4 
       (.I0(s_coeffs[3]),
        .I1(\s_vecs_reg_n_0_[5] ),
        .I2(\s_vecs_reg_n_0_[6] ),
        .I3(s_coeffs[5]),
        .I4(\s_vecs_reg_n_0_[7] ),
        .I5(s_coeffs[4]),
        .O(\s_tmp_nomac_reg[0]0__30_carry__1_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \s_tmp_nomac_reg[0]0__30_carry_i_1 
       (.I0(s_coeffs[4]),
        .I1(\s_vecs_reg_n_0_[2] ),
        .I2(s_coeffs[5]),
        .I3(\s_vecs_reg_n_0_[1] ),
        .I4(\s_vecs_reg_n_0_[3] ),
        .I5(s_coeffs[3]),
        .O(\s_tmp_nomac_reg[0]0__30_carry_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \s_tmp_nomac_reg[0]0__30_carry_i_2 
       (.I0(s_coeffs[4]),
        .I1(\s_vecs_reg_n_0_[1] ),
        .I2(s_coeffs[5]),
        .I3(\s_vecs_reg_n_0_[0] ),
        .O(\s_tmp_nomac_reg[0]0__30_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_tmp_nomac_reg[0]0__30_carry_i_3 
       (.I0(s_coeffs[3]),
        .I1(\s_vecs_reg_n_0_[1] ),
        .O(\s_tmp_nomac_reg[0]0__30_carry_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \s_tmp_nomac_reg[0]0__30_carry_i_4 
       (.I0(\s_vecs_reg_n_0_[2] ),
        .I1(\s_tmp_nomac_reg[0]0__30_carry_i_8_n_0 ),
        .I2(\s_vecs_reg_n_0_[1] ),
        .I3(s_coeffs[4]),
        .I4(\s_vecs_reg_n_0_[0] ),
        .I5(s_coeffs[5]),
        .O(\s_tmp_nomac_reg[0]0__30_carry_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \s_tmp_nomac_reg[0]0__30_carry_i_5 
       (.I0(\s_vecs_reg_n_0_[0] ),
        .I1(s_coeffs[5]),
        .I2(\s_vecs_reg_n_0_[1] ),
        .I3(s_coeffs[4]),
        .I4(s_coeffs[3]),
        .I5(\s_vecs_reg_n_0_[2] ),
        .O(\s_tmp_nomac_reg[0]0__30_carry_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \s_tmp_nomac_reg[0]0__30_carry_i_6 
       (.I0(s_coeffs[3]),
        .I1(\s_vecs_reg_n_0_[1] ),
        .I2(s_coeffs[4]),
        .I3(\s_vecs_reg_n_0_[0] ),
        .O(\s_tmp_nomac_reg[0]0__30_carry_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_tmp_nomac_reg[0]0__30_carry_i_7 
       (.I0(\s_vecs_reg_n_0_[0] ),
        .I1(s_coeffs[3]),
        .O(\s_tmp_nomac_reg[0]0__30_carry_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[0]0__30_carry_i_8 
       (.I0(\s_vecs_reg_n_0_[3] ),
        .I1(s_coeffs[3]),
        .O(\s_tmp_nomac_reg[0]0__30_carry_i_8_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_tmp_nomac_reg[0]0__60_carry 
       (.CI(1'b0),
        .CO({\s_tmp_nomac_reg[0]0__60_carry_n_0 ,\s_tmp_nomac_reg[0]0__60_carry_n_1 ,\s_tmp_nomac_reg[0]0__60_carry_n_2 ,\s_tmp_nomac_reg[0]0__60_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_tmp_nomac_reg[0]0__60_carry_i_1_n_0 ,\s_tmp_nomac_reg[0]0__0_carry__0_n_6 ,\s_tmp_nomac_reg[0]0__0_carry__0_n_7 ,\s_tmp_nomac_reg[0]0__0_carry_n_4 }),
        .O({\s_tmp_nomac_reg[0]0 [6:4],\NLW_s_tmp_nomac_reg[0]0__60_carry_O_UNCONNECTED [0]}),
        .S({\s_tmp_nomac_reg[0]0__60_carry_i_2_n_0 ,\s_tmp_nomac_reg[0]0__60_carry_i_3_n_0 ,\s_tmp_nomac_reg[0]0__60_carry_i_4_n_0 ,\s_tmp_nomac_reg[0]0__60_carry_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_tmp_nomac_reg[0]0__60_carry__0 
       (.CI(\s_tmp_nomac_reg[0]0__60_carry_n_0 ),
        .CO({\s_tmp_nomac_reg[0]0__60_carry__0_n_0 ,\s_tmp_nomac_reg[0]0__60_carry__0_n_1 ,\s_tmp_nomac_reg[0]0__60_carry__0_n_2 ,\s_tmp_nomac_reg[0]0__60_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_tmp_nomac_reg[0]0__60_carry__0_i_1_n_0 ,\s_tmp_nomac_reg[0]0__60_carry__0_i_2_n_0 ,\s_tmp_nomac_reg[0]0__60_carry__0_i_3_n_0 ,\s_tmp_nomac_reg[0]0__60_carry__0_i_4_n_0 }),
        .O(\s_tmp_nomac_reg[0]0 [10:7]),
        .S({\s_tmp_nomac_reg[0]0__60_carry__0_i_5_n_0 ,\s_tmp_nomac_reg[0]0__60_carry__0_i_6_n_0 ,\s_tmp_nomac_reg[0]0__60_carry__0_i_7_n_0 ,\s_tmp_nomac_reg[0]0__60_carry__0_i_8_n_0 }));
  LUT4 #(
    .INIT(16'h8F08)) 
    \s_tmp_nomac_reg[0]0__60_carry__0_i_1 
       (.I0(s_coeffs[6]),
        .I1(\s_vecs_reg_n_0_[3] ),
        .I2(\s_tmp_nomac_reg[0]0__60_carry__0_i_9_n_0 ),
        .I3(\s_tmp_nomac_reg[0]0__60_carry__0_i_10_n_0 ),
        .O(\s_tmp_nomac_reg[0]0__60_carry__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    \s_tmp_nomac_reg[0]0__60_carry__0_i_10 
       (.I0(\s_tmp_nomac_reg[0]0__30_carry__0_n_6 ),
        .I1(\s_tmp_nomac_reg[0]0__0_carry__1_n_7 ),
        .I2(s_coeffs[7]),
        .I3(\s_vecs_reg_n_0_[1] ),
        .O(\s_tmp_nomac_reg[0]0__60_carry__0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    \s_tmp_nomac_reg[0]0__60_carry__0_i_11 
       (.I0(s_coeffs[7]),
        .I1(\s_vecs_reg_n_0_[1] ),
        .I2(\s_tmp_nomac_reg[0]0__30_carry__0_n_6 ),
        .I3(\s_tmp_nomac_reg[0]0__0_carry__1_n_7 ),
        .O(\s_tmp_nomac_reg[0]0__60_carry__0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[0]0__60_carry__0_i_12 
       (.I0(\s_vecs_reg_n_0_[3] ),
        .I1(s_coeffs[6]),
        .O(\s_tmp_nomac_reg[0]0__60_carry__0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    \s_tmp_nomac_reg[0]0__60_carry__0_i_13 
       (.I0(s_coeffs[7]),
        .I1(\s_vecs_reg_n_0_[3] ),
        .I2(\s_tmp_nomac_reg[0]0__30_carry__0_n_4 ),
        .I3(\s_tmp_nomac_reg[0]0__0_carry__1_n_1 ),
        .O(\s_tmp_nomac_reg[0]0__60_carry__0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[0]0__60_carry__0_i_14 
       (.I0(\s_vecs_reg_n_0_[4] ),
        .I1(s_coeffs[6]),
        .O(\s_tmp_nomac_reg[0]0__60_carry__0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    \s_tmp_nomac_reg[0]0__60_carry__0_i_15 
       (.I0(\s_tmp_nomac_reg[0]0__30_carry__0_n_5 ),
        .I1(\s_tmp_nomac_reg[0]0__0_carry__1_n_6 ),
        .I2(s_coeffs[7]),
        .I3(\s_vecs_reg_n_0_[2] ),
        .O(\s_tmp_nomac_reg[0]0__60_carry__0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \s_tmp_nomac_reg[0]0__60_carry__0_i_16 
       (.I0(\s_tmp_nomac_reg[0]0__0_carry__0_n_5 ),
        .I1(\s_tmp_nomac_reg[0]0__30_carry_n_4 ),
        .I2(s_coeffs[6]),
        .I3(\s_vecs_reg_n_0_[1] ),
        .O(\s_tmp_nomac_reg[0]0__60_carry__0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[0]0__60_carry__0_i_17 
       (.I0(\s_vecs_reg_n_0_[2] ),
        .I1(s_coeffs[6]),
        .O(\s_tmp_nomac_reg[0]0__60_carry__0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[0]0__60_carry__0_i_18 
       (.I0(\s_vecs_reg_n_0_[0] ),
        .I1(s_coeffs[7]),
        .O(\s_tmp_nomac_reg[0]0__60_carry__0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    \s_tmp_nomac_reg[0]0__60_carry__0_i_19 
       (.I0(s_coeffs[7]),
        .I1(\s_vecs_reg_n_0_[0] ),
        .I2(\s_tmp_nomac_reg[0]0__30_carry__0_n_7 ),
        .I3(\s_tmp_nomac_reg[0]0__0_carry__0_n_4 ),
        .O(\s_tmp_nomac_reg[0]0__60_carry__0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h8A08080808080808)) 
    \s_tmp_nomac_reg[0]0__60_carry__0_i_2 
       (.I0(s_coeffs[6]),
        .I1(\s_vecs_reg_n_0_[2] ),
        .I2(\s_tmp_nomac_reg[0]0__60_carry__0_i_11_n_0 ),
        .I3(\s_vecs_reg_n_0_[1] ),
        .I4(\s_tmp_nomac_reg[0]0__30_carry_n_4 ),
        .I5(\s_tmp_nomac_reg[0]0__0_carry__0_n_5 ),
        .O(\s_tmp_nomac_reg[0]0__60_carry__0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5995959595959595)) 
    \s_tmp_nomac_reg[0]0__60_carry__0_i_3 
       (.I0(\s_tmp_nomac_reg[0]0__60_carry__0_i_11_n_0 ),
        .I1(s_coeffs[6]),
        .I2(\s_vecs_reg_n_0_[2] ),
        .I3(\s_tmp_nomac_reg[0]0__0_carry__0_n_5 ),
        .I4(\s_tmp_nomac_reg[0]0__30_carry_n_4 ),
        .I5(\s_vecs_reg_n_0_[1] ),
        .O(\s_tmp_nomac_reg[0]0__60_carry__0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \s_tmp_nomac_reg[0]0__60_carry__0_i_4 
       (.I0(\s_tmp_nomac_reg[0]0__0_carry__0_n_4 ),
        .I1(\s_tmp_nomac_reg[0]0__30_carry__0_n_7 ),
        .I2(\s_vecs_reg_n_0_[0] ),
        .I3(s_coeffs[7]),
        .O(\s_tmp_nomac_reg[0]0__60_carry__0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \s_tmp_nomac_reg[0]0__60_carry__0_i_5 
       (.I0(\s_tmp_nomac_reg[0]0__60_carry__0_i_10_n_0 ),
        .I1(\s_tmp_nomac_reg[0]0__60_carry__0_i_9_n_0 ),
        .I2(\s_tmp_nomac_reg[0]0__60_carry__0_i_12_n_0 ),
        .I3(\s_tmp_nomac_reg[0]0__60_carry__0_i_13_n_0 ),
        .I4(\s_tmp_nomac_reg[0]0__60_carry__0_i_14_n_0 ),
        .I5(\s_tmp_nomac_reg[0]0__60_carry__0_i_15_n_0 ),
        .O(\s_tmp_nomac_reg[0]0__60_carry__0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \s_tmp_nomac_reg[0]0__60_carry__0_i_6 
       (.I0(\s_tmp_nomac_reg[0]0__60_carry__0_i_16_n_0 ),
        .I1(\s_tmp_nomac_reg[0]0__60_carry__0_i_11_n_0 ),
        .I2(\s_tmp_nomac_reg[0]0__60_carry__0_i_17_n_0 ),
        .I3(\s_tmp_nomac_reg[0]0__60_carry__0_i_9_n_0 ),
        .I4(\s_tmp_nomac_reg[0]0__60_carry__0_i_12_n_0 ),
        .I5(\s_tmp_nomac_reg[0]0__60_carry__0_i_10_n_0 ),
        .O(\s_tmp_nomac_reg[0]0__60_carry__0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6969966996699696)) 
    \s_tmp_nomac_reg[0]0__60_carry__0_i_7 
       (.I0(\s_tmp_nomac_reg[0]0__60_carry__0_i_11_n_0 ),
        .I1(\s_tmp_nomac_reg[0]0__60_carry__0_i_17_n_0 ),
        .I2(\s_tmp_nomac_reg[0]0__60_carry__0_i_16_n_0 ),
        .I3(\s_tmp_nomac_reg[0]0__60_carry__0_i_18_n_0 ),
        .I4(\s_tmp_nomac_reg[0]0__0_carry__0_n_4 ),
        .I5(\s_tmp_nomac_reg[0]0__30_carry__0_n_7 ),
        .O(\s_tmp_nomac_reg[0]0__60_carry__0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h6A959595)) 
    \s_tmp_nomac_reg[0]0__60_carry__0_i_8 
       (.I0(\s_tmp_nomac_reg[0]0__60_carry__0_i_19_n_0 ),
        .I1(\s_vecs_reg_n_0_[1] ),
        .I2(s_coeffs[6]),
        .I3(\s_tmp_nomac_reg[0]0__30_carry_n_4 ),
        .I4(\s_tmp_nomac_reg[0]0__0_carry__0_n_5 ),
        .O(\s_tmp_nomac_reg[0]0__60_carry__0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    \s_tmp_nomac_reg[0]0__60_carry__0_i_9 
       (.I0(s_coeffs[7]),
        .I1(\s_vecs_reg_n_0_[2] ),
        .I2(\s_tmp_nomac_reg[0]0__30_carry__0_n_5 ),
        .I3(\s_tmp_nomac_reg[0]0__0_carry__1_n_6 ),
        .O(\s_tmp_nomac_reg[0]0__60_carry__0_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_tmp_nomac_reg[0]0__60_carry__1 
       (.CI(\s_tmp_nomac_reg[0]0__60_carry__0_n_0 ),
        .CO({\s_tmp_nomac_reg[0]0__60_carry__1_n_0 ,\s_tmp_nomac_reg[0]0__60_carry__1_n_1 ,\s_tmp_nomac_reg[0]0__60_carry__1_n_2 ,\s_tmp_nomac_reg[0]0__60_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_tmp_nomac_reg[0]0__60_carry__1_i_1_n_0 ,\s_tmp_nomac_reg[0]0__60_carry__1_i_2_n_0 ,\s_tmp_nomac_reg[0]0__60_carry__1_i_3_n_0 ,\s_tmp_nomac_reg[0]0__60_carry__1_i_4_n_0 }),
        .O(\s_tmp_nomac_reg[0]0 [14:11]),
        .S({\s_tmp_nomac_reg[0]0__60_carry__1_i_5_n_0 ,\s_tmp_nomac_reg[0]0__60_carry__1_i_6_n_0 ,\s_tmp_nomac_reg[0]0__60_carry__1_i_7_n_0 ,\s_tmp_nomac_reg[0]0__60_carry__1_i_8_n_0 }));
  LUT6 #(
    .INIT(64'h7D44144414441444)) 
    \s_tmp_nomac_reg[0]0__60_carry__1_i_1 
       (.I0(\s_tmp_nomac_reg[0]0__60_carry__1_i_9_n_0 ),
        .I1(\s_tmp_nomac_reg[0]0__30_carry__1_n_1 ),
        .I2(\s_vecs_reg_n_0_[6] ),
        .I3(s_coeffs[7]),
        .I4(\s_tmp_nomac_reg[0]0__30_carry__1_n_6 ),
        .I5(\s_vecs_reg_n_0_[5] ),
        .O(\s_tmp_nomac_reg[0]0__60_carry__1_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[0]0__60_carry__1_i_10 
       (.I0(\s_vecs_reg_n_0_[6] ),
        .I1(s_coeffs[6]),
        .O(\s_tmp_nomac_reg[0]0__60_carry__1_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    \s_tmp_nomac_reg[0]0__60_carry__1_i_11 
       (.I0(\s_tmp_nomac_reg[0]0__30_carry__0_n_4 ),
        .I1(\s_tmp_nomac_reg[0]0__0_carry__1_n_1 ),
        .I2(s_coeffs[7]),
        .I3(\s_vecs_reg_n_0_[3] ),
        .O(\s_tmp_nomac_reg[0]0__60_carry__1_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \s_tmp_nomac_reg[0]0__60_carry__1_i_12 
       (.I0(s_coeffs[7]),
        .I1(\s_vecs_reg_n_0_[5] ),
        .I2(\s_tmp_nomac_reg[0]0__30_carry__1_n_6 ),
        .O(\s_tmp_nomac_reg[0]0__60_carry__1_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h87)) 
    \s_tmp_nomac_reg[0]0__60_carry__1_i_13 
       (.I0(s_coeffs[7]),
        .I1(\s_vecs_reg_n_0_[6] ),
        .I2(\s_tmp_nomac_reg[0]0__30_carry__1_n_1 ),
        .O(\s_tmp_nomac_reg[0]0__60_carry__1_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[0]0__60_carry__1_i_14 
       (.I0(\s_vecs_reg_n_0_[5] ),
        .I1(s_coeffs[6]),
        .O(\s_tmp_nomac_reg[0]0__60_carry__1_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6A959595)) 
    \s_tmp_nomac_reg[0]0__60_carry__1_i_15 
       (.I0(\s_tmp_nomac_reg[0]0__30_carry__1_n_6 ),
        .I1(\s_vecs_reg_n_0_[5] ),
        .I2(s_coeffs[7]),
        .I3(s_coeffs[6]),
        .I4(\s_vecs_reg_n_0_[6] ),
        .O(\s_tmp_nomac_reg[0]0__60_carry__1_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h87)) 
    \s_tmp_nomac_reg[0]0__60_carry__1_i_16 
       (.I0(s_coeffs[7]),
        .I1(\s_vecs_reg_n_0_[4] ),
        .I2(\s_tmp_nomac_reg[0]0__30_carry__1_n_7 ),
        .O(\s_tmp_nomac_reg[0]0__60_carry__1_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h7D44144414441444)) 
    \s_tmp_nomac_reg[0]0__60_carry__1_i_2 
       (.I0(\s_tmp_nomac_reg[0]0__60_carry__1_i_10_n_0 ),
        .I1(\s_tmp_nomac_reg[0]0__30_carry__1_n_6 ),
        .I2(\s_vecs_reg_n_0_[5] ),
        .I3(s_coeffs[7]),
        .I4(\s_tmp_nomac_reg[0]0__30_carry__1_n_7 ),
        .I5(\s_vecs_reg_n_0_[4] ),
        .O(\s_tmp_nomac_reg[0]0__60_carry__1_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8FF8F8F808808080)) 
    \s_tmp_nomac_reg[0]0__60_carry__1_i_3 
       (.I0(s_coeffs[6]),
        .I1(\s_vecs_reg_n_0_[5] ),
        .I2(\s_tmp_nomac_reg[0]0__30_carry__1_n_7 ),
        .I3(\s_vecs_reg_n_0_[4] ),
        .I4(s_coeffs[7]),
        .I5(\s_tmp_nomac_reg[0]0__60_carry__1_i_11_n_0 ),
        .O(\s_tmp_nomac_reg[0]0__60_carry__1_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8F08)) 
    \s_tmp_nomac_reg[0]0__60_carry__1_i_4 
       (.I0(s_coeffs[6]),
        .I1(\s_vecs_reg_n_0_[4] ),
        .I2(\s_tmp_nomac_reg[0]0__60_carry__0_i_13_n_0 ),
        .I3(\s_tmp_nomac_reg[0]0__60_carry__0_i_15_n_0 ),
        .O(\s_tmp_nomac_reg[0]0__60_carry__1_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4FD525D52540B040)) 
    \s_tmp_nomac_reg[0]0__60_carry__1_i_5 
       (.I0(\s_tmp_nomac_reg[0]0__60_carry__1_i_12_n_0 ),
        .I1(s_coeffs[6]),
        .I2(\s_vecs_reg_n_0_[7] ),
        .I3(s_coeffs[7]),
        .I4(\s_vecs_reg_n_0_[6] ),
        .I5(\s_tmp_nomac_reg[0]0__30_carry__1_n_1 ),
        .O(\s_tmp_nomac_reg[0]0__60_carry__1_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h69999666)) 
    \s_tmp_nomac_reg[0]0__60_carry__1_i_6 
       (.I0(\s_tmp_nomac_reg[0]0__60_carry__1_i_2_n_0 ),
        .I1(\s_tmp_nomac_reg[0]0__60_carry__1_i_13_n_0 ),
        .I2(s_coeffs[6]),
        .I3(\s_vecs_reg_n_0_[7] ),
        .I4(\s_tmp_nomac_reg[0]0__60_carry__1_i_12_n_0 ),
        .O(\s_tmp_nomac_reg[0]0__60_carry__1_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hD2B4B4B4B42D2D2D)) 
    \s_tmp_nomac_reg[0]0__60_carry__1_i_7 
       (.I0(\s_tmp_nomac_reg[0]0__60_carry__1_i_11_n_0 ),
        .I1(\s_tmp_nomac_reg[0]0__60_carry__1_i_14_n_0 ),
        .I2(\s_tmp_nomac_reg[0]0__60_carry__1_i_15_n_0 ),
        .I3(s_coeffs[7]),
        .I4(\s_vecs_reg_n_0_[4] ),
        .I5(\s_tmp_nomac_reg[0]0__30_carry__1_n_7 ),
        .O(\s_tmp_nomac_reg[0]0__60_carry__1_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \s_tmp_nomac_reg[0]0__60_carry__1_i_8 
       (.I0(\s_tmp_nomac_reg[0]0__60_carry__0_i_15_n_0 ),
        .I1(\s_tmp_nomac_reg[0]0__60_carry__0_i_13_n_0 ),
        .I2(\s_tmp_nomac_reg[0]0__60_carry__0_i_14_n_0 ),
        .I3(\s_tmp_nomac_reg[0]0__60_carry__1_i_16_n_0 ),
        .I4(\s_tmp_nomac_reg[0]0__60_carry__1_i_14_n_0 ),
        .I5(\s_tmp_nomac_reg[0]0__60_carry__1_i_11_n_0 ),
        .O(\s_tmp_nomac_reg[0]0__60_carry__1_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[0]0__60_carry__1_i_9 
       (.I0(\s_vecs_reg_n_0_[7] ),
        .I1(s_coeffs[6]),
        .O(\s_tmp_nomac_reg[0]0__60_carry__1_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_tmp_nomac_reg[0]0__60_carry__2 
       (.CI(\s_tmp_nomac_reg[0]0__60_carry__1_n_0 ),
        .CO(\NLW_s_tmp_nomac_reg[0]0__60_carry__2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_s_tmp_nomac_reg[0]0__60_carry__2_O_UNCONNECTED [3:1],\s_tmp_nomac_reg[0]0 [15]}),
        .S({1'b0,1'b0,1'b0,\s_tmp_nomac_reg[0]0__60_carry__2_i_1_n_0 }));
  LUT4 #(
    .INIT(16'h8000)) 
    \s_tmp_nomac_reg[0]0__60_carry__2_i_1 
       (.I0(\s_vecs_reg_n_0_[7] ),
        .I1(\s_tmp_nomac_reg[0]0__30_carry__1_n_1 ),
        .I2(\s_vecs_reg_n_0_[6] ),
        .I3(s_coeffs[7]),
        .O(\s_tmp_nomac_reg[0]0__60_carry__2_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_tmp_nomac_reg[0]0__60_carry_i_1 
       (.I0(\s_tmp_nomac_reg[0]0__0_carry__0_n_5 ),
        .I1(\s_tmp_nomac_reg[0]0__30_carry_n_4 ),
        .O(\s_tmp_nomac_reg[0]0__60_carry_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \s_tmp_nomac_reg[0]0__60_carry_i_2 
       (.I0(\s_tmp_nomac_reg[0]0__30_carry_n_4 ),
        .I1(\s_tmp_nomac_reg[0]0__0_carry__0_n_5 ),
        .I2(s_coeffs[6]),
        .I3(\s_vecs_reg_n_0_[0] ),
        .O(\s_tmp_nomac_reg[0]0__60_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_tmp_nomac_reg[0]0__60_carry_i_3 
       (.I0(\s_tmp_nomac_reg[0]0__0_carry__0_n_6 ),
        .I1(\s_tmp_nomac_reg[0]0__30_carry_n_5 ),
        .O(\s_tmp_nomac_reg[0]0__60_carry_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_tmp_nomac_reg[0]0__60_carry_i_4 
       (.I0(\s_tmp_nomac_reg[0]0__0_carry__0_n_7 ),
        .I1(\s_tmp_nomac_reg[0]0__30_carry_n_6 ),
        .O(\s_tmp_nomac_reg[0]0__60_carry_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_tmp_nomac_reg[0]0__60_carry_i_5 
       (.I0(\s_tmp_nomac_reg[0]0__0_carry_n_4 ),
        .I1(\s_tmp_nomac_reg[0]0__30_carry_n_7 ),
        .O(\s_tmp_nomac_reg[0]0__60_carry_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[0][0] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[0]0 [0]),
        .Q(\s_tmp_nomac_reg_n_0_[0][0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[0][10] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[0]0 [10]),
        .Q(\s_tmp_nomac_reg_n_0_[0][10] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[0][11] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[0]0 [11]),
        .Q(\s_tmp_nomac_reg_n_0_[0][11] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[0][12] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[0]0 [12]),
        .Q(\s_tmp_nomac_reg_n_0_[0][12] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[0][13] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[0]0 [13]),
        .Q(\s_tmp_nomac_reg_n_0_[0][13] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[0][14] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[0]0 [14]),
        .Q(\s_tmp_nomac_reg_n_0_[0][14] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[0][15] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[0]0 [15]),
        .Q(\s_tmp_nomac_reg_n_0_[0][15] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[0][1] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[0]0 [1]),
        .Q(\s_tmp_nomac_reg_n_0_[0][1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[0][2] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[0]0 [2]),
        .Q(\s_tmp_nomac_reg_n_0_[0][2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[0][3] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[0]0 [3]),
        .Q(\s_tmp_nomac_reg_n_0_[0][3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[0][4] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[0]0 [4]),
        .Q(\s_tmp_nomac_reg_n_0_[0][4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[0][5] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[0]0 [5]),
        .Q(\s_tmp_nomac_reg_n_0_[0][5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[0][6] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[0]0 [6]),
        .Q(\s_tmp_nomac_reg_n_0_[0][6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[0][7] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[0]0 [7]),
        .Q(\s_tmp_nomac_reg_n_0_[0][7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[0][8] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[0]0 [8]),
        .Q(\s_tmp_nomac_reg_n_0_[0][8] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[0][9] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[0]0 [9]),
        .Q(\s_tmp_nomac_reg_n_0_[0][9] ),
        .R(rst));
  FDRE \s_tmp_nomac_reg[1] 
       (.C(i_clk),
        .CE(CEA2),
        .D(i_mem1a_dout[15]),
        .Q(\s_tmp_nomac_reg_n_0_[1] ),
        .R(rst));
  CARRY4 \s_tmp_nomac_reg[1]0__0_carry 
       (.CI(1'b0),
        .CO({\s_tmp_nomac_reg[1]0__0_carry_n_0 ,\s_tmp_nomac_reg[1]0__0_carry_n_1 ,\s_tmp_nomac_reg[1]0__0_carry_n_2 ,\s_tmp_nomac_reg[1]0__0_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_tmp_nomac_reg[1]0__0_carry_i_1_n_0 ,\s_tmp_nomac_reg[1]0__0_carry_i_2_n_0 ,\s_tmp_nomac_reg[1]0__0_carry_i_3_n_0 ,1'b0}),
        .O({\s_tmp_nomac_reg[1]0__0_carry_n_4 ,\s_tmp_nomac_reg[1]0 [2:0]}),
        .S({\s_tmp_nomac_reg[1]0__0_carry_i_4_n_0 ,\s_tmp_nomac_reg[1]0__0_carry_i_5_n_0 ,\s_tmp_nomac_reg[1]0__0_carry_i_6_n_0 ,\s_tmp_nomac_reg[1]0__0_carry_i_7_n_0 }));
  CARRY4 \s_tmp_nomac_reg[1]0__0_carry__0 
       (.CI(\s_tmp_nomac_reg[1]0__0_carry_n_0 ),
        .CO({\s_tmp_nomac_reg[1]0__0_carry__0_n_0 ,\s_tmp_nomac_reg[1]0__0_carry__0_n_1 ,\s_tmp_nomac_reg[1]0__0_carry__0_n_2 ,\s_tmp_nomac_reg[1]0__0_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_tmp_nomac_reg[1]0__0_carry__0_i_1_n_0 ,\s_tmp_nomac_reg[1]0__0_carry__0_i_2_n_0 ,\s_tmp_nomac_reg[1]0__0_carry__0_i_3_n_0 ,\s_tmp_nomac_reg[1]0__0_carry__0_i_4_n_0 }),
        .O({\s_tmp_nomac_reg[1]0__0_carry__0_n_4 ,\s_tmp_nomac_reg[1]0__0_carry__0_n_5 ,\s_tmp_nomac_reg[1]0__0_carry__0_n_6 ,\s_tmp_nomac_reg[1]0__0_carry__0_n_7 }),
        .S({\s_tmp_nomac_reg[1]0__0_carry__0_i_5_n_0 ,\s_tmp_nomac_reg[1]0__0_carry__0_i_6_n_0 ,\s_tmp_nomac_reg[1]0__0_carry__0_i_7_n_0 ,\s_tmp_nomac_reg[1]0__0_carry__0_i_8_n_0 }));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[1]0__0_carry__0_i_1 
       (.I0(s_coeffs[2]),
        .I1(\s_tmp_nomac_reg[1]__2_n_0 ),
        .I2(s_coeffs[1]),
        .I3(\s_tmp_nomac_reg[1]__1_n_0 ),
        .I4(s_coeffs[0]),
        .I5(\s_tmp_nomac_reg[1]__0_n_0 ),
        .O(\s_tmp_nomac_reg[1]0__0_carry__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[1]0__0_carry__0_i_10 
       (.I0(\s_tmp_nomac_reg[1]__2_n_0 ),
        .I1(s_coeffs[2]),
        .O(\s_tmp_nomac_reg[1]0__0_carry__0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[1]0__0_carry__0_i_11 
       (.I0(\s_tmp_nomac_reg[1]__3_n_0 ),
        .I1(s_coeffs[2]),
        .O(\s_tmp_nomac_reg[1]0__0_carry__0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[1]0__0_carry__0_i_12 
       (.I0(\s_tmp_nomac_reg[1]__4_n_0 ),
        .I1(s_coeffs[2]),
        .O(\s_tmp_nomac_reg[1]0__0_carry__0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[1]0__0_carry__0_i_2 
       (.I0(s_coeffs[2]),
        .I1(\s_tmp_nomac_reg[1]__3_n_0 ),
        .I2(s_coeffs[1]),
        .I3(\s_tmp_nomac_reg[1]__2_n_0 ),
        .I4(s_coeffs[0]),
        .I5(\s_tmp_nomac_reg[1]__1_n_0 ),
        .O(\s_tmp_nomac_reg[1]0__0_carry__0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[1]0__0_carry__0_i_3 
       (.I0(s_coeffs[2]),
        .I1(\s_tmp_nomac_reg[1]__4_n_0 ),
        .I2(s_coeffs[1]),
        .I3(\s_tmp_nomac_reg[1]__3_n_0 ),
        .I4(s_coeffs[0]),
        .I5(\s_tmp_nomac_reg[1]__2_n_0 ),
        .O(\s_tmp_nomac_reg[1]0__0_carry__0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[1]0__0_carry__0_i_4 
       (.I0(s_coeffs[2]),
        .I1(\s_tmp_nomac_reg[1]__5_n_0 ),
        .I2(s_coeffs[1]),
        .I3(\s_tmp_nomac_reg[1]__4_n_0 ),
        .I4(s_coeffs[0]),
        .I5(\s_tmp_nomac_reg[1]__3_n_0 ),
        .O(\s_tmp_nomac_reg[1]0__0_carry__0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \s_tmp_nomac_reg[1]0__0_carry__0_i_5 
       (.I0(\s_tmp_nomac_reg[1]0__0_carry__0_i_1_n_0 ),
        .I1(s_coeffs[1]),
        .I2(\s_tmp_nomac_reg[1]__0_n_0 ),
        .I3(\s_tmp_nomac_reg[1]0__0_carry__0_i_9_n_0 ),
        .I4(\s_tmp_nomac_reg_n_0_[1] ),
        .I5(s_coeffs[0]),
        .O(\s_tmp_nomac_reg[1]0__0_carry__0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \s_tmp_nomac_reg[1]0__0_carry__0_i_6 
       (.I0(\s_tmp_nomac_reg[1]0__0_carry__0_i_2_n_0 ),
        .I1(s_coeffs[1]),
        .I2(\s_tmp_nomac_reg[1]__1_n_0 ),
        .I3(\s_tmp_nomac_reg[1]0__0_carry__0_i_10_n_0 ),
        .I4(\s_tmp_nomac_reg[1]__0_n_0 ),
        .I5(s_coeffs[0]),
        .O(\s_tmp_nomac_reg[1]0__0_carry__0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \s_tmp_nomac_reg[1]0__0_carry__0_i_7 
       (.I0(\s_tmp_nomac_reg[1]0__0_carry__0_i_3_n_0 ),
        .I1(s_coeffs[1]),
        .I2(\s_tmp_nomac_reg[1]__2_n_0 ),
        .I3(\s_tmp_nomac_reg[1]0__0_carry__0_i_11_n_0 ),
        .I4(\s_tmp_nomac_reg[1]__1_n_0 ),
        .I5(s_coeffs[0]),
        .O(\s_tmp_nomac_reg[1]0__0_carry__0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \s_tmp_nomac_reg[1]0__0_carry__0_i_8 
       (.I0(\s_tmp_nomac_reg[1]0__0_carry__0_i_4_n_0 ),
        .I1(s_coeffs[1]),
        .I2(\s_tmp_nomac_reg[1]__3_n_0 ),
        .I3(\s_tmp_nomac_reg[1]0__0_carry__0_i_12_n_0 ),
        .I4(\s_tmp_nomac_reg[1]__2_n_0 ),
        .I5(s_coeffs[0]),
        .O(\s_tmp_nomac_reg[1]0__0_carry__0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[1]0__0_carry__0_i_9 
       (.I0(\s_tmp_nomac_reg[1]__1_n_0 ),
        .I1(s_coeffs[2]),
        .O(\s_tmp_nomac_reg[1]0__0_carry__0_i_9_n_0 ));
  CARRY4 \s_tmp_nomac_reg[1]0__0_carry__1 
       (.CI(\s_tmp_nomac_reg[1]0__0_carry__0_n_0 ),
        .CO({\NLW_s_tmp_nomac_reg[1]0__0_carry__1_CO_UNCONNECTED [3],\s_tmp_nomac_reg[1]0__0_carry__1_n_1 ,\NLW_s_tmp_nomac_reg[1]0__0_carry__1_CO_UNCONNECTED [1],\s_tmp_nomac_reg[1]0__0_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\s_tmp_nomac_reg[1]0__0_carry__1_i_1_n_0 ,\s_tmp_nomac_reg[1]0__0_carry__1_i_2_n_0 }),
        .O({\NLW_s_tmp_nomac_reg[1]0__0_carry__1_O_UNCONNECTED [3:2],\s_tmp_nomac_reg[1]0__0_carry__1_n_6 ,\s_tmp_nomac_reg[1]0__0_carry__1_n_7 }),
        .S({1'b0,1'b1,\s_tmp_nomac_reg[1]0__0_carry__1_i_3_n_0 ,\s_tmp_nomac_reg[1]0__0_carry__1_i_4_n_0 }));
  LUT4 #(
    .INIT(16'h8000)) 
    \s_tmp_nomac_reg[1]0__0_carry__1_i_1 
       (.I0(s_coeffs[2]),
        .I1(\s_tmp_nomac_reg[1]__0_n_0 ),
        .I2(s_coeffs[1]),
        .I3(\s_tmp_nomac_reg_n_0_[1] ),
        .O(\s_tmp_nomac_reg[1]0__0_carry__1_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[1]0__0_carry__1_i_2 
       (.I0(s_coeffs[2]),
        .I1(\s_tmp_nomac_reg[1]__1_n_0 ),
        .I2(s_coeffs[1]),
        .I3(\s_tmp_nomac_reg[1]__0_n_0 ),
        .I4(s_coeffs[0]),
        .I5(\s_tmp_nomac_reg_n_0_[1] ),
        .O(\s_tmp_nomac_reg[1]0__0_carry__1_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \s_tmp_nomac_reg[1]0__0_carry__1_i_3 
       (.I0(s_coeffs[1]),
        .I1(\s_tmp_nomac_reg[1]__0_n_0 ),
        .I2(s_coeffs[2]),
        .I3(\s_tmp_nomac_reg_n_0_[1] ),
        .O(\s_tmp_nomac_reg[1]0__0_carry__1_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE75F30007800F000)) 
    \s_tmp_nomac_reg[1]0__0_carry__1_i_4 
       (.I0(s_coeffs[0]),
        .I1(\s_tmp_nomac_reg[1]__1_n_0 ),
        .I2(\s_tmp_nomac_reg[1]__0_n_0 ),
        .I3(s_coeffs[2]),
        .I4(\s_tmp_nomac_reg_n_0_[1] ),
        .I5(s_coeffs[1]),
        .O(\s_tmp_nomac_reg[1]0__0_carry__1_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \s_tmp_nomac_reg[1]0__0_carry_i_1 
       (.I0(s_coeffs[1]),
        .I1(\s_tmp_nomac_reg[1]__4_n_0 ),
        .I2(s_coeffs[2]),
        .I3(\s_tmp_nomac_reg[1]__5_n_0 ),
        .I4(\s_tmp_nomac_reg[1]__3_n_0 ),
        .I5(s_coeffs[0]),
        .O(\s_tmp_nomac_reg[1]0__0_carry_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \s_tmp_nomac_reg[1]0__0_carry_i_2 
       (.I0(s_coeffs[1]),
        .I1(\s_tmp_nomac_reg[1]__5_n_0 ),
        .I2(s_coeffs[2]),
        .I3(\s_tmp_nomac_reg[1]__6_n_0 ),
        .O(\s_tmp_nomac_reg[1]0__0_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_tmp_nomac_reg[1]0__0_carry_i_3 
       (.I0(s_coeffs[0]),
        .I1(\s_tmp_nomac_reg[1]__5_n_0 ),
        .O(\s_tmp_nomac_reg[1]0__0_carry_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \s_tmp_nomac_reg[1]0__0_carry_i_4 
       (.I0(\s_tmp_nomac_reg[1]__4_n_0 ),
        .I1(\s_tmp_nomac_reg[1]0__0_carry_i_8_n_0 ),
        .I2(\s_tmp_nomac_reg[1]__5_n_0 ),
        .I3(s_coeffs[1]),
        .I4(\s_tmp_nomac_reg[1]__6_n_0 ),
        .I5(s_coeffs[2]),
        .O(\s_tmp_nomac_reg[1]0__0_carry_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \s_tmp_nomac_reg[1]0__0_carry_i_5 
       (.I0(\s_tmp_nomac_reg[1]__6_n_0 ),
        .I1(s_coeffs[2]),
        .I2(\s_tmp_nomac_reg[1]__5_n_0 ),
        .I3(s_coeffs[1]),
        .I4(s_coeffs[0]),
        .I5(\s_tmp_nomac_reg[1]__4_n_0 ),
        .O(\s_tmp_nomac_reg[1]0__0_carry_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \s_tmp_nomac_reg[1]0__0_carry_i_6 
       (.I0(s_coeffs[0]),
        .I1(\s_tmp_nomac_reg[1]__5_n_0 ),
        .I2(s_coeffs[1]),
        .I3(\s_tmp_nomac_reg[1]__6_n_0 ),
        .O(\s_tmp_nomac_reg[1]0__0_carry_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_tmp_nomac_reg[1]0__0_carry_i_7 
       (.I0(\s_tmp_nomac_reg[1]__6_n_0 ),
        .I1(s_coeffs[0]),
        .O(\s_tmp_nomac_reg[1]0__0_carry_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[1]0__0_carry_i_8 
       (.I0(\s_tmp_nomac_reg[1]__3_n_0 ),
        .I1(s_coeffs[0]),
        .O(\s_tmp_nomac_reg[1]0__0_carry_i_8_n_0 ));
  CARRY4 \s_tmp_nomac_reg[1]0__30_carry 
       (.CI(1'b0),
        .CO({\s_tmp_nomac_reg[1]0__30_carry_n_0 ,\s_tmp_nomac_reg[1]0__30_carry_n_1 ,\s_tmp_nomac_reg[1]0__30_carry_n_2 ,\s_tmp_nomac_reg[1]0__30_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_tmp_nomac_reg[1]0__30_carry_i_1_n_0 ,\s_tmp_nomac_reg[1]0__30_carry_i_2_n_0 ,\s_tmp_nomac_reg[1]0__30_carry_i_3_n_0 ,1'b0}),
        .O({\s_tmp_nomac_reg[1]0__30_carry_n_4 ,\s_tmp_nomac_reg[1]0__30_carry_n_5 ,\s_tmp_nomac_reg[1]0__30_carry_n_6 ,\s_tmp_nomac_reg[1]0__30_carry_n_7 }),
        .S({\s_tmp_nomac_reg[1]0__30_carry_i_4_n_0 ,\s_tmp_nomac_reg[1]0__30_carry_i_5_n_0 ,\s_tmp_nomac_reg[1]0__30_carry_i_6_n_0 ,\s_tmp_nomac_reg[1]0__30_carry_i_7_n_0 }));
  CARRY4 \s_tmp_nomac_reg[1]0__30_carry__0 
       (.CI(\s_tmp_nomac_reg[1]0__30_carry_n_0 ),
        .CO({\s_tmp_nomac_reg[1]0__30_carry__0_n_0 ,\s_tmp_nomac_reg[1]0__30_carry__0_n_1 ,\s_tmp_nomac_reg[1]0__30_carry__0_n_2 ,\s_tmp_nomac_reg[1]0__30_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_tmp_nomac_reg[1]0__30_carry__0_i_1_n_0 ,\s_tmp_nomac_reg[1]0__30_carry__0_i_2_n_0 ,\s_tmp_nomac_reg[1]0__30_carry__0_i_3_n_0 ,\s_tmp_nomac_reg[1]0__30_carry__0_i_4_n_0 }),
        .O({\s_tmp_nomac_reg[1]0__30_carry__0_n_4 ,\s_tmp_nomac_reg[1]0__30_carry__0_n_5 ,\s_tmp_nomac_reg[1]0__30_carry__0_n_6 ,\s_tmp_nomac_reg[1]0__30_carry__0_n_7 }),
        .S({\s_tmp_nomac_reg[1]0__30_carry__0_i_5_n_0 ,\s_tmp_nomac_reg[1]0__30_carry__0_i_6_n_0 ,\s_tmp_nomac_reg[1]0__30_carry__0_i_7_n_0 ,\s_tmp_nomac_reg[1]0__30_carry__0_i_8_n_0 }));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[1]0__30_carry__0_i_1 
       (.I0(s_coeffs[5]),
        .I1(\s_tmp_nomac_reg[1]__2_n_0 ),
        .I2(s_coeffs[4]),
        .I3(\s_tmp_nomac_reg[1]__1_n_0 ),
        .I4(s_coeffs[3]),
        .I5(\s_tmp_nomac_reg[1]__0_n_0 ),
        .O(\s_tmp_nomac_reg[1]0__30_carry__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[1]0__30_carry__0_i_10 
       (.I0(\s_tmp_nomac_reg[1]__2_n_0 ),
        .I1(s_coeffs[5]),
        .O(\s_tmp_nomac_reg[1]0__30_carry__0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[1]0__30_carry__0_i_11 
       (.I0(\s_tmp_nomac_reg[1]__3_n_0 ),
        .I1(s_coeffs[5]),
        .O(\s_tmp_nomac_reg[1]0__30_carry__0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[1]0__30_carry__0_i_12 
       (.I0(\s_tmp_nomac_reg[1]__4_n_0 ),
        .I1(s_coeffs[5]),
        .O(\s_tmp_nomac_reg[1]0__30_carry__0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[1]0__30_carry__0_i_2 
       (.I0(s_coeffs[5]),
        .I1(\s_tmp_nomac_reg[1]__3_n_0 ),
        .I2(s_coeffs[4]),
        .I3(\s_tmp_nomac_reg[1]__2_n_0 ),
        .I4(s_coeffs[3]),
        .I5(\s_tmp_nomac_reg[1]__1_n_0 ),
        .O(\s_tmp_nomac_reg[1]0__30_carry__0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[1]0__30_carry__0_i_3 
       (.I0(s_coeffs[5]),
        .I1(\s_tmp_nomac_reg[1]__4_n_0 ),
        .I2(s_coeffs[4]),
        .I3(\s_tmp_nomac_reg[1]__3_n_0 ),
        .I4(s_coeffs[3]),
        .I5(\s_tmp_nomac_reg[1]__2_n_0 ),
        .O(\s_tmp_nomac_reg[1]0__30_carry__0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[1]0__30_carry__0_i_4 
       (.I0(s_coeffs[5]),
        .I1(\s_tmp_nomac_reg[1]__5_n_0 ),
        .I2(s_coeffs[4]),
        .I3(\s_tmp_nomac_reg[1]__4_n_0 ),
        .I4(s_coeffs[3]),
        .I5(\s_tmp_nomac_reg[1]__3_n_0 ),
        .O(\s_tmp_nomac_reg[1]0__30_carry__0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \s_tmp_nomac_reg[1]0__30_carry__0_i_5 
       (.I0(\s_tmp_nomac_reg[1]0__30_carry__0_i_1_n_0 ),
        .I1(s_coeffs[4]),
        .I2(\s_tmp_nomac_reg[1]__0_n_0 ),
        .I3(\s_tmp_nomac_reg[1]0__30_carry__0_i_9_n_0 ),
        .I4(\s_tmp_nomac_reg_n_0_[1] ),
        .I5(s_coeffs[3]),
        .O(\s_tmp_nomac_reg[1]0__30_carry__0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \s_tmp_nomac_reg[1]0__30_carry__0_i_6 
       (.I0(\s_tmp_nomac_reg[1]0__30_carry__0_i_2_n_0 ),
        .I1(s_coeffs[4]),
        .I2(\s_tmp_nomac_reg[1]__1_n_0 ),
        .I3(\s_tmp_nomac_reg[1]0__30_carry__0_i_10_n_0 ),
        .I4(\s_tmp_nomac_reg[1]__0_n_0 ),
        .I5(s_coeffs[3]),
        .O(\s_tmp_nomac_reg[1]0__30_carry__0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \s_tmp_nomac_reg[1]0__30_carry__0_i_7 
       (.I0(\s_tmp_nomac_reg[1]0__30_carry__0_i_3_n_0 ),
        .I1(s_coeffs[4]),
        .I2(\s_tmp_nomac_reg[1]__2_n_0 ),
        .I3(\s_tmp_nomac_reg[1]0__30_carry__0_i_11_n_0 ),
        .I4(\s_tmp_nomac_reg[1]__1_n_0 ),
        .I5(s_coeffs[3]),
        .O(\s_tmp_nomac_reg[1]0__30_carry__0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \s_tmp_nomac_reg[1]0__30_carry__0_i_8 
       (.I0(\s_tmp_nomac_reg[1]0__30_carry__0_i_4_n_0 ),
        .I1(s_coeffs[4]),
        .I2(\s_tmp_nomac_reg[1]__3_n_0 ),
        .I3(\s_tmp_nomac_reg[1]0__30_carry__0_i_12_n_0 ),
        .I4(\s_tmp_nomac_reg[1]__2_n_0 ),
        .I5(s_coeffs[3]),
        .O(\s_tmp_nomac_reg[1]0__30_carry__0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[1]0__30_carry__0_i_9 
       (.I0(\s_tmp_nomac_reg[1]__1_n_0 ),
        .I1(s_coeffs[5]),
        .O(\s_tmp_nomac_reg[1]0__30_carry__0_i_9_n_0 ));
  CARRY4 \s_tmp_nomac_reg[1]0__30_carry__1 
       (.CI(\s_tmp_nomac_reg[1]0__30_carry__0_n_0 ),
        .CO({\NLW_s_tmp_nomac_reg[1]0__30_carry__1_CO_UNCONNECTED [3],\s_tmp_nomac_reg[1]0__30_carry__1_n_1 ,\NLW_s_tmp_nomac_reg[1]0__30_carry__1_CO_UNCONNECTED [1],\s_tmp_nomac_reg[1]0__30_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\s_tmp_nomac_reg[1]0__30_carry__1_i_1_n_0 ,\s_tmp_nomac_reg[1]0__30_carry__1_i_2_n_0 }),
        .O({\NLW_s_tmp_nomac_reg[1]0__30_carry__1_O_UNCONNECTED [3:2],\s_tmp_nomac_reg[1]0__30_carry__1_n_6 ,\s_tmp_nomac_reg[1]0__30_carry__1_n_7 }),
        .S({1'b0,1'b1,\s_tmp_nomac_reg[1]0__30_carry__1_i_3_n_0 ,\s_tmp_nomac_reg[1]0__30_carry__1_i_4_n_0 }));
  LUT4 #(
    .INIT(16'h8000)) 
    \s_tmp_nomac_reg[1]0__30_carry__1_i_1 
       (.I0(s_coeffs[5]),
        .I1(\s_tmp_nomac_reg[1]__0_n_0 ),
        .I2(s_coeffs[4]),
        .I3(\s_tmp_nomac_reg_n_0_[1] ),
        .O(\s_tmp_nomac_reg[1]0__30_carry__1_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[1]0__30_carry__1_i_2 
       (.I0(s_coeffs[5]),
        .I1(\s_tmp_nomac_reg[1]__1_n_0 ),
        .I2(s_coeffs[4]),
        .I3(\s_tmp_nomac_reg[1]__0_n_0 ),
        .I4(s_coeffs[3]),
        .I5(\s_tmp_nomac_reg_n_0_[1] ),
        .O(\s_tmp_nomac_reg[1]0__30_carry__1_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \s_tmp_nomac_reg[1]0__30_carry__1_i_3 
       (.I0(s_coeffs[4]),
        .I1(\s_tmp_nomac_reg[1]__0_n_0 ),
        .I2(s_coeffs[5]),
        .I3(\s_tmp_nomac_reg_n_0_[1] ),
        .O(\s_tmp_nomac_reg[1]0__30_carry__1_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE75F30007800F000)) 
    \s_tmp_nomac_reg[1]0__30_carry__1_i_4 
       (.I0(s_coeffs[3]),
        .I1(\s_tmp_nomac_reg[1]__1_n_0 ),
        .I2(\s_tmp_nomac_reg[1]__0_n_0 ),
        .I3(s_coeffs[5]),
        .I4(\s_tmp_nomac_reg_n_0_[1] ),
        .I5(s_coeffs[4]),
        .O(\s_tmp_nomac_reg[1]0__30_carry__1_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \s_tmp_nomac_reg[1]0__30_carry_i_1 
       (.I0(s_coeffs[4]),
        .I1(\s_tmp_nomac_reg[1]__4_n_0 ),
        .I2(s_coeffs[5]),
        .I3(\s_tmp_nomac_reg[1]__5_n_0 ),
        .I4(\s_tmp_nomac_reg[1]__3_n_0 ),
        .I5(s_coeffs[3]),
        .O(\s_tmp_nomac_reg[1]0__30_carry_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \s_tmp_nomac_reg[1]0__30_carry_i_2 
       (.I0(s_coeffs[4]),
        .I1(\s_tmp_nomac_reg[1]__5_n_0 ),
        .I2(s_coeffs[5]),
        .I3(\s_tmp_nomac_reg[1]__6_n_0 ),
        .O(\s_tmp_nomac_reg[1]0__30_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_tmp_nomac_reg[1]0__30_carry_i_3 
       (.I0(s_coeffs[3]),
        .I1(\s_tmp_nomac_reg[1]__5_n_0 ),
        .O(\s_tmp_nomac_reg[1]0__30_carry_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \s_tmp_nomac_reg[1]0__30_carry_i_4 
       (.I0(\s_tmp_nomac_reg[1]__4_n_0 ),
        .I1(\s_tmp_nomac_reg[1]0__30_carry_i_8_n_0 ),
        .I2(\s_tmp_nomac_reg[1]__5_n_0 ),
        .I3(s_coeffs[4]),
        .I4(\s_tmp_nomac_reg[1]__6_n_0 ),
        .I5(s_coeffs[5]),
        .O(\s_tmp_nomac_reg[1]0__30_carry_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \s_tmp_nomac_reg[1]0__30_carry_i_5 
       (.I0(\s_tmp_nomac_reg[1]__6_n_0 ),
        .I1(s_coeffs[5]),
        .I2(\s_tmp_nomac_reg[1]__5_n_0 ),
        .I3(s_coeffs[4]),
        .I4(s_coeffs[3]),
        .I5(\s_tmp_nomac_reg[1]__4_n_0 ),
        .O(\s_tmp_nomac_reg[1]0__30_carry_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \s_tmp_nomac_reg[1]0__30_carry_i_6 
       (.I0(s_coeffs[3]),
        .I1(\s_tmp_nomac_reg[1]__5_n_0 ),
        .I2(s_coeffs[4]),
        .I3(\s_tmp_nomac_reg[1]__6_n_0 ),
        .O(\s_tmp_nomac_reg[1]0__30_carry_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_tmp_nomac_reg[1]0__30_carry_i_7 
       (.I0(\s_tmp_nomac_reg[1]__6_n_0 ),
        .I1(s_coeffs[3]),
        .O(\s_tmp_nomac_reg[1]0__30_carry_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[1]0__30_carry_i_8 
       (.I0(\s_tmp_nomac_reg[1]__3_n_0 ),
        .I1(s_coeffs[3]),
        .O(\s_tmp_nomac_reg[1]0__30_carry_i_8_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_tmp_nomac_reg[1]0__60_carry 
       (.CI(1'b0),
        .CO({\s_tmp_nomac_reg[1]0__60_carry_n_0 ,\s_tmp_nomac_reg[1]0__60_carry_n_1 ,\s_tmp_nomac_reg[1]0__60_carry_n_2 ,\s_tmp_nomac_reg[1]0__60_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_tmp_nomac_reg[1]0__60_carry_i_1_n_0 ,\s_tmp_nomac_reg[1]0__0_carry__0_n_6 ,\s_tmp_nomac_reg[1]0__0_carry__0_n_7 ,\s_tmp_nomac_reg[1]0__0_carry_n_4 }),
        .O({\s_tmp_nomac_reg[1]0 [6:4],\NLW_s_tmp_nomac_reg[1]0__60_carry_O_UNCONNECTED [0]}),
        .S({\s_tmp_nomac_reg[1]0__60_carry_i_2_n_0 ,\s_tmp_nomac_reg[1]0__60_carry_i_3_n_0 ,\s_tmp_nomac_reg[1]0__60_carry_i_4_n_0 ,\s_tmp_nomac_reg[1]0__60_carry_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_tmp_nomac_reg[1]0__60_carry__0 
       (.CI(\s_tmp_nomac_reg[1]0__60_carry_n_0 ),
        .CO({\s_tmp_nomac_reg[1]0__60_carry__0_n_0 ,\s_tmp_nomac_reg[1]0__60_carry__0_n_1 ,\s_tmp_nomac_reg[1]0__60_carry__0_n_2 ,\s_tmp_nomac_reg[1]0__60_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_tmp_nomac_reg[1]0__60_carry__0_i_1_n_0 ,\s_tmp_nomac_reg[1]0__60_carry__0_i_2_n_0 ,\s_tmp_nomac_reg[1]0__60_carry__0_i_3_n_0 ,\s_tmp_nomac_reg[1]0__60_carry__0_i_4_n_0 }),
        .O(\s_tmp_nomac_reg[1]0 [10:7]),
        .S({\s_tmp_nomac_reg[1]0__60_carry__0_i_5_n_0 ,\s_tmp_nomac_reg[1]0__60_carry__0_i_6_n_0 ,\s_tmp_nomac_reg[1]0__60_carry__0_i_7_n_0 ,\s_tmp_nomac_reg[1]0__60_carry__0_i_8_n_0 }));
  LUT4 #(
    .INIT(16'h8F08)) 
    \s_tmp_nomac_reg[1]0__60_carry__0_i_1 
       (.I0(s_coeffs[6]),
        .I1(\s_tmp_nomac_reg[1]__3_n_0 ),
        .I2(\s_tmp_nomac_reg[1]0__60_carry__0_i_9_n_0 ),
        .I3(\s_tmp_nomac_reg[1]0__60_carry__0_i_10_n_0 ),
        .O(\s_tmp_nomac_reg[1]0__60_carry__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    \s_tmp_nomac_reg[1]0__60_carry__0_i_10 
       (.I0(\s_tmp_nomac_reg[1]0__30_carry__0_n_6 ),
        .I1(\s_tmp_nomac_reg[1]0__0_carry__1_n_7 ),
        .I2(s_coeffs[7]),
        .I3(\s_tmp_nomac_reg[1]__5_n_0 ),
        .O(\s_tmp_nomac_reg[1]0__60_carry__0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    \s_tmp_nomac_reg[1]0__60_carry__0_i_11 
       (.I0(s_coeffs[7]),
        .I1(\s_tmp_nomac_reg[1]__5_n_0 ),
        .I2(\s_tmp_nomac_reg[1]0__30_carry__0_n_6 ),
        .I3(\s_tmp_nomac_reg[1]0__0_carry__1_n_7 ),
        .O(\s_tmp_nomac_reg[1]0__60_carry__0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[1]0__60_carry__0_i_12 
       (.I0(\s_tmp_nomac_reg[1]__3_n_0 ),
        .I1(s_coeffs[6]),
        .O(\s_tmp_nomac_reg[1]0__60_carry__0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    \s_tmp_nomac_reg[1]0__60_carry__0_i_13 
       (.I0(s_coeffs[7]),
        .I1(\s_tmp_nomac_reg[1]__3_n_0 ),
        .I2(\s_tmp_nomac_reg[1]0__30_carry__0_n_4 ),
        .I3(\s_tmp_nomac_reg[1]0__0_carry__1_n_1 ),
        .O(\s_tmp_nomac_reg[1]0__60_carry__0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[1]0__60_carry__0_i_14 
       (.I0(\s_tmp_nomac_reg[1]__2_n_0 ),
        .I1(s_coeffs[6]),
        .O(\s_tmp_nomac_reg[1]0__60_carry__0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    \s_tmp_nomac_reg[1]0__60_carry__0_i_15 
       (.I0(\s_tmp_nomac_reg[1]0__30_carry__0_n_5 ),
        .I1(\s_tmp_nomac_reg[1]0__0_carry__1_n_6 ),
        .I2(s_coeffs[7]),
        .I3(\s_tmp_nomac_reg[1]__4_n_0 ),
        .O(\s_tmp_nomac_reg[1]0__60_carry__0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \s_tmp_nomac_reg[1]0__60_carry__0_i_16 
       (.I0(\s_tmp_nomac_reg[1]0__0_carry__0_n_5 ),
        .I1(\s_tmp_nomac_reg[1]0__30_carry_n_4 ),
        .I2(s_coeffs[6]),
        .I3(\s_tmp_nomac_reg[1]__5_n_0 ),
        .O(\s_tmp_nomac_reg[1]0__60_carry__0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[1]0__60_carry__0_i_17 
       (.I0(\s_tmp_nomac_reg[1]__4_n_0 ),
        .I1(s_coeffs[6]),
        .O(\s_tmp_nomac_reg[1]0__60_carry__0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[1]0__60_carry__0_i_18 
       (.I0(\s_tmp_nomac_reg[1]__6_n_0 ),
        .I1(s_coeffs[7]),
        .O(\s_tmp_nomac_reg[1]0__60_carry__0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    \s_tmp_nomac_reg[1]0__60_carry__0_i_19 
       (.I0(s_coeffs[7]),
        .I1(\s_tmp_nomac_reg[1]__6_n_0 ),
        .I2(\s_tmp_nomac_reg[1]0__30_carry__0_n_7 ),
        .I3(\s_tmp_nomac_reg[1]0__0_carry__0_n_4 ),
        .O(\s_tmp_nomac_reg[1]0__60_carry__0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h8A08080808080808)) 
    \s_tmp_nomac_reg[1]0__60_carry__0_i_2 
       (.I0(s_coeffs[6]),
        .I1(\s_tmp_nomac_reg[1]__4_n_0 ),
        .I2(\s_tmp_nomac_reg[1]0__60_carry__0_i_11_n_0 ),
        .I3(\s_tmp_nomac_reg[1]__5_n_0 ),
        .I4(\s_tmp_nomac_reg[1]0__30_carry_n_4 ),
        .I5(\s_tmp_nomac_reg[1]0__0_carry__0_n_5 ),
        .O(\s_tmp_nomac_reg[1]0__60_carry__0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5995959595959595)) 
    \s_tmp_nomac_reg[1]0__60_carry__0_i_3 
       (.I0(\s_tmp_nomac_reg[1]0__60_carry__0_i_11_n_0 ),
        .I1(s_coeffs[6]),
        .I2(\s_tmp_nomac_reg[1]__4_n_0 ),
        .I3(\s_tmp_nomac_reg[1]0__0_carry__0_n_5 ),
        .I4(\s_tmp_nomac_reg[1]0__30_carry_n_4 ),
        .I5(\s_tmp_nomac_reg[1]__5_n_0 ),
        .O(\s_tmp_nomac_reg[1]0__60_carry__0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \s_tmp_nomac_reg[1]0__60_carry__0_i_4 
       (.I0(\s_tmp_nomac_reg[1]0__0_carry__0_n_4 ),
        .I1(\s_tmp_nomac_reg[1]0__30_carry__0_n_7 ),
        .I2(\s_tmp_nomac_reg[1]__6_n_0 ),
        .I3(s_coeffs[7]),
        .O(\s_tmp_nomac_reg[1]0__60_carry__0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \s_tmp_nomac_reg[1]0__60_carry__0_i_5 
       (.I0(\s_tmp_nomac_reg[1]0__60_carry__0_i_10_n_0 ),
        .I1(\s_tmp_nomac_reg[1]0__60_carry__0_i_9_n_0 ),
        .I2(\s_tmp_nomac_reg[1]0__60_carry__0_i_12_n_0 ),
        .I3(\s_tmp_nomac_reg[1]0__60_carry__0_i_13_n_0 ),
        .I4(\s_tmp_nomac_reg[1]0__60_carry__0_i_14_n_0 ),
        .I5(\s_tmp_nomac_reg[1]0__60_carry__0_i_15_n_0 ),
        .O(\s_tmp_nomac_reg[1]0__60_carry__0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \s_tmp_nomac_reg[1]0__60_carry__0_i_6 
       (.I0(\s_tmp_nomac_reg[1]0__60_carry__0_i_16_n_0 ),
        .I1(\s_tmp_nomac_reg[1]0__60_carry__0_i_11_n_0 ),
        .I2(\s_tmp_nomac_reg[1]0__60_carry__0_i_17_n_0 ),
        .I3(\s_tmp_nomac_reg[1]0__60_carry__0_i_9_n_0 ),
        .I4(\s_tmp_nomac_reg[1]0__60_carry__0_i_12_n_0 ),
        .I5(\s_tmp_nomac_reg[1]0__60_carry__0_i_10_n_0 ),
        .O(\s_tmp_nomac_reg[1]0__60_carry__0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6969966996699696)) 
    \s_tmp_nomac_reg[1]0__60_carry__0_i_7 
       (.I0(\s_tmp_nomac_reg[1]0__60_carry__0_i_11_n_0 ),
        .I1(\s_tmp_nomac_reg[1]0__60_carry__0_i_17_n_0 ),
        .I2(\s_tmp_nomac_reg[1]0__60_carry__0_i_16_n_0 ),
        .I3(\s_tmp_nomac_reg[1]0__60_carry__0_i_18_n_0 ),
        .I4(\s_tmp_nomac_reg[1]0__0_carry__0_n_4 ),
        .I5(\s_tmp_nomac_reg[1]0__30_carry__0_n_7 ),
        .O(\s_tmp_nomac_reg[1]0__60_carry__0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h6A959595)) 
    \s_tmp_nomac_reg[1]0__60_carry__0_i_8 
       (.I0(\s_tmp_nomac_reg[1]0__60_carry__0_i_19_n_0 ),
        .I1(\s_tmp_nomac_reg[1]__5_n_0 ),
        .I2(s_coeffs[6]),
        .I3(\s_tmp_nomac_reg[1]0__30_carry_n_4 ),
        .I4(\s_tmp_nomac_reg[1]0__0_carry__0_n_5 ),
        .O(\s_tmp_nomac_reg[1]0__60_carry__0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    \s_tmp_nomac_reg[1]0__60_carry__0_i_9 
       (.I0(s_coeffs[7]),
        .I1(\s_tmp_nomac_reg[1]__4_n_0 ),
        .I2(\s_tmp_nomac_reg[1]0__30_carry__0_n_5 ),
        .I3(\s_tmp_nomac_reg[1]0__0_carry__1_n_6 ),
        .O(\s_tmp_nomac_reg[1]0__60_carry__0_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_tmp_nomac_reg[1]0__60_carry__1 
       (.CI(\s_tmp_nomac_reg[1]0__60_carry__0_n_0 ),
        .CO({\s_tmp_nomac_reg[1]0__60_carry__1_n_0 ,\s_tmp_nomac_reg[1]0__60_carry__1_n_1 ,\s_tmp_nomac_reg[1]0__60_carry__1_n_2 ,\s_tmp_nomac_reg[1]0__60_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_tmp_nomac_reg[1]0__60_carry__1_i_1_n_0 ,\s_tmp_nomac_reg[1]0__60_carry__1_i_2_n_0 ,\s_tmp_nomac_reg[1]0__60_carry__1_i_3_n_0 ,\s_tmp_nomac_reg[1]0__60_carry__1_i_4_n_0 }),
        .O(\s_tmp_nomac_reg[1]0 [14:11]),
        .S({\s_tmp_nomac_reg[1]0__60_carry__1_i_5_n_0 ,\s_tmp_nomac_reg[1]0__60_carry__1_i_6_n_0 ,\s_tmp_nomac_reg[1]0__60_carry__1_i_7_n_0 ,\s_tmp_nomac_reg[1]0__60_carry__1_i_8_n_0 }));
  LUT6 #(
    .INIT(64'h7D44144414441444)) 
    \s_tmp_nomac_reg[1]0__60_carry__1_i_1 
       (.I0(\s_tmp_nomac_reg[1]0__60_carry__1_i_9_n_0 ),
        .I1(\s_tmp_nomac_reg[1]0__30_carry__1_n_1 ),
        .I2(\s_tmp_nomac_reg[1]__0_n_0 ),
        .I3(s_coeffs[7]),
        .I4(\s_tmp_nomac_reg[1]0__30_carry__1_n_6 ),
        .I5(\s_tmp_nomac_reg[1]__1_n_0 ),
        .O(\s_tmp_nomac_reg[1]0__60_carry__1_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[1]0__60_carry__1_i_10 
       (.I0(\s_tmp_nomac_reg[1]__0_n_0 ),
        .I1(s_coeffs[6]),
        .O(\s_tmp_nomac_reg[1]0__60_carry__1_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    \s_tmp_nomac_reg[1]0__60_carry__1_i_11 
       (.I0(\s_tmp_nomac_reg[1]0__30_carry__0_n_4 ),
        .I1(\s_tmp_nomac_reg[1]0__0_carry__1_n_1 ),
        .I2(s_coeffs[7]),
        .I3(\s_tmp_nomac_reg[1]__3_n_0 ),
        .O(\s_tmp_nomac_reg[1]0__60_carry__1_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \s_tmp_nomac_reg[1]0__60_carry__1_i_12 
       (.I0(s_coeffs[7]),
        .I1(\s_tmp_nomac_reg[1]__1_n_0 ),
        .I2(\s_tmp_nomac_reg[1]0__30_carry__1_n_6 ),
        .O(\s_tmp_nomac_reg[1]0__60_carry__1_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h87)) 
    \s_tmp_nomac_reg[1]0__60_carry__1_i_13 
       (.I0(s_coeffs[7]),
        .I1(\s_tmp_nomac_reg[1]__0_n_0 ),
        .I2(\s_tmp_nomac_reg[1]0__30_carry__1_n_1 ),
        .O(\s_tmp_nomac_reg[1]0__60_carry__1_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[1]0__60_carry__1_i_14 
       (.I0(\s_tmp_nomac_reg[1]__1_n_0 ),
        .I1(s_coeffs[6]),
        .O(\s_tmp_nomac_reg[1]0__60_carry__1_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6A959595)) 
    \s_tmp_nomac_reg[1]0__60_carry__1_i_15 
       (.I0(\s_tmp_nomac_reg[1]0__30_carry__1_n_6 ),
        .I1(\s_tmp_nomac_reg[1]__1_n_0 ),
        .I2(s_coeffs[7]),
        .I3(s_coeffs[6]),
        .I4(\s_tmp_nomac_reg[1]__0_n_0 ),
        .O(\s_tmp_nomac_reg[1]0__60_carry__1_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h87)) 
    \s_tmp_nomac_reg[1]0__60_carry__1_i_16 
       (.I0(s_coeffs[7]),
        .I1(\s_tmp_nomac_reg[1]__2_n_0 ),
        .I2(\s_tmp_nomac_reg[1]0__30_carry__1_n_7 ),
        .O(\s_tmp_nomac_reg[1]0__60_carry__1_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h7D44144414441444)) 
    \s_tmp_nomac_reg[1]0__60_carry__1_i_2 
       (.I0(\s_tmp_nomac_reg[1]0__60_carry__1_i_10_n_0 ),
        .I1(\s_tmp_nomac_reg[1]0__30_carry__1_n_6 ),
        .I2(\s_tmp_nomac_reg[1]__1_n_0 ),
        .I3(s_coeffs[7]),
        .I4(\s_tmp_nomac_reg[1]0__30_carry__1_n_7 ),
        .I5(\s_tmp_nomac_reg[1]__2_n_0 ),
        .O(\s_tmp_nomac_reg[1]0__60_carry__1_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8FF8F8F808808080)) 
    \s_tmp_nomac_reg[1]0__60_carry__1_i_3 
       (.I0(s_coeffs[6]),
        .I1(\s_tmp_nomac_reg[1]__1_n_0 ),
        .I2(\s_tmp_nomac_reg[1]0__30_carry__1_n_7 ),
        .I3(\s_tmp_nomac_reg[1]__2_n_0 ),
        .I4(s_coeffs[7]),
        .I5(\s_tmp_nomac_reg[1]0__60_carry__1_i_11_n_0 ),
        .O(\s_tmp_nomac_reg[1]0__60_carry__1_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8F08)) 
    \s_tmp_nomac_reg[1]0__60_carry__1_i_4 
       (.I0(s_coeffs[6]),
        .I1(\s_tmp_nomac_reg[1]__2_n_0 ),
        .I2(\s_tmp_nomac_reg[1]0__60_carry__0_i_13_n_0 ),
        .I3(\s_tmp_nomac_reg[1]0__60_carry__0_i_15_n_0 ),
        .O(\s_tmp_nomac_reg[1]0__60_carry__1_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4FD525D52540B040)) 
    \s_tmp_nomac_reg[1]0__60_carry__1_i_5 
       (.I0(\s_tmp_nomac_reg[1]0__60_carry__1_i_12_n_0 ),
        .I1(s_coeffs[6]),
        .I2(\s_tmp_nomac_reg_n_0_[1] ),
        .I3(s_coeffs[7]),
        .I4(\s_tmp_nomac_reg[1]__0_n_0 ),
        .I5(\s_tmp_nomac_reg[1]0__30_carry__1_n_1 ),
        .O(\s_tmp_nomac_reg[1]0__60_carry__1_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h69999666)) 
    \s_tmp_nomac_reg[1]0__60_carry__1_i_6 
       (.I0(\s_tmp_nomac_reg[1]0__60_carry__1_i_2_n_0 ),
        .I1(\s_tmp_nomac_reg[1]0__60_carry__1_i_13_n_0 ),
        .I2(s_coeffs[6]),
        .I3(\s_tmp_nomac_reg_n_0_[1] ),
        .I4(\s_tmp_nomac_reg[1]0__60_carry__1_i_12_n_0 ),
        .O(\s_tmp_nomac_reg[1]0__60_carry__1_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hD2B4B4B4B42D2D2D)) 
    \s_tmp_nomac_reg[1]0__60_carry__1_i_7 
       (.I0(\s_tmp_nomac_reg[1]0__60_carry__1_i_11_n_0 ),
        .I1(\s_tmp_nomac_reg[1]0__60_carry__1_i_14_n_0 ),
        .I2(\s_tmp_nomac_reg[1]0__60_carry__1_i_15_n_0 ),
        .I3(s_coeffs[7]),
        .I4(\s_tmp_nomac_reg[1]__2_n_0 ),
        .I5(\s_tmp_nomac_reg[1]0__30_carry__1_n_7 ),
        .O(\s_tmp_nomac_reg[1]0__60_carry__1_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \s_tmp_nomac_reg[1]0__60_carry__1_i_8 
       (.I0(\s_tmp_nomac_reg[1]0__60_carry__0_i_15_n_0 ),
        .I1(\s_tmp_nomac_reg[1]0__60_carry__0_i_13_n_0 ),
        .I2(\s_tmp_nomac_reg[1]0__60_carry__0_i_14_n_0 ),
        .I3(\s_tmp_nomac_reg[1]0__60_carry__1_i_16_n_0 ),
        .I4(\s_tmp_nomac_reg[1]0__60_carry__1_i_14_n_0 ),
        .I5(\s_tmp_nomac_reg[1]0__60_carry__1_i_11_n_0 ),
        .O(\s_tmp_nomac_reg[1]0__60_carry__1_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[1]0__60_carry__1_i_9 
       (.I0(\s_tmp_nomac_reg_n_0_[1] ),
        .I1(s_coeffs[6]),
        .O(\s_tmp_nomac_reg[1]0__60_carry__1_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_tmp_nomac_reg[1]0__60_carry__2 
       (.CI(\s_tmp_nomac_reg[1]0__60_carry__1_n_0 ),
        .CO(\NLW_s_tmp_nomac_reg[1]0__60_carry__2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_s_tmp_nomac_reg[1]0__60_carry__2_O_UNCONNECTED [3:1],\s_tmp_nomac_reg[1]0 [15]}),
        .S({1'b0,1'b0,1'b0,\s_tmp_nomac_reg[1]0__60_carry__2_i_1_n_0 }));
  LUT4 #(
    .INIT(16'h8000)) 
    \s_tmp_nomac_reg[1]0__60_carry__2_i_1 
       (.I0(\s_tmp_nomac_reg_n_0_[1] ),
        .I1(\s_tmp_nomac_reg[1]0__30_carry__1_n_1 ),
        .I2(\s_tmp_nomac_reg[1]__0_n_0 ),
        .I3(s_coeffs[7]),
        .O(\s_tmp_nomac_reg[1]0__60_carry__2_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_tmp_nomac_reg[1]0__60_carry_i_1 
       (.I0(\s_tmp_nomac_reg[1]0__0_carry__0_n_5 ),
        .I1(\s_tmp_nomac_reg[1]0__30_carry_n_4 ),
        .O(\s_tmp_nomac_reg[1]0__60_carry_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \s_tmp_nomac_reg[1]0__60_carry_i_2 
       (.I0(\s_tmp_nomac_reg[1]0__30_carry_n_4 ),
        .I1(\s_tmp_nomac_reg[1]0__0_carry__0_n_5 ),
        .I2(s_coeffs[6]),
        .I3(\s_tmp_nomac_reg[1]__6_n_0 ),
        .O(\s_tmp_nomac_reg[1]0__60_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_tmp_nomac_reg[1]0__60_carry_i_3 
       (.I0(\s_tmp_nomac_reg[1]0__0_carry__0_n_6 ),
        .I1(\s_tmp_nomac_reg[1]0__30_carry_n_5 ),
        .O(\s_tmp_nomac_reg[1]0__60_carry_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_tmp_nomac_reg[1]0__60_carry_i_4 
       (.I0(\s_tmp_nomac_reg[1]0__0_carry__0_n_7 ),
        .I1(\s_tmp_nomac_reg[1]0__30_carry_n_6 ),
        .O(\s_tmp_nomac_reg[1]0__60_carry_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_tmp_nomac_reg[1]0__60_carry_i_5 
       (.I0(\s_tmp_nomac_reg[1]0__0_carry_n_4 ),
        .I1(\s_tmp_nomac_reg[1]0__30_carry_n_7 ),
        .O(\s_tmp_nomac_reg[1]0__60_carry_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[1][0] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[1]0 [0]),
        .Q(\s_tmp_nomac_reg_n_0_[1][0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[1][10] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[1]0 [10]),
        .Q(\s_tmp_nomac_reg_n_0_[1][10] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[1][11] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[1]0 [11]),
        .Q(\s_tmp_nomac_reg_n_0_[1][11] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[1][12] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[1]0 [12]),
        .Q(\s_tmp_nomac_reg_n_0_[1][12] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[1][13] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[1]0 [13]),
        .Q(\s_tmp_nomac_reg_n_0_[1][13] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[1][14] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[1]0 [14]),
        .Q(\s_tmp_nomac_reg_n_0_[1][14] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[1][15] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[1]0 [15]),
        .Q(\s_tmp_nomac_reg_n_0_[1][15] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[1][1] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[1]0 [1]),
        .Q(\s_tmp_nomac_reg_n_0_[1][1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[1][2] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[1]0 [2]),
        .Q(\s_tmp_nomac_reg_n_0_[1][2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[1][3] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[1]0 [3]),
        .Q(\s_tmp_nomac_reg_n_0_[1][3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[1][4] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[1]0 [4]),
        .Q(\s_tmp_nomac_reg_n_0_[1][4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[1][5] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[1]0 [5]),
        .Q(\s_tmp_nomac_reg_n_0_[1][5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[1][6] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[1]0 [6]),
        .Q(\s_tmp_nomac_reg_n_0_[1][6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[1][7] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[1]0 [7]),
        .Q(\s_tmp_nomac_reg_n_0_[1][7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[1][8] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[1]0 [8]),
        .Q(\s_tmp_nomac_reg_n_0_[1][8] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[1][9] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[1]0 [9]),
        .Q(\s_tmp_nomac_reg_n_0_[1][9] ),
        .R(rst));
  FDRE \s_tmp_nomac_reg[1]__0 
       (.C(i_clk),
        .CE(CEA2),
        .D(i_mem1a_dout[14]),
        .Q(\s_tmp_nomac_reg[1]__0_n_0 ),
        .R(rst));
  FDRE \s_tmp_nomac_reg[1]__1 
       (.C(i_clk),
        .CE(CEA2),
        .D(i_mem1a_dout[13]),
        .Q(\s_tmp_nomac_reg[1]__1_n_0 ),
        .R(rst));
  FDRE \s_tmp_nomac_reg[1]__2 
       (.C(i_clk),
        .CE(CEA2),
        .D(i_mem1a_dout[12]),
        .Q(\s_tmp_nomac_reg[1]__2_n_0 ),
        .R(rst));
  FDRE \s_tmp_nomac_reg[1]__3 
       (.C(i_clk),
        .CE(CEA2),
        .D(i_mem1a_dout[11]),
        .Q(\s_tmp_nomac_reg[1]__3_n_0 ),
        .R(rst));
  FDRE \s_tmp_nomac_reg[1]__4 
       (.C(i_clk),
        .CE(CEA2),
        .D(i_mem1a_dout[10]),
        .Q(\s_tmp_nomac_reg[1]__4_n_0 ),
        .R(rst));
  FDRE \s_tmp_nomac_reg[1]__5 
       (.C(i_clk),
        .CE(CEA2),
        .D(i_mem1a_dout[9]),
        .Q(\s_tmp_nomac_reg[1]__5_n_0 ),
        .R(rst));
  FDRE \s_tmp_nomac_reg[1]__6 
       (.C(i_clk),
        .CE(CEA2),
        .D(i_mem1a_dout[8]),
        .Q(\s_tmp_nomac_reg[1]__6_n_0 ),
        .R(rst));
  FDRE \s_tmp_nomac_reg[2] 
       (.C(i_clk),
        .CE(CEA2),
        .D(i_mem1a_dout[23]),
        .Q(\s_tmp_nomac_reg_n_0_[2] ),
        .R(rst));
  CARRY4 \s_tmp_nomac_reg[2]0__0_carry 
       (.CI(1'b0),
        .CO({\s_tmp_nomac_reg[2]0__0_carry_n_0 ,\s_tmp_nomac_reg[2]0__0_carry_n_1 ,\s_tmp_nomac_reg[2]0__0_carry_n_2 ,\s_tmp_nomac_reg[2]0__0_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_tmp_nomac_reg[2]0__0_carry_i_1_n_0 ,\s_tmp_nomac_reg[2]0__0_carry_i_2_n_0 ,\s_tmp_nomac_reg[2]0__0_carry_i_3_n_0 ,1'b0}),
        .O({\s_tmp_nomac_reg[2]0__0_carry_n_4 ,\s_tmp_nomac_reg[2]0 [2:0]}),
        .S({\s_tmp_nomac_reg[2]0__0_carry_i_4_n_0 ,\s_tmp_nomac_reg[2]0__0_carry_i_5_n_0 ,\s_tmp_nomac_reg[2]0__0_carry_i_6_n_0 ,\s_tmp_nomac_reg[2]0__0_carry_i_7_n_0 }));
  CARRY4 \s_tmp_nomac_reg[2]0__0_carry__0 
       (.CI(\s_tmp_nomac_reg[2]0__0_carry_n_0 ),
        .CO({\s_tmp_nomac_reg[2]0__0_carry__0_n_0 ,\s_tmp_nomac_reg[2]0__0_carry__0_n_1 ,\s_tmp_nomac_reg[2]0__0_carry__0_n_2 ,\s_tmp_nomac_reg[2]0__0_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_tmp_nomac_reg[2]0__0_carry__0_i_1_n_0 ,\s_tmp_nomac_reg[2]0__0_carry__0_i_2_n_0 ,\s_tmp_nomac_reg[2]0__0_carry__0_i_3_n_0 ,\s_tmp_nomac_reg[2]0__0_carry__0_i_4_n_0 }),
        .O({\s_tmp_nomac_reg[2]0__0_carry__0_n_4 ,\s_tmp_nomac_reg[2]0__0_carry__0_n_5 ,\s_tmp_nomac_reg[2]0__0_carry__0_n_6 ,\s_tmp_nomac_reg[2]0__0_carry__0_n_7 }),
        .S({\s_tmp_nomac_reg[2]0__0_carry__0_i_5_n_0 ,\s_tmp_nomac_reg[2]0__0_carry__0_i_6_n_0 ,\s_tmp_nomac_reg[2]0__0_carry__0_i_7_n_0 ,\s_tmp_nomac_reg[2]0__0_carry__0_i_8_n_0 }));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[2]0__0_carry__0_i_1 
       (.I0(s_coeffs[2]),
        .I1(\s_tmp_nomac_reg[2]__2_n_0 ),
        .I2(s_coeffs[1]),
        .I3(\s_tmp_nomac_reg[2]__1_n_0 ),
        .I4(s_coeffs[0]),
        .I5(\s_tmp_nomac_reg[2]__0_n_0 ),
        .O(\s_tmp_nomac_reg[2]0__0_carry__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[2]0__0_carry__0_i_10 
       (.I0(\s_tmp_nomac_reg[2]__2_n_0 ),
        .I1(s_coeffs[2]),
        .O(\s_tmp_nomac_reg[2]0__0_carry__0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[2]0__0_carry__0_i_11 
       (.I0(\s_tmp_nomac_reg[2]__3_n_0 ),
        .I1(s_coeffs[2]),
        .O(\s_tmp_nomac_reg[2]0__0_carry__0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[2]0__0_carry__0_i_12 
       (.I0(\s_tmp_nomac_reg[2]__4_n_0 ),
        .I1(s_coeffs[2]),
        .O(\s_tmp_nomac_reg[2]0__0_carry__0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[2]0__0_carry__0_i_2 
       (.I0(s_coeffs[2]),
        .I1(\s_tmp_nomac_reg[2]__3_n_0 ),
        .I2(s_coeffs[1]),
        .I3(\s_tmp_nomac_reg[2]__2_n_0 ),
        .I4(s_coeffs[0]),
        .I5(\s_tmp_nomac_reg[2]__1_n_0 ),
        .O(\s_tmp_nomac_reg[2]0__0_carry__0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[2]0__0_carry__0_i_3 
       (.I0(s_coeffs[2]),
        .I1(\s_tmp_nomac_reg[2]__4_n_0 ),
        .I2(s_coeffs[1]),
        .I3(\s_tmp_nomac_reg[2]__3_n_0 ),
        .I4(s_coeffs[0]),
        .I5(\s_tmp_nomac_reg[2]__2_n_0 ),
        .O(\s_tmp_nomac_reg[2]0__0_carry__0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[2]0__0_carry__0_i_4 
       (.I0(s_coeffs[2]),
        .I1(\s_tmp_nomac_reg[2]__5_n_0 ),
        .I2(s_coeffs[1]),
        .I3(\s_tmp_nomac_reg[2]__4_n_0 ),
        .I4(s_coeffs[0]),
        .I5(\s_tmp_nomac_reg[2]__3_n_0 ),
        .O(\s_tmp_nomac_reg[2]0__0_carry__0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \s_tmp_nomac_reg[2]0__0_carry__0_i_5 
       (.I0(\s_tmp_nomac_reg[2]0__0_carry__0_i_1_n_0 ),
        .I1(s_coeffs[1]),
        .I2(\s_tmp_nomac_reg[2]__0_n_0 ),
        .I3(\s_tmp_nomac_reg[2]0__0_carry__0_i_9_n_0 ),
        .I4(\s_tmp_nomac_reg_n_0_[2] ),
        .I5(s_coeffs[0]),
        .O(\s_tmp_nomac_reg[2]0__0_carry__0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \s_tmp_nomac_reg[2]0__0_carry__0_i_6 
       (.I0(\s_tmp_nomac_reg[2]0__0_carry__0_i_2_n_0 ),
        .I1(s_coeffs[1]),
        .I2(\s_tmp_nomac_reg[2]__1_n_0 ),
        .I3(\s_tmp_nomac_reg[2]0__0_carry__0_i_10_n_0 ),
        .I4(\s_tmp_nomac_reg[2]__0_n_0 ),
        .I5(s_coeffs[0]),
        .O(\s_tmp_nomac_reg[2]0__0_carry__0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \s_tmp_nomac_reg[2]0__0_carry__0_i_7 
       (.I0(\s_tmp_nomac_reg[2]0__0_carry__0_i_3_n_0 ),
        .I1(s_coeffs[1]),
        .I2(\s_tmp_nomac_reg[2]__2_n_0 ),
        .I3(\s_tmp_nomac_reg[2]0__0_carry__0_i_11_n_0 ),
        .I4(\s_tmp_nomac_reg[2]__1_n_0 ),
        .I5(s_coeffs[0]),
        .O(\s_tmp_nomac_reg[2]0__0_carry__0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \s_tmp_nomac_reg[2]0__0_carry__0_i_8 
       (.I0(\s_tmp_nomac_reg[2]0__0_carry__0_i_4_n_0 ),
        .I1(s_coeffs[1]),
        .I2(\s_tmp_nomac_reg[2]__3_n_0 ),
        .I3(\s_tmp_nomac_reg[2]0__0_carry__0_i_12_n_0 ),
        .I4(\s_tmp_nomac_reg[2]__2_n_0 ),
        .I5(s_coeffs[0]),
        .O(\s_tmp_nomac_reg[2]0__0_carry__0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[2]0__0_carry__0_i_9 
       (.I0(\s_tmp_nomac_reg[2]__1_n_0 ),
        .I1(s_coeffs[2]),
        .O(\s_tmp_nomac_reg[2]0__0_carry__0_i_9_n_0 ));
  CARRY4 \s_tmp_nomac_reg[2]0__0_carry__1 
       (.CI(\s_tmp_nomac_reg[2]0__0_carry__0_n_0 ),
        .CO({\NLW_s_tmp_nomac_reg[2]0__0_carry__1_CO_UNCONNECTED [3],\s_tmp_nomac_reg[2]0__0_carry__1_n_1 ,\NLW_s_tmp_nomac_reg[2]0__0_carry__1_CO_UNCONNECTED [1],\s_tmp_nomac_reg[2]0__0_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\s_tmp_nomac_reg[2]0__0_carry__1_i_1_n_0 ,\s_tmp_nomac_reg[2]0__0_carry__1_i_2_n_0 }),
        .O({\NLW_s_tmp_nomac_reg[2]0__0_carry__1_O_UNCONNECTED [3:2],\s_tmp_nomac_reg[2]0__0_carry__1_n_6 ,\s_tmp_nomac_reg[2]0__0_carry__1_n_7 }),
        .S({1'b0,1'b1,\s_tmp_nomac_reg[2]0__0_carry__1_i_3_n_0 ,\s_tmp_nomac_reg[2]0__0_carry__1_i_4_n_0 }));
  LUT4 #(
    .INIT(16'h8000)) 
    \s_tmp_nomac_reg[2]0__0_carry__1_i_1 
       (.I0(s_coeffs[2]),
        .I1(\s_tmp_nomac_reg[2]__0_n_0 ),
        .I2(s_coeffs[1]),
        .I3(\s_tmp_nomac_reg_n_0_[2] ),
        .O(\s_tmp_nomac_reg[2]0__0_carry__1_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[2]0__0_carry__1_i_2 
       (.I0(s_coeffs[2]),
        .I1(\s_tmp_nomac_reg[2]__1_n_0 ),
        .I2(s_coeffs[1]),
        .I3(\s_tmp_nomac_reg[2]__0_n_0 ),
        .I4(s_coeffs[0]),
        .I5(\s_tmp_nomac_reg_n_0_[2] ),
        .O(\s_tmp_nomac_reg[2]0__0_carry__1_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \s_tmp_nomac_reg[2]0__0_carry__1_i_3 
       (.I0(s_coeffs[1]),
        .I1(\s_tmp_nomac_reg[2]__0_n_0 ),
        .I2(s_coeffs[2]),
        .I3(\s_tmp_nomac_reg_n_0_[2] ),
        .O(\s_tmp_nomac_reg[2]0__0_carry__1_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE75F30007800F000)) 
    \s_tmp_nomac_reg[2]0__0_carry__1_i_4 
       (.I0(s_coeffs[0]),
        .I1(\s_tmp_nomac_reg[2]__1_n_0 ),
        .I2(\s_tmp_nomac_reg[2]__0_n_0 ),
        .I3(s_coeffs[2]),
        .I4(\s_tmp_nomac_reg_n_0_[2] ),
        .I5(s_coeffs[1]),
        .O(\s_tmp_nomac_reg[2]0__0_carry__1_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \s_tmp_nomac_reg[2]0__0_carry_i_1 
       (.I0(s_coeffs[1]),
        .I1(\s_tmp_nomac_reg[2]__4_n_0 ),
        .I2(s_coeffs[2]),
        .I3(\s_tmp_nomac_reg[2]__5_n_0 ),
        .I4(\s_tmp_nomac_reg[2]__3_n_0 ),
        .I5(s_coeffs[0]),
        .O(\s_tmp_nomac_reg[2]0__0_carry_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \s_tmp_nomac_reg[2]0__0_carry_i_2 
       (.I0(s_coeffs[1]),
        .I1(\s_tmp_nomac_reg[2]__5_n_0 ),
        .I2(s_coeffs[2]),
        .I3(\s_tmp_nomac_reg[2]__6_n_0 ),
        .O(\s_tmp_nomac_reg[2]0__0_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_tmp_nomac_reg[2]0__0_carry_i_3 
       (.I0(s_coeffs[0]),
        .I1(\s_tmp_nomac_reg[2]__5_n_0 ),
        .O(\s_tmp_nomac_reg[2]0__0_carry_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \s_tmp_nomac_reg[2]0__0_carry_i_4 
       (.I0(\s_tmp_nomac_reg[2]__4_n_0 ),
        .I1(\s_tmp_nomac_reg[2]0__0_carry_i_8_n_0 ),
        .I2(\s_tmp_nomac_reg[2]__5_n_0 ),
        .I3(s_coeffs[1]),
        .I4(\s_tmp_nomac_reg[2]__6_n_0 ),
        .I5(s_coeffs[2]),
        .O(\s_tmp_nomac_reg[2]0__0_carry_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \s_tmp_nomac_reg[2]0__0_carry_i_5 
       (.I0(\s_tmp_nomac_reg[2]__6_n_0 ),
        .I1(s_coeffs[2]),
        .I2(\s_tmp_nomac_reg[2]__5_n_0 ),
        .I3(s_coeffs[1]),
        .I4(s_coeffs[0]),
        .I5(\s_tmp_nomac_reg[2]__4_n_0 ),
        .O(\s_tmp_nomac_reg[2]0__0_carry_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \s_tmp_nomac_reg[2]0__0_carry_i_6 
       (.I0(s_coeffs[0]),
        .I1(\s_tmp_nomac_reg[2]__5_n_0 ),
        .I2(s_coeffs[1]),
        .I3(\s_tmp_nomac_reg[2]__6_n_0 ),
        .O(\s_tmp_nomac_reg[2]0__0_carry_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_tmp_nomac_reg[2]0__0_carry_i_7 
       (.I0(\s_tmp_nomac_reg[2]__6_n_0 ),
        .I1(s_coeffs[0]),
        .O(\s_tmp_nomac_reg[2]0__0_carry_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[2]0__0_carry_i_8 
       (.I0(\s_tmp_nomac_reg[2]__3_n_0 ),
        .I1(s_coeffs[0]),
        .O(\s_tmp_nomac_reg[2]0__0_carry_i_8_n_0 ));
  CARRY4 \s_tmp_nomac_reg[2]0__30_carry 
       (.CI(1'b0),
        .CO({\s_tmp_nomac_reg[2]0__30_carry_n_0 ,\s_tmp_nomac_reg[2]0__30_carry_n_1 ,\s_tmp_nomac_reg[2]0__30_carry_n_2 ,\s_tmp_nomac_reg[2]0__30_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_tmp_nomac_reg[2]0__30_carry_i_1_n_0 ,\s_tmp_nomac_reg[2]0__30_carry_i_2_n_0 ,\s_tmp_nomac_reg[2]0__30_carry_i_3_n_0 ,1'b0}),
        .O({\s_tmp_nomac_reg[2]0__30_carry_n_4 ,\s_tmp_nomac_reg[2]0__30_carry_n_5 ,\s_tmp_nomac_reg[2]0__30_carry_n_6 ,\s_tmp_nomac_reg[2]0__30_carry_n_7 }),
        .S({\s_tmp_nomac_reg[2]0__30_carry_i_4_n_0 ,\s_tmp_nomac_reg[2]0__30_carry_i_5_n_0 ,\s_tmp_nomac_reg[2]0__30_carry_i_6_n_0 ,\s_tmp_nomac_reg[2]0__30_carry_i_7_n_0 }));
  CARRY4 \s_tmp_nomac_reg[2]0__30_carry__0 
       (.CI(\s_tmp_nomac_reg[2]0__30_carry_n_0 ),
        .CO({\s_tmp_nomac_reg[2]0__30_carry__0_n_0 ,\s_tmp_nomac_reg[2]0__30_carry__0_n_1 ,\s_tmp_nomac_reg[2]0__30_carry__0_n_2 ,\s_tmp_nomac_reg[2]0__30_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_tmp_nomac_reg[2]0__30_carry__0_i_1_n_0 ,\s_tmp_nomac_reg[2]0__30_carry__0_i_2_n_0 ,\s_tmp_nomac_reg[2]0__30_carry__0_i_3_n_0 ,\s_tmp_nomac_reg[2]0__30_carry__0_i_4_n_0 }),
        .O({\s_tmp_nomac_reg[2]0__30_carry__0_n_4 ,\s_tmp_nomac_reg[2]0__30_carry__0_n_5 ,\s_tmp_nomac_reg[2]0__30_carry__0_n_6 ,\s_tmp_nomac_reg[2]0__30_carry__0_n_7 }),
        .S({\s_tmp_nomac_reg[2]0__30_carry__0_i_5_n_0 ,\s_tmp_nomac_reg[2]0__30_carry__0_i_6_n_0 ,\s_tmp_nomac_reg[2]0__30_carry__0_i_7_n_0 ,\s_tmp_nomac_reg[2]0__30_carry__0_i_8_n_0 }));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[2]0__30_carry__0_i_1 
       (.I0(s_coeffs[5]),
        .I1(\s_tmp_nomac_reg[2]__2_n_0 ),
        .I2(s_coeffs[4]),
        .I3(\s_tmp_nomac_reg[2]__1_n_0 ),
        .I4(s_coeffs[3]),
        .I5(\s_tmp_nomac_reg[2]__0_n_0 ),
        .O(\s_tmp_nomac_reg[2]0__30_carry__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[2]0__30_carry__0_i_10 
       (.I0(\s_tmp_nomac_reg[2]__2_n_0 ),
        .I1(s_coeffs[5]),
        .O(\s_tmp_nomac_reg[2]0__30_carry__0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[2]0__30_carry__0_i_11 
       (.I0(\s_tmp_nomac_reg[2]__3_n_0 ),
        .I1(s_coeffs[5]),
        .O(\s_tmp_nomac_reg[2]0__30_carry__0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[2]0__30_carry__0_i_12 
       (.I0(\s_tmp_nomac_reg[2]__4_n_0 ),
        .I1(s_coeffs[5]),
        .O(\s_tmp_nomac_reg[2]0__30_carry__0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[2]0__30_carry__0_i_2 
       (.I0(s_coeffs[5]),
        .I1(\s_tmp_nomac_reg[2]__3_n_0 ),
        .I2(s_coeffs[4]),
        .I3(\s_tmp_nomac_reg[2]__2_n_0 ),
        .I4(s_coeffs[3]),
        .I5(\s_tmp_nomac_reg[2]__1_n_0 ),
        .O(\s_tmp_nomac_reg[2]0__30_carry__0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[2]0__30_carry__0_i_3 
       (.I0(s_coeffs[5]),
        .I1(\s_tmp_nomac_reg[2]__4_n_0 ),
        .I2(s_coeffs[4]),
        .I3(\s_tmp_nomac_reg[2]__3_n_0 ),
        .I4(s_coeffs[3]),
        .I5(\s_tmp_nomac_reg[2]__2_n_0 ),
        .O(\s_tmp_nomac_reg[2]0__30_carry__0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[2]0__30_carry__0_i_4 
       (.I0(s_coeffs[5]),
        .I1(\s_tmp_nomac_reg[2]__5_n_0 ),
        .I2(s_coeffs[4]),
        .I3(\s_tmp_nomac_reg[2]__4_n_0 ),
        .I4(s_coeffs[3]),
        .I5(\s_tmp_nomac_reg[2]__3_n_0 ),
        .O(\s_tmp_nomac_reg[2]0__30_carry__0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \s_tmp_nomac_reg[2]0__30_carry__0_i_5 
       (.I0(\s_tmp_nomac_reg[2]0__30_carry__0_i_1_n_0 ),
        .I1(s_coeffs[4]),
        .I2(\s_tmp_nomac_reg[2]__0_n_0 ),
        .I3(\s_tmp_nomac_reg[2]0__30_carry__0_i_9_n_0 ),
        .I4(\s_tmp_nomac_reg_n_0_[2] ),
        .I5(s_coeffs[3]),
        .O(\s_tmp_nomac_reg[2]0__30_carry__0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \s_tmp_nomac_reg[2]0__30_carry__0_i_6 
       (.I0(\s_tmp_nomac_reg[2]0__30_carry__0_i_2_n_0 ),
        .I1(s_coeffs[4]),
        .I2(\s_tmp_nomac_reg[2]__1_n_0 ),
        .I3(\s_tmp_nomac_reg[2]0__30_carry__0_i_10_n_0 ),
        .I4(\s_tmp_nomac_reg[2]__0_n_0 ),
        .I5(s_coeffs[3]),
        .O(\s_tmp_nomac_reg[2]0__30_carry__0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \s_tmp_nomac_reg[2]0__30_carry__0_i_7 
       (.I0(\s_tmp_nomac_reg[2]0__30_carry__0_i_3_n_0 ),
        .I1(s_coeffs[4]),
        .I2(\s_tmp_nomac_reg[2]__2_n_0 ),
        .I3(\s_tmp_nomac_reg[2]0__30_carry__0_i_11_n_0 ),
        .I4(\s_tmp_nomac_reg[2]__1_n_0 ),
        .I5(s_coeffs[3]),
        .O(\s_tmp_nomac_reg[2]0__30_carry__0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \s_tmp_nomac_reg[2]0__30_carry__0_i_8 
       (.I0(\s_tmp_nomac_reg[2]0__30_carry__0_i_4_n_0 ),
        .I1(s_coeffs[4]),
        .I2(\s_tmp_nomac_reg[2]__3_n_0 ),
        .I3(\s_tmp_nomac_reg[2]0__30_carry__0_i_12_n_0 ),
        .I4(\s_tmp_nomac_reg[2]__2_n_0 ),
        .I5(s_coeffs[3]),
        .O(\s_tmp_nomac_reg[2]0__30_carry__0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[2]0__30_carry__0_i_9 
       (.I0(\s_tmp_nomac_reg[2]__1_n_0 ),
        .I1(s_coeffs[5]),
        .O(\s_tmp_nomac_reg[2]0__30_carry__0_i_9_n_0 ));
  CARRY4 \s_tmp_nomac_reg[2]0__30_carry__1 
       (.CI(\s_tmp_nomac_reg[2]0__30_carry__0_n_0 ),
        .CO({\NLW_s_tmp_nomac_reg[2]0__30_carry__1_CO_UNCONNECTED [3],\s_tmp_nomac_reg[2]0__30_carry__1_n_1 ,\NLW_s_tmp_nomac_reg[2]0__30_carry__1_CO_UNCONNECTED [1],\s_tmp_nomac_reg[2]0__30_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\s_tmp_nomac_reg[2]0__30_carry__1_i_1_n_0 ,\s_tmp_nomac_reg[2]0__30_carry__1_i_2_n_0 }),
        .O({\NLW_s_tmp_nomac_reg[2]0__30_carry__1_O_UNCONNECTED [3:2],\s_tmp_nomac_reg[2]0__30_carry__1_n_6 ,\s_tmp_nomac_reg[2]0__30_carry__1_n_7 }),
        .S({1'b0,1'b1,\s_tmp_nomac_reg[2]0__30_carry__1_i_3_n_0 ,\s_tmp_nomac_reg[2]0__30_carry__1_i_4_n_0 }));
  LUT4 #(
    .INIT(16'h8000)) 
    \s_tmp_nomac_reg[2]0__30_carry__1_i_1 
       (.I0(s_coeffs[5]),
        .I1(\s_tmp_nomac_reg[2]__0_n_0 ),
        .I2(s_coeffs[4]),
        .I3(\s_tmp_nomac_reg_n_0_[2] ),
        .O(\s_tmp_nomac_reg[2]0__30_carry__1_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[2]0__30_carry__1_i_2 
       (.I0(s_coeffs[5]),
        .I1(\s_tmp_nomac_reg[2]__1_n_0 ),
        .I2(s_coeffs[4]),
        .I3(\s_tmp_nomac_reg[2]__0_n_0 ),
        .I4(s_coeffs[3]),
        .I5(\s_tmp_nomac_reg_n_0_[2] ),
        .O(\s_tmp_nomac_reg[2]0__30_carry__1_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \s_tmp_nomac_reg[2]0__30_carry__1_i_3 
       (.I0(s_coeffs[4]),
        .I1(\s_tmp_nomac_reg[2]__0_n_0 ),
        .I2(s_coeffs[5]),
        .I3(\s_tmp_nomac_reg_n_0_[2] ),
        .O(\s_tmp_nomac_reg[2]0__30_carry__1_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE75F30007800F000)) 
    \s_tmp_nomac_reg[2]0__30_carry__1_i_4 
       (.I0(s_coeffs[3]),
        .I1(\s_tmp_nomac_reg[2]__1_n_0 ),
        .I2(\s_tmp_nomac_reg[2]__0_n_0 ),
        .I3(s_coeffs[5]),
        .I4(\s_tmp_nomac_reg_n_0_[2] ),
        .I5(s_coeffs[4]),
        .O(\s_tmp_nomac_reg[2]0__30_carry__1_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \s_tmp_nomac_reg[2]0__30_carry_i_1 
       (.I0(s_coeffs[4]),
        .I1(\s_tmp_nomac_reg[2]__4_n_0 ),
        .I2(s_coeffs[5]),
        .I3(\s_tmp_nomac_reg[2]__5_n_0 ),
        .I4(\s_tmp_nomac_reg[2]__3_n_0 ),
        .I5(s_coeffs[3]),
        .O(\s_tmp_nomac_reg[2]0__30_carry_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \s_tmp_nomac_reg[2]0__30_carry_i_2 
       (.I0(s_coeffs[4]),
        .I1(\s_tmp_nomac_reg[2]__5_n_0 ),
        .I2(s_coeffs[5]),
        .I3(\s_tmp_nomac_reg[2]__6_n_0 ),
        .O(\s_tmp_nomac_reg[2]0__30_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_tmp_nomac_reg[2]0__30_carry_i_3 
       (.I0(s_coeffs[3]),
        .I1(\s_tmp_nomac_reg[2]__5_n_0 ),
        .O(\s_tmp_nomac_reg[2]0__30_carry_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \s_tmp_nomac_reg[2]0__30_carry_i_4 
       (.I0(\s_tmp_nomac_reg[2]__4_n_0 ),
        .I1(\s_tmp_nomac_reg[2]0__30_carry_i_8_n_0 ),
        .I2(\s_tmp_nomac_reg[2]__5_n_0 ),
        .I3(s_coeffs[4]),
        .I4(\s_tmp_nomac_reg[2]__6_n_0 ),
        .I5(s_coeffs[5]),
        .O(\s_tmp_nomac_reg[2]0__30_carry_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \s_tmp_nomac_reg[2]0__30_carry_i_5 
       (.I0(\s_tmp_nomac_reg[2]__6_n_0 ),
        .I1(s_coeffs[5]),
        .I2(\s_tmp_nomac_reg[2]__5_n_0 ),
        .I3(s_coeffs[4]),
        .I4(s_coeffs[3]),
        .I5(\s_tmp_nomac_reg[2]__4_n_0 ),
        .O(\s_tmp_nomac_reg[2]0__30_carry_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \s_tmp_nomac_reg[2]0__30_carry_i_6 
       (.I0(s_coeffs[3]),
        .I1(\s_tmp_nomac_reg[2]__5_n_0 ),
        .I2(s_coeffs[4]),
        .I3(\s_tmp_nomac_reg[2]__6_n_0 ),
        .O(\s_tmp_nomac_reg[2]0__30_carry_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_tmp_nomac_reg[2]0__30_carry_i_7 
       (.I0(\s_tmp_nomac_reg[2]__6_n_0 ),
        .I1(s_coeffs[3]),
        .O(\s_tmp_nomac_reg[2]0__30_carry_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[2]0__30_carry_i_8 
       (.I0(\s_tmp_nomac_reg[2]__3_n_0 ),
        .I1(s_coeffs[3]),
        .O(\s_tmp_nomac_reg[2]0__30_carry_i_8_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_tmp_nomac_reg[2]0__60_carry 
       (.CI(1'b0),
        .CO({\s_tmp_nomac_reg[2]0__60_carry_n_0 ,\s_tmp_nomac_reg[2]0__60_carry_n_1 ,\s_tmp_nomac_reg[2]0__60_carry_n_2 ,\s_tmp_nomac_reg[2]0__60_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_tmp_nomac_reg[2]0__60_carry_i_1_n_0 ,\s_tmp_nomac_reg[2]0__0_carry__0_n_6 ,\s_tmp_nomac_reg[2]0__0_carry__0_n_7 ,\s_tmp_nomac_reg[2]0__0_carry_n_4 }),
        .O({\s_tmp_nomac_reg[2]0 [6:4],\NLW_s_tmp_nomac_reg[2]0__60_carry_O_UNCONNECTED [0]}),
        .S({\s_tmp_nomac_reg[2]0__60_carry_i_2_n_0 ,\s_tmp_nomac_reg[2]0__60_carry_i_3_n_0 ,\s_tmp_nomac_reg[2]0__60_carry_i_4_n_0 ,\s_tmp_nomac_reg[2]0__60_carry_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_tmp_nomac_reg[2]0__60_carry__0 
       (.CI(\s_tmp_nomac_reg[2]0__60_carry_n_0 ),
        .CO({\s_tmp_nomac_reg[2]0__60_carry__0_n_0 ,\s_tmp_nomac_reg[2]0__60_carry__0_n_1 ,\s_tmp_nomac_reg[2]0__60_carry__0_n_2 ,\s_tmp_nomac_reg[2]0__60_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_tmp_nomac_reg[2]0__60_carry__0_i_1_n_0 ,\s_tmp_nomac_reg[2]0__60_carry__0_i_2_n_0 ,\s_tmp_nomac_reg[2]0__60_carry__0_i_3_n_0 ,\s_tmp_nomac_reg[2]0__60_carry__0_i_4_n_0 }),
        .O(\s_tmp_nomac_reg[2]0 [10:7]),
        .S({\s_tmp_nomac_reg[2]0__60_carry__0_i_5_n_0 ,\s_tmp_nomac_reg[2]0__60_carry__0_i_6_n_0 ,\s_tmp_nomac_reg[2]0__60_carry__0_i_7_n_0 ,\s_tmp_nomac_reg[2]0__60_carry__0_i_8_n_0 }));
  LUT4 #(
    .INIT(16'h8F08)) 
    \s_tmp_nomac_reg[2]0__60_carry__0_i_1 
       (.I0(s_coeffs[6]),
        .I1(\s_tmp_nomac_reg[2]__3_n_0 ),
        .I2(\s_tmp_nomac_reg[2]0__60_carry__0_i_9_n_0 ),
        .I3(\s_tmp_nomac_reg[2]0__60_carry__0_i_10_n_0 ),
        .O(\s_tmp_nomac_reg[2]0__60_carry__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    \s_tmp_nomac_reg[2]0__60_carry__0_i_10 
       (.I0(\s_tmp_nomac_reg[2]0__30_carry__0_n_6 ),
        .I1(\s_tmp_nomac_reg[2]0__0_carry__1_n_7 ),
        .I2(s_coeffs[7]),
        .I3(\s_tmp_nomac_reg[2]__5_n_0 ),
        .O(\s_tmp_nomac_reg[2]0__60_carry__0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    \s_tmp_nomac_reg[2]0__60_carry__0_i_11 
       (.I0(s_coeffs[7]),
        .I1(\s_tmp_nomac_reg[2]__5_n_0 ),
        .I2(\s_tmp_nomac_reg[2]0__30_carry__0_n_6 ),
        .I3(\s_tmp_nomac_reg[2]0__0_carry__1_n_7 ),
        .O(\s_tmp_nomac_reg[2]0__60_carry__0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[2]0__60_carry__0_i_12 
       (.I0(\s_tmp_nomac_reg[2]__3_n_0 ),
        .I1(s_coeffs[6]),
        .O(\s_tmp_nomac_reg[2]0__60_carry__0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    \s_tmp_nomac_reg[2]0__60_carry__0_i_13 
       (.I0(s_coeffs[7]),
        .I1(\s_tmp_nomac_reg[2]__3_n_0 ),
        .I2(\s_tmp_nomac_reg[2]0__30_carry__0_n_4 ),
        .I3(\s_tmp_nomac_reg[2]0__0_carry__1_n_1 ),
        .O(\s_tmp_nomac_reg[2]0__60_carry__0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[2]0__60_carry__0_i_14 
       (.I0(\s_tmp_nomac_reg[2]__2_n_0 ),
        .I1(s_coeffs[6]),
        .O(\s_tmp_nomac_reg[2]0__60_carry__0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    \s_tmp_nomac_reg[2]0__60_carry__0_i_15 
       (.I0(\s_tmp_nomac_reg[2]0__30_carry__0_n_5 ),
        .I1(\s_tmp_nomac_reg[2]0__0_carry__1_n_6 ),
        .I2(s_coeffs[7]),
        .I3(\s_tmp_nomac_reg[2]__4_n_0 ),
        .O(\s_tmp_nomac_reg[2]0__60_carry__0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \s_tmp_nomac_reg[2]0__60_carry__0_i_16 
       (.I0(\s_tmp_nomac_reg[2]0__0_carry__0_n_5 ),
        .I1(\s_tmp_nomac_reg[2]0__30_carry_n_4 ),
        .I2(s_coeffs[6]),
        .I3(\s_tmp_nomac_reg[2]__5_n_0 ),
        .O(\s_tmp_nomac_reg[2]0__60_carry__0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[2]0__60_carry__0_i_17 
       (.I0(\s_tmp_nomac_reg[2]__4_n_0 ),
        .I1(s_coeffs[6]),
        .O(\s_tmp_nomac_reg[2]0__60_carry__0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[2]0__60_carry__0_i_18 
       (.I0(\s_tmp_nomac_reg[2]__6_n_0 ),
        .I1(s_coeffs[7]),
        .O(\s_tmp_nomac_reg[2]0__60_carry__0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    \s_tmp_nomac_reg[2]0__60_carry__0_i_19 
       (.I0(s_coeffs[7]),
        .I1(\s_tmp_nomac_reg[2]__6_n_0 ),
        .I2(\s_tmp_nomac_reg[2]0__30_carry__0_n_7 ),
        .I3(\s_tmp_nomac_reg[2]0__0_carry__0_n_4 ),
        .O(\s_tmp_nomac_reg[2]0__60_carry__0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h8A08080808080808)) 
    \s_tmp_nomac_reg[2]0__60_carry__0_i_2 
       (.I0(s_coeffs[6]),
        .I1(\s_tmp_nomac_reg[2]__4_n_0 ),
        .I2(\s_tmp_nomac_reg[2]0__60_carry__0_i_11_n_0 ),
        .I3(\s_tmp_nomac_reg[2]__5_n_0 ),
        .I4(\s_tmp_nomac_reg[2]0__30_carry_n_4 ),
        .I5(\s_tmp_nomac_reg[2]0__0_carry__0_n_5 ),
        .O(\s_tmp_nomac_reg[2]0__60_carry__0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5995959595959595)) 
    \s_tmp_nomac_reg[2]0__60_carry__0_i_3 
       (.I0(\s_tmp_nomac_reg[2]0__60_carry__0_i_11_n_0 ),
        .I1(s_coeffs[6]),
        .I2(\s_tmp_nomac_reg[2]__4_n_0 ),
        .I3(\s_tmp_nomac_reg[2]0__0_carry__0_n_5 ),
        .I4(\s_tmp_nomac_reg[2]0__30_carry_n_4 ),
        .I5(\s_tmp_nomac_reg[2]__5_n_0 ),
        .O(\s_tmp_nomac_reg[2]0__60_carry__0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \s_tmp_nomac_reg[2]0__60_carry__0_i_4 
       (.I0(\s_tmp_nomac_reg[2]0__0_carry__0_n_4 ),
        .I1(\s_tmp_nomac_reg[2]0__30_carry__0_n_7 ),
        .I2(\s_tmp_nomac_reg[2]__6_n_0 ),
        .I3(s_coeffs[7]),
        .O(\s_tmp_nomac_reg[2]0__60_carry__0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \s_tmp_nomac_reg[2]0__60_carry__0_i_5 
       (.I0(\s_tmp_nomac_reg[2]0__60_carry__0_i_10_n_0 ),
        .I1(\s_tmp_nomac_reg[2]0__60_carry__0_i_9_n_0 ),
        .I2(\s_tmp_nomac_reg[2]0__60_carry__0_i_12_n_0 ),
        .I3(\s_tmp_nomac_reg[2]0__60_carry__0_i_13_n_0 ),
        .I4(\s_tmp_nomac_reg[2]0__60_carry__0_i_14_n_0 ),
        .I5(\s_tmp_nomac_reg[2]0__60_carry__0_i_15_n_0 ),
        .O(\s_tmp_nomac_reg[2]0__60_carry__0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \s_tmp_nomac_reg[2]0__60_carry__0_i_6 
       (.I0(\s_tmp_nomac_reg[2]0__60_carry__0_i_16_n_0 ),
        .I1(\s_tmp_nomac_reg[2]0__60_carry__0_i_11_n_0 ),
        .I2(\s_tmp_nomac_reg[2]0__60_carry__0_i_17_n_0 ),
        .I3(\s_tmp_nomac_reg[2]0__60_carry__0_i_9_n_0 ),
        .I4(\s_tmp_nomac_reg[2]0__60_carry__0_i_12_n_0 ),
        .I5(\s_tmp_nomac_reg[2]0__60_carry__0_i_10_n_0 ),
        .O(\s_tmp_nomac_reg[2]0__60_carry__0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6969966996699696)) 
    \s_tmp_nomac_reg[2]0__60_carry__0_i_7 
       (.I0(\s_tmp_nomac_reg[2]0__60_carry__0_i_11_n_0 ),
        .I1(\s_tmp_nomac_reg[2]0__60_carry__0_i_17_n_0 ),
        .I2(\s_tmp_nomac_reg[2]0__60_carry__0_i_16_n_0 ),
        .I3(\s_tmp_nomac_reg[2]0__60_carry__0_i_18_n_0 ),
        .I4(\s_tmp_nomac_reg[2]0__0_carry__0_n_4 ),
        .I5(\s_tmp_nomac_reg[2]0__30_carry__0_n_7 ),
        .O(\s_tmp_nomac_reg[2]0__60_carry__0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h6A959595)) 
    \s_tmp_nomac_reg[2]0__60_carry__0_i_8 
       (.I0(\s_tmp_nomac_reg[2]0__60_carry__0_i_19_n_0 ),
        .I1(\s_tmp_nomac_reg[2]__5_n_0 ),
        .I2(s_coeffs[6]),
        .I3(\s_tmp_nomac_reg[2]0__30_carry_n_4 ),
        .I4(\s_tmp_nomac_reg[2]0__0_carry__0_n_5 ),
        .O(\s_tmp_nomac_reg[2]0__60_carry__0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    \s_tmp_nomac_reg[2]0__60_carry__0_i_9 
       (.I0(s_coeffs[7]),
        .I1(\s_tmp_nomac_reg[2]__4_n_0 ),
        .I2(\s_tmp_nomac_reg[2]0__30_carry__0_n_5 ),
        .I3(\s_tmp_nomac_reg[2]0__0_carry__1_n_6 ),
        .O(\s_tmp_nomac_reg[2]0__60_carry__0_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_tmp_nomac_reg[2]0__60_carry__1 
       (.CI(\s_tmp_nomac_reg[2]0__60_carry__0_n_0 ),
        .CO({\s_tmp_nomac_reg[2]0__60_carry__1_n_0 ,\s_tmp_nomac_reg[2]0__60_carry__1_n_1 ,\s_tmp_nomac_reg[2]0__60_carry__1_n_2 ,\s_tmp_nomac_reg[2]0__60_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_tmp_nomac_reg[2]0__60_carry__1_i_1_n_0 ,\s_tmp_nomac_reg[2]0__60_carry__1_i_2_n_0 ,\s_tmp_nomac_reg[2]0__60_carry__1_i_3_n_0 ,\s_tmp_nomac_reg[2]0__60_carry__1_i_4_n_0 }),
        .O(\s_tmp_nomac_reg[2]0 [14:11]),
        .S({\s_tmp_nomac_reg[2]0__60_carry__1_i_5_n_0 ,\s_tmp_nomac_reg[2]0__60_carry__1_i_6_n_0 ,\s_tmp_nomac_reg[2]0__60_carry__1_i_7_n_0 ,\s_tmp_nomac_reg[2]0__60_carry__1_i_8_n_0 }));
  LUT6 #(
    .INIT(64'h7D44144414441444)) 
    \s_tmp_nomac_reg[2]0__60_carry__1_i_1 
       (.I0(\s_tmp_nomac_reg[2]0__60_carry__1_i_9_n_0 ),
        .I1(\s_tmp_nomac_reg[2]0__30_carry__1_n_1 ),
        .I2(\s_tmp_nomac_reg[2]__0_n_0 ),
        .I3(s_coeffs[7]),
        .I4(\s_tmp_nomac_reg[2]0__30_carry__1_n_6 ),
        .I5(\s_tmp_nomac_reg[2]__1_n_0 ),
        .O(\s_tmp_nomac_reg[2]0__60_carry__1_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[2]0__60_carry__1_i_10 
       (.I0(\s_tmp_nomac_reg[2]__0_n_0 ),
        .I1(s_coeffs[6]),
        .O(\s_tmp_nomac_reg[2]0__60_carry__1_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    \s_tmp_nomac_reg[2]0__60_carry__1_i_11 
       (.I0(\s_tmp_nomac_reg[2]0__30_carry__0_n_4 ),
        .I1(\s_tmp_nomac_reg[2]0__0_carry__1_n_1 ),
        .I2(s_coeffs[7]),
        .I3(\s_tmp_nomac_reg[2]__3_n_0 ),
        .O(\s_tmp_nomac_reg[2]0__60_carry__1_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \s_tmp_nomac_reg[2]0__60_carry__1_i_12 
       (.I0(s_coeffs[7]),
        .I1(\s_tmp_nomac_reg[2]__1_n_0 ),
        .I2(\s_tmp_nomac_reg[2]0__30_carry__1_n_6 ),
        .O(\s_tmp_nomac_reg[2]0__60_carry__1_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h87)) 
    \s_tmp_nomac_reg[2]0__60_carry__1_i_13 
       (.I0(s_coeffs[7]),
        .I1(\s_tmp_nomac_reg[2]__0_n_0 ),
        .I2(\s_tmp_nomac_reg[2]0__30_carry__1_n_1 ),
        .O(\s_tmp_nomac_reg[2]0__60_carry__1_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[2]0__60_carry__1_i_14 
       (.I0(\s_tmp_nomac_reg[2]__1_n_0 ),
        .I1(s_coeffs[6]),
        .O(\s_tmp_nomac_reg[2]0__60_carry__1_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6A959595)) 
    \s_tmp_nomac_reg[2]0__60_carry__1_i_15 
       (.I0(\s_tmp_nomac_reg[2]0__30_carry__1_n_6 ),
        .I1(\s_tmp_nomac_reg[2]__1_n_0 ),
        .I2(s_coeffs[7]),
        .I3(s_coeffs[6]),
        .I4(\s_tmp_nomac_reg[2]__0_n_0 ),
        .O(\s_tmp_nomac_reg[2]0__60_carry__1_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h87)) 
    \s_tmp_nomac_reg[2]0__60_carry__1_i_16 
       (.I0(s_coeffs[7]),
        .I1(\s_tmp_nomac_reg[2]__2_n_0 ),
        .I2(\s_tmp_nomac_reg[2]0__30_carry__1_n_7 ),
        .O(\s_tmp_nomac_reg[2]0__60_carry__1_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h7D44144414441444)) 
    \s_tmp_nomac_reg[2]0__60_carry__1_i_2 
       (.I0(\s_tmp_nomac_reg[2]0__60_carry__1_i_10_n_0 ),
        .I1(\s_tmp_nomac_reg[2]0__30_carry__1_n_6 ),
        .I2(\s_tmp_nomac_reg[2]__1_n_0 ),
        .I3(s_coeffs[7]),
        .I4(\s_tmp_nomac_reg[2]0__30_carry__1_n_7 ),
        .I5(\s_tmp_nomac_reg[2]__2_n_0 ),
        .O(\s_tmp_nomac_reg[2]0__60_carry__1_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8FF8F8F808808080)) 
    \s_tmp_nomac_reg[2]0__60_carry__1_i_3 
       (.I0(s_coeffs[6]),
        .I1(\s_tmp_nomac_reg[2]__1_n_0 ),
        .I2(\s_tmp_nomac_reg[2]0__30_carry__1_n_7 ),
        .I3(\s_tmp_nomac_reg[2]__2_n_0 ),
        .I4(s_coeffs[7]),
        .I5(\s_tmp_nomac_reg[2]0__60_carry__1_i_11_n_0 ),
        .O(\s_tmp_nomac_reg[2]0__60_carry__1_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8F08)) 
    \s_tmp_nomac_reg[2]0__60_carry__1_i_4 
       (.I0(s_coeffs[6]),
        .I1(\s_tmp_nomac_reg[2]__2_n_0 ),
        .I2(\s_tmp_nomac_reg[2]0__60_carry__0_i_13_n_0 ),
        .I3(\s_tmp_nomac_reg[2]0__60_carry__0_i_15_n_0 ),
        .O(\s_tmp_nomac_reg[2]0__60_carry__1_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4FD525D52540B040)) 
    \s_tmp_nomac_reg[2]0__60_carry__1_i_5 
       (.I0(\s_tmp_nomac_reg[2]0__60_carry__1_i_12_n_0 ),
        .I1(s_coeffs[6]),
        .I2(\s_tmp_nomac_reg_n_0_[2] ),
        .I3(s_coeffs[7]),
        .I4(\s_tmp_nomac_reg[2]__0_n_0 ),
        .I5(\s_tmp_nomac_reg[2]0__30_carry__1_n_1 ),
        .O(\s_tmp_nomac_reg[2]0__60_carry__1_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h69999666)) 
    \s_tmp_nomac_reg[2]0__60_carry__1_i_6 
       (.I0(\s_tmp_nomac_reg[2]0__60_carry__1_i_2_n_0 ),
        .I1(\s_tmp_nomac_reg[2]0__60_carry__1_i_13_n_0 ),
        .I2(s_coeffs[6]),
        .I3(\s_tmp_nomac_reg_n_0_[2] ),
        .I4(\s_tmp_nomac_reg[2]0__60_carry__1_i_12_n_0 ),
        .O(\s_tmp_nomac_reg[2]0__60_carry__1_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hD2B4B4B4B42D2D2D)) 
    \s_tmp_nomac_reg[2]0__60_carry__1_i_7 
       (.I0(\s_tmp_nomac_reg[2]0__60_carry__1_i_11_n_0 ),
        .I1(\s_tmp_nomac_reg[2]0__60_carry__1_i_14_n_0 ),
        .I2(\s_tmp_nomac_reg[2]0__60_carry__1_i_15_n_0 ),
        .I3(s_coeffs[7]),
        .I4(\s_tmp_nomac_reg[2]__2_n_0 ),
        .I5(\s_tmp_nomac_reg[2]0__30_carry__1_n_7 ),
        .O(\s_tmp_nomac_reg[2]0__60_carry__1_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \s_tmp_nomac_reg[2]0__60_carry__1_i_8 
       (.I0(\s_tmp_nomac_reg[2]0__60_carry__0_i_15_n_0 ),
        .I1(\s_tmp_nomac_reg[2]0__60_carry__0_i_13_n_0 ),
        .I2(\s_tmp_nomac_reg[2]0__60_carry__0_i_14_n_0 ),
        .I3(\s_tmp_nomac_reg[2]0__60_carry__1_i_16_n_0 ),
        .I4(\s_tmp_nomac_reg[2]0__60_carry__1_i_14_n_0 ),
        .I5(\s_tmp_nomac_reg[2]0__60_carry__1_i_11_n_0 ),
        .O(\s_tmp_nomac_reg[2]0__60_carry__1_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[2]0__60_carry__1_i_9 
       (.I0(\s_tmp_nomac_reg_n_0_[2] ),
        .I1(s_coeffs[6]),
        .O(\s_tmp_nomac_reg[2]0__60_carry__1_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_tmp_nomac_reg[2]0__60_carry__2 
       (.CI(\s_tmp_nomac_reg[2]0__60_carry__1_n_0 ),
        .CO(\NLW_s_tmp_nomac_reg[2]0__60_carry__2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_s_tmp_nomac_reg[2]0__60_carry__2_O_UNCONNECTED [3:1],\s_tmp_nomac_reg[2]0 [15]}),
        .S({1'b0,1'b0,1'b0,\s_tmp_nomac_reg[2]0__60_carry__2_i_1_n_0 }));
  LUT4 #(
    .INIT(16'h8000)) 
    \s_tmp_nomac_reg[2]0__60_carry__2_i_1 
       (.I0(\s_tmp_nomac_reg_n_0_[2] ),
        .I1(\s_tmp_nomac_reg[2]0__30_carry__1_n_1 ),
        .I2(\s_tmp_nomac_reg[2]__0_n_0 ),
        .I3(s_coeffs[7]),
        .O(\s_tmp_nomac_reg[2]0__60_carry__2_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_tmp_nomac_reg[2]0__60_carry_i_1 
       (.I0(\s_tmp_nomac_reg[2]0__0_carry__0_n_5 ),
        .I1(\s_tmp_nomac_reg[2]0__30_carry_n_4 ),
        .O(\s_tmp_nomac_reg[2]0__60_carry_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \s_tmp_nomac_reg[2]0__60_carry_i_2 
       (.I0(\s_tmp_nomac_reg[2]0__30_carry_n_4 ),
        .I1(\s_tmp_nomac_reg[2]0__0_carry__0_n_5 ),
        .I2(s_coeffs[6]),
        .I3(\s_tmp_nomac_reg[2]__6_n_0 ),
        .O(\s_tmp_nomac_reg[2]0__60_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_tmp_nomac_reg[2]0__60_carry_i_3 
       (.I0(\s_tmp_nomac_reg[2]0__0_carry__0_n_6 ),
        .I1(\s_tmp_nomac_reg[2]0__30_carry_n_5 ),
        .O(\s_tmp_nomac_reg[2]0__60_carry_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_tmp_nomac_reg[2]0__60_carry_i_4 
       (.I0(\s_tmp_nomac_reg[2]0__0_carry__0_n_7 ),
        .I1(\s_tmp_nomac_reg[2]0__30_carry_n_6 ),
        .O(\s_tmp_nomac_reg[2]0__60_carry_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_tmp_nomac_reg[2]0__60_carry_i_5 
       (.I0(\s_tmp_nomac_reg[2]0__0_carry_n_4 ),
        .I1(\s_tmp_nomac_reg[2]0__30_carry_n_7 ),
        .O(\s_tmp_nomac_reg[2]0__60_carry_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[2][0] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[2]0 [0]),
        .Q(\s_tmp_nomac_reg_n_0_[2][0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[2][10] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[2]0 [10]),
        .Q(\s_tmp_nomac_reg_n_0_[2][10] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[2][11] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[2]0 [11]),
        .Q(\s_tmp_nomac_reg_n_0_[2][11] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[2][12] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[2]0 [12]),
        .Q(\s_tmp_nomac_reg_n_0_[2][12] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[2][13] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[2]0 [13]),
        .Q(\s_tmp_nomac_reg_n_0_[2][13] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[2][14] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[2]0 [14]),
        .Q(\s_tmp_nomac_reg_n_0_[2][14] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[2][15] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[2]0 [15]),
        .Q(\s_tmp_nomac_reg_n_0_[2][15] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[2][1] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[2]0 [1]),
        .Q(\s_tmp_nomac_reg_n_0_[2][1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[2][2] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[2]0 [2]),
        .Q(\s_tmp_nomac_reg_n_0_[2][2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[2][3] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[2]0 [3]),
        .Q(\s_tmp_nomac_reg_n_0_[2][3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[2][4] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[2]0 [4]),
        .Q(\s_tmp_nomac_reg_n_0_[2][4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[2][5] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[2]0 [5]),
        .Q(\s_tmp_nomac_reg_n_0_[2][5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[2][6] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[2]0 [6]),
        .Q(\s_tmp_nomac_reg_n_0_[2][6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[2][7] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[2]0 [7]),
        .Q(\s_tmp_nomac_reg_n_0_[2][7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[2][8] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[2]0 [8]),
        .Q(\s_tmp_nomac_reg_n_0_[2][8] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[2][9] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[2]0 [9]),
        .Q(\s_tmp_nomac_reg_n_0_[2][9] ),
        .R(rst));
  FDRE \s_tmp_nomac_reg[2]__0 
       (.C(i_clk),
        .CE(CEA2),
        .D(i_mem1a_dout[22]),
        .Q(\s_tmp_nomac_reg[2]__0_n_0 ),
        .R(rst));
  FDRE \s_tmp_nomac_reg[2]__1 
       (.C(i_clk),
        .CE(CEA2),
        .D(i_mem1a_dout[21]),
        .Q(\s_tmp_nomac_reg[2]__1_n_0 ),
        .R(rst));
  FDRE \s_tmp_nomac_reg[2]__2 
       (.C(i_clk),
        .CE(CEA2),
        .D(i_mem1a_dout[20]),
        .Q(\s_tmp_nomac_reg[2]__2_n_0 ),
        .R(rst));
  FDRE \s_tmp_nomac_reg[2]__3 
       (.C(i_clk),
        .CE(CEA2),
        .D(i_mem1a_dout[19]),
        .Q(\s_tmp_nomac_reg[2]__3_n_0 ),
        .R(rst));
  FDRE \s_tmp_nomac_reg[2]__4 
       (.C(i_clk),
        .CE(CEA2),
        .D(i_mem1a_dout[18]),
        .Q(\s_tmp_nomac_reg[2]__4_n_0 ),
        .R(rst));
  FDRE \s_tmp_nomac_reg[2]__5 
       (.C(i_clk),
        .CE(CEA2),
        .D(i_mem1a_dout[17]),
        .Q(\s_tmp_nomac_reg[2]__5_n_0 ),
        .R(rst));
  FDRE \s_tmp_nomac_reg[2]__6 
       (.C(i_clk),
        .CE(CEA2),
        .D(i_mem1a_dout[16]),
        .Q(\s_tmp_nomac_reg[2]__6_n_0 ),
        .R(rst));
  FDRE \s_tmp_nomac_reg[3] 
       (.C(i_clk),
        .CE(CEA2),
        .D(i_mem1a_dout[31]),
        .Q(\s_tmp_nomac_reg_n_0_[3] ),
        .R(rst));
  CARRY4 \s_tmp_nomac_reg[3]0__0_carry 
       (.CI(1'b0),
        .CO({\s_tmp_nomac_reg[3]0__0_carry_n_0 ,\s_tmp_nomac_reg[3]0__0_carry_n_1 ,\s_tmp_nomac_reg[3]0__0_carry_n_2 ,\s_tmp_nomac_reg[3]0__0_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_tmp_nomac_reg[3]0__0_carry_i_1_n_0 ,\s_tmp_nomac_reg[3]0__0_carry_i_2_n_0 ,\s_tmp_nomac_reg[3]0__0_carry_i_3_n_0 ,1'b0}),
        .O({\s_tmp_nomac_reg[3]0__0_carry_n_4 ,\s_tmp_nomac_reg[3]0 [2:0]}),
        .S({\s_tmp_nomac_reg[3]0__0_carry_i_4_n_0 ,\s_tmp_nomac_reg[3]0__0_carry_i_5_n_0 ,\s_tmp_nomac_reg[3]0__0_carry_i_6_n_0 ,\s_tmp_nomac_reg[3]0__0_carry_i_7_n_0 }));
  CARRY4 \s_tmp_nomac_reg[3]0__0_carry__0 
       (.CI(\s_tmp_nomac_reg[3]0__0_carry_n_0 ),
        .CO({\s_tmp_nomac_reg[3]0__0_carry__0_n_0 ,\s_tmp_nomac_reg[3]0__0_carry__0_n_1 ,\s_tmp_nomac_reg[3]0__0_carry__0_n_2 ,\s_tmp_nomac_reg[3]0__0_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_tmp_nomac_reg[3]0__0_carry__0_i_1_n_0 ,\s_tmp_nomac_reg[3]0__0_carry__0_i_2_n_0 ,\s_tmp_nomac_reg[3]0__0_carry__0_i_3_n_0 ,\s_tmp_nomac_reg[3]0__0_carry__0_i_4_n_0 }),
        .O({\s_tmp_nomac_reg[3]0__0_carry__0_n_4 ,\s_tmp_nomac_reg[3]0__0_carry__0_n_5 ,\s_tmp_nomac_reg[3]0__0_carry__0_n_6 ,\s_tmp_nomac_reg[3]0__0_carry__0_n_7 }),
        .S({\s_tmp_nomac_reg[3]0__0_carry__0_i_5_n_0 ,\s_tmp_nomac_reg[3]0__0_carry__0_i_6_n_0 ,\s_tmp_nomac_reg[3]0__0_carry__0_i_7_n_0 ,\s_tmp_nomac_reg[3]0__0_carry__0_i_8_n_0 }));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[3]0__0_carry__0_i_1 
       (.I0(s_coeffs[2]),
        .I1(\s_tmp_nomac_reg[3]__2_n_0 ),
        .I2(s_coeffs[1]),
        .I3(\s_tmp_nomac_reg[3]__1_n_0 ),
        .I4(s_coeffs[0]),
        .I5(\s_tmp_nomac_reg[3]__0_n_0 ),
        .O(\s_tmp_nomac_reg[3]0__0_carry__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[3]0__0_carry__0_i_10 
       (.I0(\s_tmp_nomac_reg[3]__2_n_0 ),
        .I1(s_coeffs[2]),
        .O(\s_tmp_nomac_reg[3]0__0_carry__0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[3]0__0_carry__0_i_11 
       (.I0(\s_tmp_nomac_reg[3]__3_n_0 ),
        .I1(s_coeffs[2]),
        .O(\s_tmp_nomac_reg[3]0__0_carry__0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[3]0__0_carry__0_i_12 
       (.I0(\s_tmp_nomac_reg[3]__4_n_0 ),
        .I1(s_coeffs[2]),
        .O(\s_tmp_nomac_reg[3]0__0_carry__0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[3]0__0_carry__0_i_2 
       (.I0(s_coeffs[2]),
        .I1(\s_tmp_nomac_reg[3]__3_n_0 ),
        .I2(s_coeffs[1]),
        .I3(\s_tmp_nomac_reg[3]__2_n_0 ),
        .I4(s_coeffs[0]),
        .I5(\s_tmp_nomac_reg[3]__1_n_0 ),
        .O(\s_tmp_nomac_reg[3]0__0_carry__0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[3]0__0_carry__0_i_3 
       (.I0(s_coeffs[2]),
        .I1(\s_tmp_nomac_reg[3]__4_n_0 ),
        .I2(s_coeffs[1]),
        .I3(\s_tmp_nomac_reg[3]__3_n_0 ),
        .I4(s_coeffs[0]),
        .I5(\s_tmp_nomac_reg[3]__2_n_0 ),
        .O(\s_tmp_nomac_reg[3]0__0_carry__0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[3]0__0_carry__0_i_4 
       (.I0(s_coeffs[2]),
        .I1(\s_tmp_nomac_reg[3]__5_n_0 ),
        .I2(s_coeffs[1]),
        .I3(\s_tmp_nomac_reg[3]__4_n_0 ),
        .I4(s_coeffs[0]),
        .I5(\s_tmp_nomac_reg[3]__3_n_0 ),
        .O(\s_tmp_nomac_reg[3]0__0_carry__0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \s_tmp_nomac_reg[3]0__0_carry__0_i_5 
       (.I0(\s_tmp_nomac_reg[3]0__0_carry__0_i_1_n_0 ),
        .I1(s_coeffs[1]),
        .I2(\s_tmp_nomac_reg[3]__0_n_0 ),
        .I3(\s_tmp_nomac_reg[3]0__0_carry__0_i_9_n_0 ),
        .I4(\s_tmp_nomac_reg_n_0_[3] ),
        .I5(s_coeffs[0]),
        .O(\s_tmp_nomac_reg[3]0__0_carry__0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \s_tmp_nomac_reg[3]0__0_carry__0_i_6 
       (.I0(\s_tmp_nomac_reg[3]0__0_carry__0_i_2_n_0 ),
        .I1(s_coeffs[1]),
        .I2(\s_tmp_nomac_reg[3]__1_n_0 ),
        .I3(\s_tmp_nomac_reg[3]0__0_carry__0_i_10_n_0 ),
        .I4(\s_tmp_nomac_reg[3]__0_n_0 ),
        .I5(s_coeffs[0]),
        .O(\s_tmp_nomac_reg[3]0__0_carry__0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \s_tmp_nomac_reg[3]0__0_carry__0_i_7 
       (.I0(\s_tmp_nomac_reg[3]0__0_carry__0_i_3_n_0 ),
        .I1(s_coeffs[1]),
        .I2(\s_tmp_nomac_reg[3]__2_n_0 ),
        .I3(\s_tmp_nomac_reg[3]0__0_carry__0_i_11_n_0 ),
        .I4(\s_tmp_nomac_reg[3]__1_n_0 ),
        .I5(s_coeffs[0]),
        .O(\s_tmp_nomac_reg[3]0__0_carry__0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \s_tmp_nomac_reg[3]0__0_carry__0_i_8 
       (.I0(\s_tmp_nomac_reg[3]0__0_carry__0_i_4_n_0 ),
        .I1(s_coeffs[1]),
        .I2(\s_tmp_nomac_reg[3]__3_n_0 ),
        .I3(\s_tmp_nomac_reg[3]0__0_carry__0_i_12_n_0 ),
        .I4(\s_tmp_nomac_reg[3]__2_n_0 ),
        .I5(s_coeffs[0]),
        .O(\s_tmp_nomac_reg[3]0__0_carry__0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[3]0__0_carry__0_i_9 
       (.I0(\s_tmp_nomac_reg[3]__1_n_0 ),
        .I1(s_coeffs[2]),
        .O(\s_tmp_nomac_reg[3]0__0_carry__0_i_9_n_0 ));
  CARRY4 \s_tmp_nomac_reg[3]0__0_carry__1 
       (.CI(\s_tmp_nomac_reg[3]0__0_carry__0_n_0 ),
        .CO({\NLW_s_tmp_nomac_reg[3]0__0_carry__1_CO_UNCONNECTED [3],\s_tmp_nomac_reg[3]0__0_carry__1_n_1 ,\NLW_s_tmp_nomac_reg[3]0__0_carry__1_CO_UNCONNECTED [1],\s_tmp_nomac_reg[3]0__0_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\s_tmp_nomac_reg[3]0__0_carry__1_i_1_n_0 ,\s_tmp_nomac_reg[3]0__0_carry__1_i_2_n_0 }),
        .O({\NLW_s_tmp_nomac_reg[3]0__0_carry__1_O_UNCONNECTED [3:2],\s_tmp_nomac_reg[3]0__0_carry__1_n_6 ,\s_tmp_nomac_reg[3]0__0_carry__1_n_7 }),
        .S({1'b0,1'b1,\s_tmp_nomac_reg[3]0__0_carry__1_i_3_n_0 ,\s_tmp_nomac_reg[3]0__0_carry__1_i_4_n_0 }));
  LUT4 #(
    .INIT(16'h8000)) 
    \s_tmp_nomac_reg[3]0__0_carry__1_i_1 
       (.I0(s_coeffs[2]),
        .I1(\s_tmp_nomac_reg[3]__0_n_0 ),
        .I2(s_coeffs[1]),
        .I3(\s_tmp_nomac_reg_n_0_[3] ),
        .O(\s_tmp_nomac_reg[3]0__0_carry__1_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[3]0__0_carry__1_i_2 
       (.I0(s_coeffs[2]),
        .I1(\s_tmp_nomac_reg[3]__1_n_0 ),
        .I2(s_coeffs[1]),
        .I3(\s_tmp_nomac_reg[3]__0_n_0 ),
        .I4(s_coeffs[0]),
        .I5(\s_tmp_nomac_reg_n_0_[3] ),
        .O(\s_tmp_nomac_reg[3]0__0_carry__1_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \s_tmp_nomac_reg[3]0__0_carry__1_i_3 
       (.I0(s_coeffs[1]),
        .I1(\s_tmp_nomac_reg[3]__0_n_0 ),
        .I2(s_coeffs[2]),
        .I3(\s_tmp_nomac_reg_n_0_[3] ),
        .O(\s_tmp_nomac_reg[3]0__0_carry__1_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE75F30007800F000)) 
    \s_tmp_nomac_reg[3]0__0_carry__1_i_4 
       (.I0(s_coeffs[0]),
        .I1(\s_tmp_nomac_reg[3]__1_n_0 ),
        .I2(\s_tmp_nomac_reg[3]__0_n_0 ),
        .I3(s_coeffs[2]),
        .I4(\s_tmp_nomac_reg_n_0_[3] ),
        .I5(s_coeffs[1]),
        .O(\s_tmp_nomac_reg[3]0__0_carry__1_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \s_tmp_nomac_reg[3]0__0_carry_i_1 
       (.I0(s_coeffs[1]),
        .I1(\s_tmp_nomac_reg[3]__4_n_0 ),
        .I2(s_coeffs[2]),
        .I3(\s_tmp_nomac_reg[3]__5_n_0 ),
        .I4(\s_tmp_nomac_reg[3]__3_n_0 ),
        .I5(s_coeffs[0]),
        .O(\s_tmp_nomac_reg[3]0__0_carry_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \s_tmp_nomac_reg[3]0__0_carry_i_2 
       (.I0(s_coeffs[1]),
        .I1(\s_tmp_nomac_reg[3]__5_n_0 ),
        .I2(s_coeffs[2]),
        .I3(\s_tmp_nomac_reg[3]__6_n_0 ),
        .O(\s_tmp_nomac_reg[3]0__0_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_tmp_nomac_reg[3]0__0_carry_i_3 
       (.I0(s_coeffs[0]),
        .I1(\s_tmp_nomac_reg[3]__5_n_0 ),
        .O(\s_tmp_nomac_reg[3]0__0_carry_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \s_tmp_nomac_reg[3]0__0_carry_i_4 
       (.I0(\s_tmp_nomac_reg[3]__4_n_0 ),
        .I1(\s_tmp_nomac_reg[3]0__0_carry_i_8_n_0 ),
        .I2(\s_tmp_nomac_reg[3]__5_n_0 ),
        .I3(s_coeffs[1]),
        .I4(\s_tmp_nomac_reg[3]__6_n_0 ),
        .I5(s_coeffs[2]),
        .O(\s_tmp_nomac_reg[3]0__0_carry_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \s_tmp_nomac_reg[3]0__0_carry_i_5 
       (.I0(\s_tmp_nomac_reg[3]__6_n_0 ),
        .I1(s_coeffs[2]),
        .I2(\s_tmp_nomac_reg[3]__5_n_0 ),
        .I3(s_coeffs[1]),
        .I4(s_coeffs[0]),
        .I5(\s_tmp_nomac_reg[3]__4_n_0 ),
        .O(\s_tmp_nomac_reg[3]0__0_carry_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \s_tmp_nomac_reg[3]0__0_carry_i_6 
       (.I0(s_coeffs[0]),
        .I1(\s_tmp_nomac_reg[3]__5_n_0 ),
        .I2(s_coeffs[1]),
        .I3(\s_tmp_nomac_reg[3]__6_n_0 ),
        .O(\s_tmp_nomac_reg[3]0__0_carry_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_tmp_nomac_reg[3]0__0_carry_i_7 
       (.I0(\s_tmp_nomac_reg[3]__6_n_0 ),
        .I1(s_coeffs[0]),
        .O(\s_tmp_nomac_reg[3]0__0_carry_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[3]0__0_carry_i_8 
       (.I0(\s_tmp_nomac_reg[3]__3_n_0 ),
        .I1(s_coeffs[0]),
        .O(\s_tmp_nomac_reg[3]0__0_carry_i_8_n_0 ));
  CARRY4 \s_tmp_nomac_reg[3]0__30_carry 
       (.CI(1'b0),
        .CO({\s_tmp_nomac_reg[3]0__30_carry_n_0 ,\s_tmp_nomac_reg[3]0__30_carry_n_1 ,\s_tmp_nomac_reg[3]0__30_carry_n_2 ,\s_tmp_nomac_reg[3]0__30_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_tmp_nomac_reg[3]0__30_carry_i_1_n_0 ,\s_tmp_nomac_reg[3]0__30_carry_i_2_n_0 ,\s_tmp_nomac_reg[3]0__30_carry_i_3_n_0 ,1'b0}),
        .O({\s_tmp_nomac_reg[3]0__30_carry_n_4 ,\s_tmp_nomac_reg[3]0__30_carry_n_5 ,\s_tmp_nomac_reg[3]0__30_carry_n_6 ,\s_tmp_nomac_reg[3]0__30_carry_n_7 }),
        .S({\s_tmp_nomac_reg[3]0__30_carry_i_4_n_0 ,\s_tmp_nomac_reg[3]0__30_carry_i_5_n_0 ,\s_tmp_nomac_reg[3]0__30_carry_i_6_n_0 ,\s_tmp_nomac_reg[3]0__30_carry_i_7_n_0 }));
  CARRY4 \s_tmp_nomac_reg[3]0__30_carry__0 
       (.CI(\s_tmp_nomac_reg[3]0__30_carry_n_0 ),
        .CO({\s_tmp_nomac_reg[3]0__30_carry__0_n_0 ,\s_tmp_nomac_reg[3]0__30_carry__0_n_1 ,\s_tmp_nomac_reg[3]0__30_carry__0_n_2 ,\s_tmp_nomac_reg[3]0__30_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_tmp_nomac_reg[3]0__30_carry__0_i_1_n_0 ,\s_tmp_nomac_reg[3]0__30_carry__0_i_2_n_0 ,\s_tmp_nomac_reg[3]0__30_carry__0_i_3_n_0 ,\s_tmp_nomac_reg[3]0__30_carry__0_i_4_n_0 }),
        .O({\s_tmp_nomac_reg[3]0__30_carry__0_n_4 ,\s_tmp_nomac_reg[3]0__30_carry__0_n_5 ,\s_tmp_nomac_reg[3]0__30_carry__0_n_6 ,\s_tmp_nomac_reg[3]0__30_carry__0_n_7 }),
        .S({\s_tmp_nomac_reg[3]0__30_carry__0_i_5_n_0 ,\s_tmp_nomac_reg[3]0__30_carry__0_i_6_n_0 ,\s_tmp_nomac_reg[3]0__30_carry__0_i_7_n_0 ,\s_tmp_nomac_reg[3]0__30_carry__0_i_8_n_0 }));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[3]0__30_carry__0_i_1 
       (.I0(s_coeffs[5]),
        .I1(\s_tmp_nomac_reg[3]__2_n_0 ),
        .I2(s_coeffs[4]),
        .I3(\s_tmp_nomac_reg[3]__1_n_0 ),
        .I4(s_coeffs[3]),
        .I5(\s_tmp_nomac_reg[3]__0_n_0 ),
        .O(\s_tmp_nomac_reg[3]0__30_carry__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[3]0__30_carry__0_i_10 
       (.I0(\s_tmp_nomac_reg[3]__2_n_0 ),
        .I1(s_coeffs[5]),
        .O(\s_tmp_nomac_reg[3]0__30_carry__0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[3]0__30_carry__0_i_11 
       (.I0(\s_tmp_nomac_reg[3]__3_n_0 ),
        .I1(s_coeffs[5]),
        .O(\s_tmp_nomac_reg[3]0__30_carry__0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[3]0__30_carry__0_i_12 
       (.I0(\s_tmp_nomac_reg[3]__4_n_0 ),
        .I1(s_coeffs[5]),
        .O(\s_tmp_nomac_reg[3]0__30_carry__0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[3]0__30_carry__0_i_2 
       (.I0(s_coeffs[5]),
        .I1(\s_tmp_nomac_reg[3]__3_n_0 ),
        .I2(s_coeffs[4]),
        .I3(\s_tmp_nomac_reg[3]__2_n_0 ),
        .I4(s_coeffs[3]),
        .I5(\s_tmp_nomac_reg[3]__1_n_0 ),
        .O(\s_tmp_nomac_reg[3]0__30_carry__0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[3]0__30_carry__0_i_3 
       (.I0(s_coeffs[5]),
        .I1(\s_tmp_nomac_reg[3]__4_n_0 ),
        .I2(s_coeffs[4]),
        .I3(\s_tmp_nomac_reg[3]__3_n_0 ),
        .I4(s_coeffs[3]),
        .I5(\s_tmp_nomac_reg[3]__2_n_0 ),
        .O(\s_tmp_nomac_reg[3]0__30_carry__0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[3]0__30_carry__0_i_4 
       (.I0(s_coeffs[5]),
        .I1(\s_tmp_nomac_reg[3]__5_n_0 ),
        .I2(s_coeffs[4]),
        .I3(\s_tmp_nomac_reg[3]__4_n_0 ),
        .I4(s_coeffs[3]),
        .I5(\s_tmp_nomac_reg[3]__3_n_0 ),
        .O(\s_tmp_nomac_reg[3]0__30_carry__0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \s_tmp_nomac_reg[3]0__30_carry__0_i_5 
       (.I0(\s_tmp_nomac_reg[3]0__30_carry__0_i_1_n_0 ),
        .I1(s_coeffs[4]),
        .I2(\s_tmp_nomac_reg[3]__0_n_0 ),
        .I3(\s_tmp_nomac_reg[3]0__30_carry__0_i_9_n_0 ),
        .I4(\s_tmp_nomac_reg_n_0_[3] ),
        .I5(s_coeffs[3]),
        .O(\s_tmp_nomac_reg[3]0__30_carry__0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \s_tmp_nomac_reg[3]0__30_carry__0_i_6 
       (.I0(\s_tmp_nomac_reg[3]0__30_carry__0_i_2_n_0 ),
        .I1(s_coeffs[4]),
        .I2(\s_tmp_nomac_reg[3]__1_n_0 ),
        .I3(\s_tmp_nomac_reg[3]0__30_carry__0_i_10_n_0 ),
        .I4(\s_tmp_nomac_reg[3]__0_n_0 ),
        .I5(s_coeffs[3]),
        .O(\s_tmp_nomac_reg[3]0__30_carry__0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \s_tmp_nomac_reg[3]0__30_carry__0_i_7 
       (.I0(\s_tmp_nomac_reg[3]0__30_carry__0_i_3_n_0 ),
        .I1(s_coeffs[4]),
        .I2(\s_tmp_nomac_reg[3]__2_n_0 ),
        .I3(\s_tmp_nomac_reg[3]0__30_carry__0_i_11_n_0 ),
        .I4(\s_tmp_nomac_reg[3]__1_n_0 ),
        .I5(s_coeffs[3]),
        .O(\s_tmp_nomac_reg[3]0__30_carry__0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \s_tmp_nomac_reg[3]0__30_carry__0_i_8 
       (.I0(\s_tmp_nomac_reg[3]0__30_carry__0_i_4_n_0 ),
        .I1(s_coeffs[4]),
        .I2(\s_tmp_nomac_reg[3]__3_n_0 ),
        .I3(\s_tmp_nomac_reg[3]0__30_carry__0_i_12_n_0 ),
        .I4(\s_tmp_nomac_reg[3]__2_n_0 ),
        .I5(s_coeffs[3]),
        .O(\s_tmp_nomac_reg[3]0__30_carry__0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[3]0__30_carry__0_i_9 
       (.I0(\s_tmp_nomac_reg[3]__1_n_0 ),
        .I1(s_coeffs[5]),
        .O(\s_tmp_nomac_reg[3]0__30_carry__0_i_9_n_0 ));
  CARRY4 \s_tmp_nomac_reg[3]0__30_carry__1 
       (.CI(\s_tmp_nomac_reg[3]0__30_carry__0_n_0 ),
        .CO({\NLW_s_tmp_nomac_reg[3]0__30_carry__1_CO_UNCONNECTED [3],\s_tmp_nomac_reg[3]0__30_carry__1_n_1 ,\NLW_s_tmp_nomac_reg[3]0__30_carry__1_CO_UNCONNECTED [1],\s_tmp_nomac_reg[3]0__30_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\s_tmp_nomac_reg[3]0__30_carry__1_i_1_n_0 ,\s_tmp_nomac_reg[3]0__30_carry__1_i_2_n_0 }),
        .O({\NLW_s_tmp_nomac_reg[3]0__30_carry__1_O_UNCONNECTED [3:2],\s_tmp_nomac_reg[3]0__30_carry__1_n_6 ,\s_tmp_nomac_reg[3]0__30_carry__1_n_7 }),
        .S({1'b0,1'b1,\s_tmp_nomac_reg[3]0__30_carry__1_i_3_n_0 ,\s_tmp_nomac_reg[3]0__30_carry__1_i_4_n_0 }));
  LUT4 #(
    .INIT(16'h8000)) 
    \s_tmp_nomac_reg[3]0__30_carry__1_i_1 
       (.I0(s_coeffs[5]),
        .I1(\s_tmp_nomac_reg[3]__0_n_0 ),
        .I2(s_coeffs[4]),
        .I3(\s_tmp_nomac_reg_n_0_[3] ),
        .O(\s_tmp_nomac_reg[3]0__30_carry__1_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \s_tmp_nomac_reg[3]0__30_carry__1_i_2 
       (.I0(s_coeffs[5]),
        .I1(\s_tmp_nomac_reg[3]__1_n_0 ),
        .I2(s_coeffs[4]),
        .I3(\s_tmp_nomac_reg[3]__0_n_0 ),
        .I4(s_coeffs[3]),
        .I5(\s_tmp_nomac_reg_n_0_[3] ),
        .O(\s_tmp_nomac_reg[3]0__30_carry__1_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \s_tmp_nomac_reg[3]0__30_carry__1_i_3 
       (.I0(s_coeffs[4]),
        .I1(\s_tmp_nomac_reg[3]__0_n_0 ),
        .I2(s_coeffs[5]),
        .I3(\s_tmp_nomac_reg_n_0_[3] ),
        .O(\s_tmp_nomac_reg[3]0__30_carry__1_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE75F30007800F000)) 
    \s_tmp_nomac_reg[3]0__30_carry__1_i_4 
       (.I0(s_coeffs[3]),
        .I1(\s_tmp_nomac_reg[3]__1_n_0 ),
        .I2(\s_tmp_nomac_reg[3]__0_n_0 ),
        .I3(s_coeffs[5]),
        .I4(\s_tmp_nomac_reg_n_0_[3] ),
        .I5(s_coeffs[4]),
        .O(\s_tmp_nomac_reg[3]0__30_carry__1_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \s_tmp_nomac_reg[3]0__30_carry_i_1 
       (.I0(s_coeffs[4]),
        .I1(\s_tmp_nomac_reg[3]__4_n_0 ),
        .I2(s_coeffs[5]),
        .I3(\s_tmp_nomac_reg[3]__5_n_0 ),
        .I4(\s_tmp_nomac_reg[3]__3_n_0 ),
        .I5(s_coeffs[3]),
        .O(\s_tmp_nomac_reg[3]0__30_carry_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \s_tmp_nomac_reg[3]0__30_carry_i_2 
       (.I0(s_coeffs[4]),
        .I1(\s_tmp_nomac_reg[3]__5_n_0 ),
        .I2(s_coeffs[5]),
        .I3(\s_tmp_nomac_reg[3]__6_n_0 ),
        .O(\s_tmp_nomac_reg[3]0__30_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_tmp_nomac_reg[3]0__30_carry_i_3 
       (.I0(s_coeffs[3]),
        .I1(\s_tmp_nomac_reg[3]__5_n_0 ),
        .O(\s_tmp_nomac_reg[3]0__30_carry_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \s_tmp_nomac_reg[3]0__30_carry_i_4 
       (.I0(\s_tmp_nomac_reg[3]__4_n_0 ),
        .I1(\s_tmp_nomac_reg[3]0__30_carry_i_8_n_0 ),
        .I2(\s_tmp_nomac_reg[3]__5_n_0 ),
        .I3(s_coeffs[4]),
        .I4(\s_tmp_nomac_reg[3]__6_n_0 ),
        .I5(s_coeffs[5]),
        .O(\s_tmp_nomac_reg[3]0__30_carry_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \s_tmp_nomac_reg[3]0__30_carry_i_5 
       (.I0(\s_tmp_nomac_reg[3]__6_n_0 ),
        .I1(s_coeffs[5]),
        .I2(\s_tmp_nomac_reg[3]__5_n_0 ),
        .I3(s_coeffs[4]),
        .I4(s_coeffs[3]),
        .I5(\s_tmp_nomac_reg[3]__4_n_0 ),
        .O(\s_tmp_nomac_reg[3]0__30_carry_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \s_tmp_nomac_reg[3]0__30_carry_i_6 
       (.I0(s_coeffs[3]),
        .I1(\s_tmp_nomac_reg[3]__5_n_0 ),
        .I2(s_coeffs[4]),
        .I3(\s_tmp_nomac_reg[3]__6_n_0 ),
        .O(\s_tmp_nomac_reg[3]0__30_carry_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_tmp_nomac_reg[3]0__30_carry_i_7 
       (.I0(\s_tmp_nomac_reg[3]__6_n_0 ),
        .I1(s_coeffs[3]),
        .O(\s_tmp_nomac_reg[3]0__30_carry_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[3]0__30_carry_i_8 
       (.I0(\s_tmp_nomac_reg[3]__3_n_0 ),
        .I1(s_coeffs[3]),
        .O(\s_tmp_nomac_reg[3]0__30_carry_i_8_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_tmp_nomac_reg[3]0__60_carry 
       (.CI(1'b0),
        .CO({\s_tmp_nomac_reg[3]0__60_carry_n_0 ,\s_tmp_nomac_reg[3]0__60_carry_n_1 ,\s_tmp_nomac_reg[3]0__60_carry_n_2 ,\s_tmp_nomac_reg[3]0__60_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_tmp_nomac_reg[3]0__60_carry_i_1_n_0 ,\s_tmp_nomac_reg[3]0__0_carry__0_n_6 ,\s_tmp_nomac_reg[3]0__0_carry__0_n_7 ,\s_tmp_nomac_reg[3]0__0_carry_n_4 }),
        .O({\s_tmp_nomac_reg[3]0 [6:4],\NLW_s_tmp_nomac_reg[3]0__60_carry_O_UNCONNECTED [0]}),
        .S({\s_tmp_nomac_reg[3]0__60_carry_i_2_n_0 ,\s_tmp_nomac_reg[3]0__60_carry_i_3_n_0 ,\s_tmp_nomac_reg[3]0__60_carry_i_4_n_0 ,\s_tmp_nomac_reg[3]0__60_carry_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_tmp_nomac_reg[3]0__60_carry__0 
       (.CI(\s_tmp_nomac_reg[3]0__60_carry_n_0 ),
        .CO({\s_tmp_nomac_reg[3]0__60_carry__0_n_0 ,\s_tmp_nomac_reg[3]0__60_carry__0_n_1 ,\s_tmp_nomac_reg[3]0__60_carry__0_n_2 ,\s_tmp_nomac_reg[3]0__60_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_tmp_nomac_reg[3]0__60_carry__0_i_1_n_0 ,\s_tmp_nomac_reg[3]0__60_carry__0_i_2_n_0 ,\s_tmp_nomac_reg[3]0__60_carry__0_i_3_n_0 ,\s_tmp_nomac_reg[3]0__60_carry__0_i_4_n_0 }),
        .O(\s_tmp_nomac_reg[3]0 [10:7]),
        .S({\s_tmp_nomac_reg[3]0__60_carry__0_i_5_n_0 ,\s_tmp_nomac_reg[3]0__60_carry__0_i_6_n_0 ,\s_tmp_nomac_reg[3]0__60_carry__0_i_7_n_0 ,\s_tmp_nomac_reg[3]0__60_carry__0_i_8_n_0 }));
  LUT4 #(
    .INIT(16'h8F08)) 
    \s_tmp_nomac_reg[3]0__60_carry__0_i_1 
       (.I0(s_coeffs[6]),
        .I1(\s_tmp_nomac_reg[3]__3_n_0 ),
        .I2(\s_tmp_nomac_reg[3]0__60_carry__0_i_9_n_0 ),
        .I3(\s_tmp_nomac_reg[3]0__60_carry__0_i_10_n_0 ),
        .O(\s_tmp_nomac_reg[3]0__60_carry__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    \s_tmp_nomac_reg[3]0__60_carry__0_i_10 
       (.I0(\s_tmp_nomac_reg[3]0__30_carry__0_n_6 ),
        .I1(\s_tmp_nomac_reg[3]0__0_carry__1_n_7 ),
        .I2(s_coeffs[7]),
        .I3(\s_tmp_nomac_reg[3]__5_n_0 ),
        .O(\s_tmp_nomac_reg[3]0__60_carry__0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    \s_tmp_nomac_reg[3]0__60_carry__0_i_11 
       (.I0(s_coeffs[7]),
        .I1(\s_tmp_nomac_reg[3]__5_n_0 ),
        .I2(\s_tmp_nomac_reg[3]0__30_carry__0_n_6 ),
        .I3(\s_tmp_nomac_reg[3]0__0_carry__1_n_7 ),
        .O(\s_tmp_nomac_reg[3]0__60_carry__0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[3]0__60_carry__0_i_12 
       (.I0(\s_tmp_nomac_reg[3]__3_n_0 ),
        .I1(s_coeffs[6]),
        .O(\s_tmp_nomac_reg[3]0__60_carry__0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    \s_tmp_nomac_reg[3]0__60_carry__0_i_13 
       (.I0(s_coeffs[7]),
        .I1(\s_tmp_nomac_reg[3]__3_n_0 ),
        .I2(\s_tmp_nomac_reg[3]0__30_carry__0_n_4 ),
        .I3(\s_tmp_nomac_reg[3]0__0_carry__1_n_1 ),
        .O(\s_tmp_nomac_reg[3]0__60_carry__0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[3]0__60_carry__0_i_14 
       (.I0(\s_tmp_nomac_reg[3]__2_n_0 ),
        .I1(s_coeffs[6]),
        .O(\s_tmp_nomac_reg[3]0__60_carry__0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    \s_tmp_nomac_reg[3]0__60_carry__0_i_15 
       (.I0(\s_tmp_nomac_reg[3]0__30_carry__0_n_5 ),
        .I1(\s_tmp_nomac_reg[3]0__0_carry__1_n_6 ),
        .I2(s_coeffs[7]),
        .I3(\s_tmp_nomac_reg[3]__4_n_0 ),
        .O(\s_tmp_nomac_reg[3]0__60_carry__0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \s_tmp_nomac_reg[3]0__60_carry__0_i_16 
       (.I0(\s_tmp_nomac_reg[3]0__0_carry__0_n_5 ),
        .I1(\s_tmp_nomac_reg[3]0__30_carry_n_4 ),
        .I2(s_coeffs[6]),
        .I3(\s_tmp_nomac_reg[3]__5_n_0 ),
        .O(\s_tmp_nomac_reg[3]0__60_carry__0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[3]0__60_carry__0_i_17 
       (.I0(\s_tmp_nomac_reg[3]__4_n_0 ),
        .I1(s_coeffs[6]),
        .O(\s_tmp_nomac_reg[3]0__60_carry__0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[3]0__60_carry__0_i_18 
       (.I0(\s_tmp_nomac_reg[3]__6_n_0 ),
        .I1(s_coeffs[7]),
        .O(\s_tmp_nomac_reg[3]0__60_carry__0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    \s_tmp_nomac_reg[3]0__60_carry__0_i_19 
       (.I0(s_coeffs[7]),
        .I1(\s_tmp_nomac_reg[3]__6_n_0 ),
        .I2(\s_tmp_nomac_reg[3]0__30_carry__0_n_7 ),
        .I3(\s_tmp_nomac_reg[3]0__0_carry__0_n_4 ),
        .O(\s_tmp_nomac_reg[3]0__60_carry__0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h8A08080808080808)) 
    \s_tmp_nomac_reg[3]0__60_carry__0_i_2 
       (.I0(s_coeffs[6]),
        .I1(\s_tmp_nomac_reg[3]__4_n_0 ),
        .I2(\s_tmp_nomac_reg[3]0__60_carry__0_i_11_n_0 ),
        .I3(\s_tmp_nomac_reg[3]__5_n_0 ),
        .I4(\s_tmp_nomac_reg[3]0__30_carry_n_4 ),
        .I5(\s_tmp_nomac_reg[3]0__0_carry__0_n_5 ),
        .O(\s_tmp_nomac_reg[3]0__60_carry__0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5995959595959595)) 
    \s_tmp_nomac_reg[3]0__60_carry__0_i_3 
       (.I0(\s_tmp_nomac_reg[3]0__60_carry__0_i_11_n_0 ),
        .I1(s_coeffs[6]),
        .I2(\s_tmp_nomac_reg[3]__4_n_0 ),
        .I3(\s_tmp_nomac_reg[3]0__0_carry__0_n_5 ),
        .I4(\s_tmp_nomac_reg[3]0__30_carry_n_4 ),
        .I5(\s_tmp_nomac_reg[3]__5_n_0 ),
        .O(\s_tmp_nomac_reg[3]0__60_carry__0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \s_tmp_nomac_reg[3]0__60_carry__0_i_4 
       (.I0(\s_tmp_nomac_reg[3]0__0_carry__0_n_4 ),
        .I1(\s_tmp_nomac_reg[3]0__30_carry__0_n_7 ),
        .I2(\s_tmp_nomac_reg[3]__6_n_0 ),
        .I3(s_coeffs[7]),
        .O(\s_tmp_nomac_reg[3]0__60_carry__0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \s_tmp_nomac_reg[3]0__60_carry__0_i_5 
       (.I0(\s_tmp_nomac_reg[3]0__60_carry__0_i_10_n_0 ),
        .I1(\s_tmp_nomac_reg[3]0__60_carry__0_i_9_n_0 ),
        .I2(\s_tmp_nomac_reg[3]0__60_carry__0_i_12_n_0 ),
        .I3(\s_tmp_nomac_reg[3]0__60_carry__0_i_13_n_0 ),
        .I4(\s_tmp_nomac_reg[3]0__60_carry__0_i_14_n_0 ),
        .I5(\s_tmp_nomac_reg[3]0__60_carry__0_i_15_n_0 ),
        .O(\s_tmp_nomac_reg[3]0__60_carry__0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \s_tmp_nomac_reg[3]0__60_carry__0_i_6 
       (.I0(\s_tmp_nomac_reg[3]0__60_carry__0_i_16_n_0 ),
        .I1(\s_tmp_nomac_reg[3]0__60_carry__0_i_11_n_0 ),
        .I2(\s_tmp_nomac_reg[3]0__60_carry__0_i_17_n_0 ),
        .I3(\s_tmp_nomac_reg[3]0__60_carry__0_i_9_n_0 ),
        .I4(\s_tmp_nomac_reg[3]0__60_carry__0_i_12_n_0 ),
        .I5(\s_tmp_nomac_reg[3]0__60_carry__0_i_10_n_0 ),
        .O(\s_tmp_nomac_reg[3]0__60_carry__0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6969966996699696)) 
    \s_tmp_nomac_reg[3]0__60_carry__0_i_7 
       (.I0(\s_tmp_nomac_reg[3]0__60_carry__0_i_11_n_0 ),
        .I1(\s_tmp_nomac_reg[3]0__60_carry__0_i_17_n_0 ),
        .I2(\s_tmp_nomac_reg[3]0__60_carry__0_i_16_n_0 ),
        .I3(\s_tmp_nomac_reg[3]0__60_carry__0_i_18_n_0 ),
        .I4(\s_tmp_nomac_reg[3]0__0_carry__0_n_4 ),
        .I5(\s_tmp_nomac_reg[3]0__30_carry__0_n_7 ),
        .O(\s_tmp_nomac_reg[3]0__60_carry__0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h6A959595)) 
    \s_tmp_nomac_reg[3]0__60_carry__0_i_8 
       (.I0(\s_tmp_nomac_reg[3]0__60_carry__0_i_19_n_0 ),
        .I1(\s_tmp_nomac_reg[3]__5_n_0 ),
        .I2(s_coeffs[6]),
        .I3(\s_tmp_nomac_reg[3]0__30_carry_n_4 ),
        .I4(\s_tmp_nomac_reg[3]0__0_carry__0_n_5 ),
        .O(\s_tmp_nomac_reg[3]0__60_carry__0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    \s_tmp_nomac_reg[3]0__60_carry__0_i_9 
       (.I0(s_coeffs[7]),
        .I1(\s_tmp_nomac_reg[3]__4_n_0 ),
        .I2(\s_tmp_nomac_reg[3]0__30_carry__0_n_5 ),
        .I3(\s_tmp_nomac_reg[3]0__0_carry__1_n_6 ),
        .O(\s_tmp_nomac_reg[3]0__60_carry__0_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_tmp_nomac_reg[3]0__60_carry__1 
       (.CI(\s_tmp_nomac_reg[3]0__60_carry__0_n_0 ),
        .CO({\s_tmp_nomac_reg[3]0__60_carry__1_n_0 ,\s_tmp_nomac_reg[3]0__60_carry__1_n_1 ,\s_tmp_nomac_reg[3]0__60_carry__1_n_2 ,\s_tmp_nomac_reg[3]0__60_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_tmp_nomac_reg[3]0__60_carry__1_i_1_n_0 ,\s_tmp_nomac_reg[3]0__60_carry__1_i_2_n_0 ,\s_tmp_nomac_reg[3]0__60_carry__1_i_3_n_0 ,\s_tmp_nomac_reg[3]0__60_carry__1_i_4_n_0 }),
        .O(\s_tmp_nomac_reg[3]0 [14:11]),
        .S({\s_tmp_nomac_reg[3]0__60_carry__1_i_5_n_0 ,\s_tmp_nomac_reg[3]0__60_carry__1_i_6_n_0 ,\s_tmp_nomac_reg[3]0__60_carry__1_i_7_n_0 ,\s_tmp_nomac_reg[3]0__60_carry__1_i_8_n_0 }));
  LUT6 #(
    .INIT(64'h7D44144414441444)) 
    \s_tmp_nomac_reg[3]0__60_carry__1_i_1 
       (.I0(\s_tmp_nomac_reg[3]0__60_carry__1_i_9_n_0 ),
        .I1(\s_tmp_nomac_reg[3]0__30_carry__1_n_1 ),
        .I2(\s_tmp_nomac_reg[3]__0_n_0 ),
        .I3(s_coeffs[7]),
        .I4(\s_tmp_nomac_reg[3]0__30_carry__1_n_6 ),
        .I5(\s_tmp_nomac_reg[3]__1_n_0 ),
        .O(\s_tmp_nomac_reg[3]0__60_carry__1_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[3]0__60_carry__1_i_10 
       (.I0(\s_tmp_nomac_reg[3]__0_n_0 ),
        .I1(s_coeffs[6]),
        .O(\s_tmp_nomac_reg[3]0__60_carry__1_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    \s_tmp_nomac_reg[3]0__60_carry__1_i_11 
       (.I0(\s_tmp_nomac_reg[3]0__30_carry__0_n_4 ),
        .I1(\s_tmp_nomac_reg[3]0__0_carry__1_n_1 ),
        .I2(s_coeffs[7]),
        .I3(\s_tmp_nomac_reg[3]__3_n_0 ),
        .O(\s_tmp_nomac_reg[3]0__60_carry__1_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \s_tmp_nomac_reg[3]0__60_carry__1_i_12 
       (.I0(s_coeffs[7]),
        .I1(\s_tmp_nomac_reg[3]__1_n_0 ),
        .I2(\s_tmp_nomac_reg[3]0__30_carry__1_n_6 ),
        .O(\s_tmp_nomac_reg[3]0__60_carry__1_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h87)) 
    \s_tmp_nomac_reg[3]0__60_carry__1_i_13 
       (.I0(s_coeffs[7]),
        .I1(\s_tmp_nomac_reg[3]__0_n_0 ),
        .I2(\s_tmp_nomac_reg[3]0__30_carry__1_n_1 ),
        .O(\s_tmp_nomac_reg[3]0__60_carry__1_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[3]0__60_carry__1_i_14 
       (.I0(\s_tmp_nomac_reg[3]__1_n_0 ),
        .I1(s_coeffs[6]),
        .O(\s_tmp_nomac_reg[3]0__60_carry__1_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6A959595)) 
    \s_tmp_nomac_reg[3]0__60_carry__1_i_15 
       (.I0(\s_tmp_nomac_reg[3]0__30_carry__1_n_6 ),
        .I1(\s_tmp_nomac_reg[3]__1_n_0 ),
        .I2(s_coeffs[7]),
        .I3(s_coeffs[6]),
        .I4(\s_tmp_nomac_reg[3]__0_n_0 ),
        .O(\s_tmp_nomac_reg[3]0__60_carry__1_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h87)) 
    \s_tmp_nomac_reg[3]0__60_carry__1_i_16 
       (.I0(s_coeffs[7]),
        .I1(\s_tmp_nomac_reg[3]__2_n_0 ),
        .I2(\s_tmp_nomac_reg[3]0__30_carry__1_n_7 ),
        .O(\s_tmp_nomac_reg[3]0__60_carry__1_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h7D44144414441444)) 
    \s_tmp_nomac_reg[3]0__60_carry__1_i_2 
       (.I0(\s_tmp_nomac_reg[3]0__60_carry__1_i_10_n_0 ),
        .I1(\s_tmp_nomac_reg[3]0__30_carry__1_n_6 ),
        .I2(\s_tmp_nomac_reg[3]__1_n_0 ),
        .I3(s_coeffs[7]),
        .I4(\s_tmp_nomac_reg[3]0__30_carry__1_n_7 ),
        .I5(\s_tmp_nomac_reg[3]__2_n_0 ),
        .O(\s_tmp_nomac_reg[3]0__60_carry__1_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8FF8F8F808808080)) 
    \s_tmp_nomac_reg[3]0__60_carry__1_i_3 
       (.I0(s_coeffs[6]),
        .I1(\s_tmp_nomac_reg[3]__1_n_0 ),
        .I2(\s_tmp_nomac_reg[3]0__30_carry__1_n_7 ),
        .I3(\s_tmp_nomac_reg[3]__2_n_0 ),
        .I4(s_coeffs[7]),
        .I5(\s_tmp_nomac_reg[3]0__60_carry__1_i_11_n_0 ),
        .O(\s_tmp_nomac_reg[3]0__60_carry__1_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8F08)) 
    \s_tmp_nomac_reg[3]0__60_carry__1_i_4 
       (.I0(s_coeffs[6]),
        .I1(\s_tmp_nomac_reg[3]__2_n_0 ),
        .I2(\s_tmp_nomac_reg[3]0__60_carry__0_i_13_n_0 ),
        .I3(\s_tmp_nomac_reg[3]0__60_carry__0_i_15_n_0 ),
        .O(\s_tmp_nomac_reg[3]0__60_carry__1_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4FD525D52540B040)) 
    \s_tmp_nomac_reg[3]0__60_carry__1_i_5 
       (.I0(\s_tmp_nomac_reg[3]0__60_carry__1_i_12_n_0 ),
        .I1(s_coeffs[6]),
        .I2(\s_tmp_nomac_reg_n_0_[3] ),
        .I3(s_coeffs[7]),
        .I4(\s_tmp_nomac_reg[3]__0_n_0 ),
        .I5(\s_tmp_nomac_reg[3]0__30_carry__1_n_1 ),
        .O(\s_tmp_nomac_reg[3]0__60_carry__1_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h69999666)) 
    \s_tmp_nomac_reg[3]0__60_carry__1_i_6 
       (.I0(\s_tmp_nomac_reg[3]0__60_carry__1_i_2_n_0 ),
        .I1(\s_tmp_nomac_reg[3]0__60_carry__1_i_13_n_0 ),
        .I2(s_coeffs[6]),
        .I3(\s_tmp_nomac_reg_n_0_[3] ),
        .I4(\s_tmp_nomac_reg[3]0__60_carry__1_i_12_n_0 ),
        .O(\s_tmp_nomac_reg[3]0__60_carry__1_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hD2B4B4B4B42D2D2D)) 
    \s_tmp_nomac_reg[3]0__60_carry__1_i_7 
       (.I0(\s_tmp_nomac_reg[3]0__60_carry__1_i_11_n_0 ),
        .I1(\s_tmp_nomac_reg[3]0__60_carry__1_i_14_n_0 ),
        .I2(\s_tmp_nomac_reg[3]0__60_carry__1_i_15_n_0 ),
        .I3(s_coeffs[7]),
        .I4(\s_tmp_nomac_reg[3]__2_n_0 ),
        .I5(\s_tmp_nomac_reg[3]0__30_carry__1_n_7 ),
        .O(\s_tmp_nomac_reg[3]0__60_carry__1_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \s_tmp_nomac_reg[3]0__60_carry__1_i_8 
       (.I0(\s_tmp_nomac_reg[3]0__60_carry__0_i_15_n_0 ),
        .I1(\s_tmp_nomac_reg[3]0__60_carry__0_i_13_n_0 ),
        .I2(\s_tmp_nomac_reg[3]0__60_carry__0_i_14_n_0 ),
        .I3(\s_tmp_nomac_reg[3]0__60_carry__1_i_16_n_0 ),
        .I4(\s_tmp_nomac_reg[3]0__60_carry__1_i_14_n_0 ),
        .I5(\s_tmp_nomac_reg[3]0__60_carry__1_i_11_n_0 ),
        .O(\s_tmp_nomac_reg[3]0__60_carry__1_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_tmp_nomac_reg[3]0__60_carry__1_i_9 
       (.I0(\s_tmp_nomac_reg_n_0_[3] ),
        .I1(s_coeffs[6]),
        .O(\s_tmp_nomac_reg[3]0__60_carry__1_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_tmp_nomac_reg[3]0__60_carry__2 
       (.CI(\s_tmp_nomac_reg[3]0__60_carry__1_n_0 ),
        .CO(\NLW_s_tmp_nomac_reg[3]0__60_carry__2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_s_tmp_nomac_reg[3]0__60_carry__2_O_UNCONNECTED [3:1],\s_tmp_nomac_reg[3]0 [15]}),
        .S({1'b0,1'b0,1'b0,\s_tmp_nomac_reg[3]0__60_carry__2_i_1_n_0 }));
  LUT4 #(
    .INIT(16'h8000)) 
    \s_tmp_nomac_reg[3]0__60_carry__2_i_1 
       (.I0(\s_tmp_nomac_reg_n_0_[3] ),
        .I1(\s_tmp_nomac_reg[3]0__30_carry__1_n_1 ),
        .I2(\s_tmp_nomac_reg[3]__0_n_0 ),
        .I3(s_coeffs[7]),
        .O(\s_tmp_nomac_reg[3]0__60_carry__2_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_tmp_nomac_reg[3]0__60_carry_i_1 
       (.I0(\s_tmp_nomac_reg[3]0__0_carry__0_n_5 ),
        .I1(\s_tmp_nomac_reg[3]0__30_carry_n_4 ),
        .O(\s_tmp_nomac_reg[3]0__60_carry_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \s_tmp_nomac_reg[3]0__60_carry_i_2 
       (.I0(\s_tmp_nomac_reg[3]0__30_carry_n_4 ),
        .I1(\s_tmp_nomac_reg[3]0__0_carry__0_n_5 ),
        .I2(s_coeffs[6]),
        .I3(\s_tmp_nomac_reg[3]__6_n_0 ),
        .O(\s_tmp_nomac_reg[3]0__60_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_tmp_nomac_reg[3]0__60_carry_i_3 
       (.I0(\s_tmp_nomac_reg[3]0__0_carry__0_n_6 ),
        .I1(\s_tmp_nomac_reg[3]0__30_carry_n_5 ),
        .O(\s_tmp_nomac_reg[3]0__60_carry_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_tmp_nomac_reg[3]0__60_carry_i_4 
       (.I0(\s_tmp_nomac_reg[3]0__0_carry__0_n_7 ),
        .I1(\s_tmp_nomac_reg[3]0__30_carry_n_6 ),
        .O(\s_tmp_nomac_reg[3]0__60_carry_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_tmp_nomac_reg[3]0__60_carry_i_5 
       (.I0(\s_tmp_nomac_reg[3]0__0_carry_n_4 ),
        .I1(\s_tmp_nomac_reg[3]0__30_carry_n_7 ),
        .O(\s_tmp_nomac_reg[3]0__60_carry_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[3][0] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[3]0 [0]),
        .Q(\s_tmp_nomac_reg_n_0_[3][0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[3][10] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[3]0 [10]),
        .Q(\s_tmp_nomac_reg_n_0_[3][10] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[3][11] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[3]0 [11]),
        .Q(\s_tmp_nomac_reg_n_0_[3][11] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[3][12] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[3]0 [12]),
        .Q(\s_tmp_nomac_reg_n_0_[3][12] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[3][13] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[3]0 [13]),
        .Q(\s_tmp_nomac_reg_n_0_[3][13] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[3][14] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[3]0 [14]),
        .Q(\s_tmp_nomac_reg_n_0_[3][14] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[3][15] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[3]0 [15]),
        .Q(\s_tmp_nomac_reg_n_0_[3][15] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[3][1] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[3]0 [1]),
        .Q(\s_tmp_nomac_reg_n_0_[3][1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[3][2] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[3]0 [2]),
        .Q(\s_tmp_nomac_reg_n_0_[3][2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[3][3] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[3]0 [3]),
        .Q(\s_tmp_nomac_reg_n_0_[3][3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[3][4] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[3]0 [4]),
        .Q(\s_tmp_nomac_reg_n_0_[3][4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[3][5] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[3]0 [5]),
        .Q(\s_tmp_nomac_reg_n_0_[3][5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[3][6] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[3]0 [6]),
        .Q(\s_tmp_nomac_reg_n_0_[3][6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[3][7] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[3]0 [7]),
        .Q(\s_tmp_nomac_reg_n_0_[3][7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[3][8] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[3]0 [8]),
        .Q(\s_tmp_nomac_reg_n_0_[3][8] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_tmp_nomac_reg[3][9] 
       (.C(i_clk),
        .CE(CEP),
        .D(\s_tmp_nomac_reg[3]0 [9]),
        .Q(\s_tmp_nomac_reg_n_0_[3][9] ),
        .R(rst));
  FDRE \s_tmp_nomac_reg[3]__0 
       (.C(i_clk),
        .CE(CEA2),
        .D(i_mem1a_dout[30]),
        .Q(\s_tmp_nomac_reg[3]__0_n_0 ),
        .R(rst));
  FDRE \s_tmp_nomac_reg[3]__1 
       (.C(i_clk),
        .CE(CEA2),
        .D(i_mem1a_dout[29]),
        .Q(\s_tmp_nomac_reg[3]__1_n_0 ),
        .R(rst));
  FDRE \s_tmp_nomac_reg[3]__2 
       (.C(i_clk),
        .CE(CEA2),
        .D(i_mem1a_dout[28]),
        .Q(\s_tmp_nomac_reg[3]__2_n_0 ),
        .R(rst));
  FDRE \s_tmp_nomac_reg[3]__3 
       (.C(i_clk),
        .CE(CEA2),
        .D(i_mem1a_dout[27]),
        .Q(\s_tmp_nomac_reg[3]__3_n_0 ),
        .R(rst));
  FDRE \s_tmp_nomac_reg[3]__4 
       (.C(i_clk),
        .CE(CEA2),
        .D(i_mem1a_dout[26]),
        .Q(\s_tmp_nomac_reg[3]__4_n_0 ),
        .R(rst));
  FDRE \s_tmp_nomac_reg[3]__5 
       (.C(i_clk),
        .CE(CEA2),
        .D(i_mem1a_dout[25]),
        .Q(\s_tmp_nomac_reg[3]__5_n_0 ),
        .R(rst));
  FDRE \s_tmp_nomac_reg[3]__6 
       (.C(i_clk),
        .CE(CEA2),
        .D(i_mem1a_dout[24]),
        .Q(\s_tmp_nomac_reg[3]__6_n_0 ),
        .R(rst));
  FDRE \s_vecs_addr_reg[0] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_vec_addr[0]),
        .Q(s_vecs_addr[0]),
        .R(rst));
  FDRE \s_vecs_addr_reg[10] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_vec_addr[10]),
        .Q(s_vecs_addr[10]),
        .R(rst));
  FDRE \s_vecs_addr_reg[11] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_vec_addr[11]),
        .Q(s_vecs_addr[11]),
        .R(rst));
  FDRE \s_vecs_addr_reg[12] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_vec_addr[12]),
        .Q(s_vecs_addr[12]),
        .R(rst));
  FDRE \s_vecs_addr_reg[13] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_vec_addr[13]),
        .Q(s_vecs_addr[13]),
        .R(rst));
  FDRE \s_vecs_addr_reg[14] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_vec_addr[14]),
        .Q(s_vecs_addr[14]),
        .R(rst));
  FDRE \s_vecs_addr_reg[15] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_vec_addr[15]),
        .Q(s_vecs_addr[15]),
        .R(rst));
  FDRE \s_vecs_addr_reg[16] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_vec_addr[16]),
        .Q(s_vecs_addr[16]),
        .R(rst));
  FDRE \s_vecs_addr_reg[17] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_vec_addr[17]),
        .Q(s_vecs_addr[17]),
        .R(rst));
  FDRE \s_vecs_addr_reg[18] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_vec_addr[18]),
        .Q(s_vecs_addr[18]),
        .R(rst));
  FDRE \s_vecs_addr_reg[19] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_vec_addr[19]),
        .Q(s_vecs_addr[19]),
        .R(rst));
  FDRE \s_vecs_addr_reg[1] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_vec_addr[1]),
        .Q(s_vecs_addr[1]),
        .R(rst));
  FDRE \s_vecs_addr_reg[20] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_vec_addr[20]),
        .Q(s_vecs_addr[20]),
        .R(rst));
  FDRE \s_vecs_addr_reg[21] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_vec_addr[21]),
        .Q(s_vecs_addr[21]),
        .R(rst));
  FDRE \s_vecs_addr_reg[22] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_vec_addr[22]),
        .Q(s_vecs_addr[22]),
        .R(rst));
  FDRE \s_vecs_addr_reg[23] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_vec_addr[23]),
        .Q(s_vecs_addr[23]),
        .R(rst));
  FDRE \s_vecs_addr_reg[24] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_vec_addr[24]),
        .Q(s_vecs_addr[24]),
        .R(rst));
  FDRE \s_vecs_addr_reg[25] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_vec_addr[25]),
        .Q(s_vecs_addr[25]),
        .R(rst));
  FDRE \s_vecs_addr_reg[26] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_vec_addr[26]),
        .Q(s_vecs_addr[26]),
        .R(rst));
  FDRE \s_vecs_addr_reg[27] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_vec_addr[27]),
        .Q(s_vecs_addr[27]),
        .R(rst));
  FDRE \s_vecs_addr_reg[28] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_vec_addr[28]),
        .Q(s_vecs_addr[28]),
        .R(rst));
  FDRE \s_vecs_addr_reg[29] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_vec_addr[29]),
        .Q(s_vecs_addr[29]),
        .R(rst));
  FDRE \s_vecs_addr_reg[2] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_vec_addr[2]),
        .Q(s_vecs_addr[2]),
        .R(rst));
  FDRE \s_vecs_addr_reg[30] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_vec_addr[30]),
        .Q(s_vecs_addr[30]),
        .R(rst));
  FDRE \s_vecs_addr_reg[31] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_vec_addr[31]),
        .Q(s_vecs_addr[31]),
        .R(rst));
  FDRE \s_vecs_addr_reg[3] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_vec_addr[3]),
        .Q(s_vecs_addr[3]),
        .R(rst));
  FDRE \s_vecs_addr_reg[4] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_vec_addr[4]),
        .Q(s_vecs_addr[4]),
        .R(rst));
  FDRE \s_vecs_addr_reg[5] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_vec_addr[5]),
        .Q(s_vecs_addr[5]),
        .R(rst));
  FDRE \s_vecs_addr_reg[6] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_vec_addr[6]),
        .Q(s_vecs_addr[6]),
        .R(rst));
  FDRE \s_vecs_addr_reg[7] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_vec_addr[7]),
        .Q(s_vecs_addr[7]),
        .R(rst));
  FDRE \s_vecs_addr_reg[8] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_vec_addr[8]),
        .Q(s_vecs_addr[8]),
        .R(rst));
  FDRE \s_vecs_addr_reg[9] 
       (.C(i_clk),
        .CE(s_len),
        .D(i_vec_addr[9]),
        .Q(s_vecs_addr[9]),
        .R(rst));
  FDRE \s_vecs_reg[0] 
       (.C(i_clk),
        .CE(CEA2),
        .D(i_mem1a_dout[0]),
        .Q(\s_vecs_reg_n_0_[0] ),
        .R(rst));
  FDRE \s_vecs_reg[1] 
       (.C(i_clk),
        .CE(CEA2),
        .D(i_mem1a_dout[1]),
        .Q(\s_vecs_reg_n_0_[1] ),
        .R(rst));
  FDRE \s_vecs_reg[2] 
       (.C(i_clk),
        .CE(CEA2),
        .D(i_mem1a_dout[2]),
        .Q(\s_vecs_reg_n_0_[2] ),
        .R(rst));
  FDRE \s_vecs_reg[3] 
       (.C(i_clk),
        .CE(CEA2),
        .D(i_mem1a_dout[3]),
        .Q(\s_vecs_reg_n_0_[3] ),
        .R(rst));
  FDRE \s_vecs_reg[4] 
       (.C(i_clk),
        .CE(CEA2),
        .D(i_mem1a_dout[4]),
        .Q(\s_vecs_reg_n_0_[4] ),
        .R(rst));
  FDRE \s_vecs_reg[5] 
       (.C(i_clk),
        .CE(CEA2),
        .D(i_mem1a_dout[5]),
        .Q(\s_vecs_reg_n_0_[5] ),
        .R(rst));
  FDRE \s_vecs_reg[6] 
       (.C(i_clk),
        .CE(CEA2),
        .D(i_mem1a_dout[6]),
        .Q(\s_vecs_reg_n_0_[6] ),
        .R(rst));
  FDRE \s_vecs_reg[7] 
       (.C(i_clk),
        .CE(CEA2),
        .D(i_mem1a_dout[7]),
        .Q(\s_vecs_reg_n_0_[7] ),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h04EA)) 
    \t_state1[0]_i_1 
       (.I0(\t_state1_reg_n_0_[1] ),
        .I1(s_out_ctr1_carry__2_n_0),
        .I2(\t_state1_reg_n_0_[0] ),
        .I3(\t_state1_reg_n_0_[2] ),
        .O(t_state1[0]));
  LUT5 #(
    .INIT(32'h000000AE)) 
    \t_state1[1]_i_1 
       (.I0(\t_state1_reg_n_0_[1] ),
        .I1(s_acc_change_reg_n_0),
        .I2(s_nomac_en_reg_n_0),
        .I3(\t_state1_reg_n_0_[0] ),
        .I4(\t_state1_reg_n_0_[2] ),
        .O(\t_state1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000F00F808)) 
    \t_state1[2]_i_1 
       (.I0(s_acc_change_reg_n_0),
        .I1(s_nomac_en_reg_n_0),
        .I2(\t_state1_reg_n_0_[2] ),
        .I3(s_out_ctr1_carry__2_n_0),
        .I4(\t_state1_reg_n_0_[0] ),
        .I5(\t_state1_reg_n_0_[1] ),
        .O(t_state1[2]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 t_state1_carry
       (.CI(1'b0),
        .CO({t_state1_carry_n_0,t_state1_carry_n_1,t_state1_carry_n_2,t_state1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({t_state1_carry_i_1_n_0,1'b0,t_state1_carry_i_2_n_0,\j_reg_n_0_[1] }),
        .O(NLW_t_state1_carry_O_UNCONNECTED[3:0]),
        .S({t_state1_carry_i_3_n_0,t_state1_carry_i_4_n_0,t_state1_carry_i_5_n_0,t_state1_carry_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 t_state1_carry__0
       (.CI(t_state1_carry_n_0),
        .CO({t_state1_carry__0_n_0,t_state1_carry__0_n_1,t_state1_carry__0_n_2,t_state1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({t_state1_carry__0_i_1_n_0,t_state1_carry__0_i_2_n_0,t_state1_carry__0_i_3_n_0,t_state1_carry__0_i_4_n_0}),
        .O(NLW_t_state1_carry__0_O_UNCONNECTED[3:0]),
        .S({t_state1_carry__0_i_5_n_0,t_state1_carry__0_i_6_n_0,t_state1_carry__0_i_7_n_0,t_state1_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    t_state1_carry__0_i_1
       (.I0(\j_reg_n_0_[14] ),
        .I1(\j_reg_n_0_[15] ),
        .O(t_state1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    t_state1_carry__0_i_2
       (.I0(\j_reg_n_0_[12] ),
        .I1(\j_reg_n_0_[13] ),
        .O(t_state1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    t_state1_carry__0_i_3
       (.I0(\j_reg_n_0_[10] ),
        .I1(\j_reg_n_0_[11] ),
        .O(t_state1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    t_state1_carry__0_i_4
       (.I0(\j_reg_n_0_[8] ),
        .I1(\j_reg_n_0_[9] ),
        .O(t_state1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    t_state1_carry__0_i_5
       (.I0(\j_reg_n_0_[14] ),
        .I1(\j_reg_n_0_[15] ),
        .O(t_state1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    t_state1_carry__0_i_6
       (.I0(\j_reg_n_0_[12] ),
        .I1(\j_reg_n_0_[13] ),
        .O(t_state1_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    t_state1_carry__0_i_7
       (.I0(\j_reg_n_0_[10] ),
        .I1(\j_reg_n_0_[11] ),
        .O(t_state1_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    t_state1_carry__0_i_8
       (.I0(\j_reg_n_0_[8] ),
        .I1(\j_reg_n_0_[9] ),
        .O(t_state1_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 t_state1_carry__1
       (.CI(t_state1_carry__0_n_0),
        .CO({t_state1_carry__1_n_0,t_state1_carry__1_n_1,t_state1_carry__1_n_2,t_state1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({t_state1_carry__1_i_1_n_0,t_state1_carry__1_i_2_n_0,t_state1_carry__1_i_3_n_0,t_state1_carry__1_i_4_n_0}),
        .O(NLW_t_state1_carry__1_O_UNCONNECTED[3:0]),
        .S({t_state1_carry__1_i_5_n_0,t_state1_carry__1_i_6_n_0,t_state1_carry__1_i_7_n_0,t_state1_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    t_state1_carry__1_i_1
       (.I0(\j_reg_n_0_[22] ),
        .I1(\j_reg_n_0_[23] ),
        .O(t_state1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    t_state1_carry__1_i_2
       (.I0(\j_reg_n_0_[20] ),
        .I1(\j_reg_n_0_[21] ),
        .O(t_state1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    t_state1_carry__1_i_3
       (.I0(\j_reg_n_0_[18] ),
        .I1(\j_reg_n_0_[19] ),
        .O(t_state1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    t_state1_carry__1_i_4
       (.I0(\j_reg_n_0_[16] ),
        .I1(\j_reg_n_0_[17] ),
        .O(t_state1_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    t_state1_carry__1_i_5
       (.I0(\j_reg_n_0_[22] ),
        .I1(\j_reg_n_0_[23] ),
        .O(t_state1_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    t_state1_carry__1_i_6
       (.I0(\j_reg_n_0_[20] ),
        .I1(\j_reg_n_0_[21] ),
        .O(t_state1_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    t_state1_carry__1_i_7
       (.I0(\j_reg_n_0_[18] ),
        .I1(\j_reg_n_0_[19] ),
        .O(t_state1_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    t_state1_carry__1_i_8
       (.I0(\j_reg_n_0_[16] ),
        .I1(\j_reg_n_0_[17] ),
        .O(t_state1_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 t_state1_carry__2
       (.CI(t_state1_carry__1_n_0),
        .CO({t_state1_carry__2_n_0,t_state1_carry__2_n_1,t_state1_carry__2_n_2,t_state1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({t_state1_carry__2_i_1_n_0,t_state1_carry__2_i_2_n_0,t_state1_carry__2_i_3_n_0,t_state1_carry__2_i_4_n_0}),
        .O(NLW_t_state1_carry__2_O_UNCONNECTED[3:0]),
        .S({t_state1_carry__2_i_5_n_0,t_state1_carry__2_i_6_n_0,t_state1_carry__2_i_7_n_0,t_state1_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    t_state1_carry__2_i_1
       (.I0(\j_reg_n_0_[30] ),
        .I1(\j_reg_n_0_[31] ),
        .O(t_state1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    t_state1_carry__2_i_2
       (.I0(\j_reg_n_0_[28] ),
        .I1(\j_reg_n_0_[29] ),
        .O(t_state1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    t_state1_carry__2_i_3
       (.I0(\j_reg_n_0_[26] ),
        .I1(\j_reg_n_0_[27] ),
        .O(t_state1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    t_state1_carry__2_i_4
       (.I0(\j_reg_n_0_[24] ),
        .I1(\j_reg_n_0_[25] ),
        .O(t_state1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    t_state1_carry__2_i_5
       (.I0(\j_reg_n_0_[30] ),
        .I1(\j_reg_n_0_[31] ),
        .O(t_state1_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    t_state1_carry__2_i_6
       (.I0(\j_reg_n_0_[28] ),
        .I1(\j_reg_n_0_[29] ),
        .O(t_state1_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    t_state1_carry__2_i_7
       (.I0(\j_reg_n_0_[26] ),
        .I1(\j_reg_n_0_[27] ),
        .O(t_state1_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    t_state1_carry__2_i_8
       (.I0(\j_reg_n_0_[24] ),
        .I1(\j_reg_n_0_[25] ),
        .O(t_state1_carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    t_state1_carry_i_1
       (.I0(\j_reg_n_0_[6] ),
        .I1(\j_reg_n_0_[7] ),
        .O(t_state1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    t_state1_carry_i_2
       (.I0(\j_reg_n_0_[2] ),
        .I1(\j_reg_n_0_[3] ),
        .O(t_state1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    t_state1_carry_i_3
       (.I0(\j_reg_n_0_[6] ),
        .I1(\j_reg_n_0_[7] ),
        .O(t_state1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    t_state1_carry_i_4
       (.I0(\j_reg_n_0_[4] ),
        .I1(\j_reg_n_0_[5] ),
        .O(t_state1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    t_state1_carry_i_5
       (.I0(\j_reg_n_0_[3] ),
        .I1(\j_reg_n_0_[2] ),
        .O(t_state1_carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state1_carry_i_6
       (.I0(\j_reg_n_0_[1] ),
        .O(t_state1_carry_i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \t_state1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\t_state1_inferred__0/i__carry_n_0 ,\t_state1_inferred__0/i__carry_n_1 ,\t_state1_inferred__0/i__carry_n_2 ,\t_state1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_t_state1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \t_state1_inferred__0/i__carry__0 
       (.CI(\t_state1_inferred__0/i__carry_n_0 ),
        .CO({\t_state1_inferred__0/i__carry__0_n_0 ,\t_state1_inferred__0/i__carry__0_n_1 ,\t_state1_inferred__0/i__carry__0_n_2 ,\t_state1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(\NLW_t_state1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \t_state1_inferred__0/i__carry__1 
       (.CI(\t_state1_inferred__0/i__carry__0_n_0 ),
        .CO({\t_state1_inferred__0/i__carry__1_n_0 ,\t_state1_inferred__0/i__carry__1_n_1 ,\t_state1_inferred__0/i__carry__1_n_2 ,\t_state1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}),
        .O(\NLW_t_state1_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0,i__carry__1_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \t_state1_inferred__0/i__carry__2 
       (.CI(\t_state1_inferred__0/i__carry__1_n_0 ),
        .CO({\t_state1_inferred__0/i__carry__2_n_0 ,\t_state1_inferred__0/i__carry__2_n_1 ,\t_state1_inferred__0/i__carry__2_n_2 ,\t_state1_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}),
        .O(\NLW_t_state1_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_5_n_0,i__carry__2_i_6_n_0,i__carry__2_i_7_n_0,i__carry__2_i_8_n_0}));
  FDRE #(
    .INIT(1'b0)) 
    \t_state1_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(t_state1[0]),
        .Q(\t_state1_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \t_state1_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\t_state1[1]_i_1_n_0 ),
        .Q(\t_state1_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \t_state1_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(t_state1[2]),
        .Q(\t_state1_reg_n_0_[2] ),
        .R(rst));
  LUT6 #(
    .INIT(64'h000000FF00FF3FAA)) 
    \t_state[0]_i_1 
       (.I0(s_vecs_addr0),
        .I1(t_state1_carry__2_n_0),
        .I2(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I3(\t_state_reg_n_0_[1] ),
        .I4(\t_state_reg_n_0_[2] ),
        .I5(\t_state_reg_n_0_[0] ),
        .O(t_state[0]));
  LUT5 #(
    .INIT(32'h370C070C)) 
    \t_state[1]_i_1 
       (.I0(s_nomac_en_reg_n_0),
        .I1(\t_state_reg_n_0_[1] ),
        .I2(\t_state_reg_n_0_[2] ),
        .I3(\t_state_reg_n_0_[0] ),
        .I4(t_state1_carry__2_n_0),
        .O(t_state[1]));
  LUT6 #(
    .INIT(64'h0000F808FFFF0000)) 
    \t_state[2]_i_1 
       (.I0(t_state1_carry__2_n_0),
        .I1(\t_state1_inferred__0/i__carry__2_n_0 ),
        .I2(\t_state_reg_n_0_[0] ),
        .I3(s_nomac_en_reg_n_0),
        .I4(\t_state_reg_n_0_[2] ),
        .I5(\t_state_reg_n_0_[1] ),
        .O(\t_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \t_state_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(t_state[0]),
        .Q(\t_state_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \t_state_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(t_state[1]),
        .Q(\t_state_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \t_state_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\t_state[2]_i_1_n_0 ),
        .Q(\t_state_reg_n_0_[2] ),
        .R(rst));
  LUT3 #(
    .INIT(8'h40)) 
    \tmp[4][4]_i_1 
       (.I0(\t_state1_reg_n_0_[2] ),
        .I1(\t_state1_reg_n_0_[0] ),
        .I2(\t_state1_reg_n_0_[1] ),
        .O(\tmp[7]_16 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][0] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[0]_4 [0]),
        .Q(\tmp_reg[0]_12 [0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][1] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[0]_4 [1]),
        .Q(\tmp_reg[0]_12 [1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][2] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[0]_4 [2]),
        .Q(\tmp_reg[0]_12 [2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][3] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[0]_4 [3]),
        .Q(\tmp_reg[0]_12 [3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][4] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[0]_4 [4]),
        .Q(\tmp_reg[0]_12 [4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][0] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[1]_5 [0]),
        .Q(\tmp_reg[1]_13 [0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][1] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[1]_5 [1]),
        .Q(\tmp_reg[1]_13 [1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][2] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[1]_5 [2]),
        .Q(\tmp_reg[1]_13 [2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][3] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[1]_5 [3]),
        .Q(\tmp_reg[1]_13 [3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][4] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[1]_5 [4]),
        .Q(\tmp_reg[1]_13 [4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][0] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[2]_6 [0]),
        .Q(\tmp_reg[2]_14 [0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][1] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[2]_6 [1]),
        .Q(\tmp_reg[2]_14 [1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][2] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[2]_6 [2]),
        .Q(\tmp_reg[2]_14 [2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][3] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[2]_6 [3]),
        .Q(\tmp_reg[2]_14 [3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][4] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[2]_6 [4]),
        .Q(\tmp_reg[2]_14 [4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][0] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[3]_7 [0]),
        .Q(\tmp_reg[3]_15 [0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][1] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[3]_7 [1]),
        .Q(\tmp_reg[3]_15 [1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][2] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[3]_7 [2]),
        .Q(\tmp_reg[3]_15 [2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][3] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[3]_7 [3]),
        .Q(\tmp_reg[3]_15 [3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][4] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[3]_7 [4]),
        .Q(\tmp_reg[3]_15 [4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][0] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[4]_0 [0]),
        .Q(\tmp_reg[4]_8 [0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][1] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[4]_0 [1]),
        .Q(\tmp_reg[4]_8 [1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][2] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[4]_0 [2]),
        .Q(\tmp_reg[4]_8 [2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][3] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[4]_0 [3]),
        .Q(\tmp_reg[4]_8 [3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][4] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[4]_0 [4]),
        .Q(\tmp_reg[4]_8 [4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][0] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[5]_1 [0]),
        .Q(\tmp_reg[5]_9 [0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][1] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[5]_1 [1]),
        .Q(\tmp_reg[5]_9 [1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][2] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[5]_1 [2]),
        .Q(\tmp_reg[5]_9 [2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][3] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[5]_1 [3]),
        .Q(\tmp_reg[5]_9 [3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][4] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[5]_1 [4]),
        .Q(\tmp_reg[5]_9 [4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][0] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[6]_2 [0]),
        .Q(\tmp_reg[6]_10 [0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][1] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[6]_2 [1]),
        .Q(\tmp_reg[6]_10 [1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][2] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[6]_2 [2]),
        .Q(\tmp_reg[6]_10 [2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][3] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[6]_2 [3]),
        .Q(\tmp_reg[6]_10 [3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][4] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[6]_2 [4]),
        .Q(\tmp_reg[6]_10 [4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][0] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[7]_3 [0]),
        .Q(\tmp_reg[7]_11 [0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][1] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[7]_3 [1]),
        .Q(\tmp_reg[7]_11 [1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][2] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[7]_3 [2]),
        .Q(\tmp_reg[7]_11 [2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][3] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[7]_3 [3]),
        .Q(\tmp_reg[7]_11 [3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][4] 
       (.C(i_clk),
        .CE(\tmp[7]_16 ),
        .D(\s_acc[7]_3 [4]),
        .Q(\tmp_reg[7]_11 [4]),
        .R(rst));
  LUT5 #(
    .INIT(32'hEFFC2000)) 
    tmp_sel_i_1
       (.I0(s_acc_sel),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(\t_state1_reg_n_0_[1] ),
        .I3(\t_state1_reg_n_0_[0] ),
        .I4(tmp_sel),
        .O(tmp_sel_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tmp_sel_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(tmp_sel_i_1_n_0),
        .Q(tmp_sel),
        .R(rst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
