// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Nov 12 18:18:15 2023
// Host        : zenith running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/osm/Documents/Sect/SECT-MAYO/MAYO/vivado/hw-mayo/hw-mayo.gen/sources_1/bd/Mayo_sign/ip/Mayo_sign_mayo_bram_arbiter2_0_1/Mayo_sign_mayo_bram_arbiter2_0_1_stub.v
// Design      : Mayo_sign_mayo_bram_arbiter2_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mayo_bram_arbiter2,Vivado 2020.2" *)
module Mayo_sign_mayo_bram_arbiter2_0_1(BRAM_sign_din, BRAM_sign_addr, BRAM_sign_en, 
  BRAM_sign_rst, BRAM_sign_we, BRAM_sign_dout, BRAM_sign_control, BRAM_add_vec_din, 
  BRAM_add_vec_addr, BRAM_add_vec_en, BRAM_add_vec_rst, BRAM_add_vec_we, BRAM_add_vec_dout, 
  BRAM_add_vec_control, BRAM_lin_din, BRAM_lin_addr, BRAM_lin_en, BRAM_lin_rst, BRAM_lin_we, 
  BRAM_lin_dout, BRAM_lin_control, BRAM_neg_din, BRAM_neg_addr, BRAM_neg_en, BRAM_neg_rst, 
  BRAM_neg_we, BRAM_neg_dout, BRAM_neg_control, BRAM_red_din, BRAM_red_addr, BRAM_red_en, 
  BRAM_red_rst, BRAM_red_we, BRAM_red_dout, BRAM_red_control, BRAM_sam_din, BRAM_sam_addr, 
  BRAM_sam_en, BRAM_sam_rst, BRAM_sam_we, BRAM_sam_dout, BRAM_sam_control, BRAM_memcpy0_din, 
  BRAM_memcpy0_addr, BRAM_memcpy0_en, BRAM_memcpy0_rst, BRAM_memcpy0_we, BRAM_memcpy0_dout, 
  BRAM_memcpy0_control, BRAM_memcpy1_din, BRAM_memcpy1_addr, BRAM_memcpy1_en, 
  BRAM_memcpy1_rst, BRAM_memcpy1_we, BRAM_memcpy1_dout, BRAM_memcpy1_control, 
  BRAM_p1p1t_din, BRAM_p1p1t_addr, BRAM_p1p1t_en, BRAM_p1p1t_rst, BRAM_p1p1t_we, 
  BRAM_p1p1t_dout, BRAM_p1p1t_control, BRAM_red_ext_din, BRAM_red_ext_addr, 
  BRAM_red_ext_en, BRAM_red_ext_rst, BRAM_red_ext_we, BRAM_red_ext_dout, 
  BRAM_red_ext_control, BRAM_sam_vin_din, BRAM_sam_vin_addr, BRAM_sam_vin_en, 
  BRAM_sam_vin_rst, BRAM_sam_vin_we, BRAM_sam_vin_dout, BRAM_sam_vin_control, 
  BRAM_sam_oil_din, BRAM_sam_oil_addr, BRAM_sam_oil_en, BRAM_sam_oil_rst, BRAM_sam_oil_we, 
  BRAM_sam_oil_dout, BRAM_sam_oil_control, BRAM_add_oil_din, BRAM_add_oil_addr, 
  BRAM_add_oil_en, BRAM_add_oil_rst, BRAM_add_oil_we, BRAM_add_oil_dout, 
  BRAM_add_oil_control, BRAM_hash_din, BRAM_hash_addr, BRAM_hash_en, BRAM_hash_rst, 
  BRAM_hash_we, BRAM_hash_dout, BRAM_hash_control, BRAM_din, BRAM_addr, BRAM_en, BRAM_rst, 
  BRAM_we, BRAM_dout)
