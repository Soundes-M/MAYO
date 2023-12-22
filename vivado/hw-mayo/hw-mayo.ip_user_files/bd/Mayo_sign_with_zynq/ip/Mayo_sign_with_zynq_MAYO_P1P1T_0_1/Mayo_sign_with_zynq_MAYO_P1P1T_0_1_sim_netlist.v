// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sat Dec  9 16:23:43 2023
// Host        : zenith running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/osm/Documents/Sect/SECT-MAYO/MAYO/vivado/hw-mayo/hw-mayo.gen/sources_1/bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_MAYO_P1P1T_0_1/Mayo_sign_with_zynq_MAYO_P1P1T_0_1_sim_netlist.v
// Design      : Mayo_sign_with_zynq_MAYO_P1P1T_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Mayo_sign_with_zynq_MAYO_P1P1T_0_1,MAYO_P1P1T,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "MAYO_P1P1T,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Mayo_sign_with_zynq_MAYO_P1P1T_0_1
   (clk,
    rst,
    enable,
    o_done,
    i_src_adr,
    i_dsta_adr,
    i_dstb_adr,
    i_ji_equal,
    i_mem0b_dout,
    o_mem0b_din,
    o_mem0b_addr,
    o_mem0b_en,
    o_mem0b_rst,
    o_mem0b_we,
    o_control0b,
    i_mem1a_dout,
    o_mem1a_din,
    o_mem1a_addr,
    o_mem1a_en,
    o_mem1a_rst,
    o_mem1a_we,
    o_control1a);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN Mayo_sign_with_zynq_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  input enable;
  output o_done;
  input [31:0]i_src_adr;
  input [31:0]i_dsta_adr;
  input [31:0]i_dstb_adr;
  input i_ji_equal;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_P1P1T1b DOUT" *) input [31:0]i_mem0b_dout;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_P1P1T1b DIN" *) output [31:0]o_mem0b_din;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_P1P1T1b ADDR" *) output [31:0]o_mem0b_addr;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_P1P1T1b EN" *) output o_mem0b_en;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_P1P1T1b RST" *) output o_mem0b_rst;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_P1P1T1b WE" *) output [3:0]o_mem0b_we;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_P1P1T1b CTRL" *) output o_control0b;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_P1P1T2a DOUT" *) input [31:0]i_mem1a_dout;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_P1P1T2a DIN" *) output [31:0]o_mem1a_din;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_P1P1T2a ADDR" *) output [31:0]o_mem1a_addr;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_P1P1T2a EN" *) output o_mem1a_en;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_P1P1T2a RST" *) output o_mem1a_rst;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_P1P1T2a WE" *) output [3:0]o_mem1a_we;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_P1P1T2a CTRL" *) output o_control1a;

  wire \<const0> ;
  wire clk;
  wire enable;
  wire [31:0]i_dsta_adr;
  wire [31:0]i_dstb_adr;
  wire i_ji_equal;
  wire [31:0]i_mem0b_dout;
  wire [31:0]i_src_adr;
  wire o_control0b;
  wire o_control1a;
  wire o_done;
  wire [31:0]o_mem0b_addr;
  wire o_mem0b_en;
  wire [31:0]o_mem1a_addr;
  wire [31:0]o_mem1a_din;
  wire [3:3]\^o_mem1a_we ;
  wire rst;

  assign o_mem0b_din[31] = \<const0> ;
  assign o_mem0b_din[30] = \<const0> ;
  assign o_mem0b_din[29] = \<const0> ;
  assign o_mem0b_din[28] = \<const0> ;
  assign o_mem0b_din[27] = \<const0> ;
  assign o_mem0b_din[26] = \<const0> ;
  assign o_mem0b_din[25] = \<const0> ;
  assign o_mem0b_din[24] = \<const0> ;
  assign o_mem0b_din[23] = \<const0> ;
  assign o_mem0b_din[22] = \<const0> ;
  assign o_mem0b_din[21] = \<const0> ;
  assign o_mem0b_din[20] = \<const0> ;
  assign o_mem0b_din[19] = \<const0> ;
  assign o_mem0b_din[18] = \<const0> ;
  assign o_mem0b_din[17] = \<const0> ;
  assign o_mem0b_din[16] = \<const0> ;
  assign o_mem0b_din[15] = \<const0> ;
  assign o_mem0b_din[14] = \<const0> ;
  assign o_mem0b_din[13] = \<const0> ;
  assign o_mem0b_din[12] = \<const0> ;
  assign o_mem0b_din[11] = \<const0> ;
  assign o_mem0b_din[10] = \<const0> ;
  assign o_mem0b_din[9] = \<const0> ;
  assign o_mem0b_din[8] = \<const0> ;
  assign o_mem0b_din[7] = \<const0> ;
  assign o_mem0b_din[6] = \<const0> ;
  assign o_mem0b_din[5] = \<const0> ;
  assign o_mem0b_din[4] = \<const0> ;
  assign o_mem0b_din[3] = \<const0> ;
  assign o_mem0b_din[2] = \<const0> ;
  assign o_mem0b_din[1] = \<const0> ;
  assign o_mem0b_din[0] = \<const0> ;
  assign o_mem0b_rst = \<const0> ;
  assign o_mem0b_we[3] = \<const0> ;
  assign o_mem0b_we[2] = \<const0> ;
  assign o_mem0b_we[1] = \<const0> ;
  assign o_mem0b_we[0] = \<const0> ;
  assign o_mem1a_en = \^o_mem1a_we [3];
  assign o_mem1a_rst = \<const0> ;
  assign o_mem1a_we[3] = \^o_mem1a_we [3];
  assign o_mem1a_we[2] = \^o_mem1a_we [3];
  assign o_mem1a_we[1] = \^o_mem1a_we [3];
  assign o_mem1a_we[0] = \^o_mem1a_we [3];
  GND GND
       (.G(\<const0> ));
  Mayo_sign_with_zynq_MAYO_P1P1T_0_1_MAYO_P1P1T U0
       (.clk(clk),
        .enable(enable),
        .i_dsta_adr(i_dsta_adr),
        .i_dstb_adr(i_dstb_adr),
        .i_ji_equal(i_ji_equal),
        .i_mem0b_dout(i_mem0b_dout),
        .i_src_adr(i_src_adr),
        .o_control0b(o_control0b),
        .o_control1a(o_control1a),
        .o_done(o_done),
        .o_mem0b_addr(o_mem0b_addr),
        .o_mem0b_en(o_mem0b_en),
        .o_mem1a_addr(o_mem1a_addr),
        .o_mem1a_din(o_mem1a_din),
        .o_mem1a_we(\^o_mem1a_we ),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "MAYO_P1P1T" *) 
