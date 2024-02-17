// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sat Dec  9 19:38:42 2023
// Host        : zenith running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/osm/Documents/Sect/SECT-MAYO/MAYO/vivado/hw-mayo/hw-mayo.gen/sources_1/bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_mayo_sample_vinegar_0_1/Mayo_sign_with_zynq_mayo_sample_vinegar_0_1_stub.v
// Design      : Mayo_sign_with_zynq_mayo_sample_vinegar_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mayo_sample_vinegar,Vivado 2020.2" *)
module Mayo_sign_with_zynq_mayo_sample_vinegar_0_1(clk, rst, en, o_done, i_input_adr, o_trng_en, 
  i_trng_valid, i_trng_data, o_trng_sel, i_memb_dout, o_memb_din, o_memb_addr, o_memb_en, 
  o_memb_rst, o_memb_we, o_controlb)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,en,o_done,i_input_adr[31:0],o_trng_en,i_trng_valid,i_trng_data[127:0],o_trng_sel,i_memb_dout[31:0],o_memb_din[31:0],o_memb_addr[31:0],o_memb_en,o_memb_rst,o_memb_we[3:0],o_controlb" */;
  input clk;
  input rst;
  input en;
  output o_done;
  input [31:0]i_input_adr;
  output o_trng_en;
  input i_trng_valid;
  input [127:0]i_trng_data;
  output o_trng_sel;
  input [31:0]i_memb_dout;
  output [31:0]o_memb_din;
  output [31:0]o_memb_addr;
  output o_memb_en;
  output o_memb_rst;
  output [3:0]o_memb_we;
  output o_controlb;
endmodule