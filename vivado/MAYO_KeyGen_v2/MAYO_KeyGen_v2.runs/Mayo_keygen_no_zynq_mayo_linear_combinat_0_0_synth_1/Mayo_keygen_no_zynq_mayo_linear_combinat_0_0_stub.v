// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Oct 23 16:36:20 2022
// Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Mayo_keygen_no_zynq_mayo_linear_combinat_0_0_stub.v
// Design      : Mayo_keygen_no_zynq_mayo_linear_combinat_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mayo_linear_combination,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(i_clk, rst, i_enable, o_done, i_bram_halt, 
  i_vec_addr, i_coeffs_addr, i_out_addr, i_len, i_mem0a_dout, o_mem0a_din, o_mem0a_addr, 
  o_mem0a_en, o_mem0a_rst, o_mem0a_we, i_mem0b_dout, o_mem0b_din, o_mem0b_addr, o_mem0b_en, 
  o_mem0b_rst, o_mem0b_we, i_mem1a_dout, o_mem1a_din, o_mem1a_addr, o_mem1a_en, o_mem1a_rst, 
  o_mem1a_we, o_control0a, o_control0b, o_control1a)
/* synthesis syn_black_box black_box_pad_pin="i_clk,rst,i_enable,o_done,i_bram_halt,i_vec_addr[31:0],i_coeffs_addr[31:0],i_out_addr[31:0],i_len[31:0],i_mem0a_dout[31:0],o_mem0a_din[31:0],o_mem0a_addr[31:0],o_mem0a_en,o_mem0a_rst,o_mem0a_we[3:0],i_mem0b_dout[31:0],o_mem0b_din[31:0],o_mem0b_addr[31:0],o_mem0b_en,o_mem0b_rst,o_mem0b_we[3:0],i_mem1a_dout[31:0],o_mem1a_din[31:0],o_mem1a_addr[31:0],o_mem1a_en,o_mem1a_rst,o_mem1a_we[3:0],o_control0a,o_control0b,o_control1a" */;
  input i_clk;
  input rst;
  input i_enable;
  output o_done;
  input i_bram_halt;
  input [31:0]i_vec_addr;
  input [31:0]i_coeffs_addr;
  input [31:0]i_out_addr;
  input [31:0]i_len;
  input [31:0]i_mem0a_dout;
  output [31:0]o_mem0a_din;
  output [31:0]o_mem0a_addr;
  output o_mem0a_en;
  output o_mem0a_rst;
  output [3:0]o_mem0a_we;
  input [31:0]i_mem0b_dout;
  output [31:0]o_mem0b_din;
  output [31:0]o_mem0b_addr;
  output o_mem0b_en;
  output o_mem0b_rst;
  output [3:0]o_mem0b_we;
  input [31:0]i_mem1a_dout;
  output [31:0]o_mem1a_din;
  output [31:0]o_mem1a_addr;
  output o_mem1a_en;
  output o_mem1a_rst;
  output [3:0]o_mem1a_we;
  output o_control0a;
  output o_control0b;
  output o_control1a;
endmodule
