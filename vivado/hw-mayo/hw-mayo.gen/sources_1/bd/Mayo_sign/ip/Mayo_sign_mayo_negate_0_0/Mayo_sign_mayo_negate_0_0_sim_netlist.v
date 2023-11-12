// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Nov 12 18:19:38 2023
// Host        : zenith running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/osm/Documents/Sect/SECT-MAYO/MAYO/vivado/hw-mayo/hw-mayo.gen/sources_1/bd/Mayo_sign/ip/Mayo_sign_mayo_negate_0_0/Mayo_sign_mayo_negate_0_0_sim_netlist.v
// Design      : Mayo_sign_mayo_negate_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Mayo_sign_mayo_negate_0_0,mayo_negate,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "mayo_negate,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Mayo_sign_mayo_negate_0_0
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN Mayo_sign_clk, INSERT_VIP 0" *) input i_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input i_enable;
  input [31:0]i_len;
  input [31:0]i_adr;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Negate DOUT" *) input [31:0]i_doutb;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Negate ADDR" *) output [31:0]o_addrb;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Negate DIN" *) output [31:0]o_dinb;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Negate EN" *) output o_enb;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Negate RST" *) output o_rstb;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Negate WE" *) output [3:0]o_web;
  output o_done;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Negate CTRL" *) output o_control;

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
  Mayo_sign_mayo_negate_0_0_mayo_negate U0
       (.Q({o_dinb[28:24],o_dinb[20:16],o_dinb[12:8],o_dinb[4:0]}),
        .i_adr(i_adr),
        .i_clk(i_clk),
        .i_doutb(i_doutb),
        .i_enable(i_enable),
        .i_len(i_len[30:0]),
        .o_addrb(o_addrb),
        .o_control(o_control),
        .o_done(o_done),
        .o_enb(o_enb),
        .o_rstb(o_rstb),
        .o_web(\^o_web ),
        .rst(rst),
        .\s_data_reg[13]_0 (o_dinb[13]),
        .\s_data_reg[14]_0 (o_dinb[14]),
        .\s_data_reg[15]_0 (o_dinb[15]),
        .\s_data_reg[21]_0 (o_dinb[21]),
        .\s_data_reg[22]_0 (o_dinb[22]),
        .\s_data_reg[23]_0 (o_dinb[23]),
        .\s_data_reg[29]_0 (o_dinb[29]),
        .\s_data_reg[30]_0 (o_dinb[30]),
        .\s_data_reg[31]_0 (o_dinb[31]),
        .\s_data_reg[5]_0 (o_dinb[5]),
        .\s_data_reg[6]_0 (o_dinb[6]),
        .\s_data_reg[7]_0 (o_dinb[7]));
endmodule

