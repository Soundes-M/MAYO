// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Oct 23 16:36:13 2022
// Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_mayo_sample_oil_space_0_0/Mayo_keygen_no_zynq_mayo_sample_oil_space_0_0_stub.v
// Design      : Mayo_keygen_no_zynq_mayo_sample_oil_space_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mayo_sample_oil_space,Vivado 2020.2" *)
module Mayo_keygen_no_zynq_mayo_sample_oil_space_0_0(i_clk, rst, i_enable, o_done, i_oil_addr, 
  i_hash_done, i_hash_dyn_done, o_hash_enable, o_hash_mlen, o_hash_olen, o_hash_write_adr, 
  o_hash_read_adr, i_memb_dout, o_memb_din, o_memb_addr, o_memb_en, o_memb_rst, o_memb_we, 
  o_controla, o_controlb)
/* synthesis syn_black_box black_box_pad_pin="i_clk,rst,i_enable,o_done,i_oil_addr[31:0],i_hash_done,i_hash_dyn_done,o_hash_enable,o_hash_mlen[31:0],o_hash_olen[31:0],o_hash_write_adr[31:0],o_hash_read_adr[31:0],i_memb_dout[31:0],o_memb_din[31:0],o_memb_addr[31:0],o_memb_en,o_memb_rst,o_memb_we[3:0],o_controla,o_controlb" */;
  input i_clk;
  input rst;
  input i_enable;
  output o_done;
  input [31:0]i_oil_addr;
  input i_hash_done;
  input i_hash_dyn_done;
  output o_hash_enable;
  output [31:0]o_hash_mlen;
  output [31:0]o_hash_olen;
  output [31:0]o_hash_write_adr;
  output [31:0]o_hash_read_adr;
  input [31:0]i_memb_dout;
  output [31:0]o_memb_din;
  output [31:0]o_memb_addr;
  output o_memb_en;
  output o_memb_rst;
  output [3:0]o_memb_we;
  output o_controla;
  output o_controlb;
endmodule
