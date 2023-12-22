// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sat Dec  9 16:23:43 2023
// Host        : zenith running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/osm/Documents/Sect/SECT-MAYO/MAYO/vivado/hw-mayo/hw-mayo.gen/sources_1/bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_mayo_trng_arbiter_0_1/Mayo_sign_with_zynq_mayo_trng_arbiter_0_1_sim_netlist.v
// Design      : Mayo_sign_with_zynq_mayo_trng_arbiter_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Mayo_sign_with_zynq_mayo_trng_arbiter_0_1,mayo_trng_arbiter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "mayo_trng_arbiter,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Mayo_sign_with_zynq_mayo_trng_arbiter_0_1
   (i_trng_sel,
    o_trng_en,
    i_trng_random_data,
    i_trng_valid,
    i_trng0_en,
    o_trng0_random_data,
    o_trng0_valid,
    i_trng1_en,
    o_trng1_random_data,
    o_trng1_valid,
    i_trng2_en,
    o_trng2_random_data,
    o_trng2_valid);
  input [1:0]i_trng_sel;
  output o_trng_en;
  input [127:0]i_trng_random_data;
  input i_trng_valid;
  input i_trng0_en;
  output [127:0]o_trng0_random_data;
  output o_trng0_valid;
  input i_trng1_en;
  output [127:0]o_trng1_random_data;
  output o_trng1_valid;
  input i_trng2_en;
  output [127:0]o_trng2_random_data;
  output o_trng2_valid;

  wire i_trng0_en;
  wire i_trng1_en;
  wire i_trng2_en;
  wire [127:0]i_trng_random_data;
  wire [1:0]i_trng_sel;
  wire i_trng_valid;
  wire [127:0]o_trng0_random_data;
  wire o_trng0_valid;
  wire [127:0]o_trng1_random_data;
  wire o_trng1_valid;
  wire [127:0]o_trng2_random_data;
  wire o_trng2_valid;
  wire o_trng_en;

  Mayo_sign_with_zynq_mayo_trng_arbiter_0_1_mayo_trng_arbiter U0
       (.i_trng0_en(i_trng0_en),
        .i_trng1_en(i_trng1_en),
        .i_trng2_en(i_trng2_en),
        .i_trng_random_data(i_trng_random_data),
        .i_trng_sel(i_trng_sel),
        .i_trng_valid(i_trng_valid),
        .o_trng0_random_data(o_trng0_random_data),
        .o_trng0_valid(o_trng0_valid),
        .o_trng1_random_data(o_trng1_random_data),
        .o_trng1_valid(o_trng1_valid),
        .o_trng2_random_data(o_trng2_random_data),
        .o_trng2_valid(o_trng2_valid),
        .o_trng_en(o_trng_en));
endmodule

