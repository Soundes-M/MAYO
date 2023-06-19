// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed May 17 00:47:58 2023
// Host        : osm-hzb running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_mayo_sample_oil_space_0_0/Mayo_sign_with_zynq_mayo_sample_oil_space_0_0_stub.v
// Design      : Mayo_sign_with_zynq_mayo_sample_oil_space_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mayo_sample_oil_space,Vivado 2020.2" *)
module Mayo_sign_with_zynq_mayo_sample_oil_space_0_0(i_clk, rst, i_enable, o_done, i_oil_addr, i_mode, 
  o_trng_r, o_trng_w, o_trng_data, i_trng_data, i_trng_valid, i_trng_done, i_mema_dout, 
  o_mema_din, o_mema_addr, o_mema_en, o_mema_rst, o_mema_we, o_controla, i_memb_dout, o_memb_din, 
  o_memb_addr, o_memb_en, o_memb_rst, o_memb_we, o_controlb, o_trng_sel)
/* synthesis syn_black_box black_box_pad_pin="i_clk,rst,i_enable,o_done,i_oil_addr[31:0],i_mode,o_trng_r,o_trng_w,o_trng_data[31:0],i_trng_data[31:0],i_trng_valid,i_trng_done,i_mema_dout[31:0],o_mema_din[31:0],o_mema_addr[31:0],o_mema_en,o_mema_rst,o_mema_we[3:0],o_controla,i_memb_dout[31:0],o_memb_din[31:0],o_memb_addr[31:0],o_memb_en,o_memb_rst,o_memb_we[3:0],o_controlb,o_trng_sel" */;
  input i_clk;
  input rst;
  input i_enable;
  output o_done;
  input [31:0]i_oil_addr;
  input i_mode;
  output o_trng_r;
  output o_trng_w;
  output [31:0]o_trng_data;
  input [31:0]i_trng_data;
  input i_trng_valid;
  input i_trng_done;
  input [31:0]i_mema_dout;
  output [31:0]o_mema_din;
  output [31:0]o_mema_addr;
  output o_mema_en;
  output o_mema_rst;
  output [3:0]o_mema_we;
  output o_controla;
  input [31:0]i_memb_dout;
  output [31:0]o_memb_din;
  output [31:0]o_memb_addr;
  output o_memb_en;
  output o_memb_rst;
  output [3:0]o_memb_we;
  output o_controlb;
  output o_trng_sel;
endmodule
