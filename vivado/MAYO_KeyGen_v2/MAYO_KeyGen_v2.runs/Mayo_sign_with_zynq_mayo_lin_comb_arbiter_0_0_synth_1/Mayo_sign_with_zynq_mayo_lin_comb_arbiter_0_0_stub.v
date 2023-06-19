// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed May 17 00:49:34 2023
// Host        : osm-hzb running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Mayo_sign_with_zynq_mayo_lin_comb_arbiter_0_0_stub.v
// Design      : Mayo_sign_with_zynq_mayo_lin_comb_arbiter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mayo_lin_comb_arbiter,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(bram_sel, o_mem0a_dout, i_mem0a_din, 
  i_mem0a_addr, i_mem0a_en, i_mem0a_rst, i_mem0a_we, i_control0a, o_mem0b_dout, i_mem0b_din, 
  i_mem0b_addr, i_mem0b_en, i_mem0b_rst, i_mem0b_we, i_control0b, o_mem1a_dout, i_mem1a_din, 
  i_mem1a_addr, i_mem1a_en, i_mem1a_rst, i_mem1a_we, i_control1a, i_BRAM0A_dout, o_BRAM0A_din, 
  o_BRAM0A_addr, o_BRAM0A_en, o_BRAM0A_rst, o_BRAM0A_we, o_BRAM0A_control, i_BRAM0B_dout, 
  o_BRAM0B_din, o_BRAM0B_addr, o_BRAM0B_en, o_BRAM0B_rst, o_BRAM0B_we, o_BRAM0B_control, 
  i_BRAM1A_dout, o_BRAM1A_din, o_BRAM1A_addr, o_BRAM1A_en, o_BRAM1A_rst, o_BRAM1A_we, 
  o_BRAM1A_control, i_BRAM2A_dout, o_BRAM2A_din, o_BRAM2A_addr, o_BRAM2A_en, o_BRAM2A_rst, 
  o_BRAM2A_we, o_BRAM2A_control, i_BRAM2B_dout, o_BRAM2B_din, o_BRAM2B_addr, o_BRAM2B_en, 
  o_BRAM2B_rst, o_BRAM2B_we, o_BRAM2B_control)
/* synthesis syn_black_box black_box_pad_pin="bram_sel[4:0],o_mem0a_dout[31:0],i_mem0a_din[31:0],i_mem0a_addr[31:0],i_mem0a_en,i_mem0a_rst,i_mem0a_we[3:0],i_control0a,o_mem0b_dout[31:0],i_mem0b_din[31:0],i_mem0b_addr[31:0],i_mem0b_en,i_mem0b_rst,i_mem0b_we[3:0],i_control0b,o_mem1a_dout[31:0],i_mem1a_din[31:0],i_mem1a_addr[31:0],i_mem1a_en,i_mem1a_rst,i_mem1a_we[3:0],i_control1a,i_BRAM0A_dout[31:0],o_BRAM0A_din[31:0],o_BRAM0A_addr[31:0],o_BRAM0A_en,o_BRAM0A_rst,o_BRAM0A_we[3:0],o_BRAM0A_control,i_BRAM0B_dout[31:0],o_BRAM0B_din[31:0],o_BRAM0B_addr[31:0],o_BRAM0B_en,o_BRAM0B_rst,o_BRAM0B_we[3:0],o_BRAM0B_control,i_BRAM1A_dout[31:0],o_BRAM1A_din[31:0],o_BRAM1A_addr[31:0],o_BRAM1A_en,o_BRAM1A_rst,o_BRAM1A_we[3:0],o_BRAM1A_control,i_BRAM2A_dout[31:0],o_BRAM2A_din[31:0],o_BRAM2A_addr[31:0],o_BRAM2A_en,o_BRAM2A_rst,o_BRAM2A_we[3:0],o_BRAM2A_control,i_BRAM2B_dout[31:0],o_BRAM2B_din[31:0],o_BRAM2B_addr[31:0],o_BRAM2B_en,o_BRAM2B_rst,o_BRAM2B_we[3:0],o_BRAM2B_control" */;
  input [4:0]bram_sel;
  output [31:0]o_mem0a_dout;
  input [31:0]i_mem0a_din;
  input [31:0]i_mem0a_addr;
  input i_mem0a_en;
  input i_mem0a_rst;
  input [3:0]i_mem0a_we;
  input i_control0a;
  output [31:0]o_mem0b_dout;
  input [31:0]i_mem0b_din;
  input [31:0]i_mem0b_addr;
  input i_mem0b_en;
  input i_mem0b_rst;
  input [3:0]i_mem0b_we;
  input i_control0b;
  output [31:0]o_mem1a_dout;
  input [31:0]i_mem1a_din;
  input [31:0]i_mem1a_addr;
  input i_mem1a_en;
  input i_mem1a_rst;
  input [3:0]i_mem1a_we;
  input i_control1a;
  input [31:0]i_BRAM0A_dout;
  output [31:0]o_BRAM0A_din;
  output [31:0]o_BRAM0A_addr;
  output o_BRAM0A_en;
  output o_BRAM0A_rst;
  output [3:0]o_BRAM0A_we;
  output o_BRAM0A_control;
  input [31:0]i_BRAM0B_dout;
  output [31:0]o_BRAM0B_din;
  output [31:0]o_BRAM0B_addr;
  output o_BRAM0B_en;
  output o_BRAM0B_rst;
  output [3:0]o_BRAM0B_we;
  output o_BRAM0B_control;
  input [31:0]i_BRAM1A_dout;
  output [31:0]o_BRAM1A_din;
  output [31:0]o_BRAM1A_addr;
  output o_BRAM1A_en;
  output o_BRAM1A_rst;
  output [3:0]o_BRAM1A_we;
  output o_BRAM1A_control;
  input [31:0]i_BRAM2A_dout;
  output [31:0]o_BRAM2A_din;
  output [31:0]o_BRAM2A_addr;
  output o_BRAM2A_en;
  output o_BRAM2A_rst;
  output [3:0]o_BRAM2A_we;
  output o_BRAM2A_control;
  input [31:0]i_BRAM2B_dout;
  output [31:0]o_BRAM2B_din;
  output [31:0]o_BRAM2B_addr;
  output o_BRAM2B_en;
  output o_BRAM2B_rst;
  output [3:0]o_BRAM2B_we;
  output o_BRAM2B_control;
endmodule
