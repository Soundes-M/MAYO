// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Dec 20 21:46:44 2022
// Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_mayo_add_vectors_0_0/Mayo_keygen_no_zynq_mayo_add_vectors_0_0_stub.v
// Design      : Mayo_keygen_no_zynq_mayo_add_vectors_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mayo_add_vectors,Vivado 2020.2" *)
module Mayo_keygen_no_zynq_mayo_add_vectors_0_0(i_clk, rst, i_enable, i_v1_addr, i_v2_addr, 
  i_out_addr, i_bram_sel, o_done, i_mema_dout, o_mema_din, o_mema_addr, o_mema_en, o_mema_rst, 
  o_mema_we, i_memb_dout, o_memb_din, o_memb_addr, o_memb_en, o_memb_rst, o_memb_we, i_memc_dout, 
  o_memc_din, o_memc_addr, o_memc_en, o_memc_rst, o_memc_we, o_controla, o_controlb, o_controlc)
/* synthesis syn_black_box black_box_pad_pin="i_clk,rst,i_enable,i_v1_addr[31:0],i_v2_addr[31:0],i_out_addr[31:0],i_bram_sel[1:0],o_done,i_mema_dout[31:0],o_mema_din[31:0],o_mema_addr[31:0],o_mema_en,o_mema_rst,o_mema_we[3:0],i_memb_dout[31:0],o_memb_din[31:0],o_memb_addr[31:0],o_memb_en,o_memb_rst,o_memb_we[3:0],i_memc_dout[31:0],o_memc_din[31:0],o_memc_addr[31:0],o_memc_en,o_memc_rst,o_memc_we[3:0],o_controla,o_controlb,o_controlc" */;
  input i_clk;
  input rst;
  input i_enable;
  input [31:0]i_v1_addr;
  input [31:0]i_v2_addr;
  input [31:0]i_out_addr;
  input [1:0]i_bram_sel;
  output o_done;
  input [31:0]i_mema_dout;
  output [31:0]o_mema_din;
  output [31:0]o_mema_addr;
  output o_mema_en;
  output o_mema_rst;
  output [3:0]o_mema_we;
  input [31:0]i_memb_dout;
  output [31:0]o_memb_din;
  output [31:0]o_memb_addr;
  output o_memb_en;
  output o_memb_rst;
  output [3:0]o_memb_we;
  input [31:0]i_memc_dout;
  output [31:0]o_memc_din;
  output [31:0]o_memc_addr;
  output o_memc_en;
  output o_memc_rst;
  output [3:0]o_memc_we;
  output o_controla;
  output o_controlb;
  output o_controlc;
endmodule
