// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Nov 12 18:19:38 2023
// Host        : zenith running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/osm/Documents/Sect/SECT-MAYO/MAYO/vivado/hw-mayo/hw-mayo.gen/sources_1/bd/Mayo_sign/ip/Mayo_sign_mayo_add_vectors_arb_0_0_1/Mayo_sign_mayo_add_vectors_arb_0_0_sim_netlist.v
// Design      : Mayo_sign_mayo_add_vectors_arb_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Mayo_sign_mayo_add_vectors_arb_0_0,mayo_add_vectors_arbiter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "mayo_add_vectors_arbiter,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Mayo_sign_mayo_add_vectors_arb_0_0
   (bram_sel,
    o_mema_dout,
    i_mema_din,
    i_mema_addr,
    i_mema_en,
    i_mema_rst,
    i_mema_we,
    i_controla,
    o_memb_dout,
    i_memb_din,
    i_memb_addr,
    i_memb_en,
    i_memb_rst,
    i_memb_we,
    i_controlb,
    o_memc_dout,
    i_memc_din,
    i_memc_addr,
    i_memc_en,
    i_memc_rst,
    i_memc_we,
    i_controlc,
    i_BRAM0A_dout,
    o_BRAM0A_din,
    o_BRAM0A_addr,
    o_BRAM0A_en,
    o_BRAM0A_rst,
    o_BRAM0A_we,
    o_BRAM0A_control,
    i_BRAM1A_dout,
    o_BRAM1A_din,
    o_BRAM1A_addr,
    o_BRAM1A_en,
    o_BRAM1A_rst,
    o_BRAM1A_we,
    o_BRAM1A_control,
    i_BRAM2A_dout,
    o_BRAM2A_din,
    o_BRAM2A_addr,
    o_BRAM2A_en,
    o_BRAM2A_rst,
    o_BRAM2A_we,
    o_BRAM2A_control,
    i_BRAM2B_dout,
    o_BRAM2B_din,
    o_BRAM2B_addr,
    o_BRAM2B_en,
    o_BRAM2B_rst,
    o_BRAM2B_we,
    o_BRAM2B_control);
  input [4:0]bram_sel;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddA DOUT" *) output [31:0]o_mema_dout;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddA DIN" *) input [31:0]i_mema_din;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddA ADDR" *) input [31:0]i_mema_addr;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddA EN" *) input i_mema_en;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddA RST" *) input i_mema_rst;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddA WE" *) input [3:0]i_mema_we;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddA CTRL" *) input i_controla;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddB DOUT" *) output [31:0]o_memb_dout;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddB DIN" *) input [31:0]i_memb_din;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddB ADDR" *) input [31:0]i_memb_addr;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddB EN" *) input i_memb_en;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddB RST" *) input i_memb_rst;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddB WE" *) input [3:0]i_memb_we;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddB CTRL" *) input i_controlb;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddC DOUT" *) output [31:0]o_memc_dout;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddC DIN" *) input [31:0]i_memc_din;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddC ADDR" *) input [31:0]i_memc_addr;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddC EN" *) input i_memc_en;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddC RST" *) input i_memc_rst;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddC WE" *) input [3:0]i_memc_we;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_I_AddC CTRL" *) input i_controlc;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add0A DOUT" *) input [31:0]i_BRAM0A_dout;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add0A DIN" *) output [31:0]o_BRAM0A_din;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add0A ADDR" *) output [31:0]o_BRAM0A_addr;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add0A EN" *) output o_BRAM0A_en;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add0A RST" *) output o_BRAM0A_rst;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add0A WE" *) output [3:0]o_BRAM0A_we;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add0A CTRL" *) output o_BRAM0A_control;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add1A DOUT" *) input [31:0]i_BRAM1A_dout;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add1A DIN" *) output [31:0]o_BRAM1A_din;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add1A ADDR" *) output [31:0]o_BRAM1A_addr;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add1A EN" *) output o_BRAM1A_en;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add1A RST" *) output o_BRAM1A_rst;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add1A WE" *) output [3:0]o_BRAM1A_we;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add1A CTRL" *) output o_BRAM1A_control;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2A DOUT" *) input [31:0]i_BRAM2A_dout;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2A DIN" *) output [31:0]o_BRAM2A_din;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2A ADDR" *) output [31:0]o_BRAM2A_addr;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2A EN" *) output o_BRAM2A_en;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2A RST" *) output o_BRAM2A_rst;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2A WE" *) output [3:0]o_BRAM2A_we;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2A CTRL" *) output o_BRAM2A_control;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2B DOUT" *) input [31:0]i_BRAM2B_dout;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2B DIN" *) output [31:0]o_BRAM2B_din;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2B ADDR" *) output [31:0]o_BRAM2B_addr;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2B EN" *) output o_BRAM2B_en;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2B RST" *) output o_BRAM2B_rst;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2B WE" *) output [3:0]o_BRAM2B_we;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_O_Add2B CTRL" *) output o_BRAM2B_control;

  wire \U0/o_mema_dout1__0 ;
  wire \U0/o_memc_dout12_out__0 ;
  wire [4:0]bram_sel;
  wire [31:0]i_BRAM0A_dout;
  wire [31:0]i_BRAM1A_dout;
  wire [31:0]i_BRAM2A_dout;
  wire [31:0]i_BRAM2B_dout;
  wire i_controla;
  wire i_controlb;
  wire i_controlc;
  wire [31:0]i_mema_addr;
  wire [31:0]i_mema_din;
  wire i_mema_en;
  wire i_mema_rst;
  wire [3:0]i_mema_we;
  wire [31:0]i_memb_addr;
  wire [31:0]i_memb_din;
  wire i_memb_en;
  wire i_memb_rst;
  wire [3:0]i_memb_we;
  wire [31:0]i_memc_addr;
  wire [31:0]i_memc_din;
  wire i_memc_en;
  wire i_memc_rst;
  wire [3:0]i_memc_we;
  wire [31:0]o_BRAM0A_addr;
  wire o_BRAM0A_control;
  wire [31:0]o_BRAM0A_din;
  wire o_BRAM0A_en;
  wire o_BRAM0A_rst;
  wire [3:0]o_BRAM0A_we;
  wire [31:0]o_BRAM1A_addr;
  wire o_BRAM1A_control;
  wire [31:0]o_BRAM1A_din;
  wire o_BRAM1A_en;
  wire o_BRAM1A_rst;
  wire [3:0]o_BRAM1A_we;
  wire [31:0]o_BRAM2A_addr;
  wire o_BRAM2A_control;
  wire [31:0]o_BRAM2A_din;
  wire o_BRAM2A_en;
  wire o_BRAM2A_rst;
  wire [3:0]o_BRAM2A_we;
  wire [31:0]o_BRAM2B_addr;
  wire o_BRAM2B_control;
  wire [31:0]o_BRAM2B_din;
  wire o_BRAM2B_en;
  wire o_BRAM2B_en_INST_0_i_2_n_0;
  wire o_BRAM2B_rst;
  wire [3:0]o_BRAM2B_we;
  wire [31:0]o_mema_dout;
  wire \o_mema_dout[31]_INST_0_i_2_n_0 ;
  wire [31:0]o_memb_dout;
  wire [31:0]o_memc_dout;
  wire \o_memc_dout[31]_INST_0_i_1_n_0 ;
  wire p_0_in;

  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_addr[0]_INST_0 
       (.I0(i_mema_addr[0]),
        .I1(i_memb_addr[0]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_addr[0]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_addr[10]_INST_0 
       (.I0(i_mema_addr[10]),
        .I1(i_memb_addr[10]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_addr[10]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_addr[11]_INST_0 
       (.I0(i_mema_addr[11]),
        .I1(i_memb_addr[11]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_addr[11]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_addr[12]_INST_0 
       (.I0(i_mema_addr[12]),
        .I1(i_memb_addr[12]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_addr[12]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_addr[13]_INST_0 
       (.I0(i_mema_addr[13]),
        .I1(i_memb_addr[13]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_addr[13]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_addr[14]_INST_0 
       (.I0(i_mema_addr[14]),
        .I1(i_memb_addr[14]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_addr[14]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_addr[15]_INST_0 
       (.I0(i_mema_addr[15]),
        .I1(i_memb_addr[15]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_addr[15]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_addr[16]_INST_0 
       (.I0(i_mema_addr[16]),
        .I1(i_memb_addr[16]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_addr[16]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_addr[17]_INST_0 
       (.I0(i_mema_addr[17]),
        .I1(i_memb_addr[17]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_addr[17]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_addr[18]_INST_0 
       (.I0(i_mema_addr[18]),
        .I1(i_memb_addr[18]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_addr[18]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_addr[19]_INST_0 
       (.I0(i_mema_addr[19]),
        .I1(i_memb_addr[19]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_addr[19]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_addr[1]_INST_0 
       (.I0(i_mema_addr[1]),
        .I1(i_memb_addr[1]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_addr[1]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_addr[20]_INST_0 
       (.I0(i_mema_addr[20]),
        .I1(i_memb_addr[20]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_addr[20]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_addr[21]_INST_0 
       (.I0(i_mema_addr[21]),
        .I1(i_memb_addr[21]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_addr[21]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_addr[22]_INST_0 
       (.I0(i_mema_addr[22]),
        .I1(i_memb_addr[22]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_addr[22]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_addr[23]_INST_0 
       (.I0(i_mema_addr[23]),
        .I1(i_memb_addr[23]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_addr[23]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_addr[24]_INST_0 
       (.I0(i_mema_addr[24]),
        .I1(i_memb_addr[24]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_addr[24]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_addr[25]_INST_0 
       (.I0(i_mema_addr[25]),
        .I1(i_memb_addr[25]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_addr[25]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_addr[26]_INST_0 
       (.I0(i_mema_addr[26]),
        .I1(i_memb_addr[26]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_addr[26]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_addr[27]_INST_0 
       (.I0(i_mema_addr[27]),
        .I1(i_memb_addr[27]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_addr[27]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_addr[28]_INST_0 
       (.I0(i_mema_addr[28]),
        .I1(i_memb_addr[28]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_addr[28]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_addr[29]_INST_0 
       (.I0(i_mema_addr[29]),
        .I1(i_memb_addr[29]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_addr[29]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_addr[2]_INST_0 
       (.I0(i_mema_addr[2]),
        .I1(i_memb_addr[2]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_addr[2]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_addr[30]_INST_0 
       (.I0(i_mema_addr[30]),
        .I1(i_memb_addr[30]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_addr[30]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_addr[31]_INST_0 
       (.I0(i_mema_addr[31]),
        .I1(i_memb_addr[31]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_addr[31]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_addr[3]_INST_0 
       (.I0(i_mema_addr[3]),
        .I1(i_memb_addr[3]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_addr[3]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_addr[4]_INST_0 
       (.I0(i_mema_addr[4]),
        .I1(i_memb_addr[4]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_addr[4]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_addr[5]_INST_0 
       (.I0(i_mema_addr[5]),
        .I1(i_memb_addr[5]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_addr[5]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_addr[6]_INST_0 
       (.I0(i_mema_addr[6]),
        .I1(i_memb_addr[6]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_addr[6]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_addr[7]_INST_0 
       (.I0(i_mema_addr[7]),
        .I1(i_memb_addr[7]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_addr[7]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_addr[8]_INST_0 
       (.I0(i_mema_addr[8]),
        .I1(i_memb_addr[8]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_addr[8]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_addr[9]_INST_0 
       (.I0(i_mema_addr[9]),
        .I1(i_memb_addr[9]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_addr[9]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    o_BRAM0A_control_INST_0
       (.I0(i_controla),
        .I1(i_controlb),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_control));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_din[0]_INST_0 
       (.I0(i_mema_din[0]),
        .I1(i_memb_din[0]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_din[0]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_din[10]_INST_0 
       (.I0(i_mema_din[10]),
        .I1(i_memb_din[10]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_din[10]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_din[11]_INST_0 
       (.I0(i_mema_din[11]),
        .I1(i_memb_din[11]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_din[11]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_din[12]_INST_0 
       (.I0(i_mema_din[12]),
        .I1(i_memb_din[12]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_din[12]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_din[13]_INST_0 
       (.I0(i_mema_din[13]),
        .I1(i_memb_din[13]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_din[13]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_din[14]_INST_0 
       (.I0(i_mema_din[14]),
        .I1(i_memb_din[14]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_din[14]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_din[15]_INST_0 
       (.I0(i_mema_din[15]),
        .I1(i_memb_din[15]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_din[15]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_din[16]_INST_0 
       (.I0(i_mema_din[16]),
        .I1(i_memb_din[16]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_din[16]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_din[17]_INST_0 
       (.I0(i_mema_din[17]),
        .I1(i_memb_din[17]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_din[17]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_din[18]_INST_0 
       (.I0(i_mema_din[18]),
        .I1(i_memb_din[18]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_din[18]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_din[19]_INST_0 
       (.I0(i_mema_din[19]),
        .I1(i_memb_din[19]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_din[19]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_din[1]_INST_0 
       (.I0(i_mema_din[1]),
        .I1(i_memb_din[1]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_din[1]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_din[20]_INST_0 
       (.I0(i_mema_din[20]),
        .I1(i_memb_din[20]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_din[20]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_din[21]_INST_0 
       (.I0(i_mema_din[21]),
        .I1(i_memb_din[21]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_din[21]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_din[22]_INST_0 
       (.I0(i_mema_din[22]),
        .I1(i_memb_din[22]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_din[22]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_din[23]_INST_0 
       (.I0(i_mema_din[23]),
        .I1(i_memb_din[23]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_din[23]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_din[24]_INST_0 
       (.I0(i_mema_din[24]),
        .I1(i_memb_din[24]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_din[24]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_din[25]_INST_0 
       (.I0(i_mema_din[25]),
        .I1(i_memb_din[25]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_din[25]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_din[26]_INST_0 
       (.I0(i_mema_din[26]),
        .I1(i_memb_din[26]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_din[26]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_din[27]_INST_0 
       (.I0(i_mema_din[27]),
        .I1(i_memb_din[27]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_din[27]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_din[28]_INST_0 
       (.I0(i_mema_din[28]),
        .I1(i_memb_din[28]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_din[28]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_din[29]_INST_0 
       (.I0(i_mema_din[29]),
        .I1(i_memb_din[29]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_din[29]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_din[2]_INST_0 
       (.I0(i_mema_din[2]),
        .I1(i_memb_din[2]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_din[2]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_din[30]_INST_0 
       (.I0(i_mema_din[30]),
        .I1(i_memb_din[30]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_din[30]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_din[31]_INST_0 
       (.I0(i_mema_din[31]),
        .I1(i_memb_din[31]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_din[31]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_din[3]_INST_0 
       (.I0(i_mema_din[3]),
        .I1(i_memb_din[3]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_din[3]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_din[4]_INST_0 
       (.I0(i_mema_din[4]),
        .I1(i_memb_din[4]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_din[4]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_din[5]_INST_0 
       (.I0(i_mema_din[5]),
        .I1(i_memb_din[5]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_din[5]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_din[6]_INST_0 
       (.I0(i_mema_din[6]),
        .I1(i_memb_din[6]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_din[6]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_din[7]_INST_0 
       (.I0(i_mema_din[7]),
        .I1(i_memb_din[7]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_din[7]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_din[8]_INST_0 
       (.I0(i_mema_din[8]),
        .I1(i_memb_din[8]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_din[8]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_din[9]_INST_0 
       (.I0(i_mema_din[9]),
        .I1(i_memb_din[9]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_din[9]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    o_BRAM0A_en_INST_0
       (.I0(i_mema_en),
        .I1(i_memb_en),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_en));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    o_BRAM0A_rst_INST_0
       (.I0(i_mema_rst),
        .I1(i_memb_rst),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_rst));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_we[0]_INST_0 
       (.I0(i_mema_we[0]),
        .I1(i_memb_we[0]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_we[0]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_we[1]_INST_0 
       (.I0(i_mema_we[1]),
        .I1(i_memb_we[1]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_we[1]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_we[2]_INST_0 
       (.I0(i_mema_we[2]),
        .I1(i_memb_we[2]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_we[2]));
  LUT6 #(
    .INIT(64'h000A0000000C0000)) 
    \o_BRAM0A_we[3]_INST_0 
       (.I0(i_mema_we[3]),
        .I1(i_memb_we[3]),
        .I2(bram_sel[2]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[0]),
        .O(o_BRAM0A_we[3]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_addr[0]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[0]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_addr[0]),
        .O(o_BRAM1A_addr[0]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_addr[10]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[10]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_addr[10]),
        .O(o_BRAM1A_addr[10]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_addr[11]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[11]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_addr[11]),
        .O(o_BRAM1A_addr[11]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_addr[12]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[12]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_addr[12]),
        .O(o_BRAM1A_addr[12]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_addr[13]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[13]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_addr[13]),
        .O(o_BRAM1A_addr[13]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_addr[14]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[14]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_addr[14]),
        .O(o_BRAM1A_addr[14]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_addr[15]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[15]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_addr[15]),
        .O(o_BRAM1A_addr[15]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_addr[16]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[16]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_addr[16]),
        .O(o_BRAM1A_addr[16]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_addr[17]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[17]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_addr[17]),
        .O(o_BRAM1A_addr[17]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_addr[18]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[18]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_addr[18]),
        .O(o_BRAM1A_addr[18]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_addr[19]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[19]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_addr[19]),
        .O(o_BRAM1A_addr[19]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_addr[1]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[1]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_addr[1]),
        .O(o_BRAM1A_addr[1]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_addr[20]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[20]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_addr[20]),
        .O(o_BRAM1A_addr[20]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_addr[21]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[21]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_addr[21]),
        .O(o_BRAM1A_addr[21]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_addr[22]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[22]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_addr[22]),
        .O(o_BRAM1A_addr[22]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_addr[23]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[23]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_addr[23]),
        .O(o_BRAM1A_addr[23]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_addr[24]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[24]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_addr[24]),
        .O(o_BRAM1A_addr[24]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_addr[25]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[25]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_addr[25]),
        .O(o_BRAM1A_addr[25]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_addr[26]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[26]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_addr[26]),
        .O(o_BRAM1A_addr[26]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_addr[27]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[27]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_addr[27]),
        .O(o_BRAM1A_addr[27]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_addr[28]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[28]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_addr[28]),
        .O(o_BRAM1A_addr[28]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_addr[29]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[29]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_addr[29]),
        .O(o_BRAM1A_addr[29]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_addr[2]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[2]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_addr[2]),
        .O(o_BRAM1A_addr[2]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_addr[30]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[30]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_addr[30]),
        .O(o_BRAM1A_addr[30]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_addr[31]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[31]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_addr[31]),
        .O(o_BRAM1A_addr[31]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_addr[3]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[3]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_addr[3]),
        .O(o_BRAM1A_addr[3]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_addr[4]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[4]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_addr[4]),
        .O(o_BRAM1A_addr[4]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_addr[5]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[5]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_addr[5]),
        .O(o_BRAM1A_addr[5]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_addr[6]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[6]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_addr[6]),
        .O(o_BRAM1A_addr[6]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_addr[7]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[7]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_addr[7]),
        .O(o_BRAM1A_addr[7]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_addr[8]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[8]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_addr[8]),
        .O(o_BRAM1A_addr[8]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_addr[9]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[9]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_addr[9]),
        .O(o_BRAM1A_addr[9]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    o_BRAM1A_control_INST_0
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_controlc),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_controlb),
        .O(o_BRAM1A_control));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_din[0]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[0]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_din[0]),
        .O(o_BRAM1A_din[0]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_din[10]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[10]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_din[10]),
        .O(o_BRAM1A_din[10]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_din[11]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[11]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_din[11]),
        .O(o_BRAM1A_din[11]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_din[12]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[12]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_din[12]),
        .O(o_BRAM1A_din[12]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_din[13]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[13]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_din[13]),
        .O(o_BRAM1A_din[13]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_din[14]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[14]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_din[14]),
        .O(o_BRAM1A_din[14]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_din[15]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[15]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_din[15]),
        .O(o_BRAM1A_din[15]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_din[16]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[16]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_din[16]),
        .O(o_BRAM1A_din[16]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_din[17]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[17]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_din[17]),
        .O(o_BRAM1A_din[17]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_din[18]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[18]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_din[18]),
        .O(o_BRAM1A_din[18]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_din[19]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[19]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_din[19]),
        .O(o_BRAM1A_din[19]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_din[1]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[1]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_din[1]),
        .O(o_BRAM1A_din[1]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_din[20]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[20]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_din[20]),
        .O(o_BRAM1A_din[20]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_din[21]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[21]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_din[21]),
        .O(o_BRAM1A_din[21]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_din[22]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[22]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_din[22]),
        .O(o_BRAM1A_din[22]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_din[23]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[23]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_din[23]),
        .O(o_BRAM1A_din[23]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_din[24]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[24]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_din[24]),
        .O(o_BRAM1A_din[24]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_din[25]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[25]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_din[25]),
        .O(o_BRAM1A_din[25]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_din[26]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[26]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_din[26]),
        .O(o_BRAM1A_din[26]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_din[27]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[27]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_din[27]),
        .O(o_BRAM1A_din[27]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_din[28]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[28]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_din[28]),
        .O(o_BRAM1A_din[28]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_din[29]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[29]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_din[29]),
        .O(o_BRAM1A_din[29]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_din[2]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[2]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_din[2]),
        .O(o_BRAM1A_din[2]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_din[30]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[30]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_din[30]),
        .O(o_BRAM1A_din[30]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_din[31]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[31]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_din[31]),
        .O(o_BRAM1A_din[31]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_din[3]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[3]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_din[3]),
        .O(o_BRAM1A_din[3]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_din[4]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[4]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_din[4]),
        .O(o_BRAM1A_din[4]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_din[5]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[5]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_din[5]),
        .O(o_BRAM1A_din[5]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_din[6]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[6]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_din[6]),
        .O(o_BRAM1A_din[6]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_din[7]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[7]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_din[7]),
        .O(o_BRAM1A_din[7]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_din[8]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[8]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_din[8]),
        .O(o_BRAM1A_din[8]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_din[9]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[9]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_din[9]),
        .O(o_BRAM1A_din[9]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    o_BRAM1A_en_INST_0
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_en),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_en),
        .O(o_BRAM1A_en));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    o_BRAM1A_rst_INST_0
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_rst),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_rst),
        .O(o_BRAM1A_rst));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_we[0]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_we[0]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_we[0]),
        .O(o_BRAM1A_we[0]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_we[1]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_we[1]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_we[1]),
        .O(o_BRAM1A_we[1]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_we[2]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_we[2]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_we[2]),
        .O(o_BRAM1A_we[2]));
  LUT6 #(
    .INIT(64'h0400004504000040)) 
    \o_BRAM1A_we[3]_INST_0 
       (.I0(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_we[3]),
        .I2(bram_sel[2]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_memb_we[3]),
        .O(o_BRAM1A_we[3]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_addr[0]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_addr[0]),
        .O(o_BRAM2A_addr[0]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_addr[10]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_addr[10]),
        .O(o_BRAM2A_addr[10]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_addr[11]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_addr[11]),
        .O(o_BRAM2A_addr[11]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_addr[12]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_addr[12]),
        .O(o_BRAM2A_addr[12]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_addr[13]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_addr[13]),
        .O(o_BRAM2A_addr[13]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_addr[14]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_addr[14]),
        .O(o_BRAM2A_addr[14]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_addr[15]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_addr[15]),
        .O(o_BRAM2A_addr[15]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_addr[16]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_addr[16]),
        .O(o_BRAM2A_addr[16]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_addr[17]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_addr[17]),
        .O(o_BRAM2A_addr[17]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_addr[18]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_addr[18]),
        .O(o_BRAM2A_addr[18]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_addr[19]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_addr[19]),
        .O(o_BRAM2A_addr[19]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_addr[1]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_addr[1]),
        .O(o_BRAM2A_addr[1]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_addr[20]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_addr[20]),
        .O(o_BRAM2A_addr[20]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_addr[21]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_addr[21]),
        .O(o_BRAM2A_addr[21]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_addr[22]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_addr[22]),
        .O(o_BRAM2A_addr[22]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_addr[23]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_addr[23]),
        .O(o_BRAM2A_addr[23]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_addr[24]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_addr[24]),
        .O(o_BRAM2A_addr[24]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_addr[25]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_addr[25]),
        .O(o_BRAM2A_addr[25]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_addr[26]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_addr[26]),
        .O(o_BRAM2A_addr[26]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_addr[27]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_addr[27]),
        .O(o_BRAM2A_addr[27]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_addr[28]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_addr[28]),
        .O(o_BRAM2A_addr[28]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_addr[29]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_addr[29]),
        .O(o_BRAM2A_addr[29]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_addr[2]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_addr[2]),
        .O(o_BRAM2A_addr[2]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_addr[30]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_addr[30]),
        .O(o_BRAM2A_addr[30]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_addr[31]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_addr[31]),
        .O(o_BRAM2A_addr[31]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_addr[3]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_addr[3]),
        .O(o_BRAM2A_addr[3]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_addr[4]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_addr[4]),
        .O(o_BRAM2A_addr[4]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_addr[5]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_addr[5]),
        .O(o_BRAM2A_addr[5]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_addr[6]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_addr[6]),
        .O(o_BRAM2A_addr[6]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_addr[7]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_addr[7]),
        .O(o_BRAM2A_addr[7]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_addr[8]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_addr[8]),
        .O(o_BRAM2A_addr[8]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_addr[9]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_addr[9]),
        .O(o_BRAM2A_addr[9]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    o_BRAM2A_control_INST_0
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_controla),
        .O(o_BRAM2A_control));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_din[0]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_din[0]),
        .O(o_BRAM2A_din[0]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_din[10]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_din[10]),
        .O(o_BRAM2A_din[10]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_din[11]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_din[11]),
        .O(o_BRAM2A_din[11]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_din[12]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_din[12]),
        .O(o_BRAM2A_din[12]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_din[13]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_din[13]),
        .O(o_BRAM2A_din[13]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_din[14]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_din[14]),
        .O(o_BRAM2A_din[14]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_din[15]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_din[15]),
        .O(o_BRAM2A_din[15]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_din[16]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_din[16]),
        .O(o_BRAM2A_din[16]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_din[17]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_din[17]),
        .O(o_BRAM2A_din[17]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_din[18]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_din[18]),
        .O(o_BRAM2A_din[18]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_din[19]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_din[19]),
        .O(o_BRAM2A_din[19]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_din[1]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_din[1]),
        .O(o_BRAM2A_din[1]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_din[20]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_din[20]),
        .O(o_BRAM2A_din[20]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_din[21]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_din[21]),
        .O(o_BRAM2A_din[21]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_din[22]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_din[22]),
        .O(o_BRAM2A_din[22]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_din[23]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_din[23]),
        .O(o_BRAM2A_din[23]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_din[24]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_din[24]),
        .O(o_BRAM2A_din[24]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_din[25]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_din[25]),
        .O(o_BRAM2A_din[25]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_din[26]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_din[26]),
        .O(o_BRAM2A_din[26]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_din[27]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_din[27]),
        .O(o_BRAM2A_din[27]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_din[28]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_din[28]),
        .O(o_BRAM2A_din[28]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_din[29]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_din[29]),
        .O(o_BRAM2A_din[29]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_din[2]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_din[2]),
        .O(o_BRAM2A_din[2]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_din[30]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_din[30]),
        .O(o_BRAM2A_din[30]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_din[31]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_din[31]),
        .O(o_BRAM2A_din[31]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_din[3]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_din[3]),
        .O(o_BRAM2A_din[3]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_din[4]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_din[4]),
        .O(o_BRAM2A_din[4]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_din[5]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_din[5]),
        .O(o_BRAM2A_din[5]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_din[6]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_din[6]),
        .O(o_BRAM2A_din[6]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_din[7]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_din[7]),
        .O(o_BRAM2A_din[7]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_din[8]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_din[8]),
        .O(o_BRAM2A_din[8]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_din[9]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_din[9]),
        .O(o_BRAM2A_din[9]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    o_BRAM2A_en_INST_0
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_en),
        .O(o_BRAM2A_en));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    o_BRAM2A_rst_INST_0
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_rst),
        .O(o_BRAM2A_rst));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_we[0]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_we[0]),
        .O(o_BRAM2A_we[0]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_we[1]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_we[1]),
        .O(o_BRAM2A_we[1]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_we[2]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_we[2]),
        .O(o_BRAM2A_we[2]));
  LUT6 #(
    .INIT(64'h0001010100000000)) 
    \o_BRAM2A_we[3]_INST_0 
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .I4(bram_sel[1]),
        .I5(i_mema_we[3]),
        .O(o_BRAM2A_we[3]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_addr[0]_INST_0 
       (.I0(i_memc_addr[0]),
        .I1(i_memb_addr[0]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_addr[0]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_addr[10]_INST_0 
       (.I0(i_memc_addr[10]),
        .I1(i_memb_addr[10]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_addr[10]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_addr[11]_INST_0 
       (.I0(i_memc_addr[11]),
        .I1(i_memb_addr[11]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_addr[11]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_addr[12]_INST_0 
       (.I0(i_memc_addr[12]),
        .I1(i_memb_addr[12]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_addr[12]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_addr[13]_INST_0 
       (.I0(i_memc_addr[13]),
        .I1(i_memb_addr[13]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_addr[13]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_addr[14]_INST_0 
       (.I0(i_memc_addr[14]),
        .I1(i_memb_addr[14]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_addr[14]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_addr[15]_INST_0 
       (.I0(i_memc_addr[15]),
        .I1(i_memb_addr[15]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_addr[15]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_addr[16]_INST_0 
       (.I0(i_memc_addr[16]),
        .I1(i_memb_addr[16]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_addr[16]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_addr[17]_INST_0 
       (.I0(i_memc_addr[17]),
        .I1(i_memb_addr[17]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_addr[17]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_addr[18]_INST_0 
       (.I0(i_memc_addr[18]),
        .I1(i_memb_addr[18]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_addr[18]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_addr[19]_INST_0 
       (.I0(i_memc_addr[19]),
        .I1(i_memb_addr[19]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_addr[19]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_addr[1]_INST_0 
       (.I0(i_memc_addr[1]),
        .I1(i_memb_addr[1]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_addr[1]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_addr[20]_INST_0 
       (.I0(i_memc_addr[20]),
        .I1(i_memb_addr[20]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_addr[20]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_addr[21]_INST_0 
       (.I0(i_memc_addr[21]),
        .I1(i_memb_addr[21]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_addr[21]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_addr[22]_INST_0 
       (.I0(i_memc_addr[22]),
        .I1(i_memb_addr[22]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_addr[22]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_addr[23]_INST_0 
       (.I0(i_memc_addr[23]),
        .I1(i_memb_addr[23]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_addr[23]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_addr[24]_INST_0 
       (.I0(i_memc_addr[24]),
        .I1(i_memb_addr[24]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_addr[24]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_addr[25]_INST_0 
       (.I0(i_memc_addr[25]),
        .I1(i_memb_addr[25]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_addr[25]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_addr[26]_INST_0 
       (.I0(i_memc_addr[26]),
        .I1(i_memb_addr[26]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_addr[26]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_addr[27]_INST_0 
       (.I0(i_memc_addr[27]),
        .I1(i_memb_addr[27]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_addr[27]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_addr[28]_INST_0 
       (.I0(i_memc_addr[28]),
        .I1(i_memb_addr[28]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_addr[28]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_addr[29]_INST_0 
       (.I0(i_memc_addr[29]),
        .I1(i_memb_addr[29]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_addr[29]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_addr[2]_INST_0 
       (.I0(i_memc_addr[2]),
        .I1(i_memb_addr[2]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_addr[2]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_addr[30]_INST_0 
       (.I0(i_memc_addr[30]),
        .I1(i_memb_addr[30]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_addr[30]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_addr[31]_INST_0 
       (.I0(i_memc_addr[31]),
        .I1(i_memb_addr[31]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_addr[31]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_addr[3]_INST_0 
       (.I0(i_memc_addr[3]),
        .I1(i_memb_addr[3]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_addr[3]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_addr[4]_INST_0 
       (.I0(i_memc_addr[4]),
        .I1(i_memb_addr[4]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_addr[4]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_addr[5]_INST_0 
       (.I0(i_memc_addr[5]),
        .I1(i_memb_addr[5]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_addr[5]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_addr[6]_INST_0 
       (.I0(i_memc_addr[6]),
        .I1(i_memb_addr[6]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_addr[6]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_addr[7]_INST_0 
       (.I0(i_memc_addr[7]),
        .I1(i_memb_addr[7]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_addr[7]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_addr[8]_INST_0 
       (.I0(i_memc_addr[8]),
        .I1(i_memb_addr[8]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_addr[8]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_addr[9]_INST_0 
       (.I0(i_memc_addr[9]),
        .I1(i_memb_addr[9]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_addr[9]));
  LUT4 #(
    .INIT(16'hF888)) 
    o_BRAM2B_control_INST_0
       (.I0(\U0/o_memc_dout12_out__0 ),
        .I1(i_controlc),
        .I2(i_controlb),
        .I3(o_BRAM2B_en_INST_0_i_2_n_0),
        .O(o_BRAM2B_control));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_din[0]_INST_0 
       (.I0(i_memc_din[0]),
        .I1(i_memb_din[0]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_din[0]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_din[10]_INST_0 
       (.I0(i_memc_din[10]),
        .I1(i_memb_din[10]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_din[10]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_din[11]_INST_0 
       (.I0(i_memc_din[11]),
        .I1(i_memb_din[11]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_din[11]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_din[12]_INST_0 
       (.I0(i_memc_din[12]),
        .I1(i_memb_din[12]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_din[12]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_din[13]_INST_0 
       (.I0(i_memc_din[13]),
        .I1(i_memb_din[13]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_din[13]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_din[14]_INST_0 
       (.I0(i_memc_din[14]),
        .I1(i_memb_din[14]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_din[14]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_din[15]_INST_0 
       (.I0(i_memc_din[15]),
        .I1(i_memb_din[15]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_din[15]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_din[16]_INST_0 
       (.I0(i_memc_din[16]),
        .I1(i_memb_din[16]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_din[16]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_din[17]_INST_0 
       (.I0(i_memc_din[17]),
        .I1(i_memb_din[17]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_din[17]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_din[18]_INST_0 
       (.I0(i_memc_din[18]),
        .I1(i_memb_din[18]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_din[18]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_din[19]_INST_0 
       (.I0(i_memc_din[19]),
        .I1(i_memb_din[19]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_din[19]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_din[1]_INST_0 
       (.I0(i_memc_din[1]),
        .I1(i_memb_din[1]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_din[1]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_din[20]_INST_0 
       (.I0(i_memc_din[20]),
        .I1(i_memb_din[20]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_din[20]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_din[21]_INST_0 
       (.I0(i_memc_din[21]),
        .I1(i_memb_din[21]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_din[21]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_din[22]_INST_0 
       (.I0(i_memc_din[22]),
        .I1(i_memb_din[22]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_din[22]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_din[23]_INST_0 
       (.I0(i_memc_din[23]),
        .I1(i_memb_din[23]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_din[23]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_din[24]_INST_0 
       (.I0(i_memc_din[24]),
        .I1(i_memb_din[24]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_din[24]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_din[25]_INST_0 
       (.I0(i_memc_din[25]),
        .I1(i_memb_din[25]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_din[25]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_din[26]_INST_0 
       (.I0(i_memc_din[26]),
        .I1(i_memb_din[26]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_din[26]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_din[27]_INST_0 
       (.I0(i_memc_din[27]),
        .I1(i_memb_din[27]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_din[27]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_din[28]_INST_0 
       (.I0(i_memc_din[28]),
        .I1(i_memb_din[28]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_din[28]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_din[29]_INST_0 
       (.I0(i_memc_din[29]),
        .I1(i_memb_din[29]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_din[29]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_din[2]_INST_0 
       (.I0(i_memc_din[2]),
        .I1(i_memb_din[2]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_din[2]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_din[30]_INST_0 
       (.I0(i_memc_din[30]),
        .I1(i_memb_din[30]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_din[30]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_din[31]_INST_0 
       (.I0(i_memc_din[31]),
        .I1(i_memb_din[31]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_din[31]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_din[3]_INST_0 
       (.I0(i_memc_din[3]),
        .I1(i_memb_din[3]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_din[3]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_din[4]_INST_0 
       (.I0(i_memc_din[4]),
        .I1(i_memb_din[4]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_din[4]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_din[5]_INST_0 
       (.I0(i_memc_din[5]),
        .I1(i_memb_din[5]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_din[5]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_din[6]_INST_0 
       (.I0(i_memc_din[6]),
        .I1(i_memb_din[6]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_din[6]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_din[7]_INST_0 
       (.I0(i_memc_din[7]),
        .I1(i_memb_din[7]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_din[7]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_din[8]_INST_0 
       (.I0(i_memc_din[8]),
        .I1(i_memb_din[8]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_din[8]));
  LUT6 #(
    .INIT(64'h00000000000A00CA)) 
    \o_BRAM2B_din[9]_INST_0 
       (.I0(i_memc_din[9]),
        .I1(i_memb_din[9]),
        .I2(bram_sel[0]),
        .I3(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I4(bram_sel[1]),
        .I5(bram_sel[2]),
        .O(o_BRAM2B_din[9]));
  LUT4 #(
    .INIT(16'hF888)) 
    o_BRAM2B_en_INST_0
       (.I0(\U0/o_memc_dout12_out__0 ),
        .I1(i_memc_en),
        .I2(i_memb_en),
        .I3(o_BRAM2B_en_INST_0_i_2_n_0),
        .O(o_BRAM2B_en));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    o_BRAM2B_en_INST_0_i_1
       (.I0(bram_sel[2]),
        .I1(bram_sel[3]),
        .I2(bram_sel[4]),
        .I3(bram_sel[0]),
        .O(\U0/o_memc_dout12_out__0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    o_BRAM2B_en_INST_0_i_2
       (.I0(bram_sel[1]),
        .I1(bram_sel[2]),
        .I2(bram_sel[3]),
        .I3(bram_sel[4]),
        .I4(bram_sel[0]),
        .O(o_BRAM2B_en_INST_0_i_2_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    o_BRAM2B_rst_INST_0
       (.I0(\U0/o_memc_dout12_out__0 ),
        .I1(i_memc_rst),
        .I2(i_memb_rst),
        .I3(o_BRAM2B_en_INST_0_i_2_n_0),
        .O(o_BRAM2B_rst));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_BRAM2B_we[0]_INST_0 
       (.I0(\U0/o_memc_dout12_out__0 ),
        .I1(i_memc_we[0]),
        .I2(i_memb_we[0]),
        .I3(o_BRAM2B_en_INST_0_i_2_n_0),
        .O(o_BRAM2B_we[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_BRAM2B_we[1]_INST_0 
       (.I0(\U0/o_memc_dout12_out__0 ),
        .I1(i_memc_we[1]),
        .I2(i_memb_we[1]),
        .I3(o_BRAM2B_en_INST_0_i_2_n_0),
        .O(o_BRAM2B_we[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_BRAM2B_we[2]_INST_0 
       (.I0(\U0/o_memc_dout12_out__0 ),
        .I1(i_memc_we[2]),
        .I2(i_memb_we[2]),
        .I3(o_BRAM2B_en_INST_0_i_2_n_0),
        .O(o_BRAM2B_we[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_BRAM2B_we[3]_INST_0 
       (.I0(\U0/o_memc_dout12_out__0 ),
        .I1(i_memc_we[3]),
        .I2(i_memb_we[3]),
        .I3(o_BRAM2B_en_INST_0_i_2_n_0),
        .O(o_BRAM2B_we[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_mema_dout[0]_INST_0 
       (.I0(\U0/o_mema_dout1__0 ),
        .I1(i_BRAM2A_dout[0]),
        .I2(i_BRAM0A_dout[0]),
        .I3(\o_mema_dout[31]_INST_0_i_2_n_0 ),
        .O(o_mema_dout[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_mema_dout[10]_INST_0 
       (.I0(\U0/o_mema_dout1__0 ),
        .I1(i_BRAM2A_dout[10]),
        .I2(i_BRAM0A_dout[10]),
        .I3(\o_mema_dout[31]_INST_0_i_2_n_0 ),
        .O(o_mema_dout[10]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_mema_dout[11]_INST_0 
       (.I0(\U0/o_mema_dout1__0 ),
        .I1(i_BRAM2A_dout[11]),
        .I2(i_BRAM0A_dout[11]),
        .I3(\o_mema_dout[31]_INST_0_i_2_n_0 ),
        .O(o_mema_dout[11]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_mema_dout[12]_INST_0 
       (.I0(\U0/o_mema_dout1__0 ),
        .I1(i_BRAM2A_dout[12]),
        .I2(i_BRAM0A_dout[12]),
        .I3(\o_mema_dout[31]_INST_0_i_2_n_0 ),
        .O(o_mema_dout[12]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_mema_dout[13]_INST_0 
       (.I0(\U0/o_mema_dout1__0 ),
        .I1(i_BRAM2A_dout[13]),
        .I2(i_BRAM0A_dout[13]),
        .I3(\o_mema_dout[31]_INST_0_i_2_n_0 ),
        .O(o_mema_dout[13]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_mema_dout[14]_INST_0 
       (.I0(\U0/o_mema_dout1__0 ),
        .I1(i_BRAM2A_dout[14]),
        .I2(i_BRAM0A_dout[14]),
        .I3(\o_mema_dout[31]_INST_0_i_2_n_0 ),
        .O(o_mema_dout[14]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_mema_dout[15]_INST_0 
       (.I0(\U0/o_mema_dout1__0 ),
        .I1(i_BRAM2A_dout[15]),
        .I2(i_BRAM0A_dout[15]),
        .I3(\o_mema_dout[31]_INST_0_i_2_n_0 ),
        .O(o_mema_dout[15]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_mema_dout[16]_INST_0 
       (.I0(\U0/o_mema_dout1__0 ),
        .I1(i_BRAM2A_dout[16]),
        .I2(i_BRAM0A_dout[16]),
        .I3(\o_mema_dout[31]_INST_0_i_2_n_0 ),
        .O(o_mema_dout[16]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_mema_dout[17]_INST_0 
       (.I0(\U0/o_mema_dout1__0 ),
        .I1(i_BRAM2A_dout[17]),
        .I2(i_BRAM0A_dout[17]),
        .I3(\o_mema_dout[31]_INST_0_i_2_n_0 ),
        .O(o_mema_dout[17]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_mema_dout[18]_INST_0 
       (.I0(\U0/o_mema_dout1__0 ),
        .I1(i_BRAM2A_dout[18]),
        .I2(i_BRAM0A_dout[18]),
        .I3(\o_mema_dout[31]_INST_0_i_2_n_0 ),
        .O(o_mema_dout[18]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_mema_dout[19]_INST_0 
       (.I0(\U0/o_mema_dout1__0 ),
        .I1(i_BRAM2A_dout[19]),
        .I2(i_BRAM0A_dout[19]),
        .I3(\o_mema_dout[31]_INST_0_i_2_n_0 ),
        .O(o_mema_dout[19]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_mema_dout[1]_INST_0 
       (.I0(\U0/o_mema_dout1__0 ),
        .I1(i_BRAM2A_dout[1]),
        .I2(i_BRAM0A_dout[1]),
        .I3(\o_mema_dout[31]_INST_0_i_2_n_0 ),
        .O(o_mema_dout[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_mema_dout[20]_INST_0 
       (.I0(\U0/o_mema_dout1__0 ),
        .I1(i_BRAM2A_dout[20]),
        .I2(i_BRAM0A_dout[20]),
        .I3(\o_mema_dout[31]_INST_0_i_2_n_0 ),
        .O(o_mema_dout[20]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_mema_dout[21]_INST_0 
       (.I0(\U0/o_mema_dout1__0 ),
        .I1(i_BRAM2A_dout[21]),
        .I2(i_BRAM0A_dout[21]),
        .I3(\o_mema_dout[31]_INST_0_i_2_n_0 ),
        .O(o_mema_dout[21]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_mema_dout[22]_INST_0 
       (.I0(\U0/o_mema_dout1__0 ),
        .I1(i_BRAM2A_dout[22]),
        .I2(i_BRAM0A_dout[22]),
        .I3(\o_mema_dout[31]_INST_0_i_2_n_0 ),
        .O(o_mema_dout[22]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_mema_dout[23]_INST_0 
       (.I0(\U0/o_mema_dout1__0 ),
        .I1(i_BRAM2A_dout[23]),
        .I2(i_BRAM0A_dout[23]),
        .I3(\o_mema_dout[31]_INST_0_i_2_n_0 ),
        .O(o_mema_dout[23]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_mema_dout[24]_INST_0 
       (.I0(\U0/o_mema_dout1__0 ),
        .I1(i_BRAM2A_dout[24]),
        .I2(i_BRAM0A_dout[24]),
        .I3(\o_mema_dout[31]_INST_0_i_2_n_0 ),
        .O(o_mema_dout[24]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_mema_dout[25]_INST_0 
       (.I0(\U0/o_mema_dout1__0 ),
        .I1(i_BRAM2A_dout[25]),
        .I2(i_BRAM0A_dout[25]),
        .I3(\o_mema_dout[31]_INST_0_i_2_n_0 ),
        .O(o_mema_dout[25]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_mema_dout[26]_INST_0 
       (.I0(\U0/o_mema_dout1__0 ),
        .I1(i_BRAM2A_dout[26]),
        .I2(i_BRAM0A_dout[26]),
        .I3(\o_mema_dout[31]_INST_0_i_2_n_0 ),
        .O(o_mema_dout[26]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_mema_dout[27]_INST_0 
       (.I0(\U0/o_mema_dout1__0 ),
        .I1(i_BRAM2A_dout[27]),
        .I2(i_BRAM0A_dout[27]),
        .I3(\o_mema_dout[31]_INST_0_i_2_n_0 ),
        .O(o_mema_dout[27]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_mema_dout[28]_INST_0 
       (.I0(\U0/o_mema_dout1__0 ),
        .I1(i_BRAM2A_dout[28]),
        .I2(i_BRAM0A_dout[28]),
        .I3(\o_mema_dout[31]_INST_0_i_2_n_0 ),
        .O(o_mema_dout[28]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_mema_dout[29]_INST_0 
       (.I0(\U0/o_mema_dout1__0 ),
        .I1(i_BRAM2A_dout[29]),
        .I2(i_BRAM0A_dout[29]),
        .I3(\o_mema_dout[31]_INST_0_i_2_n_0 ),
        .O(o_mema_dout[29]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_mema_dout[2]_INST_0 
       (.I0(\U0/o_mema_dout1__0 ),
        .I1(i_BRAM2A_dout[2]),
        .I2(i_BRAM0A_dout[2]),
        .I3(\o_mema_dout[31]_INST_0_i_2_n_0 ),
        .O(o_mema_dout[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_mema_dout[30]_INST_0 
       (.I0(\U0/o_mema_dout1__0 ),
        .I1(i_BRAM2A_dout[30]),
        .I2(i_BRAM0A_dout[30]),
        .I3(\o_mema_dout[31]_INST_0_i_2_n_0 ),
        .O(o_mema_dout[30]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_mema_dout[31]_INST_0 
       (.I0(\U0/o_mema_dout1__0 ),
        .I1(i_BRAM2A_dout[31]),
        .I2(i_BRAM0A_dout[31]),
        .I3(\o_mema_dout[31]_INST_0_i_2_n_0 ),
        .O(o_mema_dout[31]));
  LUT5 #(
    .INIT(32'h00000007)) 
    \o_mema_dout[31]_INST_0_i_1 
       (.I0(bram_sel[1]),
        .I1(bram_sel[0]),
        .I2(bram_sel[4]),
        .I3(bram_sel[3]),
        .I4(bram_sel[2]),
        .O(\U0/o_mema_dout1__0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \o_mema_dout[31]_INST_0_i_2 
       (.I0(bram_sel[1]),
        .I1(bram_sel[4]),
        .I2(bram_sel[3]),
        .I3(bram_sel[2]),
        .I4(bram_sel[0]),
        .O(\o_mema_dout[31]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_mema_dout[3]_INST_0 
       (.I0(\U0/o_mema_dout1__0 ),
        .I1(i_BRAM2A_dout[3]),
        .I2(i_BRAM0A_dout[3]),
        .I3(\o_mema_dout[31]_INST_0_i_2_n_0 ),
        .O(o_mema_dout[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_mema_dout[4]_INST_0 
       (.I0(\U0/o_mema_dout1__0 ),
        .I1(i_BRAM2A_dout[4]),
        .I2(i_BRAM0A_dout[4]),
        .I3(\o_mema_dout[31]_INST_0_i_2_n_0 ),
        .O(o_mema_dout[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_mema_dout[5]_INST_0 
       (.I0(\U0/o_mema_dout1__0 ),
        .I1(i_BRAM2A_dout[5]),
        .I2(i_BRAM0A_dout[5]),
        .I3(\o_mema_dout[31]_INST_0_i_2_n_0 ),
        .O(o_mema_dout[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_mema_dout[6]_INST_0 
       (.I0(\U0/o_mema_dout1__0 ),
        .I1(i_BRAM2A_dout[6]),
        .I2(i_BRAM0A_dout[6]),
        .I3(\o_mema_dout[31]_INST_0_i_2_n_0 ),
        .O(o_mema_dout[6]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_mema_dout[7]_INST_0 
       (.I0(\U0/o_mema_dout1__0 ),
        .I1(i_BRAM2A_dout[7]),
        .I2(i_BRAM0A_dout[7]),
        .I3(\o_mema_dout[31]_INST_0_i_2_n_0 ),
        .O(o_mema_dout[7]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_mema_dout[8]_INST_0 
       (.I0(\U0/o_mema_dout1__0 ),
        .I1(i_BRAM2A_dout[8]),
        .I2(i_BRAM0A_dout[8]),
        .I3(\o_mema_dout[31]_INST_0_i_2_n_0 ),
        .O(o_mema_dout[8]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_mema_dout[9]_INST_0 
       (.I0(\U0/o_mema_dout1__0 ),
        .I1(i_BRAM2A_dout[9]),
        .I2(i_BRAM0A_dout[9]),
        .I3(\o_mema_dout[31]_INST_0_i_2_n_0 ),
        .O(o_mema_dout[9]));
  LUT6 #(
    .INIT(64'h0000000073516240)) 
    \o_memb_dout[0]_INST_0 
       (.I0(bram_sel[0]),
        .I1(bram_sel[1]),
        .I2(i_BRAM0A_dout[0]),
        .I3(i_BRAM2B_dout[0]),
        .I4(i_BRAM1A_dout[0]),
        .I5(p_0_in),
        .O(o_memb_dout[0]));
  LUT6 #(
    .INIT(64'h0000000073516240)) 
    \o_memb_dout[10]_INST_0 
       (.I0(bram_sel[0]),
        .I1(bram_sel[1]),
        .I2(i_BRAM0A_dout[10]),
        .I3(i_BRAM2B_dout[10]),
        .I4(i_BRAM1A_dout[10]),
        .I5(p_0_in),
        .O(o_memb_dout[10]));
  LUT6 #(
    .INIT(64'h0000000073516240)) 
    \o_memb_dout[11]_INST_0 
       (.I0(bram_sel[0]),
        .I1(bram_sel[1]),
        .I2(i_BRAM0A_dout[11]),
        .I3(i_BRAM2B_dout[11]),
        .I4(i_BRAM1A_dout[11]),
        .I5(p_0_in),
        .O(o_memb_dout[11]));
  LUT6 #(
    .INIT(64'h0000000073516240)) 
    \o_memb_dout[12]_INST_0 
       (.I0(bram_sel[0]),
        .I1(bram_sel[1]),
        .I2(i_BRAM0A_dout[12]),
        .I3(i_BRAM2B_dout[12]),
        .I4(i_BRAM1A_dout[12]),
        .I5(p_0_in),
        .O(o_memb_dout[12]));
  LUT6 #(
    .INIT(64'h0000000073516240)) 
    \o_memb_dout[13]_INST_0 
       (.I0(bram_sel[0]),
        .I1(bram_sel[1]),
        .I2(i_BRAM0A_dout[13]),
        .I3(i_BRAM2B_dout[13]),
        .I4(i_BRAM1A_dout[13]),
        .I5(p_0_in),
        .O(o_memb_dout[13]));
  LUT6 #(
    .INIT(64'h0000000073516240)) 
    \o_memb_dout[14]_INST_0 
       (.I0(bram_sel[0]),
        .I1(bram_sel[1]),
        .I2(i_BRAM0A_dout[14]),
        .I3(i_BRAM2B_dout[14]),
        .I4(i_BRAM1A_dout[14]),
        .I5(p_0_in),
        .O(o_memb_dout[14]));
  LUT6 #(
    .INIT(64'h0000000073516240)) 
    \o_memb_dout[15]_INST_0 
       (.I0(bram_sel[0]),
        .I1(bram_sel[1]),
        .I2(i_BRAM0A_dout[15]),
        .I3(i_BRAM2B_dout[15]),
        .I4(i_BRAM1A_dout[15]),
        .I5(p_0_in),
        .O(o_memb_dout[15]));
  LUT6 #(
    .INIT(64'h0000000073516240)) 
    \o_memb_dout[16]_INST_0 
       (.I0(bram_sel[0]),
        .I1(bram_sel[1]),
        .I2(i_BRAM0A_dout[16]),
        .I3(i_BRAM2B_dout[16]),
        .I4(i_BRAM1A_dout[16]),
        .I5(p_0_in),
        .O(o_memb_dout[16]));
  LUT6 #(
    .INIT(64'h0000000073516240)) 
    \o_memb_dout[17]_INST_0 
       (.I0(bram_sel[0]),
        .I1(bram_sel[1]),
        .I2(i_BRAM0A_dout[17]),
        .I3(i_BRAM2B_dout[17]),
        .I4(i_BRAM1A_dout[17]),
        .I5(p_0_in),
        .O(o_memb_dout[17]));
  LUT6 #(
    .INIT(64'h0000000073516240)) 
    \o_memb_dout[18]_INST_0 
       (.I0(bram_sel[0]),
        .I1(bram_sel[1]),
        .I2(i_BRAM0A_dout[18]),
        .I3(i_BRAM2B_dout[18]),
        .I4(i_BRAM1A_dout[18]),
        .I5(p_0_in),
        .O(o_memb_dout[18]));
  LUT6 #(
    .INIT(64'h0000000073516240)) 
    \o_memb_dout[19]_INST_0 
       (.I0(bram_sel[0]),
        .I1(bram_sel[1]),
        .I2(i_BRAM0A_dout[19]),
        .I3(i_BRAM2B_dout[19]),
        .I4(i_BRAM1A_dout[19]),
        .I5(p_0_in),
        .O(o_memb_dout[19]));
  LUT6 #(
    .INIT(64'h0000000073516240)) 
    \o_memb_dout[1]_INST_0 
       (.I0(bram_sel[0]),
        .I1(bram_sel[1]),
        .I2(i_BRAM0A_dout[1]),
        .I3(i_BRAM2B_dout[1]),
        .I4(i_BRAM1A_dout[1]),
        .I5(p_0_in),
        .O(o_memb_dout[1]));
  LUT6 #(
    .INIT(64'h0000000073516240)) 
    \o_memb_dout[20]_INST_0 
       (.I0(bram_sel[0]),
        .I1(bram_sel[1]),
        .I2(i_BRAM0A_dout[20]),
        .I3(i_BRAM2B_dout[20]),
        .I4(i_BRAM1A_dout[20]),
        .I5(p_0_in),
        .O(o_memb_dout[20]));
  LUT6 #(
    .INIT(64'h0000000073516240)) 
    \o_memb_dout[21]_INST_0 
       (.I0(bram_sel[0]),
        .I1(bram_sel[1]),
        .I2(i_BRAM0A_dout[21]),
        .I3(i_BRAM2B_dout[21]),
        .I4(i_BRAM1A_dout[21]),
        .I5(p_0_in),
        .O(o_memb_dout[21]));
  LUT6 #(
    .INIT(64'h0000000073516240)) 
    \o_memb_dout[22]_INST_0 
       (.I0(bram_sel[0]),
        .I1(bram_sel[1]),
        .I2(i_BRAM0A_dout[22]),
        .I3(i_BRAM2B_dout[22]),
        .I4(i_BRAM1A_dout[22]),
        .I5(p_0_in),
        .O(o_memb_dout[22]));
  LUT6 #(
    .INIT(64'h0000000073516240)) 
    \o_memb_dout[23]_INST_0 
       (.I0(bram_sel[0]),
        .I1(bram_sel[1]),
        .I2(i_BRAM0A_dout[23]),
        .I3(i_BRAM2B_dout[23]),
        .I4(i_BRAM1A_dout[23]),
        .I5(p_0_in),
        .O(o_memb_dout[23]));
  LUT6 #(
    .INIT(64'h0000000073516240)) 
    \o_memb_dout[24]_INST_0 
       (.I0(bram_sel[0]),
        .I1(bram_sel[1]),
        .I2(i_BRAM0A_dout[24]),
        .I3(i_BRAM2B_dout[24]),
        .I4(i_BRAM1A_dout[24]),
        .I5(p_0_in),
        .O(o_memb_dout[24]));
  LUT6 #(
    .INIT(64'h0000000073516240)) 
    \o_memb_dout[25]_INST_0 
       (.I0(bram_sel[0]),
        .I1(bram_sel[1]),
        .I2(i_BRAM0A_dout[25]),
        .I3(i_BRAM2B_dout[25]),
        .I4(i_BRAM1A_dout[25]),
        .I5(p_0_in),
        .O(o_memb_dout[25]));
  LUT6 #(
    .INIT(64'h0000000073516240)) 
    \o_memb_dout[26]_INST_0 
       (.I0(bram_sel[0]),
        .I1(bram_sel[1]),
        .I2(i_BRAM0A_dout[26]),
        .I3(i_BRAM2B_dout[26]),
        .I4(i_BRAM1A_dout[26]),
        .I5(p_0_in),
        .O(o_memb_dout[26]));
  LUT6 #(
    .INIT(64'h0000000073516240)) 
    \o_memb_dout[27]_INST_0 
       (.I0(bram_sel[0]),
        .I1(bram_sel[1]),
        .I2(i_BRAM0A_dout[27]),
        .I3(i_BRAM2B_dout[27]),
        .I4(i_BRAM1A_dout[27]),
        .I5(p_0_in),
        .O(o_memb_dout[27]));
  LUT6 #(
    .INIT(64'h0000000073516240)) 
    \o_memb_dout[28]_INST_0 
       (.I0(bram_sel[0]),
        .I1(bram_sel[1]),
        .I2(i_BRAM0A_dout[28]),
        .I3(i_BRAM2B_dout[28]),
        .I4(i_BRAM1A_dout[28]),
        .I5(p_0_in),
        .O(o_memb_dout[28]));
  LUT6 #(
    .INIT(64'h0000000073516240)) 
    \o_memb_dout[29]_INST_0 
       (.I0(bram_sel[0]),
        .I1(bram_sel[1]),
        .I2(i_BRAM0A_dout[29]),
        .I3(i_BRAM2B_dout[29]),
        .I4(i_BRAM1A_dout[29]),
        .I5(p_0_in),
        .O(o_memb_dout[29]));
  LUT6 #(
    .INIT(64'h0000000073516240)) 
    \o_memb_dout[2]_INST_0 
       (.I0(bram_sel[0]),
        .I1(bram_sel[1]),
        .I2(i_BRAM0A_dout[2]),
        .I3(i_BRAM2B_dout[2]),
        .I4(i_BRAM1A_dout[2]),
        .I5(p_0_in),
        .O(o_memb_dout[2]));
  LUT6 #(
    .INIT(64'h0000000073516240)) 
    \o_memb_dout[30]_INST_0 
       (.I0(bram_sel[0]),
        .I1(bram_sel[1]),
        .I2(i_BRAM0A_dout[30]),
        .I3(i_BRAM2B_dout[30]),
        .I4(i_BRAM1A_dout[30]),
        .I5(p_0_in),
        .O(o_memb_dout[30]));
  LUT6 #(
    .INIT(64'h0000000073516240)) 
    \o_memb_dout[31]_INST_0 
       (.I0(bram_sel[0]),
        .I1(bram_sel[1]),
        .I2(i_BRAM0A_dout[31]),
        .I3(i_BRAM2B_dout[31]),
        .I4(i_BRAM1A_dout[31]),
        .I5(p_0_in),
        .O(o_memb_dout[31]));
  LUT3 #(
    .INIT(8'hFE)) 
    \o_memb_dout[31]_INST_0_i_1 
       (.I0(bram_sel[4]),
        .I1(bram_sel[2]),
        .I2(bram_sel[3]),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h0000000073516240)) 
    \o_memb_dout[3]_INST_0 
       (.I0(bram_sel[0]),
        .I1(bram_sel[1]),
        .I2(i_BRAM0A_dout[3]),
        .I3(i_BRAM2B_dout[3]),
        .I4(i_BRAM1A_dout[3]),
        .I5(p_0_in),
        .O(o_memb_dout[3]));
  LUT6 #(
    .INIT(64'h0000000073516240)) 
    \o_memb_dout[4]_INST_0 
       (.I0(bram_sel[0]),
        .I1(bram_sel[1]),
        .I2(i_BRAM0A_dout[4]),
        .I3(i_BRAM2B_dout[4]),
        .I4(i_BRAM1A_dout[4]),
        .I5(p_0_in),
        .O(o_memb_dout[4]));
  LUT6 #(
    .INIT(64'h0000000073516240)) 
    \o_memb_dout[5]_INST_0 
       (.I0(bram_sel[0]),
        .I1(bram_sel[1]),
        .I2(i_BRAM0A_dout[5]),
        .I3(i_BRAM2B_dout[5]),
        .I4(i_BRAM1A_dout[5]),
        .I5(p_0_in),
        .O(o_memb_dout[5]));
  LUT6 #(
    .INIT(64'h0000000073516240)) 
    \o_memb_dout[6]_INST_0 
       (.I0(bram_sel[0]),
        .I1(bram_sel[1]),
        .I2(i_BRAM0A_dout[6]),
        .I3(i_BRAM2B_dout[6]),
        .I4(i_BRAM1A_dout[6]),
        .I5(p_0_in),
        .O(o_memb_dout[6]));
  LUT6 #(
    .INIT(64'h0000000073516240)) 
    \o_memb_dout[7]_INST_0 
       (.I0(bram_sel[0]),
        .I1(bram_sel[1]),
        .I2(i_BRAM0A_dout[7]),
        .I3(i_BRAM2B_dout[7]),
        .I4(i_BRAM1A_dout[7]),
        .I5(p_0_in),
        .O(o_memb_dout[7]));
  LUT6 #(
    .INIT(64'h0000000073516240)) 
    \o_memb_dout[8]_INST_0 
       (.I0(bram_sel[0]),
        .I1(bram_sel[1]),
        .I2(i_BRAM0A_dout[8]),
        .I3(i_BRAM2B_dout[8]),
        .I4(i_BRAM1A_dout[8]),
        .I5(p_0_in),
        .O(o_memb_dout[8]));
  LUT6 #(
    .INIT(64'h0000000073516240)) 
    \o_memb_dout[9]_INST_0 
       (.I0(bram_sel[0]),
        .I1(bram_sel[1]),
        .I2(i_BRAM0A_dout[9]),
        .I3(i_BRAM2B_dout[9]),
        .I4(i_BRAM1A_dout[9]),
        .I5(p_0_in),
        .O(o_memb_dout[9]));
  LUT6 #(
    .INIT(64'h0000000C0000C0AA)) 
    \o_memc_dout[0]_INST_0 
       (.I0(i_BRAM2B_dout[0]),
        .I1(i_BRAM1A_dout[0]),
        .I2(bram_sel[1]),
        .I3(bram_sel[0]),
        .I4(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I5(bram_sel[2]),
        .O(o_memc_dout[0]));
  LUT6 #(
    .INIT(64'h0000000C0000C0AA)) 
    \o_memc_dout[10]_INST_0 
       (.I0(i_BRAM2B_dout[10]),
        .I1(i_BRAM1A_dout[10]),
        .I2(bram_sel[1]),
        .I3(bram_sel[0]),
        .I4(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I5(bram_sel[2]),
        .O(o_memc_dout[10]));
  LUT6 #(
    .INIT(64'h0000000C0000C0AA)) 
    \o_memc_dout[11]_INST_0 
       (.I0(i_BRAM2B_dout[11]),
        .I1(i_BRAM1A_dout[11]),
        .I2(bram_sel[1]),
        .I3(bram_sel[0]),
        .I4(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I5(bram_sel[2]),
        .O(o_memc_dout[11]));
  LUT6 #(
    .INIT(64'h0000000C0000C0AA)) 
    \o_memc_dout[12]_INST_0 
       (.I0(i_BRAM2B_dout[12]),
        .I1(i_BRAM1A_dout[12]),
        .I2(bram_sel[1]),
        .I3(bram_sel[0]),
        .I4(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I5(bram_sel[2]),
        .O(o_memc_dout[12]));
  LUT6 #(
    .INIT(64'h0000000C0000C0AA)) 
    \o_memc_dout[13]_INST_0 
       (.I0(i_BRAM2B_dout[13]),
        .I1(i_BRAM1A_dout[13]),
        .I2(bram_sel[1]),
        .I3(bram_sel[0]),
        .I4(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I5(bram_sel[2]),
        .O(o_memc_dout[13]));
  LUT6 #(
    .INIT(64'h0000000C0000C0AA)) 
    \o_memc_dout[14]_INST_0 
       (.I0(i_BRAM2B_dout[14]),
        .I1(i_BRAM1A_dout[14]),
        .I2(bram_sel[1]),
        .I3(bram_sel[0]),
        .I4(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I5(bram_sel[2]),
        .O(o_memc_dout[14]));
  LUT6 #(
    .INIT(64'h0000000C0000C0AA)) 
    \o_memc_dout[15]_INST_0 
       (.I0(i_BRAM2B_dout[15]),
        .I1(i_BRAM1A_dout[15]),
        .I2(bram_sel[1]),
        .I3(bram_sel[0]),
        .I4(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I5(bram_sel[2]),
        .O(o_memc_dout[15]));
  LUT6 #(
    .INIT(64'h0000000C0000C0AA)) 
    \o_memc_dout[16]_INST_0 
       (.I0(i_BRAM2B_dout[16]),
        .I1(i_BRAM1A_dout[16]),
        .I2(bram_sel[1]),
        .I3(bram_sel[0]),
        .I4(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I5(bram_sel[2]),
        .O(o_memc_dout[16]));
  LUT6 #(
    .INIT(64'h0000000C0000C0AA)) 
    \o_memc_dout[17]_INST_0 
       (.I0(i_BRAM2B_dout[17]),
        .I1(i_BRAM1A_dout[17]),
        .I2(bram_sel[1]),
        .I3(bram_sel[0]),
        .I4(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I5(bram_sel[2]),
        .O(o_memc_dout[17]));
  LUT6 #(
    .INIT(64'h0000000C0000C0AA)) 
    \o_memc_dout[18]_INST_0 
       (.I0(i_BRAM2B_dout[18]),
        .I1(i_BRAM1A_dout[18]),
        .I2(bram_sel[1]),
        .I3(bram_sel[0]),
        .I4(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I5(bram_sel[2]),
        .O(o_memc_dout[18]));
  LUT6 #(
    .INIT(64'h0000000C0000C0AA)) 
    \o_memc_dout[19]_INST_0 
       (.I0(i_BRAM2B_dout[19]),
        .I1(i_BRAM1A_dout[19]),
        .I2(bram_sel[1]),
        .I3(bram_sel[0]),
        .I4(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I5(bram_sel[2]),
        .O(o_memc_dout[19]));
  LUT6 #(
    .INIT(64'h0000000C0000C0AA)) 
    \o_memc_dout[1]_INST_0 
       (.I0(i_BRAM2B_dout[1]),
        .I1(i_BRAM1A_dout[1]),
        .I2(bram_sel[1]),
        .I3(bram_sel[0]),
        .I4(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I5(bram_sel[2]),
        .O(o_memc_dout[1]));
  LUT6 #(
    .INIT(64'h0000000C0000C0AA)) 
    \o_memc_dout[20]_INST_0 
       (.I0(i_BRAM2B_dout[20]),
        .I1(i_BRAM1A_dout[20]),
        .I2(bram_sel[1]),
        .I3(bram_sel[0]),
        .I4(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I5(bram_sel[2]),
        .O(o_memc_dout[20]));
  LUT6 #(
    .INIT(64'h0000000C0000C0AA)) 
    \o_memc_dout[21]_INST_0 
       (.I0(i_BRAM2B_dout[21]),
        .I1(i_BRAM1A_dout[21]),
        .I2(bram_sel[1]),
        .I3(bram_sel[0]),
        .I4(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I5(bram_sel[2]),
        .O(o_memc_dout[21]));
  LUT6 #(
    .INIT(64'h0000000C0000C0AA)) 
    \o_memc_dout[22]_INST_0 
       (.I0(i_BRAM2B_dout[22]),
        .I1(i_BRAM1A_dout[22]),
        .I2(bram_sel[1]),
        .I3(bram_sel[0]),
        .I4(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I5(bram_sel[2]),
        .O(o_memc_dout[22]));
  LUT6 #(
    .INIT(64'h0000000C0000C0AA)) 
    \o_memc_dout[23]_INST_0 
       (.I0(i_BRAM2B_dout[23]),
        .I1(i_BRAM1A_dout[23]),
        .I2(bram_sel[1]),
        .I3(bram_sel[0]),
        .I4(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I5(bram_sel[2]),
        .O(o_memc_dout[23]));
  LUT6 #(
    .INIT(64'h0000000C0000C0AA)) 
    \o_memc_dout[24]_INST_0 
       (.I0(i_BRAM2B_dout[24]),
        .I1(i_BRAM1A_dout[24]),
        .I2(bram_sel[1]),
        .I3(bram_sel[0]),
        .I4(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I5(bram_sel[2]),
        .O(o_memc_dout[24]));
  LUT6 #(
    .INIT(64'h0000000C0000C0AA)) 
    \o_memc_dout[25]_INST_0 
       (.I0(i_BRAM2B_dout[25]),
        .I1(i_BRAM1A_dout[25]),
        .I2(bram_sel[1]),
        .I3(bram_sel[0]),
        .I4(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I5(bram_sel[2]),
        .O(o_memc_dout[25]));
  LUT6 #(
    .INIT(64'h0000000C0000C0AA)) 
    \o_memc_dout[26]_INST_0 
       (.I0(i_BRAM2B_dout[26]),
        .I1(i_BRAM1A_dout[26]),
        .I2(bram_sel[1]),
        .I3(bram_sel[0]),
        .I4(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I5(bram_sel[2]),
        .O(o_memc_dout[26]));
  LUT6 #(
    .INIT(64'h0000000C0000C0AA)) 
    \o_memc_dout[27]_INST_0 
       (.I0(i_BRAM2B_dout[27]),
        .I1(i_BRAM1A_dout[27]),
        .I2(bram_sel[1]),
        .I3(bram_sel[0]),
        .I4(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I5(bram_sel[2]),
        .O(o_memc_dout[27]));
  LUT6 #(
    .INIT(64'h0000000C0000C0AA)) 
    \o_memc_dout[28]_INST_0 
       (.I0(i_BRAM2B_dout[28]),
        .I1(i_BRAM1A_dout[28]),
        .I2(bram_sel[1]),
        .I3(bram_sel[0]),
        .I4(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I5(bram_sel[2]),
        .O(o_memc_dout[28]));
  LUT6 #(
    .INIT(64'h0000000C0000C0AA)) 
    \o_memc_dout[29]_INST_0 
       (.I0(i_BRAM2B_dout[29]),
        .I1(i_BRAM1A_dout[29]),
        .I2(bram_sel[1]),
        .I3(bram_sel[0]),
        .I4(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I5(bram_sel[2]),
        .O(o_memc_dout[29]));
  LUT6 #(
    .INIT(64'h0000000C0000C0AA)) 
    \o_memc_dout[2]_INST_0 
       (.I0(i_BRAM2B_dout[2]),
        .I1(i_BRAM1A_dout[2]),
        .I2(bram_sel[1]),
        .I3(bram_sel[0]),
        .I4(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I5(bram_sel[2]),
        .O(o_memc_dout[2]));
  LUT6 #(
    .INIT(64'h0000000C0000C0AA)) 
    \o_memc_dout[30]_INST_0 
       (.I0(i_BRAM2B_dout[30]),
        .I1(i_BRAM1A_dout[30]),
        .I2(bram_sel[1]),
        .I3(bram_sel[0]),
        .I4(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I5(bram_sel[2]),
        .O(o_memc_dout[30]));
  LUT6 #(
    .INIT(64'h0000000C0000C0AA)) 
    \o_memc_dout[31]_INST_0 
       (.I0(i_BRAM2B_dout[31]),
        .I1(i_BRAM1A_dout[31]),
        .I2(bram_sel[1]),
        .I3(bram_sel[0]),
        .I4(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I5(bram_sel[2]),
        .O(o_memc_dout[31]));
  LUT2 #(
    .INIT(4'hE)) 
    \o_memc_dout[31]_INST_0_i_1 
       (.I0(bram_sel[3]),
        .I1(bram_sel[4]),
        .O(\o_memc_dout[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000C0000C0AA)) 
    \o_memc_dout[3]_INST_0 
       (.I0(i_BRAM2B_dout[3]),
        .I1(i_BRAM1A_dout[3]),
        .I2(bram_sel[1]),
        .I3(bram_sel[0]),
        .I4(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I5(bram_sel[2]),
        .O(o_memc_dout[3]));
  LUT6 #(
    .INIT(64'h0000000C0000C0AA)) 
    \o_memc_dout[4]_INST_0 
       (.I0(i_BRAM2B_dout[4]),
        .I1(i_BRAM1A_dout[4]),
        .I2(bram_sel[1]),
        .I3(bram_sel[0]),
        .I4(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I5(bram_sel[2]),
        .O(o_memc_dout[4]));
  LUT6 #(
    .INIT(64'h0000000C0000C0AA)) 
    \o_memc_dout[5]_INST_0 
       (.I0(i_BRAM2B_dout[5]),
        .I1(i_BRAM1A_dout[5]),
        .I2(bram_sel[1]),
        .I3(bram_sel[0]),
        .I4(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I5(bram_sel[2]),
        .O(o_memc_dout[5]));
  LUT6 #(
    .INIT(64'h0000000C0000C0AA)) 
    \o_memc_dout[6]_INST_0 
       (.I0(i_BRAM2B_dout[6]),
        .I1(i_BRAM1A_dout[6]),
        .I2(bram_sel[1]),
        .I3(bram_sel[0]),
        .I4(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I5(bram_sel[2]),
        .O(o_memc_dout[6]));
  LUT6 #(
    .INIT(64'h0000000C0000C0AA)) 
    \o_memc_dout[7]_INST_0 
       (.I0(i_BRAM2B_dout[7]),
        .I1(i_BRAM1A_dout[7]),
        .I2(bram_sel[1]),
        .I3(bram_sel[0]),
        .I4(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I5(bram_sel[2]),
        .O(o_memc_dout[7]));
  LUT6 #(
    .INIT(64'h0000000C0000C0AA)) 
    \o_memc_dout[8]_INST_0 
       (.I0(i_BRAM2B_dout[8]),
        .I1(i_BRAM1A_dout[8]),
        .I2(bram_sel[1]),
        .I3(bram_sel[0]),
        .I4(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I5(bram_sel[2]),
        .O(o_memc_dout[8]));
  LUT6 #(
    .INIT(64'h0000000C0000C0AA)) 
    \o_memc_dout[9]_INST_0 
       (.I0(i_BRAM2B_dout[9]),
        .I1(i_BRAM1A_dout[9]),
        .I2(bram_sel[1]),
        .I3(bram_sel[0]),
        .I4(\o_memc_dout[31]_INST_0_i_1_n_0 ),
        .I5(bram_sel[2]),
        .O(o_memc_dout[9]));
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
