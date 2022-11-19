// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Nov 17 19:44:40 2022
// Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_mayo_negate_0_0/Mayo_keygen_no_zynq_mayo_negate_0_0_sim_netlist.v
// Design      : Mayo_keygen_no_zynq_mayo_negate_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Mayo_keygen_no_zynq_mayo_negate_0_0,mayo_negate,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "mayo_negate,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Mayo_keygen_no_zynq_mayo_negate_0_0
   (i_clk,
    rst,
    i_enable,
    i_len,
    i_adr,
    i_doutb,
    o_addrb,
    o_dinb,
    o_enb,
    o_rstb,
    o_web,
    o_done,
    o_control);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input i_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input i_enable;
  input [31:0]i_len;
  input [31:0]i_adr;
  input [31:0]i_doutb;
  output [31:0]o_addrb;
  output [31:0]o_dinb;
  output o_enb;
  output o_rstb;
  output [3:0]o_web;
  output o_done;
  output o_control;

  wire [31:0]i_adr;
  wire i_clk;
  wire [31:0]i_doutb;
  wire i_enable;
  wire [31:0]i_len;
  wire [31:0]o_addrb;
  wire o_control;
  wire [31:0]o_dinb;
  wire o_done;
  wire o_enb;
  wire o_rstb;
  wire [2:2]\^o_web ;
  wire rst;

  assign o_web[3] = \^o_web [2];
  assign o_web[2] = \^o_web [2];
  assign o_web[1] = \^o_web [2];
  assign o_web[0] = \^o_web [2];
  Mayo_keygen_no_zynq_mayo_negate_0_0_mayo_negate U0
       (.i_adr(i_adr),
        .i_clk(i_clk),
        .i_doutb(i_doutb),
        .i_enable(i_enable),
        .i_len(i_len[31:2]),
        .o_addrb(o_addrb),
        .o_control(o_control),
        .o_dinb(o_dinb),
        .o_done(o_done),
        .o_enb(o_enb),
        .o_rstb(o_rstb),
        .o_web(\^o_web ),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "mayo_negate" *) 
