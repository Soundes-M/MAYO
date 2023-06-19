// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Jun 18 23:52:59 2023
// Host        : osm-hzb running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_MAYO_P1P1T_0_0/Mayo_sign_with_zynq_MAYO_P1P1T_0_0_stub.v
// Design      : Mayo_sign_with_zynq_MAYO_P1P1T_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "MAYO_P1P1T,Vivado 2020.2" *)
module Mayo_sign_with_zynq_MAYO_P1P1T_0_0(clk, rst, enable, o_done, i_src_adr, i_dsta_adr, 
  i_dstb_adr, i_ji_equal, i_mem0b_dout, o_mem0b_din, o_mem0b_addr, o_mem0b_en, o_mem0b_rst, 
  o_mem0b_we, o_control0b, i_mem1a_dout, o_mem1a_din, o_mem1a_addr, o_mem1a_en, o_mem1a_rst, 
  o_mem1a_we, o_control1a)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,enable,o_done,i_src_adr[31:0],i_dsta_adr[31:0],i_dstb_adr[31:0],i_ji_equal,i_mem0b_dout[31:0],o_mem0b_din[31:0],o_mem0b_addr[31:0],o_mem0b_en,o_mem0b_rst,o_mem0b_we[3:0],o_control0b,i_mem1a_dout[31:0],o_mem1a_din[31:0],o_mem1a_addr[31:0],o_mem1a_en,o_mem1a_rst,o_mem1a_we[3:0],o_control1a" */;
  input clk;
  input rst;
  input enable;
  output o_done;
  input [31:0]i_src_adr;
  input [31:0]i_dsta_adr;
  input [31:0]i_dstb_adr;
  input i_ji_equal;
  input [31:0]i_mem0b_dout;
  output [31:0]o_mem0b_din;
  output [31:0]o_mem0b_addr;
  output o_mem0b_en;
  output o_mem0b_rst;
  output [3:0]o_mem0b_we;
  output o_control0b;
  input [31:0]i_mem1a_dout;
  output [31:0]o_mem1a_din;
  output [31:0]o_mem1a_addr;
  output o_mem1a_en;
  output o_mem1a_rst;
  output [3:0]o_mem1a_we;
  output o_control1a;
endmodule
