// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Jun 18 18:05:40 2023
// Host        : osm-hzb running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_MAYO_SIGNING_FSM_0_0/Mayo_sign_with_zynq_MAYO_SIGNING_FSM_0_0_stub.v
// Design      : Mayo_sign_with_zynq_MAYO_SIGNING_FSM_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "MAYO_SIGNING_FSM,Vivado 2020.2" *)
module Mayo_sign_with_zynq_MAYO_SIGNING_FSM_0_0(clk, rst, i_enable, i_secret, o_done, o_busy, o_err, 
  o_trng_r, o_trng_w, o_trng_data, i_trng_data, i_trng_valid, i_trng_done, o_hash_en, 
  o_hash_mlen, o_hash_olen, o_hash_write_adr, o_hash_read_adr, i_hash_done, i_hash_dyn_done, 
  o_hash_memsel, o_sam_enable, i_sam_done, o_sam_mode, o_sam_oil_addr, o_red_enable, o_red_len, 
  o_red_adr, o_red_bram_sel, i_red_done, o_memcpy_start, o_memcpy_src_adr, o_memcpy_dst_adr, 
  o_memcpy_len, i_memcpy_done, o_memcpy_mem_port_sel, o_memcpy1_start, o_memcpy1_src_adr, 
  o_memcpy1_dst_adr, o_memcpy1_len, i_memcpy1_done, o_memcpy1_mem_port_sel, o_p1p1t_enable, 
  i_p1p1t_done, o_p1p1t_src_adr, o_p1p1t_dsta_adr, o_p1p1t_dstb_adr, o_p1p1t_ji_equal, 
  o_lin_enable, i_lin_done, o_lin_bram_halt, o_lin_vec_addr, o_lin_coeffs_addr, 
  o_lin_out_addr, o_lin_len, o_lin_demux_bram_sel, o_add_enable, o_add_v1_addr, 
  o_add_v2_addr, o_add_out_addr, i_add_done, o_add_bram_sel, o_add_demux_bram_sel, 
  o_sam_vin_en, i_sam_vin_done, o_sam_vin_input_adr, o_red_ext_en, i_red_ext_done, 
  o_red_ext_input_adr, o_red_ext_output_adr, o_neg_enable, o_neg_len, o_neg_adr, i_neg_done, 
  o_sam_oil_en, i_sam_oil_ret, i_sam_oil_done, o_add_oil_enable, i_add_oil_done, 
  i_mem0a_dout, o_mem0a_din, o_mem0a_addr, o_mem0a_en, o_mem0a_rst, o_mem0a_we, i_mem0b_dout, 
  o_mem0b_din, o_mem0b_addr, o_mem0b_en, o_mem0b_rst, o_mem0b_we, i_mem1a_dout, o_mem1a_din, 
  o_mem1a_addr, o_mem1a_en, o_mem1a_rst, o_mem1a_we, i_mem2a_dout, o_mem2a_din, o_mem2a_addr, 
  o_mem2a_en, o_mem2a_rst, o_mem2a_we, i_mem2b_dout, o_mem2b_din, o_mem2b_addr, o_mem2b_en, 
  o_mem2b_rst, o_mem2b_we, o_control0a, o_control0b, o_control1a, o_control2a, o_control2b)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,i_enable,i_secret,o_done,o_busy,o_err[1:0],o_trng_r,o_trng_w,o_trng_data[31:0],i_trng_data[31:0],i_trng_valid,i_trng_done,o_hash_en,o_hash_mlen[31:0],o_hash_olen[31:0],o_hash_write_adr[31:0],o_hash_read_adr[31:0],i_hash_done,i_hash_dyn_done,o_hash_memsel,o_sam_enable,i_sam_done,o_sam_mode,o_sam_oil_addr[31:0],o_red_enable,o_red_len[31:0],o_red_adr[31:0],o_red_bram_sel,i_red_done,o_memcpy_start,o_memcpy_src_adr[31:0],o_memcpy_dst_adr[31:0],o_memcpy_len[31:0],i_memcpy_done,o_memcpy_mem_port_sel[1:0],o_memcpy1_start,o_memcpy1_src_adr[31:0],o_memcpy1_dst_adr[31:0],o_memcpy1_len[31:0],i_memcpy1_done,o_memcpy1_mem_port_sel[1:0],o_p1p1t_enable,i_p1p1t_done,o_p1p1t_src_adr[31:0],o_p1p1t_dsta_adr[31:0],o_p1p1t_dstb_adr[31:0],o_p1p1t_ji_equal,o_lin_enable,i_lin_done,o_lin_bram_halt,o_lin_vec_addr[31:0],o_lin_coeffs_addr[31:0],o_lin_out_addr[31:0],o_lin_len[31:0],o_lin_demux_bram_sel[4:0],o_add_enable,o_add_v1_addr[31:0],o_add_v2_addr[31:0],o_add_out_addr[31:0],i_add_done,o_add_bram_sel[1:0],o_add_demux_bram_sel[4:0],o_sam_vin_en,i_sam_vin_done,o_sam_vin_input_adr[31:0],o_red_ext_en,i_red_ext_done,o_red_ext_input_adr[31:0],o_red_ext_output_adr[31:0],o_neg_enable,o_neg_len[31:0],o_neg_adr[31:0],i_neg_done,o_sam_oil_en,i_sam_oil_ret,i_sam_oil_done,o_add_oil_enable,i_add_oil_done,i_mem0a_dout[31:0],o_mem0a_din[31:0],o_mem0a_addr[31:0],o_mem0a_en,o_mem0a_rst,o_mem0a_we[3:0],i_mem0b_dout[31:0],o_mem0b_din[31:0],o_mem0b_addr[31:0],o_mem0b_en,o_mem0b_rst,o_mem0b_we[3:0],i_mem1a_dout[31:0],o_mem1a_din[31:0],o_mem1a_addr[31:0],o_mem1a_en,o_mem1a_rst,o_mem1a_we[3:0],i_mem2a_dout[31:0],o_mem2a_din[31:0],o_mem2a_addr[31:0],o_mem2a_en,o_mem2a_rst,o_mem2a_we[3:0],i_mem2b_dout[31:0],o_mem2b_din[31:0],o_mem2b_addr[31:0],o_mem2b_en,o_mem2b_rst,o_mem2b_we[3:0],o_control0a,o_control0b,o_control1a,o_control2a,o_control2b" */;
  input clk;
  input rst;
  input i_enable;
  input i_secret;
  output o_done;
  output o_busy;
  output [1:0]o_err;
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
  output o_hash_memsel;
  output o_sam_enable;
  input i_sam_done;
  output o_sam_mode;
  output [31:0]o_sam_oil_addr;
  output o_red_enable;
  output [31:0]o_red_len;
  output [31:0]o_red_adr;
  output o_red_bram_sel;
  input i_red_done;
  output o_memcpy_start;
  output [31:0]o_memcpy_src_adr;
  output [31:0]o_memcpy_dst_adr;
  output [31:0]o_memcpy_len;
  input i_memcpy_done;
  output [1:0]o_memcpy_mem_port_sel;
  output o_memcpy1_start;
  output [31:0]o_memcpy1_src_adr;
  output [31:0]o_memcpy1_dst_adr;
  output [31:0]o_memcpy1_len;
  input i_memcpy1_done;
  output [1:0]o_memcpy1_mem_port_sel;
  output o_p1p1t_enable;
  input i_p1p1t_done;
  output [31:0]o_p1p1t_src_adr;
  output [31:0]o_p1p1t_dsta_adr;
  output [31:0]o_p1p1t_dstb_adr;
  output o_p1p1t_ji_equal;
  output o_lin_enable;
  input i_lin_done;
  output o_lin_bram_halt;
  output [31:0]o_lin_vec_addr;
  output [31:0]o_lin_coeffs_addr;
  output [31:0]o_lin_out_addr;
  output [31:0]o_lin_len;
  output [4:0]o_lin_demux_bram_sel;
  output o_add_enable;
  output [31:0]o_add_v1_addr;
  output [31:0]o_add_v2_addr;
  output [31:0]o_add_out_addr;
  input i_add_done;
  output [1:0]o_add_bram_sel;
  output [4:0]o_add_demux_bram_sel;
  output o_sam_vin_en;
  input i_sam_vin_done;
  output [31:0]o_sam_vin_input_adr;
  output o_red_ext_en;
  input i_red_ext_done;
  output [31:0]o_red_ext_input_adr;
  output [31:0]o_red_ext_output_adr;
  output o_neg_enable;
  output [31:0]o_neg_len;
  output [31:0]o_neg_adr;
  input i_neg_done;
  output o_sam_oil_en;
  input i_sam_oil_ret;
  input i_sam_oil_done;
  output o_add_oil_enable;
  input i_add_oil_done;
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
  input [31:0]i_mem2a_dout;
  output [31:0]o_mem2a_din;
  output [31:0]o_mem2a_addr;
  output o_mem2a_en;
  output o_mem2a_rst;
  output [3:0]o_mem2a_we;
  input [31:0]i_mem2b_dout;
  output [31:0]o_mem2b_din;
  output [31:0]o_mem2b_addr;
  output o_mem2b_en;
  output o_mem2b_rst;
  output [3:0]o_mem2b_we;
  output o_control0a;
  output o_control0b;
  output o_control1a;
  output o_control2a;
  output o_control2b;
endmodule
