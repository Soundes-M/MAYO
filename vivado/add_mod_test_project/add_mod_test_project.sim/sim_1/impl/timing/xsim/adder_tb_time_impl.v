// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Mon Aug  1 20:29:32 2022
// Host        : debian running 64-bit Debian GNU/Linux 11 (bullseye)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/osm/Documents/SECT-MAYO/MAYO/vivado/add_mod_test_project/add_mod_test_project.sim/sim_1/impl/timing/xsim/adder_tb_time_impl.v
// Design      : adder
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "8a2d127a" *) 
(* NotValidForBitStream *)
module adder
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

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [31:0]o_out;
  wire [7:0]o_out0;
  wire [7:0]o_out00_out;
  wire [7:0]o_out03_out;
  wire [7:0]o_out06_out;
  wire \o_out[11]_i_2_n_0 ;
  wire \o_out[11]_i_3_n_0 ;
  wire \o_out[11]_i_4_n_0 ;
  wire \o_out[11]_i_5_n_0 ;
  wire \o_out[15]_i_2_n_0 ;
  wire \o_out[15]_i_3_n_0 ;
  wire \o_out[15]_i_4_n_0 ;
  wire \o_out[15]_i_5_n_0 ;
  wire \o_out[19]_i_2_n_0 ;
  wire \o_out[19]_i_3_n_0 ;
  wire \o_out[19]_i_4_n_0 ;
  wire \o_out[19]_i_5_n_0 ;
  wire \o_out[23]_i_2_n_0 ;
  wire \o_out[23]_i_3_n_0 ;
  wire \o_out[23]_i_4_n_0 ;
  wire \o_out[23]_i_5_n_0 ;
  wire \o_out[27]_i_2_n_0 ;
  wire \o_out[27]_i_3_n_0 ;
  wire \o_out[27]_i_4_n_0 ;
  wire \o_out[27]_i_5_n_0 ;
  wire \o_out[31]_i_3_n_0 ;
  wire \o_out[31]_i_4_n_0 ;
  wire \o_out[31]_i_5_n_0 ;
  wire \o_out[31]_i_6_n_0 ;
  wire \o_out[3]_i_2_n_0 ;
  wire \o_out[3]_i_3_n_0 ;
  wire \o_out[3]_i_4_n_0 ;
  wire \o_out[3]_i_5_n_0 ;
  wire \o_out[7]_i_2_n_0 ;
  wire \o_out[7]_i_3_n_0 ;
  wire \o_out[7]_i_4_n_0 ;
  wire \o_out[7]_i_5_n_0 ;
  wire [31:0]o_out_OBUF;
  wire \o_out_reg[11]_i_1_n_0 ;
  wire \o_out_reg[19]_i_1_n_0 ;
  wire \o_out_reg[27]_i_1_n_0 ;
  wire \o_out_reg[3]_i_1_n_0 ;
  wire p_0_in;
  wire rst;
  wire rst_IBUF;
  wire [31:0]v1;
  wire [31:0]v1_IBUF;
  wire [31:0]v2;
  wire [31:0]v2_IBUF;
  wire [2:0]\NLW_o_out_reg[11]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_o_out_reg[15]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_o_out_reg[19]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_o_out_reg[23]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_o_out_reg[27]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_o_out_reg[31]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_o_out_reg[3]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_o_out_reg[7]_i_1_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("adder_tb_time_impl.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_2 
       (.I0(v1_IBUF[11]),
        .I1(v2_IBUF[11]),
        .O(\o_out[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_3 
       (.I0(v1_IBUF[10]),
        .I1(v2_IBUF[10]),
        .O(\o_out[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_4 
       (.I0(v1_IBUF[9]),
        .I1(v2_IBUF[9]),
        .O(\o_out[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[11]_i_5 
       (.I0(v1_IBUF[8]),
        .I1(v2_IBUF[8]),
        .O(\o_out[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_2 
       (.I0(v1_IBUF[15]),
        .I1(v2_IBUF[15]),
        .O(\o_out[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_3 
       (.I0(v1_IBUF[14]),
        .I1(v2_IBUF[14]),
        .O(\o_out[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_4 
       (.I0(v1_IBUF[13]),
        .I1(v2_IBUF[13]),
        .O(\o_out[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[15]_i_5 
       (.I0(v1_IBUF[12]),
        .I1(v2_IBUF[12]),
        .O(\o_out[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[19]_i_2 
       (.I0(v1_IBUF[19]),
        .I1(v2_IBUF[19]),
        .O(\o_out[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[19]_i_3 
       (.I0(v1_IBUF[18]),
        .I1(v2_IBUF[18]),
        .O(\o_out[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[19]_i_4 
       (.I0(v1_IBUF[17]),
        .I1(v2_IBUF[17]),
        .O(\o_out[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[19]_i_5 
       (.I0(v1_IBUF[16]),
        .I1(v2_IBUF[16]),
        .O(\o_out[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[23]_i_2 
       (.I0(v1_IBUF[23]),
        .I1(v2_IBUF[23]),
        .O(\o_out[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[23]_i_3 
       (.I0(v1_IBUF[22]),
        .I1(v2_IBUF[22]),
        .O(\o_out[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[23]_i_4 
       (.I0(v1_IBUF[21]),
        .I1(v2_IBUF[21]),
        .O(\o_out[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[23]_i_5 
       (.I0(v1_IBUF[20]),
        .I1(v2_IBUF[20]),
        .O(\o_out[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[27]_i_2 
       (.I0(v1_IBUF[27]),
        .I1(v2_IBUF[27]),
        .O(\o_out[27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[27]_i_3 
       (.I0(v1_IBUF[26]),
        .I1(v2_IBUF[26]),
        .O(\o_out[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[27]_i_4 
       (.I0(v1_IBUF[25]),
        .I1(v2_IBUF[25]),
        .O(\o_out[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[27]_i_5 
       (.I0(v1_IBUF[24]),
        .I1(v2_IBUF[24]),
        .O(\o_out[27]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_out[31]_i_1 
       (.I0(rst_IBUF),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[31]_i_3 
       (.I0(v1_IBUF[31]),
        .I1(v2_IBUF[31]),
        .O(\o_out[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[31]_i_4 
       (.I0(v1_IBUF[30]),
        .I1(v2_IBUF[30]),
        .O(\o_out[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[31]_i_5 
       (.I0(v1_IBUF[29]),
        .I1(v2_IBUF[29]),
        .O(\o_out[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[31]_i_6 
       (.I0(v1_IBUF[28]),
        .I1(v2_IBUF[28]),
        .O(\o_out[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[3]_i_2 
       (.I0(v1_IBUF[3]),
        .I1(v2_IBUF[3]),
        .O(\o_out[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[3]_i_3 
       (.I0(v1_IBUF[2]),
        .I1(v2_IBUF[2]),
        .O(\o_out[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[3]_i_4 
       (.I0(v1_IBUF[1]),
        .I1(v2_IBUF[1]),
        .O(\o_out[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[3]_i_5 
       (.I0(v1_IBUF[0]),
        .I1(v2_IBUF[0]),
        .O(\o_out[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_2 
       (.I0(v1_IBUF[7]),
        .I1(v2_IBUF[7]),
        .O(\o_out[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_3 
       (.I0(v1_IBUF[6]),
        .I1(v2_IBUF[6]),
        .O(\o_out[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_4 
       (.I0(v1_IBUF[5]),
        .I1(v2_IBUF[5]),
        .O(\o_out[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_out[7]_i_5 
       (.I0(v1_IBUF[4]),
        .I1(v2_IBUF[4]),
        .O(\o_out[7]_i_5_n_0 ));
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
       (.I(o_out_OBUF[13]),
        .O(o_out[13]));
  OBUF \o_out_OBUF[14]_inst 
       (.I(o_out_OBUF[14]),
        .O(o_out[14]));
  OBUF \o_out_OBUF[15]_inst 
       (.I(o_out_OBUF[15]),
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
       (.I(o_out_OBUF[21]),
        .O(o_out[21]));
  OBUF \o_out_OBUF[22]_inst 
       (.I(o_out_OBUF[22]),
        .O(o_out[22]));
  OBUF \o_out_OBUF[23]_inst 
       (.I(o_out_OBUF[23]),
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
       (.I(o_out_OBUF[29]),
        .O(o_out[29]));
  OBUF \o_out_OBUF[2]_inst 
       (.I(o_out_OBUF[2]),
        .O(o_out[2]));
  OBUF \o_out_OBUF[30]_inst 
       (.I(o_out_OBUF[30]),
        .O(o_out[30]));
  OBUF \o_out_OBUF[31]_inst 
       (.I(o_out_OBUF[31]),
        .O(o_out[31]));
  OBUF \o_out_OBUF[3]_inst 
       (.I(o_out_OBUF[3]),
        .O(o_out[3]));
  OBUF \o_out_OBUF[4]_inst 
       (.I(o_out_OBUF[4]),
        .O(o_out[4]));
  OBUF \o_out_OBUF[5]_inst 
       (.I(o_out_OBUF[5]),
        .O(o_out[5]));
  OBUF \o_out_OBUF[6]_inst 
       (.I(o_out_OBUF[6]),
        .O(o_out[6]));
  OBUF \o_out_OBUF[7]_inst 
       (.I(o_out_OBUF[7]),
        .O(o_out[7]));
  OBUF \o_out_OBUF[8]_inst 
       (.I(o_out_OBUF[8]),
        .O(o_out[8]));
  OBUF \o_out_OBUF[9]_inst 
       (.I(o_out_OBUF[9]),
        .O(o_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \o_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(o_out0[0]),
        .Q(o_out_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_out_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(o_out00_out[2]),
        .Q(o_out_OBUF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_out_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(o_out00_out[3]),
        .Q(o_out_OBUF[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \o_out_reg[11]_i_1 
       (.CI(1'b0),
        .CO({\o_out_reg[11]_i_1_n_0 ,\NLW_o_out_reg[11]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(v1_IBUF[11:8]),
        .O(o_out00_out[3:0]),
        .S({\o_out[11]_i_2_n_0 ,\o_out[11]_i_3_n_0 ,\o_out[11]_i_4_n_0 ,\o_out[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \o_out_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(o_out00_out[4]),
        .Q(o_out_OBUF[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_out_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(o_out00_out[5]),
        .Q(o_out_OBUF[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_out_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(o_out00_out[6]),
        .Q(o_out_OBUF[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_out_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(o_out00_out[7]),
        .Q(o_out_OBUF[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \o_out_reg[15]_i_1 
       (.CI(\o_out_reg[11]_i_1_n_0 ),
        .CO(\NLW_o_out_reg[15]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,v1_IBUF[14:12]}),
        .O(o_out00_out[7:4]),
        .S({\o_out[15]_i_2_n_0 ,\o_out[15]_i_3_n_0 ,\o_out[15]_i_4_n_0 ,\o_out[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \o_out_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(o_out03_out[0]),
        .Q(o_out_OBUF[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_out_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(o_out03_out[1]),
        .Q(o_out_OBUF[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_out_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(o_out03_out[2]),
        .Q(o_out_OBUF[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_out_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(o_out03_out[3]),
        .Q(o_out_OBUF[19]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \o_out_reg[19]_i_1 
       (.CI(1'b0),
        .CO({\o_out_reg[19]_i_1_n_0 ,\NLW_o_out_reg[19]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(v1_IBUF[19:16]),
        .O(o_out03_out[3:0]),
        .S({\o_out[19]_i_2_n_0 ,\o_out[19]_i_3_n_0 ,\o_out[19]_i_4_n_0 ,\o_out[19]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \o_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(o_out0[1]),
        .Q(o_out_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_out_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(o_out03_out[4]),
        .Q(o_out_OBUF[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_out_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(o_out03_out[5]),
        .Q(o_out_OBUF[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_out_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(o_out03_out[6]),
        .Q(o_out_OBUF[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_out_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(o_out03_out[7]),
        .Q(o_out_OBUF[23]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \o_out_reg[23]_i_1 
       (.CI(\o_out_reg[19]_i_1_n_0 ),
        .CO(\NLW_o_out_reg[23]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,v1_IBUF[22:20]}),
        .O(o_out03_out[7:4]),
        .S({\o_out[23]_i_2_n_0 ,\o_out[23]_i_3_n_0 ,\o_out[23]_i_4_n_0 ,\o_out[23]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \o_out_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(o_out06_out[0]),
        .Q(o_out_OBUF[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_out_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(o_out06_out[1]),
        .Q(o_out_OBUF[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_out_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(o_out06_out[2]),
        .Q(o_out_OBUF[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_out_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(o_out06_out[3]),
        .Q(o_out_OBUF[27]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \o_out_reg[27]_i_1 
       (.CI(1'b0),
        .CO({\o_out_reg[27]_i_1_n_0 ,\NLW_o_out_reg[27]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(v1_IBUF[27:24]),
        .O(o_out06_out[3:0]),
        .S({\o_out[27]_i_2_n_0 ,\o_out[27]_i_3_n_0 ,\o_out[27]_i_4_n_0 ,\o_out[27]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \o_out_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(o_out06_out[4]),
        .Q(o_out_OBUF[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_out_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(o_out06_out[5]),
        .Q(o_out_OBUF[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(o_out0[2]),
        .Q(o_out_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_out_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(o_out06_out[6]),
        .Q(o_out_OBUF[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_out_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(o_out06_out[7]),
        .Q(o_out_OBUF[31]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \o_out_reg[31]_i_2 
       (.CI(\o_out_reg[27]_i_1_n_0 ),
        .CO(\NLW_o_out_reg[31]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,v1_IBUF[30:28]}),
        .O(o_out06_out[7:4]),
        .S({\o_out[31]_i_3_n_0 ,\o_out[31]_i_4_n_0 ,\o_out[31]_i_5_n_0 ,\o_out[31]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \o_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(o_out0[3]),
        .Q(o_out_OBUF[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \o_out_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\o_out_reg[3]_i_1_n_0 ,\NLW_o_out_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(v1_IBUF[3:0]),
        .O(o_out0[3:0]),
        .S({\o_out[3]_i_2_n_0 ,\o_out[3]_i_3_n_0 ,\o_out[3]_i_4_n_0 ,\o_out[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \o_out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(o_out0[4]),
        .Q(o_out_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(o_out0[5]),
        .Q(o_out_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(o_out0[6]),
        .Q(o_out_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(o_out0[7]),
        .Q(o_out_OBUF[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \o_out_reg[7]_i_1 
       (.CI(\o_out_reg[3]_i_1_n_0 ),
        .CO(\NLW_o_out_reg[7]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,v1_IBUF[6:4]}),
        .O(o_out0[7:4]),
        .S({\o_out[7]_i_2_n_0 ,\o_out[7]_i_3_n_0 ,\o_out[7]_i_4_n_0 ,\o_out[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \o_out_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(o_out00_out[0]),
        .Q(o_out_OBUF[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_out_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(o_out00_out[1]),
        .Q(o_out_OBUF[9]),
        .R(1'b0));
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
  IBUF \v2_IBUF[0]_inst 
       (.I(v2[0]),
        .O(v2_IBUF[0]));
  IBUF \v2_IBUF[10]_inst 
       (.I(v2[10]),
        .O(v2_IBUF[10]));
  IBUF \v2_IBUF[11]_inst 
       (.I(v2[11]),
        .O(v2_IBUF[11]));
  IBUF \v2_IBUF[12]_inst 
       (.I(v2[12]),
        .O(v2_IBUF[12]));
  IBUF \v2_IBUF[13]_inst 
       (.I(v2[13]),
        .O(v2_IBUF[13]));
  IBUF \v2_IBUF[14]_inst 
       (.I(v2[14]),
        .O(v2_IBUF[14]));
  IBUF \v2_IBUF[15]_inst 
       (.I(v2[15]),
        .O(v2_IBUF[15]));
  IBUF \v2_IBUF[16]_inst 
       (.I(v2[16]),
        .O(v2_IBUF[16]));
  IBUF \v2_IBUF[17]_inst 
       (.I(v2[17]),
        .O(v2_IBUF[17]));
  IBUF \v2_IBUF[18]_inst 
       (.I(v2[18]),
        .O(v2_IBUF[18]));
  IBUF \v2_IBUF[19]_inst 
       (.I(v2[19]),
        .O(v2_IBUF[19]));
  IBUF \v2_IBUF[1]_inst 
       (.I(v2[1]),
        .O(v2_IBUF[1]));
  IBUF \v2_IBUF[20]_inst 
       (.I(v2[20]),
        .O(v2_IBUF[20]));
  IBUF \v2_IBUF[21]_inst 
       (.I(v2[21]),
        .O(v2_IBUF[21]));
  IBUF \v2_IBUF[22]_inst 
       (.I(v2[22]),
        .O(v2_IBUF[22]));
  IBUF \v2_IBUF[23]_inst 
       (.I(v2[23]),
        .O(v2_IBUF[23]));
  IBUF \v2_IBUF[24]_inst 
       (.I(v2[24]),
        .O(v2_IBUF[24]));
  IBUF \v2_IBUF[25]_inst 
       (.I(v2[25]),
        .O(v2_IBUF[25]));
  IBUF \v2_IBUF[26]_inst 
       (.I(v2[26]),
        .O(v2_IBUF[26]));
  IBUF \v2_IBUF[27]_inst 
       (.I(v2[27]),
        .O(v2_IBUF[27]));
  IBUF \v2_IBUF[28]_inst 
       (.I(v2[28]),
        .O(v2_IBUF[28]));
  IBUF \v2_IBUF[29]_inst 
       (.I(v2[29]),
        .O(v2_IBUF[29]));
  IBUF \v2_IBUF[2]_inst 
       (.I(v2[2]),
        .O(v2_IBUF[2]));
  IBUF \v2_IBUF[30]_inst 
       (.I(v2[30]),
        .O(v2_IBUF[30]));
  IBUF \v2_IBUF[31]_inst 
       (.I(v2[31]),
        .O(v2_IBUF[31]));
  IBUF \v2_IBUF[3]_inst 
       (.I(v2[3]),
        .O(v2_IBUF[3]));
  IBUF \v2_IBUF[4]_inst 
       (.I(v2[4]),
        .O(v2_IBUF[4]));
  IBUF \v2_IBUF[5]_inst 
       (.I(v2[5]),
        .O(v2_IBUF[5]));
  IBUF \v2_IBUF[6]_inst 
       (.I(v2[6]),
        .O(v2_IBUF[6]));
  IBUF \v2_IBUF[7]_inst 
       (.I(v2[7]),
        .O(v2_IBUF[7]));
  IBUF \v2_IBUF[8]_inst 
       (.I(v2[8]),
        .O(v2_IBUF[8]));
  IBUF \v2_IBUF[9]_inst 
       (.I(v2[9]),
        .O(v2_IBUF[9]));
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
