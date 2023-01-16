// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Jan 10 17:57:01 2023
// Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_mayo_trng_arbiter_0_0/Mayo_keygen_no_zynq_mayo_trng_arbiter_0_0_sim_netlist.v
// Design      : Mayo_keygen_no_zynq_mayo_trng_arbiter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Mayo_keygen_no_zynq_mayo_trng_arbiter_0_0,mayo_trng_arbiter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "mayo_trng_arbiter,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Mayo_keygen_no_zynq_mayo_trng_arbiter_0_0
   (i_trng_sel,
    o_trng_r,
    o_trng_w,
    o_trng_data,
    i_trng_data,
    i_trng_valid,
    i_trng_done,
    i_trng0_r,
    i_trng0_w,
    i_trng0_data,
    o_trng0_data,
    o_trng0_valid,
    o_trng0_done,
    i_trng1_r,
    i_trng1_w,
    i_trng1_data,
    o_trng1_data,
    o_trng1_valid,
    o_trng1_done);
  input i_trng_sel;
  output o_trng_r;
  output o_trng_w;
  output [31:0]o_trng_data;
  input [31:0]i_trng_data;
  input i_trng_valid;
  input i_trng_done;
  input i_trng0_r;
  input i_trng0_w;
  input [31:0]i_trng0_data;
  output [31:0]o_trng0_data;
  output o_trng0_valid;
  output o_trng0_done;
  input i_trng1_r;
  input i_trng1_w;
  input [31:0]i_trng1_data;
  output [31:0]o_trng1_data;
  output o_trng1_valid;
  output o_trng1_done;

  wire [31:0]i_trng0_data;
  wire i_trng0_r;
  wire i_trng0_w;
  wire [31:0]i_trng1_data;
  wire i_trng1_r;
  wire i_trng1_w;
  wire [31:0]i_trng_data;
  wire i_trng_done;
  wire i_trng_sel;
  wire i_trng_valid;
  wire [31:0]o_trng0_data;
  wire o_trng0_done;
  wire o_trng0_valid;
  wire [31:0]o_trng1_data;
  wire o_trng1_done;
  wire o_trng1_valid;
  wire [31:0]o_trng_data;
  wire o_trng_r;
  wire o_trng_w;

  Mayo_keygen_no_zynq_mayo_trng_arbiter_0_0_mayo_trng_arbiter U0
       (.i_trng0_data(i_trng0_data),
        .i_trng1_data(i_trng1_data),
        .i_trng_data(i_trng_data),
        .i_trng_sel(i_trng_sel),
        .o_trng0_data(o_trng0_data),
        .o_trng_data(o_trng_data));
  LUT2 #(
    .INIT(4'h2)) 
    o_trng0_done_INST_0
       (.I0(i_trng_done),
        .I1(i_trng_sel),
        .O(o_trng0_done));
  LUT2 #(
    .INIT(4'h2)) 
    o_trng0_valid_INST_0
       (.I0(i_trng_valid),
        .I1(i_trng_sel),
        .O(o_trng0_valid));
  LUT2 #(
    .INIT(4'h8)) 
    \o_trng1_data[0]_INST_0 
       (.I0(i_trng_sel),
        .I1(i_trng_data[0]),
        .O(o_trng1_data[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \o_trng1_data[10]_INST_0 
       (.I0(i_trng_sel),
        .I1(i_trng_data[10]),
        .O(o_trng1_data[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \o_trng1_data[11]_INST_0 
       (.I0(i_trng_sel),
        .I1(i_trng_data[11]),
        .O(o_trng1_data[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \o_trng1_data[12]_INST_0 
       (.I0(i_trng_sel),
        .I1(i_trng_data[12]),
        .O(o_trng1_data[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \o_trng1_data[13]_INST_0 
       (.I0(i_trng_sel),
        .I1(i_trng_data[13]),
        .O(o_trng1_data[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \o_trng1_data[14]_INST_0 
       (.I0(i_trng_sel),
        .I1(i_trng_data[14]),
        .O(o_trng1_data[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \o_trng1_data[15]_INST_0 
       (.I0(i_trng_sel),
        .I1(i_trng_data[15]),
        .O(o_trng1_data[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \o_trng1_data[16]_INST_0 
       (.I0(i_trng_sel),
        .I1(i_trng_data[16]),
        .O(o_trng1_data[16]));
  LUT2 #(
    .INIT(4'h8)) 
    \o_trng1_data[17]_INST_0 
       (.I0(i_trng_sel),
        .I1(i_trng_data[17]),
        .O(o_trng1_data[17]));
  LUT2 #(
    .INIT(4'h8)) 
    \o_trng1_data[18]_INST_0 
       (.I0(i_trng_sel),
        .I1(i_trng_data[18]),
        .O(o_trng1_data[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \o_trng1_data[19]_INST_0 
       (.I0(i_trng_sel),
        .I1(i_trng_data[19]),
        .O(o_trng1_data[19]));
  LUT2 #(
    .INIT(4'h8)) 
    \o_trng1_data[1]_INST_0 
       (.I0(i_trng_sel),
        .I1(i_trng_data[1]),
        .O(o_trng1_data[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \o_trng1_data[20]_INST_0 
       (.I0(i_trng_sel),
        .I1(i_trng_data[20]),
        .O(o_trng1_data[20]));
  LUT2 #(
    .INIT(4'h8)) 
    \o_trng1_data[21]_INST_0 
       (.I0(i_trng_sel),
        .I1(i_trng_data[21]),
        .O(o_trng1_data[21]));
  LUT2 #(
    .INIT(4'h8)) 
    \o_trng1_data[22]_INST_0 
       (.I0(i_trng_sel),
        .I1(i_trng_data[22]),
        .O(o_trng1_data[22]));
  LUT2 #(
    .INIT(4'h8)) 
    \o_trng1_data[23]_INST_0 
       (.I0(i_trng_sel),
        .I1(i_trng_data[23]),
        .O(o_trng1_data[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \o_trng1_data[24]_INST_0 
       (.I0(i_trng_sel),
        .I1(i_trng_data[24]),
        .O(o_trng1_data[24]));
  LUT2 #(
    .INIT(4'h8)) 
    \o_trng1_data[25]_INST_0 
       (.I0(i_trng_sel),
        .I1(i_trng_data[25]),
        .O(o_trng1_data[25]));
  LUT2 #(
    .INIT(4'h8)) 
    \o_trng1_data[26]_INST_0 
       (.I0(i_trng_sel),
        .I1(i_trng_data[26]),
        .O(o_trng1_data[26]));
  LUT2 #(
    .INIT(4'h8)) 
    \o_trng1_data[27]_INST_0 
       (.I0(i_trng_sel),
        .I1(i_trng_data[27]),
        .O(o_trng1_data[27]));
  LUT2 #(
    .INIT(4'h8)) 
    \o_trng1_data[28]_INST_0 
       (.I0(i_trng_sel),
        .I1(i_trng_data[28]),
        .O(o_trng1_data[28]));
  LUT2 #(
    .INIT(4'h8)) 
    \o_trng1_data[29]_INST_0 
       (.I0(i_trng_sel),
        .I1(i_trng_data[29]),
        .O(o_trng1_data[29]));
  LUT2 #(
    .INIT(4'h8)) 
    \o_trng1_data[2]_INST_0 
       (.I0(i_trng_sel),
        .I1(i_trng_data[2]),
        .O(o_trng1_data[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \o_trng1_data[30]_INST_0 
       (.I0(i_trng_sel),
        .I1(i_trng_data[30]),
        .O(o_trng1_data[30]));
  LUT2 #(
    .INIT(4'h8)) 
    \o_trng1_data[31]_INST_0 
       (.I0(i_trng_sel),
        .I1(i_trng_data[31]),
        .O(o_trng1_data[31]));
  LUT2 #(
    .INIT(4'h8)) 
    \o_trng1_data[3]_INST_0 
       (.I0(i_trng_sel),
        .I1(i_trng_data[3]),
        .O(o_trng1_data[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \o_trng1_data[4]_INST_0 
       (.I0(i_trng_sel),
        .I1(i_trng_data[4]),
        .O(o_trng1_data[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \o_trng1_data[5]_INST_0 
       (.I0(i_trng_sel),
        .I1(i_trng_data[5]),
        .O(o_trng1_data[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \o_trng1_data[6]_INST_0 
       (.I0(i_trng_sel),
        .I1(i_trng_data[6]),
        .O(o_trng1_data[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \o_trng1_data[7]_INST_0 
       (.I0(i_trng_sel),
        .I1(i_trng_data[7]),
        .O(o_trng1_data[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \o_trng1_data[8]_INST_0 
       (.I0(i_trng_sel),
        .I1(i_trng_data[8]),
        .O(o_trng1_data[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \o_trng1_data[9]_INST_0 
       (.I0(i_trng_sel),
        .I1(i_trng_data[9]),
        .O(o_trng1_data[9]));
  LUT2 #(
    .INIT(4'h8)) 
    o_trng1_done_INST_0
       (.I0(i_trng_sel),
        .I1(i_trng_done),
        .O(o_trng1_done));
  LUT2 #(
    .INIT(4'h8)) 
    o_trng1_valid_INST_0
       (.I0(i_trng_sel),
        .I1(i_trng_valid),
        .O(o_trng1_valid));
  LUT3 #(
    .INIT(8'hB8)) 
    o_trng_r_INST_0
       (.I0(i_trng1_r),
        .I1(i_trng_sel),
        .I2(i_trng0_r),
        .O(o_trng_r));
  LUT3 #(
    .INIT(8'hB8)) 
    o_trng_w_INST_0
       (.I0(i_trng1_w),
        .I1(i_trng_sel),
        .I2(i_trng0_w),
        .O(o_trng_w));
endmodule

(* ORIG_REF_NAME = "mayo_trng_arbiter" *) 
module Mayo_keygen_no_zynq_mayo_trng_arbiter_0_0_mayo_trng_arbiter
   (o_trng_data,
    o_trng0_data,
    i_trng1_data,
    i_trng0_data,
    i_trng_sel,
    i_trng_data);
  output [31:0]o_trng_data;
  output [31:0]o_trng0_data;
  input [31:0]i_trng1_data;
  input [31:0]i_trng0_data;
  input i_trng_sel;
  input [31:0]i_trng_data;

  wire [31:0]i_trng0_data;
  wire [31:0]i_trng1_data;
  wire [31:0]i_trng_data;
  wire i_trng_sel;
  wire [31:0]o_trng0_data;
  wire [31:0]o_trng_data;

  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_trng0_data[0]_INST_0 
       (.I0(i_trng_data[0]),
        .I1(i_trng_sel),
        .O(o_trng0_data[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_trng0_data[10]_INST_0 
       (.I0(i_trng_data[10]),
        .I1(i_trng_sel),
        .O(o_trng0_data[10]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_trng0_data[11]_INST_0 
       (.I0(i_trng_data[11]),
        .I1(i_trng_sel),
        .O(o_trng0_data[11]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_trng0_data[12]_INST_0 
       (.I0(i_trng_data[12]),
        .I1(i_trng_sel),
        .O(o_trng0_data[12]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_trng0_data[13]_INST_0 
       (.I0(i_trng_data[13]),
        .I1(i_trng_sel),
        .O(o_trng0_data[13]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_trng0_data[14]_INST_0 
       (.I0(i_trng_data[14]),
        .I1(i_trng_sel),
        .O(o_trng0_data[14]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_trng0_data[15]_INST_0 
       (.I0(i_trng_data[15]),
        .I1(i_trng_sel),
        .O(o_trng0_data[15]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_trng0_data[16]_INST_0 
       (.I0(i_trng_data[16]),
        .I1(i_trng_sel),
        .O(o_trng0_data[16]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_trng0_data[17]_INST_0 
       (.I0(i_trng_data[17]),
        .I1(i_trng_sel),
        .O(o_trng0_data[17]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_trng0_data[18]_INST_0 
       (.I0(i_trng_data[18]),
        .I1(i_trng_sel),
        .O(o_trng0_data[18]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_trng0_data[19]_INST_0 
       (.I0(i_trng_data[19]),
        .I1(i_trng_sel),
        .O(o_trng0_data[19]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_trng0_data[1]_INST_0 
       (.I0(i_trng_data[1]),
        .I1(i_trng_sel),
        .O(o_trng0_data[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_trng0_data[20]_INST_0 
       (.I0(i_trng_data[20]),
        .I1(i_trng_sel),
        .O(o_trng0_data[20]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_trng0_data[21]_INST_0 
       (.I0(i_trng_data[21]),
        .I1(i_trng_sel),
        .O(o_trng0_data[21]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_trng0_data[22]_INST_0 
       (.I0(i_trng_data[22]),
        .I1(i_trng_sel),
        .O(o_trng0_data[22]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_trng0_data[23]_INST_0 
       (.I0(i_trng_data[23]),
        .I1(i_trng_sel),
        .O(o_trng0_data[23]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_trng0_data[24]_INST_0 
       (.I0(i_trng_data[24]),
        .I1(i_trng_sel),
        .O(o_trng0_data[24]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_trng0_data[25]_INST_0 
       (.I0(i_trng_data[25]),
        .I1(i_trng_sel),
        .O(o_trng0_data[25]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_trng0_data[26]_INST_0 
       (.I0(i_trng_data[26]),
        .I1(i_trng_sel),
        .O(o_trng0_data[26]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_trng0_data[27]_INST_0 
       (.I0(i_trng_data[27]),
        .I1(i_trng_sel),
        .O(o_trng0_data[27]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_trng0_data[28]_INST_0 
       (.I0(i_trng_data[28]),
        .I1(i_trng_sel),
        .O(o_trng0_data[28]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_trng0_data[29]_INST_0 
       (.I0(i_trng_data[29]),
        .I1(i_trng_sel),
        .O(o_trng0_data[29]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_trng0_data[2]_INST_0 
       (.I0(i_trng_data[2]),
        .I1(i_trng_sel),
        .O(o_trng0_data[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_trng0_data[30]_INST_0 
       (.I0(i_trng_data[30]),
        .I1(i_trng_sel),
        .O(o_trng0_data[30]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_trng0_data[31]_INST_0 
       (.I0(i_trng_data[31]),
        .I1(i_trng_sel),
        .O(o_trng0_data[31]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_trng0_data[3]_INST_0 
       (.I0(i_trng_data[3]),
        .I1(i_trng_sel),
        .O(o_trng0_data[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_trng0_data[4]_INST_0 
       (.I0(i_trng_data[4]),
        .I1(i_trng_sel),
        .O(o_trng0_data[4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_trng0_data[5]_INST_0 
       (.I0(i_trng_data[5]),
        .I1(i_trng_sel),
        .O(o_trng0_data[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_trng0_data[6]_INST_0 
       (.I0(i_trng_data[6]),
        .I1(i_trng_sel),
        .O(o_trng0_data[6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_trng0_data[7]_INST_0 
       (.I0(i_trng_data[7]),
        .I1(i_trng_sel),
        .O(o_trng0_data[7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_trng0_data[8]_INST_0 
       (.I0(i_trng_data[8]),
        .I1(i_trng_sel),
        .O(o_trng0_data[8]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_trng0_data[9]_INST_0 
       (.I0(i_trng_data[9]),
        .I1(i_trng_sel),
        .O(o_trng0_data[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_trng_data[0]_INST_0 
       (.I0(i_trng1_data[0]),
        .I1(i_trng0_data[0]),
        .I2(i_trng_sel),
        .O(o_trng_data[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_trng_data[10]_INST_0 
       (.I0(i_trng1_data[10]),
        .I1(i_trng0_data[10]),
        .I2(i_trng_sel),
        .O(o_trng_data[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_trng_data[11]_INST_0 
       (.I0(i_trng1_data[11]),
        .I1(i_trng0_data[11]),
        .I2(i_trng_sel),
        .O(o_trng_data[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_trng_data[12]_INST_0 
       (.I0(i_trng1_data[12]),
        .I1(i_trng0_data[12]),
        .I2(i_trng_sel),
        .O(o_trng_data[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_trng_data[13]_INST_0 
       (.I0(i_trng1_data[13]),
        .I1(i_trng0_data[13]),
        .I2(i_trng_sel),
        .O(o_trng_data[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_trng_data[14]_INST_0 
       (.I0(i_trng1_data[14]),
        .I1(i_trng0_data[14]),
        .I2(i_trng_sel),
        .O(o_trng_data[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_trng_data[15]_INST_0 
       (.I0(i_trng1_data[15]),
        .I1(i_trng0_data[15]),
        .I2(i_trng_sel),
        .O(o_trng_data[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_trng_data[16]_INST_0 
       (.I0(i_trng1_data[16]),
        .I1(i_trng0_data[16]),
        .I2(i_trng_sel),
        .O(o_trng_data[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_trng_data[17]_INST_0 
       (.I0(i_trng1_data[17]),
        .I1(i_trng0_data[17]),
        .I2(i_trng_sel),
        .O(o_trng_data[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_trng_data[18]_INST_0 
       (.I0(i_trng1_data[18]),
        .I1(i_trng0_data[18]),
        .I2(i_trng_sel),
        .O(o_trng_data[18]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_trng_data[19]_INST_0 
       (.I0(i_trng1_data[19]),
        .I1(i_trng0_data[19]),
        .I2(i_trng_sel),
        .O(o_trng_data[19]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_trng_data[1]_INST_0 
       (.I0(i_trng1_data[1]),
        .I1(i_trng0_data[1]),
        .I2(i_trng_sel),
        .O(o_trng_data[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_trng_data[20]_INST_0 
       (.I0(i_trng1_data[20]),
        .I1(i_trng0_data[20]),
        .I2(i_trng_sel),
        .O(o_trng_data[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_trng_data[21]_INST_0 
       (.I0(i_trng1_data[21]),
        .I1(i_trng0_data[21]),
        .I2(i_trng_sel),
        .O(o_trng_data[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_trng_data[22]_INST_0 
       (.I0(i_trng1_data[22]),
        .I1(i_trng0_data[22]),
        .I2(i_trng_sel),
        .O(o_trng_data[22]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_trng_data[23]_INST_0 
       (.I0(i_trng1_data[23]),
        .I1(i_trng0_data[23]),
        .I2(i_trng_sel),
        .O(o_trng_data[23]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_trng_data[24]_INST_0 
       (.I0(i_trng1_data[24]),
        .I1(i_trng0_data[24]),
        .I2(i_trng_sel),
        .O(o_trng_data[24]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_trng_data[25]_INST_0 
       (.I0(i_trng1_data[25]),
        .I1(i_trng0_data[25]),
        .I2(i_trng_sel),
        .O(o_trng_data[25]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_trng_data[26]_INST_0 
       (.I0(i_trng1_data[26]),
        .I1(i_trng0_data[26]),
        .I2(i_trng_sel),
        .O(o_trng_data[26]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_trng_data[27]_INST_0 
       (.I0(i_trng1_data[27]),
        .I1(i_trng0_data[27]),
        .I2(i_trng_sel),
        .O(o_trng_data[27]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_trng_data[28]_INST_0 
       (.I0(i_trng1_data[28]),
        .I1(i_trng0_data[28]),
        .I2(i_trng_sel),
        .O(o_trng_data[28]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_trng_data[29]_INST_0 
       (.I0(i_trng1_data[29]),
        .I1(i_trng0_data[29]),
        .I2(i_trng_sel),
        .O(o_trng_data[29]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_trng_data[2]_INST_0 
       (.I0(i_trng1_data[2]),
        .I1(i_trng0_data[2]),
        .I2(i_trng_sel),
        .O(o_trng_data[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_trng_data[30]_INST_0 
       (.I0(i_trng1_data[30]),
        .I1(i_trng0_data[30]),
        .I2(i_trng_sel),
        .O(o_trng_data[30]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_trng_data[31]_INST_0 
       (.I0(i_trng1_data[31]),
        .I1(i_trng0_data[31]),
        .I2(i_trng_sel),
        .O(o_trng_data[31]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_trng_data[3]_INST_0 
       (.I0(i_trng1_data[3]),
        .I1(i_trng0_data[3]),
        .I2(i_trng_sel),
        .O(o_trng_data[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_trng_data[4]_INST_0 
       (.I0(i_trng1_data[4]),
        .I1(i_trng0_data[4]),
        .I2(i_trng_sel),
        .O(o_trng_data[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_trng_data[5]_INST_0 
       (.I0(i_trng1_data[5]),
        .I1(i_trng0_data[5]),
        .I2(i_trng_sel),
        .O(o_trng_data[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_trng_data[6]_INST_0 
       (.I0(i_trng1_data[6]),
        .I1(i_trng0_data[6]),
        .I2(i_trng_sel),
        .O(o_trng_data[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_trng_data[7]_INST_0 
       (.I0(i_trng1_data[7]),
        .I1(i_trng0_data[7]),
        .I2(i_trng_sel),
        .O(o_trng_data[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_trng_data[8]_INST_0 
       (.I0(i_trng1_data[8]),
        .I1(i_trng0_data[8]),
        .I2(i_trng_sel),
        .O(o_trng_data[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_trng_data[9]_INST_0 
       (.I0(i_trng1_data[9]),
        .I1(i_trng0_data[9]),
        .I2(i_trng_sel),
        .O(o_trng_data[9]));
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
