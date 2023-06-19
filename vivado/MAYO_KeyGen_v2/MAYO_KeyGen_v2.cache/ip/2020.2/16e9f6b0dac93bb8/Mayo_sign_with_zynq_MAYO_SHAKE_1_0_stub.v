// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed May 17 00:50:43 2023
// Host        : osm-hzb running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Mayo_sign_with_zynq_MAYO_SHAKE_1_0_stub.v
// Design      : Mayo_sign_with_zynq_MAYO_SHAKE_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "MAYO_SHAKE,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(rst, clk, en, mlen, olen, write_adr, read_adr, 
  dyn_done, done, o_control, BRAMA_we, BRAMA_addr, BRAMA_din, BRAMA_en, BRAMA_dout)
/* synthesis syn_black_box black_box_pad_pin="rst,clk,en,mlen[31:0],olen[31:0],write_adr[31:0],read_adr[31:0],dyn_done,done,o_control,BRAMA_we[3:0],BRAMA_addr[31:0],BRAMA_din[31:0],BRAMA_en,BRAMA_dout[31:0]" */;
  input rst;
  input clk;
  input en;
  input [31:0]mlen;
  input [31:0]olen;
  input [31:0]write_adr;
  input [31:0]read_adr;
  output dyn_done;
  output done;
  output o_control;
  output [3:0]BRAMA_we;
  output [31:0]BRAMA_addr;
  output [31:0]BRAMA_din;
  output BRAMA_en;
  input [31:0]BRAMA_dout;
endmodule
