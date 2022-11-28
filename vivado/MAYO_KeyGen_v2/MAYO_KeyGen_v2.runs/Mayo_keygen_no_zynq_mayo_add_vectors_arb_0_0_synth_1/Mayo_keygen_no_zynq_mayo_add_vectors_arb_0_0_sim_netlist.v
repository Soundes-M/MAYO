// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Nov 24 23:40:13 2022
// Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Mayo_keygen_no_zynq_mayo_add_vectors_arb_0_0_sim_netlist.v
// Design      : Mayo_keygen_no_zynq_mayo_add_vectors_arb_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Mayo_keygen_no_zynq_mayo_add_vectors_arb_0_0,mayo_add_vectors_arbiter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "mayo_add_vectors_arbiter,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (bram_sel,
    o_mema_dout,
    i_mema_din,
    i_mema_addr,
    i_mema_en,
    i_mema_rst,
    i_mema_we,
    o_memb_dout,
    i_memb_din,
    i_memb_addr,
    i_memb_en,
    i_memb_rst,
    i_memb_we,
    o_memc_dout,
    i_memc_din,
    i_memc_addr,
    i_memc_en,
    i_memc_rst,
    i_memc_we,
    i_controla,
    i_controlb,
    i_controlc,
    i_BRAM0_dout,
    o_BRAM0_din,
    o_BRAM0_addr,
    o_BRAM0_en,
    o_BRAM0_rst,
    o_BRAM0_we,
    o_BRAM0_control,
    i_BRAM1_dout,
    o_BRAM1_din,
    o_BRAM1_addr,
    o_BRAM1_en,
    o_BRAM1_rst,
    o_BRAM1_we,
    o_BRAM1_control);
  input [1:0]bram_sel;
  output [31:0]o_mema_dout;
  input [31:0]i_mema_din;
  input [31:0]i_mema_addr;
  input i_mema_en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 i_mema_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME i_mema_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_mema_rst;
  input [3:0]i_mema_we;
  output [31:0]o_memb_dout;
  input [31:0]i_memb_din;
  input [31:0]i_memb_addr;
  input i_memb_en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 i_memb_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME i_memb_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_memb_rst;
  input [3:0]i_memb_we;
  output [31:0]o_memc_dout;
  input [31:0]i_memc_din;
  input [31:0]i_memc_addr;
  input i_memc_en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 i_memc_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME i_memc_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_memc_rst;
  input [3:0]i_memc_we;
  input i_controla;
  input i_controlb;
  input i_controlc;
  input [31:0]i_BRAM0_dout;
  output [31:0]o_BRAM0_din;
  output [31:0]o_BRAM0_addr;
  output o_BRAM0_en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 o_BRAM0_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME o_BRAM0_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output o_BRAM0_rst;
  output [3:0]o_BRAM0_we;
  output o_BRAM0_control;
  input [31:0]i_BRAM1_dout;
  output [31:0]o_BRAM1_din;
  output [31:0]o_BRAM1_addr;
  output o_BRAM1_en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 o_BRAM1_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME o_BRAM1_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output o_BRAM1_rst;
  output [3:0]o_BRAM1_we;
  output o_BRAM1_control;

  wire [1:0]bram_sel;
  wire [31:0]i_BRAM0_dout;
  wire [31:0]i_BRAM1_dout;
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
  wire [31:0]o_BRAM0_addr;
  wire o_BRAM0_control;
  wire [31:0]o_BRAM0_din;
  wire \o_BRAM0_din[31]_INST_0_i_1_n_0 ;
  wire \o_BRAM0_din[31]_INST_0_i_2_n_0 ;
  wire \o_BRAM0_din[31]_INST_0_i_3_n_0 ;
  wire o_BRAM0_en;
  wire o_BRAM0_rst;
  wire [3:0]o_BRAM0_we;
  wire [31:0]o_BRAM1_addr;
  wire o_BRAM1_control;
  wire [31:0]o_BRAM1_din;
  wire \o_BRAM1_din[31]_INST_0_i_1_n_0 ;
  wire \o_BRAM1_din[31]_INST_0_i_2_n_0 ;
  wire \o_BRAM1_din[31]_INST_0_i_3_n_0 ;
  wire o_BRAM1_en;
  wire o_BRAM1_rst;
  wire [3:0]o_BRAM1_we;
  wire [31:0]o_mema_dout;
  wire [31:0]o_memb_dout;
  wire [31:0]o_memc_dout;

  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_addr[0]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_addr[0]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_addr[0]),
        .I4(i_memc_addr[0]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_addr[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_addr[10]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_addr[10]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_addr[10]),
        .I4(i_memc_addr[10]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_addr[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_addr[11]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_addr[11]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_addr[11]),
        .I4(i_memc_addr[11]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_addr[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_addr[12]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_addr[12]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_addr[12]),
        .I4(i_memc_addr[12]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_addr[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_addr[13]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_addr[13]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_addr[13]),
        .I4(i_memc_addr[13]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_addr[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_addr[14]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_addr[14]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_addr[14]),
        .I4(i_memc_addr[14]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_addr[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_addr[15]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_addr[15]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_addr[15]),
        .I4(i_memc_addr[15]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_addr[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_addr[16]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_addr[16]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_addr[16]),
        .I4(i_memc_addr[16]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_addr[16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_addr[17]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_addr[17]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_addr[17]),
        .I4(i_memc_addr[17]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_addr[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_addr[18]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_addr[18]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_addr[18]),
        .I4(i_memc_addr[18]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_addr[18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_addr[19]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_addr[19]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_addr[19]),
        .I4(i_memc_addr[19]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_addr[19]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_addr[1]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_addr[1]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_addr[1]),
        .I4(i_memc_addr[1]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_addr[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_addr[20]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_addr[20]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_addr[20]),
        .I4(i_memc_addr[20]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_addr[20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_addr[21]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_addr[21]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_addr[21]),
        .I4(i_memc_addr[21]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_addr[21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_addr[22]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_addr[22]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_addr[22]),
        .I4(i_memc_addr[22]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_addr[22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_addr[23]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_addr[23]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_addr[23]),
        .I4(i_memc_addr[23]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_addr[23]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_addr[24]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_addr[24]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_addr[24]),
        .I4(i_memc_addr[24]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_addr[24]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_addr[25]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_addr[25]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_addr[25]),
        .I4(i_memc_addr[25]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_addr[25]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_addr[26]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_addr[26]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_addr[26]),
        .I4(i_memc_addr[26]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_addr[26]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_addr[27]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_addr[27]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_addr[27]),
        .I4(i_memc_addr[27]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_addr[27]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_addr[28]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_addr[28]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_addr[28]),
        .I4(i_memc_addr[28]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_addr[28]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_addr[29]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_addr[29]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_addr[29]),
        .I4(i_memc_addr[29]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_addr[29]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_addr[2]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_addr[2]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_addr[2]),
        .I4(i_memc_addr[2]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_addr[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_addr[30]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_addr[30]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_addr[30]),
        .I4(i_memc_addr[30]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_addr[30]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_addr[31]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_addr[31]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_addr[31]),
        .I4(i_memc_addr[31]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_addr[31]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_addr[3]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_addr[3]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_addr[3]),
        .I4(i_memc_addr[3]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_addr[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_addr[4]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_addr[4]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_addr[4]),
        .I4(i_memc_addr[4]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_addr[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_addr[5]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_addr[5]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_addr[5]),
        .I4(i_memc_addr[5]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_addr[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_addr[6]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_addr[6]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_addr[6]),
        .I4(i_memc_addr[6]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_addr[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_addr[7]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_addr[7]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_addr[7]),
        .I4(i_memc_addr[7]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_addr[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_addr[8]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_addr[8]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_addr[8]),
        .I4(i_memc_addr[8]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_addr[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_addr[9]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_addr[9]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_addr[9]),
        .I4(i_memc_addr[9]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_addr[9]));
  LUT5 #(
    .INIT(32'h00FF00A8)) 
    o_BRAM0_control_INST_0
       (.I0(bram_sel[1]),
        .I1(i_controlc),
        .I2(i_controlb),
        .I3(bram_sel[0]),
        .I4(i_controla),
        .O(o_BRAM0_control));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_din[0]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_din[0]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_din[0]),
        .I4(i_memc_din[0]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_din[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_din[10]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_din[10]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_din[10]),
        .I4(i_memc_din[10]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_din[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_din[11]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_din[11]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_din[11]),
        .I4(i_memc_din[11]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_din[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_din[12]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_din[12]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_din[12]),
        .I4(i_memc_din[12]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_din[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_din[13]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_din[13]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_din[13]),
        .I4(i_memc_din[13]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_din[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_din[14]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_din[14]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_din[14]),
        .I4(i_memc_din[14]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_din[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_din[15]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_din[15]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_din[15]),
        .I4(i_memc_din[15]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_din[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_din[16]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_din[16]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_din[16]),
        .I4(i_memc_din[16]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_din[16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_din[17]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_din[17]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_din[17]),
        .I4(i_memc_din[17]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_din[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_din[18]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_din[18]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_din[18]),
        .I4(i_memc_din[18]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_din[18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_din[19]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_din[19]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_din[19]),
        .I4(i_memc_din[19]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_din[19]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_din[1]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_din[1]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_din[1]),
        .I4(i_memc_din[1]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_din[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_din[20]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_din[20]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_din[20]),
        .I4(i_memc_din[20]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_din[20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_din[21]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_din[21]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_din[21]),
        .I4(i_memc_din[21]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_din[21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_din[22]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_din[22]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_din[22]),
        .I4(i_memc_din[22]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_din[22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_din[23]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_din[23]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_din[23]),
        .I4(i_memc_din[23]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_din[23]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_din[24]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_din[24]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_din[24]),
        .I4(i_memc_din[24]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_din[24]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_din[25]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_din[25]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_din[25]),
        .I4(i_memc_din[25]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_din[25]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_din[26]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_din[26]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_din[26]),
        .I4(i_memc_din[26]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_din[26]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_din[27]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_din[27]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_din[27]),
        .I4(i_memc_din[27]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_din[27]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_din[28]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_din[28]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_din[28]),
        .I4(i_memc_din[28]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_din[28]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_din[29]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_din[29]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_din[29]),
        .I4(i_memc_din[29]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_din[29]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_din[2]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_din[2]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_din[2]),
        .I4(i_memc_din[2]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_din[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_din[30]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_din[30]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_din[30]),
        .I4(i_memc_din[30]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_din[30]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_din[31]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_din[31]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_din[31]),
        .I4(i_memc_din[31]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_din[31]));
  LUT4 #(
    .INIT(16'h005D)) 
    \o_BRAM0_din[31]_INST_0_i_1 
       (.I0(bram_sel[1]),
        .I1(i_controlb),
        .I2(i_controla),
        .I3(bram_sel[0]),
        .O(\o_BRAM0_din[31]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \o_BRAM0_din[31]_INST_0_i_2 
       (.I0(bram_sel[0]),
        .I1(bram_sel[1]),
        .I2(i_controla),
        .O(\o_BRAM0_din[31]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \o_BRAM0_din[31]_INST_0_i_3 
       (.I0(bram_sel[1]),
        .I1(bram_sel[0]),
        .I2(i_controlc),
        .I3(i_controla),
        .I4(i_controlb),
        .O(\o_BRAM0_din[31]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_din[3]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_din[3]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_din[3]),
        .I4(i_memc_din[3]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_din[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_din[4]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_din[4]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_din[4]),
        .I4(i_memc_din[4]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_din[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_din[5]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_din[5]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_din[5]),
        .I4(i_memc_din[5]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_din[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_din[6]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_din[6]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_din[6]),
        .I4(i_memc_din[6]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_din[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_din[7]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_din[7]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_din[7]),
        .I4(i_memc_din[7]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_din[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_din[8]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_din[8]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_din[8]),
        .I4(i_memc_din[8]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_din[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_din[9]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_din[9]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_din[9]),
        .I4(i_memc_din[9]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_din[9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    o_BRAM0_en_INST_0
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_en),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_en),
        .I4(i_memc_en),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_en));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    o_BRAM0_rst_INST_0
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_rst),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_rst),
        .I4(i_memc_rst),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_rst));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_we[0]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_we[0]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_we[0]),
        .I4(i_memc_we[0]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_we[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_we[1]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_we[1]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_we[1]),
        .I4(i_memc_we[1]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_we[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_we[2]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_we[2]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_we[2]),
        .I4(i_memc_we[2]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_we[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM0_we[3]_INST_0 
       (.I0(\o_BRAM0_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memb_we[3]),
        .I2(\o_BRAM0_din[31]_INST_0_i_2_n_0 ),
        .I3(i_mema_we[3]),
        .I4(i_memc_we[3]),
        .I5(\o_BRAM0_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM0_we[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_addr[0]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[0]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_addr[0]),
        .I4(i_mema_addr[0]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_addr[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_addr[10]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[10]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_addr[10]),
        .I4(i_mema_addr[10]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_addr[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_addr[11]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[11]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_addr[11]),
        .I4(i_mema_addr[11]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_addr[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_addr[12]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[12]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_addr[12]),
        .I4(i_mema_addr[12]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_addr[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_addr[13]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[13]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_addr[13]),
        .I4(i_mema_addr[13]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_addr[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_addr[14]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[14]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_addr[14]),
        .I4(i_mema_addr[14]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_addr[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_addr[15]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[15]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_addr[15]),
        .I4(i_mema_addr[15]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_addr[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_addr[16]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[16]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_addr[16]),
        .I4(i_mema_addr[16]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_addr[16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_addr[17]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[17]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_addr[17]),
        .I4(i_mema_addr[17]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_addr[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_addr[18]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[18]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_addr[18]),
        .I4(i_mema_addr[18]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_addr[18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_addr[19]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[19]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_addr[19]),
        .I4(i_mema_addr[19]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_addr[19]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_addr[1]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[1]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_addr[1]),
        .I4(i_mema_addr[1]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_addr[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_addr[20]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[20]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_addr[20]),
        .I4(i_mema_addr[20]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_addr[20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_addr[21]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[21]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_addr[21]),
        .I4(i_mema_addr[21]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_addr[21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_addr[22]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[22]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_addr[22]),
        .I4(i_mema_addr[22]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_addr[22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_addr[23]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[23]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_addr[23]),
        .I4(i_mema_addr[23]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_addr[23]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_addr[24]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[24]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_addr[24]),
        .I4(i_mema_addr[24]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_addr[24]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_addr[25]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[25]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_addr[25]),
        .I4(i_mema_addr[25]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_addr[25]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_addr[26]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[26]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_addr[26]),
        .I4(i_mema_addr[26]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_addr[26]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_addr[27]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[27]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_addr[27]),
        .I4(i_mema_addr[27]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_addr[27]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_addr[28]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[28]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_addr[28]),
        .I4(i_mema_addr[28]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_addr[28]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_addr[29]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[29]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_addr[29]),
        .I4(i_mema_addr[29]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_addr[29]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_addr[2]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[2]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_addr[2]),
        .I4(i_mema_addr[2]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_addr[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_addr[30]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[30]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_addr[30]),
        .I4(i_mema_addr[30]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_addr[30]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_addr[31]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[31]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_addr[31]),
        .I4(i_mema_addr[31]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_addr[31]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_addr[3]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[3]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_addr[3]),
        .I4(i_mema_addr[3]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_addr[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_addr[4]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[4]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_addr[4]),
        .I4(i_mema_addr[4]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_addr[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_addr[5]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[5]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_addr[5]),
        .I4(i_mema_addr[5]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_addr[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_addr[6]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[6]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_addr[6]),
        .I4(i_mema_addr[6]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_addr[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_addr[7]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[7]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_addr[7]),
        .I4(i_mema_addr[7]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_addr[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_addr[8]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[8]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_addr[8]),
        .I4(i_mema_addr[8]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_addr[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_addr[9]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_addr[9]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_addr[9]),
        .I4(i_mema_addr[9]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_addr[9]));
  LUT5 #(
    .INIT(32'h00FF00F8)) 
    o_BRAM1_control_INST_0
       (.I0(bram_sel[0]),
        .I1(i_controlb),
        .I2(i_controla),
        .I3(bram_sel[1]),
        .I4(i_controlc),
        .O(o_BRAM1_control));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_din[0]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[0]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_din[0]),
        .I4(i_mema_din[0]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_din[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_din[10]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[10]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_din[10]),
        .I4(i_mema_din[10]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_din[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_din[11]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[11]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_din[11]),
        .I4(i_mema_din[11]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_din[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_din[12]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[12]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_din[12]),
        .I4(i_mema_din[12]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_din[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_din[13]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[13]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_din[13]),
        .I4(i_mema_din[13]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_din[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_din[14]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[14]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_din[14]),
        .I4(i_mema_din[14]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_din[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_din[15]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[15]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_din[15]),
        .I4(i_mema_din[15]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_din[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_din[16]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[16]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_din[16]),
        .I4(i_mema_din[16]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_din[16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_din[17]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[17]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_din[17]),
        .I4(i_mema_din[17]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_din[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_din[18]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[18]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_din[18]),
        .I4(i_mema_din[18]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_din[18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_din[19]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[19]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_din[19]),
        .I4(i_mema_din[19]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_din[19]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_din[1]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[1]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_din[1]),
        .I4(i_mema_din[1]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_din[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_din[20]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[20]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_din[20]),
        .I4(i_mema_din[20]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_din[20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_din[21]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[21]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_din[21]),
        .I4(i_mema_din[21]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_din[21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_din[22]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[22]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_din[22]),
        .I4(i_mema_din[22]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_din[22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_din[23]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[23]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_din[23]),
        .I4(i_mema_din[23]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_din[23]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_din[24]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[24]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_din[24]),
        .I4(i_mema_din[24]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_din[24]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_din[25]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[25]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_din[25]),
        .I4(i_mema_din[25]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_din[25]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_din[26]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[26]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_din[26]),
        .I4(i_mema_din[26]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_din[26]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_din[27]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[27]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_din[27]),
        .I4(i_mema_din[27]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_din[27]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_din[28]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[28]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_din[28]),
        .I4(i_mema_din[28]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_din[28]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_din[29]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[29]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_din[29]),
        .I4(i_mema_din[29]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_din[29]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_din[2]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[2]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_din[2]),
        .I4(i_mema_din[2]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_din[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_din[30]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[30]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_din[30]),
        .I4(i_mema_din[30]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_din[30]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_din[31]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[31]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_din[31]),
        .I4(i_mema_din[31]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_din[31]));
  LUT5 #(
    .INIT(32'h00040404)) 
    \o_BRAM1_din[31]_INST_0_i_1 
       (.I0(bram_sel[1]),
        .I1(i_controlc),
        .I2(i_controla),
        .I3(bram_sel[0]),
        .I4(i_controlb),
        .O(\o_BRAM1_din[31]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \o_BRAM1_din[31]_INST_0_i_2 
       (.I0(bram_sel[1]),
        .I1(i_controlb),
        .I2(bram_sel[0]),
        .I3(i_controla),
        .O(\o_BRAM1_din[31]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o_BRAM1_din[31]_INST_0_i_3 
       (.I0(i_controla),
        .I1(bram_sel[1]),
        .O(\o_BRAM1_din[31]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_din[3]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[3]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_din[3]),
        .I4(i_mema_din[3]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_din[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_din[4]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[4]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_din[4]),
        .I4(i_mema_din[4]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_din[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_din[5]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[5]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_din[5]),
        .I4(i_mema_din[5]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_din[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_din[6]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[6]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_din[6]),
        .I4(i_mema_din[6]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_din[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_din[7]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[7]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_din[7]),
        .I4(i_mema_din[7]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_din[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_din[8]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[8]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_din[8]),
        .I4(i_mema_din[8]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_din[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_din[9]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_din[9]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_din[9]),
        .I4(i_mema_din[9]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_din[9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    o_BRAM1_en_INST_0
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_en),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_en),
        .I4(i_mema_en),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_en));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    o_BRAM1_rst_INST_0
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_rst),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_rst),
        .I4(i_mema_rst),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_rst));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_we[0]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_we[0]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_we[0]),
        .I4(i_mema_we[0]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_we[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_we[1]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_we[1]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_we[1]),
        .I4(i_mema_we[1]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_we[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_we[2]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_we[2]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_we[2]),
        .I4(i_mema_we[2]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_we[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_BRAM1_we[3]_INST_0 
       (.I0(\o_BRAM1_din[31]_INST_0_i_1_n_0 ),
        .I1(i_memc_we[3]),
        .I2(\o_BRAM1_din[31]_INST_0_i_2_n_0 ),
        .I3(i_memb_we[3]),
        .I4(i_mema_we[3]),
        .I5(\o_BRAM1_din[31]_INST_0_i_3_n_0 ),
        .O(o_BRAM1_we[3]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_mema_dout[0]_INST_0 
       (.I0(i_BRAM0_dout[0]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[0]),
        .I3(i_controla),
        .I4(bram_sel[1]),
        .O(o_mema_dout[0]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_mema_dout[10]_INST_0 
       (.I0(i_BRAM0_dout[10]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[10]),
        .I3(i_controla),
        .I4(bram_sel[1]),
        .O(o_mema_dout[10]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_mema_dout[11]_INST_0 
       (.I0(i_BRAM0_dout[11]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[11]),
        .I3(i_controla),
        .I4(bram_sel[1]),
        .O(o_mema_dout[11]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_mema_dout[12]_INST_0 
       (.I0(i_BRAM0_dout[12]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[12]),
        .I3(i_controla),
        .I4(bram_sel[1]),
        .O(o_mema_dout[12]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_mema_dout[13]_INST_0 
       (.I0(i_BRAM0_dout[13]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[13]),
        .I3(i_controla),
        .I4(bram_sel[1]),
        .O(o_mema_dout[13]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_mema_dout[14]_INST_0 
       (.I0(i_BRAM0_dout[14]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[14]),
        .I3(i_controla),
        .I4(bram_sel[1]),
        .O(o_mema_dout[14]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_mema_dout[15]_INST_0 
       (.I0(i_BRAM0_dout[15]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[15]),
        .I3(i_controla),
        .I4(bram_sel[1]),
        .O(o_mema_dout[15]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_mema_dout[16]_INST_0 
       (.I0(i_BRAM0_dout[16]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[16]),
        .I3(i_controla),
        .I4(bram_sel[1]),
        .O(o_mema_dout[16]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_mema_dout[17]_INST_0 
       (.I0(i_BRAM0_dout[17]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[17]),
        .I3(i_controla),
        .I4(bram_sel[1]),
        .O(o_mema_dout[17]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_mema_dout[18]_INST_0 
       (.I0(i_BRAM0_dout[18]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[18]),
        .I3(i_controla),
        .I4(bram_sel[1]),
        .O(o_mema_dout[18]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_mema_dout[19]_INST_0 
       (.I0(i_BRAM0_dout[19]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[19]),
        .I3(i_controla),
        .I4(bram_sel[1]),
        .O(o_mema_dout[19]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_mema_dout[1]_INST_0 
       (.I0(i_BRAM0_dout[1]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[1]),
        .I3(i_controla),
        .I4(bram_sel[1]),
        .O(o_mema_dout[1]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_mema_dout[20]_INST_0 
       (.I0(i_BRAM0_dout[20]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[20]),
        .I3(i_controla),
        .I4(bram_sel[1]),
        .O(o_mema_dout[20]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_mema_dout[21]_INST_0 
       (.I0(i_BRAM0_dout[21]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[21]),
        .I3(i_controla),
        .I4(bram_sel[1]),
        .O(o_mema_dout[21]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_mema_dout[22]_INST_0 
       (.I0(i_BRAM0_dout[22]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[22]),
        .I3(i_controla),
        .I4(bram_sel[1]),
        .O(o_mema_dout[22]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_mema_dout[23]_INST_0 
       (.I0(i_BRAM0_dout[23]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[23]),
        .I3(i_controla),
        .I4(bram_sel[1]),
        .O(o_mema_dout[23]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_mema_dout[24]_INST_0 
       (.I0(i_BRAM0_dout[24]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[24]),
        .I3(i_controla),
        .I4(bram_sel[1]),
        .O(o_mema_dout[24]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_mema_dout[25]_INST_0 
       (.I0(i_BRAM0_dout[25]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[25]),
        .I3(i_controla),
        .I4(bram_sel[1]),
        .O(o_mema_dout[25]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_mema_dout[26]_INST_0 
       (.I0(i_BRAM0_dout[26]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[26]),
        .I3(i_controla),
        .I4(bram_sel[1]),
        .O(o_mema_dout[26]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_mema_dout[27]_INST_0 
       (.I0(i_BRAM0_dout[27]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[27]),
        .I3(i_controla),
        .I4(bram_sel[1]),
        .O(o_mema_dout[27]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_mema_dout[28]_INST_0 
       (.I0(i_BRAM0_dout[28]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[28]),
        .I3(i_controla),
        .I4(bram_sel[1]),
        .O(o_mema_dout[28]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_mema_dout[29]_INST_0 
       (.I0(i_BRAM0_dout[29]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[29]),
        .I3(i_controla),
        .I4(bram_sel[1]),
        .O(o_mema_dout[29]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_mema_dout[2]_INST_0 
       (.I0(i_BRAM0_dout[2]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[2]),
        .I3(i_controla),
        .I4(bram_sel[1]),
        .O(o_mema_dout[2]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_mema_dout[30]_INST_0 
       (.I0(i_BRAM0_dout[30]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[30]),
        .I3(i_controla),
        .I4(bram_sel[1]),
        .O(o_mema_dout[30]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_mema_dout[31]_INST_0 
       (.I0(i_BRAM0_dout[31]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[31]),
        .I3(i_controla),
        .I4(bram_sel[1]),
        .O(o_mema_dout[31]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_mema_dout[3]_INST_0 
       (.I0(i_BRAM0_dout[3]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[3]),
        .I3(i_controla),
        .I4(bram_sel[1]),
        .O(o_mema_dout[3]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_mema_dout[4]_INST_0 
       (.I0(i_BRAM0_dout[4]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[4]),
        .I3(i_controla),
        .I4(bram_sel[1]),
        .O(o_mema_dout[4]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_mema_dout[5]_INST_0 
       (.I0(i_BRAM0_dout[5]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[5]),
        .I3(i_controla),
        .I4(bram_sel[1]),
        .O(o_mema_dout[5]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_mema_dout[6]_INST_0 
       (.I0(i_BRAM0_dout[6]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[6]),
        .I3(i_controla),
        .I4(bram_sel[1]),
        .O(o_mema_dout[6]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_mema_dout[7]_INST_0 
       (.I0(i_BRAM0_dout[7]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[7]),
        .I3(i_controla),
        .I4(bram_sel[1]),
        .O(o_mema_dout[7]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_mema_dout[8]_INST_0 
       (.I0(i_BRAM0_dout[8]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[8]),
        .I3(i_controla),
        .I4(bram_sel[1]),
        .O(o_mema_dout[8]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_mema_dout[9]_INST_0 
       (.I0(i_BRAM0_dout[9]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[9]),
        .I3(i_controla),
        .I4(bram_sel[1]),
        .O(o_mema_dout[9]));
  LUT5 #(
    .INIT(32'h0A00CC0C)) 
    \o_memb_dout[0]_INST_0 
       (.I0(i_BRAM1_dout[0]),
        .I1(i_BRAM0_dout[0]),
        .I2(bram_sel[1]),
        .I3(i_controlb),
        .I4(bram_sel[0]),
        .O(o_memb_dout[0]));
  LUT5 #(
    .INIT(32'h0A00CC0C)) 
    \o_memb_dout[10]_INST_0 
       (.I0(i_BRAM1_dout[10]),
        .I1(i_BRAM0_dout[10]),
        .I2(bram_sel[1]),
        .I3(i_controlb),
        .I4(bram_sel[0]),
        .O(o_memb_dout[10]));
  LUT5 #(
    .INIT(32'h0A00CC0C)) 
    \o_memb_dout[11]_INST_0 
       (.I0(i_BRAM1_dout[11]),
        .I1(i_BRAM0_dout[11]),
        .I2(bram_sel[1]),
        .I3(i_controlb),
        .I4(bram_sel[0]),
        .O(o_memb_dout[11]));
  LUT5 #(
    .INIT(32'h0A00CC0C)) 
    \o_memb_dout[12]_INST_0 
       (.I0(i_BRAM1_dout[12]),
        .I1(i_BRAM0_dout[12]),
        .I2(bram_sel[1]),
        .I3(i_controlb),
        .I4(bram_sel[0]),
        .O(o_memb_dout[12]));
  LUT5 #(
    .INIT(32'h0A00CC0C)) 
    \o_memb_dout[13]_INST_0 
       (.I0(i_BRAM1_dout[13]),
        .I1(i_BRAM0_dout[13]),
        .I2(bram_sel[1]),
        .I3(i_controlb),
        .I4(bram_sel[0]),
        .O(o_memb_dout[13]));
  LUT5 #(
    .INIT(32'h0A00CC0C)) 
    \o_memb_dout[14]_INST_0 
       (.I0(i_BRAM1_dout[14]),
        .I1(i_BRAM0_dout[14]),
        .I2(bram_sel[1]),
        .I3(i_controlb),
        .I4(bram_sel[0]),
        .O(o_memb_dout[14]));
  LUT5 #(
    .INIT(32'h0A00CC0C)) 
    \o_memb_dout[15]_INST_0 
       (.I0(i_BRAM1_dout[15]),
        .I1(i_BRAM0_dout[15]),
        .I2(bram_sel[1]),
        .I3(i_controlb),
        .I4(bram_sel[0]),
        .O(o_memb_dout[15]));
  LUT5 #(
    .INIT(32'h0A00CC0C)) 
    \o_memb_dout[16]_INST_0 
       (.I0(i_BRAM1_dout[16]),
        .I1(i_BRAM0_dout[16]),
        .I2(bram_sel[1]),
        .I3(i_controlb),
        .I4(bram_sel[0]),
        .O(o_memb_dout[16]));
  LUT5 #(
    .INIT(32'h0A00CC0C)) 
    \o_memb_dout[17]_INST_0 
       (.I0(i_BRAM1_dout[17]),
        .I1(i_BRAM0_dout[17]),
        .I2(bram_sel[1]),
        .I3(i_controlb),
        .I4(bram_sel[0]),
        .O(o_memb_dout[17]));
  LUT5 #(
    .INIT(32'h0A00CC0C)) 
    \o_memb_dout[18]_INST_0 
       (.I0(i_BRAM1_dout[18]),
        .I1(i_BRAM0_dout[18]),
        .I2(bram_sel[1]),
        .I3(i_controlb),
        .I4(bram_sel[0]),
        .O(o_memb_dout[18]));
  LUT5 #(
    .INIT(32'h0A00CC0C)) 
    \o_memb_dout[19]_INST_0 
       (.I0(i_BRAM1_dout[19]),
        .I1(i_BRAM0_dout[19]),
        .I2(bram_sel[1]),
        .I3(i_controlb),
        .I4(bram_sel[0]),
        .O(o_memb_dout[19]));
  LUT5 #(
    .INIT(32'h0A00CC0C)) 
    \o_memb_dout[1]_INST_0 
       (.I0(i_BRAM1_dout[1]),
        .I1(i_BRAM0_dout[1]),
        .I2(bram_sel[1]),
        .I3(i_controlb),
        .I4(bram_sel[0]),
        .O(o_memb_dout[1]));
  LUT5 #(
    .INIT(32'h0A00CC0C)) 
    \o_memb_dout[20]_INST_0 
       (.I0(i_BRAM1_dout[20]),
        .I1(i_BRAM0_dout[20]),
        .I2(bram_sel[1]),
        .I3(i_controlb),
        .I4(bram_sel[0]),
        .O(o_memb_dout[20]));
  LUT5 #(
    .INIT(32'h0A00CC0C)) 
    \o_memb_dout[21]_INST_0 
       (.I0(i_BRAM1_dout[21]),
        .I1(i_BRAM0_dout[21]),
        .I2(bram_sel[1]),
        .I3(i_controlb),
        .I4(bram_sel[0]),
        .O(o_memb_dout[21]));
  LUT5 #(
    .INIT(32'h0A00CC0C)) 
    \o_memb_dout[22]_INST_0 
       (.I0(i_BRAM1_dout[22]),
        .I1(i_BRAM0_dout[22]),
        .I2(bram_sel[1]),
        .I3(i_controlb),
        .I4(bram_sel[0]),
        .O(o_memb_dout[22]));
  LUT5 #(
    .INIT(32'h0A00CC0C)) 
    \o_memb_dout[23]_INST_0 
       (.I0(i_BRAM1_dout[23]),
        .I1(i_BRAM0_dout[23]),
        .I2(bram_sel[1]),
        .I3(i_controlb),
        .I4(bram_sel[0]),
        .O(o_memb_dout[23]));
  LUT5 #(
    .INIT(32'h0A00CC0C)) 
    \o_memb_dout[24]_INST_0 
       (.I0(i_BRAM1_dout[24]),
        .I1(i_BRAM0_dout[24]),
        .I2(bram_sel[1]),
        .I3(i_controlb),
        .I4(bram_sel[0]),
        .O(o_memb_dout[24]));
  LUT5 #(
    .INIT(32'h0A00CC0C)) 
    \o_memb_dout[25]_INST_0 
       (.I0(i_BRAM1_dout[25]),
        .I1(i_BRAM0_dout[25]),
        .I2(bram_sel[1]),
        .I3(i_controlb),
        .I4(bram_sel[0]),
        .O(o_memb_dout[25]));
  LUT5 #(
    .INIT(32'h0A00CC0C)) 
    \o_memb_dout[26]_INST_0 
       (.I0(i_BRAM1_dout[26]),
        .I1(i_BRAM0_dout[26]),
        .I2(bram_sel[1]),
        .I3(i_controlb),
        .I4(bram_sel[0]),
        .O(o_memb_dout[26]));
  LUT5 #(
    .INIT(32'h0A00CC0C)) 
    \o_memb_dout[27]_INST_0 
       (.I0(i_BRAM1_dout[27]),
        .I1(i_BRAM0_dout[27]),
        .I2(bram_sel[1]),
        .I3(i_controlb),
        .I4(bram_sel[0]),
        .O(o_memb_dout[27]));
  LUT5 #(
    .INIT(32'h0A00CC0C)) 
    \o_memb_dout[28]_INST_0 
       (.I0(i_BRAM1_dout[28]),
        .I1(i_BRAM0_dout[28]),
        .I2(bram_sel[1]),
        .I3(i_controlb),
        .I4(bram_sel[0]),
        .O(o_memb_dout[28]));
  LUT5 #(
    .INIT(32'h0A00CC0C)) 
    \o_memb_dout[29]_INST_0 
       (.I0(i_BRAM1_dout[29]),
        .I1(i_BRAM0_dout[29]),
        .I2(bram_sel[1]),
        .I3(i_controlb),
        .I4(bram_sel[0]),
        .O(o_memb_dout[29]));
  LUT5 #(
    .INIT(32'h0A00CC0C)) 
    \o_memb_dout[2]_INST_0 
       (.I0(i_BRAM1_dout[2]),
        .I1(i_BRAM0_dout[2]),
        .I2(bram_sel[1]),
        .I3(i_controlb),
        .I4(bram_sel[0]),
        .O(o_memb_dout[2]));
  LUT5 #(
    .INIT(32'h0A00CC0C)) 
    \o_memb_dout[30]_INST_0 
       (.I0(i_BRAM1_dout[30]),
        .I1(i_BRAM0_dout[30]),
        .I2(bram_sel[1]),
        .I3(i_controlb),
        .I4(bram_sel[0]),
        .O(o_memb_dout[30]));
  LUT5 #(
    .INIT(32'h0A00CC0C)) 
    \o_memb_dout[31]_INST_0 
       (.I0(i_BRAM1_dout[31]),
        .I1(i_BRAM0_dout[31]),
        .I2(bram_sel[1]),
        .I3(i_controlb),
        .I4(bram_sel[0]),
        .O(o_memb_dout[31]));
  LUT5 #(
    .INIT(32'h0A00CC0C)) 
    \o_memb_dout[3]_INST_0 
       (.I0(i_BRAM1_dout[3]),
        .I1(i_BRAM0_dout[3]),
        .I2(bram_sel[1]),
        .I3(i_controlb),
        .I4(bram_sel[0]),
        .O(o_memb_dout[3]));
  LUT5 #(
    .INIT(32'h0A00CC0C)) 
    \o_memb_dout[4]_INST_0 
       (.I0(i_BRAM1_dout[4]),
        .I1(i_BRAM0_dout[4]),
        .I2(bram_sel[1]),
        .I3(i_controlb),
        .I4(bram_sel[0]),
        .O(o_memb_dout[4]));
  LUT5 #(
    .INIT(32'h0A00CC0C)) 
    \o_memb_dout[5]_INST_0 
       (.I0(i_BRAM1_dout[5]),
        .I1(i_BRAM0_dout[5]),
        .I2(bram_sel[1]),
        .I3(i_controlb),
        .I4(bram_sel[0]),
        .O(o_memb_dout[5]));
  LUT5 #(
    .INIT(32'h0A00CC0C)) 
    \o_memb_dout[6]_INST_0 
       (.I0(i_BRAM1_dout[6]),
        .I1(i_BRAM0_dout[6]),
        .I2(bram_sel[1]),
        .I3(i_controlb),
        .I4(bram_sel[0]),
        .O(o_memb_dout[6]));
  LUT5 #(
    .INIT(32'h0A00CC0C)) 
    \o_memb_dout[7]_INST_0 
       (.I0(i_BRAM1_dout[7]),
        .I1(i_BRAM0_dout[7]),
        .I2(bram_sel[1]),
        .I3(i_controlb),
        .I4(bram_sel[0]),
        .O(o_memb_dout[7]));
  LUT5 #(
    .INIT(32'h0A00CC0C)) 
    \o_memb_dout[8]_INST_0 
       (.I0(i_BRAM1_dout[8]),
        .I1(i_BRAM0_dout[8]),
        .I2(bram_sel[1]),
        .I3(i_controlb),
        .I4(bram_sel[0]),
        .O(o_memb_dout[8]));
  LUT5 #(
    .INIT(32'h0A00CC0C)) 
    \o_memb_dout[9]_INST_0 
       (.I0(i_BRAM1_dout[9]),
        .I1(i_BRAM0_dout[9]),
        .I2(bram_sel[1]),
        .I3(i_controlb),
        .I4(bram_sel[0]),
        .O(o_memb_dout[9]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_memc_dout[0]_INST_0 
       (.I0(i_BRAM0_dout[0]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[0]),
        .I3(i_controlc),
        .I4(bram_sel[1]),
        .O(o_memc_dout[0]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_memc_dout[10]_INST_0 
       (.I0(i_BRAM0_dout[10]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[10]),
        .I3(i_controlc),
        .I4(bram_sel[1]),
        .O(o_memc_dout[10]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_memc_dout[11]_INST_0 
       (.I0(i_BRAM0_dout[11]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[11]),
        .I3(i_controlc),
        .I4(bram_sel[1]),
        .O(o_memc_dout[11]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_memc_dout[12]_INST_0 
       (.I0(i_BRAM0_dout[12]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[12]),
        .I3(i_controlc),
        .I4(bram_sel[1]),
        .O(o_memc_dout[12]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_memc_dout[13]_INST_0 
       (.I0(i_BRAM0_dout[13]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[13]),
        .I3(i_controlc),
        .I4(bram_sel[1]),
        .O(o_memc_dout[13]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_memc_dout[14]_INST_0 
       (.I0(i_BRAM0_dout[14]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[14]),
        .I3(i_controlc),
        .I4(bram_sel[1]),
        .O(o_memc_dout[14]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_memc_dout[15]_INST_0 
       (.I0(i_BRAM0_dout[15]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[15]),
        .I3(i_controlc),
        .I4(bram_sel[1]),
        .O(o_memc_dout[15]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_memc_dout[16]_INST_0 
       (.I0(i_BRAM0_dout[16]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[16]),
        .I3(i_controlc),
        .I4(bram_sel[1]),
        .O(o_memc_dout[16]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_memc_dout[17]_INST_0 
       (.I0(i_BRAM0_dout[17]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[17]),
        .I3(i_controlc),
        .I4(bram_sel[1]),
        .O(o_memc_dout[17]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_memc_dout[18]_INST_0 
       (.I0(i_BRAM0_dout[18]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[18]),
        .I3(i_controlc),
        .I4(bram_sel[1]),
        .O(o_memc_dout[18]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_memc_dout[19]_INST_0 
       (.I0(i_BRAM0_dout[19]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[19]),
        .I3(i_controlc),
        .I4(bram_sel[1]),
        .O(o_memc_dout[19]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_memc_dout[1]_INST_0 
       (.I0(i_BRAM0_dout[1]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[1]),
        .I3(i_controlc),
        .I4(bram_sel[1]),
        .O(o_memc_dout[1]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_memc_dout[20]_INST_0 
       (.I0(i_BRAM0_dout[20]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[20]),
        .I3(i_controlc),
        .I4(bram_sel[1]),
        .O(o_memc_dout[20]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_memc_dout[21]_INST_0 
       (.I0(i_BRAM0_dout[21]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[21]),
        .I3(i_controlc),
        .I4(bram_sel[1]),
        .O(o_memc_dout[21]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_memc_dout[22]_INST_0 
       (.I0(i_BRAM0_dout[22]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[22]),
        .I3(i_controlc),
        .I4(bram_sel[1]),
        .O(o_memc_dout[22]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_memc_dout[23]_INST_0 
       (.I0(i_BRAM0_dout[23]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[23]),
        .I3(i_controlc),
        .I4(bram_sel[1]),
        .O(o_memc_dout[23]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_memc_dout[24]_INST_0 
       (.I0(i_BRAM0_dout[24]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[24]),
        .I3(i_controlc),
        .I4(bram_sel[1]),
        .O(o_memc_dout[24]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_memc_dout[25]_INST_0 
       (.I0(i_BRAM0_dout[25]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[25]),
        .I3(i_controlc),
        .I4(bram_sel[1]),
        .O(o_memc_dout[25]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_memc_dout[26]_INST_0 
       (.I0(i_BRAM0_dout[26]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[26]),
        .I3(i_controlc),
        .I4(bram_sel[1]),
        .O(o_memc_dout[26]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_memc_dout[27]_INST_0 
       (.I0(i_BRAM0_dout[27]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[27]),
        .I3(i_controlc),
        .I4(bram_sel[1]),
        .O(o_memc_dout[27]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_memc_dout[28]_INST_0 
       (.I0(i_BRAM0_dout[28]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[28]),
        .I3(i_controlc),
        .I4(bram_sel[1]),
        .O(o_memc_dout[28]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_memc_dout[29]_INST_0 
       (.I0(i_BRAM0_dout[29]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[29]),
        .I3(i_controlc),
        .I4(bram_sel[1]),
        .O(o_memc_dout[29]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_memc_dout[2]_INST_0 
       (.I0(i_BRAM0_dout[2]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[2]),
        .I3(i_controlc),
        .I4(bram_sel[1]),
        .O(o_memc_dout[2]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_memc_dout[30]_INST_0 
       (.I0(i_BRAM0_dout[30]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[30]),
        .I3(i_controlc),
        .I4(bram_sel[1]),
        .O(o_memc_dout[30]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_memc_dout[31]_INST_0 
       (.I0(i_BRAM0_dout[31]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[31]),
        .I3(i_controlc),
        .I4(bram_sel[1]),
        .O(o_memc_dout[31]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_memc_dout[3]_INST_0 
       (.I0(i_BRAM0_dout[3]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[3]),
        .I3(i_controlc),
        .I4(bram_sel[1]),
        .O(o_memc_dout[3]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_memc_dout[4]_INST_0 
       (.I0(i_BRAM0_dout[4]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[4]),
        .I3(i_controlc),
        .I4(bram_sel[1]),
        .O(o_memc_dout[4]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_memc_dout[5]_INST_0 
       (.I0(i_BRAM0_dout[5]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[5]),
        .I3(i_controlc),
        .I4(bram_sel[1]),
        .O(o_memc_dout[5]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_memc_dout[6]_INST_0 
       (.I0(i_BRAM0_dout[6]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[6]),
        .I3(i_controlc),
        .I4(bram_sel[1]),
        .O(o_memc_dout[6]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_memc_dout[7]_INST_0 
       (.I0(i_BRAM0_dout[7]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[7]),
        .I3(i_controlc),
        .I4(bram_sel[1]),
        .O(o_memc_dout[7]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_memc_dout[8]_INST_0 
       (.I0(i_BRAM0_dout[8]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[8]),
        .I3(i_controlc),
        .I4(bram_sel[1]),
        .O(o_memc_dout[8]));
  LUT5 #(
    .INIT(32'h2200F000)) 
    \o_memc_dout[9]_INST_0 
       (.I0(i_BRAM0_dout[9]),
        .I1(bram_sel[0]),
        .I2(i_BRAM1_dout[9]),
        .I3(i_controlc),
        .I4(bram_sel[1]),
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