module Mayo_keygen_no_zynq_mayo_negate_0_0_mayo_negate
   (o_rstb,
    o_dinb,
    o_addrb,
    o_enb,
    o_web,
    o_done,
    o_control,
    rst,
    i_clk,
    i_len,
    i_doutb,
    i_adr,
    i_enable);
  output o_rstb;
  output [31:0]o_dinb;
  output [31:0]o_addrb;
  output o_enb;
  output [0:0]o_web;
  output o_done;
  output o_control;
  input rst;
  input i_clk;
  input [29:0]i_len;
  input [31:0]i_doutb;
  input [31:0]i_adr;
  input i_enable;

  wire \FSM_onehot_t_state[0]_i_1_n_0 ;
  wire \FSM_onehot_t_state[1]_i_1_n_0 ;
  wire \FSM_onehot_t_state[5]_i_1_n_0 ;
  wire \FSM_onehot_t_state[5]_i_2_n_0 ;
  wire \FSM_onehot_t_state_reg_n_0_[0] ;
  wire \FSM_onehot_t_state_reg_n_0_[1] ;
  wire \FSM_onehot_t_state_reg_n_0_[2] ;
  wire \FSM_onehot_t_state_reg_n_0_[3] ;
  wire \FSM_onehot_t_state_reg_n_0_[4] ;
  wire \FSM_onehot_t_state_reg_n_0_[5] ;
  wire i___0_carry__0_i_1__0_n_0;
  wire i___0_carry__0_i_1__1_n_0;
  wire i___0_carry__0_i_1_n_0;
  wire i___0_carry__0_i_2__0_n_0;
  wire i___0_carry__0_i_2__1_n_0;
  wire i___0_carry__0_i_2_n_0;
  wire i___0_carry__0_i_3__0_n_0;
  wire i___0_carry__0_i_3__1_n_0;
  wire i___0_carry__0_i_3_n_0;
  wire i___0_carry_i_1__0_n_0;
  wire i___0_carry_i_1__1_n_0;
  wire i___0_carry_i_1_n_0;
  wire i___0_carry_i_2__0_n_0;
  wire i___0_carry_i_2__1_n_0;
  wire i___0_carry_i_2_n_0;
  wire i___0_carry_i_3__0_n_0;
  wire i___0_carry_i_3__1_n_0;
  wire i___0_carry_i_3_n_0;
  wire i___0_carry_i_4__0_n_0;
  wire i___0_carry_i_4__1_n_0;
  wire i___0_carry_i_4_n_0;
  wire i___14_carry__0_i_1__0_n_0;
  wire i___14_carry__0_i_1_n_0;
  wire i___14_carry__0_i_2__0_n_0;
  wire i___14_carry__0_i_2__1_n_0;
  wire i___14_carry__0_i_2_n_0;
  wire i___14_carry__0_i_3__0_n_0;
  wire i___14_carry__0_i_3__1_n_0;
  wire i___14_carry__0_i_3_n_0;
  wire i___14_carry_i_1__0_n_0;
  wire i___14_carry_i_1_n_0;
  wire i___14_carry_i_2__0_n_0;
  wire i___14_carry_i_2_n_0;
  wire i___14_carry_i_3__0_n_0;
  wire i___14_carry_i_3_n_0;
  wire i___14_carry_i_4__0_n_0;
  wire i___14_carry_i_4_n_0;
  wire i___14_carry_i_5__0_n_0;
  wire i___14_carry_i_5__1_n_0;
  wire i___14_carry_i_5_n_0;
  wire i___14_carry_i_6__0_n_0;
  wire i___14_carry_i_6__1_n_0;
  wire i___14_carry_i_6_n_0;
  wire i___14_carry_i_7__0_n_0;
  wire i___14_carry_i_7__1_n_0;
  wire i___14_carry_i_7_n_0;
  wire i___14_carry_i_8__0_n_0;
  wire i___14_carry_i_8__1_n_0;
  wire i___14_carry_i_8_n_0;
  wire [31:0]i_adr;
  wire i_clk;
  wire [31:0]i_doutb;
  wire i_enable;
  wire [29:0]i_len;
  wire [30:1]in5;
  wire [31:1]in9;
  wire [31:0]o_addrb;
  wire o_control;
  wire o_control_i_1_n_0;
  wire [31:0]o_dinb;
  wire o_done;
  wire o_done_i_1_n_0;
  wire o_enb;
  wire o_rstb;
  wire [0:0]o_web;
  wire [4:0]p_0_in;
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
  wire rst;
  wire s_addrb;
  wire \s_addrb[0]_i_1_n_0 ;
  wire \s_addrb[10]_i_1_n_0 ;
  wire \s_addrb[11]_i_1_n_0 ;
  wire \s_addrb[12]_i_1_n_0 ;
  wire \s_addrb[13]_i_1_n_0 ;
  wire \s_addrb[14]_i_1_n_0 ;
  wire \s_addrb[15]_i_1_n_0 ;
  wire \s_addrb[16]_i_1_n_0 ;
  wire \s_addrb[17]_i_1_n_0 ;
  wire \s_addrb[18]_i_1_n_0 ;
  wire \s_addrb[19]_i_1_n_0 ;
  wire \s_addrb[1]_i_1_n_0 ;
  wire \s_addrb[20]_i_1_n_0 ;
  wire \s_addrb[21]_i_1_n_0 ;
  wire \s_addrb[22]_i_1_n_0 ;
  wire \s_addrb[23]_i_1_n_0 ;
  wire \s_addrb[24]_i_1_n_0 ;
  wire \s_addrb[25]_i_1_n_0 ;
  wire \s_addrb[26]_i_1_n_0 ;
  wire \s_addrb[27]_i_1_n_0 ;
  wire \s_addrb[28]_i_1_n_0 ;
  wire \s_addrb[29]_i_1_n_0 ;
  wire \s_addrb[2]_i_1_n_0 ;
  wire \s_addrb[30]_i_1_n_0 ;
  wire \s_addrb[31]_i_2_n_0 ;
  wire \s_addrb[31]_i_3_n_0 ;
  wire \s_addrb[3]_i_1_n_0 ;
  wire \s_addrb[4]_i_1_n_0 ;
  wire \s_addrb[5]_i_1_n_0 ;
  wire \s_addrb[6]_i_1_n_0 ;
  wire \s_addrb[7]_i_1_n_0 ;
  wire \s_addrb[8]_i_1_n_0 ;
  wire \s_addrb[9]_i_1_n_0 ;
  wire s_data0__0_carry__0_i_1_n_0;
  wire s_data0__0_carry__0_i_2_n_0;
  wire s_data0__0_carry__0_i_3_n_0;
  wire s_data0__0_carry__0_n_3;
  wire s_data0__0_carry__0_n_6;
  wire s_data0__0_carry__0_n_7;
  wire s_data0__0_carry_i_1_n_0;
  wire s_data0__0_carry_i_2_n_0;
  wire s_data0__0_carry_i_3_n_0;
  wire s_data0__0_carry_i_4_n_0;
  wire s_data0__0_carry_n_0;
  wire s_data0__0_carry_n_1;
  wire s_data0__0_carry_n_2;
  wire s_data0__0_carry_n_3;
  wire s_data0__0_carry_n_4;
  wire s_data0__0_carry_n_5;
  wire s_data0__0_carry_n_6;
  wire s_data0__0_carry_n_7;
  wire s_data0__14_carry__0_i_1_n_0;
  wire s_data0__14_carry__0_i_2_n_0;
  wire s_data0__14_carry__0_i_3_n_0;
  wire s_data0__14_carry__0_n_3;
  wire s_data0__14_carry__0_n_6;
  wire s_data0__14_carry__0_n_7;
  wire s_data0__14_carry_i_1_n_0;
  wire s_data0__14_carry_i_2_n_0;
  wire s_data0__14_carry_i_3_n_0;
  wire s_data0__14_carry_i_4_n_0;
  wire s_data0__14_carry_i_5_n_0;
  wire s_data0__14_carry_i_6_n_0;
  wire s_data0__14_carry_i_7_n_0;
  wire s_data0__14_carry_i_8_n_0;
  wire s_data0__14_carry_n_0;
  wire s_data0__14_carry_n_1;
  wire s_data0__14_carry_n_2;
  wire s_data0__14_carry_n_3;
  wire s_data0__14_carry_n_4;
  wire s_data0__14_carry_n_5;
  wire s_data0__14_carry_n_6;
  wire s_data0__14_carry_n_7;
  wire \s_data0_inferred__0/i___0_carry__0_n_3 ;
  wire \s_data0_inferred__0/i___0_carry__0_n_6 ;
  wire \s_data0_inferred__0/i___0_carry__0_n_7 ;
  wire \s_data0_inferred__0/i___0_carry_n_0 ;
  wire \s_data0_inferred__0/i___0_carry_n_1 ;
  wire \s_data0_inferred__0/i___0_carry_n_2 ;
  wire \s_data0_inferred__0/i___0_carry_n_3 ;
  wire \s_data0_inferred__0/i___0_carry_n_4 ;
  wire \s_data0_inferred__0/i___0_carry_n_5 ;
  wire \s_data0_inferred__0/i___0_carry_n_6 ;
  wire \s_data0_inferred__0/i___0_carry_n_7 ;
  wire \s_data0_inferred__0/i___14_carry__0_n_3 ;
  wire \s_data0_inferred__0/i___14_carry__0_n_6 ;
  wire \s_data0_inferred__0/i___14_carry__0_n_7 ;
  wire \s_data0_inferred__0/i___14_carry_n_0 ;
  wire \s_data0_inferred__0/i___14_carry_n_1 ;
  wire \s_data0_inferred__0/i___14_carry_n_2 ;
  wire \s_data0_inferred__0/i___14_carry_n_3 ;
  wire \s_data0_inferred__0/i___14_carry_n_4 ;
  wire \s_data0_inferred__0/i___14_carry_n_5 ;
  wire \s_data0_inferred__0/i___14_carry_n_6 ;
  wire \s_data0_inferred__0/i___14_carry_n_7 ;
  wire \s_data0_inferred__1/i___0_carry__0_n_3 ;
  wire \s_data0_inferred__1/i___0_carry__0_n_6 ;
  wire \s_data0_inferred__1/i___0_carry__0_n_7 ;
  wire \s_data0_inferred__1/i___0_carry_n_0 ;
  wire \s_data0_inferred__1/i___0_carry_n_1 ;
  wire \s_data0_inferred__1/i___0_carry_n_2 ;
  wire \s_data0_inferred__1/i___0_carry_n_3 ;
  wire \s_data0_inferred__1/i___0_carry_n_4 ;
  wire \s_data0_inferred__1/i___0_carry_n_5 ;
  wire \s_data0_inferred__1/i___0_carry_n_6 ;
  wire \s_data0_inferred__1/i___0_carry_n_7 ;
  wire \s_data0_inferred__1/i___14_carry__0_n_3 ;
  wire \s_data0_inferred__1/i___14_carry__0_n_6 ;
  wire \s_data0_inferred__1/i___14_carry__0_n_7 ;
  wire \s_data0_inferred__1/i___14_carry_n_0 ;
  wire \s_data0_inferred__1/i___14_carry_n_1 ;
  wire \s_data0_inferred__1/i___14_carry_n_2 ;
  wire \s_data0_inferred__1/i___14_carry_n_3 ;
  wire \s_data0_inferred__1/i___14_carry_n_4 ;
  wire \s_data0_inferred__1/i___14_carry_n_5 ;
  wire \s_data0_inferred__1/i___14_carry_n_6 ;
  wire \s_data0_inferred__1/i___14_carry_n_7 ;
  wire \s_data0_inferred__2/i___0_carry__0_n_3 ;
  wire \s_data0_inferred__2/i___0_carry__0_n_6 ;
  wire \s_data0_inferred__2/i___0_carry__0_n_7 ;
  wire \s_data0_inferred__2/i___0_carry_n_0 ;
  wire \s_data0_inferred__2/i___0_carry_n_1 ;
  wire \s_data0_inferred__2/i___0_carry_n_2 ;
  wire \s_data0_inferred__2/i___0_carry_n_3 ;
  wire \s_data0_inferred__2/i___0_carry_n_4 ;
  wire \s_data0_inferred__2/i___0_carry_n_5 ;
  wire \s_data0_inferred__2/i___0_carry_n_6 ;
  wire \s_data0_inferred__2/i___0_carry_n_7 ;
  wire \s_data0_inferred__2/i___14_carry__0_n_3 ;
  wire \s_data0_inferred__2/i___14_carry__0_n_6 ;
  wire \s_data0_inferred__2/i___14_carry__0_n_7 ;
  wire \s_data0_inferred__2/i___14_carry_n_0 ;
  wire \s_data0_inferred__2/i___14_carry_n_1 ;
  wire \s_data0_inferred__2/i___14_carry_n_2 ;
  wire \s_data0_inferred__2/i___14_carry_n_3 ;
  wire \s_data0_inferred__2/i___14_carry_n_4 ;
  wire \s_data0_inferred__2/i___14_carry_n_5 ;
  wire \s_data0_inferred__2/i___14_carry_n_6 ;
  wire \s_data0_inferred__2/i___14_carry_n_7 ;
  wire \s_data[0]_i_1_n_0 ;
  wire \s_data[10]_i_1_n_0 ;
  wire \s_data[10]_i_2_n_0 ;
  wire \s_data[11]_i_1_n_0 ;
  wire \s_data[12]_i_1_n_0 ;
  wire \s_data[12]_i_2_n_0 ;
  wire \s_data[16]_i_1_n_0 ;
  wire \s_data[17]_i_1_n_0 ;
  wire \s_data[17]_i_2_n_0 ;
  wire \s_data[18]_i_1_n_0 ;
  wire \s_data[18]_i_2_n_0 ;
  wire \s_data[19]_i_1_n_0 ;
  wire \s_data[1]_i_1_n_0 ;
  wire \s_data[1]_i_2_n_0 ;
  wire \s_data[20]_i_1_n_0 ;
  wire \s_data[20]_i_2_n_0 ;
  wire \s_data[24]_i_1_n_0 ;
  wire \s_data[25]_i_1_n_0 ;
  wire \s_data[25]_i_2_n_0 ;
  wire \s_data[26]_i_1_n_0 ;
  wire \s_data[26]_i_2_n_0 ;
  wire \s_data[27]_i_1_n_0 ;
  wire \s_data[28]_i_1_n_0 ;
  wire \s_data[28]_i_2_n_0 ;
  wire \s_data[2]_i_1_n_0 ;
  wire \s_data[2]_i_2_n_0 ;
  wire \s_data[31]_i_1_n_0 ;
  wire \s_data[31]_i_2_n_0 ;
  wire \s_data[3]_i_1_n_0 ;
  wire \s_data[4]_i_1_n_0 ;
  wire \s_data[4]_i_2_n_0 ;
  wire \s_data[8]_i_1_n_0 ;
  wire \s_data[9]_i_1_n_0 ;
  wire \s_data[9]_i_2_n_0 ;
  wire s_enb_i_1_n_0;
  wire [30:0]s_index;
  wire s_index0_carry__0_n_0;
  wire s_index0_carry__0_n_1;
  wire s_index0_carry__0_n_2;
  wire s_index0_carry__0_n_3;
  wire s_index0_carry__1_n_0;
  wire s_index0_carry__1_n_1;
  wire s_index0_carry__1_n_2;
  wire s_index0_carry__1_n_3;
  wire s_index0_carry__2_n_0;
  wire s_index0_carry__2_n_1;
  wire s_index0_carry__2_n_2;
  wire s_index0_carry__2_n_3;
  wire s_index0_carry__3_n_0;
  wire s_index0_carry__3_n_1;
  wire s_index0_carry__3_n_2;
  wire s_index0_carry__3_n_3;
  wire s_index0_carry__4_n_0;
  wire s_index0_carry__4_n_1;
  wire s_index0_carry__4_n_2;
  wire s_index0_carry__4_n_3;
  wire s_index0_carry__5_n_0;
  wire s_index0_carry__5_n_1;
  wire s_index0_carry__5_n_2;
  wire s_index0_carry__5_n_3;
  wire s_index0_carry__6_n_3;
  wire s_index0_carry_n_0;
  wire s_index0_carry_n_1;
  wire s_index0_carry_n_2;
  wire s_index0_carry_n_3;
  wire \s_index[0]_i_1_n_0 ;
  wire \s_index[30]_i_1_n_0 ;
  wire \s_index[30]_i_2_n_0 ;
  wire [29:0]s_max_len;
  wire \s_max_len[29]_i_1_n_0 ;
  wire s_rstb_i_1_n_0;
  wire \s_web[3]_i_1_n_0 ;
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
  wire [3:2]NLW_plusOp_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__6_O_UNCONNECTED;
  wire [3:1]NLW_s_data0__0_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_s_data0__0_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_s_data0__14_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_s_data0__14_carry__0_O_UNCONNECTED;
  wire [3:1]\NLW_s_data0_inferred__0/i___0_carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_data0_inferred__0/i___0_carry__0_O_UNCONNECTED ;
  wire [3:1]\NLW_s_data0_inferred__0/i___14_carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_data0_inferred__0/i___14_carry__0_O_UNCONNECTED ;
  wire [3:1]\NLW_s_data0_inferred__1/i___0_carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_data0_inferred__1/i___0_carry__0_O_UNCONNECTED ;
  wire [3:1]\NLW_s_data0_inferred__1/i___14_carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_data0_inferred__1/i___14_carry__0_O_UNCONNECTED ;
  wire [3:1]\NLW_s_data0_inferred__2/i___0_carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_data0_inferred__2/i___0_carry__0_O_UNCONNECTED ;
  wire [3:1]\NLW_s_data0_inferred__2/i___14_carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_data0_inferred__2/i___14_carry__0_O_UNCONNECTED ;
  wire [3:1]NLW_s_index0_carry__6_CO_UNCONNECTED;
  wire [3:2]NLW_s_index0_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_t_state1_carry_O_UNCONNECTED;
  wire [3:0]NLW_t_state1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_t_state1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_t_state1_carry__2_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_t_state[0]_i_1 
       (.I0(i_enable),
        .I1(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_t_state_reg_n_0_[5] ),
        .O(\FSM_onehot_t_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_t_state[1]_i_1 
       (.I0(t_state1_carry__2_n_0),
        .I1(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I2(i_enable),
        .I3(\FSM_onehot_t_state_reg_n_0_[0] ),
        .O(\FSM_onehot_t_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_t_state[5]_i_1 
       (.I0(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_t_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_t_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_t_state_reg_n_0_[2] ),
        .I5(\FSM_onehot_t_state_reg_n_0_[3] ),
        .O(\FSM_onehot_t_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_t_state[5]_i_2 
       (.I0(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I1(t_state1_carry__2_n_0),
        .O(\FSM_onehot_t_state[5]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "read2:000100,write1:001000,write2:010000,idle:000001,read1:000010,done:100000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_t_state_reg[0] 
       (.C(i_clk),
        .CE(\FSM_onehot_t_state[5]_i_1_n_0 ),
        .D(\FSM_onehot_t_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_t_state_reg_n_0_[0] ),
        .S(rst));
  (* FSM_ENCODED_STATES = "read2:000100,write1:001000,write2:010000,idle:000001,read1:000010,done:100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_t_state_reg[1] 
       (.C(i_clk),
        .CE(\FSM_onehot_t_state[5]_i_1_n_0 ),
        .D(\FSM_onehot_t_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_t_state_reg_n_0_[1] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "read2:000100,write1:001000,write2:010000,idle:000001,read1:000010,done:100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_t_state_reg[2] 
       (.C(i_clk),
        .CE(\FSM_onehot_t_state[5]_i_1_n_0 ),
        .D(\FSM_onehot_t_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_t_state_reg_n_0_[2] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "read2:000100,write1:001000,write2:010000,idle:000001,read1:000010,done:100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_t_state_reg[3] 
       (.C(i_clk),
        .CE(\FSM_onehot_t_state[5]_i_1_n_0 ),
        .D(\FSM_onehot_t_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_t_state_reg_n_0_[3] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "read2:000100,write1:001000,write2:010000,idle:000001,read1:000010,done:100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_t_state_reg[4] 
       (.C(i_clk),
        .CE(\FSM_onehot_t_state[5]_i_1_n_0 ),
        .D(\FSM_onehot_t_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_t_state_reg_n_0_[4] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "read2:000100,write1:001000,write2:010000,idle:000001,read1:000010,done:100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_t_state_reg[5] 
       (.C(i_clk),
        .CE(\FSM_onehot_t_state[5]_i_1_n_0 ),
        .D(\FSM_onehot_t_state[5]_i_2_n_0 ),
        .Q(\FSM_onehot_t_state_reg_n_0_[5] ),
        .R(rst));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'h2E)) 
    i___0_carry__0_i_1
       (.I0(o_dinb[13]),
        .I1(o_dinb[14]),
        .I2(o_dinb[15]),
        .O(i___0_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'h2E)) 
    i___0_carry__0_i_1__0
       (.I0(o_dinb[21]),
        .I1(o_dinb[22]),
        .I2(o_dinb[23]),
        .O(i___0_carry__0_i_1__0_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'h2E)) 
    i___0_carry__0_i_1__1
       (.I0(o_dinb[29]),
        .I1(o_dinb[30]),
        .I2(o_dinb[31]),
        .O(i___0_carry__0_i_1__1_n_0));
  LUT3 #(
    .INIT(8'h56)) 
    i___0_carry__0_i_2
       (.I0(o_dinb[13]),
        .I1(o_dinb[14]),
        .I2(o_dinb[15]),
        .O(i___0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h56)) 
    i___0_carry__0_i_2__0
       (.I0(o_dinb[21]),
        .I1(o_dinb[22]),
        .I2(o_dinb[23]),
        .O(i___0_carry__0_i_2__0_n_0));
  LUT3 #(
    .INIT(8'h56)) 
    i___0_carry__0_i_2__1
       (.I0(o_dinb[29]),
        .I1(o_dinb[30]),
        .I2(o_dinb[31]),
        .O(i___0_carry__0_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h5A96)) 
    i___0_carry__0_i_3
       (.I0(i___0_carry__0_i_1_n_0),
        .I1(o_dinb[13]),
        .I2(o_dinb[15]),
        .I3(o_dinb[14]),
        .O(i___0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h5A96)) 
    i___0_carry__0_i_3__0
       (.I0(i___0_carry__0_i_1__0_n_0),
        .I1(o_dinb[21]),
        .I2(o_dinb[23]),
        .I3(o_dinb[22]),
        .O(i___0_carry__0_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h5A96)) 
    i___0_carry__0_i_3__1
       (.I0(i___0_carry__0_i_1__1_n_0),
        .I1(o_dinb[29]),
        .I2(o_dinb[31]),
        .I3(o_dinb[30]),
        .O(i___0_carry__0_i_3__1_n_0));
  LUT3 #(
    .INIT(8'h9C)) 
    i___0_carry_i_1
       (.I0(o_dinb[14]),
        .I1(o_dinb[15]),
        .I2(o_dinb[13]),
        .O(i___0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h9C)) 
    i___0_carry_i_1__0
       (.I0(o_dinb[22]),
        .I1(o_dinb[23]),
        .I2(o_dinb[21]),
        .O(i___0_carry_i_1__0_n_0));
  LUT3 #(
    .INIT(8'h9C)) 
    i___0_carry_i_1__1
       (.I0(o_dinb[30]),
        .I1(o_dinb[31]),
        .I2(o_dinb[29]),
        .O(i___0_carry_i_1__1_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    i___0_carry_i_2
       (.I0(o_dinb[13]),
        .I1(o_dinb[14]),
        .I2(o_dinb[15]),
        .O(i___0_carry_i_2_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    i___0_carry_i_2__0
       (.I0(o_dinb[21]),
        .I1(o_dinb[22]),
        .I2(o_dinb[23]),
        .O(i___0_carry_i_2__0_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    i___0_carry_i_2__1
       (.I0(o_dinb[29]),
        .I1(o_dinb[30]),
        .I2(o_dinb[31]),
        .O(i___0_carry_i_2__1_n_0));
  LUT3 #(
    .INIT(8'h9C)) 
    i___0_carry_i_3
       (.I0(o_dinb[14]),
        .I1(o_dinb[15]),
        .I2(o_dinb[13]),
        .O(i___0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h9C)) 
    i___0_carry_i_3__0
       (.I0(o_dinb[22]),
        .I1(o_dinb[23]),
        .I2(o_dinb[21]),
        .O(i___0_carry_i_3__0_n_0));
  LUT3 #(
    .INIT(8'h9C)) 
    i___0_carry_i_3__1
       (.I0(o_dinb[30]),
        .I1(o_dinb[31]),
        .I2(o_dinb[29]),
        .O(i___0_carry_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i___0_carry_i_4
       (.I0(o_dinb[14]),
        .O(i___0_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i___0_carry_i_4__0
       (.I0(o_dinb[22]),
        .O(i___0_carry_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i___0_carry_i_4__1
       (.I0(o_dinb[30]),
        .O(i___0_carry_i_4__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___14_carry__0_i_1
       (.I0(o_dinb[12]),
        .O(i___14_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___14_carry__0_i_1__0
       (.I0(o_dinb[20]),
        .O(i___14_carry__0_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___14_carry__0_i_1__1
       (.I0(o_dinb[28]),
        .O(p_0_in[4]));
  LUT2 #(
    .INIT(4'h9)) 
    i___14_carry__0_i_2
       (.I0(o_dinb[13]),
        .I1(\s_data0_inferred__0/i___0_carry__0_n_6 ),
        .O(i___14_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___14_carry__0_i_2__0
       (.I0(o_dinb[21]),
        .I1(\s_data0_inferred__1/i___0_carry__0_n_6 ),
        .O(i___14_carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___14_carry__0_i_2__1
       (.I0(o_dinb[29]),
        .I1(\s_data0_inferred__2/i___0_carry__0_n_6 ),
        .O(i___14_carry__0_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___14_carry__0_i_3
       (.I0(o_dinb[12]),
        .I1(\s_data0_inferred__0/i___0_carry__0_n_7 ),
        .O(i___14_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___14_carry__0_i_3__0
       (.I0(o_dinb[20]),
        .I1(\s_data0_inferred__1/i___0_carry__0_n_7 ),
        .O(i___14_carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___14_carry__0_i_3__1
       (.I0(o_dinb[28]),
        .I1(\s_data0_inferred__2/i___0_carry__0_n_7 ),
        .O(i___14_carry__0_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___14_carry_i_1
       (.I0(o_dinb[11]),
        .O(i___14_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___14_carry_i_1__0
       (.I0(o_dinb[19]),
        .O(i___14_carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___14_carry_i_1__1
       (.I0(o_dinb[27]),
        .O(p_0_in[3]));
  LUT1 #(
    .INIT(2'h1)) 
    i___14_carry_i_2
       (.I0(o_dinb[10]),
        .O(i___14_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___14_carry_i_2__0
       (.I0(o_dinb[18]),
        .O(i___14_carry_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___14_carry_i_2__1
       (.I0(o_dinb[26]),
        .O(p_0_in[2]));
  LUT1 #(
    .INIT(2'h1)) 
    i___14_carry_i_3
       (.I0(o_dinb[9]),
        .O(i___14_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___14_carry_i_3__0
       (.I0(o_dinb[17]),
        .O(i___14_carry_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___14_carry_i_3__1
       (.I0(o_dinb[25]),
        .O(p_0_in[1]));
  LUT1 #(
    .INIT(2'h1)) 
    i___14_carry_i_4
       (.I0(o_dinb[8]),
        .O(i___14_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___14_carry_i_4__0
       (.I0(o_dinb[16]),
        .O(i___14_carry_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___14_carry_i_4__1
       (.I0(o_dinb[24]),
        .O(p_0_in[0]));
  LUT2 #(
    .INIT(4'h6)) 
    i___14_carry_i_5
       (.I0(o_dinb[11]),
        .I1(\s_data0_inferred__0/i___0_carry_n_4 ),
        .O(i___14_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___14_carry_i_5__0
       (.I0(o_dinb[19]),
        .I1(\s_data0_inferred__1/i___0_carry_n_4 ),
        .O(i___14_carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___14_carry_i_5__1
       (.I0(o_dinb[27]),
        .I1(\s_data0_inferred__2/i___0_carry_n_4 ),
        .O(i___14_carry_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___14_carry_i_6
       (.I0(o_dinb[10]),
        .I1(\s_data0_inferred__0/i___0_carry_n_5 ),
        .O(i___14_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___14_carry_i_6__0
       (.I0(o_dinb[18]),
        .I1(\s_data0_inferred__1/i___0_carry_n_5 ),
        .O(i___14_carry_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___14_carry_i_6__1
       (.I0(o_dinb[26]),
        .I1(\s_data0_inferred__2/i___0_carry_n_5 ),
        .O(i___14_carry_i_6__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___14_carry_i_7
       (.I0(o_dinb[9]),
        .I1(\s_data0_inferred__0/i___0_carry_n_6 ),
        .O(i___14_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___14_carry_i_7__0
       (.I0(o_dinb[17]),
        .I1(\s_data0_inferred__1/i___0_carry_n_6 ),
        .O(i___14_carry_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___14_carry_i_7__1
       (.I0(o_dinb[25]),
        .I1(\s_data0_inferred__2/i___0_carry_n_6 ),
        .O(i___14_carry_i_7__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___14_carry_i_8
       (.I0(o_dinb[8]),
        .I1(\s_data0_inferred__0/i___0_carry_n_7 ),
        .O(i___14_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___14_carry_i_8__0
       (.I0(o_dinb[16]),
        .I1(\s_data0_inferred__1/i___0_carry_n_7 ),
        .O(i___14_carry_i_8__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___14_carry_i_8__1
       (.I0(o_dinb[24]),
        .I1(\s_data0_inferred__2/i___0_carry_n_7 ),
        .O(i___14_carry_i_8__1_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    o_control_i_1
       (.I0(i_enable),
        .I1(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I2(rst),
        .I3(o_control),
        .O(o_control_i_1_n_0));
  FDRE o_control_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_control_i_1_n_0),
        .Q(o_control),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hBA)) 
    o_done_i_1
       (.I0(\FSM_onehot_t_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I2(o_done),
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
        .DI({1'b0,1'b0,o_addrb[2],1'b0}),
        .O(in9[4:1]),
        .S({o_addrb[4:3],plusOp_carry_i_1_n_0,o_addrb[1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[8:5]),
        .S(o_addrb[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[12:9]),
        .S(o_addrb[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[16:13]),
        .S(o_addrb[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({plusOp_carry__3_n_0,plusOp_carry__3_n_1,plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[20:17]),
        .S(o_addrb[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_0),
        .CO({plusOp_carry__4_n_0,plusOp_carry__4_n_1,plusOp_carry__4_n_2,plusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[24:21]),
        .S(o_addrb[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__5
       (.CI(plusOp_carry__4_n_0),
        .CO({plusOp_carry__5_n_0,plusOp_carry__5_n_1,plusOp_carry__5_n_2,plusOp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[28:25]),
        .S(o_addrb[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__6
       (.CI(plusOp_carry__5_n_0),
        .CO({NLW_plusOp_carry__6_CO_UNCONNECTED[3:2],plusOp_carry__6_n_2,plusOp_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__6_O_UNCONNECTED[3],in9[31:29]}),
        .S({1'b0,o_addrb[31:29]}));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_carry_i_1
       (.I0(o_addrb[2]),
        .O(plusOp_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \s_addrb[0]_i_1 
       (.I0(\s_addrb[31]_i_3_n_0 ),
        .I1(o_addrb[0]),
        .I2(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I3(i_adr[0]),
        .I4(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I5(i_enable),
        .O(\s_addrb[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \s_addrb[10]_i_1 
       (.I0(\s_addrb[31]_i_3_n_0 ),
        .I1(in9[10]),
        .I2(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I3(i_adr[10]),
        .I4(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I5(i_enable),
        .O(\s_addrb[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \s_addrb[11]_i_1 
       (.I0(\s_addrb[31]_i_3_n_0 ),
        .I1(in9[11]),
        .I2(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I3(i_adr[11]),
        .I4(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I5(i_enable),
        .O(\s_addrb[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \s_addrb[12]_i_1 
       (.I0(\s_addrb[31]_i_3_n_0 ),
        .I1(in9[12]),
        .I2(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I3(i_adr[12]),
        .I4(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I5(i_enable),
        .O(\s_addrb[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \s_addrb[13]_i_1 
       (.I0(\s_addrb[31]_i_3_n_0 ),
        .I1(in9[13]),
        .I2(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I3(i_adr[13]),
        .I4(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I5(i_enable),
        .O(\s_addrb[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \s_addrb[14]_i_1 
       (.I0(\s_addrb[31]_i_3_n_0 ),
        .I1(in9[14]),
        .I2(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I3(i_adr[14]),
        .I4(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I5(i_enable),
        .O(\s_addrb[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \s_addrb[15]_i_1 
       (.I0(\s_addrb[31]_i_3_n_0 ),
        .I1(in9[15]),
        .I2(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I3(i_adr[15]),
        .I4(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I5(i_enable),
        .O(\s_addrb[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \s_addrb[16]_i_1 
       (.I0(\s_addrb[31]_i_3_n_0 ),
        .I1(in9[16]),
        .I2(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I3(i_adr[16]),
        .I4(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I5(i_enable),
        .O(\s_addrb[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \s_addrb[17]_i_1 
       (.I0(\s_addrb[31]_i_3_n_0 ),
        .I1(in9[17]),
        .I2(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I3(i_adr[17]),
        .I4(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I5(i_enable),
        .O(\s_addrb[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \s_addrb[18]_i_1 
       (.I0(\s_addrb[31]_i_3_n_0 ),
        .I1(in9[18]),
        .I2(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I3(i_adr[18]),
        .I4(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I5(i_enable),
        .O(\s_addrb[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \s_addrb[19]_i_1 
       (.I0(\s_addrb[31]_i_3_n_0 ),
        .I1(in9[19]),
        .I2(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I3(i_adr[19]),
        .I4(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I5(i_enable),
        .O(\s_addrb[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \s_addrb[1]_i_1 
       (.I0(\s_addrb[31]_i_3_n_0 ),
        .I1(in9[1]),
        .I2(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I3(i_adr[1]),
        .I4(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I5(i_enable),
        .O(\s_addrb[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \s_addrb[20]_i_1 
       (.I0(\s_addrb[31]_i_3_n_0 ),
        .I1(in9[20]),
        .I2(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I3(i_adr[20]),
        .I4(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I5(i_enable),
        .O(\s_addrb[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \s_addrb[21]_i_1 
       (.I0(\s_addrb[31]_i_3_n_0 ),
        .I1(in9[21]),
        .I2(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I3(i_adr[21]),
        .I4(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I5(i_enable),
        .O(\s_addrb[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \s_addrb[22]_i_1 
       (.I0(\s_addrb[31]_i_3_n_0 ),
        .I1(in9[22]),
        .I2(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I3(i_adr[22]),
        .I4(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I5(i_enable),
        .O(\s_addrb[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \s_addrb[23]_i_1 
       (.I0(\s_addrb[31]_i_3_n_0 ),
        .I1(in9[23]),
        .I2(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I3(i_adr[23]),
        .I4(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I5(i_enable),
        .O(\s_addrb[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \s_addrb[24]_i_1 
       (.I0(\s_addrb[31]_i_3_n_0 ),
        .I1(in9[24]),
        .I2(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I3(i_adr[24]),
        .I4(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I5(i_enable),
        .O(\s_addrb[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \s_addrb[25]_i_1 
       (.I0(\s_addrb[31]_i_3_n_0 ),
        .I1(in9[25]),
        .I2(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I3(i_adr[25]),
        .I4(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I5(i_enable),
        .O(\s_addrb[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \s_addrb[26]_i_1 
       (.I0(\s_addrb[31]_i_3_n_0 ),
        .I1(in9[26]),
        .I2(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I3(i_adr[26]),
        .I4(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I5(i_enable),
        .O(\s_addrb[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \s_addrb[27]_i_1 
       (.I0(\s_addrb[31]_i_3_n_0 ),
        .I1(in9[27]),
        .I2(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I3(i_adr[27]),
        .I4(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I5(i_enable),
        .O(\s_addrb[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \s_addrb[28]_i_1 
       (.I0(\s_addrb[31]_i_3_n_0 ),
        .I1(in9[28]),
        .I2(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I3(i_adr[28]),
        .I4(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I5(i_enable),
        .O(\s_addrb[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \s_addrb[29]_i_1 
       (.I0(\s_addrb[31]_i_3_n_0 ),
        .I1(in9[29]),
        .I2(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I3(i_adr[29]),
        .I4(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I5(i_enable),
        .O(\s_addrb[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \s_addrb[2]_i_1 
       (.I0(\s_addrb[31]_i_3_n_0 ),
        .I1(in9[2]),
        .I2(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I3(i_adr[2]),
        .I4(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I5(i_enable),
        .O(\s_addrb[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \s_addrb[30]_i_1 
       (.I0(\s_addrb[31]_i_3_n_0 ),
        .I1(in9[30]),
        .I2(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I3(i_adr[30]),
        .I4(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I5(i_enable),
        .O(\s_addrb[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \s_addrb[31]_i_1 
       (.I0(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_t_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_t_state_reg_n_0_[4] ),
        .O(s_addrb));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \s_addrb[31]_i_2 
       (.I0(\s_addrb[31]_i_3_n_0 ),
        .I1(in9[31]),
        .I2(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I3(i_adr[31]),
        .I4(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I5(i_enable),
        .O(\s_addrb[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \s_addrb[31]_i_3 
       (.I0(\FSM_onehot_t_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_t_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_t_state_reg_n_0_[2] ),
        .O(\s_addrb[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \s_addrb[3]_i_1 
       (.I0(\s_addrb[31]_i_3_n_0 ),
        .I1(in9[3]),
        .I2(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I3(i_adr[3]),
        .I4(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I5(i_enable),
        .O(\s_addrb[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \s_addrb[4]_i_1 
       (.I0(\s_addrb[31]_i_3_n_0 ),
        .I1(in9[4]),
        .I2(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I3(i_adr[4]),
        .I4(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I5(i_enable),
        .O(\s_addrb[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \s_addrb[5]_i_1 
       (.I0(\s_addrb[31]_i_3_n_0 ),
        .I1(in9[5]),
        .I2(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I3(i_adr[5]),
        .I4(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I5(i_enable),
        .O(\s_addrb[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \s_addrb[6]_i_1 
       (.I0(\s_addrb[31]_i_3_n_0 ),
        .I1(in9[6]),
        .I2(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I3(i_adr[6]),
        .I4(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I5(i_enable),
        .O(\s_addrb[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \s_addrb[7]_i_1 
       (.I0(\s_addrb[31]_i_3_n_0 ),
        .I1(in9[7]),
        .I2(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I3(i_adr[7]),
        .I4(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I5(i_enable),
        .O(\s_addrb[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \s_addrb[8]_i_1 
       (.I0(\s_addrb[31]_i_3_n_0 ),
        .I1(in9[8]),
        .I2(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I3(i_adr[8]),
        .I4(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I5(i_enable),
        .O(\s_addrb[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \s_addrb[9]_i_1 
       (.I0(\s_addrb[31]_i_3_n_0 ),
        .I1(in9[9]),
        .I2(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I3(i_adr[9]),
        .I4(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I5(i_enable),
        .O(\s_addrb[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[0] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(\s_addrb[0]_i_1_n_0 ),
        .Q(o_addrb[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[10] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(\s_addrb[10]_i_1_n_0 ),
        .Q(o_addrb[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[11] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(\s_addrb[11]_i_1_n_0 ),
        .Q(o_addrb[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[12] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(\s_addrb[12]_i_1_n_0 ),
        .Q(o_addrb[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[13] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(\s_addrb[13]_i_1_n_0 ),
        .Q(o_addrb[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[14] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(\s_addrb[14]_i_1_n_0 ),
        .Q(o_addrb[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[15] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(\s_addrb[15]_i_1_n_0 ),
        .Q(o_addrb[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[16] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(\s_addrb[16]_i_1_n_0 ),
        .Q(o_addrb[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[17] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(\s_addrb[17]_i_1_n_0 ),
        .Q(o_addrb[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[18] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(\s_addrb[18]_i_1_n_0 ),
        .Q(o_addrb[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[19] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(\s_addrb[19]_i_1_n_0 ),
        .Q(o_addrb[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[1] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(\s_addrb[1]_i_1_n_0 ),
        .Q(o_addrb[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[20] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(\s_addrb[20]_i_1_n_0 ),
        .Q(o_addrb[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[21] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(\s_addrb[21]_i_1_n_0 ),
        .Q(o_addrb[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[22] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(\s_addrb[22]_i_1_n_0 ),
        .Q(o_addrb[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[23] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(\s_addrb[23]_i_1_n_0 ),
        .Q(o_addrb[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[24] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(\s_addrb[24]_i_1_n_0 ),
        .Q(o_addrb[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[25] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(\s_addrb[25]_i_1_n_0 ),
        .Q(o_addrb[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[26] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(\s_addrb[26]_i_1_n_0 ),
        .Q(o_addrb[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[27] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(\s_addrb[27]_i_1_n_0 ),
        .Q(o_addrb[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[28] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(\s_addrb[28]_i_1_n_0 ),
        .Q(o_addrb[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[29] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(\s_addrb[29]_i_1_n_0 ),
        .Q(o_addrb[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[2] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(\s_addrb[2]_i_1_n_0 ),
        .Q(o_addrb[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[30] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(\s_addrb[30]_i_1_n_0 ),
        .Q(o_addrb[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[31] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(\s_addrb[31]_i_2_n_0 ),
        .Q(o_addrb[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[3] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(\s_addrb[3]_i_1_n_0 ),
        .Q(o_addrb[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[4] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(\s_addrb[4]_i_1_n_0 ),
        .Q(o_addrb[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[5] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(\s_addrb[5]_i_1_n_0 ),
        .Q(o_addrb[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[6] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(\s_addrb[6]_i_1_n_0 ),
        .Q(o_addrb[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[7] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(\s_addrb[7]_i_1_n_0 ),
        .Q(o_addrb[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[8] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(\s_addrb[8]_i_1_n_0 ),
        .Q(o_addrb[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[9] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(\s_addrb[9]_i_1_n_0 ),
        .Q(o_addrb[9]),
        .R(rst));
  CARRY4 s_data0__0_carry
       (.CI(1'b0),
        .CO({s_data0__0_carry_n_0,s_data0__0_carry_n_1,s_data0__0_carry_n_2,s_data0__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({s_data0__0_carry_i_1_n_0,o_dinb[5],o_dinb[5],1'b0}),
        .O({s_data0__0_carry_n_4,s_data0__0_carry_n_5,s_data0__0_carry_n_6,s_data0__0_carry_n_7}),
        .S({s_data0__0_carry_i_2_n_0,s_data0__0_carry_i_3_n_0,s_data0__0_carry_i_4_n_0,o_dinb[5]}));
  CARRY4 s_data0__0_carry__0
       (.CI(s_data0__0_carry_n_0),
        .CO({NLW_s_data0__0_carry__0_CO_UNCONNECTED[3:1],s_data0__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,s_data0__0_carry__0_i_1_n_0}),
        .O({NLW_s_data0__0_carry__0_O_UNCONNECTED[3:2],s_data0__0_carry__0_n_6,s_data0__0_carry__0_n_7}),
        .S({1'b0,1'b0,s_data0__0_carry__0_i_2_n_0,s_data0__0_carry__0_i_3_n_0}));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h2E)) 
    s_data0__0_carry__0_i_1
       (.I0(o_dinb[5]),
        .I1(o_dinb[6]),
        .I2(o_dinb[7]),
        .O(s_data0__0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h56)) 
    s_data0__0_carry__0_i_2
       (.I0(o_dinb[5]),
        .I1(o_dinb[6]),
        .I2(o_dinb[7]),
        .O(s_data0__0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h5A96)) 
    s_data0__0_carry__0_i_3
       (.I0(s_data0__0_carry__0_i_1_n_0),
        .I1(o_dinb[5]),
        .I2(o_dinb[7]),
        .I3(o_dinb[6]),
        .O(s_data0__0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h9C)) 
    s_data0__0_carry_i_1
       (.I0(o_dinb[6]),
        .I1(o_dinb[7]),
        .I2(o_dinb[5]),
        .O(s_data0__0_carry_i_1_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    s_data0__0_carry_i_2
       (.I0(o_dinb[5]),
        .I1(o_dinb[6]),
        .I2(o_dinb[7]),
        .O(s_data0__0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h9C)) 
    s_data0__0_carry_i_3
       (.I0(o_dinb[6]),
        .I1(o_dinb[7]),
        .I2(o_dinb[5]),
        .O(s_data0__0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_data0__0_carry_i_4
       (.I0(o_dinb[6]),
        .O(s_data0__0_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s_data0__14_carry
       (.CI(1'b0),
        .CO({s_data0__14_carry_n_0,s_data0__14_carry_n_1,s_data0__14_carry_n_2,s_data0__14_carry_n_3}),
        .CYINIT(1'b1),
        .DI({s_data0__14_carry_i_1_n_0,s_data0__14_carry_i_2_n_0,s_data0__14_carry_i_3_n_0,s_data0__14_carry_i_4_n_0}),
        .O({s_data0__14_carry_n_4,s_data0__14_carry_n_5,s_data0__14_carry_n_6,s_data0__14_carry_n_7}),
        .S({s_data0__14_carry_i_5_n_0,s_data0__14_carry_i_6_n_0,s_data0__14_carry_i_7_n_0,s_data0__14_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s_data0__14_carry__0
       (.CI(s_data0__14_carry_n_0),
        .CO({NLW_s_data0__14_carry__0_CO_UNCONNECTED[3:1],s_data0__14_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,s_data0__14_carry__0_i_1_n_0}),
        .O({NLW_s_data0__14_carry__0_O_UNCONNECTED[3:2],s_data0__14_carry__0_n_6,s_data0__14_carry__0_n_7}),
        .S({1'b0,1'b0,s_data0__14_carry__0_i_2_n_0,s_data0__14_carry__0_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    s_data0__14_carry__0_i_1
       (.I0(o_dinb[4]),
        .O(s_data0__14_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    s_data0__14_carry__0_i_2
       (.I0(o_dinb[5]),
        .I1(s_data0__0_carry__0_n_6),
        .O(s_data0__14_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s_data0__14_carry__0_i_3
       (.I0(o_dinb[4]),
        .I1(s_data0__0_carry__0_n_7),
        .O(s_data0__14_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s_data0__14_carry_i_1
       (.I0(o_dinb[3]),
        .O(s_data0__14_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s_data0__14_carry_i_2
       (.I0(o_dinb[2]),
        .O(s_data0__14_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s_data0__14_carry_i_3
       (.I0(o_dinb[1]),
        .O(s_data0__14_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s_data0__14_carry_i_4
       (.I0(o_dinb[0]),
        .O(s_data0__14_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s_data0__14_carry_i_5
       (.I0(o_dinb[3]),
        .I1(s_data0__0_carry_n_4),
        .O(s_data0__14_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s_data0__14_carry_i_6
       (.I0(o_dinb[2]),
        .I1(s_data0__0_carry_n_5),
        .O(s_data0__14_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s_data0__14_carry_i_7
       (.I0(o_dinb[1]),
        .I1(s_data0__0_carry_n_6),
        .O(s_data0__14_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s_data0__14_carry_i_8
       (.I0(o_dinb[0]),
        .I1(s_data0__0_carry_n_7),
        .O(s_data0__14_carry_i_8_n_0));
  CARRY4 \s_data0_inferred__0/i___0_carry 
       (.CI(1'b0),
        .CO({\s_data0_inferred__0/i___0_carry_n_0 ,\s_data0_inferred__0/i___0_carry_n_1 ,\s_data0_inferred__0/i___0_carry_n_2 ,\s_data0_inferred__0/i___0_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___0_carry_i_1_n_0,o_dinb[13],o_dinb[13],1'b0}),
        .O({\s_data0_inferred__0/i___0_carry_n_4 ,\s_data0_inferred__0/i___0_carry_n_5 ,\s_data0_inferred__0/i___0_carry_n_6 ,\s_data0_inferred__0/i___0_carry_n_7 }),
        .S({i___0_carry_i_2_n_0,i___0_carry_i_3_n_0,i___0_carry_i_4_n_0,o_dinb[13]}));
  CARRY4 \s_data0_inferred__0/i___0_carry__0 
       (.CI(\s_data0_inferred__0/i___0_carry_n_0 ),
        .CO({\NLW_s_data0_inferred__0/i___0_carry__0_CO_UNCONNECTED [3:1],\s_data0_inferred__0/i___0_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i___0_carry__0_i_1_n_0}),
        .O({\NLW_s_data0_inferred__0/i___0_carry__0_O_UNCONNECTED [3:2],\s_data0_inferred__0/i___0_carry__0_n_6 ,\s_data0_inferred__0/i___0_carry__0_n_7 }),
        .S({1'b0,1'b0,i___0_carry__0_i_2_n_0,i___0_carry__0_i_3_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_data0_inferred__0/i___14_carry 
       (.CI(1'b0),
        .CO({\s_data0_inferred__0/i___14_carry_n_0 ,\s_data0_inferred__0/i___14_carry_n_1 ,\s_data0_inferred__0/i___14_carry_n_2 ,\s_data0_inferred__0/i___14_carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i___14_carry_i_1_n_0,i___14_carry_i_2_n_0,i___14_carry_i_3_n_0,i___14_carry_i_4_n_0}),
        .O({\s_data0_inferred__0/i___14_carry_n_4 ,\s_data0_inferred__0/i___14_carry_n_5 ,\s_data0_inferred__0/i___14_carry_n_6 ,\s_data0_inferred__0/i___14_carry_n_7 }),
        .S({i___14_carry_i_5_n_0,i___14_carry_i_6_n_0,i___14_carry_i_7_n_0,i___14_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_data0_inferred__0/i___14_carry__0 
       (.CI(\s_data0_inferred__0/i___14_carry_n_0 ),
        .CO({\NLW_s_data0_inferred__0/i___14_carry__0_CO_UNCONNECTED [3:1],\s_data0_inferred__0/i___14_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i___14_carry__0_i_1_n_0}),
        .O({\NLW_s_data0_inferred__0/i___14_carry__0_O_UNCONNECTED [3:2],\s_data0_inferred__0/i___14_carry__0_n_6 ,\s_data0_inferred__0/i___14_carry__0_n_7 }),
        .S({1'b0,1'b0,i___14_carry__0_i_2_n_0,i___14_carry__0_i_3_n_0}));
  CARRY4 \s_data0_inferred__1/i___0_carry 
       (.CI(1'b0),
        .CO({\s_data0_inferred__1/i___0_carry_n_0 ,\s_data0_inferred__1/i___0_carry_n_1 ,\s_data0_inferred__1/i___0_carry_n_2 ,\s_data0_inferred__1/i___0_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___0_carry_i_1__0_n_0,o_dinb[21],o_dinb[21],1'b0}),
        .O({\s_data0_inferred__1/i___0_carry_n_4 ,\s_data0_inferred__1/i___0_carry_n_5 ,\s_data0_inferred__1/i___0_carry_n_6 ,\s_data0_inferred__1/i___0_carry_n_7 }),
        .S({i___0_carry_i_2__0_n_0,i___0_carry_i_3__0_n_0,i___0_carry_i_4__0_n_0,o_dinb[21]}));
  CARRY4 \s_data0_inferred__1/i___0_carry__0 
       (.CI(\s_data0_inferred__1/i___0_carry_n_0 ),
        .CO({\NLW_s_data0_inferred__1/i___0_carry__0_CO_UNCONNECTED [3:1],\s_data0_inferred__1/i___0_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i___0_carry__0_i_1__0_n_0}),
        .O({\NLW_s_data0_inferred__1/i___0_carry__0_O_UNCONNECTED [3:2],\s_data0_inferred__1/i___0_carry__0_n_6 ,\s_data0_inferred__1/i___0_carry__0_n_7 }),
        .S({1'b0,1'b0,i___0_carry__0_i_2__0_n_0,i___0_carry__0_i_3__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_data0_inferred__1/i___14_carry 
       (.CI(1'b0),
        .CO({\s_data0_inferred__1/i___14_carry_n_0 ,\s_data0_inferred__1/i___14_carry_n_1 ,\s_data0_inferred__1/i___14_carry_n_2 ,\s_data0_inferred__1/i___14_carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i___14_carry_i_1__0_n_0,i___14_carry_i_2__0_n_0,i___14_carry_i_3__0_n_0,i___14_carry_i_4__0_n_0}),
        .O({\s_data0_inferred__1/i___14_carry_n_4 ,\s_data0_inferred__1/i___14_carry_n_5 ,\s_data0_inferred__1/i___14_carry_n_6 ,\s_data0_inferred__1/i___14_carry_n_7 }),
        .S({i___14_carry_i_5__0_n_0,i___14_carry_i_6__0_n_0,i___14_carry_i_7__0_n_0,i___14_carry_i_8__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_data0_inferred__1/i___14_carry__0 
       (.CI(\s_data0_inferred__1/i___14_carry_n_0 ),
        .CO({\NLW_s_data0_inferred__1/i___14_carry__0_CO_UNCONNECTED [3:1],\s_data0_inferred__1/i___14_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i___14_carry__0_i_1__0_n_0}),
        .O({\NLW_s_data0_inferred__1/i___14_carry__0_O_UNCONNECTED [3:2],\s_data0_inferred__1/i___14_carry__0_n_6 ,\s_data0_inferred__1/i___14_carry__0_n_7 }),
        .S({1'b0,1'b0,i___14_carry__0_i_2__0_n_0,i___14_carry__0_i_3__0_n_0}));
  CARRY4 \s_data0_inferred__2/i___0_carry 
       (.CI(1'b0),
        .CO({\s_data0_inferred__2/i___0_carry_n_0 ,\s_data0_inferred__2/i___0_carry_n_1 ,\s_data0_inferred__2/i___0_carry_n_2 ,\s_data0_inferred__2/i___0_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___0_carry_i_1__1_n_0,o_dinb[29],o_dinb[29],1'b0}),
        .O({\s_data0_inferred__2/i___0_carry_n_4 ,\s_data0_inferred__2/i___0_carry_n_5 ,\s_data0_inferred__2/i___0_carry_n_6 ,\s_data0_inferred__2/i___0_carry_n_7 }),
        .S({i___0_carry_i_2__1_n_0,i___0_carry_i_3__1_n_0,i___0_carry_i_4__1_n_0,o_dinb[29]}));
  CARRY4 \s_data0_inferred__2/i___0_carry__0 
       (.CI(\s_data0_inferred__2/i___0_carry_n_0 ),
        .CO({\NLW_s_data0_inferred__2/i___0_carry__0_CO_UNCONNECTED [3:1],\s_data0_inferred__2/i___0_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i___0_carry__0_i_1__1_n_0}),
        .O({\NLW_s_data0_inferred__2/i___0_carry__0_O_UNCONNECTED [3:2],\s_data0_inferred__2/i___0_carry__0_n_6 ,\s_data0_inferred__2/i___0_carry__0_n_7 }),
        .S({1'b0,1'b0,i___0_carry__0_i_2__1_n_0,i___0_carry__0_i_3__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_data0_inferred__2/i___14_carry 
       (.CI(1'b0),
        .CO({\s_data0_inferred__2/i___14_carry_n_0 ,\s_data0_inferred__2/i___14_carry_n_1 ,\s_data0_inferred__2/i___14_carry_n_2 ,\s_data0_inferred__2/i___14_carry_n_3 }),
        .CYINIT(1'b1),
        .DI(p_0_in[3:0]),
        .O({\s_data0_inferred__2/i___14_carry_n_4 ,\s_data0_inferred__2/i___14_carry_n_5 ,\s_data0_inferred__2/i___14_carry_n_6 ,\s_data0_inferred__2/i___14_carry_n_7 }),
        .S({i___14_carry_i_5__1_n_0,i___14_carry_i_6__1_n_0,i___14_carry_i_7__1_n_0,i___14_carry_i_8__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_data0_inferred__2/i___14_carry__0 
       (.CI(\s_data0_inferred__2/i___14_carry_n_0 ),
        .CO({\NLW_s_data0_inferred__2/i___14_carry__0_CO_UNCONNECTED [3:1],\s_data0_inferred__2/i___14_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_0_in[4]}),
        .O({\NLW_s_data0_inferred__2/i___14_carry__0_O_UNCONNECTED [3:2],\s_data0_inferred__2/i___14_carry__0_n_6 ,\s_data0_inferred__2/i___14_carry__0_n_7 }),
        .S({1'b0,1'b0,i___14_carry__0_i_2__1_n_0,i___14_carry__0_i_3__1_n_0}));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \s_data[0]_i_1 
       (.I0(\FSM_onehot_t_state_reg_n_0_[2] ),
        .I1(i_doutb[0]),
        .I2(\s_data[1]_i_2_n_0 ),
        .I3(s_data0__14_carry_n_7),
        .I4(\FSM_onehot_t_state_reg_n_0_[3] ),
        .O(\s_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8FF8F8888888888)) 
    \s_data[10]_i_1 
       (.I0(i_doutb[10]),
        .I1(\FSM_onehot_t_state_reg_n_0_[2] ),
        .I2(\s_data[10]_i_2_n_0 ),
        .I3(\s_data0_inferred__0/i___14_carry_n_6 ),
        .I4(\s_data0_inferred__0/i___14_carry_n_5 ),
        .I5(\FSM_onehot_t_state_reg_n_0_[3] ),
        .O(\s_data[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h15555555FFFFFFFF)) 
    \s_data[10]_i_2 
       (.I0(\s_data0_inferred__0/i___14_carry__0_n_6 ),
        .I1(\s_data0_inferred__0/i___14_carry_n_4 ),
        .I2(\s_data0_inferred__0/i___14_carry__0_n_7 ),
        .I3(\s_data0_inferred__0/i___14_carry_n_5 ),
        .I4(\s_data0_inferred__0/i___14_carry_n_6 ),
        .I5(\s_data0_inferred__0/i___14_carry_n_7 ),
        .O(\s_data[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF88F8888)) 
    \s_data[11]_i_1 
       (.I0(i_doutb[11]),
        .I1(\FSM_onehot_t_state_reg_n_0_[2] ),
        .I2(\s_data[12]_i_2_n_0 ),
        .I3(\s_data0_inferred__0/i___14_carry_n_4 ),
        .I4(\FSM_onehot_t_state_reg_n_0_[3] ),
        .O(\s_data[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8FF8F8888888888)) 
    \s_data[12]_i_1 
       (.I0(i_doutb[12]),
        .I1(\FSM_onehot_t_state_reg_n_0_[2] ),
        .I2(\s_data[12]_i_2_n_0 ),
        .I3(\s_data0_inferred__0/i___14_carry_n_4 ),
        .I4(\s_data0_inferred__0/i___14_carry__0_n_7 ),
        .I5(\FSM_onehot_t_state_reg_n_0_[3] ),
        .O(\s_data[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h15FFFFFFFFFFFFFF)) 
    \s_data[12]_i_2 
       (.I0(\s_data0_inferred__0/i___14_carry__0_n_6 ),
        .I1(\s_data0_inferred__0/i___14_carry_n_4 ),
        .I2(\s_data0_inferred__0/i___14_carry__0_n_7 ),
        .I3(\s_data0_inferred__0/i___14_carry_n_5 ),
        .I4(\s_data0_inferred__0/i___14_carry_n_7 ),
        .I5(\s_data0_inferred__0/i___14_carry_n_6 ),
        .O(\s_data[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \s_data[16]_i_1 
       (.I0(\FSM_onehot_t_state_reg_n_0_[2] ),
        .I1(i_doutb[16]),
        .I2(\s_data[17]_i_2_n_0 ),
        .I3(\s_data0_inferred__1/i___14_carry_n_7 ),
        .I4(\FSM_onehot_t_state_reg_n_0_[3] ),
        .O(\s_data[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8FFFF88888888888)) 
    \s_data[17]_i_1 
       (.I0(i_doutb[17]),
        .I1(\FSM_onehot_t_state_reg_n_0_[2] ),
        .I2(\s_data[17]_i_2_n_0 ),
        .I3(\s_data0_inferred__1/i___14_carry_n_7 ),
        .I4(\s_data0_inferred__1/i___14_carry_n_6 ),
        .I5(\FSM_onehot_t_state_reg_n_0_[3] ),
        .O(\s_data[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \s_data[17]_i_2 
       (.I0(\s_data0_inferred__1/i___14_carry_n_6 ),
        .I1(\s_data0_inferred__1/i___14_carry_n_7 ),
        .I2(\s_data0_inferred__1/i___14_carry_n_5 ),
        .I3(\s_data0_inferred__1/i___14_carry__0_n_7 ),
        .I4(\s_data0_inferred__1/i___14_carry_n_4 ),
        .I5(\s_data0_inferred__1/i___14_carry__0_n_6 ),
        .O(\s_data[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8FF8F8888888888)) 
    \s_data[18]_i_1 
       (.I0(i_doutb[18]),
        .I1(\FSM_onehot_t_state_reg_n_0_[2] ),
        .I2(\s_data[18]_i_2_n_0 ),
        .I3(\s_data0_inferred__1/i___14_carry_n_6 ),
        .I4(\s_data0_inferred__1/i___14_carry_n_5 ),
        .I5(\FSM_onehot_t_state_reg_n_0_[3] ),
        .O(\s_data[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h15555555FFFFFFFF)) 
    \s_data[18]_i_2 
       (.I0(\s_data0_inferred__1/i___14_carry__0_n_6 ),
        .I1(\s_data0_inferred__1/i___14_carry_n_4 ),
        .I2(\s_data0_inferred__1/i___14_carry__0_n_7 ),
        .I3(\s_data0_inferred__1/i___14_carry_n_5 ),
        .I4(\s_data0_inferred__1/i___14_carry_n_6 ),
        .I5(\s_data0_inferred__1/i___14_carry_n_7 ),
        .O(\s_data[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF88F8888)) 
    \s_data[19]_i_1 
       (.I0(i_doutb[19]),
        .I1(\FSM_onehot_t_state_reg_n_0_[2] ),
        .I2(\s_data[20]_i_2_n_0 ),
        .I3(\s_data0_inferred__1/i___14_carry_n_4 ),
        .I4(\FSM_onehot_t_state_reg_n_0_[3] ),
        .O(\s_data[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8FFFF88888888888)) 
    \s_data[1]_i_1 
       (.I0(i_doutb[1]),
        .I1(\FSM_onehot_t_state_reg_n_0_[2] ),
        .I2(\s_data[1]_i_2_n_0 ),
        .I3(s_data0__14_carry_n_7),
        .I4(s_data0__14_carry_n_6),
        .I5(\FSM_onehot_t_state_reg_n_0_[3] ),
        .O(\s_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \s_data[1]_i_2 
       (.I0(s_data0__14_carry_n_6),
        .I1(s_data0__14_carry_n_7),
        .I2(s_data0__14_carry_n_5),
        .I3(s_data0__14_carry__0_n_7),
        .I4(s_data0__14_carry_n_4),
        .I5(s_data0__14_carry__0_n_6),
        .O(\s_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8FF8F8888888888)) 
    \s_data[20]_i_1 
       (.I0(i_doutb[20]),
        .I1(\FSM_onehot_t_state_reg_n_0_[2] ),
        .I2(\s_data[20]_i_2_n_0 ),
        .I3(\s_data0_inferred__1/i___14_carry_n_4 ),
        .I4(\s_data0_inferred__1/i___14_carry__0_n_7 ),
        .I5(\FSM_onehot_t_state_reg_n_0_[3] ),
        .O(\s_data[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h15FFFFFFFFFFFFFF)) 
    \s_data[20]_i_2 
       (.I0(\s_data0_inferred__1/i___14_carry__0_n_6 ),
        .I1(\s_data0_inferred__1/i___14_carry_n_4 ),
        .I2(\s_data0_inferred__1/i___14_carry__0_n_7 ),
        .I3(\s_data0_inferred__1/i___14_carry_n_5 ),
        .I4(\s_data0_inferred__1/i___14_carry_n_7 ),
        .I5(\s_data0_inferred__1/i___14_carry_n_6 ),
        .O(\s_data[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \s_data[24]_i_1 
       (.I0(\FSM_onehot_t_state_reg_n_0_[2] ),
        .I1(i_doutb[24]),
        .I2(\s_data[25]_i_2_n_0 ),
        .I3(\s_data0_inferred__2/i___14_carry_n_7 ),
        .I4(\FSM_onehot_t_state_reg_n_0_[3] ),
        .O(\s_data[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8FFFF88888888888)) 
    \s_data[25]_i_1 
       (.I0(i_doutb[25]),
        .I1(\FSM_onehot_t_state_reg_n_0_[2] ),
        .I2(\s_data[25]_i_2_n_0 ),
        .I3(\s_data0_inferred__2/i___14_carry_n_7 ),
        .I4(\s_data0_inferred__2/i___14_carry_n_6 ),
        .I5(\FSM_onehot_t_state_reg_n_0_[3] ),
        .O(\s_data[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \s_data[25]_i_2 
       (.I0(\s_data0_inferred__2/i___14_carry_n_6 ),
        .I1(\s_data0_inferred__2/i___14_carry_n_7 ),
        .I2(\s_data0_inferred__2/i___14_carry_n_5 ),
        .I3(\s_data0_inferred__2/i___14_carry__0_n_7 ),
        .I4(\s_data0_inferred__2/i___14_carry_n_4 ),
        .I5(\s_data0_inferred__2/i___14_carry__0_n_6 ),
        .O(\s_data[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8FF8F8888888888)) 
    \s_data[26]_i_1 
       (.I0(i_doutb[26]),
        .I1(\FSM_onehot_t_state_reg_n_0_[2] ),
        .I2(\s_data[26]_i_2_n_0 ),
        .I3(\s_data0_inferred__2/i___14_carry_n_6 ),
        .I4(\s_data0_inferred__2/i___14_carry_n_5 ),
        .I5(\FSM_onehot_t_state_reg_n_0_[3] ),
        .O(\s_data[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h15555555FFFFFFFF)) 
    \s_data[26]_i_2 
       (.I0(\s_data0_inferred__2/i___14_carry__0_n_6 ),
        .I1(\s_data0_inferred__2/i___14_carry_n_4 ),
        .I2(\s_data0_inferred__2/i___14_carry__0_n_7 ),
        .I3(\s_data0_inferred__2/i___14_carry_n_5 ),
        .I4(\s_data0_inferred__2/i___14_carry_n_6 ),
        .I5(\s_data0_inferred__2/i___14_carry_n_7 ),
        .O(\s_data[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF88F8888)) 
    \s_data[27]_i_1 
       (.I0(i_doutb[27]),
        .I1(\FSM_onehot_t_state_reg_n_0_[2] ),
        .I2(\s_data[28]_i_2_n_0 ),
        .I3(\s_data0_inferred__2/i___14_carry_n_4 ),
        .I4(\FSM_onehot_t_state_reg_n_0_[3] ),
        .O(\s_data[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8FF8F8888888888)) 
    \s_data[28]_i_1 
       (.I0(i_doutb[28]),
        .I1(\FSM_onehot_t_state_reg_n_0_[2] ),
        .I2(\s_data[28]_i_2_n_0 ),
        .I3(\s_data0_inferred__2/i___14_carry_n_4 ),
        .I4(\s_data0_inferred__2/i___14_carry__0_n_7 ),
        .I5(\FSM_onehot_t_state_reg_n_0_[3] ),
        .O(\s_data[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h15FFFFFFFFFFFFFF)) 
    \s_data[28]_i_2 
       (.I0(\s_data0_inferred__2/i___14_carry__0_n_6 ),
        .I1(\s_data0_inferred__2/i___14_carry_n_4 ),
        .I2(\s_data0_inferred__2/i___14_carry__0_n_7 ),
        .I3(\s_data0_inferred__2/i___14_carry_n_5 ),
        .I4(\s_data0_inferred__2/i___14_carry_n_7 ),
        .I5(\s_data0_inferred__2/i___14_carry_n_6 ),
        .O(\s_data[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8FF8F8888888888)) 
    \s_data[2]_i_1 
       (.I0(i_doutb[2]),
        .I1(\FSM_onehot_t_state_reg_n_0_[2] ),
        .I2(\s_data[2]_i_2_n_0 ),
        .I3(s_data0__14_carry_n_6),
        .I4(s_data0__14_carry_n_5),
        .I5(\FSM_onehot_t_state_reg_n_0_[3] ),
        .O(\s_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h15555555FFFFFFFF)) 
    \s_data[2]_i_2 
       (.I0(s_data0__14_carry__0_n_6),
        .I1(s_data0__14_carry_n_4),
        .I2(s_data0__14_carry__0_n_7),
        .I3(s_data0__14_carry_n_5),
        .I4(s_data0__14_carry_n_6),
        .I5(s_data0__14_carry_n_7),
        .O(\s_data[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \s_data[31]_i_1 
       (.I0(rst),
        .I1(\FSM_onehot_t_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_t_state_reg_n_0_[2] ),
        .O(\s_data[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \s_data[31]_i_2 
       (.I0(\FSM_onehot_t_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_t_state_reg_n_0_[2] ),
        .I2(rst),
        .O(\s_data[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF88F8888)) 
    \s_data[3]_i_1 
       (.I0(i_doutb[3]),
        .I1(\FSM_onehot_t_state_reg_n_0_[2] ),
        .I2(\s_data[4]_i_2_n_0 ),
        .I3(s_data0__14_carry_n_4),
        .I4(\FSM_onehot_t_state_reg_n_0_[3] ),
        .O(\s_data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8FF8F8888888888)) 
    \s_data[4]_i_1 
       (.I0(i_doutb[4]),
        .I1(\FSM_onehot_t_state_reg_n_0_[2] ),
        .I2(\s_data[4]_i_2_n_0 ),
        .I3(s_data0__14_carry_n_4),
        .I4(s_data0__14_carry__0_n_7),
        .I5(\FSM_onehot_t_state_reg_n_0_[3] ),
        .O(\s_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h15FFFFFFFFFFFFFF)) 
    \s_data[4]_i_2 
       (.I0(s_data0__14_carry__0_n_6),
        .I1(s_data0__14_carry_n_4),
        .I2(s_data0__14_carry__0_n_7),
        .I3(s_data0__14_carry_n_5),
        .I4(s_data0__14_carry_n_7),
        .I5(s_data0__14_carry_n_6),
        .O(\s_data[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \s_data[8]_i_1 
       (.I0(\FSM_onehot_t_state_reg_n_0_[2] ),
        .I1(i_doutb[8]),
        .I2(\s_data[9]_i_2_n_0 ),
        .I3(\s_data0_inferred__0/i___14_carry_n_7 ),
        .I4(\FSM_onehot_t_state_reg_n_0_[3] ),
        .O(\s_data[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8FFFF88888888888)) 
    \s_data[9]_i_1 
       (.I0(i_doutb[9]),
        .I1(\FSM_onehot_t_state_reg_n_0_[2] ),
        .I2(\s_data[9]_i_2_n_0 ),
        .I3(\s_data0_inferred__0/i___14_carry_n_7 ),
        .I4(\s_data0_inferred__0/i___14_carry_n_6 ),
        .I5(\FSM_onehot_t_state_reg_n_0_[3] ),
        .O(\s_data[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \s_data[9]_i_2 
       (.I0(\s_data0_inferred__0/i___14_carry_n_6 ),
        .I1(\s_data0_inferred__0/i___14_carry_n_7 ),
        .I2(\s_data0_inferred__0/i___14_carry_n_5 ),
        .I3(\s_data0_inferred__0/i___14_carry__0_n_7 ),
        .I4(\s_data0_inferred__0/i___14_carry_n_4 ),
        .I5(\s_data0_inferred__0/i___14_carry__0_n_6 ),
        .O(\s_data[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[0] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(\s_data[0]_i_1_n_0 ),
        .Q(o_dinb[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[10] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(\s_data[10]_i_1_n_0 ),
        .Q(o_dinb[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[11] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(\s_data[11]_i_1_n_0 ),
        .Q(o_dinb[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[12] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(\s_data[12]_i_1_n_0 ),
        .Q(o_dinb[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[13] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(i_doutb[13]),
        .Q(o_dinb[13]),
        .R(\s_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[14] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(i_doutb[14]),
        .Q(o_dinb[14]),
        .R(\s_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[15] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(i_doutb[15]),
        .Q(o_dinb[15]),
        .R(\s_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[16] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(\s_data[16]_i_1_n_0 ),
        .Q(o_dinb[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[17] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(\s_data[17]_i_1_n_0 ),
        .Q(o_dinb[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[18] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(\s_data[18]_i_1_n_0 ),
        .Q(o_dinb[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[19] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(\s_data[19]_i_1_n_0 ),
        .Q(o_dinb[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[1] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(\s_data[1]_i_1_n_0 ),
        .Q(o_dinb[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[20] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(\s_data[20]_i_1_n_0 ),
        .Q(o_dinb[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[21] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(i_doutb[21]),
        .Q(o_dinb[21]),
        .R(\s_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[22] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(i_doutb[22]),
        .Q(o_dinb[22]),
        .R(\s_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[23] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(i_doutb[23]),
        .Q(o_dinb[23]),
        .R(\s_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[24] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(\s_data[24]_i_1_n_0 ),
        .Q(o_dinb[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[25] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(\s_data[25]_i_1_n_0 ),
        .Q(o_dinb[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[26] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(\s_data[26]_i_1_n_0 ),
        .Q(o_dinb[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[27] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(\s_data[27]_i_1_n_0 ),
        .Q(o_dinb[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[28] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(\s_data[28]_i_1_n_0 ),
        .Q(o_dinb[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[29] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(i_doutb[29]),
        .Q(o_dinb[29]),
        .R(\s_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[2] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(\s_data[2]_i_1_n_0 ),
        .Q(o_dinb[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[30] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(i_doutb[30]),
        .Q(o_dinb[30]),
        .R(\s_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[31] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(i_doutb[31]),
        .Q(o_dinb[31]),
        .R(\s_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[3] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(\s_data[3]_i_1_n_0 ),
        .Q(o_dinb[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[4] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(\s_data[4]_i_1_n_0 ),
        .Q(o_dinb[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[5] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(i_doutb[5]),
        .Q(o_dinb[5]),
        .R(\s_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[6] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(i_doutb[6]),
        .Q(o_dinb[6]),
        .R(\s_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[7] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(i_doutb[7]),
        .Q(o_dinb[7]),
        .R(\s_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[8] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(\s_data[8]_i_1_n_0 ),
        .Q(o_dinb[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[9] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(\s_data[9]_i_1_n_0 ),
        .Q(o_dinb[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFF0FFF1FFF0FFF0)) 
    s_enb_i_1
       (.I0(\FSM_onehot_t_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_t_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_t_state_reg_n_0_[2] ),
        .I5(o_enb),
        .O(s_enb_i_1_n_0));
  FDRE s_enb_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(s_enb_i_1_n_0),
        .Q(o_enb),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s_index0_carry
       (.CI(1'b0),
        .CO({s_index0_carry_n_0,s_index0_carry_n_1,s_index0_carry_n_2,s_index0_carry_n_3}),
        .CYINIT(s_index[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[4:1]),
        .S(s_index[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s_index0_carry__0
       (.CI(s_index0_carry_n_0),
        .CO({s_index0_carry__0_n_0,s_index0_carry__0_n_1,s_index0_carry__0_n_2,s_index0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[8:5]),
        .S(s_index[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s_index0_carry__1
       (.CI(s_index0_carry__0_n_0),
        .CO({s_index0_carry__1_n_0,s_index0_carry__1_n_1,s_index0_carry__1_n_2,s_index0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[12:9]),
        .S(s_index[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s_index0_carry__2
       (.CI(s_index0_carry__1_n_0),
        .CO({s_index0_carry__2_n_0,s_index0_carry__2_n_1,s_index0_carry__2_n_2,s_index0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[16:13]),
        .S(s_index[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s_index0_carry__3
       (.CI(s_index0_carry__2_n_0),
        .CO({s_index0_carry__3_n_0,s_index0_carry__3_n_1,s_index0_carry__3_n_2,s_index0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[20:17]),
        .S(s_index[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s_index0_carry__4
       (.CI(s_index0_carry__3_n_0),
        .CO({s_index0_carry__4_n_0,s_index0_carry__4_n_1,s_index0_carry__4_n_2,s_index0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[24:21]),
        .S(s_index[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s_index0_carry__5
       (.CI(s_index0_carry__4_n_0),
        .CO({s_index0_carry__5_n_0,s_index0_carry__5_n_1,s_index0_carry__5_n_2,s_index0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[28:25]),
        .S(s_index[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s_index0_carry__6
       (.CI(s_index0_carry__5_n_0),
        .CO({NLW_s_index0_carry__6_CO_UNCONNECTED[3:1],s_index0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_s_index0_carry__6_O_UNCONNECTED[3:2],in5[30:29]}),
        .S({1'b0,1'b0,s_index[30:29]}));
  LUT1 #(
    .INIT(2'h1)) 
    \s_index[0]_i_1 
       (.I0(s_index[0]),
        .O(\s_index[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \s_index[30]_i_1 
       (.I0(\FSM_onehot_t_state_reg_n_0_[5] ),
        .I1(rst),
        .I2(\FSM_onehot_t_state_reg_n_0_[4] ),
        .O(\s_index[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0F02)) 
    \s_index[30]_i_2 
       (.I0(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I1(t_state1_carry__2_n_0),
        .I2(rst),
        .I3(\FSM_onehot_t_state_reg_n_0_[5] ),
        .O(\s_index[30]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[0] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(\s_index[0]_i_1_n_0 ),
        .Q(s_index[0]),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[10] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in5[10]),
        .Q(s_index[10]),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[11] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in5[11]),
        .Q(s_index[11]),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[12] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in5[12]),
        .Q(s_index[12]),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[13] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in5[13]),
        .Q(s_index[13]),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[14] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in5[14]),
        .Q(s_index[14]),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[15] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in5[15]),
        .Q(s_index[15]),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[16] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in5[16]),
        .Q(s_index[16]),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[17] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in5[17]),
        .Q(s_index[17]),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[18] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in5[18]),
        .Q(s_index[18]),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[19] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in5[19]),
        .Q(s_index[19]),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[1] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in5[1]),
        .Q(s_index[1]),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[20] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in5[20]),
        .Q(s_index[20]),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[21] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in5[21]),
        .Q(s_index[21]),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[22] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in5[22]),
        .Q(s_index[22]),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[23] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in5[23]),
        .Q(s_index[23]),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[24] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in5[24]),
        .Q(s_index[24]),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[25] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in5[25]),
        .Q(s_index[25]),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[26] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in5[26]),
        .Q(s_index[26]),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[27] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in5[27]),
        .Q(s_index[27]),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[28] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in5[28]),
        .Q(s_index[28]),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[29] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in5[29]),
        .Q(s_index[29]),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[2] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in5[2]),
        .Q(s_index[2]),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[30] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in5[30]),
        .Q(s_index[30]),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[3] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in5[3]),
        .Q(s_index[3]),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[4] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in5[4]),
        .Q(s_index[4]),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[5] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in5[5]),
        .Q(s_index[5]),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[6] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in5[6]),
        .Q(s_index[6]),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[7] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in5[7]),
        .Q(s_index[7]),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[8] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in5[8]),
        .Q(s_index[8]),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[9] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in5[9]),
        .Q(s_index[9]),
        .R(\s_index[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \s_max_len[29]_i_1 
       (.I0(i_enable),
        .I1(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I2(rst),
        .O(\s_max_len[29]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[0] 
       (.C(i_clk),
        .CE(\s_max_len[29]_i_1_n_0 ),
        .D(i_len[0]),
        .Q(s_max_len[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[10] 
       (.C(i_clk),
        .CE(\s_max_len[29]_i_1_n_0 ),
        .D(i_len[10]),
        .Q(s_max_len[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[11] 
       (.C(i_clk),
        .CE(\s_max_len[29]_i_1_n_0 ),
        .D(i_len[11]),
        .Q(s_max_len[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[12] 
       (.C(i_clk),
        .CE(\s_max_len[29]_i_1_n_0 ),
        .D(i_len[12]),
        .Q(s_max_len[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[13] 
       (.C(i_clk),
        .CE(\s_max_len[29]_i_1_n_0 ),
        .D(i_len[13]),
        .Q(s_max_len[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[14] 
       (.C(i_clk),
        .CE(\s_max_len[29]_i_1_n_0 ),
        .D(i_len[14]),
        .Q(s_max_len[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[15] 
       (.C(i_clk),
        .CE(\s_max_len[29]_i_1_n_0 ),
        .D(i_len[15]),
        .Q(s_max_len[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[16] 
       (.C(i_clk),
        .CE(\s_max_len[29]_i_1_n_0 ),
        .D(i_len[16]),
        .Q(s_max_len[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[17] 
       (.C(i_clk),
        .CE(\s_max_len[29]_i_1_n_0 ),
        .D(i_len[17]),
        .Q(s_max_len[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[18] 
       (.C(i_clk),
        .CE(\s_max_len[29]_i_1_n_0 ),
        .D(i_len[18]),
        .Q(s_max_len[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[19] 
       (.C(i_clk),
        .CE(\s_max_len[29]_i_1_n_0 ),
        .D(i_len[19]),
        .Q(s_max_len[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[1] 
       (.C(i_clk),
        .CE(\s_max_len[29]_i_1_n_0 ),
        .D(i_len[1]),
        .Q(s_max_len[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[20] 
       (.C(i_clk),
        .CE(\s_max_len[29]_i_1_n_0 ),
        .D(i_len[20]),
        .Q(s_max_len[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[21] 
       (.C(i_clk),
        .CE(\s_max_len[29]_i_1_n_0 ),
        .D(i_len[21]),
        .Q(s_max_len[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[22] 
       (.C(i_clk),
        .CE(\s_max_len[29]_i_1_n_0 ),
        .D(i_len[22]),
        .Q(s_max_len[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[23] 
       (.C(i_clk),
        .CE(\s_max_len[29]_i_1_n_0 ),
        .D(i_len[23]),
        .Q(s_max_len[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[24] 
       (.C(i_clk),
        .CE(\s_max_len[29]_i_1_n_0 ),
        .D(i_len[24]),
        .Q(s_max_len[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[25] 
       (.C(i_clk),
        .CE(\s_max_len[29]_i_1_n_0 ),
        .D(i_len[25]),
        .Q(s_max_len[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[26] 
       (.C(i_clk),
        .CE(\s_max_len[29]_i_1_n_0 ),
        .D(i_len[26]),
        .Q(s_max_len[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[27] 
       (.C(i_clk),
        .CE(\s_max_len[29]_i_1_n_0 ),
        .D(i_len[27]),
        .Q(s_max_len[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[28] 
       (.C(i_clk),
        .CE(\s_max_len[29]_i_1_n_0 ),
        .D(i_len[28]),
        .Q(s_max_len[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[29] 
       (.C(i_clk),
        .CE(\s_max_len[29]_i_1_n_0 ),
        .D(i_len[29]),
        .Q(s_max_len[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[2] 
       (.C(i_clk),
        .CE(\s_max_len[29]_i_1_n_0 ),
        .D(i_len[2]),
        .Q(s_max_len[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[3] 
       (.C(i_clk),
        .CE(\s_max_len[29]_i_1_n_0 ),
        .D(i_len[3]),
        .Q(s_max_len[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[4] 
       (.C(i_clk),
        .CE(\s_max_len[29]_i_1_n_0 ),
        .D(i_len[4]),
        .Q(s_max_len[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[5] 
       (.C(i_clk),
        .CE(\s_max_len[29]_i_1_n_0 ),
        .D(i_len[5]),
        .Q(s_max_len[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[6] 
       (.C(i_clk),
        .CE(\s_max_len[29]_i_1_n_0 ),
        .D(i_len[6]),
        .Q(s_max_len[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[7] 
       (.C(i_clk),
        .CE(\s_max_len[29]_i_1_n_0 ),
        .D(i_len[7]),
        .Q(s_max_len[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[8] 
       (.C(i_clk),
        .CE(\s_max_len[29]_i_1_n_0 ),
        .D(i_len[8]),
        .Q(s_max_len[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[9] 
       (.C(i_clk),
        .CE(\s_max_len[29]_i_1_n_0 ),
        .D(i_len[9]),
        .Q(s_max_len[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h02)) 
    s_rstb_i_1
       (.I0(o_rstb),
        .I1(\FSM_onehot_t_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_t_state_reg_n_0_[0] ),
        .O(s_rstb_i_1_n_0));
  FDSE s_rstb_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(s_rstb_i_1_n_0),
        .Q(o_rstb),
        .S(rst));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \s_web[3]_i_1 
       (.I0(\FSM_onehot_t_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_t_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_t_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_t_state_reg_n_0_[5] ),
        .I4(o_web),
        .O(\s_web[3]_i_1_n_0 ));
  FDRE \s_web_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\s_web[3]_i_1_n_0 ),
        .Q(o_web),
        .R(rst));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 t_state1_carry
       (.CI(1'b0),
        .CO({t_state1_carry_n_0,t_state1_carry_n_1,t_state1_carry_n_2,t_state1_carry_n_3}),
        .CYINIT(1'b0),
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
    .INIT(16'h2F02)) 
    t_state1_carry__0_i_1
       (.I0(s_index[14]),
        .I1(s_max_len[14]),
        .I2(s_max_len[15]),
        .I3(s_index[15]),
        .O(t_state1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    t_state1_carry__0_i_2
       (.I0(s_index[12]),
        .I1(s_max_len[12]),
        .I2(s_max_len[13]),
        .I3(s_index[13]),
        .O(t_state1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    t_state1_carry__0_i_3
       (.I0(s_index[10]),
        .I1(s_max_len[10]),
        .I2(s_max_len[11]),
        .I3(s_index[11]),
        .O(t_state1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    t_state1_carry__0_i_4
       (.I0(s_index[8]),
        .I1(s_max_len[8]),
        .I2(s_max_len[9]),
        .I3(s_index[9]),
        .O(t_state1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__0_i_5
       (.I0(s_max_len[15]),
        .I1(s_index[15]),
        .I2(s_max_len[14]),
        .I3(s_index[14]),
        .O(t_state1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__0_i_6
       (.I0(s_max_len[13]),
        .I1(s_index[13]),
        .I2(s_max_len[12]),
        .I3(s_index[12]),
        .O(t_state1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__0_i_7
       (.I0(s_max_len[11]),
        .I1(s_index[11]),
        .I2(s_max_len[10]),
        .I3(s_index[10]),
        .O(t_state1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__0_i_8
       (.I0(s_max_len[9]),
        .I1(s_index[9]),
        .I2(s_max_len[8]),
        .I3(s_index[8]),
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
    .INIT(16'h2F02)) 
    t_state1_carry__1_i_1
       (.I0(s_index[22]),
        .I1(s_max_len[22]),
        .I2(s_max_len[23]),
        .I3(s_index[23]),
        .O(t_state1_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    t_state1_carry__1_i_2
       (.I0(s_index[20]),
        .I1(s_max_len[20]),
        .I2(s_max_len[21]),
        .I3(s_index[21]),
        .O(t_state1_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    t_state1_carry__1_i_3
       (.I0(s_index[18]),
        .I1(s_max_len[18]),
        .I2(s_max_len[19]),
        .I3(s_index[19]),
        .O(t_state1_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    t_state1_carry__1_i_4
       (.I0(s_index[16]),
        .I1(s_max_len[16]),
        .I2(s_max_len[17]),
        .I3(s_index[17]),
        .O(t_state1_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__1_i_5
       (.I0(s_max_len[23]),
        .I1(s_index[23]),
        .I2(s_max_len[22]),
        .I3(s_index[22]),
        .O(t_state1_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__1_i_6
       (.I0(s_max_len[21]),
        .I1(s_index[21]),
        .I2(s_max_len[20]),
        .I3(s_index[20]),
        .O(t_state1_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__1_i_7
       (.I0(s_max_len[19]),
        .I1(s_index[19]),
        .I2(s_max_len[18]),
        .I3(s_index[18]),
        .O(t_state1_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__1_i_8
       (.I0(s_max_len[17]),
        .I1(s_index[17]),
        .I2(s_max_len[16]),
        .I3(s_index[16]),
        .O(t_state1_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 t_state1_carry__2
       (.CI(t_state1_carry__1_n_0),
        .CO({t_state1_carry__2_n_0,t_state1_carry__2_n_1,t_state1_carry__2_n_2,t_state1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({s_index[30],t_state1_carry__2_i_1_n_0,t_state1_carry__2_i_2_n_0,t_state1_carry__2_i_3_n_0}),
        .O(NLW_t_state1_carry__2_O_UNCONNECTED[3:0]),
        .S({t_state1_carry__2_i_4_n_0,t_state1_carry__2_i_5_n_0,t_state1_carry__2_i_6_n_0,t_state1_carry__2_i_7_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    t_state1_carry__2_i_1
       (.I0(s_index[28]),
        .I1(s_max_len[28]),
        .I2(s_max_len[29]),
        .I3(s_index[29]),
        .O(t_state1_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    t_state1_carry__2_i_2
       (.I0(s_index[26]),
        .I1(s_max_len[26]),
        .I2(s_max_len[27]),
        .I3(s_index[27]),
        .O(t_state1_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    t_state1_carry__2_i_3
       (.I0(s_index[24]),
        .I1(s_max_len[24]),
        .I2(s_max_len[25]),
        .I3(s_index[25]),
        .O(t_state1_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state1_carry__2_i_4
       (.I0(s_index[30]),
        .O(t_state1_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__2_i_5
       (.I0(s_max_len[29]),
        .I1(s_index[29]),
        .I2(s_max_len[28]),
        .I3(s_index[28]),
        .O(t_state1_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__2_i_6
       (.I0(s_max_len[27]),
        .I1(s_index[27]),
        .I2(s_max_len[26]),
        .I3(s_index[26]),
        .O(t_state1_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__2_i_7
       (.I0(s_max_len[25]),
        .I1(s_index[25]),
        .I2(s_max_len[24]),
        .I3(s_index[24]),
        .O(t_state1_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    t_state1_carry_i_1
       (.I0(s_index[6]),
        .I1(s_max_len[6]),
        .I2(s_max_len[7]),
        .I3(s_index[7]),
        .O(t_state1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    t_state1_carry_i_2
       (.I0(s_index[4]),
        .I1(s_max_len[4]),
        .I2(s_max_len[5]),
        .I3(s_index[5]),
        .O(t_state1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    t_state1_carry_i_3
       (.I0(s_index[2]),
        .I1(s_max_len[2]),
        .I2(s_max_len[3]),
        .I3(s_index[3]),
        .O(t_state1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    t_state1_carry_i_4
       (.I0(s_index[0]),
        .I1(s_max_len[0]),
        .I2(s_max_len[1]),
        .I3(s_index[1]),
        .O(t_state1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry_i_5
       (.I0(s_max_len[7]),
        .I1(s_index[7]),
        .I2(s_max_len[6]),
        .I3(s_index[6]),
        .O(t_state1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry_i_6
       (.I0(s_max_len[5]),
        .I1(s_index[5]),
        .I2(s_max_len[4]),
        .I3(s_index[4]),
        .O(t_state1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry_i_7
       (.I0(s_max_len[3]),
        .I1(s_index[3]),
        .I2(s_max_len[2]),
        .I3(s_index[2]),
        .O(t_state1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry_i_8
       (.I0(s_max_len[1]),
        .I1(s_index[1]),
        .I2(s_max_len[0]),
        .I3(s_index[0]),
        .O(t_state1_carry_i_8_n_0));
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
