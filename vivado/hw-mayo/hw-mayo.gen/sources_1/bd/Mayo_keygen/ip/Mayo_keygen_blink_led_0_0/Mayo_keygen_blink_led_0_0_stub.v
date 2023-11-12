// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Mon Jan 16 21:05:31 2023
// Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ip/Mayo_keygen_blink_led_0_0/Mayo_keygen_blink_led_0_0_stub.v
// Design      : Mayo_keygen_blink_led_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blink_led,Vivado 2020.2" *)
module Mayo_keygen_blink_led_0_0(clk, rst, in0, in1, in2, in3, in4, in5, led0, led1, led2, led3, 
  led4, led5)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,in0,in1,in2,in3,in4,in5,led0,led1,led2,led3,led4,led5" */;
  input clk;
  input rst;
  input in0;
  input in1;
  input in2;
  input in3;
  input in4;
  input in5;
  output led0;
  output led1;
  output led2;
  output led3;
  output led4;
  output led5;
endmodule
