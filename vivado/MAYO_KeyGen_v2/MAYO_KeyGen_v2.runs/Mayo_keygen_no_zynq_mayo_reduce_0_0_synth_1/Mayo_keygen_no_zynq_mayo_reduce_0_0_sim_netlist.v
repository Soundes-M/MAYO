// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Nov 24 23:40:11 2022
// Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Mayo_keygen_no_zynq_mayo_reduce_0_0_sim_netlist.v
// Design      : Mayo_keygen_no_zynq_mayo_reduce_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Mayo_keygen_no_zynq_mayo_reduce_0_0,mayo_reduce,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "mayo_reduce,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (i_clk,
    rst,
    i_enable,
    i_bram_sel,
    i_len,
    i_adr,
    i_dout0,
    o_addr0,
    o_din0,
    o_en0,
    o_rst0,
    o_we0,
    i_dout1,
    o_addr1,
    o_din1,
    o_en1,
    o_rst1,
    o_we1,
    o_done,
    o_control0,
    o_control1);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input i_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input i_enable;
  input i_bram_sel;
  input [31:0]i_len;
  input [31:0]i_adr;
  input [31:0]i_dout0;
  output [31:0]o_addr0;
  output [31:0]o_din0;
  output o_en0;
  output o_rst0;
  output [3:0]o_we0;
  input [31:0]i_dout1;
  output [31:0]o_addr1;
  output [31:0]o_din1;
  output o_en1;
  output o_rst1;
  output [3:0]o_we1;
  output o_done;
  output o_control0;
  output o_control1;

  wire [31:0]i_adr;
  wire i_bram_sel;
  wire i_clk;
  wire [31:0]i_dout0;
  wire [31:0]i_dout1;
  wire i_enable;
  wire [31:0]i_len;
  wire [31:0]o_addr0;
  wire [31:0]o_addr1;
  wire o_control0;
  wire o_control1;
  wire [31:0]o_din0;
  wire [31:0]o_din1;
  wire o_done;
  wire o_en0;
  wire o_en1;
  wire o_rst0;
  wire o_rst1;
  wire [0:0]\^o_we0 ;
  wire [3:3]\^o_we1 ;
  wire rst;

  assign o_we0[3] = \^o_we0 [0];
  assign o_we0[2] = \^o_we0 [0];
  assign o_we0[1] = \^o_we0 [0];
  assign o_we0[0] = \^o_we0 [0];
  assign o_we1[3] = \^o_we1 [3];
  assign o_we1[2] = \^o_we1 [3];
  assign o_we1[1] = \^o_we1 [3];
  assign o_we1[0] = \^o_we1 [3];
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mayo_reduce U0
       (.i_adr(i_adr),
        .i_bram_sel(i_bram_sel),
        .i_clk(i_clk),
        .i_dout0(i_dout0),
        .i_dout1(i_dout1),
        .i_enable(i_enable),
        .i_len(i_len[30:0]),
        .o_addr0(o_addr0),
        .o_addr1(o_addr1),
        .o_control0(o_control0),
        .o_control1(o_control1),
        .o_din0(o_din0),
        .o_din1(o_din1),
        .o_done(o_done),
        .o_en0(o_en0),
        .o_en1(o_en1),
        .o_rst0(o_rst0),
        .o_rst1(o_rst1),
        .o_we0(\^o_we0 ),
        .o_we1(\^o_we1 ),
        .rst(rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mayo_reduce
   (o_we0,
    o_rst0,
    o_en0,
    o_addr1,
    o_din1,
    o_en1,
    o_rst1,
    o_we1,
    o_addr0,
    o_din0,
    o_done,
    o_control1,
    o_control0,
    i_enable,
    rst,
    i_bram_sel,
    i_clk,
    i_len,
    i_adr,
    i_dout1,
    i_dout0);
  output [0:0]o_we0;
  output o_rst0;
  output o_en0;
  output [31:0]o_addr1;
  output [31:0]o_din1;
  output o_en1;
  output o_rst1;
  output [0:0]o_we1;
  output [31:0]o_addr0;
  output [31:0]o_din0;
  output o_done;
  output o_control1;
  output o_control0;
  input i_enable;
  input rst;
  input i_bram_sel;
  input i_clk;
  input [30:0]i_len;
  input [31:0]i_adr;
  input [31:0]i_dout1;
  input [31:0]i_dout0;

  wire \FSM_sequential_t_state_reg_n_0_[2] ;
  wire i___0_carry__0_i_1__0_n_0;
  wire i___0_carry__0_i_1__1_n_0;
  wire i___0_carry__0_i_1_n_0;
  wire i___0_carry__0_i_2__0_n_0;
  wire i___0_carry__0_i_2__1_n_0;
  wire i___0_carry__0_i_2_n_0;
  wire i___0_carry__0_i_3__0_n_0;
  wire i___0_carry__0_i_3__1_n_0;
  wire i___0_carry__0_i_3_n_0;
  wire i___0_carry_i_1__0_n_0;
  wire i___0_carry_i_1__1_n_0;
  wire i___0_carry_i_1_n_0;
  wire i___0_carry_i_2__0_n_0;
  wire i___0_carry_i_2__1_n_0;
  wire i___0_carry_i_2_n_0;
  wire i___0_carry_i_3__0_n_0;
  wire i___0_carry_i_3__1_n_0;
  wire i___0_carry_i_3_n_0;
  wire i___0_carry_i_4__0_n_0;
  wire i___0_carry_i_4__1_n_0;
  wire i___0_carry_i_4_n_0;
  wire i___15_carry__0_i_1__0_n_0;
  wire i___15_carry__0_i_1__1_n_0;
  wire i___15_carry__0_i_1_n_0;
  wire i___15_carry__0_i_2__0_n_0;
  wire i___15_carry__0_i_2__1_n_0;
  wire i___15_carry__0_i_2_n_0;
  wire i___15_carry_i_1__0_n_0;
  wire i___15_carry_i_1__1_n_0;
  wire i___15_carry_i_1_n_0;
  wire i___15_carry_i_2__0_n_0;
  wire i___15_carry_i_2__1_n_0;
  wire i___15_carry_i_2_n_0;
  wire i___15_carry_i_3__0_n_0;
  wire i___15_carry_i_3__1_n_0;
  wire i___15_carry_i_3_n_0;
  wire i___15_carry_i_4__0_n_0;
  wire i___15_carry_i_4__1_n_0;
  wire i___15_carry_i_4_n_0;
  wire [31:0]i_adr;
  wire i_bram_sel;
  wire i_clk;
  wire [31:0]i_dout0;
  wire [31:0]i_dout1;
  wire i_enable;
  wire [30:0]i_len;
  wire [30:1]in7;
  wire [31:0]in9;
  wire [31:0]o_addr0;
  wire [31:0]o_addr1;
  wire o_control0;
  wire o_control0_i_1_n_0;
  wire o_control0_i_2_n_0;
  wire o_control1;
  wire o_control1_i_1_n_0;
  wire [31:0]o_din0;
  wire [31:0]o_din1;
  wire o_done;
  wire o_done_i_1_n_0;
  wire o_en0;
  wire o_en1;
  wire o_rst0;
  wire o_rst1;
  wire [0:0]o_we0;
  wire [0:0]o_we1;
  wire [7:0]p_0_in;
  wire rst;
  wire \s_addr_reg_n_0_[0] ;
  wire \s_addr_reg_n_0_[10] ;
  wire \s_addr_reg_n_0_[11] ;
  wire \s_addr_reg_n_0_[12] ;
  wire \s_addr_reg_n_0_[13] ;
  wire \s_addr_reg_n_0_[14] ;
  wire \s_addr_reg_n_0_[15] ;
  wire \s_addr_reg_n_0_[16] ;
  wire \s_addr_reg_n_0_[17] ;
  wire \s_addr_reg_n_0_[18] ;
  wire \s_addr_reg_n_0_[19] ;
  wire \s_addr_reg_n_0_[1] ;
  wire \s_addr_reg_n_0_[20] ;
  wire \s_addr_reg_n_0_[21] ;
  wire \s_addr_reg_n_0_[22] ;
  wire \s_addr_reg_n_0_[23] ;
  wire \s_addr_reg_n_0_[24] ;
  wire \s_addr_reg_n_0_[25] ;
  wire \s_addr_reg_n_0_[26] ;
  wire \s_addr_reg_n_0_[27] ;
  wire \s_addr_reg_n_0_[28] ;
  wire \s_addr_reg_n_0_[29] ;
  wire \s_addr_reg_n_0_[2] ;
  wire \s_addr_reg_n_0_[30] ;
  wire \s_addr_reg_n_0_[31] ;
  wire \s_addr_reg_n_0_[3] ;
  wire \s_addr_reg_n_0_[4] ;
  wire \s_addr_reg_n_0_[5] ;
  wire \s_addr_reg_n_0_[6] ;
  wire \s_addr_reg_n_0_[7] ;
  wire \s_addr_reg_n_0_[8] ;
  wire \s_addr_reg_n_0_[9] ;
  wire [31:0]s_addrb;
  wire [31:0]s_addrb0_in;
  wire \s_addrb[31]_i_1_n_0 ;
  wire [28:0]s_data;
  wire [4:0]s_data0;
  wire s_data0__0_carry__0_i_1_n_0;
  wire s_data0__0_carry__0_i_2_n_0;
  wire s_data0__0_carry__0_i_3_n_0;
  wire s_data0__0_carry__0_n_3;
  wire s_data0__0_carry__0_n_6;
  wire s_data0__0_carry__0_n_7;
  wire s_data0__0_carry_i_1_n_0;
  wire s_data0__0_carry_i_2_n_0;
  wire s_data0__0_carry_i_3_n_0;
  wire s_data0__0_carry_i_4_n_0;
  wire s_data0__0_carry_n_0;
  wire s_data0__0_carry_n_1;
  wire s_data0__0_carry_n_2;
  wire s_data0__0_carry_n_3;
  wire s_data0__0_carry_n_4;
  wire s_data0__0_carry_n_5;
  wire s_data0__0_carry_n_6;
  wire s_data0__0_carry_n_7;
  wire s_data0__15_carry__0_i_1_n_0;
  wire s_data0__15_carry__0_i_2_n_0;
  wire s_data0__15_carry__0_n_3;
  wire s_data0__15_carry__0_n_6;
  wire s_data0__15_carry__0_n_7;
  wire s_data0__15_carry_i_1_n_0;
  wire s_data0__15_carry_i_2_n_0;
  wire s_data0__15_carry_i_3_n_0;
  wire s_data0__15_carry_i_4_n_0;
  wire s_data0__15_carry_n_0;
  wire s_data0__15_carry_n_1;
  wire s_data0__15_carry_n_2;
  wire s_data0__15_carry_n_3;
  wire s_data0__15_carry_n_4;
  wire s_data0__15_carry_n_5;
  wire s_data0__15_carry_n_6;
  wire s_data0__15_carry_n_7;
  wire \s_data0_inferred__0/i___0_carry__0_n_3 ;
  wire \s_data0_inferred__0/i___0_carry__0_n_6 ;
  wire \s_data0_inferred__0/i___0_carry__0_n_7 ;
  wire \s_data0_inferred__0/i___0_carry_n_0 ;
  wire \s_data0_inferred__0/i___0_carry_n_1 ;
  wire \s_data0_inferred__0/i___0_carry_n_2 ;
  wire \s_data0_inferred__0/i___0_carry_n_3 ;
  wire \s_data0_inferred__0/i___0_carry_n_4 ;
  wire \s_data0_inferred__0/i___0_carry_n_5 ;
  wire \s_data0_inferred__0/i___0_carry_n_6 ;
  wire \s_data0_inferred__0/i___0_carry_n_7 ;
  wire \s_data0_inferred__0/i___15_carry__0_n_3 ;
  wire \s_data0_inferred__0/i___15_carry__0_n_6 ;
  wire \s_data0_inferred__0/i___15_carry__0_n_7 ;
  wire \s_data0_inferred__0/i___15_carry_n_0 ;
  wire \s_data0_inferred__0/i___15_carry_n_1 ;
  wire \s_data0_inferred__0/i___15_carry_n_2 ;
  wire \s_data0_inferred__0/i___15_carry_n_3 ;
  wire \s_data0_inferred__0/i___15_carry_n_4 ;
  wire \s_data0_inferred__0/i___15_carry_n_5 ;
  wire \s_data0_inferred__0/i___15_carry_n_6 ;
  wire \s_data0_inferred__0/i___15_carry_n_7 ;
  wire \s_data0_inferred__1/i___0_carry__0_n_3 ;
  wire \s_data0_inferred__1/i___0_carry__0_n_6 ;
  wire \s_data0_inferred__1/i___0_carry__0_n_7 ;
  wire \s_data0_inferred__1/i___0_carry_n_0 ;
  wire \s_data0_inferred__1/i___0_carry_n_1 ;
  wire \s_data0_inferred__1/i___0_carry_n_2 ;
  wire \s_data0_inferred__1/i___0_carry_n_3 ;
  wire \s_data0_inferred__1/i___0_carry_n_4 ;
  wire \s_data0_inferred__1/i___0_carry_n_5 ;
  wire \s_data0_inferred__1/i___0_carry_n_6 ;
  wire \s_data0_inferred__1/i___0_carry_n_7 ;
  wire \s_data0_inferred__1/i___15_carry__0_n_3 ;
  wire \s_data0_inferred__1/i___15_carry__0_n_6 ;
  wire \s_data0_inferred__1/i___15_carry__0_n_7 ;
  wire \s_data0_inferred__1/i___15_carry_n_0 ;
  wire \s_data0_inferred__1/i___15_carry_n_1 ;
  wire \s_data0_inferred__1/i___15_carry_n_2 ;
  wire \s_data0_inferred__1/i___15_carry_n_3 ;
  wire \s_data0_inferred__1/i___15_carry_n_4 ;
  wire \s_data0_inferred__1/i___15_carry_n_5 ;
  wire \s_data0_inferred__1/i___15_carry_n_6 ;
  wire \s_data0_inferred__1/i___15_carry_n_7 ;
  wire \s_data0_inferred__2/i___0_carry__0_n_3 ;
  wire \s_data0_inferred__2/i___0_carry__0_n_6 ;
  wire \s_data0_inferred__2/i___0_carry__0_n_7 ;
  wire \s_data0_inferred__2/i___0_carry_n_0 ;
  wire \s_data0_inferred__2/i___0_carry_n_1 ;
  wire \s_data0_inferred__2/i___0_carry_n_2 ;
  wire \s_data0_inferred__2/i___0_carry_n_3 ;
  wire \s_data0_inferred__2/i___0_carry_n_4 ;
  wire \s_data0_inferred__2/i___0_carry_n_5 ;
  wire \s_data0_inferred__2/i___0_carry_n_6 ;
  wire \s_data0_inferred__2/i___0_carry_n_7 ;
  wire \s_data0_inferred__2/i___15_carry__0_n_3 ;
  wire \s_data0_inferred__2/i___15_carry__0_n_6 ;
  wire \s_data0_inferred__2/i___15_carry__0_n_7 ;
  wire \s_data0_inferred__2/i___15_carry_n_0 ;
  wire \s_data0_inferred__2/i___15_carry_n_1 ;
  wire \s_data0_inferred__2/i___15_carry_n_2 ;
  wire \s_data0_inferred__2/i___15_carry_n_3 ;
  wire \s_data0_inferred__2/i___15_carry_n_4 ;
  wire \s_data0_inferred__2/i___15_carry_n_5 ;
  wire \s_data0_inferred__2/i___15_carry_n_6 ;
  wire \s_data0_inferred__2/i___15_carry_n_7 ;
  wire \s_data[0]_i_2_n_0 ;
  wire \s_data[10]_i_2_n_0 ;
  wire \s_data[11]_i_2_n_0 ;
  wire \s_data[12]_i_2_n_0 ;
  wire \s_data[16]_i_2_n_0 ;
  wire \s_data[17]_i_2_n_0 ;
  wire \s_data[18]_i_2_n_0 ;
  wire \s_data[19]_i_2_n_0 ;
  wire \s_data[1]_i_2_n_0 ;
  wire \s_data[20]_i_2_n_0 ;
  wire \s_data[28]_i_1_n_0 ;
  wire \s_data[2]_i_2_n_0 ;
  wire \s_data[31]_i_1_n_0 ;
  wire \s_data[3]_i_2_n_0 ;
  wire \s_data[4]_i_2_n_0 ;
  wire \s_data[8]_i_2_n_0 ;
  wire \s_data[9]_i_2_n_0 ;
  wire \s_data_reg_n_0_[0] ;
  wire \s_data_reg_n_0_[16] ;
  wire \s_data_reg_n_0_[17] ;
  wire \s_data_reg_n_0_[18] ;
  wire \s_data_reg_n_0_[19] ;
  wire \s_data_reg_n_0_[1] ;
  wire \s_data_reg_n_0_[20] ;
  wire \s_data_reg_n_0_[21] ;
  wire \s_data_reg_n_0_[22] ;
  wire \s_data_reg_n_0_[23] ;
  wire \s_data_reg_n_0_[24] ;
  wire \s_data_reg_n_0_[25] ;
  wire \s_data_reg_n_0_[26] ;
  wire \s_data_reg_n_0_[27] ;
  wire \s_data_reg_n_0_[28] ;
  wire \s_data_reg_n_0_[29] ;
  wire \s_data_reg_n_0_[2] ;
  wire \s_data_reg_n_0_[30] ;
  wire \s_data_reg_n_0_[31] ;
  wire \s_data_reg_n_0_[3] ;
  wire \s_data_reg_n_0_[4] ;
  wire \s_data_reg_n_0_[5] ;
  wire \s_data_reg_n_0_[6] ;
  wire \s_data_reg_n_0_[7] ;
  wire [31:0]s_dinb;
  wire \s_dinb[0]_i_1_n_0 ;
  wire \s_dinb[10]_i_1_n_0 ;
  wire \s_dinb[11]_i_1_n_0 ;
  wire \s_dinb[12]_i_1_n_0 ;
  wire \s_dinb[13]_i_1_n_0 ;
  wire \s_dinb[14]_i_1_n_0 ;
  wire \s_dinb[15]_i_1_n_0 ;
  wire \s_dinb[16]_i_1_n_0 ;
  wire \s_dinb[17]_i_1_n_0 ;
  wire \s_dinb[18]_i_1_n_0 ;
  wire \s_dinb[19]_i_1_n_0 ;
  wire \s_dinb[1]_i_1_n_0 ;
  wire \s_dinb[20]_i_1_n_0 ;
  wire \s_dinb[21]_i_1_n_0 ;
  wire \s_dinb[22]_i_1_n_0 ;
  wire \s_dinb[23]_i_1_n_0 ;
  wire \s_dinb[24]_i_1_n_0 ;
  wire \s_dinb[25]_i_1_n_0 ;
  wire \s_dinb[26]_i_1_n_0 ;
  wire \s_dinb[27]_i_1_n_0 ;
  wire \s_dinb[28]_i_1_n_0 ;
  wire \s_dinb[29]_i_1_n_0 ;
  wire \s_dinb[2]_i_1_n_0 ;
  wire \s_dinb[30]_i_1_n_0 ;
  wire \s_dinb[31]_i_1_n_0 ;
  wire \s_dinb[31]_i_2_n_0 ;
  wire \s_dinb[3]_i_1_n_0 ;
  wire \s_dinb[4]_i_1_n_0 ;
  wire \s_dinb[5]_i_1_n_0 ;
  wire \s_dinb[6]_i_1_n_0 ;
  wire \s_dinb[7]_i_1_n_0 ;
  wire \s_dinb[8]_i_1_n_0 ;
  wire \s_dinb[9]_i_1_n_0 ;
  wire s_enb;
  wire s_enb_i_1_n_0;
  wire s_enb_reg_n_0;
  wire [30:0]s_index;
  wire s_index0_carry__0_n_0;
  wire s_index0_carry__0_n_1;
  wire s_index0_carry__0_n_2;
  wire s_index0_carry__0_n_3;
  wire s_index0_carry__1_n_0;
  wire s_index0_carry__1_n_1;
  wire s_index0_carry__1_n_2;
  wire s_index0_carry__1_n_3;
  wire s_index0_carry__2_n_0;
  wire s_index0_carry__2_n_1;
  wire s_index0_carry__2_n_2;
  wire s_index0_carry__2_n_3;
  wire s_index0_carry__3_n_0;
  wire s_index0_carry__3_n_1;
  wire s_index0_carry__3_n_2;
  wire s_index0_carry__3_n_3;
  wire s_index0_carry__4_n_0;
  wire s_index0_carry__4_n_1;
  wire s_index0_carry__4_n_2;
  wire s_index0_carry__4_n_3;
  wire s_index0_carry__5_n_0;
  wire s_index0_carry__5_n_1;
  wire s_index0_carry__5_n_2;
  wire s_index0_carry__5_n_3;
  wire s_index0_carry__6_n_3;
  wire s_index0_carry_i_1_n_0;
  wire s_index0_carry_n_0;
  wire s_index0_carry_n_1;
  wire s_index0_carry_n_2;
  wire s_index0_carry_n_3;
  wire \s_index[30]_i_1_n_0 ;
  wire \s_index_reg_n_0_[0] ;
  wire \s_index_reg_n_0_[10] ;
  wire \s_index_reg_n_0_[11] ;
  wire \s_index_reg_n_0_[12] ;
  wire \s_index_reg_n_0_[13] ;
  wire \s_index_reg_n_0_[14] ;
  wire \s_index_reg_n_0_[15] ;
  wire \s_index_reg_n_0_[16] ;
  wire \s_index_reg_n_0_[17] ;
  wire \s_index_reg_n_0_[18] ;
  wire \s_index_reg_n_0_[19] ;
  wire \s_index_reg_n_0_[1] ;
  wire \s_index_reg_n_0_[20] ;
  wire \s_index_reg_n_0_[21] ;
  wire \s_index_reg_n_0_[22] ;
  wire \s_index_reg_n_0_[23] ;
  wire \s_index_reg_n_0_[24] ;
  wire \s_index_reg_n_0_[25] ;
  wire \s_index_reg_n_0_[26] ;
  wire \s_index_reg_n_0_[27] ;
  wire \s_index_reg_n_0_[28] ;
  wire \s_index_reg_n_0_[29] ;
  wire \s_index_reg_n_0_[2] ;
  wire \s_index_reg_n_0_[30] ;
  wire \s_index_reg_n_0_[3] ;
  wire \s_index_reg_n_0_[4] ;
  wire \s_index_reg_n_0_[5] ;
  wire \s_index_reg_n_0_[6] ;
  wire \s_index_reg_n_0_[7] ;
  wire \s_index_reg_n_0_[8] ;
  wire \s_index_reg_n_0_[9] ;
  wire [30:0]s_max_len;
  wire \s_max_len[30]_i_1_n_0 ;
  wire s_rstb_i_1_n_0;
  wire s_rstb_reg_n_0;
  wire \s_web[3]_i_1_n_0 ;
  wire \s_web_reg_n_0_[3] ;
  wire [1:0]t_state;
  wire t_state1_carry__0_i_1_n_0;
  wire t_state1_carry__0_i_2_n_0;
  wire t_state1_carry__0_i_3_n_0;
  wire t_state1_carry__0_i_4_n_0;
  wire t_state1_carry__0_i_5_n_0;
  wire t_state1_carry__0_i_6_n_0;
  wire t_state1_carry__0_i_7_n_0;
  wire t_state1_carry__0_i_8_n_0;
  wire t_state1_carry__0_n_0;
  wire t_state1_carry__0_n_1;
  wire t_state1_carry__0_n_2;
  wire t_state1_carry__0_n_3;
  wire t_state1_carry__1_i_1_n_0;
  wire t_state1_carry__1_i_2_n_0;
  wire t_state1_carry__1_i_3_n_0;
  wire t_state1_carry__1_i_4_n_0;
  wire t_state1_carry__1_i_5_n_0;
  wire t_state1_carry__1_i_6_n_0;
  wire t_state1_carry__1_i_7_n_0;
  wire t_state1_carry__1_i_8_n_0;
  wire t_state1_carry__1_n_0;
  wire t_state1_carry__1_n_1;
  wire t_state1_carry__1_n_2;
  wire t_state1_carry__1_n_3;
  wire t_state1_carry__2_i_1_n_0;
  wire t_state1_carry__2_i_2_n_0;
  wire t_state1_carry__2_i_3_n_0;
  wire t_state1_carry__2_i_4_n_0;
  wire t_state1_carry__2_i_5_n_0;
  wire t_state1_carry__2_i_6_n_0;
  wire t_state1_carry__2_i_7_n_0;
  wire t_state1_carry__2_i_8_n_0;
  wire t_state1_carry__2_n_0;
  wire t_state1_carry__2_n_1;
  wire t_state1_carry__2_n_2;
  wire t_state1_carry__2_n_3;
  wire t_state1_carry_i_1_n_0;
  wire t_state1_carry_i_2_n_0;
  wire t_state1_carry_i_3_n_0;
  wire t_state1_carry_i_4_n_0;
  wire t_state1_carry_i_5_n_0;
  wire t_state1_carry_i_6_n_0;
  wire t_state1_carry_i_7_n_0;
  wire t_state1_carry_i_8_n_0;
  wire t_state1_carry_n_0;
  wire t_state1_carry_n_1;
  wire t_state1_carry_n_2;
  wire t_state1_carry_n_3;
  wire [30:1]t_state2;
  wire t_state2_carry__0_i_1_n_0;
  wire t_state2_carry__0_i_2_n_0;
  wire t_state2_carry__0_i_3_n_0;
  wire t_state2_carry__0_i_4_n_0;
  wire t_state2_carry__0_n_0;
  wire t_state2_carry__0_n_1;
  wire t_state2_carry__0_n_2;
  wire t_state2_carry__0_n_3;
  wire t_state2_carry__1_i_1_n_0;
  wire t_state2_carry__1_i_2_n_0;
  wire t_state2_carry__1_i_3_n_0;
  wire t_state2_carry__1_i_4_n_0;
  wire t_state2_carry__1_n_0;
  wire t_state2_carry__1_n_1;
  wire t_state2_carry__1_n_2;
  wire t_state2_carry__1_n_3;
  wire t_state2_carry__2_i_1_n_0;
  wire t_state2_carry__2_i_2_n_0;
  wire t_state2_carry__2_i_3_n_0;
  wire t_state2_carry__2_i_4_n_0;
  wire t_state2_carry__2_n_0;
  wire t_state2_carry__2_n_1;
  wire t_state2_carry__2_n_2;
  wire t_state2_carry__2_n_3;
  wire t_state2_carry__3_i_1_n_0;
  wire t_state2_carry__3_i_2_n_0;
  wire t_state2_carry__3_i_3_n_0;
  wire t_state2_carry__3_i_4_n_0;
  wire t_state2_carry__3_n_0;
  wire t_state2_carry__3_n_1;
  wire t_state2_carry__3_n_2;
  wire t_state2_carry__3_n_3;
  wire t_state2_carry__4_i_1_n_0;
  wire t_state2_carry__4_i_2_n_0;
  wire t_state2_carry__4_i_3_n_0;
  wire t_state2_carry__4_i_4_n_0;
  wire t_state2_carry__4_n_0;
  wire t_state2_carry__4_n_1;
  wire t_state2_carry__4_n_2;
  wire t_state2_carry__4_n_3;
  wire t_state2_carry__5_i_1_n_0;
  wire t_state2_carry__5_i_2_n_0;
  wire t_state2_carry__5_i_3_n_0;
  wire t_state2_carry__5_i_4_n_0;
  wire t_state2_carry__5_n_0;
  wire t_state2_carry__5_n_1;
  wire t_state2_carry__5_n_2;
  wire t_state2_carry__5_n_3;
  wire t_state2_carry__6_i_1_n_0;
  wire t_state2_carry__6_i_2_n_0;
  wire t_state2_carry__6_n_1;
  wire t_state2_carry__6_n_3;
  wire t_state2_carry_i_1_n_0;
  wire t_state2_carry_i_2_n_0;
  wire t_state2_carry_i_3_n_0;
  wire t_state2_carry_n_0;
  wire t_state2_carry_n_1;
  wire t_state2_carry_n_2;
  wire t_state2_carry_n_3;
  wire [2:0]t_state__0;
  wire [3:1]NLW_s_data0__0_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_s_data0__0_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_s_data0__15_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_s_data0__15_carry__0_O_UNCONNECTED;
  wire [3:1]\NLW_s_data0_inferred__0/i___0_carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_data0_inferred__0/i___0_carry__0_O_UNCONNECTED ;
  wire [3:1]\NLW_s_data0_inferred__0/i___15_carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_data0_inferred__0/i___15_carry__0_O_UNCONNECTED ;
  wire [3:1]\NLW_s_data0_inferred__1/i___0_carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_data0_inferred__1/i___0_carry__0_O_UNCONNECTED ;
  wire [3:1]\NLW_s_data0_inferred__1/i___15_carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_data0_inferred__1/i___15_carry__0_O_UNCONNECTED ;
  wire [3:1]\NLW_s_data0_inferred__2/i___0_carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_data0_inferred__2/i___0_carry__0_O_UNCONNECTED ;
  wire [3:1]\NLW_s_data0_inferred__2/i___15_carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_data0_inferred__2/i___15_carry__0_O_UNCONNECTED ;
  wire [3:1]NLW_s_index0_carry__6_CO_UNCONNECTED;
  wire [3:2]NLW_s_index0_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_t_state1_carry_O_UNCONNECTED;
  wire [3:0]NLW_t_state1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_t_state1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_t_state1_carry__2_O_UNCONNECTED;
  wire [3:1]NLW_t_state2_carry__6_CO_UNCONNECTED;
  wire [3:2]NLW_t_state2_carry__6_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00500FFC)) 
    \FSM_sequential_t_state[0]_i_1 
       (.I0(t_state1_carry__2_n_0),
        .I1(i_enable),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I3(t_state[1]),
        .I4(t_state[0]),
        .O(t_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \FSM_sequential_t_state[1]_i_1 
       (.I0(t_state[0]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(t_state[1]),
        .O(s_enb));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \FSM_sequential_t_state[2]_i_1 
       (.I0(t_state[0]),
        .I1(t_state[1]),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .O(t_state__0[2]));
  (* FSM_ENCODED_STATES = "read3:010,read2:011,write1:100,write2:101,idle:000,read1:001,read4:111,done:110" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_t_state_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(t_state__0[0]),
        .Q(t_state[0]),
        .R(rst));
  (* FSM_ENCODED_STATES = "read3:010,read2:011,write1:100,write2:101,idle:000,read1:001,read4:111,done:110" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_t_state_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(s_enb),
        .Q(t_state[1]),
        .R(rst));
  (* FSM_ENCODED_STATES = "read3:010,read2:011,write1:100,write2:101,idle:000,read1:001,read4:111,done:110" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_t_state_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(t_state__0[2]),
        .Q(\FSM_sequential_t_state_reg_n_0_[2] ),
        .R(rst));
  LUT3 #(
    .INIT(8'hE8)) 
    i___0_carry__0_i_1
       (.I0(p_0_in[7]),
        .I1(p_0_in[6]),
        .I2(p_0_in[5]),
        .O(i___0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    i___0_carry__0_i_1__0
       (.I0(\s_data_reg_n_0_[23] ),
        .I1(\s_data_reg_n_0_[22] ),
        .I2(\s_data_reg_n_0_[21] ),
        .O(i___0_carry__0_i_1__0_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    i___0_carry__0_i_1__1
       (.I0(\s_data_reg_n_0_[31] ),
        .I1(\s_data_reg_n_0_[30] ),
        .I2(\s_data_reg_n_0_[29] ),
        .O(i___0_carry__0_i_1__1_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    i___0_carry__0_i_2
       (.I0(p_0_in[5]),
        .I1(p_0_in[7]),
        .I2(p_0_in[6]),
        .O(i___0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    i___0_carry__0_i_2__0
       (.I0(\s_data_reg_n_0_[21] ),
        .I1(\s_data_reg_n_0_[23] ),
        .I2(\s_data_reg_n_0_[22] ),
        .O(i___0_carry__0_i_2__0_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    i___0_carry__0_i_2__1
       (.I0(\s_data_reg_n_0_[29] ),
        .I1(\s_data_reg_n_0_[31] ),
        .I2(\s_data_reg_n_0_[30] ),
        .O(i___0_carry__0_i_2__1_n_0));
  LUT3 #(
    .INIT(8'h7E)) 
    i___0_carry__0_i_3
       (.I0(p_0_in[6]),
        .I1(p_0_in[7]),
        .I2(p_0_in[5]),
        .O(i___0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h7E)) 
    i___0_carry__0_i_3__0
       (.I0(\s_data_reg_n_0_[22] ),
        .I1(\s_data_reg_n_0_[23] ),
        .I2(\s_data_reg_n_0_[21] ),
        .O(i___0_carry__0_i_3__0_n_0));
  LUT3 #(
    .INIT(8'h7E)) 
    i___0_carry__0_i_3__1
       (.I0(\s_data_reg_n_0_[30] ),
        .I1(\s_data_reg_n_0_[31] ),
        .I2(\s_data_reg_n_0_[29] ),
        .O(i___0_carry__0_i_3__1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___0_carry_i_1
       (.I0(\s_data_reg_n_0_[30] ),
        .I1(\s_data_reg_n_0_[31] ),
        .I2(\s_data_reg_n_0_[29] ),
        .O(i___0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___0_carry_i_1__0
       (.I0(\s_data_reg_n_0_[22] ),
        .I1(\s_data_reg_n_0_[23] ),
        .I2(\s_data_reg_n_0_[21] ),
        .O(i___0_carry_i_1__0_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___0_carry_i_1__1
       (.I0(p_0_in[6]),
        .I1(p_0_in[7]),
        .I2(p_0_in[5]),
        .O(i___0_carry_i_1__1_n_0));
  LUT3 #(
    .INIT(8'h56)) 
    i___0_carry_i_2
       (.I0(p_0_in[5]),
        .I1(p_0_in[6]),
        .I2(p_0_in[7]),
        .O(i___0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h56)) 
    i___0_carry_i_2__0
       (.I0(\s_data_reg_n_0_[21] ),
        .I1(\s_data_reg_n_0_[22] ),
        .I2(\s_data_reg_n_0_[23] ),
        .O(i___0_carry_i_2__0_n_0));
  LUT3 #(
    .INIT(8'h56)) 
    i___0_carry_i_2__1
       (.I0(\s_data_reg_n_0_[29] ),
        .I1(\s_data_reg_n_0_[30] ),
        .I2(\s_data_reg_n_0_[31] ),
        .O(i___0_carry_i_2__1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___0_carry_i_3
       (.I0(p_0_in[6]),
        .I1(p_0_in[7]),
        .I2(p_0_in[5]),
        .O(i___0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___0_carry_i_3__0
       (.I0(\s_data_reg_n_0_[22] ),
        .I1(\s_data_reg_n_0_[23] ),
        .I2(\s_data_reg_n_0_[21] ),
        .O(i___0_carry_i_3__0_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___0_carry_i_3__1
       (.I0(\s_data_reg_n_0_[30] ),
        .I1(\s_data_reg_n_0_[31] ),
        .I2(\s_data_reg_n_0_[29] ),
        .O(i___0_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___0_carry_i_4
       (.I0(p_0_in[5]),
        .I1(p_0_in[6]),
        .O(i___0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___0_carry_i_4__0
       (.I0(\s_data_reg_n_0_[21] ),
        .I1(\s_data_reg_n_0_[22] ),
        .O(i___0_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___0_carry_i_4__1
       (.I0(\s_data_reg_n_0_[29] ),
        .I1(\s_data_reg_n_0_[30] ),
        .O(i___0_carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___15_carry__0_i_1
       (.I0(p_0_in[5]),
        .I1(\s_data0_inferred__0/i___0_carry__0_n_6 ),
        .O(i___15_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___15_carry__0_i_1__0
       (.I0(\s_data_reg_n_0_[21] ),
        .I1(\s_data0_inferred__1/i___0_carry__0_n_6 ),
        .O(i___15_carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___15_carry__0_i_1__1
       (.I0(\s_data_reg_n_0_[29] ),
        .I1(\s_data0_inferred__2/i___0_carry__0_n_6 ),
        .O(i___15_carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___15_carry__0_i_2
       (.I0(p_0_in[4]),
        .I1(\s_data0_inferred__0/i___0_carry__0_n_7 ),
        .O(i___15_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___15_carry__0_i_2__0
       (.I0(\s_data_reg_n_0_[20] ),
        .I1(\s_data0_inferred__1/i___0_carry__0_n_7 ),
        .O(i___15_carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___15_carry__0_i_2__1
       (.I0(\s_data_reg_n_0_[28] ),
        .I1(\s_data0_inferred__2/i___0_carry__0_n_7 ),
        .O(i___15_carry__0_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___15_carry_i_1
       (.I0(p_0_in[3]),
        .I1(\s_data0_inferred__0/i___0_carry_n_4 ),
        .O(i___15_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___15_carry_i_1__0
       (.I0(\s_data_reg_n_0_[19] ),
        .I1(\s_data0_inferred__1/i___0_carry_n_4 ),
        .O(i___15_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___15_carry_i_1__1
       (.I0(\s_data_reg_n_0_[27] ),
        .I1(\s_data0_inferred__2/i___0_carry_n_4 ),
        .O(i___15_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___15_carry_i_2
       (.I0(p_0_in[2]),
        .I1(\s_data0_inferred__0/i___0_carry_n_5 ),
        .O(i___15_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___15_carry_i_2__0
       (.I0(\s_data_reg_n_0_[18] ),
        .I1(\s_data0_inferred__1/i___0_carry_n_5 ),
        .O(i___15_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___15_carry_i_2__1
       (.I0(\s_data_reg_n_0_[26] ),
        .I1(\s_data0_inferred__2/i___0_carry_n_5 ),
        .O(i___15_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___15_carry_i_3
       (.I0(p_0_in[1]),
        .I1(\s_data0_inferred__0/i___0_carry_n_6 ),
        .O(i___15_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___15_carry_i_3__0
       (.I0(\s_data_reg_n_0_[17] ),
        .I1(\s_data0_inferred__1/i___0_carry_n_6 ),
        .O(i___15_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___15_carry_i_3__1
       (.I0(\s_data_reg_n_0_[25] ),
        .I1(\s_data0_inferred__2/i___0_carry_n_6 ),
        .O(i___15_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___15_carry_i_4
       (.I0(p_0_in[0]),
        .I1(\s_data0_inferred__0/i___0_carry_n_7 ),
        .O(i___15_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___15_carry_i_4__0
       (.I0(\s_data_reg_n_0_[16] ),
        .I1(\s_data0_inferred__1/i___0_carry_n_7 ),
        .O(i___15_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___15_carry_i_4__1
       (.I0(\s_data_reg_n_0_[24] ),
        .I1(\s_data0_inferred__2/i___0_carry_n_7 ),
        .O(i___15_carry_i_4__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_addr0[0]_INST_0 
       (.I0(s_addrb[0]),
        .I1(i_bram_sel),
        .O(o_addr0[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_addr0[10]_INST_0 
       (.I0(s_addrb[10]),
        .I1(i_bram_sel),
        .O(o_addr0[10]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_addr0[11]_INST_0 
       (.I0(s_addrb[11]),
        .I1(i_bram_sel),
        .O(o_addr0[11]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_addr0[12]_INST_0 
       (.I0(s_addrb[12]),
        .I1(i_bram_sel),
        .O(o_addr0[12]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_addr0[13]_INST_0 
       (.I0(s_addrb[13]),
        .I1(i_bram_sel),
        .O(o_addr0[13]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_addr0[14]_INST_0 
       (.I0(s_addrb[14]),
        .I1(i_bram_sel),
        .O(o_addr0[14]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_addr0[15]_INST_0 
       (.I0(s_addrb[15]),
        .I1(i_bram_sel),
        .O(o_addr0[15]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_addr0[16]_INST_0 
       (.I0(s_addrb[16]),
        .I1(i_bram_sel),
        .O(o_addr0[16]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_addr0[17]_INST_0 
       (.I0(s_addrb[17]),
        .I1(i_bram_sel),
        .O(o_addr0[17]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_addr0[18]_INST_0 
       (.I0(s_addrb[18]),
        .I1(i_bram_sel),
        .O(o_addr0[18]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_addr0[19]_INST_0 
       (.I0(s_addrb[19]),
        .I1(i_bram_sel),
        .O(o_addr0[19]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_addr0[1]_INST_0 
       (.I0(s_addrb[1]),
        .I1(i_bram_sel),
        .O(o_addr0[1]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_addr0[20]_INST_0 
       (.I0(s_addrb[20]),
        .I1(i_bram_sel),
        .O(o_addr0[20]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_addr0[21]_INST_0 
       (.I0(s_addrb[21]),
        .I1(i_bram_sel),
        .O(o_addr0[21]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_addr0[22]_INST_0 
       (.I0(s_addrb[22]),
        .I1(i_bram_sel),
        .O(o_addr0[22]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_addr0[23]_INST_0 
       (.I0(s_addrb[23]),
        .I1(i_bram_sel),
        .O(o_addr0[23]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_addr0[24]_INST_0 
       (.I0(s_addrb[24]),
        .I1(i_bram_sel),
        .O(o_addr0[24]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_addr0[25]_INST_0 
       (.I0(s_addrb[25]),
        .I1(i_bram_sel),
        .O(o_addr0[25]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_addr0[26]_INST_0 
       (.I0(s_addrb[26]),
        .I1(i_bram_sel),
        .O(o_addr0[26]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_addr0[27]_INST_0 
       (.I0(s_addrb[27]),
        .I1(i_bram_sel),
        .O(o_addr0[27]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_addr0[28]_INST_0 
       (.I0(s_addrb[28]),
        .I1(i_bram_sel),
        .O(o_addr0[28]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_addr0[29]_INST_0 
       (.I0(s_addrb[29]),
        .I1(i_bram_sel),
        .O(o_addr0[29]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_addr0[2]_INST_0 
       (.I0(s_addrb[2]),
        .I1(i_bram_sel),
        .O(o_addr0[2]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_addr0[30]_INST_0 
       (.I0(s_addrb[30]),
        .I1(i_bram_sel),
        .O(o_addr0[30]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_addr0[31]_INST_0 
       (.I0(s_addrb[31]),
        .I1(i_bram_sel),
        .O(o_addr0[31]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_addr0[3]_INST_0 
       (.I0(s_addrb[3]),
        .I1(i_bram_sel),
        .O(o_addr0[3]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_addr0[4]_INST_0 
       (.I0(s_addrb[4]),
        .I1(i_bram_sel),
        .O(o_addr0[4]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_addr0[5]_INST_0 
       (.I0(s_addrb[5]),
        .I1(i_bram_sel),
        .O(o_addr0[5]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_addr0[6]_INST_0 
       (.I0(s_addrb[6]),
        .I1(i_bram_sel),
        .O(o_addr0[6]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_addr0[7]_INST_0 
       (.I0(s_addrb[7]),
        .I1(i_bram_sel),
        .O(o_addr0[7]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_addr0[8]_INST_0 
       (.I0(s_addrb[8]),
        .I1(i_bram_sel),
        .O(o_addr0[8]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_addr0[9]_INST_0 
       (.I0(s_addrb[9]),
        .I1(i_bram_sel),
        .O(o_addr0[9]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_addr1[0]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_addrb[0]),
        .O(o_addr1[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_addr1[10]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_addrb[10]),
        .O(o_addr1[10]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_addr1[11]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_addrb[11]),
        .O(o_addr1[11]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_addr1[12]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_addrb[12]),
        .O(o_addr1[12]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_addr1[13]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_addrb[13]),
        .O(o_addr1[13]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_addr1[14]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_addrb[14]),
        .O(o_addr1[14]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_addr1[15]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_addrb[15]),
        .O(o_addr1[15]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_addr1[16]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_addrb[16]),
        .O(o_addr1[16]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_addr1[17]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_addrb[17]),
        .O(o_addr1[17]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_addr1[18]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_addrb[18]),
        .O(o_addr1[18]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_addr1[19]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_addrb[19]),
        .O(o_addr1[19]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_addr1[1]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_addrb[1]),
        .O(o_addr1[1]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_addr1[20]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_addrb[20]),
        .O(o_addr1[20]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_addr1[21]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_addrb[21]),
        .O(o_addr1[21]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_addr1[22]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_addrb[22]),
        .O(o_addr1[22]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_addr1[23]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_addrb[23]),
        .O(o_addr1[23]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_addr1[24]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_addrb[24]),
        .O(o_addr1[24]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_addr1[25]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_addrb[25]),
        .O(o_addr1[25]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_addr1[26]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_addrb[26]),
        .O(o_addr1[26]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_addr1[27]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_addrb[27]),
        .O(o_addr1[27]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_addr1[28]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_addrb[28]),
        .O(o_addr1[28]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_addr1[29]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_addrb[29]),
        .O(o_addr1[29]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_addr1[2]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_addrb[2]),
        .O(o_addr1[2]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_addr1[30]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_addrb[30]),
        .O(o_addr1[30]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_addr1[31]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_addrb[31]),
        .O(o_addr1[31]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_addr1[3]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_addrb[3]),
        .O(o_addr1[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_addr1[4]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_addrb[4]),
        .O(o_addr1[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_addr1[5]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_addrb[5]),
        .O(o_addr1[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_addr1[6]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_addrb[6]),
        .O(o_addr1[6]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_addr1[7]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_addrb[7]),
        .O(o_addr1[7]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_addr1[8]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_addrb[8]),
        .O(o_addr1[8]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_addr1[9]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_addrb[9]),
        .O(o_addr1[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    o_control0_i_1
       (.I0(i_enable),
        .I1(i_bram_sel),
        .I2(o_control0_i_2_n_0),
        .I3(o_control0),
        .O(o_control0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    o_control0_i_2
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(t_state[0]),
        .I2(t_state[1]),
        .I3(rst),
        .O(o_control0_i_2_n_0));
  FDRE o_control0_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_control0_i_1_n_0),
        .Q(o_control0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    o_control1_i_1
       (.I0(i_enable),
        .I1(i_bram_sel),
        .I2(o_control0_i_2_n_0),
        .I3(o_control1),
        .O(o_control1_i_1_n_0));
  FDRE o_control1_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_control1_i_1_n_0),
        .Q(o_control1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_din0[0]_INST_0 
       (.I0(s_dinb[0]),
        .I1(i_bram_sel),
        .O(o_din0[0]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_din0[10]_INST_0 
       (.I0(s_dinb[10]),
        .I1(i_bram_sel),
        .O(o_din0[10]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_din0[11]_INST_0 
       (.I0(s_dinb[11]),
        .I1(i_bram_sel),
        .O(o_din0[11]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_din0[12]_INST_0 
       (.I0(s_dinb[12]),
        .I1(i_bram_sel),
        .O(o_din0[12]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_din0[13]_INST_0 
       (.I0(s_dinb[13]),
        .I1(i_bram_sel),
        .O(o_din0[13]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_din0[14]_INST_0 
       (.I0(s_dinb[14]),
        .I1(i_bram_sel),
        .O(o_din0[14]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_din0[15]_INST_0 
       (.I0(s_dinb[15]),
        .I1(i_bram_sel),
        .O(o_din0[15]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_din0[16]_INST_0 
       (.I0(s_dinb[16]),
        .I1(i_bram_sel),
        .O(o_din0[16]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_din0[17]_INST_0 
       (.I0(s_dinb[17]),
        .I1(i_bram_sel),
        .O(o_din0[17]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_din0[18]_INST_0 
       (.I0(s_dinb[18]),
        .I1(i_bram_sel),
        .O(o_din0[18]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_din0[19]_INST_0 
       (.I0(s_dinb[19]),
        .I1(i_bram_sel),
        .O(o_din0[19]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_din0[1]_INST_0 
       (.I0(s_dinb[1]),
        .I1(i_bram_sel),
        .O(o_din0[1]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_din0[20]_INST_0 
       (.I0(s_dinb[20]),
        .I1(i_bram_sel),
        .O(o_din0[20]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_din0[21]_INST_0 
       (.I0(s_dinb[21]),
        .I1(i_bram_sel),
        .O(o_din0[21]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_din0[22]_INST_0 
       (.I0(s_dinb[22]),
        .I1(i_bram_sel),
        .O(o_din0[22]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_din0[23]_INST_0 
       (.I0(s_dinb[23]),
        .I1(i_bram_sel),
        .O(o_din0[23]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_din0[24]_INST_0 
       (.I0(s_dinb[24]),
        .I1(i_bram_sel),
        .O(o_din0[24]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_din0[25]_INST_0 
       (.I0(s_dinb[25]),
        .I1(i_bram_sel),
        .O(o_din0[25]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_din0[26]_INST_0 
       (.I0(s_dinb[26]),
        .I1(i_bram_sel),
        .O(o_din0[26]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_din0[27]_INST_0 
       (.I0(s_dinb[27]),
        .I1(i_bram_sel),
        .O(o_din0[27]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_din0[28]_INST_0 
       (.I0(s_dinb[28]),
        .I1(i_bram_sel),
        .O(o_din0[28]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_din0[29]_INST_0 
       (.I0(s_dinb[29]),
        .I1(i_bram_sel),
        .O(o_din0[29]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_din0[2]_INST_0 
       (.I0(s_dinb[2]),
        .I1(i_bram_sel),
        .O(o_din0[2]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_din0[30]_INST_0 
       (.I0(s_dinb[30]),
        .I1(i_bram_sel),
        .O(o_din0[30]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_din0[31]_INST_0 
       (.I0(s_dinb[31]),
        .I1(i_bram_sel),
        .O(o_din0[31]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_din0[3]_INST_0 
       (.I0(s_dinb[3]),
        .I1(i_bram_sel),
        .O(o_din0[3]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_din0[4]_INST_0 
       (.I0(s_dinb[4]),
        .I1(i_bram_sel),
        .O(o_din0[4]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_din0[5]_INST_0 
       (.I0(s_dinb[5]),
        .I1(i_bram_sel),
        .O(o_din0[5]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_din0[6]_INST_0 
       (.I0(s_dinb[6]),
        .I1(i_bram_sel),
        .O(o_din0[6]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_din0[7]_INST_0 
       (.I0(s_dinb[7]),
        .I1(i_bram_sel),
        .O(o_din0[7]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_din0[8]_INST_0 
       (.I0(s_dinb[8]),
        .I1(i_bram_sel),
        .O(o_din0[8]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_din0[9]_INST_0 
       (.I0(s_dinb[9]),
        .I1(i_bram_sel),
        .O(o_din0[9]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_din1[0]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_dinb[0]),
        .O(o_din1[0]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_din1[10]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_dinb[10]),
        .O(o_din1[10]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_din1[11]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_dinb[11]),
        .O(o_din1[11]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_din1[12]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_dinb[12]),
        .O(o_din1[12]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_din1[13]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_dinb[13]),
        .O(o_din1[13]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_din1[14]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_dinb[14]),
        .O(o_din1[14]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_din1[15]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_dinb[15]),
        .O(o_din1[15]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_din1[16]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_dinb[16]),
        .O(o_din1[16]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_din1[17]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_dinb[17]),
        .O(o_din1[17]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_din1[18]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_dinb[18]),
        .O(o_din1[18]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_din1[19]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_dinb[19]),
        .O(o_din1[19]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_din1[1]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_dinb[1]),
        .O(o_din1[1]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_din1[20]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_dinb[20]),
        .O(o_din1[20]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_din1[21]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_dinb[21]),
        .O(o_din1[21]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_din1[22]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_dinb[22]),
        .O(o_din1[22]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_din1[23]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_dinb[23]),
        .O(o_din1[23]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_din1[24]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_dinb[24]),
        .O(o_din1[24]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_din1[25]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_dinb[25]),
        .O(o_din1[25]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_din1[26]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_dinb[26]),
        .O(o_din1[26]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_din1[27]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_dinb[27]),
        .O(o_din1[27]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_din1[28]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_dinb[28]),
        .O(o_din1[28]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_din1[29]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_dinb[29]),
        .O(o_din1[29]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_din1[2]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_dinb[2]),
        .O(o_din1[2]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_din1[30]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_dinb[30]),
        .O(o_din1[30]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_din1[31]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_dinb[31]),
        .O(o_din1[31]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_din1[3]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_dinb[3]),
        .O(o_din1[3]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_din1[4]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_dinb[4]),
        .O(o_din1[4]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_din1[5]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_dinb[5]),
        .O(o_din1[5]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_din1[6]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_dinb[6]),
        .O(o_din1[6]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_din1[7]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_dinb[7]),
        .O(o_din1[7]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_din1[8]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_dinb[8]),
        .O(o_din1[8]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_din1[9]_INST_0 
       (.I0(i_bram_sel),
        .I1(s_dinb[9]),
        .O(o_din1[9]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFE40)) 
    o_done_i_1
       (.I0(t_state[0]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(t_state[1]),
        .I3(o_done),
        .O(o_done_i_1_n_0));
  FDRE o_done_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_done_i_1_n_0),
        .Q(o_done),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    o_en0_INST_0
       (.I0(s_enb_reg_n_0),
        .I1(i_bram_sel),
        .O(o_en0));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_en1_INST_0
       (.I0(i_bram_sel),
        .I1(s_enb_reg_n_0),
        .O(o_en1));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    o_rst0_INST_0
       (.I0(s_rstb_reg_n_0),
        .I1(i_bram_sel),
        .O(o_rst0));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_rst1_INST_0
       (.I0(i_bram_sel),
        .I1(s_rstb_reg_n_0),
        .O(o_rst1));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_we0[0]_INST_0 
       (.I0(\s_web_reg_n_0_[3] ),
        .I1(i_bram_sel),
        .O(o_we0));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_we1[0]_INST_0 
       (.I0(i_bram_sel),
        .I1(\s_web_reg_n_0_[3] ),
        .O(o_we1));
  FDRE #(
    .INIT(1'b0)) 
    \s_addr_reg[0] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_adr[0]),
        .Q(\s_addr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_addr_reg[10] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_adr[10]),
        .Q(\s_addr_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_addr_reg[11] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_adr[11]),
        .Q(\s_addr_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_addr_reg[12] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_adr[12]),
        .Q(\s_addr_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_addr_reg[13] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_adr[13]),
        .Q(\s_addr_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_addr_reg[14] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_adr[14]),
        .Q(\s_addr_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_addr_reg[15] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_adr[15]),
        .Q(\s_addr_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_addr_reg[16] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_adr[16]),
        .Q(\s_addr_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_addr_reg[17] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_adr[17]),
        .Q(\s_addr_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_addr_reg[18] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_adr[18]),
        .Q(\s_addr_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_addr_reg[19] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_adr[19]),
        .Q(\s_addr_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_addr_reg[1] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_adr[1]),
        .Q(\s_addr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_addr_reg[20] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_adr[20]),
        .Q(\s_addr_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_addr_reg[21] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_adr[21]),
        .Q(\s_addr_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_addr_reg[22] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_adr[22]),
        .Q(\s_addr_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_addr_reg[23] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_adr[23]),
        .Q(\s_addr_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_addr_reg[24] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_adr[24]),
        .Q(\s_addr_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_addr_reg[25] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_adr[25]),
        .Q(\s_addr_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_addr_reg[26] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_adr[26]),
        .Q(\s_addr_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_addr_reg[27] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_adr[27]),
        .Q(\s_addr_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_addr_reg[28] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_adr[28]),
        .Q(\s_addr_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_addr_reg[29] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_adr[29]),
        .Q(\s_addr_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_addr_reg[2] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_adr[2]),
        .Q(\s_addr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_addr_reg[30] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_adr[30]),
        .Q(\s_addr_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_addr_reg[31] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_adr[31]),
        .Q(\s_addr_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_addr_reg[3] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_adr[3]),
        .Q(\s_addr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_addr_reg[4] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_adr[4]),
        .Q(\s_addr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_addr_reg[5] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_adr[5]),
        .Q(\s_addr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_addr_reg[6] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_adr[6]),
        .Q(\s_addr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_addr_reg[7] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_adr[7]),
        .Q(\s_addr_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_addr_reg[8] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_adr[8]),
        .Q(\s_addr_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_addr_reg[9] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_adr[9]),
        .Q(\s_addr_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \s_addrb[0]_i_1 
       (.I0(t_state[0]),
        .I1(\s_addr_reg_n_0_[0] ),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I3(\s_index_reg_n_0_[0] ),
        .O(s_addrb0_in[0]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_addrb[10]_i_1 
       (.I0(t_state[0]),
        .I1(\s_addr_reg_n_0_[10] ),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I3(\s_index_reg_n_0_[10] ),
        .O(s_addrb0_in[10]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_addrb[11]_i_1 
       (.I0(t_state[0]),
        .I1(\s_addr_reg_n_0_[11] ),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I3(\s_index_reg_n_0_[11] ),
        .O(s_addrb0_in[11]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_addrb[12]_i_1 
       (.I0(t_state[0]),
        .I1(\s_addr_reg_n_0_[12] ),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I3(\s_index_reg_n_0_[12] ),
        .O(s_addrb0_in[12]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_addrb[13]_i_1 
       (.I0(t_state[0]),
        .I1(\s_addr_reg_n_0_[13] ),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I3(\s_index_reg_n_0_[13] ),
        .O(s_addrb0_in[13]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_addrb[14]_i_1 
       (.I0(t_state[0]),
        .I1(\s_addr_reg_n_0_[14] ),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I3(\s_index_reg_n_0_[14] ),
        .O(s_addrb0_in[14]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_addrb[15]_i_1 
       (.I0(t_state[0]),
        .I1(\s_addr_reg_n_0_[15] ),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I3(\s_index_reg_n_0_[15] ),
        .O(s_addrb0_in[15]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_addrb[16]_i_1 
       (.I0(t_state[0]),
        .I1(\s_addr_reg_n_0_[16] ),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I3(\s_index_reg_n_0_[16] ),
        .O(s_addrb0_in[16]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_addrb[17]_i_1 
       (.I0(t_state[0]),
        .I1(\s_addr_reg_n_0_[17] ),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I3(\s_index_reg_n_0_[17] ),
        .O(s_addrb0_in[17]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_addrb[18]_i_1 
       (.I0(t_state[0]),
        .I1(\s_addr_reg_n_0_[18] ),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I3(\s_index_reg_n_0_[18] ),
        .O(s_addrb0_in[18]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_addrb[19]_i_1 
       (.I0(t_state[0]),
        .I1(\s_addr_reg_n_0_[19] ),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I3(\s_index_reg_n_0_[19] ),
        .O(s_addrb0_in[19]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_addrb[1]_i_1 
       (.I0(t_state[0]),
        .I1(\s_addr_reg_n_0_[1] ),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I3(\s_index_reg_n_0_[1] ),
        .O(s_addrb0_in[1]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_addrb[20]_i_1 
       (.I0(t_state[0]),
        .I1(\s_addr_reg_n_0_[20] ),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I3(\s_index_reg_n_0_[20] ),
        .O(s_addrb0_in[20]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_addrb[21]_i_1 
       (.I0(t_state[0]),
        .I1(\s_addr_reg_n_0_[21] ),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I3(\s_index_reg_n_0_[21] ),
        .O(s_addrb0_in[21]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_addrb[22]_i_1 
       (.I0(t_state[0]),
        .I1(\s_addr_reg_n_0_[22] ),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I3(\s_index_reg_n_0_[22] ),
        .O(s_addrb0_in[22]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_addrb[23]_i_1 
       (.I0(t_state[0]),
        .I1(\s_addr_reg_n_0_[23] ),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I3(\s_index_reg_n_0_[23] ),
        .O(s_addrb0_in[23]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_addrb[24]_i_1 
       (.I0(t_state[0]),
        .I1(\s_addr_reg_n_0_[24] ),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I3(\s_index_reg_n_0_[24] ),
        .O(s_addrb0_in[24]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_addrb[25]_i_1 
       (.I0(t_state[0]),
        .I1(\s_addr_reg_n_0_[25] ),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I3(\s_index_reg_n_0_[25] ),
        .O(s_addrb0_in[25]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_addrb[26]_i_1 
       (.I0(t_state[0]),
        .I1(\s_addr_reg_n_0_[26] ),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I3(\s_index_reg_n_0_[26] ),
        .O(s_addrb0_in[26]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_addrb[27]_i_1 
       (.I0(t_state[0]),
        .I1(\s_addr_reg_n_0_[27] ),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I3(\s_index_reg_n_0_[27] ),
        .O(s_addrb0_in[27]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_addrb[28]_i_1 
       (.I0(t_state[0]),
        .I1(\s_addr_reg_n_0_[28] ),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I3(\s_index_reg_n_0_[28] ),
        .O(s_addrb0_in[28]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_addrb[29]_i_1 
       (.I0(t_state[0]),
        .I1(\s_addr_reg_n_0_[29] ),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I3(\s_index_reg_n_0_[29] ),
        .O(s_addrb0_in[29]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_addrb[2]_i_1 
       (.I0(t_state[0]),
        .I1(\s_addr_reg_n_0_[2] ),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I3(\s_index_reg_n_0_[2] ),
        .O(s_addrb0_in[2]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_addrb[30]_i_1 
       (.I0(t_state[0]),
        .I1(\s_addr_reg_n_0_[30] ),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I3(\s_index_reg_n_0_[30] ),
        .O(s_addrb0_in[30]));
  LUT2 #(
    .INIT(4'h9)) 
    \s_addrb[31]_i_1 
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(t_state[1]),
        .O(\s_addrb[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s_addrb[31]_i_2 
       (.I0(\s_addr_reg_n_0_[31] ),
        .I1(t_state[0]),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .O(s_addrb0_in[31]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_addrb[3]_i_1 
       (.I0(t_state[0]),
        .I1(\s_addr_reg_n_0_[3] ),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I3(\s_index_reg_n_0_[3] ),
        .O(s_addrb0_in[3]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_addrb[4]_i_1 
       (.I0(t_state[0]),
        .I1(\s_addr_reg_n_0_[4] ),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I3(\s_index_reg_n_0_[4] ),
        .O(s_addrb0_in[4]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_addrb[5]_i_1 
       (.I0(t_state[0]),
        .I1(\s_addr_reg_n_0_[5] ),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I3(\s_index_reg_n_0_[5] ),
        .O(s_addrb0_in[5]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_addrb[6]_i_1 
       (.I0(t_state[0]),
        .I1(\s_addr_reg_n_0_[6] ),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I3(\s_index_reg_n_0_[6] ),
        .O(s_addrb0_in[6]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_addrb[7]_i_1 
       (.I0(t_state[0]),
        .I1(\s_addr_reg_n_0_[7] ),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I3(\s_index_reg_n_0_[7] ),
        .O(s_addrb0_in[7]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_addrb[8]_i_1 
       (.I0(t_state[0]),
        .I1(\s_addr_reg_n_0_[8] ),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I3(\s_index_reg_n_0_[8] ),
        .O(s_addrb0_in[8]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_addrb[9]_i_1 
       (.I0(t_state[0]),
        .I1(\s_addr_reg_n_0_[9] ),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I3(\s_index_reg_n_0_[9] ),
        .O(s_addrb0_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[0] 
       (.C(i_clk),
        .CE(\s_addrb[31]_i_1_n_0 ),
        .D(s_addrb0_in[0]),
        .Q(s_addrb[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[10] 
       (.C(i_clk),
        .CE(\s_addrb[31]_i_1_n_0 ),
        .D(s_addrb0_in[10]),
        .Q(s_addrb[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[11] 
       (.C(i_clk),
        .CE(\s_addrb[31]_i_1_n_0 ),
        .D(s_addrb0_in[11]),
        .Q(s_addrb[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[12] 
       (.C(i_clk),
        .CE(\s_addrb[31]_i_1_n_0 ),
        .D(s_addrb0_in[12]),
        .Q(s_addrb[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[13] 
       (.C(i_clk),
        .CE(\s_addrb[31]_i_1_n_0 ),
        .D(s_addrb0_in[13]),
        .Q(s_addrb[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[14] 
       (.C(i_clk),
        .CE(\s_addrb[31]_i_1_n_0 ),
        .D(s_addrb0_in[14]),
        .Q(s_addrb[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[15] 
       (.C(i_clk),
        .CE(\s_addrb[31]_i_1_n_0 ),
        .D(s_addrb0_in[15]),
        .Q(s_addrb[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[16] 
       (.C(i_clk),
        .CE(\s_addrb[31]_i_1_n_0 ),
        .D(s_addrb0_in[16]),
        .Q(s_addrb[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[17] 
       (.C(i_clk),
        .CE(\s_addrb[31]_i_1_n_0 ),
        .D(s_addrb0_in[17]),
        .Q(s_addrb[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[18] 
       (.C(i_clk),
        .CE(\s_addrb[31]_i_1_n_0 ),
        .D(s_addrb0_in[18]),
        .Q(s_addrb[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[19] 
       (.C(i_clk),
        .CE(\s_addrb[31]_i_1_n_0 ),
        .D(s_addrb0_in[19]),
        .Q(s_addrb[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[1] 
       (.C(i_clk),
        .CE(\s_addrb[31]_i_1_n_0 ),
        .D(s_addrb0_in[1]),
        .Q(s_addrb[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[20] 
       (.C(i_clk),
        .CE(\s_addrb[31]_i_1_n_0 ),
        .D(s_addrb0_in[20]),
        .Q(s_addrb[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[21] 
       (.C(i_clk),
        .CE(\s_addrb[31]_i_1_n_0 ),
        .D(s_addrb0_in[21]),
        .Q(s_addrb[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[22] 
       (.C(i_clk),
        .CE(\s_addrb[31]_i_1_n_0 ),
        .D(s_addrb0_in[22]),
        .Q(s_addrb[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[23] 
       (.C(i_clk),
        .CE(\s_addrb[31]_i_1_n_0 ),
        .D(s_addrb0_in[23]),
        .Q(s_addrb[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[24] 
       (.C(i_clk),
        .CE(\s_addrb[31]_i_1_n_0 ),
        .D(s_addrb0_in[24]),
        .Q(s_addrb[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[25] 
       (.C(i_clk),
        .CE(\s_addrb[31]_i_1_n_0 ),
        .D(s_addrb0_in[25]),
        .Q(s_addrb[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[26] 
       (.C(i_clk),
        .CE(\s_addrb[31]_i_1_n_0 ),
        .D(s_addrb0_in[26]),
        .Q(s_addrb[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[27] 
       (.C(i_clk),
        .CE(\s_addrb[31]_i_1_n_0 ),
        .D(s_addrb0_in[27]),
        .Q(s_addrb[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[28] 
       (.C(i_clk),
        .CE(\s_addrb[31]_i_1_n_0 ),
        .D(s_addrb0_in[28]),
        .Q(s_addrb[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[29] 
       (.C(i_clk),
        .CE(\s_addrb[31]_i_1_n_0 ),
        .D(s_addrb0_in[29]),
        .Q(s_addrb[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[2] 
       (.C(i_clk),
        .CE(\s_addrb[31]_i_1_n_0 ),
        .D(s_addrb0_in[2]),
        .Q(s_addrb[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[30] 
       (.C(i_clk),
        .CE(\s_addrb[31]_i_1_n_0 ),
        .D(s_addrb0_in[30]),
        .Q(s_addrb[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[31] 
       (.C(i_clk),
        .CE(\s_addrb[31]_i_1_n_0 ),
        .D(s_addrb0_in[31]),
        .Q(s_addrb[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[3] 
       (.C(i_clk),
        .CE(\s_addrb[31]_i_1_n_0 ),
        .D(s_addrb0_in[3]),
        .Q(s_addrb[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[4] 
       (.C(i_clk),
        .CE(\s_addrb[31]_i_1_n_0 ),
        .D(s_addrb0_in[4]),
        .Q(s_addrb[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[5] 
       (.C(i_clk),
        .CE(\s_addrb[31]_i_1_n_0 ),
        .D(s_addrb0_in[5]),
        .Q(s_addrb[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[6] 
       (.C(i_clk),
        .CE(\s_addrb[31]_i_1_n_0 ),
        .D(s_addrb0_in[6]),
        .Q(s_addrb[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[7] 
       (.C(i_clk),
        .CE(\s_addrb[31]_i_1_n_0 ),
        .D(s_addrb0_in[7]),
        .Q(s_addrb[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[8] 
       (.C(i_clk),
        .CE(\s_addrb[31]_i_1_n_0 ),
        .D(s_addrb0_in[8]),
        .Q(s_addrb[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_addrb_reg[9] 
       (.C(i_clk),
        .CE(\s_addrb[31]_i_1_n_0 ),
        .D(s_addrb0_in[9]),
        .Q(s_addrb[9]),
        .R(rst));
  CARRY4 s_data0__0_carry
       (.CI(1'b0),
        .CO({s_data0__0_carry_n_0,s_data0__0_carry_n_1,s_data0__0_carry_n_2,s_data0__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({s_data0__0_carry_i_1_n_0,\s_data_reg_n_0_[5] ,\s_data_reg_n_0_[5] ,1'b0}),
        .O({s_data0__0_carry_n_4,s_data0__0_carry_n_5,s_data0__0_carry_n_6,s_data0__0_carry_n_7}),
        .S({s_data0__0_carry_i_2_n_0,s_data0__0_carry_i_3_n_0,s_data0__0_carry_i_4_n_0,\s_data_reg_n_0_[5] }));
  CARRY4 s_data0__0_carry__0
       (.CI(s_data0__0_carry_n_0),
        .CO({NLW_s_data0__0_carry__0_CO_UNCONNECTED[3:1],s_data0__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,s_data0__0_carry__0_i_1_n_0}),
        .O({NLW_s_data0__0_carry__0_O_UNCONNECTED[3:2],s_data0__0_carry__0_n_6,s_data0__0_carry__0_n_7}),
        .S({1'b0,1'b0,s_data0__0_carry__0_i_2_n_0,s_data0__0_carry__0_i_3_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    s_data0__0_carry__0_i_1
       (.I0(\s_data_reg_n_0_[7] ),
        .I1(\s_data_reg_n_0_[6] ),
        .I2(\s_data_reg_n_0_[5] ),
        .O(s_data0__0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    s_data0__0_carry__0_i_2
       (.I0(\s_data_reg_n_0_[5] ),
        .I1(\s_data_reg_n_0_[7] ),
        .I2(\s_data_reg_n_0_[6] ),
        .O(s_data0__0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h7E)) 
    s_data0__0_carry__0_i_3
       (.I0(\s_data_reg_n_0_[6] ),
        .I1(\s_data_reg_n_0_[7] ),
        .I2(\s_data_reg_n_0_[5] ),
        .O(s_data0__0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    s_data0__0_carry_i_1
       (.I0(\s_data_reg_n_0_[6] ),
        .I1(\s_data_reg_n_0_[7] ),
        .I2(\s_data_reg_n_0_[5] ),
        .O(s_data0__0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h56)) 
    s_data0__0_carry_i_2
       (.I0(\s_data_reg_n_0_[5] ),
        .I1(\s_data_reg_n_0_[6] ),
        .I2(\s_data_reg_n_0_[7] ),
        .O(s_data0__0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    s_data0__0_carry_i_3
       (.I0(\s_data_reg_n_0_[6] ),
        .I1(\s_data_reg_n_0_[7] ),
        .I2(\s_data_reg_n_0_[5] ),
        .O(s_data0__0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s_data0__0_carry_i_4
       (.I0(\s_data_reg_n_0_[5] ),
        .I1(\s_data_reg_n_0_[6] ),
        .O(s_data0__0_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s_data0__15_carry
       (.CI(1'b0),
        .CO({s_data0__15_carry_n_0,s_data0__15_carry_n_1,s_data0__15_carry_n_2,s_data0__15_carry_n_3}),
        .CYINIT(1'b1),
        .DI({\s_data_reg_n_0_[3] ,\s_data_reg_n_0_[2] ,\s_data_reg_n_0_[1] ,\s_data_reg_n_0_[0] }),
        .O({s_data0__15_carry_n_4,s_data0__15_carry_n_5,s_data0__15_carry_n_6,s_data0__15_carry_n_7}),
        .S({s_data0__15_carry_i_1_n_0,s_data0__15_carry_i_2_n_0,s_data0__15_carry_i_3_n_0,s_data0__15_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s_data0__15_carry__0
       (.CI(s_data0__15_carry_n_0),
        .CO({NLW_s_data0__15_carry__0_CO_UNCONNECTED[3:1],s_data0__15_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\s_data_reg_n_0_[4] }),
        .O({NLW_s_data0__15_carry__0_O_UNCONNECTED[3:2],s_data0__15_carry__0_n_6,s_data0__15_carry__0_n_7}),
        .S({1'b0,1'b0,s_data0__15_carry__0_i_1_n_0,s_data0__15_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    s_data0__15_carry__0_i_1
       (.I0(\s_data_reg_n_0_[5] ),
        .I1(s_data0__0_carry__0_n_6),
        .O(s_data0__15_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    s_data0__15_carry__0_i_2
       (.I0(\s_data_reg_n_0_[4] ),
        .I1(s_data0__0_carry__0_n_7),
        .O(s_data0__15_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    s_data0__15_carry_i_1
       (.I0(\s_data_reg_n_0_[3] ),
        .I1(s_data0__0_carry_n_4),
        .O(s_data0__15_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    s_data0__15_carry_i_2
       (.I0(\s_data_reg_n_0_[2] ),
        .I1(s_data0__0_carry_n_5),
        .O(s_data0__15_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    s_data0__15_carry_i_3
       (.I0(\s_data_reg_n_0_[1] ),
        .I1(s_data0__0_carry_n_6),
        .O(s_data0__15_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    s_data0__15_carry_i_4
       (.I0(\s_data_reg_n_0_[0] ),
        .I1(s_data0__0_carry_n_7),
        .O(s_data0__15_carry_i_4_n_0));
  CARRY4 \s_data0_inferred__0/i___0_carry 
       (.CI(1'b0),
        .CO({\s_data0_inferred__0/i___0_carry_n_0 ,\s_data0_inferred__0/i___0_carry_n_1 ,\s_data0_inferred__0/i___0_carry_n_2 ,\s_data0_inferred__0/i___0_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___0_carry_i_1__1_n_0,p_0_in[5],p_0_in[5],1'b0}),
        .O({\s_data0_inferred__0/i___0_carry_n_4 ,\s_data0_inferred__0/i___0_carry_n_5 ,\s_data0_inferred__0/i___0_carry_n_6 ,\s_data0_inferred__0/i___0_carry_n_7 }),
        .S({i___0_carry_i_2_n_0,i___0_carry_i_3_n_0,i___0_carry_i_4_n_0,p_0_in[5]}));
  CARRY4 \s_data0_inferred__0/i___0_carry__0 
       (.CI(\s_data0_inferred__0/i___0_carry_n_0 ),
        .CO({\NLW_s_data0_inferred__0/i___0_carry__0_CO_UNCONNECTED [3:1],\s_data0_inferred__0/i___0_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i___0_carry__0_i_1_n_0}),
        .O({\NLW_s_data0_inferred__0/i___0_carry__0_O_UNCONNECTED [3:2],\s_data0_inferred__0/i___0_carry__0_n_6 ,\s_data0_inferred__0/i___0_carry__0_n_7 }),
        .S({1'b0,1'b0,i___0_carry__0_i_2_n_0,i___0_carry__0_i_3_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_data0_inferred__0/i___15_carry 
       (.CI(1'b0),
        .CO({\s_data0_inferred__0/i___15_carry_n_0 ,\s_data0_inferred__0/i___15_carry_n_1 ,\s_data0_inferred__0/i___15_carry_n_2 ,\s_data0_inferred__0/i___15_carry_n_3 }),
        .CYINIT(1'b1),
        .DI(p_0_in[3:0]),
        .O({\s_data0_inferred__0/i___15_carry_n_4 ,\s_data0_inferred__0/i___15_carry_n_5 ,\s_data0_inferred__0/i___15_carry_n_6 ,\s_data0_inferred__0/i___15_carry_n_7 }),
        .S({i___15_carry_i_1_n_0,i___15_carry_i_2_n_0,i___15_carry_i_3_n_0,i___15_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_data0_inferred__0/i___15_carry__0 
       (.CI(\s_data0_inferred__0/i___15_carry_n_0 ),
        .CO({\NLW_s_data0_inferred__0/i___15_carry__0_CO_UNCONNECTED [3:1],\s_data0_inferred__0/i___15_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_0_in[4]}),
        .O({\NLW_s_data0_inferred__0/i___15_carry__0_O_UNCONNECTED [3:2],\s_data0_inferred__0/i___15_carry__0_n_6 ,\s_data0_inferred__0/i___15_carry__0_n_7 }),
        .S({1'b0,1'b0,i___15_carry__0_i_1_n_0,i___15_carry__0_i_2_n_0}));
  CARRY4 \s_data0_inferred__1/i___0_carry 
       (.CI(1'b0),
        .CO({\s_data0_inferred__1/i___0_carry_n_0 ,\s_data0_inferred__1/i___0_carry_n_1 ,\s_data0_inferred__1/i___0_carry_n_2 ,\s_data0_inferred__1/i___0_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___0_carry_i_1__0_n_0,\s_data_reg_n_0_[21] ,\s_data_reg_n_0_[21] ,1'b0}),
        .O({\s_data0_inferred__1/i___0_carry_n_4 ,\s_data0_inferred__1/i___0_carry_n_5 ,\s_data0_inferred__1/i___0_carry_n_6 ,\s_data0_inferred__1/i___0_carry_n_7 }),
        .S({i___0_carry_i_2__0_n_0,i___0_carry_i_3__0_n_0,i___0_carry_i_4__0_n_0,\s_data_reg_n_0_[21] }));
  CARRY4 \s_data0_inferred__1/i___0_carry__0 
       (.CI(\s_data0_inferred__1/i___0_carry_n_0 ),
        .CO({\NLW_s_data0_inferred__1/i___0_carry__0_CO_UNCONNECTED [3:1],\s_data0_inferred__1/i___0_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i___0_carry__0_i_1__0_n_0}),
        .O({\NLW_s_data0_inferred__1/i___0_carry__0_O_UNCONNECTED [3:2],\s_data0_inferred__1/i___0_carry__0_n_6 ,\s_data0_inferred__1/i___0_carry__0_n_7 }),
        .S({1'b0,1'b0,i___0_carry__0_i_2__0_n_0,i___0_carry__0_i_3__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_data0_inferred__1/i___15_carry 
       (.CI(1'b0),
        .CO({\s_data0_inferred__1/i___15_carry_n_0 ,\s_data0_inferred__1/i___15_carry_n_1 ,\s_data0_inferred__1/i___15_carry_n_2 ,\s_data0_inferred__1/i___15_carry_n_3 }),
        .CYINIT(1'b1),
        .DI({\s_data_reg_n_0_[19] ,\s_data_reg_n_0_[18] ,\s_data_reg_n_0_[17] ,\s_data_reg_n_0_[16] }),
        .O({\s_data0_inferred__1/i___15_carry_n_4 ,\s_data0_inferred__1/i___15_carry_n_5 ,\s_data0_inferred__1/i___15_carry_n_6 ,\s_data0_inferred__1/i___15_carry_n_7 }),
        .S({i___15_carry_i_1__0_n_0,i___15_carry_i_2__0_n_0,i___15_carry_i_3__0_n_0,i___15_carry_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_data0_inferred__1/i___15_carry__0 
       (.CI(\s_data0_inferred__1/i___15_carry_n_0 ),
        .CO({\NLW_s_data0_inferred__1/i___15_carry__0_CO_UNCONNECTED [3:1],\s_data0_inferred__1/i___15_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\s_data_reg_n_0_[20] }),
        .O({\NLW_s_data0_inferred__1/i___15_carry__0_O_UNCONNECTED [3:2],\s_data0_inferred__1/i___15_carry__0_n_6 ,\s_data0_inferred__1/i___15_carry__0_n_7 }),
        .S({1'b0,1'b0,i___15_carry__0_i_1__0_n_0,i___15_carry__0_i_2__0_n_0}));
  CARRY4 \s_data0_inferred__2/i___0_carry 
       (.CI(1'b0),
        .CO({\s_data0_inferred__2/i___0_carry_n_0 ,\s_data0_inferred__2/i___0_carry_n_1 ,\s_data0_inferred__2/i___0_carry_n_2 ,\s_data0_inferred__2/i___0_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___0_carry_i_1_n_0,\s_data_reg_n_0_[29] ,\s_data_reg_n_0_[29] ,1'b0}),
        .O({\s_data0_inferred__2/i___0_carry_n_4 ,\s_data0_inferred__2/i___0_carry_n_5 ,\s_data0_inferred__2/i___0_carry_n_6 ,\s_data0_inferred__2/i___0_carry_n_7 }),
        .S({i___0_carry_i_2__1_n_0,i___0_carry_i_3__1_n_0,i___0_carry_i_4__1_n_0,\s_data_reg_n_0_[29] }));
  CARRY4 \s_data0_inferred__2/i___0_carry__0 
       (.CI(\s_data0_inferred__2/i___0_carry_n_0 ),
        .CO({\NLW_s_data0_inferred__2/i___0_carry__0_CO_UNCONNECTED [3:1],\s_data0_inferred__2/i___0_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i___0_carry__0_i_1__1_n_0}),
        .O({\NLW_s_data0_inferred__2/i___0_carry__0_O_UNCONNECTED [3:2],\s_data0_inferred__2/i___0_carry__0_n_6 ,\s_data0_inferred__2/i___0_carry__0_n_7 }),
        .S({1'b0,1'b0,i___0_carry__0_i_2__1_n_0,i___0_carry__0_i_3__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_data0_inferred__2/i___15_carry 
       (.CI(1'b0),
        .CO({\s_data0_inferred__2/i___15_carry_n_0 ,\s_data0_inferred__2/i___15_carry_n_1 ,\s_data0_inferred__2/i___15_carry_n_2 ,\s_data0_inferred__2/i___15_carry_n_3 }),
        .CYINIT(1'b1),
        .DI({\s_data_reg_n_0_[27] ,\s_data_reg_n_0_[26] ,\s_data_reg_n_0_[25] ,\s_data_reg_n_0_[24] }),
        .O({\s_data0_inferred__2/i___15_carry_n_4 ,\s_data0_inferred__2/i___15_carry_n_5 ,\s_data0_inferred__2/i___15_carry_n_6 ,\s_data0_inferred__2/i___15_carry_n_7 }),
        .S({i___15_carry_i_1__1_n_0,i___15_carry_i_2__1_n_0,i___15_carry_i_3__1_n_0,i___15_carry_i_4__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_data0_inferred__2/i___15_carry__0 
       (.CI(\s_data0_inferred__2/i___15_carry_n_0 ),
        .CO({\NLW_s_data0_inferred__2/i___15_carry__0_CO_UNCONNECTED [3:1],\s_data0_inferred__2/i___15_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\s_data_reg_n_0_[28] }),
        .O({\NLW_s_data0_inferred__2/i___15_carry__0_O_UNCONNECTED [3:2],\s_data0_inferred__2/i___15_carry__0_n_6 ,\s_data0_inferred__2/i___15_carry__0_n_7 }),
        .S({1'b0,1'b0,i___15_carry__0_i_1__1_n_0,i___15_carry__0_i_2__1_n_0}));
  LUT6 #(
    .INIT(64'h15555555AAAAAAAA)) 
    \s_data[0]_i_2 
       (.I0(s_data0__15_carry__0_n_6),
        .I1(s_data0__15_carry__0_n_7),
        .I2(s_data0__15_carry_n_5),
        .I3(s_data0__15_carry_n_6),
        .I4(s_data0__15_carry_n_4),
        .I5(s_data0__15_carry_n_7),
        .O(\s_data[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_data[0]_i_3 
       (.I0(i_dout1[0]),
        .I1(i_bram_sel),
        .I2(i_dout0[0]),
        .O(in9[0]));
  LUT6 #(
    .INIT(64'h3FC03FC07F00FF00)) 
    \s_data[10]_i_2 
       (.I0(\s_data0_inferred__0/i___15_carry_n_4 ),
        .I1(\s_data0_inferred__0/i___15_carry_n_6 ),
        .I2(\s_data0_inferred__0/i___15_carry_n_7 ),
        .I3(\s_data0_inferred__0/i___15_carry_n_5 ),
        .I4(\s_data0_inferred__0/i___15_carry__0_n_7 ),
        .I5(\s_data0_inferred__0/i___15_carry__0_n_6 ),
        .O(\s_data[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_data[10]_i_3 
       (.I0(i_dout1[10]),
        .I1(i_bram_sel),
        .I2(i_dout0[10]),
        .O(in9[10]));
  LUT6 #(
    .INIT(64'h6AAA6AAA2AAAAAAA)) 
    \s_data[11]_i_2 
       (.I0(\s_data0_inferred__0/i___15_carry_n_4 ),
        .I1(\s_data0_inferred__0/i___15_carry_n_6 ),
        .I2(\s_data0_inferred__0/i___15_carry_n_7 ),
        .I3(\s_data0_inferred__0/i___15_carry_n_5 ),
        .I4(\s_data0_inferred__0/i___15_carry__0_n_7 ),
        .I5(\s_data0_inferred__0/i___15_carry__0_n_6 ),
        .O(\s_data[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_data[11]_i_3 
       (.I0(i_dout1[11]),
        .I1(i_bram_sel),
        .I2(i_dout0[11]),
        .O(in9[11]));
  LUT6 #(
    .INIT(64'h7FFF80007FFF0000)) 
    \s_data[12]_i_2 
       (.I0(\s_data0_inferred__0/i___15_carry_n_4 ),
        .I1(\s_data0_inferred__0/i___15_carry_n_6 ),
        .I2(\s_data0_inferred__0/i___15_carry_n_7 ),
        .I3(\s_data0_inferred__0/i___15_carry_n_5 ),
        .I4(\s_data0_inferred__0/i___15_carry__0_n_7 ),
        .I5(\s_data0_inferred__0/i___15_carry__0_n_6 ),
        .O(\s_data[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_data[12]_i_3 
       (.I0(i_dout1[12]),
        .I1(i_bram_sel),
        .I2(i_dout0[12]),
        .O(in9[12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_data[13]_i_1 
       (.I0(i_dout1[13]),
        .I1(i_bram_sel),
        .I2(i_dout0[13]),
        .O(in9[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_data[14]_i_1 
       (.I0(i_dout1[14]),
        .I1(i_bram_sel),
        .I2(i_dout0[14]),
        .O(in9[14]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_data[15]_i_1 
       (.I0(i_dout1[15]),
        .I1(i_bram_sel),
        .I2(i_dout0[15]),
        .O(in9[15]));
  LUT6 #(
    .INIT(64'h15555555AAAAAAAA)) 
    \s_data[16]_i_2 
       (.I0(\s_data0_inferred__1/i___15_carry__0_n_6 ),
        .I1(\s_data0_inferred__1/i___15_carry__0_n_7 ),
        .I2(\s_data0_inferred__1/i___15_carry_n_5 ),
        .I3(\s_data0_inferred__1/i___15_carry_n_6 ),
        .I4(\s_data0_inferred__1/i___15_carry_n_4 ),
        .I5(\s_data0_inferred__1/i___15_carry_n_7 ),
        .O(\s_data[16]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_data[16]_i_3 
       (.I0(i_dout1[16]),
        .I1(i_bram_sel),
        .I2(i_dout0[16]),
        .O(in9[16]));
  LUT6 #(
    .INIT(64'h3C3C3C3C4CCCCCCC)) 
    \s_data[17]_i_2 
       (.I0(\s_data0_inferred__1/i___15_carry_n_4 ),
        .I1(\s_data0_inferred__1/i___15_carry_n_6 ),
        .I2(\s_data0_inferred__1/i___15_carry_n_7 ),
        .I3(\s_data0_inferred__1/i___15_carry_n_5 ),
        .I4(\s_data0_inferred__1/i___15_carry__0_n_7 ),
        .I5(\s_data0_inferred__1/i___15_carry__0_n_6 ),
        .O(\s_data[17]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_data[17]_i_3 
       (.I0(i_dout1[17]),
        .I1(i_bram_sel),
        .I2(i_dout0[17]),
        .O(in9[17]));
  LUT6 #(
    .INIT(64'h3FC03FC07F00FF00)) 
    \s_data[18]_i_2 
       (.I0(\s_data0_inferred__1/i___15_carry_n_4 ),
        .I1(\s_data0_inferred__1/i___15_carry_n_6 ),
        .I2(\s_data0_inferred__1/i___15_carry_n_7 ),
        .I3(\s_data0_inferred__1/i___15_carry_n_5 ),
        .I4(\s_data0_inferred__1/i___15_carry__0_n_7 ),
        .I5(\s_data0_inferred__1/i___15_carry__0_n_6 ),
        .O(\s_data[18]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_data[18]_i_3 
       (.I0(i_dout1[18]),
        .I1(i_bram_sel),
        .I2(i_dout0[18]),
        .O(in9[18]));
  LUT6 #(
    .INIT(64'h6AAA6AAA2AAAAAAA)) 
    \s_data[19]_i_2 
       (.I0(\s_data0_inferred__1/i___15_carry_n_4 ),
        .I1(\s_data0_inferred__1/i___15_carry_n_6 ),
        .I2(\s_data0_inferred__1/i___15_carry_n_7 ),
        .I3(\s_data0_inferred__1/i___15_carry_n_5 ),
        .I4(\s_data0_inferred__1/i___15_carry__0_n_7 ),
        .I5(\s_data0_inferred__1/i___15_carry__0_n_6 ),
        .O(\s_data[19]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_data[19]_i_3 
       (.I0(i_dout1[19]),
        .I1(i_bram_sel),
        .I2(i_dout0[19]),
        .O(in9[19]));
  LUT6 #(
    .INIT(64'h3C3C3C3C4CCCCCCC)) 
    \s_data[1]_i_2 
       (.I0(s_data0__15_carry_n_4),
        .I1(s_data0__15_carry_n_6),
        .I2(s_data0__15_carry_n_7),
        .I3(s_data0__15_carry_n_5),
        .I4(s_data0__15_carry__0_n_7),
        .I5(s_data0__15_carry__0_n_6),
        .O(\s_data[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_data[1]_i_3 
       (.I0(i_dout1[1]),
        .I1(i_bram_sel),
        .I2(i_dout0[1]),
        .O(in9[1]));
  LUT6 #(
    .INIT(64'h7FFF80007FFF0000)) 
    \s_data[20]_i_2 
       (.I0(\s_data0_inferred__1/i___15_carry_n_4 ),
        .I1(\s_data0_inferred__1/i___15_carry_n_6 ),
        .I2(\s_data0_inferred__1/i___15_carry_n_7 ),
        .I3(\s_data0_inferred__1/i___15_carry_n_5 ),
        .I4(\s_data0_inferred__1/i___15_carry__0_n_7 ),
        .I5(\s_data0_inferred__1/i___15_carry__0_n_6 ),
        .O(\s_data[20]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_data[20]_i_3 
       (.I0(i_dout1[20]),
        .I1(i_bram_sel),
        .I2(i_dout0[20]),
        .O(in9[20]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_data[21]_i_1 
       (.I0(i_dout1[21]),
        .I1(i_bram_sel),
        .I2(i_dout0[21]),
        .O(in9[21]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_data[22]_i_1 
       (.I0(i_dout1[22]),
        .I1(i_bram_sel),
        .I2(i_dout0[22]),
        .O(in9[22]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_data[23]_i_1 
       (.I0(i_dout1[23]),
        .I1(i_bram_sel),
        .I2(i_dout0[23]),
        .O(in9[23]));
  LUT6 #(
    .INIT(64'h15555555AAAAAAAA)) 
    \s_data[24]_i_2 
       (.I0(\s_data0_inferred__2/i___15_carry__0_n_6 ),
        .I1(\s_data0_inferred__2/i___15_carry__0_n_7 ),
        .I2(\s_data0_inferred__2/i___15_carry_n_5 ),
        .I3(\s_data0_inferred__2/i___15_carry_n_6 ),
        .I4(\s_data0_inferred__2/i___15_carry_n_4 ),
        .I5(\s_data0_inferred__2/i___15_carry_n_7 ),
        .O(s_data0[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_data[24]_i_3 
       (.I0(i_dout1[24]),
        .I1(i_bram_sel),
        .I2(i_dout0[24]),
        .O(in9[24]));
  LUT6 #(
    .INIT(64'h3C3C3C3C4CCCCCCC)) 
    \s_data[25]_i_2 
       (.I0(\s_data0_inferred__2/i___15_carry_n_4 ),
        .I1(\s_data0_inferred__2/i___15_carry_n_6 ),
        .I2(\s_data0_inferred__2/i___15_carry_n_7 ),
        .I3(\s_data0_inferred__2/i___15_carry_n_5 ),
        .I4(\s_data0_inferred__2/i___15_carry__0_n_7 ),
        .I5(\s_data0_inferred__2/i___15_carry__0_n_6 ),
        .O(s_data0[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_data[25]_i_3 
       (.I0(i_dout1[25]),
        .I1(i_bram_sel),
        .I2(i_dout0[25]),
        .O(in9[25]));
  LUT6 #(
    .INIT(64'h3FC03FC07F00FF00)) 
    \s_data[26]_i_2 
       (.I0(\s_data0_inferred__2/i___15_carry_n_4 ),
        .I1(\s_data0_inferred__2/i___15_carry_n_6 ),
        .I2(\s_data0_inferred__2/i___15_carry_n_7 ),
        .I3(\s_data0_inferred__2/i___15_carry_n_5 ),
        .I4(\s_data0_inferred__2/i___15_carry__0_n_7 ),
        .I5(\s_data0_inferred__2/i___15_carry__0_n_6 ),
        .O(s_data0[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_data[26]_i_3 
       (.I0(i_dout1[26]),
        .I1(i_bram_sel),
        .I2(i_dout0[26]),
        .O(in9[26]));
  LUT6 #(
    .INIT(64'h6AAA6AAA2AAAAAAA)) 
    \s_data[27]_i_2 
       (.I0(\s_data0_inferred__2/i___15_carry_n_4 ),
        .I1(\s_data0_inferred__2/i___15_carry_n_6 ),
        .I2(\s_data0_inferred__2/i___15_carry_n_7 ),
        .I3(\s_data0_inferred__2/i___15_carry_n_5 ),
        .I4(\s_data0_inferred__2/i___15_carry__0_n_7 ),
        .I5(\s_data0_inferred__2/i___15_carry__0_n_6 ),
        .O(s_data0[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_data[27]_i_3 
       (.I0(i_dout1[27]),
        .I1(i_bram_sel),
        .I2(i_dout0[27]),
        .O(in9[27]));
  LUT4 #(
    .INIT(16'h0024)) 
    \s_data[28]_i_1 
       (.I0(t_state[1]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(t_state[0]),
        .I3(rst),
        .O(\s_data[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF80007FFF0000)) 
    \s_data[28]_i_3 
       (.I0(\s_data0_inferred__2/i___15_carry_n_4 ),
        .I1(\s_data0_inferred__2/i___15_carry_n_6 ),
        .I2(\s_data0_inferred__2/i___15_carry_n_7 ),
        .I3(\s_data0_inferred__2/i___15_carry_n_5 ),
        .I4(\s_data0_inferred__2/i___15_carry__0_n_7 ),
        .I5(\s_data0_inferred__2/i___15_carry__0_n_6 ),
        .O(s_data0[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_data[28]_i_4 
       (.I0(i_dout1[28]),
        .I1(i_bram_sel),
        .I2(i_dout0[28]),
        .O(in9[28]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_data[29]_i_1 
       (.I0(i_dout1[29]),
        .I1(i_bram_sel),
        .I2(i_dout0[29]),
        .O(in9[29]));
  LUT6 #(
    .INIT(64'h3FC03FC07F00FF00)) 
    \s_data[2]_i_2 
       (.I0(s_data0__15_carry_n_4),
        .I1(s_data0__15_carry_n_6),
        .I2(s_data0__15_carry_n_7),
        .I3(s_data0__15_carry_n_5),
        .I4(s_data0__15_carry__0_n_7),
        .I5(s_data0__15_carry__0_n_6),
        .O(\s_data[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_data[2]_i_3 
       (.I0(i_dout1[2]),
        .I1(i_bram_sel),
        .I2(i_dout0[2]),
        .O(in9[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_data[30]_i_1 
       (.I0(i_dout1[30]),
        .I1(i_bram_sel),
        .I2(i_dout0[30]),
        .O(in9[30]));
  LUT4 #(
    .INIT(16'h0010)) 
    \s_data[31]_i_1 
       (.I0(rst),
        .I1(t_state[0]),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I3(t_state[1]),
        .O(\s_data[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_data[31]_i_2 
       (.I0(i_dout1[31]),
        .I1(i_bram_sel),
        .I2(i_dout0[31]),
        .O(in9[31]));
  LUT6 #(
    .INIT(64'h6AAA6AAA2AAAAAAA)) 
    \s_data[3]_i_2 
       (.I0(s_data0__15_carry_n_4),
        .I1(s_data0__15_carry_n_6),
        .I2(s_data0__15_carry_n_7),
        .I3(s_data0__15_carry_n_5),
        .I4(s_data0__15_carry__0_n_7),
        .I5(s_data0__15_carry__0_n_6),
        .O(\s_data[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_data[3]_i_3 
       (.I0(i_dout1[3]),
        .I1(i_bram_sel),
        .I2(i_dout0[3]),
        .O(in9[3]));
  LUT6 #(
    .INIT(64'h7FFF80007FFF0000)) 
    \s_data[4]_i_2 
       (.I0(s_data0__15_carry_n_4),
        .I1(s_data0__15_carry_n_6),
        .I2(s_data0__15_carry_n_7),
        .I3(s_data0__15_carry_n_5),
        .I4(s_data0__15_carry__0_n_7),
        .I5(s_data0__15_carry__0_n_6),
        .O(\s_data[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_data[4]_i_3 
       (.I0(i_dout1[4]),
        .I1(i_bram_sel),
        .I2(i_dout0[4]),
        .O(in9[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_data[5]_i_1 
       (.I0(i_dout1[5]),
        .I1(i_bram_sel),
        .I2(i_dout0[5]),
        .O(in9[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_data[6]_i_1 
       (.I0(i_dout1[6]),
        .I1(i_bram_sel),
        .I2(i_dout0[6]),
        .O(in9[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_data[7]_i_1 
       (.I0(i_dout1[7]),
        .I1(i_bram_sel),
        .I2(i_dout0[7]),
        .O(in9[7]));
  LUT6 #(
    .INIT(64'h15555555AAAAAAAA)) 
    \s_data[8]_i_2 
       (.I0(\s_data0_inferred__0/i___15_carry__0_n_6 ),
        .I1(\s_data0_inferred__0/i___15_carry__0_n_7 ),
        .I2(\s_data0_inferred__0/i___15_carry_n_5 ),
        .I3(\s_data0_inferred__0/i___15_carry_n_6 ),
        .I4(\s_data0_inferred__0/i___15_carry_n_4 ),
        .I5(\s_data0_inferred__0/i___15_carry_n_7 ),
        .O(\s_data[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_data[8]_i_3 
       (.I0(i_dout1[8]),
        .I1(i_bram_sel),
        .I2(i_dout0[8]),
        .O(in9[8]));
  LUT6 #(
    .INIT(64'h3C3C3C3C4CCCCCCC)) 
    \s_data[9]_i_2 
       (.I0(\s_data0_inferred__0/i___15_carry_n_4 ),
        .I1(\s_data0_inferred__0/i___15_carry_n_6 ),
        .I2(\s_data0_inferred__0/i___15_carry_n_7 ),
        .I3(\s_data0_inferred__0/i___15_carry_n_5 ),
        .I4(\s_data0_inferred__0/i___15_carry__0_n_7 ),
        .I5(\s_data0_inferred__0/i___15_carry__0_n_6 ),
        .O(\s_data[9]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_data[9]_i_3 
       (.I0(i_dout1[9]),
        .I1(i_bram_sel),
        .I2(i_dout0[9]),
        .O(in9[9]));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[0] 
       (.C(i_clk),
        .CE(\s_data[28]_i_1_n_0 ),
        .D(s_data[0]),
        .Q(\s_data_reg_n_0_[0] ),
        .R(1'b0));
  MUXF7 \s_data_reg[0]_i_1 
       (.I0(\s_data[0]_i_2_n_0 ),
        .I1(in9[0]),
        .O(s_data[0]),
        .S(t_state[0]));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[10] 
       (.C(i_clk),
        .CE(\s_data[28]_i_1_n_0 ),
        .D(s_data[10]),
        .Q(p_0_in[2]),
        .R(1'b0));
  MUXF7 \s_data_reg[10]_i_1 
       (.I0(\s_data[10]_i_2_n_0 ),
        .I1(in9[10]),
        .O(s_data[10]),
        .S(t_state[0]));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[11] 
       (.C(i_clk),
        .CE(\s_data[28]_i_1_n_0 ),
        .D(s_data[11]),
        .Q(p_0_in[3]),
        .R(1'b0));
  MUXF7 \s_data_reg[11]_i_1 
       (.I0(\s_data[11]_i_2_n_0 ),
        .I1(in9[11]),
        .O(s_data[11]),
        .S(t_state[0]));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[12] 
       (.C(i_clk),
        .CE(\s_data[28]_i_1_n_0 ),
        .D(s_data[12]),
        .Q(p_0_in[4]),
        .R(1'b0));
  MUXF7 \s_data_reg[12]_i_1 
       (.I0(\s_data[12]_i_2_n_0 ),
        .I1(in9[12]),
        .O(s_data[12]),
        .S(t_state[0]));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[13] 
       (.C(i_clk),
        .CE(\s_data[28]_i_1_n_0 ),
        .D(in9[13]),
        .Q(p_0_in[5]),
        .R(\s_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[14] 
       (.C(i_clk),
        .CE(\s_data[28]_i_1_n_0 ),
        .D(in9[14]),
        .Q(p_0_in[6]),
        .R(\s_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[15] 
       (.C(i_clk),
        .CE(\s_data[28]_i_1_n_0 ),
        .D(in9[15]),
        .Q(p_0_in[7]),
        .R(\s_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[16] 
       (.C(i_clk),
        .CE(\s_data[28]_i_1_n_0 ),
        .D(s_data[16]),
        .Q(\s_data_reg_n_0_[16] ),
        .R(1'b0));
  MUXF7 \s_data_reg[16]_i_1 
       (.I0(\s_data[16]_i_2_n_0 ),
        .I1(in9[16]),
        .O(s_data[16]),
        .S(t_state[0]));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[17] 
       (.C(i_clk),
        .CE(\s_data[28]_i_1_n_0 ),
        .D(s_data[17]),
        .Q(\s_data_reg_n_0_[17] ),
        .R(1'b0));
  MUXF7 \s_data_reg[17]_i_1 
       (.I0(\s_data[17]_i_2_n_0 ),
        .I1(in9[17]),
        .O(s_data[17]),
        .S(t_state[0]));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[18] 
       (.C(i_clk),
        .CE(\s_data[28]_i_1_n_0 ),
        .D(s_data[18]),
        .Q(\s_data_reg_n_0_[18] ),
        .R(1'b0));
  MUXF7 \s_data_reg[18]_i_1 
       (.I0(\s_data[18]_i_2_n_0 ),
        .I1(in9[18]),
        .O(s_data[18]),
        .S(t_state[0]));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[19] 
       (.C(i_clk),
        .CE(\s_data[28]_i_1_n_0 ),
        .D(s_data[19]),
        .Q(\s_data_reg_n_0_[19] ),
        .R(1'b0));
  MUXF7 \s_data_reg[19]_i_1 
       (.I0(\s_data[19]_i_2_n_0 ),
        .I1(in9[19]),
        .O(s_data[19]),
        .S(t_state[0]));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[1] 
       (.C(i_clk),
        .CE(\s_data[28]_i_1_n_0 ),
        .D(s_data[1]),
        .Q(\s_data_reg_n_0_[1] ),
        .R(1'b0));
  MUXF7 \s_data_reg[1]_i_1 
       (.I0(\s_data[1]_i_2_n_0 ),
        .I1(in9[1]),
        .O(s_data[1]),
        .S(t_state[0]));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[20] 
       (.C(i_clk),
        .CE(\s_data[28]_i_1_n_0 ),
        .D(s_data[20]),
        .Q(\s_data_reg_n_0_[20] ),
        .R(1'b0));
  MUXF7 \s_data_reg[20]_i_1 
       (.I0(\s_data[20]_i_2_n_0 ),
        .I1(in9[20]),
        .O(s_data[20]),
        .S(t_state[0]));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[21] 
       (.C(i_clk),
        .CE(\s_data[28]_i_1_n_0 ),
        .D(in9[21]),
        .Q(\s_data_reg_n_0_[21] ),
        .R(\s_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[22] 
       (.C(i_clk),
        .CE(\s_data[28]_i_1_n_0 ),
        .D(in9[22]),
        .Q(\s_data_reg_n_0_[22] ),
        .R(\s_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[23] 
       (.C(i_clk),
        .CE(\s_data[28]_i_1_n_0 ),
        .D(in9[23]),
        .Q(\s_data_reg_n_0_[23] ),
        .R(\s_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[24] 
       (.C(i_clk),
        .CE(\s_data[28]_i_1_n_0 ),
        .D(s_data[24]),
        .Q(\s_data_reg_n_0_[24] ),
        .R(1'b0));
  MUXF7 \s_data_reg[24]_i_1 
       (.I0(s_data0[0]),
        .I1(in9[24]),
        .O(s_data[24]),
        .S(t_state[0]));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[25] 
       (.C(i_clk),
        .CE(\s_data[28]_i_1_n_0 ),
        .D(s_data[25]),
        .Q(\s_data_reg_n_0_[25] ),
        .R(1'b0));
  MUXF7 \s_data_reg[25]_i_1 
       (.I0(s_data0[1]),
        .I1(in9[25]),
        .O(s_data[25]),
        .S(t_state[0]));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[26] 
       (.C(i_clk),
        .CE(\s_data[28]_i_1_n_0 ),
        .D(s_data[26]),
        .Q(\s_data_reg_n_0_[26] ),
        .R(1'b0));
  MUXF7 \s_data_reg[26]_i_1 
       (.I0(s_data0[2]),
        .I1(in9[26]),
        .O(s_data[26]),
        .S(t_state[0]));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[27] 
       (.C(i_clk),
        .CE(\s_data[28]_i_1_n_0 ),
        .D(s_data[27]),
        .Q(\s_data_reg_n_0_[27] ),
        .R(1'b0));
  MUXF7 \s_data_reg[27]_i_1 
       (.I0(s_data0[3]),
        .I1(in9[27]),
        .O(s_data[27]),
        .S(t_state[0]));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[28] 
       (.C(i_clk),
        .CE(\s_data[28]_i_1_n_0 ),
        .D(s_data[28]),
        .Q(\s_data_reg_n_0_[28] ),
        .R(1'b0));
  MUXF7 \s_data_reg[28]_i_2 
       (.I0(s_data0[4]),
        .I1(in9[28]),
        .O(s_data[28]),
        .S(t_state[0]));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[29] 
       (.C(i_clk),
        .CE(\s_data[28]_i_1_n_0 ),
        .D(in9[29]),
        .Q(\s_data_reg_n_0_[29] ),
        .R(\s_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[2] 
       (.C(i_clk),
        .CE(\s_data[28]_i_1_n_0 ),
        .D(s_data[2]),
        .Q(\s_data_reg_n_0_[2] ),
        .R(1'b0));
  MUXF7 \s_data_reg[2]_i_1 
       (.I0(\s_data[2]_i_2_n_0 ),
        .I1(in9[2]),
        .O(s_data[2]),
        .S(t_state[0]));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[30] 
       (.C(i_clk),
        .CE(\s_data[28]_i_1_n_0 ),
        .D(in9[30]),
        .Q(\s_data_reg_n_0_[30] ),
        .R(\s_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[31] 
       (.C(i_clk),
        .CE(\s_data[28]_i_1_n_0 ),
        .D(in9[31]),
        .Q(\s_data_reg_n_0_[31] ),
        .R(\s_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[3] 
       (.C(i_clk),
        .CE(\s_data[28]_i_1_n_0 ),
        .D(s_data[3]),
        .Q(\s_data_reg_n_0_[3] ),
        .R(1'b0));
  MUXF7 \s_data_reg[3]_i_1 
       (.I0(\s_data[3]_i_2_n_0 ),
        .I1(in9[3]),
        .O(s_data[3]),
        .S(t_state[0]));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[4] 
       (.C(i_clk),
        .CE(\s_data[28]_i_1_n_0 ),
        .D(s_data[4]),
        .Q(\s_data_reg_n_0_[4] ),
        .R(1'b0));
  MUXF7 \s_data_reg[4]_i_1 
       (.I0(\s_data[4]_i_2_n_0 ),
        .I1(in9[4]),
        .O(s_data[4]),
        .S(t_state[0]));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[5] 
       (.C(i_clk),
        .CE(\s_data[28]_i_1_n_0 ),
        .D(in9[5]),
        .Q(\s_data_reg_n_0_[5] ),
        .R(\s_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[6] 
       (.C(i_clk),
        .CE(\s_data[28]_i_1_n_0 ),
        .D(in9[6]),
        .Q(\s_data_reg_n_0_[6] ),
        .R(\s_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[7] 
       (.C(i_clk),
        .CE(\s_data[28]_i_1_n_0 ),
        .D(in9[7]),
        .Q(\s_data_reg_n_0_[7] ),
        .R(\s_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[8] 
       (.C(i_clk),
        .CE(\s_data[28]_i_1_n_0 ),
        .D(s_data[8]),
        .Q(p_0_in[0]),
        .R(1'b0));
  MUXF7 \s_data_reg[8]_i_1 
       (.I0(\s_data[8]_i_2_n_0 ),
        .I1(in9[8]),
        .O(s_data[8]),
        .S(t_state[0]));
  FDRE #(
    .INIT(1'b0)) 
    \s_data_reg[9] 
       (.C(i_clk),
        .CE(\s_data[28]_i_1_n_0 ),
        .D(s_data[9]),
        .Q(p_0_in[1]),
        .R(1'b0));
  MUXF7 \s_data_reg[9]_i_1 
       (.I0(\s_data[9]_i_2_n_0 ),
        .I1(in9[9]),
        .O(s_data[9]),
        .S(t_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_dinb[0]_i_1 
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(\s_data_reg_n_0_[0] ),
        .O(\s_dinb[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_dinb[10]_i_1 
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(p_0_in[2]),
        .O(\s_dinb[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_dinb[11]_i_1 
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(p_0_in[3]),
        .O(\s_dinb[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_dinb[12]_i_1 
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(p_0_in[4]),
        .O(\s_dinb[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_dinb[13]_i_1 
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(p_0_in[5]),
        .O(\s_dinb[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_dinb[14]_i_1 
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(p_0_in[6]),
        .O(\s_dinb[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_dinb[15]_i_1 
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(p_0_in[7]),
        .O(\s_dinb[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_dinb[16]_i_1 
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(\s_data_reg_n_0_[16] ),
        .O(\s_dinb[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_dinb[17]_i_1 
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(\s_data_reg_n_0_[17] ),
        .O(\s_dinb[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_dinb[18]_i_1 
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(\s_data_reg_n_0_[18] ),
        .O(\s_dinb[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_dinb[19]_i_1 
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(\s_data_reg_n_0_[19] ),
        .O(\s_dinb[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_dinb[1]_i_1 
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(\s_data_reg_n_0_[1] ),
        .O(\s_dinb[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_dinb[20]_i_1 
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(\s_data_reg_n_0_[20] ),
        .O(\s_dinb[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_dinb[21]_i_1 
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(\s_data_reg_n_0_[21] ),
        .O(\s_dinb[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_dinb[22]_i_1 
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(\s_data_reg_n_0_[22] ),
        .O(\s_dinb[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_dinb[23]_i_1 
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(\s_data_reg_n_0_[23] ),
        .O(\s_dinb[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_dinb[24]_i_1 
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(\s_data_reg_n_0_[24] ),
        .O(\s_dinb[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_dinb[25]_i_1 
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(\s_data_reg_n_0_[25] ),
        .O(\s_dinb[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_dinb[26]_i_1 
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(\s_data_reg_n_0_[26] ),
        .O(\s_dinb[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_dinb[27]_i_1 
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(\s_data_reg_n_0_[27] ),
        .O(\s_dinb[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_dinb[28]_i_1 
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(\s_data_reg_n_0_[28] ),
        .O(\s_dinb[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_dinb[29]_i_1 
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(\s_data_reg_n_0_[29] ),
        .O(\s_dinb[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_dinb[2]_i_1 
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(\s_data_reg_n_0_[2] ),
        .O(\s_dinb[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_dinb[30]_i_1 
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(\s_data_reg_n_0_[30] ),
        .O(\s_dinb[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h41)) 
    \s_dinb[31]_i_1 
       (.I0(t_state[1]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(t_state[0]),
        .O(\s_dinb[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_dinb[31]_i_2 
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(\s_data_reg_n_0_[31] ),
        .O(\s_dinb[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_dinb[3]_i_1 
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(\s_data_reg_n_0_[3] ),
        .O(\s_dinb[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_dinb[4]_i_1 
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(\s_data_reg_n_0_[4] ),
        .O(\s_dinb[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_dinb[5]_i_1 
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(\s_data_reg_n_0_[5] ),
        .O(\s_dinb[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_dinb[6]_i_1 
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(\s_data_reg_n_0_[6] ),
        .O(\s_dinb[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_dinb[7]_i_1 
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(\s_data_reg_n_0_[7] ),
        .O(\s_dinb[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_dinb[8]_i_1 
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(p_0_in[0]),
        .O(\s_dinb[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_dinb[9]_i_1 
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(p_0_in[1]),
        .O(\s_dinb[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_dinb_reg[0] 
       (.C(i_clk),
        .CE(\s_dinb[31]_i_1_n_0 ),
        .D(\s_dinb[0]_i_1_n_0 ),
        .Q(s_dinb[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dinb_reg[10] 
       (.C(i_clk),
        .CE(\s_dinb[31]_i_1_n_0 ),
        .D(\s_dinb[10]_i_1_n_0 ),
        .Q(s_dinb[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dinb_reg[11] 
       (.C(i_clk),
        .CE(\s_dinb[31]_i_1_n_0 ),
        .D(\s_dinb[11]_i_1_n_0 ),
        .Q(s_dinb[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dinb_reg[12] 
       (.C(i_clk),
        .CE(\s_dinb[31]_i_1_n_0 ),
        .D(\s_dinb[12]_i_1_n_0 ),
        .Q(s_dinb[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dinb_reg[13] 
       (.C(i_clk),
        .CE(\s_dinb[31]_i_1_n_0 ),
        .D(\s_dinb[13]_i_1_n_0 ),
        .Q(s_dinb[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dinb_reg[14] 
       (.C(i_clk),
        .CE(\s_dinb[31]_i_1_n_0 ),
        .D(\s_dinb[14]_i_1_n_0 ),
        .Q(s_dinb[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dinb_reg[15] 
       (.C(i_clk),
        .CE(\s_dinb[31]_i_1_n_0 ),
        .D(\s_dinb[15]_i_1_n_0 ),
        .Q(s_dinb[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dinb_reg[16] 
       (.C(i_clk),
        .CE(\s_dinb[31]_i_1_n_0 ),
        .D(\s_dinb[16]_i_1_n_0 ),
        .Q(s_dinb[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dinb_reg[17] 
       (.C(i_clk),
        .CE(\s_dinb[31]_i_1_n_0 ),
        .D(\s_dinb[17]_i_1_n_0 ),
        .Q(s_dinb[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dinb_reg[18] 
       (.C(i_clk),
        .CE(\s_dinb[31]_i_1_n_0 ),
        .D(\s_dinb[18]_i_1_n_0 ),
        .Q(s_dinb[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dinb_reg[19] 
       (.C(i_clk),
        .CE(\s_dinb[31]_i_1_n_0 ),
        .D(\s_dinb[19]_i_1_n_0 ),
        .Q(s_dinb[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dinb_reg[1] 
       (.C(i_clk),
        .CE(\s_dinb[31]_i_1_n_0 ),
        .D(\s_dinb[1]_i_1_n_0 ),
        .Q(s_dinb[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dinb_reg[20] 
       (.C(i_clk),
        .CE(\s_dinb[31]_i_1_n_0 ),
        .D(\s_dinb[20]_i_1_n_0 ),
        .Q(s_dinb[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dinb_reg[21] 
       (.C(i_clk),
        .CE(\s_dinb[31]_i_1_n_0 ),
        .D(\s_dinb[21]_i_1_n_0 ),
        .Q(s_dinb[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dinb_reg[22] 
       (.C(i_clk),
        .CE(\s_dinb[31]_i_1_n_0 ),
        .D(\s_dinb[22]_i_1_n_0 ),
        .Q(s_dinb[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dinb_reg[23] 
       (.C(i_clk),
        .CE(\s_dinb[31]_i_1_n_0 ),
        .D(\s_dinb[23]_i_1_n_0 ),
        .Q(s_dinb[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dinb_reg[24] 
       (.C(i_clk),
        .CE(\s_dinb[31]_i_1_n_0 ),
        .D(\s_dinb[24]_i_1_n_0 ),
        .Q(s_dinb[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dinb_reg[25] 
       (.C(i_clk),
        .CE(\s_dinb[31]_i_1_n_0 ),
        .D(\s_dinb[25]_i_1_n_0 ),
        .Q(s_dinb[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dinb_reg[26] 
       (.C(i_clk),
        .CE(\s_dinb[31]_i_1_n_0 ),
        .D(\s_dinb[26]_i_1_n_0 ),
        .Q(s_dinb[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dinb_reg[27] 
       (.C(i_clk),
        .CE(\s_dinb[31]_i_1_n_0 ),
        .D(\s_dinb[27]_i_1_n_0 ),
        .Q(s_dinb[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dinb_reg[28] 
       (.C(i_clk),
        .CE(\s_dinb[31]_i_1_n_0 ),
        .D(\s_dinb[28]_i_1_n_0 ),
        .Q(s_dinb[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dinb_reg[29] 
       (.C(i_clk),
        .CE(\s_dinb[31]_i_1_n_0 ),
        .D(\s_dinb[29]_i_1_n_0 ),
        .Q(s_dinb[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dinb_reg[2] 
       (.C(i_clk),
        .CE(\s_dinb[31]_i_1_n_0 ),
        .D(\s_dinb[2]_i_1_n_0 ),
        .Q(s_dinb[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dinb_reg[30] 
       (.C(i_clk),
        .CE(\s_dinb[31]_i_1_n_0 ),
        .D(\s_dinb[30]_i_1_n_0 ),
        .Q(s_dinb[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dinb_reg[31] 
       (.C(i_clk),
        .CE(\s_dinb[31]_i_1_n_0 ),
        .D(\s_dinb[31]_i_2_n_0 ),
        .Q(s_dinb[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dinb_reg[3] 
       (.C(i_clk),
        .CE(\s_dinb[31]_i_1_n_0 ),
        .D(\s_dinb[3]_i_1_n_0 ),
        .Q(s_dinb[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dinb_reg[4] 
       (.C(i_clk),
        .CE(\s_dinb[31]_i_1_n_0 ),
        .D(\s_dinb[4]_i_1_n_0 ),
        .Q(s_dinb[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dinb_reg[5] 
       (.C(i_clk),
        .CE(\s_dinb[31]_i_1_n_0 ),
        .D(\s_dinb[5]_i_1_n_0 ),
        .Q(s_dinb[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dinb_reg[6] 
       (.C(i_clk),
        .CE(\s_dinb[31]_i_1_n_0 ),
        .D(\s_dinb[6]_i_1_n_0 ),
        .Q(s_dinb[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dinb_reg[7] 
       (.C(i_clk),
        .CE(\s_dinb[31]_i_1_n_0 ),
        .D(\s_dinb[7]_i_1_n_0 ),
        .Q(s_dinb[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dinb_reg[8] 
       (.C(i_clk),
        .CE(\s_dinb[31]_i_1_n_0 ),
        .D(\s_dinb[8]_i_1_n_0 ),
        .Q(s_dinb[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dinb_reg[9] 
       (.C(i_clk),
        .CE(\s_dinb[31]_i_1_n_0 ),
        .D(\s_dinb[9]_i_1_n_0 ),
        .Q(s_dinb[9]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h9E9C)) 
    s_enb_i_1
       (.I0(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I1(t_state[0]),
        .I2(t_state[1]),
        .I3(s_enb_reg_n_0),
        .O(s_enb_i_1_n_0));
  FDRE s_enb_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(s_enb_i_1_n_0),
        .Q(s_enb_reg_n_0),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s_index0_carry
       (.CI(1'b0),
        .CO({s_index0_carry_n_0,s_index0_carry_n_1,s_index0_carry_n_2,s_index0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\s_index_reg_n_0_[2] ,1'b0}),
        .O(in7[4:1]),
        .S({\s_index_reg_n_0_[4] ,\s_index_reg_n_0_[3] ,s_index0_carry_i_1_n_0,\s_index_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s_index0_carry__0
       (.CI(s_index0_carry_n_0),
        .CO({s_index0_carry__0_n_0,s_index0_carry__0_n_1,s_index0_carry__0_n_2,s_index0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[8:5]),
        .S({\s_index_reg_n_0_[8] ,\s_index_reg_n_0_[7] ,\s_index_reg_n_0_[6] ,\s_index_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s_index0_carry__1
       (.CI(s_index0_carry__0_n_0),
        .CO({s_index0_carry__1_n_0,s_index0_carry__1_n_1,s_index0_carry__1_n_2,s_index0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[12:9]),
        .S({\s_index_reg_n_0_[12] ,\s_index_reg_n_0_[11] ,\s_index_reg_n_0_[10] ,\s_index_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s_index0_carry__2
       (.CI(s_index0_carry__1_n_0),
        .CO({s_index0_carry__2_n_0,s_index0_carry__2_n_1,s_index0_carry__2_n_2,s_index0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[16:13]),
        .S({\s_index_reg_n_0_[16] ,\s_index_reg_n_0_[15] ,\s_index_reg_n_0_[14] ,\s_index_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s_index0_carry__3
       (.CI(s_index0_carry__2_n_0),
        .CO({s_index0_carry__3_n_0,s_index0_carry__3_n_1,s_index0_carry__3_n_2,s_index0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[20:17]),
        .S({\s_index_reg_n_0_[20] ,\s_index_reg_n_0_[19] ,\s_index_reg_n_0_[18] ,\s_index_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s_index0_carry__4
       (.CI(s_index0_carry__3_n_0),
        .CO({s_index0_carry__4_n_0,s_index0_carry__4_n_1,s_index0_carry__4_n_2,s_index0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[24:21]),
        .S({\s_index_reg_n_0_[24] ,\s_index_reg_n_0_[23] ,\s_index_reg_n_0_[22] ,\s_index_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s_index0_carry__5
       (.CI(s_index0_carry__4_n_0),
        .CO({s_index0_carry__5_n_0,s_index0_carry__5_n_1,s_index0_carry__5_n_2,s_index0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[28:25]),
        .S({\s_index_reg_n_0_[28] ,\s_index_reg_n_0_[27] ,\s_index_reg_n_0_[26] ,\s_index_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s_index0_carry__6
       (.CI(s_index0_carry__5_n_0),
        .CO({NLW_s_index0_carry__6_CO_UNCONNECTED[3:1],s_index0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_s_index0_carry__6_O_UNCONNECTED[3:2],in7[30:29]}),
        .S({1'b0,1'b0,\s_index_reg_n_0_[30] ,\s_index_reg_n_0_[29] }));
  LUT1 #(
    .INIT(2'h1)) 
    s_index0_carry_i_1
       (.I0(\s_index_reg_n_0_[2] ),
        .O(s_index0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_index[0]_i_1 
       (.I0(\s_index_reg_n_0_[0] ),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(\s_addr_reg_n_0_[0] ),
        .I3(t_state[1]),
        .O(s_index[0]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_index[10]_i_1 
       (.I0(in7[10]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(\s_addr_reg_n_0_[10] ),
        .I3(t_state[1]),
        .O(s_index[10]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_index[11]_i_1 
       (.I0(in7[11]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(\s_addr_reg_n_0_[11] ),
        .I3(t_state[1]),
        .O(s_index[11]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_index[12]_i_1 
       (.I0(in7[12]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(\s_addr_reg_n_0_[12] ),
        .I3(t_state[1]),
        .O(s_index[12]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_index[13]_i_1 
       (.I0(in7[13]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(\s_addr_reg_n_0_[13] ),
        .I3(t_state[1]),
        .O(s_index[13]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_index[14]_i_1 
       (.I0(in7[14]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(\s_addr_reg_n_0_[14] ),
        .I3(t_state[1]),
        .O(s_index[14]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_index[15]_i_1 
       (.I0(in7[15]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(\s_addr_reg_n_0_[15] ),
        .I3(t_state[1]),
        .O(s_index[15]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_index[16]_i_1 
       (.I0(in7[16]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(\s_addr_reg_n_0_[16] ),
        .I3(t_state[1]),
        .O(s_index[16]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_index[17]_i_1 
       (.I0(in7[17]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(\s_addr_reg_n_0_[17] ),
        .I3(t_state[1]),
        .O(s_index[17]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_index[18]_i_1 
       (.I0(in7[18]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(\s_addr_reg_n_0_[18] ),
        .I3(t_state[1]),
        .O(s_index[18]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_index[19]_i_1 
       (.I0(in7[19]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(\s_addr_reg_n_0_[19] ),
        .I3(t_state[1]),
        .O(s_index[19]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_index[1]_i_1 
       (.I0(in7[1]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(\s_addr_reg_n_0_[1] ),
        .I3(t_state[1]),
        .O(s_index[1]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_index[20]_i_1 
       (.I0(in7[20]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(\s_addr_reg_n_0_[20] ),
        .I3(t_state[1]),
        .O(s_index[20]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_index[21]_i_1 
       (.I0(in7[21]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(\s_addr_reg_n_0_[21] ),
        .I3(t_state[1]),
        .O(s_index[21]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_index[22]_i_1 
       (.I0(in7[22]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(\s_addr_reg_n_0_[22] ),
        .I3(t_state[1]),
        .O(s_index[22]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_index[23]_i_1 
       (.I0(in7[23]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(\s_addr_reg_n_0_[23] ),
        .I3(t_state[1]),
        .O(s_index[23]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_index[24]_i_1 
       (.I0(in7[24]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(\s_addr_reg_n_0_[24] ),
        .I3(t_state[1]),
        .O(s_index[24]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_index[25]_i_1 
       (.I0(in7[25]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(\s_addr_reg_n_0_[25] ),
        .I3(t_state[1]),
        .O(s_index[25]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_index[26]_i_1 
       (.I0(in7[26]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(\s_addr_reg_n_0_[26] ),
        .I3(t_state[1]),
        .O(s_index[26]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_index[27]_i_1 
       (.I0(in7[27]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(\s_addr_reg_n_0_[27] ),
        .I3(t_state[1]),
        .O(s_index[27]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_index[28]_i_1 
       (.I0(in7[28]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(\s_addr_reg_n_0_[28] ),
        .I3(t_state[1]),
        .O(s_index[28]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_index[29]_i_1 
       (.I0(in7[29]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(\s_addr_reg_n_0_[29] ),
        .I3(t_state[1]),
        .O(s_index[29]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_index[2]_i_1 
       (.I0(in7[2]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(\s_addr_reg_n_0_[2] ),
        .I3(t_state[1]),
        .O(s_index[2]));
  LUT4 #(
    .INIT(16'h340C)) 
    \s_index[30]_i_1 
       (.I0(t_state1_carry__2_n_0),
        .I1(t_state[0]),
        .I2(t_state[1]),
        .I3(\FSM_sequential_t_state_reg_n_0_[2] ),
        .O(\s_index[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_index[30]_i_2 
       (.I0(in7[30]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(\s_addr_reg_n_0_[30] ),
        .I3(t_state[1]),
        .O(s_index[30]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_index[3]_i_1 
       (.I0(in7[3]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(\s_addr_reg_n_0_[3] ),
        .I3(t_state[1]),
        .O(s_index[3]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_index[4]_i_1 
       (.I0(in7[4]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(\s_addr_reg_n_0_[4] ),
        .I3(t_state[1]),
        .O(s_index[4]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_index[5]_i_1 
       (.I0(in7[5]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(\s_addr_reg_n_0_[5] ),
        .I3(t_state[1]),
        .O(s_index[5]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_index[6]_i_1 
       (.I0(in7[6]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(\s_addr_reg_n_0_[6] ),
        .I3(t_state[1]),
        .O(s_index[6]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_index[7]_i_1 
       (.I0(in7[7]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(\s_addr_reg_n_0_[7] ),
        .I3(t_state[1]),
        .O(s_index[7]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_index[8]_i_1 
       (.I0(in7[8]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(\s_addr_reg_n_0_[8] ),
        .I3(t_state[1]),
        .O(s_index[8]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \s_index[9]_i_1 
       (.I0(in7[9]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(\s_addr_reg_n_0_[9] ),
        .I3(t_state[1]),
        .O(s_index[9]));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[0] 
       (.C(i_clk),
        .CE(\s_index[30]_i_1_n_0 ),
        .D(s_index[0]),
        .Q(\s_index_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[10] 
       (.C(i_clk),
        .CE(\s_index[30]_i_1_n_0 ),
        .D(s_index[10]),
        .Q(\s_index_reg_n_0_[10] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[11] 
       (.C(i_clk),
        .CE(\s_index[30]_i_1_n_0 ),
        .D(s_index[11]),
        .Q(\s_index_reg_n_0_[11] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[12] 
       (.C(i_clk),
        .CE(\s_index[30]_i_1_n_0 ),
        .D(s_index[12]),
        .Q(\s_index_reg_n_0_[12] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[13] 
       (.C(i_clk),
        .CE(\s_index[30]_i_1_n_0 ),
        .D(s_index[13]),
        .Q(\s_index_reg_n_0_[13] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[14] 
       (.C(i_clk),
        .CE(\s_index[30]_i_1_n_0 ),
        .D(s_index[14]),
        .Q(\s_index_reg_n_0_[14] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[15] 
       (.C(i_clk),
        .CE(\s_index[30]_i_1_n_0 ),
        .D(s_index[15]),
        .Q(\s_index_reg_n_0_[15] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[16] 
       (.C(i_clk),
        .CE(\s_index[30]_i_1_n_0 ),
        .D(s_index[16]),
        .Q(\s_index_reg_n_0_[16] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[17] 
       (.C(i_clk),
        .CE(\s_index[30]_i_1_n_0 ),
        .D(s_index[17]),
        .Q(\s_index_reg_n_0_[17] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[18] 
       (.C(i_clk),
        .CE(\s_index[30]_i_1_n_0 ),
        .D(s_index[18]),
        .Q(\s_index_reg_n_0_[18] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[19] 
       (.C(i_clk),
        .CE(\s_index[30]_i_1_n_0 ),
        .D(s_index[19]),
        .Q(\s_index_reg_n_0_[19] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[1] 
       (.C(i_clk),
        .CE(\s_index[30]_i_1_n_0 ),
        .D(s_index[1]),
        .Q(\s_index_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[20] 
       (.C(i_clk),
        .CE(\s_index[30]_i_1_n_0 ),
        .D(s_index[20]),
        .Q(\s_index_reg_n_0_[20] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[21] 
       (.C(i_clk),
        .CE(\s_index[30]_i_1_n_0 ),
        .D(s_index[21]),
        .Q(\s_index_reg_n_0_[21] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[22] 
       (.C(i_clk),
        .CE(\s_index[30]_i_1_n_0 ),
        .D(s_index[22]),
        .Q(\s_index_reg_n_0_[22] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[23] 
       (.C(i_clk),
        .CE(\s_index[30]_i_1_n_0 ),
        .D(s_index[23]),
        .Q(\s_index_reg_n_0_[23] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[24] 
       (.C(i_clk),
        .CE(\s_index[30]_i_1_n_0 ),
        .D(s_index[24]),
        .Q(\s_index_reg_n_0_[24] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[25] 
       (.C(i_clk),
        .CE(\s_index[30]_i_1_n_0 ),
        .D(s_index[25]),
        .Q(\s_index_reg_n_0_[25] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[26] 
       (.C(i_clk),
        .CE(\s_index[30]_i_1_n_0 ),
        .D(s_index[26]),
        .Q(\s_index_reg_n_0_[26] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[27] 
       (.C(i_clk),
        .CE(\s_index[30]_i_1_n_0 ),
        .D(s_index[27]),
        .Q(\s_index_reg_n_0_[27] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[28] 
       (.C(i_clk),
        .CE(\s_index[30]_i_1_n_0 ),
        .D(s_index[28]),
        .Q(\s_index_reg_n_0_[28] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[29] 
       (.C(i_clk),
        .CE(\s_index[30]_i_1_n_0 ),
        .D(s_index[29]),
        .Q(\s_index_reg_n_0_[29] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[2] 
       (.C(i_clk),
        .CE(\s_index[30]_i_1_n_0 ),
        .D(s_index[2]),
        .Q(\s_index_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[30] 
       (.C(i_clk),
        .CE(\s_index[30]_i_1_n_0 ),
        .D(s_index[30]),
        .Q(\s_index_reg_n_0_[30] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[3] 
       (.C(i_clk),
        .CE(\s_index[30]_i_1_n_0 ),
        .D(s_index[3]),
        .Q(\s_index_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[4] 
       (.C(i_clk),
        .CE(\s_index[30]_i_1_n_0 ),
        .D(s_index[4]),
        .Q(\s_index_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[5] 
       (.C(i_clk),
        .CE(\s_index[30]_i_1_n_0 ),
        .D(s_index[5]),
        .Q(\s_index_reg_n_0_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[6] 
       (.C(i_clk),
        .CE(\s_index[30]_i_1_n_0 ),
        .D(s_index[6]),
        .Q(\s_index_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[7] 
       (.C(i_clk),
        .CE(\s_index[30]_i_1_n_0 ),
        .D(s_index[7]),
        .Q(\s_index_reg_n_0_[7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[8] 
       (.C(i_clk),
        .CE(\s_index[30]_i_1_n_0 ),
        .D(s_index[8]),
        .Q(\s_index_reg_n_0_[8] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_index_reg[9] 
       (.C(i_clk),
        .CE(\s_index[30]_i_1_n_0 ),
        .D(s_index[9]),
        .Q(\s_index_reg_n_0_[9] ),
        .R(rst));
  LUT5 #(
    .INIT(32'h00000004)) 
    \s_max_len[30]_i_1 
       (.I0(t_state[1]),
        .I1(i_enable),
        .I2(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I3(t_state[0]),
        .I4(rst),
        .O(\s_max_len[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[0] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[0]),
        .Q(s_max_len[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[10] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[10]),
        .Q(s_max_len[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[11] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[11]),
        .Q(s_max_len[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[12] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[12]),
        .Q(s_max_len[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[13] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[13]),
        .Q(s_max_len[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[14] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[14]),
        .Q(s_max_len[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[15] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[15]),
        .Q(s_max_len[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[16] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[16]),
        .Q(s_max_len[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[17] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[17]),
        .Q(s_max_len[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[18] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[18]),
        .Q(s_max_len[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[19] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[19]),
        .Q(s_max_len[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[1] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[1]),
        .Q(s_max_len[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[20] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[20]),
        .Q(s_max_len[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[21] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[21]),
        .Q(s_max_len[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[22] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[22]),
        .Q(s_max_len[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[23] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[23]),
        .Q(s_max_len[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[24] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[24]),
        .Q(s_max_len[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[25] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[25]),
        .Q(s_max_len[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[26] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[26]),
        .Q(s_max_len[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[27] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[27]),
        .Q(s_max_len[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[28] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[28]),
        .Q(s_max_len[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[29] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[29]),
        .Q(s_max_len[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[2] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[2]),
        .Q(s_max_len[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[30] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[30]),
        .Q(s_max_len[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[3] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[3]),
        .Q(s_max_len[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[4] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[4]),
        .Q(s_max_len[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[5] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[5]),
        .Q(s_max_len[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[6] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[6]),
        .Q(s_max_len[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[7] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[7]),
        .Q(s_max_len[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[8] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[8]),
        .Q(s_max_len[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_max_len_reg[9] 
       (.C(i_clk),
        .CE(\s_max_len[30]_i_1_n_0 ),
        .D(i_len[9]),
        .Q(s_max_len[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hAA80)) 
    s_rstb_i_1
       (.I0(s_rstb_reg_n_0),
        .I1(t_state[0]),
        .I2(t_state[1]),
        .I3(\FSM_sequential_t_state_reg_n_0_[2] ),
        .O(s_rstb_i_1_n_0));
  FDSE s_rstb_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(s_rstb_i_1_n_0),
        .Q(s_rstb_reg_n_0),
        .S(rst));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2C08)) 
    \s_web[3]_i_1 
       (.I0(t_state[0]),
        .I1(\FSM_sequential_t_state_reg_n_0_[2] ),
        .I2(t_state[1]),
        .I3(\s_web_reg_n_0_[3] ),
        .O(\s_web[3]_i_1_n_0 ));
  FDRE \s_web_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\s_web[3]_i_1_n_0 ),
        .Q(\s_web_reg_n_0_[3] ),
        .R(rst));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 t_state1_carry
       (.CI(1'b0),
        .CO({t_state1_carry_n_0,t_state1_carry_n_1,t_state1_carry_n_2,t_state1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({t_state1_carry_i_1_n_0,t_state1_carry_i_2_n_0,t_state1_carry_i_3_n_0,t_state1_carry_i_4_n_0}),
        .O(NLW_t_state1_carry_O_UNCONNECTED[3:0]),
        .S({t_state1_carry_i_5_n_0,t_state1_carry_i_6_n_0,t_state1_carry_i_7_n_0,t_state1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 t_state1_carry__0
       (.CI(t_state1_carry_n_0),
        .CO({t_state1_carry__0_n_0,t_state1_carry__0_n_1,t_state1_carry__0_n_2,t_state1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({t_state1_carry__0_i_1_n_0,t_state1_carry__0_i_2_n_0,t_state1_carry__0_i_3_n_0,t_state1_carry__0_i_4_n_0}),
        .O(NLW_t_state1_carry__0_O_UNCONNECTED[3:0]),
        .S({t_state1_carry__0_i_5_n_0,t_state1_carry__0_i_6_n_0,t_state1_carry__0_i_7_n_0,t_state1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    t_state1_carry__0_i_1
       (.I0(\s_index_reg_n_0_[14] ),
        .I1(t_state2[14]),
        .I2(t_state2[15]),
        .I3(\s_index_reg_n_0_[15] ),
        .O(t_state1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    t_state1_carry__0_i_2
       (.I0(\s_index_reg_n_0_[12] ),
        .I1(t_state2[12]),
        .I2(t_state2[13]),
        .I3(\s_index_reg_n_0_[13] ),
        .O(t_state1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    t_state1_carry__0_i_3
       (.I0(\s_index_reg_n_0_[10] ),
        .I1(t_state2[10]),
        .I2(t_state2[11]),
        .I3(\s_index_reg_n_0_[11] ),
        .O(t_state1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    t_state1_carry__0_i_4
       (.I0(\s_index_reg_n_0_[8] ),
        .I1(t_state2[8]),
        .I2(t_state2[9]),
        .I3(\s_index_reg_n_0_[9] ),
        .O(t_state1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__0_i_5
       (.I0(\s_index_reg_n_0_[14] ),
        .I1(t_state2[14]),
        .I2(\s_index_reg_n_0_[15] ),
        .I3(t_state2[15]),
        .O(t_state1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__0_i_6
       (.I0(\s_index_reg_n_0_[12] ),
        .I1(t_state2[12]),
        .I2(\s_index_reg_n_0_[13] ),
        .I3(t_state2[13]),
        .O(t_state1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__0_i_7
       (.I0(\s_index_reg_n_0_[10] ),
        .I1(t_state2[10]),
        .I2(\s_index_reg_n_0_[11] ),
        .I3(t_state2[11]),
        .O(t_state1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__0_i_8
       (.I0(\s_index_reg_n_0_[8] ),
        .I1(t_state2[8]),
        .I2(\s_index_reg_n_0_[9] ),
        .I3(t_state2[9]),
        .O(t_state1_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 t_state1_carry__1
       (.CI(t_state1_carry__0_n_0),
        .CO({t_state1_carry__1_n_0,t_state1_carry__1_n_1,t_state1_carry__1_n_2,t_state1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({t_state1_carry__1_i_1_n_0,t_state1_carry__1_i_2_n_0,t_state1_carry__1_i_3_n_0,t_state1_carry__1_i_4_n_0}),
        .O(NLW_t_state1_carry__1_O_UNCONNECTED[3:0]),
        .S({t_state1_carry__1_i_5_n_0,t_state1_carry__1_i_6_n_0,t_state1_carry__1_i_7_n_0,t_state1_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    t_state1_carry__1_i_1
       (.I0(\s_index_reg_n_0_[22] ),
        .I1(t_state2[22]),
        .I2(t_state2[23]),
        .I3(\s_index_reg_n_0_[23] ),
        .O(t_state1_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    t_state1_carry__1_i_2
       (.I0(\s_index_reg_n_0_[20] ),
        .I1(t_state2[20]),
        .I2(t_state2[21]),
        .I3(\s_index_reg_n_0_[21] ),
        .O(t_state1_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    t_state1_carry__1_i_3
       (.I0(\s_index_reg_n_0_[18] ),
        .I1(t_state2[18]),
        .I2(t_state2[19]),
        .I3(\s_index_reg_n_0_[19] ),
        .O(t_state1_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    t_state1_carry__1_i_4
       (.I0(\s_index_reg_n_0_[16] ),
        .I1(t_state2[16]),
        .I2(t_state2[17]),
        .I3(\s_index_reg_n_0_[17] ),
        .O(t_state1_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__1_i_5
       (.I0(\s_index_reg_n_0_[22] ),
        .I1(t_state2[22]),
        .I2(\s_index_reg_n_0_[23] ),
        .I3(t_state2[23]),
        .O(t_state1_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__1_i_6
       (.I0(\s_index_reg_n_0_[20] ),
        .I1(t_state2[20]),
        .I2(\s_index_reg_n_0_[21] ),
        .I3(t_state2[21]),
        .O(t_state1_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__1_i_7
       (.I0(\s_index_reg_n_0_[18] ),
        .I1(t_state2[18]),
        .I2(\s_index_reg_n_0_[19] ),
        .I3(t_state2[19]),
        .O(t_state1_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__1_i_8
       (.I0(\s_index_reg_n_0_[16] ),
        .I1(t_state2[16]),
        .I2(\s_index_reg_n_0_[17] ),
        .I3(t_state2[17]),
        .O(t_state1_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 t_state1_carry__2
       (.CI(t_state1_carry__1_n_0),
        .CO({t_state1_carry__2_n_0,t_state1_carry__2_n_1,t_state1_carry__2_n_2,t_state1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({t_state1_carry__2_i_1_n_0,t_state1_carry__2_i_2_n_0,t_state1_carry__2_i_3_n_0,t_state1_carry__2_i_4_n_0}),
        .O(NLW_t_state1_carry__2_O_UNCONNECTED[3:0]),
        .S({t_state1_carry__2_i_5_n_0,t_state1_carry__2_i_6_n_0,t_state1_carry__2_i_7_n_0,t_state1_carry__2_i_8_n_0}));
  LUT3 #(
    .INIT(8'h2F)) 
    t_state1_carry__2_i_1
       (.I0(\s_index_reg_n_0_[30] ),
        .I1(t_state2[30]),
        .I2(t_state2_carry__6_n_1),
        .O(t_state1_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    t_state1_carry__2_i_2
       (.I0(\s_index_reg_n_0_[28] ),
        .I1(t_state2[28]),
        .I2(t_state2[29]),
        .I3(\s_index_reg_n_0_[29] ),
        .O(t_state1_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    t_state1_carry__2_i_3
       (.I0(\s_index_reg_n_0_[26] ),
        .I1(t_state2[26]),
        .I2(t_state2[27]),
        .I3(\s_index_reg_n_0_[27] ),
        .O(t_state1_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    t_state1_carry__2_i_4
       (.I0(\s_index_reg_n_0_[24] ),
        .I1(t_state2[24]),
        .I2(t_state2[25]),
        .I3(\s_index_reg_n_0_[25] ),
        .O(t_state1_carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'h90)) 
    t_state1_carry__2_i_5
       (.I0(\s_index_reg_n_0_[30] ),
        .I1(t_state2[30]),
        .I2(t_state2_carry__6_n_1),
        .O(t_state1_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__2_i_6
       (.I0(\s_index_reg_n_0_[28] ),
        .I1(t_state2[28]),
        .I2(\s_index_reg_n_0_[29] ),
        .I3(t_state2[29]),
        .O(t_state1_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__2_i_7
       (.I0(\s_index_reg_n_0_[26] ),
        .I1(t_state2[26]),
        .I2(\s_index_reg_n_0_[27] ),
        .I3(t_state2[27]),
        .O(t_state1_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry__2_i_8
       (.I0(\s_index_reg_n_0_[24] ),
        .I1(t_state2[24]),
        .I2(\s_index_reg_n_0_[25] ),
        .I3(t_state2[25]),
        .O(t_state1_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    t_state1_carry_i_1
       (.I0(\s_index_reg_n_0_[6] ),
        .I1(t_state2[6]),
        .I2(t_state2[7]),
        .I3(\s_index_reg_n_0_[7] ),
        .O(t_state1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    t_state1_carry_i_2
       (.I0(\s_index_reg_n_0_[4] ),
        .I1(t_state2[4]),
        .I2(t_state2[5]),
        .I3(\s_index_reg_n_0_[5] ),
        .O(t_state1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    t_state1_carry_i_3
       (.I0(\s_index_reg_n_0_[2] ),
        .I1(t_state2[2]),
        .I2(t_state2[3]),
        .I3(\s_index_reg_n_0_[3] ),
        .O(t_state1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    t_state1_carry_i_4
       (.I0(\s_index_reg_n_0_[0] ),
        .I1(s_max_len[0]),
        .I2(t_state2[1]),
        .I3(\s_index_reg_n_0_[1] ),
        .O(t_state1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry_i_5
       (.I0(\s_index_reg_n_0_[6] ),
        .I1(t_state2[6]),
        .I2(\s_index_reg_n_0_[7] ),
        .I3(t_state2[7]),
        .O(t_state1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry_i_6
       (.I0(\s_index_reg_n_0_[4] ),
        .I1(t_state2[4]),
        .I2(\s_index_reg_n_0_[5] ),
        .I3(t_state2[5]),
        .O(t_state1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry_i_7
       (.I0(\s_index_reg_n_0_[2] ),
        .I1(t_state2[2]),
        .I2(\s_index_reg_n_0_[3] ),
        .I3(t_state2[3]),
        .O(t_state1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    t_state1_carry_i_8
       (.I0(\s_index_reg_n_0_[0] ),
        .I1(s_max_len[0]),
        .I2(\s_index_reg_n_0_[1] ),
        .I3(t_state2[1]),
        .O(t_state1_carry_i_8_n_0));
  CARRY4 t_state2_carry
       (.CI(1'b0),
        .CO({t_state2_carry_n_0,t_state2_carry_n_1,t_state2_carry_n_2,t_state2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({s_max_len[4:2],1'b0}),
        .O(t_state2[4:1]),
        .S({t_state2_carry_i_1_n_0,t_state2_carry_i_2_n_0,t_state2_carry_i_3_n_0,s_max_len[1]}));
  CARRY4 t_state2_carry__0
       (.CI(t_state2_carry_n_0),
        .CO({t_state2_carry__0_n_0,t_state2_carry__0_n_1,t_state2_carry__0_n_2,t_state2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(s_max_len[8:5]),
        .O(t_state2[8:5]),
        .S({t_state2_carry__0_i_1_n_0,t_state2_carry__0_i_2_n_0,t_state2_carry__0_i_3_n_0,t_state2_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__0_i_1
       (.I0(s_max_len[8]),
        .O(t_state2_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__0_i_2
       (.I0(s_max_len[7]),
        .O(t_state2_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__0_i_3
       (.I0(s_max_len[6]),
        .O(t_state2_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__0_i_4
       (.I0(s_max_len[5]),
        .O(t_state2_carry__0_i_4_n_0));
  CARRY4 t_state2_carry__1
       (.CI(t_state2_carry__0_n_0),
        .CO({t_state2_carry__1_n_0,t_state2_carry__1_n_1,t_state2_carry__1_n_2,t_state2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(s_max_len[12:9]),
        .O(t_state2[12:9]),
        .S({t_state2_carry__1_i_1_n_0,t_state2_carry__1_i_2_n_0,t_state2_carry__1_i_3_n_0,t_state2_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__1_i_1
       (.I0(s_max_len[12]),
        .O(t_state2_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__1_i_2
       (.I0(s_max_len[11]),
        .O(t_state2_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__1_i_3
       (.I0(s_max_len[10]),
        .O(t_state2_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__1_i_4
       (.I0(s_max_len[9]),
        .O(t_state2_carry__1_i_4_n_0));
  CARRY4 t_state2_carry__2
       (.CI(t_state2_carry__1_n_0),
        .CO({t_state2_carry__2_n_0,t_state2_carry__2_n_1,t_state2_carry__2_n_2,t_state2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(s_max_len[16:13]),
        .O(t_state2[16:13]),
        .S({t_state2_carry__2_i_1_n_0,t_state2_carry__2_i_2_n_0,t_state2_carry__2_i_3_n_0,t_state2_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__2_i_1
       (.I0(s_max_len[16]),
        .O(t_state2_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__2_i_2
       (.I0(s_max_len[15]),
        .O(t_state2_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__2_i_3
       (.I0(s_max_len[14]),
        .O(t_state2_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__2_i_4
       (.I0(s_max_len[13]),
        .O(t_state2_carry__2_i_4_n_0));
  CARRY4 t_state2_carry__3
       (.CI(t_state2_carry__2_n_0),
        .CO({t_state2_carry__3_n_0,t_state2_carry__3_n_1,t_state2_carry__3_n_2,t_state2_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(s_max_len[20:17]),
        .O(t_state2[20:17]),
        .S({t_state2_carry__3_i_1_n_0,t_state2_carry__3_i_2_n_0,t_state2_carry__3_i_3_n_0,t_state2_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__3_i_1
       (.I0(s_max_len[20]),
        .O(t_state2_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__3_i_2
       (.I0(s_max_len[19]),
        .O(t_state2_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__3_i_3
       (.I0(s_max_len[18]),
        .O(t_state2_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__3_i_4
       (.I0(s_max_len[17]),
        .O(t_state2_carry__3_i_4_n_0));
  CARRY4 t_state2_carry__4
       (.CI(t_state2_carry__3_n_0),
        .CO({t_state2_carry__4_n_0,t_state2_carry__4_n_1,t_state2_carry__4_n_2,t_state2_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(s_max_len[24:21]),
        .O(t_state2[24:21]),
        .S({t_state2_carry__4_i_1_n_0,t_state2_carry__4_i_2_n_0,t_state2_carry__4_i_3_n_0,t_state2_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__4_i_1
       (.I0(s_max_len[24]),
        .O(t_state2_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__4_i_2
       (.I0(s_max_len[23]),
        .O(t_state2_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__4_i_3
       (.I0(s_max_len[22]),
        .O(t_state2_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__4_i_4
       (.I0(s_max_len[21]),
        .O(t_state2_carry__4_i_4_n_0));
  CARRY4 t_state2_carry__5
       (.CI(t_state2_carry__4_n_0),
        .CO({t_state2_carry__5_n_0,t_state2_carry__5_n_1,t_state2_carry__5_n_2,t_state2_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(s_max_len[28:25]),
        .O(t_state2[28:25]),
        .S({t_state2_carry__5_i_1_n_0,t_state2_carry__5_i_2_n_0,t_state2_carry__5_i_3_n_0,t_state2_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__5_i_1
       (.I0(s_max_len[28]),
        .O(t_state2_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__5_i_2
       (.I0(s_max_len[27]),
        .O(t_state2_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__5_i_3
       (.I0(s_max_len[26]),
        .O(t_state2_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__5_i_4
       (.I0(s_max_len[25]),
        .O(t_state2_carry__5_i_4_n_0));
  CARRY4 t_state2_carry__6
       (.CI(t_state2_carry__5_n_0),
        .CO({NLW_t_state2_carry__6_CO_UNCONNECTED[3],t_state2_carry__6_n_1,NLW_t_state2_carry__6_CO_UNCONNECTED[1],t_state2_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s_max_len[30:29]}),
        .O({NLW_t_state2_carry__6_O_UNCONNECTED[3:2],t_state2[30:29]}),
        .S({1'b0,1'b1,t_state2_carry__6_i_1_n_0,t_state2_carry__6_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__6_i_1
       (.I0(s_max_len[30]),
        .O(t_state2_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry__6_i_2
       (.I0(s_max_len[29]),
        .O(t_state2_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry_i_1
       (.I0(s_max_len[4]),
        .O(t_state2_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry_i_2
       (.I0(s_max_len[3]),
        .O(t_state2_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    t_state2_carry_i_3
       (.I0(s_max_len[2]),
        .O(t_state2_carry_i_3_n_0));
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
