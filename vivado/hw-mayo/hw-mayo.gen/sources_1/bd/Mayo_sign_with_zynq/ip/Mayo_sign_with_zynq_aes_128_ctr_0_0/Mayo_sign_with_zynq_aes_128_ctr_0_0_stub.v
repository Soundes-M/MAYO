// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sat Dec  9 16:23:05 2023
// Host        : zenith running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/osm/Documents/Sect/SECT-MAYO/MAYO/vivado/hw-mayo/hw-mayo.gen/sources_1/bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_aes_128_ctr_0_0/Mayo_sign_with_zynq_aes_128_ctr_0_0_stub.v
// Design      : Mayo_sign_with_zynq_aes_128_ctr_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "aes_128_ctr,Vivado 2020.2" *)
module Mayo_sign_with_zynq_aes_128_ctr_0_0(clk, rst, en, o_valid, o_random_data)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,en,o_valid,o_random_data[127:0]" */;
  input clk;
  input rst;
  input en;
  output o_valid;
  output [127:0]o_random_data;
endmodule
