// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Oct 23 16:36:08 2022
// Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0_sim_netlist.v
// Design      : Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Mayo_keygen_no_zynq_mayo_hash_arbiter_0_0,mayo_hash_arbiter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "mayo_hash_arbiter,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (rst,
    o_en,
    o_mlen,
    o_olen,
    o_write_adr,
    o_read_adr,
    i_done,
    i_dyn_done,
    i_key_en,
    i_key_mlen,
    i_key_olen,
    i_key_write_adr,
    i_key_read_adr,
    o_key_done,
    o_key_dyn_done,
    i_sam_en,
    i_sam_mlen,
    i_sam_olen,
    i_sam_write_adr,
    i_sam_read_adr,
    o_sam_done,
    o_sam_dyn_done);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  output o_en;
  output [31:0]o_mlen;
  output [31:0]o_olen;
  output [31:0]o_write_adr;
  output [31:0]o_read_adr;
  input i_done;
  input i_dyn_done;
  input i_key_en;
  input [31:0]i_key_mlen;
  input [31:0]i_key_olen;
  input [31:0]i_key_write_adr;
  input [31:0]i_key_read_adr;
  output o_key_done;
  output o_key_dyn_done;
  input i_sam_en;
  input [31:0]i_sam_mlen;
  input [31:0]i_sam_olen;
  input [31:0]i_sam_write_adr;
  input [31:0]i_sam_read_adr;
  output o_sam_done;
  output o_sam_dyn_done;

  wire i_done;
  wire i_dyn_done;
  wire i_key_en;
  wire [31:0]i_key_mlen;
  wire [31:0]i_key_olen;
  wire [31:0]i_key_read_adr;
  wire [31:0]i_key_write_adr;
  wire i_sam_en;
  wire [31:0]i_sam_mlen;
  wire [31:0]i_sam_olen;
  wire [31:0]i_sam_read_adr;
  wire [31:0]i_sam_write_adr;
  wire o_en;
  wire o_key_done;
  wire o_key_dyn_done;
  wire [31:0]o_mlen;
  wire [31:0]o_olen;
  wire [31:0]o_read_adr;
  wire o_sam_done;
  wire o_sam_dyn_done;
  wire [31:0]o_write_adr;
  wire rst;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mayo_hash_arbiter U0
       (.i_done(i_done),
        .i_dyn_done(i_dyn_done),
        .i_key_en(i_key_en),
        .i_key_mlen(i_key_mlen),
        .i_key_olen(i_key_olen),
        .i_key_read_adr(i_key_read_adr),
        .i_key_write_adr(i_key_write_adr),
        .i_sam_en(i_sam_en),
        .i_sam_mlen(i_sam_mlen),
        .i_sam_olen(i_sam_olen),
        .i_sam_read_adr(i_sam_read_adr),
        .i_sam_write_adr(i_sam_write_adr),
        .o_key_done(o_key_done),
        .o_key_dyn_done(o_key_dyn_done),
        .o_mlen(o_mlen),
        .o_olen(o_olen),
        .o_read_adr(o_read_adr),
        .o_sam_done(o_sam_done),
        .o_sam_dyn_done(o_sam_dyn_done),
        .o_write_adr(o_write_adr),
        .rst(rst));
  LUT2 #(
    .INIT(4'hE)) 
    o_en_INST_0
       (.I0(i_sam_en),
        .I1(i_key_en),
        .O(o_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mayo_hash_arbiter
   (o_key_done,
    o_key_dyn_done,
    o_sam_done,
    o_sam_dyn_done,
    o_mlen,
    o_olen,
    o_write_adr,
    o_read_adr,
    i_done,
    rst,
    i_dyn_done,
    i_key_en,
    i_sam_en,
    i_key_mlen,
    i_sam_mlen,
    i_key_olen,
    i_sam_olen,
    i_key_write_adr,
    i_sam_write_adr,
    i_key_read_adr,
    i_sam_read_adr);
  output o_key_done;
  output o_key_dyn_done;
  output o_sam_done;
  output o_sam_dyn_done;
  output [31:0]o_mlen;
  output [31:0]o_olen;
  output [31:0]o_write_adr;
  output [31:0]o_read_adr;
  input i_done;
  input rst;
  input i_dyn_done;
  input i_key_en;
  input i_sam_en;
  input [31:0]i_key_mlen;
  input [31:0]i_sam_mlen;
  input [31:0]i_key_olen;
  input [31:0]i_sam_olen;
  input [31:0]i_key_write_adr;
  input [31:0]i_sam_write_adr;
  input [31:0]i_key_read_adr;
  input [31:0]i_sam_read_adr;

  wire i_done;
  wire i_dyn_done;
  wire i_key_en;
  wire [31:0]i_key_mlen;
  wire [31:0]i_key_olen;
  wire [31:0]i_key_read_adr;
  wire [31:0]i_key_write_adr;
  wire i_sam_en;
  wire [31:0]i_sam_mlen;
  wire [31:0]i_sam_olen;
  wire [31:0]i_sam_read_adr;
  wire [31:0]i_sam_write_adr;
  wire key_en;
  wire key_en_i_1_n_0;
  wire o_key_done;
  wire o_key_dyn_done;
  wire [31:0]o_mlen;
  wire [31:0]o_olen;
  wire [31:0]o_read_adr;
  wire o_sam_done;
  wire o_sam_dyn_done;
  wire [31:0]o_write_adr;
  wire rst;
  wire sam_en_i_1_n_0;
  wire sam_en_reg_n_0;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    key_en_i_1
       (.I0(i_key_en),
        .I1(key_en),
        .O(key_en_i_1_n_0));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    key_en_reg
       (.C(i_done),
        .CE(1'b1),
        .CLR(rst),
        .D(key_en_i_1_n_0),
        .Q(key_en));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_key_done_INST_0
       (.I0(i_done),
        .I1(key_en),
        .O(o_key_done));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_key_dyn_done_INST_0
       (.I0(i_dyn_done),
        .I1(key_en),
        .O(o_key_dyn_done));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_mlen[0]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_mlen[0]),
        .I4(i_key_en),
        .I5(i_sam_mlen[0]),
        .O(o_mlen[0]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_mlen[10]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_mlen[10]),
        .I4(i_key_en),
        .I5(i_sam_mlen[10]),
        .O(o_mlen[10]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_mlen[11]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_mlen[11]),
        .I4(i_key_en),
        .I5(i_sam_mlen[11]),
        .O(o_mlen[11]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_mlen[12]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_mlen[12]),
        .I4(i_key_en),
        .I5(i_sam_mlen[12]),
        .O(o_mlen[12]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_mlen[13]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_mlen[13]),
        .I4(i_key_en),
        .I5(i_sam_mlen[13]),
        .O(o_mlen[13]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_mlen[14]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_mlen[14]),
        .I4(i_key_en),
        .I5(i_sam_mlen[14]),
        .O(o_mlen[14]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_mlen[15]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_mlen[15]),
        .I4(i_key_en),
        .I5(i_sam_mlen[15]),
        .O(o_mlen[15]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_mlen[16]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_mlen[16]),
        .I4(i_key_en),
        .I5(i_sam_mlen[16]),
        .O(o_mlen[16]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_mlen[17]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_mlen[17]),
        .I4(i_key_en),
        .I5(i_sam_mlen[17]),
        .O(o_mlen[17]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_mlen[18]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_mlen[18]),
        .I4(i_key_en),
        .I5(i_sam_mlen[18]),
        .O(o_mlen[18]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_mlen[19]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_mlen[19]),
        .I4(i_key_en),
        .I5(i_sam_mlen[19]),
        .O(o_mlen[19]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_mlen[1]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_mlen[1]),
        .I4(i_key_en),
        .I5(i_sam_mlen[1]),
        .O(o_mlen[1]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_mlen[20]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_mlen[20]),
        .I4(i_key_en),
        .I5(i_sam_mlen[20]),
        .O(o_mlen[20]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_mlen[21]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_mlen[21]),
        .I4(i_key_en),
        .I5(i_sam_mlen[21]),
        .O(o_mlen[21]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_mlen[22]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_mlen[22]),
        .I4(i_key_en),
        .I5(i_sam_mlen[22]),
        .O(o_mlen[22]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_mlen[23]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_mlen[23]),
        .I4(i_key_en),
        .I5(i_sam_mlen[23]),
        .O(o_mlen[23]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_mlen[24]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_mlen[24]),
        .I4(i_key_en),
        .I5(i_sam_mlen[24]),
        .O(o_mlen[24]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_mlen[25]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_mlen[25]),
        .I4(i_key_en),
        .I5(i_sam_mlen[25]),
        .O(o_mlen[25]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_mlen[26]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_mlen[26]),
        .I4(i_key_en),
        .I5(i_sam_mlen[26]),
        .O(o_mlen[26]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_mlen[27]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_mlen[27]),
        .I4(i_key_en),
        .I5(i_sam_mlen[27]),
        .O(o_mlen[27]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_mlen[28]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_mlen[28]),
        .I4(i_key_en),
        .I5(i_sam_mlen[28]),
        .O(o_mlen[28]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_mlen[29]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_mlen[29]),
        .I4(i_key_en),
        .I5(i_sam_mlen[29]),
        .O(o_mlen[29]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_mlen[2]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_mlen[2]),
        .I4(i_key_en),
        .I5(i_sam_mlen[2]),
        .O(o_mlen[2]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_mlen[30]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_mlen[30]),
        .I4(i_key_en),
        .I5(i_sam_mlen[30]),
        .O(o_mlen[30]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_mlen[31]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_mlen[31]),
        .I4(i_key_en),
        .I5(i_sam_mlen[31]),
        .O(o_mlen[31]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_mlen[3]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_mlen[3]),
        .I4(i_key_en),
        .I5(i_sam_mlen[3]),
        .O(o_mlen[3]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_mlen[4]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_mlen[4]),
        .I4(i_key_en),
        .I5(i_sam_mlen[4]),
        .O(o_mlen[4]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_mlen[5]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_mlen[5]),
        .I4(i_key_en),
        .I5(i_sam_mlen[5]),
        .O(o_mlen[5]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_mlen[6]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_mlen[6]),
        .I4(i_key_en),
        .I5(i_sam_mlen[6]),
        .O(o_mlen[6]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_mlen[7]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_mlen[7]),
        .I4(i_key_en),
        .I5(i_sam_mlen[7]),
        .O(o_mlen[7]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_mlen[8]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_mlen[8]),
        .I4(i_key_en),
        .I5(i_sam_mlen[8]),
        .O(o_mlen[8]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_mlen[9]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_mlen[9]),
        .I4(i_key_en),
        .I5(i_sam_mlen[9]),
        .O(o_mlen[9]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_olen[0]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_olen[0]),
        .I4(i_key_en),
        .I5(i_sam_olen[0]),
        .O(o_olen[0]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_olen[10]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_olen[10]),
        .I4(i_key_en),
        .I5(i_sam_olen[10]),
        .O(o_olen[10]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_olen[11]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_olen[11]),
        .I4(i_key_en),
        .I5(i_sam_olen[11]),
        .O(o_olen[11]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_olen[12]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_olen[12]),
        .I4(i_key_en),
        .I5(i_sam_olen[12]),
        .O(o_olen[12]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_olen[13]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_olen[13]),
        .I4(i_key_en),
        .I5(i_sam_olen[13]),
        .O(o_olen[13]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_olen[14]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_olen[14]),
        .I4(i_key_en),
        .I5(i_sam_olen[14]),
        .O(o_olen[14]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_olen[15]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_olen[15]),
        .I4(i_key_en),
        .I5(i_sam_olen[15]),
        .O(o_olen[15]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_olen[16]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_olen[16]),
        .I4(i_key_en),
        .I5(i_sam_olen[16]),
        .O(o_olen[16]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_olen[17]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_olen[17]),
        .I4(i_key_en),
        .I5(i_sam_olen[17]),
        .O(o_olen[17]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_olen[18]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_olen[18]),
        .I4(i_key_en),
        .I5(i_sam_olen[18]),
        .O(o_olen[18]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_olen[19]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_olen[19]),
        .I4(i_key_en),
        .I5(i_sam_olen[19]),
        .O(o_olen[19]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_olen[1]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_olen[1]),
        .I4(i_key_en),
        .I5(i_sam_olen[1]),
        .O(o_olen[1]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_olen[20]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_olen[20]),
        .I4(i_key_en),
        .I5(i_sam_olen[20]),
        .O(o_olen[20]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_olen[21]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_olen[21]),
        .I4(i_key_en),
        .I5(i_sam_olen[21]),
        .O(o_olen[21]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_olen[22]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_olen[22]),
        .I4(i_key_en),
        .I5(i_sam_olen[22]),
        .O(o_olen[22]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_olen[23]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_olen[23]),
        .I4(i_key_en),
        .I5(i_sam_olen[23]),
        .O(o_olen[23]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_olen[24]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_olen[24]),
        .I4(i_key_en),
        .I5(i_sam_olen[24]),
        .O(o_olen[24]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_olen[25]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_olen[25]),
        .I4(i_key_en),
        .I5(i_sam_olen[25]),
        .O(o_olen[25]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_olen[26]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_olen[26]),
        .I4(i_key_en),
        .I5(i_sam_olen[26]),
        .O(o_olen[26]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_olen[27]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_olen[27]),
        .I4(i_key_en),
        .I5(i_sam_olen[27]),
        .O(o_olen[27]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_olen[28]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_olen[28]),
        .I4(i_key_en),
        .I5(i_sam_olen[28]),
        .O(o_olen[28]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_olen[29]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_olen[29]),
        .I4(i_key_en),
        .I5(i_sam_olen[29]),
        .O(o_olen[29]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_olen[2]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_olen[2]),
        .I4(i_key_en),
        .I5(i_sam_olen[2]),
        .O(o_olen[2]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_olen[30]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_olen[30]),
        .I4(i_key_en),
        .I5(i_sam_olen[30]),
        .O(o_olen[30]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_olen[31]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_olen[31]),
        .I4(i_key_en),
        .I5(i_sam_olen[31]),
        .O(o_olen[31]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_olen[3]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_olen[3]),
        .I4(i_key_en),
        .I5(i_sam_olen[3]),
        .O(o_olen[3]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_olen[4]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_olen[4]),
        .I4(i_key_en),
        .I5(i_sam_olen[4]),
        .O(o_olen[4]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_olen[5]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_olen[5]),
        .I4(i_key_en),
        .I5(i_sam_olen[5]),
        .O(o_olen[5]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_olen[6]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_olen[6]),
        .I4(i_key_en),
        .I5(i_sam_olen[6]),
        .O(o_olen[6]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_olen[7]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_olen[7]),
        .I4(i_key_en),
        .I5(i_sam_olen[7]),
        .O(o_olen[7]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_olen[8]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_olen[8]),
        .I4(i_key_en),
        .I5(i_sam_olen[8]),
        .O(o_olen[8]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_olen[9]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_olen[9]),
        .I4(i_key_en),
        .I5(i_sam_olen[9]),
        .O(o_olen[9]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_read_adr[0]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_read_adr[0]),
        .I4(i_key_en),
        .I5(i_sam_read_adr[0]),
        .O(o_read_adr[0]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_read_adr[10]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_read_adr[10]),
        .I4(i_key_en),
        .I5(i_sam_read_adr[10]),
        .O(o_read_adr[10]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_read_adr[11]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_read_adr[11]),
        .I4(i_key_en),
        .I5(i_sam_read_adr[11]),
        .O(o_read_adr[11]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_read_adr[12]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_read_adr[12]),
        .I4(i_key_en),
        .I5(i_sam_read_adr[12]),
        .O(o_read_adr[12]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_read_adr[13]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_read_adr[13]),
        .I4(i_key_en),
        .I5(i_sam_read_adr[13]),
        .O(o_read_adr[13]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_read_adr[14]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_read_adr[14]),
        .I4(i_key_en),
        .I5(i_sam_read_adr[14]),
        .O(o_read_adr[14]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_read_adr[15]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_read_adr[15]),
        .I4(i_key_en),
        .I5(i_sam_read_adr[15]),
        .O(o_read_adr[15]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_read_adr[16]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_read_adr[16]),
        .I4(i_key_en),
        .I5(i_sam_read_adr[16]),
        .O(o_read_adr[16]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_read_adr[17]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_read_adr[17]),
        .I4(i_key_en),
        .I5(i_sam_read_adr[17]),
        .O(o_read_adr[17]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_read_adr[18]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_read_adr[18]),
        .I4(i_key_en),
        .I5(i_sam_read_adr[18]),
        .O(o_read_adr[18]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_read_adr[19]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_read_adr[19]),
        .I4(i_key_en),
        .I5(i_sam_read_adr[19]),
        .O(o_read_adr[19]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_read_adr[1]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_read_adr[1]),
        .I4(i_key_en),
        .I5(i_sam_read_adr[1]),
        .O(o_read_adr[1]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_read_adr[20]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_read_adr[20]),
        .I4(i_key_en),
        .I5(i_sam_read_adr[20]),
        .O(o_read_adr[20]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_read_adr[21]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_read_adr[21]),
        .I4(i_key_en),
        .I5(i_sam_read_adr[21]),
        .O(o_read_adr[21]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_read_adr[22]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_read_adr[22]),
        .I4(i_key_en),
        .I5(i_sam_read_adr[22]),
        .O(o_read_adr[22]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_read_adr[23]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_read_adr[23]),
        .I4(i_key_en),
        .I5(i_sam_read_adr[23]),
        .O(o_read_adr[23]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_read_adr[24]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_read_adr[24]),
        .I4(i_key_en),
        .I5(i_sam_read_adr[24]),
        .O(o_read_adr[24]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_read_adr[25]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_read_adr[25]),
        .I4(i_key_en),
        .I5(i_sam_read_adr[25]),
        .O(o_read_adr[25]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_read_adr[26]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_read_adr[26]),
        .I4(i_key_en),
        .I5(i_sam_read_adr[26]),
        .O(o_read_adr[26]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_read_adr[27]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_read_adr[27]),
        .I4(i_key_en),
        .I5(i_sam_read_adr[27]),
        .O(o_read_adr[27]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_read_adr[28]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_read_adr[28]),
        .I4(i_key_en),
        .I5(i_sam_read_adr[28]),
        .O(o_read_adr[28]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_read_adr[29]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_read_adr[29]),
        .I4(i_key_en),
        .I5(i_sam_read_adr[29]),
        .O(o_read_adr[29]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_read_adr[2]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_read_adr[2]),
        .I4(i_key_en),
        .I5(i_sam_read_adr[2]),
        .O(o_read_adr[2]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_read_adr[30]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_read_adr[30]),
        .I4(i_key_en),
        .I5(i_sam_read_adr[30]),
        .O(o_read_adr[30]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_read_adr[31]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_read_adr[31]),
        .I4(i_key_en),
        .I5(i_sam_read_adr[31]),
        .O(o_read_adr[31]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_read_adr[3]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_read_adr[3]),
        .I4(i_key_en),
        .I5(i_sam_read_adr[3]),
        .O(o_read_adr[3]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_read_adr[4]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_read_adr[4]),
        .I4(i_key_en),
        .I5(i_sam_read_adr[4]),
        .O(o_read_adr[4]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_read_adr[5]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_read_adr[5]),
        .I4(i_key_en),
        .I5(i_sam_read_adr[5]),
        .O(o_read_adr[5]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_read_adr[6]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_read_adr[6]),
        .I4(i_key_en),
        .I5(i_sam_read_adr[6]),
        .O(o_read_adr[6]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_read_adr[7]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_read_adr[7]),
        .I4(i_key_en),
        .I5(i_sam_read_adr[7]),
        .O(o_read_adr[7]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_read_adr[8]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_read_adr[8]),
        .I4(i_key_en),
        .I5(i_sam_read_adr[8]),
        .O(o_read_adr[8]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_read_adr[9]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_read_adr[9]),
        .I4(i_key_en),
        .I5(i_sam_read_adr[9]),
        .O(o_read_adr[9]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_sam_done_INST_0
       (.I0(i_done),
        .I1(sam_en_reg_n_0),
        .O(o_sam_done));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_sam_dyn_done_INST_0
       (.I0(i_dyn_done),
        .I1(sam_en_reg_n_0),
        .O(o_sam_dyn_done));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_write_adr[0]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_write_adr[0]),
        .I4(i_key_en),
        .I5(i_sam_write_adr[0]),
        .O(o_write_adr[0]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_write_adr[10]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_write_adr[10]),
        .I4(i_key_en),
        .I5(i_sam_write_adr[10]),
        .O(o_write_adr[10]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_write_adr[11]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_write_adr[11]),
        .I4(i_key_en),
        .I5(i_sam_write_adr[11]),
        .O(o_write_adr[11]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_write_adr[12]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_write_adr[12]),
        .I4(i_key_en),
        .I5(i_sam_write_adr[12]),
        .O(o_write_adr[12]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_write_adr[13]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_write_adr[13]),
        .I4(i_key_en),
        .I5(i_sam_write_adr[13]),
        .O(o_write_adr[13]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_write_adr[14]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_write_adr[14]),
        .I4(i_key_en),
        .I5(i_sam_write_adr[14]),
        .O(o_write_adr[14]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_write_adr[15]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_write_adr[15]),
        .I4(i_key_en),
        .I5(i_sam_write_adr[15]),
        .O(o_write_adr[15]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_write_adr[16]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_write_adr[16]),
        .I4(i_key_en),
        .I5(i_sam_write_adr[16]),
        .O(o_write_adr[16]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_write_adr[17]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_write_adr[17]),
        .I4(i_key_en),
        .I5(i_sam_write_adr[17]),
        .O(o_write_adr[17]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_write_adr[18]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_write_adr[18]),
        .I4(i_key_en),
        .I5(i_sam_write_adr[18]),
        .O(o_write_adr[18]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_write_adr[19]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_write_adr[19]),
        .I4(i_key_en),
        .I5(i_sam_write_adr[19]),
        .O(o_write_adr[19]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_write_adr[1]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_write_adr[1]),
        .I4(i_key_en),
        .I5(i_sam_write_adr[1]),
        .O(o_write_adr[1]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_write_adr[20]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_write_adr[20]),
        .I4(i_key_en),
        .I5(i_sam_write_adr[20]),
        .O(o_write_adr[20]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_write_adr[21]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_write_adr[21]),
        .I4(i_key_en),
        .I5(i_sam_write_adr[21]),
        .O(o_write_adr[21]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_write_adr[22]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_write_adr[22]),
        .I4(i_key_en),
        .I5(i_sam_write_adr[22]),
        .O(o_write_adr[22]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_write_adr[23]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_write_adr[23]),
        .I4(i_key_en),
        .I5(i_sam_write_adr[23]),
        .O(o_write_adr[23]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_write_adr[24]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_write_adr[24]),
        .I4(i_key_en),
        .I5(i_sam_write_adr[24]),
        .O(o_write_adr[24]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_write_adr[25]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_write_adr[25]),
        .I4(i_key_en),
        .I5(i_sam_write_adr[25]),
        .O(o_write_adr[25]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_write_adr[26]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_write_adr[26]),
        .I4(i_key_en),
        .I5(i_sam_write_adr[26]),
        .O(o_write_adr[26]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_write_adr[27]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_write_adr[27]),
        .I4(i_key_en),
        .I5(i_sam_write_adr[27]),
        .O(o_write_adr[27]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_write_adr[28]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_write_adr[28]),
        .I4(i_key_en),
        .I5(i_sam_write_adr[28]),
        .O(o_write_adr[28]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_write_adr[29]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_write_adr[29]),
        .I4(i_key_en),
        .I5(i_sam_write_adr[29]),
        .O(o_write_adr[29]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_write_adr[2]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_write_adr[2]),
        .I4(i_key_en),
        .I5(i_sam_write_adr[2]),
        .O(o_write_adr[2]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_write_adr[30]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_write_adr[30]),
        .I4(i_key_en),
        .I5(i_sam_write_adr[30]),
        .O(o_write_adr[30]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_write_adr[31]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_write_adr[31]),
        .I4(i_key_en),
        .I5(i_sam_write_adr[31]),
        .O(o_write_adr[31]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_write_adr[3]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_write_adr[3]),
        .I4(i_key_en),
        .I5(i_sam_write_adr[3]),
        .O(o_write_adr[3]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_write_adr[4]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_write_adr[4]),
        .I4(i_key_en),
        .I5(i_sam_write_adr[4]),
        .O(o_write_adr[4]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_write_adr[5]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_write_adr[5]),
        .I4(i_key_en),
        .I5(i_sam_write_adr[5]),
        .O(o_write_adr[5]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_write_adr[6]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_write_adr[6]),
        .I4(i_key_en),
        .I5(i_sam_write_adr[6]),
        .O(o_write_adr[6]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_write_adr[7]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_write_adr[7]),
        .I4(i_key_en),
        .I5(i_sam_write_adr[7]),
        .O(o_write_adr[7]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_write_adr[8]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_write_adr[8]),
        .I4(i_key_en),
        .I5(i_sam_write_adr[8]),
        .O(o_write_adr[8]));
  LUT6 #(
    .INIT(64'hFF00FE0EFF00F000)) 
    \o_write_adr[9]_INST_0 
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_write_adr[9]),
        .I4(i_key_en),
        .I5(i_sam_write_adr[9]),
        .O(o_write_adr[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00E4)) 
    sam_en_i_1
       (.I0(sam_en_reg_n_0),
        .I1(i_sam_en),
        .I2(key_en),
        .I3(i_key_en),
        .O(sam_en_i_1_n_0));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    sam_en_reg
       (.C(i_done),
        .CE(1'b1),
        .CLR(rst),
        .D(sam_en_i_1_n_0),
        .Q(sam_en_reg_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
