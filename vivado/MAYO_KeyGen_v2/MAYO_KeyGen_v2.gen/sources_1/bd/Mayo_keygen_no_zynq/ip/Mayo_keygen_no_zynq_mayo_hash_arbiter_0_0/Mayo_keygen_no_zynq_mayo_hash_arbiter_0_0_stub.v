// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Oct 23 16:36:09 2022
// Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0/Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0_stub.v
// Design      : Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mayo_hash_arbiter,Vivado 2020.2" *)
module Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0(rst, o_en, o_mlen, o_olen, o_write_adr, o_read_adr, 
  i_done, i_dyn_done, i_key_en, i_key_mlen, i_key_olen, i_key_write_adr, i_key_read_adr, 
  o_key_done, o_key_dyn_done, i_sam_en, i_sam_mlen, i_sam_olen, i_sam_write_adr, 
  i_sam_read_adr, o_sam_done, o_sam_dyn_done)
/* synthesis syn_black_box black_box_pad_pin="rst,o_en,o_mlen[31:0],o_olen[31:0],o_write_adr[31:0],o_read_adr[31:0],i_done,i_dyn_done,i_key_en,i_key_mlen[31:0],i_key_olen[31:0],i_key_write_adr[31:0],i_key_read_adr[31:0],o_key_done,o_key_dyn_done,i_sam_en,i_sam_mlen[31:0],i_sam_olen[31:0],i_sam_write_adr[31:0],i_sam_read_adr[31:0],o_sam_done,o_sam_dyn_done" */;
  input rst;
  output o_en;
  output [31:0]o_mlen;
  output [31:0]o_olen;
  output [31:0]o_write_adr;
  output [31:0]o_read_adr;
  input i_done;
  input i_dyn_done;
  input i_key_en;
  input [31:0]i_key_mlen;
  input [31:0]i_key_olen;
  input [31:0]i_key_write_adr;
  input [31:0]i_key_read_adr;
  output o_key_done;
  output o_key_dyn_done;
  input i_sam_en;
  input [31:0]i_sam_mlen;
  input [31:0]i_sam_olen;
  input [31:0]i_sam_write_adr;
  input [31:0]i_sam_read_adr;
  output o_sam_done;
  output o_sam_dyn_done;
endmodule
