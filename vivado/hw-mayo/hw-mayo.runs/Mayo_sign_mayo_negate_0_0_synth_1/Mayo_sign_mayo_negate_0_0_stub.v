// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Nov 12 18:19:36 2023
// Host        : zenith running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Mayo_sign_mayo_negate_0_0_stub.v
// Design      : Mayo_sign_mayo_negate_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mayo_negate,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(i_clk, rst, i_enable, i_len, i_adr, i_doutb, o_addrb, 
  o_dinb, o_enb, o_rstb, o_web, o_done, o_control)
/* synthesis syn_black_box black_box_pad_pin="i_clk,rst,i_enable,i_len[31:0],i_adr[31:0],i_doutb[31:0],o_addrb[31:0],o_dinb[31:0],o_enb,o_rstb,o_web[3:0],o_done,o_control" */;
  input i_clk;
  input rst;
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
endmodule
