// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Mon Aug  1 19:38:46 2022
// Host        : debian running 64-bit Debian GNU/Linux 11 (bullseye)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/osm/Documents/SECT-MAYO/MAYO/vivado/add_mod_test_project/add_mod_test_project.sim/sim_1/synth/timing/xsim/adder_tb_time_synth.v
// Design      : modular
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module modular
   (clk,
    rst,
    v1,
    v2,
    o_out);
  input clk;
  input rst;
  input [31:0]v1;
  input [31:0]v2;
  output [31:0]o_out;

  wire [31:0]o_out;
  wire [28:0]o_out_OBUF;
  wire \o_out_reg[12]_i_10_n_0 ;
  wire \o_out_reg[12]_i_10_n_1 ;
  wire \o_out_reg[12]_i_10_n_2 ;
  wire \o_out_reg[12]_i_10_n_3 ;
  wire \o_out_reg[12]_i_10_n_4 ;
  wire \o_out_reg[12]_i_10_n_5 ;
  wire \o_out_reg[12]_i_10_n_6 ;
  wire \o_out_reg[12]_i_10_n_7 ;
  wire \o_out_reg[12]_i_11_n_3 ;
  wire \o_out_reg[12]_i_11_n_6 ;
  wire \o_out_reg[12]_i_11_n_7 ;
  wire \o_out_reg[12]_i_12_n_0 ;
  wire \o_out_reg[12]_i_13_n_0 ;
  wire \o_out_reg[12]_i_14_n_0 ;
  wire \o_out_reg[12]_i_15_n_0 ;
  wire \o_out_reg[12]_i_16_n_0 ;
  wire \o_out_reg[12]_i_17_n_0 ;
  wire \o_out_reg[12]_i_18_n_0 ;
  wire \o_out_reg[12]_i_2_n_0 ;
  wire \o_out_reg[12]_i_2_n_1 ;
  wire \o_out_reg[12]_i_2_n_2 ;
  wire \o_out_reg[12]_i_2_n_3 ;
  wire \o_out_reg[12]_i_2_n_4 ;
  wire \o_out_reg[12]_i_2_n_5 ;
  wire \o_out_reg[12]_i_2_n_6 ;
  wire \o_out_reg[12]_i_2_n_7 ;
  wire \o_out_reg[12]_i_3_n_3 ;
  wire \o_out_reg[12]_i_3_n_6 ;
  wire \o_out_reg[12]_i_3_n_7 ;
  wire \o_out_reg[12]_i_4_n_0 ;
  wire \o_out_reg[12]_i_5_n_0 ;
  wire \o_out_reg[12]_i_6_n_0 ;
  wire \o_out_reg[12]_i_7_n_0 ;
  wire \o_out_reg[12]_i_8_n_0 ;
  wire \o_out_reg[12]_i_9_n_0 ;
  wire \o_out_reg[20]_i_10_n_0 ;
  wire \o_out_reg[20]_i_10_n_1 ;
  wire \o_out_reg[20]_i_10_n_2 ;
  wire \o_out_reg[20]_i_10_n_3 ;
  wire \o_out_reg[20]_i_10_n_4 ;
  wire \o_out_reg[20]_i_10_n_5 ;
  wire \o_out_reg[20]_i_10_n_6 ;
  wire \o_out_reg[20]_i_10_n_7 ;
  wire \o_out_reg[20]_i_11_n_3 ;
  wire \o_out_reg[20]_i_11_n_6 ;
  wire \o_out_reg[20]_i_11_n_7 ;
  wire \o_out_reg[20]_i_12_n_0 ;
  wire \o_out_reg[20]_i_13_n_0 ;
  wire \o_out_reg[20]_i_14_n_0 ;
  wire \o_out_reg[20]_i_15_n_0 ;
  wire \o_out_reg[20]_i_16_n_0 ;
  wire \o_out_reg[20]_i_17_n_0 ;
  wire \o_out_reg[20]_i_18_n_0 ;
  wire \o_out_reg[20]_i_2_n_0 ;
  wire \o_out_reg[20]_i_2_n_1 ;
  wire \o_out_reg[20]_i_2_n_2 ;
  wire \o_out_reg[20]_i_2_n_3 ;
  wire \o_out_reg[20]_i_2_n_4 ;
  wire \o_out_reg[20]_i_2_n_5 ;
  wire \o_out_reg[20]_i_2_n_6 ;
  wire \o_out_reg[20]_i_2_n_7 ;
  wire \o_out_reg[20]_i_3_n_3 ;
  wire \o_out_reg[20]_i_3_n_6 ;
  wire \o_out_reg[20]_i_3_n_7 ;
  wire \o_out_reg[20]_i_4_n_0 ;
  wire \o_out_reg[20]_i_5_n_0 ;
  wire \o_out_reg[20]_i_6_n_0 ;
  wire \o_out_reg[20]_i_7_n_0 ;
  wire \o_out_reg[20]_i_8_n_0 ;
  wire \o_out_reg[20]_i_9_n_0 ;
  wire \o_out_reg[28]_i_10_n_0 ;
  wire \o_out_reg[28]_i_11_n_0 ;
  wire \o_out_reg[28]_i_11_n_1 ;
  wire \o_out_reg[28]_i_11_n_2 ;
  wire \o_out_reg[28]_i_11_n_3 ;
  wire \o_out_reg[28]_i_11_n_4 ;
  wire \o_out_reg[28]_i_11_n_5 ;
  wire \o_out_reg[28]_i_11_n_6 ;
  wire \o_out_reg[28]_i_11_n_7 ;
  wire \o_out_reg[28]_i_12_n_3 ;
  wire \o_out_reg[28]_i_12_n_6 ;
  wire \o_out_reg[28]_i_12_n_7 ;
  wire \o_out_reg[28]_i_13_n_0 ;
  wire \o_out_reg[28]_i_14_n_0 ;
  wire \o_out_reg[28]_i_15_n_0 ;
  wire \o_out_reg[28]_i_16_n_0 ;
  wire \o_out_reg[28]_i_17_n_0 ;
  wire \o_out_reg[28]_i_18_n_0 ;
  wire \o_out_reg[28]_i_19_n_0 ;
  wire \o_out_reg[28]_i_3_n_0 ;
  wire \o_out_reg[28]_i_3_n_1 ;
  wire \o_out_reg[28]_i_3_n_2 ;
  wire \o_out_reg[28]_i_3_n_3 ;
  wire \o_out_reg[28]_i_3_n_4 ;
  wire \o_out_reg[28]_i_3_n_5 ;
  wire \o_out_reg[28]_i_3_n_6 ;
  wire \o_out_reg[28]_i_3_n_7 ;
  wire \o_out_reg[28]_i_4_n_3 ;
  wire \o_out_reg[28]_i_4_n_6 ;
  wire \o_out_reg[28]_i_4_n_7 ;
  wire \o_out_reg[28]_i_5_n_0 ;
  wire \o_out_reg[28]_i_6_n_0 ;
  wire \o_out_reg[28]_i_7_n_0 ;
  wire \o_out_reg[28]_i_8_n_0 ;
  wire \o_out_reg[28]_i_9_n_0 ;
  wire \o_out_reg[4]_i_10_n_0 ;
  wire \o_out_reg[4]_i_10_n_1 ;
  wire \o_out_reg[4]_i_10_n_2 ;
  wire \o_out_reg[4]_i_10_n_3 ;
  wire \o_out_reg[4]_i_10_n_4 ;
  wire \o_out_reg[4]_i_10_n_5 ;
  wire \o_out_reg[4]_i_10_n_6 ;
  wire \o_out_reg[4]_i_10_n_7 ;
  wire \o_out_reg[4]_i_11_n_3 ;
  wire \o_out_reg[4]_i_11_n_6 ;
  wire \o_out_reg[4]_i_11_n_7 ;
  wire \o_out_reg[4]_i_12_n_0 ;
  wire \o_out_reg[4]_i_13_n_0 ;
  wire \o_out_reg[4]_i_14_n_0 ;
  wire \o_out_reg[4]_i_15_n_0 ;
  wire \o_out_reg[4]_i_16_n_0 ;
  wire \o_out_reg[4]_i_17_n_0 ;
  wire \o_out_reg[4]_i_18_n_0 ;
  wire \o_out_reg[4]_i_2_n_0 ;
  wire \o_out_reg[4]_i_2_n_1 ;
  wire \o_out_reg[4]_i_2_n_2 ;
  wire \o_out_reg[4]_i_2_n_3 ;
  wire \o_out_reg[4]_i_2_n_4 ;
  wire \o_out_reg[4]_i_2_n_5 ;
  wire \o_out_reg[4]_i_2_n_6 ;
  wire \o_out_reg[4]_i_2_n_7 ;
  wire \o_out_reg[4]_i_3_n_3 ;
  wire \o_out_reg[4]_i_3_n_6 ;
  wire \o_out_reg[4]_i_3_n_7 ;
  wire \o_out_reg[4]_i_4_n_0 ;
  wire \o_out_reg[4]_i_5_n_0 ;
  wire \o_out_reg[4]_i_6_n_0 ;
  wire \o_out_reg[4]_i_7_n_0 ;
  wire \o_out_reg[4]_i_8_n_0 ;
  wire \o_out_reg[4]_i_9_n_0 ;
  wire [28:0]p_0_out;
  wire rst;
  wire rst_IBUF;
  wire rst_IBUF_BUFG;
  wire [31:0]v1;
  wire [31:0]v1_IBUF;
  wire [3:1]\NLW_o_out_reg[12]_i_11_CO_UNCONNECTED ;
  wire [3:2]\NLW_o_out_reg[12]_i_11_O_UNCONNECTED ;
  wire [3:1]\NLW_o_out_reg[12]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_o_out_reg[12]_i_3_O_UNCONNECTED ;
  wire [3:1]\NLW_o_out_reg[20]_i_11_CO_UNCONNECTED ;
  wire [3:2]\NLW_o_out_reg[20]_i_11_O_UNCONNECTED ;
  wire [3:1]\NLW_o_out_reg[20]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_o_out_reg[20]_i_3_O_UNCONNECTED ;
  wire [3:1]\NLW_o_out_reg[28]_i_12_CO_UNCONNECTED ;
  wire [3:2]\NLW_o_out_reg[28]_i_12_O_UNCONNECTED ;
  wire [3:1]\NLW_o_out_reg[28]_i_4_CO_UNCONNECTED ;
  wire [3:2]\NLW_o_out_reg[28]_i_4_O_UNCONNECTED ;
  wire [3:1]\NLW_o_out_reg[4]_i_11_CO_UNCONNECTED ;
  wire [3:2]\NLW_o_out_reg[4]_i_11_O_UNCONNECTED ;
  wire [3:1]\NLW_o_out_reg[4]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_o_out_reg[4]_i_3_O_UNCONNECTED ;

