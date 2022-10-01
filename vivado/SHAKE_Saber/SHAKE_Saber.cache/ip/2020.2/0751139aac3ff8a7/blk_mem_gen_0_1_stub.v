// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Sep 29 14:27:59 2022
// Host        : debian running 64-bit Debian GNU/Linux 11 (bullseye)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_1_stub.v
// Design      : blk_mem_gen_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clka, ena, wea, addra, dina, douta, clkb, enb, web, addrb, 
  dinb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[1:0],addra[13:0],dina[17:0],douta[17:0],clkb,enb,web[1:0],addrb[13:0],dinb[17:0],doutb[17:0]" */;
  input clka;
  input ena;
  input [1:0]wea;
  input [13:0]addra;
  input [17:0]dina;
  output [17:0]douta;
  input clkb;
  input enb;
  input [1:0]web;
  input [13:0]addrb;
  input [17:0]dinb;
  output [17:0]doutb;
endmodule
