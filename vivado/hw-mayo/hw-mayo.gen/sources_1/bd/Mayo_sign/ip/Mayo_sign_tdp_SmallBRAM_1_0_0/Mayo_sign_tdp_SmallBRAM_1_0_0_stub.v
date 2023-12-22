// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Dec  8 17:14:11 2023
// Host        : zenith running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/osm/Documents/Sect/SECT-MAYO/MAYO/vivado/hw-mayo/hw-mayo.gen/sources_1/bd/Mayo_sign/ip/Mayo_sign_tdp_SmallBRAM_1_0_0/Mayo_sign_tdp_SmallBRAM_1_0_0_stub.v
// Design      : Mayo_sign_tdp_SmallBRAM_1_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "tdp_SmallBRAM_1,Vivado 2020.2" *)
module Mayo_sign_tdp_SmallBRAM_1_0_0(addra, addrb, dina, dinb, clka, clkb, wea, web, ena, enb, 
  rsta, rstb, regcea, regceb, douta, doutb)
/* synthesis syn_black_box black_box_pad_pin="addra[31:0],addrb[31:0],dina[31:0],dinb[31:0],clka,clkb,wea[3:0],web[3:0],ena,enb,rsta,rstb,regcea,regceb,douta[31:0],doutb[31:0]" */;
  input [31:0]addra;
  input [31:0]addrb;
  input [31:0]dina;
  input [31:0]dinb;
  input clka;
  input clkb;
  input [3:0]wea;
  input [3:0]web;
  input ena;
  input enb;
  input rsta;
  input rstb;
  input regcea;
  input regceb;
  output [31:0]douta;
  output [31:0]doutb;
endmodule
