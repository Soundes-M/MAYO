// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Jan 10 17:56:55 2023
// Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_mayo_hash_bram_arbit_0_0/Mayo_keygen_no_zynq_mayo_hash_bram_arbit_0_0_sim_netlist.v
// Design      : Mayo_keygen_no_zynq_mayo_hash_bram_arbit_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Mayo_keygen_no_zynq_mayo_hash_bram_arbit_0_0,mayo_hash_bram_arbiter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "mayo_hash_bram_arbiter,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Mayo_keygen_no_zynq_mayo_hash_bram_arbit_0_0
   (bram_sel,
    hash_din,
    hash_addr,
    hash_en,
    hash_control,
    hash_we,
    hash_dout,
    BRAM0_din,
    BRAM0_addr,
    BRAM0_en,
    BRAM0_we,
    BRAM0_dout,
    BRAM0_control,
    BRAM1_din,
    BRAM1_addr,
    BRAM1_en,
    BRAM1_we,
    BRAM1_dout,
    BRAM1_control);
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

  wire [31:0]BRAM0_addr;
  wire BRAM0_control;
  wire [31:0]BRAM0_din;
  wire [31:0]BRAM0_dout;
  wire BRAM0_en;
  wire [3:0]BRAM0_we;
  wire [31:0]BRAM1_addr;
  wire BRAM1_control;
  wire [31:0]BRAM1_din;
  wire [31:0]BRAM1_dout;
  wire BRAM1_en;
  wire [3:0]BRAM1_we;
  wire bram_sel;
  wire [31:0]hash_addr;
  wire hash_control;
  wire [31:0]hash_din;
  wire [31:0]hash_dout;
  wire hash_en;
  wire [3:0]hash_we;

  LUT2 #(
    .INIT(4'h2)) 
    BRAM0_control_INST_0
       (.I0(hash_control),
        .I1(bram_sel),
        .O(BRAM0_control));
  LUT2 #(
    .INIT(4'h2)) 
    BRAM0_en_INST_0
       (.I0(hash_en),
        .I1(bram_sel),
        .O(BRAM0_en));
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_we[0]_INST_0 
       (.I0(hash_we[0]),
        .I1(bram_sel),
        .O(BRAM0_we[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_we[1]_INST_0 
       (.I0(hash_we[1]),
        .I1(bram_sel),
        .O(BRAM0_we[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_we[2]_INST_0 
       (.I0(hash_we[2]),
        .I1(bram_sel),
        .O(BRAM0_we[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_we[3]_INST_0 
       (.I0(hash_we[3]),
        .I1(bram_sel),
        .O(BRAM0_we[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_addr[0]_INST_0 
       (.I0(bram_sel),
        .I1(hash_addr[0]),
        .O(BRAM1_addr[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_addr[10]_INST_0 
       (.I0(bram_sel),
        .I1(hash_addr[10]),
        .O(BRAM1_addr[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_addr[11]_INST_0 
       (.I0(bram_sel),
        .I1(hash_addr[11]),
        .O(BRAM1_addr[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_addr[12]_INST_0 
       (.I0(bram_sel),
        .I1(hash_addr[12]),
        .O(BRAM1_addr[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_addr[13]_INST_0 
       (.I0(bram_sel),
        .I1(hash_addr[13]),
        .O(BRAM1_addr[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_addr[14]_INST_0 
       (.I0(bram_sel),
        .I1(hash_addr[14]),
        .O(BRAM1_addr[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_addr[15]_INST_0 
       (.I0(bram_sel),
        .I1(hash_addr[15]),
        .O(BRAM1_addr[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_addr[16]_INST_0 
       (.I0(bram_sel),
        .I1(hash_addr[16]),
        .O(BRAM1_addr[16]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_addr[17]_INST_0 
       (.I0(bram_sel),
        .I1(hash_addr[17]),
        .O(BRAM1_addr[17]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_addr[18]_INST_0 
       (.I0(bram_sel),
        .I1(hash_addr[18]),
        .O(BRAM1_addr[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_addr[19]_INST_0 
       (.I0(bram_sel),
        .I1(hash_addr[19]),
        .O(BRAM1_addr[19]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_addr[1]_INST_0 
       (.I0(bram_sel),
        .I1(hash_addr[1]),
        .O(BRAM1_addr[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_addr[20]_INST_0 
       (.I0(bram_sel),
        .I1(hash_addr[20]),
        .O(BRAM1_addr[20]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_addr[21]_INST_0 
       (.I0(bram_sel),
        .I1(hash_addr[21]),
        .O(BRAM1_addr[21]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_addr[22]_INST_0 
       (.I0(bram_sel),
        .I1(hash_addr[22]),
        .O(BRAM1_addr[22]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_addr[23]_INST_0 
       (.I0(bram_sel),
        .I1(hash_addr[23]),
        .O(BRAM1_addr[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_addr[24]_INST_0 
       (.I0(bram_sel),
        .I1(hash_addr[24]),
        .O(BRAM1_addr[24]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_addr[25]_INST_0 
       (.I0(bram_sel),
        .I1(hash_addr[25]),
        .O(BRAM1_addr[25]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_addr[26]_INST_0 
       (.I0(bram_sel),
        .I1(hash_addr[26]),
        .O(BRAM1_addr[26]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_addr[27]_INST_0 
       (.I0(bram_sel),
        .I1(hash_addr[27]),
        .O(BRAM1_addr[27]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_addr[28]_INST_0 
       (.I0(bram_sel),
        .I1(hash_addr[28]),
        .O(BRAM1_addr[28]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_addr[29]_INST_0 
       (.I0(bram_sel),
        .I1(hash_addr[29]),
        .O(BRAM1_addr[29]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_addr[2]_INST_0 
       (.I0(bram_sel),
        .I1(hash_addr[2]),
        .O(BRAM1_addr[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_addr[30]_INST_0 
       (.I0(bram_sel),
        .I1(hash_addr[30]),
        .O(BRAM1_addr[30]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_addr[31]_INST_0 
       (.I0(bram_sel),
        .I1(hash_addr[31]),
        .O(BRAM1_addr[31]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_addr[3]_INST_0 
       (.I0(bram_sel),
        .I1(hash_addr[3]),
        .O(BRAM1_addr[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_addr[4]_INST_0 
       (.I0(bram_sel),
        .I1(hash_addr[4]),
        .O(BRAM1_addr[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_addr[5]_INST_0 
       (.I0(bram_sel),
        .I1(hash_addr[5]),
        .O(BRAM1_addr[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_addr[6]_INST_0 
       (.I0(bram_sel),
        .I1(hash_addr[6]),
        .O(BRAM1_addr[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_addr[7]_INST_0 
       (.I0(bram_sel),
        .I1(hash_addr[7]),
        .O(BRAM1_addr[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_addr[8]_INST_0 
       (.I0(bram_sel),
        .I1(hash_addr[8]),
        .O(BRAM1_addr[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_addr[9]_INST_0 
       (.I0(bram_sel),
        .I1(hash_addr[9]),
        .O(BRAM1_addr[9]));
  LUT2 #(
    .INIT(4'h8)) 
    BRAM1_control_INST_0
       (.I0(bram_sel),
        .I1(hash_control),
        .O(BRAM1_control));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_din[0]_INST_0 
       (.I0(bram_sel),
        .I1(hash_din[0]),
        .O(BRAM1_din[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_din[10]_INST_0 
       (.I0(bram_sel),
        .I1(hash_din[10]),
        .O(BRAM1_din[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_din[11]_INST_0 
       (.I0(bram_sel),
        .I1(hash_din[11]),
        .O(BRAM1_din[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_din[12]_INST_0 
       (.I0(bram_sel),
        .I1(hash_din[12]),
        .O(BRAM1_din[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_din[13]_INST_0 
       (.I0(bram_sel),
        .I1(hash_din[13]),
        .O(BRAM1_din[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_din[14]_INST_0 
       (.I0(bram_sel),
        .I1(hash_din[14]),
        .O(BRAM1_din[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_din[15]_INST_0 
       (.I0(bram_sel),
        .I1(hash_din[15]),
        .O(BRAM1_din[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_din[16]_INST_0 
       (.I0(bram_sel),
        .I1(hash_din[16]),
        .O(BRAM1_din[16]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_din[17]_INST_0 
       (.I0(bram_sel),
        .I1(hash_din[17]),
        .O(BRAM1_din[17]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_din[18]_INST_0 
       (.I0(bram_sel),
        .I1(hash_din[18]),
        .O(BRAM1_din[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_din[19]_INST_0 
       (.I0(bram_sel),
        .I1(hash_din[19]),
        .O(BRAM1_din[19]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_din[1]_INST_0 
       (.I0(bram_sel),
        .I1(hash_din[1]),
        .O(BRAM1_din[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_din[20]_INST_0 
       (.I0(bram_sel),
        .I1(hash_din[20]),
        .O(BRAM1_din[20]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_din[21]_INST_0 
       (.I0(bram_sel),
        .I1(hash_din[21]),
        .O(BRAM1_din[21]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_din[22]_INST_0 
       (.I0(bram_sel),
        .I1(hash_din[22]),
        .O(BRAM1_din[22]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_din[23]_INST_0 
       (.I0(bram_sel),
        .I1(hash_din[23]),
        .O(BRAM1_din[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_din[24]_INST_0 
       (.I0(bram_sel),
        .I1(hash_din[24]),
        .O(BRAM1_din[24]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_din[25]_INST_0 
       (.I0(bram_sel),
        .I1(hash_din[25]),
        .O(BRAM1_din[25]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_din[26]_INST_0 
       (.I0(bram_sel),
        .I1(hash_din[26]),
        .O(BRAM1_din[26]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_din[27]_INST_0 
       (.I0(bram_sel),
        .I1(hash_din[27]),
        .O(BRAM1_din[27]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_din[28]_INST_0 
       (.I0(bram_sel),
        .I1(hash_din[28]),
        .O(BRAM1_din[28]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_din[29]_INST_0 
       (.I0(bram_sel),
        .I1(hash_din[29]),
        .O(BRAM1_din[29]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_din[2]_INST_0 
       (.I0(bram_sel),
        .I1(hash_din[2]),
        .O(BRAM1_din[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_din[30]_INST_0 
       (.I0(bram_sel),
        .I1(hash_din[30]),
        .O(BRAM1_din[30]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_din[31]_INST_0 
       (.I0(bram_sel),
        .I1(hash_din[31]),
        .O(BRAM1_din[31]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_din[3]_INST_0 
       (.I0(bram_sel),
        .I1(hash_din[3]),
        .O(BRAM1_din[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_din[4]_INST_0 
       (.I0(bram_sel),
        .I1(hash_din[4]),
        .O(BRAM1_din[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_din[5]_INST_0 
       (.I0(bram_sel),
        .I1(hash_din[5]),
        .O(BRAM1_din[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_din[6]_INST_0 
       (.I0(bram_sel),
        .I1(hash_din[6]),
        .O(BRAM1_din[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_din[7]_INST_0 
       (.I0(bram_sel),
        .I1(hash_din[7]),
        .O(BRAM1_din[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_din[8]_INST_0 
       (.I0(bram_sel),
        .I1(hash_din[8]),
        .O(BRAM1_din[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_din[9]_INST_0 
       (.I0(bram_sel),
        .I1(hash_din[9]),
        .O(BRAM1_din[9]));
  LUT2 #(
    .INIT(4'h8)) 
    BRAM1_en_INST_0
       (.I0(bram_sel),
        .I1(hash_en),
        .O(BRAM1_en));
  Mayo_keygen_no_zynq_mayo_hash_bram_arbit_0_0_mayo_hash_bram_arbiter U0
       (.BRAM0_addr(BRAM0_addr),
        .BRAM0_din(BRAM0_din),
        .BRAM0_dout(BRAM0_dout),
        .BRAM1_dout(BRAM1_dout),
        .BRAM1_we(BRAM1_we),
        .bram_sel(bram_sel),
        .hash_addr(hash_addr),
        .hash_din(hash_din),
        .hash_dout(hash_dout),
        .hash_we(hash_we));
endmodule

(* ORIG_REF_NAME = "mayo_hash_bram_arbiter" *) 
module Mayo_keygen_no_zynq_mayo_hash_bram_arbit_0_0_mayo_hash_bram_arbiter
   (BRAM1_we,
    hash_dout,
    BRAM0_din,
    BRAM0_addr,
    bram_sel,
    hash_we,
    BRAM1_dout,
    BRAM0_dout,
    hash_din,
    hash_addr);
  output [3:0]BRAM1_we;
  output [31:0]hash_dout;
  output [31:0]BRAM0_din;
  output [31:0]BRAM0_addr;
  input bram_sel;
  input [3:0]hash_we;
  input [31:0]BRAM1_dout;
  input [31:0]BRAM0_dout;
  input [31:0]hash_din;
  input [31:0]hash_addr;

  wire [31:0]BRAM0_addr;
  wire [31:0]BRAM0_din;
  wire [31:0]BRAM0_dout;
  wire [31:0]BRAM1_dout;
  wire [3:0]BRAM1_we;
  wire bram_sel;
  wire [31:0]hash_addr;
  wire [31:0]hash_din;
  wire [31:0]hash_dout;
  wire [3:0]hash_we;

  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_addr[0]_INST_0 
       (.I0(hash_addr[0]),
        .I1(bram_sel),
        .O(BRAM0_addr[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_addr[10]_INST_0 
       (.I0(hash_addr[10]),
        .I1(bram_sel),
        .O(BRAM0_addr[10]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_addr[11]_INST_0 
       (.I0(hash_addr[11]),
        .I1(bram_sel),
        .O(BRAM0_addr[11]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_addr[12]_INST_0 
       (.I0(hash_addr[12]),
        .I1(bram_sel),
        .O(BRAM0_addr[12]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_addr[13]_INST_0 
       (.I0(hash_addr[13]),
        .I1(bram_sel),
        .O(BRAM0_addr[13]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_addr[14]_INST_0 
       (.I0(hash_addr[14]),
        .I1(bram_sel),
        .O(BRAM0_addr[14]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_addr[15]_INST_0 
       (.I0(hash_addr[15]),
        .I1(bram_sel),
        .O(BRAM0_addr[15]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_addr[16]_INST_0 
       (.I0(hash_addr[16]),
        .I1(bram_sel),
        .O(BRAM0_addr[16]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_addr[17]_INST_0 
       (.I0(hash_addr[17]),
        .I1(bram_sel),
        .O(BRAM0_addr[17]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_addr[18]_INST_0 
       (.I0(hash_addr[18]),
        .I1(bram_sel),
        .O(BRAM0_addr[18]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_addr[19]_INST_0 
       (.I0(hash_addr[19]),
        .I1(bram_sel),
        .O(BRAM0_addr[19]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_addr[1]_INST_0 
       (.I0(hash_addr[1]),
        .I1(bram_sel),
        .O(BRAM0_addr[1]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_addr[20]_INST_0 
       (.I0(hash_addr[20]),
        .I1(bram_sel),
        .O(BRAM0_addr[20]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_addr[21]_INST_0 
       (.I0(hash_addr[21]),
        .I1(bram_sel),
        .O(BRAM0_addr[21]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_addr[22]_INST_0 
       (.I0(hash_addr[22]),
        .I1(bram_sel),
        .O(BRAM0_addr[22]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_addr[23]_INST_0 
       (.I0(hash_addr[23]),
        .I1(bram_sel),
        .O(BRAM0_addr[23]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_addr[24]_INST_0 
       (.I0(hash_addr[24]),
        .I1(bram_sel),
        .O(BRAM0_addr[24]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_addr[25]_INST_0 
       (.I0(hash_addr[25]),
        .I1(bram_sel),
        .O(BRAM0_addr[25]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_addr[26]_INST_0 
       (.I0(hash_addr[26]),
        .I1(bram_sel),
        .O(BRAM0_addr[26]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_addr[27]_INST_0 
       (.I0(hash_addr[27]),
        .I1(bram_sel),
        .O(BRAM0_addr[27]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_addr[28]_INST_0 
       (.I0(hash_addr[28]),
        .I1(bram_sel),
        .O(BRAM0_addr[28]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_addr[29]_INST_0 
       (.I0(hash_addr[29]),
        .I1(bram_sel),
        .O(BRAM0_addr[29]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_addr[2]_INST_0 
       (.I0(hash_addr[2]),
        .I1(bram_sel),
        .O(BRAM0_addr[2]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_addr[30]_INST_0 
       (.I0(hash_addr[30]),
        .I1(bram_sel),
        .O(BRAM0_addr[30]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_addr[31]_INST_0 
       (.I0(hash_addr[31]),
        .I1(bram_sel),
        .O(BRAM0_addr[31]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_addr[3]_INST_0 
       (.I0(hash_addr[3]),
        .I1(bram_sel),
        .O(BRAM0_addr[3]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_addr[4]_INST_0 
       (.I0(hash_addr[4]),
        .I1(bram_sel),
        .O(BRAM0_addr[4]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_addr[5]_INST_0 
       (.I0(hash_addr[5]),
        .I1(bram_sel),
        .O(BRAM0_addr[5]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_addr[6]_INST_0 
       (.I0(hash_addr[6]),
        .I1(bram_sel),
        .O(BRAM0_addr[6]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_addr[7]_INST_0 
       (.I0(hash_addr[7]),
        .I1(bram_sel),
        .O(BRAM0_addr[7]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_addr[8]_INST_0 
       (.I0(hash_addr[8]),
        .I1(bram_sel),
        .O(BRAM0_addr[8]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_addr[9]_INST_0 
       (.I0(hash_addr[9]),
        .I1(bram_sel),
        .O(BRAM0_addr[9]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_din[0]_INST_0 
       (.I0(hash_din[0]),
        .I1(bram_sel),
        .O(BRAM0_din[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_din[10]_INST_0 
       (.I0(hash_din[10]),
        .I1(bram_sel),
        .O(BRAM0_din[10]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_din[11]_INST_0 
       (.I0(hash_din[11]),
        .I1(bram_sel),
        .O(BRAM0_din[11]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_din[12]_INST_0 
       (.I0(hash_din[12]),
        .I1(bram_sel),
        .O(BRAM0_din[12]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_din[13]_INST_0 
       (.I0(hash_din[13]),
        .I1(bram_sel),
        .O(BRAM0_din[13]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_din[14]_INST_0 
       (.I0(hash_din[14]),
        .I1(bram_sel),
        .O(BRAM0_din[14]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_din[15]_INST_0 
       (.I0(hash_din[15]),
        .I1(bram_sel),
        .O(BRAM0_din[15]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_din[16]_INST_0 
       (.I0(hash_din[16]),
        .I1(bram_sel),
        .O(BRAM0_din[16]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_din[17]_INST_0 
       (.I0(hash_din[17]),
        .I1(bram_sel),
        .O(BRAM0_din[17]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_din[18]_INST_0 
       (.I0(hash_din[18]),
        .I1(bram_sel),
        .O(BRAM0_din[18]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_din[19]_INST_0 
       (.I0(hash_din[19]),
        .I1(bram_sel),
        .O(BRAM0_din[19]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_din[1]_INST_0 
       (.I0(hash_din[1]),
        .I1(bram_sel),
        .O(BRAM0_din[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_din[20]_INST_0 
       (.I0(hash_din[20]),
        .I1(bram_sel),
        .O(BRAM0_din[20]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_din[21]_INST_0 
       (.I0(hash_din[21]),
        .I1(bram_sel),
        .O(BRAM0_din[21]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_din[22]_INST_0 
       (.I0(hash_din[22]),
        .I1(bram_sel),
        .O(BRAM0_din[22]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_din[23]_INST_0 
       (.I0(hash_din[23]),
        .I1(bram_sel),
        .O(BRAM0_din[23]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_din[24]_INST_0 
       (.I0(hash_din[24]),
        .I1(bram_sel),
        .O(BRAM0_din[24]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_din[25]_INST_0 
       (.I0(hash_din[25]),
        .I1(bram_sel),
        .O(BRAM0_din[25]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_din[26]_INST_0 
       (.I0(hash_din[26]),
        .I1(bram_sel),
        .O(BRAM0_din[26]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_din[27]_INST_0 
       (.I0(hash_din[27]),
        .I1(bram_sel),
        .O(BRAM0_din[27]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_din[28]_INST_0 
       (.I0(hash_din[28]),
        .I1(bram_sel),
        .O(BRAM0_din[28]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_din[29]_INST_0 
       (.I0(hash_din[29]),
        .I1(bram_sel),
        .O(BRAM0_din[29]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_din[2]_INST_0 
       (.I0(hash_din[2]),
        .I1(bram_sel),
        .O(BRAM0_din[2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_din[30]_INST_0 
       (.I0(hash_din[30]),
        .I1(bram_sel),
        .O(BRAM0_din[30]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_din[31]_INST_0 
       (.I0(hash_din[31]),
        .I1(bram_sel),
        .O(BRAM0_din[31]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_din[3]_INST_0 
       (.I0(hash_din[3]),
        .I1(bram_sel),
        .O(BRAM0_din[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_din[4]_INST_0 
       (.I0(hash_din[4]),
        .I1(bram_sel),
        .O(BRAM0_din[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_din[5]_INST_0 
       (.I0(hash_din[5]),
        .I1(bram_sel),
        .O(BRAM0_din[5]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_din[6]_INST_0 
       (.I0(hash_din[6]),
        .I1(bram_sel),
        .O(BRAM0_din[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_din[7]_INST_0 
       (.I0(hash_din[7]),
        .I1(bram_sel),
        .O(BRAM0_din[7]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_din[8]_INST_0 
       (.I0(hash_din[8]),
        .I1(bram_sel),
        .O(BRAM0_din[8]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BRAM0_din[9]_INST_0 
       (.I0(hash_din[9]),
        .I1(bram_sel),
        .O(BRAM0_din[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_we[0]_INST_0 
       (.I0(bram_sel),
        .I1(hash_we[0]),
        .O(BRAM1_we[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_we[1]_INST_0 
       (.I0(bram_sel),
        .I1(hash_we[1]),
        .O(BRAM1_we[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_we[2]_INST_0 
       (.I0(bram_sel),
        .I1(hash_we[2]),
        .O(BRAM1_we[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM1_we[3]_INST_0 
       (.I0(bram_sel),
        .I1(hash_we[3]),
        .O(BRAM1_we[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hash_dout[0]_INST_0 
       (.I0(BRAM1_dout[0]),
        .I1(BRAM0_dout[0]),
        .I2(bram_sel),
        .O(hash_dout[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hash_dout[10]_INST_0 
       (.I0(BRAM1_dout[10]),
        .I1(BRAM0_dout[10]),
        .I2(bram_sel),
        .O(hash_dout[10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hash_dout[11]_INST_0 
       (.I0(BRAM1_dout[11]),
        .I1(BRAM0_dout[11]),
        .I2(bram_sel),
        .O(hash_dout[11]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hash_dout[12]_INST_0 
       (.I0(BRAM1_dout[12]),
        .I1(BRAM0_dout[12]),
        .I2(bram_sel),
        .O(hash_dout[12]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hash_dout[13]_INST_0 
       (.I0(BRAM1_dout[13]),
        .I1(BRAM0_dout[13]),
        .I2(bram_sel),
        .O(hash_dout[13]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hash_dout[14]_INST_0 
       (.I0(BRAM1_dout[14]),
        .I1(BRAM0_dout[14]),
        .I2(bram_sel),
        .O(hash_dout[14]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hash_dout[15]_INST_0 
       (.I0(BRAM1_dout[15]),
        .I1(BRAM0_dout[15]),
        .I2(bram_sel),
        .O(hash_dout[15]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hash_dout[16]_INST_0 
       (.I0(BRAM1_dout[16]),
        .I1(BRAM0_dout[16]),
        .I2(bram_sel),
        .O(hash_dout[16]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hash_dout[17]_INST_0 
       (.I0(BRAM1_dout[17]),
        .I1(BRAM0_dout[17]),
        .I2(bram_sel),
        .O(hash_dout[17]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hash_dout[18]_INST_0 
       (.I0(BRAM1_dout[18]),
        .I1(BRAM0_dout[18]),
        .I2(bram_sel),
        .O(hash_dout[18]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hash_dout[19]_INST_0 
       (.I0(BRAM1_dout[19]),
        .I1(BRAM0_dout[19]),
        .I2(bram_sel),
        .O(hash_dout[19]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hash_dout[1]_INST_0 
       (.I0(BRAM1_dout[1]),
        .I1(BRAM0_dout[1]),
        .I2(bram_sel),
        .O(hash_dout[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hash_dout[20]_INST_0 
       (.I0(BRAM1_dout[20]),
        .I1(BRAM0_dout[20]),
        .I2(bram_sel),
        .O(hash_dout[20]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hash_dout[21]_INST_0 
       (.I0(BRAM1_dout[21]),
        .I1(BRAM0_dout[21]),
        .I2(bram_sel),
        .O(hash_dout[21]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hash_dout[22]_INST_0 
       (.I0(BRAM1_dout[22]),
        .I1(BRAM0_dout[22]),
        .I2(bram_sel),
        .O(hash_dout[22]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hash_dout[23]_INST_0 
       (.I0(BRAM1_dout[23]),
        .I1(BRAM0_dout[23]),
        .I2(bram_sel),
        .O(hash_dout[23]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hash_dout[24]_INST_0 
       (.I0(BRAM1_dout[24]),
        .I1(BRAM0_dout[24]),
        .I2(bram_sel),
        .O(hash_dout[24]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hash_dout[25]_INST_0 
       (.I0(BRAM1_dout[25]),
        .I1(BRAM0_dout[25]),
        .I2(bram_sel),
        .O(hash_dout[25]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hash_dout[26]_INST_0 
       (.I0(BRAM1_dout[26]),
        .I1(BRAM0_dout[26]),
        .I2(bram_sel),
        .O(hash_dout[26]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hash_dout[27]_INST_0 
       (.I0(BRAM1_dout[27]),
        .I1(BRAM0_dout[27]),
        .I2(bram_sel),
        .O(hash_dout[27]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hash_dout[28]_INST_0 
       (.I0(BRAM1_dout[28]),
        .I1(BRAM0_dout[28]),
        .I2(bram_sel),
        .O(hash_dout[28]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hash_dout[29]_INST_0 
       (.I0(BRAM1_dout[29]),
        .I1(BRAM0_dout[29]),
        .I2(bram_sel),
        .O(hash_dout[29]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hash_dout[2]_INST_0 
       (.I0(BRAM1_dout[2]),
        .I1(BRAM0_dout[2]),
        .I2(bram_sel),
        .O(hash_dout[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hash_dout[30]_INST_0 
       (.I0(BRAM1_dout[30]),
        .I1(BRAM0_dout[30]),
        .I2(bram_sel),
        .O(hash_dout[30]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hash_dout[31]_INST_0 
       (.I0(BRAM1_dout[31]),
        .I1(BRAM0_dout[31]),
        .I2(bram_sel),
        .O(hash_dout[31]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hash_dout[3]_INST_0 
       (.I0(BRAM1_dout[3]),
        .I1(BRAM0_dout[3]),
        .I2(bram_sel),
        .O(hash_dout[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hash_dout[4]_INST_0 
       (.I0(BRAM1_dout[4]),
        .I1(BRAM0_dout[4]),
        .I2(bram_sel),
        .O(hash_dout[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hash_dout[5]_INST_0 
       (.I0(BRAM1_dout[5]),
        .I1(BRAM0_dout[5]),
        .I2(bram_sel),
        .O(hash_dout[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hash_dout[6]_INST_0 
       (.I0(BRAM1_dout[6]),
        .I1(BRAM0_dout[6]),
        .I2(bram_sel),
        .O(hash_dout[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hash_dout[7]_INST_0 
       (.I0(BRAM1_dout[7]),
        .I1(BRAM0_dout[7]),
        .I2(bram_sel),
        .O(hash_dout[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hash_dout[8]_INST_0 
       (.I0(BRAM1_dout[8]),
        .I1(BRAM0_dout[8]),
        .I2(bram_sel),
        .O(hash_dout[8]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \hash_dout[9]_INST_0 
       (.I0(BRAM1_dout[9]),
        .I1(BRAM0_dout[9]),
        .I2(bram_sel),
        .O(hash_dout[9]));
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
