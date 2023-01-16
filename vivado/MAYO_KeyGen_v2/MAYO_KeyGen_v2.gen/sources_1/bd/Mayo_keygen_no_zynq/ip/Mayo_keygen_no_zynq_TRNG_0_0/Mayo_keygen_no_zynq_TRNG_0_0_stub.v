// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Jan 10 17:14:50 2023
// Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top Mayo_keygen_no_zynq_TRNG_0_0 -prefix
//               Mayo_keygen_no_zynq_TRNG_0_0_ Mayo_keygen_TRNG_0_0_stub.v
// Design      : Mayo_keygen_TRNG_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "TRNG,Vivado 2020.2" *)
module Mayo_keygen_no_zynq_TRNG_0_0(CLK_I, RST, R_I, W_I, TRNG_DATA_I, TRNG_DATA_O, 
  TRNG_VALID_O, TRNG_DONE_O)
/* synthesis syn_black_box black_box_pad_pin="CLK_I,RST,R_I,W_I,TRNG_DATA_I[31:0],TRNG_DATA_O[31:0],TRNG_VALID_O,TRNG_DONE_O" */;
  input CLK_I;
  input RST;
  input R_I;
  input W_I;
  input [31:0]TRNG_DATA_I;
  output [31:0]TRNG_DATA_O;
  output TRNG_VALID_O;
  output TRNG_DONE_O;
endmodule
