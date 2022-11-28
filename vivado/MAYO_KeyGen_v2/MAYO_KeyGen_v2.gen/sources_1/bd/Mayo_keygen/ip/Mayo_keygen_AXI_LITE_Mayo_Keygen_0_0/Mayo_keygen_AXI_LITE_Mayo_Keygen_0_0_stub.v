// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Oct 19 15:04:53 2022
// Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top Mayo_keygen_AXI_LITE_Mayo_Keygen_0_0 -prefix
//               Mayo_keygen_AXI_LITE_Mayo_Keygen_0_0_ Mayo_keygen_AXI_LITE_Mayo_Keygen_0_0_stub.v
// Design      : Mayo_keygen_AXI_LITE_Mayo_Keygen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "AXI_LITE_Mayo_Keygen_v1_5,Vivado 2020.2" *)
module Mayo_keygen_AXI_LITE_Mayo_Keygen_0_0(CLK, ENABLE, RESET, o_done, i_debug, o_trng_r, 
  o_trng_w, o_trng_data, i_trng_data, i_trng_valid, i_trng_done, o_hash_en, o_hash_mlen, 
  o_hash_olen, o_hash_write_adr, o_hash_read_adr, i_hash_done, i_hash_dyn_done, o_red_enable, 
  o_red_len, o_red_adr, i_red_done, o_sam_enable, i_sam_done, o_sam_oil_addr, o_lin_enable, 
  i_lin_done, o_lin_bram_halt, o_lin_vec_addr, o_lin_coeffs_addr, o_lin_out_addr, o_lin_len, 
  o_add_enable, o_add_v1_addr, o_add_v2_addr, o_add_out_addr, i_add_done, o_neg_enable, 
  o_neg_len, o_neg_adr, i_neg_done, i_mem0a_dout, o_mem0a_din, o_mem0a_addr, o_mem0a_en, 
  o_mem0a_rst, o_mem0a_we, i_mem0b_dout, o_mem0b_din, o_mem0b_addr, o_mem0b_en, o_mem0b_rst, 
  o_mem0b_we, i_mem1a_dout, o_mem1a_din, o_mem1a_addr, o_mem1a_en, o_mem1a_rst, o_mem1a_we, 
  o_mem0a_control, o_mem0b_control, o_mem1a_control, s00_axi_aclk, s00_axi_aresetn, 
  s00_axi_awaddr, s00_axi_awprot, s00_axi_awvalid, s00_axi_awready, s00_axi_wdata, 
  s00_axi_wstrb, s00_axi_wvalid, s00_axi_wready, s00_axi_bresp, s00_axi_bvalid, 
  s00_axi_bready, s00_axi_araddr, s00_axi_arprot, s00_axi_arvalid, s00_axi_arready, 
  s00_axi_rdata, s00_axi_rresp, s00_axi_rvalid, s00_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="CLK,ENABLE,RESET,o_done,i_debug,o_trng_r,o_trng_w,o_trng_data[31:0],i_trng_data[31:0],i_trng_valid,i_trng_done,o_hash_en,o_hash_mlen[31:0],o_hash_olen[31:0],o_hash_write_adr[31:0],o_hash_read_adr[31:0],i_hash_done,i_hash_dyn_done,o_red_enable,o_red_len[31:0],o_red_adr[31:0],i_red_done,o_sam_enable,i_sam_done,o_sam_oil_addr[31:0],o_lin_enable,i_lin_done,o_lin_bram_halt,o_lin_vec_addr[31:0],o_lin_coeffs_addr[31:0],o_lin_out_addr[31:0],o_lin_len[31:0],o_add_enable,o_add_v1_addr[31:0],o_add_v2_addr[31:0],o_add_out_addr[31:0],i_add_done,o_neg_enable,o_neg_len[31:0],o_neg_adr[31:0],i_neg_done,i_mem0a_dout[31:0],o_mem0a_din[31:0],o_mem0a_addr[31:0],o_mem0a_en,o_mem0a_rst,o_mem0a_we[3:0],i_mem0b_dout[31:0],o_mem0b_din[31:0],o_mem0b_addr[31:0],o_mem0b_en,o_mem0b_rst,o_mem0b_we[3:0],i_mem1a_dout[31:0],o_mem1a_din[31:0],o_mem1a_addr[31:0],o_mem1a_en,o_mem1a_rst,o_mem1a_we[3:0],o_mem0a_control,o_mem0b_control,o_mem1a_control,s00_axi_aclk,s00_axi_aresetn,s00_axi_awaddr[4:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[4:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready" */;
  input CLK;
  input ENABLE;
  input RESET;
  output o_done;
  input i_debug;
  output o_trng_r;
  output o_trng_w;
  output [31:0]o_trng_data;
  input [31:0]i_trng_data;
  input i_trng_valid;
  input i_trng_done;
  output o_hash_en;
  output [31:0]o_hash_mlen;
  output [31:0]o_hash_olen;
  output [31:0]o_hash_write_adr;
  output [31:0]o_hash_read_adr;
  input i_hash_done;
  input i_hash_dyn_done;
  output o_red_enable;
  output [31:0]o_red_len;
  output [31:0]o_red_adr;
  input i_red_done;
  output o_sam_enable;
  input i_sam_done;
  output [31:0]o_sam_oil_addr;
  output o_lin_enable;
  input i_lin_done;
  output o_lin_bram_halt;
  output [31:0]o_lin_vec_addr;
  output [31:0]o_lin_coeffs_addr;
  output [31:0]o_lin_out_addr;
  output [31:0]o_lin_len;
  output o_add_enable;
  output [31:0]o_add_v1_addr;
  output [31:0]o_add_v2_addr;
  output [31:0]o_add_out_addr;
  input i_add_done;
  output o_neg_enable;
  output [31:0]o_neg_len;
  output [31:0]o_neg_adr;
  input i_neg_done;
  input [31:0]i_mem0a_dout;
  output [31:0]o_mem0a_din;
  output [31:0]o_mem0a_addr;
  output o_mem0a_en;
  output o_mem0a_rst;
  output [3:0]o_mem0a_we;
  input [31:0]i_mem0b_dout;
  output [31:0]o_mem0b_din;
  output [31:0]o_mem0b_addr;
  output o_mem0b_en;
  output o_mem0b_rst;
  output [3:0]o_mem0b_we;
  input [31:0]i_mem1a_dout;
  output [31:0]o_mem1a_din;
  output [31:0]o_mem1a_addr;
  output o_mem1a_en;
  output o_mem1a_rst;
  output [3:0]o_mem1a_we;
  output o_mem0a_control;
  output o_mem0b_control;
  output o_mem1a_control;
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
endmodule
