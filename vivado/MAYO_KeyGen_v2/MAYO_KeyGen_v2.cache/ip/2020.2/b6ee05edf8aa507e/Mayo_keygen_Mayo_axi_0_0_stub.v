// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Jan  3 14:39:37 2023
// Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Mayo_keygen_Mayo_axi_0_0_stub.v
// Design      : Mayo_keygen_Mayo_axi_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Mayo_axi_v1_0,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(o_Keygen_en, o_Signing_en, o_Verification_en, 
  o_Debug, o_Expose, o_irq_en, i_Keygen_done, i_Signing_done, i_Verification_done, 
  i_Keygen_busy, i_Signing_busy, i_Verification_busy, i_error, s00_axi_aclk, s00_axi_aresetn, 
  s00_axi_awaddr, s00_axi_awprot, s00_axi_awvalid, s00_axi_awready, s00_axi_wdata, 
  s00_axi_wstrb, s00_axi_wvalid, s00_axi_wready, s00_axi_bresp, s00_axi_bvalid, 
  s00_axi_bready, s00_axi_araddr, s00_axi_arprot, s00_axi_arvalid, s00_axi_arready, 
  s00_axi_rdata, s00_axi_rresp, s00_axi_rvalid, s00_axi_rready, s01_axi_aclk, 
  s01_axi_aresetn, s01_axi_awid, s01_axi_awaddr, s01_axi_awlen, s01_axi_awsize, 
  s01_axi_awburst, s01_axi_awlock, s01_axi_awcache, s01_axi_awprot, s01_axi_awqos, 
  s01_axi_awregion, s01_axi_awvalid, s01_axi_awready, s01_axi_wdata, s01_axi_wstrb, 
  s01_axi_wlast, s01_axi_wvalid, s01_axi_wready, s01_axi_bid, s01_axi_bresp, s01_axi_bvalid, 
  s01_axi_bready, s01_axi_arid, s01_axi_araddr, s01_axi_arlen, s01_axi_arsize, 
  s01_axi_arburst, s01_axi_arlock, s01_axi_arcache, s01_axi_arprot, s01_axi_arqos, 
  s01_axi_arregion, s01_axi_arvalid, s01_axi_arready, s01_axi_rid, s01_axi_rdata, 
  s01_axi_rresp, s01_axi_rlast, s01_axi_rvalid, s01_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="o_Keygen_en,o_Signing_en,o_Verification_en,o_Debug,o_Expose,o_irq_en,i_Keygen_done,i_Signing_done,i_Verification_done,i_Keygen_busy,i_Signing_busy,i_Verification_busy,i_error[7:0],s00_axi_aclk,s00_axi_aresetn,s00_axi_awaddr[4:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[4:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,s01_axi_aclk,s01_axi_aresetn,s01_axi_awid[11:0],s01_axi_awaddr[9:0],s01_axi_awlen[7:0],s01_axi_awsize[2:0],s01_axi_awburst[1:0],s01_axi_awlock,s01_axi_awcache[3:0],s01_axi_awprot[2:0],s01_axi_awqos[3:0],s01_axi_awregion[3:0],s01_axi_awvalid,s01_axi_awready,s01_axi_wdata[31:0],s01_axi_wstrb[3:0],s01_axi_wlast,s01_axi_wvalid,s01_axi_wready,s01_axi_bid[11:0],s01_axi_bresp[1:0],s01_axi_bvalid,s01_axi_bready,s01_axi_arid[11:0],s01_axi_araddr[9:0],s01_axi_arlen[7:0],s01_axi_arsize[2:0],s01_axi_arburst[1:0],s01_axi_arlock,s01_axi_arcache[3:0],s01_axi_arprot[2:0],s01_axi_arqos[3:0],s01_axi_arregion[3:0],s01_axi_arvalid,s01_axi_arready,s01_axi_rid[11:0],s01_axi_rdata[31:0],s01_axi_rresp[1:0],s01_axi_rlast,s01_axi_rvalid,s01_axi_rready" */;
  output o_Keygen_en;
  output o_Signing_en;
  output o_Verification_en;
  output o_Debug;
  output o_Expose;
  output o_irq_en;
  input i_Keygen_done;
  input i_Signing_done;
  input i_Verification_done;
  input i_Keygen_busy;
  input i_Signing_busy;
  input i_Verification_busy;
  input [7:0]i_error;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [4:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [4:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
  input s01_axi_aclk;
  input s01_axi_aresetn;
  input [11:0]s01_axi_awid;
  input [9:0]s01_axi_awaddr;
  input [7:0]s01_axi_awlen;
  input [2:0]s01_axi_awsize;
  input [1:0]s01_axi_awburst;
  input s01_axi_awlock;
  input [3:0]s01_axi_awcache;
  input [2:0]s01_axi_awprot;
  input [3:0]s01_axi_awqos;
  input [3:0]s01_axi_awregion;
  input s01_axi_awvalid;
  output s01_axi_awready;
  input [31:0]s01_axi_wdata;
  input [3:0]s01_axi_wstrb;
  input s01_axi_wlast;
  input s01_axi_wvalid;
  output s01_axi_wready;
  output [11:0]s01_axi_bid;
  output [1:0]s01_axi_bresp;
  output s01_axi_bvalid;
  input s01_axi_bready;
  input [11:0]s01_axi_arid;
  input [9:0]s01_axi_araddr;
  input [7:0]s01_axi_arlen;
  input [2:0]s01_axi_arsize;
  input [1:0]s01_axi_arburst;
  input s01_axi_arlock;
  input [3:0]s01_axi_arcache;
  input [2:0]s01_axi_arprot;
  input [3:0]s01_axi_arqos;
  input [3:0]s01_axi_arregion;
  input s01_axi_arvalid;
  output s01_axi_arready;
  output [11:0]s01_axi_rid;
  output [31:0]s01_axi_rdata;
  output [1:0]s01_axi_rresp;
  output s01_axi_rlast;
  output s01_axi_rvalid;
  input s01_axi_rready;
endmodule
