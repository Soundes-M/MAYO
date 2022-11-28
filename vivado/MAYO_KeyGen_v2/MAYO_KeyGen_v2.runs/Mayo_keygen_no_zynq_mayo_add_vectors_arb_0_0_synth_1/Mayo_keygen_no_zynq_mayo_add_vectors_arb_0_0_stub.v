// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Nov 24 23:40:13 2022
// Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Mayo_keygen_no_zynq_mayo_add_vectors_arb_0_0_stub.v
// Design      : Mayo_keygen_no_zynq_mayo_add_vectors_arb_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mayo_add_vectors_arbiter,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(bram_sel, o_mema_dout, i_mema_din, i_mema_addr, 
  i_mema_en, i_mema_rst, i_mema_we, o_memb_dout, i_memb_din, i_memb_addr, i_memb_en, i_memb_rst, 
  i_memb_we, o_memc_dout, i_memc_din, i_memc_addr, i_memc_en, i_memc_rst, i_memc_we, i_controla, 
  i_controlb, i_controlc, i_BRAM0_dout, o_BRAM0_din, o_BRAM0_addr, o_BRAM0_en, o_BRAM0_rst, 
  o_BRAM0_we, o_BRAM0_control, i_BRAM1_dout, o_BRAM1_din, o_BRAM1_addr, o_BRAM1_en, 
  o_BRAM1_rst, o_BRAM1_we, o_BRAM1_control)
/* synthesis syn_black_box black_box_pad_pin="bram_sel[1:0],o_mema_dout[31:0],i_mema_din[31:0],i_mema_addr[31:0],i_mema_en,i_mema_rst,i_mema_we[3:0],o_memb_dout[31:0],i_memb_din[31:0],i_memb_addr[31:0],i_memb_en,i_memb_rst,i_memb_we[3:0],o_memc_dout[31:0],i_memc_din[31:0],i_memc_addr[31:0],i_memc_en,i_memc_rst,i_memc_we[3:0],i_controla,i_controlb,i_controlc,i_BRAM0_dout[31:0],o_BRAM0_din[31:0],o_BRAM0_addr[31:0],o_BRAM0_en,o_BRAM0_rst,o_BRAM0_we[3:0],o_BRAM0_control,i_BRAM1_dout[31:0],o_BRAM1_din[31:0],o_BRAM1_addr[31:0],o_BRAM1_en,o_BRAM1_rst,o_BRAM1_we[3:0],o_BRAM1_control" */;
  input [1:0]bram_sel;
  output [31:0]o_mema_dout;
  input [31:0]i_mema_din;
  input [31:0]i_mema_addr;
  input i_mema_en;
  input i_mema_rst;
  input [3:0]i_mema_we;
  output [31:0]o_memb_dout;
  input [31:0]i_memb_din;
  input [31:0]i_memb_addr;
  input i_memb_en;
  input i_memb_rst;
  input [3:0]i_memb_we;
  output [31:0]o_memc_dout;
  input [31:0]i_memc_din;
  input [31:0]i_memc_addr;
  input i_memc_en;
  input i_memc_rst;
  input [3:0]i_memc_we;
  input i_controla;
  input i_controlb;
  input i_controlc;
  input [31:0]i_BRAM0_dout;
  output [31:0]o_BRAM0_din;
  output [31:0]o_BRAM0_addr;
  output o_BRAM0_en;
  output o_BRAM0_rst;
  output [3:0]o_BRAM0_we;
  output o_BRAM0_control;
  input [31:0]i_BRAM1_dout;
  output [31:0]o_BRAM1_din;
  output [31:0]o_BRAM1_addr;
  output o_BRAM1_en;
  output o_BRAM1_rst;
  output [3:0]o_BRAM1_we;
  output o_BRAM1_control;
endmodule
