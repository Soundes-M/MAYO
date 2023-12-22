// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sat Dec  9 16:23:41 2023
// Host        : zenith running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Mayo_sign_with_zynq_memcpy_0_1_stub.v
// Design      : Mayo_sign_with_zynq_memcpy_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "memcpy,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst, start, i_src_adr, i_dst_adr, i_len, o_done, 
  i_mem_port_sel, i_src_dout, o_src_din, o_src_addr, o_src_en, o_src_rst, o_src_we, 
  o_src_control, i_dest_dout, o_dest_din, o_dest_addr, o_dest_en, o_dest_rst, o_dest_we, 
  o_dest_control)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,start,i_src_adr[31:0],i_dst_adr[31:0],i_len[31:0],o_done,i_mem_port_sel[1:0],i_src_dout[31:0],o_src_din[31:0],o_src_addr[31:0],o_src_en,o_src_rst,o_src_we[3:0],o_src_control,i_dest_dout[31:0],o_dest_din[31:0],o_dest_addr[31:0],o_dest_en,o_dest_rst,o_dest_we[3:0],o_dest_control" */;
  input clk;
  input rst;
  input start;
  input [31:0]i_src_adr;
  input [31:0]i_dst_adr;
  input [31:0]i_len;
  output o_done;
  input [1:0]i_mem_port_sel;
  input [31:0]i_src_dout;
  output [31:0]o_src_din;
  output [31:0]o_src_addr;
  output o_src_en;
  output o_src_rst;
  output [3:0]o_src_we;
  output o_src_control;
  input [31:0]i_dest_dout;
  output [31:0]o_dest_din;
  output [31:0]o_dest_addr;
  output o_dest_en;
  output o_dest_rst;
  output [3:0]o_dest_we;
  output o_dest_control;
endmodule