/* synthesis syn_black_box black_box_pad_pin="BRAM_sign_din[31:0],BRAM_sign_addr[31:0],BRAM_sign_en,BRAM_sign_rst,BRAM_sign_we[3:0],BRAM_sign_dout[31:0],BRAM_sign_control,BRAM_add_vec_din[31:0],BRAM_add_vec_addr[31:0],BRAM_add_vec_en,BRAM_add_vec_rst,BRAM_add_vec_we[3:0],BRAM_add_vec_dout[31:0],BRAM_add_vec_control,BRAM_lin_din[31:0],BRAM_lin_addr[31:0],BRAM_lin_en,BRAM_lin_rst,BRAM_lin_we[3:0],BRAM_lin_dout[31:0],BRAM_lin_control,BRAM_neg_din[31:0],BRAM_neg_addr[31:0],BRAM_neg_en,BRAM_neg_rst,BRAM_neg_we[3:0],BRAM_neg_dout[31:0],BRAM_neg_control,BRAM_red_din[31:0],BRAM_red_addr[31:0],BRAM_red_en,BRAM_red_rst,BRAM_red_we[3:0],BRAM_red_dout[31:0],BRAM_red_control,BRAM_sam_din[31:0],BRAM_sam_addr[31:0],BRAM_sam_en,BRAM_sam_rst,BRAM_sam_we[3:0],BRAM_sam_dout[31:0],BRAM_sam_control,BRAM_memcpy0_din[31:0],BRAM_memcpy0_addr[31:0],BRAM_memcpy0_en,BRAM_memcpy0_rst,BRAM_memcpy0_we[3:0],BRAM_memcpy0_dout[31:0],BRAM_memcpy0_control,BRAM_memcpy1_din[31:0],BRAM_memcpy1_addr[31:0],BRAM_memcpy1_en,BRAM_memcpy1_rst,BRAM_memcpy1_we[3:0],BRAM_memcpy1_dout[31:0],BRAM_memcpy1_control,BRAM_p1p1t_din[31:0],BRAM_p1p1t_addr[31:0],BRAM_p1p1t_en,BRAM_p1p1t_rst,BRAM_p1p1t_we[3:0],BRAM_p1p1t_dout[31:0],BRAM_p1p1t_control,BRAM_red_ext_din[31:0],BRAM_red_ext_addr[31:0],BRAM_red_ext_en,BRAM_red_ext_rst,BRAM_red_ext_we[3:0],BRAM_red_ext_dout[31:0],BRAM_red_ext_control,BRAM_sam_vin_din[31:0],BRAM_sam_vin_addr[31:0],BRAM_sam_vin_en,BRAM_sam_vin_rst,BRAM_sam_vin_we[3:0],BRAM_sam_vin_dout[31:0],BRAM_sam_vin_control,BRAM_sam_oil_din[31:0],BRAM_sam_oil_addr[31:0],BRAM_sam_oil_en,BRAM_sam_oil_rst,BRAM_sam_oil_we[3:0],BRAM_sam_oil_dout[31:0],BRAM_sam_oil_control,BRAM_add_oil_din[31:0],BRAM_add_oil_addr[31:0],BRAM_add_oil_en,BRAM_add_oil_rst,BRAM_add_oil_we[3:0],BRAM_add_oil_dout[31:0],BRAM_add_oil_control,BRAM_hash_din[31:0],BRAM_hash_addr[31:0],BRAM_hash_en,BRAM_hash_rst,BRAM_hash_we[3:0],BRAM_hash_dout[31:0],BRAM_hash_control,BRAM_din[31:0],BRAM_addr[31:0],BRAM_en,BRAM_rst,BRAM_we[3:0],BRAM_dout[31:0]" */;
  input [31:0]BRAM_sign_din;
  input [31:0]BRAM_sign_addr;
  input BRAM_sign_en;
  input BRAM_sign_rst;
  input [3:0]BRAM_sign_we;
  output [31:0]BRAM_sign_dout;
  input BRAM_sign_control;
  input [31:0]BRAM_add_vec_din;
  input [31:0]BRAM_add_vec_addr;
  input BRAM_add_vec_en;
  input BRAM_add_vec_rst;
  input [3:0]BRAM_add_vec_we;
  output [31:0]BRAM_add_vec_dout;
  input BRAM_add_vec_control;
  input [31:0]BRAM_lin_din;
  input [31:0]BRAM_lin_addr;
  input BRAM_lin_en;
  input BRAM_lin_rst;
  input [3:0]BRAM_lin_we;
  output [31:0]BRAM_lin_dout;
  input BRAM_lin_control;
  input [31:0]BRAM_neg_din;
  input [31:0]BRAM_neg_addr;
  input BRAM_neg_en;
  input BRAM_neg_rst;
  input [3:0]BRAM_neg_we;
  output [31:0]BRAM_neg_dout;
  input BRAM_neg_control;
  input [31:0]BRAM_red_din;
  input [31:0]BRAM_red_addr;
  input BRAM_red_en;
  input BRAM_red_rst;
  input [3:0]BRAM_red_we;
  output [31:0]BRAM_red_dout;
  input BRAM_red_control;
  input [31:0]BRAM_sam_din;
  input [31:0]BRAM_sam_addr;
  input BRAM_sam_en;
  input BRAM_sam_rst;
  input [3:0]BRAM_sam_we;
  output [31:0]BRAM_sam_dout;
  input BRAM_sam_control;
  input [31:0]BRAM_memcpy0_din;
  input [31:0]BRAM_memcpy0_addr;
  input BRAM_memcpy0_en;
  input BRAM_memcpy0_rst;
  input [3:0]BRAM_memcpy0_we;
  output [31:0]BRAM_memcpy0_dout;
  input BRAM_memcpy0_control;
  input [31:0]BRAM_memcpy1_din;
  input [31:0]BRAM_memcpy1_addr;
  input BRAM_memcpy1_en;
  input BRAM_memcpy1_rst;
  input [3:0]BRAM_memcpy1_we;
  output [31:0]BRAM_memcpy1_dout;
  input BRAM_memcpy1_control;
  input [31:0]BRAM_p1p1t_din;
  input [31:0]BRAM_p1p1t_addr;
  input BRAM_p1p1t_en;
  input BRAM_p1p1t_rst;
  input [3:0]BRAM_p1p1t_we;
  output [31:0]BRAM_p1p1t_dout;
  input BRAM_p1p1t_control;
  input [31:0]BRAM_red_ext_din;
  input [31:0]BRAM_red_ext_addr;
  input BRAM_red_ext_en;
  input BRAM_red_ext_rst;
  input [3:0]BRAM_red_ext_we;
  output [31:0]BRAM_red_ext_dout;
  input BRAM_red_ext_control;
  input [31:0]BRAM_sam_vin_din;
  input [31:0]BRAM_sam_vin_addr;
  input BRAM_sam_vin_en;
  input BRAM_sam_vin_rst;
  input [3:0]BRAM_sam_vin_we;
  output [31:0]BRAM_sam_vin_dout;
  input BRAM_sam_vin_control;
  input [31:0]BRAM_sam_oil_din;
  input [31:0]BRAM_sam_oil_addr;
  input BRAM_sam_oil_en;
  input BRAM_sam_oil_rst;
  input [3:0]BRAM_sam_oil_we;
  output [31:0]BRAM_sam_oil_dout;
  input BRAM_sam_oil_control;
  input [31:0]BRAM_add_oil_din;
  input [31:0]BRAM_add_oil_addr;
  input BRAM_add_oil_en;
  input BRAM_add_oil_rst;
  input [3:0]BRAM_add_oil_we;
  output [31:0]BRAM_add_oil_dout;
  input BRAM_add_oil_control;
  input [31:0]BRAM_hash_din;
  input [31:0]BRAM_hash_addr;
  input BRAM_hash_en;
  input BRAM_hash_rst;
  input [3:0]BRAM_hash_we;
  output [31:0]BRAM_hash_dout;
  input BRAM_hash_control;
  output [31:0]BRAM_din;
  output [31:0]BRAM_addr;
  output BRAM_en;
  output BRAM_rst;
  output [3:0]BRAM_we;
  input [31:0]BRAM_dout;
endmodule
