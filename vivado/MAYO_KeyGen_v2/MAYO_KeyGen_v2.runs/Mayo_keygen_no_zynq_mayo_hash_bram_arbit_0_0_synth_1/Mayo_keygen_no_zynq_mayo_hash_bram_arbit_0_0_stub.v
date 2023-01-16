// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Jan 10 17:56:54 2023
// Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Mayo_keygen_no_zynq_mayo_hash_bram_arbit_0_0_stub.v
// Design      : Mayo_keygen_no_zynq_mayo_hash_bram_arbit_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mayo_hash_bram_arbiter,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(bram_sel, hash_din, hash_addr, hash_en, 
  hash_control, hash_we, hash_dout, BRAM0_din, BRAM0_addr, BRAM0_en, BRAM0_we, BRAM0_dout, 
  BRAM0_control, BRAM1_din, BRAM1_addr, BRAM1_en, BRAM1_we, BRAM1_dout, BRAM1_control)
/* synthesis syn_black_box black_box_pad_pin="bram_sel,hash_din[31:0],hash_addr[31:0],hash_en,hash_control,hash_we[3:0],hash_dout[31:0],BRAM0_din[31:0],BRAM0_addr[31:0],BRAM0_en,BRAM0_we[3:0],BRAM0_dout[31:0],BRAM0_control,BRAM1_din[31:0],BRAM1_addr[31:0],BRAM1_en,BRAM1_we[3:0],BRAM1_dout[31:0],BRAM1_control" */;
  input bram_sel;
  input [31:0]hash_din;
  input [31:0]hash_addr;
  input hash_en;
  input hash_control;
  input [3:0]hash_we;
  output [31:0]hash_dout;
  output [31:0]BRAM0_din;
  output [31:0]BRAM0_addr;
  output BRAM0_en;
  output [3:0]BRAM0_we;
  input [31:0]BRAM0_dout;
  output BRAM0_control;
  output [31:0]BRAM1_din;
  output [31:0]BRAM1_addr;
  output BRAM1_en;
  output [3:0]BRAM1_we;
  input [31:0]BRAM1_dout;
  output BRAM1_control;
endmodule
