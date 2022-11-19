// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Nov 17 19:44:42 2022
// Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Mayo_keygen_no_zynq_arbit_brama0_0_stub.v
// Design      : Mayo_keygen_no_zynq_arbit_brama0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mayo_bram_arbiter,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(rst, BRAM_add_din, BRAM_add_addr, BRAM_add_en, 
  BRAM_add_rst, BRAM_add_we, BRAM_add_dout, BRAM_lin_din, BRAM_lin_addr, BRAM_lin_en, 
  BRAM_lin_rst, BRAM_lin_we, BRAM_lin_dout, BRAM_neg_din, BRAM_neg_addr, BRAM_neg_en, 
  BRAM_neg_rst, BRAM_neg_we, BRAM_neg_dout, BRAM_red_din, BRAM_red_addr, BRAM_red_en, 
  BRAM_red_rst, BRAM_red_we, BRAM_red_dout, BRAM_key_din, BRAM_key_addr, BRAM_key_en, 
  BRAM_key_rst, BRAM_key_we, BRAM_key_dout, BRAM_sam_din, BRAM_sam_addr, BRAM_sam_en, 
  BRAM_sam_rst, BRAM_sam_we, BRAM_sam_dout, BRAM_hash_din, BRAM_hash_addr, BRAM_hash_en, 
  BRAM_hash_rst, BRAM_hash_we, BRAM_hash_dout, BRAM_din, BRAM_addr, BRAM_en, BRAM_rst, BRAM_we, 
  BRAM_dout, add_control, lin_control, neg_control, red_control, sam_control, hash_control, 
  bram_control)
/* synthesis syn_black_box black_box_pad_pin="rst,BRAM_add_din[31:0],BRAM_add_addr[31:0],BRAM_add_en,BRAM_add_rst,BRAM_add_we[3:0],BRAM_add_dout[31:0],BRAM_lin_din[31:0],BRAM_lin_addr[31:0],BRAM_lin_en,BRAM_lin_rst,BRAM_lin_we[3:0],BRAM_lin_dout[31:0],BRAM_neg_din[31:0],BRAM_neg_addr[31:0],BRAM_neg_en,BRAM_neg_rst,BRAM_neg_we[3:0],BRAM_neg_dout[31:0],BRAM_red_din[31:0],BRAM_red_addr[31:0],BRAM_red_en,BRAM_red_rst,BRAM_red_we[3:0],BRAM_red_dout[31:0],BRAM_key_din[31:0],BRAM_key_addr[31:0],BRAM_key_en,BRAM_key_rst,BRAM_key_we[3:0],BRAM_key_dout[31:0],BRAM_sam_din[31:0],BRAM_sam_addr[31:0],BRAM_sam_en,BRAM_sam_rst,BRAM_sam_we[3:0],BRAM_sam_dout[31:0],BRAM_hash_din[31:0],BRAM_hash_addr[31:0],BRAM_hash_en,BRAM_hash_rst,BRAM_hash_we[3:0],BRAM_hash_dout[31:0],BRAM_din[31:0],BRAM_addr[31:0],BRAM_en,BRAM_rst,BRAM_we[3:0],BRAM_dout[31:0],add_control,lin_control,neg_control,red_control,sam_control,hash_control,bram_control" */;
  input rst;
  input [31:0]BRAM_add_din;
  input [31:0]BRAM_add_addr;
  input BRAM_add_en;
  input BRAM_add_rst;
  input [3:0]BRAM_add_we;
  output [31:0]BRAM_add_dout;
  input [31:0]BRAM_lin_din;
  input [31:0]BRAM_lin_addr;
  input BRAM_lin_en;
  input BRAM_lin_rst;
  input [3:0]BRAM_lin_we;
  output [31:0]BRAM_lin_dout;
  input [31:0]BRAM_neg_din;
  input [31:0]BRAM_neg_addr;
  input BRAM_neg_en;
  input BRAM_neg_rst;
  input [3:0]BRAM_neg_we;
  output [31:0]BRAM_neg_dout;
  input [31:0]BRAM_red_din;
  input [31:0]BRAM_red_addr;
  input BRAM_red_en;
  input BRAM_red_rst;
  input [3:0]BRAM_red_we;
  output [31:0]BRAM_red_dout;
  input [31:0]BRAM_key_din;
  input [31:0]BRAM_key_addr;
  input BRAM_key_en;
  input BRAM_key_rst;
  input [3:0]BRAM_key_we;
  output [31:0]BRAM_key_dout;
  input [31:0]BRAM_sam_din;
  input [31:0]BRAM_sam_addr;
  input BRAM_sam_en;
  input BRAM_sam_rst;
  input [3:0]BRAM_sam_we;
  output [31:0]BRAM_sam_dout;
  input [31:0]BRAM_hash_din;
  input [31:0]BRAM_hash_addr;
  input BRAM_hash_en;
  input BRAM_hash_rst;
  input [3:0]BRAM_hash_we;
  output [31:0]BRAM_hash_dout;
  output [31:0]BRAM_din;
  output [31:0]BRAM_addr;
  output BRAM_en;
  output BRAM_rst;
  output [3:0]BRAM_we;
  input [31:0]BRAM_dout;
  input add_control;
  input lin_control;
  input neg_control;
  input red_control;
  input sam_control;
  input hash_control;
  input bram_control;
endmodule
