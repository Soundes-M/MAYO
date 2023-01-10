// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Jan  8 01:14:08 2023
// Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ip/Mayo_keygen_mayo_linear_combinat_0_0/Mayo_keygen_mayo_linear_combinat_0_0_sim_netlist.v
// Design      : Mayo_keygen_mayo_linear_combinat_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Mayo_keygen_mayo_linear_combinat_0_0,mayo_linear_combination,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "mayo_linear_combination,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Mayo_keygen_mayo_linear_combinat_0_0
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN Mayo_keygen_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input i_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input i_enable;
  output o_done;
  input i_bram_halt;
  input [31:0]i_vec_addr;
  input [31:0]i_coeffs_addr;
  input [31:0]i_out_addr;
  input [31:0]i_len;
  input [31:0]i_mem0a_dout;
  output [31:0]o_mem0a_din;
  output [31:0]o_mem0a_addr;
  output o_mem0a_en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 o_mem0a_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME o_mem0a_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output o_mem0a_rst;
  output [3:0]o_mem0a_we;
  input [31:0]i_mem0b_dout;
  output [31:0]o_mem0b_din;
  output [31:0]o_mem0b_addr;
  output o_mem0b_en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 o_mem0b_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME o_mem0b_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output o_mem0b_rst;
  output [3:0]o_mem0b_we;
  input [31:0]i_mem1a_dout;
  output [31:0]o_mem1a_din;
  output [31:0]o_mem1a_addr;
  output o_mem1a_en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 o_mem1a_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME o_mem1a_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output o_mem1a_rst;
  output [3:0]o_mem1a_we;
  output o_control0a;
  output o_control0b;
  output o_control1a;

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
  wire o_done;
  wire [31:0]o_mem0a_addr;
  wire o_mem0a_en;
  wire [31:0]o_mem0b_addr;
  wire [31:0]o_mem0b_din;
  wire o_mem0b_en;
  wire [2:2]\^o_mem0b_we ;
  wire [31:0]o_mem1a_addr;
  wire rst;

  assign o_control1a = o_control0a;
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
  assign o_mem1a_en = o_mem0a_en;
  assign o_mem1a_rst = \<const0> ;
  assign o_mem1a_we[3] = \<const0> ;
  assign o_mem1a_we[2] = \<const0> ;
  assign o_mem1a_we[1] = \<const0> ;
  assign o_mem1a_we[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  Mayo_keygen_mayo_linear_combinat_0_0_mayo_linear_combination U0
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
        .o_done(o_done),
        .o_mem0a_addr(o_mem0a_addr),
        .o_mem0a_en(o_mem0a_en),
        .o_mem0b_addr(o_mem0b_addr),
        .o_mem0b_din(o_mem0b_din),
        .o_mem0b_we(\^o_mem0b_we ),
        .o_mem1a_addr(o_mem1a_addr),
        .rst(rst),
        .s_acc_flush_reg_0(o_mem0b_en));
endmodule

