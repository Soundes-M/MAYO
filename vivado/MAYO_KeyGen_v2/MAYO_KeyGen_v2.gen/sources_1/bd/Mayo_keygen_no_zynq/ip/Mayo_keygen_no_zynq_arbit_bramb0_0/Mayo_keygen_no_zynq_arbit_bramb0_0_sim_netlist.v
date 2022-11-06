// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Oct 23 16:36:09 2022
// Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen_no_zynq/ip/Mayo_keygen_no_zynq_arbit_bramb0_0/Mayo_keygen_no_zynq_arbit_bramb0_0_sim_netlist.v
// Design      : Mayo_keygen_no_zynq_arbit_bramb0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Mayo_keygen_no_zynq_arbit_bramb0_0,mayo_bram_arbiter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "mayo_bram_arbiter,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Mayo_keygen_no_zynq_arbit_bramb0_0
   (rst,
    BRAM_add_din,
    BRAM_add_addr,
    BRAM_add_en,
    BRAM_add_rst,
    BRAM_add_we,
    BRAM_add_dout,
    BRAM_lin_din,
    BRAM_lin_addr,
    BRAM_lin_en,
    BRAM_lin_rst,
    BRAM_lin_we,
    BRAM_lin_dout,
    BRAM_neg_din,
    BRAM_neg_addr,
    BRAM_neg_en,
    BRAM_neg_rst,
    BRAM_neg_we,
    BRAM_neg_dout,
    BRAM_red_din,
    BRAM_red_addr,
    BRAM_red_en,
    BRAM_red_rst,
    BRAM_red_we,
    BRAM_red_dout,
    BRAM_key_din,
    BRAM_key_addr,
    BRAM_key_en,
    BRAM_key_rst,
    BRAM_key_we,
    BRAM_key_dout,
    BRAM_sam_din,
    BRAM_sam_addr,
    BRAM_sam_en,
    BRAM_sam_rst,
    BRAM_sam_we,
    BRAM_sam_dout,
    BRAM_hash_din,
    BRAM_hash_addr,
    BRAM_hash_en,
    BRAM_hash_rst,
    BRAM_hash_we,
    BRAM_hash_dout,
    BRAM_din,
    BRAM_addr,
    BRAM_en,
    BRAM_rst,
    BRAM_we,
    BRAM_dout,
    add_control,
    lin_control,
    neg_control,
    red_control,
    sam_control,
    hash_control,
    bram_control);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [31:0]BRAM_add_din;
  input [31:0]BRAM_add_addr;
  input BRAM_add_en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 BRAM_add_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_add_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input BRAM_add_rst;
  input [3:0]BRAM_add_we;
  output [31:0]BRAM_add_dout;
  input [31:0]BRAM_lin_din;
  input [31:0]BRAM_lin_addr;
  input BRAM_lin_en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 BRAM_lin_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_lin_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input BRAM_lin_rst;
  input [3:0]BRAM_lin_we;
  output [31:0]BRAM_lin_dout;
  input [31:0]BRAM_neg_din;
  input [31:0]BRAM_neg_addr;
  input BRAM_neg_en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 BRAM_neg_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_neg_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input BRAM_neg_rst;
  input [3:0]BRAM_neg_we;
  output [31:0]BRAM_neg_dout;
  input [31:0]BRAM_red_din;
  input [31:0]BRAM_red_addr;
  input BRAM_red_en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 BRAM_red_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_red_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input BRAM_red_rst;
  input [3:0]BRAM_red_we;
  output [31:0]BRAM_red_dout;
  input [31:0]BRAM_key_din;
  input [31:0]BRAM_key_addr;
  input BRAM_key_en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 BRAM_key_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_key_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input BRAM_key_rst;
  input [3:0]BRAM_key_we;
  output [31:0]BRAM_key_dout;
  input [31:0]BRAM_sam_din;
  input [31:0]BRAM_sam_addr;
  input BRAM_sam_en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 BRAM_sam_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_sam_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input BRAM_sam_rst;
  input [3:0]BRAM_sam_we;
  output [31:0]BRAM_sam_dout;
  input [31:0]BRAM_hash_din;
  input [31:0]BRAM_hash_addr;
  input BRAM_hash_en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 BRAM_hash_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_hash_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input BRAM_hash_rst;
  input [3:0]BRAM_hash_we;
  output [31:0]BRAM_hash_dout;
  output [31:0]BRAM_din;
  output [31:0]BRAM_addr;
  output BRAM_en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 BRAM_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output BRAM_rst;
  output [3:0]BRAM_we;
  input [31:0]BRAM_dout;
  input add_control;
  input lin_control;
  input neg_control;
  input red_control;
  input sam_control;
  input hash_control;
  input bram_control;

  wire [31:0]BRAM_add_addr;
  wire [31:0]BRAM_add_din;
  wire [31:0]BRAM_add_dout;
  wire BRAM_add_en;
  wire BRAM_add_rst;
  wire [3:0]BRAM_add_we;
  wire [31:0]BRAM_addr;
  wire \BRAM_addr[0]_INST_0_i_1_n_0 ;
  wire \BRAM_addr[0]_INST_0_i_2_n_0 ;
  wire \BRAM_addr[10]_INST_0_i_1_n_0 ;
  wire \BRAM_addr[10]_INST_0_i_2_n_0 ;
  wire \BRAM_addr[11]_INST_0_i_1_n_0 ;
  wire \BRAM_addr[11]_INST_0_i_2_n_0 ;
  wire \BRAM_addr[12]_INST_0_i_1_n_0 ;
  wire \BRAM_addr[12]_INST_0_i_2_n_0 ;
  wire \BRAM_addr[13]_INST_0_i_1_n_0 ;
  wire \BRAM_addr[13]_INST_0_i_2_n_0 ;
  wire \BRAM_addr[14]_INST_0_i_1_n_0 ;
  wire \BRAM_addr[14]_INST_0_i_2_n_0 ;
  wire \BRAM_addr[15]_INST_0_i_1_n_0 ;
  wire \BRAM_addr[15]_INST_0_i_2_n_0 ;
  wire \BRAM_addr[16]_INST_0_i_1_n_0 ;
  wire \BRAM_addr[16]_INST_0_i_2_n_0 ;
  wire \BRAM_addr[17]_INST_0_i_1_n_0 ;
  wire \BRAM_addr[17]_INST_0_i_2_n_0 ;
  wire \BRAM_addr[18]_INST_0_i_1_n_0 ;
  wire \BRAM_addr[18]_INST_0_i_2_n_0 ;
  wire \BRAM_addr[19]_INST_0_i_1_n_0 ;
  wire \BRAM_addr[19]_INST_0_i_2_n_0 ;
  wire \BRAM_addr[1]_INST_0_i_1_n_0 ;
  wire \BRAM_addr[1]_INST_0_i_2_n_0 ;
  wire \BRAM_addr[20]_INST_0_i_1_n_0 ;
  wire \BRAM_addr[20]_INST_0_i_2_n_0 ;
  wire \BRAM_addr[21]_INST_0_i_1_n_0 ;
  wire \BRAM_addr[21]_INST_0_i_2_n_0 ;
  wire \BRAM_addr[22]_INST_0_i_1_n_0 ;
  wire \BRAM_addr[22]_INST_0_i_2_n_0 ;
  wire \BRAM_addr[23]_INST_0_i_1_n_0 ;
  wire \BRAM_addr[23]_INST_0_i_2_n_0 ;
  wire \BRAM_addr[24]_INST_0_i_1_n_0 ;
  wire \BRAM_addr[24]_INST_0_i_2_n_0 ;
  wire \BRAM_addr[25]_INST_0_i_1_n_0 ;
  wire \BRAM_addr[25]_INST_0_i_2_n_0 ;
  wire \BRAM_addr[26]_INST_0_i_1_n_0 ;
  wire \BRAM_addr[26]_INST_0_i_2_n_0 ;
  wire \BRAM_addr[27]_INST_0_i_1_n_0 ;
  wire \BRAM_addr[27]_INST_0_i_2_n_0 ;
  wire \BRAM_addr[28]_INST_0_i_1_n_0 ;
  wire \BRAM_addr[28]_INST_0_i_2_n_0 ;
  wire \BRAM_addr[29]_INST_0_i_1_n_0 ;
  wire \BRAM_addr[29]_INST_0_i_2_n_0 ;
  wire \BRAM_addr[2]_INST_0_i_1_n_0 ;
  wire \BRAM_addr[2]_INST_0_i_2_n_0 ;
  wire \BRAM_addr[30]_INST_0_i_1_n_0 ;
  wire \BRAM_addr[30]_INST_0_i_2_n_0 ;
  wire \BRAM_addr[31]_INST_0_i_1_n_0 ;
  wire \BRAM_addr[31]_INST_0_i_2_n_0 ;
  wire \BRAM_addr[3]_INST_0_i_1_n_0 ;
  wire \BRAM_addr[3]_INST_0_i_2_n_0 ;
  wire \BRAM_addr[4]_INST_0_i_1_n_0 ;
  wire \BRAM_addr[4]_INST_0_i_2_n_0 ;
  wire \BRAM_addr[5]_INST_0_i_1_n_0 ;
  wire \BRAM_addr[5]_INST_0_i_2_n_0 ;
  wire \BRAM_addr[6]_INST_0_i_1_n_0 ;
  wire \BRAM_addr[6]_INST_0_i_2_n_0 ;
  wire \BRAM_addr[7]_INST_0_i_1_n_0 ;
  wire \BRAM_addr[7]_INST_0_i_2_n_0 ;
  wire \BRAM_addr[8]_INST_0_i_1_n_0 ;
  wire \BRAM_addr[8]_INST_0_i_2_n_0 ;
  wire \BRAM_addr[9]_INST_0_i_1_n_0 ;
  wire \BRAM_addr[9]_INST_0_i_2_n_0 ;
  wire [31:0]BRAM_din;
  wire \BRAM_din[0]_INST_0_i_1_n_0 ;
  wire \BRAM_din[0]_INST_0_i_2_n_0 ;
  wire \BRAM_din[10]_INST_0_i_1_n_0 ;
  wire \BRAM_din[10]_INST_0_i_2_n_0 ;
  wire \BRAM_din[11]_INST_0_i_1_n_0 ;
  wire \BRAM_din[11]_INST_0_i_2_n_0 ;
  wire \BRAM_din[12]_INST_0_i_1_n_0 ;
  wire \BRAM_din[12]_INST_0_i_2_n_0 ;
  wire \BRAM_din[13]_INST_0_i_1_n_0 ;
  wire \BRAM_din[13]_INST_0_i_2_n_0 ;
  wire \BRAM_din[14]_INST_0_i_1_n_0 ;
  wire \BRAM_din[14]_INST_0_i_2_n_0 ;
  wire \BRAM_din[15]_INST_0_i_1_n_0 ;
  wire \BRAM_din[15]_INST_0_i_2_n_0 ;
  wire \BRAM_din[16]_INST_0_i_1_n_0 ;
  wire \BRAM_din[16]_INST_0_i_2_n_0 ;
  wire \BRAM_din[17]_INST_0_i_1_n_0 ;
  wire \BRAM_din[17]_INST_0_i_2_n_0 ;
  wire \BRAM_din[18]_INST_0_i_1_n_0 ;
  wire \BRAM_din[18]_INST_0_i_2_n_0 ;
  wire \BRAM_din[19]_INST_0_i_1_n_0 ;
  wire \BRAM_din[19]_INST_0_i_2_n_0 ;
  wire \BRAM_din[1]_INST_0_i_1_n_0 ;
  wire \BRAM_din[1]_INST_0_i_2_n_0 ;
  wire \BRAM_din[20]_INST_0_i_1_n_0 ;
  wire \BRAM_din[20]_INST_0_i_2_n_0 ;
  wire \BRAM_din[21]_INST_0_i_1_n_0 ;
  wire \BRAM_din[21]_INST_0_i_2_n_0 ;
  wire \BRAM_din[22]_INST_0_i_1_n_0 ;
  wire \BRAM_din[22]_INST_0_i_2_n_0 ;
  wire \BRAM_din[23]_INST_0_i_1_n_0 ;
  wire \BRAM_din[23]_INST_0_i_2_n_0 ;
  wire \BRAM_din[24]_INST_0_i_1_n_0 ;
  wire \BRAM_din[24]_INST_0_i_2_n_0 ;
  wire \BRAM_din[25]_INST_0_i_1_n_0 ;
  wire \BRAM_din[25]_INST_0_i_2_n_0 ;
  wire \BRAM_din[26]_INST_0_i_1_n_0 ;
  wire \BRAM_din[26]_INST_0_i_2_n_0 ;
  wire \BRAM_din[27]_INST_0_i_1_n_0 ;
  wire \BRAM_din[27]_INST_0_i_2_n_0 ;
  wire \BRAM_din[28]_INST_0_i_1_n_0 ;
  wire \BRAM_din[28]_INST_0_i_2_n_0 ;
  wire \BRAM_din[29]_INST_0_i_1_n_0 ;
  wire \BRAM_din[29]_INST_0_i_2_n_0 ;
  wire \BRAM_din[2]_INST_0_i_1_n_0 ;
  wire \BRAM_din[2]_INST_0_i_2_n_0 ;
  wire \BRAM_din[30]_INST_0_i_1_n_0 ;
  wire \BRAM_din[30]_INST_0_i_2_n_0 ;
  wire \BRAM_din[31]_INST_0_i_1_n_0 ;
  wire \BRAM_din[31]_INST_0_i_2_n_0 ;
  wire \BRAM_din[31]_INST_0_i_3_n_0 ;
  wire \BRAM_din[3]_INST_0_i_1_n_0 ;
  wire \BRAM_din[3]_INST_0_i_2_n_0 ;
  wire \BRAM_din[4]_INST_0_i_1_n_0 ;
  wire \BRAM_din[4]_INST_0_i_2_n_0 ;
  wire \BRAM_din[5]_INST_0_i_1_n_0 ;
  wire \BRAM_din[5]_INST_0_i_2_n_0 ;
  wire \BRAM_din[6]_INST_0_i_1_n_0 ;
  wire \BRAM_din[6]_INST_0_i_2_n_0 ;
  wire \BRAM_din[7]_INST_0_i_1_n_0 ;
  wire \BRAM_din[7]_INST_0_i_2_n_0 ;
  wire \BRAM_din[8]_INST_0_i_1_n_0 ;
  wire \BRAM_din[8]_INST_0_i_2_n_0 ;
  wire \BRAM_din[9]_INST_0_i_1_n_0 ;
  wire \BRAM_din[9]_INST_0_i_2_n_0 ;
  wire [31:0]BRAM_dout;
  wire BRAM_en;
  wire [31:0]BRAM_hash_addr;
  wire [31:0]BRAM_hash_din;
  wire [31:0]BRAM_hash_dout;
  wire BRAM_hash_en;
  wire BRAM_hash_rst;
  wire [3:0]BRAM_hash_we;
  wire [31:0]BRAM_key_addr;
  wire [31:0]BRAM_key_din;
  wire [31:0]BRAM_key_dout;
  wire BRAM_key_en;
  wire BRAM_key_rst;
  wire [3:0]BRAM_key_we;
  wire [31:0]BRAM_lin_addr;
  wire [31:0]BRAM_lin_din;
  wire [31:0]BRAM_lin_dout;
  wire BRAM_lin_en;
  wire BRAM_lin_rst;
  wire [3:0]BRAM_lin_we;
  wire [31:0]BRAM_neg_addr;
  wire [31:0]BRAM_neg_din;
  wire [31:0]BRAM_neg_dout;
  wire BRAM_neg_en;
  wire BRAM_neg_rst;
  wire [3:0]BRAM_neg_we;
  wire [31:0]BRAM_red_addr;
  wire [31:0]BRAM_red_din;
  wire [31:0]BRAM_red_dout;
  wire BRAM_red_en;
  wire BRAM_red_rst;
  wire [3:0]BRAM_red_we;
  wire BRAM_rst;
  wire [31:0]BRAM_sam_addr;
  wire [31:0]BRAM_sam_din;
  wire [31:0]BRAM_sam_dout;
  wire BRAM_sam_en;
  wire BRAM_sam_rst;
  wire [3:0]BRAM_sam_we;
  wire [3:0]BRAM_we;
  wire \BRAM_we[0]_INST_0_i_1_n_0 ;
  wire \BRAM_we[0]_INST_0_i_2_n_0 ;
  wire \BRAM_we[1]_INST_0_i_1_n_0 ;
  wire \BRAM_we[1]_INST_0_i_2_n_0 ;
  wire \BRAM_we[2]_INST_0_i_1_n_0 ;
  wire \BRAM_we[2]_INST_0_i_2_n_0 ;
  wire \BRAM_we[3]_INST_0_i_1_n_0 ;
  wire \BRAM_we[3]_INST_0_i_2_n_0 ;
  wire add_control;
  wire bram_control;
  wire hash_control;
  wire lin_control;
  wire neg_control;
  wire red_control;
  wire sam_control;

  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_add_dout[0]_INST_0 
       (.I0(add_control),
        .I1(BRAM_dout[0]),
        .O(BRAM_add_dout[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_add_dout[10]_INST_0 
       (.I0(add_control),
        .I1(BRAM_dout[10]),
        .O(BRAM_add_dout[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_add_dout[11]_INST_0 
       (.I0(add_control),
        .I1(BRAM_dout[11]),
        .O(BRAM_add_dout[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_add_dout[12]_INST_0 
       (.I0(add_control),
        .I1(BRAM_dout[12]),
        .O(BRAM_add_dout[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_add_dout[13]_INST_0 
       (.I0(add_control),
        .I1(BRAM_dout[13]),
        .O(BRAM_add_dout[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_add_dout[14]_INST_0 
       (.I0(add_control),
        .I1(BRAM_dout[14]),
        .O(BRAM_add_dout[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_add_dout[15]_INST_0 
       (.I0(add_control),
        .I1(BRAM_dout[15]),
        .O(BRAM_add_dout[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_add_dout[16]_INST_0 
       (.I0(add_control),
        .I1(BRAM_dout[16]),
        .O(BRAM_add_dout[16]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_add_dout[17]_INST_0 
       (.I0(add_control),
        .I1(BRAM_dout[17]),
        .O(BRAM_add_dout[17]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_add_dout[18]_INST_0 
       (.I0(add_control),
        .I1(BRAM_dout[18]),
        .O(BRAM_add_dout[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_add_dout[19]_INST_0 
       (.I0(add_control),
        .I1(BRAM_dout[19]),
        .O(BRAM_add_dout[19]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_add_dout[1]_INST_0 
       (.I0(add_control),
        .I1(BRAM_dout[1]),
        .O(BRAM_add_dout[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_add_dout[20]_INST_0 
       (.I0(add_control),
        .I1(BRAM_dout[20]),
        .O(BRAM_add_dout[20]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_add_dout[21]_INST_0 
       (.I0(add_control),
        .I1(BRAM_dout[21]),
        .O(BRAM_add_dout[21]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_add_dout[22]_INST_0 
       (.I0(add_control),
        .I1(BRAM_dout[22]),
        .O(BRAM_add_dout[22]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_add_dout[23]_INST_0 
       (.I0(add_control),
        .I1(BRAM_dout[23]),
        .O(BRAM_add_dout[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_add_dout[24]_INST_0 
       (.I0(add_control),
        .I1(BRAM_dout[24]),
        .O(BRAM_add_dout[24]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_add_dout[25]_INST_0 
       (.I0(add_control),
        .I1(BRAM_dout[25]),
        .O(BRAM_add_dout[25]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_add_dout[26]_INST_0 
       (.I0(add_control),
        .I1(BRAM_dout[26]),
        .O(BRAM_add_dout[26]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_add_dout[27]_INST_0 
       (.I0(add_control),
        .I1(BRAM_dout[27]),
        .O(BRAM_add_dout[27]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_add_dout[28]_INST_0 
       (.I0(add_control),
        .I1(BRAM_dout[28]),
        .O(BRAM_add_dout[28]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_add_dout[29]_INST_0 
       (.I0(add_control),
        .I1(BRAM_dout[29]),
        .O(BRAM_add_dout[29]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_add_dout[2]_INST_0 
       (.I0(add_control),
        .I1(BRAM_dout[2]),
        .O(BRAM_add_dout[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_add_dout[30]_INST_0 
       (.I0(add_control),
        .I1(BRAM_dout[30]),
        .O(BRAM_add_dout[30]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_add_dout[31]_INST_0 
       (.I0(add_control),
        .I1(BRAM_dout[31]),
        .O(BRAM_add_dout[31]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_add_dout[3]_INST_0 
       (.I0(add_control),
        .I1(BRAM_dout[3]),
        .O(BRAM_add_dout[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_add_dout[4]_INST_0 
       (.I0(add_control),
        .I1(BRAM_dout[4]),
        .O(BRAM_add_dout[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_add_dout[5]_INST_0 
       (.I0(add_control),
        .I1(BRAM_dout[5]),
        .O(BRAM_add_dout[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_add_dout[6]_INST_0 
       (.I0(add_control),
        .I1(BRAM_dout[6]),
        .O(BRAM_add_dout[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_add_dout[7]_INST_0 
       (.I0(add_control),
        .I1(BRAM_dout[7]),
        .O(BRAM_add_dout[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_add_dout[8]_INST_0 
       (.I0(add_control),
        .I1(BRAM_dout[8]),
        .O(BRAM_add_dout[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_add_dout[9]_INST_0 
       (.I0(add_control),
        .I1(BRAM_dout[9]),
        .O(BRAM_add_dout[9]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_addr[0]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_addr[0]_INST_0_i_1_n_0 ),
        .I2(\BRAM_addr[0]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_addr[0]),
        .O(BRAM_addr[0]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_addr[0]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_addr[0]),
        .I2(BRAM_neg_addr[0]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_addr[0]),
        .O(\BRAM_addr[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_addr[0]_INST_0_i_2 
       (.I0(BRAM_red_addr[0]),
        .I1(BRAM_hash_addr[0]),
        .I2(BRAM_sam_addr[0]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_addr[0]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_addr[10]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_addr[10]_INST_0_i_1_n_0 ),
        .I2(\BRAM_addr[10]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_addr[10]),
        .O(BRAM_addr[10]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_addr[10]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_addr[10]),
        .I2(BRAM_neg_addr[10]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_addr[10]),
        .O(\BRAM_addr[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_addr[10]_INST_0_i_2 
       (.I0(BRAM_red_addr[10]),
        .I1(BRAM_hash_addr[10]),
        .I2(BRAM_sam_addr[10]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_addr[10]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_addr[11]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_addr[11]_INST_0_i_1_n_0 ),
        .I2(\BRAM_addr[11]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_addr[11]),
        .O(BRAM_addr[11]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_addr[11]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_addr[11]),
        .I2(BRAM_neg_addr[11]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_addr[11]),
        .O(\BRAM_addr[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_addr[11]_INST_0_i_2 
       (.I0(BRAM_red_addr[11]),
        .I1(BRAM_hash_addr[11]),
        .I2(BRAM_sam_addr[11]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_addr[11]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_addr[12]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_addr[12]_INST_0_i_1_n_0 ),
        .I2(\BRAM_addr[12]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_addr[12]),
        .O(BRAM_addr[12]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_addr[12]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_addr[12]),
        .I2(BRAM_neg_addr[12]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_addr[12]),
        .O(\BRAM_addr[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_addr[12]_INST_0_i_2 
       (.I0(BRAM_red_addr[12]),
        .I1(BRAM_hash_addr[12]),
        .I2(BRAM_sam_addr[12]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_addr[12]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_addr[13]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_addr[13]_INST_0_i_1_n_0 ),
        .I2(\BRAM_addr[13]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_addr[13]),
        .O(BRAM_addr[13]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_addr[13]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_addr[13]),
        .I2(BRAM_neg_addr[13]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_addr[13]),
        .O(\BRAM_addr[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_addr[13]_INST_0_i_2 
       (.I0(BRAM_red_addr[13]),
        .I1(BRAM_hash_addr[13]),
        .I2(BRAM_sam_addr[13]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_addr[13]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_addr[14]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_addr[14]_INST_0_i_1_n_0 ),
        .I2(\BRAM_addr[14]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_addr[14]),
        .O(BRAM_addr[14]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_addr[14]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_addr[14]),
        .I2(BRAM_neg_addr[14]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_addr[14]),
        .O(\BRAM_addr[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_addr[14]_INST_0_i_2 
       (.I0(BRAM_red_addr[14]),
        .I1(BRAM_hash_addr[14]),
        .I2(BRAM_sam_addr[14]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_addr[14]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_addr[15]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_addr[15]_INST_0_i_1_n_0 ),
        .I2(\BRAM_addr[15]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_addr[15]),
        .O(BRAM_addr[15]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_addr[15]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_addr[15]),
        .I2(BRAM_neg_addr[15]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_addr[15]),
        .O(\BRAM_addr[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_addr[15]_INST_0_i_2 
       (.I0(BRAM_red_addr[15]),
        .I1(BRAM_hash_addr[15]),
        .I2(BRAM_sam_addr[15]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_addr[15]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_addr[16]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_addr[16]_INST_0_i_1_n_0 ),
        .I2(\BRAM_addr[16]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_addr[16]),
        .O(BRAM_addr[16]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_addr[16]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_addr[16]),
        .I2(BRAM_neg_addr[16]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_addr[16]),
        .O(\BRAM_addr[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_addr[16]_INST_0_i_2 
       (.I0(BRAM_red_addr[16]),
        .I1(BRAM_hash_addr[16]),
        .I2(BRAM_sam_addr[16]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_addr[16]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_addr[17]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_addr[17]_INST_0_i_1_n_0 ),
        .I2(\BRAM_addr[17]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_addr[17]),
        .O(BRAM_addr[17]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_addr[17]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_addr[17]),
        .I2(BRAM_neg_addr[17]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_addr[17]),
        .O(\BRAM_addr[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_addr[17]_INST_0_i_2 
       (.I0(BRAM_red_addr[17]),
        .I1(BRAM_hash_addr[17]),
        .I2(BRAM_sam_addr[17]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_addr[17]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_addr[18]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_addr[18]_INST_0_i_1_n_0 ),
        .I2(\BRAM_addr[18]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_addr[18]),
        .O(BRAM_addr[18]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_addr[18]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_addr[18]),
        .I2(BRAM_neg_addr[18]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_addr[18]),
        .O(\BRAM_addr[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_addr[18]_INST_0_i_2 
       (.I0(BRAM_red_addr[18]),
        .I1(BRAM_hash_addr[18]),
        .I2(BRAM_sam_addr[18]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_addr[18]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_addr[19]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_addr[19]_INST_0_i_1_n_0 ),
        .I2(\BRAM_addr[19]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_addr[19]),
        .O(BRAM_addr[19]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_addr[19]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_addr[19]),
        .I2(BRAM_neg_addr[19]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_addr[19]),
        .O(\BRAM_addr[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_addr[19]_INST_0_i_2 
       (.I0(BRAM_red_addr[19]),
        .I1(BRAM_hash_addr[19]),
        .I2(BRAM_sam_addr[19]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_addr[19]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_addr[1]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_addr[1]_INST_0_i_1_n_0 ),
        .I2(\BRAM_addr[1]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_addr[1]),
        .O(BRAM_addr[1]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_addr[1]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_addr[1]),
        .I2(BRAM_neg_addr[1]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_addr[1]),
        .O(\BRAM_addr[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_addr[1]_INST_0_i_2 
       (.I0(BRAM_red_addr[1]),
        .I1(BRAM_hash_addr[1]),
        .I2(BRAM_sam_addr[1]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_addr[1]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_addr[20]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_addr[20]_INST_0_i_1_n_0 ),
        .I2(\BRAM_addr[20]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_addr[20]),
        .O(BRAM_addr[20]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_addr[20]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_addr[20]),
        .I2(BRAM_neg_addr[20]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_addr[20]),
        .O(\BRAM_addr[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_addr[20]_INST_0_i_2 
       (.I0(BRAM_red_addr[20]),
        .I1(BRAM_hash_addr[20]),
        .I2(BRAM_sam_addr[20]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_addr[20]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_addr[21]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_addr[21]_INST_0_i_1_n_0 ),
        .I2(\BRAM_addr[21]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_addr[21]),
        .O(BRAM_addr[21]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_addr[21]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_addr[21]),
        .I2(BRAM_neg_addr[21]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_addr[21]),
        .O(\BRAM_addr[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_addr[21]_INST_0_i_2 
       (.I0(BRAM_red_addr[21]),
        .I1(BRAM_hash_addr[21]),
        .I2(BRAM_sam_addr[21]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_addr[21]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_addr[22]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_addr[22]_INST_0_i_1_n_0 ),
        .I2(\BRAM_addr[22]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_addr[22]),
        .O(BRAM_addr[22]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_addr[22]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_addr[22]),
        .I2(BRAM_neg_addr[22]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_addr[22]),
        .O(\BRAM_addr[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_addr[22]_INST_0_i_2 
       (.I0(BRAM_red_addr[22]),
        .I1(BRAM_hash_addr[22]),
        .I2(BRAM_sam_addr[22]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_addr[22]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_addr[23]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_addr[23]_INST_0_i_1_n_0 ),
        .I2(\BRAM_addr[23]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_addr[23]),
        .O(BRAM_addr[23]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_addr[23]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_addr[23]),
        .I2(BRAM_neg_addr[23]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_addr[23]),
        .O(\BRAM_addr[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_addr[23]_INST_0_i_2 
       (.I0(BRAM_red_addr[23]),
        .I1(BRAM_hash_addr[23]),
        .I2(BRAM_sam_addr[23]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_addr[23]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_addr[24]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_addr[24]_INST_0_i_1_n_0 ),
        .I2(\BRAM_addr[24]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_addr[24]),
        .O(BRAM_addr[24]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_addr[24]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_addr[24]),
        .I2(BRAM_neg_addr[24]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_addr[24]),
        .O(\BRAM_addr[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_addr[24]_INST_0_i_2 
       (.I0(BRAM_red_addr[24]),
        .I1(BRAM_hash_addr[24]),
        .I2(BRAM_sam_addr[24]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_addr[24]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_addr[25]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_addr[25]_INST_0_i_1_n_0 ),
        .I2(\BRAM_addr[25]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_addr[25]),
        .O(BRAM_addr[25]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_addr[25]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_addr[25]),
        .I2(BRAM_neg_addr[25]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_addr[25]),
        .O(\BRAM_addr[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_addr[25]_INST_0_i_2 
       (.I0(BRAM_red_addr[25]),
        .I1(BRAM_hash_addr[25]),
        .I2(BRAM_sam_addr[25]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_addr[25]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_addr[26]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_addr[26]_INST_0_i_1_n_0 ),
        .I2(\BRAM_addr[26]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_addr[26]),
        .O(BRAM_addr[26]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_addr[26]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_addr[26]),
        .I2(BRAM_neg_addr[26]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_addr[26]),
        .O(\BRAM_addr[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_addr[26]_INST_0_i_2 
       (.I0(BRAM_red_addr[26]),
        .I1(BRAM_hash_addr[26]),
        .I2(BRAM_sam_addr[26]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_addr[26]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_addr[27]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_addr[27]_INST_0_i_1_n_0 ),
        .I2(\BRAM_addr[27]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_addr[27]),
        .O(BRAM_addr[27]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_addr[27]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_addr[27]),
        .I2(BRAM_neg_addr[27]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_addr[27]),
        .O(\BRAM_addr[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_addr[27]_INST_0_i_2 
       (.I0(BRAM_red_addr[27]),
        .I1(BRAM_hash_addr[27]),
        .I2(BRAM_sam_addr[27]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_addr[27]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_addr[28]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_addr[28]_INST_0_i_1_n_0 ),
        .I2(\BRAM_addr[28]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_addr[28]),
        .O(BRAM_addr[28]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_addr[28]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_addr[28]),
        .I2(BRAM_neg_addr[28]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_addr[28]),
        .O(\BRAM_addr[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_addr[28]_INST_0_i_2 
       (.I0(BRAM_red_addr[28]),
        .I1(BRAM_hash_addr[28]),
        .I2(BRAM_sam_addr[28]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_addr[28]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_addr[29]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_addr[29]_INST_0_i_1_n_0 ),
        .I2(\BRAM_addr[29]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_addr[29]),
        .O(BRAM_addr[29]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_addr[29]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_addr[29]),
        .I2(BRAM_neg_addr[29]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_addr[29]),
        .O(\BRAM_addr[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_addr[29]_INST_0_i_2 
       (.I0(BRAM_red_addr[29]),
        .I1(BRAM_hash_addr[29]),
        .I2(BRAM_sam_addr[29]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_addr[29]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_addr[2]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_addr[2]_INST_0_i_1_n_0 ),
        .I2(\BRAM_addr[2]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_addr[2]),
        .O(BRAM_addr[2]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_addr[2]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_addr[2]),
        .I2(BRAM_neg_addr[2]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_addr[2]),
        .O(\BRAM_addr[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_addr[2]_INST_0_i_2 
       (.I0(BRAM_red_addr[2]),
        .I1(BRAM_hash_addr[2]),
        .I2(BRAM_sam_addr[2]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_addr[2]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_addr[30]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_addr[30]_INST_0_i_1_n_0 ),
        .I2(\BRAM_addr[30]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_addr[30]),
        .O(BRAM_addr[30]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_addr[30]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_addr[30]),
        .I2(BRAM_neg_addr[30]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_addr[30]),
        .O(\BRAM_addr[30]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_addr[30]_INST_0_i_2 
       (.I0(BRAM_red_addr[30]),
        .I1(BRAM_hash_addr[30]),
        .I2(BRAM_sam_addr[30]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_addr[30]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_addr[31]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_addr[31]_INST_0_i_1_n_0 ),
        .I2(\BRAM_addr[31]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_addr[31]),
        .O(BRAM_addr[31]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_addr[31]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_addr[31]),
        .I2(BRAM_neg_addr[31]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_addr[31]),
        .O(\BRAM_addr[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_addr[31]_INST_0_i_2 
       (.I0(BRAM_red_addr[31]),
        .I1(BRAM_hash_addr[31]),
        .I2(BRAM_sam_addr[31]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_addr[31]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_addr[3]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_addr[3]_INST_0_i_1_n_0 ),
        .I2(\BRAM_addr[3]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_addr[3]),
        .O(BRAM_addr[3]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_addr[3]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_addr[3]),
        .I2(BRAM_neg_addr[3]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_addr[3]),
        .O(\BRAM_addr[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_addr[3]_INST_0_i_2 
       (.I0(BRAM_red_addr[3]),
        .I1(BRAM_hash_addr[3]),
        .I2(BRAM_sam_addr[3]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_addr[3]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_addr[4]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_addr[4]_INST_0_i_1_n_0 ),
        .I2(\BRAM_addr[4]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_addr[4]),
        .O(BRAM_addr[4]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_addr[4]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_addr[4]),
        .I2(BRAM_neg_addr[4]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_addr[4]),
        .O(\BRAM_addr[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_addr[4]_INST_0_i_2 
       (.I0(BRAM_red_addr[4]),
        .I1(BRAM_hash_addr[4]),
        .I2(BRAM_sam_addr[4]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_addr[4]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_addr[5]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_addr[5]_INST_0_i_1_n_0 ),
        .I2(\BRAM_addr[5]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_addr[5]),
        .O(BRAM_addr[5]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_addr[5]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_addr[5]),
        .I2(BRAM_neg_addr[5]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_addr[5]),
        .O(\BRAM_addr[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_addr[5]_INST_0_i_2 
       (.I0(BRAM_red_addr[5]),
        .I1(BRAM_hash_addr[5]),
        .I2(BRAM_sam_addr[5]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_addr[5]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_addr[6]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_addr[6]_INST_0_i_1_n_0 ),
        .I2(\BRAM_addr[6]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_addr[6]),
        .O(BRAM_addr[6]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_addr[6]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_addr[6]),
        .I2(BRAM_neg_addr[6]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_addr[6]),
        .O(\BRAM_addr[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_addr[6]_INST_0_i_2 
       (.I0(BRAM_red_addr[6]),
        .I1(BRAM_hash_addr[6]),
        .I2(BRAM_sam_addr[6]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_addr[6]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_addr[7]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_addr[7]_INST_0_i_1_n_0 ),
        .I2(\BRAM_addr[7]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_addr[7]),
        .O(BRAM_addr[7]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_addr[7]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_addr[7]),
        .I2(BRAM_neg_addr[7]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_addr[7]),
        .O(\BRAM_addr[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_addr[7]_INST_0_i_2 
       (.I0(BRAM_red_addr[7]),
        .I1(BRAM_hash_addr[7]),
        .I2(BRAM_sam_addr[7]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_addr[7]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_addr[8]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_addr[8]_INST_0_i_1_n_0 ),
        .I2(\BRAM_addr[8]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_addr[8]),
        .O(BRAM_addr[8]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_addr[8]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_addr[8]),
        .I2(BRAM_neg_addr[8]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_addr[8]),
        .O(\BRAM_addr[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_addr[8]_INST_0_i_2 
       (.I0(BRAM_red_addr[8]),
        .I1(BRAM_hash_addr[8]),
        .I2(BRAM_sam_addr[8]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_addr[8]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_addr[9]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_addr[9]_INST_0_i_1_n_0 ),
        .I2(\BRAM_addr[9]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_addr[9]),
        .O(BRAM_addr[9]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_addr[9]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_addr[9]),
        .I2(BRAM_neg_addr[9]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_addr[9]),
        .O(\BRAM_addr[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_addr[9]_INST_0_i_2 
       (.I0(BRAM_red_addr[9]),
        .I1(BRAM_hash_addr[9]),
        .I2(BRAM_sam_addr[9]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_addr[9]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_din[0]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_din[0]_INST_0_i_1_n_0 ),
        .I2(\BRAM_din[0]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_din[0]),
        .O(BRAM_din[0]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_din[0]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_din[0]),
        .I2(BRAM_neg_din[0]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_din[0]),
        .O(\BRAM_din[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_din[0]_INST_0_i_2 
       (.I0(BRAM_red_din[0]),
        .I1(BRAM_hash_din[0]),
        .I2(BRAM_sam_din[0]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_din[0]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_din[10]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_din[10]_INST_0_i_1_n_0 ),
        .I2(\BRAM_din[10]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_din[10]),
        .O(BRAM_din[10]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_din[10]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_din[10]),
        .I2(BRAM_neg_din[10]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_din[10]),
        .O(\BRAM_din[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_din[10]_INST_0_i_2 
       (.I0(BRAM_red_din[10]),
        .I1(BRAM_hash_din[10]),
        .I2(BRAM_sam_din[10]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_din[10]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_din[11]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_din[11]_INST_0_i_1_n_0 ),
        .I2(\BRAM_din[11]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_din[11]),
        .O(BRAM_din[11]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_din[11]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_din[11]),
        .I2(BRAM_neg_din[11]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_din[11]),
        .O(\BRAM_din[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_din[11]_INST_0_i_2 
       (.I0(BRAM_red_din[11]),
        .I1(BRAM_hash_din[11]),
        .I2(BRAM_sam_din[11]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_din[11]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_din[12]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_din[12]_INST_0_i_1_n_0 ),
        .I2(\BRAM_din[12]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_din[12]),
        .O(BRAM_din[12]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_din[12]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_din[12]),
        .I2(BRAM_neg_din[12]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_din[12]),
        .O(\BRAM_din[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_din[12]_INST_0_i_2 
       (.I0(BRAM_red_din[12]),
        .I1(BRAM_hash_din[12]),
        .I2(BRAM_sam_din[12]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_din[12]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_din[13]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_din[13]_INST_0_i_1_n_0 ),
        .I2(\BRAM_din[13]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_din[13]),
        .O(BRAM_din[13]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_din[13]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_din[13]),
        .I2(BRAM_neg_din[13]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_din[13]),
        .O(\BRAM_din[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_din[13]_INST_0_i_2 
       (.I0(BRAM_red_din[13]),
        .I1(BRAM_hash_din[13]),
        .I2(BRAM_sam_din[13]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_din[13]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_din[14]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_din[14]_INST_0_i_1_n_0 ),
        .I2(\BRAM_din[14]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_din[14]),
        .O(BRAM_din[14]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_din[14]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_din[14]),
        .I2(BRAM_neg_din[14]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_din[14]),
        .O(\BRAM_din[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_din[14]_INST_0_i_2 
       (.I0(BRAM_red_din[14]),
        .I1(BRAM_hash_din[14]),
        .I2(BRAM_sam_din[14]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_din[14]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_din[15]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_din[15]_INST_0_i_1_n_0 ),
        .I2(\BRAM_din[15]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_din[15]),
        .O(BRAM_din[15]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_din[15]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_din[15]),
        .I2(BRAM_neg_din[15]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_din[15]),
        .O(\BRAM_din[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_din[15]_INST_0_i_2 
       (.I0(BRAM_red_din[15]),
        .I1(BRAM_hash_din[15]),
        .I2(BRAM_sam_din[15]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_din[15]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_din[16]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_din[16]_INST_0_i_1_n_0 ),
        .I2(\BRAM_din[16]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_din[16]),
        .O(BRAM_din[16]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_din[16]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_din[16]),
        .I2(BRAM_neg_din[16]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_din[16]),
        .O(\BRAM_din[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_din[16]_INST_0_i_2 
       (.I0(BRAM_red_din[16]),
        .I1(BRAM_hash_din[16]),
        .I2(BRAM_sam_din[16]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_din[16]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_din[17]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_din[17]_INST_0_i_1_n_0 ),
        .I2(\BRAM_din[17]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_din[17]),
        .O(BRAM_din[17]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_din[17]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_din[17]),
        .I2(BRAM_neg_din[17]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_din[17]),
        .O(\BRAM_din[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_din[17]_INST_0_i_2 
       (.I0(BRAM_red_din[17]),
        .I1(BRAM_hash_din[17]),
        .I2(BRAM_sam_din[17]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_din[17]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_din[18]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_din[18]_INST_0_i_1_n_0 ),
        .I2(\BRAM_din[18]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_din[18]),
        .O(BRAM_din[18]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_din[18]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_din[18]),
        .I2(BRAM_neg_din[18]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_din[18]),
        .O(\BRAM_din[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_din[18]_INST_0_i_2 
       (.I0(BRAM_red_din[18]),
        .I1(BRAM_hash_din[18]),
        .I2(BRAM_sam_din[18]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_din[18]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_din[19]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_din[19]_INST_0_i_1_n_0 ),
        .I2(\BRAM_din[19]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_din[19]),
        .O(BRAM_din[19]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_din[19]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_din[19]),
        .I2(BRAM_neg_din[19]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_din[19]),
        .O(\BRAM_din[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_din[19]_INST_0_i_2 
       (.I0(BRAM_red_din[19]),
        .I1(BRAM_hash_din[19]),
        .I2(BRAM_sam_din[19]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_din[19]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_din[1]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_din[1]_INST_0_i_1_n_0 ),
        .I2(\BRAM_din[1]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_din[1]),
        .O(BRAM_din[1]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_din[1]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_din[1]),
        .I2(BRAM_neg_din[1]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_din[1]),
        .O(\BRAM_din[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_din[1]_INST_0_i_2 
       (.I0(BRAM_red_din[1]),
        .I1(BRAM_hash_din[1]),
        .I2(BRAM_sam_din[1]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_din[1]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_din[20]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_din[20]_INST_0_i_1_n_0 ),
        .I2(\BRAM_din[20]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_din[20]),
        .O(BRAM_din[20]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_din[20]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_din[20]),
        .I2(BRAM_neg_din[20]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_din[20]),
        .O(\BRAM_din[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_din[20]_INST_0_i_2 
       (.I0(BRAM_red_din[20]),
        .I1(BRAM_hash_din[20]),
        .I2(BRAM_sam_din[20]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_din[20]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_din[21]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_din[21]_INST_0_i_1_n_0 ),
        .I2(\BRAM_din[21]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_din[21]),
        .O(BRAM_din[21]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_din[21]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_din[21]),
        .I2(BRAM_neg_din[21]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_din[21]),
        .O(\BRAM_din[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_din[21]_INST_0_i_2 
       (.I0(BRAM_red_din[21]),
        .I1(BRAM_hash_din[21]),
        .I2(BRAM_sam_din[21]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_din[21]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_din[22]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_din[22]_INST_0_i_1_n_0 ),
        .I2(\BRAM_din[22]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_din[22]),
        .O(BRAM_din[22]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_din[22]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_din[22]),
        .I2(BRAM_neg_din[22]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_din[22]),
        .O(\BRAM_din[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_din[22]_INST_0_i_2 
       (.I0(BRAM_red_din[22]),
        .I1(BRAM_hash_din[22]),
        .I2(BRAM_sam_din[22]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_din[22]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_din[23]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_din[23]_INST_0_i_1_n_0 ),
        .I2(\BRAM_din[23]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_din[23]),
        .O(BRAM_din[23]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_din[23]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_din[23]),
        .I2(BRAM_neg_din[23]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_din[23]),
        .O(\BRAM_din[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_din[23]_INST_0_i_2 
       (.I0(BRAM_red_din[23]),
        .I1(BRAM_hash_din[23]),
        .I2(BRAM_sam_din[23]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_din[23]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_din[24]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_din[24]_INST_0_i_1_n_0 ),
        .I2(\BRAM_din[24]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_din[24]),
        .O(BRAM_din[24]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_din[24]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_din[24]),
        .I2(BRAM_neg_din[24]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_din[24]),
        .O(\BRAM_din[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_din[24]_INST_0_i_2 
       (.I0(BRAM_red_din[24]),
        .I1(BRAM_hash_din[24]),
        .I2(BRAM_sam_din[24]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_din[24]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_din[25]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_din[25]_INST_0_i_1_n_0 ),
        .I2(\BRAM_din[25]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_din[25]),
        .O(BRAM_din[25]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_din[25]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_din[25]),
        .I2(BRAM_neg_din[25]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_din[25]),
        .O(\BRAM_din[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_din[25]_INST_0_i_2 
       (.I0(BRAM_red_din[25]),
        .I1(BRAM_hash_din[25]),
        .I2(BRAM_sam_din[25]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_din[25]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_din[26]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_din[26]_INST_0_i_1_n_0 ),
        .I2(\BRAM_din[26]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_din[26]),
        .O(BRAM_din[26]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_din[26]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_din[26]),
        .I2(BRAM_neg_din[26]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_din[26]),
        .O(\BRAM_din[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_din[26]_INST_0_i_2 
       (.I0(BRAM_red_din[26]),
        .I1(BRAM_hash_din[26]),
        .I2(BRAM_sam_din[26]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_din[26]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_din[27]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_din[27]_INST_0_i_1_n_0 ),
        .I2(\BRAM_din[27]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_din[27]),
        .O(BRAM_din[27]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_din[27]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_din[27]),
        .I2(BRAM_neg_din[27]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_din[27]),
        .O(\BRAM_din[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_din[27]_INST_0_i_2 
       (.I0(BRAM_red_din[27]),
        .I1(BRAM_hash_din[27]),
        .I2(BRAM_sam_din[27]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_din[27]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_din[28]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_din[28]_INST_0_i_1_n_0 ),
        .I2(\BRAM_din[28]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_din[28]),
        .O(BRAM_din[28]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_din[28]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_din[28]),
        .I2(BRAM_neg_din[28]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_din[28]),
        .O(\BRAM_din[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_din[28]_INST_0_i_2 
       (.I0(BRAM_red_din[28]),
        .I1(BRAM_hash_din[28]),
        .I2(BRAM_sam_din[28]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_din[28]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_din[29]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_din[29]_INST_0_i_1_n_0 ),
        .I2(\BRAM_din[29]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_din[29]),
        .O(BRAM_din[29]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_din[29]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_din[29]),
        .I2(BRAM_neg_din[29]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_din[29]),
        .O(\BRAM_din[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_din[29]_INST_0_i_2 
       (.I0(BRAM_red_din[29]),
        .I1(BRAM_hash_din[29]),
        .I2(BRAM_sam_din[29]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_din[29]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_din[2]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_din[2]_INST_0_i_1_n_0 ),
        .I2(\BRAM_din[2]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_din[2]),
        .O(BRAM_din[2]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_din[2]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_din[2]),
        .I2(BRAM_neg_din[2]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_din[2]),
        .O(\BRAM_din[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_din[2]_INST_0_i_2 
       (.I0(BRAM_red_din[2]),
        .I1(BRAM_hash_din[2]),
        .I2(BRAM_sam_din[2]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_din[2]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_din[30]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_din[30]_INST_0_i_1_n_0 ),
        .I2(\BRAM_din[30]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_din[30]),
        .O(BRAM_din[30]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_din[30]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_din[30]),
        .I2(BRAM_neg_din[30]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_din[30]),
        .O(\BRAM_din[30]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_din[30]_INST_0_i_2 
       (.I0(BRAM_red_din[30]),
        .I1(BRAM_hash_din[30]),
        .I2(BRAM_sam_din[30]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_din[30]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_din[31]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_din[31]_INST_0_i_2_n_0 ),
        .I2(\BRAM_din[31]_INST_0_i_3_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_din[31]),
        .O(BRAM_din[31]));
  LUT3 #(
    .INIT(8'hFE)) 
    \BRAM_din[31]_INST_0_i_1 
       (.I0(lin_control),
        .I1(neg_control),
        .I2(add_control),
        .O(\BRAM_din[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_din[31]_INST_0_i_2 
       (.I0(lin_control),
        .I1(BRAM_lin_din[31]),
        .I2(BRAM_neg_din[31]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_din[31]),
        .O(\BRAM_din[31]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_din[31]_INST_0_i_3 
       (.I0(BRAM_red_din[31]),
        .I1(BRAM_hash_din[31]),
        .I2(BRAM_sam_din[31]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_din[31]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_din[3]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_din[3]_INST_0_i_1_n_0 ),
        .I2(\BRAM_din[3]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_din[3]),
        .O(BRAM_din[3]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_din[3]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_din[3]),
        .I2(BRAM_neg_din[3]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_din[3]),
        .O(\BRAM_din[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_din[3]_INST_0_i_2 
       (.I0(BRAM_red_din[3]),
        .I1(BRAM_hash_din[3]),
        .I2(BRAM_sam_din[3]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_din[3]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_din[4]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_din[4]_INST_0_i_1_n_0 ),
        .I2(\BRAM_din[4]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_din[4]),
        .O(BRAM_din[4]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_din[4]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_din[4]),
        .I2(BRAM_neg_din[4]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_din[4]),
        .O(\BRAM_din[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_din[4]_INST_0_i_2 
       (.I0(BRAM_red_din[4]),
        .I1(BRAM_hash_din[4]),
        .I2(BRAM_sam_din[4]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_din[4]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_din[5]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_din[5]_INST_0_i_1_n_0 ),
        .I2(\BRAM_din[5]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_din[5]),
        .O(BRAM_din[5]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_din[5]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_din[5]),
        .I2(BRAM_neg_din[5]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_din[5]),
        .O(\BRAM_din[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_din[5]_INST_0_i_2 
       (.I0(BRAM_red_din[5]),
        .I1(BRAM_hash_din[5]),
        .I2(BRAM_sam_din[5]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_din[5]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_din[6]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_din[6]_INST_0_i_1_n_0 ),
        .I2(\BRAM_din[6]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_din[6]),
        .O(BRAM_din[6]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_din[6]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_din[6]),
        .I2(BRAM_neg_din[6]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_din[6]),
        .O(\BRAM_din[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_din[6]_INST_0_i_2 
       (.I0(BRAM_red_din[6]),
        .I1(BRAM_hash_din[6]),
        .I2(BRAM_sam_din[6]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_din[6]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_din[7]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_din[7]_INST_0_i_1_n_0 ),
        .I2(\BRAM_din[7]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_din[7]),
        .O(BRAM_din[7]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_din[7]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_din[7]),
        .I2(BRAM_neg_din[7]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_din[7]),
        .O(\BRAM_din[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_din[7]_INST_0_i_2 
       (.I0(BRAM_red_din[7]),
        .I1(BRAM_hash_din[7]),
        .I2(BRAM_sam_din[7]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_din[7]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_din[8]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_din[8]_INST_0_i_1_n_0 ),
        .I2(\BRAM_din[8]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_din[8]),
        .O(BRAM_din[8]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_din[8]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_din[8]),
        .I2(BRAM_neg_din[8]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_din[8]),
        .O(\BRAM_din[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_din[8]_INST_0_i_2 
       (.I0(BRAM_red_din[8]),
        .I1(BRAM_hash_din[8]),
        .I2(BRAM_sam_din[8]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_din[8]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_din[9]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_din[9]_INST_0_i_1_n_0 ),
        .I2(\BRAM_din[9]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_din[9]),
        .O(BRAM_din[9]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_din[9]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_din[9]),
        .I2(BRAM_neg_din[9]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_din[9]),
        .O(\BRAM_din[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_din[9]_INST_0_i_2 
       (.I0(BRAM_red_din[9]),
        .I1(BRAM_hash_din[9]),
        .I2(BRAM_sam_din[9]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_din[9]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_hash_dout[0]_INST_0 
       (.I0(hash_control),
        .I1(BRAM_dout[0]),
        .O(BRAM_hash_dout[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_hash_dout[10]_INST_0 
       (.I0(hash_control),
        .I1(BRAM_dout[10]),
        .O(BRAM_hash_dout[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_hash_dout[11]_INST_0 
       (.I0(hash_control),
        .I1(BRAM_dout[11]),
        .O(BRAM_hash_dout[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_hash_dout[12]_INST_0 
       (.I0(hash_control),
        .I1(BRAM_dout[12]),
        .O(BRAM_hash_dout[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_hash_dout[13]_INST_0 
       (.I0(hash_control),
        .I1(BRAM_dout[13]),
        .O(BRAM_hash_dout[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_hash_dout[14]_INST_0 
       (.I0(hash_control),
        .I1(BRAM_dout[14]),
        .O(BRAM_hash_dout[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_hash_dout[15]_INST_0 
       (.I0(hash_control),
        .I1(BRAM_dout[15]),
        .O(BRAM_hash_dout[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_hash_dout[16]_INST_0 
       (.I0(hash_control),
        .I1(BRAM_dout[16]),
        .O(BRAM_hash_dout[16]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_hash_dout[17]_INST_0 
       (.I0(hash_control),
        .I1(BRAM_dout[17]),
        .O(BRAM_hash_dout[17]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_hash_dout[18]_INST_0 
       (.I0(hash_control),
        .I1(BRAM_dout[18]),
        .O(BRAM_hash_dout[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_hash_dout[19]_INST_0 
       (.I0(hash_control),
        .I1(BRAM_dout[19]),
        .O(BRAM_hash_dout[19]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_hash_dout[1]_INST_0 
       (.I0(hash_control),
        .I1(BRAM_dout[1]),
        .O(BRAM_hash_dout[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_hash_dout[20]_INST_0 
       (.I0(hash_control),
        .I1(BRAM_dout[20]),
        .O(BRAM_hash_dout[20]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_hash_dout[21]_INST_0 
       (.I0(hash_control),
        .I1(BRAM_dout[21]),
        .O(BRAM_hash_dout[21]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_hash_dout[22]_INST_0 
       (.I0(hash_control),
        .I1(BRAM_dout[22]),
        .O(BRAM_hash_dout[22]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_hash_dout[23]_INST_0 
       (.I0(hash_control),
        .I1(BRAM_dout[23]),
        .O(BRAM_hash_dout[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_hash_dout[24]_INST_0 
       (.I0(hash_control),
        .I1(BRAM_dout[24]),
        .O(BRAM_hash_dout[24]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_hash_dout[25]_INST_0 
       (.I0(hash_control),
        .I1(BRAM_dout[25]),
        .O(BRAM_hash_dout[25]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_hash_dout[26]_INST_0 
       (.I0(hash_control),
        .I1(BRAM_dout[26]),
        .O(BRAM_hash_dout[26]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_hash_dout[27]_INST_0 
       (.I0(hash_control),
        .I1(BRAM_dout[27]),
        .O(BRAM_hash_dout[27]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_hash_dout[28]_INST_0 
       (.I0(hash_control),
        .I1(BRAM_dout[28]),
        .O(BRAM_hash_dout[28]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_hash_dout[29]_INST_0 
       (.I0(hash_control),
        .I1(BRAM_dout[29]),
        .O(BRAM_hash_dout[29]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_hash_dout[2]_INST_0 
       (.I0(hash_control),
        .I1(BRAM_dout[2]),
        .O(BRAM_hash_dout[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_hash_dout[30]_INST_0 
       (.I0(hash_control),
        .I1(BRAM_dout[30]),
        .O(BRAM_hash_dout[30]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_hash_dout[31]_INST_0 
       (.I0(hash_control),
        .I1(BRAM_dout[31]),
        .O(BRAM_hash_dout[31]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_hash_dout[3]_INST_0 
       (.I0(hash_control),
        .I1(BRAM_dout[3]),
        .O(BRAM_hash_dout[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_hash_dout[4]_INST_0 
       (.I0(hash_control),
        .I1(BRAM_dout[4]),
        .O(BRAM_hash_dout[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_hash_dout[5]_INST_0 
       (.I0(hash_control),
        .I1(BRAM_dout[5]),
        .O(BRAM_hash_dout[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_hash_dout[6]_INST_0 
       (.I0(hash_control),
        .I1(BRAM_dout[6]),
        .O(BRAM_hash_dout[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_hash_dout[7]_INST_0 
       (.I0(hash_control),
        .I1(BRAM_dout[7]),
        .O(BRAM_hash_dout[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_hash_dout[8]_INST_0 
       (.I0(hash_control),
        .I1(BRAM_dout[8]),
        .O(BRAM_hash_dout[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_hash_dout[9]_INST_0 
       (.I0(hash_control),
        .I1(BRAM_dout[9]),
        .O(BRAM_hash_dout[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_key_dout[0]_INST_0 
       (.I0(bram_control),
        .I1(BRAM_dout[0]),
        .O(BRAM_key_dout[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_key_dout[10]_INST_0 
       (.I0(bram_control),
        .I1(BRAM_dout[10]),
        .O(BRAM_key_dout[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_key_dout[11]_INST_0 
       (.I0(bram_control),
        .I1(BRAM_dout[11]),
        .O(BRAM_key_dout[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_key_dout[12]_INST_0 
       (.I0(bram_control),
        .I1(BRAM_dout[12]),
        .O(BRAM_key_dout[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_key_dout[13]_INST_0 
       (.I0(bram_control),
        .I1(BRAM_dout[13]),
        .O(BRAM_key_dout[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_key_dout[14]_INST_0 
       (.I0(bram_control),
        .I1(BRAM_dout[14]),
        .O(BRAM_key_dout[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_key_dout[15]_INST_0 
       (.I0(bram_control),
        .I1(BRAM_dout[15]),
        .O(BRAM_key_dout[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_key_dout[16]_INST_0 
       (.I0(bram_control),
        .I1(BRAM_dout[16]),
        .O(BRAM_key_dout[16]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_key_dout[17]_INST_0 
       (.I0(bram_control),
        .I1(BRAM_dout[17]),
        .O(BRAM_key_dout[17]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_key_dout[18]_INST_0 
       (.I0(bram_control),
        .I1(BRAM_dout[18]),
        .O(BRAM_key_dout[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_key_dout[19]_INST_0 
       (.I0(bram_control),
        .I1(BRAM_dout[19]),
        .O(BRAM_key_dout[19]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_key_dout[1]_INST_0 
       (.I0(bram_control),
        .I1(BRAM_dout[1]),
        .O(BRAM_key_dout[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_key_dout[20]_INST_0 
       (.I0(bram_control),
        .I1(BRAM_dout[20]),
        .O(BRAM_key_dout[20]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_key_dout[21]_INST_0 
       (.I0(bram_control),
        .I1(BRAM_dout[21]),
        .O(BRAM_key_dout[21]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_key_dout[22]_INST_0 
       (.I0(bram_control),
        .I1(BRAM_dout[22]),
        .O(BRAM_key_dout[22]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_key_dout[23]_INST_0 
       (.I0(bram_control),
        .I1(BRAM_dout[23]),
        .O(BRAM_key_dout[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_key_dout[24]_INST_0 
       (.I0(bram_control),
        .I1(BRAM_dout[24]),
        .O(BRAM_key_dout[24]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_key_dout[25]_INST_0 
       (.I0(bram_control),
        .I1(BRAM_dout[25]),
        .O(BRAM_key_dout[25]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_key_dout[26]_INST_0 
       (.I0(bram_control),
        .I1(BRAM_dout[26]),
        .O(BRAM_key_dout[26]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_key_dout[27]_INST_0 
       (.I0(bram_control),
        .I1(BRAM_dout[27]),
        .O(BRAM_key_dout[27]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_key_dout[28]_INST_0 
       (.I0(bram_control),
        .I1(BRAM_dout[28]),
        .O(BRAM_key_dout[28]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_key_dout[29]_INST_0 
       (.I0(bram_control),
        .I1(BRAM_dout[29]),
        .O(BRAM_key_dout[29]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_key_dout[2]_INST_0 
       (.I0(bram_control),
        .I1(BRAM_dout[2]),
        .O(BRAM_key_dout[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_key_dout[30]_INST_0 
       (.I0(bram_control),
        .I1(BRAM_dout[30]),
        .O(BRAM_key_dout[30]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_key_dout[31]_INST_0 
       (.I0(bram_control),
        .I1(BRAM_dout[31]),
        .O(BRAM_key_dout[31]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_key_dout[3]_INST_0 
       (.I0(bram_control),
        .I1(BRAM_dout[3]),
        .O(BRAM_key_dout[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_key_dout[4]_INST_0 
       (.I0(bram_control),
        .I1(BRAM_dout[4]),
        .O(BRAM_key_dout[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_key_dout[5]_INST_0 
       (.I0(bram_control),
        .I1(BRAM_dout[5]),
        .O(BRAM_key_dout[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_key_dout[6]_INST_0 
       (.I0(bram_control),
        .I1(BRAM_dout[6]),
        .O(BRAM_key_dout[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_key_dout[7]_INST_0 
       (.I0(bram_control),
        .I1(BRAM_dout[7]),
        .O(BRAM_key_dout[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_key_dout[8]_INST_0 
       (.I0(bram_control),
        .I1(BRAM_dout[8]),
        .O(BRAM_key_dout[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_key_dout[9]_INST_0 
       (.I0(bram_control),
        .I1(BRAM_dout[9]),
        .O(BRAM_key_dout[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_lin_dout[0]_INST_0 
       (.I0(lin_control),
        .I1(BRAM_dout[0]),
        .O(BRAM_lin_dout[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_lin_dout[10]_INST_0 
       (.I0(lin_control),
        .I1(BRAM_dout[10]),
        .O(BRAM_lin_dout[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_lin_dout[11]_INST_0 
       (.I0(lin_control),
        .I1(BRAM_dout[11]),
        .O(BRAM_lin_dout[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_lin_dout[12]_INST_0 
       (.I0(lin_control),
        .I1(BRAM_dout[12]),
        .O(BRAM_lin_dout[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_lin_dout[13]_INST_0 
       (.I0(lin_control),
        .I1(BRAM_dout[13]),
        .O(BRAM_lin_dout[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_lin_dout[14]_INST_0 
       (.I0(lin_control),
        .I1(BRAM_dout[14]),
        .O(BRAM_lin_dout[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_lin_dout[15]_INST_0 
       (.I0(lin_control),
        .I1(BRAM_dout[15]),
        .O(BRAM_lin_dout[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_lin_dout[16]_INST_0 
       (.I0(lin_control),
        .I1(BRAM_dout[16]),
        .O(BRAM_lin_dout[16]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_lin_dout[17]_INST_0 
       (.I0(lin_control),
        .I1(BRAM_dout[17]),
        .O(BRAM_lin_dout[17]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_lin_dout[18]_INST_0 
       (.I0(lin_control),
        .I1(BRAM_dout[18]),
        .O(BRAM_lin_dout[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_lin_dout[19]_INST_0 
       (.I0(lin_control),
        .I1(BRAM_dout[19]),
        .O(BRAM_lin_dout[19]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_lin_dout[1]_INST_0 
       (.I0(lin_control),
        .I1(BRAM_dout[1]),
        .O(BRAM_lin_dout[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_lin_dout[20]_INST_0 
       (.I0(lin_control),
        .I1(BRAM_dout[20]),
        .O(BRAM_lin_dout[20]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_lin_dout[21]_INST_0 
       (.I0(lin_control),
        .I1(BRAM_dout[21]),
        .O(BRAM_lin_dout[21]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_lin_dout[22]_INST_0 
       (.I0(lin_control),
        .I1(BRAM_dout[22]),
        .O(BRAM_lin_dout[22]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_lin_dout[23]_INST_0 
       (.I0(lin_control),
        .I1(BRAM_dout[23]),
        .O(BRAM_lin_dout[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_lin_dout[24]_INST_0 
       (.I0(lin_control),
        .I1(BRAM_dout[24]),
        .O(BRAM_lin_dout[24]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_lin_dout[25]_INST_0 
       (.I0(lin_control),
        .I1(BRAM_dout[25]),
        .O(BRAM_lin_dout[25]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_lin_dout[26]_INST_0 
       (.I0(lin_control),
        .I1(BRAM_dout[26]),
        .O(BRAM_lin_dout[26]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_lin_dout[27]_INST_0 
       (.I0(lin_control),
        .I1(BRAM_dout[27]),
        .O(BRAM_lin_dout[27]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_lin_dout[28]_INST_0 
       (.I0(lin_control),
        .I1(BRAM_dout[28]),
        .O(BRAM_lin_dout[28]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_lin_dout[29]_INST_0 
       (.I0(lin_control),
        .I1(BRAM_dout[29]),
        .O(BRAM_lin_dout[29]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_lin_dout[2]_INST_0 
       (.I0(lin_control),
        .I1(BRAM_dout[2]),
        .O(BRAM_lin_dout[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_lin_dout[30]_INST_0 
       (.I0(lin_control),
        .I1(BRAM_dout[30]),
        .O(BRAM_lin_dout[30]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_lin_dout[31]_INST_0 
       (.I0(lin_control),
        .I1(BRAM_dout[31]),
        .O(BRAM_lin_dout[31]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_lin_dout[3]_INST_0 
       (.I0(lin_control),
        .I1(BRAM_dout[3]),
        .O(BRAM_lin_dout[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_lin_dout[4]_INST_0 
       (.I0(lin_control),
        .I1(BRAM_dout[4]),
        .O(BRAM_lin_dout[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_lin_dout[5]_INST_0 
       (.I0(lin_control),
        .I1(BRAM_dout[5]),
        .O(BRAM_lin_dout[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_lin_dout[6]_INST_0 
       (.I0(lin_control),
        .I1(BRAM_dout[6]),
        .O(BRAM_lin_dout[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_lin_dout[7]_INST_0 
       (.I0(lin_control),
        .I1(BRAM_dout[7]),
        .O(BRAM_lin_dout[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_lin_dout[8]_INST_0 
       (.I0(lin_control),
        .I1(BRAM_dout[8]),
        .O(BRAM_lin_dout[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_lin_dout[9]_INST_0 
       (.I0(lin_control),
        .I1(BRAM_dout[9]),
        .O(BRAM_lin_dout[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_neg_dout[0]_INST_0 
       (.I0(neg_control),
        .I1(BRAM_dout[0]),
        .O(BRAM_neg_dout[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_neg_dout[10]_INST_0 
       (.I0(neg_control),
        .I1(BRAM_dout[10]),
        .O(BRAM_neg_dout[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_neg_dout[11]_INST_0 
       (.I0(neg_control),
        .I1(BRAM_dout[11]),
        .O(BRAM_neg_dout[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_neg_dout[12]_INST_0 
       (.I0(neg_control),
        .I1(BRAM_dout[12]),
        .O(BRAM_neg_dout[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_neg_dout[13]_INST_0 
       (.I0(neg_control),
        .I1(BRAM_dout[13]),
        .O(BRAM_neg_dout[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_neg_dout[14]_INST_0 
       (.I0(neg_control),
        .I1(BRAM_dout[14]),
        .O(BRAM_neg_dout[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_neg_dout[15]_INST_0 
       (.I0(neg_control),
        .I1(BRAM_dout[15]),
        .O(BRAM_neg_dout[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_neg_dout[16]_INST_0 
       (.I0(neg_control),
        .I1(BRAM_dout[16]),
        .O(BRAM_neg_dout[16]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_neg_dout[17]_INST_0 
       (.I0(neg_control),
        .I1(BRAM_dout[17]),
        .O(BRAM_neg_dout[17]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_neg_dout[18]_INST_0 
       (.I0(neg_control),
        .I1(BRAM_dout[18]),
        .O(BRAM_neg_dout[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_neg_dout[19]_INST_0 
       (.I0(neg_control),
        .I1(BRAM_dout[19]),
        .O(BRAM_neg_dout[19]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_neg_dout[1]_INST_0 
       (.I0(neg_control),
        .I1(BRAM_dout[1]),
        .O(BRAM_neg_dout[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_neg_dout[20]_INST_0 
       (.I0(neg_control),
        .I1(BRAM_dout[20]),
        .O(BRAM_neg_dout[20]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_neg_dout[21]_INST_0 
       (.I0(neg_control),
        .I1(BRAM_dout[21]),
        .O(BRAM_neg_dout[21]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_neg_dout[22]_INST_0 
       (.I0(neg_control),
        .I1(BRAM_dout[22]),
        .O(BRAM_neg_dout[22]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_neg_dout[23]_INST_0 
       (.I0(neg_control),
        .I1(BRAM_dout[23]),
        .O(BRAM_neg_dout[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_neg_dout[24]_INST_0 
       (.I0(neg_control),
        .I1(BRAM_dout[24]),
        .O(BRAM_neg_dout[24]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_neg_dout[25]_INST_0 
       (.I0(neg_control),
        .I1(BRAM_dout[25]),
        .O(BRAM_neg_dout[25]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_neg_dout[26]_INST_0 
       (.I0(neg_control),
        .I1(BRAM_dout[26]),
        .O(BRAM_neg_dout[26]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_neg_dout[27]_INST_0 
       (.I0(neg_control),
        .I1(BRAM_dout[27]),
        .O(BRAM_neg_dout[27]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_neg_dout[28]_INST_0 
       (.I0(neg_control),
        .I1(BRAM_dout[28]),
        .O(BRAM_neg_dout[28]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_neg_dout[29]_INST_0 
       (.I0(neg_control),
        .I1(BRAM_dout[29]),
        .O(BRAM_neg_dout[29]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_neg_dout[2]_INST_0 
       (.I0(neg_control),
        .I1(BRAM_dout[2]),
        .O(BRAM_neg_dout[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_neg_dout[30]_INST_0 
       (.I0(neg_control),
        .I1(BRAM_dout[30]),
        .O(BRAM_neg_dout[30]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_neg_dout[31]_INST_0 
       (.I0(neg_control),
        .I1(BRAM_dout[31]),
        .O(BRAM_neg_dout[31]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_neg_dout[3]_INST_0 
       (.I0(neg_control),
        .I1(BRAM_dout[3]),
        .O(BRAM_neg_dout[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_neg_dout[4]_INST_0 
       (.I0(neg_control),
        .I1(BRAM_dout[4]),
        .O(BRAM_neg_dout[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_neg_dout[5]_INST_0 
       (.I0(neg_control),
        .I1(BRAM_dout[5]),
        .O(BRAM_neg_dout[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_neg_dout[6]_INST_0 
       (.I0(neg_control),
        .I1(BRAM_dout[6]),
        .O(BRAM_neg_dout[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_neg_dout[7]_INST_0 
       (.I0(neg_control),
        .I1(BRAM_dout[7]),
        .O(BRAM_neg_dout[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_neg_dout[8]_INST_0 
       (.I0(neg_control),
        .I1(BRAM_dout[8]),
        .O(BRAM_neg_dout[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_neg_dout[9]_INST_0 
       (.I0(neg_control),
        .I1(BRAM_dout[9]),
        .O(BRAM_neg_dout[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_red_dout[0]_INST_0 
       (.I0(red_control),
        .I1(BRAM_dout[0]),
        .O(BRAM_red_dout[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_red_dout[10]_INST_0 
       (.I0(red_control),
        .I1(BRAM_dout[10]),
        .O(BRAM_red_dout[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_red_dout[11]_INST_0 
       (.I0(red_control),
        .I1(BRAM_dout[11]),
        .O(BRAM_red_dout[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_red_dout[12]_INST_0 
       (.I0(red_control),
        .I1(BRAM_dout[12]),
        .O(BRAM_red_dout[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_red_dout[13]_INST_0 
       (.I0(red_control),
        .I1(BRAM_dout[13]),
        .O(BRAM_red_dout[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_red_dout[14]_INST_0 
       (.I0(red_control),
        .I1(BRAM_dout[14]),
        .O(BRAM_red_dout[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_red_dout[15]_INST_0 
       (.I0(red_control),
        .I1(BRAM_dout[15]),
        .O(BRAM_red_dout[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_red_dout[16]_INST_0 
       (.I0(red_control),
        .I1(BRAM_dout[16]),
        .O(BRAM_red_dout[16]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_red_dout[17]_INST_0 
       (.I0(red_control),
        .I1(BRAM_dout[17]),
        .O(BRAM_red_dout[17]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_red_dout[18]_INST_0 
       (.I0(red_control),
        .I1(BRAM_dout[18]),
        .O(BRAM_red_dout[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_red_dout[19]_INST_0 
       (.I0(red_control),
        .I1(BRAM_dout[19]),
        .O(BRAM_red_dout[19]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_red_dout[1]_INST_0 
       (.I0(red_control),
        .I1(BRAM_dout[1]),
        .O(BRAM_red_dout[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_red_dout[20]_INST_0 
       (.I0(red_control),
        .I1(BRAM_dout[20]),
        .O(BRAM_red_dout[20]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_red_dout[21]_INST_0 
       (.I0(red_control),
        .I1(BRAM_dout[21]),
        .O(BRAM_red_dout[21]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_red_dout[22]_INST_0 
       (.I0(red_control),
        .I1(BRAM_dout[22]),
        .O(BRAM_red_dout[22]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_red_dout[23]_INST_0 
       (.I0(red_control),
        .I1(BRAM_dout[23]),
        .O(BRAM_red_dout[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_red_dout[24]_INST_0 
       (.I0(red_control),
        .I1(BRAM_dout[24]),
        .O(BRAM_red_dout[24]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_red_dout[25]_INST_0 
       (.I0(red_control),
        .I1(BRAM_dout[25]),
        .O(BRAM_red_dout[25]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_red_dout[26]_INST_0 
       (.I0(red_control),
        .I1(BRAM_dout[26]),
        .O(BRAM_red_dout[26]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_red_dout[27]_INST_0 
       (.I0(red_control),
        .I1(BRAM_dout[27]),
        .O(BRAM_red_dout[27]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_red_dout[28]_INST_0 
       (.I0(red_control),
        .I1(BRAM_dout[28]),
        .O(BRAM_red_dout[28]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_red_dout[29]_INST_0 
       (.I0(red_control),
        .I1(BRAM_dout[29]),
        .O(BRAM_red_dout[29]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_red_dout[2]_INST_0 
       (.I0(red_control),
        .I1(BRAM_dout[2]),
        .O(BRAM_red_dout[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_red_dout[30]_INST_0 
       (.I0(red_control),
        .I1(BRAM_dout[30]),
        .O(BRAM_red_dout[30]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_red_dout[31]_INST_0 
       (.I0(red_control),
        .I1(BRAM_dout[31]),
        .O(BRAM_red_dout[31]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_red_dout[3]_INST_0 
       (.I0(red_control),
        .I1(BRAM_dout[3]),
        .O(BRAM_red_dout[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_red_dout[4]_INST_0 
       (.I0(red_control),
        .I1(BRAM_dout[4]),
        .O(BRAM_red_dout[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_red_dout[5]_INST_0 
       (.I0(red_control),
        .I1(BRAM_dout[5]),
        .O(BRAM_red_dout[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_red_dout[6]_INST_0 
       (.I0(red_control),
        .I1(BRAM_dout[6]),
        .O(BRAM_red_dout[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_red_dout[7]_INST_0 
       (.I0(red_control),
        .I1(BRAM_dout[7]),
        .O(BRAM_red_dout[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_red_dout[8]_INST_0 
       (.I0(red_control),
        .I1(BRAM_dout[8]),
        .O(BRAM_red_dout[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_red_dout[9]_INST_0 
       (.I0(red_control),
        .I1(BRAM_dout[9]),
        .O(BRAM_red_dout[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_sam_dout[0]_INST_0 
       (.I0(sam_control),
        .I1(BRAM_dout[0]),
        .O(BRAM_sam_dout[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_sam_dout[10]_INST_0 
       (.I0(sam_control),
        .I1(BRAM_dout[10]),
        .O(BRAM_sam_dout[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_sam_dout[11]_INST_0 
       (.I0(sam_control),
        .I1(BRAM_dout[11]),
        .O(BRAM_sam_dout[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_sam_dout[12]_INST_0 
       (.I0(sam_control),
        .I1(BRAM_dout[12]),
        .O(BRAM_sam_dout[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_sam_dout[13]_INST_0 
       (.I0(sam_control),
        .I1(BRAM_dout[13]),
        .O(BRAM_sam_dout[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_sam_dout[14]_INST_0 
       (.I0(sam_control),
        .I1(BRAM_dout[14]),
        .O(BRAM_sam_dout[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_sam_dout[15]_INST_0 
       (.I0(sam_control),
        .I1(BRAM_dout[15]),
        .O(BRAM_sam_dout[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_sam_dout[16]_INST_0 
       (.I0(sam_control),
        .I1(BRAM_dout[16]),
        .O(BRAM_sam_dout[16]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_sam_dout[17]_INST_0 
       (.I0(sam_control),
        .I1(BRAM_dout[17]),
        .O(BRAM_sam_dout[17]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_sam_dout[18]_INST_0 
       (.I0(sam_control),
        .I1(BRAM_dout[18]),
        .O(BRAM_sam_dout[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_sam_dout[19]_INST_0 
       (.I0(sam_control),
        .I1(BRAM_dout[19]),
        .O(BRAM_sam_dout[19]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_sam_dout[1]_INST_0 
       (.I0(sam_control),
        .I1(BRAM_dout[1]),
        .O(BRAM_sam_dout[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_sam_dout[20]_INST_0 
       (.I0(sam_control),
        .I1(BRAM_dout[20]),
        .O(BRAM_sam_dout[20]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_sam_dout[21]_INST_0 
       (.I0(sam_control),
        .I1(BRAM_dout[21]),
        .O(BRAM_sam_dout[21]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_sam_dout[22]_INST_0 
       (.I0(sam_control),
        .I1(BRAM_dout[22]),
        .O(BRAM_sam_dout[22]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_sam_dout[23]_INST_0 
       (.I0(sam_control),
        .I1(BRAM_dout[23]),
        .O(BRAM_sam_dout[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_sam_dout[24]_INST_0 
       (.I0(sam_control),
        .I1(BRAM_dout[24]),
        .O(BRAM_sam_dout[24]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_sam_dout[25]_INST_0 
       (.I0(sam_control),
        .I1(BRAM_dout[25]),
        .O(BRAM_sam_dout[25]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_sam_dout[26]_INST_0 
       (.I0(sam_control),
        .I1(BRAM_dout[26]),
        .O(BRAM_sam_dout[26]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_sam_dout[27]_INST_0 
       (.I0(sam_control),
        .I1(BRAM_dout[27]),
        .O(BRAM_sam_dout[27]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_sam_dout[28]_INST_0 
       (.I0(sam_control),
        .I1(BRAM_dout[28]),
        .O(BRAM_sam_dout[28]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_sam_dout[29]_INST_0 
       (.I0(sam_control),
        .I1(BRAM_dout[29]),
        .O(BRAM_sam_dout[29]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_sam_dout[2]_INST_0 
       (.I0(sam_control),
        .I1(BRAM_dout[2]),
        .O(BRAM_sam_dout[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_sam_dout[30]_INST_0 
       (.I0(sam_control),
        .I1(BRAM_dout[30]),
        .O(BRAM_sam_dout[30]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_sam_dout[31]_INST_0 
       (.I0(sam_control),
        .I1(BRAM_dout[31]),
        .O(BRAM_sam_dout[31]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_sam_dout[3]_INST_0 
       (.I0(sam_control),
        .I1(BRAM_dout[3]),
        .O(BRAM_sam_dout[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_sam_dout[4]_INST_0 
       (.I0(sam_control),
        .I1(BRAM_dout[4]),
        .O(BRAM_sam_dout[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_sam_dout[5]_INST_0 
       (.I0(sam_control),
        .I1(BRAM_dout[5]),
        .O(BRAM_sam_dout[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_sam_dout[6]_INST_0 
       (.I0(sam_control),
        .I1(BRAM_dout[6]),
        .O(BRAM_sam_dout[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_sam_dout[7]_INST_0 
       (.I0(sam_control),
        .I1(BRAM_dout[7]),
        .O(BRAM_sam_dout[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_sam_dout[8]_INST_0 
       (.I0(sam_control),
        .I1(BRAM_dout[8]),
        .O(BRAM_sam_dout[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_sam_dout[9]_INST_0 
       (.I0(sam_control),
        .I1(BRAM_dout[9]),
        .O(BRAM_sam_dout[9]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_we[0]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_we[0]_INST_0_i_1_n_0 ),
        .I2(\BRAM_we[0]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_we[0]),
        .O(BRAM_we[0]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_we[0]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_we[0]),
        .I2(BRAM_neg_we[0]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_we[0]),
        .O(\BRAM_we[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_we[0]_INST_0_i_2 
       (.I0(BRAM_red_we[0]),
        .I1(BRAM_hash_we[0]),
        .I2(BRAM_sam_we[0]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_we[0]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_we[1]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_we[1]_INST_0_i_1_n_0 ),
        .I2(\BRAM_we[1]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_we[1]),
        .O(BRAM_we[1]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_we[1]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_we[1]),
        .I2(BRAM_neg_we[1]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_we[1]),
        .O(\BRAM_we[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_we[1]_INST_0_i_2 
       (.I0(BRAM_red_we[1]),
        .I1(BRAM_hash_we[1]),
        .I2(BRAM_sam_we[1]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_we[1]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_we[2]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_we[2]_INST_0_i_1_n_0 ),
        .I2(\BRAM_we[2]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_we[2]),
        .O(BRAM_we[2]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_we[2]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_we[2]),
        .I2(BRAM_neg_we[2]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_we[2]),
        .O(\BRAM_we[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_we[2]_INST_0_i_2 
       (.I0(BRAM_red_we[2]),
        .I1(BRAM_hash_we[2]),
        .I2(BRAM_sam_we[2]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_we[2]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \BRAM_we[3]_INST_0 
       (.I0(\BRAM_din[31]_INST_0_i_1_n_0 ),
        .I1(\BRAM_we[3]_INST_0_i_1_n_0 ),
        .I2(\BRAM_we[3]_INST_0_i_2_n_0 ),
        .I3(bram_control),
        .I4(BRAM_key_we[3]),
        .O(BRAM_we[3]));
  LUT6 #(
    .INIT(64'hFFFFD8880000D888)) 
    \BRAM_we[3]_INST_0_i_1 
       (.I0(lin_control),
        .I1(BRAM_lin_we[3]),
        .I2(BRAM_neg_we[3]),
        .I3(neg_control),
        .I4(add_control),
        .I5(BRAM_add_we[3]),
        .O(\BRAM_we[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \BRAM_we[3]_INST_0_i_2 
       (.I0(BRAM_red_we[3]),
        .I1(BRAM_hash_we[3]),
        .I2(BRAM_sam_we[3]),
        .I3(red_control),
        .I4(hash_control),
        .I5(sam_control),
        .O(\BRAM_we[3]_INST_0_i_2_n_0 ));
  Mayo_keygen_no_zynq_arbit_bramb0_0_mayo_bram_arbiter U0
       (.BRAM_add_en(BRAM_add_en),
        .BRAM_add_rst(BRAM_add_rst),
        .BRAM_en(BRAM_en),
        .BRAM_hash_en(BRAM_hash_en),
        .BRAM_hash_rst(BRAM_hash_rst),
        .BRAM_key_en(BRAM_key_en),
        .BRAM_key_rst(BRAM_key_rst),
        .BRAM_lin_en(BRAM_lin_en),
        .BRAM_lin_rst(BRAM_lin_rst),
        .BRAM_neg_en(BRAM_neg_en),
        .BRAM_neg_rst(BRAM_neg_rst),
        .BRAM_red_en(BRAM_red_en),
        .BRAM_red_rst(BRAM_red_rst),
        .BRAM_rst(BRAM_rst),
        .BRAM_sam_en(BRAM_sam_en),
        .BRAM_sam_rst(BRAM_sam_rst));
endmodule

(* ORIG_REF_NAME = "mayo_bram_arbiter" *) 
module Mayo_keygen_no_zynq_arbit_bramb0_0_mayo_bram_arbiter
   (BRAM_en,
    BRAM_rst,
    BRAM_hash_en,
    BRAM_sam_en,
    BRAM_add_en,
    BRAM_red_en,
    BRAM_key_en,
    BRAM_lin_en,
    BRAM_neg_en,
    BRAM_hash_rst,
    BRAM_sam_rst,
    BRAM_add_rst,
    BRAM_red_rst,
    BRAM_key_rst,
    BRAM_lin_rst,
    BRAM_neg_rst);
  output BRAM_en;
  output BRAM_rst;
  input BRAM_hash_en;
  input BRAM_sam_en;
  input BRAM_add_en;
  input BRAM_red_en;
  input BRAM_key_en;
  input BRAM_lin_en;
  input BRAM_neg_en;
  input BRAM_hash_rst;
  input BRAM_sam_rst;
  input BRAM_add_rst;
  input BRAM_red_rst;
  input BRAM_key_rst;
  input BRAM_lin_rst;
  input BRAM_neg_rst;

  wire BRAM_add_en;
  wire BRAM_add_rst;
  wire BRAM_en;
  wire BRAM_en_INST_0_i_1_n_0;
  wire BRAM_hash_en;
  wire BRAM_hash_rst;
  wire BRAM_key_en;
  wire BRAM_key_rst;
  wire BRAM_lin_en;
  wire BRAM_lin_rst;
  wire BRAM_neg_en;
  wire BRAM_neg_rst;
  wire BRAM_red_en;
  wire BRAM_red_rst;
  wire BRAM_rst;
  wire BRAM_rst_INST_0_i_1_n_0;
  wire BRAM_sam_en;
  wire BRAM_sam_rst;

  LUT4 #(
    .INIT(16'hFFFE)) 
    BRAM_en_INST_0
       (.I0(BRAM_hash_en),
        .I1(BRAM_sam_en),
        .I2(BRAM_add_en),
        .I3(BRAM_en_INST_0_i_1_n_0),
        .O(BRAM_en));
  LUT4 #(
    .INIT(16'hFFFE)) 
    BRAM_en_INST_0_i_1
       (.I0(BRAM_red_en),
        .I1(BRAM_key_en),
        .I2(BRAM_lin_en),
        .I3(BRAM_neg_en),
        .O(BRAM_en_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    BRAM_rst_INST_0
       (.I0(BRAM_hash_rst),
        .I1(BRAM_sam_rst),
        .I2(BRAM_add_rst),
        .I3(BRAM_rst_INST_0_i_1_n_0),
        .O(BRAM_rst));
  LUT4 #(
    .INIT(16'hFFFE)) 
    BRAM_rst_INST_0_i_1
       (.I0(BRAM_red_rst),
        .I1(BRAM_key_rst),
        .I2(BRAM_lin_rst),
        .I3(BRAM_neg_rst),
        .O(BRAM_rst_INST_0_i_1_n_0));
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
