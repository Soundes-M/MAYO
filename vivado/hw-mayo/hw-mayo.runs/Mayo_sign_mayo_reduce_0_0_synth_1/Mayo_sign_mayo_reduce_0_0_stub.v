// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Nov 12 18:19:38 2023
// Host        : zenith running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Mayo_sign_mayo_reduce_0_0_stub.v
// Design      : Mayo_sign_mayo_reduce_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mayo_reduce,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(i_clk, rst, i_enable, i_bram_sel, i_len, i_adr, 
  i_dout0, o_addr0, o_din0, o_en0, o_rst0, o_we0, i_dout1, o_addr1, o_din1, o_en1, o_rst1, o_we1, o_done, 
  o_control0, o_control1)
/* synthesis syn_black_box black_box_pad_pin="i_clk,rst,i_enable,i_bram_sel,i_len[31:0],i_adr[31:0],i_dout0[31:0],o_addr0[31:0],o_din0[31:0],o_en0,o_rst0,o_we0[3:0],i_dout1[31:0],o_addr1[31:0],o_din1[31:0],o_en1,o_rst1,o_we1[3:0],o_done,o_control0,o_control1" */;
  input i_clk;
  input rst;
  input i_enable;
  input i_bram_sel;
  input [31:0]i_len;
  input [31:0]i_adr;
  input [31:0]i_dout0;
  output [31:0]o_addr0;
  output [31:0]o_din0;
  output o_en0;
  output o_rst0;
  output [3:0]o_we0;
  input [31:0]i_dout1;
  output [31:0]o_addr1;
  output [31:0]o_din1;
  output o_en1;
  output o_rst1;
  output [3:0]o_we1;
  output o_done;
  output o_control0;
  output o_control1;
endmodule