(* ORIG_REF_NAME = "DSP_Accum" *) 
module Mayo_keygen_mayo_linear_combinat_0_0_DSP_Accum
   (\c_reg[20] ,
    \c_reg[13] ,
    \c_reg[17] ,
    \c_reg[4] ,
    in0,
    \s_acc[1] ,
    \s_acc[2] ,
    \s_acc[3] ,
    \s_acc[4] ,
    \s_acc[5] ,
    \s_acc[6] ,
    \s_acc[7] ,
    \acc_b_reg[3]_0 ,
    \bram0b[o][o_en] ,
    \acc_b_reg[3]_1 ,
    Q,
    i_mem0a_dout,
    sel0,
    \acc_b_reg[3]_2 ,
    i_clk,
    rst,
    i_mem1a_dout,
    s_acc_sel,
    \acc_a_reg[3]_0 ,
    \acc_a_reg[3]_1 );
  output \c_reg[20] ;
  output \c_reg[13] ;
  output \c_reg[17] ;
  output \c_reg[4] ;
  output [4:0]in0;
  output [4:0]\s_acc[1] ;
  output [4:0]\s_acc[2] ;
  output [4:0]\s_acc[3] ;
  output [4:0]\s_acc[4] ;
  output [4:0]\s_acc[5] ;
  output [4:0]\s_acc[6] ;
  output [4:0]\s_acc[7] ;
  input \acc_b_reg[3]_0 ;
  input \bram0b[o][o_en] ;
  input \acc_b_reg[3]_1 ;
  input [1:0]Q;
  input [7:0]i_mem0a_dout;
  input [31:0]sel0;
  input [31:0]\acc_b_reg[3]_2 ;
  input i_clk;
  input rst;
  input [31:0]i_mem1a_dout;
  input s_acc_sel;
  input \acc_a_reg[3]_0 ;
  input \acc_a_reg[3]_1 ;

  wire [1:0]Q;
  wire RSTM;
  wire RSTP;
  wire \acc_a_reg[0]_i_16_n_0 ;
  wire \acc_a_reg[0]_i_17_n_0 ;
  wire \acc_a_reg[0]_i_18_n_0 ;
  wire \acc_a_reg[0]_i_19_n_0 ;
  wire \acc_a_reg[0]_i_20_n_0 ;
  wire \acc_a_reg[0]_i_21_n_0 ;
  wire \acc_a_reg[0]_i_22_n_0 ;
  wire \acc_a_reg[0]_i_23_n_0 ;
  wire \acc_a_reg[0]_i_24_n_0 ;
  wire \acc_a_reg[0]_i_25_n_0 ;
  wire \acc_a_reg[0]_i_26_n_0 ;
  wire \acc_a_reg[0]_i_27_n_0 ;
  wire \acc_a_reg[0]_i_28_n_0 ;
  wire \acc_a_reg[0]_i_29_n_0 ;
  wire \acc_a_reg[0]_i_30_n_0 ;
  wire \acc_a_reg[0]_i_31_n_0 ;
  wire \acc_a_reg[3]_0 ;
  wire \acc_a_reg[3]_1 ;
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
  wire \acc_b_reg[3]_0 ;
  wire \acc_b_reg[3]_1 ;
  wire [31:0]\acc_b_reg[3]_2 ;
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
  wire \bram0b[o][o_en] ;
  wire \c_reg[13] ;
  wire \c_reg[17] ;
  wire \c_reg[20] ;
  wire \c_reg[4] ;
  wire dsp_enable;
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
        .CEA2(Q[1]),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q[1]),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(dsp_enable),
        .CEP(dsp_enable),
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
  LUT4 #(
    .INIT(16'hFEFF)) 
    \acc_a_reg[0]_i_1 
       (.I0(\acc_b_reg[3]_0 ),
        .I1(\bram0b[o][o_en] ),
        .I2(\acc_b_reg[3]_1 ),
        .I3(Q[0]),
        .O(dsp_enable));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \acc_a_reg[0]_i_10 
       (.I0(i_mem0a_dout[1]),
        .I1(\c_reg[20] ),
        .I2(\c_reg[13] ),
        .I3(\c_reg[17] ),
        .I4(\c_reg[4] ),
        .I5(\acc_a_reg[0]_i_22_n_0 ),
        .O(dspb[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \acc_a_reg[0]_i_11 
       (.I0(i_mem0a_dout[0]),
        .I1(\c_reg[20] ),
        .I2(\c_reg[13] ),
        .I3(\c_reg[17] ),
        .I4(\c_reg[4] ),
        .I5(\acc_a_reg[0]_i_23_n_0 ),
        .O(dspb[0]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \acc_a_reg[0]_i_12 
       (.I0(\acc_a_reg[0]_i_24_n_0 ),
        .I1(\acc_a_reg[0]_i_25_n_0 ),
        .I2(\acc_a_reg[0]_i_26_n_0 ),
        .I3(\acc_a_reg[0]_i_27_n_0 ),
        .I4(\acc_a_reg[0]_i_28_n_0 ),
        .I5(\acc_a_reg[0]_i_29_n_0 ),
        .O(\c_reg[20] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \acc_a_reg[0]_i_13 
       (.I0(sel0[13]),
        .I1(sel0[12]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(\c_reg[13] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \acc_a_reg[0]_i_14 
       (.I0(sel0[17]),
        .I1(sel0[16]),
        .I2(sel0[29]),
        .I3(sel0[28]),
        .O(\c_reg[17] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \acc_a_reg[0]_i_15 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(\acc_a_reg[0]_i_30_n_0 ),
        .I5(\acc_a_reg[0]_i_31_n_0 ),
        .O(\c_reg[4] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \acc_a_reg[0]_i_16 
       (.I0(\acc_b_reg[3]_2 [31]),
        .I1(\acc_b_reg[3]_2 [15]),
        .I2(sel0[0]),
        .I3(\acc_b_reg[3]_2 [23]),
        .I4(sel0[1]),
        .I5(\acc_b_reg[3]_2 [7]),
        .O(\acc_a_reg[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \acc_a_reg[0]_i_17 
       (.I0(\acc_b_reg[3]_2 [30]),
        .I1(\acc_b_reg[3]_2 [14]),
        .I2(sel0[0]),
        .I3(\acc_b_reg[3]_2 [22]),
        .I4(sel0[1]),
        .I5(\acc_b_reg[3]_2 [6]),
        .O(\acc_a_reg[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \acc_a_reg[0]_i_18 
       (.I0(\acc_b_reg[3]_2 [29]),
        .I1(\acc_b_reg[3]_2 [13]),
        .I2(sel0[0]),
        .I3(\acc_b_reg[3]_2 [21]),
        .I4(sel0[1]),
        .I5(\acc_b_reg[3]_2 [5]),
        .O(\acc_a_reg[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \acc_a_reg[0]_i_19 
       (.I0(\acc_b_reg[3]_2 [28]),
        .I1(\acc_b_reg[3]_2 [12]),
        .I2(sel0[0]),
        .I3(\acc_b_reg[3]_2 [20]),
        .I4(sel0[1]),
        .I5(\acc_b_reg[3]_2 [4]),
        .O(\acc_a_reg[0]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hFFD0)) 
    \acc_a_reg[0]_i_2 
       (.I0(\acc_a_reg[3]_1 ),
        .I1(s_acc_sel),
        .I2(dsp_enable),
        .I3(rst),
        .O(RSTM));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \acc_a_reg[0]_i_20 
       (.I0(\acc_b_reg[3]_2 [27]),
        .I1(\acc_b_reg[3]_2 [11]),
        .I2(sel0[0]),
        .I3(\acc_b_reg[3]_2 [19]),
        .I4(sel0[1]),
        .I5(\acc_b_reg[3]_2 [3]),
        .O(\acc_a_reg[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \acc_a_reg[0]_i_21 
       (.I0(\acc_b_reg[3]_2 [26]),
        .I1(\acc_b_reg[3]_2 [10]),
        .I2(sel0[0]),
        .I3(\acc_b_reg[3]_2 [18]),
        .I4(sel0[1]),
        .I5(\acc_b_reg[3]_2 [2]),
        .O(\acc_a_reg[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \acc_a_reg[0]_i_22 
       (.I0(\acc_b_reg[3]_2 [25]),
        .I1(\acc_b_reg[3]_2 [9]),
        .I2(sel0[0]),
        .I3(\acc_b_reg[3]_2 [17]),
        .I4(sel0[1]),
        .I5(\acc_b_reg[3]_2 [1]),
        .O(\acc_a_reg[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \acc_a_reg[0]_i_23 
       (.I0(\acc_b_reg[3]_2 [24]),
        .I1(\acc_b_reg[3]_2 [8]),
        .I2(sel0[0]),
        .I3(\acc_b_reg[3]_2 [16]),
        .I4(sel0[1]),
        .I5(\acc_b_reg[3]_2 [0]),
        .O(\acc_a_reg[0]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \acc_a_reg[0]_i_24 
       (.I0(sel0[20]),
        .I1(sel0[21]),
        .O(\acc_a_reg[0]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \acc_a_reg[0]_i_25 
       (.I0(sel0[24]),
        .I1(sel0[25]),
        .O(\acc_a_reg[0]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \acc_a_reg[0]_i_26 
       (.I0(sel0[19]),
        .I1(sel0[18]),
        .I2(sel0[31]),
        .I3(sel0[30]),
        .O(\acc_a_reg[0]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \acc_a_reg[0]_i_27 
       (.I0(sel0[11]),
        .I1(sel0[10]),
        .I2(sel0[23]),
        .I3(sel0[22]),
        .O(\acc_a_reg[0]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \acc_a_reg[0]_i_28 
       (.I0(sel0[6]),
        .I1(sel0[7]),
        .O(\acc_a_reg[0]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \acc_a_reg[0]_i_29 
       (.I0(sel0[26]),
        .I1(sel0[27]),
        .O(\acc_a_reg[0]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \acc_a_reg[0]_i_3 
       (.I0(s_acc_sel),
        .I1(dsp_enable),
        .I2(\acc_a_reg[3]_0 ),
        .I3(rst),
        .O(RSTP));
  LUT2 #(
    .INIT(4'hE)) 
    \acc_a_reg[0]_i_30 
       (.I0(sel0[14]),
        .I1(sel0[15]),
        .O(\acc_a_reg[0]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \acc_a_reg[0]_i_31 
       (.I0(sel0[8]),
        .I1(sel0[9]),
        .O(\acc_a_reg[0]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \acc_a_reg[0]_i_4 
       (.I0(i_mem0a_dout[7]),
        .I1(\c_reg[20] ),
        .I2(\c_reg[13] ),
        .I3(\c_reg[17] ),
        .I4(\c_reg[4] ),
        .I5(\acc_a_reg[0]_i_16_n_0 ),
        .O(dspb[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \acc_a_reg[0]_i_5 
       (.I0(i_mem0a_dout[6]),
        .I1(\c_reg[20] ),
        .I2(\c_reg[13] ),
        .I3(\c_reg[17] ),
        .I4(\c_reg[4] ),
        .I5(\acc_a_reg[0]_i_17_n_0 ),
        .O(dspb[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \acc_a_reg[0]_i_6 
       (.I0(i_mem0a_dout[5]),
        .I1(\c_reg[20] ),
        .I2(\c_reg[13] ),
        .I3(\c_reg[17] ),
        .I4(\c_reg[4] ),
        .I5(\acc_a_reg[0]_i_18_n_0 ),
        .O(dspb[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \acc_a_reg[0]_i_7 
       (.I0(i_mem0a_dout[4]),
        .I1(\c_reg[20] ),
        .I2(\c_reg[13] ),
        .I3(\c_reg[17] ),
        .I4(\c_reg[4] ),
        .I5(\acc_a_reg[0]_i_19_n_0 ),
        .O(dspb[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \acc_a_reg[0]_i_8 
       (.I0(i_mem0a_dout[3]),
        .I1(\c_reg[20] ),
        .I2(\c_reg[13] ),
        .I3(\c_reg[17] ),
        .I4(\c_reg[4] ),
        .I5(\acc_a_reg[0]_i_20_n_0 ),
        .O(dspb[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \acc_a_reg[0]_i_9 
       (.I0(i_mem0a_dout[2]),
        .I1(\c_reg[20] ),
        .I2(\c_reg[13] ),
        .I3(\c_reg[17] ),
        .I4(\c_reg[4] ),
        .I5(\acc_a_reg[0]_i_21_n_0 ),
        .O(dspb[2]));
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
        .CEA2(Q[1]),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q[1]),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(dsp_enable),
        .CEP(dsp_enable),
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
        .CEA2(Q[1]),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q[1]),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(dsp_enable),
        .CEP(dsp_enable),
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
        .CEA2(Q[1]),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q[1]),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(dsp_enable),
        .CEP(dsp_enable),
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
        .CEA2(Q[1]),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q[1]),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(dsp_enable),
        .CEP(dsp_enable),
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
        .I1(\acc_a_reg[3]_1 ),
        .I2(dsp_enable),
        .I3(rst),
        .O(\acc_b_reg[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF40)) 
    \acc_b_reg[0]_i_2 
       (.I0(s_acc_sel),
        .I1(dsp_enable),
        .I2(\acc_a_reg[3]_0 ),
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
        .CEA2(Q[1]),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q[1]),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(dsp_enable),
        .CEP(dsp_enable),
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
        .CEA2(Q[1]),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q[1]),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(dsp_enable),
        .CEP(dsp_enable),
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
        .CEA2(Q[1]),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q[1]),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(dsp_enable),
        .CEP(dsp_enable),
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

(* ORIG_REF_NAME = "mayo_linear_combination" *) 
module Mayo_keygen_mayo_linear_combinat_0_0_mayo_linear_combination
   (s_acc_flush_reg_0,
    o_mem0a_addr,
    o_mem1a_addr,
    o_mem0b_din,
    o_mem0b_addr,
    o_done,
    o_mem0a_en,
    o_mem0b_we,
    o_control0a,
    o_control0b,
    rst,
    i_clk,
    i_mem1a_dout,
    i_len,
    i_coeffs_addr,
    i_vec_addr,
    i_out_addr,
    i_mem0a_dout,
    i_enable);
  output s_acc_flush_reg_0;
  output [31:0]o_mem0a_addr;
  output [31:0]o_mem1a_addr;
  output [31:0]o_mem0b_din;
  output [31:0]o_mem0b_addr;
  output o_done;
  output o_mem0a_en;
  output [0:0]o_mem0b_we;
  output o_control0a;
  output o_control0b;
  input rst;
  input i_clk;
  input [31:0]i_mem1a_dout;
  input [31:0]i_len;
  input [31:0]i_coeffs_addr;
  input [31:0]i_vec_addr;
  input [31:0]i_out_addr;
  input [31:0]i_mem0a_dout;
  input i_enable;

  wire DSP_Inst_n_0;
  wire DSP_Inst_n_1;
  wire DSP_Inst_n_2;
  wire DSP_Inst_n_3;
  wire \FSM_onehot_t_state[0]_i_1_n_0 ;
  wire \FSM_onehot_t_state[2]_i_1_n_0 ;
  wire \FSM_onehot_t_state[5]_i_2_n_0 ;
  wire \FSM_onehot_t_state_reg_n_0_[0] ;
  wire \FSM_onehot_t_state_reg_n_0_[2] ;
  wire \FSM_onehot_t_state_reg_n_0_[3] ;
  wire \FSM_onehot_t_state_reg_n_0_[5] ;
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
  wire \bram0a[o][o_en] ;
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
  wire \bram0b[o][o_din][0]_i_1_n_0 ;
  wire \bram0b[o][o_din][10]_i_1_n_0 ;
  wire \bram0b[o][o_din][11]_i_1_n_0 ;
  wire \bram0b[o][o_din][12]_i_1_n_0 ;
  wire \bram0b[o][o_din][13]_i_1_n_0 ;
  wire \bram0b[o][o_din][14]_i_1_n_0 ;
  wire \bram0b[o][o_din][15]_i_1_n_0 ;
  wire \bram0b[o][o_din][16]_i_1_n_0 ;
  wire \bram0b[o][o_din][17]_i_1_n_0 ;
  wire \bram0b[o][o_din][18]_i_1_n_0 ;
  wire \bram0b[o][o_din][19]_i_1_n_0 ;
  wire \bram0b[o][o_din][1]_i_1_n_0 ;
  wire \bram0b[o][o_din][20]_i_1_n_0 ;
  wire \bram0b[o][o_din][21]_i_1_n_0 ;
  wire \bram0b[o][o_din][22]_i_1_n_0 ;
  wire \bram0b[o][o_din][23]_i_1_n_0 ;
  wire \bram0b[o][o_din][24]_i_1_n_0 ;
  wire \bram0b[o][o_din][25]_i_1_n_0 ;
  wire \bram0b[o][o_din][26]_i_1_n_0 ;
  wire \bram0b[o][o_din][27]_i_1_n_0 ;
  wire \bram0b[o][o_din][28]_i_1_n_0 ;
  wire \bram0b[o][o_din][29]_i_1_n_0 ;
  wire \bram0b[o][o_din][2]_i_1_n_0 ;
  wire \bram0b[o][o_din][30]_i_1_n_0 ;
  wire \bram0b[o][o_din][31]_i_1_n_0 ;
  wire \bram0b[o][o_din][31]_i_2_n_0 ;
  wire \bram0b[o][o_din][3]_i_1_n_0 ;
  wire \bram0b[o][o_din][4]_i_1_n_0 ;
  wire \bram0b[o][o_din][5]_i_1_n_0 ;
  wire \bram0b[o][o_din][6]_i_1_n_0 ;
  wire \bram0b[o][o_din][7]_i_1_n_0 ;
  wire \bram0b[o][o_din][8]_i_1_n_0 ;
  wire \bram0b[o][o_din][9]_i_1_n_0 ;
  wire \bram0b[o][o_en] ;
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
  wire \bram1a[o][o_addr][10]_i_1_n_0 ;
  wire \bram1a[o][o_addr][11]_i_1_n_0 ;
  wire \bram1a[o][o_addr][12]_i_1_n_0 ;
  wire \bram1a[o][o_addr][13]_i_1_n_0 ;
  wire \bram1a[o][o_addr][14]_i_1_n_0 ;
  wire \bram1a[o][o_addr][15]_i_1_n_0 ;
  wire \bram1a[o][o_addr][16]_i_1_n_0 ;
  wire \bram1a[o][o_addr][17]_i_1_n_0 ;
  wire \bram1a[o][o_addr][18]_i_1_n_0 ;
  wire \bram1a[o][o_addr][19]_i_1_n_0 ;
  wire \bram1a[o][o_addr][1]_i_1_n_0 ;
  wire \bram1a[o][o_addr][20]_i_1_n_0 ;
  wire \bram1a[o][o_addr][21]_i_1_n_0 ;
  wire \bram1a[o][o_addr][22]_i_1_n_0 ;
  wire \bram1a[o][o_addr][23]_i_1_n_0 ;
  wire \bram1a[o][o_addr][24]_i_1_n_0 ;
  wire \bram1a[o][o_addr][25]_i_1_n_0 ;
  wire \bram1a[o][o_addr][26]_i_1_n_0 ;
  wire \bram1a[o][o_addr][27]_i_1_n_0 ;
  wire \bram1a[o][o_addr][28]_i_1_n_0 ;
  wire \bram1a[o][o_addr][29]_i_1_n_0 ;
  wire \bram1a[o][o_addr][2]_i_1_n_0 ;
  wire \bram1a[o][o_addr][30]_i_1_n_0 ;
  wire \bram1a[o][o_addr][31]_i_1_n_0 ;
  wire \bram1a[o][o_addr][31]_i_2_n_0 ;
  wire \bram1a[o][o_addr][3]_i_1_n_0 ;
  wire \bram1a[o][o_addr][4]_i_1_n_0 ;
  wire \bram1a[o][o_addr][5]_i_1_n_0 ;
  wire \bram1a[o][o_addr][6]_i_1_n_0 ;
  wire \bram1a[o][o_addr][7]_i_1_n_0 ;
  wire \bram1a[o][o_addr][8]_i_1_n_0 ;
  wire \bram1a[o][o_addr][9]_i_1_n_0 ;
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
  wire \c[31]_i_1_n_0 ;
  wire \c[31]_i_2_n_0 ;
  wire first;
  wire first_i_1_n_0;
  wire [31:0]i;
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
  wire \i[31]_i_1_n_0 ;
  wire \i[31]_i_2_n_0 ;
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
  wire i_clk;
  wire [31:0]i_coeffs_addr;
  wire i_enable;
  wire [31:0]i_len;
  wire [31:0]i_mem0a_dout;
  wire [31:0]i_mem1a_dout;
  wire [31:0]i_out_addr;
  wire [31:0]i_vec_addr;
  wire [31:1]in8;
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
  wire o_control0a_i_1_n_0;
  wire o_control0b;
  wire o_control0b_i_1_n_0;
  wire o_done;
  wire o_done_i_1_n_0;
  wire [31:0]o_mem0a_addr;
  wire o_mem0a_en;
  wire [31:0]o_mem0b_addr;
  wire [31:0]o_mem0b_din;
  wire [0:0]o_mem0b_we;
  wire [31:0]o_mem1a_addr;
  wire [31:1]p_1_in__0;
  wire [31:1]plusOp;
  wire [31:0]plusOp1_in;
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
  wire \plusOp_inferred__0/i__carry_n_7 ;
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
  (* RTL_KEEP = "true" *) wire [31:0]\s_acc[0]_8 ;
  (* RTL_KEEP = "true" *) wire [31:0]\s_acc[1]_10 ;
  (* RTL_KEEP = "true" *) wire [31:0]\s_acc[2]_12 ;
  (* RTL_KEEP = "true" *) wire [31:0]\s_acc[3]_14 ;
  (* RTL_KEEP = "true" *) wire [31:0]\s_acc[4]_0 ;
  (* RTL_KEEP = "true" *) wire [31:0]\s_acc[5]_2 ;
  (* RTL_KEEP = "true" *) wire [31:0]\s_acc[6]_4 ;
  (* RTL_KEEP = "true" *) wire [31:0]\s_acc[7]_6 ;
  wire s_acc_change_i_1_n_0;
  wire s_acc_change_reg_n_0;
  wire s_acc_flush_i_1_n_0;
  wire s_acc_flush_reg_0;
  wire s_acc_sel;
  wire s_acc_sel_i_1_n_0;
  wire [31:0]s_coeffs;
  wire s_coeffs0;
  wire \s_coeffs[31]_i_2_n_0 ;
  wire [31:0]s_coeffs_addr;
  wire [31:0]s_len;
  wire s_main_i_1_n_0;
  wire s_main_reg_n_0;
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
  wire \s_out_ctr[31]_i_1_n_0 ;
  wire \s_out_ctr[4]_i_3_n_0 ;
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
  wire s_vecs;
  wire s_vecs_addr;
  wire \s_vecs_addr_reg_n_0_[0] ;
  wire \s_vecs_addr_reg_n_0_[10] ;
  wire \s_vecs_addr_reg_n_0_[11] ;
  wire \s_vecs_addr_reg_n_0_[12] ;
  wire \s_vecs_addr_reg_n_0_[13] ;
  wire \s_vecs_addr_reg_n_0_[14] ;
  wire \s_vecs_addr_reg_n_0_[15] ;
  wire \s_vecs_addr_reg_n_0_[16] ;
  wire \s_vecs_addr_reg_n_0_[17] ;
  wire \s_vecs_addr_reg_n_0_[18] ;
  wire \s_vecs_addr_reg_n_0_[19] ;
  wire \s_vecs_addr_reg_n_0_[1] ;
  wire \s_vecs_addr_reg_n_0_[20] ;
  wire \s_vecs_addr_reg_n_0_[21] ;
  wire \s_vecs_addr_reg_n_0_[22] ;
  wire \s_vecs_addr_reg_n_0_[23] ;
  wire \s_vecs_addr_reg_n_0_[24] ;
  wire \s_vecs_addr_reg_n_0_[25] ;
  wire \s_vecs_addr_reg_n_0_[26] ;
  wire \s_vecs_addr_reg_n_0_[27] ;
  wire \s_vecs_addr_reg_n_0_[28] ;
  wire \s_vecs_addr_reg_n_0_[29] ;
  wire \s_vecs_addr_reg_n_0_[2] ;
  wire \s_vecs_addr_reg_n_0_[30] ;
  wire \s_vecs_addr_reg_n_0_[31] ;
  wire \s_vecs_addr_reg_n_0_[3] ;
  wire \s_vecs_addr_reg_n_0_[4] ;
  wire \s_vecs_addr_reg_n_0_[5] ;
  wire \s_vecs_addr_reg_n_0_[6] ;
  wire \s_vecs_addr_reg_n_0_[7] ;
  wire \s_vecs_addr_reg_n_0_[8] ;
  wire \s_vecs_addr_reg_n_0_[9] ;
  wire sel;
  wire [31:0]sel0;
  wire t_state;
  wire \t_state1[0]_i_1_n_0 ;
  wire \t_state1[1]_i_1_n_0 ;
  wire \t_state1[2]_i_1_n_0 ;
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
  wire t_state1_carry_i_7_n_0;
  wire t_state1_carry_i_8_n_0;
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
  wire \t_state1_inferred__0/i__carry__2_n_1 ;
  wire \t_state1_inferred__0/i__carry__2_n_2 ;
  wire \t_state1_inferred__0/i__carry__2_n_3 ;
  wire \t_state1_inferred__0/i__carry_n_0 ;
  wire \t_state1_inferred__0/i__carry_n_1 ;
  wire \t_state1_inferred__0/i__carry_n_2 ;
  wire \t_state1_inferred__0/i__carry_n_3 ;
  wire \t_state1_reg_n_0_[1] ;
  wire \t_state1_reg_n_0_[2] ;
  wire \t_state[0]_i_1_n_0 ;
  wire \t_state[1]_i_1_n_0 ;
  wire \t_state[2]_i_1_n_0 ;
  wire \t_state_reg_n_0_[0] ;
  wire \t_state_reg_n_0_[1] ;
  wire \t_state_reg_n_0_[2] ;
  (* RTL_KEEP = "true" *) wire [31:0]\tmp[0]_9 ;
  (* RTL_KEEP = "true" *) wire [31:0]\tmp[1]_11 ;
  (* RTL_KEEP = "true" *) wire [31:0]\tmp[2]_13 ;
  (* RTL_KEEP = "true" *) wire [31:0]\tmp[3]_15 ;
  wire \tmp[4][31]_i_1_n_0 ;
  (* RTL_KEEP = "true" *) wire [31:0]\tmp[4]_1 ;
  (* RTL_KEEP = "true" *) wire [31:0]\tmp[5]_3 ;
  (* RTL_KEEP = "true" *) wire [31:0]\tmp[6]_5 ;
  (* RTL_KEEP = "true" *) wire [31:0]\tmp[7]_7 ;
  wire tmp_sel;
  wire tmp_sel_i_1_n_0;
  wire [3:2]\NLW_bram0b_reg[o][o_addr][31]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_bram0b_reg[o][o_addr][31]_i_1_O_UNCONNECTED ;
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
  wire [3:0]NLW_t_state1_carry_O_UNCONNECTED;
  wire [3:0]NLW_t_state1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_t_state1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_t_state1_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_t_state1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_t_state1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_t_state1_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_t_state1_inferred__0/i__carry__2_O_UNCONNECTED ;

  Mayo_keygen_mayo_linear_combinat_0_0_DSP_Accum DSP_Inst
       (.Q({s_vecs,\FSM_onehot_t_state_reg_n_0_[0] }),
        .\acc_a_reg[3]_0 (s_acc_flush_reg_0),
        .\acc_a_reg[3]_1 (s_main_reg_n_0),
        .\acc_b_reg[3]_0 (\t_state1_reg_n_0_[1] ),
        .\acc_b_reg[3]_1 (\t_state1_reg_n_0_[2] ),
        .\acc_b_reg[3]_2 (s_coeffs),
        .\bram0b[o][o_en] (\bram0b[o][o_en] ),
        .\c_reg[13] (DSP_Inst_n_1),
        .\c_reg[17] (DSP_Inst_n_2),
        .\c_reg[20] (DSP_Inst_n_0),
        .\c_reg[4] (DSP_Inst_n_3),
        .i_clk(i_clk),
        .i_mem0a_dout(i_mem0a_dout[7:0]),
        .i_mem1a_dout(i_mem1a_dout),
        .in0(\s_acc[0]_8 [4:0]),
        .rst(rst),
        .\s_acc[1] (\s_acc[1]_10 [4:0]),
        .\s_acc[2] (\s_acc[2]_12 [4:0]),
        .\s_acc[3] (\s_acc[3]_14 [4:0]),
        .\s_acc[4] (\s_acc[4]_0 [4:0]),
        .\s_acc[5] (\s_acc[5]_2 [4:0]),
        .\s_acc[6] (\s_acc[6]_4 [4:0]),
        .\s_acc[7] (\s_acc[7]_6 [4:0]),
        .s_acc_sel(s_acc_sel),
        .sel0(sel0));
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_t_state[0]_i_1 
       (.I0(\FSM_onehot_t_state_reg_n_0_[5] ),
        .I1(i_enable),
        .I2(\FSM_onehot_t_state_reg_n_0_[0] ),
        .O(\FSM_onehot_t_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_t_state[1]_i_1 
       (.I0(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I1(i_enable),
        .O(s_vecs_addr));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hBFAA)) 
    \FSM_onehot_t_state[2]_i_1 
       (.I0(\bram0a[o][o_en] ),
        .I1(t_state1_carry__2_n_0),
        .I2(sel),
        .I3(s_vecs),
        .O(\FSM_onehot_t_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_t_state[5]_i_1 
       (.I0(\FSM_onehot_t_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_t_state_reg_n_0_[2] ),
        .I2(s_vecs),
        .I3(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I4(\bram0a[o][o_en] ),
        .I5(\FSM_onehot_t_state_reg_n_0_[3] ),
        .O(t_state));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_t_state[5]_i_2 
       (.I0(sel),
        .I1(s_vecs),
        .I2(t_state1_carry__2_n_0),
        .O(\FSM_onehot_t_state[5]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "read4:001000,read2:010000,idle:000001,read1:000010,read3:000100,done:100000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_t_state_reg[0] 
       (.C(i_clk),
        .CE(t_state),
        .D(\FSM_onehot_t_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_t_state_reg_n_0_[0] ),
        .S(rst));
  (* FSM_ENCODED_STATES = "read4:001000,read2:010000,idle:000001,read1:000010,read3:000100,done:100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_t_state_reg[1] 
       (.C(i_clk),
        .CE(t_state),
        .D(s_vecs_addr),
        .Q(\bram0a[o][o_en] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "read4:001000,read2:010000,idle:000001,read1:000010,read3:000100,done:100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_t_state_reg[2] 
       (.C(i_clk),
        .CE(t_state),
        .D(\FSM_onehot_t_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_t_state_reg_n_0_[2] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "read4:001000,read2:010000,idle:000001,read1:000010,read3:000100,done:100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_t_state_reg[3] 
       (.C(i_clk),
        .CE(t_state),
        .D(\FSM_onehot_t_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_t_state_reg_n_0_[3] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "read4:001000,read2:010000,idle:000001,read1:000010,read3:000100,done:100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_t_state_reg[4] 
       (.C(i_clk),
        .CE(t_state),
        .D(\FSM_onehot_t_state_reg_n_0_[3] ),
        .Q(s_vecs),
        .R(rst));
  (* FSM_ENCODED_STATES = "read4:001000,read2:010000,idle:000001,read1:000010,read3:000100,done:100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_t_state_reg[5] 
       (.C(i_clk),
        .CE(t_state),
        .D(\FSM_onehot_t_state[5]_i_2_n_0 ),
        .Q(\FSM_onehot_t_state_reg_n_0_[5] ),
        .R(rst));
  LUT5 #(
    .INIT(32'hFCEC00A0)) 
    \bram0a[o][o_addr][0]_i_1 
       (.I0(o_mem0a_addr[0]),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(t_state1_carry__2_n_0),
        .I4(s_coeffs_addr[0]),
        .O(\bram0a[o][o_addr][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCEC00A0)) 
    \bram0a[o][o_addr][10]_i_1 
       (.I0(plusOp[10]),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(t_state1_carry__2_n_0),
        .I4(s_coeffs_addr[10]),
        .O(\bram0a[o][o_addr][10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCEC00A0)) 
    \bram0a[o][o_addr][11]_i_1 
       (.I0(plusOp[11]),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(t_state1_carry__2_n_0),
        .I4(s_coeffs_addr[11]),
        .O(\bram0a[o][o_addr][11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCEC00A0)) 
    \bram0a[o][o_addr][12]_i_1 
       (.I0(plusOp[12]),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(t_state1_carry__2_n_0),
        .I4(s_coeffs_addr[12]),
        .O(\bram0a[o][o_addr][12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCEC00A0)) 
    \bram0a[o][o_addr][13]_i_1 
       (.I0(plusOp[13]),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(t_state1_carry__2_n_0),
        .I4(s_coeffs_addr[13]),
        .O(\bram0a[o][o_addr][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCEC00A0)) 
    \bram0a[o][o_addr][14]_i_1 
       (.I0(plusOp[14]),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(t_state1_carry__2_n_0),
        .I4(s_coeffs_addr[14]),
        .O(\bram0a[o][o_addr][14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCEC00A0)) 
    \bram0a[o][o_addr][15]_i_1 
       (.I0(plusOp[15]),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(t_state1_carry__2_n_0),
        .I4(s_coeffs_addr[15]),
        .O(\bram0a[o][o_addr][15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCEC00A0)) 
    \bram0a[o][o_addr][16]_i_1 
       (.I0(plusOp[16]),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(t_state1_carry__2_n_0),
        .I4(s_coeffs_addr[16]),
        .O(\bram0a[o][o_addr][16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCEC00A0)) 
    \bram0a[o][o_addr][17]_i_1 
       (.I0(plusOp[17]),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(t_state1_carry__2_n_0),
        .I4(s_coeffs_addr[17]),
        .O(\bram0a[o][o_addr][17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCEC00A0)) 
    \bram0a[o][o_addr][18]_i_1 
       (.I0(plusOp[18]),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(t_state1_carry__2_n_0),
        .I4(s_coeffs_addr[18]),
        .O(\bram0a[o][o_addr][18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCEC00A0)) 
    \bram0a[o][o_addr][19]_i_1 
       (.I0(plusOp[19]),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(t_state1_carry__2_n_0),
        .I4(s_coeffs_addr[19]),
        .O(\bram0a[o][o_addr][19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCEC00A0)) 
    \bram0a[o][o_addr][1]_i_1 
       (.I0(plusOp[1]),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(t_state1_carry__2_n_0),
        .I4(s_coeffs_addr[1]),
        .O(\bram0a[o][o_addr][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCEC00A0)) 
    \bram0a[o][o_addr][20]_i_1 
       (.I0(plusOp[20]),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(t_state1_carry__2_n_0),
        .I4(s_coeffs_addr[20]),
        .O(\bram0a[o][o_addr][20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCEC00A0)) 
    \bram0a[o][o_addr][21]_i_1 
       (.I0(plusOp[21]),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(t_state1_carry__2_n_0),
        .I4(s_coeffs_addr[21]),
        .O(\bram0a[o][o_addr][21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCEC00A0)) 
    \bram0a[o][o_addr][22]_i_1 
       (.I0(plusOp[22]),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(t_state1_carry__2_n_0),
        .I4(s_coeffs_addr[22]),
        .O(\bram0a[o][o_addr][22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCEC00A0)) 
    \bram0a[o][o_addr][23]_i_1 
       (.I0(plusOp[23]),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(t_state1_carry__2_n_0),
        .I4(s_coeffs_addr[23]),
        .O(\bram0a[o][o_addr][23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCEC00A0)) 
    \bram0a[o][o_addr][24]_i_1 
       (.I0(plusOp[24]),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(t_state1_carry__2_n_0),
        .I4(s_coeffs_addr[24]),
        .O(\bram0a[o][o_addr][24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCEC00A0)) 
    \bram0a[o][o_addr][25]_i_1 
       (.I0(plusOp[25]),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(t_state1_carry__2_n_0),
        .I4(s_coeffs_addr[25]),
        .O(\bram0a[o][o_addr][25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCEC00A0)) 
    \bram0a[o][o_addr][26]_i_1 
       (.I0(plusOp[26]),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(t_state1_carry__2_n_0),
        .I4(s_coeffs_addr[26]),
        .O(\bram0a[o][o_addr][26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCEC00A0)) 
    \bram0a[o][o_addr][27]_i_1 
       (.I0(plusOp[27]),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(t_state1_carry__2_n_0),
        .I4(s_coeffs_addr[27]),
        .O(\bram0a[o][o_addr][27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCEC00A0)) 
    \bram0a[o][o_addr][28]_i_1 
       (.I0(plusOp[28]),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(t_state1_carry__2_n_0),
        .I4(s_coeffs_addr[28]),
        .O(\bram0a[o][o_addr][28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCEC00A0)) 
    \bram0a[o][o_addr][29]_i_1 
       (.I0(plusOp[29]),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(t_state1_carry__2_n_0),
        .I4(s_coeffs_addr[29]),
        .O(\bram0a[o][o_addr][29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCEC00A0)) 
    \bram0a[o][o_addr][2]_i_1 
       (.I0(plusOp[2]),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(t_state1_carry__2_n_0),
        .I4(s_coeffs_addr[2]),
        .O(\bram0a[o][o_addr][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCEC00A0)) 
    \bram0a[o][o_addr][30]_i_1 
       (.I0(plusOp[30]),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(t_state1_carry__2_n_0),
        .I4(s_coeffs_addr[30]),
        .O(\bram0a[o][o_addr][30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h33332220)) 
    \bram0a[o][o_addr][31]_i_1 
       (.I0(s_vecs),
        .I1(rst),
        .I2(t_state1_carry__2_n_0),
        .I3(c1_carry__2_n_0),
        .I4(\bram0a[o][o_en] ),
        .O(\bram0a[o][o_addr][31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCEC00A0)) 
    \bram0a[o][o_addr][31]_i_2 
       (.I0(plusOp[31]),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(t_state1_carry__2_n_0),
        .I4(s_coeffs_addr[31]),
        .O(\bram0a[o][o_addr][31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFCEC00A0)) 
    \bram0a[o][o_addr][3]_i_1 
       (.I0(plusOp[3]),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(t_state1_carry__2_n_0),
        .I4(s_coeffs_addr[3]),
        .O(\bram0a[o][o_addr][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCEC00A0)) 
    \bram0a[o][o_addr][4]_i_1 
       (.I0(plusOp[4]),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(t_state1_carry__2_n_0),
        .I4(s_coeffs_addr[4]),
        .O(\bram0a[o][o_addr][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCEC00A0)) 
    \bram0a[o][o_addr][5]_i_1 
       (.I0(plusOp[5]),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(t_state1_carry__2_n_0),
        .I4(s_coeffs_addr[5]),
        .O(\bram0a[o][o_addr][5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCEC00A0)) 
    \bram0a[o][o_addr][6]_i_1 
       (.I0(plusOp[6]),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(t_state1_carry__2_n_0),
        .I4(s_coeffs_addr[6]),
        .O(\bram0a[o][o_addr][6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCEC00A0)) 
    \bram0a[o][o_addr][7]_i_1 
       (.I0(plusOp[7]),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(t_state1_carry__2_n_0),
        .I4(s_coeffs_addr[7]),
        .O(\bram0a[o][o_addr][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCEC00A0)) 
    \bram0a[o][o_addr][8]_i_1 
       (.I0(plusOp[8]),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(t_state1_carry__2_n_0),
        .I4(s_coeffs_addr[8]),
        .O(\bram0a[o][o_addr][8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCEC00A0)) 
    \bram0a[o][o_addr][9]_i_1 
       (.I0(plusOp[9]),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(t_state1_carry__2_n_0),
        .I4(s_coeffs_addr[9]),
        .O(\bram0a[o][o_addr][9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF44)) 
    \bram0a[o][o_en]_i_1 
       (.I0(rst),
        .I1(\bram0a[o][o_en] ),
        .I2(\FSM_onehot_t_state_reg_n_0_[5] ),
        .I3(o_mem0a_en),
        .O(\bram0a[o][o_en]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][0] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][0]_i_1_n_0 ),
        .Q(o_mem0a_addr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][10] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][10]_i_1_n_0 ),
        .Q(o_mem0a_addr[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][11] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][11]_i_1_n_0 ),
        .Q(o_mem0a_addr[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][12] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][12]_i_1_n_0 ),
        .Q(o_mem0a_addr[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][13] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][13]_i_1_n_0 ),
        .Q(o_mem0a_addr[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][14] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][14]_i_1_n_0 ),
        .Q(o_mem0a_addr[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][15] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][15]_i_1_n_0 ),
        .Q(o_mem0a_addr[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][16] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][16]_i_1_n_0 ),
        .Q(o_mem0a_addr[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][17] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][17]_i_1_n_0 ),
        .Q(o_mem0a_addr[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][18] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][18]_i_1_n_0 ),
        .Q(o_mem0a_addr[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][19] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][19]_i_1_n_0 ),
        .Q(o_mem0a_addr[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][1] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][1]_i_1_n_0 ),
        .Q(o_mem0a_addr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][20] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][20]_i_1_n_0 ),
        .Q(o_mem0a_addr[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][21] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][21]_i_1_n_0 ),
        .Q(o_mem0a_addr[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][22] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][22]_i_1_n_0 ),
        .Q(o_mem0a_addr[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][23] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][23]_i_1_n_0 ),
        .Q(o_mem0a_addr[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][24] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][24]_i_1_n_0 ),
        .Q(o_mem0a_addr[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][25] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][25]_i_1_n_0 ),
        .Q(o_mem0a_addr[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][26] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][26]_i_1_n_0 ),
        .Q(o_mem0a_addr[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][27] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][27]_i_1_n_0 ),
        .Q(o_mem0a_addr[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][28] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][28]_i_1_n_0 ),
        .Q(o_mem0a_addr[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][29] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][29]_i_1_n_0 ),
        .Q(o_mem0a_addr[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][2] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][2]_i_1_n_0 ),
        .Q(o_mem0a_addr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][30] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][30]_i_1_n_0 ),
        .Q(o_mem0a_addr[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][31] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][31]_i_2_n_0 ),
        .Q(o_mem0a_addr[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][3] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][3]_i_1_n_0 ),
        .Q(o_mem0a_addr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][4] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][4]_i_1_n_0 ),
        .Q(o_mem0a_addr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][5] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][5]_i_1_n_0 ),
        .Q(o_mem0a_addr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][6] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][6]_i_1_n_0 ),
        .Q(o_mem0a_addr[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][7] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][7]_i_1_n_0 ),
        .Q(o_mem0a_addr[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][8] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][8]_i_1_n_0 ),
        .Q(o_mem0a_addr[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][9] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][9]_i_1_n_0 ),
        .Q(o_mem0a_addr[9]),
        .R(1'b0));
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
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][0]_i_1 
       (.I0(\tmp[0]_9 [0]),
        .I1(tmp_sel),
        .I2(\tmp[4]_1 [0]),
        .O(\bram0b[o][o_din][0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][10]_i_1 
       (.I0(\tmp[1]_11 [2]),
        .I1(tmp_sel),
        .I2(\tmp[5]_3 [2]),
        .O(\bram0b[o][o_din][10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][11]_i_1 
       (.I0(\tmp[1]_11 [3]),
        .I1(tmp_sel),
        .I2(\tmp[5]_3 [3]),
        .O(\bram0b[o][o_din][11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][12]_i_1 
       (.I0(\tmp[1]_11 [4]),
        .I1(tmp_sel),
        .I2(\tmp[5]_3 [4]),
        .O(\bram0b[o][o_din][12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][13]_i_1 
       (.I0(\tmp[1]_11 [5]),
        .I1(tmp_sel),
        .I2(\tmp[5]_3 [5]),
        .O(\bram0b[o][o_din][13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][14]_i_1 
       (.I0(\tmp[1]_11 [6]),
        .I1(tmp_sel),
        .I2(\tmp[5]_3 [6]),
        .O(\bram0b[o][o_din][14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][15]_i_1 
       (.I0(\tmp[1]_11 [7]),
        .I1(tmp_sel),
        .I2(\tmp[5]_3 [7]),
        .O(\bram0b[o][o_din][15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][16]_i_1 
       (.I0(\tmp[2]_13 [0]),
        .I1(tmp_sel),
        .I2(\tmp[6]_5 [0]),
        .O(\bram0b[o][o_din][16]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][17]_i_1 
       (.I0(\tmp[2]_13 [1]),
        .I1(tmp_sel),
        .I2(\tmp[6]_5 [1]),
        .O(\bram0b[o][o_din][17]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][18]_i_1 
       (.I0(\tmp[2]_13 [2]),
        .I1(tmp_sel),
        .I2(\tmp[6]_5 [2]),
        .O(\bram0b[o][o_din][18]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][19]_i_1 
       (.I0(\tmp[2]_13 [3]),
        .I1(tmp_sel),
        .I2(\tmp[6]_5 [3]),
        .O(\bram0b[o][o_din][19]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][1]_i_1 
       (.I0(\tmp[0]_9 [1]),
        .I1(tmp_sel),
        .I2(\tmp[4]_1 [1]),
        .O(\bram0b[o][o_din][1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][20]_i_1 
       (.I0(\tmp[2]_13 [4]),
        .I1(tmp_sel),
        .I2(\tmp[6]_5 [4]),
        .O(\bram0b[o][o_din][20]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][21]_i_1 
       (.I0(\tmp[2]_13 [5]),
        .I1(tmp_sel),
        .I2(\tmp[6]_5 [5]),
        .O(\bram0b[o][o_din][21]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][22]_i_1 
       (.I0(\tmp[2]_13 [6]),
        .I1(tmp_sel),
        .I2(\tmp[6]_5 [6]),
        .O(\bram0b[o][o_din][22]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][23]_i_1 
       (.I0(\tmp[2]_13 [7]),
        .I1(tmp_sel),
        .I2(\tmp[6]_5 [7]),
        .O(\bram0b[o][o_din][23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][24]_i_1 
       (.I0(\tmp[3]_15 [0]),
        .I1(tmp_sel),
        .I2(\tmp[7]_7 [0]),
        .O(\bram0b[o][o_din][24]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][25]_i_1 
       (.I0(\tmp[3]_15 [1]),
        .I1(tmp_sel),
        .I2(\tmp[7]_7 [1]),
        .O(\bram0b[o][o_din][25]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][26]_i_1 
       (.I0(\tmp[3]_15 [2]),
        .I1(tmp_sel),
        .I2(\tmp[7]_7 [2]),
        .O(\bram0b[o][o_din][26]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][27]_i_1 
       (.I0(\tmp[3]_15 [3]),
        .I1(tmp_sel),
        .I2(\tmp[7]_7 [3]),
        .O(\bram0b[o][o_din][27]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][28]_i_1 
       (.I0(\tmp[3]_15 [4]),
        .I1(tmp_sel),
        .I2(\tmp[7]_7 [4]),
        .O(\bram0b[o][o_din][28]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][29]_i_1 
       (.I0(\tmp[3]_15 [5]),
        .I1(tmp_sel),
        .I2(\tmp[7]_7 [5]),
        .O(\bram0b[o][o_din][29]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][2]_i_1 
       (.I0(\tmp[0]_9 [2]),
        .I1(tmp_sel),
        .I2(\tmp[4]_1 [2]),
        .O(\bram0b[o][o_din][2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][30]_i_1 
       (.I0(\tmp[3]_15 [6]),
        .I1(tmp_sel),
        .I2(\tmp[7]_7 [6]),
        .O(\bram0b[o][o_din][30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \bram0b[o][o_din][31]_i_1 
       (.I0(rst),
        .I1(\t_state1_reg_n_0_[1] ),
        .I2(\t_state1_reg_n_0_[2] ),
        .I3(\bram0b[o][o_en] ),
        .O(\bram0b[o][o_din][31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][31]_i_2 
       (.I0(\tmp[3]_15 [7]),
        .I1(tmp_sel),
        .I2(\tmp[7]_7 [7]),
        .O(\bram0b[o][o_din][31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][3]_i_1 
       (.I0(\tmp[0]_9 [3]),
        .I1(tmp_sel),
        .I2(\tmp[4]_1 [3]),
        .O(\bram0b[o][o_din][3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][4]_i_1 
       (.I0(\tmp[0]_9 [4]),
        .I1(tmp_sel),
        .I2(\tmp[4]_1 [4]),
        .O(\bram0b[o][o_din][4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][5]_i_1 
       (.I0(\tmp[0]_9 [5]),
        .I1(tmp_sel),
        .I2(\tmp[4]_1 [5]),
        .O(\bram0b[o][o_din][5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][6]_i_1 
       (.I0(\tmp[0]_9 [6]),
        .I1(tmp_sel),
        .I2(\tmp[4]_1 [6]),
        .O(\bram0b[o][o_din][6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][7]_i_1 
       (.I0(\tmp[0]_9 [7]),
        .I1(tmp_sel),
        .I2(\tmp[4]_1 [7]),
        .O(\bram0b[o][o_din][7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][8]_i_1 
       (.I0(\tmp[1]_11 [0]),
        .I1(tmp_sel),
        .I2(\tmp[5]_3 [0]),
        .O(\bram0b[o][o_din][8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][9]_i_1 
       (.I0(\tmp[1]_11 [1]),
        .I1(tmp_sel),
        .I2(\tmp[5]_3 [1]),
        .O(\bram0b[o][o_din][9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEE0100)) 
    \bram0b[o][o_we][3]_i_1 
       (.I0(rst),
        .I1(\t_state1_reg_n_0_[1] ),
        .I2(\t_state1_reg_n_0_[2] ),
        .I3(\bram0b[o][o_en] ),
        .I4(o_mem0b_we),
        .O(\bram0b[o][o_we][3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][0] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_addr][0]_i_1_n_0 ),
        .Q(o_mem0b_addr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][10] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][12]_i_1_n_6 ),
        .Q(o_mem0b_addr[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][11] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][12]_i_1_n_5 ),
        .Q(o_mem0b_addr[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][12] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
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
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][13] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][16]_i_1_n_7 ),
        .Q(o_mem0b_addr[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][14] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][16]_i_1_n_6 ),
        .Q(o_mem0b_addr[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][15] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][16]_i_1_n_5 ),
        .Q(o_mem0b_addr[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][16] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
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
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][17] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][20]_i_1_n_7 ),
        .Q(o_mem0b_addr[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][18] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][20]_i_1_n_6 ),
        .Q(o_mem0b_addr[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][19] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][20]_i_1_n_5 ),
        .Q(o_mem0b_addr[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][1] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][4]_i_1_n_7 ),
        .Q(o_mem0b_addr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][20] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
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
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][21] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][24]_i_1_n_7 ),
        .Q(o_mem0b_addr[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][22] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][24]_i_1_n_6 ),
        .Q(o_mem0b_addr[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][23] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][24]_i_1_n_5 ),
        .Q(o_mem0b_addr[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][24] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
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
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][25] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][28]_i_1_n_7 ),
        .Q(o_mem0b_addr[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][26] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][28]_i_1_n_6 ),
        .Q(o_mem0b_addr[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][27] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][28]_i_1_n_5 ),
        .Q(o_mem0b_addr[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][28] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
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
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][29] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][31]_i_1_n_7 ),
        .Q(o_mem0b_addr[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][2] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][4]_i_1_n_6 ),
        .Q(o_mem0b_addr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][30] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][31]_i_1_n_6 ),
        .Q(o_mem0b_addr[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][31] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
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
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][3] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][4]_i_1_n_5 ),
        .Q(o_mem0b_addr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][4] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
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
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][5] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][8]_i_1_n_7 ),
        .Q(o_mem0b_addr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][6] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][8]_i_1_n_6 ),
        .Q(o_mem0b_addr[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][7] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][8]_i_1_n_5 ),
        .Q(o_mem0b_addr[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][8] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
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
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][9] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b_reg[o][o_addr][12]_i_1_n_7 ),
        .Q(o_mem0b_addr[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][0] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din][0]_i_1_n_0 ),
        .Q(o_mem0b_din[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][10] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din][10]_i_1_n_0 ),
        .Q(o_mem0b_din[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][11] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din][11]_i_1_n_0 ),
        .Q(o_mem0b_din[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][12] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din][12]_i_1_n_0 ),
        .Q(o_mem0b_din[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][13] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din][13]_i_1_n_0 ),
        .Q(o_mem0b_din[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][14] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din][14]_i_1_n_0 ),
        .Q(o_mem0b_din[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][15] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din][15]_i_1_n_0 ),
        .Q(o_mem0b_din[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][16] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din][16]_i_1_n_0 ),
        .Q(o_mem0b_din[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][17] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din][17]_i_1_n_0 ),
        .Q(o_mem0b_din[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][18] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din][18]_i_1_n_0 ),
        .Q(o_mem0b_din[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][19] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din][19]_i_1_n_0 ),
        .Q(o_mem0b_din[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][1] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din][1]_i_1_n_0 ),
        .Q(o_mem0b_din[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][20] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din][20]_i_1_n_0 ),
        .Q(o_mem0b_din[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][21] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din][21]_i_1_n_0 ),
        .Q(o_mem0b_din[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][22] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din][22]_i_1_n_0 ),
        .Q(o_mem0b_din[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][23] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din][23]_i_1_n_0 ),
        .Q(o_mem0b_din[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][24] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din][24]_i_1_n_0 ),
        .Q(o_mem0b_din[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][25] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din][25]_i_1_n_0 ),
        .Q(o_mem0b_din[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][26] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din][26]_i_1_n_0 ),
        .Q(o_mem0b_din[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][27] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din][27]_i_1_n_0 ),
        .Q(o_mem0b_din[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][28] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din][28]_i_1_n_0 ),
        .Q(o_mem0b_din[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][29] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din][29]_i_1_n_0 ),
        .Q(o_mem0b_din[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][2] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din][2]_i_1_n_0 ),
        .Q(o_mem0b_din[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][30] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din][30]_i_1_n_0 ),
        .Q(o_mem0b_din[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][31] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din][31]_i_2_n_0 ),
        .Q(o_mem0b_din[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][3] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din][3]_i_1_n_0 ),
        .Q(o_mem0b_din[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][4] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din][4]_i_1_n_0 ),
        .Q(o_mem0b_din[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][5] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din][5]_i_1_n_0 ),
        .Q(o_mem0b_din[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][6] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din][6]_i_1_n_0 ),
        .Q(o_mem0b_din[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][7] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din][7]_i_1_n_0 ),
        .Q(o_mem0b_din[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][8] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din][8]_i_1_n_0 ),
        .Q(o_mem0b_din[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][9] 
       (.C(i_clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din][9]_i_1_n_0 ),
        .Q(o_mem0b_din[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_we][3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\bram0b[o][o_we][3]_i_1_n_0 ),
        .Q(o_mem0b_we),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \bram1a[o][o_addr][0]_i_1 
       (.I0(\s_vecs_addr_reg_n_0_[0] ),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(plusOp1_in[0]),
        .I4(t_state1_carry__2_n_0),
        .I5(o_mem1a_addr[0]),
        .O(\bram1a[o][o_addr][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \bram1a[o][o_addr][10]_i_1 
       (.I0(\s_vecs_addr_reg_n_0_[10] ),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(plusOp1_in[10]),
        .I4(t_state1_carry__2_n_0),
        .I5(\plusOp_inferred__0/i__carry__1_n_6 ),
        .O(\bram1a[o][o_addr][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \bram1a[o][o_addr][11]_i_1 
       (.I0(\s_vecs_addr_reg_n_0_[11] ),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(plusOp1_in[11]),
        .I4(t_state1_carry__2_n_0),
        .I5(\plusOp_inferred__0/i__carry__1_n_5 ),
        .O(\bram1a[o][o_addr][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \bram1a[o][o_addr][12]_i_1 
       (.I0(\s_vecs_addr_reg_n_0_[12] ),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(plusOp1_in[12]),
        .I4(t_state1_carry__2_n_0),
        .I5(\plusOp_inferred__0/i__carry__1_n_4 ),
        .O(\bram1a[o][o_addr][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \bram1a[o][o_addr][13]_i_1 
       (.I0(\s_vecs_addr_reg_n_0_[13] ),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(plusOp1_in[13]),
        .I4(t_state1_carry__2_n_0),
        .I5(\plusOp_inferred__0/i__carry__2_n_7 ),
        .O(\bram1a[o][o_addr][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \bram1a[o][o_addr][14]_i_1 
       (.I0(\s_vecs_addr_reg_n_0_[14] ),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(plusOp1_in[14]),
        .I4(t_state1_carry__2_n_0),
        .I5(\plusOp_inferred__0/i__carry__2_n_6 ),
        .O(\bram1a[o][o_addr][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \bram1a[o][o_addr][15]_i_1 
       (.I0(\s_vecs_addr_reg_n_0_[15] ),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(plusOp1_in[15]),
        .I4(t_state1_carry__2_n_0),
        .I5(\plusOp_inferred__0/i__carry__2_n_5 ),
        .O(\bram1a[o][o_addr][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \bram1a[o][o_addr][16]_i_1 
       (.I0(\s_vecs_addr_reg_n_0_[16] ),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(plusOp1_in[16]),
        .I4(t_state1_carry__2_n_0),
        .I5(\plusOp_inferred__0/i__carry__2_n_4 ),
        .O(\bram1a[o][o_addr][16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \bram1a[o][o_addr][17]_i_1 
       (.I0(\s_vecs_addr_reg_n_0_[17] ),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(plusOp1_in[17]),
        .I4(t_state1_carry__2_n_0),
        .I5(\plusOp_inferred__0/i__carry__3_n_7 ),
        .O(\bram1a[o][o_addr][17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \bram1a[o][o_addr][18]_i_1 
       (.I0(\s_vecs_addr_reg_n_0_[18] ),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(plusOp1_in[18]),
        .I4(t_state1_carry__2_n_0),
        .I5(\plusOp_inferred__0/i__carry__3_n_6 ),
        .O(\bram1a[o][o_addr][18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \bram1a[o][o_addr][19]_i_1 
       (.I0(\s_vecs_addr_reg_n_0_[19] ),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(plusOp1_in[19]),
        .I4(t_state1_carry__2_n_0),
        .I5(\plusOp_inferred__0/i__carry__3_n_5 ),
        .O(\bram1a[o][o_addr][19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \bram1a[o][o_addr][1]_i_1 
       (.I0(\s_vecs_addr_reg_n_0_[1] ),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(plusOp1_in[1]),
        .I4(t_state1_carry__2_n_0),
        .I5(\plusOp_inferred__0/i__carry_n_7 ),
        .O(\bram1a[o][o_addr][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \bram1a[o][o_addr][20]_i_1 
       (.I0(\s_vecs_addr_reg_n_0_[20] ),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(plusOp1_in[20]),
        .I4(t_state1_carry__2_n_0),
        .I5(\plusOp_inferred__0/i__carry__3_n_4 ),
        .O(\bram1a[o][o_addr][20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \bram1a[o][o_addr][21]_i_1 
       (.I0(\s_vecs_addr_reg_n_0_[21] ),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(plusOp1_in[21]),
        .I4(t_state1_carry__2_n_0),
        .I5(\plusOp_inferred__0/i__carry__4_n_7 ),
        .O(\bram1a[o][o_addr][21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \bram1a[o][o_addr][22]_i_1 
       (.I0(\s_vecs_addr_reg_n_0_[22] ),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(plusOp1_in[22]),
        .I4(t_state1_carry__2_n_0),
        .I5(\plusOp_inferred__0/i__carry__4_n_6 ),
        .O(\bram1a[o][o_addr][22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \bram1a[o][o_addr][23]_i_1 
       (.I0(\s_vecs_addr_reg_n_0_[23] ),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(plusOp1_in[23]),
        .I4(t_state1_carry__2_n_0),
        .I5(\plusOp_inferred__0/i__carry__4_n_5 ),
        .O(\bram1a[o][o_addr][23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \bram1a[o][o_addr][24]_i_1 
       (.I0(\s_vecs_addr_reg_n_0_[24] ),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(plusOp1_in[24]),
        .I4(t_state1_carry__2_n_0),
        .I5(\plusOp_inferred__0/i__carry__4_n_4 ),
        .O(\bram1a[o][o_addr][24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \bram1a[o][o_addr][25]_i_1 
       (.I0(\s_vecs_addr_reg_n_0_[25] ),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(plusOp1_in[25]),
        .I4(t_state1_carry__2_n_0),
        .I5(\plusOp_inferred__0/i__carry__5_n_7 ),
        .O(\bram1a[o][o_addr][25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \bram1a[o][o_addr][26]_i_1 
       (.I0(\s_vecs_addr_reg_n_0_[26] ),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(plusOp1_in[26]),
        .I4(t_state1_carry__2_n_0),
        .I5(\plusOp_inferred__0/i__carry__5_n_6 ),
        .O(\bram1a[o][o_addr][26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \bram1a[o][o_addr][27]_i_1 
       (.I0(\s_vecs_addr_reg_n_0_[27] ),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(plusOp1_in[27]),
        .I4(t_state1_carry__2_n_0),
        .I5(\plusOp_inferred__0/i__carry__5_n_5 ),
        .O(\bram1a[o][o_addr][27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \bram1a[o][o_addr][28]_i_1 
       (.I0(\s_vecs_addr_reg_n_0_[28] ),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(plusOp1_in[28]),
        .I4(t_state1_carry__2_n_0),
        .I5(\plusOp_inferred__0/i__carry__5_n_4 ),
        .O(\bram1a[o][o_addr][28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \bram1a[o][o_addr][29]_i_1 
       (.I0(\s_vecs_addr_reg_n_0_[29] ),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(plusOp1_in[29]),
        .I4(t_state1_carry__2_n_0),
        .I5(\plusOp_inferred__0/i__carry__6_n_7 ),
        .O(\bram1a[o][o_addr][29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \bram1a[o][o_addr][2]_i_1 
       (.I0(\s_vecs_addr_reg_n_0_[2] ),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(plusOp1_in[2]),
        .I4(t_state1_carry__2_n_0),
        .I5(\plusOp_inferred__0/i__carry_n_6 ),
        .O(\bram1a[o][o_addr][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \bram1a[o][o_addr][30]_i_1 
       (.I0(\s_vecs_addr_reg_n_0_[30] ),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(plusOp1_in[30]),
        .I4(t_state1_carry__2_n_0),
        .I5(\plusOp_inferred__0/i__carry__6_n_6 ),
        .O(\bram1a[o][o_addr][30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    \bram1a[o][o_addr][31]_i_1 
       (.I0(rst),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .O(\bram1a[o][o_addr][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \bram1a[o][o_addr][31]_i_2 
       (.I0(\s_vecs_addr_reg_n_0_[31] ),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(plusOp1_in[31]),
        .I4(t_state1_carry__2_n_0),
        .I5(\plusOp_inferred__0/i__carry__6_n_5 ),
        .O(\bram1a[o][o_addr][31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \bram1a[o][o_addr][3]_i_1 
       (.I0(\s_vecs_addr_reg_n_0_[3] ),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(plusOp1_in[3]),
        .I4(t_state1_carry__2_n_0),
        .I5(\plusOp_inferred__0/i__carry_n_5 ),
        .O(\bram1a[o][o_addr][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \bram1a[o][o_addr][4]_i_1 
       (.I0(\s_vecs_addr_reg_n_0_[4] ),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(plusOp1_in[4]),
        .I4(t_state1_carry__2_n_0),
        .I5(\plusOp_inferred__0/i__carry_n_4 ),
        .O(\bram1a[o][o_addr][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \bram1a[o][o_addr][5]_i_1 
       (.I0(\s_vecs_addr_reg_n_0_[5] ),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(plusOp1_in[5]),
        .I4(t_state1_carry__2_n_0),
        .I5(\plusOp_inferred__0/i__carry__0_n_7 ),
        .O(\bram1a[o][o_addr][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \bram1a[o][o_addr][6]_i_1 
       (.I0(\s_vecs_addr_reg_n_0_[6] ),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(plusOp1_in[6]),
        .I4(t_state1_carry__2_n_0),
        .I5(\plusOp_inferred__0/i__carry__0_n_6 ),
        .O(\bram1a[o][o_addr][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \bram1a[o][o_addr][7]_i_1 
       (.I0(\s_vecs_addr_reg_n_0_[7] ),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(plusOp1_in[7]),
        .I4(t_state1_carry__2_n_0),
        .I5(\plusOp_inferred__0/i__carry__0_n_5 ),
        .O(\bram1a[o][o_addr][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \bram1a[o][o_addr][8]_i_1 
       (.I0(\s_vecs_addr_reg_n_0_[8] ),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(plusOp1_in[8]),
        .I4(t_state1_carry__2_n_0),
        .I5(\plusOp_inferred__0/i__carry__0_n_4 ),
        .O(\bram1a[o][o_addr][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \bram1a[o][o_addr][9]_i_1 
       (.I0(\s_vecs_addr_reg_n_0_[9] ),
        .I1(\bram0a[o][o_en] ),
        .I2(s_vecs),
        .I3(plusOp1_in[9]),
        .I4(t_state1_carry__2_n_0),
        .I5(\plusOp_inferred__0/i__carry__1_n_7 ),
        .O(\bram1a[o][o_addr][9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][0] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][0]_i_1_n_0 ),
        .Q(o_mem1a_addr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][10] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][10]_i_1_n_0 ),
        .Q(o_mem1a_addr[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][11] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][11]_i_1_n_0 ),
        .Q(o_mem1a_addr[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][12] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][12]_i_1_n_0 ),
        .Q(o_mem1a_addr[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][13] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][13]_i_1_n_0 ),
        .Q(o_mem1a_addr[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][14] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][14]_i_1_n_0 ),
        .Q(o_mem1a_addr[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][15] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][15]_i_1_n_0 ),
        .Q(o_mem1a_addr[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][16] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][16]_i_1_n_0 ),
        .Q(o_mem1a_addr[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][17] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][17]_i_1_n_0 ),
        .Q(o_mem1a_addr[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][18] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][18]_i_1_n_0 ),
        .Q(o_mem1a_addr[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][19] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][19]_i_1_n_0 ),
        .Q(o_mem1a_addr[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][1] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][1]_i_1_n_0 ),
        .Q(o_mem1a_addr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][20] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][20]_i_1_n_0 ),
        .Q(o_mem1a_addr[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][21] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][21]_i_1_n_0 ),
        .Q(o_mem1a_addr[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][22] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][22]_i_1_n_0 ),
        .Q(o_mem1a_addr[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][23] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][23]_i_1_n_0 ),
        .Q(o_mem1a_addr[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][24] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][24]_i_1_n_0 ),
        .Q(o_mem1a_addr[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][25] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][25]_i_1_n_0 ),
        .Q(o_mem1a_addr[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][26] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][26]_i_1_n_0 ),
        .Q(o_mem1a_addr[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][27] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][27]_i_1_n_0 ),
        .Q(o_mem1a_addr[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][28] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][28]_i_1_n_0 ),
        .Q(o_mem1a_addr[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][29] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][29]_i_1_n_0 ),
        .Q(o_mem1a_addr[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][2] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][2]_i_1_n_0 ),
        .Q(o_mem1a_addr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][30] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][30]_i_1_n_0 ),
        .Q(o_mem1a_addr[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][31] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][31]_i_2_n_0 ),
        .Q(o_mem1a_addr[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][3] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][3]_i_1_n_0 ),
        .Q(o_mem1a_addr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][4] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][4]_i_1_n_0 ),
        .Q(o_mem1a_addr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][5] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][5]_i_1_n_0 ),
        .Q(o_mem1a_addr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][6] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][6]_i_1_n_0 ),
        .Q(o_mem1a_addr[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][7] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][7]_i_1_n_0 ),
        .Q(o_mem1a_addr[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][8] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][8]_i_1_n_0 ),
        .Q(o_mem1a_addr[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][9] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][9]_i_1_n_0 ),
        .Q(o_mem1a_addr[9]),
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
       (.I0(sel0[15]),
        .I1(sel0[14]),
        .O(c1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    c1_carry__0_i_6
       (.I0(sel0[13]),
        .I1(sel0[12]),
        .O(c1_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    c1_carry__0_i_7
       (.I0(sel0[11]),
        .I1(sel0[10]),
        .O(c1_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    c1_carry__0_i_8
       (.I0(sel0[9]),
        .I1(sel0[8]),
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
       (.I0(sel0[19]),
        .I1(sel0[18]),
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
       (.I0(sel0[23]),
        .I1(sel0[22]),
        .O(c1_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    c1_carry__1_i_6
       (.I0(sel0[21]),
        .I1(sel0[20]),
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
       (.I0(sel0[17]),
        .I1(sel0[16]),
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
       (.I0(sel0[31]),
        .I1(sel0[30]),
        .O(c1_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    c1_carry__2_i_6
       (.I0(sel0[29]),
        .I1(sel0[28]),
        .O(c1_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    c1_carry__2_i_7
       (.I0(sel0[27]),
        .I1(sel0[26]),
        .O(c1_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    c1_carry__2_i_8
       (.I0(sel0[25]),
        .I1(sel0[24]),
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
       (.I0(sel0[7]),
        .I1(sel0[6]),
        .O(c1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    c1_carry_i_5
       (.I0(sel0[5]),
        .I1(sel0[4]),
        .O(c1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    c1_carry_i_6
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .O(c1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    c1_carry_i_7
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .O(c1_carry_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \c[0]_i_1 
       (.I0(sel0[0]),
        .O(\c[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3333232300302020)) 
    \c[31]_i_1 
       (.I0(c1_carry__2_n_0),
        .I1(rst),
        .I2(s_vecs),
        .I3(sel),
        .I4(t_state1_carry__2_n_0),
        .I5(\FSM_onehot_t_state_reg_n_0_[0] ),
        .O(\c[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000BFAA)) 
    \c[31]_i_2 
       (.I0(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I1(t_state1_carry__2_n_0),
        .I2(sel),
        .I3(s_vecs),
        .I4(rst),
        .O(\c[31]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[0] 
       (.C(i_clk),
        .CE(\c[31]_i_2_n_0 ),
        .D(\c[0]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(\c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[10] 
       (.C(i_clk),
        .CE(\c[31]_i_2_n_0 ),
        .D(c0[10]),
        .Q(sel0[10]),
        .R(\c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[11] 
       (.C(i_clk),
        .CE(\c[31]_i_2_n_0 ),
        .D(c0[11]),
        .Q(sel0[11]),
        .R(\c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[12] 
       (.C(i_clk),
        .CE(\c[31]_i_2_n_0 ),
        .D(c0[12]),
        .Q(sel0[12]),
        .R(\c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[13] 
       (.C(i_clk),
        .CE(\c[31]_i_2_n_0 ),
        .D(c0[13]),
        .Q(sel0[13]),
        .R(\c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[14] 
       (.C(i_clk),
        .CE(\c[31]_i_2_n_0 ),
        .D(c0[14]),
        .Q(sel0[14]),
        .R(\c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[15] 
       (.C(i_clk),
        .CE(\c[31]_i_2_n_0 ),
        .D(c0[15]),
        .Q(sel0[15]),
        .R(\c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[16] 
       (.C(i_clk),
        .CE(\c[31]_i_2_n_0 ),
        .D(c0[16]),
        .Q(sel0[16]),
        .R(\c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[17] 
       (.C(i_clk),
        .CE(\c[31]_i_2_n_0 ),
        .D(c0[17]),
        .Q(sel0[17]),
        .R(\c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[18] 
       (.C(i_clk),
        .CE(\c[31]_i_2_n_0 ),
        .D(c0[18]),
        .Q(sel0[18]),
        .R(\c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[19] 
       (.C(i_clk),
        .CE(\c[31]_i_2_n_0 ),
        .D(c0[19]),
        .Q(sel0[19]),
        .R(\c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[1] 
       (.C(i_clk),
        .CE(\c[31]_i_2_n_0 ),
        .D(c0[1]),
        .Q(sel0[1]),
        .R(\c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[20] 
       (.C(i_clk),
        .CE(\c[31]_i_2_n_0 ),
        .D(c0[20]),
        .Q(sel0[20]),
        .R(\c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[21] 
       (.C(i_clk),
        .CE(\c[31]_i_2_n_0 ),
        .D(c0[21]),
        .Q(sel0[21]),
        .R(\c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[22] 
       (.C(i_clk),
        .CE(\c[31]_i_2_n_0 ),
        .D(c0[22]),
        .Q(sel0[22]),
        .R(\c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[23] 
       (.C(i_clk),
        .CE(\c[31]_i_2_n_0 ),
        .D(c0[23]),
        .Q(sel0[23]),
        .R(\c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[24] 
       (.C(i_clk),
        .CE(\c[31]_i_2_n_0 ),
        .D(c0[24]),
        .Q(sel0[24]),
        .R(\c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[25] 
       (.C(i_clk),
        .CE(\c[31]_i_2_n_0 ),
        .D(c0[25]),
        .Q(sel0[25]),
        .R(\c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[26] 
       (.C(i_clk),
        .CE(\c[31]_i_2_n_0 ),
        .D(c0[26]),
        .Q(sel0[26]),
        .R(\c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[27] 
       (.C(i_clk),
        .CE(\c[31]_i_2_n_0 ),
        .D(c0[27]),
        .Q(sel0[27]),
        .R(\c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[28] 
       (.C(i_clk),
        .CE(\c[31]_i_2_n_0 ),
        .D(c0[28]),
        .Q(sel0[28]),
        .R(\c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[29] 
       (.C(i_clk),
        .CE(\c[31]_i_2_n_0 ),
        .D(c0[29]),
        .Q(sel0[29]),
        .R(\c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[2] 
       (.C(i_clk),
        .CE(\c[31]_i_2_n_0 ),
        .D(c0[2]),
        .Q(sel0[2]),
        .R(\c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[30] 
       (.C(i_clk),
        .CE(\c[31]_i_2_n_0 ),
        .D(c0[30]),
        .Q(sel0[30]),
        .R(\c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[31] 
       (.C(i_clk),
        .CE(\c[31]_i_2_n_0 ),
        .D(c0[31]),
        .Q(sel0[31]),
        .R(\c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[3] 
       (.C(i_clk),
        .CE(\c[31]_i_2_n_0 ),
        .D(c0[3]),
        .Q(sel0[3]),
        .R(\c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[4] 
       (.C(i_clk),
        .CE(\c[31]_i_2_n_0 ),
        .D(c0[4]),
        .Q(sel0[4]),
        .R(\c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[5] 
       (.C(i_clk),
        .CE(\c[31]_i_2_n_0 ),
        .D(c0[5]),
        .Q(sel0[5]),
        .R(\c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[6] 
       (.C(i_clk),
        .CE(\c[31]_i_2_n_0 ),
        .D(c0[6]),
        .Q(sel0[6]),
        .R(\c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[7] 
       (.C(i_clk),
        .CE(\c[31]_i_2_n_0 ),
        .D(c0[7]),
        .Q(sel0[7]),
        .R(\c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[8] 
       (.C(i_clk),
        .CE(\c[31]_i_2_n_0 ),
        .D(c0[8]),
        .Q(sel0[8]),
        .R(\c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[9] 
       (.C(i_clk),
        .CE(\c[31]_i_2_n_0 ),
        .D(c0[9]),
        .Q(sel0[9]),
        .R(\c[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFB02)) 
    first_i_1
       (.I0(\bram0b[o][o_en] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(\t_state1_reg_n_0_[1] ),
        .I3(first),
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
        .CYINIT(i[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i0[4:1]),
        .S(i[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry__0
       (.CI(i0_carry_n_0),
        .CO({i0_carry__0_n_0,i0_carry__0_n_1,i0_carry__0_n_2,i0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i0[8:5]),
        .S(i[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry__1
       (.CI(i0_carry__0_n_0),
        .CO({i0_carry__1_n_0,i0_carry__1_n_1,i0_carry__1_n_2,i0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i0[12:9]),
        .S(i[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry__2
       (.CI(i0_carry__1_n_0),
        .CO({i0_carry__2_n_0,i0_carry__2_n_1,i0_carry__2_n_2,i0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i0[16:13]),
        .S(i[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry__3
       (.CI(i0_carry__2_n_0),
        .CO({i0_carry__3_n_0,i0_carry__3_n_1,i0_carry__3_n_2,i0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i0[20:17]),
        .S(i[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry__4
       (.CI(i0_carry__3_n_0),
        .CO({i0_carry__4_n_0,i0_carry__4_n_1,i0_carry__4_n_2,i0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i0[24:21]),
        .S(i[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry__5
       (.CI(i0_carry__4_n_0),
        .CO({i0_carry__5_n_0,i0_carry__5_n_1,i0_carry__5_n_2,i0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i0[28:25]),
        .S(i[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry__6
       (.CI(i0_carry__5_n_0),
        .CO({NLW_i0_carry__6_CO_UNCONNECTED[3:2],i0_carry__6_n_2,i0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_i0_carry__6_O_UNCONNECTED[3],i0[31:29]}),
        .S({1'b0,i[31:29]}));
  LUT1 #(
    .INIT(2'h1)) 
    \i[0]_i_1 
       (.I0(i[0]),
        .O(\i[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0B08)) 
    \i[31]_i_1 
       (.I0(t_state1_carry__2_n_0),
        .I1(s_vecs),
        .I2(rst),
        .I3(\FSM_onehot_t_state_reg_n_0_[0] ),
        .O(\i[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h32)) 
    \i[31]_i_2 
       (.I0(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I1(rst),
        .I2(s_vecs),
        .O(\i[31]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(\s_acc[4]_0 [31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(\s_acc[4]_0 [30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(\s_acc[4]_0 [21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_100
       (.I0(1'b0),
        .O(\s_acc[7]_6 [12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_101
       (.I0(1'b0),
        .O(\s_acc[7]_6 [11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_102
       (.I0(1'b0),
        .O(\s_acc[7]_6 [10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_103
       (.I0(1'b0),
        .O(\s_acc[7]_6 [9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_104
       (.I0(1'b0),
        .O(\s_acc[7]_6 [8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_105
       (.I0(1'b0),
        .O(\s_acc[7]_6 [7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_106
       (.I0(1'b0),
        .O(\s_acc[7]_6 [6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_107
       (.I0(1'b0),
        .O(\s_acc[7]_6 [5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_108
       (.I0(1'b0),
        .O(\s_acc[0]_8 [31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_109
       (.I0(1'b0),
        .O(\s_acc[0]_8 [30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(\s_acc[4]_0 [20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_110
       (.I0(1'b0),
        .O(\s_acc[0]_8 [29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_111
       (.I0(1'b0),
        .O(\s_acc[0]_8 [28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_112
       (.I0(1'b0),
        .O(\s_acc[0]_8 [27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_113
       (.I0(1'b0),
        .O(\s_acc[0]_8 [26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_114
       (.I0(1'b0),
        .O(\s_acc[0]_8 [25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_115
       (.I0(1'b0),
        .O(\s_acc[0]_8 [24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_116
       (.I0(1'b0),
        .O(\s_acc[0]_8 [23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_117
       (.I0(1'b0),
        .O(\s_acc[0]_8 [22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_118
       (.I0(1'b0),
        .O(\s_acc[0]_8 [21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_119
       (.I0(1'b0),
        .O(\s_acc[0]_8 [20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(\s_acc[4]_0 [19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_120
       (.I0(1'b0),
        .O(\s_acc[0]_8 [19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_121
       (.I0(1'b0),
        .O(\s_acc[0]_8 [18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_122
       (.I0(1'b0),
        .O(\s_acc[0]_8 [17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_123
       (.I0(1'b0),
        .O(\s_acc[0]_8 [16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_124
       (.I0(1'b0),
        .O(\s_acc[0]_8 [15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_125
       (.I0(1'b0),
        .O(\s_acc[0]_8 [14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_126
       (.I0(1'b0),
        .O(\s_acc[0]_8 [13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_127
       (.I0(1'b0),
        .O(\s_acc[0]_8 [12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_128
       (.I0(1'b0),
        .O(\s_acc[0]_8 [11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_129
       (.I0(1'b0),
        .O(\s_acc[0]_8 [10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(\s_acc[4]_0 [18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_130
       (.I0(1'b0),
        .O(\s_acc[0]_8 [9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_131
       (.I0(1'b0),
        .O(\s_acc[0]_8 [8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_132
       (.I0(1'b0),
        .O(\s_acc[0]_8 [7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_133
       (.I0(1'b0),
        .O(\s_acc[0]_8 [6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_134
       (.I0(1'b0),
        .O(\s_acc[0]_8 [5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_135
       (.I0(1'b0),
        .O(\s_acc[1]_10 [31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_136
       (.I0(1'b0),
        .O(\s_acc[1]_10 [30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_137
       (.I0(1'b0),
        .O(\s_acc[1]_10 [29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_138
       (.I0(1'b0),
        .O(\s_acc[1]_10 [28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_139
       (.I0(1'b0),
        .O(\s_acc[1]_10 [27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(\s_acc[4]_0 [17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_140
       (.I0(1'b0),
        .O(\s_acc[1]_10 [26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_141
       (.I0(1'b0),
        .O(\s_acc[1]_10 [25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_142
       (.I0(1'b0),
        .O(\s_acc[1]_10 [24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_143
       (.I0(1'b0),
        .O(\s_acc[1]_10 [23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_144
       (.I0(1'b0),
        .O(\s_acc[1]_10 [22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_145
       (.I0(1'b0),
        .O(\s_acc[1]_10 [21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_146
       (.I0(1'b0),
        .O(\s_acc[1]_10 [20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_147
       (.I0(1'b0),
        .O(\s_acc[1]_10 [19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_148
       (.I0(1'b0),
        .O(\s_acc[1]_10 [18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_149
       (.I0(1'b0),
        .O(\s_acc[1]_10 [17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(\s_acc[4]_0 [16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_150
       (.I0(1'b0),
        .O(\s_acc[1]_10 [16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_151
       (.I0(1'b0),
        .O(\s_acc[1]_10 [15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_152
       (.I0(1'b0),
        .O(\s_acc[1]_10 [14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_153
       (.I0(1'b0),
        .O(\s_acc[1]_10 [13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_154
       (.I0(1'b0),
        .O(\s_acc[1]_10 [12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_155
       (.I0(1'b0),
        .O(\s_acc[1]_10 [11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_156
       (.I0(1'b0),
        .O(\s_acc[1]_10 [10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_157
       (.I0(1'b0),
        .O(\s_acc[1]_10 [9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_158
       (.I0(1'b0),
        .O(\s_acc[1]_10 [8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_159
       (.I0(1'b0),
        .O(\s_acc[1]_10 [7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(\s_acc[4]_0 [15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_160
       (.I0(1'b0),
        .O(\s_acc[1]_10 [6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_161
       (.I0(1'b0),
        .O(\s_acc[1]_10 [5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_162
       (.I0(1'b0),
        .O(\s_acc[2]_12 [31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_163
       (.I0(1'b0),
        .O(\s_acc[2]_12 [30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_164
       (.I0(1'b0),
        .O(\s_acc[2]_12 [29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_165
       (.I0(1'b0),
        .O(\s_acc[2]_12 [28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_166
       (.I0(1'b0),
        .O(\s_acc[2]_12 [27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_167
       (.I0(1'b0),
        .O(\s_acc[2]_12 [26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_168
       (.I0(1'b0),
        .O(\s_acc[2]_12 [25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_169
       (.I0(1'b0),
        .O(\s_acc[2]_12 [24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(\s_acc[4]_0 [14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_170
       (.I0(1'b0),
        .O(\s_acc[2]_12 [23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_171
       (.I0(1'b0),
        .O(\s_acc[2]_12 [22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_172
       (.I0(1'b0),
        .O(\s_acc[2]_12 [21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_173
       (.I0(1'b0),
        .O(\s_acc[2]_12 [20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_174
       (.I0(1'b0),
        .O(\s_acc[2]_12 [19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_175
       (.I0(1'b0),
        .O(\s_acc[2]_12 [18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_176
       (.I0(1'b0),
        .O(\s_acc[2]_12 [17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_177
       (.I0(1'b0),
        .O(\s_acc[2]_12 [16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_178
       (.I0(1'b0),
        .O(\s_acc[2]_12 [15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_179
       (.I0(1'b0),
        .O(\s_acc[2]_12 [14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(\s_acc[4]_0 [13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_180
       (.I0(1'b0),
        .O(\s_acc[2]_12 [13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_181
       (.I0(1'b0),
        .O(\s_acc[2]_12 [12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_182
       (.I0(1'b0),
        .O(\s_acc[2]_12 [11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_183
       (.I0(1'b0),
        .O(\s_acc[2]_12 [10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_184
       (.I0(1'b0),
        .O(\s_acc[2]_12 [9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_185
       (.I0(1'b0),
        .O(\s_acc[2]_12 [8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_186
       (.I0(1'b0),
        .O(\s_acc[2]_12 [7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_187
       (.I0(1'b0),
        .O(\s_acc[2]_12 [6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_188
       (.I0(1'b0),
        .O(\s_acc[2]_12 [5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_189
       (.I0(1'b0),
        .O(\s_acc[3]_14 [31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(\s_acc[4]_0 [12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_190
       (.I0(1'b0),
        .O(\s_acc[3]_14 [30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_191
       (.I0(1'b0),
        .O(\s_acc[3]_14 [29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_192
       (.I0(1'b0),
        .O(\s_acc[3]_14 [28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_193
       (.I0(1'b0),
        .O(\s_acc[3]_14 [27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_194
       (.I0(1'b0),
        .O(\s_acc[3]_14 [26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_195
       (.I0(1'b0),
        .O(\s_acc[3]_14 [25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_196
       (.I0(1'b0),
        .O(\s_acc[3]_14 [24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_197
       (.I0(1'b0),
        .O(\s_acc[3]_14 [23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_198
       (.I0(1'b0),
        .O(\s_acc[3]_14 [22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_199
       (.I0(1'b0),
        .O(\s_acc[3]_14 [21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(\s_acc[4]_0 [29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(\s_acc[4]_0 [11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_200
       (.I0(1'b0),
        .O(\s_acc[3]_14 [20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_201
       (.I0(1'b0),
        .O(\s_acc[3]_14 [19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_202
       (.I0(1'b0),
        .O(\s_acc[3]_14 [18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_203
       (.I0(1'b0),
        .O(\s_acc[3]_14 [17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_204
       (.I0(1'b0),
        .O(\s_acc[3]_14 [16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_205
       (.I0(1'b0),
        .O(\s_acc[3]_14 [15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_206
       (.I0(1'b0),
        .O(\s_acc[3]_14 [14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_207
       (.I0(1'b0),
        .O(\s_acc[3]_14 [13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_208
       (.I0(1'b0),
        .O(\s_acc[3]_14 [12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_209
       (.I0(1'b0),
        .O(\s_acc[3]_14 [11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_21
       (.I0(1'b0),
        .O(\s_acc[4]_0 [10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_210
       (.I0(1'b0),
        .O(\s_acc[3]_14 [10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_211
       (.I0(1'b0),
        .O(\s_acc[3]_14 [9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_212
       (.I0(1'b0),
        .O(\s_acc[3]_14 [8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_213
       (.I0(1'b0),
        .O(\s_acc[3]_14 [7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_214
       (.I0(1'b0),
        .O(\s_acc[3]_14 [6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_215
       (.I0(1'b0),
        .O(\s_acc[3]_14 [5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_22
       (.I0(1'b0),
        .O(\s_acc[4]_0 [9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_23
       (.I0(1'b0),
        .O(\s_acc[4]_0 [8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_24
       (.I0(1'b0),
        .O(\s_acc[4]_0 [7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_25
       (.I0(1'b0),
        .O(\s_acc[4]_0 [6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_26
       (.I0(1'b0),
        .O(\s_acc[4]_0 [5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_27
       (.I0(1'b0),
        .O(\s_acc[5]_2 [31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_28
       (.I0(1'b0),
        .O(\s_acc[5]_2 [30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_29
       (.I0(1'b0),
        .O(\s_acc[5]_2 [29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(\s_acc[4]_0 [28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_30
       (.I0(1'b0),
        .O(\s_acc[5]_2 [28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_31
       (.I0(1'b0),
        .O(\s_acc[5]_2 [27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_32
       (.I0(1'b0),
        .O(\s_acc[5]_2 [26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_33
       (.I0(1'b0),
        .O(\s_acc[5]_2 [25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_34
       (.I0(1'b0),
        .O(\s_acc[5]_2 [24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_35
       (.I0(1'b0),
        .O(\s_acc[5]_2 [23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_36
       (.I0(1'b0),
        .O(\s_acc[5]_2 [22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_37
       (.I0(1'b0),
        .O(\s_acc[5]_2 [21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_38
       (.I0(1'b0),
        .O(\s_acc[5]_2 [20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_39
       (.I0(1'b0),
        .O(\s_acc[5]_2 [19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(\s_acc[4]_0 [27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_40
       (.I0(1'b0),
        .O(\s_acc[5]_2 [18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_41
       (.I0(1'b0),
        .O(\s_acc[5]_2 [17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_42
       (.I0(1'b0),
        .O(\s_acc[5]_2 [16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_43
       (.I0(1'b0),
        .O(\s_acc[5]_2 [15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_44
       (.I0(1'b0),
        .O(\s_acc[5]_2 [14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_45
       (.I0(1'b0),
        .O(\s_acc[5]_2 [13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_46
       (.I0(1'b0),
        .O(\s_acc[5]_2 [12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_47
       (.I0(1'b0),
        .O(\s_acc[5]_2 [11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_48
       (.I0(1'b0),
        .O(\s_acc[5]_2 [10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_49
       (.I0(1'b0),
        .O(\s_acc[5]_2 [9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(\s_acc[4]_0 [26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_50
       (.I0(1'b0),
        .O(\s_acc[5]_2 [8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_51
       (.I0(1'b0),
        .O(\s_acc[5]_2 [7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_52
       (.I0(1'b0),
        .O(\s_acc[5]_2 [6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_53
       (.I0(1'b0),
        .O(\s_acc[5]_2 [5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_54
       (.I0(1'b0),
        .O(\s_acc[6]_4 [31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_55
       (.I0(1'b0),
        .O(\s_acc[6]_4 [30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_56
       (.I0(1'b0),
        .O(\s_acc[6]_4 [29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_57
       (.I0(1'b0),
        .O(\s_acc[6]_4 [28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_58
       (.I0(1'b0),
        .O(\s_acc[6]_4 [27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_59
       (.I0(1'b0),
        .O(\s_acc[6]_4 [26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(\s_acc[4]_0 [25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_60
       (.I0(1'b0),
        .O(\s_acc[6]_4 [25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_61
       (.I0(1'b0),
        .O(\s_acc[6]_4 [24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_62
       (.I0(1'b0),
        .O(\s_acc[6]_4 [23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_63
       (.I0(1'b0),
        .O(\s_acc[6]_4 [22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_64
       (.I0(1'b0),
        .O(\s_acc[6]_4 [21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_65
       (.I0(1'b0),
        .O(\s_acc[6]_4 [20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_66
       (.I0(1'b0),
        .O(\s_acc[6]_4 [19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_67
       (.I0(1'b0),
        .O(\s_acc[6]_4 [18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_68
       (.I0(1'b0),
        .O(\s_acc[6]_4 [17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_69
       (.I0(1'b0),
        .O(\s_acc[6]_4 [16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(\s_acc[4]_0 [24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_70
       (.I0(1'b0),
        .O(\s_acc[6]_4 [15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_71
       (.I0(1'b0),
        .O(\s_acc[6]_4 [14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_72
       (.I0(1'b0),
        .O(\s_acc[6]_4 [13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_73
       (.I0(1'b0),
        .O(\s_acc[6]_4 [12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_74
       (.I0(1'b0),
        .O(\s_acc[6]_4 [11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_75
       (.I0(1'b0),
        .O(\s_acc[6]_4 [10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_76
       (.I0(1'b0),
        .O(\s_acc[6]_4 [9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_77
       (.I0(1'b0),
        .O(\s_acc[6]_4 [8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_78
       (.I0(1'b0),
        .O(\s_acc[6]_4 [7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_79
       (.I0(1'b0),
        .O(\s_acc[6]_4 [6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(\s_acc[4]_0 [23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_80
       (.I0(1'b0),
        .O(\s_acc[6]_4 [5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_81
       (.I0(1'b0),
        .O(\s_acc[7]_6 [31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_82
       (.I0(1'b0),
        .O(\s_acc[7]_6 [30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_83
       (.I0(1'b0),
        .O(\s_acc[7]_6 [29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_84
       (.I0(1'b0),
        .O(\s_acc[7]_6 [28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_85
       (.I0(1'b0),
        .O(\s_acc[7]_6 [27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_86
       (.I0(1'b0),
        .O(\s_acc[7]_6 [26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_87
       (.I0(1'b0),
        .O(\s_acc[7]_6 [25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_88
       (.I0(1'b0),
        .O(\s_acc[7]_6 [24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_89
       (.I0(1'b0),
        .O(\s_acc[7]_6 [23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(\s_acc[4]_0 [22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_90
       (.I0(1'b0),
        .O(\s_acc[7]_6 [22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_91
       (.I0(1'b0),
        .O(\s_acc[7]_6 [21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_92
       (.I0(1'b0),
        .O(\s_acc[7]_6 [20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_93
       (.I0(1'b0),
        .O(\s_acc[7]_6 [19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_94
       (.I0(1'b0),
        .O(\s_acc[7]_6 [18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_95
       (.I0(1'b0),
        .O(\s_acc[7]_6 [17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_96
       (.I0(1'b0),
        .O(\s_acc[7]_6 [16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_97
       (.I0(1'b0),
        .O(\s_acc[7]_6 [15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_98
       (.I0(1'b0),
        .O(\s_acc[7]_6 [14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_99
       (.I0(1'b0),
        .O(\s_acc[7]_6 [13]));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_1
       (.I0(\j_reg_n_0_[15] ),
        .I1(\j_reg_n_0_[14] ),
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
        .I1(\s_vecs_addr_reg_n_0_[6] ),
        .O(i__carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_2
       (.I0(\j_reg_n_0_[13] ),
        .I1(\j_reg_n_0_[12] ),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__0_i_2__0
       (.I0(\j_reg_n_0_[5] ),
        .I1(\s_vecs_addr_reg_n_0_[5] ),
        .O(i__carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_3
       (.I0(\j_reg_n_0_[11] ),
        .I1(\j_reg_n_0_[10] ),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__0_i_3__0
       (.I0(\j_reg_n_0_[4] ),
        .I1(\s_vecs_addr_reg_n_0_[4] ),
        .O(i__carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_4
       (.I0(\j_reg_n_0_[9] ),
        .I1(\j_reg_n_0_[8] ),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__0_i_4__0
       (.I0(\j_reg_n_0_[3] ),
        .I1(\s_vecs_addr_reg_n_0_[3] ),
        .O(i__carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_5
       (.I0(\j_reg_n_0_[14] ),
        .I1(\j_reg_n_0_[15] ),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__0_i_5__0
       (.I0(\s_vecs_addr_reg_n_0_[6] ),
        .I1(\j_reg_n_0_[6] ),
        .I2(\s_vecs_addr_reg_n_0_[7] ),
        .I3(\j_reg_n_0_[7] ),
        .O(i__carry__0_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_6
       (.I0(\j_reg_n_0_[12] ),
        .I1(\j_reg_n_0_[13] ),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__0_i_6__0
       (.I0(\s_vecs_addr_reg_n_0_[5] ),
        .I1(\j_reg_n_0_[5] ),
        .I2(\s_vecs_addr_reg_n_0_[6] ),
        .I3(\j_reg_n_0_[6] ),
        .O(i__carry__0_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_7
       (.I0(\j_reg_n_0_[10] ),
        .I1(\j_reg_n_0_[11] ),
        .O(i__carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__0_i_7__0
       (.I0(\s_vecs_addr_reg_n_0_[4] ),
        .I1(\j_reg_n_0_[4] ),
        .I2(\s_vecs_addr_reg_n_0_[5] ),
        .I3(\j_reg_n_0_[5] ),
        .O(i__carry__0_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_8
       (.I0(\j_reg_n_0_[8] ),
        .I1(\j_reg_n_0_[9] ),
        .O(i__carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__0_i_8__0
       (.I0(\s_vecs_addr_reg_n_0_[3] ),
        .I1(\j_reg_n_0_[3] ),
        .I2(\s_vecs_addr_reg_n_0_[4] ),
        .I3(\j_reg_n_0_[4] ),
        .O(i__carry__0_i_8__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_1
       (.I0(\j_reg_n_0_[23] ),
        .I1(\j_reg_n_0_[22] ),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__1_i_1__0
       (.I0(\j_reg_n_0_[10] ),
        .I1(\s_vecs_addr_reg_n_0_[10] ),
        .O(i__carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_2
       (.I0(\j_reg_n_0_[21] ),
        .I1(\j_reg_n_0_[20] ),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__1_i_2__0
       (.I0(\j_reg_n_0_[9] ),
        .I1(\s_vecs_addr_reg_n_0_[9] ),
        .O(i__carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_3
       (.I0(\j_reg_n_0_[19] ),
        .I1(\j_reg_n_0_[18] ),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__1_i_3__0
       (.I0(\j_reg_n_0_[8] ),
        .I1(\s_vecs_addr_reg_n_0_[8] ),
        .O(i__carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_4
       (.I0(\j_reg_n_0_[17] ),
        .I1(\j_reg_n_0_[16] ),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__1_i_4__0
       (.I0(\j_reg_n_0_[7] ),
        .I1(\s_vecs_addr_reg_n_0_[7] ),
        .O(i__carry__1_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_5
       (.I0(\j_reg_n_0_[22] ),
        .I1(\j_reg_n_0_[23] ),
        .O(i__carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__1_i_5__0
       (.I0(\s_vecs_addr_reg_n_0_[10] ),
        .I1(\j_reg_n_0_[10] ),
        .I2(\s_vecs_addr_reg_n_0_[11] ),
        .I3(\j_reg_n_0_[11] ),
        .O(i__carry__1_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_6
       (.I0(\j_reg_n_0_[20] ),
        .I1(\j_reg_n_0_[21] ),
        .O(i__carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__1_i_6__0
       (.I0(\s_vecs_addr_reg_n_0_[9] ),
        .I1(\j_reg_n_0_[9] ),
        .I2(\s_vecs_addr_reg_n_0_[10] ),
        .I3(\j_reg_n_0_[10] ),
        .O(i__carry__1_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_7
       (.I0(\j_reg_n_0_[18] ),
        .I1(\j_reg_n_0_[19] ),
        .O(i__carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__1_i_7__0
       (.I0(\s_vecs_addr_reg_n_0_[8] ),
        .I1(\j_reg_n_0_[8] ),
        .I2(\s_vecs_addr_reg_n_0_[9] ),
        .I3(\j_reg_n_0_[9] ),
        .O(i__carry__1_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_8
       (.I0(\j_reg_n_0_[16] ),
        .I1(\j_reg_n_0_[17] ),
        .O(i__carry__1_i_8_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__1_i_8__0
       (.I0(\s_vecs_addr_reg_n_0_[7] ),
        .I1(\j_reg_n_0_[7] ),
        .I2(\s_vecs_addr_reg_n_0_[8] ),
        .I3(\j_reg_n_0_[8] ),
        .O(i__carry__1_i_8__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__2_i_1
       (.I0(\j_reg_n_0_[30] ),
        .I1(\j_reg_n_0_[31] ),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__2_i_1__0
       (.I0(\j_reg_n_0_[14] ),
        .I1(\s_vecs_addr_reg_n_0_[14] ),
        .O(i__carry__2_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_2
       (.I0(\j_reg_n_0_[29] ),
        .I1(\j_reg_n_0_[28] ),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__2_i_2__0
       (.I0(\j_reg_n_0_[13] ),
        .I1(\s_vecs_addr_reg_n_0_[13] ),
        .O(i__carry__2_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_3
       (.I0(\j_reg_n_0_[27] ),
        .I1(\j_reg_n_0_[26] ),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__2_i_3__0
       (.I0(\j_reg_n_0_[12] ),
        .I1(\s_vecs_addr_reg_n_0_[12] ),
        .O(i__carry__2_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_4
       (.I0(\j_reg_n_0_[25] ),
        .I1(\j_reg_n_0_[24] ),
        .O(i__carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__2_i_4__0
       (.I0(\j_reg_n_0_[11] ),
        .I1(\s_vecs_addr_reg_n_0_[11] ),
        .O(i__carry__2_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_5
       (.I0(\j_reg_n_0_[30] ),
        .I1(\j_reg_n_0_[31] ),
        .O(i__carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__2_i_5__0
       (.I0(\s_vecs_addr_reg_n_0_[14] ),
        .I1(\j_reg_n_0_[14] ),
        .I2(\s_vecs_addr_reg_n_0_[15] ),
        .I3(\j_reg_n_0_[15] ),
        .O(i__carry__2_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_6
       (.I0(\j_reg_n_0_[28] ),
        .I1(\j_reg_n_0_[29] ),
        .O(i__carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__2_i_6__0
       (.I0(\s_vecs_addr_reg_n_0_[13] ),
        .I1(\j_reg_n_0_[13] ),
        .I2(\s_vecs_addr_reg_n_0_[14] ),
        .I3(\j_reg_n_0_[14] ),
        .O(i__carry__2_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_7
       (.I0(\j_reg_n_0_[26] ),
        .I1(\j_reg_n_0_[27] ),
        .O(i__carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__2_i_7__0
       (.I0(\s_vecs_addr_reg_n_0_[12] ),
        .I1(\j_reg_n_0_[12] ),
        .I2(\s_vecs_addr_reg_n_0_[13] ),
        .I3(\j_reg_n_0_[13] ),
        .O(i__carry__2_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_8
       (.I0(\j_reg_n_0_[24] ),
        .I1(\j_reg_n_0_[25] ),
        .O(i__carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__2_i_8__0
       (.I0(\s_vecs_addr_reg_n_0_[11] ),
        .I1(\j_reg_n_0_[11] ),
        .I2(\s_vecs_addr_reg_n_0_[12] ),
        .I3(\j_reg_n_0_[12] ),
        .O(i__carry__2_i_8__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__3_i_1
       (.I0(\j_reg_n_0_[18] ),
        .I1(\s_vecs_addr_reg_n_0_[18] ),
        .O(i__carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__3_i_2
       (.I0(\j_reg_n_0_[17] ),
        .I1(\s_vecs_addr_reg_n_0_[17] ),
        .O(i__carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__3_i_3
       (.I0(\j_reg_n_0_[16] ),
        .I1(\s_vecs_addr_reg_n_0_[16] ),
        .O(i__carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__3_i_4
       (.I0(\j_reg_n_0_[15] ),
        .I1(\s_vecs_addr_reg_n_0_[15] ),
        .O(i__carry__3_i_4_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__3_i_5
       (.I0(\s_vecs_addr_reg_n_0_[18] ),
        .I1(\j_reg_n_0_[18] ),
        .I2(\s_vecs_addr_reg_n_0_[19] ),
        .I3(\j_reg_n_0_[19] ),
        .O(i__carry__3_i_5_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__3_i_6
       (.I0(\s_vecs_addr_reg_n_0_[17] ),
        .I1(\j_reg_n_0_[17] ),
        .I2(\s_vecs_addr_reg_n_0_[18] ),
        .I3(\j_reg_n_0_[18] ),
        .O(i__carry__3_i_6_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__3_i_7
       (.I0(\s_vecs_addr_reg_n_0_[16] ),
        .I1(\j_reg_n_0_[16] ),
        .I2(\s_vecs_addr_reg_n_0_[17] ),
        .I3(\j_reg_n_0_[17] ),
        .O(i__carry__3_i_7_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__3_i_8
       (.I0(\s_vecs_addr_reg_n_0_[15] ),
        .I1(\j_reg_n_0_[15] ),
        .I2(\s_vecs_addr_reg_n_0_[16] ),
        .I3(\j_reg_n_0_[16] ),
        .O(i__carry__3_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__4_i_1
       (.I0(\j_reg_n_0_[22] ),
        .I1(\s_vecs_addr_reg_n_0_[22] ),
        .O(i__carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__4_i_2
       (.I0(\j_reg_n_0_[21] ),
        .I1(\s_vecs_addr_reg_n_0_[21] ),
        .O(i__carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__4_i_3
       (.I0(\j_reg_n_0_[20] ),
        .I1(\s_vecs_addr_reg_n_0_[20] ),
        .O(i__carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__4_i_4
       (.I0(\j_reg_n_0_[19] ),
        .I1(\s_vecs_addr_reg_n_0_[19] ),
        .O(i__carry__4_i_4_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__4_i_5
       (.I0(\s_vecs_addr_reg_n_0_[22] ),
        .I1(\j_reg_n_0_[22] ),
        .I2(\s_vecs_addr_reg_n_0_[23] ),
        .I3(\j_reg_n_0_[23] ),
        .O(i__carry__4_i_5_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__4_i_6
       (.I0(\s_vecs_addr_reg_n_0_[21] ),
        .I1(\j_reg_n_0_[21] ),
        .I2(\s_vecs_addr_reg_n_0_[22] ),
        .I3(\j_reg_n_0_[22] ),
        .O(i__carry__4_i_6_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__4_i_7
       (.I0(\s_vecs_addr_reg_n_0_[20] ),
        .I1(\j_reg_n_0_[20] ),
        .I2(\s_vecs_addr_reg_n_0_[21] ),
        .I3(\j_reg_n_0_[21] ),
        .O(i__carry__4_i_7_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__4_i_8
       (.I0(\s_vecs_addr_reg_n_0_[19] ),
        .I1(\j_reg_n_0_[19] ),
        .I2(\s_vecs_addr_reg_n_0_[20] ),
        .I3(\j_reg_n_0_[20] ),
        .O(i__carry__4_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__5_i_1
       (.I0(\j_reg_n_0_[26] ),
        .I1(\s_vecs_addr_reg_n_0_[26] ),
        .O(i__carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__5_i_2
       (.I0(\j_reg_n_0_[25] ),
        .I1(\s_vecs_addr_reg_n_0_[25] ),
        .O(i__carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__5_i_3
       (.I0(\j_reg_n_0_[24] ),
        .I1(\s_vecs_addr_reg_n_0_[24] ),
        .O(i__carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__5_i_4
       (.I0(\j_reg_n_0_[23] ),
        .I1(\s_vecs_addr_reg_n_0_[23] ),
        .O(i__carry__5_i_4_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__5_i_5
       (.I0(\s_vecs_addr_reg_n_0_[26] ),
        .I1(\j_reg_n_0_[26] ),
        .I2(\s_vecs_addr_reg_n_0_[27] ),
        .I3(\j_reg_n_0_[27] ),
        .O(i__carry__5_i_5_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__5_i_6
       (.I0(\s_vecs_addr_reg_n_0_[25] ),
        .I1(\j_reg_n_0_[25] ),
        .I2(\s_vecs_addr_reg_n_0_[26] ),
        .I3(\j_reg_n_0_[26] ),
        .O(i__carry__5_i_6_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__5_i_7
       (.I0(\s_vecs_addr_reg_n_0_[24] ),
        .I1(\j_reg_n_0_[24] ),
        .I2(\s_vecs_addr_reg_n_0_[25] ),
        .I3(\j_reg_n_0_[25] ),
        .O(i__carry__5_i_7_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__5_i_8
       (.I0(\s_vecs_addr_reg_n_0_[23] ),
        .I1(\j_reg_n_0_[23] ),
        .I2(\s_vecs_addr_reg_n_0_[24] ),
        .I3(\j_reg_n_0_[24] ),
        .O(i__carry__5_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__6_i_1
       (.I0(\j_reg_n_0_[29] ),
        .I1(\s_vecs_addr_reg_n_0_[29] ),
        .O(i__carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__6_i_2
       (.I0(\j_reg_n_0_[28] ),
        .I1(\s_vecs_addr_reg_n_0_[28] ),
        .O(i__carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__6_i_3
       (.I0(\j_reg_n_0_[27] ),
        .I1(\s_vecs_addr_reg_n_0_[27] ),
        .O(i__carry__6_i_3_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    i__carry__6_i_4
       (.I0(\s_vecs_addr_reg_n_0_[31] ),
        .I1(\s_vecs_addr_reg_n_0_[30] ),
        .I2(\j_reg_n_0_[30] ),
        .O(i__carry__6_i_4_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__6_i_5
       (.I0(\s_vecs_addr_reg_n_0_[29] ),
        .I1(\j_reg_n_0_[29] ),
        .I2(\s_vecs_addr_reg_n_0_[30] ),
        .I3(\j_reg_n_0_[30] ),
        .O(i__carry__6_i_5_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__6_i_6
       (.I0(\s_vecs_addr_reg_n_0_[28] ),
        .I1(\j_reg_n_0_[28] ),
        .I2(\s_vecs_addr_reg_n_0_[29] ),
        .I3(\j_reg_n_0_[29] ),
        .O(i__carry__6_i_6_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i__carry__6_i_7
       (.I0(\s_vecs_addr_reg_n_0_[27] ),
        .I1(\j_reg_n_0_[27] ),
        .I2(\s_vecs_addr_reg_n_0_[28] ),
        .I3(\j_reg_n_0_[28] ),
        .O(i__carry__6_i_7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_1
       (.I0(\j_reg_n_0_[7] ),
        .I1(\j_reg_n_0_[6] ),
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
        .I1(\s_vecs_addr_reg_n_0_[3] ),
        .I2(\j_reg_n_0_[3] ),
        .O(i__carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_2
       (.I0(\j_reg_n_0_[3] ),
        .I1(\j_reg_n_0_[2] ),
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
        .I1(\s_vecs_addr_reg_n_0_[2] ),
        .O(i__carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_3
       (.I0(\j_reg_n_0_[6] ),
        .I1(\j_reg_n_0_[7] ),
        .O(i__carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3__0
       (.I0(o_mem1a_addr[2]),
        .O(i__carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3__1
       (.I0(\s_vecs_addr_reg_n_0_[1] ),
        .I1(\j_reg_n_0_[1] ),
        .O(i__carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_4
       (.I0(\j_reg_n_0_[5] ),
        .I1(\j_reg_n_0_[4] ),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_5
       (.I0(\j_reg_n_0_[3] ),
        .I1(\j_reg_n_0_[2] ),
        .O(i__carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_6
       (.I0(\j_reg_n_0_[1] ),
        .O(i__carry_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(\i[0]_i_1_n_0 ),
        .Q(i[0]),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[10] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(i0[10]),
        .Q(i[10]),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[11] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(i0[11]),
        .Q(i[11]),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[12] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(i0[12]),
        .Q(i[12]),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[13] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(i0[13]),
        .Q(i[13]),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[14] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(i0[14]),
        .Q(i[14]),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[15] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(i0[15]),
        .Q(i[15]),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[16] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(i0[16]),
        .Q(i[16]),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[17] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(i0[17]),
        .Q(i[17]),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[18] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(i0[18]),
        .Q(i[18]),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[19] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(i0[19]),
        .Q(i[19]),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(i0[1]),
        .Q(i[1]),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[20] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(i0[20]),
        .Q(i[20]),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[21] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(i0[21]),
        .Q(i[21]),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[22] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(i0[22]),
        .Q(i[22]),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[23] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(i0[23]),
        .Q(i[23]),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[24] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(i0[24]),
        .Q(i[24]),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[25] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(i0[25]),
        .Q(i[25]),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[26] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(i0[26]),
        .Q(i[26]),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[27] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(i0[27]),
        .Q(i[27]),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[28] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(i0[28]),
        .Q(i[28]),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[29] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(i0[29]),
        .Q(i[29]),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(i0[2]),
        .Q(i[2]),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[30] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(i0[30]),
        .Q(i[30]),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[31] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(i0[31]),
        .Q(i[31]),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[3] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(i0[3]),
        .Q(i[3]),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[4] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(i0[4]),
        .Q(i[4]),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[5] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(i0[5]),
        .Q(i[5]),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[6] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(i0[6]),
        .Q(i[6]),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[7] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(i0[7]),
        .Q(i[7]),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[8] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(i0[8]),
        .Q(i[8]),
        .R(\i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[9] 
       (.C(i_clk),
        .CE(\i[31]_i_2_n_0 ),
        .D(i0[9]),
        .Q(i[9]),
        .R(\i[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \j[31]_i_1 
       (.I0(rst),
        .I1(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I2(s_vecs),
        .O(\j[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000BAAA)) 
    \j[31]_i_2 
       (.I0(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I1(sel),
        .I2(t_state1_carry__2_n_0),
        .I3(s_vecs),
        .I4(rst),
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
        .D(in8[10]),
        .Q(\j_reg_n_0_[10] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[11] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(in8[11]),
        .Q(\j_reg_n_0_[11] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[12] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(in8[12]),
        .Q(\j_reg_n_0_[12] ),
        .R(\j[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_reg[12]_i_1 
       (.CI(\j_reg[8]_i_1_n_0 ),
        .CO({\j_reg[12]_i_1_n_0 ,\j_reg[12]_i_1_n_1 ,\j_reg[12]_i_1_n_2 ,\j_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[12:9]),
        .S({\j_reg_n_0_[12] ,\j_reg_n_0_[11] ,\j_reg_n_0_[10] ,\j_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[13] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(in8[13]),
        .Q(\j_reg_n_0_[13] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[14] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(in8[14]),
        .Q(\j_reg_n_0_[14] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[15] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(in8[15]),
        .Q(\j_reg_n_0_[15] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[16] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(in8[16]),
        .Q(\j_reg_n_0_[16] ),
        .R(\j[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_reg[16]_i_1 
       (.CI(\j_reg[12]_i_1_n_0 ),
        .CO({\j_reg[16]_i_1_n_0 ,\j_reg[16]_i_1_n_1 ,\j_reg[16]_i_1_n_2 ,\j_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[16:13]),
        .S({\j_reg_n_0_[16] ,\j_reg_n_0_[15] ,\j_reg_n_0_[14] ,\j_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[17] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(in8[17]),
        .Q(\j_reg_n_0_[17] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[18] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(in8[18]),
        .Q(\j_reg_n_0_[18] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[19] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(in8[19]),
        .Q(\j_reg_n_0_[19] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[1] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(in8[1]),
        .Q(\j_reg_n_0_[1] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[20] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(in8[20]),
        .Q(\j_reg_n_0_[20] ),
        .R(\j[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_reg[20]_i_1 
       (.CI(\j_reg[16]_i_1_n_0 ),
        .CO({\j_reg[20]_i_1_n_0 ,\j_reg[20]_i_1_n_1 ,\j_reg[20]_i_1_n_2 ,\j_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[20:17]),
        .S({\j_reg_n_0_[20] ,\j_reg_n_0_[19] ,\j_reg_n_0_[18] ,\j_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[21] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(in8[21]),
        .Q(\j_reg_n_0_[21] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[22] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(in8[22]),
        .Q(\j_reg_n_0_[22] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[23] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(in8[23]),
        .Q(\j_reg_n_0_[23] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[24] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(in8[24]),
        .Q(\j_reg_n_0_[24] ),
        .R(\j[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_reg[24]_i_1 
       (.CI(\j_reg[20]_i_1_n_0 ),
        .CO({\j_reg[24]_i_1_n_0 ,\j_reg[24]_i_1_n_1 ,\j_reg[24]_i_1_n_2 ,\j_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[24:21]),
        .S({\j_reg_n_0_[24] ,\j_reg_n_0_[23] ,\j_reg_n_0_[22] ,\j_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[25] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(in8[25]),
        .Q(\j_reg_n_0_[25] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[26] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(in8[26]),
        .Q(\j_reg_n_0_[26] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[27] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(in8[27]),
        .Q(\j_reg_n_0_[27] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[28] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(in8[28]),
        .Q(\j_reg_n_0_[28] ),
        .R(\j[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_reg[28]_i_1 
       (.CI(\j_reg[24]_i_1_n_0 ),
        .CO({\j_reg[28]_i_1_n_0 ,\j_reg[28]_i_1_n_1 ,\j_reg[28]_i_1_n_2 ,\j_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[28:25]),
        .S({\j_reg_n_0_[28] ,\j_reg_n_0_[27] ,\j_reg_n_0_[26] ,\j_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[29] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(in8[29]),
        .Q(\j_reg_n_0_[29] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[2] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(in8[2]),
        .Q(\j_reg_n_0_[2] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[30] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(in8[30]),
        .Q(\j_reg_n_0_[30] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[31] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(in8[31]),
        .Q(\j_reg_n_0_[31] ),
        .R(\j[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_reg[31]_i_3 
       (.CI(\j_reg[28]_i_1_n_0 ),
        .CO({\NLW_j_reg[31]_i_3_CO_UNCONNECTED [3:2],\j_reg[31]_i_3_n_2 ,\j_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_j_reg[31]_i_3_O_UNCONNECTED [3],in8[31:29]}),
        .S({1'b0,\j_reg_n_0_[31] ,\j_reg_n_0_[30] ,\j_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[3] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(in8[3]),
        .Q(\j_reg_n_0_[3] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[4] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(in8[4]),
        .Q(\j_reg_n_0_[4] ),
        .R(\j[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\j_reg[4]_i_1_n_0 ,\j_reg[4]_i_1_n_1 ,\j_reg[4]_i_1_n_2 ,\j_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\j_reg_n_0_[2] ,1'b0}),
        .O(in8[4:1]),
        .S({\j_reg_n_0_[4] ,\j_reg_n_0_[3] ,\j[4]_i_2_n_0 ,\j_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[5] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(in8[5]),
        .Q(\j_reg_n_0_[5] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[6] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(in8[6]),
        .Q(\j_reg_n_0_[6] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[7] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(in8[7]),
        .Q(\j_reg_n_0_[7] ),
        .R(\j[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[8] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(in8[8]),
        .Q(\j_reg_n_0_[8] ),
        .R(\j[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_reg[8]_i_1 
       (.CI(\j_reg[4]_i_1_n_0 ),
        .CO({\j_reg[8]_i_1_n_0 ,\j_reg[8]_i_1_n_1 ,\j_reg[8]_i_1_n_2 ,\j_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[8:5]),
        .S({\j_reg_n_0_[8] ,\j_reg_n_0_[7] ,\j_reg_n_0_[6] ,\j_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[9] 
       (.C(i_clk),
        .CE(\j[31]_i_2_n_0 ),
        .D(in8[9]),
        .Q(\j_reg_n_0_[9] ),
        .R(\j[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,minusOp_carry_n_1,minusOp_carry_n_2,minusOp_carry_n_3}),
        .CYINIT(s_len[0]),
        .DI(s_len[4:1]),
        .O(minusOp[4:1]),
        .S({minusOp_carry_i_1_n_0,minusOp_carry_i_2_n_0,minusOp_carry_i_3_n_0,minusOp_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO({minusOp_carry__0_n_0,minusOp_carry__0_n_1,minusOp_carry__0_n_2,minusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(s_len[8:5]),
        .O(minusOp[8:5]),
        .S({minusOp_carry__0_i_1_n_0,minusOp_carry__0_i_2_n_0,minusOp_carry__0_i_3_n_0,minusOp_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_1
       (.I0(s_len[8]),
        .O(minusOp_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_2
       (.I0(s_len[7]),
        .O(minusOp_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_3
       (.I0(s_len[6]),
        .O(minusOp_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_4
       (.I0(s_len[5]),
        .O(minusOp_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__1
       (.CI(minusOp_carry__0_n_0),
        .CO({minusOp_carry__1_n_0,minusOp_carry__1_n_1,minusOp_carry__1_n_2,minusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(s_len[12:9]),
        .O(minusOp[12:9]),
        .S({minusOp_carry__1_i_1_n_0,minusOp_carry__1_i_2_n_0,minusOp_carry__1_i_3_n_0,minusOp_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_1
       (.I0(s_len[12]),
        .O(minusOp_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_2
       (.I0(s_len[11]),
        .O(minusOp_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_3
       (.I0(s_len[10]),
        .O(minusOp_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_4
       (.I0(s_len[9]),
        .O(minusOp_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__2
       (.CI(minusOp_carry__1_n_0),
        .CO({minusOp_carry__2_n_0,minusOp_carry__2_n_1,minusOp_carry__2_n_2,minusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(s_len[16:13]),
        .O(minusOp[16:13]),
        .S({minusOp_carry__2_i_1_n_0,minusOp_carry__2_i_2_n_0,minusOp_carry__2_i_3_n_0,minusOp_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_1
       (.I0(s_len[16]),
        .O(minusOp_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_2
       (.I0(s_len[15]),
        .O(minusOp_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_3
       (.I0(s_len[14]),
        .O(minusOp_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_4
       (.I0(s_len[13]),
        .O(minusOp_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__3
       (.CI(minusOp_carry__2_n_0),
        .CO({minusOp_carry__3_n_0,minusOp_carry__3_n_1,minusOp_carry__3_n_2,minusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(s_len[20:17]),
        .O(minusOp[20:17]),
        .S({minusOp_carry__3_i_1_n_0,minusOp_carry__3_i_2_n_0,minusOp_carry__3_i_3_n_0,minusOp_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__3_i_1
       (.I0(s_len[20]),
        .O(minusOp_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__3_i_2
       (.I0(s_len[19]),
        .O(minusOp_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__3_i_3
       (.I0(s_len[18]),
        .O(minusOp_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__3_i_4
       (.I0(s_len[17]),
        .O(minusOp_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__4
       (.CI(minusOp_carry__3_n_0),
        .CO({minusOp_carry__4_n_0,minusOp_carry__4_n_1,minusOp_carry__4_n_2,minusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(s_len[24:21]),
        .O(minusOp[24:21]),
        .S({minusOp_carry__4_i_1_n_0,minusOp_carry__4_i_2_n_0,minusOp_carry__4_i_3_n_0,minusOp_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__4_i_1
       (.I0(s_len[24]),
        .O(minusOp_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__4_i_2
       (.I0(s_len[23]),
        .O(minusOp_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__4_i_3
       (.I0(s_len[22]),
        .O(minusOp_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__4_i_4
       (.I0(s_len[21]),
        .O(minusOp_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__5
       (.CI(minusOp_carry__4_n_0),
        .CO({minusOp_carry__5_n_0,minusOp_carry__5_n_1,minusOp_carry__5_n_2,minusOp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(s_len[28:25]),
        .O(minusOp[28:25]),
        .S({minusOp_carry__5_i_1_n_0,minusOp_carry__5_i_2_n_0,minusOp_carry__5_i_3_n_0,minusOp_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__5_i_1
       (.I0(s_len[28]),
        .O(minusOp_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__5_i_2
       (.I0(s_len[27]),
        .O(minusOp_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__5_i_3
       (.I0(s_len[26]),
        .O(minusOp_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__5_i_4
       (.I0(s_len[25]),
        .O(minusOp_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__6
       (.CI(minusOp_carry__5_n_0),
        .CO({NLW_minusOp_carry__6_CO_UNCONNECTED[3:2],minusOp_carry__6_n_2,minusOp_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s_len[30:29]}),
        .O({NLW_minusOp_carry__6_O_UNCONNECTED[3],minusOp[31:29]}),
        .S({1'b0,minusOp_carry__6_i_1_n_0,minusOp_carry__6_i_2_n_0,minusOp_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__6_i_1
       (.I0(s_len[31]),
        .O(minusOp_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__6_i_2
       (.I0(s_len[30]),
        .O(minusOp_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__6_i_3
       (.I0(s_len[29]),
        .O(minusOp_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_1
       (.I0(s_len[4]),
        .O(minusOp_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_2
       (.I0(s_len[3]),
        .O(minusOp_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_3
       (.I0(s_len[2]),
        .O(minusOp_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_4
       (.I0(s_len[1]),
        .O(minusOp_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    o_control0a_i_1
       (.I0(i_enable),
        .I1(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I2(rst),
        .I3(o_control0a),
        .O(o_control0a_i_1_n_0));
  FDRE o_control0a_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_control0a_i_1_n_0),
        .Q(o_control0a),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    o_control0b_i_1
       (.I0(s_acc_change_reg_n_0),
        .I1(rst),
        .I2(\t_state1_reg_n_0_[1] ),
        .I3(\bram0b[o][o_en] ),
        .I4(\t_state1_reg_n_0_[2] ),
        .I5(o_control0b),
        .O(o_control0b_i_1_n_0));
  FDRE o_control0b_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_control0b_i_1_n_0),
        .Q(o_control0b),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    o_done_i_1
       (.I0(o_done),
        .I1(\t_state1_reg_n_0_[1] ),
        .I2(\bram0b[o][o_en] ),
        .I3(\t_state1_reg_n_0_[2] ),
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
        .O({\plusOp_inferred__0/i__carry_n_4 ,\plusOp_inferred__0/i__carry_n_5 ,\plusOp_inferred__0/i__carry_n_6 ,\plusOp_inferred__0/i__carry_n_7 }),
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
        .DI({\j_reg_n_0_[2] ,\s_vecs_addr_reg_n_0_[2] ,\s_vecs_addr_reg_n_0_[1] ,\s_vecs_addr_reg_n_0_[0] }),
        .O(plusOp1_in[3:0]),
        .S({i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,\s_vecs_addr_reg_n_0_[0] }));
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
    .INIT(64'hFFABABAB55000000)) 
    s_acc_change_i_1
       (.I0(rst),
        .I1(\FSM_onehot_t_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_t_state_reg_n_0_[2] ),
        .I3(t_state1_carry__2_n_0),
        .I4(s_vecs),
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
    .INIT(32'hFFEE0100)) 
    s_acc_flush_i_1
       (.I0(rst),
        .I1(\t_state1_reg_n_0_[1] ),
        .I2(\t_state1_reg_n_0_[2] ),
        .I3(\bram0b[o][o_en] ),
        .I4(s_acc_flush_reg_0),
        .O(s_acc_flush_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_acc_flush_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(s_acc_flush_i_1_n_0),
        .Q(s_acc_flush_reg_0),
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
    .INIT(64'h0000000000000002)) 
    \s_coeffs[31]_i_1 
       (.I0(DSP_Inst_n_0),
        .I1(DSP_Inst_n_1),
        .I2(\t_state_reg_n_0_[2] ),
        .I3(\s_coeffs[31]_i_2_n_0 ),
        .I4(DSP_Inst_n_2),
        .I5(DSP_Inst_n_3),
        .O(s_coeffs0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \s_coeffs[31]_i_2 
       (.I0(\t_state_reg_n_0_[0] ),
        .I1(\t_state_reg_n_0_[1] ),
        .O(\s_coeffs[31]_i_2_n_0 ));
  FDRE \s_coeffs_addr_reg[0] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_coeffs_addr[0]),
        .Q(s_coeffs_addr[0]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[10] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_coeffs_addr[10]),
        .Q(s_coeffs_addr[10]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[11] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_coeffs_addr[11]),
        .Q(s_coeffs_addr[11]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[12] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_coeffs_addr[12]),
        .Q(s_coeffs_addr[12]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[13] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_coeffs_addr[13]),
        .Q(s_coeffs_addr[13]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[14] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_coeffs_addr[14]),
        .Q(s_coeffs_addr[14]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[15] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_coeffs_addr[15]),
        .Q(s_coeffs_addr[15]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[16] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_coeffs_addr[16]),
        .Q(s_coeffs_addr[16]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[17] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_coeffs_addr[17]),
        .Q(s_coeffs_addr[17]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[18] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_coeffs_addr[18]),
        .Q(s_coeffs_addr[18]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[19] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_coeffs_addr[19]),
        .Q(s_coeffs_addr[19]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[1] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_coeffs_addr[1]),
        .Q(s_coeffs_addr[1]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[20] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_coeffs_addr[20]),
        .Q(s_coeffs_addr[20]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[21] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_coeffs_addr[21]),
        .Q(s_coeffs_addr[21]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[22] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_coeffs_addr[22]),
        .Q(s_coeffs_addr[22]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[23] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_coeffs_addr[23]),
        .Q(s_coeffs_addr[23]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[24] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_coeffs_addr[24]),
        .Q(s_coeffs_addr[24]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[25] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_coeffs_addr[25]),
        .Q(s_coeffs_addr[25]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[26] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_coeffs_addr[26]),
        .Q(s_coeffs_addr[26]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[27] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_coeffs_addr[27]),
        .Q(s_coeffs_addr[27]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[28] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_coeffs_addr[28]),
        .Q(s_coeffs_addr[28]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[29] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_coeffs_addr[29]),
        .Q(s_coeffs_addr[29]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[2] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_coeffs_addr[2]),
        .Q(s_coeffs_addr[2]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[30] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_coeffs_addr[30]),
        .Q(s_coeffs_addr[30]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[31] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_coeffs_addr[31]),
        .Q(s_coeffs_addr[31]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[3] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_coeffs_addr[3]),
        .Q(s_coeffs_addr[3]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[4] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_coeffs_addr[4]),
        .Q(s_coeffs_addr[4]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[5] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_coeffs_addr[5]),
        .Q(s_coeffs_addr[5]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[6] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_coeffs_addr[6]),
        .Q(s_coeffs_addr[6]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[7] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_coeffs_addr[7]),
        .Q(s_coeffs_addr[7]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[8] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_coeffs_addr[8]),
        .Q(s_coeffs_addr[8]),
        .R(rst));
  FDRE \s_coeffs_addr_reg[9] 
       (.C(i_clk),
        .CE(s_vecs_addr),
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
  FDRE \s_len_reg[0] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_len[0]),
        .Q(s_len[0]),
        .R(rst));
  FDRE \s_len_reg[10] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_len[10]),
        .Q(s_len[10]),
        .R(rst));
  FDRE \s_len_reg[11] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_len[11]),
        .Q(s_len[11]),
        .R(rst));
  FDRE \s_len_reg[12] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_len[12]),
        .Q(s_len[12]),
        .R(rst));
  FDRE \s_len_reg[13] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_len[13]),
        .Q(s_len[13]),
        .R(rst));
  FDRE \s_len_reg[14] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_len[14]),
        .Q(s_len[14]),
        .R(rst));
  FDRE \s_len_reg[15] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_len[15]),
        .Q(s_len[15]),
        .R(rst));
  FDRE \s_len_reg[16] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_len[16]),
        .Q(s_len[16]),
        .R(rst));
  FDRE \s_len_reg[17] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_len[17]),
        .Q(s_len[17]),
        .R(rst));
  FDRE \s_len_reg[18] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_len[18]),
        .Q(s_len[18]),
        .R(rst));
  FDRE \s_len_reg[19] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_len[19]),
        .Q(s_len[19]),
        .R(rst));
  FDRE \s_len_reg[1] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_len[1]),
        .Q(s_len[1]),
        .R(rst));
  FDRE \s_len_reg[20] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_len[20]),
        .Q(s_len[20]),
        .R(rst));
  FDRE \s_len_reg[21] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_len[21]),
        .Q(s_len[21]),
        .R(rst));
  FDRE \s_len_reg[22] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_len[22]),
        .Q(s_len[22]),
        .R(rst));
  FDRE \s_len_reg[23] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_len[23]),
        .Q(s_len[23]),
        .R(rst));
  FDRE \s_len_reg[24] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_len[24]),
        .Q(s_len[24]),
        .R(rst));
  FDRE \s_len_reg[25] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_len[25]),
        .Q(s_len[25]),
        .R(rst));
  FDRE \s_len_reg[26] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_len[26]),
        .Q(s_len[26]),
        .R(rst));
  FDRE \s_len_reg[27] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_len[27]),
        .Q(s_len[27]),
        .R(rst));
  FDRE \s_len_reg[28] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_len[28]),
        .Q(s_len[28]),
        .R(rst));
  FDRE \s_len_reg[29] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_len[29]),
        .Q(s_len[29]),
        .R(rst));
  FDRE \s_len_reg[2] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_len[2]),
        .Q(s_len[2]),
        .R(rst));
  FDRE \s_len_reg[30] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_len[30]),
        .Q(s_len[30]),
        .R(rst));
  FDRE \s_len_reg[31] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_len[31]),
        .Q(s_len[31]),
        .R(rst));
  FDRE \s_len_reg[3] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_len[3]),
        .Q(s_len[3]),
        .R(rst));
  FDRE \s_len_reg[4] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_len[4]),
        .Q(s_len[4]),
        .R(rst));
  FDRE \s_len_reg[5] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_len[5]),
        .Q(s_len[5]),
        .R(rst));
  FDRE \s_len_reg[6] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_len[6]),
        .Q(s_len[6]),
        .R(rst));
  FDRE \s_len_reg[7] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_len[7]),
        .Q(s_len[7]),
        .R(rst));
  FDRE \s_len_reg[8] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_len[8]),
        .Q(s_len[8]),
        .R(rst));
  FDRE \s_len_reg[9] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_len[9]),
        .Q(s_len[9]),
        .R(rst));
  LUT4 #(
    .INIT(16'hABAA)) 
    s_main_i_1
       (.I0(s_vecs),
        .I1(\FSM_onehot_t_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_t_state_reg_n_0_[5] ),
        .I3(s_main_reg_n_0),
        .O(s_main_i_1_n_0));
  FDRE s_main_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(s_main_i_1_n_0),
        .Q(s_main_reg_n_0),
        .R(rst));
  FDRE \s_out_addr_reg[0] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_out_addr[0]),
        .Q(s_out_addr[0]),
        .R(rst));
  FDRE \s_out_addr_reg[10] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_out_addr[10]),
        .Q(s_out_addr[10]),
        .R(rst));
  FDRE \s_out_addr_reg[11] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_out_addr[11]),
        .Q(s_out_addr[11]),
        .R(rst));
  FDRE \s_out_addr_reg[12] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_out_addr[12]),
        .Q(s_out_addr[12]),
        .R(rst));
  FDRE \s_out_addr_reg[13] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_out_addr[13]),
        .Q(s_out_addr[13]),
        .R(rst));
  FDRE \s_out_addr_reg[14] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_out_addr[14]),
        .Q(s_out_addr[14]),
        .R(rst));
  FDRE \s_out_addr_reg[15] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_out_addr[15]),
        .Q(s_out_addr[15]),
        .R(rst));
  FDRE \s_out_addr_reg[16] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_out_addr[16]),
        .Q(s_out_addr[16]),
        .R(rst));
  FDRE \s_out_addr_reg[17] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_out_addr[17]),
        .Q(s_out_addr[17]),
        .R(rst));
  FDRE \s_out_addr_reg[18] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_out_addr[18]),
        .Q(s_out_addr[18]),
        .R(rst));
  FDRE \s_out_addr_reg[19] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_out_addr[19]),
        .Q(s_out_addr[19]),
        .R(rst));
  FDRE \s_out_addr_reg[1] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_out_addr[1]),
        .Q(s_out_addr[1]),
        .R(rst));
  FDRE \s_out_addr_reg[20] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_out_addr[20]),
        .Q(s_out_addr[20]),
        .R(rst));
  FDRE \s_out_addr_reg[21] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_out_addr[21]),
        .Q(s_out_addr[21]),
        .R(rst));
  FDRE \s_out_addr_reg[22] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_out_addr[22]),
        .Q(s_out_addr[22]),
        .R(rst));
  FDRE \s_out_addr_reg[23] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_out_addr[23]),
        .Q(s_out_addr[23]),
        .R(rst));
  FDRE \s_out_addr_reg[24] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_out_addr[24]),
        .Q(s_out_addr[24]),
        .R(rst));
  FDRE \s_out_addr_reg[25] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_out_addr[25]),
        .Q(s_out_addr[25]),
        .R(rst));
  FDRE \s_out_addr_reg[26] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_out_addr[26]),
        .Q(s_out_addr[26]),
        .R(rst));
  FDRE \s_out_addr_reg[27] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_out_addr[27]),
        .Q(s_out_addr[27]),
        .R(rst));
  FDRE \s_out_addr_reg[28] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_out_addr[28]),
        .Q(s_out_addr[28]),
        .R(rst));
  FDRE \s_out_addr_reg[29] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_out_addr[29]),
        .Q(s_out_addr[29]),
        .R(rst));
  FDRE \s_out_addr_reg[2] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_out_addr[2]),
        .Q(s_out_addr[2]),
        .R(rst));
  FDRE \s_out_addr_reg[30] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_out_addr[30]),
        .Q(s_out_addr[30]),
        .R(rst));
  FDRE \s_out_addr_reg[31] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_out_addr[31]),
        .Q(s_out_addr[31]),
        .R(rst));
  FDRE \s_out_addr_reg[3] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_out_addr[3]),
        .Q(s_out_addr[3]),
        .R(rst));
  FDRE \s_out_addr_reg[4] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_out_addr[4]),
        .Q(s_out_addr[4]),
        .R(rst));
  FDRE \s_out_addr_reg[5] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_out_addr[5]),
        .Q(s_out_addr[5]),
        .R(rst));
  FDRE \s_out_addr_reg[6] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_out_addr[6]),
        .Q(s_out_addr[6]),
        .R(rst));
  FDRE \s_out_addr_reg[7] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_out_addr[7]),
        .Q(s_out_addr[7]),
        .R(rst));
  FDRE \s_out_addr_reg[8] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_out_addr[8]),
        .Q(s_out_addr[8]),
        .R(rst));
  FDRE \s_out_addr_reg[9] 
       (.C(i_clk),
        .CE(s_vecs_addr),
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
       (.I0(s_out_ctr[15]),
        .I1(s_out_ctr[14]),
        .O(s_out_ctr1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    s_out_ctr1_carry__0_i_2
       (.I0(s_out_ctr[13]),
        .I1(s_out_ctr[12]),
        .O(s_out_ctr1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    s_out_ctr1_carry__0_i_3
       (.I0(s_out_ctr[11]),
        .I1(s_out_ctr[10]),
        .O(s_out_ctr1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    s_out_ctr1_carry__0_i_4
       (.I0(s_out_ctr[9]),
        .I1(s_out_ctr[8]),
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
       (.I0(s_out_ctr[23]),
        .I1(s_out_ctr[22]),
        .O(s_out_ctr1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    s_out_ctr1_carry__1_i_2
       (.I0(s_out_ctr[21]),
        .I1(s_out_ctr[20]),
        .O(s_out_ctr1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    s_out_ctr1_carry__1_i_3
       (.I0(s_out_ctr[19]),
        .I1(s_out_ctr[18]),
        .O(s_out_ctr1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    s_out_ctr1_carry__1_i_4
       (.I0(s_out_ctr[17]),
        .I1(s_out_ctr[16]),
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
       (.I0(s_out_ctr[29]),
        .I1(s_out_ctr[28]),
        .O(s_out_ctr1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    s_out_ctr1_carry__2_i_3
       (.I0(s_out_ctr[27]),
        .I1(s_out_ctr[26]),
        .O(s_out_ctr1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    s_out_ctr1_carry__2_i_4
       (.I0(s_out_ctr[25]),
        .I1(s_out_ctr[24]),
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
       (.I0(s_out_ctr[7]),
        .I1(s_out_ctr[6]),
        .O(s_out_ctr1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    s_out_ctr1_carry_i_2
       (.I0(s_out_ctr[3]),
        .I1(s_out_ctr[2]),
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
       (.I0(s_out_ctr[5]),
        .I1(s_out_ctr[4]),
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
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_out_ctr[10]_i_1 
       (.I0(s_out_ctr0[10]),
        .I1(\t_state1_reg_n_0_[2] ),
        .O(p_1_in__0[10]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_out_ctr[11]_i_1 
       (.I0(s_out_ctr0[11]),
        .I1(\t_state1_reg_n_0_[2] ),
        .O(p_1_in__0[11]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_out_ctr[12]_i_1 
       (.I0(s_out_ctr0[12]),
        .I1(\t_state1_reg_n_0_[2] ),
        .O(p_1_in__0[12]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_out_ctr[13]_i_1 
       (.I0(s_out_ctr0[13]),
        .I1(\t_state1_reg_n_0_[2] ),
        .O(p_1_in__0[13]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_out_ctr[14]_i_1 
       (.I0(s_out_ctr0[14]),
        .I1(\t_state1_reg_n_0_[2] ),
        .O(p_1_in__0[14]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_out_ctr[15]_i_1 
       (.I0(s_out_ctr0[15]),
        .I1(\t_state1_reg_n_0_[2] ),
        .O(p_1_in__0[15]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_out_ctr[16]_i_1 
       (.I0(s_out_ctr0[16]),
        .I1(\t_state1_reg_n_0_[2] ),
        .O(p_1_in__0[16]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_out_ctr[17]_i_1 
       (.I0(s_out_ctr0[17]),
        .I1(\t_state1_reg_n_0_[2] ),
        .O(p_1_in__0[17]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_out_ctr[18]_i_1 
       (.I0(s_out_ctr0[18]),
        .I1(\t_state1_reg_n_0_[2] ),
        .O(p_1_in__0[18]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_out_ctr[19]_i_1 
       (.I0(s_out_ctr0[19]),
        .I1(\t_state1_reg_n_0_[2] ),
        .O(p_1_in__0[19]));
  LUT2 #(
    .INIT(4'h2)) 
    \s_out_ctr[1]_i_1 
       (.I0(s_out_ctr0[1]),
        .I1(\t_state1_reg_n_0_[2] ),
        .O(p_1_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_out_ctr[20]_i_1 
       (.I0(s_out_ctr0[20]),
        .I1(\t_state1_reg_n_0_[2] ),
        .O(p_1_in__0[20]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_out_ctr[21]_i_1 
       (.I0(s_out_ctr0[21]),
        .I1(\t_state1_reg_n_0_[2] ),
        .O(p_1_in__0[21]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_out_ctr[22]_i_1 
       (.I0(s_out_ctr0[22]),
        .I1(\t_state1_reg_n_0_[2] ),
        .O(p_1_in__0[22]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_out_ctr[23]_i_1 
       (.I0(s_out_ctr0[23]),
        .I1(\t_state1_reg_n_0_[2] ),
        .O(p_1_in__0[23]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_out_ctr[24]_i_1 
       (.I0(s_out_ctr0[24]),
        .I1(\t_state1_reg_n_0_[2] ),
        .O(p_1_in__0[24]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_out_ctr[25]_i_1 
       (.I0(s_out_ctr0[25]),
        .I1(\t_state1_reg_n_0_[2] ),
        .O(p_1_in__0[25]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_out_ctr[26]_i_1 
       (.I0(s_out_ctr0[26]),
        .I1(\t_state1_reg_n_0_[2] ),
        .O(p_1_in__0[26]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_out_ctr[27]_i_1 
       (.I0(s_out_ctr0[27]),
        .I1(\t_state1_reg_n_0_[2] ),
        .O(p_1_in__0[27]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_out_ctr[28]_i_1 
       (.I0(s_out_ctr0[28]),
        .I1(\t_state1_reg_n_0_[2] ),
        .O(p_1_in__0[28]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_out_ctr[29]_i_1 
       (.I0(s_out_ctr0[29]),
        .I1(\t_state1_reg_n_0_[2] ),
        .O(p_1_in__0[29]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_out_ctr[2]_i_1 
       (.I0(s_out_ctr0[2]),
        .I1(\t_state1_reg_n_0_[2] ),
        .O(p_1_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_out_ctr[30]_i_1 
       (.I0(s_out_ctr0[30]),
        .I1(\t_state1_reg_n_0_[2] ),
        .O(p_1_in__0[30]));
  LUT4 #(
    .INIT(16'h0406)) 
    \s_out_ctr[31]_i_1 
       (.I0(\bram0b[o][o_en] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(\t_state1_reg_n_0_[1] ),
        .I3(s_out_ctr1_carry__2_n_0),
        .O(\s_out_ctr[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_out_ctr[31]_i_2 
       (.I0(s_out_ctr0[31]),
        .I1(\t_state1_reg_n_0_[2] ),
        .O(p_1_in__0[31]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_out_ctr[3]_i_1 
       (.I0(s_out_ctr0[3]),
        .I1(\t_state1_reg_n_0_[2] ),
        .O(p_1_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_out_ctr[4]_i_1 
       (.I0(s_out_ctr0[4]),
        .I1(\t_state1_reg_n_0_[2] ),
        .O(p_1_in__0[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \s_out_ctr[4]_i_3 
       (.I0(s_out_ctr[2]),
        .O(\s_out_ctr[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_out_ctr[5]_i_1 
       (.I0(s_out_ctr0[5]),
        .I1(\t_state1_reg_n_0_[2] ),
        .O(p_1_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_out_ctr[6]_i_1 
       (.I0(s_out_ctr0[6]),
        .I1(\t_state1_reg_n_0_[2] ),
        .O(p_1_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_out_ctr[7]_i_1 
       (.I0(s_out_ctr0[7]),
        .I1(\t_state1_reg_n_0_[2] ),
        .O(p_1_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_out_ctr[8]_i_1 
       (.I0(s_out_ctr0[8]),
        .I1(\t_state1_reg_n_0_[2] ),
        .O(p_1_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_out_ctr[9]_i_1 
       (.I0(s_out_ctr0[9]),
        .I1(\t_state1_reg_n_0_[2] ),
        .O(p_1_in__0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[10] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(p_1_in__0[10]),
        .Q(s_out_ctr[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[11] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(p_1_in__0[11]),
        .Q(s_out_ctr[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[12] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(p_1_in__0[12]),
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
        .D(p_1_in__0[13]),
        .Q(s_out_ctr[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[14] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(p_1_in__0[14]),
        .Q(s_out_ctr[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[15] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(p_1_in__0[15]),
        .Q(s_out_ctr[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[16] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(p_1_in__0[16]),
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
        .D(p_1_in__0[17]),
        .Q(s_out_ctr[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[18] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(p_1_in__0[18]),
        .Q(s_out_ctr[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[19] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(p_1_in__0[19]),
        .Q(s_out_ctr[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[1] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(p_1_in__0[1]),
        .Q(s_out_ctr[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[20] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(p_1_in__0[20]),
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
        .D(p_1_in__0[21]),
        .Q(s_out_ctr[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[22] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(p_1_in__0[22]),
        .Q(s_out_ctr[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[23] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(p_1_in__0[23]),
        .Q(s_out_ctr[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[24] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(p_1_in__0[24]),
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
        .D(p_1_in__0[25]),
        .Q(s_out_ctr[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[26] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(p_1_in__0[26]),
        .Q(s_out_ctr[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[27] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(p_1_in__0[27]),
        .Q(s_out_ctr[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[28] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(p_1_in__0[28]),
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
        .D(p_1_in__0[29]),
        .Q(s_out_ctr[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[2] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(p_1_in__0[2]),
        .Q(s_out_ctr[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[30] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(p_1_in__0[30]),
        .Q(s_out_ctr[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[31] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(p_1_in__0[31]),
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
        .D(p_1_in__0[3]),
        .Q(s_out_ctr[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[4] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(p_1_in__0[4]),
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
        .D(p_1_in__0[5]),
        .Q(s_out_ctr[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[6] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(p_1_in__0[6]),
        .Q(s_out_ctr[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[7] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(p_1_in__0[7]),
        .Q(s_out_ctr[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_ctr_reg[8] 
       (.C(i_clk),
        .CE(\s_out_ctr[31]_i_1_n_0 ),
        .D(p_1_in__0[8]),
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
        .D(p_1_in__0[9]),
        .Q(s_out_ctr[9]),
        .R(rst));
  FDRE \s_vecs_addr_reg[0] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_vec_addr[0]),
        .Q(\s_vecs_addr_reg_n_0_[0] ),
        .R(rst));
  FDRE \s_vecs_addr_reg[10] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_vec_addr[10]),
        .Q(\s_vecs_addr_reg_n_0_[10] ),
        .R(rst));
  FDRE \s_vecs_addr_reg[11] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_vec_addr[11]),
        .Q(\s_vecs_addr_reg_n_0_[11] ),
        .R(rst));
  FDRE \s_vecs_addr_reg[12] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_vec_addr[12]),
        .Q(\s_vecs_addr_reg_n_0_[12] ),
        .R(rst));
  FDRE \s_vecs_addr_reg[13] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_vec_addr[13]),
        .Q(\s_vecs_addr_reg_n_0_[13] ),
        .R(rst));
  FDRE \s_vecs_addr_reg[14] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_vec_addr[14]),
        .Q(\s_vecs_addr_reg_n_0_[14] ),
        .R(rst));
  FDRE \s_vecs_addr_reg[15] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_vec_addr[15]),
        .Q(\s_vecs_addr_reg_n_0_[15] ),
        .R(rst));
  FDRE \s_vecs_addr_reg[16] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_vec_addr[16]),
        .Q(\s_vecs_addr_reg_n_0_[16] ),
        .R(rst));
  FDRE \s_vecs_addr_reg[17] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_vec_addr[17]),
        .Q(\s_vecs_addr_reg_n_0_[17] ),
        .R(rst));
  FDRE \s_vecs_addr_reg[18] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_vec_addr[18]),
        .Q(\s_vecs_addr_reg_n_0_[18] ),
        .R(rst));
  FDRE \s_vecs_addr_reg[19] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_vec_addr[19]),
        .Q(\s_vecs_addr_reg_n_0_[19] ),
        .R(rst));
  FDRE \s_vecs_addr_reg[1] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_vec_addr[1]),
        .Q(\s_vecs_addr_reg_n_0_[1] ),
        .R(rst));
  FDRE \s_vecs_addr_reg[20] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_vec_addr[20]),
        .Q(\s_vecs_addr_reg_n_0_[20] ),
        .R(rst));
  FDRE \s_vecs_addr_reg[21] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_vec_addr[21]),
        .Q(\s_vecs_addr_reg_n_0_[21] ),
        .R(rst));
  FDRE \s_vecs_addr_reg[22] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_vec_addr[22]),
        .Q(\s_vecs_addr_reg_n_0_[22] ),
        .R(rst));
  FDRE \s_vecs_addr_reg[23] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_vec_addr[23]),
        .Q(\s_vecs_addr_reg_n_0_[23] ),
        .R(rst));
  FDRE \s_vecs_addr_reg[24] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_vec_addr[24]),
        .Q(\s_vecs_addr_reg_n_0_[24] ),
        .R(rst));
  FDRE \s_vecs_addr_reg[25] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_vec_addr[25]),
        .Q(\s_vecs_addr_reg_n_0_[25] ),
        .R(rst));
  FDRE \s_vecs_addr_reg[26] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_vec_addr[26]),
        .Q(\s_vecs_addr_reg_n_0_[26] ),
        .R(rst));
  FDRE \s_vecs_addr_reg[27] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_vec_addr[27]),
        .Q(\s_vecs_addr_reg_n_0_[27] ),
        .R(rst));
  FDRE \s_vecs_addr_reg[28] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_vec_addr[28]),
        .Q(\s_vecs_addr_reg_n_0_[28] ),
        .R(rst));
  FDRE \s_vecs_addr_reg[29] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_vec_addr[29]),
        .Q(\s_vecs_addr_reg_n_0_[29] ),
        .R(rst));
  FDRE \s_vecs_addr_reg[2] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_vec_addr[2]),
        .Q(\s_vecs_addr_reg_n_0_[2] ),
        .R(rst));
  FDRE \s_vecs_addr_reg[30] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_vec_addr[30]),
        .Q(\s_vecs_addr_reg_n_0_[30] ),
        .R(rst));
  FDRE \s_vecs_addr_reg[31] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_vec_addr[31]),
        .Q(\s_vecs_addr_reg_n_0_[31] ),
        .R(rst));
  FDRE \s_vecs_addr_reg[3] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_vec_addr[3]),
        .Q(\s_vecs_addr_reg_n_0_[3] ),
        .R(rst));
  FDRE \s_vecs_addr_reg[4] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_vec_addr[4]),
        .Q(\s_vecs_addr_reg_n_0_[4] ),
        .R(rst));
  FDRE \s_vecs_addr_reg[5] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_vec_addr[5]),
        .Q(\s_vecs_addr_reg_n_0_[5] ),
        .R(rst));
  FDRE \s_vecs_addr_reg[6] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_vec_addr[6]),
        .Q(\s_vecs_addr_reg_n_0_[6] ),
        .R(rst));
  FDRE \s_vecs_addr_reg[7] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_vec_addr[7]),
        .Q(\s_vecs_addr_reg_n_0_[7] ),
        .R(rst));
  FDRE \s_vecs_addr_reg[8] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_vec_addr[8]),
        .Q(\s_vecs_addr_reg_n_0_[8] ),
        .R(rst));
  FDRE \s_vecs_addr_reg[9] 
       (.C(i_clk),
        .CE(s_vecs_addr),
        .D(i_vec_addr[9]),
        .Q(\s_vecs_addr_reg_n_0_[9] ),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \t_state1[0]_i_1 
       (.I0(\t_state1_reg_n_0_[1] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .O(\t_state1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h000E)) 
    \t_state1[1]_i_1 
       (.I0(s_acc_change_reg_n_0),
        .I1(\t_state1_reg_n_0_[1] ),
        .I2(\bram0b[o][o_en] ),
        .I3(\t_state1_reg_n_0_[2] ),
        .O(\t_state1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \t_state1[2]_i_1 
       (.I0(s_out_ctr1_carry__2_n_0),
        .I1(\t_state1_reg_n_0_[1] ),
        .I2(\bram0b[o][o_en] ),
        .I3(\t_state1_reg_n_0_[2] ),
        .O(\t_state1[2]_i_1_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 t_state1_carry
       (.CI(1'b0),
        .CO({t_state1_carry_n_0,t_state1_carry_n_1,t_state1_carry_n_2,t_state1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({t_state1_carry_i_1_n_0,t_state1_carry_i_2_n_0,t_state1_carry_i_3_n_0,t_state1_carry_i_4_n_0}),
        .O(NLW_t_state1_carry_O_UNCONNECTED[3:0]),
        .S({t_state1_carry_i_5_n_0,t_state1_carry_i_6_n_0,t_state1_carry_i_7_n_0,t_state1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 t_state1_carry__0
       (.CI(t_state1_carry_n_0),
        .CO({t_state1_carry__0_n_0,t_state1_carry__0_n_1,t_state1_carry__0_n_2,t_state1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({t_state1_carry__0_i_1_n_0,t_state1_carry__0_i_2_n_0,t_state1_carry__0_i_3_n_0,t_state1_carry__0_i_4_n_0}),
        .O(NLW_t_state1_carry__0_O_UNCONNECTED[3:0]),
        .S({t_state1_carry__0_i_5_n_0,t_state1_carry__0_i_6_n_0,t_state1_carry__0_i_7_n_0,t_state1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    t_state1_carry__0_i_1
       (.I0(i[15]),
        .I1(minusOp[15]),
        .I2(i[14]),
        .I3(minusOp[14]),
        .O(t_state1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    t_state1_carry__0_i_2
       (.I0(i[13]),
        .I1(minusOp[13]),
        .I2(i[12]),
        .I3(minusOp[12]),
        .O(t_state1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    t_state1_carry__0_i_3
       (.I0(i[11]),
        .I1(minusOp[11]),
        .I2(i[10]),
        .I3(minusOp[10]),
        .O(t_state1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    t_state1_carry__0_i_4
       (.I0(i[9]),
        .I1(minusOp[9]),
        .I2(i[8]),
        .I3(minusOp[8]),
        .O(t_state1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__0_i_5
       (.I0(minusOp[15]),
        .I1(i[15]),
        .I2(minusOp[14]),
        .I3(i[14]),
        .O(t_state1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__0_i_6
       (.I0(minusOp[13]),
        .I1(i[13]),
        .I2(minusOp[12]),
        .I3(i[12]),
        .O(t_state1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__0_i_7
       (.I0(minusOp[11]),
        .I1(i[11]),
        .I2(minusOp[10]),
        .I3(i[10]),
        .O(t_state1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__0_i_8
       (.I0(minusOp[9]),
        .I1(i[9]),
        .I2(minusOp[8]),
        .I3(i[8]),
        .O(t_state1_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 t_state1_carry__1
       (.CI(t_state1_carry__0_n_0),
        .CO({t_state1_carry__1_n_0,t_state1_carry__1_n_1,t_state1_carry__1_n_2,t_state1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({t_state1_carry__1_i_1_n_0,t_state1_carry__1_i_2_n_0,t_state1_carry__1_i_3_n_0,t_state1_carry__1_i_4_n_0}),
        .O(NLW_t_state1_carry__1_O_UNCONNECTED[3:0]),
        .S({t_state1_carry__1_i_5_n_0,t_state1_carry__1_i_6_n_0,t_state1_carry__1_i_7_n_0,t_state1_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    t_state1_carry__1_i_1
       (.I0(i[23]),
        .I1(minusOp[23]),
        .I2(i[22]),
        .I3(minusOp[22]),
        .O(t_state1_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    t_state1_carry__1_i_2
       (.I0(i[21]),
        .I1(minusOp[21]),
        .I2(i[20]),
        .I3(minusOp[20]),
        .O(t_state1_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    t_state1_carry__1_i_3
       (.I0(i[19]),
        .I1(minusOp[19]),
        .I2(i[18]),
        .I3(minusOp[18]),
        .O(t_state1_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    t_state1_carry__1_i_4
       (.I0(i[17]),
        .I1(minusOp[17]),
        .I2(i[16]),
        .I3(minusOp[16]),
        .O(t_state1_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__1_i_5
       (.I0(minusOp[23]),
        .I1(i[23]),
        .I2(minusOp[22]),
        .I3(i[22]),
        .O(t_state1_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__1_i_6
       (.I0(minusOp[21]),
        .I1(i[21]),
        .I2(minusOp[20]),
        .I3(i[20]),
        .O(t_state1_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__1_i_7
       (.I0(minusOp[19]),
        .I1(i[19]),
        .I2(minusOp[18]),
        .I3(i[18]),
        .O(t_state1_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__1_i_8
       (.I0(minusOp[17]),
        .I1(i[17]),
        .I2(minusOp[16]),
        .I3(i[16]),
        .O(t_state1_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 t_state1_carry__2
       (.CI(t_state1_carry__1_n_0),
        .CO({t_state1_carry__2_n_0,t_state1_carry__2_n_1,t_state1_carry__2_n_2,t_state1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({t_state1_carry__2_i_1_n_0,t_state1_carry__2_i_2_n_0,t_state1_carry__2_i_3_n_0,t_state1_carry__2_i_4_n_0}),
        .O(NLW_t_state1_carry__2_O_UNCONNECTED[3:0]),
        .S({t_state1_carry__2_i_5_n_0,t_state1_carry__2_i_6_n_0,t_state1_carry__2_i_7_n_0,t_state1_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    t_state1_carry__2_i_1
       (.I0(i[31]),
        .I1(minusOp[31]),
        .I2(i[30]),
        .I3(minusOp[30]),
        .O(t_state1_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    t_state1_carry__2_i_2
       (.I0(i[29]),
        .I1(minusOp[29]),
        .I2(i[28]),
        .I3(minusOp[28]),
        .O(t_state1_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    t_state1_carry__2_i_3
       (.I0(i[27]),
        .I1(minusOp[27]),
        .I2(i[26]),
        .I3(minusOp[26]),
        .O(t_state1_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    t_state1_carry__2_i_4
       (.I0(i[25]),
        .I1(minusOp[25]),
        .I2(i[24]),
        .I3(minusOp[24]),
        .O(t_state1_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__2_i_5
       (.I0(minusOp[31]),
        .I1(i[31]),
        .I2(minusOp[30]),
        .I3(i[30]),
        .O(t_state1_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__2_i_6
       (.I0(minusOp[29]),
        .I1(i[29]),
        .I2(minusOp[28]),
        .I3(i[28]),
        .O(t_state1_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__2_i_7
       (.I0(minusOp[27]),
        .I1(i[27]),
        .I2(minusOp[26]),
        .I3(i[26]),
        .O(t_state1_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__2_i_8
       (.I0(minusOp[25]),
        .I1(i[25]),
        .I2(minusOp[24]),
        .I3(i[24]),
        .O(t_state1_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    t_state1_carry_i_1
       (.I0(i[7]),
        .I1(minusOp[7]),
        .I2(i[6]),
        .I3(minusOp[6]),
        .O(t_state1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    t_state1_carry_i_2
       (.I0(i[5]),
        .I1(minusOp[5]),
        .I2(i[4]),
        .I3(minusOp[4]),
        .O(t_state1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    t_state1_carry_i_3
       (.I0(i[3]),
        .I1(minusOp[3]),
        .I2(i[2]),
        .I3(minusOp[2]),
        .O(t_state1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hB222)) 
    t_state1_carry_i_4
       (.I0(i[1]),
        .I1(minusOp[1]),
        .I2(s_len[0]),
        .I3(i[0]),
        .O(t_state1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry_i_5
       (.I0(minusOp[7]),
        .I1(i[7]),
        .I2(minusOp[6]),
        .I3(i[6]),
        .O(t_state1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry_i_6
       (.I0(minusOp[5]),
        .I1(i[5]),
        .I2(minusOp[4]),
        .I3(i[4]),
        .O(t_state1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry_i_7
       (.I0(minusOp[3]),
        .I1(i[3]),
        .I2(minusOp[2]),
        .I3(i[2]),
        .O(t_state1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    t_state1_carry_i_8
       (.I0(i[0]),
        .I1(s_len[0]),
        .I2(minusOp[1]),
        .I3(i[1]),
        .O(t_state1_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \t_state1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\t_state1_inferred__0/i__carry_n_0 ,\t_state1_inferred__0/i__carry_n_1 ,\t_state1_inferred__0/i__carry_n_2 ,\t_state1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1_n_0,1'b0,i__carry_i_2_n_0,\j_reg_n_0_[1] }),
        .O(\NLW_t_state1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_3_n_0,i__carry_i_4_n_0,i__carry_i_5_n_0,i__carry_i_6_n_0}));
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
        .CO({sel,\t_state1_inferred__0/i__carry__2_n_1 ,\t_state1_inferred__0/i__carry__2_n_2 ,\t_state1_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}),
        .O(\NLW_t_state1_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_5_n_0,i__carry__2_i_6_n_0,i__carry__2_i_7_n_0,i__carry__2_i_8_n_0}));
  FDRE #(
    .INIT(1'b0)) 
    \t_state1_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\t_state1[0]_i_1_n_0 ),
        .Q(\bram0b[o][o_en] ),
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
        .D(\t_state1[2]_i_1_n_0 ),
        .Q(\t_state1_reg_n_0_[2] ),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h005E)) 
    \t_state[0]_i_1 
       (.I0(\t_state_reg_n_0_[1] ),
        .I1(i_enable),
        .I2(\t_state_reg_n_0_[0] ),
        .I3(\t_state_reg_n_0_[2] ),
        .O(\t_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00FF0F70)) 
    \t_state[1]_i_1 
       (.I0(t_state1_carry__2_n_0),
        .I1(sel),
        .I2(\t_state_reg_n_0_[1] ),
        .I3(\t_state_reg_n_0_[0] ),
        .I4(\t_state_reg_n_0_[2] ),
        .O(\t_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hAA80)) 
    \t_state[2]_i_1 
       (.I0(\t_state_reg_n_0_[1] ),
        .I1(t_state1_carry__2_n_0),
        .I2(sel),
        .I3(\t_state_reg_n_0_[0] ),
        .O(\t_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \t_state_reg[0] 
       (.C(i_clk),
        .CE(t_state),
        .D(\t_state[0]_i_1_n_0 ),
        .Q(\t_state_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \t_state_reg[1] 
       (.C(i_clk),
        .CE(t_state),
        .D(\t_state[1]_i_1_n_0 ),
        .Q(\t_state_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \t_state_reg[2] 
       (.C(i_clk),
        .CE(t_state),
        .D(\t_state[2]_i_1_n_0 ),
        .Q(\t_state_reg_n_0_[2] ),
        .R(rst));
  LUT3 #(
    .INIT(8'h20)) 
    \tmp[4][31]_i_1 
       (.I0(\bram0b[o][o_en] ),
        .I1(\t_state1_reg_n_0_[2] ),
        .I2(\t_state1_reg_n_0_[1] ),
        .O(\tmp[4][31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][0] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[0]_8 [0]),
        .Q(\tmp[0]_9 [0]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][10] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[0]_8 [10]),
        .Q(\tmp[0]_9 [10]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][11] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[0]_8 [11]),
        .Q(\tmp[0]_9 [11]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][12] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[0]_8 [12]),
        .Q(\tmp[0]_9 [12]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][13] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[0]_8 [13]),
        .Q(\tmp[0]_9 [13]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][14] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[0]_8 [14]),
        .Q(\tmp[0]_9 [14]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][15] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[0]_8 [15]),
        .Q(\tmp[0]_9 [15]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][16] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[0]_8 [16]),
        .Q(\tmp[0]_9 [16]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][17] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[0]_8 [17]),
        .Q(\tmp[0]_9 [17]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][18] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[0]_8 [18]),
        .Q(\tmp[0]_9 [18]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][19] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[0]_8 [19]),
        .Q(\tmp[0]_9 [19]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][1] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[0]_8 [1]),
        .Q(\tmp[0]_9 [1]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][20] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[0]_8 [20]),
        .Q(\tmp[0]_9 [20]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][21] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[0]_8 [21]),
        .Q(\tmp[0]_9 [21]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][22] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[0]_8 [22]),
        .Q(\tmp[0]_9 [22]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][23] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[0]_8 [23]),
        .Q(\tmp[0]_9 [23]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][24] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[0]_8 [24]),
        .Q(\tmp[0]_9 [24]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][25] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[0]_8 [25]),
        .Q(\tmp[0]_9 [25]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][26] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[0]_8 [26]),
        .Q(\tmp[0]_9 [26]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][27] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[0]_8 [27]),
        .Q(\tmp[0]_9 [27]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][28] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[0]_8 [28]),
        .Q(\tmp[0]_9 [28]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][29] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[0]_8 [29]),
        .Q(\tmp[0]_9 [29]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][2] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[0]_8 [2]),
        .Q(\tmp[0]_9 [2]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][30] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[0]_8 [30]),
        .Q(\tmp[0]_9 [30]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][31] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[0]_8 [31]),
        .Q(\tmp[0]_9 [31]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][3] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[0]_8 [3]),
        .Q(\tmp[0]_9 [3]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][4] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[0]_8 [4]),
        .Q(\tmp[0]_9 [4]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][5] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[0]_8 [5]),
        .Q(\tmp[0]_9 [5]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][6] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[0]_8 [6]),
        .Q(\tmp[0]_9 [6]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][7] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[0]_8 [7]),
        .Q(\tmp[0]_9 [7]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][8] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[0]_8 [8]),
        .Q(\tmp[0]_9 [8]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0][9] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[0]_8 [9]),
        .Q(\tmp[0]_9 [9]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][0] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[1]_10 [0]),
        .Q(\tmp[1]_11 [0]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][10] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[1]_10 [10]),
        .Q(\tmp[1]_11 [10]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][11] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[1]_10 [11]),
        .Q(\tmp[1]_11 [11]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][12] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[1]_10 [12]),
        .Q(\tmp[1]_11 [12]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][13] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[1]_10 [13]),
        .Q(\tmp[1]_11 [13]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][14] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[1]_10 [14]),
        .Q(\tmp[1]_11 [14]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][15] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[1]_10 [15]),
        .Q(\tmp[1]_11 [15]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][16] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[1]_10 [16]),
        .Q(\tmp[1]_11 [16]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][17] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[1]_10 [17]),
        .Q(\tmp[1]_11 [17]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][18] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[1]_10 [18]),
        .Q(\tmp[1]_11 [18]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][19] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[1]_10 [19]),
        .Q(\tmp[1]_11 [19]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][1] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[1]_10 [1]),
        .Q(\tmp[1]_11 [1]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][20] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[1]_10 [20]),
        .Q(\tmp[1]_11 [20]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][21] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[1]_10 [21]),
        .Q(\tmp[1]_11 [21]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][22] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[1]_10 [22]),
        .Q(\tmp[1]_11 [22]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][23] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[1]_10 [23]),
        .Q(\tmp[1]_11 [23]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][24] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[1]_10 [24]),
        .Q(\tmp[1]_11 [24]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][25] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[1]_10 [25]),
        .Q(\tmp[1]_11 [25]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][26] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[1]_10 [26]),
        .Q(\tmp[1]_11 [26]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][27] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[1]_10 [27]),
        .Q(\tmp[1]_11 [27]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][28] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[1]_10 [28]),
        .Q(\tmp[1]_11 [28]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][29] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[1]_10 [29]),
        .Q(\tmp[1]_11 [29]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][2] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[1]_10 [2]),
        .Q(\tmp[1]_11 [2]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][30] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[1]_10 [30]),
        .Q(\tmp[1]_11 [30]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][31] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[1]_10 [31]),
        .Q(\tmp[1]_11 [31]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][3] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[1]_10 [3]),
        .Q(\tmp[1]_11 [3]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][4] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[1]_10 [4]),
        .Q(\tmp[1]_11 [4]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][5] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[1]_10 [5]),
        .Q(\tmp[1]_11 [5]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][6] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[1]_10 [6]),
        .Q(\tmp[1]_11 [6]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][7] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[1]_10 [7]),
        .Q(\tmp[1]_11 [7]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][8] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[1]_10 [8]),
        .Q(\tmp[1]_11 [8]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1][9] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[1]_10 [9]),
        .Q(\tmp[1]_11 [9]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][0] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[2]_12 [0]),
        .Q(\tmp[2]_13 [0]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][10] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[2]_12 [10]),
        .Q(\tmp[2]_13 [10]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][11] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[2]_12 [11]),
        .Q(\tmp[2]_13 [11]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][12] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[2]_12 [12]),
        .Q(\tmp[2]_13 [12]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][13] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[2]_12 [13]),
        .Q(\tmp[2]_13 [13]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][14] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[2]_12 [14]),
        .Q(\tmp[2]_13 [14]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][15] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[2]_12 [15]),
        .Q(\tmp[2]_13 [15]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][16] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[2]_12 [16]),
        .Q(\tmp[2]_13 [16]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][17] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[2]_12 [17]),
        .Q(\tmp[2]_13 [17]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][18] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[2]_12 [18]),
        .Q(\tmp[2]_13 [18]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][19] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[2]_12 [19]),
        .Q(\tmp[2]_13 [19]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][1] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[2]_12 [1]),
        .Q(\tmp[2]_13 [1]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][20] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[2]_12 [20]),
        .Q(\tmp[2]_13 [20]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][21] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[2]_12 [21]),
        .Q(\tmp[2]_13 [21]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][22] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[2]_12 [22]),
        .Q(\tmp[2]_13 [22]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][23] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[2]_12 [23]),
        .Q(\tmp[2]_13 [23]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][24] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[2]_12 [24]),
        .Q(\tmp[2]_13 [24]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][25] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[2]_12 [25]),
        .Q(\tmp[2]_13 [25]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][26] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[2]_12 [26]),
        .Q(\tmp[2]_13 [26]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][27] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[2]_12 [27]),
        .Q(\tmp[2]_13 [27]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][28] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[2]_12 [28]),
        .Q(\tmp[2]_13 [28]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][29] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[2]_12 [29]),
        .Q(\tmp[2]_13 [29]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][2] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[2]_12 [2]),
        .Q(\tmp[2]_13 [2]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][30] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[2]_12 [30]),
        .Q(\tmp[2]_13 [30]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][31] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[2]_12 [31]),
        .Q(\tmp[2]_13 [31]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][3] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[2]_12 [3]),
        .Q(\tmp[2]_13 [3]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][4] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[2]_12 [4]),
        .Q(\tmp[2]_13 [4]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][5] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[2]_12 [5]),
        .Q(\tmp[2]_13 [5]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][6] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[2]_12 [6]),
        .Q(\tmp[2]_13 [6]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][7] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[2]_12 [7]),
        .Q(\tmp[2]_13 [7]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][8] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[2]_12 [8]),
        .Q(\tmp[2]_13 [8]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2][9] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[2]_12 [9]),
        .Q(\tmp[2]_13 [9]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][0] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[3]_14 [0]),
        .Q(\tmp[3]_15 [0]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][10] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[3]_14 [10]),
        .Q(\tmp[3]_15 [10]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][11] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[3]_14 [11]),
        .Q(\tmp[3]_15 [11]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][12] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[3]_14 [12]),
        .Q(\tmp[3]_15 [12]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][13] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[3]_14 [13]),
        .Q(\tmp[3]_15 [13]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][14] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[3]_14 [14]),
        .Q(\tmp[3]_15 [14]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][15] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[3]_14 [15]),
        .Q(\tmp[3]_15 [15]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][16] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[3]_14 [16]),
        .Q(\tmp[3]_15 [16]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][17] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[3]_14 [17]),
        .Q(\tmp[3]_15 [17]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][18] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[3]_14 [18]),
        .Q(\tmp[3]_15 [18]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][19] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[3]_14 [19]),
        .Q(\tmp[3]_15 [19]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][1] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[3]_14 [1]),
        .Q(\tmp[3]_15 [1]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][20] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[3]_14 [20]),
        .Q(\tmp[3]_15 [20]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][21] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[3]_14 [21]),
        .Q(\tmp[3]_15 [21]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][22] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[3]_14 [22]),
        .Q(\tmp[3]_15 [22]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][23] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[3]_14 [23]),
        .Q(\tmp[3]_15 [23]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][24] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[3]_14 [24]),
        .Q(\tmp[3]_15 [24]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][25] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[3]_14 [25]),
        .Q(\tmp[3]_15 [25]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][26] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[3]_14 [26]),
        .Q(\tmp[3]_15 [26]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][27] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[3]_14 [27]),
        .Q(\tmp[3]_15 [27]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][28] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[3]_14 [28]),
        .Q(\tmp[3]_15 [28]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][29] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[3]_14 [29]),
        .Q(\tmp[3]_15 [29]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][2] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[3]_14 [2]),
        .Q(\tmp[3]_15 [2]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][30] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[3]_14 [30]),
        .Q(\tmp[3]_15 [30]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][31] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[3]_14 [31]),
        .Q(\tmp[3]_15 [31]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][3] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[3]_14 [3]),
        .Q(\tmp[3]_15 [3]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][4] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[3]_14 [4]),
        .Q(\tmp[3]_15 [4]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][5] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[3]_14 [5]),
        .Q(\tmp[3]_15 [5]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][6] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[3]_14 [6]),
        .Q(\tmp[3]_15 [6]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][7] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[3]_14 [7]),
        .Q(\tmp[3]_15 [7]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][8] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[3]_14 [8]),
        .Q(\tmp[3]_15 [8]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3][9] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[3]_14 [9]),
        .Q(\tmp[3]_15 [9]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][0] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[4]_0 [0]),
        .Q(\tmp[4]_1 [0]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][10] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[4]_0 [10]),
        .Q(\tmp[4]_1 [10]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][11] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[4]_0 [11]),
        .Q(\tmp[4]_1 [11]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][12] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[4]_0 [12]),
        .Q(\tmp[4]_1 [12]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][13] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[4]_0 [13]),
        .Q(\tmp[4]_1 [13]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][14] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[4]_0 [14]),
        .Q(\tmp[4]_1 [14]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][15] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[4]_0 [15]),
        .Q(\tmp[4]_1 [15]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][16] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[4]_0 [16]),
        .Q(\tmp[4]_1 [16]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][17] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[4]_0 [17]),
        .Q(\tmp[4]_1 [17]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][18] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[4]_0 [18]),
        .Q(\tmp[4]_1 [18]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][19] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[4]_0 [19]),
        .Q(\tmp[4]_1 [19]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][1] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[4]_0 [1]),
        .Q(\tmp[4]_1 [1]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][20] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[4]_0 [20]),
        .Q(\tmp[4]_1 [20]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][21] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[4]_0 [21]),
        .Q(\tmp[4]_1 [21]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][22] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[4]_0 [22]),
        .Q(\tmp[4]_1 [22]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][23] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[4]_0 [23]),
        .Q(\tmp[4]_1 [23]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][24] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[4]_0 [24]),
        .Q(\tmp[4]_1 [24]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][25] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[4]_0 [25]),
        .Q(\tmp[4]_1 [25]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][26] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[4]_0 [26]),
        .Q(\tmp[4]_1 [26]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][27] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[4]_0 [27]),
        .Q(\tmp[4]_1 [27]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][28] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[4]_0 [28]),
        .Q(\tmp[4]_1 [28]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][29] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[4]_0 [29]),
        .Q(\tmp[4]_1 [29]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][2] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[4]_0 [2]),
        .Q(\tmp[4]_1 [2]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][30] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[4]_0 [30]),
        .Q(\tmp[4]_1 [30]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][31] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[4]_0 [31]),
        .Q(\tmp[4]_1 [31]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][3] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[4]_0 [3]),
        .Q(\tmp[4]_1 [3]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][4] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[4]_0 [4]),
        .Q(\tmp[4]_1 [4]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][5] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[4]_0 [5]),
        .Q(\tmp[4]_1 [5]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][6] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[4]_0 [6]),
        .Q(\tmp[4]_1 [6]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][7] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[4]_0 [7]),
        .Q(\tmp[4]_1 [7]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][8] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[4]_0 [8]),
        .Q(\tmp[4]_1 [8]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4][9] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[4]_0 [9]),
        .Q(\tmp[4]_1 [9]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][0] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[5]_2 [0]),
        .Q(\tmp[5]_3 [0]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][10] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[5]_2 [10]),
        .Q(\tmp[5]_3 [10]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][11] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[5]_2 [11]),
        .Q(\tmp[5]_3 [11]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][12] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[5]_2 [12]),
        .Q(\tmp[5]_3 [12]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][13] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[5]_2 [13]),
        .Q(\tmp[5]_3 [13]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][14] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[5]_2 [14]),
        .Q(\tmp[5]_3 [14]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][15] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[5]_2 [15]),
        .Q(\tmp[5]_3 [15]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][16] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[5]_2 [16]),
        .Q(\tmp[5]_3 [16]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][17] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[5]_2 [17]),
        .Q(\tmp[5]_3 [17]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][18] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[5]_2 [18]),
        .Q(\tmp[5]_3 [18]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][19] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[5]_2 [19]),
        .Q(\tmp[5]_3 [19]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][1] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[5]_2 [1]),
        .Q(\tmp[5]_3 [1]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][20] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[5]_2 [20]),
        .Q(\tmp[5]_3 [20]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][21] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[5]_2 [21]),
        .Q(\tmp[5]_3 [21]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][22] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[5]_2 [22]),
        .Q(\tmp[5]_3 [22]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][23] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[5]_2 [23]),
        .Q(\tmp[5]_3 [23]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][24] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[5]_2 [24]),
        .Q(\tmp[5]_3 [24]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][25] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[5]_2 [25]),
        .Q(\tmp[5]_3 [25]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][26] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[5]_2 [26]),
        .Q(\tmp[5]_3 [26]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][27] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[5]_2 [27]),
        .Q(\tmp[5]_3 [27]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][28] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[5]_2 [28]),
        .Q(\tmp[5]_3 [28]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][29] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[5]_2 [29]),
        .Q(\tmp[5]_3 [29]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][2] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[5]_2 [2]),
        .Q(\tmp[5]_3 [2]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][30] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[5]_2 [30]),
        .Q(\tmp[5]_3 [30]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][31] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[5]_2 [31]),
        .Q(\tmp[5]_3 [31]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][3] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[5]_2 [3]),
        .Q(\tmp[5]_3 [3]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][4] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[5]_2 [4]),
        .Q(\tmp[5]_3 [4]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][5] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[5]_2 [5]),
        .Q(\tmp[5]_3 [5]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][6] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[5]_2 [6]),
        .Q(\tmp[5]_3 [6]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][7] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[5]_2 [7]),
        .Q(\tmp[5]_3 [7]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][8] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[5]_2 [8]),
        .Q(\tmp[5]_3 [8]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5][9] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[5]_2 [9]),
        .Q(\tmp[5]_3 [9]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][0] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[6]_4 [0]),
        .Q(\tmp[6]_5 [0]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][10] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[6]_4 [10]),
        .Q(\tmp[6]_5 [10]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][11] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[6]_4 [11]),
        .Q(\tmp[6]_5 [11]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][12] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[6]_4 [12]),
        .Q(\tmp[6]_5 [12]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][13] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[6]_4 [13]),
        .Q(\tmp[6]_5 [13]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][14] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[6]_4 [14]),
        .Q(\tmp[6]_5 [14]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][15] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[6]_4 [15]),
        .Q(\tmp[6]_5 [15]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][16] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[6]_4 [16]),
        .Q(\tmp[6]_5 [16]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][17] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[6]_4 [17]),
        .Q(\tmp[6]_5 [17]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][18] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[6]_4 [18]),
        .Q(\tmp[6]_5 [18]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][19] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[6]_4 [19]),
        .Q(\tmp[6]_5 [19]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][1] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[6]_4 [1]),
        .Q(\tmp[6]_5 [1]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][20] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[6]_4 [20]),
        .Q(\tmp[6]_5 [20]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][21] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[6]_4 [21]),
        .Q(\tmp[6]_5 [21]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][22] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[6]_4 [22]),
        .Q(\tmp[6]_5 [22]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][23] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[6]_4 [23]),
        .Q(\tmp[6]_5 [23]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][24] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[6]_4 [24]),
        .Q(\tmp[6]_5 [24]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][25] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[6]_4 [25]),
        .Q(\tmp[6]_5 [25]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][26] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[6]_4 [26]),
        .Q(\tmp[6]_5 [26]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][27] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[6]_4 [27]),
        .Q(\tmp[6]_5 [27]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][28] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[6]_4 [28]),
        .Q(\tmp[6]_5 [28]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][29] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[6]_4 [29]),
        .Q(\tmp[6]_5 [29]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][2] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[6]_4 [2]),
        .Q(\tmp[6]_5 [2]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][30] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[6]_4 [30]),
        .Q(\tmp[6]_5 [30]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][31] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[6]_4 [31]),
        .Q(\tmp[6]_5 [31]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][3] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[6]_4 [3]),
        .Q(\tmp[6]_5 [3]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][4] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[6]_4 [4]),
        .Q(\tmp[6]_5 [4]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][5] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[6]_4 [5]),
        .Q(\tmp[6]_5 [5]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][6] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[6]_4 [6]),
        .Q(\tmp[6]_5 [6]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][7] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[6]_4 [7]),
        .Q(\tmp[6]_5 [7]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][8] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[6]_4 [8]),
        .Q(\tmp[6]_5 [8]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6][9] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[6]_4 [9]),
        .Q(\tmp[6]_5 [9]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][0] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[7]_6 [0]),
        .Q(\tmp[7]_7 [0]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][10] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[7]_6 [10]),
        .Q(\tmp[7]_7 [10]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][11] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[7]_6 [11]),
        .Q(\tmp[7]_7 [11]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][12] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[7]_6 [12]),
        .Q(\tmp[7]_7 [12]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][13] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[7]_6 [13]),
        .Q(\tmp[7]_7 [13]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][14] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[7]_6 [14]),
        .Q(\tmp[7]_7 [14]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][15] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[7]_6 [15]),
        .Q(\tmp[7]_7 [15]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][16] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[7]_6 [16]),
        .Q(\tmp[7]_7 [16]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][17] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[7]_6 [17]),
        .Q(\tmp[7]_7 [17]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][18] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[7]_6 [18]),
        .Q(\tmp[7]_7 [18]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][19] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[7]_6 [19]),
        .Q(\tmp[7]_7 [19]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][1] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[7]_6 [1]),
        .Q(\tmp[7]_7 [1]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][20] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[7]_6 [20]),
        .Q(\tmp[7]_7 [20]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][21] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[7]_6 [21]),
        .Q(\tmp[7]_7 [21]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][22] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[7]_6 [22]),
        .Q(\tmp[7]_7 [22]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][23] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[7]_6 [23]),
        .Q(\tmp[7]_7 [23]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][24] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[7]_6 [24]),
        .Q(\tmp[7]_7 [24]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][25] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[7]_6 [25]),
        .Q(\tmp[7]_7 [25]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][26] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[7]_6 [26]),
        .Q(\tmp[7]_7 [26]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][27] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[7]_6 [27]),
        .Q(\tmp[7]_7 [27]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][28] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[7]_6 [28]),
        .Q(\tmp[7]_7 [28]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][29] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[7]_6 [29]),
        .Q(\tmp[7]_7 [29]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][2] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[7]_6 [2]),
        .Q(\tmp[7]_7 [2]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][30] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[7]_6 [30]),
        .Q(\tmp[7]_7 [30]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][31] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[7]_6 [31]),
        .Q(\tmp[7]_7 [31]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][3] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[7]_6 [3]),
        .Q(\tmp[7]_7 [3]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][4] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[7]_6 [4]),
        .Q(\tmp[7]_7 [4]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][5] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[7]_6 [5]),
        .Q(\tmp[7]_7 [5]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][6] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[7]_6 [6]),
        .Q(\tmp[7]_7 [6]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][7] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[7]_6 [7]),
        .Q(\tmp[7]_7 [7]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][8] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[7]_6 [8]),
        .Q(\tmp[7]_7 [8]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7][9] 
       (.C(i_clk),
        .CE(\tmp[4][31]_i_1_n_0 ),
        .D(\s_acc[7]_6 [9]),
        .Q(\tmp[7]_7 [9]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFBFC0800)) 
    tmp_sel_i_1
       (.I0(s_acc_sel),
        .I1(\bram0b[o][o_en] ),
        .I2(\t_state1_reg_n_0_[2] ),
        .I3(\t_state1_reg_n_0_[1] ),
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
