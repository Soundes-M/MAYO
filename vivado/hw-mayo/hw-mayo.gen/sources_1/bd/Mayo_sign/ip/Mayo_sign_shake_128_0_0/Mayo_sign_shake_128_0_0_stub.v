// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sat Dec  9 15:38:18 2023
// Host        : zenith running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/osm/Documents/Sect/SECT-MAYO/MAYO/vivado/hw-mayo/hw-mayo.gen/sources_1/bd/Mayo_sign/ip/Mayo_sign_shake_128_0_0/Mayo_sign_shake_128_0_0_stub.v
// Design      : Mayo_sign_shake_128_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "shake_128,Vivado 2020.2" *)
module Mayo_sign_shake_128_0_0(clk, rst, en, mlen, olen, read_adr, write_adr, done, 
  bram_dout, bram_en, bram_we, bram_addr, bram_din, bram_control)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,en,mlen[31:0],olen[31:0],read_adr[31:0],write_adr[31:0],done,bram_dout[31:0],bram_en,bram_we[3:0],bram_addr[31:0],bram_din[31:0],bram_control" */;
  input clk;
  input rst;
  input en;
  input [31:0]mlen;
  input [31:0]olen;
  input [31:0]read_adr;
  input [31:0]write_adr;
  output done;
  input [31:0]bram_dout;
  output bram_en;
  output [3:0]bram_we;
  output [31:0]bram_addr;
  output [31:0]bram_din;
  output bram_control;
endmodule