initial begin
 $sdf_annotate("adder_tb_time_synth.sdf",,,,"tool_control");
end
  OBUF \o_out_OBUF[0]_inst 
       (.I(o_out_OBUF[0]),
        .O(o_out[0]));
  OBUF \o_out_OBUF[10]_inst 
       (.I(o_out_OBUF[10]),
        .O(o_out[10]));
  OBUF \o_out_OBUF[11]_inst 
       (.I(o_out_OBUF[11]),
        .O(o_out[11]));
  OBUF \o_out_OBUF[12]_inst 
       (.I(o_out_OBUF[12]),
        .O(o_out[12]));
  OBUF \o_out_OBUF[13]_inst 
       (.I(1'b0),
        .O(o_out[13]));
  OBUF \o_out_OBUF[14]_inst 
       (.I(1'b0),
        .O(o_out[14]));
  OBUF \o_out_OBUF[15]_inst 
       (.I(1'b0),
        .O(o_out[15]));
  OBUF \o_out_OBUF[16]_inst 
       (.I(o_out_OBUF[16]),
        .O(o_out[16]));
  OBUF \o_out_OBUF[17]_inst 
       (.I(o_out_OBUF[17]),
        .O(o_out[17]));
  OBUF \o_out_OBUF[18]_inst 
       (.I(o_out_OBUF[18]),
        .O(o_out[18]));
  OBUF \o_out_OBUF[19]_inst 
       (.I(o_out_OBUF[19]),
        .O(o_out[19]));
  OBUF \o_out_OBUF[1]_inst 
       (.I(o_out_OBUF[1]),
        .O(o_out[1]));
  OBUF \o_out_OBUF[20]_inst 
       (.I(o_out_OBUF[20]),
        .O(o_out[20]));
  OBUF \o_out_OBUF[21]_inst 
       (.I(1'b0),
        .O(o_out[21]));
  OBUF \o_out_OBUF[22]_inst 
       (.I(1'b0),
        .O(o_out[22]));
  OBUF \o_out_OBUF[23]_inst 
       (.I(1'b0),
        .O(o_out[23]));
  OBUF \o_out_OBUF[24]_inst 
       (.I(o_out_OBUF[24]),
        .O(o_out[24]));
  OBUF \o_out_OBUF[25]_inst 
       (.I(o_out_OBUF[25]),
        .O(o_out[25]));
  OBUF \o_out_OBUF[26]_inst 
       (.I(o_out_OBUF[26]),
        .O(o_out[26]));
  OBUF \o_out_OBUF[27]_inst 
       (.I(o_out_OBUF[27]),
        .O(o_out[27]));
  OBUF \o_out_OBUF[28]_inst 
       (.I(o_out_OBUF[28]),
        .O(o_out[28]));
  OBUF \o_out_OBUF[29]_inst 
       (.I(1'b0),
        .O(o_out[29]));
  OBUF \o_out_OBUF[2]_inst 
       (.I(o_out_OBUF[2]),
        .O(o_out[2]));
  OBUF \o_out_OBUF[30]_inst 
       (.I(1'b0),
        .O(o_out[30]));
  OBUF \o_out_OBUF[31]_inst 
       (.I(1'b0),
        .O(o_out[31]));
  OBUF \o_out_OBUF[3]_inst 
       (.I(o_out_OBUF[3]),
        .O(o_out[3]));
  OBUF \o_out_OBUF[4]_inst 
       (.I(o_out_OBUF[4]),
        .O(o_out[4]));
  OBUF \o_out_OBUF[5]_inst 
       (.I(1'b0),
        .O(o_out[5]));
  OBUF \o_out_OBUF[6]_inst 
       (.I(1'b0),
        .O(o_out[6]));
  OBUF \o_out_OBUF[7]_inst 
       (.I(1'b0),
        .O(o_out[7]));
  OBUF \o_out_OBUF[8]_inst 
       (.I(o_out_OBUF[8]),
        .O(o_out[8]));
  OBUF \o_out_OBUF[9]_inst 
       (.I(o_out_OBUF[9]),
        .O(o_out[9]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \o_out_reg[0] 
       (.CLR(1'b0),
        .D(p_0_out[0]),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(o_out_OBUF[0]));
  LUT6 #(
    .INIT(64'h15555555AAAAAAAA)) 
    \o_out_reg[0]_i_1 
       (.I0(\o_out_reg[4]_i_3_n_6 ),
        .I1(\o_out_reg[4]_i_3_n_7 ),
        .I2(\o_out_reg[4]_i_2_n_5 ),
        .I3(\o_out_reg[4]_i_2_n_6 ),
        .I4(\o_out_reg[4]_i_2_n_4 ),
        .I5(\o_out_reg[4]_i_2_n_7 ),
        .O(p_0_out[0]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \o_out_reg[10] 
       (.CLR(1'b0),
        .D(p_0_out[10]),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(o_out_OBUF[10]));
  LUT6 #(
    .INIT(64'h3FC03FC07F00FF00)) 
    \o_out_reg[10]_i_1 
       (.I0(\o_out_reg[12]_i_2_n_4 ),
        .I1(\o_out_reg[12]_i_2_n_6 ),
        .I2(\o_out_reg[12]_i_2_n_7 ),
        .I3(\o_out_reg[12]_i_2_n_5 ),
        .I4(\o_out_reg[12]_i_3_n_7 ),
        .I5(\o_out_reg[12]_i_3_n_6 ),
        .O(p_0_out[10]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \o_out_reg[11] 
       (.CLR(1'b0),
        .D(p_0_out[11]),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(o_out_OBUF[11]));
  LUT6 #(
    .INIT(64'h6AAA6AAA2AAAAAAA)) 
    \o_out_reg[11]_i_1 
       (.I0(\o_out_reg[12]_i_2_n_4 ),
        .I1(\o_out_reg[12]_i_2_n_6 ),
        .I2(\o_out_reg[12]_i_2_n_7 ),
        .I3(\o_out_reg[12]_i_2_n_5 ),
        .I4(\o_out_reg[12]_i_3_n_7 ),
        .I5(\o_out_reg[12]_i_3_n_6 ),
        .O(p_0_out[11]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \o_out_reg[12] 
       (.CLR(1'b0),
        .D(p_0_out[12]),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(o_out_OBUF[12]));
  LUT6 #(
    .INIT(64'h7FFF80007FFF0000)) 
    \o_out_reg[12]_i_1 
       (.I0(\o_out_reg[12]_i_2_n_4 ),
        .I1(\o_out_reg[12]_i_2_n_6 ),
        .I2(\o_out_reg[12]_i_2_n_7 ),
        .I3(\o_out_reg[12]_i_2_n_5 ),
        .I4(\o_out_reg[12]_i_3_n_7 ),
        .I5(\o_out_reg[12]_i_3_n_6 ),
        .O(p_0_out[12]));
  CARRY4 \o_out_reg[12]_i_10 
       (.CI(1'b0),
        .CO({\o_out_reg[12]_i_10_n_0 ,\o_out_reg[12]_i_10_n_1 ,\o_out_reg[12]_i_10_n_2 ,\o_out_reg[12]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\o_out_reg[12]_i_12_n_0 ,v1_IBUF[13],v1_IBUF[13],1'b0}),
        .O({\o_out_reg[12]_i_10_n_4 ,\o_out_reg[12]_i_10_n_5 ,\o_out_reg[12]_i_10_n_6 ,\o_out_reg[12]_i_10_n_7 }),
        .S({\o_out_reg[12]_i_13_n_0 ,\o_out_reg[12]_i_14_n_0 ,\o_out_reg[12]_i_15_n_0 ,v1_IBUF[13]}));
  CARRY4 \o_out_reg[12]_i_11 
       (.CI(\o_out_reg[12]_i_10_n_0 ),
        .CO({\NLW_o_out_reg[12]_i_11_CO_UNCONNECTED [3:1],\o_out_reg[12]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\o_out_reg[12]_i_16_n_0 }),
        .O({\NLW_o_out_reg[12]_i_11_O_UNCONNECTED [3:2],\o_out_reg[12]_i_11_n_6 ,\o_out_reg[12]_i_11_n_7 }),
        .S({1'b0,1'b0,\o_out_reg[12]_i_17_n_0 ,\o_out_reg[12]_i_18_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \o_out_reg[12]_i_12 
       (.I0(v1_IBUF[14]),
        .I1(v1_IBUF[15]),
        .I2(v1_IBUF[13]),
        .O(\o_out_reg[12]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \o_out_reg[12]_i_13 
       (.I0(v1_IBUF[13]),
        .I1(v1_IBUF[14]),
        .I2(v1_IBUF[15]),
        .O(\o_out_reg[12]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \o_out_reg[12]_i_14 
       (.I0(v1_IBUF[14]),
        .I1(v1_IBUF[15]),
        .I2(v1_IBUF[13]),
        .O(\o_out_reg[12]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out_reg[12]_i_15 
       (.I0(v1_IBUF[13]),
        .I1(v1_IBUF[14]),
        .O(\o_out_reg[12]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \o_out_reg[12]_i_16 
       (.I0(v1_IBUF[15]),
        .I1(v1_IBUF[14]),
        .I2(v1_IBUF[13]),
        .O(\o_out_reg[12]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \o_out_reg[12]_i_17 
       (.I0(v1_IBUF[13]),
        .I1(v1_IBUF[15]),
        .I2(v1_IBUF[14]),
        .O(\o_out_reg[12]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \o_out_reg[12]_i_18 
       (.I0(v1_IBUF[14]),
        .I1(v1_IBUF[15]),
        .I2(v1_IBUF[13]),
        .O(\o_out_reg[12]_i_18_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_out_reg[12]_i_2 
       (.CI(1'b0),
        .CO({\o_out_reg[12]_i_2_n_0 ,\o_out_reg[12]_i_2_n_1 ,\o_out_reg[12]_i_2_n_2 ,\o_out_reg[12]_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI(v1_IBUF[11:8]),
        .O({\o_out_reg[12]_i_2_n_4 ,\o_out_reg[12]_i_2_n_5 ,\o_out_reg[12]_i_2_n_6 ,\o_out_reg[12]_i_2_n_7 }),
        .S({\o_out_reg[12]_i_4_n_0 ,\o_out_reg[12]_i_5_n_0 ,\o_out_reg[12]_i_6_n_0 ,\o_out_reg[12]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_out_reg[12]_i_3 
       (.CI(\o_out_reg[12]_i_2_n_0 ),
        .CO({\NLW_o_out_reg[12]_i_3_CO_UNCONNECTED [3:1],\o_out_reg[12]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,v1_IBUF[12]}),
        .O({\NLW_o_out_reg[12]_i_3_O_UNCONNECTED [3:2],\o_out_reg[12]_i_3_n_6 ,\o_out_reg[12]_i_3_n_7 }),
        .S({1'b0,1'b0,\o_out_reg[12]_i_8_n_0 ,\o_out_reg[12]_i_9_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \o_out_reg[12]_i_4 
       (.I0(v1_IBUF[11]),
        .I1(\o_out_reg[12]_i_10_n_4 ),
        .O(\o_out_reg[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \o_out_reg[12]_i_5 
       (.I0(v1_IBUF[10]),
        .I1(\o_out_reg[12]_i_10_n_5 ),
        .O(\o_out_reg[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \o_out_reg[12]_i_6 
       (.I0(v1_IBUF[9]),
        .I1(\o_out_reg[12]_i_10_n_6 ),
        .O(\o_out_reg[12]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \o_out_reg[12]_i_7 
       (.I0(v1_IBUF[8]),
        .I1(\o_out_reg[12]_i_10_n_7 ),
        .O(\o_out_reg[12]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \o_out_reg[12]_i_8 
       (.I0(v1_IBUF[13]),
        .I1(\o_out_reg[12]_i_11_n_6 ),
        .O(\o_out_reg[12]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \o_out_reg[12]_i_9 
       (.I0(v1_IBUF[12]),
        .I1(\o_out_reg[12]_i_11_n_7 ),
        .O(\o_out_reg[12]_i_9_n_0 ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \o_out_reg[16] 
       (.CLR(1'b0),
        .D(p_0_out[16]),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(o_out_OBUF[16]));
  LUT6 #(
    .INIT(64'h15555555AAAAAAAA)) 
    \o_out_reg[16]_i_1 
       (.I0(\o_out_reg[20]_i_3_n_6 ),
        .I1(\o_out_reg[20]_i_3_n_7 ),
        .I2(\o_out_reg[20]_i_2_n_5 ),
        .I3(\o_out_reg[20]_i_2_n_6 ),
        .I4(\o_out_reg[20]_i_2_n_4 ),
        .I5(\o_out_reg[20]_i_2_n_7 ),
        .O(p_0_out[16]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \o_out_reg[17] 
       (.CLR(1'b0),
        .D(p_0_out[17]),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(o_out_OBUF[17]));
  LUT6 #(
    .INIT(64'h3C3C3C3C4CCCCCCC)) 
    \o_out_reg[17]_i_1 
       (.I0(\o_out_reg[20]_i_2_n_4 ),
        .I1(\o_out_reg[20]_i_2_n_6 ),
        .I2(\o_out_reg[20]_i_2_n_7 ),
        .I3(\o_out_reg[20]_i_2_n_5 ),
        .I4(\o_out_reg[20]_i_3_n_7 ),
        .I5(\o_out_reg[20]_i_3_n_6 ),
        .O(p_0_out[17]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \o_out_reg[18] 
       (.CLR(1'b0),
        .D(p_0_out[18]),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(o_out_OBUF[18]));
  LUT6 #(
    .INIT(64'h3FC03FC07F00FF00)) 
    \o_out_reg[18]_i_1 
       (.I0(\o_out_reg[20]_i_2_n_4 ),
        .I1(\o_out_reg[20]_i_2_n_6 ),
        .I2(\o_out_reg[20]_i_2_n_7 ),
        .I3(\o_out_reg[20]_i_2_n_5 ),
        .I4(\o_out_reg[20]_i_3_n_7 ),
        .I5(\o_out_reg[20]_i_3_n_6 ),
        .O(p_0_out[18]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \o_out_reg[19] 
       (.CLR(1'b0),
        .D(p_0_out[19]),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(o_out_OBUF[19]));
  LUT6 #(
    .INIT(64'h6AAA6AAA2AAAAAAA)) 
    \o_out_reg[19]_i_1 
       (.I0(\o_out_reg[20]_i_2_n_4 ),
        .I1(\o_out_reg[20]_i_2_n_6 ),
        .I2(\o_out_reg[20]_i_2_n_7 ),
        .I3(\o_out_reg[20]_i_2_n_5 ),
        .I4(\o_out_reg[20]_i_3_n_7 ),
        .I5(\o_out_reg[20]_i_3_n_6 ),
        .O(p_0_out[19]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \o_out_reg[1] 
       (.CLR(1'b0),
        .D(p_0_out[1]),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(o_out_OBUF[1]));
  LUT6 #(
    .INIT(64'h3C3C3C3C4CCCCCCC)) 
    \o_out_reg[1]_i_1 
       (.I0(\o_out_reg[4]_i_2_n_4 ),
        .I1(\o_out_reg[4]_i_2_n_6 ),
        .I2(\o_out_reg[4]_i_2_n_7 ),
        .I3(\o_out_reg[4]_i_2_n_5 ),
        .I4(\o_out_reg[4]_i_3_n_7 ),
        .I5(\o_out_reg[4]_i_3_n_6 ),
        .O(p_0_out[1]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \o_out_reg[20] 
       (.CLR(1'b0),
        .D(p_0_out[20]),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(o_out_OBUF[20]));
  LUT6 #(
    .INIT(64'h7FFF80007FFF0000)) 
    \o_out_reg[20]_i_1 
       (.I0(\o_out_reg[20]_i_2_n_4 ),
        .I1(\o_out_reg[20]_i_2_n_6 ),
        .I2(\o_out_reg[20]_i_2_n_7 ),
        .I3(\o_out_reg[20]_i_2_n_5 ),
        .I4(\o_out_reg[20]_i_3_n_7 ),
        .I5(\o_out_reg[20]_i_3_n_6 ),
        .O(p_0_out[20]));
  CARRY4 \o_out_reg[20]_i_10 
       (.CI(1'b0),
        .CO({\o_out_reg[20]_i_10_n_0 ,\o_out_reg[20]_i_10_n_1 ,\o_out_reg[20]_i_10_n_2 ,\o_out_reg[20]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\o_out_reg[20]_i_12_n_0 ,v1_IBUF[21],v1_IBUF[21],1'b0}),
        .O({\o_out_reg[20]_i_10_n_4 ,\o_out_reg[20]_i_10_n_5 ,\o_out_reg[20]_i_10_n_6 ,\o_out_reg[20]_i_10_n_7 }),
        .S({\o_out_reg[20]_i_13_n_0 ,\o_out_reg[20]_i_14_n_0 ,\o_out_reg[20]_i_15_n_0 ,v1_IBUF[21]}));
  CARRY4 \o_out_reg[20]_i_11 
       (.CI(\o_out_reg[20]_i_10_n_0 ),
        .CO({\NLW_o_out_reg[20]_i_11_CO_UNCONNECTED [3:1],\o_out_reg[20]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\o_out_reg[20]_i_16_n_0 }),
        .O({\NLW_o_out_reg[20]_i_11_O_UNCONNECTED [3:2],\o_out_reg[20]_i_11_n_6 ,\o_out_reg[20]_i_11_n_7 }),
        .S({1'b0,1'b0,\o_out_reg[20]_i_17_n_0 ,\o_out_reg[20]_i_18_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \o_out_reg[20]_i_12 
       (.I0(v1_IBUF[22]),
        .I1(v1_IBUF[23]),
        .I2(v1_IBUF[21]),
        .O(\o_out_reg[20]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \o_out_reg[20]_i_13 
       (.I0(v1_IBUF[21]),
        .I1(v1_IBUF[22]),
        .I2(v1_IBUF[23]),
        .O(\o_out_reg[20]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \o_out_reg[20]_i_14 
       (.I0(v1_IBUF[22]),
        .I1(v1_IBUF[23]),
        .I2(v1_IBUF[21]),
        .O(\o_out_reg[20]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out_reg[20]_i_15 
       (.I0(v1_IBUF[21]),
        .I1(v1_IBUF[22]),
        .O(\o_out_reg[20]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \o_out_reg[20]_i_16 
       (.I0(v1_IBUF[23]),
        .I1(v1_IBUF[22]),
        .I2(v1_IBUF[21]),
        .O(\o_out_reg[20]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \o_out_reg[20]_i_17 
       (.I0(v1_IBUF[21]),
        .I1(v1_IBUF[23]),
        .I2(v1_IBUF[22]),
        .O(\o_out_reg[20]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \o_out_reg[20]_i_18 
       (.I0(v1_IBUF[22]),
        .I1(v1_IBUF[23]),
        .I2(v1_IBUF[21]),
        .O(\o_out_reg[20]_i_18_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_out_reg[20]_i_2 
       (.CI(1'b0),
        .CO({\o_out_reg[20]_i_2_n_0 ,\o_out_reg[20]_i_2_n_1 ,\o_out_reg[20]_i_2_n_2 ,\o_out_reg[20]_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI(v1_IBUF[19:16]),
        .O({\o_out_reg[20]_i_2_n_4 ,\o_out_reg[20]_i_2_n_5 ,\o_out_reg[20]_i_2_n_6 ,\o_out_reg[20]_i_2_n_7 }),
        .S({\o_out_reg[20]_i_4_n_0 ,\o_out_reg[20]_i_5_n_0 ,\o_out_reg[20]_i_6_n_0 ,\o_out_reg[20]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_out_reg[20]_i_3 
       (.CI(\o_out_reg[20]_i_2_n_0 ),
        .CO({\NLW_o_out_reg[20]_i_3_CO_UNCONNECTED [3:1],\o_out_reg[20]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,v1_IBUF[20]}),
        .O({\NLW_o_out_reg[20]_i_3_O_UNCONNECTED [3:2],\o_out_reg[20]_i_3_n_6 ,\o_out_reg[20]_i_3_n_7 }),
        .S({1'b0,1'b0,\o_out_reg[20]_i_8_n_0 ,\o_out_reg[20]_i_9_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \o_out_reg[20]_i_4 
       (.I0(v1_IBUF[19]),
        .I1(\o_out_reg[20]_i_10_n_4 ),
        .O(\o_out_reg[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \o_out_reg[20]_i_5 
       (.I0(v1_IBUF[18]),
        .I1(\o_out_reg[20]_i_10_n_5 ),
        .O(\o_out_reg[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \o_out_reg[20]_i_6 
       (.I0(v1_IBUF[17]),
        .I1(\o_out_reg[20]_i_10_n_6 ),
        .O(\o_out_reg[20]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \o_out_reg[20]_i_7 
       (.I0(v1_IBUF[16]),
        .I1(\o_out_reg[20]_i_10_n_7 ),
        .O(\o_out_reg[20]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \o_out_reg[20]_i_8 
       (.I0(v1_IBUF[21]),
        .I1(\o_out_reg[20]_i_11_n_6 ),
        .O(\o_out_reg[20]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \o_out_reg[20]_i_9 
       (.I0(v1_IBUF[20]),
        .I1(\o_out_reg[20]_i_11_n_7 ),
        .O(\o_out_reg[20]_i_9_n_0 ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \o_out_reg[24] 
       (.CLR(1'b0),
        .D(p_0_out[24]),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(o_out_OBUF[24]));
  LUT6 #(
    .INIT(64'h15555555AAAAAAAA)) 
    \o_out_reg[24]_i_1 
       (.I0(\o_out_reg[28]_i_4_n_6 ),
        .I1(\o_out_reg[28]_i_4_n_7 ),
        .I2(\o_out_reg[28]_i_3_n_5 ),
        .I3(\o_out_reg[28]_i_3_n_6 ),
        .I4(\o_out_reg[28]_i_3_n_4 ),
        .I5(\o_out_reg[28]_i_3_n_7 ),
        .O(p_0_out[24]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \o_out_reg[25] 
       (.CLR(1'b0),
        .D(p_0_out[25]),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(o_out_OBUF[25]));
  LUT6 #(
    .INIT(64'h3C3C3C3C4CCCCCCC)) 
    \o_out_reg[25]_i_1 
       (.I0(\o_out_reg[28]_i_3_n_4 ),
        .I1(\o_out_reg[28]_i_3_n_6 ),
        .I2(\o_out_reg[28]_i_3_n_7 ),
        .I3(\o_out_reg[28]_i_3_n_5 ),
        .I4(\o_out_reg[28]_i_4_n_7 ),
        .I5(\o_out_reg[28]_i_4_n_6 ),
        .O(p_0_out[25]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \o_out_reg[26] 
       (.CLR(1'b0),
        .D(p_0_out[26]),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(o_out_OBUF[26]));
  LUT6 #(
    .INIT(64'h3FC03FC07F00FF00)) 
    \o_out_reg[26]_i_1 
       (.I0(\o_out_reg[28]_i_3_n_4 ),
        .I1(\o_out_reg[28]_i_3_n_6 ),
        .I2(\o_out_reg[28]_i_3_n_7 ),
        .I3(\o_out_reg[28]_i_3_n_5 ),
        .I4(\o_out_reg[28]_i_4_n_7 ),
        .I5(\o_out_reg[28]_i_4_n_6 ),
        .O(p_0_out[26]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \o_out_reg[27] 
       (.CLR(1'b0),
        .D(p_0_out[27]),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(o_out_OBUF[27]));
  LUT6 #(
    .INIT(64'h6AAA6AAA2AAAAAAA)) 
    \o_out_reg[27]_i_1 
       (.I0(\o_out_reg[28]_i_3_n_4 ),
        .I1(\o_out_reg[28]_i_3_n_6 ),
        .I2(\o_out_reg[28]_i_3_n_7 ),
        .I3(\o_out_reg[28]_i_3_n_5 ),
        .I4(\o_out_reg[28]_i_4_n_7 ),
        .I5(\o_out_reg[28]_i_4_n_6 ),
        .O(p_0_out[27]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \o_out_reg[28] 
       (.CLR(1'b0),
        .D(p_0_out[28]),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(o_out_OBUF[28]));
  LUT6 #(
    .INIT(64'h7FFF80007FFF0000)) 
    \o_out_reg[28]_i_1 
       (.I0(\o_out_reg[28]_i_3_n_4 ),
        .I1(\o_out_reg[28]_i_3_n_6 ),
        .I2(\o_out_reg[28]_i_3_n_7 ),
        .I3(\o_out_reg[28]_i_3_n_5 ),
        .I4(\o_out_reg[28]_i_4_n_7 ),
        .I5(\o_out_reg[28]_i_4_n_6 ),
        .O(p_0_out[28]));
  LUT2 #(
    .INIT(4'h9)) 
    \o_out_reg[28]_i_10 
       (.I0(v1_IBUF[28]),
        .I1(\o_out_reg[28]_i_12_n_7 ),
        .O(\o_out_reg[28]_i_10_n_0 ));
  CARRY4 \o_out_reg[28]_i_11 
       (.CI(1'b0),
        .CO({\o_out_reg[28]_i_11_n_0 ,\o_out_reg[28]_i_11_n_1 ,\o_out_reg[28]_i_11_n_2 ,\o_out_reg[28]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\o_out_reg[28]_i_13_n_0 ,v1_IBUF[29],v1_IBUF[29],1'b0}),
        .O({\o_out_reg[28]_i_11_n_4 ,\o_out_reg[28]_i_11_n_5 ,\o_out_reg[28]_i_11_n_6 ,\o_out_reg[28]_i_11_n_7 }),
        .S({\o_out_reg[28]_i_14_n_0 ,\o_out_reg[28]_i_15_n_0 ,\o_out_reg[28]_i_16_n_0 ,v1_IBUF[29]}));
  CARRY4 \o_out_reg[28]_i_12 
       (.CI(\o_out_reg[28]_i_11_n_0 ),
        .CO({\NLW_o_out_reg[28]_i_12_CO_UNCONNECTED [3:1],\o_out_reg[28]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\o_out_reg[28]_i_17_n_0 }),
        .O({\NLW_o_out_reg[28]_i_12_O_UNCONNECTED [3:2],\o_out_reg[28]_i_12_n_6 ,\o_out_reg[28]_i_12_n_7 }),
        .S({1'b0,1'b0,\o_out_reg[28]_i_18_n_0 ,\o_out_reg[28]_i_19_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \o_out_reg[28]_i_13 
       (.I0(v1_IBUF[30]),
        .I1(v1_IBUF[31]),
        .I2(v1_IBUF[29]),
        .O(\o_out_reg[28]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \o_out_reg[28]_i_14 
       (.I0(v1_IBUF[29]),
        .I1(v1_IBUF[30]),
        .I2(v1_IBUF[31]),
        .O(\o_out_reg[28]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \o_out_reg[28]_i_15 
       (.I0(v1_IBUF[30]),
        .I1(v1_IBUF[31]),
        .I2(v1_IBUF[29]),
        .O(\o_out_reg[28]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out_reg[28]_i_16 
       (.I0(v1_IBUF[29]),
        .I1(v1_IBUF[30]),
        .O(\o_out_reg[28]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \o_out_reg[28]_i_17 
       (.I0(v1_IBUF[31]),
        .I1(v1_IBUF[30]),
        .I2(v1_IBUF[29]),
        .O(\o_out_reg[28]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \o_out_reg[28]_i_18 
       (.I0(v1_IBUF[29]),
        .I1(v1_IBUF[31]),
        .I2(v1_IBUF[30]),
        .O(\o_out_reg[28]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \o_out_reg[28]_i_19 
       (.I0(v1_IBUF[30]),
        .I1(v1_IBUF[31]),
        .I2(v1_IBUF[29]),
        .O(\o_out_reg[28]_i_19_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_out_reg[28]_i_3 
       (.CI(1'b0),
        .CO({\o_out_reg[28]_i_3_n_0 ,\o_out_reg[28]_i_3_n_1 ,\o_out_reg[28]_i_3_n_2 ,\o_out_reg[28]_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI(v1_IBUF[27:24]),
        .O({\o_out_reg[28]_i_3_n_4 ,\o_out_reg[28]_i_3_n_5 ,\o_out_reg[28]_i_3_n_6 ,\o_out_reg[28]_i_3_n_7 }),
        .S({\o_out_reg[28]_i_5_n_0 ,\o_out_reg[28]_i_6_n_0 ,\o_out_reg[28]_i_7_n_0 ,\o_out_reg[28]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_out_reg[28]_i_4 
       (.CI(\o_out_reg[28]_i_3_n_0 ),
        .CO({\NLW_o_out_reg[28]_i_4_CO_UNCONNECTED [3:1],\o_out_reg[28]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,v1_IBUF[28]}),
        .O({\NLW_o_out_reg[28]_i_4_O_UNCONNECTED [3:2],\o_out_reg[28]_i_4_n_6 ,\o_out_reg[28]_i_4_n_7 }),
        .S({1'b0,1'b0,\o_out_reg[28]_i_9_n_0 ,\o_out_reg[28]_i_10_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \o_out_reg[28]_i_5 
       (.I0(v1_IBUF[27]),
        .I1(\o_out_reg[28]_i_11_n_4 ),
        .O(\o_out_reg[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \o_out_reg[28]_i_6 
       (.I0(v1_IBUF[26]),
        .I1(\o_out_reg[28]_i_11_n_5 ),
        .O(\o_out_reg[28]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \o_out_reg[28]_i_7 
       (.I0(v1_IBUF[25]),
        .I1(\o_out_reg[28]_i_11_n_6 ),
        .O(\o_out_reg[28]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \o_out_reg[28]_i_8 
       (.I0(v1_IBUF[24]),
        .I1(\o_out_reg[28]_i_11_n_7 ),
        .O(\o_out_reg[28]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \o_out_reg[28]_i_9 
       (.I0(v1_IBUF[29]),
        .I1(\o_out_reg[28]_i_12_n_6 ),
        .O(\o_out_reg[28]_i_9_n_0 ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \o_out_reg[2] 
       (.CLR(1'b0),
        .D(p_0_out[2]),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(o_out_OBUF[2]));
  LUT6 #(
    .INIT(64'h3FC03FC07F00FF00)) 
    \o_out_reg[2]_i_1 
       (.I0(\o_out_reg[4]_i_2_n_4 ),
        .I1(\o_out_reg[4]_i_2_n_6 ),
        .I2(\o_out_reg[4]_i_2_n_7 ),
        .I3(\o_out_reg[4]_i_2_n_5 ),
        .I4(\o_out_reg[4]_i_3_n_7 ),
        .I5(\o_out_reg[4]_i_3_n_6 ),
        .O(p_0_out[2]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \o_out_reg[3] 
       (.CLR(1'b0),
        .D(p_0_out[3]),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(o_out_OBUF[3]));
  LUT6 #(
    .INIT(64'h6AAA6AAA2AAAAAAA)) 
    \o_out_reg[3]_i_1 
       (.I0(\o_out_reg[4]_i_2_n_4 ),
        .I1(\o_out_reg[4]_i_2_n_6 ),
        .I2(\o_out_reg[4]_i_2_n_7 ),
        .I3(\o_out_reg[4]_i_2_n_5 ),
        .I4(\o_out_reg[4]_i_3_n_7 ),
        .I5(\o_out_reg[4]_i_3_n_6 ),
        .O(p_0_out[3]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \o_out_reg[4] 
       (.CLR(1'b0),
        .D(p_0_out[4]),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(o_out_OBUF[4]));
  LUT6 #(
    .INIT(64'h7FFF80007FFF0000)) 
    \o_out_reg[4]_i_1 
       (.I0(\o_out_reg[4]_i_2_n_4 ),
        .I1(\o_out_reg[4]_i_2_n_6 ),
        .I2(\o_out_reg[4]_i_2_n_7 ),
        .I3(\o_out_reg[4]_i_2_n_5 ),
        .I4(\o_out_reg[4]_i_3_n_7 ),
        .I5(\o_out_reg[4]_i_3_n_6 ),
        .O(p_0_out[4]));
  CARRY4 \o_out_reg[4]_i_10 
       (.CI(1'b0),
        .CO({\o_out_reg[4]_i_10_n_0 ,\o_out_reg[4]_i_10_n_1 ,\o_out_reg[4]_i_10_n_2 ,\o_out_reg[4]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\o_out_reg[4]_i_12_n_0 ,v1_IBUF[5],v1_IBUF[5],1'b0}),
        .O({\o_out_reg[4]_i_10_n_4 ,\o_out_reg[4]_i_10_n_5 ,\o_out_reg[4]_i_10_n_6 ,\o_out_reg[4]_i_10_n_7 }),
        .S({\o_out_reg[4]_i_13_n_0 ,\o_out_reg[4]_i_14_n_0 ,\o_out_reg[4]_i_15_n_0 ,v1_IBUF[5]}));
  CARRY4 \o_out_reg[4]_i_11 
       (.CI(\o_out_reg[4]_i_10_n_0 ),
        .CO({\NLW_o_out_reg[4]_i_11_CO_UNCONNECTED [3:1],\o_out_reg[4]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\o_out_reg[4]_i_16_n_0 }),
        .O({\NLW_o_out_reg[4]_i_11_O_UNCONNECTED [3:2],\o_out_reg[4]_i_11_n_6 ,\o_out_reg[4]_i_11_n_7 }),
        .S({1'b0,1'b0,\o_out_reg[4]_i_17_n_0 ,\o_out_reg[4]_i_18_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \o_out_reg[4]_i_12 
       (.I0(v1_IBUF[6]),
        .I1(v1_IBUF[7]),
        .I2(v1_IBUF[5]),
        .O(\o_out_reg[4]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \o_out_reg[4]_i_13 
       (.I0(v1_IBUF[5]),
        .I1(v1_IBUF[6]),
        .I2(v1_IBUF[7]),
        .O(\o_out_reg[4]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \o_out_reg[4]_i_14 
       (.I0(v1_IBUF[6]),
        .I1(v1_IBUF[7]),
        .I2(v1_IBUF[5]),
        .O(\o_out_reg[4]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out_reg[4]_i_15 
       (.I0(v1_IBUF[5]),
        .I1(v1_IBUF[6]),
        .O(\o_out_reg[4]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \o_out_reg[4]_i_16 
       (.I0(v1_IBUF[7]),
        .I1(v1_IBUF[6]),
        .I2(v1_IBUF[5]),
        .O(\o_out_reg[4]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \o_out_reg[4]_i_17 
       (.I0(v1_IBUF[5]),
        .I1(v1_IBUF[7]),
        .I2(v1_IBUF[6]),
        .O(\o_out_reg[4]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \o_out_reg[4]_i_18 
       (.I0(v1_IBUF[6]),
        .I1(v1_IBUF[7]),
        .I2(v1_IBUF[5]),
        .O(\o_out_reg[4]_i_18_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_out_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\o_out_reg[4]_i_2_n_0 ,\o_out_reg[4]_i_2_n_1 ,\o_out_reg[4]_i_2_n_2 ,\o_out_reg[4]_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI(v1_IBUF[3:0]),
        .O({\o_out_reg[4]_i_2_n_4 ,\o_out_reg[4]_i_2_n_5 ,\o_out_reg[4]_i_2_n_6 ,\o_out_reg[4]_i_2_n_7 }),
        .S({\o_out_reg[4]_i_4_n_0 ,\o_out_reg[4]_i_5_n_0 ,\o_out_reg[4]_i_6_n_0 ,\o_out_reg[4]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_out_reg[4]_i_3 
       (.CI(\o_out_reg[4]_i_2_n_0 ),
        .CO({\NLW_o_out_reg[4]_i_3_CO_UNCONNECTED [3:1],\o_out_reg[4]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,v1_IBUF[4]}),
        .O({\NLW_o_out_reg[4]_i_3_O_UNCONNECTED [3:2],\o_out_reg[4]_i_3_n_6 ,\o_out_reg[4]_i_3_n_7 }),
        .S({1'b0,1'b0,\o_out_reg[4]_i_8_n_0 ,\o_out_reg[4]_i_9_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \o_out_reg[4]_i_4 
       (.I0(v1_IBUF[3]),
        .I1(\o_out_reg[4]_i_10_n_4 ),
        .O(\o_out_reg[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \o_out_reg[4]_i_5 
       (.I0(v1_IBUF[2]),
        .I1(\o_out_reg[4]_i_10_n_5 ),
        .O(\o_out_reg[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \o_out_reg[4]_i_6 
       (.I0(v1_IBUF[1]),
        .I1(\o_out_reg[4]_i_10_n_6 ),
        .O(\o_out_reg[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \o_out_reg[4]_i_7 
       (.I0(v1_IBUF[0]),
        .I1(\o_out_reg[4]_i_10_n_7 ),
        .O(\o_out_reg[4]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \o_out_reg[4]_i_8 
       (.I0(v1_IBUF[5]),
        .I1(\o_out_reg[4]_i_11_n_6 ),
        .O(\o_out_reg[4]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \o_out_reg[4]_i_9 
       (.I0(v1_IBUF[4]),
        .I1(\o_out_reg[4]_i_11_n_7 ),
        .O(\o_out_reg[4]_i_9_n_0 ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \o_out_reg[8] 
       (.CLR(1'b0),
        .D(p_0_out[8]),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(o_out_OBUF[8]));
  LUT6 #(
    .INIT(64'h15555555AAAAAAAA)) 
    \o_out_reg[8]_i_1 
       (.I0(\o_out_reg[12]_i_3_n_6 ),
        .I1(\o_out_reg[12]_i_3_n_7 ),
        .I2(\o_out_reg[12]_i_2_n_5 ),
        .I3(\o_out_reg[12]_i_2_n_6 ),
        .I4(\o_out_reg[12]_i_2_n_4 ),
        .I5(\o_out_reg[12]_i_2_n_7 ),
        .O(p_0_out[8]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \o_out_reg[9] 
       (.CLR(1'b0),
        .D(p_0_out[9]),
        .G(rst_IBUF_BUFG),
        .GE(1'b1),
        .Q(o_out_OBUF[9]));
  LUT6 #(
    .INIT(64'h3C3C3C3C4CCCCCCC)) 
    \o_out_reg[9]_i_1 
       (.I0(\o_out_reg[12]_i_2_n_4 ),
        .I1(\o_out_reg[12]_i_2_n_6 ),
        .I2(\o_out_reg[12]_i_2_n_7 ),
        .I3(\o_out_reg[12]_i_2_n_5 ),
        .I4(\o_out_reg[12]_i_3_n_7 ),
        .I5(\o_out_reg[12]_i_3_n_6 ),
        .O(p_0_out[9]));
  BUFG rst_IBUF_BUFG_inst
       (.I(rst_IBUF),
        .O(rst_IBUF_BUFG));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  IBUF \v1_IBUF[0]_inst 
       (.I(v1[0]),
        .O(v1_IBUF[0]));
  IBUF \v1_IBUF[10]_inst 
       (.I(v1[10]),
        .O(v1_IBUF[10]));
  IBUF \v1_IBUF[11]_inst 
       (.I(v1[11]),
        .O(v1_IBUF[11]));
  IBUF \v1_IBUF[12]_inst 
       (.I(v1[12]),
        .O(v1_IBUF[12]));
  IBUF \v1_IBUF[13]_inst 
       (.I(v1[13]),
        .O(v1_IBUF[13]));
  IBUF \v1_IBUF[14]_inst 
       (.I(v1[14]),
        .O(v1_IBUF[14]));
  IBUF \v1_IBUF[15]_inst 
       (.I(v1[15]),
        .O(v1_IBUF[15]));
  IBUF \v1_IBUF[16]_inst 
       (.I(v1[16]),
        .O(v1_IBUF[16]));
  IBUF \v1_IBUF[17]_inst 
       (.I(v1[17]),
        .O(v1_IBUF[17]));
  IBUF \v1_IBUF[18]_inst 
       (.I(v1[18]),
        .O(v1_IBUF[18]));
  IBUF \v1_IBUF[19]_inst 
       (.I(v1[19]),
        .O(v1_IBUF[19]));
  IBUF \v1_IBUF[1]_inst 
       (.I(v1[1]),
        .O(v1_IBUF[1]));
  IBUF \v1_IBUF[20]_inst 
       (.I(v1[20]),
        .O(v1_IBUF[20]));
  IBUF \v1_IBUF[21]_inst 
       (.I(v1[21]),
        .O(v1_IBUF[21]));
  IBUF \v1_IBUF[22]_inst 
       (.I(v1[22]),
        .O(v1_IBUF[22]));
  IBUF \v1_IBUF[23]_inst 
       (.I(v1[23]),
        .O(v1_IBUF[23]));
  IBUF \v1_IBUF[24]_inst 
       (.I(v1[24]),
        .O(v1_IBUF[24]));
  IBUF \v1_IBUF[25]_inst 
       (.I(v1[25]),
        .O(v1_IBUF[25]));
  IBUF \v1_IBUF[26]_inst 
       (.I(v1[26]),
        .O(v1_IBUF[26]));
  IBUF \v1_IBUF[27]_inst 
       (.I(v1[27]),
        .O(v1_IBUF[27]));
  IBUF \v1_IBUF[28]_inst 
       (.I(v1[28]),
        .O(v1_IBUF[28]));
  IBUF \v1_IBUF[29]_inst 
       (.I(v1[29]),
        .O(v1_IBUF[29]));
  IBUF \v1_IBUF[2]_inst 
       (.I(v1[2]),
        .O(v1_IBUF[2]));
  IBUF \v1_IBUF[30]_inst 
       (.I(v1[30]),
        .O(v1_IBUF[30]));
  IBUF \v1_IBUF[31]_inst 
       (.I(v1[31]),
        .O(v1_IBUF[31]));
  IBUF \v1_IBUF[3]_inst 
       (.I(v1[3]),
        .O(v1_IBUF[3]));
  IBUF \v1_IBUF[4]_inst 
       (.I(v1[4]),
        .O(v1_IBUF[4]));
  IBUF \v1_IBUF[5]_inst 
       (.I(v1[5]),
        .O(v1_IBUF[5]));
  IBUF \v1_IBUF[6]_inst 
       (.I(v1[6]),
        .O(v1_IBUF[6]));
  IBUF \v1_IBUF[7]_inst 
       (.I(v1[7]),
        .O(v1_IBUF[7]));
  IBUF \v1_IBUF[8]_inst 
       (.I(v1[8]),
        .O(v1_IBUF[8]));
  IBUF \v1_IBUF[9]_inst 
       (.I(v1[9]),
        .O(v1_IBUF[9]));
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