(* ORIG_REF_NAME = "mayo_negate" *) 
module Mayo_sign_mayo_negate_0_0_mayo_negate
   (o_rstb,
    \s_data_reg[5]_0 ,
    \s_data_reg[6]_0 ,
    \s_data_reg[7]_0 ,
    Q,
    \s_data_reg[13]_0 ,
    \s_data_reg[14]_0 ,
    \s_data_reg[15]_0 ,
    \s_data_reg[21]_0 ,
    \s_data_reg[22]_0 ,
    \s_data_reg[23]_0 ,
    \s_data_reg[29]_0 ,
    \s_data_reg[30]_0 ,
    \s_data_reg[31]_0 ,
    o_addrb,
    o_enb,
    o_web,
    o_done,
    o_control,
    rst,
    i_enable,
    i_clk,
    i_doutb,
    i_len,
    i_adr);
  output o_rstb;
  output \s_data_reg[5]_0 ;
  output \s_data_reg[6]_0 ;
  output \s_data_reg[7]_0 ;
  output [19:0]Q;
  output \s_data_reg[13]_0 ;
  output \s_data_reg[14]_0 ;
  output \s_data_reg[15]_0 ;
  output \s_data_reg[21]_0 ;
  output \s_data_reg[22]_0 ;
  output \s_data_reg[23]_0 ;
  output \s_data_reg[29]_0 ;
  output \s_data_reg[30]_0 ;
  output \s_data_reg[31]_0 ;
  output [31:0]o_addrb;
  output o_enb;
  output [0:0]o_web;
  output o_done;
  output o_control;
  input rst;
  input i_enable;
  input i_clk;
  input [31:0]i_doutb;
  input [30:0]i_len;
  input [31:0]i_adr;

  wire \FSM_sequential_t_state[0]_i_1_n_0 ;
  wire \FSM_sequential_t_state[1]_i_1_n_0 ;
  wire \FSM_sequential_t_state[2]_i_1_n_0 ;
  wire [19:0]Q;
  wire i___0_carry__0_i_1__0_n_0;
  wire i___0_carry__0_i_1__1_n_0;
  wire i___0_carry__0_i_1__2_n_0;
  wire i___0_carry__0_i_1_n_0;
  wire i___0_carry__0_i_2__0_n_0;
  wire i___0_carry__0_i_2__1_n_0;
  wire i___0_carry__0_i_2__2_n_0;
  wire i___0_carry__0_i_2_n_0;
  wire i___0_carry__0_i_3__0_n_0;
  wire i___0_carry__0_i_3__1_n_0;
  wire i___0_carry__0_i_3__2_n_0;
  wire i___0_carry__0_i_3_n_0;
  wire i___0_carry_i_1__0_n_0;
  wire i___0_carry_i_1__1_n_0;
  wire i___0_carry_i_1__2_n_0;
  wire i___0_carry_i_1_n_0;
  wire i___0_carry_i_2__0_n_0;
  wire i___0_carry_i_2__1_n_0;
  wire i___0_carry_i_2_n_0;
  wire i___0_carry_i_3__0_n_0;
  wire i___0_carry_i_3__1_n_0;
  wire i___0_carry_i_3__2_n_0;
  wire i___0_carry_i_3_n_0;
  wire i___0_carry_i_4__0_n_0;
  wire i___0_carry_i_4__1_n_0;
  wire i___0_carry_i_4__2_n_0;
  wire i___0_carry_i_4_n_0;
  wire i___0_carry_i_5__0_n_0;
  wire i___0_carry_i_5__1_n_0;
  wire i___0_carry_i_5__2_n_0;
  wire i___0_carry_i_5_n_0;
  wire i___0_carry_i_6__0_n_0;
  wire i___0_carry_i_6__1_n_0;
  wire i___0_carry_i_6__2_n_0;
  wire i___0_carry_i_6_n_0;
  wire i___0_carry_i_7__0_n_0;
  wire i___0_carry_i_7__1_n_0;
  wire i___0_carry_i_7__2_n_0;
  wire i___0_carry_i_7_n_0;
  wire i___0_carry_i_8__0_n_0;
  wire i___0_carry_i_8__1_n_0;
  wire i___0_carry_i_8__2_n_0;
  wire i___0_carry_i_8_n_0;
  wire i___14_carry__0_i_1__0_n_0;
  wire i___14_carry__0_i_1__1_n_0;
  wire i___14_carry__0_i_1_n_0;
  wire i___14_carry__0_i_2__0_n_0;
  wire i___14_carry__0_i_2__1_n_0;
  wire i___14_carry__0_i_2__2_n_0;
  wire i___14_carry__0_i_2_n_0;
  wire i___14_carry__0_i_3__0_n_0;
  wire i___14_carry__0_i_3__1_n_0;
  wire i___14_carry__0_i_3__2_n_0;
  wire i___14_carry__0_i_3_n_0;
  wire i___14_carry__0_i_4__0_n_0;
  wire i___14_carry__0_i_4__1_n_0;
  wire i___14_carry__0_i_4__2_n_0;
  wire i___14_carry__0_i_4_n_0;
  wire i___14_carry_i_1__0_n_0;
  wire i___14_carry_i_1__1_n_0;
  wire i___14_carry_i_1__2_n_0;
  wire i___14_carry_i_1_n_0;
  wire i___14_carry_i_2__0_n_0;
  wire i___14_carry_i_2__1_n_0;
  wire i___14_carry_i_2__2_n_0;
  wire i___14_carry_i_2_n_0;
  wire i___14_carry_i_3__0_n_0;
  wire i___14_carry_i_3__1_n_0;
  wire i___14_carry_i_3_n_0;
  wire i___14_carry_i_4__0_n_0;
  wire i___14_carry_i_4__1_n_0;
  wire i___14_carry_i_4_n_0;
  wire i___14_carry_i_5__0_n_0;
  wire i___14_carry_i_5__1_n_0;
  wire i___14_carry_i_5__2_n_0;
  wire i___14_carry_i_5_n_0;
  wire i___14_carry_i_6__0_n_0;
  wire i___14_carry_i_6__1_n_0;
  wire i___14_carry_i_6__2_n_0;
  wire i___14_carry_i_6_n_0;
  wire i___14_carry_i_7__0_n_0;
  wire i___14_carry_i_7__1_n_0;
  wire i___14_carry_i_7__2_n_0;
  wire i___14_carry_i_7_n_0;
  wire i___14_carry_i_8__0_n_0;
  wire i___14_carry_i_8__1_n_0;
  wire i___14_carry_i_8__2_n_0;
  wire i___14_carry_i_8_n_0;
  wire [31:0]i_adr;
  wire i_clk;
  wire [31:0]i_doutb;
  wire i_enable;
  wire [30:0]i_len;
  wire [31:1]in10;
  wire [30:1]in7;
  wire [31:0]o_addrb;
  wire o_control;
  wire o_control_i_1_n_0;
  wire o_done;
  wire o_done_i_1_n_0;
  wire o_enb;
  wire o_rstb;
  wire [0:0]o_web;
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
  wire [31:0]s_addrb0_in;
  wire \s_addrb[31]_i_10_n_0 ;
  wire \s_addrb[31]_i_3_n_0 ;
  wire \s_addrb[31]_i_4_n_0 ;
  wire \s_addrb[31]_i_5_n_0 ;
  wire \s_addrb[31]_i_6_n_0 ;
  wire \s_addrb[31]_i_7_n_0 ;
  wire \s_addrb[31]_i_8_n_0 ;
  wire \s_addrb[31]_i_9_n_0 ;
  wire [28:0]s_data;
  wire \s_data3_inferred__0/i___0_carry__0_n_3 ;
  wire \s_data3_inferred__0/i___0_carry__0_n_6 ;
  wire \s_data3_inferred__0/i___0_carry__0_n_7 ;
  wire \s_data3_inferred__0/i___0_carry_n_0 ;
  wire \s_data3_inferred__0/i___0_carry_n_1 ;
  wire \s_data3_inferred__0/i___0_carry_n_2 ;
  wire \s_data3_inferred__0/i___0_carry_n_3 ;
  wire \s_data3_inferred__0/i___0_carry_n_4 ;
  wire \s_data3_inferred__0/i___0_carry_n_5 ;
  wire \s_data3_inferred__0/i___0_carry_n_6 ;
  wire \s_data3_inferred__0/i___0_carry_n_7 ;
  wire \s_data3_inferred__0/i___14_carry__0_n_3 ;
  wire \s_data3_inferred__0/i___14_carry__0_n_6 ;
  wire \s_data3_inferred__0/i___14_carry__0_n_7 ;
  wire \s_data3_inferred__0/i___14_carry_n_0 ;
  wire \s_data3_inferred__0/i___14_carry_n_1 ;
  wire \s_data3_inferred__0/i___14_carry_n_2 ;
  wire \s_data3_inferred__0/i___14_carry_n_3 ;
  wire \s_data3_inferred__0/i___14_carry_n_4 ;
  wire \s_data3_inferred__0/i___14_carry_n_5 ;
  wire \s_data3_inferred__0/i___14_carry_n_6 ;
  wire \s_data3_inferred__0/i___14_carry_n_7 ;
  wire \s_data3_inferred__2/i___0_carry__0_n_3 ;
  wire \s_data3_inferred__2/i___0_carry__0_n_6 ;
  wire \s_data3_inferred__2/i___0_carry__0_n_7 ;
  wire \s_data3_inferred__2/i___0_carry_n_0 ;
  wire \s_data3_inferred__2/i___0_carry_n_1 ;
  wire \s_data3_inferred__2/i___0_carry_n_2 ;
  wire \s_data3_inferred__2/i___0_carry_n_3 ;
  wire \s_data3_inferred__2/i___0_carry_n_4 ;
  wire \s_data3_inferred__2/i___0_carry_n_5 ;
  wire \s_data3_inferred__2/i___0_carry_n_6 ;
  wire \s_data3_inferred__2/i___0_carry_n_7 ;
  wire \s_data3_inferred__2/i___14_carry__0_n_3 ;
  wire \s_data3_inferred__2/i___14_carry__0_n_6 ;
  wire \s_data3_inferred__2/i___14_carry__0_n_7 ;
  wire \s_data3_inferred__2/i___14_carry_n_0 ;
  wire \s_data3_inferred__2/i___14_carry_n_1 ;
  wire \s_data3_inferred__2/i___14_carry_n_2 ;
  wire \s_data3_inferred__2/i___14_carry_n_3 ;
  wire \s_data3_inferred__2/i___14_carry_n_4 ;
  wire \s_data3_inferred__2/i___14_carry_n_5 ;
  wire \s_data3_inferred__2/i___14_carry_n_6 ;
  wire \s_data3_inferred__2/i___14_carry_n_7 ;
  wire \s_data3_inferred__4/i___0_carry__0_n_3 ;
  wire \s_data3_inferred__4/i___0_carry__0_n_6 ;
  wire \s_data3_inferred__4/i___0_carry__0_n_7 ;
  wire \s_data3_inferred__4/i___0_carry_n_0 ;
  wire \s_data3_inferred__4/i___0_carry_n_1 ;
  wire \s_data3_inferred__4/i___0_carry_n_2 ;
  wire \s_data3_inferred__4/i___0_carry_n_3 ;
  wire \s_data3_inferred__4/i___0_carry_n_4 ;
  wire \s_data3_inferred__4/i___0_carry_n_5 ;
  wire \s_data3_inferred__4/i___0_carry_n_6 ;
  wire \s_data3_inferred__4/i___0_carry_n_7 ;
  wire \s_data3_inferred__4/i___14_carry__0_n_3 ;
  wire \s_data3_inferred__4/i___14_carry__0_n_6 ;
  wire \s_data3_inferred__4/i___14_carry__0_n_7 ;
  wire \s_data3_inferred__4/i___14_carry_n_0 ;
  wire \s_data3_inferred__4/i___14_carry_n_1 ;
  wire \s_data3_inferred__4/i___14_carry_n_2 ;
  wire \s_data3_inferred__4/i___14_carry_n_3 ;
  wire \s_data3_inferred__4/i___14_carry_n_4 ;
  wire \s_data3_inferred__4/i___14_carry_n_5 ;
  wire \s_data3_inferred__4/i___14_carry_n_6 ;
  wire \s_data3_inferred__4/i___14_carry_n_7 ;
  wire \s_data3_inferred__6/i___0_carry__0_n_3 ;
  wire \s_data3_inferred__6/i___0_carry__0_n_6 ;
  wire \s_data3_inferred__6/i___0_carry__0_n_7 ;
  wire \s_data3_inferred__6/i___0_carry_n_0 ;
  wire \s_data3_inferred__6/i___0_carry_n_1 ;
  wire \s_data3_inferred__6/i___0_carry_n_2 ;
  wire \s_data3_inferred__6/i___0_carry_n_3 ;
  wire \s_data3_inferred__6/i___0_carry_n_4 ;
  wire \s_data3_inferred__6/i___0_carry_n_5 ;
  wire \s_data3_inferred__6/i___0_carry_n_6 ;
  wire \s_data3_inferred__6/i___0_carry_n_7 ;
  wire \s_data3_inferred__6/i___14_carry__0_n_3 ;
  wire \s_data3_inferred__6/i___14_carry__0_n_6 ;
  wire \s_data3_inferred__6/i___14_carry__0_n_7 ;
  wire \s_data3_inferred__6/i___14_carry_n_0 ;
  wire \s_data3_inferred__6/i___14_carry_n_1 ;
  wire \s_data3_inferred__6/i___14_carry_n_2 ;
  wire \s_data3_inferred__6/i___14_carry_n_3 ;
  wire \s_data3_inferred__6/i___14_carry_n_4 ;
  wire \s_data3_inferred__6/i___14_carry_n_5 ;
  wire \s_data3_inferred__6/i___14_carry_n_6 ;
  wire \s_data3_inferred__6/i___14_carry_n_7 ;
  wire [5:0]s_data4;
  wire \s_data[0]_i_2_n_0 ;
  wire \s_data[10]_i_2_n_0 ;
  wire \s_data[11]_i_2_n_0 ;
  wire \s_data[11]_i_3_n_0 ;
  wire \s_data[12]_i_2_n_0 ;
  wire \s_data[12]_i_3_n_0 ;
  wire \s_data[12]_i_4_n_0 ;
  wire \s_data[16]_i_2_n_0 ;
  wire \s_data[17]_i_2_n_0 ;
  wire \s_data[18]_i_2_n_0 ;
  wire \s_data[19]_i_2_n_0 ;
  wire \s_data[19]_i_3_n_0 ;
  wire \s_data[1]_i_2_n_0 ;
  wire \s_data[20]_i_2_n_0 ;
  wire \s_data[20]_i_3_n_0 ;
  wire \s_data[20]_i_4_n_0 ;
  wire \s_data[24]_i_2_n_0 ;
  wire \s_data[25]_i_2_n_0 ;
  wire \s_data[26]_i_2_n_0 ;
  wire \s_data[27]_i_2_n_0 ;
  wire \s_data[27]_i_3_n_0 ;
  wire \s_data[28]_i_2_n_0 ;
  wire \s_data[28]_i_3_n_0 ;
  wire \s_data[28]_i_4_n_0 ;
  wire \s_data[2]_i_2_n_0 ;
  wire \s_data[31]_i_1_n_0 ;
  wire \s_data[31]_i_2_n_0 ;
  wire \s_data[3]_i_2_n_0 ;
  wire \s_data[3]_i_3_n_0 ;
  wire \s_data[4]_i_2_n_0 ;
  wire \s_data[4]_i_3_n_0 ;
  wire \s_data[4]_i_4_n_0 ;
  wire \s_data[8]_i_2_n_0 ;
  wire \s_data[9]_i_2_n_0 ;
  wire \s_data_reg[13]_0 ;
  wire \s_data_reg[14]_0 ;
  wire \s_data_reg[15]_0 ;
  wire \s_data_reg[21]_0 ;
  wire \s_data_reg[22]_0 ;
  wire \s_data_reg[23]_0 ;
  wire \s_data_reg[29]_0 ;
  wire \s_data_reg[30]_0 ;
  wire \s_data_reg[31]_0 ;
  wire \s_data_reg[5]_0 ;
  wire \s_data_reg[6]_0 ;
  wire \s_data_reg[7]_0 ;
  wire s_enb_i_1_n_0;
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
  wire s_index0_carry_i_1_n_0;
  wire s_index0_carry_n_0;
  wire s_index0_carry_n_1;
  wire s_index0_carry_n_2;
  wire s_index0_carry_n_3;
  wire \s_index[30]_i_1_n_0 ;
  wire \s_index[30]_i_2_n_0 ;
  wire \s_index_reg_n_0_[10] ;
  wire \s_index_reg_n_0_[11] ;
  wire \s_index_reg_n_0_[12] ;
  wire \s_index_reg_n_0_[13] ;
  wire \s_index_reg_n_0_[14] ;
  wire \s_index_reg_n_0_[15] ;
  wire \s_index_reg_n_0_[16] ;
  wire \s_index_reg_n_0_[17] ;
  wire \s_index_reg_n_0_[18] ;
  wire \s_index_reg_n_0_[19] ;
  wire \s_index_reg_n_0_[1] ;
  wire \s_index_reg_n_0_[20] ;
  wire \s_index_reg_n_0_[21] ;
  wire \s_index_reg_n_0_[22] ;
  wire \s_index_reg_n_0_[23] ;
  wire \s_index_reg_n_0_[24] ;
  wire \s_index_reg_n_0_[25] ;
  wire \s_index_reg_n_0_[26] ;
  wire \s_index_reg_n_0_[27] ;
  wire \s_index_reg_n_0_[28] ;
  wire \s_index_reg_n_0_[29] ;
  wire \s_index_reg_n_0_[2] ;
  wire \s_index_reg_n_0_[30] ;
  wire \s_index_reg_n_0_[3] ;
  wire \s_index_reg_n_0_[4] ;
  wire \s_index_reg_n_0_[5] ;
  wire \s_index_reg_n_0_[6] ;
  wire \s_index_reg_n_0_[7] ;
  wire \s_index_reg_n_0_[8] ;
  wire \s_index_reg_n_0_[9] ;
  wire [30:0]s_max_len;
  wire \s_max_len[30]_i_1_n_0 ;
  wire s_rstb_i_1_n_0;
  wire \s_web[3]_i_1_n_0 ;
  wire [2:0]t_state;
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
  wire [30:1]t_state2;
  wire t_state2_carry__0_i_1_n_0;
  wire t_state2_carry__0_i_2_n_0;
  wire t_state2_carry__0_i_3_n_0;
  wire t_state2_carry__0_i_4_n_0;
  wire t_state2_carry__0_n_0;
  wire t_state2_carry__0_n_1;
  wire t_state2_carry__0_n_2;
  wire t_state2_carry__0_n_3;
  wire t_state2_carry__1_i_1_n_0;
  wire t_state2_carry__1_i_2_n_0;
  wire t_state2_carry__1_i_3_n_0;
  wire t_state2_carry__1_i_4_n_0;
  wire t_state2_carry__1_n_0;
  wire t_state2_carry__1_n_1;
  wire t_state2_carry__1_n_2;
  wire t_state2_carry__1_n_3;
  wire t_state2_carry__2_i_1_n_0;
  wire t_state2_carry__2_i_2_n_0;
  wire t_state2_carry__2_i_3_n_0;
  wire t_state2_carry__2_i_4_n_0;
  wire t_state2_carry__2_n_0;
  wire t_state2_carry__2_n_1;
  wire t_state2_carry__2_n_2;
  wire t_state2_carry__2_n_3;
  wire t_state2_carry__3_i_1_n_0;
  wire t_state2_carry__3_i_2_n_0;
  wire t_state2_carry__3_i_3_n_0;
  wire t_state2_carry__3_i_4_n_0;
  wire t_state2_carry__3_n_0;
  wire t_state2_carry__3_n_1;
  wire t_state2_carry__3_n_2;
  wire t_state2_carry__3_n_3;
  wire t_state2_carry__4_i_1_n_0;
  wire t_state2_carry__4_i_2_n_0;
  wire t_state2_carry__4_i_3_n_0;
  wire t_state2_carry__4_i_4_n_0;
  wire t_state2_carry__4_n_0;
  wire t_state2_carry__4_n_1;
  wire t_state2_carry__4_n_2;
  wire t_state2_carry__4_n_3;
  wire t_state2_carry__5_i_1_n_0;
  wire t_state2_carry__5_i_2_n_0;
  wire t_state2_carry__5_i_3_n_0;
  wire t_state2_carry__5_i_4_n_0;
  wire t_state2_carry__5_n_0;
  wire t_state2_carry__5_n_1;
  wire t_state2_carry__5_n_2;
  wire t_state2_carry__5_n_3;
  wire t_state2_carry__6_i_1_n_0;
  wire t_state2_carry__6_i_2_n_0;
  wire t_state2_carry__6_n_1;
  wire t_state2_carry__6_n_3;
  wire t_state2_carry_i_1_n_0;
  wire t_state2_carry_i_2_n_0;
  wire t_state2_carry_i_3_n_0;
  wire t_state2_carry_n_0;
  wire t_state2_carry_n_1;
  wire t_state2_carry_n_2;
  wire t_state2_carry_n_3;
  wire [3:2]NLW_plusOp_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__6_O_UNCONNECTED;
  wire [3:1]\NLW_s_data3_inferred__0/i___0_carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_data3_inferred__0/i___0_carry__0_O_UNCONNECTED ;
  wire [3:1]\NLW_s_data3_inferred__0/i___14_carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_data3_inferred__0/i___14_carry__0_O_UNCONNECTED ;
  wire [3:1]\NLW_s_data3_inferred__2/i___0_carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_data3_inferred__2/i___0_carry__0_O_UNCONNECTED ;
  wire [3:1]\NLW_s_data3_inferred__2/i___14_carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_data3_inferred__2/i___14_carry__0_O_UNCONNECTED ;
  wire [3:1]\NLW_s_data3_inferred__4/i___0_carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_data3_inferred__4/i___0_carry__0_O_UNCONNECTED ;
  wire [3:1]\NLW_s_data3_inferred__4/i___14_carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_data3_inferred__4/i___14_carry__0_O_UNCONNECTED ;
  wire [3:1]\NLW_s_data3_inferred__6/i___0_carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_data3_inferred__6/i___0_carry__0_O_UNCONNECTED ;
  wire [3:1]\NLW_s_data3_inferred__6/i___14_carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_data3_inferred__6/i___14_carry__0_O_UNCONNECTED ;
  wire [3:1]NLW_s_index0_carry__6_CO_UNCONNECTED;
  wire [3:2]NLW_s_index0_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_t_state1_carry_O_UNCONNECTED;
  wire [3:0]NLW_t_state1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_t_state1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_t_state1_carry__2_O_UNCONNECTED;
  wire [3:1]NLW_t_state2_carry__6_CO_UNCONNECTED;
  wire [3:2]NLW_t_state2_carry__6_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF5000FFC)) 
    \FSM_sequential_t_state[0]_i_1 
       (.I0(t_state1_carry__2_n_0),
        .I1(i_enable),
        .I2(t_state[1]),
        .I3(t_state[2]),
        .I4(t_state[0]),
        .O(\FSM_sequential_t_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hE30C)) 
    \FSM_sequential_t_state[1]_i_1 
       (.I0(t_state1_carry__2_n_0),
        .I1(t_state[1]),
        .I2(t_state[2]),
        .I3(t_state[0]),
        .O(\FSM_sequential_t_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hEC30)) 
    \FSM_sequential_t_state[2]_i_1 
       (.I0(t_state1_carry__2_n_0),
        .I1(t_state[1]),
        .I2(t_state[2]),
        .I3(t_state[0]),
        .O(\FSM_sequential_t_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "read3:010,read2:011,write1:100,write2:101,idle:000,read1:001,done:110" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_t_state_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\FSM_sequential_t_state[0]_i_1_n_0 ),
        .Q(t_state[0]),
        .R(rst));
  (* FSM_ENCODED_STATES = "read3:010,read2:011,write1:100,write2:101,idle:000,read1:001,done:110" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_t_state_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\FSM_sequential_t_state[1]_i_1_n_0 ),
        .Q(t_state[1]),
        .R(rst));
  (* FSM_ENCODED_STATES = "read3:010,read2:011,write1:100,write2:101,idle:000,read1:001,done:110" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_t_state_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\FSM_sequential_t_state[2]_i_1_n_0 ),
        .Q(t_state[2]),
        .R(rst));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h2830)) 
    i___0_carry__0_i_1
       (.I0(\s_data_reg[5]_0 ),
        .I1(\s_data_reg[6]_0 ),
        .I2(\s_data_reg[7]_0 ),
        .I3(i___0_carry_i_8_n_0),
        .O(i___0_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h2830)) 
    i___0_carry__0_i_1__0
       (.I0(\s_data_reg[13]_0 ),
        .I1(\s_data_reg[14]_0 ),
        .I2(\s_data_reg[15]_0 ),
        .I3(i___0_carry_i_8__0_n_0),
        .O(i___0_carry__0_i_1__0_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h2830)) 
    i___0_carry__0_i_1__1
       (.I0(\s_data_reg[21]_0 ),
        .I1(\s_data_reg[22]_0 ),
        .I2(\s_data_reg[23]_0 ),
        .I3(i___0_carry_i_8__1_n_0),
        .O(i___0_carry__0_i_1__1_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h2830)) 
    i___0_carry__0_i_1__2
       (.I0(\s_data_reg[29]_0 ),
        .I1(\s_data_reg[30]_0 ),
        .I2(\s_data_reg[31]_0 ),
        .I3(i___0_carry_i_8__2_n_0),
        .O(i___0_carry__0_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h10E8)) 
    i___0_carry__0_i_2
       (.I0(i___0_carry_i_8_n_0),
        .I1(\s_data_reg[7]_0 ),
        .I2(\s_data_reg[6]_0 ),
        .I3(\s_data_reg[5]_0 ),
        .O(i___0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h10E8)) 
    i___0_carry__0_i_2__0
       (.I0(i___0_carry_i_8__0_n_0),
        .I1(\s_data_reg[15]_0 ),
        .I2(\s_data_reg[14]_0 ),
        .I3(\s_data_reg[13]_0 ),
        .O(i___0_carry__0_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h10E8)) 
    i___0_carry__0_i_2__1
       (.I0(i___0_carry_i_8__1_n_0),
        .I1(\s_data_reg[23]_0 ),
        .I2(\s_data_reg[22]_0 ),
        .I3(\s_data_reg[21]_0 ),
        .O(i___0_carry__0_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h10E8)) 
    i___0_carry__0_i_2__2
       (.I0(i___0_carry_i_8__2_n_0),
        .I1(\s_data_reg[31]_0 ),
        .I2(\s_data_reg[30]_0 ),
        .I3(\s_data_reg[29]_0 ),
        .O(i___0_carry__0_i_2__2_n_0));
  LUT5 #(
    .INIT(32'h2933D6CC)) 
    i___0_carry__0_i_3
       (.I0(\s_data_reg[5]_0 ),
        .I1(\s_data_reg[6]_0 ),
        .I2(\s_data_reg[7]_0 ),
        .I3(i___0_carry_i_8_n_0),
        .I4(i___0_carry__0_i_1_n_0),
        .O(i___0_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'h2933D6CC)) 
    i___0_carry__0_i_3__0
       (.I0(\s_data_reg[13]_0 ),
        .I1(\s_data_reg[14]_0 ),
        .I2(\s_data_reg[15]_0 ),
        .I3(i___0_carry_i_8__0_n_0),
        .I4(i___0_carry__0_i_1__0_n_0),
        .O(i___0_carry__0_i_3__0_n_0));
  LUT5 #(
    .INIT(32'h2933D6CC)) 
    i___0_carry__0_i_3__1
       (.I0(\s_data_reg[21]_0 ),
        .I1(\s_data_reg[22]_0 ),
        .I2(\s_data_reg[23]_0 ),
        .I3(i___0_carry_i_8__1_n_0),
        .I4(i___0_carry__0_i_1__1_n_0),
        .O(i___0_carry__0_i_3__1_n_0));
  LUT5 #(
    .INIT(32'h2933D6CC)) 
    i___0_carry__0_i_3__2
       (.I0(\s_data_reg[29]_0 ),
        .I1(\s_data_reg[30]_0 ),
        .I2(\s_data_reg[31]_0 ),
        .I3(i___0_carry_i_8__2_n_0),
        .I4(i___0_carry__0_i_1__2_n_0),
        .O(i___0_carry__0_i_3__2_n_0));
  LUT4 #(
    .INIT(16'hD6CC)) 
    i___0_carry_i_1
       (.I0(\s_data_reg[5]_0 ),
        .I1(\s_data_reg[6]_0 ),
        .I2(\s_data_reg[7]_0 ),
        .I3(i___0_carry_i_8_n_0),
        .O(i___0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'hD6CC)) 
    i___0_carry_i_1__0
       (.I0(\s_data_reg[13]_0 ),
        .I1(\s_data_reg[14]_0 ),
        .I2(\s_data_reg[15]_0 ),
        .I3(i___0_carry_i_8__0_n_0),
        .O(i___0_carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'hD6CC)) 
    i___0_carry_i_1__1
       (.I0(\s_data_reg[21]_0 ),
        .I1(\s_data_reg[22]_0 ),
        .I2(\s_data_reg[23]_0 ),
        .I3(i___0_carry_i_8__1_n_0),
        .O(i___0_carry_i_1__1_n_0));
  LUT4 #(
    .INIT(16'hD6CC)) 
    i___0_carry_i_1__2
       (.I0(\s_data_reg[29]_0 ),
        .I1(\s_data_reg[30]_0 ),
        .I2(\s_data_reg[31]_0 ),
        .I3(i___0_carry_i_8__2_n_0),
        .O(i___0_carry_i_1__2_n_0));
  LUT4 #(
    .INIT(16'hEE14)) 
    i___0_carry_i_2
       (.I0(i___0_carry_i_8_n_0),
        .I1(\s_data_reg[7]_0 ),
        .I2(\s_data_reg[6]_0 ),
        .I3(\s_data_reg[5]_0 ),
        .O(i___0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'hEE14)) 
    i___0_carry_i_2__0
       (.I0(i___0_carry_i_8__0_n_0),
        .I1(\s_data_reg[15]_0 ),
        .I2(\s_data_reg[14]_0 ),
        .I3(\s_data_reg[13]_0 ),
        .O(i___0_carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'hEE14)) 
    i___0_carry_i_2__1
       (.I0(i___0_carry_i_8__1_n_0),
        .I1(\s_data_reg[23]_0 ),
        .I2(\s_data_reg[22]_0 ),
        .I3(\s_data_reg[21]_0 ),
        .O(i___0_carry_i_2__1_n_0));
  LUT4 #(
    .INIT(16'hEE14)) 
    i___0_carry_i_2__2
       (.I0(i___0_carry_i_8__2_n_0),
        .I1(\s_data_reg[31]_0 ),
        .I2(\s_data_reg[30]_0 ),
        .I3(\s_data_reg[29]_0 ),
        .O(s_data4[5]));
  LUT4 #(
    .INIT(16'hEE14)) 
    i___0_carry_i_3
       (.I0(i___0_carry_i_8_n_0),
        .I1(\s_data_reg[7]_0 ),
        .I2(\s_data_reg[6]_0 ),
        .I3(\s_data_reg[5]_0 ),
        .O(i___0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hEE14)) 
    i___0_carry_i_3__0
       (.I0(i___0_carry_i_8__0_n_0),
        .I1(\s_data_reg[15]_0 ),
        .I2(\s_data_reg[14]_0 ),
        .I3(\s_data_reg[13]_0 ),
        .O(i___0_carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'hEE14)) 
    i___0_carry_i_3__1
       (.I0(i___0_carry_i_8__1_n_0),
        .I1(\s_data_reg[23]_0 ),
        .I2(\s_data_reg[22]_0 ),
        .I3(\s_data_reg[21]_0 ),
        .O(i___0_carry_i_3__1_n_0));
  LUT4 #(
    .INIT(16'hEE14)) 
    i___0_carry_i_3__2
       (.I0(i___0_carry_i_8__2_n_0),
        .I1(\s_data_reg[31]_0 ),
        .I2(\s_data_reg[30]_0 ),
        .I3(\s_data_reg[29]_0 ),
        .O(i___0_carry_i_3__2_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'hD6CC)) 
    i___0_carry_i_4
       (.I0(\s_data_reg[5]_0 ),
        .I1(\s_data_reg[6]_0 ),
        .I2(\s_data_reg[7]_0 ),
        .I3(i___0_carry_i_8_n_0),
        .O(i___0_carry_i_4_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'hD6CC)) 
    i___0_carry_i_4__0
       (.I0(\s_data_reg[13]_0 ),
        .I1(\s_data_reg[14]_0 ),
        .I2(\s_data_reg[15]_0 ),
        .I3(i___0_carry_i_8__0_n_0),
        .O(i___0_carry_i_4__0_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'hD6CC)) 
    i___0_carry_i_4__1
       (.I0(\s_data_reg[21]_0 ),
        .I1(\s_data_reg[22]_0 ),
        .I2(\s_data_reg[23]_0 ),
        .I3(i___0_carry_i_8__1_n_0),
        .O(i___0_carry_i_4__1_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'hD6CC)) 
    i___0_carry_i_4__2
       (.I0(\s_data_reg[29]_0 ),
        .I1(\s_data_reg[30]_0 ),
        .I2(\s_data_reg[31]_0 ),
        .I3(i___0_carry_i_8__2_n_0),
        .O(i___0_carry_i_4__2_n_0));
  LUT4 #(
    .INIT(16'hD6CC)) 
    i___0_carry_i_5
       (.I0(\s_data_reg[5]_0 ),
        .I1(\s_data_reg[6]_0 ),
        .I2(\s_data_reg[7]_0 ),
        .I3(i___0_carry_i_8_n_0),
        .O(i___0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'hD6CC)) 
    i___0_carry_i_5__0
       (.I0(\s_data_reg[13]_0 ),
        .I1(\s_data_reg[14]_0 ),
        .I2(\s_data_reg[15]_0 ),
        .I3(i___0_carry_i_8__0_n_0),
        .O(i___0_carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'hD6CC)) 
    i___0_carry_i_5__1
       (.I0(\s_data_reg[21]_0 ),
        .I1(\s_data_reg[22]_0 ),
        .I2(\s_data_reg[23]_0 ),
        .I3(i___0_carry_i_8__1_n_0),
        .O(i___0_carry_i_5__1_n_0));
  LUT4 #(
    .INIT(16'hD6CC)) 
    i___0_carry_i_5__2
       (.I0(\s_data_reg[29]_0 ),
        .I1(\s_data_reg[30]_0 ),
        .I2(\s_data_reg[31]_0 ),
        .I3(i___0_carry_i_8__2_n_0),
        .O(i___0_carry_i_5__2_n_0));
  LUT4 #(
    .INIT(16'hC6CC)) 
    i___0_carry_i_6
       (.I0(\s_data_reg[5]_0 ),
        .I1(\s_data_reg[6]_0 ),
        .I2(\s_data_reg[7]_0 ),
        .I3(i___0_carry_i_8_n_0),
        .O(i___0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'hC6CC)) 
    i___0_carry_i_6__0
       (.I0(\s_data_reg[13]_0 ),
        .I1(\s_data_reg[14]_0 ),
        .I2(\s_data_reg[15]_0 ),
        .I3(i___0_carry_i_8__0_n_0),
        .O(i___0_carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'hC6CC)) 
    i___0_carry_i_6__1
       (.I0(\s_data_reg[21]_0 ),
        .I1(\s_data_reg[22]_0 ),
        .I2(\s_data_reg[23]_0 ),
        .I3(i___0_carry_i_8__1_n_0),
        .O(i___0_carry_i_6__1_n_0));
  LUT4 #(
    .INIT(16'hC6CC)) 
    i___0_carry_i_6__2
       (.I0(\s_data_reg[29]_0 ),
        .I1(\s_data_reg[30]_0 ),
        .I2(\s_data_reg[31]_0 ),
        .I3(i___0_carry_i_8__2_n_0),
        .O(i___0_carry_i_6__2_n_0));
  LUT4 #(
    .INIT(16'hEE14)) 
    i___0_carry_i_7
       (.I0(i___0_carry_i_8_n_0),
        .I1(\s_data_reg[7]_0 ),
        .I2(\s_data_reg[6]_0 ),
        .I3(\s_data_reg[5]_0 ),
        .O(i___0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'hEE14)) 
    i___0_carry_i_7__0
       (.I0(i___0_carry_i_8__0_n_0),
        .I1(\s_data_reg[15]_0 ),
        .I2(\s_data_reg[14]_0 ),
        .I3(\s_data_reg[13]_0 ),
        .O(i___0_carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'hEE14)) 
    i___0_carry_i_7__1
       (.I0(i___0_carry_i_8__1_n_0),
        .I1(\s_data_reg[23]_0 ),
        .I2(\s_data_reg[22]_0 ),
        .I3(\s_data_reg[21]_0 ),
        .O(i___0_carry_i_7__1_n_0));
  LUT4 #(
    .INIT(16'hEE14)) 
    i___0_carry_i_7__2
       (.I0(i___0_carry_i_8__2_n_0),
        .I1(\s_data_reg[31]_0 ),
        .I2(\s_data_reg[30]_0 ),
        .I3(\s_data_reg[29]_0 ),
        .O(i___0_carry_i_7__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    i___0_carry_i_8
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(i___0_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    i___0_carry_i_8__0
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(Q[7]),
        .O(i___0_carry_i_8__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    i___0_carry_i_8__1
       (.I0(Q[14]),
        .I1(Q[13]),
        .I2(Q[11]),
        .I3(Q[10]),
        .I4(Q[12]),
        .O(i___0_carry_i_8__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    i___0_carry_i_8__2
       (.I0(Q[19]),
        .I1(Q[18]),
        .I2(Q[16]),
        .I3(Q[15]),
        .I4(Q[17]),
        .O(i___0_carry_i_8__2_n_0));
  LUT6 #(
    .INIT(64'h555555556AAAAAAA)) 
    i___14_carry__0_i_1
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(\s_data[4]_i_3_n_0 ),
        .O(i___14_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h555555556AAAAAAA)) 
    i___14_carry__0_i_1__0
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(Q[5]),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(\s_data[12]_i_3_n_0 ),
        .O(i___14_carry__0_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h555555556AAAAAAA)) 
    i___14_carry__0_i_1__1
       (.I0(Q[14]),
        .I1(Q[12]),
        .I2(Q[10]),
        .I3(Q[11]),
        .I4(Q[13]),
        .I5(\s_data[20]_i_3_n_0 ),
        .O(i___14_carry__0_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h555555556AAAAAAA)) 
    i___14_carry__0_i_1__2
       (.I0(Q[19]),
        .I1(Q[17]),
        .I2(Q[15]),
        .I3(Q[16]),
        .I4(Q[18]),
        .I5(\s_data[28]_i_3_n_0 ),
        .O(s_data4[4]));
  LUT5 #(
    .INIT(32'hEE1411EB)) 
    i___14_carry__0_i_2
       (.I0(i___0_carry_i_8_n_0),
        .I1(\s_data_reg[7]_0 ),
        .I2(\s_data_reg[6]_0 ),
        .I3(\s_data_reg[5]_0 ),
        .I4(\s_data3_inferred__0/i___0_carry__0_n_6 ),
        .O(i___14_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'hEE1411EB)) 
    i___14_carry__0_i_2__0
       (.I0(i___0_carry_i_8__0_n_0),
        .I1(\s_data_reg[15]_0 ),
        .I2(\s_data_reg[14]_0 ),
        .I3(\s_data_reg[13]_0 ),
        .I4(\s_data3_inferred__2/i___0_carry__0_n_6 ),
        .O(i___14_carry__0_i_2__0_n_0));
  LUT5 #(
    .INIT(32'hEE1411EB)) 
    i___14_carry__0_i_2__1
       (.I0(i___0_carry_i_8__1_n_0),
        .I1(\s_data_reg[23]_0 ),
        .I2(\s_data_reg[22]_0 ),
        .I3(\s_data_reg[21]_0 ),
        .I4(\s_data3_inferred__4/i___0_carry__0_n_6 ),
        .O(i___14_carry__0_i_2__1_n_0));
  LUT5 #(
    .INIT(32'hEE1411EB)) 
    i___14_carry__0_i_2__2
       (.I0(i___0_carry_i_8__2_n_0),
        .I1(\s_data_reg[31]_0 ),
        .I2(\s_data_reg[30]_0 ),
        .I3(\s_data_reg[29]_0 ),
        .I4(\s_data3_inferred__6/i___0_carry__0_n_6 ),
        .O(i___14_carry__0_i_2__2_n_0));
  LUT6 #(
    .INIT(64'h1E00E1FFE1FF1E00)) 
    i___14_carry__0_i_3
       (.I0(\s_data_reg[5]_0 ),
        .I1(\s_data_reg[6]_0 ),
        .I2(\s_data_reg[7]_0 ),
        .I3(i___14_carry__0_i_4_n_0),
        .I4(Q[4]),
        .I5(\s_data3_inferred__0/i___0_carry__0_n_7 ),
        .O(i___14_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h1E00E1FFE1FF1E00)) 
    i___14_carry__0_i_3__0
       (.I0(\s_data_reg[13]_0 ),
        .I1(\s_data_reg[14]_0 ),
        .I2(\s_data_reg[15]_0 ),
        .I3(i___14_carry__0_i_4__0_n_0),
        .I4(Q[9]),
        .I5(\s_data3_inferred__2/i___0_carry__0_n_7 ),
        .O(i___14_carry__0_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h1E00E1FFE1FF1E00)) 
    i___14_carry__0_i_3__1
       (.I0(\s_data_reg[21]_0 ),
        .I1(\s_data_reg[22]_0 ),
        .I2(\s_data_reg[23]_0 ),
        .I3(i___14_carry__0_i_4__1_n_0),
        .I4(Q[14]),
        .I5(\s_data3_inferred__4/i___0_carry__0_n_7 ),
        .O(i___14_carry__0_i_3__1_n_0));
  LUT6 #(
    .INIT(64'h1E00E1FFE1FF1E00)) 
    i___14_carry__0_i_3__2
       (.I0(\s_data_reg[29]_0 ),
        .I1(\s_data_reg[30]_0 ),
        .I2(\s_data_reg[31]_0 ),
        .I3(i___14_carry__0_i_4__2_n_0),
        .I4(Q[19]),
        .I5(\s_data3_inferred__6/i___0_carry__0_n_7 ),
        .O(i___14_carry__0_i_3__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    i___14_carry__0_i_4
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(i___14_carry__0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    i___14_carry__0_i_4__0
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[8]),
        .O(i___14_carry__0_i_4__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    i___14_carry__0_i_4__1
       (.I0(Q[12]),
        .I1(Q[10]),
        .I2(Q[11]),
        .I3(Q[13]),
        .O(i___14_carry__0_i_4__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    i___14_carry__0_i_4__2
       (.I0(Q[17]),
        .I1(Q[15]),
        .I2(Q[16]),
        .I3(Q[18]),
        .O(i___14_carry__0_i_4__2_n_0));
  LUT5 #(
    .INIT(32'h56666666)) 
    i___14_carry_i_1
       (.I0(Q[3]),
        .I1(\s_data[4]_i_3_n_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(i___14_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h56666666)) 
    i___14_carry_i_1__0
       (.I0(Q[8]),
        .I1(\s_data[12]_i_3_n_0 ),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(Q[7]),
        .O(i___14_carry_i_1__0_n_0));
  LUT5 #(
    .INIT(32'h56666666)) 
    i___14_carry_i_1__1
       (.I0(Q[13]),
        .I1(\s_data[20]_i_3_n_0 ),
        .I2(Q[11]),
        .I3(Q[10]),
        .I4(Q[12]),
        .O(i___14_carry_i_1__1_n_0));
  LUT5 #(
    .INIT(32'h56666666)) 
    i___14_carry_i_1__2
       (.I0(Q[18]),
        .I1(\s_data[28]_i_3_n_0 ),
        .I2(Q[16]),
        .I3(Q[15]),
        .I4(Q[17]),
        .O(i___14_carry_i_1__2_n_0));
  LUT6 #(
    .INIT(64'h5555666966696669)) 
    i___14_carry_i_2
       (.I0(Q[2]),
        .I1(\s_data_reg[7]_0 ),
        .I2(\s_data_reg[6]_0 ),
        .I3(\s_data_reg[5]_0 ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(i___14_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h5555666966696669)) 
    i___14_carry_i_2__0
       (.I0(Q[7]),
        .I1(\s_data_reg[15]_0 ),
        .I2(\s_data_reg[14]_0 ),
        .I3(\s_data_reg[13]_0 ),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(i___14_carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h5555666966696669)) 
    i___14_carry_i_2__1
       (.I0(Q[12]),
        .I1(\s_data_reg[23]_0 ),
        .I2(\s_data_reg[22]_0 ),
        .I3(\s_data_reg[21]_0 ),
        .I4(Q[10]),
        .I5(Q[11]),
        .O(i___14_carry_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h5555666966696669)) 
    i___14_carry_i_2__2
       (.I0(Q[17]),
        .I1(\s_data_reg[31]_0 ),
        .I2(\s_data_reg[30]_0 ),
        .I3(\s_data_reg[29]_0 ),
        .I4(Q[15]),
        .I5(Q[16]),
        .O(i___14_carry_i_2__2_n_0));
  LUT5 #(
    .INIT(32'h55556669)) 
    i___14_carry_i_3
       (.I0(Q[1]),
        .I1(\s_data_reg[7]_0 ),
        .I2(\s_data_reg[6]_0 ),
        .I3(\s_data_reg[5]_0 ),
        .I4(Q[0]),
        .O(i___14_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h55556669)) 
    i___14_carry_i_3__0
       (.I0(Q[6]),
        .I1(\s_data_reg[15]_0 ),
        .I2(\s_data_reg[14]_0 ),
        .I3(\s_data_reg[13]_0 ),
        .I4(Q[5]),
        .O(i___14_carry_i_3__0_n_0));
  LUT5 #(
    .INIT(32'h55556669)) 
    i___14_carry_i_3__1
       (.I0(Q[11]),
        .I1(\s_data_reg[23]_0 ),
        .I2(\s_data_reg[22]_0 ),
        .I3(\s_data_reg[21]_0 ),
        .I4(Q[10]),
        .O(i___14_carry_i_3__1_n_0));
  LUT5 #(
    .INIT(32'h55556669)) 
    i___14_carry_i_3__2
       (.I0(Q[16]),
        .I1(\s_data_reg[31]_0 ),
        .I2(\s_data_reg[30]_0 ),
        .I3(\s_data_reg[29]_0 ),
        .I4(Q[15]),
        .O(s_data4[1]));
  LUT1 #(
    .INIT(2'h1)) 
    i___14_carry_i_4
       (.I0(Q[0]),
        .O(i___14_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___14_carry_i_4__0
       (.I0(Q[5]),
        .O(i___14_carry_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___14_carry_i_4__1
       (.I0(Q[10]),
        .O(i___14_carry_i_4__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___14_carry_i_4__2
       (.I0(Q[15]),
        .O(s_data4[0]));
  LUT6 #(
    .INIT(64'h007FFF80FF80007F)) 
    i___14_carry_i_5
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\s_data[4]_i_3_n_0 ),
        .I4(Q[3]),
        .I5(\s_data3_inferred__0/i___0_carry_n_4 ),
        .O(i___14_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h007FFF80FF80007F)) 
    i___14_carry_i_5__0
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(\s_data[12]_i_3_n_0 ),
        .I4(Q[8]),
        .I5(\s_data3_inferred__2/i___0_carry_n_4 ),
        .O(i___14_carry_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h007FFF80FF80007F)) 
    i___14_carry_i_5__1
       (.I0(Q[12]),
        .I1(Q[10]),
        .I2(Q[11]),
        .I3(\s_data[20]_i_3_n_0 ),
        .I4(Q[13]),
        .I5(\s_data3_inferred__4/i___0_carry_n_4 ),
        .O(i___14_carry_i_5__1_n_0));
  LUT6 #(
    .INIT(64'h007FFF80FF80007F)) 
    i___14_carry_i_5__2
       (.I0(Q[17]),
        .I1(Q[15]),
        .I2(Q[16]),
        .I3(\s_data[28]_i_3_n_0 ),
        .I4(Q[18]),
        .I5(\s_data3_inferred__6/i___0_carry_n_4 ),
        .O(i___14_carry_i_5__2_n_0));
  LUT5 #(
    .INIT(32'h07F8F807)) 
    i___14_carry_i_6
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\s_data[4]_i_3_n_0 ),
        .I3(Q[2]),
        .I4(\s_data3_inferred__0/i___0_carry_n_5 ),
        .O(i___14_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h07F8F807)) 
    i___14_carry_i_6__0
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(\s_data[12]_i_3_n_0 ),
        .I3(Q[7]),
        .I4(\s_data3_inferred__2/i___0_carry_n_5 ),
        .O(i___14_carry_i_6__0_n_0));
  LUT5 #(
    .INIT(32'h07F8F807)) 
    i___14_carry_i_6__1
       (.I0(Q[11]),
        .I1(Q[10]),
        .I2(\s_data[20]_i_3_n_0 ),
        .I3(Q[12]),
        .I4(\s_data3_inferred__4/i___0_carry_n_5 ),
        .O(i___14_carry_i_6__1_n_0));
  LUT5 #(
    .INIT(32'h07F8F807)) 
    i___14_carry_i_6__2
       (.I0(Q[16]),
        .I1(Q[15]),
        .I2(\s_data[28]_i_3_n_0 ),
        .I3(Q[17]),
        .I4(\s_data3_inferred__6/i___0_carry_n_5 ),
        .O(i___14_carry_i_6__2_n_0));
  LUT6 #(
    .INIT(64'h0154FEABFEAB0154)) 
    i___14_carry_i_7
       (.I0(Q[0]),
        .I1(\s_data_reg[5]_0 ),
        .I2(\s_data_reg[6]_0 ),
        .I3(\s_data_reg[7]_0 ),
        .I4(Q[1]),
        .I5(\s_data3_inferred__0/i___0_carry_n_6 ),
        .O(i___14_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h0154FEABFEAB0154)) 
    i___14_carry_i_7__0
       (.I0(Q[5]),
        .I1(\s_data_reg[13]_0 ),
        .I2(\s_data_reg[14]_0 ),
        .I3(\s_data_reg[15]_0 ),
        .I4(Q[6]),
        .I5(\s_data3_inferred__2/i___0_carry_n_6 ),
        .O(i___14_carry_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h0154FEABFEAB0154)) 
    i___14_carry_i_7__1
       (.I0(Q[10]),
        .I1(\s_data_reg[21]_0 ),
        .I2(\s_data_reg[22]_0 ),
        .I3(\s_data_reg[23]_0 ),
        .I4(Q[11]),
        .I5(\s_data3_inferred__4/i___0_carry_n_6 ),
        .O(i___14_carry_i_7__1_n_0));
  LUT6 #(
    .INIT(64'h0154FEABFEAB0154)) 
    i___14_carry_i_7__2
       (.I0(Q[15]),
        .I1(\s_data_reg[29]_0 ),
        .I2(\s_data_reg[30]_0 ),
        .I3(\s_data_reg[31]_0 ),
        .I4(Q[16]),
        .I5(\s_data3_inferred__6/i___0_carry_n_6 ),
        .O(i___14_carry_i_7__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___14_carry_i_8
       (.I0(Q[0]),
        .I1(\s_data3_inferred__0/i___0_carry_n_7 ),
        .O(i___14_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___14_carry_i_8__0
       (.I0(Q[5]),
        .I1(\s_data3_inferred__2/i___0_carry_n_7 ),
        .O(i___14_carry_i_8__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___14_carry_i_8__1
       (.I0(Q[10]),
        .I1(\s_data3_inferred__4/i___0_carry_n_7 ),
        .O(i___14_carry_i_8__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___14_carry_i_8__2
       (.I0(Q[15]),
        .I1(\s_data3_inferred__6/i___0_carry_n_7 ),
        .O(i___14_carry_i_8__2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    o_control_i_1
       (.I0(i_enable),
        .I1(t_state[1]),
        .I2(t_state[2]),
        .I3(t_state[0]),
        .I4(rst),
        .I5(o_control),
        .O(o_control_i_1_n_0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate CTRL" *) 
  FDRE o_control_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_control_i_1_n_0),
        .Q(o_control),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFE40)) 
    o_done_i_1
       (.I0(t_state[0]),
        .I1(t_state[1]),
        .I2(t_state[2]),
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
        .DI({1'b0,1'b0,o_addrb[2],1'b0}),
        .O(in10[4:1]),
        .S({o_addrb[4:3],plusOp_carry_i_1_n_0,o_addrb[1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[8:5]),
        .S(o_addrb[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[12:9]),
        .S(o_addrb[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[16:13]),
        .S(o_addrb[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({plusOp_carry__3_n_0,plusOp_carry__3_n_1,plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[20:17]),
        .S(o_addrb[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_0),
        .CO({plusOp_carry__4_n_0,plusOp_carry__4_n_1,plusOp_carry__4_n_2,plusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[24:21]),
        .S(o_addrb[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__5
       (.CI(plusOp_carry__4_n_0),
        .CO({plusOp_carry__5_n_0,plusOp_carry__5_n_1,plusOp_carry__5_n_2,plusOp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[28:25]),
        .S(o_addrb[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__6
       (.CI(plusOp_carry__5_n_0),
        .CO({NLW_plusOp_carry__6_CO_UNCONNECTED[3:2],plusOp_carry__6_n_2,plusOp_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__6_O_UNCONNECTED[3],in10[31:29]}),
        .S({1'b0,o_addrb[31:29]}));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_carry_i_1
       (.I0(o_addrb[2]),
        .O(plusOp_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    \s_addrb[0]_i_1 
       (.I0(o_addrb[0]),
        .I1(i_enable),
        .I2(i_adr[0]),
        .I3(t_state[1]),
        .I4(t_state[0]),
        .O(s_addrb0_in[0]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    \s_addrb[10]_i_1 
       (.I0(in10[10]),
        .I1(i_enable),
        .I2(i_adr[10]),
        .I3(t_state[1]),
        .I4(t_state[0]),
        .O(s_addrb0_in[10]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    \s_addrb[11]_i_1 
       (.I0(in10[11]),
        .I1(i_enable),
        .I2(i_adr[11]),
        .I3(t_state[1]),
        .I4(t_state[0]),
        .O(s_addrb0_in[11]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    \s_addrb[12]_i_1 
       (.I0(in10[12]),
        .I1(i_enable),
        .I2(i_adr[12]),
        .I3(t_state[1]),
        .I4(t_state[0]),
        .O(s_addrb0_in[12]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    \s_addrb[13]_i_1 
       (.I0(in10[13]),
        .I1(i_enable),
        .I2(i_adr[13]),
        .I3(t_state[1]),
        .I4(t_state[0]),
        .O(s_addrb0_in[13]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    \s_addrb[14]_i_1 
       (.I0(in10[14]),
        .I1(i_enable),
        .I2(i_adr[14]),
        .I3(t_state[1]),
        .I4(t_state[0]),
        .O(s_addrb0_in[14]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    \s_addrb[15]_i_1 
       (.I0(in10[15]),
        .I1(i_enable),
        .I2(i_adr[15]),
        .I3(t_state[1]),
        .I4(t_state[0]),
        .O(s_addrb0_in[15]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    \s_addrb[16]_i_1 
       (.I0(in10[16]),
        .I1(i_enable),
        .I2(i_adr[16]),
        .I3(t_state[1]),
        .I4(t_state[0]),
        .O(s_addrb0_in[16]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    \s_addrb[17]_i_1 
       (.I0(in10[17]),
        .I1(i_enable),
        .I2(i_adr[17]),
        .I3(t_state[1]),
        .I4(t_state[0]),
        .O(s_addrb0_in[17]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    \s_addrb[18]_i_1 
       (.I0(in10[18]),
        .I1(i_enable),
        .I2(i_adr[18]),
        .I3(t_state[1]),
        .I4(t_state[0]),
        .O(s_addrb0_in[18]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    \s_addrb[19]_i_1 
       (.I0(in10[19]),
        .I1(i_enable),
        .I2(i_adr[19]),
        .I3(t_state[1]),
        .I4(t_state[0]),
        .O(s_addrb0_in[19]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    \s_addrb[1]_i_1 
       (.I0(in10[1]),
        .I1(i_enable),
        .I2(i_adr[1]),
        .I3(t_state[1]),
        .I4(t_state[0]),
        .O(s_addrb0_in[1]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    \s_addrb[20]_i_1 
       (.I0(in10[20]),
        .I1(i_enable),
        .I2(i_adr[20]),
        .I3(t_state[1]),
        .I4(t_state[0]),
        .O(s_addrb0_in[20]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    \s_addrb[21]_i_1 
       (.I0(in10[21]),
        .I1(i_enable),
        .I2(i_adr[21]),
        .I3(t_state[1]),
        .I4(t_state[0]),
        .O(s_addrb0_in[21]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    \s_addrb[22]_i_1 
       (.I0(in10[22]),
        .I1(i_enable),
        .I2(i_adr[22]),
        .I3(t_state[1]),
        .I4(t_state[0]),
        .O(s_addrb0_in[22]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    \s_addrb[23]_i_1 
       (.I0(in10[23]),
        .I1(i_enable),
        .I2(i_adr[23]),
        .I3(t_state[1]),
        .I4(t_state[0]),
        .O(s_addrb0_in[23]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    \s_addrb[24]_i_1 
       (.I0(in10[24]),
        .I1(i_enable),
        .I2(i_adr[24]),
        .I3(t_state[1]),
        .I4(t_state[0]),
        .O(s_addrb0_in[24]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    \s_addrb[25]_i_1 
       (.I0(in10[25]),
        .I1(i_enable),
        .I2(i_adr[25]),
        .I3(t_state[1]),
        .I4(t_state[0]),
        .O(s_addrb0_in[25]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    \s_addrb[26]_i_1 
       (.I0(in10[26]),
        .I1(i_enable),
        .I2(i_adr[26]),
        .I3(t_state[1]),
        .I4(t_state[0]),
        .O(s_addrb0_in[26]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    \s_addrb[27]_i_1 
       (.I0(in10[27]),
        .I1(i_enable),
        .I2(i_adr[27]),
        .I3(t_state[1]),
        .I4(t_state[0]),
        .O(s_addrb0_in[27]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    \s_addrb[28]_i_1 
       (.I0(in10[28]),
        .I1(i_enable),
        .I2(i_adr[28]),
        .I3(t_state[1]),
        .I4(t_state[0]),
        .O(s_addrb0_in[28]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    \s_addrb[29]_i_1 
       (.I0(in10[29]),
        .I1(i_enable),
        .I2(i_adr[29]),
        .I3(t_state[1]),
        .I4(t_state[0]),
        .O(s_addrb0_in[29]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    \s_addrb[2]_i_1 
       (.I0(in10[2]),
        .I1(i_enable),
        .I2(i_adr[2]),
        .I3(t_state[1]),
        .I4(t_state[0]),
        .O(s_addrb0_in[2]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    \s_addrb[30]_i_1 
       (.I0(in10[30]),
        .I1(i_enable),
        .I2(i_adr[30]),
        .I3(t_state[1]),
        .I4(t_state[0]),
        .O(s_addrb0_in[30]));
  LUT6 #(
    .INIT(64'h2525250025252525)) 
    \s_addrb[31]_i_1 
       (.I0(t_state[1]),
        .I1(t_state[0]),
        .I2(t_state[2]),
        .I3(\s_addrb[31]_i_3_n_0 ),
        .I4(\s_addrb[31]_i_4_n_0 ),
        .I5(\s_addrb[31]_i_5_n_0 ),
        .O(s_addrb));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_addrb[31]_i_10 
       (.I0(\s_index_reg_n_0_[29] ),
        .I1(\s_index_reg_n_0_[24] ),
        .I2(\s_index_reg_n_0_[20] ),
        .I3(\s_index_reg_n_0_[1] ),
        .O(\s_addrb[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    \s_addrb[31]_i_2 
       (.I0(in10[31]),
        .I1(i_enable),
        .I2(i_adr[31]),
        .I3(t_state[1]),
        .I4(t_state[0]),
        .O(s_addrb0_in[31]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_addrb[31]_i_3 
       (.I0(\s_index_reg_n_0_[14] ),
        .I1(\s_index_reg_n_0_[17] ),
        .I2(\s_index_reg_n_0_[21] ),
        .I3(\s_index_reg_n_0_[22] ),
        .I4(\s_addrb[31]_i_6_n_0 ),
        .O(\s_addrb[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_addrb[31]_i_4 
       (.I0(\s_index_reg_n_0_[2] ),
        .I1(\s_index_reg_n_0_[13] ),
        .I2(\s_index_reg_n_0_[6] ),
        .I3(\s_index_reg_n_0_[12] ),
        .I4(\s_addrb[31]_i_7_n_0 ),
        .O(\s_addrb[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \s_addrb[31]_i_5 
       (.I0(\s_index_reg_n_0_[9] ),
        .I1(\s_index_reg_n_0_[8] ),
        .I2(\s_index_reg_n_0_[15] ),
        .I3(\s_addrb[31]_i_8_n_0 ),
        .I4(\s_addrb[31]_i_9_n_0 ),
        .I5(\s_addrb[31]_i_10_n_0 ),
        .O(\s_addrb[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_addrb[31]_i_6 
       (.I0(\s_index_reg_n_0_[30] ),
        .I1(\s_index_reg_n_0_[28] ),
        .I2(\s_index_reg_n_0_[25] ),
        .I3(\s_index_reg_n_0_[23] ),
        .O(\s_addrb[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_addrb[31]_i_7 
       (.I0(\s_index_reg_n_0_[26] ),
        .I1(\s_index_reg_n_0_[11] ),
        .I2(\s_index_reg_n_0_[16] ),
        .I3(\s_index_reg_n_0_[7] ),
        .O(\s_addrb[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \s_addrb[31]_i_8 
       (.I0(\s_index_reg_n_0_[19] ),
        .I1(\s_index_reg_n_0_[18] ),
        .I2(\s_index_reg_n_0_[10] ),
        .I3(\s_index_reg_n_0_[3] ),
        .O(\s_addrb[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \s_addrb[31]_i_9 
       (.I0(t_state[0]),
        .I1(\s_index_reg_n_0_[4] ),
        .I2(\s_index_reg_n_0_[27] ),
        .I3(\s_index_reg_n_0_[5] ),
        .O(\s_addrb[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    \s_addrb[3]_i_1 
       (.I0(in10[3]),
        .I1(i_enable),
        .I2(i_adr[3]),
        .I3(t_state[1]),
        .I4(t_state[0]),
        .O(s_addrb0_in[3]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    \s_addrb[4]_i_1 
       (.I0(in10[4]),
        .I1(i_enable),
        .I2(i_adr[4]),
        .I3(t_state[1]),
        .I4(t_state[0]),
        .O(s_addrb0_in[4]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    \s_addrb[5]_i_1 
       (.I0(in10[5]),
        .I1(i_enable),
        .I2(i_adr[5]),
        .I3(t_state[1]),
        .I4(t_state[0]),
        .O(s_addrb0_in[5]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    \s_addrb[6]_i_1 
       (.I0(in10[6]),
        .I1(i_enable),
        .I2(i_adr[6]),
        .I3(t_state[1]),
        .I4(t_state[0]),
        .O(s_addrb0_in[6]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    \s_addrb[7]_i_1 
       (.I0(in10[7]),
        .I1(i_enable),
        .I2(i_adr[7]),
        .I3(t_state[1]),
        .I4(t_state[0]),
        .O(s_addrb0_in[7]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    \s_addrb[8]_i_1 
       (.I0(in10[8]),
        .I1(i_enable),
        .I2(i_adr[8]),
        .I3(t_state[1]),
        .I4(t_state[0]),
        .O(s_addrb0_in[8]));
  LUT5 #(
    .INIT(32'h00AA00C0)) 
    \s_addrb[9]_i_1 
       (.I0(in10[9]),
        .I1(i_enable),
        .I2(i_adr[9]),
        .I3(t_state[1]),
        .I4(t_state[0]),
        .O(s_addrb0_in[9]));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[0] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(s_addrb0_in[0]),
        .Q(o_addrb[0]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[10] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(s_addrb0_in[10]),
        .Q(o_addrb[10]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[11] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(s_addrb0_in[11]),
        .Q(o_addrb[11]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[12] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(s_addrb0_in[12]),
        .Q(o_addrb[12]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[13] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(s_addrb0_in[13]),
        .Q(o_addrb[13]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[14] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(s_addrb0_in[14]),
        .Q(o_addrb[14]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[15] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(s_addrb0_in[15]),
        .Q(o_addrb[15]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[16] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(s_addrb0_in[16]),
        .Q(o_addrb[16]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[17] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(s_addrb0_in[17]),
        .Q(o_addrb[17]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[18] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(s_addrb0_in[18]),
        .Q(o_addrb[18]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[19] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(s_addrb0_in[19]),
        .Q(o_addrb[19]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[1] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(s_addrb0_in[1]),
        .Q(o_addrb[1]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[20] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(s_addrb0_in[20]),
        .Q(o_addrb[20]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[21] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(s_addrb0_in[21]),
        .Q(o_addrb[21]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[22] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(s_addrb0_in[22]),
        .Q(o_addrb[22]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[23] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(s_addrb0_in[23]),
        .Q(o_addrb[23]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[24] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(s_addrb0_in[24]),
        .Q(o_addrb[24]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[25] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(s_addrb0_in[25]),
        .Q(o_addrb[25]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[26] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(s_addrb0_in[26]),
        .Q(o_addrb[26]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[27] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(s_addrb0_in[27]),
        .Q(o_addrb[27]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[28] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(s_addrb0_in[28]),
        .Q(o_addrb[28]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[29] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(s_addrb0_in[29]),
        .Q(o_addrb[29]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[2] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(s_addrb0_in[2]),
        .Q(o_addrb[2]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[30] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(s_addrb0_in[30]),
        .Q(o_addrb[30]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[31] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(s_addrb0_in[31]),
        .Q(o_addrb[31]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[3] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(s_addrb0_in[3]),
        .Q(o_addrb[3]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[4] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(s_addrb0_in[4]),
        .Q(o_addrb[4]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[5] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(s_addrb0_in[5]),
        .Q(o_addrb[5]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[6] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(s_addrb0_in[6]),
        .Q(o_addrb[6]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[7] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(s_addrb0_in[7]),
        .Q(o_addrb[7]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[8] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(s_addrb0_in[8]),
        .Q(o_addrb[8]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[9] 
       (.C(i_clk),
        .CE(s_addrb),
        .D(s_addrb0_in[9]),
        .Q(o_addrb[9]),
        .R(rst));
  CARRY4 \s_data3_inferred__0/i___0_carry 
       (.CI(1'b0),
        .CO({\s_data3_inferred__0/i___0_carry_n_0 ,\s_data3_inferred__0/i___0_carry_n_1 ,\s_data3_inferred__0/i___0_carry_n_2 ,\s_data3_inferred__0/i___0_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___0_carry_i_1_n_0,i___0_carry_i_2_n_0,i___0_carry_i_3_n_0,1'b0}),
        .O({\s_data3_inferred__0/i___0_carry_n_4 ,\s_data3_inferred__0/i___0_carry_n_5 ,\s_data3_inferred__0/i___0_carry_n_6 ,\s_data3_inferred__0/i___0_carry_n_7 }),
        .S({i___0_carry_i_4_n_0,i___0_carry_i_5_n_0,i___0_carry_i_6_n_0,i___0_carry_i_7_n_0}));
  CARRY4 \s_data3_inferred__0/i___0_carry__0 
       (.CI(\s_data3_inferred__0/i___0_carry_n_0 ),
        .CO({\NLW_s_data3_inferred__0/i___0_carry__0_CO_UNCONNECTED [3:1],\s_data3_inferred__0/i___0_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i___0_carry__0_i_1_n_0}),
        .O({\NLW_s_data3_inferred__0/i___0_carry__0_O_UNCONNECTED [3:2],\s_data3_inferred__0/i___0_carry__0_n_6 ,\s_data3_inferred__0/i___0_carry__0_n_7 }),
        .S({1'b0,1'b0,i___0_carry__0_i_2_n_0,i___0_carry__0_i_3_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_data3_inferred__0/i___14_carry 
       (.CI(1'b0),
        .CO({\s_data3_inferred__0/i___14_carry_n_0 ,\s_data3_inferred__0/i___14_carry_n_1 ,\s_data3_inferred__0/i___14_carry_n_2 ,\s_data3_inferred__0/i___14_carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i___14_carry_i_1_n_0,i___14_carry_i_2_n_0,i___14_carry_i_3_n_0,i___14_carry_i_4_n_0}),
        .O({\s_data3_inferred__0/i___14_carry_n_4 ,\s_data3_inferred__0/i___14_carry_n_5 ,\s_data3_inferred__0/i___14_carry_n_6 ,\s_data3_inferred__0/i___14_carry_n_7 }),
        .S({i___14_carry_i_5_n_0,i___14_carry_i_6_n_0,i___14_carry_i_7_n_0,i___14_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_data3_inferred__0/i___14_carry__0 
       (.CI(\s_data3_inferred__0/i___14_carry_n_0 ),
        .CO({\NLW_s_data3_inferred__0/i___14_carry__0_CO_UNCONNECTED [3:1],\s_data3_inferred__0/i___14_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i___14_carry__0_i_1_n_0}),
        .O({\NLW_s_data3_inferred__0/i___14_carry__0_O_UNCONNECTED [3:2],\s_data3_inferred__0/i___14_carry__0_n_6 ,\s_data3_inferred__0/i___14_carry__0_n_7 }),
        .S({1'b0,1'b0,i___14_carry__0_i_2_n_0,i___14_carry__0_i_3_n_0}));
  CARRY4 \s_data3_inferred__2/i___0_carry 
       (.CI(1'b0),
        .CO({\s_data3_inferred__2/i___0_carry_n_0 ,\s_data3_inferred__2/i___0_carry_n_1 ,\s_data3_inferred__2/i___0_carry_n_2 ,\s_data3_inferred__2/i___0_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___0_carry_i_1__0_n_0,i___0_carry_i_2__0_n_0,i___0_carry_i_3__0_n_0,1'b0}),
        .O({\s_data3_inferred__2/i___0_carry_n_4 ,\s_data3_inferred__2/i___0_carry_n_5 ,\s_data3_inferred__2/i___0_carry_n_6 ,\s_data3_inferred__2/i___0_carry_n_7 }),
        .S({i___0_carry_i_4__0_n_0,i___0_carry_i_5__0_n_0,i___0_carry_i_6__0_n_0,i___0_carry_i_7__0_n_0}));
  CARRY4 \s_data3_inferred__2/i___0_carry__0 
       (.CI(\s_data3_inferred__2/i___0_carry_n_0 ),
        .CO({\NLW_s_data3_inferred__2/i___0_carry__0_CO_UNCONNECTED [3:1],\s_data3_inferred__2/i___0_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i___0_carry__0_i_1__0_n_0}),
        .O({\NLW_s_data3_inferred__2/i___0_carry__0_O_UNCONNECTED [3:2],\s_data3_inferred__2/i___0_carry__0_n_6 ,\s_data3_inferred__2/i___0_carry__0_n_7 }),
        .S({1'b0,1'b0,i___0_carry__0_i_2__0_n_0,i___0_carry__0_i_3__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_data3_inferred__2/i___14_carry 
       (.CI(1'b0),
        .CO({\s_data3_inferred__2/i___14_carry_n_0 ,\s_data3_inferred__2/i___14_carry_n_1 ,\s_data3_inferred__2/i___14_carry_n_2 ,\s_data3_inferred__2/i___14_carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i___14_carry_i_1__0_n_0,i___14_carry_i_2__0_n_0,i___14_carry_i_3__0_n_0,i___14_carry_i_4__0_n_0}),
        .O({\s_data3_inferred__2/i___14_carry_n_4 ,\s_data3_inferred__2/i___14_carry_n_5 ,\s_data3_inferred__2/i___14_carry_n_6 ,\s_data3_inferred__2/i___14_carry_n_7 }),
        .S({i___14_carry_i_5__0_n_0,i___14_carry_i_6__0_n_0,i___14_carry_i_7__0_n_0,i___14_carry_i_8__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_data3_inferred__2/i___14_carry__0 
       (.CI(\s_data3_inferred__2/i___14_carry_n_0 ),
        .CO({\NLW_s_data3_inferred__2/i___14_carry__0_CO_UNCONNECTED [3:1],\s_data3_inferred__2/i___14_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i___14_carry__0_i_1__0_n_0}),
        .O({\NLW_s_data3_inferred__2/i___14_carry__0_O_UNCONNECTED [3:2],\s_data3_inferred__2/i___14_carry__0_n_6 ,\s_data3_inferred__2/i___14_carry__0_n_7 }),
        .S({1'b0,1'b0,i___14_carry__0_i_2__0_n_0,i___14_carry__0_i_3__0_n_0}));
  CARRY4 \s_data3_inferred__4/i___0_carry 
       (.CI(1'b0),
        .CO({\s_data3_inferred__4/i___0_carry_n_0 ,\s_data3_inferred__4/i___0_carry_n_1 ,\s_data3_inferred__4/i___0_carry_n_2 ,\s_data3_inferred__4/i___0_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___0_carry_i_1__1_n_0,i___0_carry_i_2__1_n_0,i___0_carry_i_3__1_n_0,1'b0}),
        .O({\s_data3_inferred__4/i___0_carry_n_4 ,\s_data3_inferred__4/i___0_carry_n_5 ,\s_data3_inferred__4/i___0_carry_n_6 ,\s_data3_inferred__4/i___0_carry_n_7 }),
        .S({i___0_carry_i_4__1_n_0,i___0_carry_i_5__1_n_0,i___0_carry_i_6__1_n_0,i___0_carry_i_7__1_n_0}));
  CARRY4 \s_data3_inferred__4/i___0_carry__0 
       (.CI(\s_data3_inferred__4/i___0_carry_n_0 ),
        .CO({\NLW_s_data3_inferred__4/i___0_carry__0_CO_UNCONNECTED [3:1],\s_data3_inferred__4/i___0_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i___0_carry__0_i_1__1_n_0}),
        .O({\NLW_s_data3_inferred__4/i___0_carry__0_O_UNCONNECTED [3:2],\s_data3_inferred__4/i___0_carry__0_n_6 ,\s_data3_inferred__4/i___0_carry__0_n_7 }),
        .S({1'b0,1'b0,i___0_carry__0_i_2__1_n_0,i___0_carry__0_i_3__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_data3_inferred__4/i___14_carry 
       (.CI(1'b0),
        .CO({\s_data3_inferred__4/i___14_carry_n_0 ,\s_data3_inferred__4/i___14_carry_n_1 ,\s_data3_inferred__4/i___14_carry_n_2 ,\s_data3_inferred__4/i___14_carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i___14_carry_i_1__1_n_0,i___14_carry_i_2__1_n_0,i___14_carry_i_3__1_n_0,i___14_carry_i_4__1_n_0}),
        .O({\s_data3_inferred__4/i___14_carry_n_4 ,\s_data3_inferred__4/i___14_carry_n_5 ,\s_data3_inferred__4/i___14_carry_n_6 ,\s_data3_inferred__4/i___14_carry_n_7 }),
        .S({i___14_carry_i_5__1_n_0,i___14_carry_i_6__1_n_0,i___14_carry_i_7__1_n_0,i___14_carry_i_8__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_data3_inferred__4/i___14_carry__0 
       (.CI(\s_data3_inferred__4/i___14_carry_n_0 ),
        .CO({\NLW_s_data3_inferred__4/i___14_carry__0_CO_UNCONNECTED [3:1],\s_data3_inferred__4/i___14_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i___14_carry__0_i_1__1_n_0}),
        .O({\NLW_s_data3_inferred__4/i___14_carry__0_O_UNCONNECTED [3:2],\s_data3_inferred__4/i___14_carry__0_n_6 ,\s_data3_inferred__4/i___14_carry__0_n_7 }),
        .S({1'b0,1'b0,i___14_carry__0_i_2__1_n_0,i___14_carry__0_i_3__1_n_0}));
  CARRY4 \s_data3_inferred__6/i___0_carry 
       (.CI(1'b0),
        .CO({\s_data3_inferred__6/i___0_carry_n_0 ,\s_data3_inferred__6/i___0_carry_n_1 ,\s_data3_inferred__6/i___0_carry_n_2 ,\s_data3_inferred__6/i___0_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___0_carry_i_1__2_n_0,s_data4[5],i___0_carry_i_3__2_n_0,1'b0}),
        .O({\s_data3_inferred__6/i___0_carry_n_4 ,\s_data3_inferred__6/i___0_carry_n_5 ,\s_data3_inferred__6/i___0_carry_n_6 ,\s_data3_inferred__6/i___0_carry_n_7 }),
        .S({i___0_carry_i_4__2_n_0,i___0_carry_i_5__2_n_0,i___0_carry_i_6__2_n_0,i___0_carry_i_7__2_n_0}));
  CARRY4 \s_data3_inferred__6/i___0_carry__0 
       (.CI(\s_data3_inferred__6/i___0_carry_n_0 ),
        .CO({\NLW_s_data3_inferred__6/i___0_carry__0_CO_UNCONNECTED [3:1],\s_data3_inferred__6/i___0_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i___0_carry__0_i_1__2_n_0}),
        .O({\NLW_s_data3_inferred__6/i___0_carry__0_O_UNCONNECTED [3:2],\s_data3_inferred__6/i___0_carry__0_n_6 ,\s_data3_inferred__6/i___0_carry__0_n_7 }),
        .S({1'b0,1'b0,i___0_carry__0_i_2__2_n_0,i___0_carry__0_i_3__2_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_data3_inferred__6/i___14_carry 
       (.CI(1'b0),
        .CO({\s_data3_inferred__6/i___14_carry_n_0 ,\s_data3_inferred__6/i___14_carry_n_1 ,\s_data3_inferred__6/i___14_carry_n_2 ,\s_data3_inferred__6/i___14_carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i___14_carry_i_1__2_n_0,i___14_carry_i_2__2_n_0,s_data4[1:0]}),
        .O({\s_data3_inferred__6/i___14_carry_n_4 ,\s_data3_inferred__6/i___14_carry_n_5 ,\s_data3_inferred__6/i___14_carry_n_6 ,\s_data3_inferred__6/i___14_carry_n_7 }),
        .S({i___14_carry_i_5__2_n_0,i___14_carry_i_6__2_n_0,i___14_carry_i_7__2_n_0,i___14_carry_i_8__2_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_data3_inferred__6/i___14_carry__0 
       (.CI(\s_data3_inferred__6/i___14_carry_n_0 ),
        .CO({\NLW_s_data3_inferred__6/i___14_carry__0_CO_UNCONNECTED [3:1],\s_data3_inferred__6/i___14_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,s_data4[4]}),
        .O({\NLW_s_data3_inferred__6/i___14_carry__0_O_UNCONNECTED [3:2],\s_data3_inferred__6/i___14_carry__0_n_6 ,\s_data3_inferred__6/i___14_carry__0_n_7 }),
        .S({1'b0,1'b0,i___14_carry__0_i_2__2_n_0,i___14_carry__0_i_3__2_n_0}));
  LUT6 #(
    .INIT(64'h44444444FF44444F)) 
    \s_data[0]_i_1 
       (.I0(t_state[2]),
        .I1(i_doutb[0]),
        .I2(\s_data[4]_i_2_n_0 ),
        .I3(\s_data[4]_i_3_n_0 ),
        .I4(\s_data[0]_i_2_n_0 ),
        .I5(t_state[0]),
        .O(s_data[0]));
  LUT6 #(
    .INIT(64'h1555AAAA5555AAAA)) 
    \s_data[0]_i_2 
       (.I0(\s_data3_inferred__0/i___14_carry__0_n_6 ),
        .I1(\s_data3_inferred__0/i___14_carry__0_n_7 ),
        .I2(\s_data3_inferred__0/i___14_carry_n_4 ),
        .I3(\s_data3_inferred__0/i___14_carry_n_6 ),
        .I4(\s_data3_inferred__0/i___14_carry_n_7 ),
        .I5(\s_data3_inferred__0/i___14_carry_n_5 ),
        .O(\s_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444444444F44444F)) 
    \s_data[10]_i_1 
       (.I0(t_state[2]),
        .I1(i_doutb[10]),
        .I2(t_state[0]),
        .I3(\s_data[10]_i_2_n_0 ),
        .I4(\s_data[12]_i_3_n_0 ),
        .I5(\s_data[12]_i_2_n_0 ),
        .O(s_data[10]));
  LUT6 #(
    .INIT(64'h6A6A6A6A2AAAAAAA)) 
    \s_data[10]_i_2 
       (.I0(\s_data3_inferred__2/i___14_carry_n_5 ),
        .I1(\s_data3_inferred__2/i___14_carry_n_7 ),
        .I2(\s_data3_inferred__2/i___14_carry_n_6 ),
        .I3(\s_data3_inferred__2/i___14_carry_n_4 ),
        .I4(\s_data3_inferred__2/i___14_carry__0_n_7 ),
        .I5(\s_data3_inferred__2/i___14_carry__0_n_6 ),
        .O(\s_data[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444444444FF444F4)) 
    \s_data[11]_i_1 
       (.I0(t_state[2]),
        .I1(i_doutb[11]),
        .I2(\s_data[12]_i_3_n_0 ),
        .I3(\s_data[11]_i_2_n_0 ),
        .I4(\s_data[11]_i_3_n_0 ),
        .I5(t_state[0]),
        .O(s_data[11]));
  LUT6 #(
    .INIT(64'h9555D55595555555)) 
    \s_data[11]_i_2 
       (.I0(\s_data3_inferred__2/i___14_carry_n_4 ),
        .I1(\s_data3_inferred__2/i___14_carry_n_5 ),
        .I2(\s_data3_inferred__2/i___14_carry_n_7 ),
        .I3(\s_data3_inferred__2/i___14_carry_n_6 ),
        .I4(\s_data3_inferred__2/i___14_carry__0_n_6 ),
        .I5(\s_data3_inferred__2/i___14_carry__0_n_7 ),
        .O(\s_data[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5FFFFFFEBFFFFFFE)) 
    \s_data[11]_i_3 
       (.I0(\s_data3_inferred__2/i___14_carry__0_n_7 ),
        .I1(\s_data3_inferred__2/i___14_carry__0_n_6 ),
        .I2(\s_data3_inferred__2/i___14_carry_n_5 ),
        .I3(\s_data3_inferred__2/i___14_carry_n_7 ),
        .I4(\s_data3_inferred__2/i___14_carry_n_6 ),
        .I5(\s_data3_inferred__2/i___14_carry_n_4 ),
        .O(\s_data[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44444444FF44444F)) 
    \s_data[12]_i_1 
       (.I0(t_state[2]),
        .I1(i_doutb[12]),
        .I2(\s_data[12]_i_2_n_0 ),
        .I3(\s_data[12]_i_3_n_0 ),
        .I4(\s_data[12]_i_4_n_0 ),
        .I5(t_state[0]),
        .O(s_data[12]));
  LUT6 #(
    .INIT(64'h8000800000000001)) 
    \s_data[12]_i_2 
       (.I0(\s_data3_inferred__2/i___14_carry_n_4 ),
        .I1(\s_data3_inferred__2/i___14_carry_n_6 ),
        .I2(\s_data3_inferred__2/i___14_carry_n_7 ),
        .I3(\s_data3_inferred__2/i___14_carry_n_5 ),
        .I4(\s_data3_inferred__2/i___14_carry__0_n_6 ),
        .I5(\s_data3_inferred__2/i___14_carry__0_n_7 ),
        .O(\s_data[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \s_data[12]_i_3 
       (.I0(\s_data_reg[15]_0 ),
        .I1(\s_data_reg[14]_0 ),
        .I2(\s_data_reg[13]_0 ),
        .O(\s_data[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4AAAAAAAAAAAAAAA)) 
    \s_data[12]_i_4 
       (.I0(\s_data3_inferred__2/i___14_carry__0_n_7 ),
        .I1(\s_data3_inferred__2/i___14_carry__0_n_6 ),
        .I2(\s_data3_inferred__2/i___14_carry_n_5 ),
        .I3(\s_data3_inferred__2/i___14_carry_n_7 ),
        .I4(\s_data3_inferred__2/i___14_carry_n_6 ),
        .I5(\s_data3_inferred__2/i___14_carry_n_4 ),
        .O(\s_data[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h44444444FF44444F)) 
    \s_data[16]_i_1 
       (.I0(t_state[2]),
        .I1(i_doutb[16]),
        .I2(\s_data[20]_i_2_n_0 ),
        .I3(\s_data[20]_i_3_n_0 ),
        .I4(\s_data[16]_i_2_n_0 ),
        .I5(t_state[0]),
        .O(s_data[16]));
  LUT6 #(
    .INIT(64'h1555AAAA5555AAAA)) 
    \s_data[16]_i_2 
       (.I0(\s_data3_inferred__4/i___14_carry__0_n_6 ),
        .I1(\s_data3_inferred__4/i___14_carry__0_n_7 ),
        .I2(\s_data3_inferred__4/i___14_carry_n_4 ),
        .I3(\s_data3_inferred__4/i___14_carry_n_6 ),
        .I4(\s_data3_inferred__4/i___14_carry_n_7 ),
        .I5(\s_data3_inferred__4/i___14_carry_n_5 ),
        .O(\s_data[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44444444FF44444F)) 
    \s_data[17]_i_1 
       (.I0(t_state[2]),
        .I1(i_doutb[17]),
        .I2(\s_data[20]_i_2_n_0 ),
        .I3(\s_data[20]_i_3_n_0 ),
        .I4(\s_data[17]_i_2_n_0 ),
        .I5(t_state[0]),
        .O(s_data[17]));
  LUT6 #(
    .INIT(64'h3C3C3C3C70F0F0F0)) 
    \s_data[17]_i_2 
       (.I0(\s_data3_inferred__4/i___14_carry_n_5 ),
        .I1(\s_data3_inferred__4/i___14_carry_n_7 ),
        .I2(\s_data3_inferred__4/i___14_carry_n_6 ),
        .I3(\s_data3_inferred__4/i___14_carry_n_4 ),
        .I4(\s_data3_inferred__4/i___14_carry__0_n_7 ),
        .I5(\s_data3_inferred__4/i___14_carry__0_n_6 ),
        .O(\s_data[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444444444F44444F)) 
    \s_data[18]_i_1 
       (.I0(t_state[2]),
        .I1(i_doutb[18]),
        .I2(\s_data[20]_i_2_n_0 ),
        .I3(\s_data[18]_i_2_n_0 ),
        .I4(\s_data[20]_i_3_n_0 ),
        .I5(t_state[0]),
        .O(s_data[18]));
  LUT6 #(
    .INIT(64'h6A6A6A6A2AAAAAAA)) 
    \s_data[18]_i_2 
       (.I0(\s_data3_inferred__4/i___14_carry_n_5 ),
        .I1(\s_data3_inferred__4/i___14_carry_n_7 ),
        .I2(\s_data3_inferred__4/i___14_carry_n_6 ),
        .I3(\s_data3_inferred__4/i___14_carry_n_4 ),
        .I4(\s_data3_inferred__4/i___14_carry__0_n_7 ),
        .I5(\s_data3_inferred__4/i___14_carry__0_n_6 ),
        .O(\s_data[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444444444FF444F4)) 
    \s_data[19]_i_1 
       (.I0(t_state[2]),
        .I1(i_doutb[19]),
        .I2(\s_data[20]_i_3_n_0 ),
        .I3(\s_data[19]_i_2_n_0 ),
        .I4(\s_data[19]_i_3_n_0 ),
        .I5(t_state[0]),
        .O(s_data[19]));
  LUT6 #(
    .INIT(64'h9555D55595555555)) 
    \s_data[19]_i_2 
       (.I0(\s_data3_inferred__4/i___14_carry_n_4 ),
        .I1(\s_data3_inferred__4/i___14_carry_n_5 ),
        .I2(\s_data3_inferred__4/i___14_carry_n_7 ),
        .I3(\s_data3_inferred__4/i___14_carry_n_6 ),
        .I4(\s_data3_inferred__4/i___14_carry__0_n_6 ),
        .I5(\s_data3_inferred__4/i___14_carry__0_n_7 ),
        .O(\s_data[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5FFFFFFEBFFFFFFE)) 
    \s_data[19]_i_3 
       (.I0(\s_data3_inferred__4/i___14_carry__0_n_7 ),
        .I1(\s_data3_inferred__4/i___14_carry__0_n_6 ),
        .I2(\s_data3_inferred__4/i___14_carry_n_5 ),
        .I3(\s_data3_inferred__4/i___14_carry_n_7 ),
        .I4(\s_data3_inferred__4/i___14_carry_n_6 ),
        .I5(\s_data3_inferred__4/i___14_carry_n_4 ),
        .O(\s_data[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44444444FF44444F)) 
    \s_data[1]_i_1 
       (.I0(t_state[2]),
        .I1(i_doutb[1]),
        .I2(\s_data[4]_i_2_n_0 ),
        .I3(\s_data[4]_i_3_n_0 ),
        .I4(\s_data[1]_i_2_n_0 ),
        .I5(t_state[0]),
        .O(s_data[1]));
  LUT6 #(
    .INIT(64'h3C3C3C3C70F0F0F0)) 
    \s_data[1]_i_2 
       (.I0(\s_data3_inferred__0/i___14_carry_n_5 ),
        .I1(\s_data3_inferred__0/i___14_carry_n_7 ),
        .I2(\s_data3_inferred__0/i___14_carry_n_6 ),
        .I3(\s_data3_inferred__0/i___14_carry_n_4 ),
        .I4(\s_data3_inferred__0/i___14_carry__0_n_7 ),
        .I5(\s_data3_inferred__0/i___14_carry__0_n_6 ),
        .O(\s_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44444444FF44444F)) 
    \s_data[20]_i_1 
       (.I0(t_state[2]),
        .I1(i_doutb[20]),
        .I2(\s_data[20]_i_2_n_0 ),
        .I3(\s_data[20]_i_3_n_0 ),
        .I4(\s_data[20]_i_4_n_0 ),
        .I5(t_state[0]),
        .O(s_data[20]));
  LUT6 #(
    .INIT(64'h8000800000000001)) 
    \s_data[20]_i_2 
       (.I0(\s_data3_inferred__4/i___14_carry_n_4 ),
        .I1(\s_data3_inferred__4/i___14_carry_n_6 ),
        .I2(\s_data3_inferred__4/i___14_carry_n_7 ),
        .I3(\s_data3_inferred__4/i___14_carry_n_5 ),
        .I4(\s_data3_inferred__4/i___14_carry__0_n_6 ),
        .I5(\s_data3_inferred__4/i___14_carry__0_n_7 ),
        .O(\s_data[20]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \s_data[20]_i_3 
       (.I0(\s_data_reg[23]_0 ),
        .I1(\s_data_reg[22]_0 ),
        .I2(\s_data_reg[21]_0 ),
        .O(\s_data[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4AAAAAAAAAAAAAAA)) 
    \s_data[20]_i_4 
       (.I0(\s_data3_inferred__4/i___14_carry__0_n_7 ),
        .I1(\s_data3_inferred__4/i___14_carry__0_n_6 ),
        .I2(\s_data3_inferred__4/i___14_carry_n_5 ),
        .I3(\s_data3_inferred__4/i___14_carry_n_7 ),
        .I4(\s_data3_inferred__4/i___14_carry_n_6 ),
        .I5(\s_data3_inferred__4/i___14_carry_n_4 ),
        .O(\s_data[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h44444444FF44444F)) 
    \s_data[24]_i_1 
       (.I0(t_state[2]),
        .I1(i_doutb[24]),
        .I2(\s_data[28]_i_2_n_0 ),
        .I3(\s_data[28]_i_3_n_0 ),
        .I4(\s_data[24]_i_2_n_0 ),
        .I5(t_state[0]),
        .O(s_data[24]));
  LUT6 #(
    .INIT(64'h1555AAAA5555AAAA)) 
    \s_data[24]_i_2 
       (.I0(\s_data3_inferred__6/i___14_carry__0_n_6 ),
        .I1(\s_data3_inferred__6/i___14_carry__0_n_7 ),
        .I2(\s_data3_inferred__6/i___14_carry_n_4 ),
        .I3(\s_data3_inferred__6/i___14_carry_n_6 ),
        .I4(\s_data3_inferred__6/i___14_carry_n_7 ),
        .I5(\s_data3_inferred__6/i___14_carry_n_5 ),
        .O(\s_data[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44444444FF44444F)) 
    \s_data[25]_i_1 
       (.I0(t_state[2]),
        .I1(i_doutb[25]),
        .I2(\s_data[28]_i_2_n_0 ),
        .I3(\s_data[28]_i_3_n_0 ),
        .I4(\s_data[25]_i_2_n_0 ),
        .I5(t_state[0]),
        .O(s_data[25]));
  LUT6 #(
    .INIT(64'h3C3C3C3C70F0F0F0)) 
    \s_data[25]_i_2 
       (.I0(\s_data3_inferred__6/i___14_carry_n_5 ),
        .I1(\s_data3_inferred__6/i___14_carry_n_7 ),
        .I2(\s_data3_inferred__6/i___14_carry_n_6 ),
        .I3(\s_data3_inferred__6/i___14_carry_n_4 ),
        .I4(\s_data3_inferred__6/i___14_carry__0_n_7 ),
        .I5(\s_data3_inferred__6/i___14_carry__0_n_6 ),
        .O(\s_data[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444444444F44444F)) 
    \s_data[26]_i_1 
       (.I0(t_state[2]),
        .I1(i_doutb[26]),
        .I2(t_state[0]),
        .I3(\s_data[26]_i_2_n_0 ),
        .I4(\s_data[28]_i_3_n_0 ),
        .I5(\s_data[28]_i_2_n_0 ),
        .O(s_data[26]));
  LUT6 #(
    .INIT(64'h6A6A6A6A2AAAAAAA)) 
    \s_data[26]_i_2 
       (.I0(\s_data3_inferred__6/i___14_carry_n_5 ),
        .I1(\s_data3_inferred__6/i___14_carry_n_7 ),
        .I2(\s_data3_inferred__6/i___14_carry_n_6 ),
        .I3(\s_data3_inferred__6/i___14_carry_n_4 ),
        .I4(\s_data3_inferred__6/i___14_carry__0_n_7 ),
        .I5(\s_data3_inferred__6/i___14_carry__0_n_6 ),
        .O(\s_data[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444444444FF444F4)) 
    \s_data[27]_i_1 
       (.I0(t_state[2]),
        .I1(i_doutb[27]),
        .I2(\s_data[28]_i_3_n_0 ),
        .I3(\s_data[27]_i_2_n_0 ),
        .I4(\s_data[27]_i_3_n_0 ),
        .I5(t_state[0]),
        .O(s_data[27]));
  LUT6 #(
    .INIT(64'h9555D55595555555)) 
    \s_data[27]_i_2 
       (.I0(\s_data3_inferred__6/i___14_carry_n_4 ),
        .I1(\s_data3_inferred__6/i___14_carry_n_5 ),
        .I2(\s_data3_inferred__6/i___14_carry_n_7 ),
        .I3(\s_data3_inferred__6/i___14_carry_n_6 ),
        .I4(\s_data3_inferred__6/i___14_carry__0_n_6 ),
        .I5(\s_data3_inferred__6/i___14_carry__0_n_7 ),
        .O(\s_data[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5FFFFFFEBFFFFFFE)) 
    \s_data[27]_i_3 
       (.I0(\s_data3_inferred__6/i___14_carry__0_n_7 ),
        .I1(\s_data3_inferred__6/i___14_carry__0_n_6 ),
        .I2(\s_data3_inferred__6/i___14_carry_n_5 ),
        .I3(\s_data3_inferred__6/i___14_carry_n_7 ),
        .I4(\s_data3_inferred__6/i___14_carry_n_6 ),
        .I5(\s_data3_inferred__6/i___14_carry_n_4 ),
        .O(\s_data[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44444444FF44444F)) 
    \s_data[28]_i_1 
       (.I0(t_state[2]),
        .I1(i_doutb[28]),
        .I2(\s_data[28]_i_2_n_0 ),
        .I3(\s_data[28]_i_3_n_0 ),
        .I4(\s_data[28]_i_4_n_0 ),
        .I5(t_state[0]),
        .O(s_data[28]));
  LUT6 #(
    .INIT(64'h8000800000000001)) 
    \s_data[28]_i_2 
       (.I0(\s_data3_inferred__6/i___14_carry_n_4 ),
        .I1(\s_data3_inferred__6/i___14_carry_n_6 ),
        .I2(\s_data3_inferred__6/i___14_carry_n_7 ),
        .I3(\s_data3_inferred__6/i___14_carry_n_5 ),
        .I4(\s_data3_inferred__6/i___14_carry__0_n_6 ),
        .I5(\s_data3_inferred__6/i___14_carry__0_n_7 ),
        .O(\s_data[28]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \s_data[28]_i_3 
       (.I0(\s_data_reg[31]_0 ),
        .I1(\s_data_reg[30]_0 ),
        .I2(\s_data_reg[29]_0 ),
        .O(\s_data[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4AAAAAAAAAAAAAAA)) 
    \s_data[28]_i_4 
       (.I0(\s_data3_inferred__6/i___14_carry__0_n_7 ),
        .I1(\s_data3_inferred__6/i___14_carry__0_n_6 ),
        .I2(\s_data3_inferred__6/i___14_carry_n_5 ),
        .I3(\s_data3_inferred__6/i___14_carry_n_7 ),
        .I4(\s_data3_inferred__6/i___14_carry_n_6 ),
        .I5(\s_data3_inferred__6/i___14_carry_n_4 ),
        .O(\s_data[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h444444444F44444F)) 
    \s_data[2]_i_1 
       (.I0(t_state[2]),
        .I1(i_doutb[2]),
        .I2(\s_data[4]_i_2_n_0 ),
        .I3(\s_data[2]_i_2_n_0 ),
        .I4(\s_data[4]_i_3_n_0 ),
        .I5(t_state[0]),
        .O(s_data[2]));
  LUT6 #(
    .INIT(64'h6A6A6A6A2AAAAAAA)) 
    \s_data[2]_i_2 
       (.I0(\s_data3_inferred__0/i___14_carry_n_5 ),
        .I1(\s_data3_inferred__0/i___14_carry_n_7 ),
        .I2(\s_data3_inferred__0/i___14_carry_n_6 ),
        .I3(\s_data3_inferred__0/i___14_carry_n_4 ),
        .I4(\s_data3_inferred__0/i___14_carry__0_n_7 ),
        .I5(\s_data3_inferred__0/i___14_carry__0_n_6 ),
        .O(\s_data[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \s_data[31]_i_1 
       (.I0(rst),
        .I1(t_state[0]),
        .I2(t_state[1]),
        .I3(t_state[2]),
        .O(\s_data[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0042)) 
    \s_data[31]_i_2 
       (.I0(t_state[2]),
        .I1(t_state[1]),
        .I2(t_state[0]),
        .I3(rst),
        .O(\s_data[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444444444FF444F4)) 
    \s_data[3]_i_1 
       (.I0(t_state[2]),
        .I1(i_doutb[3]),
        .I2(\s_data[4]_i_3_n_0 ),
        .I3(\s_data[3]_i_2_n_0 ),
        .I4(\s_data[3]_i_3_n_0 ),
        .I5(t_state[0]),
        .O(s_data[3]));
  LUT6 #(
    .INIT(64'h9555D55595555555)) 
    \s_data[3]_i_2 
       (.I0(\s_data3_inferred__0/i___14_carry_n_4 ),
        .I1(\s_data3_inferred__0/i___14_carry_n_5 ),
        .I2(\s_data3_inferred__0/i___14_carry_n_7 ),
        .I3(\s_data3_inferred__0/i___14_carry_n_6 ),
        .I4(\s_data3_inferred__0/i___14_carry__0_n_6 ),
        .I5(\s_data3_inferred__0/i___14_carry__0_n_7 ),
        .O(\s_data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5FFFFFFEBFFFFFFE)) 
    \s_data[3]_i_3 
       (.I0(\s_data3_inferred__0/i___14_carry__0_n_7 ),
        .I1(\s_data3_inferred__0/i___14_carry__0_n_6 ),
        .I2(\s_data3_inferred__0/i___14_carry_n_5 ),
        .I3(\s_data3_inferred__0/i___14_carry_n_7 ),
        .I4(\s_data3_inferred__0/i___14_carry_n_6 ),
        .I5(\s_data3_inferred__0/i___14_carry_n_4 ),
        .O(\s_data[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44444444FF44444F)) 
    \s_data[4]_i_1 
       (.I0(t_state[2]),
        .I1(i_doutb[4]),
        .I2(\s_data[4]_i_2_n_0 ),
        .I3(\s_data[4]_i_3_n_0 ),
        .I4(\s_data[4]_i_4_n_0 ),
        .I5(t_state[0]),
        .O(s_data[4]));
  LUT6 #(
    .INIT(64'h8000800000000001)) 
    \s_data[4]_i_2 
       (.I0(\s_data3_inferred__0/i___14_carry_n_4 ),
        .I1(\s_data3_inferred__0/i___14_carry_n_6 ),
        .I2(\s_data3_inferred__0/i___14_carry_n_7 ),
        .I3(\s_data3_inferred__0/i___14_carry_n_5 ),
        .I4(\s_data3_inferred__0/i___14_carry__0_n_6 ),
        .I5(\s_data3_inferred__0/i___14_carry__0_n_7 ),
        .O(\s_data[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \s_data[4]_i_3 
       (.I0(\s_data_reg[7]_0 ),
        .I1(\s_data_reg[6]_0 ),
        .I2(\s_data_reg[5]_0 ),
        .O(\s_data[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4AAAAAAAAAAAAAAA)) 
    \s_data[4]_i_4 
       (.I0(\s_data3_inferred__0/i___14_carry__0_n_7 ),
        .I1(\s_data3_inferred__0/i___14_carry__0_n_6 ),
        .I2(\s_data3_inferred__0/i___14_carry_n_5 ),
        .I3(\s_data3_inferred__0/i___14_carry_n_7 ),
        .I4(\s_data3_inferred__0/i___14_carry_n_6 ),
        .I5(\s_data3_inferred__0/i___14_carry_n_4 ),
        .O(\s_data[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h44444444FF44444F)) 
    \s_data[8]_i_1 
       (.I0(t_state[2]),
        .I1(i_doutb[8]),
        .I2(\s_data[12]_i_2_n_0 ),
        .I3(\s_data[12]_i_3_n_0 ),
        .I4(\s_data[8]_i_2_n_0 ),
        .I5(t_state[0]),
        .O(s_data[8]));
  LUT6 #(
    .INIT(64'h1555AAAA5555AAAA)) 
    \s_data[8]_i_2 
       (.I0(\s_data3_inferred__2/i___14_carry__0_n_6 ),
        .I1(\s_data3_inferred__2/i___14_carry__0_n_7 ),
        .I2(\s_data3_inferred__2/i___14_carry_n_4 ),
        .I3(\s_data3_inferred__2/i___14_carry_n_6 ),
        .I4(\s_data3_inferred__2/i___14_carry_n_7 ),
        .I5(\s_data3_inferred__2/i___14_carry_n_5 ),
        .O(\s_data[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44444444FF44444F)) 
    \s_data[9]_i_1 
       (.I0(t_state[2]),
        .I1(i_doutb[9]),
        .I2(\s_data[12]_i_2_n_0 ),
        .I3(\s_data[12]_i_3_n_0 ),
        .I4(\s_data[9]_i_2_n_0 ),
        .I5(t_state[0]),
        .O(s_data[9]));
  LUT6 #(
    .INIT(64'h3C3C3C3C70F0F0F0)) 
    \s_data[9]_i_2 
       (.I0(\s_data3_inferred__2/i___14_carry_n_5 ),
        .I1(\s_data3_inferred__2/i___14_carry_n_7 ),
        .I2(\s_data3_inferred__2/i___14_carry_n_6 ),
        .I3(\s_data3_inferred__2/i___14_carry_n_4 ),
        .I4(\s_data3_inferred__2/i___14_carry__0_n_7 ),
        .I5(\s_data3_inferred__2/i___14_carry__0_n_6 ),
        .O(\s_data[9]_i_2_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[0] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(s_data[0]),
        .Q(Q[0]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[10] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(s_data[10]),
        .Q(Q[7]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[11] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(s_data[11]),
        .Q(Q[8]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[12] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(s_data[12]),
        .Q(Q[9]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[13] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(i_doutb[13]),
        .Q(\s_data_reg[13]_0 ),
        .R(\s_data[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[14] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(i_doutb[14]),
        .Q(\s_data_reg[14]_0 ),
        .R(\s_data[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[15] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(i_doutb[15]),
        .Q(\s_data_reg[15]_0 ),
        .R(\s_data[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[16] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(s_data[16]),
        .Q(Q[10]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[17] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(s_data[17]),
        .Q(Q[11]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[18] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(s_data[18]),
        .Q(Q[12]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[19] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(s_data[19]),
        .Q(Q[13]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[1] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(s_data[1]),
        .Q(Q[1]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[20] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(s_data[20]),
        .Q(Q[14]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[21] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(i_doutb[21]),
        .Q(\s_data_reg[21]_0 ),
        .R(\s_data[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[22] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(i_doutb[22]),
        .Q(\s_data_reg[22]_0 ),
        .R(\s_data[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[23] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(i_doutb[23]),
        .Q(\s_data_reg[23]_0 ),
        .R(\s_data[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[24] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(s_data[24]),
        .Q(Q[15]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[25] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(s_data[25]),
        .Q(Q[16]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[26] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(s_data[26]),
        .Q(Q[17]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[27] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(s_data[27]),
        .Q(Q[18]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[28] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(s_data[28]),
        .Q(Q[19]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[29] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(i_doutb[29]),
        .Q(\s_data_reg[29]_0 ),
        .R(\s_data[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[2] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(s_data[2]),
        .Q(Q[2]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[30] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(i_doutb[30]),
        .Q(\s_data_reg[30]_0 ),
        .R(\s_data[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[31] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(i_doutb[31]),
        .Q(\s_data_reg[31]_0 ),
        .R(\s_data[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[3] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(s_data[3]),
        .Q(Q[3]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[4] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(s_data[4]),
        .Q(Q[4]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[5] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(i_doutb[5]),
        .Q(\s_data_reg[5]_0 ),
        .R(\s_data[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[6] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(i_doutb[6]),
        .Q(\s_data_reg[6]_0 ),
        .R(\s_data[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[7] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(i_doutb[7]),
        .Q(\s_data_reg[7]_0 ),
        .R(\s_data[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[8] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(s_data[8]),
        .Q(Q[5]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[9] 
       (.C(i_clk),
        .CE(\s_data[31]_i_2_n_0 ),
        .D(s_data[9]),
        .Q(Q[6]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h9E0A)) 
    s_enb_i_1
       (.I0(t_state[0]),
        .I1(t_state[2]),
        .I2(t_state[1]),
        .I3(o_enb),
        .O(s_enb_i_1_n_0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate EN" *) 
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
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\s_index_reg_n_0_[2] ,1'b0}),
        .O(in7[4:1]),
        .S({\s_index_reg_n_0_[4] ,\s_index_reg_n_0_[3] ,s_index0_carry_i_1_n_0,\s_index_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s_index0_carry__0
       (.CI(s_index0_carry_n_0),
        .CO({s_index0_carry__0_n_0,s_index0_carry__0_n_1,s_index0_carry__0_n_2,s_index0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[8:5]),
        .S({\s_index_reg_n_0_[8] ,\s_index_reg_n_0_[7] ,\s_index_reg_n_0_[6] ,\s_index_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s_index0_carry__1
       (.CI(s_index0_carry__0_n_0),
        .CO({s_index0_carry__1_n_0,s_index0_carry__1_n_1,s_index0_carry__1_n_2,s_index0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[12:9]),
        .S({\s_index_reg_n_0_[12] ,\s_index_reg_n_0_[11] ,\s_index_reg_n_0_[10] ,\s_index_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s_index0_carry__2
       (.CI(s_index0_carry__1_n_0),
        .CO({s_index0_carry__2_n_0,s_index0_carry__2_n_1,s_index0_carry__2_n_2,s_index0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[16:13]),
        .S({\s_index_reg_n_0_[16] ,\s_index_reg_n_0_[15] ,\s_index_reg_n_0_[14] ,\s_index_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s_index0_carry__3
       (.CI(s_index0_carry__2_n_0),
        .CO({s_index0_carry__3_n_0,s_index0_carry__3_n_1,s_index0_carry__3_n_2,s_index0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[20:17]),
        .S({\s_index_reg_n_0_[20] ,\s_index_reg_n_0_[19] ,\s_index_reg_n_0_[18] ,\s_index_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s_index0_carry__4
       (.CI(s_index0_carry__3_n_0),
        .CO({s_index0_carry__4_n_0,s_index0_carry__4_n_1,s_index0_carry__4_n_2,s_index0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[24:21]),
        .S({\s_index_reg_n_0_[24] ,\s_index_reg_n_0_[23] ,\s_index_reg_n_0_[22] ,\s_index_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s_index0_carry__5
       (.CI(s_index0_carry__4_n_0),
        .CO({s_index0_carry__5_n_0,s_index0_carry__5_n_1,s_index0_carry__5_n_2,s_index0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[28:25]),
        .S({\s_index_reg_n_0_[28] ,\s_index_reg_n_0_[27] ,\s_index_reg_n_0_[26] ,\s_index_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s_index0_carry__6
       (.CI(s_index0_carry__5_n_0),
        .CO({NLW_s_index0_carry__6_CO_UNCONNECTED[3:1],s_index0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_s_index0_carry__6_O_UNCONNECTED[3:2],in7[30:29]}),
        .S({1'b0,1'b0,\s_index_reg_n_0_[30] ,\s_index_reg_n_0_[29] }));
  LUT1 #(
    .INIT(2'h1)) 
    s_index0_carry_i_1
       (.I0(\s_index_reg_n_0_[2] ),
        .O(s_index0_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h05000004)) 
    \s_index[30]_i_1 
       (.I0(rst),
        .I1(i_enable),
        .I2(t_state[0]),
        .I3(t_state[1]),
        .I4(t_state[2]),
        .O(\s_index[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000A250A20)) 
    \s_index[30]_i_2 
       (.I0(t_state[2]),
        .I1(t_state1_carry__2_n_0),
        .I2(t_state[0]),
        .I3(t_state[1]),
        .I4(i_enable),
        .I5(rst),
        .O(\s_index[30]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[10] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in7[10]),
        .Q(\s_index_reg_n_0_[10] ),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[11] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in7[11]),
        .Q(\s_index_reg_n_0_[11] ),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[12] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in7[12]),
        .Q(\s_index_reg_n_0_[12] ),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[13] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in7[13]),
        .Q(\s_index_reg_n_0_[13] ),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[14] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in7[14]),
        .Q(\s_index_reg_n_0_[14] ),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[15] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in7[15]),
        .Q(\s_index_reg_n_0_[15] ),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[16] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in7[16]),
        .Q(\s_index_reg_n_0_[16] ),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[17] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in7[17]),
        .Q(\s_index_reg_n_0_[17] ),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[18] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in7[18]),
        .Q(\s_index_reg_n_0_[18] ),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[19] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in7[19]),
        .Q(\s_index_reg_n_0_[19] ),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[1] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in7[1]),
        .Q(\s_index_reg_n_0_[1] ),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[20] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in7[20]),
        .Q(\s_index_reg_n_0_[20] ),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[21] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in7[21]),
        .Q(\s_index_reg_n_0_[21] ),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[22] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in7[22]),
        .Q(\s_index_reg_n_0_[22] ),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[23] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in7[23]),
        .Q(\s_index_reg_n_0_[23] ),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[24] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in7[24]),
        .Q(\s_index_reg_n_0_[24] ),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[25] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in7[25]),
        .Q(\s_index_reg_n_0_[25] ),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[26] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in7[26]),
        .Q(\s_index_reg_n_0_[26] ),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[27] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in7[27]),
        .Q(\s_index_reg_n_0_[27] ),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[28] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in7[28]),
        .Q(\s_index_reg_n_0_[28] ),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[29] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in7[29]),
        .Q(\s_index_reg_n_0_[29] ),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[2] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in7[2]),
        .Q(\s_index_reg_n_0_[2] ),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[30] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in7[30]),
        .Q(\s_index_reg_n_0_[30] ),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[3] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in7[3]),
        .Q(\s_index_reg_n_0_[3] ),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[4] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in7[4]),
        .Q(\s_index_reg_n_0_[4] ),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[5] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in7[5]),
        .Q(\s_index_reg_n_0_[5] ),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[6] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in7[6]),
        .Q(\s_index_reg_n_0_[6] ),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[7] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in7[7]),
        .Q(\s_index_reg_n_0_[7] ),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[8] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in7[8]),
        .Q(\s_index_reg_n_0_[8] ),
        .R(\s_index[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[9] 
       (.C(i_clk),
        .CE(\s_index[30]_i_2_n_0 ),
        .D(in7[9]),
        .Q(\s_index_reg_n_0_[9] ),
        .R(\s_index[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \s_max_len[30]_i_1 
       (.I0(i_enable),
        .I1(rst),
        .I2(t_state[0]),
        .I3(t_state[2]),
        .I4(t_state[1]),
        .O(\s_max_len[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[0] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[0]),
        .Q(s_max_len[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[10] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[10]),
        .Q(s_max_len[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[11] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[11]),
        .Q(s_max_len[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[12] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[12]),
        .Q(s_max_len[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[13] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[13]),
        .Q(s_max_len[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[14] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[14]),
        .Q(s_max_len[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[15] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[15]),
        .Q(s_max_len[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[16] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[16]),
        .Q(s_max_len[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[17] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[17]),
        .Q(s_max_len[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[18] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[18]),
        .Q(s_max_len[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[19] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[19]),
        .Q(s_max_len[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[1] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[1]),
        .Q(s_max_len[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[20] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[20]),
        .Q(s_max_len[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[21] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[21]),
        .Q(s_max_len[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[22] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[22]),
        .Q(s_max_len[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[23] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[23]),
        .Q(s_max_len[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[24] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[24]),
        .Q(s_max_len[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[25] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[25]),
        .Q(s_max_len[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[26] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[26]),
        .Q(s_max_len[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[27] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[27]),
        .Q(s_max_len[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[28] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[28]),
        .Q(s_max_len[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[29] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[29]),
        .Q(s_max_len[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[2] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[2]),
        .Q(s_max_len[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[30] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[30]),
        .Q(s_max_len[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[3] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[3]),
        .Q(s_max_len[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[4] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[4]),
        .Q(s_max_len[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[5] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[5]),
        .Q(s_max_len[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[6] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[6]),
        .Q(s_max_len[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[7] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[7]),
        .Q(s_max_len[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[8] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[8]),
        .Q(s_max_len[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[9] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[9]),
        .Q(s_max_len[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA8)) 
    s_rstb_i_1
       (.I0(o_rstb),
        .I1(t_state[1]),
        .I2(t_state[2]),
        .O(s_rstb_i_1_n_0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate RST" *) 
  FDSE s_rstb_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(s_rstb_i_1_n_0),
        .Q(o_rstb),
        .S(rst));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hE620)) 
    \s_web[3]_i_1 
       (.I0(t_state[2]),
        .I1(t_state[1]),
        .I2(t_state[0]),
        .I3(o_web),
        .O(\s_web[3]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Negate WE" *) 
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
       (.I0(\s_index_reg_n_0_[15] ),
        .I1(t_state2[15]),
        .I2(\s_index_reg_n_0_[14] ),
        .I3(t_state2[14]),
        .O(t_state1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    t_state1_carry__0_i_2
       (.I0(\s_index_reg_n_0_[13] ),
        .I1(t_state2[13]),
        .I2(\s_index_reg_n_0_[12] ),
        .I3(t_state2[12]),
        .O(t_state1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    t_state1_carry__0_i_3
       (.I0(\s_index_reg_n_0_[11] ),
        .I1(t_state2[11]),
        .I2(\s_index_reg_n_0_[10] ),
        .I3(t_state2[10]),
        .O(t_state1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    t_state1_carry__0_i_4
       (.I0(\s_index_reg_n_0_[9] ),
        .I1(t_state2[9]),
        .I2(\s_index_reg_n_0_[8] ),
        .I3(t_state2[8]),
        .O(t_state1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__0_i_5
       (.I0(t_state2[15]),
        .I1(\s_index_reg_n_0_[15] ),
        .I2(t_state2[14]),
        .I3(\s_index_reg_n_0_[14] ),
        .O(t_state1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__0_i_6
       (.I0(t_state2[13]),
        .I1(\s_index_reg_n_0_[13] ),
        .I2(t_state2[12]),
        .I3(\s_index_reg_n_0_[12] ),
        .O(t_state1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__0_i_7
       (.I0(t_state2[11]),
        .I1(\s_index_reg_n_0_[11] ),
        .I2(t_state2[10]),
        .I3(\s_index_reg_n_0_[10] ),
        .O(t_state1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__0_i_8
       (.I0(t_state2[9]),
        .I1(\s_index_reg_n_0_[9] ),
        .I2(t_state2[8]),
        .I3(\s_index_reg_n_0_[8] ),
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
       (.I0(\s_index_reg_n_0_[23] ),
        .I1(t_state2[23]),
        .I2(\s_index_reg_n_0_[22] ),
        .I3(t_state2[22]),
        .O(t_state1_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    t_state1_carry__1_i_2
       (.I0(\s_index_reg_n_0_[21] ),
        .I1(t_state2[21]),
        .I2(\s_index_reg_n_0_[20] ),
        .I3(t_state2[20]),
        .O(t_state1_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    t_state1_carry__1_i_3
       (.I0(\s_index_reg_n_0_[19] ),
        .I1(t_state2[19]),
        .I2(\s_index_reg_n_0_[18] ),
        .I3(t_state2[18]),
        .O(t_state1_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    t_state1_carry__1_i_4
       (.I0(\s_index_reg_n_0_[17] ),
        .I1(t_state2[17]),
        .I2(\s_index_reg_n_0_[16] ),
        .I3(t_state2[16]),
        .O(t_state1_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__1_i_5
       (.I0(t_state2[23]),
        .I1(\s_index_reg_n_0_[23] ),
        .I2(t_state2[22]),
        .I3(\s_index_reg_n_0_[22] ),
        .O(t_state1_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__1_i_6
       (.I0(t_state2[21]),
        .I1(\s_index_reg_n_0_[21] ),
        .I2(t_state2[20]),
        .I3(\s_index_reg_n_0_[20] ),
        .O(t_state1_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__1_i_7
       (.I0(t_state2[19]),
        .I1(\s_index_reg_n_0_[19] ),
        .I2(t_state2[18]),
        .I3(\s_index_reg_n_0_[18] ),
        .O(t_state1_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__1_i_8
       (.I0(t_state2[17]),
        .I1(\s_index_reg_n_0_[17] ),
        .I2(t_state2[16]),
        .I3(\s_index_reg_n_0_[16] ),
        .O(t_state1_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 t_state1_carry__2
       (.CI(t_state1_carry__1_n_0),
        .CO({t_state1_carry__2_n_0,t_state1_carry__2_n_1,t_state1_carry__2_n_2,t_state1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({t_state1_carry__2_i_1_n_0,t_state1_carry__2_i_2_n_0,t_state1_carry__2_i_3_n_0,t_state1_carry__2_i_4_n_0}),
        .O(NLW_t_state1_carry__2_O_UNCONNECTED[3:0]),
        .S({t_state1_carry__2_i_5_n_0,t_state1_carry__2_i_6_n_0,t_state1_carry__2_i_7_n_0,t_state1_carry__2_i_8_n_0}));
  LUT3 #(
    .INIT(8'h5D)) 
    t_state1_carry__2_i_1
       (.I0(t_state2_carry__6_n_1),
        .I1(\s_index_reg_n_0_[30] ),
        .I2(t_state2[30]),
        .O(t_state1_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    t_state1_carry__2_i_2
       (.I0(\s_index_reg_n_0_[29] ),
        .I1(t_state2[29]),
        .I2(\s_index_reg_n_0_[28] ),
        .I3(t_state2[28]),
        .O(t_state1_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    t_state1_carry__2_i_3
       (.I0(\s_index_reg_n_0_[27] ),
        .I1(t_state2[27]),
        .I2(\s_index_reg_n_0_[26] ),
        .I3(t_state2[26]),
        .O(t_state1_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    t_state1_carry__2_i_4
       (.I0(\s_index_reg_n_0_[25] ),
        .I1(t_state2[25]),
        .I2(\s_index_reg_n_0_[24] ),
        .I3(t_state2[24]),
        .O(t_state1_carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'h82)) 
    t_state1_carry__2_i_5
       (.I0(t_state2_carry__6_n_1),
        .I1(t_state2[30]),
        .I2(\s_index_reg_n_0_[30] ),
        .O(t_state1_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__2_i_6
       (.I0(t_state2[29]),
        .I1(\s_index_reg_n_0_[29] ),
        .I2(t_state2[28]),
        .I3(\s_index_reg_n_0_[28] ),
        .O(t_state1_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__2_i_7
       (.I0(t_state2[27]),
        .I1(\s_index_reg_n_0_[27] ),
        .I2(t_state2[26]),
        .I3(\s_index_reg_n_0_[26] ),
        .O(t_state1_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__2_i_8
       (.I0(t_state2[25]),
        .I1(\s_index_reg_n_0_[25] ),
        .I2(t_state2[24]),
        .I3(\s_index_reg_n_0_[24] ),
        .O(t_state1_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    t_state1_carry_i_1
       (.I0(\s_index_reg_n_0_[7] ),
        .I1(t_state2[7]),
        .I2(\s_index_reg_n_0_[6] ),
        .I3(t_state2[6]),
        .O(t_state1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    t_state1_carry_i_2
       (.I0(\s_index_reg_n_0_[5] ),
        .I1(t_state2[5]),
        .I2(\s_index_reg_n_0_[4] ),
        .I3(t_state2[4]),
        .O(t_state1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    t_state1_carry_i_3
       (.I0(\s_index_reg_n_0_[3] ),
        .I1(t_state2[3]),
        .I2(\s_index_reg_n_0_[2] ),
        .I3(t_state2[2]),
        .O(t_state1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    t_state1_carry_i_4
       (.I0(\s_index_reg_n_0_[1] ),
        .I1(t_state2[1]),
        .O(t_state1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry_i_5
       (.I0(t_state2[7]),
        .I1(\s_index_reg_n_0_[7] ),
        .I2(t_state2[6]),
        .I3(\s_index_reg_n_0_[6] ),
        .O(t_state1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry_i_6
       (.I0(t_state2[5]),
        .I1(\s_index_reg_n_0_[5] ),
        .I2(t_state2[4]),
        .I3(\s_index_reg_n_0_[4] ),
        .O(t_state1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry_i_7
       (.I0(t_state2[3]),
        .I1(\s_index_reg_n_0_[3] ),
        .I2(t_state2[2]),
        .I3(\s_index_reg_n_0_[2] ),
        .O(t_state1_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    t_state1_carry_i_8
       (.I0(t_state2[1]),
        .I1(\s_index_reg_n_0_[1] ),
        .I2(s_max_len[0]),
        .O(t_state1_carry_i_8_n_0));
  CARRY4 t_state2_carry
       (.CI(1'b0),
        .CO({t_state2_carry_n_0,t_state2_carry_n_1,t_state2_carry_n_2,t_state2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({s_max_len[4:2],1'b0}),
        .O(t_state2[4:1]),
        .S({t_state2_carry_i_1_n_0,t_state2_carry_i_2_n_0,t_state2_carry_i_3_n_0,s_max_len[1]}));
  CARRY4 t_state2_carry__0
       (.CI(t_state2_carry_n_0),
        .CO({t_state2_carry__0_n_0,t_state2_carry__0_n_1,t_state2_carry__0_n_2,t_state2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(s_max_len[8:5]),
        .O(t_state2[8:5]),
        .S({t_state2_carry__0_i_1_n_0,t_state2_carry__0_i_2_n_0,t_state2_carry__0_i_3_n_0,t_state2_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__0_i_1
       (.I0(s_max_len[8]),
        .O(t_state2_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__0_i_2
       (.I0(s_max_len[7]),
        .O(t_state2_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__0_i_3
       (.I0(s_max_len[6]),
        .O(t_state2_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__0_i_4
       (.I0(s_max_len[5]),
        .O(t_state2_carry__0_i_4_n_0));
  CARRY4 t_state2_carry__1
       (.CI(t_state2_carry__0_n_0),
        .CO({t_state2_carry__1_n_0,t_state2_carry__1_n_1,t_state2_carry__1_n_2,t_state2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(s_max_len[12:9]),
        .O(t_state2[12:9]),
        .S({t_state2_carry__1_i_1_n_0,t_state2_carry__1_i_2_n_0,t_state2_carry__1_i_3_n_0,t_state2_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__1_i_1
       (.I0(s_max_len[12]),
        .O(t_state2_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__1_i_2
       (.I0(s_max_len[11]),
        .O(t_state2_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__1_i_3
       (.I0(s_max_len[10]),
        .O(t_state2_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__1_i_4
       (.I0(s_max_len[9]),
        .O(t_state2_carry__1_i_4_n_0));
  CARRY4 t_state2_carry__2
       (.CI(t_state2_carry__1_n_0),
        .CO({t_state2_carry__2_n_0,t_state2_carry__2_n_1,t_state2_carry__2_n_2,t_state2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(s_max_len[16:13]),
        .O(t_state2[16:13]),
        .S({t_state2_carry__2_i_1_n_0,t_state2_carry__2_i_2_n_0,t_state2_carry__2_i_3_n_0,t_state2_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__2_i_1
       (.I0(s_max_len[16]),
        .O(t_state2_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__2_i_2
       (.I0(s_max_len[15]),
        .O(t_state2_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__2_i_3
       (.I0(s_max_len[14]),
        .O(t_state2_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__2_i_4
       (.I0(s_max_len[13]),
        .O(t_state2_carry__2_i_4_n_0));
  CARRY4 t_state2_carry__3
       (.CI(t_state2_carry__2_n_0),
        .CO({t_state2_carry__3_n_0,t_state2_carry__3_n_1,t_state2_carry__3_n_2,t_state2_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(s_max_len[20:17]),
        .O(t_state2[20:17]),
        .S({t_state2_carry__3_i_1_n_0,t_state2_carry__3_i_2_n_0,t_state2_carry__3_i_3_n_0,t_state2_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__3_i_1
       (.I0(s_max_len[20]),
        .O(t_state2_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__3_i_2
       (.I0(s_max_len[19]),
        .O(t_state2_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__3_i_3
       (.I0(s_max_len[18]),
        .O(t_state2_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__3_i_4
       (.I0(s_max_len[17]),
        .O(t_state2_carry__3_i_4_n_0));
  CARRY4 t_state2_carry__4
       (.CI(t_state2_carry__3_n_0),
        .CO({t_state2_carry__4_n_0,t_state2_carry__4_n_1,t_state2_carry__4_n_2,t_state2_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(s_max_len[24:21]),
        .O(t_state2[24:21]),
        .S({t_state2_carry__4_i_1_n_0,t_state2_carry__4_i_2_n_0,t_state2_carry__4_i_3_n_0,t_state2_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__4_i_1
       (.I0(s_max_len[24]),
        .O(t_state2_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__4_i_2
       (.I0(s_max_len[23]),
        .O(t_state2_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__4_i_3
       (.I0(s_max_len[22]),
        .O(t_state2_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__4_i_4
       (.I0(s_max_len[21]),
        .O(t_state2_carry__4_i_4_n_0));
  CARRY4 t_state2_carry__5
       (.CI(t_state2_carry__4_n_0),
        .CO({t_state2_carry__5_n_0,t_state2_carry__5_n_1,t_state2_carry__5_n_2,t_state2_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(s_max_len[28:25]),
        .O(t_state2[28:25]),
        .S({t_state2_carry__5_i_1_n_0,t_state2_carry__5_i_2_n_0,t_state2_carry__5_i_3_n_0,t_state2_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__5_i_1
       (.I0(s_max_len[28]),
        .O(t_state2_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__5_i_2
       (.I0(s_max_len[27]),
        .O(t_state2_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__5_i_3
       (.I0(s_max_len[26]),
        .O(t_state2_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__5_i_4
       (.I0(s_max_len[25]),
        .O(t_state2_carry__5_i_4_n_0));
  CARRY4 t_state2_carry__6
       (.CI(t_state2_carry__5_n_0),
        .CO({NLW_t_state2_carry__6_CO_UNCONNECTED[3],t_state2_carry__6_n_1,NLW_t_state2_carry__6_CO_UNCONNECTED[1],t_state2_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s_max_len[30:29]}),
        .O({NLW_t_state2_carry__6_O_UNCONNECTED[3:2],t_state2[30:29]}),
        .S({1'b0,1'b1,t_state2_carry__6_i_1_n_0,t_state2_carry__6_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__6_i_1
       (.I0(s_max_len[30]),
        .O(t_state2_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__6_i_2
       (.I0(s_max_len[29]),
        .O(t_state2_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry_i_1
       (.I0(s_max_len[4]),
        .O(t_state2_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry_i_2
       (.I0(s_max_len[3]),
        .O(t_state2_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry_i_3
       (.I0(s_max_len[2]),
        .O(t_state2_carry_i_3_n_0));
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
