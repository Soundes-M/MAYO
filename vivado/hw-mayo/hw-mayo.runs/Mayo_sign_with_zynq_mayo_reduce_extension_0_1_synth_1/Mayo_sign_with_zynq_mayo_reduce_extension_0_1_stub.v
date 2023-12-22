// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sat Dec  9 16:22:23 2023
// Host        : zenith running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Mayo_sign_with_zynq_mayo_reduce_extension_0_1_stub.v
// Design      : Mayo_sign_with_zynq_mayo_reduce_extension_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mayo_reduce_extension,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst, en, o_done, i_input_adr, i_output_adr, 
  i_mema_dout, o_mema_din, o_mema_addr, o_mema_en, o_mema_rst, o_mema_we, o_controla, 
  i_memb_dout, o_memb_din, o_memb_addr, o_memb_en, o_memb_rst, o_memb_we, o_controlb, 
  i_memc_dout, o_memc_din, o_memc_addr, o_memc_en, o_memc_rst, o_memc_we, o_controlc)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,en,o_done,i_input_adr[31:0],i_output_adr[31:0],i_mema_dout[31:0],o_mema_din[31:0],o_mema_addr[31:0],o_mema_en,o_mema_rst,o_mema_we[3:0],o_controla,i_memb_dout[31:0],o_memb_din[31:0],o_memb_addr[31:0],o_memb_en,o_memb_rst,o_memb_we[3:0],o_controlb,i_memc_dout[31:0],o_memc_din[31:0],o_memc_addr[31:0],o_memc_en,o_memc_rst,o_memc_we[3:0],o_controlc" */;
  input clk;
  input rst;
  input en;
  output o_done;
  input [31:0]i_input_adr;
  input [31:0]i_output_adr;
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
  input [31:0]i_memc_dout;
  output [31:0]o_memc_din;
  output [31:0]o_memc_addr;
  output o_memc_en;
  output o_memc_rst;
  output [3:0]o_memc_we;
  output o_controlc;
endmodule
