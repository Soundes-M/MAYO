// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Nov 12 18:20:14 2023
// Host        : zenith running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Mayo_sign_mayo_sample_vinegar_0_0_stub.v
// Design      : Mayo_sign_mayo_sample_vinegar_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mayo_sample_vinegar,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst, en, o_done, i_input_adr, o_trng_r, 
  o_trng_w, o_trng_data, i_trng_data, i_trng_valid, i_trng_done, o_trng_sel, i_memb_dout, 
  o_memb_din, o_memb_addr, o_memb_en, o_memb_rst, o_memb_we, o_controlb)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,en,o_done,i_input_adr[31:0],o_trng_r,o_trng_w,o_trng_data[31:0],i_trng_data[31:0],i_trng_valid,i_trng_done,o_trng_sel,i_memb_dout[31:0],o_memb_din[31:0],o_memb_addr[31:0],o_memb_en,o_memb_rst,o_memb_we[3:0],o_controlb" */;
  input clk;
  input rst;
  input en;
  output o_done;
  input [31:0]i_input_adr;
  output o_trng_r;
  output o_trng_w;
  output [31:0]o_trng_data;
  input [31:0]i_trng_data;
  input i_trng_valid;
  input i_trng_done;
  output o_trng_sel;
  input [31:0]i_memb_dout;
  output [31:0]o_memb_din;
  output [31:0]o_memb_addr;
  output o_memb_en;
  output o_memb_rst;
  output [3:0]o_memb_we;
  output o_controlb;
endmodule
