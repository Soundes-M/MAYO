// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed May 17 00:47:58 2023
// Host        : osm-hzb running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Mayo_sign_with_zynq_mayo_sample_vinegar_0_0_sim_netlist.v
// Design      : Mayo_sign_with_zynq_mayo_sample_vinegar_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Mayo_sign_with_zynq_mayo_sample_vinegar_0_0,mayo_sample_vinegar,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "mayo_sample_vinegar,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst,
    en,
    o_done,
    i_input_adr,
    o_trng_r,
    o_trng_w,
    o_trng_data,
    i_trng_data,
    i_trng_valid,
    i_trng_done,
    o_trng_sel,
    i_memb_dout,
    o_memb_din,
    o_memb_addr,
    o_memb_en,
    o_memb_rst,
    o_memb_we,
    o_controlb);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN Mayo_sign_with_zynq_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  (* x_interface_ignore = "TRUE" *) input en;
  output o_done;
  input [31:0]i_input_adr;
  output o_trng_r;
  output o_trng_w;
  output [31:0]o_trng_data;
  input [31:0]i_trng_data;
  input i_trng_valid;
  input i_trng_done;
  output o_trng_sel;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sam_vin0a DOUT" *) input [31:0]i_memb_dout;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sam_vin0a DIN" *) output [31:0]o_memb_din;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sam_vin0a ADDR" *) output [31:0]o_memb_addr;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sam_vin0a EN" *) output o_memb_en;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sam_vin0a RST" *) output o_memb_rst;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sam_vin0a WE" *) output [3:0]o_memb_we;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Sam_vin0a CTRL" *) output o_controlb;

  wire \<const0> ;
  wire clk;
  wire en;
  wire [31:0]i_input_adr;
  wire [31:0]i_memb_dout;
  wire [31:0]i_trng_data;
  wire i_trng_done;
  wire i_trng_valid;
  wire o_controlb;
  wire o_done;
  wire [31:0]o_memb_addr;
  wire [31:0]o_memb_din;
  wire o_memb_en;
  wire [2:2]\^o_memb_we ;
  wire [9:9]\^o_trng_data ;
  wire o_trng_r;
  wire o_trng_sel;
  wire rst;

  assign o_memb_rst = \<const0> ;
  assign o_memb_we[3] = \^o_memb_we [2];
  assign o_memb_we[2] = \^o_memb_we [2];
  assign o_memb_we[1] = \^o_memb_we [2];
  assign o_memb_we[0] = \^o_memb_we [2];
  assign o_trng_data[31] = \<const0> ;
  assign o_trng_data[30] = \<const0> ;
  assign o_trng_data[29] = \<const0> ;
  assign o_trng_data[28] = \<const0> ;
  assign o_trng_data[27] = \<const0> ;
  assign o_trng_data[26] = \<const0> ;
  assign o_trng_data[25] = \<const0> ;
  assign o_trng_data[24] = \<const0> ;
  assign o_trng_data[23] = \<const0> ;
  assign o_trng_data[22] = \<const0> ;
  assign o_trng_data[21] = \<const0> ;
  assign o_trng_data[20] = \<const0> ;
  assign o_trng_data[19] = \<const0> ;
  assign o_trng_data[18] = \<const0> ;
  assign o_trng_data[17] = \<const0> ;
  assign o_trng_data[16] = \<const0> ;
  assign o_trng_data[15] = \<const0> ;
  assign o_trng_data[14] = \<const0> ;
  assign o_trng_data[13] = \<const0> ;
  assign o_trng_data[12] = \<const0> ;
  assign o_trng_data[11] = \<const0> ;
  assign o_trng_data[10] = \<const0> ;
  assign o_trng_data[9] = \^o_trng_data [9];
  assign o_trng_data[8] = \<const0> ;
  assign o_trng_data[7] = \<const0> ;
  assign o_trng_data[6] = \^o_trng_data [9];
  assign o_trng_data[5] = \^o_trng_data [9];
  assign o_trng_data[4] = \<const0> ;
  assign o_trng_data[3] = \^o_trng_data [9];
  assign o_trng_data[2] = \^o_trng_data [9];
  assign o_trng_data[1] = \<const0> ;
  assign o_trng_data[0] = \<const0> ;
  assign o_trng_w = \^o_trng_data [9];
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mayo_sample_vinegar U0
       (.clk(clk),
        .en(en),
        .i_input_adr(i_input_adr),
        .i_memb_dout({i_memb_dout[28:24],i_memb_dout[20:16],i_memb_dout[12:8],i_memb_dout[4:0]}),
        .i_trng_data(i_trng_data),
        .i_trng_done(i_trng_done),
        .i_trng_valid(i_trng_valid),
        .o_controlb(o_controlb),
        .o_done(o_done),
        .o_memb_addr(o_memb_addr),
        .o_memb_din(o_memb_din),
        .o_memb_en(o_memb_en),
        .o_memb_we(\^o_memb_we ),
        .o_trng_data(\^o_trng_data ),
        .o_trng_r(o_trng_r),
        .o_trng_sel(o_trng_sel),
        .rst(rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mayo_sample_vinegar
   (o_memb_addr,
    o_memb_din,
    o_done,
    o_trng_r,
    o_trng_data,
    o_trng_sel,
    o_memb_en,
    o_memb_we,
    o_controlb,
    rst,
    clk,
    i_memb_dout,
    i_trng_data,
    en,
    i_trng_valid,
    i_trng_done,
    i_input_adr);
  output [31:0]o_memb_addr;
  output [31:0]o_memb_din;
  output o_done;
  output o_trng_r;
  output [0:0]o_trng_data;
  output o_trng_sel;
  output o_memb_en;
  output [0:0]o_memb_we;
  output o_controlb;
  input rst;
  input clk;
  input [19:0]i_memb_dout;
  input [31:0]i_trng_data;
  input en;
  input i_trng_valid;
  input i_trng_done;
  input [31:0]i_input_adr;

  wire \_inferred__6/i__carry__0_n_0 ;
  wire \_inferred__6/i__carry__0_n_1 ;
  wire \_inferred__6/i__carry__0_n_2 ;
  wire \_inferred__6/i__carry__0_n_3 ;
  wire \_inferred__6/i__carry__0_n_4 ;
  wire \_inferred__6/i__carry__0_n_5 ;
  wire \_inferred__6/i__carry__0_n_6 ;
  wire \_inferred__6/i__carry__0_n_7 ;
  wire \_inferred__6/i__carry__1_n_0 ;
  wire \_inferred__6/i__carry__1_n_1 ;
  wire \_inferred__6/i__carry__1_n_2 ;
  wire \_inferred__6/i__carry__1_n_3 ;
  wire \_inferred__6/i__carry__1_n_4 ;
  wire \_inferred__6/i__carry__1_n_5 ;
  wire \_inferred__6/i__carry__1_n_6 ;
  wire \_inferred__6/i__carry__1_n_7 ;
  wire \_inferred__6/i__carry__2_n_0 ;
  wire \_inferred__6/i__carry__2_n_1 ;
  wire \_inferred__6/i__carry__2_n_2 ;
  wire \_inferred__6/i__carry__2_n_3 ;
  wire \_inferred__6/i__carry__2_n_4 ;
  wire \_inferred__6/i__carry__2_n_5 ;
  wire \_inferred__6/i__carry__2_n_6 ;
  wire \_inferred__6/i__carry__2_n_7 ;
  wire \_inferred__6/i__carry__3_n_0 ;
  wire \_inferred__6/i__carry__3_n_1 ;
  wire \_inferred__6/i__carry__3_n_2 ;
  wire \_inferred__6/i__carry__3_n_3 ;
  wire \_inferred__6/i__carry__3_n_4 ;
  wire \_inferred__6/i__carry__3_n_5 ;
  wire \_inferred__6/i__carry__3_n_6 ;
  wire \_inferred__6/i__carry__3_n_7 ;
  wire \_inferred__6/i__carry__4_n_0 ;
  wire \_inferred__6/i__carry__4_n_1 ;
  wire \_inferred__6/i__carry__4_n_2 ;
  wire \_inferred__6/i__carry__4_n_3 ;
  wire \_inferred__6/i__carry__4_n_4 ;
  wire \_inferred__6/i__carry__4_n_5 ;
  wire \_inferred__6/i__carry__4_n_6 ;
  wire \_inferred__6/i__carry__4_n_7 ;
  wire \_inferred__6/i__carry__5_n_0 ;
  wire \_inferred__6/i__carry__5_n_1 ;
  wire \_inferred__6/i__carry__5_n_2 ;
  wire \_inferred__6/i__carry__5_n_3 ;
  wire \_inferred__6/i__carry__5_n_4 ;
  wire \_inferred__6/i__carry__5_n_5 ;
  wire \_inferred__6/i__carry__5_n_6 ;
  wire \_inferred__6/i__carry__5_n_7 ;
  wire \_inferred__6/i__carry__6_n_2 ;
  wire \_inferred__6/i__carry__6_n_3 ;
  wire \_inferred__6/i__carry__6_n_5 ;
  wire \_inferred__6/i__carry__6_n_6 ;
  wire \_inferred__6/i__carry__6_n_7 ;
  wire \_inferred__6/i__carry_n_0 ;
  wire \_inferred__6/i__carry_n_1 ;
  wire \_inferred__6/i__carry_n_2 ;
  wire \_inferred__6/i__carry_n_3 ;
  wire \_inferred__6/i__carry_n_4 ;
  wire \_inferred__6/i__carry_n_5 ;
  wire \_inferred__6/i__carry_n_6 ;
  wire clk;
  wire en;
  wire [31:0]i;
  wire [31:1]i0;
  wire \i[0]_i_1_n_0 ;
  wire \i[10]_i_1_n_0 ;
  wire \i[11]_i_1_n_0 ;
  wire \i[12]_i_1_n_0 ;
  wire \i[13]_i_1_n_0 ;
  wire \i[14]_i_1_n_0 ;
  wire \i[15]_i_1_n_0 ;
  wire \i[16]_i_1_n_0 ;
  wire \i[17]_i_1_n_0 ;
  wire \i[18]_i_1_n_0 ;
  wire \i[19]_i_1_n_0 ;
  wire \i[1]_i_1_n_0 ;
  wire \i[20]_i_1_n_0 ;
  wire \i[21]_i_1_n_0 ;
  wire \i[22]_i_1_n_0 ;
  wire \i[23]_i_1_n_0 ;
  wire \i[24]_i_1_n_0 ;
  wire \i[25]_i_1_n_0 ;
  wire \i[26]_i_1_n_0 ;
  wire \i[27]_i_1_n_0 ;
  wire \i[28]_i_1_n_0 ;
  wire \i[29]_i_1_n_0 ;
  wire \i[2]_i_1_n_0 ;
  wire \i[30]_i_1_n_0 ;
  wire \i[31]_i_1_n_0 ;
  wire \i[31]_i_2_n_0 ;
  wire \i[3]_i_1_n_0 ;
  wire \i[4]_i_1_n_0 ;
  wire \i[5]_i_1_n_0 ;
  wire \i[6]_i_1_n_0 ;
  wire \i[7]_i_1_n_0 ;
  wire \i[8]_i_1_n_0 ;
  wire \i[9]_i_1_n_0 ;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_1__2_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2__1_n_0;
  wire i__carry__0_i_2__2_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3__1_n_0;
  wire i__carry__0_i_3__2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4__1_n_0;
  wire i__carry__0_i_4__2_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5__0_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6__0_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7__0_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8__0_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1__1_n_0;
  wire i__carry__1_i_1__2_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2__1_n_0;
  wire i__carry__1_i_2__2_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_3__1_n_0;
  wire i__carry__1_i_3__2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4__0_n_0;
  wire i__carry__1_i_4__1_n_0;
  wire i__carry__1_i_4__2_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5__0_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6__0_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_7__0_n_0;
  wire i__carry__1_i_7_n_0;
  wire i__carry__1_i_8__0_n_0;
  wire i__carry__1_i_8_n_0;
  wire i__carry__2_i_1__0_n_0;
  wire i__carry__2_i_1__1_n_0;
  wire i__carry__2_i_1__2_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2__0_n_0;
  wire i__carry__2_i_2__1_n_0;
  wire i__carry__2_i_2__2_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3__0_n_0;
  wire i__carry__2_i_3__1_n_0;
  wire i__carry__2_i_3__2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4__0_n_0;
  wire i__carry__2_i_4__1_n_0;
  wire i__carry__2_i_4__2_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__2_i_5__0_n_0;
  wire i__carry__2_i_5_n_0;
  wire i__carry__2_i_6__0_n_0;
  wire i__carry__2_i_6_n_0;
  wire i__carry__2_i_7__0_n_0;
  wire i__carry__2_i_7_n_0;
  wire i__carry__2_i_8__0_n_0;
  wire i__carry__2_i_8_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry__3_i_5_n_0;
  wire i__carry__3_i_6_n_0;
  wire i__carry__3_i_7_n_0;
  wire i__carry__3_i_8_n_0;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry__4_i_3_n_0;
  wire i__carry__4_i_4_n_0;
  wire i__carry__4_i_5_n_0;
  wire i__carry__4_i_6_n_0;
  wire i__carry__4_i_7_n_0;
  wire i__carry__4_i_8_n_0;
  wire i__carry__5_i_1_n_0;
  wire i__carry__5_i_2_n_0;
  wire i__carry__5_i_3_n_0;
  wire i__carry__5_i_4_n_0;
  wire i__carry__5_i_5_n_0;
  wire i__carry__5_i_6_n_0;
  wire i__carry__5_i_7_n_0;
  wire i__carry__5_i_8_n_0;
  wire i__carry__6_i_1_n_0;
  wire i__carry__6_i_2_n_0;
  wire i__carry__6_i_3_n_0;
  wire i__carry__6_i_4_n_0;
  wire i__carry__6_i_5_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3__2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4__2_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5__1_n_0;
  wire i__carry_i_5__2_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8_n_0;
  wire [31:0]i_input_adr;
  wire [19:0]i_memb_dout;
  wire \i_reg[12]_i_2_n_0 ;
  wire \i_reg[12]_i_2_n_1 ;
  wire \i_reg[12]_i_2_n_2 ;
  wire \i_reg[12]_i_2_n_3 ;
  wire \i_reg[16]_i_2_n_0 ;
  wire \i_reg[16]_i_2_n_1 ;
  wire \i_reg[16]_i_2_n_2 ;
  wire \i_reg[16]_i_2_n_3 ;
  wire \i_reg[20]_i_2_n_0 ;
  wire \i_reg[20]_i_2_n_1 ;
  wire \i_reg[20]_i_2_n_2 ;
  wire \i_reg[20]_i_2_n_3 ;
  wire \i_reg[24]_i_2_n_0 ;
  wire \i_reg[24]_i_2_n_1 ;
  wire \i_reg[24]_i_2_n_2 ;
  wire \i_reg[24]_i_2_n_3 ;
  wire \i_reg[28]_i_2_n_0 ;
  wire \i_reg[28]_i_2_n_1 ;
  wire \i_reg[28]_i_2_n_2 ;
  wire \i_reg[28]_i_2_n_3 ;
  wire \i_reg[31]_i_3_n_2 ;
  wire \i_reg[31]_i_3_n_3 ;
  wire \i_reg[4]_i_2_n_0 ;
  wire \i_reg[4]_i_2_n_1 ;
  wire \i_reg[4]_i_2_n_2 ;
  wire \i_reg[4]_i_2_n_3 ;
  wire \i_reg[8]_i_2_n_0 ;
  wire \i_reg[8]_i_2_n_1 ;
  wire \i_reg[8]_i_2_n_2 ;
  wire \i_reg[8]_i_2_n_3 ;
  wire [31:0]i_trng_data;
  wire i_trng_done;
  wire i_trng_valid;
  wire [31:1]index;
  wire [31:1]index0;
  wire index0_carry__0_n_0;
  wire index0_carry__0_n_1;
  wire index0_carry__0_n_2;
  wire index0_carry__0_n_3;
  wire index0_carry__1_n_0;
  wire index0_carry__1_n_1;
  wire index0_carry__1_n_2;
  wire index0_carry__1_n_3;
  wire index0_carry__2_n_0;
  wire index0_carry__2_n_1;
  wire index0_carry__2_n_2;
  wire index0_carry__2_n_3;
  wire index0_carry__3_n_0;
  wire index0_carry__3_n_1;
  wire index0_carry__3_n_2;
  wire index0_carry__3_n_3;
  wire index0_carry__4_n_0;
  wire index0_carry__4_n_1;
  wire index0_carry__4_n_2;
  wire index0_carry__4_n_3;
  wire index0_carry__5_n_0;
  wire index0_carry__5_n_1;
  wire index0_carry__5_n_2;
  wire index0_carry__5_n_3;
  wire index0_carry__6_n_2;
  wire index0_carry__6_n_3;
  wire index0_carry_i_1_n_0;
  wire index0_carry_n_0;
  wire index0_carry_n_1;
  wire index0_carry_n_2;
  wire index0_carry_n_3;
  wire \index[10]_i_1_n_0 ;
  wire \index[11]_i_1_n_0 ;
  wire \index[12]_i_1_n_0 ;
  wire \index[13]_i_1_n_0 ;
  wire \index[14]_i_1_n_0 ;
  wire \index[15]_i_1_n_0 ;
  wire \index[16]_i_1_n_0 ;
  wire \index[17]_i_1_n_0 ;
  wire \index[18]_i_1_n_0 ;
  wire \index[19]_i_1_n_0 ;
  wire \index[1]_i_1_n_0 ;
  wire \index[20]_i_1_n_0 ;
  wire \index[21]_i_1_n_0 ;
  wire \index[22]_i_1_n_0 ;
  wire \index[23]_i_1_n_0 ;
  wire \index[24]_i_1_n_0 ;
  wire \index[25]_i_1_n_0 ;
  wire \index[26]_i_1_n_0 ;
  wire \index[27]_i_1_n_0 ;
  wire \index[28]_i_1_n_0 ;
  wire \index[29]_i_1_n_0 ;
  wire \index[2]_i_1_n_0 ;
  wire \index[30]_i_1_n_0 ;
  wire \index[31]_i_2_n_0 ;
  wire \index[31]_i_3_n_0 ;
  wire \index[31]_i_4_n_0 ;
  wire \index[31]_i_5_n_0 ;
  wire \index[3]_i_1_n_0 ;
  wire \index[4]_i_1_n_0 ;
  wire \index[5]_i_1_n_0 ;
  wire \index[6]_i_1_n_0 ;
  wire \index[7]_i_1_n_0 ;
  wire \index[8]_i_1_n_0 ;
  wire \index[9]_i_1_n_0 ;
  wire index_0;
  wire [31:0]j;
  wire [31:1]j0;
  wire \j[31]_i_1_n_0 ;
  wire \j_reg[12]_i_2_n_0 ;
  wire \j_reg[12]_i_2_n_1 ;
  wire \j_reg[12]_i_2_n_2 ;
  wire \j_reg[12]_i_2_n_3 ;
  wire \j_reg[16]_i_2_n_0 ;
  wire \j_reg[16]_i_2_n_1 ;
  wire \j_reg[16]_i_2_n_2 ;
  wire \j_reg[16]_i_2_n_3 ;
  wire \j_reg[20]_i_2_n_0 ;
  wire \j_reg[20]_i_2_n_1 ;
  wire \j_reg[20]_i_2_n_2 ;
  wire \j_reg[20]_i_2_n_3 ;
  wire \j_reg[24]_i_2_n_0 ;
  wire \j_reg[24]_i_2_n_1 ;
  wire \j_reg[24]_i_2_n_2 ;
  wire \j_reg[24]_i_2_n_3 ;
  wire \j_reg[28]_i_2_n_0 ;
  wire \j_reg[28]_i_2_n_1 ;
  wire \j_reg[28]_i_2_n_2 ;
  wire \j_reg[28]_i_2_n_3 ;
  wire \j_reg[31]_i_3_n_2 ;
  wire \j_reg[31]_i_3_n_3 ;
  wire \j_reg[4]_i_2_n_0 ;
  wire \j_reg[4]_i_2_n_1 ;
  wire \j_reg[4]_i_2_n_2 ;
  wire \j_reg[4]_i_2_n_3 ;
  wire \j_reg[8]_i_2_n_0 ;
  wire \j_reg[8]_i_2_n_1 ;
  wire \j_reg[8]_i_2_n_2 ;
  wire \j_reg[8]_i_2_n_3 ;
  wire \k[0]_i_1_n_0 ;
  wire \k[0]_i_3_n_0 ;
  wire \k[0]_i_4_n_0 ;
  wire \k[0]_i_5_n_0 ;
  wire \k[0]_i_6_n_0 ;
  wire \k[12]_i_2_n_0 ;
  wire \k[12]_i_3_n_0 ;
  wire \k[12]_i_4_n_0 ;
  wire \k[12]_i_5_n_0 ;
  wire \k[16]_i_2_n_0 ;
  wire \k[16]_i_3_n_0 ;
  wire \k[16]_i_4_n_0 ;
  wire \k[16]_i_5_n_0 ;
  wire \k[20]_i_2_n_0 ;
  wire \k[20]_i_3_n_0 ;
  wire \k[20]_i_4_n_0 ;
  wire \k[20]_i_5_n_0 ;
  wire \k[24]_i_2_n_0 ;
  wire \k[24]_i_3_n_0 ;
  wire \k[24]_i_4_n_0 ;
  wire \k[24]_i_5_n_0 ;
  wire \k[28]_i_2_n_0 ;
  wire \k[28]_i_3_n_0 ;
  wire \k[28]_i_4_n_0 ;
  wire \k[28]_i_5_n_0 ;
  wire \k[4]_i_2_n_0 ;
  wire \k[4]_i_3_n_0 ;
  wire \k[4]_i_4_n_0 ;
  wire \k[4]_i_5_n_0 ;
  wire \k[8]_i_2_n_0 ;
  wire \k[8]_i_3_n_0 ;
  wire \k[8]_i_4_n_0 ;
  wire \k[8]_i_5_n_0 ;
  wire \k_reg[0]_i_2_n_0 ;
  wire \k_reg[0]_i_2_n_1 ;
  wire \k_reg[0]_i_2_n_2 ;
  wire \k_reg[0]_i_2_n_3 ;
  wire \k_reg[0]_i_2_n_4 ;
  wire \k_reg[0]_i_2_n_5 ;
  wire \k_reg[0]_i_2_n_6 ;
  wire \k_reg[0]_i_2_n_7 ;
  wire \k_reg[12]_i_1_n_0 ;
  wire \k_reg[12]_i_1_n_1 ;
  wire \k_reg[12]_i_1_n_2 ;
  wire \k_reg[12]_i_1_n_3 ;
  wire \k_reg[12]_i_1_n_4 ;
  wire \k_reg[12]_i_1_n_5 ;
  wire \k_reg[12]_i_1_n_6 ;
  wire \k_reg[12]_i_1_n_7 ;
  wire \k_reg[16]_i_1_n_0 ;
  wire \k_reg[16]_i_1_n_1 ;
  wire \k_reg[16]_i_1_n_2 ;
  wire \k_reg[16]_i_1_n_3 ;
  wire \k_reg[16]_i_1_n_4 ;
  wire \k_reg[16]_i_1_n_5 ;
  wire \k_reg[16]_i_1_n_6 ;
  wire \k_reg[16]_i_1_n_7 ;
  wire \k_reg[20]_i_1_n_0 ;
  wire \k_reg[20]_i_1_n_1 ;
  wire \k_reg[20]_i_1_n_2 ;
  wire \k_reg[20]_i_1_n_3 ;
  wire \k_reg[20]_i_1_n_4 ;
  wire \k_reg[20]_i_1_n_5 ;
  wire \k_reg[20]_i_1_n_6 ;
  wire \k_reg[20]_i_1_n_7 ;
  wire \k_reg[24]_i_1_n_0 ;
  wire \k_reg[24]_i_1_n_1 ;
  wire \k_reg[24]_i_1_n_2 ;
  wire \k_reg[24]_i_1_n_3 ;
  wire \k_reg[24]_i_1_n_4 ;
  wire \k_reg[24]_i_1_n_5 ;
  wire \k_reg[24]_i_1_n_6 ;
  wire \k_reg[24]_i_1_n_7 ;
  wire \k_reg[28]_i_1_n_1 ;
  wire \k_reg[28]_i_1_n_2 ;
  wire \k_reg[28]_i_1_n_3 ;
  wire \k_reg[28]_i_1_n_4 ;
  wire \k_reg[28]_i_1_n_5 ;
  wire \k_reg[28]_i_1_n_6 ;
  wire \k_reg[28]_i_1_n_7 ;
  wire \k_reg[4]_i_1_n_0 ;
  wire \k_reg[4]_i_1_n_1 ;
  wire \k_reg[4]_i_1_n_2 ;
  wire \k_reg[4]_i_1_n_3 ;
  wire \k_reg[4]_i_1_n_4 ;
  wire \k_reg[4]_i_1_n_5 ;
  wire \k_reg[4]_i_1_n_6 ;
  wire \k_reg[4]_i_1_n_7 ;
  wire \k_reg[8]_i_1_n_0 ;
  wire \k_reg[8]_i_1_n_1 ;
  wire \k_reg[8]_i_1_n_2 ;
  wire \k_reg[8]_i_1_n_3 ;
  wire \k_reg[8]_i_1_n_4 ;
  wire \k_reg[8]_i_1_n_5 ;
  wire \k_reg[8]_i_1_n_6 ;
  wire \k_reg[8]_i_1_n_7 ;
  wire \k_reg_n_0_[29] ;
  wire \k_reg_n_0_[30] ;
  wire \k_reg_n_0_[31] ;
  wire o_controlb;
  wire o_controlb_i_1_n_0;
  wire o_done;
  wire o_done_i_1_n_0;
  wire [31:0]o_memb_addr;
  wire \o_memb_addr[0]_i_1_n_0 ;
  wire \o_memb_addr[1]_i_1_n_0 ;
  wire \o_memb_addr[31]_i_1_n_0 ;
  wire \o_memb_addr[31]_i_2_n_0 ;
  wire \o_memb_addr[31]_i_3_n_0 ;
  wire \o_memb_addr[5]_i_1_n_0 ;
  wire [31:0]o_memb_din;
  wire \o_memb_din[0]_i_1_n_0 ;
  wire \o_memb_din[10]_i_1_n_0 ;
  wire \o_memb_din[11]_i_1_n_0 ;
  wire \o_memb_din[12]_i_1_n_0 ;
  wire \o_memb_din[16]_i_1_n_0 ;
  wire \o_memb_din[17]_i_1_n_0 ;
  wire \o_memb_din[18]_i_1_n_0 ;
  wire \o_memb_din[19]_i_1_n_0 ;
  wire \o_memb_din[1]_i_1_n_0 ;
  wire \o_memb_din[20]_i_1_n_0 ;
  wire \o_memb_din[24]_i_1_n_0 ;
  wire \o_memb_din[25]_i_1_n_0 ;
  wire \o_memb_din[26]_i_1_n_0 ;
  wire \o_memb_din[27]_i_1_n_0 ;
  wire \o_memb_din[28]_i_1_n_0 ;
  wire \o_memb_din[2]_i_1_n_0 ;
  wire \o_memb_din[31]_i_1_n_0 ;
  wire \o_memb_din[31]_i_2_n_0 ;
  wire \o_memb_din[3]_i_1_n_0 ;
  wire \o_memb_din[4]_i_1_n_0 ;
  wire \o_memb_din[8]_i_1_n_0 ;
  wire \o_memb_din[9]_i_1_n_0 ;
  wire o_memb_en;
  wire o_memb_en_i_1_n_0;
  wire o_memb_en_i_2_n_0;
  wire o_memb_en_i_3_n_0;
  wire [0:0]o_memb_we;
  wire \o_memb_we[3]_i_1_n_0 ;
  wire \o_memb_we[3]_i_2_n_0 ;
  wire [0:0]o_trng_data;
  wire o_trng_r;
  wire o_trng_r_i_1_n_0;
  wire o_trng_sel;
  wire o_trng_sel_i_1_n_0;
  wire o_trng_w_i_1_n_0;
  wire [30:1]out_index0;
  wire out_index0_carry__0_n_0;
  wire out_index0_carry__0_n_1;
  wire out_index0_carry__0_n_2;
  wire out_index0_carry__0_n_3;
  wire out_index0_carry__1_n_0;
  wire out_index0_carry__1_n_1;
  wire out_index0_carry__1_n_2;
  wire out_index0_carry__1_n_3;
  wire out_index0_carry__2_n_0;
  wire out_index0_carry__2_n_1;
  wire out_index0_carry__2_n_2;
  wire out_index0_carry__2_n_3;
  wire out_index0_carry__3_n_0;
  wire out_index0_carry__3_n_1;
  wire out_index0_carry__3_n_2;
  wire out_index0_carry__3_n_3;
  wire out_index0_carry__4_n_0;
  wire out_index0_carry__4_n_1;
  wire out_index0_carry__4_n_2;
  wire out_index0_carry__4_n_3;
  wire out_index0_carry__5_n_0;
  wire out_index0_carry__5_n_1;
  wire out_index0_carry__5_n_2;
  wire out_index0_carry__5_n_3;
  wire out_index0_carry__6_n_3;
  wire out_index0_carry_i_1_n_0;
  wire out_index0_carry_n_0;
  wire out_index0_carry_n_1;
  wire out_index0_carry_n_2;
  wire out_index0_carry_n_3;
  wire \out_index[10]_i_1_n_0 ;
  wire \out_index[11]_i_1_n_0 ;
  wire \out_index[12]_i_1_n_0 ;
  wire \out_index[13]_i_1_n_0 ;
  wire \out_index[14]_i_1_n_0 ;
  wire \out_index[15]_i_1_n_0 ;
  wire \out_index[16]_i_1_n_0 ;
  wire \out_index[17]_i_1_n_0 ;
  wire \out_index[18]_i_1_n_0 ;
  wire \out_index[19]_i_1_n_0 ;
  wire \out_index[1]_i_1_n_0 ;
  wire \out_index[20]_i_1_n_0 ;
  wire \out_index[21]_i_1_n_0 ;
  wire \out_index[22]_i_1_n_0 ;
  wire \out_index[23]_i_1_n_0 ;
  wire \out_index[24]_i_1_n_0 ;
  wire \out_index[25]_i_1_n_0 ;
  wire \out_index[26]_i_1_n_0 ;
  wire \out_index[27]_i_1_n_0 ;
  wire \out_index[28]_i_1_n_0 ;
  wire \out_index[29]_i_1_n_0 ;
  wire \out_index[2]_i_1_n_0 ;
  wire \out_index[30]_i_1_n_0 ;
  wire \out_index[30]_i_2_n_0 ;
  wire \out_index[3]_i_1_n_0 ;
  wire \out_index[4]_i_1_n_0 ;
  wire \out_index[5]_i_1_n_0 ;
  wire \out_index[6]_i_1_n_0 ;
  wire \out_index[7]_i_1_n_0 ;
  wire \out_index[8]_i_1_n_0 ;
  wire \out_index[9]_i_1_n_0 ;
  wire \out_index_reg_n_0_[10] ;
  wire \out_index_reg_n_0_[11] ;
  wire \out_index_reg_n_0_[12] ;
  wire \out_index_reg_n_0_[13] ;
  wire \out_index_reg_n_0_[14] ;
  wire \out_index_reg_n_0_[15] ;
  wire \out_index_reg_n_0_[16] ;
  wire \out_index_reg_n_0_[17] ;
  wire \out_index_reg_n_0_[18] ;
  wire \out_index_reg_n_0_[19] ;
  wire \out_index_reg_n_0_[1] ;
  wire \out_index_reg_n_0_[20] ;
  wire \out_index_reg_n_0_[21] ;
  wire \out_index_reg_n_0_[22] ;
  wire \out_index_reg_n_0_[23] ;
  wire \out_index_reg_n_0_[24] ;
  wire \out_index_reg_n_0_[25] ;
  wire \out_index_reg_n_0_[26] ;
  wire \out_index_reg_n_0_[27] ;
  wire \out_index_reg_n_0_[28] ;
  wire \out_index_reg_n_0_[29] ;
  wire \out_index_reg_n_0_[2] ;
  wire \out_index_reg_n_0_[30] ;
  wire \out_index_reg_n_0_[3] ;
  wire \out_index_reg_n_0_[4] ;
  wire \out_index_reg_n_0_[5] ;
  wire \out_index_reg_n_0_[6] ;
  wire \out_index_reg_n_0_[7] ;
  wire \out_index_reg_n_0_[8] ;
  wire \out_index_reg_n_0_[9] ;
  wire p_0_in;
  wire [31:0]p_1_in;
  wire [31:0]plusOp;
  wire plusOp_carry__0_i_1_n_0;
  wire plusOp_carry__0_i_2_n_0;
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
  wire plusOp_carry__6_n_1;
  wire plusOp_carry__6_n_2;
  wire plusOp_carry__6_n_3;
  wire plusOp_carry_i_1_n_0;
  wire plusOp_carry_i_2_n_0;
  wire plusOp_carry_i_3_n_0;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire rst;
  wire [31:1]s_ctr0;
  wire \s_ctr[0]_i_1_n_0 ;
  wire \s_ctr[31]_i_1_n_0 ;
  wire \s_ctr[31]_i_2_n_0 ;
  wire \s_ctr[31]_i_4_n_0 ;
  wire \s_ctr[31]_i_5_n_0 ;
  wire \s_ctr[31]_i_6_n_0 ;
  wire \s_ctr_reg[12]_i_1_n_0 ;
  wire \s_ctr_reg[12]_i_1_n_1 ;
  wire \s_ctr_reg[12]_i_1_n_2 ;
  wire \s_ctr_reg[12]_i_1_n_3 ;
  wire \s_ctr_reg[16]_i_1_n_0 ;
  wire \s_ctr_reg[16]_i_1_n_1 ;
  wire \s_ctr_reg[16]_i_1_n_2 ;
  wire \s_ctr_reg[16]_i_1_n_3 ;
  wire \s_ctr_reg[20]_i_1_n_0 ;
  wire \s_ctr_reg[20]_i_1_n_1 ;
  wire \s_ctr_reg[20]_i_1_n_2 ;
  wire \s_ctr_reg[20]_i_1_n_3 ;
  wire \s_ctr_reg[24]_i_1_n_0 ;
  wire \s_ctr_reg[24]_i_1_n_1 ;
  wire \s_ctr_reg[24]_i_1_n_2 ;
  wire \s_ctr_reg[24]_i_1_n_3 ;
  wire \s_ctr_reg[28]_i_1_n_0 ;
  wire \s_ctr_reg[28]_i_1_n_1 ;
  wire \s_ctr_reg[28]_i_1_n_2 ;
  wire \s_ctr_reg[28]_i_1_n_3 ;
  wire \s_ctr_reg[31]_i_3_n_2 ;
  wire \s_ctr_reg[31]_i_3_n_3 ;
  wire \s_ctr_reg[4]_i_1_n_0 ;
  wire \s_ctr_reg[4]_i_1_n_1 ;
  wire \s_ctr_reg[4]_i_1_n_2 ;
  wire \s_ctr_reg[4]_i_1_n_3 ;
  wire \s_ctr_reg[8]_i_1_n_0 ;
  wire \s_ctr_reg[8]_i_1_n_1 ;
  wire \s_ctr_reg[8]_i_1_n_2 ;
  wire \s_ctr_reg[8]_i_1_n_3 ;
  wire \s_ctr_reg_n_0_[29] ;
  wire \s_ctr_reg_n_0_[30] ;
  wire \s_ctr_reg_n_0_[31] ;
  wire [31:0]s_input_adr;
  wire \s_input_adr[0]_i_1_n_0 ;
  wire \s_input_adr[10]_i_1_n_0 ;
  wire \s_input_adr[11]_i_1_n_0 ;
  wire \s_input_adr[12]_i_1_n_0 ;
  wire \s_input_adr[13]_i_1_n_0 ;
  wire \s_input_adr[14]_i_1_n_0 ;
  wire \s_input_adr[15]_i_1_n_0 ;
  wire \s_input_adr[16]_i_1_n_0 ;
  wire \s_input_adr[17]_i_1_n_0 ;
  wire \s_input_adr[18]_i_1_n_0 ;
  wire \s_input_adr[19]_i_1_n_0 ;
  wire \s_input_adr[1]_i_1_n_0 ;
  wire \s_input_adr[20]_i_1_n_0 ;
  wire \s_input_adr[21]_i_1_n_0 ;
  wire \s_input_adr[22]_i_1_n_0 ;
  wire \s_input_adr[23]_i_1_n_0 ;
  wire \s_input_adr[24]_i_1_n_0 ;
  wire \s_input_adr[25]_i_1_n_0 ;
  wire \s_input_adr[26]_i_1_n_0 ;
  wire \s_input_adr[27]_i_1_n_0 ;
  wire \s_input_adr[28]_i_1_n_0 ;
  wire \s_input_adr[29]_i_1_n_0 ;
  wire \s_input_adr[2]_i_1_n_0 ;
  wire \s_input_adr[30]_i_1_n_0 ;
  wire \s_input_adr[31]_i_2_n_0 ;
  wire \s_input_adr[3]_i_1_n_0 ;
  wire \s_input_adr[4]_i_1_n_0 ;
  wire \s_input_adr[5]_i_1_n_0 ;
  wire \s_input_adr[6]_i_1_n_0 ;
  wire \s_input_adr[7]_i_1_n_0 ;
  wire \s_input_adr[8]_i_1_n_0 ;
  wire \s_input_adr[9]_i_1_n_0 ;
  wire s_input_adr_1;
  wire [28:0]s_inputs;
  wire [31:3]s_inputs1;
  wire \s_inputs[12]_i_1_n_0 ;
  wire \s_inputs[20]_i_1_n_0 ;
  wire \s_inputs[24]_i_1_n_0 ;
  wire \s_inputs[25]_i_1_n_0 ;
  wire \s_inputs[26]_i_1_n_0 ;
  wire \s_inputs[26]_i_2_n_0 ;
  wire \s_inputs[27]_i_1_n_0 ;
  wire \s_inputs[28]_i_1_n_0 ;
  wire \s_inputs[28]_i_2_n_0 ;
  wire \s_inputs[28]_i_3_n_0 ;
  wire \s_inputs[28]_i_4_n_0 ;
  wire \s_inputs[28]_i_5_n_0 ;
  wire \s_inputs[28]_i_6_n_0 ;
  wire \s_inputs[28]_i_7_n_0 ;
  wire \s_inputs[28]_i_8_n_0 ;
  wire \s_inputs[28]_i_9_n_0 ;
  wire \s_inputs[4]_i_1_n_0 ;
  wire s_need_rand_i_1_n_0;
  wire s_need_rand_i_2_n_0;
  wire s_need_rand_i_3_n_0;
  wire s_need_rand_i_4_n_0;
  wire s_need_rand_i_5_n_0;
  wire s_need_rand_reg_n_0;
  wire [28:0]s_rand;
  wire \s_rand[28]_i_1_n_0 ;
  wire [3:0]state;
  wire state1;
  wire state1_carry__0_i_1_n_0;
  wire state1_carry__0_i_2_n_0;
  wire state1_carry__0_i_3_n_0;
  wire state1_carry__0_i_4_n_0;
  wire state1_carry__0_n_0;
  wire state1_carry__0_n_1;
  wire state1_carry__0_n_2;
  wire state1_carry__0_n_3;
  wire state1_carry__1_i_1_n_0;
  wire state1_carry__1_i_2_n_0;
  wire state1_carry__1_i_3_n_0;
  wire state1_carry__1_i_4_n_0;
  wire state1_carry__1_n_0;
  wire state1_carry__1_n_1;
  wire state1_carry__1_n_2;
  wire state1_carry__1_n_3;
  wire state1_carry__2_i_1_n_0;
  wire state1_carry__2_i_2_n_0;
  wire state1_carry__2_i_3_n_0;
  wire state1_carry__2_n_2;
  wire state1_carry__2_n_3;
  wire state1_carry_i_1_n_0;
  wire state1_carry_i_2_n_0;
  wire state1_carry_i_3_n_0;
  wire state1_carry_i_4_n_0;
  wire state1_carry_i_5_n_0;
  wire state1_carry_i_6_n_0;
  wire state1_carry_n_0;
  wire state1_carry_n_1;
  wire state1_carry_n_2;
  wire state1_carry_n_3;
  wire \state1_inferred__0/i__carry__0_n_0 ;
  wire \state1_inferred__0/i__carry__0_n_1 ;
  wire \state1_inferred__0/i__carry__0_n_2 ;
  wire \state1_inferred__0/i__carry__0_n_3 ;
  wire \state1_inferred__0/i__carry__1_n_0 ;
  wire \state1_inferred__0/i__carry__1_n_1 ;
  wire \state1_inferred__0/i__carry__1_n_2 ;
  wire \state1_inferred__0/i__carry__1_n_3 ;
  wire \state1_inferred__0/i__carry__2_n_1 ;
  wire \state1_inferred__0/i__carry__2_n_2 ;
  wire \state1_inferred__0/i__carry__2_n_3 ;
  wire \state1_inferred__0/i__carry_n_0 ;
  wire \state1_inferred__0/i__carry_n_1 ;
  wire \state1_inferred__0/i__carry_n_2 ;
  wire \state1_inferred__0/i__carry_n_3 ;
  wire \state1_inferred__1/i__carry__0_n_0 ;
  wire \state1_inferred__1/i__carry__0_n_1 ;
  wire \state1_inferred__1/i__carry__0_n_2 ;
  wire \state1_inferred__1/i__carry__0_n_3 ;
  wire \state1_inferred__1/i__carry__1_n_0 ;
  wire \state1_inferred__1/i__carry__1_n_1 ;
  wire \state1_inferred__1/i__carry__1_n_2 ;
  wire \state1_inferred__1/i__carry__1_n_3 ;
  wire \state1_inferred__1/i__carry__2_n_0 ;
  wire \state1_inferred__1/i__carry__2_n_1 ;
  wire \state1_inferred__1/i__carry__2_n_2 ;
  wire \state1_inferred__1/i__carry__2_n_3 ;
  wire \state1_inferred__1/i__carry_n_0 ;
  wire \state1_inferred__1/i__carry_n_1 ;
  wire \state1_inferred__1/i__carry_n_2 ;
  wire \state1_inferred__1/i__carry_n_3 ;
  wire \state1_inferred__3/i__carry__0_n_0 ;
  wire \state1_inferred__3/i__carry__0_n_1 ;
  wire \state1_inferred__3/i__carry__0_n_2 ;
  wire \state1_inferred__3/i__carry__0_n_3 ;
  wire \state1_inferred__3/i__carry__1_n_0 ;
  wire \state1_inferred__3/i__carry__1_n_1 ;
  wire \state1_inferred__3/i__carry__1_n_2 ;
  wire \state1_inferred__3/i__carry__1_n_3 ;
  wire \state1_inferred__3/i__carry__2_n_0 ;
  wire \state1_inferred__3/i__carry__2_n_1 ;
  wire \state1_inferred__3/i__carry__2_n_2 ;
  wire \state1_inferred__3/i__carry__2_n_3 ;
  wire \state1_inferred__3/i__carry_n_0 ;
  wire \state1_inferred__3/i__carry_n_1 ;
  wire \state1_inferred__3/i__carry_n_2 ;
  wire \state1_inferred__3/i__carry_n_3 ;
  wire [31:3]state3;
  wire \state[0]_i_2_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[3]_i_3_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire [0:0]\NLW__inferred__6/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW__inferred__6/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW__inferred__6/i__carry__6_O_UNCONNECTED ;
  wire [3:2]\NLW_i_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:2]NLW_index0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_index0_carry__6_O_UNCONNECTED;
  wire [3:2]\NLW_j_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_j_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_k_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:1]NLW_out_index0_carry__6_CO_UNCONNECTED;
  wire [3:2]NLW_out_index0_carry__6_O_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__6_CO_UNCONNECTED;
  wire [3:2]\NLW_s_ctr_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_s_ctr_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:0]NLW_state1_carry_O_UNCONNECTED;
  wire [3:0]NLW_state1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_state1_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_state1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_state1_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_state1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_state1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_state1_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_state1_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:0]\NLW_state1_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_state1_inferred__1/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_state1_inferred__1/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_state1_inferred__1/i__carry__2_O_UNCONNECTED ;
  wire [3:0]\NLW_state1_inferred__3/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_state1_inferred__3/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_state1_inferred__3/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_state1_inferred__3/i__carry__2_O_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__6/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__6/i__carry_n_0 ,\_inferred__6/i__carry_n_1 ,\_inferred__6/i__carry_n_2 ,\_inferred__6/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__2_n_0,i__carry_i_2__2_n_0,i__carry_i_3__2_n_0,i__carry_i_4__2_n_0}),
        .O({\_inferred__6/i__carry_n_4 ,\_inferred__6/i__carry_n_5 ,\_inferred__6/i__carry_n_6 ,\NLW__inferred__6/i__carry_O_UNCONNECTED [0]}),
        .S({i__carry_i_5__2_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__6/i__carry__0 
       (.CI(\_inferred__6/i__carry_n_0 ),
        .CO({\_inferred__6/i__carry__0_n_0 ,\_inferred__6/i__carry__0_n_1 ,\_inferred__6/i__carry__0_n_2 ,\_inferred__6/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__2_n_0,i__carry__0_i_2__2_n_0,i__carry__0_i_3__2_n_0,i__carry__0_i_4__2_n_0}),
        .O({\_inferred__6/i__carry__0_n_4 ,\_inferred__6/i__carry__0_n_5 ,\_inferred__6/i__carry__0_n_6 ,\_inferred__6/i__carry__0_n_7 }),
        .S({i__carry__0_i_5__0_n_0,i__carry__0_i_6__0_n_0,i__carry__0_i_7__0_n_0,i__carry__0_i_8__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__6/i__carry__1 
       (.CI(\_inferred__6/i__carry__0_n_0 ),
        .CO({\_inferred__6/i__carry__1_n_0 ,\_inferred__6/i__carry__1_n_1 ,\_inferred__6/i__carry__1_n_2 ,\_inferred__6/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1__2_n_0,i__carry__1_i_2__2_n_0,i__carry__1_i_3__2_n_0,i__carry__1_i_4__2_n_0}),
        .O({\_inferred__6/i__carry__1_n_4 ,\_inferred__6/i__carry__1_n_5 ,\_inferred__6/i__carry__1_n_6 ,\_inferred__6/i__carry__1_n_7 }),
        .S({i__carry__1_i_5__0_n_0,i__carry__1_i_6__0_n_0,i__carry__1_i_7__0_n_0,i__carry__1_i_8__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__6/i__carry__2 
       (.CI(\_inferred__6/i__carry__1_n_0 ),
        .CO({\_inferred__6/i__carry__2_n_0 ,\_inferred__6/i__carry__2_n_1 ,\_inferred__6/i__carry__2_n_2 ,\_inferred__6/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1__2_n_0,i__carry__2_i_2__2_n_0,i__carry__2_i_3__2_n_0,i__carry__2_i_4__2_n_0}),
        .O({\_inferred__6/i__carry__2_n_4 ,\_inferred__6/i__carry__2_n_5 ,\_inferred__6/i__carry__2_n_6 ,\_inferred__6/i__carry__2_n_7 }),
        .S({i__carry__2_i_5__0_n_0,i__carry__2_i_6__0_n_0,i__carry__2_i_7__0_n_0,i__carry__2_i_8__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__6/i__carry__3 
       (.CI(\_inferred__6/i__carry__2_n_0 ),
        .CO({\_inferred__6/i__carry__3_n_0 ,\_inferred__6/i__carry__3_n_1 ,\_inferred__6/i__carry__3_n_2 ,\_inferred__6/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}),
        .O({\_inferred__6/i__carry__3_n_4 ,\_inferred__6/i__carry__3_n_5 ,\_inferred__6/i__carry__3_n_6 ,\_inferred__6/i__carry__3_n_7 }),
        .S({i__carry__3_i_5_n_0,i__carry__3_i_6_n_0,i__carry__3_i_7_n_0,i__carry__3_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__6/i__carry__4 
       (.CI(\_inferred__6/i__carry__3_n_0 ),
        .CO({\_inferred__6/i__carry__4_n_0 ,\_inferred__6/i__carry__4_n_1 ,\_inferred__6/i__carry__4_n_2 ,\_inferred__6/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0,i__carry__4_i_4_n_0}),
        .O({\_inferred__6/i__carry__4_n_4 ,\_inferred__6/i__carry__4_n_5 ,\_inferred__6/i__carry__4_n_6 ,\_inferred__6/i__carry__4_n_7 }),
        .S({i__carry__4_i_5_n_0,i__carry__4_i_6_n_0,i__carry__4_i_7_n_0,i__carry__4_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__6/i__carry__5 
       (.CI(\_inferred__6/i__carry__4_n_0 ),
        .CO({\_inferred__6/i__carry__5_n_0 ,\_inferred__6/i__carry__5_n_1 ,\_inferred__6/i__carry__5_n_2 ,\_inferred__6/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__5_i_1_n_0,i__carry__5_i_2_n_0,i__carry__5_i_3_n_0,i__carry__5_i_4_n_0}),
        .O({\_inferred__6/i__carry__5_n_4 ,\_inferred__6/i__carry__5_n_5 ,\_inferred__6/i__carry__5_n_6 ,\_inferred__6/i__carry__5_n_7 }),
        .S({i__carry__5_i_5_n_0,i__carry__5_i_6_n_0,i__carry__5_i_7_n_0,i__carry__5_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__6/i__carry__6 
       (.CI(\_inferred__6/i__carry__5_n_0 ),
        .CO({\NLW__inferred__6/i__carry__6_CO_UNCONNECTED [3:2],\_inferred__6/i__carry__6_n_2 ,\_inferred__6/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry__6_i_1_n_0,i__carry__6_i_2_n_0}),
        .O({\NLW__inferred__6/i__carry__6_O_UNCONNECTED [3],\_inferred__6/i__carry__6_n_5 ,\_inferred__6/i__carry__6_n_6 ,\_inferred__6/i__carry__6_n_7 }),
        .S({1'b0,i__carry__6_i_3_n_0,i__carry__6_i_4_n_0,i__carry__6_i_5_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[0]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(i[0]),
        .O(\i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[10]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(i0[10]),
        .O(\i[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[11]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(i0[11]),
        .O(\i[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[12]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(i0[12]),
        .O(\i[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[13]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(i0[13]),
        .O(\i[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[14]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(i0[14]),
        .O(\i[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[15]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(i0[15]),
        .O(\i[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[16]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(i0[16]),
        .O(\i[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[17]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(i0[17]),
        .O(\i[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[18]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(i0[18]),
        .O(\i[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[19]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(i0[19]),
        .O(\i[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[1]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(i0[1]),
        .O(\i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[20]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(i0[20]),
        .O(\i[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[21]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(i0[21]),
        .O(\i[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[22]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(i0[22]),
        .O(\i[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[23]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(i0[23]),
        .O(\i[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[24]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(i0[24]),
        .O(\i[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[25]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(i0[25]),
        .O(\i[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[26]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(i0[26]),
        .O(\i[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[27]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(i0[27]),
        .O(\i[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[28]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(i0[28]),
        .O(\i[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[29]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(i0[29]),
        .O(\i[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[2]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(i0[2]),
        .O(\i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[30]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(i0[30]),
        .O(\i[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000300000A)) 
    \i[31]_i_1 
       (.I0(en),
        .I1(p_0_in),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\i[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[31]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(i0[31]),
        .O(\i[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[3]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(i0[3]),
        .O(\i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[4]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(i0[4]),
        .O(\i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[5]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(i0[5]),
        .O(\i[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[6]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(i0[6]),
        .O(\i[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[7]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(i0[7]),
        .O(\i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[8]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(i0[8]),
        .O(\i[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[9]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(i0[9]),
        .O(\i[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_1
       (.I0(s_inputs1[17]),
        .I1(s_inputs1[18]),
        .O(i__carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_1__0
       (.I0(s_inputs1[18]),
        .I1(i[15]),
        .I2(s_inputs1[17]),
        .I3(i[14]),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_1__1
       (.I0(state3[18]),
        .I1(state3[17]),
        .O(i__carry__0_i_1__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_1__2
       (.I0(index[8]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\out_index_reg_n_0_[8] ),
        .O(i__carry__0_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_2
       (.I0(s_inputs1[15]),
        .I1(s_inputs1[16]),
        .O(i__carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_2__0
       (.I0(s_inputs1[16]),
        .I1(i[13]),
        .I2(s_inputs1[15]),
        .I3(i[12]),
        .O(i__carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_2__1
       (.I0(state3[16]),
        .I1(state3[15]),
        .O(i__carry__0_i_2__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_2__2
       (.I0(index[7]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\out_index_reg_n_0_[7] ),
        .O(i__carry__0_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_3
       (.I0(s_inputs1[13]),
        .I1(s_inputs1[14]),
        .O(i__carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_3__0
       (.I0(s_inputs1[14]),
        .I1(i[11]),
        .I2(s_inputs1[13]),
        .I3(i[10]),
        .O(i__carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_3__1
       (.I0(state3[14]),
        .I1(state3[13]),
        .O(i__carry__0_i_3__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_3__2
       (.I0(index[6]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\out_index_reg_n_0_[6] ),
        .O(i__carry__0_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_4
       (.I0(s_inputs1[11]),
        .I1(s_inputs1[12]),
        .O(i__carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_4__0
       (.I0(s_inputs1[12]),
        .I1(i[9]),
        .I2(s_inputs1[11]),
        .I3(i[8]),
        .O(i__carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_4__1
       (.I0(state3[12]),
        .I1(state3[11]),
        .O(i__carry__0_i_4__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_4__2
       (.I0(index[5]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\out_index_reg_n_0_[5] ),
        .O(i__carry__0_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5
       (.I0(i[15]),
        .I1(s_inputs1[18]),
        .I2(i[14]),
        .I3(s_inputs1[17]),
        .O(i__carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    i__carry__0_i_5__0
       (.I0(\out_index_reg_n_0_[8] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(index[8]),
        .I3(s_input_adr[8]),
        .I4(\state_reg_n_0_[3] ),
        .O(i__carry__0_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6
       (.I0(i[13]),
        .I1(s_inputs1[16]),
        .I2(i[12]),
        .I3(s_inputs1[15]),
        .O(i__carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    i__carry__0_i_6__0
       (.I0(\out_index_reg_n_0_[7] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(index[7]),
        .I3(s_input_adr[7]),
        .I4(\state_reg_n_0_[3] ),
        .O(i__carry__0_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7
       (.I0(i[11]),
        .I1(s_inputs1[14]),
        .I2(i[10]),
        .I3(s_inputs1[13]),
        .O(i__carry__0_i_7_n_0));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    i__carry__0_i_7__0
       (.I0(\out_index_reg_n_0_[6] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(index[6]),
        .I3(s_input_adr[6]),
        .I4(\state_reg_n_0_[3] ),
        .O(i__carry__0_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8
       (.I0(i[9]),
        .I1(s_inputs1[12]),
        .I2(i[8]),
        .I3(s_inputs1[11]),
        .O(i__carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h353A)) 
    i__carry__0_i_8__0
       (.I0(\out_index_reg_n_0_[5] ),
        .I1(index[5]),
        .I2(\state_reg_n_0_[0] ),
        .I3(s_input_adr[5]),
        .O(i__carry__0_i_8__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_1
       (.I0(s_inputs1[25]),
        .I1(s_inputs1[26]),
        .O(i__carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_1__0
       (.I0(s_inputs1[26]),
        .I1(i[23]),
        .I2(s_inputs1[25]),
        .I3(i[22]),
        .O(i__carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_1__1
       (.I0(state3[26]),
        .I1(state3[25]),
        .O(i__carry__1_i_1__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__1_i_1__2
       (.I0(index[12]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\out_index_reg_n_0_[12] ),
        .O(i__carry__1_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_2
       (.I0(s_inputs1[23]),
        .I1(s_inputs1[24]),
        .O(i__carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_2__0
       (.I0(s_inputs1[24]),
        .I1(i[21]),
        .I2(s_inputs1[23]),
        .I3(i[20]),
        .O(i__carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_2__1
       (.I0(state3[24]),
        .I1(state3[23]),
        .O(i__carry__1_i_2__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__1_i_2__2
       (.I0(index[11]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\out_index_reg_n_0_[11] ),
        .O(i__carry__1_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_3
       (.I0(s_inputs1[22]),
        .I1(s_inputs1[21]),
        .O(i__carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_3__0
       (.I0(s_inputs1[22]),
        .I1(i[19]),
        .I2(s_inputs1[21]),
        .I3(i[18]),
        .O(i__carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_3__1
       (.I0(state3[22]),
        .I1(state3[21]),
        .O(i__carry__1_i_3__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__1_i_3__2
       (.I0(index[10]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\out_index_reg_n_0_[10] ),
        .O(i__carry__1_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_4
       (.I0(s_inputs1[19]),
        .I1(s_inputs1[20]),
        .O(i__carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_4__0
       (.I0(s_inputs1[20]),
        .I1(i[17]),
        .I2(s_inputs1[19]),
        .I3(i[16]),
        .O(i__carry__1_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_4__1
       (.I0(state3[20]),
        .I1(state3[19]),
        .O(i__carry__1_i_4__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__1_i_4__2
       (.I0(index[9]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\out_index_reg_n_0_[9] ),
        .O(i__carry__1_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_5
       (.I0(i[23]),
        .I1(s_inputs1[26]),
        .I2(i[22]),
        .I3(s_inputs1[25]),
        .O(i__carry__1_i_5_n_0));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    i__carry__1_i_5__0
       (.I0(\out_index_reg_n_0_[12] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(index[12]),
        .I3(s_input_adr[12]),
        .I4(\state_reg_n_0_[3] ),
        .O(i__carry__1_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_6
       (.I0(i[21]),
        .I1(s_inputs1[24]),
        .I2(i[20]),
        .I3(s_inputs1[23]),
        .O(i__carry__1_i_6_n_0));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    i__carry__1_i_6__0
       (.I0(\out_index_reg_n_0_[11] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(index[11]),
        .I3(s_input_adr[11]),
        .I4(\state_reg_n_0_[3] ),
        .O(i__carry__1_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_7
       (.I0(i[19]),
        .I1(s_inputs1[22]),
        .I2(i[18]),
        .I3(s_inputs1[21]),
        .O(i__carry__1_i_7_n_0));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    i__carry__1_i_7__0
       (.I0(\out_index_reg_n_0_[10] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(index[10]),
        .I3(s_input_adr[10]),
        .I4(\state_reg_n_0_[3] ),
        .O(i__carry__1_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_8
       (.I0(i[17]),
        .I1(s_inputs1[20]),
        .I2(i[16]),
        .I3(s_inputs1[19]),
        .O(i__carry__1_i_8_n_0));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    i__carry__1_i_8__0
       (.I0(\out_index_reg_n_0_[9] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(index[9]),
        .I3(s_input_adr[9]),
        .I4(\state_reg_n_0_[3] ),
        .O(i__carry__1_i_8__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_1
       (.I0(\k_reg_n_0_[31] ),
        .I1(\k_reg_n_0_[30] ),
        .O(i__carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__2_i_1__0
       (.I0(\k_reg_n_0_[31] ),
        .I1(i[31]),
        .I2(\k_reg_n_0_[30] ),
        .I3(i[30]),
        .O(i__carry__2_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_1__1
       (.I0(\s_ctr_reg_n_0_[31] ),
        .I1(\s_ctr_reg_n_0_[30] ),
        .O(i__carry__2_i_1__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__2_i_1__2
       (.I0(index[16]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\out_index_reg_n_0_[16] ),
        .O(i__carry__2_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_2
       (.I0(\k_reg_n_0_[29] ),
        .I1(s_inputs1[31]),
        .O(i__carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__2_i_2__0
       (.I0(\k_reg_n_0_[29] ),
        .I1(i[29]),
        .I2(s_inputs1[31]),
        .I3(i[28]),
        .O(i__carry__2_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_2__1
       (.I0(\s_ctr_reg_n_0_[29] ),
        .I1(state3[31]),
        .O(i__carry__2_i_2__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__2_i_2__2
       (.I0(index[15]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\out_index_reg_n_0_[15] ),
        .O(i__carry__2_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_3
       (.I0(s_inputs1[29]),
        .I1(s_inputs1[30]),
        .O(i__carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__2_i_3__0
       (.I0(s_inputs1[30]),
        .I1(i[27]),
        .I2(s_inputs1[29]),
        .I3(i[26]),
        .O(i__carry__2_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_3__1
       (.I0(state3[30]),
        .I1(state3[29]),
        .O(i__carry__2_i_3__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__2_i_3__2
       (.I0(index[14]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\out_index_reg_n_0_[14] ),
        .O(i__carry__2_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_4
       (.I0(s_inputs1[27]),
        .I1(s_inputs1[28]),
        .O(i__carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__2_i_4__0
       (.I0(s_inputs1[28]),
        .I1(i[25]),
        .I2(s_inputs1[27]),
        .I3(i[24]),
        .O(i__carry__2_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_4__1
       (.I0(state3[28]),
        .I1(state3[27]),
        .O(i__carry__2_i_4__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__2_i_4__2
       (.I0(index[13]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\out_index_reg_n_0_[13] ),
        .O(i__carry__2_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_5
       (.I0(i[31]),
        .I1(\k_reg_n_0_[31] ),
        .I2(i[30]),
        .I3(\k_reg_n_0_[30] ),
        .O(i__carry__2_i_5_n_0));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    i__carry__2_i_5__0
       (.I0(\out_index_reg_n_0_[16] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(index[16]),
        .I3(s_input_adr[16]),
        .I4(\state_reg_n_0_[3] ),
        .O(i__carry__2_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_6
       (.I0(i[29]),
        .I1(\k_reg_n_0_[29] ),
        .I2(i[28]),
        .I3(s_inputs1[31]),
        .O(i__carry__2_i_6_n_0));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    i__carry__2_i_6__0
       (.I0(\out_index_reg_n_0_[15] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(index[15]),
        .I3(s_input_adr[15]),
        .I4(\state_reg_n_0_[3] ),
        .O(i__carry__2_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_7
       (.I0(i[27]),
        .I1(s_inputs1[30]),
        .I2(i[26]),
        .I3(s_inputs1[29]),
        .O(i__carry__2_i_7_n_0));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    i__carry__2_i_7__0
       (.I0(\out_index_reg_n_0_[14] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(index[14]),
        .I3(s_input_adr[14]),
        .I4(\state_reg_n_0_[3] ),
        .O(i__carry__2_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_8
       (.I0(i[25]),
        .I1(s_inputs1[28]),
        .I2(i[24]),
        .I3(s_inputs1[27]),
        .O(i__carry__2_i_8_n_0));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    i__carry__2_i_8__0
       (.I0(\out_index_reg_n_0_[13] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(index[13]),
        .I3(s_input_adr[13]),
        .I4(\state_reg_n_0_[3] ),
        .O(i__carry__2_i_8__0_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__3_i_1
       (.I0(index[20]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\out_index_reg_n_0_[20] ),
        .O(i__carry__3_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__3_i_2
       (.I0(index[19]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\out_index_reg_n_0_[19] ),
        .O(i__carry__3_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__3_i_3
       (.I0(index[18]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\out_index_reg_n_0_[18] ),
        .O(i__carry__3_i_3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__3_i_4
       (.I0(index[17]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\out_index_reg_n_0_[17] ),
        .O(i__carry__3_i_4_n_0));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    i__carry__3_i_5
       (.I0(\out_index_reg_n_0_[20] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(index[20]),
        .I3(s_input_adr[20]),
        .I4(\state_reg_n_0_[3] ),
        .O(i__carry__3_i_5_n_0));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    i__carry__3_i_6
       (.I0(\out_index_reg_n_0_[19] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(index[19]),
        .I3(s_input_adr[19]),
        .I4(\state_reg_n_0_[3] ),
        .O(i__carry__3_i_6_n_0));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    i__carry__3_i_7
       (.I0(\out_index_reg_n_0_[18] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(index[18]),
        .I3(s_input_adr[18]),
        .I4(\state_reg_n_0_[3] ),
        .O(i__carry__3_i_7_n_0));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    i__carry__3_i_8
       (.I0(\out_index_reg_n_0_[17] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(index[17]),
        .I3(s_input_adr[17]),
        .I4(\state_reg_n_0_[3] ),
        .O(i__carry__3_i_8_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__4_i_1
       (.I0(index[24]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\out_index_reg_n_0_[24] ),
        .O(i__carry__4_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__4_i_2
       (.I0(index[23]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\out_index_reg_n_0_[23] ),
        .O(i__carry__4_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__4_i_3
       (.I0(index[22]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\out_index_reg_n_0_[22] ),
        .O(i__carry__4_i_3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__4_i_4
       (.I0(index[21]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\out_index_reg_n_0_[21] ),
        .O(i__carry__4_i_4_n_0));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    i__carry__4_i_5
       (.I0(\out_index_reg_n_0_[24] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(index[24]),
        .I3(s_input_adr[24]),
        .I4(\state_reg_n_0_[3] ),
        .O(i__carry__4_i_5_n_0));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    i__carry__4_i_6
       (.I0(\out_index_reg_n_0_[23] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(index[23]),
        .I3(s_input_adr[23]),
        .I4(\state_reg_n_0_[3] ),
        .O(i__carry__4_i_6_n_0));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    i__carry__4_i_7
       (.I0(\out_index_reg_n_0_[22] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(index[22]),
        .I3(s_input_adr[22]),
        .I4(\state_reg_n_0_[3] ),
        .O(i__carry__4_i_7_n_0));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    i__carry__4_i_8
       (.I0(\out_index_reg_n_0_[21] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(index[21]),
        .I3(s_input_adr[21]),
        .I4(\state_reg_n_0_[3] ),
        .O(i__carry__4_i_8_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__5_i_1
       (.I0(index[28]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\out_index_reg_n_0_[28] ),
        .O(i__carry__5_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__5_i_2
       (.I0(index[27]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\out_index_reg_n_0_[27] ),
        .O(i__carry__5_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__5_i_3
       (.I0(index[26]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\out_index_reg_n_0_[26] ),
        .O(i__carry__5_i_3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__5_i_4
       (.I0(index[25]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\out_index_reg_n_0_[25] ),
        .O(i__carry__5_i_4_n_0));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    i__carry__5_i_5
       (.I0(\out_index_reg_n_0_[28] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(index[28]),
        .I3(s_input_adr[28]),
        .I4(\state_reg_n_0_[3] ),
        .O(i__carry__5_i_5_n_0));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    i__carry__5_i_6
       (.I0(\out_index_reg_n_0_[27] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(index[27]),
        .I3(s_input_adr[27]),
        .I4(\state_reg_n_0_[3] ),
        .O(i__carry__5_i_6_n_0));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    i__carry__5_i_7
       (.I0(\out_index_reg_n_0_[26] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(index[26]),
        .I3(s_input_adr[26]),
        .I4(\state_reg_n_0_[3] ),
        .O(i__carry__5_i_7_n_0));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    i__carry__5_i_8
       (.I0(\out_index_reg_n_0_[25] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(index[25]),
        .I3(s_input_adr[25]),
        .I4(\state_reg_n_0_[3] ),
        .O(i__carry__5_i_8_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__6_i_1
       (.I0(index[30]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\out_index_reg_n_0_[30] ),
        .O(i__carry__6_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__6_i_2
       (.I0(index[29]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\out_index_reg_n_0_[29] ),
        .O(i__carry__6_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__6_i_3
       (.I0(s_input_adr[31]),
        .I1(\state_reg_n_0_[3] ),
        .I2(index[31]),
        .O(i__carry__6_i_3_n_0));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    i__carry__6_i_4
       (.I0(\out_index_reg_n_0_[30] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(index[30]),
        .I3(s_input_adr[30]),
        .I4(\state_reg_n_0_[3] ),
        .O(i__carry__6_i_4_n_0));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    i__carry__6_i_5
       (.I0(\out_index_reg_n_0_[29] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(index[29]),
        .I3(s_input_adr[29]),
        .I4(\state_reg_n_0_[3] ),
        .O(i__carry__6_i_5_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    i__carry_i_1
       (.I0(s_inputs1[3]),
        .I1(s_inputs1[4]),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_1__0
       (.I0(s_inputs1[10]),
        .I1(i[7]),
        .I2(s_inputs1[9]),
        .I3(i[6]),
        .O(i__carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    i__carry_i_1__1
       (.I0(state3[3]),
        .I1(state3[4]),
        .O(i__carry_i_1__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_1__2
       (.I0(index[4]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\out_index_reg_n_0_[4] ),
        .O(i__carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_2
       (.I0(s_inputs1[9]),
        .I1(s_inputs1[10]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_2__0
       (.I0(s_inputs1[8]),
        .I1(i[5]),
        .I2(s_inputs1[7]),
        .I3(i[4]),
        .O(i__carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_2__1
       (.I0(state3[10]),
        .I1(state3[9]),
        .O(i__carry_i_2__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_2__2
       (.I0(index[3]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\out_index_reg_n_0_[3] ),
        .O(i__carry_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_3
       (.I0(s_inputs1[7]),
        .I1(s_inputs1[8]),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_3__0
       (.I0(s_inputs1[6]),
        .I1(i[3]),
        .I2(s_inputs1[5]),
        .I3(i[2]),
        .O(i__carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_3__1
       (.I0(state3[8]),
        .I1(state3[7]),
        .O(i__carry_i_3__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_3__2
       (.I0(index[2]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\out_index_reg_n_0_[2] ),
        .O(i__carry_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_4
       (.I0(s_inputs1[5]),
        .I1(s_inputs1[6]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_4__0
       (.I0(s_inputs1[4]),
        .I1(i[1]),
        .I2(s_inputs1[3]),
        .I3(i[0]),
        .O(i__carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_4__1
       (.I0(state3[6]),
        .I1(state3[5]),
        .O(i__carry_i_4__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_4__2
       (.I0(index[1]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\out_index_reg_n_0_[1] ),
        .O(i__carry_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_5
       (.I0(s_inputs1[4]),
        .I1(s_inputs1[3]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__0
       (.I0(i[7]),
        .I1(s_inputs1[10]),
        .I2(i[6]),
        .I3(s_inputs1[9]),
        .O(i__carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_5__1
       (.I0(state3[4]),
        .I1(state3[3]),
        .O(i__carry_i_5__1_n_0));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    i__carry_i_5__2
       (.I0(\out_index_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(index[4]),
        .I3(s_input_adr[4]),
        .I4(\state_reg_n_0_[3] ),
        .O(i__carry_i_5__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(i[5]),
        .I1(s_inputs1[8]),
        .I2(i[4]),
        .I3(s_inputs1[7]),
        .O(i__carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    i__carry_i_6__0
       (.I0(\out_index_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(index[3]),
        .I3(s_input_adr[3]),
        .I4(\state_reg_n_0_[3] ),
        .O(i__carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(i[3]),
        .I1(s_inputs1[6]),
        .I2(i[2]),
        .I3(s_inputs1[5]),
        .O(i__carry_i_7_n_0));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    i__carry_i_7__0
       (.I0(\out_index_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(index[2]),
        .I3(s_input_adr[2]),
        .I4(\state_reg_n_0_[3] ),
        .O(i__carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(i[1]),
        .I1(s_inputs1[4]),
        .I2(i[0]),
        .I3(s_inputs1[3]),
        .O(i__carry_i_8_n_0));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    i__carry_i_8__0
       (.I0(\out_index_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(index[1]),
        .I3(s_input_adr[1]),
        .I4(\state_reg_n_0_[3] ),
        .O(i__carry_i_8__0_n_0));
  FDRE \i_reg[0] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[0]_i_1_n_0 ),
        .Q(i[0]),
        .R(rst));
  FDRE \i_reg[10] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[10]_i_1_n_0 ),
        .Q(i[10]),
        .R(rst));
  FDRE \i_reg[11] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[11]_i_1_n_0 ),
        .Q(i[11]),
        .R(rst));
  FDRE \i_reg[12] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[12]_i_1_n_0 ),
        .Q(i[12]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_reg[12]_i_2 
       (.CI(\i_reg[8]_i_2_n_0 ),
        .CO({\i_reg[12]_i_2_n_0 ,\i_reg[12]_i_2_n_1 ,\i_reg[12]_i_2_n_2 ,\i_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i0[12:9]),
        .S(i[12:9]));
  FDRE \i_reg[13] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[13]_i_1_n_0 ),
        .Q(i[13]),
        .R(rst));
  FDRE \i_reg[14] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[14]_i_1_n_0 ),
        .Q(i[14]),
        .R(rst));
  FDRE \i_reg[15] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[15]_i_1_n_0 ),
        .Q(i[15]),
        .R(rst));
  FDRE \i_reg[16] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[16]_i_1_n_0 ),
        .Q(i[16]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_reg[16]_i_2 
       (.CI(\i_reg[12]_i_2_n_0 ),
        .CO({\i_reg[16]_i_2_n_0 ,\i_reg[16]_i_2_n_1 ,\i_reg[16]_i_2_n_2 ,\i_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i0[16:13]),
        .S(i[16:13]));
  FDRE \i_reg[17] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[17]_i_1_n_0 ),
        .Q(i[17]),
        .R(rst));
  FDRE \i_reg[18] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[18]_i_1_n_0 ),
        .Q(i[18]),
        .R(rst));
  FDRE \i_reg[19] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[19]_i_1_n_0 ),
        .Q(i[19]),
        .R(rst));
  FDRE \i_reg[1] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[1]_i_1_n_0 ),
        .Q(i[1]),
        .R(rst));
  FDRE \i_reg[20] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[20]_i_1_n_0 ),
        .Q(i[20]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_reg[20]_i_2 
       (.CI(\i_reg[16]_i_2_n_0 ),
        .CO({\i_reg[20]_i_2_n_0 ,\i_reg[20]_i_2_n_1 ,\i_reg[20]_i_2_n_2 ,\i_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i0[20:17]),
        .S(i[20:17]));
  FDRE \i_reg[21] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[21]_i_1_n_0 ),
        .Q(i[21]),
        .R(rst));
  FDRE \i_reg[22] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[22]_i_1_n_0 ),
        .Q(i[22]),
        .R(rst));
  FDRE \i_reg[23] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[23]_i_1_n_0 ),
        .Q(i[23]),
        .R(rst));
  FDRE \i_reg[24] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[24]_i_1_n_0 ),
        .Q(i[24]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_reg[24]_i_2 
       (.CI(\i_reg[20]_i_2_n_0 ),
        .CO({\i_reg[24]_i_2_n_0 ,\i_reg[24]_i_2_n_1 ,\i_reg[24]_i_2_n_2 ,\i_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i0[24:21]),
        .S(i[24:21]));
  FDRE \i_reg[25] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[25]_i_1_n_0 ),
        .Q(i[25]),
        .R(rst));
  FDRE \i_reg[26] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[26]_i_1_n_0 ),
        .Q(i[26]),
        .R(rst));
  FDRE \i_reg[27] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[27]_i_1_n_0 ),
        .Q(i[27]),
        .R(rst));
  FDRE \i_reg[28] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[28]_i_1_n_0 ),
        .Q(i[28]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_reg[28]_i_2 
       (.CI(\i_reg[24]_i_2_n_0 ),
        .CO({\i_reg[28]_i_2_n_0 ,\i_reg[28]_i_2_n_1 ,\i_reg[28]_i_2_n_2 ,\i_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i0[28:25]),
        .S(i[28:25]));
  FDRE \i_reg[29] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[29]_i_1_n_0 ),
        .Q(i[29]),
        .R(rst));
  FDRE \i_reg[2] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[2]_i_1_n_0 ),
        .Q(i[2]),
        .R(rst));
  FDRE \i_reg[30] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[30]_i_1_n_0 ),
        .Q(i[30]),
        .R(rst));
  FDRE \i_reg[31] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[31]_i_2_n_0 ),
        .Q(i[31]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_reg[31]_i_3 
       (.CI(\i_reg[28]_i_2_n_0 ),
        .CO({\NLW_i_reg[31]_i_3_CO_UNCONNECTED [3:2],\i_reg[31]_i_3_n_2 ,\i_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_i_reg[31]_i_3_O_UNCONNECTED [3],i0[31:29]}),
        .S({1'b0,i[31:29]}));
  FDRE \i_reg[3] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[3]_i_1_n_0 ),
        .Q(i[3]),
        .R(rst));
  FDRE \i_reg[4] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[4]_i_1_n_0 ),
        .Q(i[4]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\i_reg[4]_i_2_n_0 ,\i_reg[4]_i_2_n_1 ,\i_reg[4]_i_2_n_2 ,\i_reg[4]_i_2_n_3 }),
        .CYINIT(i[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i0[4:1]),
        .S(i[4:1]));
  FDRE \i_reg[5] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[5]_i_1_n_0 ),
        .Q(i[5]),
        .R(rst));
  FDRE \i_reg[6] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[6]_i_1_n_0 ),
        .Q(i[6]),
        .R(rst));
  FDRE \i_reg[7] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[7]_i_1_n_0 ),
        .Q(i[7]),
        .R(rst));
  FDRE \i_reg[8] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[8]_i_1_n_0 ),
        .Q(i[8]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_reg[8]_i_2 
       (.CI(\i_reg[4]_i_2_n_0 ),
        .CO({\i_reg[8]_i_2_n_0 ,\i_reg[8]_i_2_n_1 ,\i_reg[8]_i_2_n_2 ,\i_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i0[8:5]),
        .S(i[8:5]));
  FDRE \i_reg[9] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(\i[9]_i_1_n_0 ),
        .Q(i[9]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 index0_carry
       (.CI(1'b0),
        .CO({index0_carry_n_0,index0_carry_n_1,index0_carry_n_2,index0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,index[2],1'b0}),
        .O(index0[4:1]),
        .S({index[4:3],index0_carry_i_1_n_0,index[1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 index0_carry__0
       (.CI(index0_carry_n_0),
        .CO({index0_carry__0_n_0,index0_carry__0_n_1,index0_carry__0_n_2,index0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(index0[8:5]),
        .S(index[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 index0_carry__1
       (.CI(index0_carry__0_n_0),
        .CO({index0_carry__1_n_0,index0_carry__1_n_1,index0_carry__1_n_2,index0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(index0[12:9]),
        .S(index[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 index0_carry__2
       (.CI(index0_carry__1_n_0),
        .CO({index0_carry__2_n_0,index0_carry__2_n_1,index0_carry__2_n_2,index0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(index0[16:13]),
        .S(index[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 index0_carry__3
       (.CI(index0_carry__2_n_0),
        .CO({index0_carry__3_n_0,index0_carry__3_n_1,index0_carry__3_n_2,index0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(index0[20:17]),
        .S(index[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 index0_carry__4
       (.CI(index0_carry__3_n_0),
        .CO({index0_carry__4_n_0,index0_carry__4_n_1,index0_carry__4_n_2,index0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(index0[24:21]),
        .S(index[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 index0_carry__5
       (.CI(index0_carry__4_n_0),
        .CO({index0_carry__5_n_0,index0_carry__5_n_1,index0_carry__5_n_2,index0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(index0[28:25]),
        .S(index[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 index0_carry__6
       (.CI(index0_carry__5_n_0),
        .CO({NLW_index0_carry__6_CO_UNCONNECTED[3:2],index0_carry__6_n_2,index0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_index0_carry__6_O_UNCONNECTED[3],index0[31:29]}),
        .S({1'b0,index[31:29]}));
  LUT1 #(
    .INIT(2'h1)) 
    index0_carry_i_1
       (.I0(index[2]),
        .O(index0_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \index[10]_i_1 
       (.I0(index0[10]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\index[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \index[11]_i_1 
       (.I0(index0[11]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\index[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \index[12]_i_1 
       (.I0(index0[12]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\index[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \index[13]_i_1 
       (.I0(index0[13]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\index[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \index[14]_i_1 
       (.I0(index0[14]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\index[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \index[15]_i_1 
       (.I0(index0[15]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\index[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \index[16]_i_1 
       (.I0(index0[16]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\index[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \index[17]_i_1 
       (.I0(index0[17]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\index[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \index[18]_i_1 
       (.I0(index0[18]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\index[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \index[19]_i_1 
       (.I0(index0[19]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\index[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \index[1]_i_1 
       (.I0(index0[1]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\index[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \index[20]_i_1 
       (.I0(index0[20]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\index[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \index[21]_i_1 
       (.I0(index0[21]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\index[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \index[22]_i_1 
       (.I0(index0[22]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\index[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \index[23]_i_1 
       (.I0(index0[23]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\index[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \index[24]_i_1 
       (.I0(index0[24]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\index[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \index[25]_i_1 
       (.I0(index0[25]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\index[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \index[26]_i_1 
       (.I0(index0[26]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\index[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \index[27]_i_1 
       (.I0(index0[27]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\index[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \index[28]_i_1 
       (.I0(index0[28]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\index[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \index[29]_i_1 
       (.I0(index0[29]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\index[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \index[2]_i_1 
       (.I0(index0[2]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\index[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \index[30]_i_1 
       (.I0(index0[30]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\index[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0040)) 
    \index[31]_i_1 
       (.I0(\state[3]_i_3_n_0 ),
        .I1(\index[31]_i_3_n_0 ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\index[31]_i_4_n_0 ),
        .I5(\index[31]_i_5_n_0 ),
        .O(index_0));
  LUT3 #(
    .INIT(8'hA8)) 
    \index[31]_i_2 
       (.I0(index0[31]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\index[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \index[31]_i_3 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .O(\index[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0003200300032000)) 
    \index[31]_i_4 
       (.I0(i_trng_valid),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(en),
        .O(\index[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \index[31]_i_5 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state1_inferred__3/i__carry__2_n_0 ),
        .O(\index[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \index[3]_i_1 
       (.I0(index0[3]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\index[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \index[4]_i_1 
       (.I0(index0[4]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\index[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \index[5]_i_1 
       (.I0(index0[5]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\index[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \index[6]_i_1 
       (.I0(index0[6]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\index[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \index[7]_i_1 
       (.I0(index0[7]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\index[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \index[8]_i_1 
       (.I0(index0[8]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\index[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \index[9]_i_1 
       (.I0(index0[9]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\index[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[10] 
       (.C(clk),
        .CE(index_0),
        .D(\index[10]_i_1_n_0 ),
        .Q(index[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[11] 
       (.C(clk),
        .CE(index_0),
        .D(\index[11]_i_1_n_0 ),
        .Q(index[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[12] 
       (.C(clk),
        .CE(index_0),
        .D(\index[12]_i_1_n_0 ),
        .Q(index[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[13] 
       (.C(clk),
        .CE(index_0),
        .D(\index[13]_i_1_n_0 ),
        .Q(index[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[14] 
       (.C(clk),
        .CE(index_0),
        .D(\index[14]_i_1_n_0 ),
        .Q(index[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[15] 
       (.C(clk),
        .CE(index_0),
        .D(\index[15]_i_1_n_0 ),
        .Q(index[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[16] 
       (.C(clk),
        .CE(index_0),
        .D(\index[16]_i_1_n_0 ),
        .Q(index[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[17] 
       (.C(clk),
        .CE(index_0),
        .D(\index[17]_i_1_n_0 ),
        .Q(index[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[18] 
       (.C(clk),
        .CE(index_0),
        .D(\index[18]_i_1_n_0 ),
        .Q(index[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[19] 
       (.C(clk),
        .CE(index_0),
        .D(\index[19]_i_1_n_0 ),
        .Q(index[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[1] 
       (.C(clk),
        .CE(index_0),
        .D(\index[1]_i_1_n_0 ),
        .Q(index[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[20] 
       (.C(clk),
        .CE(index_0),
        .D(\index[20]_i_1_n_0 ),
        .Q(index[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[21] 
       (.C(clk),
        .CE(index_0),
        .D(\index[21]_i_1_n_0 ),
        .Q(index[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[22] 
       (.C(clk),
        .CE(index_0),
        .D(\index[22]_i_1_n_0 ),
        .Q(index[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[23] 
       (.C(clk),
        .CE(index_0),
        .D(\index[23]_i_1_n_0 ),
        .Q(index[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[24] 
       (.C(clk),
        .CE(index_0),
        .D(\index[24]_i_1_n_0 ),
        .Q(index[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[25] 
       (.C(clk),
        .CE(index_0),
        .D(\index[25]_i_1_n_0 ),
        .Q(index[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[26] 
       (.C(clk),
        .CE(index_0),
        .D(\index[26]_i_1_n_0 ),
        .Q(index[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[27] 
       (.C(clk),
        .CE(index_0),
        .D(\index[27]_i_1_n_0 ),
        .Q(index[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[28] 
       (.C(clk),
        .CE(index_0),
        .D(\index[28]_i_1_n_0 ),
        .Q(index[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[29] 
       (.C(clk),
        .CE(index_0),
        .D(\index[29]_i_1_n_0 ),
        .Q(index[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[2] 
       (.C(clk),
        .CE(index_0),
        .D(\index[2]_i_1_n_0 ),
        .Q(index[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[30] 
       (.C(clk),
        .CE(index_0),
        .D(\index[30]_i_1_n_0 ),
        .Q(index[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[31] 
       (.C(clk),
        .CE(index_0),
        .D(\index[31]_i_2_n_0 ),
        .Q(index[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[3] 
       (.C(clk),
        .CE(index_0),
        .D(\index[3]_i_1_n_0 ),
        .Q(index[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[4] 
       (.C(clk),
        .CE(index_0),
        .D(\index[4]_i_1_n_0 ),
        .Q(index[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[5] 
       (.C(clk),
        .CE(index_0),
        .D(\index[5]_i_1_n_0 ),
        .Q(index[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[6] 
       (.C(clk),
        .CE(index_0),
        .D(\index[6]_i_1_n_0 ),
        .Q(index[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[7] 
       (.C(clk),
        .CE(index_0),
        .D(\index[7]_i_1_n_0 ),
        .Q(index[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[8] 
       (.C(clk),
        .CE(index_0),
        .D(\index[8]_i_1_n_0 ),
        .Q(index[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[9] 
       (.C(clk),
        .CE(index_0),
        .D(\index[9]_i_1_n_0 ),
        .Q(index[9]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \j[0]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(j[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[10]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(j0[10]),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[11]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(j0[11]),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[12]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(j0[12]),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[13]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(j0[13]),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[14]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(j0[14]),
        .O(p_1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[15]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(j0[15]),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[16]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(j0[16]),
        .O(p_1_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[17]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(j0[17]),
        .O(p_1_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[18]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(j0[18]),
        .O(p_1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[19]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(j0[19]),
        .O(p_1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[1]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(j0[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[20]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(j0[20]),
        .O(p_1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[21]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(j0[21]),
        .O(p_1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[22]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(j0[22]),
        .O(p_1_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[23]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(j0[23]),
        .O(p_1_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[24]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(j0[24]),
        .O(p_1_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[25]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(j0[25]),
        .O(p_1_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[26]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(j0[26]),
        .O(p_1_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[27]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(j0[27]),
        .O(p_1_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[28]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(j0[28]),
        .O(p_1_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[29]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(j0[29]),
        .O(p_1_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[2]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(j0[2]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[30]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(j0[30]),
        .O(p_1_in[30]));
  LUT6 #(
    .INIT(64'h00C000C000C20002)) 
    \j[31]_i_1 
       (.I0(en),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state1_inferred__1/i__carry__2_n_0 ),
        .I5(\state_reg_n_0_[3] ),
        .O(\j[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[31]_i_2 
       (.I0(\state_reg_n_0_[3] ),
        .I1(j0[31]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[3]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(j0[3]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[4]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(j0[4]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[5]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(j0[5]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[6]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(j0[6]),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[7]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(j0[7]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[8]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(j0[8]),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \j[9]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(j0[9]),
        .O(p_1_in[9]));
  FDRE \j_reg[0] 
       (.C(clk),
        .CE(\j[31]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(j[0]),
        .R(rst));
  FDRE \j_reg[10] 
       (.C(clk),
        .CE(\j[31]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(j[10]),
        .R(rst));
  FDRE \j_reg[11] 
       (.C(clk),
        .CE(\j[31]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(j[11]),
        .R(rst));
  FDRE \j_reg[12] 
       (.C(clk),
        .CE(\j[31]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(j[12]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_reg[12]_i_2 
       (.CI(\j_reg[8]_i_2_n_0 ),
        .CO({\j_reg[12]_i_2_n_0 ,\j_reg[12]_i_2_n_1 ,\j_reg[12]_i_2_n_2 ,\j_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(j0[12:9]),
        .S(j[12:9]));
  FDRE \j_reg[13] 
       (.C(clk),
        .CE(\j[31]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(j[13]),
        .R(rst));
  FDRE \j_reg[14] 
       (.C(clk),
        .CE(\j[31]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(j[14]),
        .R(rst));
  FDRE \j_reg[15] 
       (.C(clk),
        .CE(\j[31]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(j[15]),
        .R(rst));
  FDRE \j_reg[16] 
       (.C(clk),
        .CE(\j[31]_i_1_n_0 ),
        .D(p_1_in[16]),
        .Q(j[16]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_reg[16]_i_2 
       (.CI(\j_reg[12]_i_2_n_0 ),
        .CO({\j_reg[16]_i_2_n_0 ,\j_reg[16]_i_2_n_1 ,\j_reg[16]_i_2_n_2 ,\j_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(j0[16:13]),
        .S(j[16:13]));
  FDRE \j_reg[17] 
       (.C(clk),
        .CE(\j[31]_i_1_n_0 ),
        .D(p_1_in[17]),
        .Q(j[17]),
        .R(rst));
  FDRE \j_reg[18] 
       (.C(clk),
        .CE(\j[31]_i_1_n_0 ),
        .D(p_1_in[18]),
        .Q(j[18]),
        .R(rst));
  FDRE \j_reg[19] 
       (.C(clk),
        .CE(\j[31]_i_1_n_0 ),
        .D(p_1_in[19]),
        .Q(j[19]),
        .R(rst));
  FDRE \j_reg[1] 
       (.C(clk),
        .CE(\j[31]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(j[1]),
        .R(rst));
  FDRE \j_reg[20] 
       (.C(clk),
        .CE(\j[31]_i_1_n_0 ),
        .D(p_1_in[20]),
        .Q(j[20]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_reg[20]_i_2 
       (.CI(\j_reg[16]_i_2_n_0 ),
        .CO({\j_reg[20]_i_2_n_0 ,\j_reg[20]_i_2_n_1 ,\j_reg[20]_i_2_n_2 ,\j_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(j0[20:17]),
        .S(j[20:17]));
  FDRE \j_reg[21] 
       (.C(clk),
        .CE(\j[31]_i_1_n_0 ),
        .D(p_1_in[21]),
        .Q(j[21]),
        .R(rst));
  FDRE \j_reg[22] 
       (.C(clk),
        .CE(\j[31]_i_1_n_0 ),
        .D(p_1_in[22]),
        .Q(j[22]),
        .R(rst));
  FDRE \j_reg[23] 
       (.C(clk),
        .CE(\j[31]_i_1_n_0 ),
        .D(p_1_in[23]),
        .Q(j[23]),
        .R(rst));
  FDRE \j_reg[24] 
       (.C(clk),
        .CE(\j[31]_i_1_n_0 ),
        .D(p_1_in[24]),
        .Q(j[24]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_reg[24]_i_2 
       (.CI(\j_reg[20]_i_2_n_0 ),
        .CO({\j_reg[24]_i_2_n_0 ,\j_reg[24]_i_2_n_1 ,\j_reg[24]_i_2_n_2 ,\j_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(j0[24:21]),
        .S(j[24:21]));
  FDRE \j_reg[25] 
       (.C(clk),
        .CE(\j[31]_i_1_n_0 ),
        .D(p_1_in[25]),
        .Q(j[25]),
        .R(rst));
  FDRE \j_reg[26] 
       (.C(clk),
        .CE(\j[31]_i_1_n_0 ),
        .D(p_1_in[26]),
        .Q(j[26]),
        .R(rst));
  FDRE \j_reg[27] 
       (.C(clk),
        .CE(\j[31]_i_1_n_0 ),
        .D(p_1_in[27]),
        .Q(j[27]),
        .R(rst));
  FDRE \j_reg[28] 
       (.C(clk),
        .CE(\j[31]_i_1_n_0 ),
        .D(p_1_in[28]),
        .Q(j[28]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_reg[28]_i_2 
       (.CI(\j_reg[24]_i_2_n_0 ),
        .CO({\j_reg[28]_i_2_n_0 ,\j_reg[28]_i_2_n_1 ,\j_reg[28]_i_2_n_2 ,\j_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(j0[28:25]),
        .S(j[28:25]));
  FDRE \j_reg[29] 
       (.C(clk),
        .CE(\j[31]_i_1_n_0 ),
        .D(p_1_in[29]),
        .Q(j[29]),
        .R(rst));
  FDRE \j_reg[2] 
       (.C(clk),
        .CE(\j[31]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(j[2]),
        .R(rst));
  FDRE \j_reg[30] 
       (.C(clk),
        .CE(\j[31]_i_1_n_0 ),
        .D(p_1_in[30]),
        .Q(j[30]),
        .R(rst));
  FDRE \j_reg[31] 
       (.C(clk),
        .CE(\j[31]_i_1_n_0 ),
        .D(p_1_in[31]),
        .Q(j[31]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_reg[31]_i_3 
       (.CI(\j_reg[28]_i_2_n_0 ),
        .CO({\NLW_j_reg[31]_i_3_CO_UNCONNECTED [3:2],\j_reg[31]_i_3_n_2 ,\j_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_j_reg[31]_i_3_O_UNCONNECTED [3],j0[31:29]}),
        .S({1'b0,j[31:29]}));
  FDRE \j_reg[3] 
       (.C(clk),
        .CE(\j[31]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(j[3]),
        .R(rst));
  FDRE \j_reg[4] 
       (.C(clk),
        .CE(\j[31]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(j[4]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\j_reg[4]_i_2_n_0 ,\j_reg[4]_i_2_n_1 ,\j_reg[4]_i_2_n_2 ,\j_reg[4]_i_2_n_3 }),
        .CYINIT(j[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(j0[4:1]),
        .S(j[4:1]));
  FDRE \j_reg[5] 
       (.C(clk),
        .CE(\j[31]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(j[5]),
        .R(rst));
  FDRE \j_reg[6] 
       (.C(clk),
        .CE(\j[31]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(j[6]),
        .R(rst));
  FDRE \j_reg[7] 
       (.C(clk),
        .CE(\j[31]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(j[7]),
        .R(rst));
  FDRE \j_reg[8] 
       (.C(clk),
        .CE(\j[31]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(j[8]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_reg[8]_i_2 
       (.CI(\j_reg[4]_i_2_n_0 ),
        .CO({\j_reg[8]_i_2_n_0 ,\j_reg[8]_i_2_n_1 ,\j_reg[8]_i_2_n_2 ,\j_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(j0[8:5]),
        .S(j[8:5]));
  FDRE \j_reg[9] 
       (.C(clk),
        .CE(\j[31]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(j[9]),
        .R(rst));
  LUT5 #(
    .INIT(32'h00000080)) 
    \k[0]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(rst),
        .O(\k[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \k[0]_i_3 
       (.I0(state1),
        .I1(s_inputs1[6]),
        .O(\k[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \k[0]_i_4 
       (.I0(state1),
        .I1(s_inputs1[5]),
        .O(\k[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \k[0]_i_5 
       (.I0(state1),
        .I1(s_inputs1[4]),
        .O(\k[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \k[0]_i_6 
       (.I0(s_inputs1[3]),
        .I1(state1),
        .O(\k[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \k[12]_i_2 
       (.I0(state1),
        .I1(s_inputs1[18]),
        .O(\k[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \k[12]_i_3 
       (.I0(state1),
        .I1(s_inputs1[17]),
        .O(\k[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \k[12]_i_4 
       (.I0(state1),
        .I1(s_inputs1[16]),
        .O(\k[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \k[12]_i_5 
       (.I0(state1),
        .I1(s_inputs1[15]),
        .O(\k[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \k[16]_i_2 
       (.I0(state1),
        .I1(s_inputs1[22]),
        .O(\k[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \k[16]_i_3 
       (.I0(state1),
        .I1(s_inputs1[21]),
        .O(\k[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \k[16]_i_4 
       (.I0(state1),
        .I1(s_inputs1[20]),
        .O(\k[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \k[16]_i_5 
       (.I0(state1),
        .I1(s_inputs1[19]),
        .O(\k[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \k[20]_i_2 
       (.I0(state1),
        .I1(s_inputs1[26]),
        .O(\k[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \k[20]_i_3 
       (.I0(state1),
        .I1(s_inputs1[25]),
        .O(\k[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \k[20]_i_4 
       (.I0(state1),
        .I1(s_inputs1[24]),
        .O(\k[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \k[20]_i_5 
       (.I0(state1),
        .I1(s_inputs1[23]),
        .O(\k[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \k[24]_i_2 
       (.I0(state1),
        .I1(s_inputs1[30]),
        .O(\k[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \k[24]_i_3 
       (.I0(state1),
        .I1(s_inputs1[29]),
        .O(\k[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \k[24]_i_4 
       (.I0(state1),
        .I1(s_inputs1[28]),
        .O(\k[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \k[24]_i_5 
       (.I0(state1),
        .I1(s_inputs1[27]),
        .O(\k[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \k[28]_i_2 
       (.I0(\k_reg_n_0_[31] ),
        .I1(state1),
        .O(\k[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \k[28]_i_3 
       (.I0(state1),
        .I1(\k_reg_n_0_[30] ),
        .O(\k[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \k[28]_i_4 
       (.I0(state1),
        .I1(\k_reg_n_0_[29] ),
        .O(\k[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \k[28]_i_5 
       (.I0(state1),
        .I1(s_inputs1[31]),
        .O(\k[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \k[4]_i_2 
       (.I0(state1),
        .I1(s_inputs1[10]),
        .O(\k[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \k[4]_i_3 
       (.I0(state1),
        .I1(s_inputs1[9]),
        .O(\k[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \k[4]_i_4 
       (.I0(state1),
        .I1(s_inputs1[8]),
        .O(\k[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \k[4]_i_5 
       (.I0(state1),
        .I1(s_inputs1[7]),
        .O(\k[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \k[8]_i_2 
       (.I0(state1),
        .I1(s_inputs1[14]),
        .O(\k[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \k[8]_i_3 
       (.I0(state1),
        .I1(s_inputs1[13]),
        .O(\k[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \k[8]_i_4 
       (.I0(state1),
        .I1(s_inputs1[12]),
        .O(\k[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \k[8]_i_5 
       (.I0(state1),
        .I1(s_inputs1[11]),
        .O(\k[8]_i_5_n_0 ));
  FDRE \k_reg[0] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .D(\k_reg[0]_i_2_n_7 ),
        .Q(s_inputs1[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \k_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\k_reg[0]_i_2_n_0 ,\k_reg[0]_i_2_n_1 ,\k_reg[0]_i_2_n_2 ,\k_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,state1}),
        .O({\k_reg[0]_i_2_n_4 ,\k_reg[0]_i_2_n_5 ,\k_reg[0]_i_2_n_6 ,\k_reg[0]_i_2_n_7 }),
        .S({\k[0]_i_3_n_0 ,\k[0]_i_4_n_0 ,\k[0]_i_5_n_0 ,\k[0]_i_6_n_0 }));
  FDRE \k_reg[10] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .D(\k_reg[8]_i_1_n_5 ),
        .Q(s_inputs1[13]),
        .R(1'b0));
  FDRE \k_reg[11] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .D(\k_reg[8]_i_1_n_4 ),
        .Q(s_inputs1[14]),
        .R(1'b0));
  FDRE \k_reg[12] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .D(\k_reg[12]_i_1_n_7 ),
        .Q(s_inputs1[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \k_reg[12]_i_1 
       (.CI(\k_reg[8]_i_1_n_0 ),
        .CO({\k_reg[12]_i_1_n_0 ,\k_reg[12]_i_1_n_1 ,\k_reg[12]_i_1_n_2 ,\k_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\k_reg[12]_i_1_n_4 ,\k_reg[12]_i_1_n_5 ,\k_reg[12]_i_1_n_6 ,\k_reg[12]_i_1_n_7 }),
        .S({\k[12]_i_2_n_0 ,\k[12]_i_3_n_0 ,\k[12]_i_4_n_0 ,\k[12]_i_5_n_0 }));
  FDRE \k_reg[13] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .D(\k_reg[12]_i_1_n_6 ),
        .Q(s_inputs1[16]),
        .R(1'b0));
  FDRE \k_reg[14] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .D(\k_reg[12]_i_1_n_5 ),
        .Q(s_inputs1[17]),
        .R(1'b0));
  FDRE \k_reg[15] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .D(\k_reg[12]_i_1_n_4 ),
        .Q(s_inputs1[18]),
        .R(1'b0));
  FDRE \k_reg[16] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .D(\k_reg[16]_i_1_n_7 ),
        .Q(s_inputs1[19]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \k_reg[16]_i_1 
       (.CI(\k_reg[12]_i_1_n_0 ),
        .CO({\k_reg[16]_i_1_n_0 ,\k_reg[16]_i_1_n_1 ,\k_reg[16]_i_1_n_2 ,\k_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\k_reg[16]_i_1_n_4 ,\k_reg[16]_i_1_n_5 ,\k_reg[16]_i_1_n_6 ,\k_reg[16]_i_1_n_7 }),
        .S({\k[16]_i_2_n_0 ,\k[16]_i_3_n_0 ,\k[16]_i_4_n_0 ,\k[16]_i_5_n_0 }));
  FDRE \k_reg[17] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .D(\k_reg[16]_i_1_n_6 ),
        .Q(s_inputs1[20]),
        .R(1'b0));
  FDRE \k_reg[18] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .D(\k_reg[16]_i_1_n_5 ),
        .Q(s_inputs1[21]),
        .R(1'b0));
  FDRE \k_reg[19] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .D(\k_reg[16]_i_1_n_4 ),
        .Q(s_inputs1[22]),
        .R(1'b0));
  FDRE \k_reg[1] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .D(\k_reg[0]_i_2_n_6 ),
        .Q(s_inputs1[4]),
        .R(1'b0));
  FDRE \k_reg[20] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .D(\k_reg[20]_i_1_n_7 ),
        .Q(s_inputs1[23]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \k_reg[20]_i_1 
       (.CI(\k_reg[16]_i_1_n_0 ),
        .CO({\k_reg[20]_i_1_n_0 ,\k_reg[20]_i_1_n_1 ,\k_reg[20]_i_1_n_2 ,\k_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\k_reg[20]_i_1_n_4 ,\k_reg[20]_i_1_n_5 ,\k_reg[20]_i_1_n_6 ,\k_reg[20]_i_1_n_7 }),
        .S({\k[20]_i_2_n_0 ,\k[20]_i_3_n_0 ,\k[20]_i_4_n_0 ,\k[20]_i_5_n_0 }));
  FDRE \k_reg[21] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .D(\k_reg[20]_i_1_n_6 ),
        .Q(s_inputs1[24]),
        .R(1'b0));
  FDRE \k_reg[22] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .D(\k_reg[20]_i_1_n_5 ),
        .Q(s_inputs1[25]),
        .R(1'b0));
  FDRE \k_reg[23] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .D(\k_reg[20]_i_1_n_4 ),
        .Q(s_inputs1[26]),
        .R(1'b0));
  FDRE \k_reg[24] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .D(\k_reg[24]_i_1_n_7 ),
        .Q(s_inputs1[27]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \k_reg[24]_i_1 
       (.CI(\k_reg[20]_i_1_n_0 ),
        .CO({\k_reg[24]_i_1_n_0 ,\k_reg[24]_i_1_n_1 ,\k_reg[24]_i_1_n_2 ,\k_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\k_reg[24]_i_1_n_4 ,\k_reg[24]_i_1_n_5 ,\k_reg[24]_i_1_n_6 ,\k_reg[24]_i_1_n_7 }),
        .S({\k[24]_i_2_n_0 ,\k[24]_i_3_n_0 ,\k[24]_i_4_n_0 ,\k[24]_i_5_n_0 }));
  FDRE \k_reg[25] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .D(\k_reg[24]_i_1_n_6 ),
        .Q(s_inputs1[28]),
        .R(1'b0));
  FDRE \k_reg[26] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .D(\k_reg[24]_i_1_n_5 ),
        .Q(s_inputs1[29]),
        .R(1'b0));
  FDRE \k_reg[27] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .D(\k_reg[24]_i_1_n_4 ),
        .Q(s_inputs1[30]),
        .R(1'b0));
  FDRE \k_reg[28] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .D(\k_reg[28]_i_1_n_7 ),
        .Q(s_inputs1[31]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \k_reg[28]_i_1 
       (.CI(\k_reg[24]_i_1_n_0 ),
        .CO({\NLW_k_reg[28]_i_1_CO_UNCONNECTED [3],\k_reg[28]_i_1_n_1 ,\k_reg[28]_i_1_n_2 ,\k_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\k_reg[28]_i_1_n_4 ,\k_reg[28]_i_1_n_5 ,\k_reg[28]_i_1_n_6 ,\k_reg[28]_i_1_n_7 }),
        .S({\k[28]_i_2_n_0 ,\k[28]_i_3_n_0 ,\k[28]_i_4_n_0 ,\k[28]_i_5_n_0 }));
  FDRE \k_reg[29] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .D(\k_reg[28]_i_1_n_6 ),
        .Q(\k_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \k_reg[2] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .D(\k_reg[0]_i_2_n_5 ),
        .Q(s_inputs1[5]),
        .R(1'b0));
  FDRE \k_reg[30] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .D(\k_reg[28]_i_1_n_5 ),
        .Q(\k_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \k_reg[31] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .D(\k_reg[28]_i_1_n_4 ),
        .Q(\k_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \k_reg[3] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .D(\k_reg[0]_i_2_n_4 ),
        .Q(s_inputs1[6]),
        .R(1'b0));
  FDRE \k_reg[4] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .D(\k_reg[4]_i_1_n_7 ),
        .Q(s_inputs1[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \k_reg[4]_i_1 
       (.CI(\k_reg[0]_i_2_n_0 ),
        .CO({\k_reg[4]_i_1_n_0 ,\k_reg[4]_i_1_n_1 ,\k_reg[4]_i_1_n_2 ,\k_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\k_reg[4]_i_1_n_4 ,\k_reg[4]_i_1_n_5 ,\k_reg[4]_i_1_n_6 ,\k_reg[4]_i_1_n_7 }),
        .S({\k[4]_i_2_n_0 ,\k[4]_i_3_n_0 ,\k[4]_i_4_n_0 ,\k[4]_i_5_n_0 }));
  FDRE \k_reg[5] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .D(\k_reg[4]_i_1_n_6 ),
        .Q(s_inputs1[8]),
        .R(1'b0));
  FDRE \k_reg[6] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .D(\k_reg[4]_i_1_n_5 ),
        .Q(s_inputs1[9]),
        .R(1'b0));
  FDRE \k_reg[7] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .D(\k_reg[4]_i_1_n_4 ),
        .Q(s_inputs1[10]),
        .R(1'b0));
  FDRE \k_reg[8] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .D(\k_reg[8]_i_1_n_7 ),
        .Q(s_inputs1[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \k_reg[8]_i_1 
       (.CI(\k_reg[4]_i_1_n_0 ),
        .CO({\k_reg[8]_i_1_n_0 ,\k_reg[8]_i_1_n_1 ,\k_reg[8]_i_1_n_2 ,\k_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\k_reg[8]_i_1_n_4 ,\k_reg[8]_i_1_n_5 ,\k_reg[8]_i_1_n_6 ,\k_reg[8]_i_1_n_7 }),
        .S({\k[8]_i_2_n_0 ,\k[8]_i_3_n_0 ,\k[8]_i_4_n_0 ,\k[8]_i_5_n_0 }));
  FDRE \k_reg[9] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .D(\k_reg[8]_i_1_n_6 ),
        .Q(s_inputs1[12]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    o_controlb_i_1
       (.I0(en),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(o_controlb),
        .O(o_controlb_i_1_n_0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a CTRL" *) 
  FDRE o_controlb_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_controlb_i_1_n_0),
        .Q(o_controlb),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFFFFE10000000)) 
    o_done_i_1
       (.I0(rst),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(o_done),
        .O(o_done_i_1_n_0));
  FDRE o_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_done_i_1_n_0),
        .Q(o_done),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \o_memb_addr[0]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(s_input_adr[0]),
        .O(\o_memb_addr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    \o_memb_addr[1]_i_1 
       (.I0(\out_index_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(index[1]),
        .I3(s_input_adr[1]),
        .I4(\state_reg_n_0_[3] ),
        .O(\o_memb_addr[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \o_memb_addr[31]_i_1 
       (.I0(rst),
        .I1(\o_memb_addr[31]_i_3_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\o_memb_addr[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \o_memb_addr[31]_i_2 
       (.I0(rst),
        .I1(\o_memb_addr[31]_i_3_n_0 ),
        .O(\o_memb_addr[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0FFFF5FFF3F0F)) 
    \o_memb_addr[31]_i_3 
       (.I0(s_need_rand_reg_n_0),
        .I1(i_trng_valid),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\o_memb_addr[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFF10101011)) 
    \o_memb_addr[5]_i_1 
       (.I0(rst),
        .I1(\o_memb_addr[31]_i_3_n_0 ),
        .I2(\_inferred__6/i__carry__0_n_7 ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(o_memb_addr[5]),
        .O(\o_memb_addr[5]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a ADDR" *) 
  FDRE \o_memb_addr_reg[0] 
       (.C(clk),
        .CE(\o_memb_addr[31]_i_2_n_0 ),
        .D(\o_memb_addr[0]_i_1_n_0 ),
        .Q(o_memb_addr[0]),
        .R(\o_memb_addr[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a ADDR" *) 
  FDRE \o_memb_addr_reg[10] 
       (.C(clk),
        .CE(\o_memb_addr[31]_i_2_n_0 ),
        .D(\_inferred__6/i__carry__1_n_6 ),
        .Q(o_memb_addr[10]),
        .R(\o_memb_addr[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a ADDR" *) 
  FDRE \o_memb_addr_reg[11] 
       (.C(clk),
        .CE(\o_memb_addr[31]_i_2_n_0 ),
        .D(\_inferred__6/i__carry__1_n_5 ),
        .Q(o_memb_addr[11]),
        .R(\o_memb_addr[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a ADDR" *) 
  FDRE \o_memb_addr_reg[12] 
       (.C(clk),
        .CE(\o_memb_addr[31]_i_2_n_0 ),
        .D(\_inferred__6/i__carry__1_n_4 ),
        .Q(o_memb_addr[12]),
        .R(\o_memb_addr[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a ADDR" *) 
  FDRE \o_memb_addr_reg[13] 
       (.C(clk),
        .CE(\o_memb_addr[31]_i_2_n_0 ),
        .D(\_inferred__6/i__carry__2_n_7 ),
        .Q(o_memb_addr[13]),
        .R(\o_memb_addr[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a ADDR" *) 
  FDRE \o_memb_addr_reg[14] 
       (.C(clk),
        .CE(\o_memb_addr[31]_i_2_n_0 ),
        .D(\_inferred__6/i__carry__2_n_6 ),
        .Q(o_memb_addr[14]),
        .R(\o_memb_addr[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a ADDR" *) 
  FDRE \o_memb_addr_reg[15] 
       (.C(clk),
        .CE(\o_memb_addr[31]_i_2_n_0 ),
        .D(\_inferred__6/i__carry__2_n_5 ),
        .Q(o_memb_addr[15]),
        .R(\o_memb_addr[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a ADDR" *) 
  FDRE \o_memb_addr_reg[16] 
       (.C(clk),
        .CE(\o_memb_addr[31]_i_2_n_0 ),
        .D(\_inferred__6/i__carry__2_n_4 ),
        .Q(o_memb_addr[16]),
        .R(\o_memb_addr[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a ADDR" *) 
  FDRE \o_memb_addr_reg[17] 
       (.C(clk),
        .CE(\o_memb_addr[31]_i_2_n_0 ),
        .D(\_inferred__6/i__carry__3_n_7 ),
        .Q(o_memb_addr[17]),
        .R(\o_memb_addr[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a ADDR" *) 
  FDRE \o_memb_addr_reg[18] 
       (.C(clk),
        .CE(\o_memb_addr[31]_i_2_n_0 ),
        .D(\_inferred__6/i__carry__3_n_6 ),
        .Q(o_memb_addr[18]),
        .R(\o_memb_addr[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a ADDR" *) 
  FDRE \o_memb_addr_reg[19] 
       (.C(clk),
        .CE(\o_memb_addr[31]_i_2_n_0 ),
        .D(\_inferred__6/i__carry__3_n_5 ),
        .Q(o_memb_addr[19]),
        .R(\o_memb_addr[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a ADDR" *) 
  FDRE \o_memb_addr_reg[1] 
       (.C(clk),
        .CE(\o_memb_addr[31]_i_2_n_0 ),
        .D(\o_memb_addr[1]_i_1_n_0 ),
        .Q(o_memb_addr[1]),
        .R(\o_memb_addr[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a ADDR" *) 
  FDRE \o_memb_addr_reg[20] 
       (.C(clk),
        .CE(\o_memb_addr[31]_i_2_n_0 ),
        .D(\_inferred__6/i__carry__3_n_4 ),
        .Q(o_memb_addr[20]),
        .R(\o_memb_addr[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a ADDR" *) 
  FDRE \o_memb_addr_reg[21] 
       (.C(clk),
        .CE(\o_memb_addr[31]_i_2_n_0 ),
        .D(\_inferred__6/i__carry__4_n_7 ),
        .Q(o_memb_addr[21]),
        .R(\o_memb_addr[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a ADDR" *) 
  FDRE \o_memb_addr_reg[22] 
       (.C(clk),
        .CE(\o_memb_addr[31]_i_2_n_0 ),
        .D(\_inferred__6/i__carry__4_n_6 ),
        .Q(o_memb_addr[22]),
        .R(\o_memb_addr[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a ADDR" *) 
  FDRE \o_memb_addr_reg[23] 
       (.C(clk),
        .CE(\o_memb_addr[31]_i_2_n_0 ),
        .D(\_inferred__6/i__carry__4_n_5 ),
        .Q(o_memb_addr[23]),
        .R(\o_memb_addr[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a ADDR" *) 
  FDRE \o_memb_addr_reg[24] 
       (.C(clk),
        .CE(\o_memb_addr[31]_i_2_n_0 ),
        .D(\_inferred__6/i__carry__4_n_4 ),
        .Q(o_memb_addr[24]),
        .R(\o_memb_addr[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a ADDR" *) 
  FDRE \o_memb_addr_reg[25] 
       (.C(clk),
        .CE(\o_memb_addr[31]_i_2_n_0 ),
        .D(\_inferred__6/i__carry__5_n_7 ),
        .Q(o_memb_addr[25]),
        .R(\o_memb_addr[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a ADDR" *) 
  FDRE \o_memb_addr_reg[26] 
       (.C(clk),
        .CE(\o_memb_addr[31]_i_2_n_0 ),
        .D(\_inferred__6/i__carry__5_n_6 ),
        .Q(o_memb_addr[26]),
        .R(\o_memb_addr[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a ADDR" *) 
  FDRE \o_memb_addr_reg[27] 
       (.C(clk),
        .CE(\o_memb_addr[31]_i_2_n_0 ),
        .D(\_inferred__6/i__carry__5_n_5 ),
        .Q(o_memb_addr[27]),
        .R(\o_memb_addr[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a ADDR" *) 
  FDRE \o_memb_addr_reg[28] 
       (.C(clk),
        .CE(\o_memb_addr[31]_i_2_n_0 ),
        .D(\_inferred__6/i__carry__5_n_4 ),
        .Q(o_memb_addr[28]),
        .R(\o_memb_addr[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a ADDR" *) 
  FDRE \o_memb_addr_reg[29] 
       (.C(clk),
        .CE(\o_memb_addr[31]_i_2_n_0 ),
        .D(\_inferred__6/i__carry__6_n_7 ),
        .Q(o_memb_addr[29]),
        .R(\o_memb_addr[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a ADDR" *) 
  FDRE \o_memb_addr_reg[2] 
       (.C(clk),
        .CE(\o_memb_addr[31]_i_2_n_0 ),
        .D(\_inferred__6/i__carry_n_6 ),
        .Q(o_memb_addr[2]),
        .R(\o_memb_addr[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a ADDR" *) 
  FDRE \o_memb_addr_reg[30] 
       (.C(clk),
        .CE(\o_memb_addr[31]_i_2_n_0 ),
        .D(\_inferred__6/i__carry__6_n_6 ),
        .Q(o_memb_addr[30]),
        .R(\o_memb_addr[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a ADDR" *) 
  FDRE \o_memb_addr_reg[31] 
       (.C(clk),
        .CE(\o_memb_addr[31]_i_2_n_0 ),
        .D(\_inferred__6/i__carry__6_n_5 ),
        .Q(o_memb_addr[31]),
        .R(\o_memb_addr[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a ADDR" *) 
  FDRE \o_memb_addr_reg[3] 
       (.C(clk),
        .CE(\o_memb_addr[31]_i_2_n_0 ),
        .D(\_inferred__6/i__carry_n_5 ),
        .Q(o_memb_addr[3]),
        .R(\o_memb_addr[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a ADDR" *) 
  FDRE \o_memb_addr_reg[4] 
       (.C(clk),
        .CE(\o_memb_addr[31]_i_2_n_0 ),
        .D(\_inferred__6/i__carry_n_4 ),
        .Q(o_memb_addr[4]),
        .R(\o_memb_addr[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a ADDR" *) 
  FDRE \o_memb_addr_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\o_memb_addr[5]_i_1_n_0 ),
        .Q(o_memb_addr[5]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a ADDR" *) 
  FDRE \o_memb_addr_reg[6] 
       (.C(clk),
        .CE(\o_memb_addr[31]_i_2_n_0 ),
        .D(\_inferred__6/i__carry__0_n_6 ),
        .Q(o_memb_addr[6]),
        .R(\o_memb_addr[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a ADDR" *) 
  FDRE \o_memb_addr_reg[7] 
       (.C(clk),
        .CE(\o_memb_addr[31]_i_2_n_0 ),
        .D(\_inferred__6/i__carry__0_n_5 ),
        .Q(o_memb_addr[7]),
        .R(\o_memb_addr[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a ADDR" *) 
  FDRE \o_memb_addr_reg[8] 
       (.C(clk),
        .CE(\o_memb_addr[31]_i_2_n_0 ),
        .D(\_inferred__6/i__carry__0_n_4 ),
        .Q(o_memb_addr[8]),
        .R(\o_memb_addr[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a ADDR" *) 
  FDRE \o_memb_addr_reg[9] 
       (.C(clk),
        .CE(\o_memb_addr[31]_i_2_n_0 ),
        .D(\_inferred__6/i__carry__1_n_7 ),
        .Q(o_memb_addr[9]),
        .R(\o_memb_addr[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_memb_din[0]_i_1 
       (.I0(i_trng_data[0]),
        .I1(\state_reg_n_0_[0] ),
        .I2(s_inputs[0]),
        .O(\o_memb_din[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_memb_din[10]_i_1 
       (.I0(i_trng_data[10]),
        .I1(\state_reg_n_0_[0] ),
        .I2(s_inputs[10]),
        .O(\o_memb_din[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_memb_din[11]_i_1 
       (.I0(i_trng_data[11]),
        .I1(\state_reg_n_0_[0] ),
        .I2(s_inputs[11]),
        .O(\o_memb_din[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_memb_din[12]_i_1 
       (.I0(i_trng_data[12]),
        .I1(\state_reg_n_0_[0] ),
        .I2(s_inputs[12]),
        .O(\o_memb_din[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_memb_din[16]_i_1 
       (.I0(i_trng_data[16]),
        .I1(\state_reg_n_0_[0] ),
        .I2(s_inputs[16]),
        .O(\o_memb_din[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_memb_din[17]_i_1 
       (.I0(i_trng_data[17]),
        .I1(\state_reg_n_0_[0] ),
        .I2(s_inputs[17]),
        .O(\o_memb_din[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_memb_din[18]_i_1 
       (.I0(i_trng_data[18]),
        .I1(\state_reg_n_0_[0] ),
        .I2(s_inputs[18]),
        .O(\o_memb_din[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_memb_din[19]_i_1 
       (.I0(i_trng_data[19]),
        .I1(\state_reg_n_0_[0] ),
        .I2(s_inputs[19]),
        .O(\o_memb_din[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_memb_din[1]_i_1 
       (.I0(i_trng_data[1]),
        .I1(\state_reg_n_0_[0] ),
        .I2(s_inputs[1]),
        .O(\o_memb_din[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_memb_din[20]_i_1 
       (.I0(i_trng_data[20]),
        .I1(\state_reg_n_0_[0] ),
        .I2(s_inputs[20]),
        .O(\o_memb_din[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_memb_din[24]_i_1 
       (.I0(i_trng_data[24]),
        .I1(\state_reg_n_0_[0] ),
        .I2(s_inputs[24]),
        .O(\o_memb_din[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_memb_din[25]_i_1 
       (.I0(i_trng_data[25]),
        .I1(\state_reg_n_0_[0] ),
        .I2(s_inputs[25]),
        .O(\o_memb_din[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_memb_din[26]_i_1 
       (.I0(i_trng_data[26]),
        .I1(\state_reg_n_0_[0] ),
        .I2(s_inputs[26]),
        .O(\o_memb_din[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_memb_din[27]_i_1 
       (.I0(i_trng_data[27]),
        .I1(\state_reg_n_0_[0] ),
        .I2(s_inputs[27]),
        .O(\o_memb_din[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_memb_din[28]_i_1 
       (.I0(i_trng_data[28]),
        .I1(\state_reg_n_0_[0] ),
        .I2(s_inputs[28]),
        .O(\o_memb_din[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_memb_din[2]_i_1 
       (.I0(i_trng_data[2]),
        .I1(\state_reg_n_0_[0] ),
        .I2(s_inputs[2]),
        .O(\o_memb_din[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000200)) 
    \o_memb_din[31]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(rst),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\o_memb_din[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000200000C0000)) 
    \o_memb_din[31]_i_2 
       (.I0(i_trng_valid),
        .I1(\state_reg_n_0_[3] ),
        .I2(rst),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\o_memb_din[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_memb_din[3]_i_1 
       (.I0(i_trng_data[3]),
        .I1(\state_reg_n_0_[0] ),
        .I2(s_inputs[3]),
        .O(\o_memb_din[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_memb_din[4]_i_1 
       (.I0(i_trng_data[4]),
        .I1(\state_reg_n_0_[0] ),
        .I2(s_inputs[4]),
        .O(\o_memb_din[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_memb_din[8]_i_1 
       (.I0(i_trng_data[8]),
        .I1(\state_reg_n_0_[0] ),
        .I2(s_inputs[8]),
        .O(\o_memb_din[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_memb_din[9]_i_1 
       (.I0(i_trng_data[9]),
        .I1(\state_reg_n_0_[0] ),
        .I2(s_inputs[9]),
        .O(\o_memb_din[9]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a DIN" *) 
  FDRE \o_memb_din_reg[0] 
       (.C(clk),
        .CE(\o_memb_din[31]_i_2_n_0 ),
        .D(\o_memb_din[0]_i_1_n_0 ),
        .Q(o_memb_din[0]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a DIN" *) 
  FDRE \o_memb_din_reg[10] 
       (.C(clk),
        .CE(\o_memb_din[31]_i_2_n_0 ),
        .D(\o_memb_din[10]_i_1_n_0 ),
        .Q(o_memb_din[10]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a DIN" *) 
  FDRE \o_memb_din_reg[11] 
       (.C(clk),
        .CE(\o_memb_din[31]_i_2_n_0 ),
        .D(\o_memb_din[11]_i_1_n_0 ),
        .Q(o_memb_din[11]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a DIN" *) 
  FDRE \o_memb_din_reg[12] 
       (.C(clk),
        .CE(\o_memb_din[31]_i_2_n_0 ),
        .D(\o_memb_din[12]_i_1_n_0 ),
        .Q(o_memb_din[12]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a DIN" *) 
  FDRE \o_memb_din_reg[13] 
       (.C(clk),
        .CE(\o_memb_din[31]_i_2_n_0 ),
        .D(i_trng_data[13]),
        .Q(o_memb_din[13]),
        .R(\o_memb_din[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a DIN" *) 
  FDRE \o_memb_din_reg[14] 
       (.C(clk),
        .CE(\o_memb_din[31]_i_2_n_0 ),
        .D(i_trng_data[14]),
        .Q(o_memb_din[14]),
        .R(\o_memb_din[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a DIN" *) 
  FDRE \o_memb_din_reg[15] 
       (.C(clk),
        .CE(\o_memb_din[31]_i_2_n_0 ),
        .D(i_trng_data[15]),
        .Q(o_memb_din[15]),
        .R(\o_memb_din[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a DIN" *) 
  FDRE \o_memb_din_reg[16] 
       (.C(clk),
        .CE(\o_memb_din[31]_i_2_n_0 ),
        .D(\o_memb_din[16]_i_1_n_0 ),
        .Q(o_memb_din[16]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a DIN" *) 
  FDRE \o_memb_din_reg[17] 
       (.C(clk),
        .CE(\o_memb_din[31]_i_2_n_0 ),
        .D(\o_memb_din[17]_i_1_n_0 ),
        .Q(o_memb_din[17]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a DIN" *) 
  FDRE \o_memb_din_reg[18] 
       (.C(clk),
        .CE(\o_memb_din[31]_i_2_n_0 ),
        .D(\o_memb_din[18]_i_1_n_0 ),
        .Q(o_memb_din[18]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a DIN" *) 
  FDRE \o_memb_din_reg[19] 
       (.C(clk),
        .CE(\o_memb_din[31]_i_2_n_0 ),
        .D(\o_memb_din[19]_i_1_n_0 ),
        .Q(o_memb_din[19]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a DIN" *) 
  FDRE \o_memb_din_reg[1] 
       (.C(clk),
        .CE(\o_memb_din[31]_i_2_n_0 ),
        .D(\o_memb_din[1]_i_1_n_0 ),
        .Q(o_memb_din[1]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a DIN" *) 
  FDRE \o_memb_din_reg[20] 
       (.C(clk),
        .CE(\o_memb_din[31]_i_2_n_0 ),
        .D(\o_memb_din[20]_i_1_n_0 ),
        .Q(o_memb_din[20]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a DIN" *) 
  FDRE \o_memb_din_reg[21] 
       (.C(clk),
        .CE(\o_memb_din[31]_i_2_n_0 ),
        .D(i_trng_data[21]),
        .Q(o_memb_din[21]),
        .R(\o_memb_din[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a DIN" *) 
  FDRE \o_memb_din_reg[22] 
       (.C(clk),
        .CE(\o_memb_din[31]_i_2_n_0 ),
        .D(i_trng_data[22]),
        .Q(o_memb_din[22]),
        .R(\o_memb_din[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a DIN" *) 
  FDRE \o_memb_din_reg[23] 
       (.C(clk),
        .CE(\o_memb_din[31]_i_2_n_0 ),
        .D(i_trng_data[23]),
        .Q(o_memb_din[23]),
        .R(\o_memb_din[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a DIN" *) 
  FDRE \o_memb_din_reg[24] 
       (.C(clk),
        .CE(\o_memb_din[31]_i_2_n_0 ),
        .D(\o_memb_din[24]_i_1_n_0 ),
        .Q(o_memb_din[24]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a DIN" *) 
  FDRE \o_memb_din_reg[25] 
       (.C(clk),
        .CE(\o_memb_din[31]_i_2_n_0 ),
        .D(\o_memb_din[25]_i_1_n_0 ),
        .Q(o_memb_din[25]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a DIN" *) 
  FDRE \o_memb_din_reg[26] 
       (.C(clk),
        .CE(\o_memb_din[31]_i_2_n_0 ),
        .D(\o_memb_din[26]_i_1_n_0 ),
        .Q(o_memb_din[26]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a DIN" *) 
  FDRE \o_memb_din_reg[27] 
       (.C(clk),
        .CE(\o_memb_din[31]_i_2_n_0 ),
        .D(\o_memb_din[27]_i_1_n_0 ),
        .Q(o_memb_din[27]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a DIN" *) 
  FDRE \o_memb_din_reg[28] 
       (.C(clk),
        .CE(\o_memb_din[31]_i_2_n_0 ),
        .D(\o_memb_din[28]_i_1_n_0 ),
        .Q(o_memb_din[28]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a DIN" *) 
  FDRE \o_memb_din_reg[29] 
       (.C(clk),
        .CE(\o_memb_din[31]_i_2_n_0 ),
        .D(i_trng_data[29]),
        .Q(o_memb_din[29]),
        .R(\o_memb_din[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a DIN" *) 
  FDRE \o_memb_din_reg[2] 
       (.C(clk),
        .CE(\o_memb_din[31]_i_2_n_0 ),
        .D(\o_memb_din[2]_i_1_n_0 ),
        .Q(o_memb_din[2]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a DIN" *) 
  FDRE \o_memb_din_reg[30] 
       (.C(clk),
        .CE(\o_memb_din[31]_i_2_n_0 ),
        .D(i_trng_data[30]),
        .Q(o_memb_din[30]),
        .R(\o_memb_din[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a DIN" *) 
  FDRE \o_memb_din_reg[31] 
       (.C(clk),
        .CE(\o_memb_din[31]_i_2_n_0 ),
        .D(i_trng_data[31]),
        .Q(o_memb_din[31]),
        .R(\o_memb_din[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a DIN" *) 
  FDRE \o_memb_din_reg[3] 
       (.C(clk),
        .CE(\o_memb_din[31]_i_2_n_0 ),
        .D(\o_memb_din[3]_i_1_n_0 ),
        .Q(o_memb_din[3]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a DIN" *) 
  FDRE \o_memb_din_reg[4] 
       (.C(clk),
        .CE(\o_memb_din[31]_i_2_n_0 ),
        .D(\o_memb_din[4]_i_1_n_0 ),
        .Q(o_memb_din[4]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a DIN" *) 
  FDRE \o_memb_din_reg[5] 
       (.C(clk),
        .CE(\o_memb_din[31]_i_2_n_0 ),
        .D(i_trng_data[5]),
        .Q(o_memb_din[5]),
        .R(\o_memb_din[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a DIN" *) 
  FDRE \o_memb_din_reg[6] 
       (.C(clk),
        .CE(\o_memb_din[31]_i_2_n_0 ),
        .D(i_trng_data[6]),
        .Q(o_memb_din[6]),
        .R(\o_memb_din[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a DIN" *) 
  FDRE \o_memb_din_reg[7] 
       (.C(clk),
        .CE(\o_memb_din[31]_i_2_n_0 ),
        .D(i_trng_data[7]),
        .Q(o_memb_din[7]),
        .R(\o_memb_din[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a DIN" *) 
  FDRE \o_memb_din_reg[8] 
       (.C(clk),
        .CE(\o_memb_din[31]_i_2_n_0 ),
        .D(\o_memb_din[8]_i_1_n_0 ),
        .Q(o_memb_din[8]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a DIN" *) 
  FDRE \o_memb_din_reg[9] 
       (.C(clk),
        .CE(\o_memb_din[31]_i_2_n_0 ),
        .D(\o_memb_din[9]_i_1_n_0 ),
        .Q(o_memb_din[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    o_memb_en_i_1
       (.I0(o_memb_en_i_2_n_0),
        .I1(o_memb_en_i_3_n_0),
        .I2(o_memb_en),
        .O(o_memb_en_i_1_n_0));
  LUT6 #(
    .INIT(64'hF444F4F4F4444444)) 
    o_memb_en_i_2
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(s_need_rand_reg_n_0),
        .I4(\state_reg_n_0_[2] ),
        .I5(i_trng_valid),
        .O(o_memb_en_i_2_n_0));
  LUT6 #(
    .INIT(64'h1144005001440050)) 
    o_memb_en_i_3
       (.I0(rst),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(s_need_rand_reg_n_0),
        .O(o_memb_en_i_3_n_0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a EN" *) 
  FDRE o_memb_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_memb_en_i_1_n_0),
        .Q(o_memb_en),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h4FFF4F00)) 
    \o_memb_we[3]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\o_memb_we[3]_i_2_n_0 ),
        .I4(o_memb_we),
        .O(\o_memb_we[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000044449144)) 
    \o_memb_we[3]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(s_need_rand_reg_n_0),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(rst),
        .O(\o_memb_we[3]_i_2_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Sam_vin0a WE" *) 
  FDRE \o_memb_we_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\o_memb_we[3]_i_1_n_0 ),
        .Q(o_memb_we),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFED0008)) 
    o_trng_r_i_1
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(o_trng_r),
        .O(o_trng_r_i_1_n_0));
  FDRE o_trng_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_trng_r_i_1_n_0),
        .Q(o_trng_r),
        .R(rst));
  LUT6 #(
    .INIT(64'hEEFFFFFF00110010)) 
    o_trng_sel_i_1
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(en),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(o_trng_sel),
        .O(o_trng_sel_i_1_n_0));
  FDRE o_trng_sel_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_trng_sel_i_1_n_0),
        .Q(o_trng_sel),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFEF0004)) 
    o_trng_w_i_1
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(o_trng_data),
        .O(o_trng_w_i_1_n_0));
  FDRE o_trng_w_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_trng_w_i_1_n_0),
        .Q(o_trng_data),
        .R(rst));
  CARRY4 out_index0_carry
       (.CI(1'b0),
        .CO({out_index0_carry_n_0,out_index0_carry_n_1,out_index0_carry_n_2,out_index0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\out_index_reg_n_0_[2] ,1'b0}),
        .O(out_index0[4:1]),
        .S({\out_index_reg_n_0_[4] ,\out_index_reg_n_0_[3] ,out_index0_carry_i_1_n_0,\out_index_reg_n_0_[1] }));
  CARRY4 out_index0_carry__0
       (.CI(out_index0_carry_n_0),
        .CO({out_index0_carry__0_n_0,out_index0_carry__0_n_1,out_index0_carry__0_n_2,out_index0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(out_index0[8:5]),
        .S({\out_index_reg_n_0_[8] ,\out_index_reg_n_0_[7] ,\out_index_reg_n_0_[6] ,\out_index_reg_n_0_[5] }));
  CARRY4 out_index0_carry__1
       (.CI(out_index0_carry__0_n_0),
        .CO({out_index0_carry__1_n_0,out_index0_carry__1_n_1,out_index0_carry__1_n_2,out_index0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(out_index0[12:9]),
        .S({\out_index_reg_n_0_[12] ,\out_index_reg_n_0_[11] ,\out_index_reg_n_0_[10] ,\out_index_reg_n_0_[9] }));
  CARRY4 out_index0_carry__2
       (.CI(out_index0_carry__1_n_0),
        .CO({out_index0_carry__2_n_0,out_index0_carry__2_n_1,out_index0_carry__2_n_2,out_index0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(out_index0[16:13]),
        .S({\out_index_reg_n_0_[16] ,\out_index_reg_n_0_[15] ,\out_index_reg_n_0_[14] ,\out_index_reg_n_0_[13] }));
  CARRY4 out_index0_carry__3
       (.CI(out_index0_carry__2_n_0),
        .CO({out_index0_carry__3_n_0,out_index0_carry__3_n_1,out_index0_carry__3_n_2,out_index0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(out_index0[20:17]),
        .S({\out_index_reg_n_0_[20] ,\out_index_reg_n_0_[19] ,\out_index_reg_n_0_[18] ,\out_index_reg_n_0_[17] }));
  CARRY4 out_index0_carry__4
       (.CI(out_index0_carry__3_n_0),
        .CO({out_index0_carry__4_n_0,out_index0_carry__4_n_1,out_index0_carry__4_n_2,out_index0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(out_index0[24:21]),
        .S({\out_index_reg_n_0_[24] ,\out_index_reg_n_0_[23] ,\out_index_reg_n_0_[22] ,\out_index_reg_n_0_[21] }));
  CARRY4 out_index0_carry__5
       (.CI(out_index0_carry__4_n_0),
        .CO({out_index0_carry__5_n_0,out_index0_carry__5_n_1,out_index0_carry__5_n_2,out_index0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(out_index0[28:25]),
        .S({\out_index_reg_n_0_[28] ,\out_index_reg_n_0_[27] ,\out_index_reg_n_0_[26] ,\out_index_reg_n_0_[25] }));
  CARRY4 out_index0_carry__6
       (.CI(out_index0_carry__5_n_0),
        .CO({NLW_out_index0_carry__6_CO_UNCONNECTED[3:1],out_index0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_out_index0_carry__6_O_UNCONNECTED[3:2],out_index0[30:29]}),
        .S({1'b0,1'b0,\out_index_reg_n_0_[30] ,\out_index_reg_n_0_[29] }));
  LUT1 #(
    .INIT(2'h1)) 
    out_index0_carry_i_1
       (.I0(\out_index_reg_n_0_[2] ),
        .O(out_index0_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_index[10]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(out_index0[10]),
        .O(\out_index[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_index[11]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(out_index0[11]),
        .O(\out_index[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_index[12]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(out_index0[12]),
        .O(\out_index[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_index[13]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(out_index0[13]),
        .O(\out_index[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_index[14]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(out_index0[14]),
        .O(\out_index[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_index[15]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(out_index0[15]),
        .O(\out_index[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_index[16]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(out_index0[16]),
        .O(\out_index[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_index[17]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(out_index0[17]),
        .O(\out_index[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_index[18]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(out_index0[18]),
        .O(\out_index[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_index[19]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(out_index0[19]),
        .O(\out_index[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_index[1]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(out_index0[1]),
        .O(\out_index[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_index[20]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(out_index0[20]),
        .O(\out_index[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_index[21]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(out_index0[21]),
        .O(\out_index[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_index[22]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(out_index0[22]),
        .O(\out_index[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_index[23]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(out_index0[23]),
        .O(\out_index[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_index[24]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(out_index0[24]),
        .O(\out_index[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_index[25]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(out_index0[25]),
        .O(\out_index[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_index[26]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(out_index0[26]),
        .O(\out_index[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_index[27]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(out_index0[27]),
        .O(\out_index[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_index[28]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(out_index0[28]),
        .O(\out_index[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_index[29]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(out_index0[29]),
        .O(\out_index[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_index[2]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(out_index0[2]),
        .O(\out_index[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11110010)) 
    \out_index[30]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(en),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[2] ),
        .O(\out_index[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_index[30]_i_2 
       (.I0(\state_reg_n_0_[3] ),
        .I1(out_index0[30]),
        .O(\out_index[30]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_index[3]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(out_index0[3]),
        .O(\out_index[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_index[4]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(out_index0[4]),
        .O(\out_index[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_index[5]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(out_index0[5]),
        .O(\out_index[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_index[6]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(out_index0[6]),
        .O(\out_index[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_index[7]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(out_index0[7]),
        .O(\out_index[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_index[8]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(out_index0[8]),
        .O(\out_index[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_index[9]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(out_index0[9]),
        .O(\out_index[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_index_reg[10] 
       (.C(clk),
        .CE(\out_index[30]_i_1_n_0 ),
        .D(\out_index[10]_i_1_n_0 ),
        .Q(\out_index_reg_n_0_[10] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_index_reg[11] 
       (.C(clk),
        .CE(\out_index[30]_i_1_n_0 ),
        .D(\out_index[11]_i_1_n_0 ),
        .Q(\out_index_reg_n_0_[11] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_index_reg[12] 
       (.C(clk),
        .CE(\out_index[30]_i_1_n_0 ),
        .D(\out_index[12]_i_1_n_0 ),
        .Q(\out_index_reg_n_0_[12] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_index_reg[13] 
       (.C(clk),
        .CE(\out_index[30]_i_1_n_0 ),
        .D(\out_index[13]_i_1_n_0 ),
        .Q(\out_index_reg_n_0_[13] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_index_reg[14] 
       (.C(clk),
        .CE(\out_index[30]_i_1_n_0 ),
        .D(\out_index[14]_i_1_n_0 ),
        .Q(\out_index_reg_n_0_[14] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_index_reg[15] 
       (.C(clk),
        .CE(\out_index[30]_i_1_n_0 ),
        .D(\out_index[15]_i_1_n_0 ),
        .Q(\out_index_reg_n_0_[15] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_index_reg[16] 
       (.C(clk),
        .CE(\out_index[30]_i_1_n_0 ),
        .D(\out_index[16]_i_1_n_0 ),
        .Q(\out_index_reg_n_0_[16] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_index_reg[17] 
       (.C(clk),
        .CE(\out_index[30]_i_1_n_0 ),
        .D(\out_index[17]_i_1_n_0 ),
        .Q(\out_index_reg_n_0_[17] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_index_reg[18] 
       (.C(clk),
        .CE(\out_index[30]_i_1_n_0 ),
        .D(\out_index[18]_i_1_n_0 ),
        .Q(\out_index_reg_n_0_[18] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_index_reg[19] 
       (.C(clk),
        .CE(\out_index[30]_i_1_n_0 ),
        .D(\out_index[19]_i_1_n_0 ),
        .Q(\out_index_reg_n_0_[19] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_index_reg[1] 
       (.C(clk),
        .CE(\out_index[30]_i_1_n_0 ),
        .D(\out_index[1]_i_1_n_0 ),
        .Q(\out_index_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_index_reg[20] 
       (.C(clk),
        .CE(\out_index[30]_i_1_n_0 ),
        .D(\out_index[20]_i_1_n_0 ),
        .Q(\out_index_reg_n_0_[20] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_index_reg[21] 
       (.C(clk),
        .CE(\out_index[30]_i_1_n_0 ),
        .D(\out_index[21]_i_1_n_0 ),
        .Q(\out_index_reg_n_0_[21] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_index_reg[22] 
       (.C(clk),
        .CE(\out_index[30]_i_1_n_0 ),
        .D(\out_index[22]_i_1_n_0 ),
        .Q(\out_index_reg_n_0_[22] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_index_reg[23] 
       (.C(clk),
        .CE(\out_index[30]_i_1_n_0 ),
        .D(\out_index[23]_i_1_n_0 ),
        .Q(\out_index_reg_n_0_[23] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_index_reg[24] 
       (.C(clk),
        .CE(\out_index[30]_i_1_n_0 ),
        .D(\out_index[24]_i_1_n_0 ),
        .Q(\out_index_reg_n_0_[24] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_index_reg[25] 
       (.C(clk),
        .CE(\out_index[30]_i_1_n_0 ),
        .D(\out_index[25]_i_1_n_0 ),
        .Q(\out_index_reg_n_0_[25] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_index_reg[26] 
       (.C(clk),
        .CE(\out_index[30]_i_1_n_0 ),
        .D(\out_index[26]_i_1_n_0 ),
        .Q(\out_index_reg_n_0_[26] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_index_reg[27] 
       (.C(clk),
        .CE(\out_index[30]_i_1_n_0 ),
        .D(\out_index[27]_i_1_n_0 ),
        .Q(\out_index_reg_n_0_[27] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_index_reg[28] 
       (.C(clk),
        .CE(\out_index[30]_i_1_n_0 ),
        .D(\out_index[28]_i_1_n_0 ),
        .Q(\out_index_reg_n_0_[28] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_index_reg[29] 
       (.C(clk),
        .CE(\out_index[30]_i_1_n_0 ),
        .D(\out_index[29]_i_1_n_0 ),
        .Q(\out_index_reg_n_0_[29] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_index_reg[2] 
       (.C(clk),
        .CE(\out_index[30]_i_1_n_0 ),
        .D(\out_index[2]_i_1_n_0 ),
        .Q(\out_index_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_index_reg[30] 
       (.C(clk),
        .CE(\out_index[30]_i_1_n_0 ),
        .D(\out_index[30]_i_2_n_0 ),
        .Q(\out_index_reg_n_0_[30] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_index_reg[3] 
       (.C(clk),
        .CE(\out_index[30]_i_1_n_0 ),
        .D(\out_index[3]_i_1_n_0 ),
        .Q(\out_index_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_index_reg[4] 
       (.C(clk),
        .CE(\out_index[30]_i_1_n_0 ),
        .D(\out_index[4]_i_1_n_0 ),
        .Q(\out_index_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_index_reg[5] 
       (.C(clk),
        .CE(\out_index[30]_i_1_n_0 ),
        .D(\out_index[5]_i_1_n_0 ),
        .Q(\out_index_reg_n_0_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_index_reg[6] 
       (.C(clk),
        .CE(\out_index[30]_i_1_n_0 ),
        .D(\out_index[6]_i_1_n_0 ),
        .Q(\out_index_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_index_reg[7] 
       (.C(clk),
        .CE(\out_index[30]_i_1_n_0 ),
        .D(\out_index[7]_i_1_n_0 ),
        .Q(\out_index_reg_n_0_[7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_index_reg[8] 
       (.C(clk),
        .CE(\out_index[30]_i_1_n_0 ),
        .D(\out_index[8]_i_1_n_0 ),
        .Q(\out_index_reg_n_0_[8] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \out_index_reg[9] 
       (.C(clk),
        .CE(\out_index[30]_i_1_n_0 ),
        .D(\out_index[9]_i_1_n_0 ),
        .Q(\out_index_reg_n_0_[9] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({s_input_adr[3:1],1'b0}),
        .O(plusOp[3:0]),
        .S({plusOp_carry_i_1_n_0,plusOp_carry_i_2_n_0,plusOp_carry_i_3_n_0,s_input_adr[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s_input_adr[5:4]}),
        .O(plusOp[7:4]),
        .S({s_input_adr[7:6],plusOp_carry__0_i_1_n_0,plusOp_carry__0_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_carry__0_i_1
       (.I0(s_input_adr[5]),
        .O(plusOp_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_carry__0_i_2
       (.I0(s_input_adr[4]),
        .O(plusOp_carry__0_i_2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[11:8]),
        .S(s_input_adr[11:8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[15:12]),
        .S(s_input_adr[15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({plusOp_carry__3_n_0,plusOp_carry__3_n_1,plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[19:16]),
        .S(s_input_adr[19:16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_0),
        .CO({plusOp_carry__4_n_0,plusOp_carry__4_n_1,plusOp_carry__4_n_2,plusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[23:20]),
        .S(s_input_adr[23:20]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__5
       (.CI(plusOp_carry__4_n_0),
        .CO({plusOp_carry__5_n_0,plusOp_carry__5_n_1,plusOp_carry__5_n_2,plusOp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[27:24]),
        .S(s_input_adr[27:24]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__6
       (.CI(plusOp_carry__5_n_0),
        .CO({NLW_plusOp_carry__6_CO_UNCONNECTED[3],plusOp_carry__6_n_1,plusOp_carry__6_n_2,plusOp_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[31:28]),
        .S(s_input_adr[31:28]));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_carry_i_1
       (.I0(s_input_adr[3]),
        .O(plusOp_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_carry_i_2
       (.I0(s_input_adr[2]),
        .O(plusOp_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_carry_i_3
       (.I0(s_input_adr[1]),
        .O(plusOp_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h0E)) 
    \s_ctr[0]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(state3[3]),
        .O(\s_ctr[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \s_ctr[31]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\s_ctr[31]_i_2_n_0 ),
        .O(\s_ctr[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4040404040555055)) 
    \s_ctr[31]_i_2 
       (.I0(rst),
        .I1(\s_ctr[31]_i_4_n_0 ),
        .I2(\state1_inferred__3/i__carry__2_n_0 ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\s_ctr[31]_i_5_n_0 ),
        .I5(\s_ctr[31]_i_6_n_0 ),
        .O(\s_ctr[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \s_ctr[31]_i_4 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\s_ctr[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \s_ctr[31]_i_5 
       (.I0(\s_inputs[25]_i_1_n_0 ),
        .I1(\s_inputs[28]_i_2_n_0 ),
        .I2(\s_inputs[26]_i_2_n_0 ),
        .I3(\s_inputs[24]_i_1_n_0 ),
        .I4(\s_inputs[27]_i_1_n_0 ),
        .O(\s_ctr[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \s_ctr[31]_i_6 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .O(\s_ctr[31]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[0] 
       (.C(clk),
        .CE(\s_ctr[31]_i_2_n_0 ),
        .D(\s_ctr[0]_i_1_n_0 ),
        .Q(state3[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[10] 
       (.C(clk),
        .CE(\s_ctr[31]_i_2_n_0 ),
        .D(s_ctr0[10]),
        .Q(state3[13]),
        .R(\s_ctr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[11] 
       (.C(clk),
        .CE(\s_ctr[31]_i_2_n_0 ),
        .D(s_ctr0[11]),
        .Q(state3[14]),
        .R(\s_ctr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[12] 
       (.C(clk),
        .CE(\s_ctr[31]_i_2_n_0 ),
        .D(s_ctr0[12]),
        .Q(state3[15]),
        .R(\s_ctr[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_ctr_reg[12]_i_1 
       (.CI(\s_ctr_reg[8]_i_1_n_0 ),
        .CO({\s_ctr_reg[12]_i_1_n_0 ,\s_ctr_reg[12]_i_1_n_1 ,\s_ctr_reg[12]_i_1_n_2 ,\s_ctr_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(s_ctr0[12:9]),
        .S(state3[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[13] 
       (.C(clk),
        .CE(\s_ctr[31]_i_2_n_0 ),
        .D(s_ctr0[13]),
        .Q(state3[16]),
        .R(\s_ctr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[14] 
       (.C(clk),
        .CE(\s_ctr[31]_i_2_n_0 ),
        .D(s_ctr0[14]),
        .Q(state3[17]),
        .R(\s_ctr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[15] 
       (.C(clk),
        .CE(\s_ctr[31]_i_2_n_0 ),
        .D(s_ctr0[15]),
        .Q(state3[18]),
        .R(\s_ctr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[16] 
       (.C(clk),
        .CE(\s_ctr[31]_i_2_n_0 ),
        .D(s_ctr0[16]),
        .Q(state3[19]),
        .R(\s_ctr[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_ctr_reg[16]_i_1 
       (.CI(\s_ctr_reg[12]_i_1_n_0 ),
        .CO({\s_ctr_reg[16]_i_1_n_0 ,\s_ctr_reg[16]_i_1_n_1 ,\s_ctr_reg[16]_i_1_n_2 ,\s_ctr_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(s_ctr0[16:13]),
        .S(state3[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[17] 
       (.C(clk),
        .CE(\s_ctr[31]_i_2_n_0 ),
        .D(s_ctr0[17]),
        .Q(state3[20]),
        .R(\s_ctr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[18] 
       (.C(clk),
        .CE(\s_ctr[31]_i_2_n_0 ),
        .D(s_ctr0[18]),
        .Q(state3[21]),
        .R(\s_ctr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[19] 
       (.C(clk),
        .CE(\s_ctr[31]_i_2_n_0 ),
        .D(s_ctr0[19]),
        .Q(state3[22]),
        .R(\s_ctr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[1] 
       (.C(clk),
        .CE(\s_ctr[31]_i_2_n_0 ),
        .D(s_ctr0[1]),
        .Q(state3[4]),
        .R(\s_ctr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[20] 
       (.C(clk),
        .CE(\s_ctr[31]_i_2_n_0 ),
        .D(s_ctr0[20]),
        .Q(state3[23]),
        .R(\s_ctr[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_ctr_reg[20]_i_1 
       (.CI(\s_ctr_reg[16]_i_1_n_0 ),
        .CO({\s_ctr_reg[20]_i_1_n_0 ,\s_ctr_reg[20]_i_1_n_1 ,\s_ctr_reg[20]_i_1_n_2 ,\s_ctr_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(s_ctr0[20:17]),
        .S(state3[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[21] 
       (.C(clk),
        .CE(\s_ctr[31]_i_2_n_0 ),
        .D(s_ctr0[21]),
        .Q(state3[24]),
        .R(\s_ctr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[22] 
       (.C(clk),
        .CE(\s_ctr[31]_i_2_n_0 ),
        .D(s_ctr0[22]),
        .Q(state3[25]),
        .R(\s_ctr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[23] 
       (.C(clk),
        .CE(\s_ctr[31]_i_2_n_0 ),
        .D(s_ctr0[23]),
        .Q(state3[26]),
        .R(\s_ctr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[24] 
       (.C(clk),
        .CE(\s_ctr[31]_i_2_n_0 ),
        .D(s_ctr0[24]),
        .Q(state3[27]),
        .R(\s_ctr[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_ctr_reg[24]_i_1 
       (.CI(\s_ctr_reg[20]_i_1_n_0 ),
        .CO({\s_ctr_reg[24]_i_1_n_0 ,\s_ctr_reg[24]_i_1_n_1 ,\s_ctr_reg[24]_i_1_n_2 ,\s_ctr_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(s_ctr0[24:21]),
        .S(state3[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[25] 
       (.C(clk),
        .CE(\s_ctr[31]_i_2_n_0 ),
        .D(s_ctr0[25]),
        .Q(state3[28]),
        .R(\s_ctr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[26] 
       (.C(clk),
        .CE(\s_ctr[31]_i_2_n_0 ),
        .D(s_ctr0[26]),
        .Q(state3[29]),
        .R(\s_ctr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[27] 
       (.C(clk),
        .CE(\s_ctr[31]_i_2_n_0 ),
        .D(s_ctr0[27]),
        .Q(state3[30]),
        .R(\s_ctr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[28] 
       (.C(clk),
        .CE(\s_ctr[31]_i_2_n_0 ),
        .D(s_ctr0[28]),
        .Q(state3[31]),
        .R(\s_ctr[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_ctr_reg[28]_i_1 
       (.CI(\s_ctr_reg[24]_i_1_n_0 ),
        .CO({\s_ctr_reg[28]_i_1_n_0 ,\s_ctr_reg[28]_i_1_n_1 ,\s_ctr_reg[28]_i_1_n_2 ,\s_ctr_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(s_ctr0[28:25]),
        .S(state3[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[29] 
       (.C(clk),
        .CE(\s_ctr[31]_i_2_n_0 ),
        .D(s_ctr0[29]),
        .Q(\s_ctr_reg_n_0_[29] ),
        .R(\s_ctr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[2] 
       (.C(clk),
        .CE(\s_ctr[31]_i_2_n_0 ),
        .D(s_ctr0[2]),
        .Q(state3[5]),
        .R(\s_ctr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[30] 
       (.C(clk),
        .CE(\s_ctr[31]_i_2_n_0 ),
        .D(s_ctr0[30]),
        .Q(\s_ctr_reg_n_0_[30] ),
        .R(\s_ctr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[31] 
       (.C(clk),
        .CE(\s_ctr[31]_i_2_n_0 ),
        .D(s_ctr0[31]),
        .Q(\s_ctr_reg_n_0_[31] ),
        .R(\s_ctr[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_ctr_reg[31]_i_3 
       (.CI(\s_ctr_reg[28]_i_1_n_0 ),
        .CO({\NLW_s_ctr_reg[31]_i_3_CO_UNCONNECTED [3:2],\s_ctr_reg[31]_i_3_n_2 ,\s_ctr_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_s_ctr_reg[31]_i_3_O_UNCONNECTED [3],s_ctr0[31:29]}),
        .S({1'b0,\s_ctr_reg_n_0_[31] ,\s_ctr_reg_n_0_[30] ,\s_ctr_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[3] 
       (.C(clk),
        .CE(\s_ctr[31]_i_2_n_0 ),
        .D(s_ctr0[3]),
        .Q(state3[6]),
        .R(\s_ctr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[4] 
       (.C(clk),
        .CE(\s_ctr[31]_i_2_n_0 ),
        .D(s_ctr0[4]),
        .Q(state3[7]),
        .R(\s_ctr[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_ctr_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\s_ctr_reg[4]_i_1_n_0 ,\s_ctr_reg[4]_i_1_n_1 ,\s_ctr_reg[4]_i_1_n_2 ,\s_ctr_reg[4]_i_1_n_3 }),
        .CYINIT(state3[3]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(s_ctr0[4:1]),
        .S(state3[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[5] 
       (.C(clk),
        .CE(\s_ctr[31]_i_2_n_0 ),
        .D(s_ctr0[5]),
        .Q(state3[8]),
        .R(\s_ctr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[6] 
       (.C(clk),
        .CE(\s_ctr[31]_i_2_n_0 ),
        .D(s_ctr0[6]),
        .Q(state3[9]),
        .R(\s_ctr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[7] 
       (.C(clk),
        .CE(\s_ctr[31]_i_2_n_0 ),
        .D(s_ctr0[7]),
        .Q(state3[10]),
        .R(\s_ctr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[8] 
       (.C(clk),
        .CE(\s_ctr[31]_i_2_n_0 ),
        .D(s_ctr0[8]),
        .Q(state3[11]),
        .R(\s_ctr[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_ctr_reg[8]_i_1 
       (.CI(\s_ctr_reg[4]_i_1_n_0 ),
        .CO({\s_ctr_reg[8]_i_1_n_0 ,\s_ctr_reg[8]_i_1_n_1 ,\s_ctr_reg[8]_i_1_n_2 ,\s_ctr_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(s_ctr0[8:5]),
        .S(state3[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[9] 
       (.C(clk),
        .CE(\s_ctr[31]_i_2_n_0 ),
        .D(s_ctr0[9]),
        .Q(state3[12]),
        .R(\s_ctr[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \s_input_adr[0]_i_1 
       (.I0(plusOp[0]),
        .I1(\state_reg_n_0_[1] ),
        .I2(en),
        .I3(i_input_adr[0]),
        .O(\s_input_adr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \s_input_adr[10]_i_1 
       (.I0(plusOp[10]),
        .I1(\state_reg_n_0_[1] ),
        .I2(en),
        .I3(i_input_adr[10]),
        .O(\s_input_adr[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \s_input_adr[11]_i_1 
       (.I0(plusOp[11]),
        .I1(\state_reg_n_0_[1] ),
        .I2(en),
        .I3(i_input_adr[11]),
        .O(\s_input_adr[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \s_input_adr[12]_i_1 
       (.I0(plusOp[12]),
        .I1(\state_reg_n_0_[1] ),
        .I2(en),
        .I3(i_input_adr[12]),
        .O(\s_input_adr[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \s_input_adr[13]_i_1 
       (.I0(plusOp[13]),
        .I1(\state_reg_n_0_[1] ),
        .I2(en),
        .I3(i_input_adr[13]),
        .O(\s_input_adr[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \s_input_adr[14]_i_1 
       (.I0(plusOp[14]),
        .I1(\state_reg_n_0_[1] ),
        .I2(en),
        .I3(i_input_adr[14]),
        .O(\s_input_adr[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \s_input_adr[15]_i_1 
       (.I0(plusOp[15]),
        .I1(\state_reg_n_0_[1] ),
        .I2(en),
        .I3(i_input_adr[15]),
        .O(\s_input_adr[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \s_input_adr[16]_i_1 
       (.I0(plusOp[16]),
        .I1(\state_reg_n_0_[1] ),
        .I2(en),
        .I3(i_input_adr[16]),
        .O(\s_input_adr[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \s_input_adr[17]_i_1 
       (.I0(plusOp[17]),
        .I1(\state_reg_n_0_[1] ),
        .I2(en),
        .I3(i_input_adr[17]),
        .O(\s_input_adr[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \s_input_adr[18]_i_1 
       (.I0(plusOp[18]),
        .I1(\state_reg_n_0_[1] ),
        .I2(en),
        .I3(i_input_adr[18]),
        .O(\s_input_adr[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \s_input_adr[19]_i_1 
       (.I0(plusOp[19]),
        .I1(\state_reg_n_0_[1] ),
        .I2(en),
        .I3(i_input_adr[19]),
        .O(\s_input_adr[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \s_input_adr[1]_i_1 
       (.I0(plusOp[1]),
        .I1(\state_reg_n_0_[1] ),
        .I2(en),
        .I3(i_input_adr[1]),
        .O(\s_input_adr[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \s_input_adr[20]_i_1 
       (.I0(plusOp[20]),
        .I1(\state_reg_n_0_[1] ),
        .I2(en),
        .I3(i_input_adr[20]),
        .O(\s_input_adr[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \s_input_adr[21]_i_1 
       (.I0(plusOp[21]),
        .I1(\state_reg_n_0_[1] ),
        .I2(en),
        .I3(i_input_adr[21]),
        .O(\s_input_adr[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \s_input_adr[22]_i_1 
       (.I0(plusOp[22]),
        .I1(\state_reg_n_0_[1] ),
        .I2(en),
        .I3(i_input_adr[22]),
        .O(\s_input_adr[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \s_input_adr[23]_i_1 
       (.I0(plusOp[23]),
        .I1(\state_reg_n_0_[1] ),
        .I2(en),
        .I3(i_input_adr[23]),
        .O(\s_input_adr[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \s_input_adr[24]_i_1 
       (.I0(plusOp[24]),
        .I1(\state_reg_n_0_[1] ),
        .I2(en),
        .I3(i_input_adr[24]),
        .O(\s_input_adr[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \s_input_adr[25]_i_1 
       (.I0(plusOp[25]),
        .I1(\state_reg_n_0_[1] ),
        .I2(en),
        .I3(i_input_adr[25]),
        .O(\s_input_adr[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \s_input_adr[26]_i_1 
       (.I0(plusOp[26]),
        .I1(\state_reg_n_0_[1] ),
        .I2(en),
        .I3(i_input_adr[26]),
        .O(\s_input_adr[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \s_input_adr[27]_i_1 
       (.I0(plusOp[27]),
        .I1(\state_reg_n_0_[1] ),
        .I2(en),
        .I3(i_input_adr[27]),
        .O(\s_input_adr[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \s_input_adr[28]_i_1 
       (.I0(plusOp[28]),
        .I1(\state_reg_n_0_[1] ),
        .I2(en),
        .I3(i_input_adr[28]),
        .O(\s_input_adr[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \s_input_adr[29]_i_1 
       (.I0(plusOp[29]),
        .I1(\state_reg_n_0_[1] ),
        .I2(en),
        .I3(i_input_adr[29]),
        .O(\s_input_adr[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \s_input_adr[2]_i_1 
       (.I0(plusOp[2]),
        .I1(\state_reg_n_0_[1] ),
        .I2(en),
        .I3(i_input_adr[2]),
        .O(\s_input_adr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \s_input_adr[30]_i_1 
       (.I0(plusOp[30]),
        .I1(\state_reg_n_0_[1] ),
        .I2(en),
        .I3(i_input_adr[30]),
        .O(\s_input_adr[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000010001)) 
    \s_input_adr[31]_i_1 
       (.I0(rst),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(p_0_in),
        .I5(\state_reg_n_0_[2] ),
        .O(s_input_adr_1));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \s_input_adr[31]_i_2 
       (.I0(plusOp[31]),
        .I1(\state_reg_n_0_[1] ),
        .I2(en),
        .I3(i_input_adr[31]),
        .O(\s_input_adr[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \s_input_adr[3]_i_1 
       (.I0(plusOp[3]),
        .I1(\state_reg_n_0_[1] ),
        .I2(en),
        .I3(i_input_adr[3]),
        .O(\s_input_adr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \s_input_adr[4]_i_1 
       (.I0(plusOp[4]),
        .I1(\state_reg_n_0_[1] ),
        .I2(en),
        .I3(i_input_adr[4]),
        .O(\s_input_adr[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \s_input_adr[5]_i_1 
       (.I0(plusOp[5]),
        .I1(\state_reg_n_0_[1] ),
        .I2(en),
        .I3(i_input_adr[5]),
        .O(\s_input_adr[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \s_input_adr[6]_i_1 
       (.I0(plusOp[6]),
        .I1(\state_reg_n_0_[1] ),
        .I2(en),
        .I3(i_input_adr[6]),
        .O(\s_input_adr[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \s_input_adr[7]_i_1 
       (.I0(plusOp[7]),
        .I1(\state_reg_n_0_[1] ),
        .I2(en),
        .I3(i_input_adr[7]),
        .O(\s_input_adr[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \s_input_adr[8]_i_1 
       (.I0(plusOp[8]),
        .I1(\state_reg_n_0_[1] ),
        .I2(en),
        .I3(i_input_adr[8]),
        .O(\s_input_adr[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \s_input_adr[9]_i_1 
       (.I0(plusOp[9]),
        .I1(\state_reg_n_0_[1] ),
        .I2(en),
        .I3(i_input_adr[9]),
        .O(\s_input_adr[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_adr_reg[0] 
       (.C(clk),
        .CE(s_input_adr_1),
        .D(\s_input_adr[0]_i_1_n_0 ),
        .Q(s_input_adr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_adr_reg[10] 
       (.C(clk),
        .CE(s_input_adr_1),
        .D(\s_input_adr[10]_i_1_n_0 ),
        .Q(s_input_adr[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_adr_reg[11] 
       (.C(clk),
        .CE(s_input_adr_1),
        .D(\s_input_adr[11]_i_1_n_0 ),
        .Q(s_input_adr[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_adr_reg[12] 
       (.C(clk),
        .CE(s_input_adr_1),
        .D(\s_input_adr[12]_i_1_n_0 ),
        .Q(s_input_adr[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_adr_reg[13] 
       (.C(clk),
        .CE(s_input_adr_1),
        .D(\s_input_adr[13]_i_1_n_0 ),
        .Q(s_input_adr[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_adr_reg[14] 
       (.C(clk),
        .CE(s_input_adr_1),
        .D(\s_input_adr[14]_i_1_n_0 ),
        .Q(s_input_adr[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_adr_reg[15] 
       (.C(clk),
        .CE(s_input_adr_1),
        .D(\s_input_adr[15]_i_1_n_0 ),
        .Q(s_input_adr[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_adr_reg[16] 
       (.C(clk),
        .CE(s_input_adr_1),
        .D(\s_input_adr[16]_i_1_n_0 ),
        .Q(s_input_adr[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_adr_reg[17] 
       (.C(clk),
        .CE(s_input_adr_1),
        .D(\s_input_adr[17]_i_1_n_0 ),
        .Q(s_input_adr[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_adr_reg[18] 
       (.C(clk),
        .CE(s_input_adr_1),
        .D(\s_input_adr[18]_i_1_n_0 ),
        .Q(s_input_adr[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_adr_reg[19] 
       (.C(clk),
        .CE(s_input_adr_1),
        .D(\s_input_adr[19]_i_1_n_0 ),
        .Q(s_input_adr[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_adr_reg[1] 
       (.C(clk),
        .CE(s_input_adr_1),
        .D(\s_input_adr[1]_i_1_n_0 ),
        .Q(s_input_adr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_adr_reg[20] 
       (.C(clk),
        .CE(s_input_adr_1),
        .D(\s_input_adr[20]_i_1_n_0 ),
        .Q(s_input_adr[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_adr_reg[21] 
       (.C(clk),
        .CE(s_input_adr_1),
        .D(\s_input_adr[21]_i_1_n_0 ),
        .Q(s_input_adr[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_adr_reg[22] 
       (.C(clk),
        .CE(s_input_adr_1),
        .D(\s_input_adr[22]_i_1_n_0 ),
        .Q(s_input_adr[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_adr_reg[23] 
       (.C(clk),
        .CE(s_input_adr_1),
        .D(\s_input_adr[23]_i_1_n_0 ),
        .Q(s_input_adr[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_adr_reg[24] 
       (.C(clk),
        .CE(s_input_adr_1),
        .D(\s_input_adr[24]_i_1_n_0 ),
        .Q(s_input_adr[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_adr_reg[25] 
       (.C(clk),
        .CE(s_input_adr_1),
        .D(\s_input_adr[25]_i_1_n_0 ),
        .Q(s_input_adr[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_adr_reg[26] 
       (.C(clk),
        .CE(s_input_adr_1),
        .D(\s_input_adr[26]_i_1_n_0 ),
        .Q(s_input_adr[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_adr_reg[27] 
       (.C(clk),
        .CE(s_input_adr_1),
        .D(\s_input_adr[27]_i_1_n_0 ),
        .Q(s_input_adr[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_adr_reg[28] 
       (.C(clk),
        .CE(s_input_adr_1),
        .D(\s_input_adr[28]_i_1_n_0 ),
        .Q(s_input_adr[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_adr_reg[29] 
       (.C(clk),
        .CE(s_input_adr_1),
        .D(\s_input_adr[29]_i_1_n_0 ),
        .Q(s_input_adr[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_adr_reg[2] 
       (.C(clk),
        .CE(s_input_adr_1),
        .D(\s_input_adr[2]_i_1_n_0 ),
        .Q(s_input_adr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_adr_reg[30] 
       (.C(clk),
        .CE(s_input_adr_1),
        .D(\s_input_adr[30]_i_1_n_0 ),
        .Q(s_input_adr[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_adr_reg[31] 
       (.C(clk),
        .CE(s_input_adr_1),
        .D(\s_input_adr[31]_i_2_n_0 ),
        .Q(s_input_adr[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_adr_reg[3] 
       (.C(clk),
        .CE(s_input_adr_1),
        .D(\s_input_adr[3]_i_1_n_0 ),
        .Q(s_input_adr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_adr_reg[4] 
       (.C(clk),
        .CE(s_input_adr_1),
        .D(\s_input_adr[4]_i_1_n_0 ),
        .Q(s_input_adr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_adr_reg[5] 
       (.C(clk),
        .CE(s_input_adr_1),
        .D(\s_input_adr[5]_i_1_n_0 ),
        .Q(s_input_adr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_adr_reg[6] 
       (.C(clk),
        .CE(s_input_adr_1),
        .D(\s_input_adr[6]_i_1_n_0 ),
        .Q(s_input_adr[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_adr_reg[7] 
       (.C(clk),
        .CE(s_input_adr_1),
        .D(\s_input_adr[7]_i_1_n_0 ),
        .Q(s_input_adr[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_adr_reg[8] 
       (.C(clk),
        .CE(s_input_adr_1),
        .D(\s_input_adr[8]_i_1_n_0 ),
        .Q(s_input_adr[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_input_adr_reg[9] 
       (.C(clk),
        .CE(s_input_adr_1),
        .D(\s_input_adr[9]_i_1_n_0 ),
        .Q(s_input_adr[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0040)) 
    \s_inputs[12]_i_1 
       (.I0(\s_inputs[28]_i_3_n_0 ),
        .I1(s_inputs1[3]),
        .I2(\k[0]_i_1_n_0 ),
        .I3(s_inputs1[4]),
        .O(\s_inputs[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \s_inputs[20]_i_1 
       (.I0(\s_inputs[28]_i_3_n_0 ),
        .I1(s_inputs1[3]),
        .I2(\k[0]_i_1_n_0 ),
        .I3(s_inputs1[4]),
        .O(\s_inputs[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_inputs[24]_i_1 
       (.I0(s_rand[24]),
        .I1(s_rand[8]),
        .I2(state3[3]),
        .I3(s_rand[16]),
        .I4(state3[4]),
        .I5(s_rand[0]),
        .O(\s_inputs[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_inputs[25]_i_1 
       (.I0(s_rand[25]),
        .I1(s_rand[9]),
        .I2(state3[3]),
        .I3(s_rand[17]),
        .I4(state3[4]),
        .I5(s_rand[1]),
        .O(\s_inputs[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \s_inputs[26]_i_1 
       (.I0(\s_inputs[26]_i_2_n_0 ),
        .O(\s_inputs[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \s_inputs[26]_i_2 
       (.I0(s_rand[26]),
        .I1(s_rand[10]),
        .I2(state3[3]),
        .I3(s_rand[18]),
        .I4(state3[4]),
        .I5(s_rand[2]),
        .O(\s_inputs[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_inputs[27]_i_1 
       (.I0(s_rand[27]),
        .I1(s_rand[11]),
        .I2(state3[3]),
        .I3(s_rand[19]),
        .I4(state3[4]),
        .I5(s_rand[3]),
        .O(\s_inputs[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \s_inputs[28]_i_1 
       (.I0(\s_inputs[28]_i_3_n_0 ),
        .I1(s_inputs1[3]),
        .I2(\k[0]_i_1_n_0 ),
        .I3(s_inputs1[4]),
        .O(\s_inputs[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_inputs[28]_i_2 
       (.I0(s_rand[28]),
        .I1(s_rand[12]),
        .I2(state3[3]),
        .I3(s_rand[20]),
        .I4(state3[4]),
        .I5(s_rand[4]),
        .O(\s_inputs[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \s_inputs[28]_i_3 
       (.I0(\s_inputs[28]_i_4_n_0 ),
        .I1(s_inputs1[31]),
        .I2(s_inputs1[21]),
        .I3(s_inputs1[22]),
        .I4(\s_inputs[28]_i_5_n_0 ),
        .I5(\s_inputs[28]_i_6_n_0 ),
        .O(\s_inputs[28]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_inputs[28]_i_4 
       (.I0(s_inputs1[30]),
        .I1(s_inputs1[29]),
        .I2(s_inputs1[12]),
        .I3(s_inputs1[11]),
        .I4(\s_inputs[28]_i_7_n_0 ),
        .O(\s_inputs[28]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_inputs[28]_i_5 
       (.I0(s_inputs1[20]),
        .I1(s_inputs1[19]),
        .I2(s_inputs1[6]),
        .I3(s_inputs1[5]),
        .I4(\s_inputs[28]_i_8_n_0 ),
        .O(\s_inputs[28]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_inputs[28]_i_6 
       (.I0(s_inputs1[24]),
        .I1(s_inputs1[23]),
        .I2(s_inputs1[16]),
        .I3(s_inputs1[15]),
        .I4(\s_inputs[28]_i_9_n_0 ),
        .O(\s_inputs[28]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_inputs[28]_i_7 
       (.I0(s_inputs1[9]),
        .I1(s_inputs1[10]),
        .I2(s_inputs1[25]),
        .I3(s_inputs1[26]),
        .O(\s_inputs[28]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_inputs[28]_i_8 
       (.I0(s_inputs1[13]),
        .I1(s_inputs1[14]),
        .I2(s_inputs1[17]),
        .I3(s_inputs1[18]),
        .O(\s_inputs[28]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_inputs[28]_i_9 
       (.I0(s_inputs1[7]),
        .I1(s_inputs1[8]),
        .I2(s_inputs1[27]),
        .I3(s_inputs1[28]),
        .O(\s_inputs[28]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \s_inputs[4]_i_1 
       (.I0(\s_inputs[28]_i_3_n_0 ),
        .I1(s_inputs1[3]),
        .I2(\k[0]_i_1_n_0 ),
        .I3(s_inputs1[4]),
        .O(\s_inputs[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_inputs_reg[0] 
       (.C(clk),
        .CE(\s_inputs[4]_i_1_n_0 ),
        .D(\s_inputs[24]_i_1_n_0 ),
        .Q(s_inputs[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_inputs_reg[10] 
       (.C(clk),
        .CE(\s_inputs[12]_i_1_n_0 ),
        .D(\s_inputs[26]_i_1_n_0 ),
        .Q(s_inputs[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_inputs_reg[11] 
       (.C(clk),
        .CE(\s_inputs[12]_i_1_n_0 ),
        .D(\s_inputs[27]_i_1_n_0 ),
        .Q(s_inputs[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_inputs_reg[12] 
       (.C(clk),
        .CE(\s_inputs[12]_i_1_n_0 ),
        .D(\s_inputs[28]_i_2_n_0 ),
        .Q(s_inputs[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_inputs_reg[16] 
       (.C(clk),
        .CE(\s_inputs[20]_i_1_n_0 ),
        .D(\s_inputs[24]_i_1_n_0 ),
        .Q(s_inputs[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_inputs_reg[17] 
       (.C(clk),
        .CE(\s_inputs[20]_i_1_n_0 ),
        .D(\s_inputs[25]_i_1_n_0 ),
        .Q(s_inputs[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_inputs_reg[18] 
       (.C(clk),
        .CE(\s_inputs[20]_i_1_n_0 ),
        .D(\s_inputs[26]_i_1_n_0 ),
        .Q(s_inputs[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_inputs_reg[19] 
       (.C(clk),
        .CE(\s_inputs[20]_i_1_n_0 ),
        .D(\s_inputs[27]_i_1_n_0 ),
        .Q(s_inputs[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_inputs_reg[1] 
       (.C(clk),
        .CE(\s_inputs[4]_i_1_n_0 ),
        .D(\s_inputs[25]_i_1_n_0 ),
        .Q(s_inputs[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_inputs_reg[20] 
       (.C(clk),
        .CE(\s_inputs[20]_i_1_n_0 ),
        .D(\s_inputs[28]_i_2_n_0 ),
        .Q(s_inputs[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_inputs_reg[24] 
       (.C(clk),
        .CE(\s_inputs[28]_i_1_n_0 ),
        .D(\s_inputs[24]_i_1_n_0 ),
        .Q(s_inputs[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_inputs_reg[25] 
       (.C(clk),
        .CE(\s_inputs[28]_i_1_n_0 ),
        .D(\s_inputs[25]_i_1_n_0 ),
        .Q(s_inputs[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_inputs_reg[26] 
       (.C(clk),
        .CE(\s_inputs[28]_i_1_n_0 ),
        .D(\s_inputs[26]_i_1_n_0 ),
        .Q(s_inputs[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_inputs_reg[27] 
       (.C(clk),
        .CE(\s_inputs[28]_i_1_n_0 ),
        .D(\s_inputs[27]_i_1_n_0 ),
        .Q(s_inputs[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_inputs_reg[28] 
       (.C(clk),
        .CE(\s_inputs[28]_i_1_n_0 ),
        .D(\s_inputs[28]_i_2_n_0 ),
        .Q(s_inputs[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_inputs_reg[2] 
       (.C(clk),
        .CE(\s_inputs[4]_i_1_n_0 ),
        .D(\s_inputs[26]_i_1_n_0 ),
        .Q(s_inputs[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_inputs_reg[3] 
       (.C(clk),
        .CE(\s_inputs[4]_i_1_n_0 ),
        .D(\s_inputs[27]_i_1_n_0 ),
        .Q(s_inputs[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_inputs_reg[4] 
       (.C(clk),
        .CE(\s_inputs[4]_i_1_n_0 ),
        .D(\s_inputs[28]_i_2_n_0 ),
        .Q(s_inputs[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_inputs_reg[8] 
       (.C(clk),
        .CE(\s_inputs[12]_i_1_n_0 ),
        .D(\s_inputs[24]_i_1_n_0 ),
        .Q(s_inputs[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_inputs_reg[9] 
       (.C(clk),
        .CE(\s_inputs[12]_i_1_n_0 ),
        .D(\s_inputs[25]_i_1_n_0 ),
        .Q(s_inputs[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    s_need_rand_i_1
       (.I0(s_need_rand_i_2_n_0),
        .I1(\state1_inferred__3/i__carry__2_n_0 ),
        .I2(\s_ctr[31]_i_4_n_0 ),
        .I3(s_need_rand_i_3_n_0),
        .I4(s_need_rand_reg_n_0),
        .O(s_need_rand_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    s_need_rand_i_2
       (.I0(\s_ctr[31]_i_5_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(en),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[0] ),
        .O(s_need_rand_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000575700005500)) 
    s_need_rand_i_3
       (.I0(\state_reg_n_0_[1] ),
        .I1(\s_ctr[31]_i_5_n_0 ),
        .I2(\state1_inferred__3/i__carry__2_n_0 ),
        .I3(s_need_rand_i_4_n_0),
        .I4(\state_reg_n_0_[0] ),
        .I5(s_need_rand_i_5_n_0),
        .O(s_need_rand_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_need_rand_i_4
       (.I0(en),
        .I1(\state_reg_n_0_[2] ),
        .O(s_need_rand_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_need_rand_i_5
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .O(s_need_rand_i_5_n_0));
  FDSE #(
    .INIT(1'b1)) 
    s_need_rand_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_need_rand_i_1_n_0),
        .Q(s_need_rand_reg_n_0),
        .S(rst));
  LUT4 #(
    .INIT(16'h0400)) 
    \s_rand[28]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\s_rand[28]_i_1_n_0 ));
  FDRE \s_rand_reg[0] 
       (.C(clk),
        .CE(\s_rand[28]_i_1_n_0 ),
        .D(i_memb_dout[0]),
        .Q(s_rand[0]),
        .R(rst));
  FDRE \s_rand_reg[10] 
       (.C(clk),
        .CE(\s_rand[28]_i_1_n_0 ),
        .D(i_memb_dout[7]),
        .Q(s_rand[10]),
        .R(rst));
  FDRE \s_rand_reg[11] 
       (.C(clk),
        .CE(\s_rand[28]_i_1_n_0 ),
        .D(i_memb_dout[8]),
        .Q(s_rand[11]),
        .R(rst));
  FDRE \s_rand_reg[12] 
       (.C(clk),
        .CE(\s_rand[28]_i_1_n_0 ),
        .D(i_memb_dout[9]),
        .Q(s_rand[12]),
        .R(rst));
  FDRE \s_rand_reg[16] 
       (.C(clk),
        .CE(\s_rand[28]_i_1_n_0 ),
        .D(i_memb_dout[10]),
        .Q(s_rand[16]),
        .R(rst));
  FDRE \s_rand_reg[17] 
       (.C(clk),
        .CE(\s_rand[28]_i_1_n_0 ),
        .D(i_memb_dout[11]),
        .Q(s_rand[17]),
        .R(rst));
  FDRE \s_rand_reg[18] 
       (.C(clk),
        .CE(\s_rand[28]_i_1_n_0 ),
        .D(i_memb_dout[12]),
        .Q(s_rand[18]),
        .R(rst));
  FDRE \s_rand_reg[19] 
       (.C(clk),
        .CE(\s_rand[28]_i_1_n_0 ),
        .D(i_memb_dout[13]),
        .Q(s_rand[19]),
        .R(rst));
  FDRE \s_rand_reg[1] 
       (.C(clk),
        .CE(\s_rand[28]_i_1_n_0 ),
        .D(i_memb_dout[1]),
        .Q(s_rand[1]),
        .R(rst));
  FDRE \s_rand_reg[20] 
       (.C(clk),
        .CE(\s_rand[28]_i_1_n_0 ),
        .D(i_memb_dout[14]),
        .Q(s_rand[20]),
        .R(rst));
  FDRE \s_rand_reg[24] 
       (.C(clk),
        .CE(\s_rand[28]_i_1_n_0 ),
        .D(i_memb_dout[15]),
        .Q(s_rand[24]),
        .R(rst));
  FDRE \s_rand_reg[25] 
       (.C(clk),
        .CE(\s_rand[28]_i_1_n_0 ),
        .D(i_memb_dout[16]),
        .Q(s_rand[25]),
        .R(rst));
  FDRE \s_rand_reg[26] 
       (.C(clk),
        .CE(\s_rand[28]_i_1_n_0 ),
        .D(i_memb_dout[17]),
        .Q(s_rand[26]),
        .R(rst));
  FDRE \s_rand_reg[27] 
       (.C(clk),
        .CE(\s_rand[28]_i_1_n_0 ),
        .D(i_memb_dout[18]),
        .Q(s_rand[27]),
        .R(rst));
  FDRE \s_rand_reg[28] 
       (.C(clk),
        .CE(\s_rand[28]_i_1_n_0 ),
        .D(i_memb_dout[19]),
        .Q(s_rand[28]),
        .R(rst));
  FDRE \s_rand_reg[2] 
       (.C(clk),
        .CE(\s_rand[28]_i_1_n_0 ),
        .D(i_memb_dout[2]),
        .Q(s_rand[2]),
        .R(rst));
  FDRE \s_rand_reg[3] 
       (.C(clk),
        .CE(\s_rand[28]_i_1_n_0 ),
        .D(i_memb_dout[3]),
        .Q(s_rand[3]),
        .R(rst));
  FDRE \s_rand_reg[4] 
       (.C(clk),
        .CE(\s_rand[28]_i_1_n_0 ),
        .D(i_memb_dout[4]),
        .Q(s_rand[4]),
        .R(rst));
  FDRE \s_rand_reg[8] 
       (.C(clk),
        .CE(\s_rand[28]_i_1_n_0 ),
        .D(i_memb_dout[5]),
        .Q(s_rand[8]),
        .R(rst));
  FDRE \s_rand_reg[9] 
       (.C(clk),
        .CE(\s_rand[28]_i_1_n_0 ),
        .D(i_memb_dout[6]),
        .Q(s_rand[9]),
        .R(rst));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 state1_carry
       (.CI(1'b0),
        .CO({state1_carry_n_0,state1_carry_n_1,state1_carry_n_2,state1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,state1_carry_i_1_n_0,state1_carry_i_2_n_0}),
        .O(NLW_state1_carry_O_UNCONNECTED[3:0]),
        .S({state1_carry_i_3_n_0,state1_carry_i_4_n_0,state1_carry_i_5_n_0,state1_carry_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 state1_carry__0
       (.CI(state1_carry_n_0),
        .CO({state1_carry__0_n_0,state1_carry__0_n_1,state1_carry__0_n_2,state1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state1_carry__0_O_UNCONNECTED[3:0]),
        .S({state1_carry__0_i_1_n_0,state1_carry__0_i_2_n_0,state1_carry__0_i_3_n_0,state1_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__0_i_1
       (.I0(j[17]),
        .I1(j[16]),
        .O(state1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__0_i_2
       (.I0(j[15]),
        .I1(j[14]),
        .O(state1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__0_i_3
       (.I0(j[13]),
        .I1(j[12]),
        .O(state1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__0_i_4
       (.I0(j[11]),
        .I1(j[10]),
        .O(state1_carry__0_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 state1_carry__1
       (.CI(state1_carry__0_n_0),
        .CO({state1_carry__1_n_0,state1_carry__1_n_1,state1_carry__1_n_2,state1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state1_carry__1_O_UNCONNECTED[3:0]),
        .S({state1_carry__1_i_1_n_0,state1_carry__1_i_2_n_0,state1_carry__1_i_3_n_0,state1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__1_i_1
       (.I0(j[25]),
        .I1(j[24]),
        .O(state1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__1_i_2
       (.I0(j[23]),
        .I1(j[22]),
        .O(state1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__1_i_3
       (.I0(j[21]),
        .I1(j[20]),
        .O(state1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__1_i_4
       (.I0(j[19]),
        .I1(j[18]),
        .O(state1_carry__1_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 state1_carry__2
       (.CI(state1_carry__1_n_0),
        .CO({NLW_state1_carry__2_CO_UNCONNECTED[3],p_0_in,state1_carry__2_n_2,state1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,j[31],1'b0,1'b0}),
        .O(NLW_state1_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,state1_carry__2_i_1_n_0,state1_carry__2_i_2_n_0,state1_carry__2_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__2_i_1
       (.I0(j[31]),
        .I1(j[30]),
        .O(state1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__2_i_2
       (.I0(j[29]),
        .I1(j[28]),
        .O(state1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__2_i_3
       (.I0(j[27]),
        .I1(j[26]),
        .O(state1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    state1_carry_i_1
       (.I0(j[5]),
        .I1(j[4]),
        .O(state1_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state1_carry_i_2
       (.I0(j[3]),
        .O(state1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry_i_3
       (.I0(j[9]),
        .I1(j[8]),
        .O(state1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry_i_4
       (.I0(j[7]),
        .I1(j[6]),
        .O(state1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    state1_carry_i_5
       (.I0(j[4]),
        .I1(j[5]),
        .O(state1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    state1_carry_i_6
       (.I0(j[3]),
        .I1(j[2]),
        .O(state1_carry_i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \state1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\state1_inferred__0/i__carry_n_0 ,\state1_inferred__0/i__carry_n_1 ,\state1_inferred__0/i__carry_n_2 ,\state1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i__carry_i_1_n_0}),
        .O(\NLW_state1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0,i__carry_i_5_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \state1_inferred__0/i__carry__0 
       (.CI(\state1_inferred__0/i__carry_n_0 ),
        .CO({\state1_inferred__0/i__carry__0_n_0 ,\state1_inferred__0/i__carry__0_n_1 ,\state1_inferred__0/i__carry__0_n_2 ,\state1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_state1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \state1_inferred__0/i__carry__1 
       (.CI(\state1_inferred__0/i__carry__0_n_0 ),
        .CO({\state1_inferred__0/i__carry__1_n_0 ,\state1_inferred__0/i__carry__1_n_1 ,\state1_inferred__0/i__carry__1_n_2 ,\state1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_state1_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \state1_inferred__0/i__carry__2 
       (.CI(\state1_inferred__0/i__carry__1_n_0 ),
        .CO({state1,\state1_inferred__0/i__carry__2_n_1 ,\state1_inferred__0/i__carry__2_n_2 ,\state1_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({\k_reg_n_0_[31] ,1'b0,1'b0,1'b0}),
        .O(\NLW_state1_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \state1_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\state1_inferred__1/i__carry_n_0 ,\state1_inferred__1/i__carry_n_1 ,\state1_inferred__1/i__carry_n_2 ,\state1_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_state1_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__0_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \state1_inferred__1/i__carry__0 
       (.CI(\state1_inferred__1/i__carry_n_0 ),
        .CO({\state1_inferred__1/i__carry__0_n_0 ,\state1_inferred__1/i__carry__0_n_1 ,\state1_inferred__1/i__carry__0_n_2 ,\state1_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}),
        .O(\NLW_state1_inferred__1/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \state1_inferred__1/i__carry__1 
       (.CI(\state1_inferred__1/i__carry__0_n_0 ),
        .CO({\state1_inferred__1/i__carry__1_n_0 ,\state1_inferred__1/i__carry__1_n_1 ,\state1_inferred__1/i__carry__1_n_2 ,\state1_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1__0_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0,i__carry__1_i_4__0_n_0}),
        .O(\NLW_state1_inferred__1/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0,i__carry__1_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \state1_inferred__1/i__carry__2 
       (.CI(\state1_inferred__1/i__carry__1_n_0 ),
        .CO({\state1_inferred__1/i__carry__2_n_0 ,\state1_inferred__1/i__carry__2_n_1 ,\state1_inferred__1/i__carry__2_n_2 ,\state1_inferred__1/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1__0_n_0,i__carry__2_i_2__0_n_0,i__carry__2_i_3__0_n_0,i__carry__2_i_4__0_n_0}),
        .O(\NLW_state1_inferred__1/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_5_n_0,i__carry__2_i_6_n_0,i__carry__2_i_7_n_0,i__carry__2_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \state1_inferred__3/i__carry 
       (.CI(1'b0),
        .CO({\state1_inferred__3/i__carry_n_0 ,\state1_inferred__3/i__carry_n_1 ,\state1_inferred__3/i__carry_n_2 ,\state1_inferred__3/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i__carry_i_1__1_n_0}),
        .O(\NLW_state1_inferred__3/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,i__carry_i_4__1_n_0,i__carry_i_5__1_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \state1_inferred__3/i__carry__0 
       (.CI(\state1_inferred__3/i__carry_n_0 ),
        .CO({\state1_inferred__3/i__carry__0_n_0 ,\state1_inferred__3/i__carry__0_n_1 ,\state1_inferred__3/i__carry__0_n_2 ,\state1_inferred__3/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_state1_inferred__3/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1__1_n_0,i__carry__0_i_2__1_n_0,i__carry__0_i_3__1_n_0,i__carry__0_i_4__1_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \state1_inferred__3/i__carry__1 
       (.CI(\state1_inferred__3/i__carry__0_n_0 ),
        .CO({\state1_inferred__3/i__carry__1_n_0 ,\state1_inferred__3/i__carry__1_n_1 ,\state1_inferred__3/i__carry__1_n_2 ,\state1_inferred__3/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_state1_inferred__3/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_1__1_n_0,i__carry__1_i_2__1_n_0,i__carry__1_i_3__1_n_0,i__carry__1_i_4__1_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \state1_inferred__3/i__carry__2 
       (.CI(\state1_inferred__3/i__carry__1_n_0 ),
        .CO({\state1_inferred__3/i__carry__2_n_0 ,\state1_inferred__3/i__carry__2_n_1 ,\state1_inferred__3/i__carry__2_n_2 ,\state1_inferred__3/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_ctr_reg_n_0_[31] ,1'b0,1'b0,1'b0}),
        .O(\NLW_state1_inferred__3/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_1__1_n_0,i__carry__2_i_2__1_n_0,i__carry__2_i_3__1_n_0,i__carry__2_i_4__1_n_0}));
  LUT6 #(
    .INIT(64'h003F003F507F507C)) 
    \state[0]_i_1 
       (.I0(\state[0]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(en),
        .I5(\state_reg_n_0_[2] ),
        .O(state[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h737F7373)) 
    \state[0]_i_2 
       (.I0(state1),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\s_ctr[31]_i_5_n_0 ),
        .I4(\state1_inferred__3/i__carry__2_n_0 ),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FF03FA00FF0)) 
    \state[1]_i_1 
       (.I0(p_0_in),
        .I1(s_need_rand_reg_n_0),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[3] ),
        .O(state[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0F34F0F0)) 
    \state[2]_i_1 
       (.I0(\state[3]_i_3_n_0 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .O(state[2]));
  LUT6 #(
    .INIT(64'hFEEEFFFFFFFFFFFF)) 
    \state[3]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(i_trng_done),
        .I3(i_trng_valid),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h30C80CCC30C83CCC)) 
    \state[3]_i_2 
       (.I0(\state[3]_i_3_n_0 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state1_inferred__1/i__carry__2_n_0 ),
        .O(state[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \state[3]_i_3 
       (.I0(\state1_inferred__3/i__carry__2_n_0 ),
        .I1(\s_ctr[31]_i_5_n_0 ),
        .O(\state[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk),
        .CE(\state[3]_i_1_n_0 ),
        .D(state[0]),
        .Q(\state_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk),
        .CE(\state[3]_i_1_n_0 ),
        .D(state[1]),
        .Q(\state_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk),
        .CE(\state[3]_i_1_n_0 ),
        .D(state[2]),
        .Q(\state_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk),
        .CE(\state[3]_i_1_n_0 ),
        .D(state[3]),
        .Q(\state_reg_n_0_[3] ),
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
