// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed May 17 00:49:27 2023
// Host        : osm-hzb running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Mayo_sign_with_zynq_mayo_trng_arbiter_0_0_stub.v
// Design      : Mayo_sign_with_zynq_mayo_trng_arbiter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mayo_trng_arbiter,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(i_trng_sel, o_trng_r, o_trng_w, o_trng_data, 
  i_trng_data, i_trng_valid, i_trng_done, i_trng0_r, i_trng0_w, i_trng0_data, o_trng0_data, 
  o_trng0_valid, o_trng0_done, i_trng1_r, i_trng1_w, i_trng1_data, o_trng1_data, o_trng1_valid, 
  o_trng1_done, i_trng2_r, i_trng2_w, i_trng2_data, o_trng2_data, o_trng2_valid, o_trng2_done)
/* synthesis syn_black_box black_box_pad_pin="i_trng_sel[1:0],o_trng_r,o_trng_w,o_trng_data[31:0],i_trng_data[31:0],i_trng_valid,i_trng_done,i_trng0_r,i_trng0_w,i_trng0_data[31:0],o_trng0_data[31:0],o_trng0_valid,o_trng0_done,i_trng1_r,i_trng1_w,i_trng1_data[31:0],o_trng1_data[31:0],o_trng1_valid,o_trng1_done,i_trng2_r,i_trng2_w,i_trng2_data[31:0],o_trng2_data[31:0],o_trng2_valid,o_trng2_done" */;
  input [1:0]i_trng_sel;
  output o_trng_r;
  output o_trng_w;
  output [31:0]o_trng_data;
  input [31:0]i_trng_data;
  input i_trng_valid;
  input i_trng_done;
  input i_trng0_r;
  input i_trng0_w;
  input [31:0]i_trng0_data;
  output [31:0]o_trng0_data;
  output o_trng0_valid;
  output o_trng0_done;
  input i_trng1_r;
  input i_trng1_w;
  input [31:0]i_trng1_data;
  output [31:0]o_trng1_data;
  output o_trng1_valid;
  output o_trng1_done;
  input i_trng2_r;
  input i_trng2_w;
  input [31:0]i_trng2_data;
  output [31:0]o_trng2_data;
  output o_trng2_valid;
  output o_trng2_done;
endmodule