module Mayo_sign_with_zynq_MAYO_P1P1T_0_1_MAYO_P1P1T
   (o_mem0b_addr,
    o_mem1a_din,
    o_mem1a_addr,
    o_done,
    o_mem0b_en,
    o_control0b,
    o_control1a,
    o_mem1a_we,
    rst,
    clk,
    enable,
    i_src_adr,
    i_mem0b_dout,
    i_dsta_adr,
    i_dstb_adr,
    i_ji_equal);
  output [31:0]o_mem0b_addr;
  output [31:0]o_mem1a_din;
  output [31:0]o_mem1a_addr;
  output o_done;
  output o_mem0b_en;
  output o_control0b;
  output o_control1a;
  output [0:0]o_mem1a_we;
  input rst;
  input clk;
  input enable;
  input [31:0]i_src_adr;
  input [31:0]i_mem0b_dout;
  input [31:0]i_dsta_adr;
  input [31:0]i_dstb_adr;
  input i_ji_equal;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire [31:0]\bram0b[o][o_addr] ;
  wire \bram0b[o][o_addr][31]_i_1_n_0 ;
  wire \bram0b[o][o_en]_i_1_n_0 ;
  wire \bram1a[o][o_addr] ;
  wire [31:1]\bram1a[o][o_addr]0_in ;
  wire \bram1a[o][o_addr][0]_i_1_n_0 ;
  wire \bram1a[o][o_addr][12]_i_2_n_0 ;
  wire \bram1a[o][o_addr][12]_i_3_n_0 ;
  wire \bram1a[o][o_addr][12]_i_4_n_0 ;
  wire \bram1a[o][o_addr][12]_i_5_n_0 ;
  wire \bram1a[o][o_addr][16]_i_2_n_0 ;
  wire \bram1a[o][o_addr][16]_i_3_n_0 ;
  wire \bram1a[o][o_addr][16]_i_4_n_0 ;
  wire \bram1a[o][o_addr][16]_i_5_n_0 ;
  wire \bram1a[o][o_addr][20]_i_2_n_0 ;
  wire \bram1a[o][o_addr][20]_i_3_n_0 ;
  wire \bram1a[o][o_addr][20]_i_4_n_0 ;
  wire \bram1a[o][o_addr][20]_i_5_n_0 ;
  wire \bram1a[o][o_addr][24]_i_2_n_0 ;
  wire \bram1a[o][o_addr][24]_i_3_n_0 ;
  wire \bram1a[o][o_addr][24]_i_4_n_0 ;
  wire \bram1a[o][o_addr][24]_i_5_n_0 ;
  wire \bram1a[o][o_addr][28]_i_2_n_0 ;
  wire \bram1a[o][o_addr][28]_i_3_n_0 ;
  wire \bram1a[o][o_addr][28]_i_4_n_0 ;
  wire \bram1a[o][o_addr][28]_i_5_n_0 ;
  wire \bram1a[o][o_addr][31]_i_3_n_0 ;
  wire \bram1a[o][o_addr][31]_i_4_n_0 ;
  wire \bram1a[o][o_addr][31]_i_5_n_0 ;
  wire \bram1a[o][o_addr][4]_i_2_n_0 ;
  wire \bram1a[o][o_addr][4]_i_3_n_0 ;
  wire \bram1a[o][o_addr][4]_i_4_n_0 ;
  wire \bram1a[o][o_addr][4]_i_5_n_0 ;
  wire \bram1a[o][o_addr][8]_i_2_n_0 ;
  wire \bram1a[o][o_addr][8]_i_3_n_0 ;
  wire \bram1a[o][o_addr][8]_i_4_n_0 ;
  wire \bram1a[o][o_addr][8]_i_5_n_0 ;
  wire \bram1a[o][o_din]0 ;
  wire [31:0]\bram1a[o][o_din]0_in ;
  wire \bram1a[o][o_din][31]_i_1_n_0 ;
  wire \bram1a[o][o_en]_i_1_n_0 ;
  wire \bram1a_reg[o][o_addr][12]_i_1_n_0 ;
  wire \bram1a_reg[o][o_addr][12]_i_1_n_1 ;
  wire \bram1a_reg[o][o_addr][12]_i_1_n_2 ;
  wire \bram1a_reg[o][o_addr][12]_i_1_n_3 ;
  wire \bram1a_reg[o][o_addr][16]_i_1_n_0 ;
  wire \bram1a_reg[o][o_addr][16]_i_1_n_1 ;
  wire \bram1a_reg[o][o_addr][16]_i_1_n_2 ;
  wire \bram1a_reg[o][o_addr][16]_i_1_n_3 ;
  wire \bram1a_reg[o][o_addr][20]_i_1_n_0 ;
  wire \bram1a_reg[o][o_addr][20]_i_1_n_1 ;
  wire \bram1a_reg[o][o_addr][20]_i_1_n_2 ;
  wire \bram1a_reg[o][o_addr][20]_i_1_n_3 ;
  wire \bram1a_reg[o][o_addr][24]_i_1_n_0 ;
  wire \bram1a_reg[o][o_addr][24]_i_1_n_1 ;
  wire \bram1a_reg[o][o_addr][24]_i_1_n_2 ;
  wire \bram1a_reg[o][o_addr][24]_i_1_n_3 ;
  wire \bram1a_reg[o][o_addr][28]_i_1_n_0 ;
  wire \bram1a_reg[o][o_addr][28]_i_1_n_1 ;
  wire \bram1a_reg[o][o_addr][28]_i_1_n_2 ;
  wire \bram1a_reg[o][o_addr][28]_i_1_n_3 ;
  wire \bram1a_reg[o][o_addr][31]_i_2_n_2 ;
  wire \bram1a_reg[o][o_addr][31]_i_2_n_3 ;
  wire \bram1a_reg[o][o_addr][4]_i_1_n_0 ;
  wire \bram1a_reg[o][o_addr][4]_i_1_n_1 ;
  wire \bram1a_reg[o][o_addr][4]_i_1_n_2 ;
  wire \bram1a_reg[o][o_addr][4]_i_1_n_3 ;
  wire \bram1a_reg[o][o_addr][8]_i_1_n_0 ;
  wire \bram1a_reg[o][o_addr][8]_i_1_n_1 ;
  wire \bram1a_reg[o][o_addr][8]_i_1_n_2 ;
  wire \bram1a_reg[o][o_addr][8]_i_1_n_3 ;
  wire clk;
  wire [31:1]copy_index;
  wire \copy_index0_inferred__0/i__carry__0_n_0 ;
  wire \copy_index0_inferred__0/i__carry__0_n_1 ;
  wire \copy_index0_inferred__0/i__carry__0_n_2 ;
  wire \copy_index0_inferred__0/i__carry__0_n_3 ;
  wire \copy_index0_inferred__0/i__carry__1_n_0 ;
  wire \copy_index0_inferred__0/i__carry__1_n_1 ;
  wire \copy_index0_inferred__0/i__carry__1_n_2 ;
  wire \copy_index0_inferred__0/i__carry__1_n_3 ;
  wire \copy_index0_inferred__0/i__carry__2_n_1 ;
  wire \copy_index0_inferred__0/i__carry__2_n_2 ;
  wire \copy_index0_inferred__0/i__carry__2_n_3 ;
  wire \copy_index0_inferred__0/i__carry_n_0 ;
  wire \copy_index0_inferred__0/i__carry_n_1 ;
  wire \copy_index0_inferred__0/i__carry_n_2 ;
  wire \copy_index0_inferred__0/i__carry_n_3 ;
  wire \copy_index[31]_i_1_n_0 ;
  wire \copy_index[4]_i_3_n_0 ;
  wire \copy_index_reg[12]_i_2_n_0 ;
  wire \copy_index_reg[12]_i_2_n_1 ;
  wire \copy_index_reg[12]_i_2_n_2 ;
  wire \copy_index_reg[12]_i_2_n_3 ;
  wire \copy_index_reg[16]_i_2_n_0 ;
  wire \copy_index_reg[16]_i_2_n_1 ;
  wire \copy_index_reg[16]_i_2_n_2 ;
  wire \copy_index_reg[16]_i_2_n_3 ;
  wire \copy_index_reg[20]_i_2_n_0 ;
  wire \copy_index_reg[20]_i_2_n_1 ;
  wire \copy_index_reg[20]_i_2_n_2 ;
  wire \copy_index_reg[20]_i_2_n_3 ;
  wire \copy_index_reg[24]_i_2_n_0 ;
  wire \copy_index_reg[24]_i_2_n_1 ;
  wire \copy_index_reg[24]_i_2_n_2 ;
  wire \copy_index_reg[24]_i_2_n_3 ;
  wire \copy_index_reg[28]_i_2_n_0 ;
  wire \copy_index_reg[28]_i_2_n_1 ;
  wire \copy_index_reg[28]_i_2_n_2 ;
  wire \copy_index_reg[28]_i_2_n_3 ;
  wire \copy_index_reg[31]_i_3_n_2 ;
  wire \copy_index_reg[31]_i_3_n_3 ;
  wire \copy_index_reg[4]_i_2_n_0 ;
  wire \copy_index_reg[4]_i_2_n_1 ;
  wire \copy_index_reg[4]_i_2_n_2 ;
  wire \copy_index_reg[4]_i_2_n_3 ;
  wire \copy_index_reg[8]_i_2_n_0 ;
  wire \copy_index_reg[8]_i_2_n_1 ;
  wire \copy_index_reg[8]_i_2_n_2 ;
  wire \copy_index_reg[8]_i_2_n_3 ;
  wire \copy_index_reg_n_0_[10] ;
  wire \copy_index_reg_n_0_[11] ;
  wire \copy_index_reg_n_0_[12] ;
  wire \copy_index_reg_n_0_[13] ;
  wire \copy_index_reg_n_0_[14] ;
  wire \copy_index_reg_n_0_[15] ;
  wire \copy_index_reg_n_0_[16] ;
  wire \copy_index_reg_n_0_[17] ;
  wire \copy_index_reg_n_0_[18] ;
  wire \copy_index_reg_n_0_[19] ;
  wire \copy_index_reg_n_0_[1] ;
  wire \copy_index_reg_n_0_[20] ;
  wire \copy_index_reg_n_0_[21] ;
  wire \copy_index_reg_n_0_[22] ;
  wire \copy_index_reg_n_0_[23] ;
  wire \copy_index_reg_n_0_[24] ;
  wire \copy_index_reg_n_0_[25] ;
  wire \copy_index_reg_n_0_[26] ;
  wire \copy_index_reg_n_0_[27] ;
  wire \copy_index_reg_n_0_[28] ;
  wire \copy_index_reg_n_0_[29] ;
  wire \copy_index_reg_n_0_[2] ;
  wire \copy_index_reg_n_0_[30] ;
  wire \copy_index_reg_n_0_[31] ;
  wire \copy_index_reg_n_0_[3] ;
  wire \copy_index_reg_n_0_[4] ;
  wire \copy_index_reg_n_0_[5] ;
  wire \copy_index_reg_n_0_[6] ;
  wire \copy_index_reg_n_0_[7] ;
  wire \copy_index_reg_n_0_[8] ;
  wire \copy_index_reg_n_0_[9] ;
  wire enable;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4__0_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1__0_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2__0_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3__0_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6_n_0;
  wire [31:0]i_dsta_adr;
  wire [31:0]i_dstb_adr;
  wire i_ji_equal;
  wire [31:0]i_mem0b_dout;
  wire [31:0]i_src_adr;
  wire [31:1]in10;
  wire [31:1]in4;
  wire [31:1]in6;
  wire o_control0b;
  wire o_control0b_i_1_n_0;
  wire o_control1a;
  wire o_control1a_i_1_n_0;
  wire o_done;
  wire o_done_i_1_n_0;
  wire o_done_i_2_n_0;
  wire [31:0]o_mem0b_addr;
  wire o_mem0b_en;
  wire [31:0]o_mem1a_addr;
  wire [31:0]o_mem1a_din;
  wire [0:0]o_mem1a_we;
  wire p1_in;
  wire \p1_in_reg_n_0_[15] ;
  wire \p1_in_reg_n_0_[23] ;
  wire \p1_in_reg_n_0_[31] ;
  wire \p1_in_reg_n_0_[7] ;
  wire [7:1]p_0_in;
  wire [31:1]p_0_out;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__3_n_0;
  wire plusOp_carry__3_n_1;
  wire plusOp_carry__3_n_2;
  wire plusOp_carry__3_n_3;
  wire plusOp_carry__4_n_0;
  wire plusOp_carry__4_n_1;
  wire plusOp_carry__4_n_2;
  wire plusOp_carry__4_n_3;
  wire plusOp_carry__5_n_0;
  wire plusOp_carry__5_n_1;
  wire plusOp_carry__5_n_2;
  wire plusOp_carry__5_n_3;
  wire plusOp_carry__6_n_2;
  wire plusOp_carry__6_n_3;
  wire plusOp_carry_i_1_n_0;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire rst;
  wire [31:0]s_dsta_adr;
  wire [31:0]s_dstb_adr;
  wire s_dstb_adr_1;
  wire s_ji_eq_reg_n_0;
  wire [31:0]s_src_adr;
  wire s_src_adr_0;
  wire start_main;
  wire start_main0_carry__0_i_1_n_0;
  wire start_main0_carry__0_i_2_n_0;
  wire start_main0_carry__0_i_3_n_0;
  wire start_main0_carry__0_i_4_n_0;
  wire start_main0_carry__0_i_5_n_0;
  wire start_main0_carry__0_i_6_n_0;
  wire start_main0_carry__0_i_7_n_0;
  wire start_main0_carry__0_i_8_n_0;
  wire start_main0_carry__0_n_0;
  wire start_main0_carry__0_n_1;
  wire start_main0_carry__0_n_2;
  wire start_main0_carry__0_n_3;
  wire start_main0_carry__1_i_1_n_0;
  wire start_main0_carry__1_i_2_n_0;
  wire start_main0_carry__1_i_3_n_0;
  wire start_main0_carry__1_i_4_n_0;
  wire start_main0_carry__1_i_5_n_0;
  wire start_main0_carry__1_i_6_n_0;
  wire start_main0_carry__1_i_7_n_0;
  wire start_main0_carry__1_i_8_n_0;
  wire start_main0_carry__1_n_0;
  wire start_main0_carry__1_n_1;
  wire start_main0_carry__1_n_2;
  wire start_main0_carry__1_n_3;
  wire start_main0_carry__2_i_1_n_0;
  wire start_main0_carry__2_i_2_n_0;
  wire start_main0_carry__2_i_3_n_0;
  wire start_main0_carry__2_i_4_n_0;
  wire start_main0_carry__2_i_5_n_0;
  wire start_main0_carry__2_i_6_n_0;
  wire start_main0_carry__2_i_7_n_0;
  wire start_main0_carry__2_i_8_n_0;
  wire start_main0_carry__2_n_1;
  wire start_main0_carry__2_n_2;
  wire start_main0_carry__2_n_3;
  wire start_main0_carry_i_1_n_0;
  wire start_main0_carry_i_2_n_0;
  wire start_main0_carry_i_3_n_0;
  wire start_main0_carry_i_4_n_0;
  wire start_main0_carry_i_5_n_0;
  wire start_main0_carry_i_6_n_0;
  wire start_main0_carry_n_0;
  wire start_main0_carry_n_1;
  wire start_main0_carry_n_2;
  wire start_main0_carry_n_3;
  wire [2:0]state1;
  wire [2:0]state1__0;
  wire [2:0]state__0;
  wire \tmp0_reg_n_0_[17] ;
  wire \tmp0_reg_n_0_[18] ;
  wire \tmp0_reg_n_0_[19] ;
  wire \tmp0_reg_n_0_[1] ;
  wire \tmp0_reg_n_0_[20] ;
  wire \tmp0_reg_n_0_[21] ;
  wire \tmp0_reg_n_0_[22] ;
  wire \tmp0_reg_n_0_[23] ;
  wire \tmp0_reg_n_0_[25] ;
  wire \tmp0_reg_n_0_[26] ;
  wire \tmp0_reg_n_0_[27] ;
  wire \tmp0_reg_n_0_[28] ;
  wire \tmp0_reg_n_0_[29] ;
  wire \tmp0_reg_n_0_[2] ;
  wire \tmp0_reg_n_0_[30] ;
  wire \tmp0_reg_n_0_[31] ;
  wire \tmp0_reg_n_0_[3] ;
  wire \tmp0_reg_n_0_[4] ;
  wire \tmp0_reg_n_0_[5] ;
  wire \tmp0_reg_n_0_[6] ;
  wire \tmp0_reg_n_0_[7] ;
  wire [28:0]tmp1;
  wire [4:0]tmp10;
  wire \tmp1[0]_i_1_n_0 ;
  wire \tmp1[10]_i_1_n_0 ;
  wire \tmp1[11]_i_1_n_0 ;
  wire \tmp1[12]_i_12_n_0 ;
  wire \tmp1[12]_i_13_n_0 ;
  wire \tmp1[12]_i_14_n_0 ;
  wire \tmp1[12]_i_15_n_0 ;
  wire \tmp1[12]_i_16_n_0 ;
  wire \tmp1[12]_i_17_n_0 ;
  wire \tmp1[12]_i_18_n_0 ;
  wire \tmp1[12]_i_1_n_0 ;
  wire \tmp1[12]_i_4_n_0 ;
  wire \tmp1[12]_i_5_n_0 ;
  wire \tmp1[12]_i_6_n_0 ;
  wire \tmp1[12]_i_7_n_0 ;
  wire \tmp1[12]_i_8_n_0 ;
  wire \tmp1[12]_i_9_n_0 ;
  wire \tmp1[16]_i_1_n_0 ;
  wire \tmp1[17]_i_1_n_0 ;
  wire \tmp1[18]_i_1_n_0 ;
  wire \tmp1[19]_i_1_n_0 ;
  wire \tmp1[1]_i_1_n_0 ;
  wire \tmp1[20]_i_12_n_0 ;
  wire \tmp1[20]_i_13_n_0 ;
  wire \tmp1[20]_i_14_n_0 ;
  wire \tmp1[20]_i_15_n_0 ;
  wire \tmp1[20]_i_16_n_0 ;
  wire \tmp1[20]_i_17_n_0 ;
  wire \tmp1[20]_i_18_n_0 ;
  wire \tmp1[20]_i_1_n_0 ;
  wire \tmp1[20]_i_4_n_0 ;
  wire \tmp1[20]_i_5_n_0 ;
  wire \tmp1[20]_i_6_n_0 ;
  wire \tmp1[20]_i_7_n_0 ;
  wire \tmp1[20]_i_8_n_0 ;
  wire \tmp1[20]_i_9_n_0 ;
  wire \tmp1[28]_i_12_n_0 ;
  wire \tmp1[28]_i_13_n_0 ;
  wire \tmp1[28]_i_14_n_0 ;
  wire \tmp1[28]_i_15_n_0 ;
  wire \tmp1[28]_i_16_n_0 ;
  wire \tmp1[28]_i_17_n_0 ;
  wire \tmp1[28]_i_18_n_0 ;
  wire \tmp1[28]_i_4_n_0 ;
  wire \tmp1[28]_i_5_n_0 ;
  wire \tmp1[28]_i_6_n_0 ;
  wire \tmp1[28]_i_7_n_0 ;
  wire \tmp1[28]_i_8_n_0 ;
  wire \tmp1[28]_i_9_n_0 ;
  wire \tmp1[2]_i_1_n_0 ;
  wire \tmp1[3]_i_1_n_0 ;
  wire \tmp1[4]_i_12_n_0 ;
  wire \tmp1[4]_i_13_n_0 ;
  wire \tmp1[4]_i_14_n_0 ;
  wire \tmp1[4]_i_15_n_0 ;
  wire \tmp1[4]_i_16_n_0 ;
  wire \tmp1[4]_i_17_n_0 ;
  wire \tmp1[4]_i_18_n_0 ;
  wire \tmp1[4]_i_1_n_0 ;
  wire \tmp1[4]_i_4_n_0 ;
  wire \tmp1[4]_i_5_n_0 ;
  wire \tmp1[4]_i_6_n_0 ;
  wire \tmp1[4]_i_7_n_0 ;
  wire \tmp1[4]_i_8_n_0 ;
  wire \tmp1[4]_i_9_n_0 ;
  wire \tmp1[8]_i_1_n_0 ;
  wire \tmp1[9]_i_1_n_0 ;
  wire \tmp1_reg[12]_i_10_n_0 ;
  wire \tmp1_reg[12]_i_10_n_1 ;
  wire \tmp1_reg[12]_i_10_n_2 ;
  wire \tmp1_reg[12]_i_10_n_3 ;
  wire \tmp1_reg[12]_i_10_n_4 ;
  wire \tmp1_reg[12]_i_10_n_5 ;
  wire \tmp1_reg[12]_i_10_n_6 ;
  wire \tmp1_reg[12]_i_10_n_7 ;
  wire \tmp1_reg[12]_i_11_n_3 ;
  wire \tmp1_reg[12]_i_11_n_6 ;
  wire \tmp1_reg[12]_i_11_n_7 ;
  wire \tmp1_reg[12]_i_2_n_0 ;
  wire \tmp1_reg[12]_i_2_n_1 ;
  wire \tmp1_reg[12]_i_2_n_2 ;
  wire \tmp1_reg[12]_i_2_n_3 ;
  wire \tmp1_reg[12]_i_2_n_4 ;
  wire \tmp1_reg[12]_i_2_n_5 ;
  wire \tmp1_reg[12]_i_2_n_6 ;
  wire \tmp1_reg[12]_i_2_n_7 ;
  wire \tmp1_reg[12]_i_3_n_3 ;
  wire \tmp1_reg[12]_i_3_n_6 ;
  wire \tmp1_reg[12]_i_3_n_7 ;
  wire \tmp1_reg[20]_i_10_n_0 ;
  wire \tmp1_reg[20]_i_10_n_1 ;
  wire \tmp1_reg[20]_i_10_n_2 ;
  wire \tmp1_reg[20]_i_10_n_3 ;
  wire \tmp1_reg[20]_i_10_n_4 ;
  wire \tmp1_reg[20]_i_10_n_5 ;
  wire \tmp1_reg[20]_i_10_n_6 ;
  wire \tmp1_reg[20]_i_10_n_7 ;
  wire \tmp1_reg[20]_i_11_n_3 ;
  wire \tmp1_reg[20]_i_11_n_6 ;
  wire \tmp1_reg[20]_i_11_n_7 ;
  wire \tmp1_reg[20]_i_2_n_0 ;
  wire \tmp1_reg[20]_i_2_n_1 ;
  wire \tmp1_reg[20]_i_2_n_2 ;
  wire \tmp1_reg[20]_i_2_n_3 ;
  wire \tmp1_reg[20]_i_2_n_4 ;
  wire \tmp1_reg[20]_i_2_n_5 ;
  wire \tmp1_reg[20]_i_2_n_6 ;
  wire \tmp1_reg[20]_i_2_n_7 ;
  wire \tmp1_reg[20]_i_3_n_3 ;
  wire \tmp1_reg[20]_i_3_n_6 ;
  wire \tmp1_reg[20]_i_3_n_7 ;
  wire \tmp1_reg[28]_i_10_n_0 ;
  wire \tmp1_reg[28]_i_10_n_1 ;
  wire \tmp1_reg[28]_i_10_n_2 ;
  wire \tmp1_reg[28]_i_10_n_3 ;
  wire \tmp1_reg[28]_i_10_n_4 ;
  wire \tmp1_reg[28]_i_10_n_5 ;
  wire \tmp1_reg[28]_i_10_n_6 ;
  wire \tmp1_reg[28]_i_10_n_7 ;
  wire \tmp1_reg[28]_i_11_n_3 ;
  wire \tmp1_reg[28]_i_11_n_6 ;
  wire \tmp1_reg[28]_i_11_n_7 ;
  wire \tmp1_reg[28]_i_2_n_0 ;
  wire \tmp1_reg[28]_i_2_n_1 ;
  wire \tmp1_reg[28]_i_2_n_2 ;
  wire \tmp1_reg[28]_i_2_n_3 ;
  wire \tmp1_reg[28]_i_2_n_4 ;
  wire \tmp1_reg[28]_i_2_n_5 ;
  wire \tmp1_reg[28]_i_2_n_6 ;
  wire \tmp1_reg[28]_i_2_n_7 ;
  wire \tmp1_reg[28]_i_3_n_3 ;
  wire \tmp1_reg[28]_i_3_n_6 ;
  wire \tmp1_reg[28]_i_3_n_7 ;
  wire \tmp1_reg[4]_i_10_n_0 ;
  wire \tmp1_reg[4]_i_10_n_1 ;
  wire \tmp1_reg[4]_i_10_n_2 ;
  wire \tmp1_reg[4]_i_10_n_3 ;
  wire \tmp1_reg[4]_i_10_n_4 ;
  wire \tmp1_reg[4]_i_10_n_5 ;
  wire \tmp1_reg[4]_i_10_n_6 ;
  wire \tmp1_reg[4]_i_10_n_7 ;
  wire \tmp1_reg[4]_i_11_n_3 ;
  wire \tmp1_reg[4]_i_11_n_6 ;
  wire \tmp1_reg[4]_i_11_n_7 ;
  wire \tmp1_reg[4]_i_2_n_0 ;
  wire \tmp1_reg[4]_i_2_n_1 ;
  wire \tmp1_reg[4]_i_2_n_2 ;
  wire \tmp1_reg[4]_i_2_n_3 ;
  wire \tmp1_reg[4]_i_2_n_4 ;
  wire \tmp1_reg[4]_i_2_n_5 ;
  wire \tmp1_reg[4]_i_2_n_6 ;
  wire \tmp1_reg[4]_i_2_n_7 ;
  wire \tmp1_reg[4]_i_3_n_3 ;
  wire \tmp1_reg[4]_i_3_n_6 ;
  wire \tmp1_reg[4]_i_3_n_7 ;
  wire [31:1]write_index;
  wire \write_index0_inferred__0/i__carry__0_n_0 ;
  wire \write_index0_inferred__0/i__carry__0_n_1 ;
  wire \write_index0_inferred__0/i__carry__0_n_2 ;
  wire \write_index0_inferred__0/i__carry__0_n_3 ;
  wire \write_index0_inferred__0/i__carry__1_n_0 ;
  wire \write_index0_inferred__0/i__carry__1_n_1 ;
  wire \write_index0_inferred__0/i__carry__1_n_2 ;
  wire \write_index0_inferred__0/i__carry__1_n_3 ;
  wire \write_index0_inferred__0/i__carry__2_n_1 ;
  wire \write_index0_inferred__0/i__carry__2_n_2 ;
  wire \write_index0_inferred__0/i__carry__2_n_3 ;
  wire \write_index0_inferred__0/i__carry_n_0 ;
  wire \write_index0_inferred__0/i__carry_n_1 ;
  wire \write_index0_inferred__0/i__carry_n_2 ;
  wire \write_index0_inferred__0/i__carry_n_3 ;
  wire \write_index[31]_i_1_n_0 ;
  wire \write_index[4]_i_3_n_0 ;
  wire \write_index_reg[12]_i_2_n_0 ;
  wire \write_index_reg[12]_i_2_n_1 ;
  wire \write_index_reg[12]_i_2_n_2 ;
  wire \write_index_reg[12]_i_2_n_3 ;
  wire \write_index_reg[16]_i_2_n_0 ;
  wire \write_index_reg[16]_i_2_n_1 ;
  wire \write_index_reg[16]_i_2_n_2 ;
  wire \write_index_reg[16]_i_2_n_3 ;
  wire \write_index_reg[20]_i_2_n_0 ;
  wire \write_index_reg[20]_i_2_n_1 ;
  wire \write_index_reg[20]_i_2_n_2 ;
  wire \write_index_reg[20]_i_2_n_3 ;
  wire \write_index_reg[24]_i_2_n_0 ;
  wire \write_index_reg[24]_i_2_n_1 ;
  wire \write_index_reg[24]_i_2_n_2 ;
  wire \write_index_reg[24]_i_2_n_3 ;
  wire \write_index_reg[28]_i_2_n_0 ;
  wire \write_index_reg[28]_i_2_n_1 ;
  wire \write_index_reg[28]_i_2_n_2 ;
  wire \write_index_reg[28]_i_2_n_3 ;
  wire \write_index_reg[31]_i_3_n_2 ;
  wire \write_index_reg[31]_i_3_n_3 ;
  wire \write_index_reg[4]_i_2_n_0 ;
  wire \write_index_reg[4]_i_2_n_1 ;
  wire \write_index_reg[4]_i_2_n_2 ;
  wire \write_index_reg[4]_i_2_n_3 ;
  wire \write_index_reg[8]_i_2_n_0 ;
  wire \write_index_reg[8]_i_2_n_1 ;
  wire \write_index_reg[8]_i_2_n_2 ;
  wire \write_index_reg[8]_i_2_n_3 ;
  wire \write_index_reg_n_0_[10] ;
  wire \write_index_reg_n_0_[11] ;
  wire \write_index_reg_n_0_[12] ;
  wire \write_index_reg_n_0_[13] ;
  wire \write_index_reg_n_0_[14] ;
  wire \write_index_reg_n_0_[15] ;
  wire \write_index_reg_n_0_[16] ;
  wire \write_index_reg_n_0_[17] ;
  wire \write_index_reg_n_0_[18] ;
  wire \write_index_reg_n_0_[19] ;
  wire \write_index_reg_n_0_[1] ;
  wire \write_index_reg_n_0_[20] ;
  wire \write_index_reg_n_0_[21] ;
  wire \write_index_reg_n_0_[22] ;
  wire \write_index_reg_n_0_[23] ;
  wire \write_index_reg_n_0_[24] ;
  wire \write_index_reg_n_0_[25] ;
  wire \write_index_reg_n_0_[26] ;
  wire \write_index_reg_n_0_[27] ;
  wire \write_index_reg_n_0_[28] ;
  wire \write_index_reg_n_0_[29] ;
  wire \write_index_reg_n_0_[2] ;
  wire \write_index_reg_n_0_[30] ;
  wire \write_index_reg_n_0_[31] ;
  wire \write_index_reg_n_0_[3] ;
  wire \write_index_reg_n_0_[4] ;
  wire \write_index_reg_n_0_[5] ;
  wire \write_index_reg_n_0_[6] ;
  wire \write_index_reg_n_0_[7] ;
  wire \write_index_reg_n_0_[8] ;
  wire \write_index_reg_n_0_[9] ;
  wire [3:2]\NLW_bram1a_reg[o][o_addr][31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_bram1a_reg[o][o_addr][31]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_bram1a_reg[o][o_addr][4]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_copy_index0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_copy_index0_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_copy_index0_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:3]\NLW_copy_index0_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:0]\NLW_copy_index0_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:2]\NLW_copy_index_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_copy_index_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:2]NLW_plusOp_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_start_main0_carry_O_UNCONNECTED;
  wire [3:0]NLW_start_main0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_start_main0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_start_main0_carry__2_O_UNCONNECTED;
  wire [3:1]\NLW_tmp1_reg[12]_i_11_CO_UNCONNECTED ;
  wire [3:2]\NLW_tmp1_reg[12]_i_11_O_UNCONNECTED ;
  wire [3:1]\NLW_tmp1_reg[12]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_tmp1_reg[12]_i_3_O_UNCONNECTED ;
  wire [3:1]\NLW_tmp1_reg[20]_i_11_CO_UNCONNECTED ;
  wire [3:2]\NLW_tmp1_reg[20]_i_11_O_UNCONNECTED ;
  wire [3:1]\NLW_tmp1_reg[20]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_tmp1_reg[20]_i_3_O_UNCONNECTED ;
  wire [3:1]\NLW_tmp1_reg[28]_i_11_CO_UNCONNECTED ;
  wire [3:2]\NLW_tmp1_reg[28]_i_11_O_UNCONNECTED ;
  wire [3:1]\NLW_tmp1_reg[28]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_tmp1_reg[28]_i_3_O_UNCONNECTED ;
  wire [3:1]\NLW_tmp1_reg[4]_i_11_CO_UNCONNECTED ;
  wire [3:2]\NLW_tmp1_reg[4]_i_11_O_UNCONNECTED ;
  wire [3:1]\NLW_tmp1_reg[4]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_tmp1_reg[4]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_write_index0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_write_index0_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_write_index0_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:3]\NLW_write_index0_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:0]\NLW_write_index0_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:2]\NLW_write_index_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_write_index_reg[31]_i_3_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h45450D08)) 
    \FSM_sequential_state1[0]_i_1 
       (.I0(state1[1]),
        .I1(\write_index0_inferred__0/i__carry__2_n_1 ),
        .I2(state1[0]),
        .I3(start_main),
        .I4(state1[2]),
        .O(state1__0[0]));
  LUT6 #(
    .INIT(64'h1010101057525252)) 
    \FSM_sequential_state1[1]_i_1 
       (.I0(state1[1]),
        .I1(\write_index0_inferred__0/i__carry__2_n_1 ),
        .I2(state1[0]),
        .I3(start_main),
        .I4(s_ji_eq_reg_n_0),
        .I5(state1[2]),
        .O(state1__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0FB0)) 
    \FSM_sequential_state1[2]_i_1 
       (.I0(state1[0]),
        .I1(\write_index0_inferred__0/i__carry__2_n_1 ),
        .I2(state1[1]),
        .I3(state1[2]),
        .O(state1__0[2]));
  (* FSM_ENCODED_STATES = "main2:010,main3:100,idle:000,main1:011,main0:001,done:110,main4:101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(state1__0[0]),
        .Q(state1[0]),
        .R(rst));
  (* FSM_ENCODED_STATES = "main2:010,main3:100,idle:000,main1:011,main0:001,done:110,main4:101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(state1__0[1]),
        .Q(state1[1]),
        .R(rst));
  (* FSM_ENCODED_STATES = "main2:010,main3:100,idle:000,main1:011,main0:001,done:110,main4:101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(state1__0[2]),
        .Q(state1[2]),
        .R(rst));
  LUT5 #(
    .INIT(32'h43434340)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(o_done_i_2_n_0),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(enable),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h77304730)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(o_done_i_2_n_0),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(\copy_index0_inferred__0/i__carry__2_n_1 ),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h44447444)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(o_done_i_2_n_0),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(\copy_index0_inferred__0/i__carry__2_n_1 ),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,cpy0:001,cpy2:011,done:100,cpy1:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0[0]),
        .R(rst));
  (* FSM_ENCODED_STATES = "idle:000,cpy0:001,cpy2:011,done:100,cpy1:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state__0[1]),
        .R(rst));
  (* FSM_ENCODED_STATES = "idle:000,cpy0:001,cpy2:011,done:100,cpy1:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state__0[2]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram0b[o][o_addr][0]_i_1 
       (.I0(s_src_adr[0]),
        .I1(state__0[1]),
        .I2(o_mem0b_addr[0]),
        .O(\bram0b[o][o_addr] [0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram0b[o][o_addr][10]_i_1 
       (.I0(s_src_adr[10]),
        .I1(state__0[1]),
        .I2(in6[10]),
        .O(\bram0b[o][o_addr] [10]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram0b[o][o_addr][11]_i_1 
       (.I0(s_src_adr[11]),
        .I1(state__0[1]),
        .I2(in6[11]),
        .O(\bram0b[o][o_addr] [11]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram0b[o][o_addr][12]_i_1 
       (.I0(s_src_adr[12]),
        .I1(state__0[1]),
        .I2(in6[12]),
        .O(\bram0b[o][o_addr] [12]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram0b[o][o_addr][13]_i_1 
       (.I0(s_src_adr[13]),
        .I1(state__0[1]),
        .I2(in6[13]),
        .O(\bram0b[o][o_addr] [13]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram0b[o][o_addr][14]_i_1 
       (.I0(s_src_adr[14]),
        .I1(state__0[1]),
        .I2(in6[14]),
        .O(\bram0b[o][o_addr] [14]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram0b[o][o_addr][15]_i_1 
       (.I0(s_src_adr[15]),
        .I1(state__0[1]),
        .I2(in6[15]),
        .O(\bram0b[o][o_addr] [15]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram0b[o][o_addr][16]_i_1 
       (.I0(s_src_adr[16]),
        .I1(state__0[1]),
        .I2(in6[16]),
        .O(\bram0b[o][o_addr] [16]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram0b[o][o_addr][17]_i_1 
       (.I0(s_src_adr[17]),
        .I1(state__0[1]),
        .I2(in6[17]),
        .O(\bram0b[o][o_addr] [17]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram0b[o][o_addr][18]_i_1 
       (.I0(s_src_adr[18]),
        .I1(state__0[1]),
        .I2(in6[18]),
        .O(\bram0b[o][o_addr] [18]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram0b[o][o_addr][19]_i_1 
       (.I0(s_src_adr[19]),
        .I1(state__0[1]),
        .I2(in6[19]),
        .O(\bram0b[o][o_addr] [19]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram0b[o][o_addr][1]_i_1 
       (.I0(s_src_adr[1]),
        .I1(state__0[1]),
        .I2(in6[1]),
        .O(\bram0b[o][o_addr] [1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram0b[o][o_addr][20]_i_1 
       (.I0(s_src_adr[20]),
        .I1(state__0[1]),
        .I2(in6[20]),
        .O(\bram0b[o][o_addr] [20]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram0b[o][o_addr][21]_i_1 
       (.I0(s_src_adr[21]),
        .I1(state__0[1]),
        .I2(in6[21]),
        .O(\bram0b[o][o_addr] [21]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram0b[o][o_addr][22]_i_1 
       (.I0(s_src_adr[22]),
        .I1(state__0[1]),
        .I2(in6[22]),
        .O(\bram0b[o][o_addr] [22]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram0b[o][o_addr][23]_i_1 
       (.I0(s_src_adr[23]),
        .I1(state__0[1]),
        .I2(in6[23]),
        .O(\bram0b[o][o_addr] [23]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram0b[o][o_addr][24]_i_1 
       (.I0(s_src_adr[24]),
        .I1(state__0[1]),
        .I2(in6[24]),
        .O(\bram0b[o][o_addr] [24]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram0b[o][o_addr][25]_i_1 
       (.I0(s_src_adr[25]),
        .I1(state__0[1]),
        .I2(in6[25]),
        .O(\bram0b[o][o_addr] [25]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram0b[o][o_addr][26]_i_1 
       (.I0(s_src_adr[26]),
        .I1(state__0[1]),
        .I2(in6[26]),
        .O(\bram0b[o][o_addr] [26]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram0b[o][o_addr][27]_i_1 
       (.I0(s_src_adr[27]),
        .I1(state__0[1]),
        .I2(in6[27]),
        .O(\bram0b[o][o_addr] [27]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram0b[o][o_addr][28]_i_1 
       (.I0(s_src_adr[28]),
        .I1(state__0[1]),
        .I2(in6[28]),
        .O(\bram0b[o][o_addr] [28]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram0b[o][o_addr][29]_i_1 
       (.I0(s_src_adr[29]),
        .I1(state__0[1]),
        .I2(in6[29]),
        .O(\bram0b[o][o_addr] [29]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram0b[o][o_addr][2]_i_1 
       (.I0(s_src_adr[2]),
        .I1(state__0[1]),
        .I2(in6[2]),
        .O(\bram0b[o][o_addr] [2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram0b[o][o_addr][30]_i_1 
       (.I0(s_src_adr[30]),
        .I1(state__0[1]),
        .I2(in6[30]),
        .O(\bram0b[o][o_addr] [30]));
  LUT4 #(
    .INIT(16'h00C4)) 
    \bram0b[o][o_addr][31]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(\copy_index0_inferred__0/i__carry__2_n_1 ),
        .I3(state__0[2]),
        .O(\bram0b[o][o_addr][31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram0b[o][o_addr][31]_i_2 
       (.I0(s_src_adr[31]),
        .I1(state__0[1]),
        .I2(in6[31]),
        .O(\bram0b[o][o_addr] [31]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram0b[o][o_addr][3]_i_1 
       (.I0(s_src_adr[3]),
        .I1(state__0[1]),
        .I2(in6[3]),
        .O(\bram0b[o][o_addr] [3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram0b[o][o_addr][4]_i_1 
       (.I0(s_src_adr[4]),
        .I1(state__0[1]),
        .I2(in6[4]),
        .O(\bram0b[o][o_addr] [4]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram0b[o][o_addr][5]_i_1 
       (.I0(s_src_adr[5]),
        .I1(state__0[1]),
        .I2(in6[5]),
        .O(\bram0b[o][o_addr] [5]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram0b[o][o_addr][6]_i_1 
       (.I0(s_src_adr[6]),
        .I1(state__0[1]),
        .I2(in6[6]),
        .O(\bram0b[o][o_addr] [6]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram0b[o][o_addr][7]_i_1 
       (.I0(s_src_adr[7]),
        .I1(state__0[1]),
        .I2(in6[7]),
        .O(\bram0b[o][o_addr] [7]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram0b[o][o_addr][8]_i_1 
       (.I0(s_src_adr[8]),
        .I1(state__0[1]),
        .I2(in6[8]),
        .O(\bram0b[o][o_addr] [8]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram0b[o][o_addr][9]_i_1 
       (.I0(s_src_adr[9]),
        .I1(state__0[1]),
        .I2(in6[9]),
        .O(\bram0b[o][o_addr] [9]));
  LUT5 #(
    .INIT(32'hFFDF000A)) 
    \bram0b[o][o_en]_i_1 
       (.I0(state__0[0]),
        .I1(\copy_index0_inferred__0/i__carry__2_n_1 ),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(o_mem0b_en),
        .O(\bram0b[o][o_en]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][0] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0b[o][o_addr] [0]),
        .Q(o_mem0b_addr[0]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][10] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0b[o][o_addr] [10]),
        .Q(o_mem0b_addr[10]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][11] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0b[o][o_addr] [11]),
        .Q(o_mem0b_addr[11]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][12] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0b[o][o_addr] [12]),
        .Q(o_mem0b_addr[12]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][13] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0b[o][o_addr] [13]),
        .Q(o_mem0b_addr[13]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][14] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0b[o][o_addr] [14]),
        .Q(o_mem0b_addr[14]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][15] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0b[o][o_addr] [15]),
        .Q(o_mem0b_addr[15]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][16] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0b[o][o_addr] [16]),
        .Q(o_mem0b_addr[16]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][17] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0b[o][o_addr] [17]),
        .Q(o_mem0b_addr[17]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][18] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0b[o][o_addr] [18]),
        .Q(o_mem0b_addr[18]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][19] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0b[o][o_addr] [19]),
        .Q(o_mem0b_addr[19]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][1] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0b[o][o_addr] [1]),
        .Q(o_mem0b_addr[1]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][20] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0b[o][o_addr] [20]),
        .Q(o_mem0b_addr[20]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][21] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0b[o][o_addr] [21]),
        .Q(o_mem0b_addr[21]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][22] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0b[o][o_addr] [22]),
        .Q(o_mem0b_addr[22]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][23] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0b[o][o_addr] [23]),
        .Q(o_mem0b_addr[23]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][24] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0b[o][o_addr] [24]),
        .Q(o_mem0b_addr[24]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][25] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0b[o][o_addr] [25]),
        .Q(o_mem0b_addr[25]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][26] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0b[o][o_addr] [26]),
        .Q(o_mem0b_addr[26]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][27] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0b[o][o_addr] [27]),
        .Q(o_mem0b_addr[27]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][28] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0b[o][o_addr] [28]),
        .Q(o_mem0b_addr[28]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][29] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0b[o][o_addr] [29]),
        .Q(o_mem0b_addr[29]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][2] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0b[o][o_addr] [2]),
        .Q(o_mem0b_addr[2]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][30] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0b[o][o_addr] [30]),
        .Q(o_mem0b_addr[30]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][31] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0b[o][o_addr] [31]),
        .Q(o_mem0b_addr[31]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][3] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0b[o][o_addr] [3]),
        .Q(o_mem0b_addr[3]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][4] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0b[o][o_addr] [4]),
        .Q(o_mem0b_addr[4]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][5] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0b[o][o_addr] [5]),
        .Q(o_mem0b_addr[5]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][6] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0b[o][o_addr] [6]),
        .Q(o_mem0b_addr[6]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][7] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0b[o][o_addr] [7]),
        .Q(o_mem0b_addr[7]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][8] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0b[o][o_addr] [8]),
        .Q(o_mem0b_addr[8]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][9] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0b[o][o_addr] [9]),
        .Q(o_mem0b_addr[9]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b EN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_en] 
       (.C(clk),
        .CE(1'b1),
        .D(\bram0b[o][o_en]_i_1_n_0 ),
        .Q(o_mem0b_en),
        .R(rst));
  LUT4 #(
    .INIT(16'h44F4)) 
    \bram1a[o][o_addr][0]_i_1 
       (.I0(state1[1]),
        .I1(s_dsta_adr[0]),
        .I2(s_dstb_adr[0]),
        .I3(state1[0]),
        .O(\bram1a[o][o_addr][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h9A9A559A)) 
    \bram1a[o][o_addr][12]_i_2 
       (.I0(\write_index_reg_n_0_[12] ),
        .I1(state1[0]),
        .I2(s_dstb_adr[12]),
        .I3(s_dsta_adr[12]),
        .I4(state1[1]),
        .O(\bram1a[o][o_addr][12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h9A9A559A)) 
    \bram1a[o][o_addr][12]_i_3 
       (.I0(\write_index_reg_n_0_[11] ),
        .I1(state1[0]),
        .I2(s_dstb_adr[11]),
        .I3(s_dsta_adr[11]),
        .I4(state1[1]),
        .O(\bram1a[o][o_addr][12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h9A9A559A)) 
    \bram1a[o][o_addr][12]_i_4 
       (.I0(\write_index_reg_n_0_[10] ),
        .I1(state1[0]),
        .I2(s_dstb_adr[10]),
        .I3(s_dsta_adr[10]),
        .I4(state1[1]),
        .O(\bram1a[o][o_addr][12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h9A9A559A)) 
    \bram1a[o][o_addr][12]_i_5 
       (.I0(\write_index_reg_n_0_[9] ),
        .I1(state1[0]),
        .I2(s_dstb_adr[9]),
        .I3(s_dsta_adr[9]),
        .I4(state1[1]),
        .O(\bram1a[o][o_addr][12]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h9A9A559A)) 
    \bram1a[o][o_addr][16]_i_2 
       (.I0(\write_index_reg_n_0_[16] ),
        .I1(state1[0]),
        .I2(s_dstb_adr[16]),
        .I3(s_dsta_adr[16]),
        .I4(state1[1]),
        .O(\bram1a[o][o_addr][16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h9A9A559A)) 
    \bram1a[o][o_addr][16]_i_3 
       (.I0(\write_index_reg_n_0_[15] ),
        .I1(state1[0]),
        .I2(s_dstb_adr[15]),
        .I3(s_dsta_adr[15]),
        .I4(state1[1]),
        .O(\bram1a[o][o_addr][16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h9A9A559A)) 
    \bram1a[o][o_addr][16]_i_4 
       (.I0(\write_index_reg_n_0_[14] ),
        .I1(state1[0]),
        .I2(s_dstb_adr[14]),
        .I3(s_dsta_adr[14]),
        .I4(state1[1]),
        .O(\bram1a[o][o_addr][16]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h9A9A559A)) 
    \bram1a[o][o_addr][16]_i_5 
       (.I0(\write_index_reg_n_0_[13] ),
        .I1(state1[0]),
        .I2(s_dstb_adr[13]),
        .I3(s_dsta_adr[13]),
        .I4(state1[1]),
        .O(\bram1a[o][o_addr][16]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h9A9A559A)) 
    \bram1a[o][o_addr][1]_i_1 
       (.I0(\write_index_reg_n_0_[1] ),
        .I1(state1[0]),
        .I2(s_dstb_adr[1]),
        .I3(s_dsta_adr[1]),
        .I4(state1[1]),
        .O(\bram1a[o][o_addr]0_in [1]));
  LUT5 #(
    .INIT(32'h9A9A559A)) 
    \bram1a[o][o_addr][20]_i_2 
       (.I0(\write_index_reg_n_0_[20] ),
        .I1(state1[0]),
        .I2(s_dstb_adr[20]),
        .I3(s_dsta_adr[20]),
        .I4(state1[1]),
        .O(\bram1a[o][o_addr][20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h9A9A559A)) 
    \bram1a[o][o_addr][20]_i_3 
       (.I0(\write_index_reg_n_0_[19] ),
        .I1(state1[0]),
        .I2(s_dstb_adr[19]),
        .I3(s_dsta_adr[19]),
        .I4(state1[1]),
        .O(\bram1a[o][o_addr][20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h9A9A559A)) 
    \bram1a[o][o_addr][20]_i_4 
       (.I0(\write_index_reg_n_0_[18] ),
        .I1(state1[0]),
        .I2(s_dstb_adr[18]),
        .I3(s_dsta_adr[18]),
        .I4(state1[1]),
        .O(\bram1a[o][o_addr][20]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h9A9A559A)) 
    \bram1a[o][o_addr][20]_i_5 
       (.I0(\write_index_reg_n_0_[17] ),
        .I1(state1[0]),
        .I2(s_dstb_adr[17]),
        .I3(s_dsta_adr[17]),
        .I4(state1[1]),
        .O(\bram1a[o][o_addr][20]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h9A9A559A)) 
    \bram1a[o][o_addr][24]_i_2 
       (.I0(\write_index_reg_n_0_[24] ),
        .I1(state1[0]),
        .I2(s_dstb_adr[24]),
        .I3(s_dsta_adr[24]),
        .I4(state1[1]),
        .O(\bram1a[o][o_addr][24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h9A9A559A)) 
    \bram1a[o][o_addr][24]_i_3 
       (.I0(\write_index_reg_n_0_[23] ),
        .I1(state1[0]),
        .I2(s_dstb_adr[23]),
        .I3(s_dsta_adr[23]),
        .I4(state1[1]),
        .O(\bram1a[o][o_addr][24]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h9A9A559A)) 
    \bram1a[o][o_addr][24]_i_4 
       (.I0(\write_index_reg_n_0_[22] ),
        .I1(state1[0]),
        .I2(s_dstb_adr[22]),
        .I3(s_dsta_adr[22]),
        .I4(state1[1]),
        .O(\bram1a[o][o_addr][24]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h9A9A559A)) 
    \bram1a[o][o_addr][24]_i_5 
       (.I0(\write_index_reg_n_0_[21] ),
        .I1(state1[0]),
        .I2(s_dstb_adr[21]),
        .I3(s_dsta_adr[21]),
        .I4(state1[1]),
        .O(\bram1a[o][o_addr][24]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h9A9A559A)) 
    \bram1a[o][o_addr][28]_i_2 
       (.I0(\write_index_reg_n_0_[28] ),
        .I1(state1[0]),
        .I2(s_dstb_adr[28]),
        .I3(s_dsta_adr[28]),
        .I4(state1[1]),
        .O(\bram1a[o][o_addr][28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h9A9A559A)) 
    \bram1a[o][o_addr][28]_i_3 
       (.I0(\write_index_reg_n_0_[27] ),
        .I1(state1[0]),
        .I2(s_dstb_adr[27]),
        .I3(s_dsta_adr[27]),
        .I4(state1[1]),
        .O(\bram1a[o][o_addr][28]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h9A9A559A)) 
    \bram1a[o][o_addr][28]_i_4 
       (.I0(\write_index_reg_n_0_[26] ),
        .I1(state1[0]),
        .I2(s_dstb_adr[26]),
        .I3(s_dsta_adr[26]),
        .I4(state1[1]),
        .O(\bram1a[o][o_addr][28]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h9A9A559A)) 
    \bram1a[o][o_addr][28]_i_5 
       (.I0(\write_index_reg_n_0_[25] ),
        .I1(state1[0]),
        .I2(s_dstb_adr[25]),
        .I3(s_dsta_adr[25]),
        .I4(state1[1]),
        .O(\bram1a[o][o_addr][28]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h34)) 
    \bram1a[o][o_addr][31]_i_1 
       (.I0(state1[2]),
        .I1(state1[1]),
        .I2(state1[0]),
        .O(\bram1a[o][o_addr] ));
  LUT4 #(
    .INIT(16'h44F4)) 
    \bram1a[o][o_addr][31]_i_3 
       (.I0(state1[1]),
        .I1(s_dsta_adr[31]),
        .I2(s_dstb_adr[31]),
        .I3(state1[0]),
        .O(\bram1a[o][o_addr][31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h9A9A559A)) 
    \bram1a[o][o_addr][31]_i_4 
       (.I0(\write_index_reg_n_0_[30] ),
        .I1(state1[0]),
        .I2(s_dstb_adr[30]),
        .I3(s_dsta_adr[30]),
        .I4(state1[1]),
        .O(\bram1a[o][o_addr][31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h9A9A559A)) 
    \bram1a[o][o_addr][31]_i_5 
       (.I0(\write_index_reg_n_0_[29] ),
        .I1(state1[0]),
        .I2(s_dstb_adr[29]),
        .I3(s_dsta_adr[29]),
        .I4(state1[1]),
        .O(\bram1a[o][o_addr][31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h9A9A559A)) 
    \bram1a[o][o_addr][4]_i_2 
       (.I0(\write_index_reg_n_0_[4] ),
        .I1(state1[0]),
        .I2(s_dstb_adr[4]),
        .I3(s_dsta_adr[4]),
        .I4(state1[1]),
        .O(\bram1a[o][o_addr][4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h9A9A559A)) 
    \bram1a[o][o_addr][4]_i_3 
       (.I0(\write_index_reg_n_0_[3] ),
        .I1(state1[0]),
        .I2(s_dstb_adr[3]),
        .I3(s_dsta_adr[3]),
        .I4(state1[1]),
        .O(\bram1a[o][o_addr][4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h9A9A559A)) 
    \bram1a[o][o_addr][4]_i_4 
       (.I0(\write_index_reg_n_0_[2] ),
        .I1(state1[0]),
        .I2(s_dstb_adr[2]),
        .I3(s_dsta_adr[2]),
        .I4(state1[1]),
        .O(\bram1a[o][o_addr][4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h9A9A559A)) 
    \bram1a[o][o_addr][4]_i_5 
       (.I0(\write_index_reg_n_0_[1] ),
        .I1(state1[0]),
        .I2(s_dstb_adr[1]),
        .I3(s_dsta_adr[1]),
        .I4(state1[1]),
        .O(\bram1a[o][o_addr][4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h9A9A559A)) 
    \bram1a[o][o_addr][8]_i_2 
       (.I0(\write_index_reg_n_0_[8] ),
        .I1(state1[0]),
        .I2(s_dstb_adr[8]),
        .I3(s_dsta_adr[8]),
        .I4(state1[1]),
        .O(\bram1a[o][o_addr][8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h9A9A559A)) 
    \bram1a[o][o_addr][8]_i_3 
       (.I0(\write_index_reg_n_0_[7] ),
        .I1(state1[0]),
        .I2(s_dstb_adr[7]),
        .I3(s_dsta_adr[7]),
        .I4(state1[1]),
        .O(\bram1a[o][o_addr][8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h9A9A559A)) 
    \bram1a[o][o_addr][8]_i_4 
       (.I0(\write_index_reg_n_0_[6] ),
        .I1(state1[0]),
        .I2(s_dstb_adr[6]),
        .I3(s_dsta_adr[6]),
        .I4(state1[1]),
        .O(\bram1a[o][o_addr][8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h9A9A559A)) 
    \bram1a[o][o_addr][8]_i_5 
       (.I0(\write_index_reg_n_0_[5] ),
        .I1(state1[0]),
        .I2(s_dstb_adr[5]),
        .I3(s_dsta_adr[5]),
        .I4(state1[1]),
        .O(\bram1a[o][o_addr][8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram1a[o][o_din][0]_i_1 
       (.I0(p_0_out[1]),
        .I1(state1[2]),
        .I2(tmp1[0]),
        .O(\bram1a[o][o_din]0_in [0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram1a[o][o_din][10]_i_1 
       (.I0(p_0_out[11]),
        .I1(state1[2]),
        .I2(tmp1[10]),
        .O(\bram1a[o][o_din]0_in [10]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram1a[o][o_din][11]_i_1 
       (.I0(p_0_out[12]),
        .I1(state1[2]),
        .I2(tmp1[11]),
        .O(\bram1a[o][o_din]0_in [11]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram1a[o][o_din][12]_i_1 
       (.I0(p_0_out[13]),
        .I1(state1[2]),
        .I2(tmp1[12]),
        .O(\bram1a[o][o_din]0_in [12]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \bram1a[o][o_din][13]_i_1 
       (.I0(state1[2]),
        .I1(p_0_out[14]),
        .O(\bram1a[o][o_din]0_in [13]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \bram1a[o][o_din][14]_i_1 
       (.I0(state1[2]),
        .I1(p_0_out[15]),
        .O(\bram1a[o][o_din]0_in [14]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \bram1a[o][o_din][15]_i_1 
       (.I0(state1[2]),
        .I1(\p1_in_reg_n_0_[15] ),
        .O(\bram1a[o][o_din]0_in [15]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram1a[o][o_din][16]_i_1 
       (.I0(p_0_out[17]),
        .I1(state1[2]),
        .I2(tmp1[16]),
        .O(\bram1a[o][o_din]0_in [16]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram1a[o][o_din][17]_i_1 
       (.I0(p_0_out[18]),
        .I1(state1[2]),
        .I2(tmp1[17]),
        .O(\bram1a[o][o_din]0_in [17]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram1a[o][o_din][18]_i_1 
       (.I0(p_0_out[19]),
        .I1(state1[2]),
        .I2(tmp1[18]),
        .O(\bram1a[o][o_din]0_in [18]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram1a[o][o_din][19]_i_1 
       (.I0(p_0_out[20]),
        .I1(state1[2]),
        .I2(tmp1[19]),
        .O(\bram1a[o][o_din]0_in [19]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram1a[o][o_din][1]_i_1 
       (.I0(p_0_out[2]),
        .I1(state1[2]),
        .I2(tmp1[1]),
        .O(\bram1a[o][o_din]0_in [1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram1a[o][o_din][20]_i_1 
       (.I0(p_0_out[21]),
        .I1(state1[2]),
        .I2(tmp1[20]),
        .O(\bram1a[o][o_din]0_in [20]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \bram1a[o][o_din][21]_i_1 
       (.I0(state1[2]),
        .I1(p_0_out[22]),
        .O(\bram1a[o][o_din]0_in [21]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \bram1a[o][o_din][22]_i_1 
       (.I0(state1[2]),
        .I1(p_0_out[23]),
        .O(\bram1a[o][o_din]0_in [22]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \bram1a[o][o_din][23]_i_1 
       (.I0(state1[2]),
        .I1(\p1_in_reg_n_0_[23] ),
        .O(\bram1a[o][o_din]0_in [23]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram1a[o][o_din][24]_i_1 
       (.I0(p_0_out[25]),
        .I1(state1[2]),
        .I2(tmp1[24]),
        .O(\bram1a[o][o_din]0_in [24]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram1a[o][o_din][25]_i_1 
       (.I0(p_0_out[26]),
        .I1(state1[2]),
        .I2(tmp1[25]),
        .O(\bram1a[o][o_din]0_in [25]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram1a[o][o_din][26]_i_1 
       (.I0(p_0_out[27]),
        .I1(state1[2]),
        .I2(tmp1[26]),
        .O(\bram1a[o][o_din]0_in [26]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram1a[o][o_din][27]_i_1 
       (.I0(p_0_out[28]),
        .I1(state1[2]),
        .I2(tmp1[27]),
        .O(\bram1a[o][o_din]0_in [27]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram1a[o][o_din][28]_i_1 
       (.I0(p_0_out[29]),
        .I1(state1[2]),
        .I2(tmp1[28]),
        .O(\bram1a[o][o_din]0_in [28]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \bram1a[o][o_din][29]_i_1 
       (.I0(state1[2]),
        .I1(p_0_out[30]),
        .O(\bram1a[o][o_din]0_in [29]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram1a[o][o_din][2]_i_1 
       (.I0(p_0_out[3]),
        .I1(state1[2]),
        .I2(tmp1[2]),
        .O(\bram1a[o][o_din]0_in [2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \bram1a[o][o_din][30]_i_1 
       (.I0(state1[2]),
        .I1(p_0_out[31]),
        .O(\bram1a[o][o_din]0_in [30]));
  LUT4 #(
    .INIT(16'h00AE)) 
    \bram1a[o][o_din][31]_i_1 
       (.I0(state1[0]),
        .I1(start_main),
        .I2(state1[2]),
        .I3(state1[1]),
        .O(\bram1a[o][o_din][31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \bram1a[o][o_din][31]_i_2 
       (.I0(state1[2]),
        .I1(\p1_in_reg_n_0_[31] ),
        .O(\bram1a[o][o_din]0_in [31]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram1a[o][o_din][3]_i_1 
       (.I0(p_0_out[4]),
        .I1(state1[2]),
        .I2(tmp1[3]),
        .O(\bram1a[o][o_din]0_in [3]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram1a[o][o_din][4]_i_1 
       (.I0(p_0_out[5]),
        .I1(state1[2]),
        .I2(tmp1[4]),
        .O(\bram1a[o][o_din]0_in [4]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \bram1a[o][o_din][5]_i_1 
       (.I0(state1[2]),
        .I1(p_0_out[6]),
        .O(\bram1a[o][o_din]0_in [5]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \bram1a[o][o_din][6]_i_1 
       (.I0(state1[2]),
        .I1(p_0_out[7]),
        .O(\bram1a[o][o_din]0_in [6]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \bram1a[o][o_din][7]_i_1 
       (.I0(state1[2]),
        .I1(\p1_in_reg_n_0_[7] ),
        .O(\bram1a[o][o_din]0_in [7]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram1a[o][o_din][8]_i_1 
       (.I0(p_0_out[9]),
        .I1(state1[2]),
        .I2(tmp1[8]),
        .O(\bram1a[o][o_din]0_in [8]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bram1a[o][o_din][9]_i_1 
       (.I0(p_0_out[10]),
        .I1(state1[2]),
        .I2(tmp1[9]),
        .O(\bram1a[o][o_din]0_in [9]));
  LUT4 #(
    .INIT(16'hCF44)) 
    \bram1a[o][o_en]_i_1 
       (.I0(state1[1]),
        .I1(state1[0]),
        .I2(state1[2]),
        .I3(o_mem1a_we),
        .O(\bram1a[o][o_en]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][0] 
       (.C(clk),
        .CE(\bram1a[o][o_addr] ),
        .D(\bram1a[o][o_addr][0]_i_1_n_0 ),
        .Q(o_mem1a_addr[0]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][10] 
       (.C(clk),
        .CE(\bram1a[o][o_addr] ),
        .D(\bram1a[o][o_addr]0_in [10]),
        .Q(o_mem1a_addr[10]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][11] 
       (.C(clk),
        .CE(\bram1a[o][o_addr] ),
        .D(\bram1a[o][o_addr]0_in [11]),
        .Q(o_mem1a_addr[11]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][12] 
       (.C(clk),
        .CE(\bram1a[o][o_addr] ),
        .D(\bram1a[o][o_addr]0_in [12]),
        .Q(o_mem1a_addr[12]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \bram1a_reg[o][o_addr][12]_i_1 
       (.CI(\bram1a_reg[o][o_addr][8]_i_1_n_0 ),
        .CO({\bram1a_reg[o][o_addr][12]_i_1_n_0 ,\bram1a_reg[o][o_addr][12]_i_1_n_1 ,\bram1a_reg[o][o_addr][12]_i_1_n_2 ,\bram1a_reg[o][o_addr][12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\write_index_reg_n_0_[12] ,\write_index_reg_n_0_[11] ,\write_index_reg_n_0_[10] ,\write_index_reg_n_0_[9] }),
        .O(\bram1a[o][o_addr]0_in [12:9]),
        .S({\bram1a[o][o_addr][12]_i_2_n_0 ,\bram1a[o][o_addr][12]_i_3_n_0 ,\bram1a[o][o_addr][12]_i_4_n_0 ,\bram1a[o][o_addr][12]_i_5_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][13] 
       (.C(clk),
        .CE(\bram1a[o][o_addr] ),
        .D(\bram1a[o][o_addr]0_in [13]),
        .Q(o_mem1a_addr[13]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][14] 
       (.C(clk),
        .CE(\bram1a[o][o_addr] ),
        .D(\bram1a[o][o_addr]0_in [14]),
        .Q(o_mem1a_addr[14]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][15] 
       (.C(clk),
        .CE(\bram1a[o][o_addr] ),
        .D(\bram1a[o][o_addr]0_in [15]),
        .Q(o_mem1a_addr[15]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][16] 
       (.C(clk),
        .CE(\bram1a[o][o_addr] ),
        .D(\bram1a[o][o_addr]0_in [16]),
        .Q(o_mem1a_addr[16]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \bram1a_reg[o][o_addr][16]_i_1 
       (.CI(\bram1a_reg[o][o_addr][12]_i_1_n_0 ),
        .CO({\bram1a_reg[o][o_addr][16]_i_1_n_0 ,\bram1a_reg[o][o_addr][16]_i_1_n_1 ,\bram1a_reg[o][o_addr][16]_i_1_n_2 ,\bram1a_reg[o][o_addr][16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\write_index_reg_n_0_[16] ,\write_index_reg_n_0_[15] ,\write_index_reg_n_0_[14] ,\write_index_reg_n_0_[13] }),
        .O(\bram1a[o][o_addr]0_in [16:13]),
        .S({\bram1a[o][o_addr][16]_i_2_n_0 ,\bram1a[o][o_addr][16]_i_3_n_0 ,\bram1a[o][o_addr][16]_i_4_n_0 ,\bram1a[o][o_addr][16]_i_5_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][17] 
       (.C(clk),
        .CE(\bram1a[o][o_addr] ),
        .D(\bram1a[o][o_addr]0_in [17]),
        .Q(o_mem1a_addr[17]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][18] 
       (.C(clk),
        .CE(\bram1a[o][o_addr] ),
        .D(\bram1a[o][o_addr]0_in [18]),
        .Q(o_mem1a_addr[18]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][19] 
       (.C(clk),
        .CE(\bram1a[o][o_addr] ),
        .D(\bram1a[o][o_addr]0_in [19]),
        .Q(o_mem1a_addr[19]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][1] 
       (.C(clk),
        .CE(\bram1a[o][o_addr] ),
        .D(\bram1a[o][o_addr]0_in [1]),
        .Q(o_mem1a_addr[1]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][20] 
       (.C(clk),
        .CE(\bram1a[o][o_addr] ),
        .D(\bram1a[o][o_addr]0_in [20]),
        .Q(o_mem1a_addr[20]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \bram1a_reg[o][o_addr][20]_i_1 
       (.CI(\bram1a_reg[o][o_addr][16]_i_1_n_0 ),
        .CO({\bram1a_reg[o][o_addr][20]_i_1_n_0 ,\bram1a_reg[o][o_addr][20]_i_1_n_1 ,\bram1a_reg[o][o_addr][20]_i_1_n_2 ,\bram1a_reg[o][o_addr][20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\write_index_reg_n_0_[20] ,\write_index_reg_n_0_[19] ,\write_index_reg_n_0_[18] ,\write_index_reg_n_0_[17] }),
        .O(\bram1a[o][o_addr]0_in [20:17]),
        .S({\bram1a[o][o_addr][20]_i_2_n_0 ,\bram1a[o][o_addr][20]_i_3_n_0 ,\bram1a[o][o_addr][20]_i_4_n_0 ,\bram1a[o][o_addr][20]_i_5_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][21] 
       (.C(clk),
        .CE(\bram1a[o][o_addr] ),
        .D(\bram1a[o][o_addr]0_in [21]),
        .Q(o_mem1a_addr[21]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][22] 
       (.C(clk),
        .CE(\bram1a[o][o_addr] ),
        .D(\bram1a[o][o_addr]0_in [22]),
        .Q(o_mem1a_addr[22]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][23] 
       (.C(clk),
        .CE(\bram1a[o][o_addr] ),
        .D(\bram1a[o][o_addr]0_in [23]),
        .Q(o_mem1a_addr[23]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][24] 
       (.C(clk),
        .CE(\bram1a[o][o_addr] ),
        .D(\bram1a[o][o_addr]0_in [24]),
        .Q(o_mem1a_addr[24]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \bram1a_reg[o][o_addr][24]_i_1 
       (.CI(\bram1a_reg[o][o_addr][20]_i_1_n_0 ),
        .CO({\bram1a_reg[o][o_addr][24]_i_1_n_0 ,\bram1a_reg[o][o_addr][24]_i_1_n_1 ,\bram1a_reg[o][o_addr][24]_i_1_n_2 ,\bram1a_reg[o][o_addr][24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\write_index_reg_n_0_[24] ,\write_index_reg_n_0_[23] ,\write_index_reg_n_0_[22] ,\write_index_reg_n_0_[21] }),
        .O(\bram1a[o][o_addr]0_in [24:21]),
        .S({\bram1a[o][o_addr][24]_i_2_n_0 ,\bram1a[o][o_addr][24]_i_3_n_0 ,\bram1a[o][o_addr][24]_i_4_n_0 ,\bram1a[o][o_addr][24]_i_5_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][25] 
       (.C(clk),
        .CE(\bram1a[o][o_addr] ),
        .D(\bram1a[o][o_addr]0_in [25]),
        .Q(o_mem1a_addr[25]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][26] 
       (.C(clk),
        .CE(\bram1a[o][o_addr] ),
        .D(\bram1a[o][o_addr]0_in [26]),
        .Q(o_mem1a_addr[26]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][27] 
       (.C(clk),
        .CE(\bram1a[o][o_addr] ),
        .D(\bram1a[o][o_addr]0_in [27]),
        .Q(o_mem1a_addr[27]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][28] 
       (.C(clk),
        .CE(\bram1a[o][o_addr] ),
        .D(\bram1a[o][o_addr]0_in [28]),
        .Q(o_mem1a_addr[28]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \bram1a_reg[o][o_addr][28]_i_1 
       (.CI(\bram1a_reg[o][o_addr][24]_i_1_n_0 ),
        .CO({\bram1a_reg[o][o_addr][28]_i_1_n_0 ,\bram1a_reg[o][o_addr][28]_i_1_n_1 ,\bram1a_reg[o][o_addr][28]_i_1_n_2 ,\bram1a_reg[o][o_addr][28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\write_index_reg_n_0_[28] ,\write_index_reg_n_0_[27] ,\write_index_reg_n_0_[26] ,\write_index_reg_n_0_[25] }),
        .O(\bram1a[o][o_addr]0_in [28:25]),
        .S({\bram1a[o][o_addr][28]_i_2_n_0 ,\bram1a[o][o_addr][28]_i_3_n_0 ,\bram1a[o][o_addr][28]_i_4_n_0 ,\bram1a[o][o_addr][28]_i_5_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][29] 
       (.C(clk),
        .CE(\bram1a[o][o_addr] ),
        .D(\bram1a[o][o_addr]0_in [29]),
        .Q(o_mem1a_addr[29]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][2] 
       (.C(clk),
        .CE(\bram1a[o][o_addr] ),
        .D(\bram1a[o][o_addr]0_in [2]),
        .Q(o_mem1a_addr[2]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][30] 
       (.C(clk),
        .CE(\bram1a[o][o_addr] ),
        .D(\bram1a[o][o_addr]0_in [30]),
        .Q(o_mem1a_addr[30]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][31] 
       (.C(clk),
        .CE(\bram1a[o][o_addr] ),
        .D(\bram1a[o][o_addr]0_in [31]),
        .Q(o_mem1a_addr[31]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \bram1a_reg[o][o_addr][31]_i_2 
       (.CI(\bram1a_reg[o][o_addr][28]_i_1_n_0 ),
        .CO({\NLW_bram1a_reg[o][o_addr][31]_i_2_CO_UNCONNECTED [3:2],\bram1a_reg[o][o_addr][31]_i_2_n_2 ,\bram1a_reg[o][o_addr][31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\write_index_reg_n_0_[30] ,\write_index_reg_n_0_[29] }),
        .O({\NLW_bram1a_reg[o][o_addr][31]_i_2_O_UNCONNECTED [3],\bram1a[o][o_addr]0_in [31:29]}),
        .S({1'b0,\bram1a[o][o_addr][31]_i_3_n_0 ,\bram1a[o][o_addr][31]_i_4_n_0 ,\bram1a[o][o_addr][31]_i_5_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][3] 
       (.C(clk),
        .CE(\bram1a[o][o_addr] ),
        .D(\bram1a[o][o_addr]0_in [3]),
        .Q(o_mem1a_addr[3]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][4] 
       (.C(clk),
        .CE(\bram1a[o][o_addr] ),
        .D(\bram1a[o][o_addr]0_in [4]),
        .Q(o_mem1a_addr[4]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \bram1a_reg[o][o_addr][4]_i_1 
       (.CI(1'b0),
        .CO({\bram1a_reg[o][o_addr][4]_i_1_n_0 ,\bram1a_reg[o][o_addr][4]_i_1_n_1 ,\bram1a_reg[o][o_addr][4]_i_1_n_2 ,\bram1a_reg[o][o_addr][4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\write_index_reg_n_0_[4] ,\write_index_reg_n_0_[3] ,\write_index_reg_n_0_[2] ,\write_index_reg_n_0_[1] }),
        .O({\bram1a[o][o_addr]0_in [4:2],\NLW_bram1a_reg[o][o_addr][4]_i_1_O_UNCONNECTED [0]}),
        .S({\bram1a[o][o_addr][4]_i_2_n_0 ,\bram1a[o][o_addr][4]_i_3_n_0 ,\bram1a[o][o_addr][4]_i_4_n_0 ,\bram1a[o][o_addr][4]_i_5_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][5] 
       (.C(clk),
        .CE(\bram1a[o][o_addr] ),
        .D(\bram1a[o][o_addr]0_in [5]),
        .Q(o_mem1a_addr[5]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][6] 
       (.C(clk),
        .CE(\bram1a[o][o_addr] ),
        .D(\bram1a[o][o_addr]0_in [6]),
        .Q(o_mem1a_addr[6]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][7] 
       (.C(clk),
        .CE(\bram1a[o][o_addr] ),
        .D(\bram1a[o][o_addr]0_in [7]),
        .Q(o_mem1a_addr[7]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][8] 
       (.C(clk),
        .CE(\bram1a[o][o_addr] ),
        .D(\bram1a[o][o_addr]0_in [8]),
        .Q(o_mem1a_addr[8]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \bram1a_reg[o][o_addr][8]_i_1 
       (.CI(\bram1a_reg[o][o_addr][4]_i_1_n_0 ),
        .CO({\bram1a_reg[o][o_addr][8]_i_1_n_0 ,\bram1a_reg[o][o_addr][8]_i_1_n_1 ,\bram1a_reg[o][o_addr][8]_i_1_n_2 ,\bram1a_reg[o][o_addr][8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\write_index_reg_n_0_[8] ,\write_index_reg_n_0_[7] ,\write_index_reg_n_0_[6] ,\write_index_reg_n_0_[5] }),
        .O(\bram1a[o][o_addr]0_in [8:5]),
        .S({\bram1a[o][o_addr][8]_i_2_n_0 ,\bram1a[o][o_addr][8]_i_3_n_0 ,\bram1a[o][o_addr][8]_i_4_n_0 ,\bram1a[o][o_addr][8]_i_5_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][9] 
       (.C(clk),
        .CE(\bram1a[o][o_addr] ),
        .D(\bram1a[o][o_addr]0_in [9]),
        .Q(o_mem1a_addr[9]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][0] 
       (.C(clk),
        .CE(\bram1a[o][o_din][31]_i_1_n_0 ),
        .D(\bram1a[o][o_din]0_in [0]),
        .Q(o_mem1a_din[0]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][10] 
       (.C(clk),
        .CE(\bram1a[o][o_din][31]_i_1_n_0 ),
        .D(\bram1a[o][o_din]0_in [10]),
        .Q(o_mem1a_din[10]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][11] 
       (.C(clk),
        .CE(\bram1a[o][o_din][31]_i_1_n_0 ),
        .D(\bram1a[o][o_din]0_in [11]),
        .Q(o_mem1a_din[11]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][12] 
       (.C(clk),
        .CE(\bram1a[o][o_din][31]_i_1_n_0 ),
        .D(\bram1a[o][o_din]0_in [12]),
        .Q(o_mem1a_din[12]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][13] 
       (.C(clk),
        .CE(\bram1a[o][o_din][31]_i_1_n_0 ),
        .D(\bram1a[o][o_din]0_in [13]),
        .Q(o_mem1a_din[13]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][14] 
       (.C(clk),
        .CE(\bram1a[o][o_din][31]_i_1_n_0 ),
        .D(\bram1a[o][o_din]0_in [14]),
        .Q(o_mem1a_din[14]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][15] 
       (.C(clk),
        .CE(\bram1a[o][o_din][31]_i_1_n_0 ),
        .D(\bram1a[o][o_din]0_in [15]),
        .Q(o_mem1a_din[15]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][16] 
       (.C(clk),
        .CE(\bram1a[o][o_din][31]_i_1_n_0 ),
        .D(\bram1a[o][o_din]0_in [16]),
        .Q(o_mem1a_din[16]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][17] 
       (.C(clk),
        .CE(\bram1a[o][o_din][31]_i_1_n_0 ),
        .D(\bram1a[o][o_din]0_in [17]),
        .Q(o_mem1a_din[17]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][18] 
       (.C(clk),
        .CE(\bram1a[o][o_din][31]_i_1_n_0 ),
        .D(\bram1a[o][o_din]0_in [18]),
        .Q(o_mem1a_din[18]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][19] 
       (.C(clk),
        .CE(\bram1a[o][o_din][31]_i_1_n_0 ),
        .D(\bram1a[o][o_din]0_in [19]),
        .Q(o_mem1a_din[19]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][1] 
       (.C(clk),
        .CE(\bram1a[o][o_din][31]_i_1_n_0 ),
        .D(\bram1a[o][o_din]0_in [1]),
        .Q(o_mem1a_din[1]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][20] 
       (.C(clk),
        .CE(\bram1a[o][o_din][31]_i_1_n_0 ),
        .D(\bram1a[o][o_din]0_in [20]),
        .Q(o_mem1a_din[20]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][21] 
       (.C(clk),
        .CE(\bram1a[o][o_din][31]_i_1_n_0 ),
        .D(\bram1a[o][o_din]0_in [21]),
        .Q(o_mem1a_din[21]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][22] 
       (.C(clk),
        .CE(\bram1a[o][o_din][31]_i_1_n_0 ),
        .D(\bram1a[o][o_din]0_in [22]),
        .Q(o_mem1a_din[22]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][23] 
       (.C(clk),
        .CE(\bram1a[o][o_din][31]_i_1_n_0 ),
        .D(\bram1a[o][o_din]0_in [23]),
        .Q(o_mem1a_din[23]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][24] 
       (.C(clk),
        .CE(\bram1a[o][o_din][31]_i_1_n_0 ),
        .D(\bram1a[o][o_din]0_in [24]),
        .Q(o_mem1a_din[24]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][25] 
       (.C(clk),
        .CE(\bram1a[o][o_din][31]_i_1_n_0 ),
        .D(\bram1a[o][o_din]0_in [25]),
        .Q(o_mem1a_din[25]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][26] 
       (.C(clk),
        .CE(\bram1a[o][o_din][31]_i_1_n_0 ),
        .D(\bram1a[o][o_din]0_in [26]),
        .Q(o_mem1a_din[26]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][27] 
       (.C(clk),
        .CE(\bram1a[o][o_din][31]_i_1_n_0 ),
        .D(\bram1a[o][o_din]0_in [27]),
        .Q(o_mem1a_din[27]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][28] 
       (.C(clk),
        .CE(\bram1a[o][o_din][31]_i_1_n_0 ),
        .D(\bram1a[o][o_din]0_in [28]),
        .Q(o_mem1a_din[28]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][29] 
       (.C(clk),
        .CE(\bram1a[o][o_din][31]_i_1_n_0 ),
        .D(\bram1a[o][o_din]0_in [29]),
        .Q(o_mem1a_din[29]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][2] 
       (.C(clk),
        .CE(\bram1a[o][o_din][31]_i_1_n_0 ),
        .D(\bram1a[o][o_din]0_in [2]),
        .Q(o_mem1a_din[2]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][30] 
       (.C(clk),
        .CE(\bram1a[o][o_din][31]_i_1_n_0 ),
        .D(\bram1a[o][o_din]0_in [30]),
        .Q(o_mem1a_din[30]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][31] 
       (.C(clk),
        .CE(\bram1a[o][o_din][31]_i_1_n_0 ),
        .D(\bram1a[o][o_din]0_in [31]),
        .Q(o_mem1a_din[31]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][3] 
       (.C(clk),
        .CE(\bram1a[o][o_din][31]_i_1_n_0 ),
        .D(\bram1a[o][o_din]0_in [3]),
        .Q(o_mem1a_din[3]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][4] 
       (.C(clk),
        .CE(\bram1a[o][o_din][31]_i_1_n_0 ),
        .D(\bram1a[o][o_din]0_in [4]),
        .Q(o_mem1a_din[4]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][5] 
       (.C(clk),
        .CE(\bram1a[o][o_din][31]_i_1_n_0 ),
        .D(\bram1a[o][o_din]0_in [5]),
        .Q(o_mem1a_din[5]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][6] 
       (.C(clk),
        .CE(\bram1a[o][o_din][31]_i_1_n_0 ),
        .D(\bram1a[o][o_din]0_in [6]),
        .Q(o_mem1a_din[6]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][7] 
       (.C(clk),
        .CE(\bram1a[o][o_din][31]_i_1_n_0 ),
        .D(\bram1a[o][o_din]0_in [7]),
        .Q(o_mem1a_din[7]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][8] 
       (.C(clk),
        .CE(\bram1a[o][o_din][31]_i_1_n_0 ),
        .D(\bram1a[o][o_din]0_in [8]),
        .Q(o_mem1a_din[8]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][9] 
       (.C(clk),
        .CE(\bram1a[o][o_din][31]_i_1_n_0 ),
        .D(\bram1a[o][o_din]0_in [9]),
        .Q(o_mem1a_din[9]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a EN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_en] 
       (.C(clk),
        .CE(1'b1),
        .D(\bram1a[o][o_en]_i_1_n_0 ),
        .Q(o_mem1a_we),
        .R(rst));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \copy_index0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\copy_index0_inferred__0/i__carry_n_0 ,\copy_index0_inferred__0/i__carry_n_1 ,\copy_index0_inferred__0/i__carry_n_2 ,\copy_index0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry_i_1_n_0,i__carry_i_2_n_0}),
        .O(\NLW_copy_index0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_3__0_n_0,i__carry_i_4__0_n_0,i__carry_i_5_n_0,i__carry_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \copy_index0_inferred__0/i__carry__0 
       (.CI(\copy_index0_inferred__0/i__carry_n_0 ),
        .CO({\copy_index0_inferred__0/i__carry__0_n_0 ,\copy_index0_inferred__0/i__carry__0_n_1 ,\copy_index0_inferred__0/i__carry__0_n_2 ,\copy_index0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_copy_index0_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \copy_index0_inferred__0/i__carry__1 
       (.CI(\copy_index0_inferred__0/i__carry__0_n_0 ),
        .CO({\copy_index0_inferred__0/i__carry__1_n_0 ,\copy_index0_inferred__0/i__carry__1_n_1 ,\copy_index0_inferred__0/i__carry__1_n_2 ,\copy_index0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_copy_index0_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_1__0_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0,i__carry__1_i_4__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \copy_index0_inferred__0/i__carry__2 
       (.CI(\copy_index0_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW_copy_index0_inferred__0/i__carry__2_CO_UNCONNECTED [3],\copy_index0_inferred__0/i__carry__2_n_1 ,\copy_index0_inferred__0/i__carry__2_n_2 ,\copy_index0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\copy_index_reg_n_0_[31] ,1'b0,1'b0}),
        .O(\NLW_copy_index0_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__2_i_1__0_n_0,i__carry__2_i_2__0_n_0,i__carry__2_i_3__0_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \copy_index[10]_i_1 
       (.I0(state__0[1]),
        .I1(in4[10]),
        .O(copy_index[10]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \copy_index[11]_i_1 
       (.I0(state__0[1]),
        .I1(in4[11]),
        .O(copy_index[11]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \copy_index[12]_i_1 
       (.I0(state__0[1]),
        .I1(in4[12]),
        .O(copy_index[12]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \copy_index[13]_i_1 
       (.I0(state__0[1]),
        .I1(in4[13]),
        .O(copy_index[13]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \copy_index[14]_i_1 
       (.I0(state__0[1]),
        .I1(in4[14]),
        .O(copy_index[14]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \copy_index[15]_i_1 
       (.I0(state__0[1]),
        .I1(in4[15]),
        .O(copy_index[15]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \copy_index[16]_i_1 
       (.I0(state__0[1]),
        .I1(in4[16]),
        .O(copy_index[16]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \copy_index[17]_i_1 
       (.I0(state__0[1]),
        .I1(in4[17]),
        .O(copy_index[17]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \copy_index[18]_i_1 
       (.I0(state__0[1]),
        .I1(in4[18]),
        .O(copy_index[18]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \copy_index[19]_i_1 
       (.I0(state__0[1]),
        .I1(in4[19]),
        .O(copy_index[19]));
  LUT2 #(
    .INIT(4'h8)) 
    \copy_index[1]_i_1 
       (.I0(state__0[1]),
        .I1(in4[1]),
        .O(copy_index[1]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \copy_index[20]_i_1 
       (.I0(state__0[1]),
        .I1(in4[20]),
        .O(copy_index[20]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \copy_index[21]_i_1 
       (.I0(state__0[1]),
        .I1(in4[21]),
        .O(copy_index[21]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \copy_index[22]_i_1 
       (.I0(state__0[1]),
        .I1(in4[22]),
        .O(copy_index[22]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \copy_index[23]_i_1 
       (.I0(state__0[1]),
        .I1(in4[23]),
        .O(copy_index[23]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \copy_index[24]_i_1 
       (.I0(state__0[1]),
        .I1(in4[24]),
        .O(copy_index[24]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \copy_index[25]_i_1 
       (.I0(state__0[1]),
        .I1(in4[25]),
        .O(copy_index[25]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \copy_index[26]_i_1 
       (.I0(state__0[1]),
        .I1(in4[26]),
        .O(copy_index[26]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \copy_index[27]_i_1 
       (.I0(state__0[1]),
        .I1(in4[27]),
        .O(copy_index[27]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \copy_index[28]_i_1 
       (.I0(state__0[1]),
        .I1(in4[28]),
        .O(copy_index[28]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \copy_index[29]_i_1 
       (.I0(state__0[1]),
        .I1(in4[29]),
        .O(copy_index[29]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \copy_index[2]_i_1 
       (.I0(state__0[1]),
        .I1(in4[2]),
        .O(copy_index[2]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \copy_index[30]_i_1 
       (.I0(state__0[1]),
        .I1(in4[30]),
        .O(copy_index[30]));
  LUT4 #(
    .INIT(16'h0091)) 
    \copy_index[31]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(\copy_index0_inferred__0/i__carry__2_n_1 ),
        .I3(state__0[2]),
        .O(\copy_index[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \copy_index[31]_i_2 
       (.I0(state__0[1]),
        .I1(in4[31]),
        .O(copy_index[31]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \copy_index[3]_i_1 
       (.I0(state__0[1]),
        .I1(in4[3]),
        .O(copy_index[3]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \copy_index[4]_i_1 
       (.I0(state__0[1]),
        .I1(in4[4]),
        .O(copy_index[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \copy_index[4]_i_3 
       (.I0(\copy_index_reg_n_0_[2] ),
        .O(\copy_index[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \copy_index[5]_i_1 
       (.I0(state__0[1]),
        .I1(in4[5]),
        .O(copy_index[5]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \copy_index[6]_i_1 
       (.I0(state__0[1]),
        .I1(in4[6]),
        .O(copy_index[6]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \copy_index[7]_i_1 
       (.I0(state__0[1]),
        .I1(in4[7]),
        .O(copy_index[7]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \copy_index[8]_i_1 
       (.I0(state__0[1]),
        .I1(in4[8]),
        .O(copy_index[8]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \copy_index[9]_i_1 
       (.I0(state__0[1]),
        .I1(in4[9]),
        .O(copy_index[9]));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[10] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(copy_index[10]),
        .Q(\copy_index_reg_n_0_[10] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[11] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(copy_index[11]),
        .Q(\copy_index_reg_n_0_[11] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[12] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(copy_index[12]),
        .Q(\copy_index_reg_n_0_[12] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \copy_index_reg[12]_i_2 
       (.CI(\copy_index_reg[8]_i_2_n_0 ),
        .CO({\copy_index_reg[12]_i_2_n_0 ,\copy_index_reg[12]_i_2_n_1 ,\copy_index_reg[12]_i_2_n_2 ,\copy_index_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[12:9]),
        .S({\copy_index_reg_n_0_[12] ,\copy_index_reg_n_0_[11] ,\copy_index_reg_n_0_[10] ,\copy_index_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[13] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(copy_index[13]),
        .Q(\copy_index_reg_n_0_[13] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[14] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(copy_index[14]),
        .Q(\copy_index_reg_n_0_[14] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[15] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(copy_index[15]),
        .Q(\copy_index_reg_n_0_[15] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[16] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(copy_index[16]),
        .Q(\copy_index_reg_n_0_[16] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \copy_index_reg[16]_i_2 
       (.CI(\copy_index_reg[12]_i_2_n_0 ),
        .CO({\copy_index_reg[16]_i_2_n_0 ,\copy_index_reg[16]_i_2_n_1 ,\copy_index_reg[16]_i_2_n_2 ,\copy_index_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[16:13]),
        .S({\copy_index_reg_n_0_[16] ,\copy_index_reg_n_0_[15] ,\copy_index_reg_n_0_[14] ,\copy_index_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[17] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(copy_index[17]),
        .Q(\copy_index_reg_n_0_[17] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[18] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(copy_index[18]),
        .Q(\copy_index_reg_n_0_[18] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[19] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(copy_index[19]),
        .Q(\copy_index_reg_n_0_[19] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[1] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(copy_index[1]),
        .Q(\copy_index_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[20] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(copy_index[20]),
        .Q(\copy_index_reg_n_0_[20] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \copy_index_reg[20]_i_2 
       (.CI(\copy_index_reg[16]_i_2_n_0 ),
        .CO({\copy_index_reg[20]_i_2_n_0 ,\copy_index_reg[20]_i_2_n_1 ,\copy_index_reg[20]_i_2_n_2 ,\copy_index_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[20:17]),
        .S({\copy_index_reg_n_0_[20] ,\copy_index_reg_n_0_[19] ,\copy_index_reg_n_0_[18] ,\copy_index_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[21] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(copy_index[21]),
        .Q(\copy_index_reg_n_0_[21] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[22] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(copy_index[22]),
        .Q(\copy_index_reg_n_0_[22] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[23] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(copy_index[23]),
        .Q(\copy_index_reg_n_0_[23] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[24] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(copy_index[24]),
        .Q(\copy_index_reg_n_0_[24] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \copy_index_reg[24]_i_2 
       (.CI(\copy_index_reg[20]_i_2_n_0 ),
        .CO({\copy_index_reg[24]_i_2_n_0 ,\copy_index_reg[24]_i_2_n_1 ,\copy_index_reg[24]_i_2_n_2 ,\copy_index_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[24:21]),
        .S({\copy_index_reg_n_0_[24] ,\copy_index_reg_n_0_[23] ,\copy_index_reg_n_0_[22] ,\copy_index_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[25] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(copy_index[25]),
        .Q(\copy_index_reg_n_0_[25] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[26] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(copy_index[26]),
        .Q(\copy_index_reg_n_0_[26] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[27] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(copy_index[27]),
        .Q(\copy_index_reg_n_0_[27] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[28] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(copy_index[28]),
        .Q(\copy_index_reg_n_0_[28] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \copy_index_reg[28]_i_2 
       (.CI(\copy_index_reg[24]_i_2_n_0 ),
        .CO({\copy_index_reg[28]_i_2_n_0 ,\copy_index_reg[28]_i_2_n_1 ,\copy_index_reg[28]_i_2_n_2 ,\copy_index_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[28:25]),
        .S({\copy_index_reg_n_0_[28] ,\copy_index_reg_n_0_[27] ,\copy_index_reg_n_0_[26] ,\copy_index_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[29] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(copy_index[29]),
        .Q(\copy_index_reg_n_0_[29] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[2] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(copy_index[2]),
        .Q(\copy_index_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[30] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(copy_index[30]),
        .Q(\copy_index_reg_n_0_[30] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[31] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(copy_index[31]),
        .Q(\copy_index_reg_n_0_[31] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \copy_index_reg[31]_i_3 
       (.CI(\copy_index_reg[28]_i_2_n_0 ),
        .CO({\NLW_copy_index_reg[31]_i_3_CO_UNCONNECTED [3:2],\copy_index_reg[31]_i_3_n_2 ,\copy_index_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_copy_index_reg[31]_i_3_O_UNCONNECTED [3],in4[31:29]}),
        .S({1'b0,\copy_index_reg_n_0_[31] ,\copy_index_reg_n_0_[30] ,\copy_index_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[3] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(copy_index[3]),
        .Q(\copy_index_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[4] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(copy_index[4]),
        .Q(\copy_index_reg_n_0_[4] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \copy_index_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\copy_index_reg[4]_i_2_n_0 ,\copy_index_reg[4]_i_2_n_1 ,\copy_index_reg[4]_i_2_n_2 ,\copy_index_reg[4]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\copy_index_reg_n_0_[2] ,1'b0}),
        .O(in4[4:1]),
        .S({\copy_index_reg_n_0_[4] ,\copy_index_reg_n_0_[3] ,\copy_index[4]_i_3_n_0 ,\copy_index_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[5] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(copy_index[5]),
        .Q(\copy_index_reg_n_0_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[6] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(copy_index[6]),
        .Q(\copy_index_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[7] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(copy_index[7]),
        .Q(\copy_index_reg_n_0_[7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[8] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(copy_index[8]),
        .Q(\copy_index_reg_n_0_[8] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \copy_index_reg[8]_i_2 
       (.CI(\copy_index_reg[4]_i_2_n_0 ),
        .CO({\copy_index_reg[8]_i_2_n_0 ,\copy_index_reg[8]_i_2_n_1 ,\copy_index_reg[8]_i_2_n_2 ,\copy_index_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[8:5]),
        .S({\copy_index_reg_n_0_[8] ,\copy_index_reg_n_0_[7] ,\copy_index_reg_n_0_[6] ,\copy_index_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[9] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(copy_index[9]),
        .Q(\copy_index_reg_n_0_[9] ),
        .R(rst));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_1
       (.I0(\write_index_reg_n_0_[16] ),
        .I1(\write_index_reg_n_0_[17] ),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_1__0
       (.I0(\copy_index_reg_n_0_[17] ),
        .I1(\copy_index_reg_n_0_[16] ),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_2
       (.I0(\write_index_reg_n_0_[14] ),
        .I1(\write_index_reg_n_0_[15] ),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_2__0
       (.I0(\copy_index_reg_n_0_[14] ),
        .I1(\copy_index_reg_n_0_[15] ),
        .O(i__carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_3
       (.I0(\write_index_reg_n_0_[12] ),
        .I1(\write_index_reg_n_0_[13] ),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_3__0
       (.I0(\copy_index_reg_n_0_[12] ),
        .I1(\copy_index_reg_n_0_[13] ),
        .O(i__carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_4
       (.I0(\write_index_reg_n_0_[10] ),
        .I1(\write_index_reg_n_0_[11] ),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_4__0
       (.I0(\copy_index_reg_n_0_[10] ),
        .I1(\copy_index_reg_n_0_[11] ),
        .O(i__carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_1
       (.I0(\write_index_reg_n_0_[24] ),
        .I1(\write_index_reg_n_0_[25] ),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_1__0
       (.I0(\copy_index_reg_n_0_[25] ),
        .I1(\copy_index_reg_n_0_[24] ),
        .O(i__carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_2
       (.I0(\write_index_reg_n_0_[22] ),
        .I1(\write_index_reg_n_0_[23] ),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_2__0
       (.I0(\copy_index_reg_n_0_[22] ),
        .I1(\copy_index_reg_n_0_[23] ),
        .O(i__carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_3
       (.I0(\write_index_reg_n_0_[20] ),
        .I1(\write_index_reg_n_0_[21] ),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_3__0
       (.I0(\copy_index_reg_n_0_[20] ),
        .I1(\copy_index_reg_n_0_[21] ),
        .O(i__carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_4
       (.I0(\write_index_reg_n_0_[18] ),
        .I1(\write_index_reg_n_0_[19] ),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_4__0
       (.I0(\copy_index_reg_n_0_[18] ),
        .I1(\copy_index_reg_n_0_[19] ),
        .O(i__carry__1_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_1
       (.I0(\write_index_reg_n_0_[30] ),
        .I1(\write_index_reg_n_0_[31] ),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_1__0
       (.I0(\copy_index_reg_n_0_[30] ),
        .I1(\copy_index_reg_n_0_[31] ),
        .O(i__carry__2_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_2
       (.I0(\write_index_reg_n_0_[28] ),
        .I1(\write_index_reg_n_0_[29] ),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_2__0
       (.I0(\copy_index_reg_n_0_[28] ),
        .I1(\copy_index_reg_n_0_[29] ),
        .O(i__carry__2_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_3
       (.I0(\write_index_reg_n_0_[26] ),
        .I1(\write_index_reg_n_0_[27] ),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_3__0
       (.I0(\copy_index_reg_n_0_[26] ),
        .I1(\copy_index_reg_n_0_[27] ),
        .O(i__carry__2_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    i__carry_i_1
       (.I0(\copy_index_reg_n_0_[4] ),
        .I1(\copy_index_reg_n_0_[5] ),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    i__carry_i_1__0
       (.I0(\write_index_reg_n_0_[4] ),
        .I1(\write_index_reg_n_0_[5] ),
        .O(i__carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    i__carry_i_2
       (.I0(\copy_index_reg_n_0_[2] ),
        .I1(\copy_index_reg_n_0_[3] ),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    i__carry_i_2__0
       (.I0(\write_index_reg_n_0_[2] ),
        .I1(\write_index_reg_n_0_[3] ),
        .O(i__carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_3
       (.I0(\write_index_reg_n_0_[8] ),
        .I1(\write_index_reg_n_0_[9] ),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_3__0
       (.I0(\copy_index_reg_n_0_[9] ),
        .I1(\copy_index_reg_n_0_[8] ),
        .O(i__carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_4
       (.I0(\write_index_reg_n_0_[6] ),
        .I1(\write_index_reg_n_0_[7] ),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_4__0
       (.I0(\copy_index_reg_n_0_[6] ),
        .I1(\copy_index_reg_n_0_[7] ),
        .O(i__carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_5
       (.I0(\copy_index_reg_n_0_[5] ),
        .I1(\copy_index_reg_n_0_[4] ),
        .O(i__carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_5__0
       (.I0(\write_index_reg_n_0_[5] ),
        .I1(\write_index_reg_n_0_[4] ),
        .O(i__carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_6
       (.I0(\copy_index_reg_n_0_[3] ),
        .I1(\copy_index_reg_n_0_[2] ),
        .O(i__carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_6__0
       (.I0(\write_index_reg_n_0_[3] ),
        .I1(\write_index_reg_n_0_[2] ),
        .O(i__carry_i_6__0_n_0));
  LUT5 #(
    .INIT(32'hFFF20002)) 
    o_control0b_i_1
       (.I0(enable),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(o_control0b),
        .O(o_control0b_i_1_n_0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T1b CTRL" *) 
  FDRE o_control0b_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_control0b_i_1_n_0),
        .Q(o_control0b),
        .R(rst));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    o_control1a_i_1
       (.I0(enable),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .I4(o_control1a),
        .O(o_control1a_i_1_n_0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_P1P1T2a CTRL" *) 
  FDRE o_control1a_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_control1a_i_1_n_0),
        .Q(o_control1a),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFF777C00000008)) 
    o_done_i_1
       (.I0(o_done_i_2_n_0),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(rst),
        .I5(o_done),
        .O(o_done_i_1_n_0));
  LUT5 #(
    .INIT(32'h00001000)) 
    o_done_i_2
       (.I0(state__0[0]),
        .I1(state1[0]),
        .I2(state1[2]),
        .I3(state1[1]),
        .I4(state__0[1]),
        .O(o_done_i_2_n_0));
  FDRE o_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_done_i_1_n_0),
        .Q(o_done),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \p1_in[31]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .O(p1_in));
  FDRE #(
    .INIT(1'b0)) 
    \p1_in_reg[0] 
       (.C(clk),
        .CE(p1_in),
        .D(i_mem0b_dout[0]),
        .Q(p_0_out[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \p1_in_reg[10] 
       (.C(clk),
        .CE(p1_in),
        .D(i_mem0b_dout[10]),
        .Q(p_0_out[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \p1_in_reg[11] 
       (.C(clk),
        .CE(p1_in),
        .D(i_mem0b_dout[11]),
        .Q(p_0_out[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \p1_in_reg[12] 
       (.C(clk),
        .CE(p1_in),
        .D(i_mem0b_dout[12]),
        .Q(p_0_out[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \p1_in_reg[13] 
       (.C(clk),
        .CE(p1_in),
        .D(i_mem0b_dout[13]),
        .Q(p_0_out[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \p1_in_reg[14] 
       (.C(clk),
        .CE(p1_in),
        .D(i_mem0b_dout[14]),
        .Q(p_0_out[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \p1_in_reg[15] 
       (.C(clk),
        .CE(p1_in),
        .D(i_mem0b_dout[15]),
        .Q(\p1_in_reg_n_0_[15] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \p1_in_reg[16] 
       (.C(clk),
        .CE(p1_in),
        .D(i_mem0b_dout[16]),
        .Q(p_0_out[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \p1_in_reg[17] 
       (.C(clk),
        .CE(p1_in),
        .D(i_mem0b_dout[17]),
        .Q(p_0_out[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \p1_in_reg[18] 
       (.C(clk),
        .CE(p1_in),
        .D(i_mem0b_dout[18]),
        .Q(p_0_out[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \p1_in_reg[19] 
       (.C(clk),
        .CE(p1_in),
        .D(i_mem0b_dout[19]),
        .Q(p_0_out[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \p1_in_reg[1] 
       (.C(clk),
        .CE(p1_in),
        .D(i_mem0b_dout[1]),
        .Q(p_0_out[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \p1_in_reg[20] 
       (.C(clk),
        .CE(p1_in),
        .D(i_mem0b_dout[20]),
        .Q(p_0_out[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \p1_in_reg[21] 
       (.C(clk),
        .CE(p1_in),
        .D(i_mem0b_dout[21]),
        .Q(p_0_out[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \p1_in_reg[22] 
       (.C(clk),
        .CE(p1_in),
        .D(i_mem0b_dout[22]),
        .Q(p_0_out[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \p1_in_reg[23] 
       (.C(clk),
        .CE(p1_in),
        .D(i_mem0b_dout[23]),
        .Q(\p1_in_reg_n_0_[23] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \p1_in_reg[24] 
       (.C(clk),
        .CE(p1_in),
        .D(i_mem0b_dout[24]),
        .Q(p_0_out[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \p1_in_reg[25] 
       (.C(clk),
        .CE(p1_in),
        .D(i_mem0b_dout[25]),
        .Q(p_0_out[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \p1_in_reg[26] 
       (.C(clk),
        .CE(p1_in),
        .D(i_mem0b_dout[26]),
        .Q(p_0_out[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \p1_in_reg[27] 
       (.C(clk),
        .CE(p1_in),
        .D(i_mem0b_dout[27]),
        .Q(p_0_out[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \p1_in_reg[28] 
       (.C(clk),
        .CE(p1_in),
        .D(i_mem0b_dout[28]),
        .Q(p_0_out[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \p1_in_reg[29] 
       (.C(clk),
        .CE(p1_in),
        .D(i_mem0b_dout[29]),
        .Q(p_0_out[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \p1_in_reg[2] 
       (.C(clk),
        .CE(p1_in),
        .D(i_mem0b_dout[2]),
        .Q(p_0_out[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \p1_in_reg[30] 
       (.C(clk),
        .CE(p1_in),
        .D(i_mem0b_dout[30]),
        .Q(p_0_out[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \p1_in_reg[31] 
       (.C(clk),
        .CE(p1_in),
        .D(i_mem0b_dout[31]),
        .Q(\p1_in_reg_n_0_[31] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \p1_in_reg[3] 
       (.C(clk),
        .CE(p1_in),
        .D(i_mem0b_dout[3]),
        .Q(p_0_out[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \p1_in_reg[4] 
       (.C(clk),
        .CE(p1_in),
        .D(i_mem0b_dout[4]),
        .Q(p_0_out[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \p1_in_reg[5] 
       (.C(clk),
        .CE(p1_in),
        .D(i_mem0b_dout[5]),
        .Q(p_0_out[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \p1_in_reg[6] 
       (.C(clk),
        .CE(p1_in),
        .D(i_mem0b_dout[6]),
        .Q(p_0_out[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \p1_in_reg[7] 
       (.C(clk),
        .CE(p1_in),
        .D(i_mem0b_dout[7]),
        .Q(\p1_in_reg_n_0_[7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \p1_in_reg[8] 
       (.C(clk),
        .CE(p1_in),
        .D(i_mem0b_dout[8]),
        .Q(p_0_out[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \p1_in_reg[9] 
       (.C(clk),
        .CE(p1_in),
        .D(i_mem0b_dout[9]),
        .Q(p_0_out[10]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,o_mem0b_addr[2],1'b0}),
        .O(in6[4:1]),
        .S({o_mem0b_addr[4:3],plusOp_carry_i_1_n_0,o_mem0b_addr[1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in6[8:5]),
        .S(o_mem0b_addr[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in6[12:9]),
        .S(o_mem0b_addr[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in6[16:13]),
        .S(o_mem0b_addr[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({plusOp_carry__3_n_0,plusOp_carry__3_n_1,plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in6[20:17]),
        .S(o_mem0b_addr[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_0),
        .CO({plusOp_carry__4_n_0,plusOp_carry__4_n_1,plusOp_carry__4_n_2,plusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in6[24:21]),
        .S(o_mem0b_addr[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__5
       (.CI(plusOp_carry__4_n_0),
        .CO({plusOp_carry__5_n_0,plusOp_carry__5_n_1,plusOp_carry__5_n_2,plusOp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in6[28:25]),
        .S(o_mem0b_addr[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__6
       (.CI(plusOp_carry__5_n_0),
        .CO({NLW_plusOp_carry__6_CO_UNCONNECTED[3:2],plusOp_carry__6_n_2,plusOp_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__6_O_UNCONNECTED[3],in6[31:29]}),
        .S({1'b0,o_mem0b_addr[31:29]}));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_carry_i_1
       (.I0(o_mem0b_addr[2]),
        .O(plusOp_carry_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dsta_adr_reg[0] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_dsta_adr[0]),
        .Q(s_dsta_adr[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dsta_adr_reg[10] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_dsta_adr[10]),
        .Q(s_dsta_adr[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dsta_adr_reg[11] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_dsta_adr[11]),
        .Q(s_dsta_adr[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dsta_adr_reg[12] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_dsta_adr[12]),
        .Q(s_dsta_adr[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dsta_adr_reg[13] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_dsta_adr[13]),
        .Q(s_dsta_adr[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dsta_adr_reg[14] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_dsta_adr[14]),
        .Q(s_dsta_adr[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dsta_adr_reg[15] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_dsta_adr[15]),
        .Q(s_dsta_adr[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dsta_adr_reg[16] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_dsta_adr[16]),
        .Q(s_dsta_adr[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dsta_adr_reg[17] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_dsta_adr[17]),
        .Q(s_dsta_adr[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dsta_adr_reg[18] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_dsta_adr[18]),
        .Q(s_dsta_adr[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dsta_adr_reg[19] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_dsta_adr[19]),
        .Q(s_dsta_adr[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dsta_adr_reg[1] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_dsta_adr[1]),
        .Q(s_dsta_adr[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dsta_adr_reg[20] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_dsta_adr[20]),
        .Q(s_dsta_adr[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dsta_adr_reg[21] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_dsta_adr[21]),
        .Q(s_dsta_adr[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dsta_adr_reg[22] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_dsta_adr[22]),
        .Q(s_dsta_adr[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dsta_adr_reg[23] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_dsta_adr[23]),
        .Q(s_dsta_adr[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dsta_adr_reg[24] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_dsta_adr[24]),
        .Q(s_dsta_adr[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dsta_adr_reg[25] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_dsta_adr[25]),
        .Q(s_dsta_adr[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dsta_adr_reg[26] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_dsta_adr[26]),
        .Q(s_dsta_adr[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dsta_adr_reg[27] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_dsta_adr[27]),
        .Q(s_dsta_adr[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dsta_adr_reg[28] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_dsta_adr[28]),
        .Q(s_dsta_adr[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dsta_adr_reg[29] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_dsta_adr[29]),
        .Q(s_dsta_adr[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dsta_adr_reg[2] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_dsta_adr[2]),
        .Q(s_dsta_adr[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dsta_adr_reg[30] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_dsta_adr[30]),
        .Q(s_dsta_adr[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dsta_adr_reg[31] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_dsta_adr[31]),
        .Q(s_dsta_adr[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dsta_adr_reg[3] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_dsta_adr[3]),
        .Q(s_dsta_adr[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dsta_adr_reg[4] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_dsta_adr[4]),
        .Q(s_dsta_adr[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dsta_adr_reg[5] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_dsta_adr[5]),
        .Q(s_dsta_adr[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dsta_adr_reg[6] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_dsta_adr[6]),
        .Q(s_dsta_adr[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dsta_adr_reg[7] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_dsta_adr[7]),
        .Q(s_dsta_adr[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dsta_adr_reg[8] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_dsta_adr[8]),
        .Q(s_dsta_adr[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_dsta_adr_reg[9] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_dsta_adr[9]),
        .Q(s_dsta_adr[9]),
        .R(rst));
  LUT5 #(
    .INIT(32'h00000100)) 
    \s_dstb_adr[31]_i_1 
       (.I0(rst),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(enable),
        .I4(state__0[2]),
        .O(s_dstb_adr_1));
  FDRE #(
    .INIT(1'b0)) 
    \s_dstb_adr_reg[0] 
       (.C(clk),
        .CE(s_dstb_adr_1),
        .D(i_dstb_adr[0]),
        .Q(s_dstb_adr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dstb_adr_reg[10] 
       (.C(clk),
        .CE(s_dstb_adr_1),
        .D(i_dstb_adr[10]),
        .Q(s_dstb_adr[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dstb_adr_reg[11] 
       (.C(clk),
        .CE(s_dstb_adr_1),
        .D(i_dstb_adr[11]),
        .Q(s_dstb_adr[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dstb_adr_reg[12] 
       (.C(clk),
        .CE(s_dstb_adr_1),
        .D(i_dstb_adr[12]),
        .Q(s_dstb_adr[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dstb_adr_reg[13] 
       (.C(clk),
        .CE(s_dstb_adr_1),
        .D(i_dstb_adr[13]),
        .Q(s_dstb_adr[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dstb_adr_reg[14] 
       (.C(clk),
        .CE(s_dstb_adr_1),
        .D(i_dstb_adr[14]),
        .Q(s_dstb_adr[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dstb_adr_reg[15] 
       (.C(clk),
        .CE(s_dstb_adr_1),
        .D(i_dstb_adr[15]),
        .Q(s_dstb_adr[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dstb_adr_reg[16] 
       (.C(clk),
        .CE(s_dstb_adr_1),
        .D(i_dstb_adr[16]),
        .Q(s_dstb_adr[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dstb_adr_reg[17] 
       (.C(clk),
        .CE(s_dstb_adr_1),
        .D(i_dstb_adr[17]),
        .Q(s_dstb_adr[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dstb_adr_reg[18] 
       (.C(clk),
        .CE(s_dstb_adr_1),
        .D(i_dstb_adr[18]),
        .Q(s_dstb_adr[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dstb_adr_reg[19] 
       (.C(clk),
        .CE(s_dstb_adr_1),
        .D(i_dstb_adr[19]),
        .Q(s_dstb_adr[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dstb_adr_reg[1] 
       (.C(clk),
        .CE(s_dstb_adr_1),
        .D(i_dstb_adr[1]),
        .Q(s_dstb_adr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dstb_adr_reg[20] 
       (.C(clk),
        .CE(s_dstb_adr_1),
        .D(i_dstb_adr[20]),
        .Q(s_dstb_adr[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dstb_adr_reg[21] 
       (.C(clk),
        .CE(s_dstb_adr_1),
        .D(i_dstb_adr[21]),
        .Q(s_dstb_adr[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dstb_adr_reg[22] 
       (.C(clk),
        .CE(s_dstb_adr_1),
        .D(i_dstb_adr[22]),
        .Q(s_dstb_adr[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dstb_adr_reg[23] 
       (.C(clk),
        .CE(s_dstb_adr_1),
        .D(i_dstb_adr[23]),
        .Q(s_dstb_adr[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dstb_adr_reg[24] 
       (.C(clk),
        .CE(s_dstb_adr_1),
        .D(i_dstb_adr[24]),
        .Q(s_dstb_adr[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dstb_adr_reg[25] 
       (.C(clk),
        .CE(s_dstb_adr_1),
        .D(i_dstb_adr[25]),
        .Q(s_dstb_adr[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dstb_adr_reg[26] 
       (.C(clk),
        .CE(s_dstb_adr_1),
        .D(i_dstb_adr[26]),
        .Q(s_dstb_adr[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dstb_adr_reg[27] 
       (.C(clk),
        .CE(s_dstb_adr_1),
        .D(i_dstb_adr[27]),
        .Q(s_dstb_adr[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dstb_adr_reg[28] 
       (.C(clk),
        .CE(s_dstb_adr_1),
        .D(i_dstb_adr[28]),
        .Q(s_dstb_adr[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dstb_adr_reg[29] 
       (.C(clk),
        .CE(s_dstb_adr_1),
        .D(i_dstb_adr[29]),
        .Q(s_dstb_adr[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dstb_adr_reg[2] 
       (.C(clk),
        .CE(s_dstb_adr_1),
        .D(i_dstb_adr[2]),
        .Q(s_dstb_adr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dstb_adr_reg[30] 
       (.C(clk),
        .CE(s_dstb_adr_1),
        .D(i_dstb_adr[30]),
        .Q(s_dstb_adr[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dstb_adr_reg[31] 
       (.C(clk),
        .CE(s_dstb_adr_1),
        .D(i_dstb_adr[31]),
        .Q(s_dstb_adr[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dstb_adr_reg[3] 
       (.C(clk),
        .CE(s_dstb_adr_1),
        .D(i_dstb_adr[3]),
        .Q(s_dstb_adr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dstb_adr_reg[4] 
       (.C(clk),
        .CE(s_dstb_adr_1),
        .D(i_dstb_adr[4]),
        .Q(s_dstb_adr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dstb_adr_reg[5] 
       (.C(clk),
        .CE(s_dstb_adr_1),
        .D(i_dstb_adr[5]),
        .Q(s_dstb_adr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dstb_adr_reg[6] 
       (.C(clk),
        .CE(s_dstb_adr_1),
        .D(i_dstb_adr[6]),
        .Q(s_dstb_adr[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dstb_adr_reg[7] 
       (.C(clk),
        .CE(s_dstb_adr_1),
        .D(i_dstb_adr[7]),
        .Q(s_dstb_adr[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dstb_adr_reg[8] 
       (.C(clk),
        .CE(s_dstb_adr_1),
        .D(i_dstb_adr[8]),
        .Q(s_dstb_adr[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dstb_adr_reg[9] 
       (.C(clk),
        .CE(s_dstb_adr_1),
        .D(i_dstb_adr[9]),
        .Q(s_dstb_adr[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    s_ji_eq_reg
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_ji_equal),
        .Q(s_ji_eq_reg_n_0),
        .R(rst));
  LUT4 #(
    .INIT(16'h0002)) 
    \s_src_adr[31]_i_1 
       (.I0(enable),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .O(s_src_adr_0));
  FDRE #(
    .INIT(1'b0)) 
    \s_src_adr_reg[0] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_src_adr[0]),
        .Q(s_src_adr[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_src_adr_reg[10] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_src_adr[10]),
        .Q(s_src_adr[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_src_adr_reg[11] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_src_adr[11]),
        .Q(s_src_adr[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_src_adr_reg[12] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_src_adr[12]),
        .Q(s_src_adr[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_src_adr_reg[13] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_src_adr[13]),
        .Q(s_src_adr[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_src_adr_reg[14] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_src_adr[14]),
        .Q(s_src_adr[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_src_adr_reg[15] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_src_adr[15]),
        .Q(s_src_adr[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_src_adr_reg[16] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_src_adr[16]),
        .Q(s_src_adr[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_src_adr_reg[17] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_src_adr[17]),
        .Q(s_src_adr[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_src_adr_reg[18] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_src_adr[18]),
        .Q(s_src_adr[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_src_adr_reg[19] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_src_adr[19]),
        .Q(s_src_adr[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_src_adr_reg[1] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_src_adr[1]),
        .Q(s_src_adr[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_src_adr_reg[20] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_src_adr[20]),
        .Q(s_src_adr[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_src_adr_reg[21] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_src_adr[21]),
        .Q(s_src_adr[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_src_adr_reg[22] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_src_adr[22]),
        .Q(s_src_adr[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_src_adr_reg[23] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_src_adr[23]),
        .Q(s_src_adr[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_src_adr_reg[24] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_src_adr[24]),
        .Q(s_src_adr[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_src_adr_reg[25] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_src_adr[25]),
        .Q(s_src_adr[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_src_adr_reg[26] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_src_adr[26]),
        .Q(s_src_adr[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_src_adr_reg[27] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_src_adr[27]),
        .Q(s_src_adr[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_src_adr_reg[28] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_src_adr[28]),
        .Q(s_src_adr[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_src_adr_reg[29] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_src_adr[29]),
        .Q(s_src_adr[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_src_adr_reg[2] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_src_adr[2]),
        .Q(s_src_adr[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_src_adr_reg[30] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_src_adr[30]),
        .Q(s_src_adr[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_src_adr_reg[31] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_src_adr[31]),
        .Q(s_src_adr[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_src_adr_reg[3] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_src_adr[3]),
        .Q(s_src_adr[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_src_adr_reg[4] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_src_adr[4]),
        .Q(s_src_adr[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_src_adr_reg[5] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_src_adr[5]),
        .Q(s_src_adr[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_src_adr_reg[6] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_src_adr[6]),
        .Q(s_src_adr[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_src_adr_reg[7] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_src_adr[7]),
        .Q(s_src_adr[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_src_adr_reg[8] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_src_adr[8]),
        .Q(s_src_adr[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_src_adr_reg[9] 
       (.C(clk),
        .CE(s_src_adr_0),
        .D(i_src_adr[9]),
        .Q(s_src_adr[9]),
        .R(rst));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 start_main0_carry
       (.CI(1'b0),
        .CO({start_main0_carry_n_0,start_main0_carry_n_1,start_main0_carry_n_2,start_main0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({start_main0_carry_i_1_n_0,start_main0_carry_i_2_n_0,\copy_index_reg_n_0_[3] ,\copy_index_reg_n_0_[1] }),
        .O(NLW_start_main0_carry_O_UNCONNECTED[3:0]),
        .S({start_main0_carry_i_3_n_0,start_main0_carry_i_4_n_0,start_main0_carry_i_5_n_0,start_main0_carry_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 start_main0_carry__0
       (.CI(start_main0_carry_n_0),
        .CO({start_main0_carry__0_n_0,start_main0_carry__0_n_1,start_main0_carry__0_n_2,start_main0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({start_main0_carry__0_i_1_n_0,start_main0_carry__0_i_2_n_0,start_main0_carry__0_i_3_n_0,start_main0_carry__0_i_4_n_0}),
        .O(NLW_start_main0_carry__0_O_UNCONNECTED[3:0]),
        .S({start_main0_carry__0_i_5_n_0,start_main0_carry__0_i_6_n_0,start_main0_carry__0_i_7_n_0,start_main0_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    start_main0_carry__0_i_1
       (.I0(\copy_index_reg_n_0_[15] ),
        .I1(\copy_index_reg_n_0_[14] ),
        .O(start_main0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    start_main0_carry__0_i_2
       (.I0(\copy_index_reg_n_0_[13] ),
        .I1(\copy_index_reg_n_0_[12] ),
        .O(start_main0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    start_main0_carry__0_i_3
       (.I0(\copy_index_reg_n_0_[11] ),
        .I1(\copy_index_reg_n_0_[10] ),
        .O(start_main0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    start_main0_carry__0_i_4
       (.I0(\copy_index_reg_n_0_[8] ),
        .I1(\copy_index_reg_n_0_[9] ),
        .O(start_main0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_main0_carry__0_i_5
       (.I0(\copy_index_reg_n_0_[14] ),
        .I1(\copy_index_reg_n_0_[15] ),
        .O(start_main0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_main0_carry__0_i_6
       (.I0(\copy_index_reg_n_0_[12] ),
        .I1(\copy_index_reg_n_0_[13] ),
        .O(start_main0_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_main0_carry__0_i_7
       (.I0(\copy_index_reg_n_0_[10] ),
        .I1(\copy_index_reg_n_0_[11] ),
        .O(start_main0_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_main0_carry__0_i_8
       (.I0(\copy_index_reg_n_0_[9] ),
        .I1(\copy_index_reg_n_0_[8] ),
        .O(start_main0_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 start_main0_carry__1
       (.CI(start_main0_carry__0_n_0),
        .CO({start_main0_carry__1_n_0,start_main0_carry__1_n_1,start_main0_carry__1_n_2,start_main0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({start_main0_carry__1_i_1_n_0,start_main0_carry__1_i_2_n_0,start_main0_carry__1_i_3_n_0,start_main0_carry__1_i_4_n_0}),
        .O(NLW_start_main0_carry__1_O_UNCONNECTED[3:0]),
        .S({start_main0_carry__1_i_5_n_0,start_main0_carry__1_i_6_n_0,start_main0_carry__1_i_7_n_0,start_main0_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    start_main0_carry__1_i_1
       (.I0(\copy_index_reg_n_0_[23] ),
        .I1(\copy_index_reg_n_0_[22] ),
        .O(start_main0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    start_main0_carry__1_i_2
       (.I0(\copy_index_reg_n_0_[21] ),
        .I1(\copy_index_reg_n_0_[20] ),
        .O(start_main0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    start_main0_carry__1_i_3
       (.I0(\copy_index_reg_n_0_[19] ),
        .I1(\copy_index_reg_n_0_[18] ),
        .O(start_main0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    start_main0_carry__1_i_4
       (.I0(\copy_index_reg_n_0_[16] ),
        .I1(\copy_index_reg_n_0_[17] ),
        .O(start_main0_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_main0_carry__1_i_5
       (.I0(\copy_index_reg_n_0_[22] ),
        .I1(\copy_index_reg_n_0_[23] ),
        .O(start_main0_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_main0_carry__1_i_6
       (.I0(\copy_index_reg_n_0_[20] ),
        .I1(\copy_index_reg_n_0_[21] ),
        .O(start_main0_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_main0_carry__1_i_7
       (.I0(\copy_index_reg_n_0_[18] ),
        .I1(\copy_index_reg_n_0_[19] ),
        .O(start_main0_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_main0_carry__1_i_8
       (.I0(\copy_index_reg_n_0_[17] ),
        .I1(\copy_index_reg_n_0_[16] ),
        .O(start_main0_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 start_main0_carry__2
       (.CI(start_main0_carry__1_n_0),
        .CO({start_main,start_main0_carry__2_n_1,start_main0_carry__2_n_2,start_main0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({start_main0_carry__2_i_1_n_0,start_main0_carry__2_i_2_n_0,start_main0_carry__2_i_3_n_0,start_main0_carry__2_i_4_n_0}),
        .O(NLW_start_main0_carry__2_O_UNCONNECTED[3:0]),
        .S({start_main0_carry__2_i_5_n_0,start_main0_carry__2_i_6_n_0,start_main0_carry__2_i_7_n_0,start_main0_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    start_main0_carry__2_i_1
       (.I0(\copy_index_reg_n_0_[30] ),
        .I1(\copy_index_reg_n_0_[31] ),
        .O(start_main0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    start_main0_carry__2_i_2
       (.I0(\copy_index_reg_n_0_[29] ),
        .I1(\copy_index_reg_n_0_[28] ),
        .O(start_main0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    start_main0_carry__2_i_3
       (.I0(\copy_index_reg_n_0_[27] ),
        .I1(\copy_index_reg_n_0_[26] ),
        .O(start_main0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    start_main0_carry__2_i_4
       (.I0(\copy_index_reg_n_0_[24] ),
        .I1(\copy_index_reg_n_0_[25] ),
        .O(start_main0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_main0_carry__2_i_5
       (.I0(\copy_index_reg_n_0_[30] ),
        .I1(\copy_index_reg_n_0_[31] ),
        .O(start_main0_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_main0_carry__2_i_6
       (.I0(\copy_index_reg_n_0_[28] ),
        .I1(\copy_index_reg_n_0_[29] ),
        .O(start_main0_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_main0_carry__2_i_7
       (.I0(\copy_index_reg_n_0_[26] ),
        .I1(\copy_index_reg_n_0_[27] ),
        .O(start_main0_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_main0_carry__2_i_8
       (.I0(\copy_index_reg_n_0_[25] ),
        .I1(\copy_index_reg_n_0_[24] ),
        .O(start_main0_carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    start_main0_carry_i_1
       (.I0(\copy_index_reg_n_0_[7] ),
        .I1(\copy_index_reg_n_0_[6] ),
        .O(start_main0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    start_main0_carry_i_2
       (.I0(\copy_index_reg_n_0_[4] ),
        .I1(\copy_index_reg_n_0_[5] ),
        .O(start_main0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_main0_carry_i_3
       (.I0(\copy_index_reg_n_0_[6] ),
        .I1(\copy_index_reg_n_0_[7] ),
        .O(start_main0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_main0_carry_i_4
       (.I0(\copy_index_reg_n_0_[5] ),
        .I1(\copy_index_reg_n_0_[4] ),
        .O(start_main0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    start_main0_carry_i_5
       (.I0(\copy_index_reg_n_0_[2] ),
        .I1(\copy_index_reg_n_0_[3] ),
        .O(start_main0_carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    start_main0_carry_i_6
       (.I0(\copy_index_reg_n_0_[1] ),
        .O(start_main0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp0[31]_i_1 
       (.I0(s_ji_eq_reg_n_0),
        .I1(start_main),
        .O(\bram1a[o][o_din]0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[10] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(p_0_out[10]),
        .Q(p_0_in[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[11] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(p_0_out[11]),
        .Q(p_0_in[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[12] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(p_0_out[12]),
        .Q(p_0_in[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[13] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(p_0_out[13]),
        .Q(p_0_in[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[14] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(p_0_out[14]),
        .Q(p_0_in[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[15] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(p_0_out[15]),
        .Q(p_0_in[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[17] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(p_0_out[17]),
        .Q(\tmp0_reg_n_0_[17] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[18] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(p_0_out[18]),
        .Q(\tmp0_reg_n_0_[18] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[19] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(p_0_out[19]),
        .Q(\tmp0_reg_n_0_[19] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[1] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(p_0_out[1]),
        .Q(\tmp0_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[20] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(p_0_out[20]),
        .Q(\tmp0_reg_n_0_[20] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[21] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(p_0_out[21]),
        .Q(\tmp0_reg_n_0_[21] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[22] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(p_0_out[22]),
        .Q(\tmp0_reg_n_0_[22] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[23] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(p_0_out[23]),
        .Q(\tmp0_reg_n_0_[23] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[25] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(p_0_out[25]),
        .Q(\tmp0_reg_n_0_[25] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[26] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(p_0_out[26]),
        .Q(\tmp0_reg_n_0_[26] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[27] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(p_0_out[27]),
        .Q(\tmp0_reg_n_0_[27] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[28] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(p_0_out[28]),
        .Q(\tmp0_reg_n_0_[28] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[29] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(p_0_out[29]),
        .Q(\tmp0_reg_n_0_[29] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[2] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(p_0_out[2]),
        .Q(\tmp0_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[30] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(p_0_out[30]),
        .Q(\tmp0_reg_n_0_[30] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[31] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(p_0_out[31]),
        .Q(\tmp0_reg_n_0_[31] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[3] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(p_0_out[3]),
        .Q(\tmp0_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[4] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(p_0_out[4]),
        .Q(\tmp0_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[5] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(p_0_out[5]),
        .Q(\tmp0_reg_n_0_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[6] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(p_0_out[6]),
        .Q(\tmp0_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[7] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(p_0_out[7]),
        .Q(\tmp0_reg_n_0_[7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[9] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(p_0_out[9]),
        .Q(p_0_in[1]),
        .R(rst));
  LUT6 #(
    .INIT(64'h15555555AAAAAAAA)) 
    \tmp1[0]_i_1 
       (.I0(\tmp1_reg[4]_i_3_n_6 ),
        .I1(\tmp1_reg[4]_i_3_n_7 ),
        .I2(\tmp1_reg[4]_i_2_n_5 ),
        .I3(\tmp1_reg[4]_i_2_n_6 ),
        .I4(\tmp1_reg[4]_i_2_n_4 ),
        .I5(\tmp1_reg[4]_i_2_n_7 ),
        .O(\tmp1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3FC03FC07F00FF00)) 
    \tmp1[10]_i_1 
       (.I0(\tmp1_reg[12]_i_2_n_4 ),
        .I1(\tmp1_reg[12]_i_2_n_6 ),
        .I2(\tmp1_reg[12]_i_2_n_7 ),
        .I3(\tmp1_reg[12]_i_2_n_5 ),
        .I4(\tmp1_reg[12]_i_3_n_7 ),
        .I5(\tmp1_reg[12]_i_3_n_6 ),
        .O(\tmp1[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAA6AAA2AAAAAAA)) 
    \tmp1[11]_i_1 
       (.I0(\tmp1_reg[12]_i_2_n_4 ),
        .I1(\tmp1_reg[12]_i_2_n_6 ),
        .I2(\tmp1_reg[12]_i_2_n_7 ),
        .I3(\tmp1_reg[12]_i_2_n_5 ),
        .I4(\tmp1_reg[12]_i_3_n_7 ),
        .I5(\tmp1_reg[12]_i_3_n_6 ),
        .O(\tmp1[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF80007FFF0000)) 
    \tmp1[12]_i_1 
       (.I0(\tmp1_reg[12]_i_2_n_4 ),
        .I1(\tmp1_reg[12]_i_2_n_6 ),
        .I2(\tmp1_reg[12]_i_2_n_7 ),
        .I3(\tmp1_reg[12]_i_2_n_5 ),
        .I4(\tmp1_reg[12]_i_3_n_7 ),
        .I5(\tmp1_reg[12]_i_3_n_6 ),
        .O(\tmp1[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \tmp1[12]_i_12 
       (.I0(p_0_in[6]),
        .I1(p_0_in[7]),
        .I2(p_0_in[5]),
        .O(\tmp1[12]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \tmp1[12]_i_13 
       (.I0(p_0_in[5]),
        .I1(p_0_in[6]),
        .I2(p_0_in[7]),
        .O(\tmp1[12]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \tmp1[12]_i_14 
       (.I0(p_0_in[6]),
        .I1(p_0_in[7]),
        .I2(p_0_in[5]),
        .O(\tmp1[12]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp1[12]_i_15 
       (.I0(p_0_in[5]),
        .I1(p_0_in[6]),
        .O(\tmp1[12]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \tmp1[12]_i_16 
       (.I0(p_0_in[7]),
        .I1(p_0_in[6]),
        .I2(p_0_in[5]),
        .O(\tmp1[12]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \tmp1[12]_i_17 
       (.I0(p_0_in[5]),
        .I1(p_0_in[7]),
        .I2(p_0_in[6]),
        .O(\tmp1[12]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \tmp1[12]_i_18 
       (.I0(p_0_in[6]),
        .I1(p_0_in[7]),
        .I2(p_0_in[5]),
        .O(\tmp1[12]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp1[12]_i_4 
       (.I0(p_0_in[3]),
        .I1(\tmp1_reg[12]_i_10_n_4 ),
        .O(\tmp1[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp1[12]_i_5 
       (.I0(p_0_in[2]),
        .I1(\tmp1_reg[12]_i_10_n_5 ),
        .O(\tmp1[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp1[12]_i_6 
       (.I0(p_0_in[1]),
        .I1(\tmp1_reg[12]_i_10_n_6 ),
        .O(\tmp1[12]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp1[12]_i_7 
       (.I0(\tmp1_reg[12]_i_10_n_7 ),
        .O(\tmp1[12]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp1[12]_i_8 
       (.I0(p_0_in[5]),
        .I1(\tmp1_reg[12]_i_11_n_6 ),
        .O(\tmp1[12]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp1[12]_i_9 
       (.I0(p_0_in[4]),
        .I1(\tmp1_reg[12]_i_11_n_7 ),
        .O(\tmp1[12]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h15555555AAAAAAAA)) 
    \tmp1[16]_i_1 
       (.I0(\tmp1_reg[20]_i_3_n_6 ),
        .I1(\tmp1_reg[20]_i_3_n_7 ),
        .I2(\tmp1_reg[20]_i_2_n_5 ),
        .I3(\tmp1_reg[20]_i_2_n_6 ),
        .I4(\tmp1_reg[20]_i_2_n_4 ),
        .I5(\tmp1_reg[20]_i_2_n_7 ),
        .O(\tmp1[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C3C3C4CCCCCCC)) 
    \tmp1[17]_i_1 
       (.I0(\tmp1_reg[20]_i_2_n_4 ),
        .I1(\tmp1_reg[20]_i_2_n_6 ),
        .I2(\tmp1_reg[20]_i_2_n_7 ),
        .I3(\tmp1_reg[20]_i_2_n_5 ),
        .I4(\tmp1_reg[20]_i_3_n_7 ),
        .I5(\tmp1_reg[20]_i_3_n_6 ),
        .O(\tmp1[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3FC03FC07F00FF00)) 
    \tmp1[18]_i_1 
       (.I0(\tmp1_reg[20]_i_2_n_4 ),
        .I1(\tmp1_reg[20]_i_2_n_6 ),
        .I2(\tmp1_reg[20]_i_2_n_7 ),
        .I3(\tmp1_reg[20]_i_2_n_5 ),
        .I4(\tmp1_reg[20]_i_3_n_7 ),
        .I5(\tmp1_reg[20]_i_3_n_6 ),
        .O(\tmp1[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAA6AAA2AAAAAAA)) 
    \tmp1[19]_i_1 
       (.I0(\tmp1_reg[20]_i_2_n_4 ),
        .I1(\tmp1_reg[20]_i_2_n_6 ),
        .I2(\tmp1_reg[20]_i_2_n_7 ),
        .I3(\tmp1_reg[20]_i_2_n_5 ),
        .I4(\tmp1_reg[20]_i_3_n_7 ),
        .I5(\tmp1_reg[20]_i_3_n_6 ),
        .O(\tmp1[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C3C3C4CCCCCCC)) 
    \tmp1[1]_i_1 
       (.I0(\tmp1_reg[4]_i_2_n_4 ),
        .I1(\tmp1_reg[4]_i_2_n_6 ),
        .I2(\tmp1_reg[4]_i_2_n_7 ),
        .I3(\tmp1_reg[4]_i_2_n_5 ),
        .I4(\tmp1_reg[4]_i_3_n_7 ),
        .I5(\tmp1_reg[4]_i_3_n_6 ),
        .O(\tmp1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF80007FFF0000)) 
    \tmp1[20]_i_1 
       (.I0(\tmp1_reg[20]_i_2_n_4 ),
        .I1(\tmp1_reg[20]_i_2_n_6 ),
        .I2(\tmp1_reg[20]_i_2_n_7 ),
        .I3(\tmp1_reg[20]_i_2_n_5 ),
        .I4(\tmp1_reg[20]_i_3_n_7 ),
        .I5(\tmp1_reg[20]_i_3_n_6 ),
        .O(\tmp1[20]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \tmp1[20]_i_12 
       (.I0(\tmp0_reg_n_0_[22] ),
        .I1(\tmp0_reg_n_0_[23] ),
        .I2(\tmp0_reg_n_0_[21] ),
        .O(\tmp1[20]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \tmp1[20]_i_13 
       (.I0(\tmp0_reg_n_0_[21] ),
        .I1(\tmp0_reg_n_0_[22] ),
        .I2(\tmp0_reg_n_0_[23] ),
        .O(\tmp1[20]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \tmp1[20]_i_14 
       (.I0(\tmp0_reg_n_0_[22] ),
        .I1(\tmp0_reg_n_0_[23] ),
        .I2(\tmp0_reg_n_0_[21] ),
        .O(\tmp1[20]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp1[20]_i_15 
       (.I0(\tmp0_reg_n_0_[21] ),
        .I1(\tmp0_reg_n_0_[22] ),
        .O(\tmp1[20]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \tmp1[20]_i_16 
       (.I0(\tmp0_reg_n_0_[23] ),
        .I1(\tmp0_reg_n_0_[22] ),
        .I2(\tmp0_reg_n_0_[21] ),
        .O(\tmp1[20]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \tmp1[20]_i_17 
       (.I0(\tmp0_reg_n_0_[21] ),
        .I1(\tmp0_reg_n_0_[23] ),
        .I2(\tmp0_reg_n_0_[22] ),
        .O(\tmp1[20]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \tmp1[20]_i_18 
       (.I0(\tmp0_reg_n_0_[22] ),
        .I1(\tmp0_reg_n_0_[23] ),
        .I2(\tmp0_reg_n_0_[21] ),
        .O(\tmp1[20]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp1[20]_i_4 
       (.I0(\tmp0_reg_n_0_[19] ),
        .I1(\tmp1_reg[20]_i_10_n_4 ),
        .O(\tmp1[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp1[20]_i_5 
       (.I0(\tmp0_reg_n_0_[18] ),
        .I1(\tmp1_reg[20]_i_10_n_5 ),
        .O(\tmp1[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp1[20]_i_6 
       (.I0(\tmp0_reg_n_0_[17] ),
        .I1(\tmp1_reg[20]_i_10_n_6 ),
        .O(\tmp1[20]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp1[20]_i_7 
       (.I0(\tmp1_reg[20]_i_10_n_7 ),
        .O(\tmp1[20]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp1[20]_i_8 
       (.I0(\tmp0_reg_n_0_[21] ),
        .I1(\tmp1_reg[20]_i_11_n_6 ),
        .O(\tmp1[20]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp1[20]_i_9 
       (.I0(\tmp0_reg_n_0_[20] ),
        .I1(\tmp1_reg[20]_i_11_n_7 ),
        .O(\tmp1[20]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h15555555AAAAAAAA)) 
    \tmp1[24]_i_1 
       (.I0(\tmp1_reg[28]_i_3_n_6 ),
        .I1(\tmp1_reg[28]_i_3_n_7 ),
        .I2(\tmp1_reg[28]_i_2_n_5 ),
        .I3(\tmp1_reg[28]_i_2_n_6 ),
        .I4(\tmp1_reg[28]_i_2_n_4 ),
        .I5(\tmp1_reg[28]_i_2_n_7 ),
        .O(tmp10[0]));
  LUT6 #(
    .INIT(64'h3C3C3C3C4CCCCCCC)) 
    \tmp1[25]_i_1 
       (.I0(\tmp1_reg[28]_i_2_n_4 ),
        .I1(\tmp1_reg[28]_i_2_n_6 ),
        .I2(\tmp1_reg[28]_i_2_n_7 ),
        .I3(\tmp1_reg[28]_i_2_n_5 ),
        .I4(\tmp1_reg[28]_i_3_n_7 ),
        .I5(\tmp1_reg[28]_i_3_n_6 ),
        .O(tmp10[1]));
  LUT6 #(
    .INIT(64'h3FC03FC07F00FF00)) 
    \tmp1[26]_i_1 
       (.I0(\tmp1_reg[28]_i_2_n_4 ),
        .I1(\tmp1_reg[28]_i_2_n_6 ),
        .I2(\tmp1_reg[28]_i_2_n_7 ),
        .I3(\tmp1_reg[28]_i_2_n_5 ),
        .I4(\tmp1_reg[28]_i_3_n_7 ),
        .I5(\tmp1_reg[28]_i_3_n_6 ),
        .O(tmp10[2]));
  LUT6 #(
    .INIT(64'h6AAA6AAA2AAAAAAA)) 
    \tmp1[27]_i_1 
       (.I0(\tmp1_reg[28]_i_2_n_4 ),
        .I1(\tmp1_reg[28]_i_2_n_6 ),
        .I2(\tmp1_reg[28]_i_2_n_7 ),
        .I3(\tmp1_reg[28]_i_2_n_5 ),
        .I4(\tmp1_reg[28]_i_3_n_7 ),
        .I5(\tmp1_reg[28]_i_3_n_6 ),
        .O(tmp10[3]));
  LUT6 #(
    .INIT(64'h7FFF80007FFF0000)) 
    \tmp1[28]_i_1 
       (.I0(\tmp1_reg[28]_i_2_n_4 ),
        .I1(\tmp1_reg[28]_i_2_n_6 ),
        .I2(\tmp1_reg[28]_i_2_n_7 ),
        .I3(\tmp1_reg[28]_i_2_n_5 ),
        .I4(\tmp1_reg[28]_i_3_n_7 ),
        .I5(\tmp1_reg[28]_i_3_n_6 ),
        .O(tmp10[4]));
  LUT3 #(
    .INIT(8'h96)) 
    \tmp1[28]_i_12 
       (.I0(\tmp0_reg_n_0_[30] ),
        .I1(\tmp0_reg_n_0_[31] ),
        .I2(\tmp0_reg_n_0_[29] ),
        .O(\tmp1[28]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \tmp1[28]_i_13 
       (.I0(\tmp0_reg_n_0_[29] ),
        .I1(\tmp0_reg_n_0_[30] ),
        .I2(\tmp0_reg_n_0_[31] ),
        .O(\tmp1[28]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \tmp1[28]_i_14 
       (.I0(\tmp0_reg_n_0_[30] ),
        .I1(\tmp0_reg_n_0_[31] ),
        .I2(\tmp0_reg_n_0_[29] ),
        .O(\tmp1[28]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp1[28]_i_15 
       (.I0(\tmp0_reg_n_0_[29] ),
        .I1(\tmp0_reg_n_0_[30] ),
        .O(\tmp1[28]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \tmp1[28]_i_16 
       (.I0(\tmp0_reg_n_0_[31] ),
        .I1(\tmp0_reg_n_0_[30] ),
        .I2(\tmp0_reg_n_0_[29] ),
        .O(\tmp1[28]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \tmp1[28]_i_17 
       (.I0(\tmp0_reg_n_0_[29] ),
        .I1(\tmp0_reg_n_0_[31] ),
        .I2(\tmp0_reg_n_0_[30] ),
        .O(\tmp1[28]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \tmp1[28]_i_18 
       (.I0(\tmp0_reg_n_0_[30] ),
        .I1(\tmp0_reg_n_0_[31] ),
        .I2(\tmp0_reg_n_0_[29] ),
        .O(\tmp1[28]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp1[28]_i_4 
       (.I0(\tmp0_reg_n_0_[27] ),
        .I1(\tmp1_reg[28]_i_10_n_4 ),
        .O(\tmp1[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp1[28]_i_5 
       (.I0(\tmp0_reg_n_0_[26] ),
        .I1(\tmp1_reg[28]_i_10_n_5 ),
        .O(\tmp1[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp1[28]_i_6 
       (.I0(\tmp0_reg_n_0_[25] ),
        .I1(\tmp1_reg[28]_i_10_n_6 ),
        .O(\tmp1[28]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp1[28]_i_7 
       (.I0(\tmp1_reg[28]_i_10_n_7 ),
        .O(\tmp1[28]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp1[28]_i_8 
       (.I0(\tmp0_reg_n_0_[29] ),
        .I1(\tmp1_reg[28]_i_11_n_6 ),
        .O(\tmp1[28]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp1[28]_i_9 
       (.I0(\tmp0_reg_n_0_[28] ),
        .I1(\tmp1_reg[28]_i_11_n_7 ),
        .O(\tmp1[28]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h3FC03FC07F00FF00)) 
    \tmp1[2]_i_1 
       (.I0(\tmp1_reg[4]_i_2_n_4 ),
        .I1(\tmp1_reg[4]_i_2_n_6 ),
        .I2(\tmp1_reg[4]_i_2_n_7 ),
        .I3(\tmp1_reg[4]_i_2_n_5 ),
        .I4(\tmp1_reg[4]_i_3_n_7 ),
        .I5(\tmp1_reg[4]_i_3_n_6 ),
        .O(\tmp1[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAA6AAA2AAAAAAA)) 
    \tmp1[3]_i_1 
       (.I0(\tmp1_reg[4]_i_2_n_4 ),
        .I1(\tmp1_reg[4]_i_2_n_6 ),
        .I2(\tmp1_reg[4]_i_2_n_7 ),
        .I3(\tmp1_reg[4]_i_2_n_5 ),
        .I4(\tmp1_reg[4]_i_3_n_7 ),
        .I5(\tmp1_reg[4]_i_3_n_6 ),
        .O(\tmp1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF80007FFF0000)) 
    \tmp1[4]_i_1 
       (.I0(\tmp1_reg[4]_i_2_n_4 ),
        .I1(\tmp1_reg[4]_i_2_n_6 ),
        .I2(\tmp1_reg[4]_i_2_n_7 ),
        .I3(\tmp1_reg[4]_i_2_n_5 ),
        .I4(\tmp1_reg[4]_i_3_n_7 ),
        .I5(\tmp1_reg[4]_i_3_n_6 ),
        .O(\tmp1[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \tmp1[4]_i_12 
       (.I0(\tmp0_reg_n_0_[6] ),
        .I1(\tmp0_reg_n_0_[7] ),
        .I2(\tmp0_reg_n_0_[5] ),
        .O(\tmp1[4]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \tmp1[4]_i_13 
       (.I0(\tmp0_reg_n_0_[5] ),
        .I1(\tmp0_reg_n_0_[6] ),
        .I2(\tmp0_reg_n_0_[7] ),
        .O(\tmp1[4]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \tmp1[4]_i_14 
       (.I0(\tmp0_reg_n_0_[6] ),
        .I1(\tmp0_reg_n_0_[7] ),
        .I2(\tmp0_reg_n_0_[5] ),
        .O(\tmp1[4]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp1[4]_i_15 
       (.I0(\tmp0_reg_n_0_[5] ),
        .I1(\tmp0_reg_n_0_[6] ),
        .O(\tmp1[4]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \tmp1[4]_i_16 
       (.I0(\tmp0_reg_n_0_[7] ),
        .I1(\tmp0_reg_n_0_[6] ),
        .I2(\tmp0_reg_n_0_[5] ),
        .O(\tmp1[4]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \tmp1[4]_i_17 
       (.I0(\tmp0_reg_n_0_[5] ),
        .I1(\tmp0_reg_n_0_[7] ),
        .I2(\tmp0_reg_n_0_[6] ),
        .O(\tmp1[4]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \tmp1[4]_i_18 
       (.I0(\tmp0_reg_n_0_[6] ),
        .I1(\tmp0_reg_n_0_[7] ),
        .I2(\tmp0_reg_n_0_[5] ),
        .O(\tmp1[4]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp1[4]_i_4 
       (.I0(\tmp0_reg_n_0_[3] ),
        .I1(\tmp1_reg[4]_i_10_n_4 ),
        .O(\tmp1[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp1[4]_i_5 
       (.I0(\tmp0_reg_n_0_[2] ),
        .I1(\tmp1_reg[4]_i_10_n_5 ),
        .O(\tmp1[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp1[4]_i_6 
       (.I0(\tmp0_reg_n_0_[1] ),
        .I1(\tmp1_reg[4]_i_10_n_6 ),
        .O(\tmp1[4]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp1[4]_i_7 
       (.I0(\tmp1_reg[4]_i_10_n_7 ),
        .O(\tmp1[4]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp1[4]_i_8 
       (.I0(\tmp0_reg_n_0_[5] ),
        .I1(\tmp1_reg[4]_i_11_n_6 ),
        .O(\tmp1[4]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp1[4]_i_9 
       (.I0(\tmp0_reg_n_0_[4] ),
        .I1(\tmp1_reg[4]_i_11_n_7 ),
        .O(\tmp1[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h15555555AAAAAAAA)) 
    \tmp1[8]_i_1 
       (.I0(\tmp1_reg[12]_i_3_n_6 ),
        .I1(\tmp1_reg[12]_i_3_n_7 ),
        .I2(\tmp1_reg[12]_i_2_n_5 ),
        .I3(\tmp1_reg[12]_i_2_n_6 ),
        .I4(\tmp1_reg[12]_i_2_n_4 ),
        .I5(\tmp1_reg[12]_i_2_n_7 ),
        .O(\tmp1[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C3C3C4CCCCCCC)) 
    \tmp1[9]_i_1 
       (.I0(\tmp1_reg[12]_i_2_n_4 ),
        .I1(\tmp1_reg[12]_i_2_n_6 ),
        .I2(\tmp1_reg[12]_i_2_n_7 ),
        .I3(\tmp1_reg[12]_i_2_n_5 ),
        .I4(\tmp1_reg[12]_i_3_n_7 ),
        .I5(\tmp1_reg[12]_i_3_n_6 ),
        .O(\tmp1[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[0] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(\tmp1[0]_i_1_n_0 ),
        .Q(tmp1[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[10] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(\tmp1[10]_i_1_n_0 ),
        .Q(tmp1[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[11] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(\tmp1[11]_i_1_n_0 ),
        .Q(tmp1[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[12] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(\tmp1[12]_i_1_n_0 ),
        .Q(tmp1[12]),
        .R(rst));
  CARRY4 \tmp1_reg[12]_i_10 
       (.CI(1'b0),
        .CO({\tmp1_reg[12]_i_10_n_0 ,\tmp1_reg[12]_i_10_n_1 ,\tmp1_reg[12]_i_10_n_2 ,\tmp1_reg[12]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\tmp1[12]_i_12_n_0 ,p_0_in[5],p_0_in[5],1'b0}),
        .O({\tmp1_reg[12]_i_10_n_4 ,\tmp1_reg[12]_i_10_n_5 ,\tmp1_reg[12]_i_10_n_6 ,\tmp1_reg[12]_i_10_n_7 }),
        .S({\tmp1[12]_i_13_n_0 ,\tmp1[12]_i_14_n_0 ,\tmp1[12]_i_15_n_0 ,p_0_in[5]}));
  CARRY4 \tmp1_reg[12]_i_11 
       (.CI(\tmp1_reg[12]_i_10_n_0 ),
        .CO({\NLW_tmp1_reg[12]_i_11_CO_UNCONNECTED [3:1],\tmp1_reg[12]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\tmp1[12]_i_16_n_0 }),
        .O({\NLW_tmp1_reg[12]_i_11_O_UNCONNECTED [3:2],\tmp1_reg[12]_i_11_n_6 ,\tmp1_reg[12]_i_11_n_7 }),
        .S({1'b0,1'b0,\tmp1[12]_i_17_n_0 ,\tmp1[12]_i_18_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp1_reg[12]_i_2 
       (.CI(1'b0),
        .CO({\tmp1_reg[12]_i_2_n_0 ,\tmp1_reg[12]_i_2_n_1 ,\tmp1_reg[12]_i_2_n_2 ,\tmp1_reg[12]_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({p_0_in[3:1],1'b0}),
        .O({\tmp1_reg[12]_i_2_n_4 ,\tmp1_reg[12]_i_2_n_5 ,\tmp1_reg[12]_i_2_n_6 ,\tmp1_reg[12]_i_2_n_7 }),
        .S({\tmp1[12]_i_4_n_0 ,\tmp1[12]_i_5_n_0 ,\tmp1[12]_i_6_n_0 ,\tmp1[12]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp1_reg[12]_i_3 
       (.CI(\tmp1_reg[12]_i_2_n_0 ),
        .CO({\NLW_tmp1_reg[12]_i_3_CO_UNCONNECTED [3:1],\tmp1_reg[12]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_0_in[4]}),
        .O({\NLW_tmp1_reg[12]_i_3_O_UNCONNECTED [3:2],\tmp1_reg[12]_i_3_n_6 ,\tmp1_reg[12]_i_3_n_7 }),
        .S({1'b0,1'b0,\tmp1[12]_i_8_n_0 ,\tmp1[12]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[16] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(\tmp1[16]_i_1_n_0 ),
        .Q(tmp1[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[17] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(\tmp1[17]_i_1_n_0 ),
        .Q(tmp1[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[18] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(\tmp1[18]_i_1_n_0 ),
        .Q(tmp1[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[19] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(\tmp1[19]_i_1_n_0 ),
        .Q(tmp1[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[1] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(\tmp1[1]_i_1_n_0 ),
        .Q(tmp1[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[20] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(\tmp1[20]_i_1_n_0 ),
        .Q(tmp1[20]),
        .R(rst));
  CARRY4 \tmp1_reg[20]_i_10 
       (.CI(1'b0),
        .CO({\tmp1_reg[20]_i_10_n_0 ,\tmp1_reg[20]_i_10_n_1 ,\tmp1_reg[20]_i_10_n_2 ,\tmp1_reg[20]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\tmp1[20]_i_12_n_0 ,\tmp0_reg_n_0_[21] ,\tmp0_reg_n_0_[21] ,1'b0}),
        .O({\tmp1_reg[20]_i_10_n_4 ,\tmp1_reg[20]_i_10_n_5 ,\tmp1_reg[20]_i_10_n_6 ,\tmp1_reg[20]_i_10_n_7 }),
        .S({\tmp1[20]_i_13_n_0 ,\tmp1[20]_i_14_n_0 ,\tmp1[20]_i_15_n_0 ,\tmp0_reg_n_0_[21] }));
  CARRY4 \tmp1_reg[20]_i_11 
       (.CI(\tmp1_reg[20]_i_10_n_0 ),
        .CO({\NLW_tmp1_reg[20]_i_11_CO_UNCONNECTED [3:1],\tmp1_reg[20]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\tmp1[20]_i_16_n_0 }),
        .O({\NLW_tmp1_reg[20]_i_11_O_UNCONNECTED [3:2],\tmp1_reg[20]_i_11_n_6 ,\tmp1_reg[20]_i_11_n_7 }),
        .S({1'b0,1'b0,\tmp1[20]_i_17_n_0 ,\tmp1[20]_i_18_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp1_reg[20]_i_2 
       (.CI(1'b0),
        .CO({\tmp1_reg[20]_i_2_n_0 ,\tmp1_reg[20]_i_2_n_1 ,\tmp1_reg[20]_i_2_n_2 ,\tmp1_reg[20]_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({\tmp0_reg_n_0_[19] ,\tmp0_reg_n_0_[18] ,\tmp0_reg_n_0_[17] ,1'b0}),
        .O({\tmp1_reg[20]_i_2_n_4 ,\tmp1_reg[20]_i_2_n_5 ,\tmp1_reg[20]_i_2_n_6 ,\tmp1_reg[20]_i_2_n_7 }),
        .S({\tmp1[20]_i_4_n_0 ,\tmp1[20]_i_5_n_0 ,\tmp1[20]_i_6_n_0 ,\tmp1[20]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp1_reg[20]_i_3 
       (.CI(\tmp1_reg[20]_i_2_n_0 ),
        .CO({\NLW_tmp1_reg[20]_i_3_CO_UNCONNECTED [3:1],\tmp1_reg[20]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\tmp0_reg_n_0_[20] }),
        .O({\NLW_tmp1_reg[20]_i_3_O_UNCONNECTED [3:2],\tmp1_reg[20]_i_3_n_6 ,\tmp1_reg[20]_i_3_n_7 }),
        .S({1'b0,1'b0,\tmp1[20]_i_8_n_0 ,\tmp1[20]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[24] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(tmp10[0]),
        .Q(tmp1[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[25] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(tmp10[1]),
        .Q(tmp1[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[26] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(tmp10[2]),
        .Q(tmp1[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[27] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(tmp10[3]),
        .Q(tmp1[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[28] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(tmp10[4]),
        .Q(tmp1[28]),
        .R(rst));
  CARRY4 \tmp1_reg[28]_i_10 
       (.CI(1'b0),
        .CO({\tmp1_reg[28]_i_10_n_0 ,\tmp1_reg[28]_i_10_n_1 ,\tmp1_reg[28]_i_10_n_2 ,\tmp1_reg[28]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\tmp1[28]_i_12_n_0 ,\tmp0_reg_n_0_[29] ,\tmp0_reg_n_0_[29] ,1'b0}),
        .O({\tmp1_reg[28]_i_10_n_4 ,\tmp1_reg[28]_i_10_n_5 ,\tmp1_reg[28]_i_10_n_6 ,\tmp1_reg[28]_i_10_n_7 }),
        .S({\tmp1[28]_i_13_n_0 ,\tmp1[28]_i_14_n_0 ,\tmp1[28]_i_15_n_0 ,\tmp0_reg_n_0_[29] }));
  CARRY4 \tmp1_reg[28]_i_11 
       (.CI(\tmp1_reg[28]_i_10_n_0 ),
        .CO({\NLW_tmp1_reg[28]_i_11_CO_UNCONNECTED [3:1],\tmp1_reg[28]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\tmp1[28]_i_16_n_0 }),
        .O({\NLW_tmp1_reg[28]_i_11_O_UNCONNECTED [3:2],\tmp1_reg[28]_i_11_n_6 ,\tmp1_reg[28]_i_11_n_7 }),
        .S({1'b0,1'b0,\tmp1[28]_i_17_n_0 ,\tmp1[28]_i_18_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp1_reg[28]_i_2 
       (.CI(1'b0),
        .CO({\tmp1_reg[28]_i_2_n_0 ,\tmp1_reg[28]_i_2_n_1 ,\tmp1_reg[28]_i_2_n_2 ,\tmp1_reg[28]_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({\tmp0_reg_n_0_[27] ,\tmp0_reg_n_0_[26] ,\tmp0_reg_n_0_[25] ,1'b0}),
        .O({\tmp1_reg[28]_i_2_n_4 ,\tmp1_reg[28]_i_2_n_5 ,\tmp1_reg[28]_i_2_n_6 ,\tmp1_reg[28]_i_2_n_7 }),
        .S({\tmp1[28]_i_4_n_0 ,\tmp1[28]_i_5_n_0 ,\tmp1[28]_i_6_n_0 ,\tmp1[28]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp1_reg[28]_i_3 
       (.CI(\tmp1_reg[28]_i_2_n_0 ),
        .CO({\NLW_tmp1_reg[28]_i_3_CO_UNCONNECTED [3:1],\tmp1_reg[28]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\tmp0_reg_n_0_[28] }),
        .O({\NLW_tmp1_reg[28]_i_3_O_UNCONNECTED [3:2],\tmp1_reg[28]_i_3_n_6 ,\tmp1_reg[28]_i_3_n_7 }),
        .S({1'b0,1'b0,\tmp1[28]_i_8_n_0 ,\tmp1[28]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[2] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(\tmp1[2]_i_1_n_0 ),
        .Q(tmp1[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[3] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(\tmp1[3]_i_1_n_0 ),
        .Q(tmp1[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[4] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(\tmp1[4]_i_1_n_0 ),
        .Q(tmp1[4]),
        .R(rst));
  CARRY4 \tmp1_reg[4]_i_10 
       (.CI(1'b0),
        .CO({\tmp1_reg[4]_i_10_n_0 ,\tmp1_reg[4]_i_10_n_1 ,\tmp1_reg[4]_i_10_n_2 ,\tmp1_reg[4]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\tmp1[4]_i_12_n_0 ,\tmp0_reg_n_0_[5] ,\tmp0_reg_n_0_[5] ,1'b0}),
        .O({\tmp1_reg[4]_i_10_n_4 ,\tmp1_reg[4]_i_10_n_5 ,\tmp1_reg[4]_i_10_n_6 ,\tmp1_reg[4]_i_10_n_7 }),
        .S({\tmp1[4]_i_13_n_0 ,\tmp1[4]_i_14_n_0 ,\tmp1[4]_i_15_n_0 ,\tmp0_reg_n_0_[5] }));
  CARRY4 \tmp1_reg[4]_i_11 
       (.CI(\tmp1_reg[4]_i_10_n_0 ),
        .CO({\NLW_tmp1_reg[4]_i_11_CO_UNCONNECTED [3:1],\tmp1_reg[4]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\tmp1[4]_i_16_n_0 }),
        .O({\NLW_tmp1_reg[4]_i_11_O_UNCONNECTED [3:2],\tmp1_reg[4]_i_11_n_6 ,\tmp1_reg[4]_i_11_n_7 }),
        .S({1'b0,1'b0,\tmp1[4]_i_17_n_0 ,\tmp1[4]_i_18_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp1_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\tmp1_reg[4]_i_2_n_0 ,\tmp1_reg[4]_i_2_n_1 ,\tmp1_reg[4]_i_2_n_2 ,\tmp1_reg[4]_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({\tmp0_reg_n_0_[3] ,\tmp0_reg_n_0_[2] ,\tmp0_reg_n_0_[1] ,1'b0}),
        .O({\tmp1_reg[4]_i_2_n_4 ,\tmp1_reg[4]_i_2_n_5 ,\tmp1_reg[4]_i_2_n_6 ,\tmp1_reg[4]_i_2_n_7 }),
        .S({\tmp1[4]_i_4_n_0 ,\tmp1[4]_i_5_n_0 ,\tmp1[4]_i_6_n_0 ,\tmp1[4]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp1_reg[4]_i_3 
       (.CI(\tmp1_reg[4]_i_2_n_0 ),
        .CO({\NLW_tmp1_reg[4]_i_3_CO_UNCONNECTED [3:1],\tmp1_reg[4]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\tmp0_reg_n_0_[4] }),
        .O({\NLW_tmp1_reg[4]_i_3_O_UNCONNECTED [3:2],\tmp1_reg[4]_i_3_n_6 ,\tmp1_reg[4]_i_3_n_7 }),
        .S({1'b0,1'b0,\tmp1[4]_i_8_n_0 ,\tmp1[4]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[8] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(\tmp1[8]_i_1_n_0 ),
        .Q(tmp1[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[9] 
       (.C(clk),
        .CE(\bram1a[o][o_din]0 ),
        .D(\tmp1[9]_i_1_n_0 ),
        .Q(tmp1[9]),
        .R(rst));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \write_index0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\write_index0_inferred__0/i__carry_n_0 ,\write_index0_inferred__0/i__carry_n_1 ,\write_index0_inferred__0/i__carry_n_2 ,\write_index0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry_i_1__0_n_0,i__carry_i_2__0_n_0}),
        .O(\NLW_write_index0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_3_n_0,i__carry_i_4_n_0,i__carry_i_5__0_n_0,i__carry_i_6__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \write_index0_inferred__0/i__carry__0 
       (.CI(\write_index0_inferred__0/i__carry_n_0 ),
        .CO({\write_index0_inferred__0/i__carry__0_n_0 ,\write_index0_inferred__0/i__carry__0_n_1 ,\write_index0_inferred__0/i__carry__0_n_2 ,\write_index0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_write_index0_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \write_index0_inferred__0/i__carry__1 
       (.CI(\write_index0_inferred__0/i__carry__0_n_0 ),
        .CO({\write_index0_inferred__0/i__carry__1_n_0 ,\write_index0_inferred__0/i__carry__1_n_1 ,\write_index0_inferred__0/i__carry__1_n_2 ,\write_index0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_write_index0_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \write_index0_inferred__0/i__carry__2 
       (.CI(\write_index0_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW_write_index0_inferred__0/i__carry__2_CO_UNCONNECTED [3],\write_index0_inferred__0/i__carry__2_n_1 ,\write_index0_inferred__0/i__carry__2_n_2 ,\write_index0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\write_index_reg_n_0_[31] ,1'b0,1'b0}),
        .O(\NLW_write_index0_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \write_index[10]_i_1 
       (.I0(state1[2]),
        .I1(state1[1]),
        .I2(in10[10]),
        .O(write_index[10]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \write_index[11]_i_1 
       (.I0(state1[2]),
        .I1(state1[1]),
        .I2(in10[11]),
        .O(write_index[11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \write_index[12]_i_1 
       (.I0(state1[2]),
        .I1(state1[1]),
        .I2(in10[12]),
        .O(write_index[12]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \write_index[13]_i_1 
       (.I0(state1[2]),
        .I1(state1[1]),
        .I2(in10[13]),
        .O(write_index[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \write_index[14]_i_1 
       (.I0(state1[2]),
        .I1(state1[1]),
        .I2(in10[14]),
        .O(write_index[14]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \write_index[15]_i_1 
       (.I0(state1[2]),
        .I1(state1[1]),
        .I2(in10[15]),
        .O(write_index[15]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \write_index[16]_i_1 
       (.I0(state1[2]),
        .I1(state1[1]),
        .I2(in10[16]),
        .O(write_index[16]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \write_index[17]_i_1 
       (.I0(state1[2]),
        .I1(state1[1]),
        .I2(in10[17]),
        .O(write_index[17]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \write_index[18]_i_1 
       (.I0(state1[2]),
        .I1(state1[1]),
        .I2(in10[18]),
        .O(write_index[18]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \write_index[19]_i_1 
       (.I0(state1[2]),
        .I1(state1[1]),
        .I2(in10[19]),
        .O(write_index[19]));
  LUT3 #(
    .INIT(8'h60)) 
    \write_index[1]_i_1 
       (.I0(state1[2]),
        .I1(state1[1]),
        .I2(in10[1]),
        .O(write_index[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \write_index[20]_i_1 
       (.I0(state1[2]),
        .I1(state1[1]),
        .I2(in10[20]),
        .O(write_index[20]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \write_index[21]_i_1 
       (.I0(state1[2]),
        .I1(state1[1]),
        .I2(in10[21]),
        .O(write_index[21]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \write_index[22]_i_1 
       (.I0(state1[2]),
        .I1(state1[1]),
        .I2(in10[22]),
        .O(write_index[22]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \write_index[23]_i_1 
       (.I0(state1[2]),
        .I1(state1[1]),
        .I2(in10[23]),
        .O(write_index[23]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \write_index[24]_i_1 
       (.I0(state1[2]),
        .I1(state1[1]),
        .I2(in10[24]),
        .O(write_index[24]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \write_index[25]_i_1 
       (.I0(state1[2]),
        .I1(state1[1]),
        .I2(in10[25]),
        .O(write_index[25]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \write_index[26]_i_1 
       (.I0(state1[2]),
        .I1(state1[1]),
        .I2(in10[26]),
        .O(write_index[26]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \write_index[27]_i_1 
       (.I0(state1[2]),
        .I1(state1[1]),
        .I2(in10[27]),
        .O(write_index[27]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \write_index[28]_i_1 
       (.I0(state1[2]),
        .I1(state1[1]),
        .I2(in10[28]),
        .O(write_index[28]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \write_index[29]_i_1 
       (.I0(state1[2]),
        .I1(state1[1]),
        .I2(in10[29]),
        .O(write_index[29]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \write_index[2]_i_1 
       (.I0(state1[2]),
        .I1(state1[1]),
        .I2(in10[2]),
        .O(write_index[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \write_index[30]_i_1 
       (.I0(state1[2]),
        .I1(state1[1]),
        .I2(in10[30]),
        .O(write_index[30]));
  LUT4 #(
    .INIT(16'h400D)) 
    \write_index[31]_i_1 
       (.I0(state1[1]),
        .I1(\write_index0_inferred__0/i__carry__2_n_1 ),
        .I2(state1[0]),
        .I3(state1[2]),
        .O(\write_index[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \write_index[31]_i_2 
       (.I0(state1[2]),
        .I1(state1[1]),
        .I2(in10[31]),
        .O(write_index[31]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \write_index[3]_i_1 
       (.I0(state1[2]),
        .I1(state1[1]),
        .I2(in10[3]),
        .O(write_index[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \write_index[4]_i_1 
       (.I0(state1[2]),
        .I1(state1[1]),
        .I2(in10[4]),
        .O(write_index[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \write_index[4]_i_3 
       (.I0(\write_index_reg_n_0_[2] ),
        .O(\write_index[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \write_index[5]_i_1 
       (.I0(state1[2]),
        .I1(state1[1]),
        .I2(in10[5]),
        .O(write_index[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \write_index[6]_i_1 
       (.I0(state1[2]),
        .I1(state1[1]),
        .I2(in10[6]),
        .O(write_index[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \write_index[7]_i_1 
       (.I0(state1[2]),
        .I1(state1[1]),
        .I2(in10[7]),
        .O(write_index[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \write_index[8]_i_1 
       (.I0(state1[2]),
        .I1(state1[1]),
        .I2(in10[8]),
        .O(write_index[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \write_index[9]_i_1 
       (.I0(state1[2]),
        .I1(state1[1]),
        .I2(in10[9]),
        .O(write_index[9]));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[10] 
       (.C(clk),
        .CE(\write_index[31]_i_1_n_0 ),
        .D(write_index[10]),
        .Q(\write_index_reg_n_0_[10] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[11] 
       (.C(clk),
        .CE(\write_index[31]_i_1_n_0 ),
        .D(write_index[11]),
        .Q(\write_index_reg_n_0_[11] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[12] 
       (.C(clk),
        .CE(\write_index[31]_i_1_n_0 ),
        .D(write_index[12]),
        .Q(\write_index_reg_n_0_[12] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \write_index_reg[12]_i_2 
       (.CI(\write_index_reg[8]_i_2_n_0 ),
        .CO({\write_index_reg[12]_i_2_n_0 ,\write_index_reg[12]_i_2_n_1 ,\write_index_reg[12]_i_2_n_2 ,\write_index_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[12:9]),
        .S({\write_index_reg_n_0_[12] ,\write_index_reg_n_0_[11] ,\write_index_reg_n_0_[10] ,\write_index_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[13] 
       (.C(clk),
        .CE(\write_index[31]_i_1_n_0 ),
        .D(write_index[13]),
        .Q(\write_index_reg_n_0_[13] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[14] 
       (.C(clk),
        .CE(\write_index[31]_i_1_n_0 ),
        .D(write_index[14]),
        .Q(\write_index_reg_n_0_[14] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[15] 
       (.C(clk),
        .CE(\write_index[31]_i_1_n_0 ),
        .D(write_index[15]),
        .Q(\write_index_reg_n_0_[15] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[16] 
       (.C(clk),
        .CE(\write_index[31]_i_1_n_0 ),
        .D(write_index[16]),
        .Q(\write_index_reg_n_0_[16] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \write_index_reg[16]_i_2 
       (.CI(\write_index_reg[12]_i_2_n_0 ),
        .CO({\write_index_reg[16]_i_2_n_0 ,\write_index_reg[16]_i_2_n_1 ,\write_index_reg[16]_i_2_n_2 ,\write_index_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[16:13]),
        .S({\write_index_reg_n_0_[16] ,\write_index_reg_n_0_[15] ,\write_index_reg_n_0_[14] ,\write_index_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[17] 
       (.C(clk),
        .CE(\write_index[31]_i_1_n_0 ),
        .D(write_index[17]),
        .Q(\write_index_reg_n_0_[17] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[18] 
       (.C(clk),
        .CE(\write_index[31]_i_1_n_0 ),
        .D(write_index[18]),
        .Q(\write_index_reg_n_0_[18] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[19] 
       (.C(clk),
        .CE(\write_index[31]_i_1_n_0 ),
        .D(write_index[19]),
        .Q(\write_index_reg_n_0_[19] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[1] 
       (.C(clk),
        .CE(\write_index[31]_i_1_n_0 ),
        .D(write_index[1]),
        .Q(\write_index_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[20] 
       (.C(clk),
        .CE(\write_index[31]_i_1_n_0 ),
        .D(write_index[20]),
        .Q(\write_index_reg_n_0_[20] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \write_index_reg[20]_i_2 
       (.CI(\write_index_reg[16]_i_2_n_0 ),
        .CO({\write_index_reg[20]_i_2_n_0 ,\write_index_reg[20]_i_2_n_1 ,\write_index_reg[20]_i_2_n_2 ,\write_index_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[20:17]),
        .S({\write_index_reg_n_0_[20] ,\write_index_reg_n_0_[19] ,\write_index_reg_n_0_[18] ,\write_index_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[21] 
       (.C(clk),
        .CE(\write_index[31]_i_1_n_0 ),
        .D(write_index[21]),
        .Q(\write_index_reg_n_0_[21] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[22] 
       (.C(clk),
        .CE(\write_index[31]_i_1_n_0 ),
        .D(write_index[22]),
        .Q(\write_index_reg_n_0_[22] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[23] 
       (.C(clk),
        .CE(\write_index[31]_i_1_n_0 ),
        .D(write_index[23]),
        .Q(\write_index_reg_n_0_[23] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[24] 
       (.C(clk),
        .CE(\write_index[31]_i_1_n_0 ),
        .D(write_index[24]),
        .Q(\write_index_reg_n_0_[24] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \write_index_reg[24]_i_2 
       (.CI(\write_index_reg[20]_i_2_n_0 ),
        .CO({\write_index_reg[24]_i_2_n_0 ,\write_index_reg[24]_i_2_n_1 ,\write_index_reg[24]_i_2_n_2 ,\write_index_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[24:21]),
        .S({\write_index_reg_n_0_[24] ,\write_index_reg_n_0_[23] ,\write_index_reg_n_0_[22] ,\write_index_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[25] 
       (.C(clk),
        .CE(\write_index[31]_i_1_n_0 ),
        .D(write_index[25]),
        .Q(\write_index_reg_n_0_[25] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[26] 
       (.C(clk),
        .CE(\write_index[31]_i_1_n_0 ),
        .D(write_index[26]),
        .Q(\write_index_reg_n_0_[26] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[27] 
       (.C(clk),
        .CE(\write_index[31]_i_1_n_0 ),
        .D(write_index[27]),
        .Q(\write_index_reg_n_0_[27] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[28] 
       (.C(clk),
        .CE(\write_index[31]_i_1_n_0 ),
        .D(write_index[28]),
        .Q(\write_index_reg_n_0_[28] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \write_index_reg[28]_i_2 
       (.CI(\write_index_reg[24]_i_2_n_0 ),
        .CO({\write_index_reg[28]_i_2_n_0 ,\write_index_reg[28]_i_2_n_1 ,\write_index_reg[28]_i_2_n_2 ,\write_index_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[28:25]),
        .S({\write_index_reg_n_0_[28] ,\write_index_reg_n_0_[27] ,\write_index_reg_n_0_[26] ,\write_index_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[29] 
       (.C(clk),
        .CE(\write_index[31]_i_1_n_0 ),
        .D(write_index[29]),
        .Q(\write_index_reg_n_0_[29] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[2] 
       (.C(clk),
        .CE(\write_index[31]_i_1_n_0 ),
        .D(write_index[2]),
        .Q(\write_index_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[30] 
       (.C(clk),
        .CE(\write_index[31]_i_1_n_0 ),
        .D(write_index[30]),
        .Q(\write_index_reg_n_0_[30] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[31] 
       (.C(clk),
        .CE(\write_index[31]_i_1_n_0 ),
        .D(write_index[31]),
        .Q(\write_index_reg_n_0_[31] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \write_index_reg[31]_i_3 
       (.CI(\write_index_reg[28]_i_2_n_0 ),
        .CO({\NLW_write_index_reg[31]_i_3_CO_UNCONNECTED [3:2],\write_index_reg[31]_i_3_n_2 ,\write_index_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_write_index_reg[31]_i_3_O_UNCONNECTED [3],in10[31:29]}),
        .S({1'b0,\write_index_reg_n_0_[31] ,\write_index_reg_n_0_[30] ,\write_index_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[3] 
       (.C(clk),
        .CE(\write_index[31]_i_1_n_0 ),
        .D(write_index[3]),
        .Q(\write_index_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[4] 
       (.C(clk),
        .CE(\write_index[31]_i_1_n_0 ),
        .D(write_index[4]),
        .Q(\write_index_reg_n_0_[4] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \write_index_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\write_index_reg[4]_i_2_n_0 ,\write_index_reg[4]_i_2_n_1 ,\write_index_reg[4]_i_2_n_2 ,\write_index_reg[4]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\write_index_reg_n_0_[2] ,1'b0}),
        .O(in10[4:1]),
        .S({\write_index_reg_n_0_[4] ,\write_index_reg_n_0_[3] ,\write_index[4]_i_3_n_0 ,\write_index_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[5] 
       (.C(clk),
        .CE(\write_index[31]_i_1_n_0 ),
        .D(write_index[5]),
        .Q(\write_index_reg_n_0_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[6] 
       (.C(clk),
        .CE(\write_index[31]_i_1_n_0 ),
        .D(write_index[6]),
        .Q(\write_index_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[7] 
       (.C(clk),
        .CE(\write_index[31]_i_1_n_0 ),
        .D(write_index[7]),
        .Q(\write_index_reg_n_0_[7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[8] 
       (.C(clk),
        .CE(\write_index[31]_i_1_n_0 ),
        .D(write_index[8]),
        .Q(\write_index_reg_n_0_[8] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \write_index_reg[8]_i_2 
       (.CI(\write_index_reg[4]_i_2_n_0 ),
        .CO({\write_index_reg[8]_i_2_n_0 ,\write_index_reg[8]_i_2_n_1 ,\write_index_reg[8]_i_2_n_2 ,\write_index_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[8:5]),
        .S({\write_index_reg_n_0_[8] ,\write_index_reg_n_0_[7] ,\write_index_reg_n_0_[6] ,\write_index_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[9] 
       (.C(clk),
        .CE(\write_index[31]_i_1_n_0 ),
        .D(write_index[9]),
        .Q(\write_index_reg_n_0_[9] ),
        .R(rst));
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
