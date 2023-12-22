// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Dec  8 17:14:13 2023
// Host        : zenith running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/osm/Documents/Sect/SECT-MAYO/MAYO/vivado/hw-mayo/hw-mayo.gen/sources_1/bd/Mayo_sign/ip/Mayo_sign_mayo_trng_arbiter_0_0/Mayo_sign_mayo_trng_arbiter_0_0_stub.v
// Design      : Mayo_sign_mayo_trng_arbiter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mayo_trng_arbiter,Vivado 2020.2" *)
module Mayo_sign_mayo_trng_arbiter_0_0(i_trng_sel, o_trng_en, i_trng_random_data, 
  i_trng_valid, i_trng0_en, o_trng0_random_data, o_trng0_valid, i_trng1_en, 
  o_trng1_random_data, o_trng1_valid, i_trng2_en, o_trng2_random_data, o_trng2_valid)
/* synthesis syn_black_box black_box_pad_pin="i_trng_sel[1:0],o_trng_en,i_trng_random_data[127:0],i_trng_valid,i_trng0_en,o_trng0_random_data[127:0],o_trng0_valid,i_trng1_en,o_trng1_random_data[127:0],o_trng1_valid,i_trng2_en,o_trng2_random_data[127:0],o_trng2_valid" */;
  input [1:0]i_trng_sel;
  output o_trng_en;
  input [127:0]i_trng_random_data;
  input i_trng_valid;
  input i_trng0_en;
  output [127:0]o_trng0_random_data;
  output o_trng0_valid;
  input i_trng1_en;
  output [127:0]o_trng1_random_data;
  output o_trng1_valid;
  input i_trng2_en;
  output [127:0]o_trng2_random_data;
  output o_trng2_valid;
endmodule