(* ORIG_REF_NAME = "mayo_trng_arbiter" *) 
module Mayo_sign_with_zynq_mayo_trng_arbiter_0_1_mayo_trng_arbiter
   (o_trng_en,
    o_trng0_valid,
    o_trng1_valid,
    o_trng2_valid,
    o_trng0_random_data,
    o_trng1_random_data,
    o_trng2_random_data,
    i_trng2_en,
    i_trng_sel,
    i_trng1_en,
    i_trng0_en,
    i_trng_valid,
    i_trng_random_data);
  output o_trng_en;
  output o_trng0_valid;
  output o_trng1_valid;
  output o_trng2_valid;
  output [127:0]o_trng0_random_data;
  output [127:0]o_trng1_random_data;
  output [127:0]o_trng2_random_data;
  input i_trng2_en;
  input [1:0]i_trng_sel;
  input i_trng1_en;
  input i_trng0_en;
  input i_trng_valid;
  input [127:0]i_trng_random_data;

  wire i_trng0_en;
  wire i_trng1_en;
  wire i_trng2_en;
  wire [127:0]i_trng_random_data;
  wire [1:0]i_trng_sel;
  wire i_trng_valid;
  wire [127:0]o_trng0_random_data;
  wire o_trng0_valid;
  wire [127:0]o_trng1_random_data;
  wire o_trng1_valid;
  wire [127:0]o_trng2_random_data;
  wire o_trng2_valid;
  wire o_trng_en;

  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \/i_ 
       (.I0(i_trng2_en),
        .I1(i_trng_sel[1]),
        .I2(i_trng1_en),
        .I3(i_trng_sel[0]),
        .I4(i_trng0_en),
        .O(o_trng_en));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[0]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[0]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[100]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[100]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[100]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[101]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[101]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[101]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[102]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[102]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[102]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[103]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[103]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[103]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[104]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[104]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[104]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[105]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[105]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[105]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[106]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[106]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[106]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[107]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[107]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[107]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[108]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[108]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[108]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[109]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[109]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[109]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[10]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[10]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[10]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[110]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[110]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[110]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[111]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[111]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[111]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[112]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[112]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[112]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[113]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[113]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[113]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[114]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[114]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[114]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[115]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[115]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[115]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[116]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[116]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[116]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[117]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[117]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[117]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[118]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[118]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[118]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[119]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[119]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[119]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[11]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[11]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[11]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[120]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[120]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[120]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[121]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[121]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[121]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[122]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[122]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[122]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[123]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[123]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[123]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[124]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[124]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[124]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[125]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[125]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[125]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[126]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[126]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[126]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[127]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[127]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[127]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[12]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[12]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[13]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[13]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[14]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[14]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[14]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[15]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[15]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[15]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[16]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[16]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[16]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[17]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[17]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[17]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[18]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[18]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[18]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[19]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[19]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[19]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[1]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[1]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[20]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[20]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[20]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[21]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[21]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[21]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[22]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[22]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[22]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[23]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[23]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[23]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[24]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[24]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[24]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[25]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[25]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[25]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[26]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[26]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[26]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[27]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[27]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[27]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[28]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[28]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[28]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[29]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[29]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[29]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[2]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[2]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[30]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[30]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[30]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[31]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[31]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[31]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[32]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[32]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[32]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[33]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[33]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[33]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[34]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[34]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[34]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[35]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[35]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[35]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[36]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[36]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[36]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[37]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[37]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[37]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[38]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[38]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[38]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[39]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[39]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[39]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[3]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[3]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[40]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[40]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[40]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[41]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[41]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[41]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[42]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[42]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[42]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[43]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[43]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[43]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[44]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[44]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[44]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[45]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[45]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[45]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[46]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[46]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[46]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[47]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[47]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[47]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[48]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[48]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[48]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[49]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[49]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[49]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[4]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[4]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[4]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[50]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[50]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[50]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[51]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[51]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[51]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[52]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[52]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[52]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[53]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[53]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[53]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[54]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[54]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[54]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[55]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[55]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[55]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[56]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[56]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[56]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[57]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[57]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[57]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[58]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[58]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[58]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[59]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[59]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[59]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[5]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[5]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[5]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[60]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[60]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[60]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[61]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[61]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[61]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[62]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[62]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[62]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[63]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[63]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[63]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[64]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[64]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[64]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[65]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[65]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[65]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[66]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[66]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[66]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[67]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[67]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[67]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[68]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[68]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[68]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[69]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[69]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[69]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[6]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[6]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[6]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[70]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[70]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[70]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[71]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[71]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[71]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[72]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[72]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[72]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[73]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[73]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[73]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[74]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[74]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[74]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[75]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[75]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[75]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[76]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[76]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[76]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[77]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[77]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[77]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[78]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[78]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[78]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[79]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[79]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[79]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[7]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[7]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[7]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[80]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[80]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[80]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[81]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[81]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[81]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[82]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[82]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[82]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[83]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[83]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[83]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[84]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[84]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[84]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[85]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[85]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[85]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[86]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[86]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[86]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[87]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[87]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[87]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[88]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[88]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[88]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[89]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[89]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[89]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[8]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[8]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[8]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[90]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[90]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[90]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[91]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[91]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[91]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[92]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[92]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[92]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[93]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[93]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[93]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[94]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[94]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[94]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[95]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[95]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[95]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[96]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[96]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[96]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[97]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[97]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[97]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[98]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[98]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[98]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[99]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[99]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[99]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_trng0_random_data[9]_INST_0 
       (.I0(i_trng_sel[0]),
        .I1(i_trng_random_data[9]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_random_data[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h02)) 
    o_trng0_valid__0
       (.I0(i_trng_valid),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng0_valid));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[0]_INST_0 
       (.I0(i_trng_random_data[0]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[0]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[100]_INST_0 
       (.I0(i_trng_random_data[100]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[100]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[101]_INST_0 
       (.I0(i_trng_random_data[101]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[101]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[102]_INST_0 
       (.I0(i_trng_random_data[102]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[102]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[103]_INST_0 
       (.I0(i_trng_random_data[103]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[103]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[104]_INST_0 
       (.I0(i_trng_random_data[104]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[104]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[105]_INST_0 
       (.I0(i_trng_random_data[105]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[105]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[106]_INST_0 
       (.I0(i_trng_random_data[106]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[106]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[107]_INST_0 
       (.I0(i_trng_random_data[107]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[107]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[108]_INST_0 
       (.I0(i_trng_random_data[108]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[108]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[109]_INST_0 
       (.I0(i_trng_random_data[109]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[109]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[10]_INST_0 
       (.I0(i_trng_random_data[10]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[10]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[110]_INST_0 
       (.I0(i_trng_random_data[110]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[110]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[111]_INST_0 
       (.I0(i_trng_random_data[111]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[111]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[112]_INST_0 
       (.I0(i_trng_random_data[112]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[112]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[113]_INST_0 
       (.I0(i_trng_random_data[113]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[113]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[114]_INST_0 
       (.I0(i_trng_random_data[114]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[114]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[115]_INST_0 
       (.I0(i_trng_random_data[115]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[115]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[116]_INST_0 
       (.I0(i_trng_random_data[116]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[116]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[117]_INST_0 
       (.I0(i_trng_random_data[117]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[117]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[118]_INST_0 
       (.I0(i_trng_random_data[118]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[118]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[119]_INST_0 
       (.I0(i_trng_random_data[119]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[119]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[11]_INST_0 
       (.I0(i_trng_random_data[11]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[11]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[120]_INST_0 
       (.I0(i_trng_random_data[120]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[120]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[121]_INST_0 
       (.I0(i_trng_random_data[121]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[121]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[122]_INST_0 
       (.I0(i_trng_random_data[122]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[122]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[123]_INST_0 
       (.I0(i_trng_random_data[123]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[123]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[124]_INST_0 
       (.I0(i_trng_random_data[124]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[124]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[125]_INST_0 
       (.I0(i_trng_random_data[125]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[125]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[126]_INST_0 
       (.I0(i_trng_random_data[126]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[126]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[127]_INST_0 
       (.I0(i_trng_random_data[127]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[127]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[12]_INST_0 
       (.I0(i_trng_random_data[12]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[13]_INST_0 
       (.I0(i_trng_random_data[13]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[14]_INST_0 
       (.I0(i_trng_random_data[14]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[14]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[15]_INST_0 
       (.I0(i_trng_random_data[15]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[15]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[16]_INST_0 
       (.I0(i_trng_random_data[16]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[16]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[17]_INST_0 
       (.I0(i_trng_random_data[17]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[17]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[18]_INST_0 
       (.I0(i_trng_random_data[18]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[18]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[19]_INST_0 
       (.I0(i_trng_random_data[19]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[19]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[1]_INST_0 
       (.I0(i_trng_random_data[1]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[20]_INST_0 
       (.I0(i_trng_random_data[20]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[20]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[21]_INST_0 
       (.I0(i_trng_random_data[21]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[21]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[22]_INST_0 
       (.I0(i_trng_random_data[22]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[22]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[23]_INST_0 
       (.I0(i_trng_random_data[23]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[23]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[24]_INST_0 
       (.I0(i_trng_random_data[24]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[24]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[25]_INST_0 
       (.I0(i_trng_random_data[25]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[25]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[26]_INST_0 
       (.I0(i_trng_random_data[26]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[26]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[27]_INST_0 
       (.I0(i_trng_random_data[27]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[27]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[28]_INST_0 
       (.I0(i_trng_random_data[28]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[28]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[29]_INST_0 
       (.I0(i_trng_random_data[29]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[29]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[2]_INST_0 
       (.I0(i_trng_random_data[2]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[30]_INST_0 
       (.I0(i_trng_random_data[30]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[30]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[31]_INST_0 
       (.I0(i_trng_random_data[31]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[31]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[32]_INST_0 
       (.I0(i_trng_random_data[32]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[32]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[33]_INST_0 
       (.I0(i_trng_random_data[33]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[33]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[34]_INST_0 
       (.I0(i_trng_random_data[34]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[34]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[35]_INST_0 
       (.I0(i_trng_random_data[35]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[35]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[36]_INST_0 
       (.I0(i_trng_random_data[36]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[36]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[37]_INST_0 
       (.I0(i_trng_random_data[37]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[37]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[38]_INST_0 
       (.I0(i_trng_random_data[38]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[38]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[39]_INST_0 
       (.I0(i_trng_random_data[39]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[39]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[3]_INST_0 
       (.I0(i_trng_random_data[3]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[40]_INST_0 
       (.I0(i_trng_random_data[40]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[40]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[41]_INST_0 
       (.I0(i_trng_random_data[41]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[41]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[42]_INST_0 
       (.I0(i_trng_random_data[42]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[42]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[43]_INST_0 
       (.I0(i_trng_random_data[43]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[43]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[44]_INST_0 
       (.I0(i_trng_random_data[44]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[44]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[45]_INST_0 
       (.I0(i_trng_random_data[45]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[45]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[46]_INST_0 
       (.I0(i_trng_random_data[46]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[46]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[47]_INST_0 
       (.I0(i_trng_random_data[47]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[47]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[48]_INST_0 
       (.I0(i_trng_random_data[48]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[48]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[49]_INST_0 
       (.I0(i_trng_random_data[49]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[49]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[4]_INST_0 
       (.I0(i_trng_random_data[4]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[4]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[50]_INST_0 
       (.I0(i_trng_random_data[50]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[50]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[51]_INST_0 
       (.I0(i_trng_random_data[51]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[51]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[52]_INST_0 
       (.I0(i_trng_random_data[52]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[52]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[53]_INST_0 
       (.I0(i_trng_random_data[53]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[53]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[54]_INST_0 
       (.I0(i_trng_random_data[54]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[54]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[55]_INST_0 
       (.I0(i_trng_random_data[55]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[55]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[56]_INST_0 
       (.I0(i_trng_random_data[56]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[56]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[57]_INST_0 
       (.I0(i_trng_random_data[57]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[57]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[58]_INST_0 
       (.I0(i_trng_random_data[58]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[58]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[59]_INST_0 
       (.I0(i_trng_random_data[59]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[59]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[5]_INST_0 
       (.I0(i_trng_random_data[5]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[5]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[60]_INST_0 
       (.I0(i_trng_random_data[60]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[60]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[61]_INST_0 
       (.I0(i_trng_random_data[61]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[61]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[62]_INST_0 
       (.I0(i_trng_random_data[62]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[62]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[63]_INST_0 
       (.I0(i_trng_random_data[63]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[63]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[64]_INST_0 
       (.I0(i_trng_random_data[64]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[64]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[65]_INST_0 
       (.I0(i_trng_random_data[65]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[65]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[66]_INST_0 
       (.I0(i_trng_random_data[66]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[66]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[67]_INST_0 
       (.I0(i_trng_random_data[67]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[67]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[68]_INST_0 
       (.I0(i_trng_random_data[68]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[68]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[69]_INST_0 
       (.I0(i_trng_random_data[69]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[69]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[6]_INST_0 
       (.I0(i_trng_random_data[6]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[6]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[70]_INST_0 
       (.I0(i_trng_random_data[70]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[70]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[71]_INST_0 
       (.I0(i_trng_random_data[71]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[71]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[72]_INST_0 
       (.I0(i_trng_random_data[72]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[72]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[73]_INST_0 
       (.I0(i_trng_random_data[73]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[73]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[74]_INST_0 
       (.I0(i_trng_random_data[74]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[74]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[75]_INST_0 
       (.I0(i_trng_random_data[75]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[75]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[76]_INST_0 
       (.I0(i_trng_random_data[76]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[76]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[77]_INST_0 
       (.I0(i_trng_random_data[77]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[77]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[78]_INST_0 
       (.I0(i_trng_random_data[78]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[78]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[79]_INST_0 
       (.I0(i_trng_random_data[79]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[79]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[7]_INST_0 
       (.I0(i_trng_random_data[7]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[7]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[80]_INST_0 
       (.I0(i_trng_random_data[80]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[80]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[81]_INST_0 
       (.I0(i_trng_random_data[81]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[81]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[82]_INST_0 
       (.I0(i_trng_random_data[82]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[82]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[83]_INST_0 
       (.I0(i_trng_random_data[83]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[83]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[84]_INST_0 
       (.I0(i_trng_random_data[84]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[84]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[85]_INST_0 
       (.I0(i_trng_random_data[85]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[85]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[86]_INST_0 
       (.I0(i_trng_random_data[86]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[86]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[87]_INST_0 
       (.I0(i_trng_random_data[87]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[87]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[88]_INST_0 
       (.I0(i_trng_random_data[88]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[88]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[89]_INST_0 
       (.I0(i_trng_random_data[89]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[89]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[8]_INST_0 
       (.I0(i_trng_random_data[8]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[8]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[90]_INST_0 
       (.I0(i_trng_random_data[90]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[90]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[91]_INST_0 
       (.I0(i_trng_random_data[91]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[91]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[92]_INST_0 
       (.I0(i_trng_random_data[92]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[92]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[93]_INST_0 
       (.I0(i_trng_random_data[93]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[93]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[94]_INST_0 
       (.I0(i_trng_random_data[94]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[94]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[95]_INST_0 
       (.I0(i_trng_random_data[95]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[95]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[96]_INST_0 
       (.I0(i_trng_random_data[96]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[96]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[97]_INST_0 
       (.I0(i_trng_random_data[97]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[97]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[98]_INST_0 
       (.I0(i_trng_random_data[98]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[98]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[99]_INST_0 
       (.I0(i_trng_random_data[99]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[99]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng1_random_data[9]_INST_0 
       (.I0(i_trng_random_data[9]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_sel[1]),
        .O(o_trng1_random_data[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h40)) 
    o_trng1_valid__0
       (.I0(i_trng_sel[1]),
        .I1(i_trng_sel[0]),
        .I2(i_trng_valid),
        .O(o_trng1_valid));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[0]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[0]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[0]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[100]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[100]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[100]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[101]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[101]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[101]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[102]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[102]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[102]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[103]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[103]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[103]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[104]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[104]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[104]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[105]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[105]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[105]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[106]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[106]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[106]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[107]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[107]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[107]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[108]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[108]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[108]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[109]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[109]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[109]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[10]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[10]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[10]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[110]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[110]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[110]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[111]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[111]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[111]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[112]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[112]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[112]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[113]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[113]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[113]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[114]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[114]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[114]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[115]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[115]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[115]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[116]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[116]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[116]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[117]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[117]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[117]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[118]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[118]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[118]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[119]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[119]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[119]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[11]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[11]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[11]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[120]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[120]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[120]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[121]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[121]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[121]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[122]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[122]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[122]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[123]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[123]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[123]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[124]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[124]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[124]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[125]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[125]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[125]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[126]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[126]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[126]));
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[127]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[127]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[127]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[12]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[12]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[12]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[13]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[13]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[13]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[14]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[14]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[14]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[15]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[15]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[15]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[16]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[16]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[16]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[17]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[17]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[17]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[18]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[18]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[18]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[19]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[19]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[19]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[1]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[1]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[1]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[20]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[20]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[20]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[21]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[21]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[21]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[22]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[22]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[22]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[23]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[23]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[23]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[24]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[24]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[24]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[25]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[25]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[25]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[26]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[26]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[26]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[27]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[27]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[27]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[28]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[28]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[28]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[29]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[29]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[29]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[2]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[2]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[2]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[30]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[30]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[30]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[31]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[31]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[31]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[32]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[32]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[32]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[33]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[33]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[33]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[34]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[34]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[34]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[35]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[35]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[35]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[36]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[36]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[36]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[37]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[37]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[37]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[38]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[38]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[38]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[39]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[39]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[39]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[3]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[3]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[3]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[40]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[40]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[40]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[41]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[41]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[41]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[42]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[42]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[42]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[43]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[43]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[43]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[44]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[44]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[44]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[45]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[45]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[45]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[46]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[46]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[46]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[47]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[47]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[47]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[48]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[48]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[48]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[49]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[49]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[49]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[4]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[4]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[4]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[50]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[50]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[50]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[51]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[51]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[51]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[52]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[52]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[52]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[53]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[53]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[53]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[54]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[54]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[54]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[55]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[55]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[55]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[56]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[56]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[56]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[57]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[57]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[57]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[58]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[58]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[58]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[59]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[59]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[59]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[5]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[5]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[5]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[60]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[60]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[60]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[61]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[61]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[61]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[62]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[62]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[62]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[63]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[63]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[63]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[64]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[64]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[64]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[65]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[65]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[65]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[66]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[66]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[66]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[67]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[67]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[67]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[68]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[68]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[68]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[69]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[69]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[69]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[6]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[6]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[6]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[70]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[70]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[70]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[71]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[71]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[71]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[72]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[72]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[72]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[73]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[73]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[73]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[74]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[74]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[74]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[75]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[75]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[75]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[76]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[76]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[76]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[77]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[77]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[77]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[78]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[78]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[78]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[79]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[79]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[79]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[7]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[7]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[7]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[80]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[80]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[80]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[81]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[81]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[81]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[82]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[82]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[82]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[83]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[83]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[83]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[84]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[84]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[84]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[85]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[85]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[85]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[86]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[86]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[86]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[87]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[87]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[87]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[88]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[88]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[88]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[89]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[89]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[89]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[8]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[8]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[8]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[90]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[90]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[90]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[91]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[91]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[91]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[92]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[92]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[92]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[93]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[93]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[93]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[94]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[94]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[94]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[95]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[95]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[95]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[96]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[96]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[96]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[97]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[97]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[97]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[98]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[98]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[98]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[99]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[99]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[99]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_trng2_random_data[9]_INST_0 
       (.I0(i_trng_sel[1]),
        .I1(i_trng_random_data[9]),
        .I2(i_trng_sel[0]),
        .O(o_trng2_random_data[9]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h40)) 
    o_trng2_valid__0
       (.I0(i_trng_sel[0]),
        .I1(i_trng_valid),
        .I2(i_trng_sel[1]),
        .O(o_trng2_valid));
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
