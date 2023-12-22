// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sat Dec  9 16:22:24 2023
// Host        : zenith running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Mayo_sign_with_zynq_mayo_reduce_extension_0_1_sim_netlist.v
// Design      : Mayo_sign_with_zynq_mayo_reduce_extension_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Mayo_sign_with_zynq_mayo_reduce_extension_0_1,mayo_reduce_extension,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "mayo_reduce_extension,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst,
    en,
    o_done,
    i_input_adr,
    i_output_adr,
    i_mema_dout,
    o_mema_din,
    o_mema_addr,
    o_mema_en,
    o_mema_rst,
    o_mema_we,
    o_controla,
    i_memb_dout,
    o_memb_din,
    o_memb_addr,
    o_memb_en,
    o_memb_rst,
    o_memb_we,
    o_controlb,
    i_memc_dout,
    o_memc_din,
    o_memc_addr,
    o_memc_en,
    o_memc_rst,
    o_memc_we,
    o_controlc);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN Mayo_sign_with_zynq_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  (* x_interface_ignore = "TRUE" *) input en;
  output o_done;
  input [31:0]i_input_adr;
  input [31:0]i_output_adr;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red_Exta DOUT" *) input [31:0]i_mema_dout;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red_Exta DIN" *) output [31:0]o_mema_din;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red_Exta ADDR" *) output [31:0]o_mema_addr;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red_Exta EN" *) output o_mema_en;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red_Exta RST" *) output o_mema_rst;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red_Exta WE" *) output [3:0]o_mema_we;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red_Exta CTRL" *) output o_controla;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red_Extb DOUT" *) input [31:0]i_memb_dout;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red_Extb DIN" *) output [31:0]o_memb_din;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red_Extb ADDR" *) output [31:0]o_memb_addr;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red_Extb EN" *) output o_memb_en;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red_Extb RST" *) output o_memb_rst;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red_Extb WE" *) output [3:0]o_memb_we;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red_Extb CTRL" *) output o_controlb;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red_Extc DOUT" *) input [31:0]i_memc_dout;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red_Extc DIN" *) output [31:0]o_memc_din;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red_Extc ADDR" *) output [31:0]o_memc_addr;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red_Extc EN" *) output o_memc_en;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red_Extc RST" *) output o_memc_rst;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red_Extc WE" *) output [3:0]o_memc_we;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Red_Extc CTRL" *) output o_controlc;

  wire \<const0> ;
  wire clk;
  wire en;
  wire [31:0]i_input_adr;
  wire [31:0]i_mema_dout;
  wire [31:0]i_memb_dout;
  wire [31:0]i_output_adr;
  wire o_controla;
  wire o_controlb;
  wire o_controlc;
  wire o_done;
  wire [31:2]\^o_mema_addr ;
  wire o_mema_en;
  wire [31:0]o_memb_addr;
  wire o_memb_en;
  wire [31:0]o_memc_addr;
  wire [31:0]o_memc_din;
  wire o_memc_en;
  wire [2:2]\^o_memc_we ;
  wire rst;

  assign o_mema_addr[31:2] = \^o_mema_addr [31:2];
  assign o_mema_addr[1:0] = o_memb_addr[1:0];
  assign o_mema_din[31] = \<const0> ;
  assign o_mema_din[30] = \<const0> ;
  assign o_mema_din[29] = \<const0> ;
  assign o_mema_din[28] = \<const0> ;
  assign o_mema_din[27] = \<const0> ;
  assign o_mema_din[26] = \<const0> ;
  assign o_mema_din[25] = \<const0> ;
  assign o_mema_din[24] = \<const0> ;
  assign o_mema_din[23] = \<const0> ;
  assign o_mema_din[22] = \<const0> ;
  assign o_mema_din[21] = \<const0> ;
  assign o_mema_din[20] = \<const0> ;
  assign o_mema_din[19] = \<const0> ;
  assign o_mema_din[18] = \<const0> ;
  assign o_mema_din[17] = \<const0> ;
  assign o_mema_din[16] = \<const0> ;
  assign o_mema_din[15] = \<const0> ;
  assign o_mema_din[14] = \<const0> ;
  assign o_mema_din[13] = \<const0> ;
  assign o_mema_din[12] = \<const0> ;
  assign o_mema_din[11] = \<const0> ;
  assign o_mema_din[10] = \<const0> ;
  assign o_mema_din[9] = \<const0> ;
  assign o_mema_din[8] = \<const0> ;
  assign o_mema_din[7] = \<const0> ;
  assign o_mema_din[6] = \<const0> ;
  assign o_mema_din[5] = \<const0> ;
  assign o_mema_din[4] = \<const0> ;
  assign o_mema_din[3] = \<const0> ;
  assign o_mema_din[2] = \<const0> ;
  assign o_mema_din[1] = \<const0> ;
  assign o_mema_din[0] = \<const0> ;
  assign o_mema_rst = \<const0> ;
  assign o_mema_we[3] = \<const0> ;
  assign o_mema_we[2] = \<const0> ;
  assign o_mema_we[1] = \<const0> ;
  assign o_mema_we[0] = \<const0> ;
  assign o_memb_din[31] = \<const0> ;
  assign o_memb_din[30] = \<const0> ;
  assign o_memb_din[29] = \<const0> ;
  assign o_memb_din[28] = \<const0> ;
  assign o_memb_din[27] = \<const0> ;
  assign o_memb_din[26] = \<const0> ;
  assign o_memb_din[25] = \<const0> ;
  assign o_memb_din[24] = \<const0> ;
  assign o_memb_din[23] = \<const0> ;
  assign o_memb_din[22] = \<const0> ;
  assign o_memb_din[21] = \<const0> ;
  assign o_memb_din[20] = \<const0> ;
  assign o_memb_din[19] = \<const0> ;
  assign o_memb_din[18] = \<const0> ;
  assign o_memb_din[17] = \<const0> ;
  assign o_memb_din[16] = \<const0> ;
  assign o_memb_din[15] = \<const0> ;
  assign o_memb_din[14] = \<const0> ;
  assign o_memb_din[13] = \<const0> ;
  assign o_memb_din[12] = \<const0> ;
  assign o_memb_din[11] = \<const0> ;
  assign o_memb_din[10] = \<const0> ;
  assign o_memb_din[9] = \<const0> ;
  assign o_memb_din[8] = \<const0> ;
  assign o_memb_din[7] = \<const0> ;
  assign o_memb_din[6] = \<const0> ;
  assign o_memb_din[5] = \<const0> ;
  assign o_memb_din[4] = \<const0> ;
  assign o_memb_din[3] = \<const0> ;
  assign o_memb_din[2] = \<const0> ;
  assign o_memb_din[1] = \<const0> ;
  assign o_memb_din[0] = \<const0> ;
  assign o_memb_rst = \<const0> ;
  assign o_memb_we[3] = \<const0> ;
  assign o_memb_we[2] = \<const0> ;
  assign o_memb_we[1] = \<const0> ;
  assign o_memb_we[0] = \<const0> ;
  assign o_memc_rst = \<const0> ;
  assign o_memc_we[3] = \^o_memc_we [2];
  assign o_memc_we[2] = \^o_memc_we [2];
  assign o_memc_we[1] = \^o_memc_we [2];
  assign o_memc_we[0] = \^o_memc_we [2];
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mayo_reduce_extension U0
       (.clk(clk),
        .en(en),
        .i_input_adr(i_input_adr),
        .i_mema_dout(i_mema_dout),
        .i_memb_dout(i_memb_dout),
        .i_output_adr(i_output_adr),
        .o_controla(o_controla),
        .o_controlb(o_controlb),
        .o_controlc(o_controlc),
        .o_done(o_done),
        .o_mema_addr({\^o_mema_addr ,o_memb_addr[1:0]}),
        .o_mema_en(o_mema_en),
        .o_memb_addr(o_memb_addr[31:2]),
        .o_memb_en(o_memb_en),
        .o_memc_addr(o_memc_addr),
        .o_memc_din(o_memc_din),
        .o_memc_en(o_memc_en),
        .o_memc_we(\^o_memc_we ),
        .rst(rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mayo_reduce_extension
   (o_mema_addr,
    o_memb_addr,
    o_memc_din,
    o_memc_addr,
    o_controlc,
    o_done,
    o_memc_we,
    o_memb_en,
    o_mema_en,
    o_memc_en,
    o_controlb,
    o_controla,
    rst,
    clk,
    i_input_adr,
    i_memb_dout,
    i_mema_dout,
    i_output_adr,
    en);
  output [31:0]o_mema_addr;
  output [29:0]o_memb_addr;
  output [31:0]o_memc_din;
  output [31:0]o_memc_addr;
  output o_controlc;
  output o_done;
  output [0:0]o_memc_we;
  output o_memb_en;
  output o_mema_en;
  output o_memc_en;
  output o_controlb;
  output o_controla;
  input rst;
  input clk;
  input [31:0]i_input_adr;
  input [31:0]i_memb_dout;
  input [31:0]i_mema_dout;
  input [31:0]i_output_adr;
  input en;

  wire [7:0]A;
  wire [7:0]C;
  wire \FSM_onehot_flag[1]_i_1_n_0 ;
  wire \FSM_onehot_flag_reg_n_0_[1] ;
  wire \FSM_onehot_flag_reg_n_0_[2] ;
  wire \FSM_onehot_flag_reg_n_0_[3] ;
  wire [15:8]L;
  wire [15:0]R;
  wire \_inferred__4/i___0_carry__0_n_1 ;
  wire \_inferred__4/i___0_carry__0_n_2 ;
  wire \_inferred__4/i___0_carry__0_n_3 ;
  wire \_inferred__4/i___0_carry__0_n_4 ;
  wire \_inferred__4/i___0_carry__0_n_5 ;
  wire \_inferred__4/i___0_carry__0_n_6 ;
  wire \_inferred__4/i___0_carry__0_n_7 ;
  wire \_inferred__4/i___0_carry_n_0 ;
  wire \_inferred__4/i___0_carry_n_1 ;
  wire \_inferred__4/i___0_carry_n_2 ;
  wire \_inferred__4/i___0_carry_n_3 ;
  wire \_inferred__4/i___0_carry_n_4 ;
  wire \_inferred__4/i___0_carry_n_5 ;
  wire \_inferred__4/i___0_carry_n_6 ;
  wire \_inferred__4/i___0_carry_n_7 ;
  wire clk;
  wire [1:0]coef_ctr;
  wire \coef_ctr[0]_i_1_n_0 ;
  wire \coef_ctr[1]_i_1_n_0 ;
  wire [31:1]data0;
  wire en;
  wire first_add;
  wire first_add_i_1_n_0;
  wire [31:1]i0;
  wire i0_carry__0_i_1_n_0;
  wire i0_carry__0_i_2_n_0;
  wire i0_carry__0_i_3_n_0;
  wire i0_carry__0_i_4_n_0;
  wire i0_carry__0_n_0;
  wire i0_carry__0_n_1;
  wire i0_carry__0_n_2;
  wire i0_carry__0_n_3;
  wire i0_carry__1_i_1_n_0;
  wire i0_carry__1_i_2_n_0;
  wire i0_carry__1_i_3_n_0;
  wire i0_carry__1_i_4_n_0;
  wire i0_carry__1_n_0;
  wire i0_carry__1_n_1;
  wire i0_carry__1_n_2;
  wire i0_carry__1_n_3;
  wire i0_carry__2_i_1_n_0;
  wire i0_carry__2_i_2_n_0;
  wire i0_carry__2_i_3_n_0;
  wire i0_carry__2_i_4_n_0;
  wire i0_carry__2_n_0;
  wire i0_carry__2_n_1;
  wire i0_carry__2_n_2;
  wire i0_carry__2_n_3;
  wire i0_carry__3_i_1_n_0;
  wire i0_carry__3_i_2_n_0;
  wire i0_carry__3_i_3_n_0;
  wire i0_carry__3_i_4_n_0;
  wire i0_carry__3_n_0;
  wire i0_carry__3_n_1;
  wire i0_carry__3_n_2;
  wire i0_carry__3_n_3;
  wire i0_carry__4_i_1_n_0;
  wire i0_carry__4_i_2_n_0;
  wire i0_carry__4_i_3_n_0;
  wire i0_carry__4_i_4_n_0;
  wire i0_carry__4_n_0;
  wire i0_carry__4_n_1;
  wire i0_carry__4_n_2;
  wire i0_carry__4_n_3;
  wire i0_carry__5_i_1_n_0;
  wire i0_carry__5_i_2_n_0;
  wire i0_carry__5_i_3_n_0;
  wire i0_carry__5_i_4_n_0;
  wire i0_carry__5_n_0;
  wire i0_carry__5_n_1;
  wire i0_carry__5_n_2;
  wire i0_carry__5_n_3;
  wire i0_carry__6_i_1_n_0;
  wire i0_carry__6_i_2_n_0;
  wire i0_carry__6_i_3_n_0;
  wire i0_carry__6_n_2;
  wire i0_carry__6_n_3;
  wire i0_carry_i_1_n_0;
  wire i0_carry_i_2_n_0;
  wire i0_carry_i_3_n_0;
  wire i0_carry_n_0;
  wire i0_carry_n_1;
  wire i0_carry_n_2;
  wire i0_carry_n_3;
  wire \i[31]_i_1_n_0 ;
  wire i___0_carry__0_i_10_n_0;
  wire i___0_carry__0_i_11_n_0;
  wire i___0_carry__0_i_12_n_0;
  wire i___0_carry__0_i_13_n_0;
  wire i___0_carry__0_i_14_n_0;
  wire i___0_carry__0_i_15_n_0;
  wire i___0_carry__0_i_16_n_0;
  wire i___0_carry__0_i_17_n_0;
  wire i___0_carry__0_i_1__0_n_0;
  wire i___0_carry__0_i_1__1_n_0;
  wire i___0_carry__0_i_1__2_n_0;
  wire i___0_carry__0_i_1_n_0;
  wire i___0_carry__0_i_2__0_n_0;
  wire i___0_carry__0_i_2__1_n_0;
  wire i___0_carry__0_i_2__2_n_0;
  wire i___0_carry__0_i_2_n_0;
  wire i___0_carry__0_i_3__0_n_0;
  wire i___0_carry__0_i_3__1_n_0;
  wire i___0_carry__0_i_3__2_n_0;
  wire i___0_carry__0_i_3_n_0;
  wire i___0_carry__0_i_4__0_n_0;
  wire i___0_carry__0_i_4_n_0;
  wire i___0_carry__0_i_5_n_0;
  wire i___0_carry__0_i_6_n_0;
  wire i___0_carry__0_i_7_n_0;
  wire i___0_carry__0_i_8_n_1;
  wire i___0_carry__0_i_8_n_2;
  wire i___0_carry__0_i_8_n_3;
  wire i___0_carry__0_i_8_n_4;
  wire i___0_carry__0_i_8_n_5;
  wire i___0_carry__0_i_8_n_6;
  wire i___0_carry__0_i_8_n_7;
  wire i___0_carry__0_i_9_n_0;
  wire i___0_carry_i_10_n_0;
  wire i___0_carry_i_11_n_0;
  wire i___0_carry_i_12_n_0;
  wire i___0_carry_i_13_n_0;
  wire i___0_carry_i_1__0_n_0;
  wire i___0_carry_i_1__1_n_0;
  wire i___0_carry_i_1__2_n_0;
  wire i___0_carry_i_1_n_0;
  wire i___0_carry_i_2__0_n_0;
  wire i___0_carry_i_2__1_n_0;
  wire i___0_carry_i_2__2_n_0;
  wire i___0_carry_i_2_n_0;
  wire i___0_carry_i_3__0_n_0;
  wire i___0_carry_i_3__1_n_0;
  wire i___0_carry_i_3__2_n_0;
  wire i___0_carry_i_3_n_0;
  wire i___0_carry_i_4__0_n_0;
  wire i___0_carry_i_4__1_n_0;
  wire i___0_carry_i_4_n_0;
  wire i___0_carry_i_5__0_n_0;
  wire i___0_carry_i_5__1_n_0;
  wire i___0_carry_i_5_n_0;
  wire i___0_carry_i_6__0_n_0;
  wire i___0_carry_i_6__1_n_0;
  wire i___0_carry_i_6_n_0;
  wire i___0_carry_i_7__0_n_0;
  wire i___0_carry_i_7__1_n_0;
  wire i___0_carry_i_7_n_0;
  wire i___0_carry_i_8__0_n_0;
  wire i___0_carry_i_8__1_n_0;
  wire i___0_carry_i_8_n_0;
  wire i___0_carry_i_9_n_0;
  wire i___0_carry_i_9_n_1;
  wire i___0_carry_i_9_n_2;
  wire i___0_carry_i_9_n_3;
  wire i___0_carry_i_9_n_4;
  wire i___0_carry_i_9_n_5;
  wire i___0_carry_i_9_n_6;
  wire i___0_carry_i_9_n_7;
  wire i___14_carry__0_i_1_n_0;
  wire i___14_carry__0_i_2__0_n_0;
  wire i___14_carry__0_i_2_n_0;
  wire i___14_carry__0_i_3__0_n_0;
  wire i___14_carry__0_i_3_n_0;
  wire i___14_carry_i_1_n_0;
  wire i___14_carry_i_2_n_0;
  wire i___14_carry_i_3__0_n_0;
  wire i___14_carry_i_3_n_0;
  wire i___14_carry_i_4_n_0;
  wire i___14_carry_i_5__0_n_0;
  wire i___14_carry_i_5_n_0;
  wire i___14_carry_i_6__0_n_0;
  wire i___14_carry_i_6_n_0;
  wire i___14_carry_i_7__0_n_0;
  wire i___14_carry_i_7_n_0;
  wire i___14_carry_i_8__0_n_0;
  wire i___14_carry_i_8_n_0;
  wire i___15_carry__0_i_1__0_n_0;
  wire i___15_carry__0_i_1_n_0;
  wire i___15_carry_i_1__0_n_0;
  wire i___15_carry_i_1_n_0;
  wire i___15_carry_i_2__0_n_0;
  wire i___15_carry_i_2_n_0;
  wire i___15_carry_i_3__0_n_0;
  wire i___15_carry_i_3_n_0;
  wire i___15_carry_i_4__0_n_0;
  wire i___15_carry_i_4_n_0;
  wire i___15_carry_i_5__0_n_0;
  wire i___15_carry_i_5_n_0;
  wire i___15_carry_i_6__0_n_0;
  wire i___15_carry_i_6_n_0;
  wire i___15_carry_i_7__0_n_0;
  wire i___15_carry_i_7_n_0;
  wire i___20_carry__0_i_1_n_0;
  wire i___20_carry_i_1_n_0;
  wire i___20_carry_i_2_n_0;
  wire i___20_carry_i_3_n_0;
  wire i___20_carry_i_4_n_0;
  wire i___20_carry_i_5_n_0;
  wire i___20_carry_i_6_n_0;
  wire i___20_carry_i_7_n_0;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_1__2_n_0;
  wire i__carry__0_i_1__3_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2__1_n_0;
  wire i__carry__0_i_2__2_n_0;
  wire i__carry__0_i_2__3_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3__1_n_0;
  wire i__carry__0_i_3__2_n_0;
  wire i__carry__0_i_3__3_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4__1_n_0;
  wire i__carry__0_i_4__2_n_0;
  wire i__carry__0_i_4__3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_7_n_0;
  wire i__carry__1_i_8_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__2_i_5_n_0;
  wire i__carry__2_i_6_n_0;
  wire i__carry__2_i_7_n_0;
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
  wire i__carry_i_1__3_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_2__3_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3__2_n_0;
  wire i__carry_i_3__3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire [31:0]i_input_adr;
  wire [31:0]i_mema_dout;
  wire [31:0]i_memb_dout;
  wire [31:0]i_output_adr;
  wire \i_reg_n_0_[10] ;
  wire \i_reg_n_0_[11] ;
  wire \i_reg_n_0_[12] ;
  wire \i_reg_n_0_[13] ;
  wire \i_reg_n_0_[14] ;
  wire \i_reg_n_0_[15] ;
  wire \i_reg_n_0_[16] ;
  wire \i_reg_n_0_[17] ;
  wire \i_reg_n_0_[18] ;
  wire \i_reg_n_0_[19] ;
  wire \i_reg_n_0_[1] ;
  wire \i_reg_n_0_[20] ;
  wire \i_reg_n_0_[21] ;
  wire \i_reg_n_0_[22] ;
  wire \i_reg_n_0_[23] ;
  wire \i_reg_n_0_[24] ;
  wire \i_reg_n_0_[25] ;
  wire \i_reg_n_0_[26] ;
  wire \i_reg_n_0_[27] ;
  wire \i_reg_n_0_[28] ;
  wire \i_reg_n_0_[29] ;
  wire \i_reg_n_0_[2] ;
  wire \i_reg_n_0_[30] ;
  wire \i_reg_n_0_[31] ;
  wire \i_reg_n_0_[3] ;
  wire \i_reg_n_0_[4] ;
  wire \i_reg_n_0_[5] ;
  wire \i_reg_n_0_[6] ;
  wire \i_reg_n_0_[7] ;
  wire \i_reg_n_0_[8] ;
  wire \i_reg_n_0_[9] ;
  wire \in_ctr[0]_i_1_n_0 ;
  wire \in_ctr_reg_n_0_[0] ;
  wire input_coef_reg_0_3_0_0_n_1;
  wire input_coef_reg_0_3_10_10_n_1;
  wire input_coef_reg_0_3_11_11_n_1;
  wire input_coef_reg_0_3_12_12_n_1;
  wire input_coef_reg_0_3_13_13_n_1;
  wire input_coef_reg_0_3_14_14_n_1;
  wire input_coef_reg_0_3_15_15_n_1;
  wire input_coef_reg_0_3_16_16_n_0;
  wire input_coef_reg_0_3_17_17_n_0;
  wire input_coef_reg_0_3_18_18_n_0;
  wire input_coef_reg_0_3_19_19_n_0;
  wire input_coef_reg_0_3_1_1_n_1;
  wire input_coef_reg_0_3_20_20_n_0;
  wire input_coef_reg_0_3_21_21_n_0;
  wire input_coef_reg_0_3_22_22_n_0;
  wire input_coef_reg_0_3_23_23_n_0;
  wire input_coef_reg_0_3_24_24_n_0;
  wire input_coef_reg_0_3_25_25_n_0;
  wire input_coef_reg_0_3_26_26_n_0;
  wire input_coef_reg_0_3_27_27_n_0;
  wire input_coef_reg_0_3_28_28_n_0;
  wire input_coef_reg_0_3_29_29_n_0;
  wire input_coef_reg_0_3_2_2_n_1;
  wire input_coef_reg_0_3_30_30_n_0;
  wire input_coef_reg_0_3_31_31_n_0;
  wire input_coef_reg_0_3_3_3_n_1;
  wire input_coef_reg_0_3_4_4_n_1;
  wire input_coef_reg_0_3_5_5_n_1;
  wire input_coef_reg_0_3_6_6_n_1;
  wire input_coef_reg_0_3_7_7_n_1;
  wire input_coef_reg_0_3_8_8_n_1;
  wire input_coef_reg_0_3_9_9_n_1;
  wire k;
  wire k0_carry__0_i_1_n_0;
  wire k0_carry__0_i_2_n_0;
  wire k0_carry__0_i_3_n_0;
  wire k0_carry__0_i_4_n_0;
  wire k0_carry__0_n_0;
  wire k0_carry__0_n_1;
  wire k0_carry__0_n_2;
  wire k0_carry__0_n_3;
  wire k0_carry__1_i_1_n_0;
  wire k0_carry__1_i_2_n_0;
  wire k0_carry__1_i_3_n_0;
  wire k0_carry__1_i_4_n_0;
  wire k0_carry__1_n_0;
  wire k0_carry__1_n_1;
  wire k0_carry__1_n_2;
  wire k0_carry__1_n_3;
  wire k0_carry__2_i_1_n_0;
  wire k0_carry__2_i_2_n_0;
  wire k0_carry__2_i_3_n_0;
  wire k0_carry__2_i_4_n_0;
  wire k0_carry__2_n_0;
  wire k0_carry__2_n_1;
  wire k0_carry__2_n_2;
  wire k0_carry__2_n_3;
  wire k0_carry__3_i_1_n_0;
  wire k0_carry__3_i_2_n_0;
  wire k0_carry__3_i_3_n_0;
  wire k0_carry__3_i_4_n_0;
  wire k0_carry__3_n_0;
  wire k0_carry__3_n_1;
  wire k0_carry__3_n_2;
  wire k0_carry__3_n_3;
  wire k0_carry__4_i_1_n_0;
  wire k0_carry__4_i_2_n_0;
  wire k0_carry__4_i_3_n_0;
  wire k0_carry__4_i_4_n_0;
  wire k0_carry__4_n_0;
  wire k0_carry__4_n_1;
  wire k0_carry__4_n_2;
  wire k0_carry__4_n_3;
  wire k0_carry__5_i_1_n_0;
  wire k0_carry__5_i_2_n_0;
  wire k0_carry__5_i_3_n_0;
  wire k0_carry__5_i_4_n_0;
  wire k0_carry__5_n_0;
  wire k0_carry__5_n_1;
  wire k0_carry__5_n_2;
  wire k0_carry__5_n_3;
  wire k0_carry__6_i_1_n_0;
  wire k0_carry__6_i_2_n_0;
  wire k0_carry__6_i_3_n_0;
  wire k0_carry__6_n_2;
  wire k0_carry__6_n_3;
  wire k0_carry_i_1_n_0;
  wire k0_carry_i_2_n_0;
  wire k0_carry_i_3_n_0;
  wire k0_carry_n_0;
  wire k0_carry_n_1;
  wire k0_carry_n_2;
  wire k0_carry_n_3;
  wire \k[10]_i_1_n_0 ;
  wire \k[11]_i_1_n_0 ;
  wire \k[12]_i_1_n_0 ;
  wire \k[13]_i_1_n_0 ;
  wire \k[14]_i_1_n_0 ;
  wire \k[15]_i_1_n_0 ;
  wire \k[16]_i_1_n_0 ;
  wire \k[17]_i_1_n_0 ;
  wire \k[18]_i_1_n_0 ;
  wire \k[19]_i_1_n_0 ;
  wire \k[1]_i_1_n_0 ;
  wire \k[20]_i_1_n_0 ;
  wire \k[21]_i_1_n_0 ;
  wire \k[22]_i_1_n_0 ;
  wire \k[23]_i_1_n_0 ;
  wire \k[24]_i_1_n_0 ;
  wire \k[25]_i_1_n_0 ;
  wire \k[26]_i_1_n_0 ;
  wire \k[27]_i_1_n_0 ;
  wire \k[28]_i_1_n_0 ;
  wire \k[29]_i_1_n_0 ;
  wire \k[2]_i_1_n_0 ;
  wire \k[30]_i_1_n_0 ;
  wire \k[31]_i_2_n_0 ;
  wire \k[3]_i_1_n_0 ;
  wire \k[4]_i_1_n_0 ;
  wire \k[5]_i_1_n_0 ;
  wire \k[6]_i_1_n_0 ;
  wire \k[7]_i_1_n_0 ;
  wire \k[8]_i_1_n_0 ;
  wire \k[9]_i_1_n_0 ;
  wire \k_reg_n_0_[10] ;
  wire \k_reg_n_0_[11] ;
  wire \k_reg_n_0_[12] ;
  wire \k_reg_n_0_[13] ;
  wire \k_reg_n_0_[14] ;
  wire \k_reg_n_0_[15] ;
  wire \k_reg_n_0_[16] ;
  wire \k_reg_n_0_[17] ;
  wire \k_reg_n_0_[18] ;
  wire \k_reg_n_0_[19] ;
  wire \k_reg_n_0_[1] ;
  wire \k_reg_n_0_[20] ;
  wire \k_reg_n_0_[21] ;
  wire \k_reg_n_0_[22] ;
  wire \k_reg_n_0_[23] ;
  wire \k_reg_n_0_[24] ;
  wire \k_reg_n_0_[25] ;
  wire \k_reg_n_0_[26] ;
  wire \k_reg_n_0_[27] ;
  wire \k_reg_n_0_[28] ;
  wire \k_reg_n_0_[29] ;
  wire \k_reg_n_0_[2] ;
  wire \k_reg_n_0_[30] ;
  wire \k_reg_n_0_[31] ;
  wire \k_reg_n_0_[3] ;
  wire \k_reg_n_0_[4] ;
  wire \k_reg_n_0_[5] ;
  wire \k_reg_n_0_[6] ;
  wire \k_reg_n_0_[7] ;
  wire \k_reg_n_0_[8] ;
  wire \k_reg_n_0_[9] ;
  wire [31:1]minusOp;
  wire minusOp_carry__0_i_1_n_0;
  wire minusOp_carry__0_i_2_n_0;
  wire minusOp_carry__0_i_3_n_0;
  wire minusOp_carry__0_i_4_n_0;
  wire minusOp_carry__0_i_5_n_0;
  wire minusOp_carry__0_i_6_n_0;
  wire minusOp_carry__0_i_7_n_0;
  wire minusOp_carry__0_i_8_n_0;
  wire minusOp_carry__0_n_0;
  wire minusOp_carry__0_n_1;
  wire minusOp_carry__0_n_2;
  wire minusOp_carry__0_n_3;
  wire minusOp_carry__1_i_1_n_0;
  wire minusOp_carry__1_i_2_n_0;
  wire minusOp_carry__1_i_3_n_0;
  wire minusOp_carry__1_i_4_n_0;
  wire minusOp_carry__1_i_5_n_0;
  wire minusOp_carry__1_i_6_n_0;
  wire minusOp_carry__1_i_7_n_0;
  wire minusOp_carry__1_i_8_n_0;
  wire minusOp_carry__1_n_0;
  wire minusOp_carry__1_n_1;
  wire minusOp_carry__1_n_2;
  wire minusOp_carry__1_n_3;
  wire minusOp_carry__2_i_1_n_0;
  wire minusOp_carry__2_i_2_n_0;
  wire minusOp_carry__2_i_3_n_0;
  wire minusOp_carry__2_i_4_n_0;
  wire minusOp_carry__2_i_5_n_0;
  wire minusOp_carry__2_i_6_n_0;
  wire minusOp_carry__2_i_7_n_0;
  wire minusOp_carry__2_i_8_n_0;
  wire minusOp_carry__2_n_0;
  wire minusOp_carry__2_n_1;
  wire minusOp_carry__2_n_2;
  wire minusOp_carry__2_n_3;
  wire minusOp_carry__3_i_1_n_0;
  wire minusOp_carry__3_i_2_n_0;
  wire minusOp_carry__3_i_3_n_0;
  wire minusOp_carry__3_i_4_n_0;
  wire minusOp_carry__3_i_5_n_0;
  wire minusOp_carry__3_i_6_n_0;
  wire minusOp_carry__3_i_7_n_0;
  wire minusOp_carry__3_i_8_n_0;
  wire minusOp_carry__3_n_0;
  wire minusOp_carry__3_n_1;
  wire minusOp_carry__3_n_2;
  wire minusOp_carry__3_n_3;
  wire minusOp_carry__4_i_1_n_0;
  wire minusOp_carry__4_i_2_n_0;
  wire minusOp_carry__4_i_3_n_0;
  wire minusOp_carry__4_i_4_n_0;
  wire minusOp_carry__4_i_5_n_0;
  wire minusOp_carry__4_i_6_n_0;
  wire minusOp_carry__4_i_7_n_0;
  wire minusOp_carry__4_i_8_n_0;
  wire minusOp_carry__4_n_0;
  wire minusOp_carry__4_n_1;
  wire minusOp_carry__4_n_2;
  wire minusOp_carry__4_n_3;
  wire minusOp_carry__5_i_1_n_0;
  wire minusOp_carry__5_i_2_n_0;
  wire minusOp_carry__5_i_3_n_0;
  wire minusOp_carry__5_i_4_n_0;
  wire minusOp_carry__5_i_5_n_0;
  wire minusOp_carry__5_i_6_n_0;
  wire minusOp_carry__5_i_7_n_0;
  wire minusOp_carry__5_i_8_n_0;
  wire minusOp_carry__5_n_0;
  wire minusOp_carry__5_n_1;
  wire minusOp_carry__5_n_2;
  wire minusOp_carry__5_n_3;
  wire minusOp_carry__6_i_1_n_0;
  wire minusOp_carry__6_i_2_n_0;
  wire minusOp_carry__6_i_3_n_0;
  wire minusOp_carry__6_i_4_n_0;
  wire minusOp_carry__6_i_5_n_0;
  wire minusOp_carry__6_n_2;
  wire minusOp_carry__6_n_3;
  wire minusOp_carry_i_1_n_0;
  wire minusOp_carry_i_2_n_0;
  wire minusOp_carry_i_3_n_0;
  wire minusOp_carry_i_4_n_0;
  wire minusOp_carry_i_5_n_0;
  wire minusOp_carry_n_0;
  wire minusOp_carry_n_1;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire \minusOp_inferred__1/i__carry__0_n_0 ;
  wire \minusOp_inferred__1/i__carry__0_n_1 ;
  wire \minusOp_inferred__1/i__carry__0_n_2 ;
  wire \minusOp_inferred__1/i__carry__0_n_3 ;
  wire \minusOp_inferred__1/i__carry__0_n_4 ;
  wire \minusOp_inferred__1/i__carry__0_n_5 ;
  wire \minusOp_inferred__1/i__carry__0_n_6 ;
  wire \minusOp_inferred__1/i__carry__0_n_7 ;
  wire \minusOp_inferred__1/i__carry__1_n_0 ;
  wire \minusOp_inferred__1/i__carry__1_n_1 ;
  wire \minusOp_inferred__1/i__carry__1_n_2 ;
  wire \minusOp_inferred__1/i__carry__1_n_3 ;
  wire \minusOp_inferred__1/i__carry__1_n_4 ;
  wire \minusOp_inferred__1/i__carry__1_n_5 ;
  wire \minusOp_inferred__1/i__carry__1_n_6 ;
  wire \minusOp_inferred__1/i__carry__1_n_7 ;
  wire \minusOp_inferred__1/i__carry__2_n_0 ;
  wire \minusOp_inferred__1/i__carry__2_n_1 ;
  wire \minusOp_inferred__1/i__carry__2_n_2 ;
  wire \minusOp_inferred__1/i__carry__2_n_3 ;
  wire \minusOp_inferred__1/i__carry__2_n_4 ;
  wire \minusOp_inferred__1/i__carry__2_n_5 ;
  wire \minusOp_inferred__1/i__carry__2_n_6 ;
  wire \minusOp_inferred__1/i__carry__2_n_7 ;
  wire \minusOp_inferred__1/i__carry__3_n_0 ;
  wire \minusOp_inferred__1/i__carry__3_n_1 ;
  wire \minusOp_inferred__1/i__carry__3_n_2 ;
  wire \minusOp_inferred__1/i__carry__3_n_3 ;
  wire \minusOp_inferred__1/i__carry__3_n_4 ;
  wire \minusOp_inferred__1/i__carry__3_n_5 ;
  wire \minusOp_inferred__1/i__carry__3_n_6 ;
  wire \minusOp_inferred__1/i__carry__3_n_7 ;
  wire \minusOp_inferred__1/i__carry__4_n_0 ;
  wire \minusOp_inferred__1/i__carry__4_n_1 ;
  wire \minusOp_inferred__1/i__carry__4_n_2 ;
  wire \minusOp_inferred__1/i__carry__4_n_3 ;
  wire \minusOp_inferred__1/i__carry__4_n_4 ;
  wire \minusOp_inferred__1/i__carry__4_n_5 ;
  wire \minusOp_inferred__1/i__carry__4_n_6 ;
  wire \minusOp_inferred__1/i__carry__4_n_7 ;
  wire \minusOp_inferred__1/i__carry__5_n_0 ;
  wire \minusOp_inferred__1/i__carry__5_n_1 ;
  wire \minusOp_inferred__1/i__carry__5_n_2 ;
  wire \minusOp_inferred__1/i__carry__5_n_3 ;
  wire \minusOp_inferred__1/i__carry__5_n_4 ;
  wire \minusOp_inferred__1/i__carry__5_n_5 ;
  wire \minusOp_inferred__1/i__carry__5_n_6 ;
  wire \minusOp_inferred__1/i__carry__5_n_7 ;
  wire \minusOp_inferred__1/i__carry__6_n_2 ;
  wire \minusOp_inferred__1/i__carry__6_n_3 ;
  wire \minusOp_inferred__1/i__carry__6_n_5 ;
  wire \minusOp_inferred__1/i__carry__6_n_6 ;
  wire \minusOp_inferred__1/i__carry__6_n_7 ;
  wire \minusOp_inferred__1/i__carry_n_0 ;
  wire \minusOp_inferred__1/i__carry_n_1 ;
  wire \minusOp_inferred__1/i__carry_n_2 ;
  wire \minusOp_inferred__1/i__carry_n_3 ;
  wire \minusOp_inferred__1/i__carry_n_4 ;
  wire \minusOp_inferred__1/i__carry_n_5 ;
  wire \minusOp_inferred__1/i__carry_n_6 ;
  wire [7:0]multOp;
  wire multOp__15_carry__0_i_1_n_0;
  wire multOp__15_carry__0_n_7;
  wire multOp__15_carry_i_1_n_0;
  wire multOp__15_carry_i_2_n_0;
  wire multOp__15_carry_i_3_n_0;
  wire multOp__15_carry_i_4_n_0;
  wire multOp__15_carry_i_5_n_0;
  wire multOp__15_carry_i_6_n_0;
  wire multOp__15_carry_i_7_n_0;
  wire multOp__15_carry_n_0;
  wire multOp__15_carry_n_1;
  wire multOp__15_carry_n_2;
  wire multOp__15_carry_n_3;
  wire multOp__15_carry_n_4;
  wire multOp__15_carry_n_5;
  wire multOp__15_carry_n_6;
  wire multOp__15_carry_n_7;
  wire multOp_carry__0_i_1_n_0;
  wire multOp_carry__0_i_2_n_0;
  wire multOp_carry__0_i_3_n_0;
  wire multOp_carry__0_i_4_n_0;
  wire multOp_carry__0_n_1;
  wire multOp_carry__0_n_2;
  wire multOp_carry__0_n_3;
  wire multOp_carry__0_n_4;
  wire multOp_carry__0_n_5;
  wire multOp_carry__0_n_6;
  wire multOp_carry__0_n_7;
  wire multOp_carry_i_1_n_0;
  wire multOp_carry_i_2_n_0;
  wire multOp_carry_i_3_n_0;
  wire multOp_carry_n_0;
  wire multOp_carry_n_1;
  wire multOp_carry_n_2;
  wire multOp_carry_n_3;
  wire multOp_carry_n_4;
  wire multOp_carry_n_5;
  wire multOp_carry_n_6;
  wire \multOp_inferred__1/i___0_carry__0_n_1 ;
  wire \multOp_inferred__1/i___0_carry__0_n_2 ;
  wire \multOp_inferred__1/i___0_carry__0_n_3 ;
  wire \multOp_inferred__1/i___0_carry__0_n_4 ;
  wire \multOp_inferred__1/i___0_carry__0_n_5 ;
  wire \multOp_inferred__1/i___0_carry__0_n_6 ;
  wire \multOp_inferred__1/i___0_carry__0_n_7 ;
  wire \multOp_inferred__1/i___0_carry_n_0 ;
  wire \multOp_inferred__1/i___0_carry_n_1 ;
  wire \multOp_inferred__1/i___0_carry_n_2 ;
  wire \multOp_inferred__1/i___0_carry_n_3 ;
  wire \multOp_inferred__1/i___0_carry_n_4 ;
  wire \multOp_inferred__1/i___0_carry_n_5 ;
  wire \multOp_inferred__1/i___0_carry_n_6 ;
  wire \multOp_inferred__1/i___15_carry__0_n_7 ;
  wire \multOp_inferred__1/i___15_carry_n_0 ;
  wire \multOp_inferred__1/i___15_carry_n_1 ;
  wire \multOp_inferred__1/i___15_carry_n_2 ;
  wire \multOp_inferred__1/i___15_carry_n_3 ;
  wire \multOp_inferred__1/i___15_carry_n_4 ;
  wire \multOp_inferred__1/i___15_carry_n_5 ;
  wire \multOp_inferred__1/i___15_carry_n_6 ;
  wire \multOp_inferred__1/i___15_carry_n_7 ;
  wire \multOp_inferred__1/i__carry__0_n_1 ;
  wire \multOp_inferred__1/i__carry__0_n_2 ;
  wire \multOp_inferred__1/i__carry__0_n_3 ;
  wire \multOp_inferred__1/i__carry__0_n_4 ;
  wire \multOp_inferred__1/i__carry__0_n_5 ;
  wire \multOp_inferred__1/i__carry__0_n_6 ;
  wire \multOp_inferred__1/i__carry__0_n_7 ;
  wire \multOp_inferred__1/i__carry_n_0 ;
  wire \multOp_inferred__1/i__carry_n_1 ;
  wire \multOp_inferred__1/i__carry_n_2 ;
  wire \multOp_inferred__1/i__carry_n_3 ;
  wire \multOp_inferred__1/i__carry_n_4 ;
  wire \multOp_inferred__1/i__carry_n_5 ;
  wire \multOp_inferred__1/i__carry_n_6 ;
  wire \multOp_inferred__1/i__carry_n_7 ;
  wire \multOp_inferred__4/i___20_carry__0_n_7 ;
  wire \multOp_inferred__4/i___20_carry_n_0 ;
  wire \multOp_inferred__4/i___20_carry_n_1 ;
  wire \multOp_inferred__4/i___20_carry_n_2 ;
  wire \multOp_inferred__4/i___20_carry_n_3 ;
  wire \multOp_inferred__4/i___20_carry_n_4 ;
  wire \multOp_inferred__4/i___20_carry_n_5 ;
  wire \multOp_inferred__4/i___20_carry_n_6 ;
  wire \multOp_inferred__4/i___20_carry_n_7 ;
  wire \multOp_inferred__4/i__carry__0_n_1 ;
  wire \multOp_inferred__4/i__carry__0_n_2 ;
  wire \multOp_inferred__4/i__carry__0_n_3 ;
  wire \multOp_inferred__4/i__carry__0_n_4 ;
  wire \multOp_inferred__4/i__carry__0_n_5 ;
  wire \multOp_inferred__4/i__carry__0_n_6 ;
  wire \multOp_inferred__4/i__carry__0_n_7 ;
  wire \multOp_inferred__4/i__carry_n_0 ;
  wire \multOp_inferred__4/i__carry_n_1 ;
  wire \multOp_inferred__4/i__carry_n_2 ;
  wire \multOp_inferred__4/i__carry_n_3 ;
  wire \multOp_inferred__4/i__carry_n_4 ;
  wire \multOp_inferred__4/i__carry_n_5 ;
  wire \multOp_inferred__4/i__carry_n_6 ;
  wire \multOp_inferred__4/i__carry_n_7 ;
  wire \multOp_inferred__5/i___15_carry__0_n_7 ;
  wire \multOp_inferred__5/i___15_carry_n_0 ;
  wire \multOp_inferred__5/i___15_carry_n_1 ;
  wire \multOp_inferred__5/i___15_carry_n_2 ;
  wire \multOp_inferred__5/i___15_carry_n_3 ;
  wire \multOp_inferred__5/i___15_carry_n_4 ;
  wire \multOp_inferred__5/i___15_carry_n_5 ;
  wire \multOp_inferred__5/i___15_carry_n_6 ;
  wire \multOp_inferred__5/i___15_carry_n_7 ;
  wire \multOp_inferred__5/i__carry__0_n_1 ;
  wire \multOp_inferred__5/i__carry__0_n_2 ;
  wire \multOp_inferred__5/i__carry__0_n_3 ;
  wire \multOp_inferred__5/i__carry__0_n_4 ;
  wire \multOp_inferred__5/i__carry__0_n_5 ;
  wire \multOp_inferred__5/i__carry__0_n_6 ;
  wire \multOp_inferred__5/i__carry__0_n_7 ;
  wire \multOp_inferred__5/i__carry_n_0 ;
  wire \multOp_inferred__5/i__carry_n_1 ;
  wire \multOp_inferred__5/i__carry_n_2 ;
  wire \multOp_inferred__5/i__carry_n_3 ;
  wire \multOp_inferred__5/i__carry_n_4 ;
  wire \multOp_inferred__5/i__carry_n_5 ;
  wire \multOp_inferred__5/i__carry_n_6 ;
  wire \multOp_inferred__6/i__carry__0_n_1 ;
  wire \multOp_inferred__6/i__carry__0_n_2 ;
  wire \multOp_inferred__6/i__carry__0_n_3 ;
  wire \multOp_inferred__6/i__carry__0_n_4 ;
  wire \multOp_inferred__6/i__carry__0_n_5 ;
  wire \multOp_inferred__6/i__carry__0_n_6 ;
  wire \multOp_inferred__6/i__carry__0_n_7 ;
  wire \multOp_inferred__6/i__carry_n_0 ;
  wire \multOp_inferred__6/i__carry_n_1 ;
  wire \multOp_inferred__6/i__carry_n_2 ;
  wire \multOp_inferred__6/i__carry_n_3 ;
  wire \multOp_inferred__6/i__carry_n_4 ;
  wire \multOp_inferred__6/i__carry_n_5 ;
  wire \multOp_inferred__6/i__carry_n_6 ;
  wire \multOp_inferred__6/i__carry_n_7 ;
  wire o_controla;
  wire o_controla_i_1_n_0;
  wire o_controlb;
  wire o_controlb_i_1_n_0;
  wire o_controlc;
  wire o_controlc_i_1_n_0;
  wire o_done;
  wire o_done_i_1_n_0;
  wire o_done_i_2_n_0;
  wire o_done_i_3_n_0;
  wire o_done_i_4_n_0;
  wire o_done_i_5_n_0;
  wire o_done_i_6_n_0;
  wire o_done_i_7_n_0;
  wire o_done_i_8_n_0;
  wire o_done_i_9_n_0;
  wire [31:0]o_mema_addr;
  wire \o_mema_addr[31]_i_1_n_0 ;
  wire o_mema_en;
  wire o_mema_en_i_1_n_0;
  wire [29:0]o_memb_addr;
  wire \o_memb_addr[12]_i_2_n_0 ;
  wire \o_memb_addr[12]_i_3_n_0 ;
  wire \o_memb_addr[12]_i_4_n_0 ;
  wire \o_memb_addr[12]_i_5_n_0 ;
  wire \o_memb_addr[12]_i_6_n_0 ;
  wire \o_memb_addr[12]_i_7_n_0 ;
  wire \o_memb_addr[12]_i_8_n_0 ;
  wire \o_memb_addr[12]_i_9_n_0 ;
  wire \o_memb_addr[16]_i_2_n_0 ;
  wire \o_memb_addr[16]_i_3_n_0 ;
  wire \o_memb_addr[16]_i_4_n_0 ;
  wire \o_memb_addr[16]_i_5_n_0 ;
  wire \o_memb_addr[16]_i_6_n_0 ;
  wire \o_memb_addr[16]_i_7_n_0 ;
  wire \o_memb_addr[16]_i_8_n_0 ;
  wire \o_memb_addr[16]_i_9_n_0 ;
  wire \o_memb_addr[20]_i_2_n_0 ;
  wire \o_memb_addr[20]_i_3_n_0 ;
  wire \o_memb_addr[20]_i_4_n_0 ;
  wire \o_memb_addr[20]_i_5_n_0 ;
  wire \o_memb_addr[20]_i_6_n_0 ;
  wire \o_memb_addr[20]_i_7_n_0 ;
  wire \o_memb_addr[20]_i_8_n_0 ;
  wire \o_memb_addr[20]_i_9_n_0 ;
  wire \o_memb_addr[24]_i_2_n_0 ;
  wire \o_memb_addr[24]_i_3_n_0 ;
  wire \o_memb_addr[24]_i_4_n_0 ;
  wire \o_memb_addr[24]_i_5_n_0 ;
  wire \o_memb_addr[24]_i_6_n_0 ;
  wire \o_memb_addr[24]_i_7_n_0 ;
  wire \o_memb_addr[24]_i_8_n_0 ;
  wire \o_memb_addr[24]_i_9_n_0 ;
  wire \o_memb_addr[28]_i_2_n_0 ;
  wire \o_memb_addr[28]_i_3_n_0 ;
  wire \o_memb_addr[28]_i_4_n_0 ;
  wire \o_memb_addr[28]_i_5_n_0 ;
  wire \o_memb_addr[28]_i_6_n_0 ;
  wire \o_memb_addr[28]_i_7_n_0 ;
  wire \o_memb_addr[28]_i_8_n_0 ;
  wire \o_memb_addr[28]_i_9_n_0 ;
  wire \o_memb_addr[31]_i_2_n_0 ;
  wire \o_memb_addr[31]_i_3_n_0 ;
  wire \o_memb_addr[31]_i_4_n_0 ;
  wire \o_memb_addr[31]_i_5_n_0 ;
  wire \o_memb_addr[31]_i_6_n_0 ;
  wire \o_memb_addr[4]_i_2_n_0 ;
  wire \o_memb_addr[4]_i_3_n_0 ;
  wire \o_memb_addr[4]_i_4_n_0 ;
  wire \o_memb_addr[4]_i_5_n_0 ;
  wire \o_memb_addr[8]_i_2_n_0 ;
  wire \o_memb_addr[8]_i_3_n_0 ;
  wire \o_memb_addr[8]_i_4_n_0 ;
  wire \o_memb_addr[8]_i_5_n_0 ;
  wire \o_memb_addr[8]_i_6_n_0 ;
  wire \o_memb_addr[8]_i_7_n_0 ;
  wire \o_memb_addr_reg[12]_i_1_n_0 ;
  wire \o_memb_addr_reg[12]_i_1_n_1 ;
  wire \o_memb_addr_reg[12]_i_1_n_2 ;
  wire \o_memb_addr_reg[12]_i_1_n_3 ;
  wire \o_memb_addr_reg[12]_i_1_n_4 ;
  wire \o_memb_addr_reg[12]_i_1_n_5 ;
  wire \o_memb_addr_reg[12]_i_1_n_6 ;
  wire \o_memb_addr_reg[12]_i_1_n_7 ;
  wire \o_memb_addr_reg[16]_i_1_n_0 ;
  wire \o_memb_addr_reg[16]_i_1_n_1 ;
  wire \o_memb_addr_reg[16]_i_1_n_2 ;
  wire \o_memb_addr_reg[16]_i_1_n_3 ;
  wire \o_memb_addr_reg[16]_i_1_n_4 ;
  wire \o_memb_addr_reg[16]_i_1_n_5 ;
  wire \o_memb_addr_reg[16]_i_1_n_6 ;
  wire \o_memb_addr_reg[16]_i_1_n_7 ;
  wire \o_memb_addr_reg[20]_i_1_n_0 ;
  wire \o_memb_addr_reg[20]_i_1_n_1 ;
  wire \o_memb_addr_reg[20]_i_1_n_2 ;
  wire \o_memb_addr_reg[20]_i_1_n_3 ;
  wire \o_memb_addr_reg[20]_i_1_n_4 ;
  wire \o_memb_addr_reg[20]_i_1_n_5 ;
  wire \o_memb_addr_reg[20]_i_1_n_6 ;
  wire \o_memb_addr_reg[20]_i_1_n_7 ;
  wire \o_memb_addr_reg[24]_i_1_n_0 ;
  wire \o_memb_addr_reg[24]_i_1_n_1 ;
  wire \o_memb_addr_reg[24]_i_1_n_2 ;
  wire \o_memb_addr_reg[24]_i_1_n_3 ;
  wire \o_memb_addr_reg[24]_i_1_n_4 ;
  wire \o_memb_addr_reg[24]_i_1_n_5 ;
  wire \o_memb_addr_reg[24]_i_1_n_6 ;
  wire \o_memb_addr_reg[24]_i_1_n_7 ;
  wire \o_memb_addr_reg[28]_i_1_n_0 ;
  wire \o_memb_addr_reg[28]_i_1_n_1 ;
  wire \o_memb_addr_reg[28]_i_1_n_2 ;
  wire \o_memb_addr_reg[28]_i_1_n_3 ;
  wire \o_memb_addr_reg[28]_i_1_n_4 ;
  wire \o_memb_addr_reg[28]_i_1_n_5 ;
  wire \o_memb_addr_reg[28]_i_1_n_6 ;
  wire \o_memb_addr_reg[28]_i_1_n_7 ;
  wire \o_memb_addr_reg[31]_i_1_n_2 ;
  wire \o_memb_addr_reg[31]_i_1_n_3 ;
  wire \o_memb_addr_reg[31]_i_1_n_5 ;
  wire \o_memb_addr_reg[31]_i_1_n_6 ;
  wire \o_memb_addr_reg[31]_i_1_n_7 ;
  wire \o_memb_addr_reg[4]_i_1_n_0 ;
  wire \o_memb_addr_reg[4]_i_1_n_1 ;
  wire \o_memb_addr_reg[4]_i_1_n_2 ;
  wire \o_memb_addr_reg[4]_i_1_n_3 ;
  wire \o_memb_addr_reg[4]_i_1_n_4 ;
  wire \o_memb_addr_reg[4]_i_1_n_5 ;
  wire \o_memb_addr_reg[4]_i_1_n_6 ;
  wire \o_memb_addr_reg[8]_i_1_n_0 ;
  wire \o_memb_addr_reg[8]_i_1_n_1 ;
  wire \o_memb_addr_reg[8]_i_1_n_2 ;
  wire \o_memb_addr_reg[8]_i_1_n_3 ;
  wire \o_memb_addr_reg[8]_i_1_n_4 ;
  wire \o_memb_addr_reg[8]_i_1_n_5 ;
  wire \o_memb_addr_reg[8]_i_1_n_6 ;
  wire \o_memb_addr_reg[8]_i_1_n_7 ;
  wire o_memb_en;
  wire o_memb_en_i_1_n_0;
  wire [31:0]o_memc_addr;
  wire \o_memc_addr[1]_i_1_n_0 ;
  wire [31:0]o_memc_din;
  wire \o_memc_din[31]_i_1_n_0 ;
  wire o_memc_en;
  wire o_memc_en_i_1_n_0;
  wire [0:0]o_memc_we;
  wire \o_memc_we[3]_i_1_n_0 ;
  wire orig_input_reg_0_1_0_0_i_1_n_0;
  wire orig_input_reg_0_1_0_0_n_0;
  wire orig_input_reg_0_1_1_1_n_0;
  wire orig_input_reg_0_1_2_2_n_0;
  wire orig_input_reg_0_1_3_3_n_0;
  wire orig_input_reg_0_1_4_4_n_0;
  wire orig_input_reg_0_1_5_5_n_0;
  wire orig_input_reg_0_1_6_6_n_0;
  wire orig_input_reg_0_1_7_7_n_0;
  wire out_ctr;
  wire \out_ctr[0]_i_1_n_0 ;
  wire [7:0]p_0_in;
  wire [7:0]p_0_in15_in;
  wire [7:0]p_0_in4_in;
  wire [7:0]p_0_in9_in;
  wire [31:1]p_1_in;
  wire [1:1]p_2_in;
  wire [4:0]plusOp;
  wire [1:0]prev_ctr;
  wire rst;
  wire [31:0]s_input_adr;
  wire [31:0]s_output_adr;
  wire s_output_adr_0;
  wire start_add;
  wire start_add_i_1_n_0;
  wire [3:0]state0;
  wire state01;
  wire state01_carry__0_i_1_n_0;
  wire state01_carry__0_i_2_n_0;
  wire state01_carry__0_i_3_n_0;
  wire state01_carry__0_i_4_n_0;
  wire state01_carry__0_i_5_n_0;
  wire state01_carry__0_i_6_n_0;
  wire state01_carry__0_i_7_n_0;
  wire state01_carry__0_i_8_n_0;
  wire state01_carry__0_n_0;
  wire state01_carry__0_n_1;
  wire state01_carry__0_n_2;
  wire state01_carry__0_n_3;
  wire state01_carry__1_i_1_n_0;
  wire state01_carry__1_i_2_n_0;
  wire state01_carry__1_i_3_n_0;
  wire state01_carry__1_i_4_n_0;
  wire state01_carry__1_i_5_n_0;
  wire state01_carry__1_i_6_n_0;
  wire state01_carry__1_i_7_n_0;
  wire state01_carry__1_i_8_n_0;
  wire state01_carry__1_n_0;
  wire state01_carry__1_n_1;
  wire state01_carry__1_n_2;
  wire state01_carry__1_n_3;
  wire state01_carry__2_i_1_n_0;
  wire state01_carry__2_i_2_n_0;
  wire state01_carry__2_i_3_n_0;
  wire state01_carry__2_i_4_n_0;
  wire state01_carry__2_i_5_n_0;
  wire state01_carry__2_i_6_n_0;
  wire state01_carry__2_n_2;
  wire state01_carry__2_n_3;
  wire state01_carry_i_1_n_0;
  wire state01_carry_i_2_n_0;
  wire state01_carry_i_3_n_0;
  wire state01_carry_i_4_n_0;
  wire state01_carry_i_5_n_0;
  wire state01_carry_i_6_n_0;
  wire state01_carry_i_7_n_0;
  wire state01_carry_n_0;
  wire state01_carry_n_1;
  wire state01_carry_n_2;
  wire state01_carry_n_3;
  wire \state0[0]_i_1_n_0 ;
  wire \state0[1]_i_1_n_0 ;
  wire \state0[2]_i_1_n_0 ;
  wire \state0[3]_i_1_n_0 ;
  wire \state0[3]_i_2_n_0 ;
  wire [7:0]\temp_output[0]00_out ;
  wire \temp_output[0]00_out_carry__0_i_1_n_0 ;
  wire \temp_output[0]00_out_carry__0_i_2_n_0 ;
  wire \temp_output[0]00_out_carry__0_i_3_n_0 ;
  wire \temp_output[0]00_out_carry__0_i_4_n_0 ;
  wire \temp_output[0]00_out_carry__0_n_1 ;
  wire \temp_output[0]00_out_carry__0_n_2 ;
  wire \temp_output[0]00_out_carry__0_n_3 ;
  wire \temp_output[0]00_out_carry_i_1_n_0 ;
  wire \temp_output[0]00_out_carry_i_2_n_0 ;
  wire \temp_output[0]00_out_carry_i_3_n_0 ;
  wire \temp_output[0]00_out_carry_i_4_n_0 ;
  wire \temp_output[0]00_out_carry_n_0 ;
  wire \temp_output[0]00_out_carry_n_1 ;
  wire \temp_output[0]00_out_carry_n_2 ;
  wire \temp_output[0]00_out_carry_n_3 ;
  wire [7:0]\temp_output[0]010_out ;
  wire \temp_output[0]010_out__2_carry__0_i_10_n_0 ;
  wire \temp_output[0]010_out__2_carry__0_i_11_n_0 ;
  wire \temp_output[0]010_out__2_carry__0_i_12_n_0 ;
  wire \temp_output[0]010_out__2_carry__0_i_13_n_0 ;
  wire \temp_output[0]010_out__2_carry__0_i_14_n_0 ;
  wire \temp_output[0]010_out__2_carry__0_i_15_n_0 ;
  wire \temp_output[0]010_out__2_carry__0_i_16_n_0 ;
  wire \temp_output[0]010_out__2_carry__0_i_17_n_0 ;
  wire \temp_output[0]010_out__2_carry__0_i_18_n_0 ;
  wire \temp_output[0]010_out__2_carry__0_i_19_n_0 ;
  wire \temp_output[0]010_out__2_carry__0_i_1_n_0 ;
  wire \temp_output[0]010_out__2_carry__0_i_2_n_0 ;
  wire \temp_output[0]010_out__2_carry__0_i_3_n_0 ;
  wire \temp_output[0]010_out__2_carry__0_i_4_n_0 ;
  wire \temp_output[0]010_out__2_carry__0_i_5_n_0 ;
  wire \temp_output[0]010_out__2_carry__0_i_6_n_0 ;
  wire \temp_output[0]010_out__2_carry__0_i_7_n_0 ;
  wire \temp_output[0]010_out__2_carry__0_i_8_n_0 ;
  wire \temp_output[0]010_out__2_carry__0_i_9_n_0 ;
  wire \temp_output[0]010_out__2_carry__0_n_1 ;
  wire \temp_output[0]010_out__2_carry__0_n_2 ;
  wire \temp_output[0]010_out__2_carry__0_n_3 ;
  wire \temp_output[0]010_out__2_carry_i_10_n_0 ;
  wire \temp_output[0]010_out__2_carry_i_11_n_0 ;
  wire \temp_output[0]010_out__2_carry_i_12_n_0 ;
  wire \temp_output[0]010_out__2_carry_i_1_n_0 ;
  wire \temp_output[0]010_out__2_carry_i_2_n_0 ;
  wire \temp_output[0]010_out__2_carry_i_3_n_0 ;
  wire \temp_output[0]010_out__2_carry_i_4_n_0 ;
  wire \temp_output[0]010_out__2_carry_i_5_n_0 ;
  wire \temp_output[0]010_out__2_carry_i_6_n_0 ;
  wire \temp_output[0]010_out__2_carry_i_7_n_0 ;
  wire \temp_output[0]010_out__2_carry_i_8_n_0 ;
  wire \temp_output[0]010_out__2_carry_i_9_n_0 ;
  wire \temp_output[0]010_out__2_carry_n_0 ;
  wire \temp_output[0]010_out__2_carry_n_1 ;
  wire \temp_output[0]010_out__2_carry_n_2 ;
  wire \temp_output[0]010_out__2_carry_n_3 ;
  wire [7:0]\temp_output[0]014_out ;
  wire \temp_output[0]014_out__2_carry__0_i_10_n_0 ;
  wire \temp_output[0]014_out__2_carry__0_i_11_n_0 ;
  wire \temp_output[0]014_out__2_carry__0_i_12_n_0 ;
  wire \temp_output[0]014_out__2_carry__0_i_13_n_0 ;
  wire \temp_output[0]014_out__2_carry__0_i_14_n_0 ;
  wire \temp_output[0]014_out__2_carry__0_i_15_n_0 ;
  wire \temp_output[0]014_out__2_carry__0_i_16_n_0 ;
  wire \temp_output[0]014_out__2_carry__0_i_17_n_0 ;
  wire \temp_output[0]014_out__2_carry__0_i_18_n_0 ;
  wire \temp_output[0]014_out__2_carry__0_i_19_n_0 ;
  wire \temp_output[0]014_out__2_carry__0_i_1_n_0 ;
  wire \temp_output[0]014_out__2_carry__0_i_2_n_0 ;
  wire \temp_output[0]014_out__2_carry__0_i_3_n_0 ;
  wire \temp_output[0]014_out__2_carry__0_i_4_n_0 ;
  wire \temp_output[0]014_out__2_carry__0_i_5_n_0 ;
  wire \temp_output[0]014_out__2_carry__0_i_6_n_0 ;
  wire \temp_output[0]014_out__2_carry__0_i_7_n_0 ;
  wire \temp_output[0]014_out__2_carry__0_i_8_n_0 ;
  wire \temp_output[0]014_out__2_carry__0_i_9_n_0 ;
  wire \temp_output[0]014_out__2_carry__0_n_1 ;
  wire \temp_output[0]014_out__2_carry__0_n_2 ;
  wire \temp_output[0]014_out__2_carry__0_n_3 ;
  wire \temp_output[0]014_out__2_carry_i_10_n_0 ;
  wire \temp_output[0]014_out__2_carry_i_11_n_0 ;
  wire \temp_output[0]014_out__2_carry_i_12_n_0 ;
  wire \temp_output[0]014_out__2_carry_i_13_n_0 ;
  wire \temp_output[0]014_out__2_carry_i_1_n_0 ;
  wire \temp_output[0]014_out__2_carry_i_2_n_0 ;
  wire \temp_output[0]014_out__2_carry_i_3_n_0 ;
  wire \temp_output[0]014_out__2_carry_i_4_n_0 ;
  wire \temp_output[0]014_out__2_carry_i_5_n_0 ;
  wire \temp_output[0]014_out__2_carry_i_6_n_0 ;
  wire \temp_output[0]014_out__2_carry_i_7_n_0 ;
  wire \temp_output[0]014_out__2_carry_i_8_n_0 ;
  wire \temp_output[0]014_out__2_carry_i_9_n_0 ;
  wire \temp_output[0]014_out__2_carry_n_0 ;
  wire \temp_output[0]014_out__2_carry_n_1 ;
  wire \temp_output[0]014_out__2_carry_n_2 ;
  wire \temp_output[0]014_out__2_carry_n_3 ;
  wire [7:0]\temp_output[0]016_out ;
  wire \temp_output[0]016_out_carry__0_i_1_n_0 ;
  wire \temp_output[0]016_out_carry__0_i_2_n_0 ;
  wire \temp_output[0]016_out_carry__0_i_3_n_0 ;
  wire \temp_output[0]016_out_carry__0_i_4_n_0 ;
  wire \temp_output[0]016_out_carry__0_n_1 ;
  wire \temp_output[0]016_out_carry__0_n_2 ;
  wire \temp_output[0]016_out_carry__0_n_3 ;
  wire \temp_output[0]016_out_carry_i_1_n_0 ;
  wire \temp_output[0]016_out_carry_i_2_n_0 ;
  wire \temp_output[0]016_out_carry_i_3_n_0 ;
  wire \temp_output[0]016_out_carry_i_4_n_0 ;
  wire \temp_output[0]016_out_carry_n_0 ;
  wire \temp_output[0]016_out_carry_n_1 ;
  wire \temp_output[0]016_out_carry_n_2 ;
  wire \temp_output[0]016_out_carry_n_3 ;
  wire \temp_output[0]017_out__0_carry__0_i_10_n_0 ;
  wire \temp_output[0]017_out__0_carry__0_i_11_n_0 ;
  wire \temp_output[0]017_out__0_carry__0_i_12_n_0 ;
  wire \temp_output[0]017_out__0_carry__0_i_1_n_0 ;
  wire \temp_output[0]017_out__0_carry__0_i_2_n_0 ;
  wire \temp_output[0]017_out__0_carry__0_i_3_n_0 ;
  wire \temp_output[0]017_out__0_carry__0_i_4_n_0 ;
  wire \temp_output[0]017_out__0_carry__0_i_5_n_0 ;
  wire \temp_output[0]017_out__0_carry__0_i_6_n_0 ;
  wire \temp_output[0]017_out__0_carry__0_i_7_n_0 ;
  wire \temp_output[0]017_out__0_carry__0_i_8_n_1 ;
  wire \temp_output[0]017_out__0_carry__0_i_8_n_2 ;
  wire \temp_output[0]017_out__0_carry__0_i_8_n_3 ;
  wire \temp_output[0]017_out__0_carry__0_i_9_n_0 ;
  wire \temp_output[0]017_out__0_carry__0_n_1 ;
  wire \temp_output[0]017_out__0_carry__0_n_2 ;
  wire \temp_output[0]017_out__0_carry__0_n_3 ;
  wire \temp_output[0]017_out__0_carry_i_10_n_0 ;
  wire \temp_output[0]017_out__0_carry_i_11_n_0 ;
  wire \temp_output[0]017_out__0_carry_i_1_n_0 ;
  wire \temp_output[0]017_out__0_carry_i_2_n_0 ;
  wire \temp_output[0]017_out__0_carry_i_3_n_0 ;
  wire \temp_output[0]017_out__0_carry_i_4_n_0 ;
  wire \temp_output[0]017_out__0_carry_i_5_n_0 ;
  wire \temp_output[0]017_out__0_carry_i_6_n_0 ;
  wire \temp_output[0]017_out__0_carry_i_7_n_0 ;
  wire \temp_output[0]017_out__0_carry_i_8_n_0 ;
  wire \temp_output[0]017_out__0_carry_i_8_n_1 ;
  wire \temp_output[0]017_out__0_carry_i_8_n_2 ;
  wire \temp_output[0]017_out__0_carry_i_8_n_3 ;
  wire \temp_output[0]017_out__0_carry_i_9_n_0 ;
  wire \temp_output[0]017_out__0_carry_n_0 ;
  wire \temp_output[0]017_out__0_carry_n_1 ;
  wire \temp_output[0]017_out__0_carry_n_2 ;
  wire \temp_output[0]017_out__0_carry_n_3 ;
  wire [7:0]\temp_output[0]018_out ;
  wire [7:0]\temp_output[0]05_out ;
  wire \temp_output[0]05_out_carry__0_i_1_n_0 ;
  wire \temp_output[0]05_out_carry__0_i_2_n_0 ;
  wire \temp_output[0]05_out_carry__0_i_3_n_0 ;
  wire \temp_output[0]05_out_carry__0_i_4_n_0 ;
  wire \temp_output[0]05_out_carry__0_i_5_n_0 ;
  wire \temp_output[0]05_out_carry__0_i_6_n_0 ;
  wire \temp_output[0]05_out_carry__0_n_1 ;
  wire \temp_output[0]05_out_carry__0_n_2 ;
  wire \temp_output[0]05_out_carry__0_n_3 ;
  wire \temp_output[0]05_out_carry_i_1_n_0 ;
  wire \temp_output[0]05_out_carry_i_2_n_0 ;
  wire \temp_output[0]05_out_carry_i_3_n_0 ;
  wire \temp_output[0]05_out_carry_i_4_n_0 ;
  wire \temp_output[0]05_out_carry_n_0 ;
  wire \temp_output[0]05_out_carry_n_1 ;
  wire \temp_output[0]05_out_carry_n_2 ;
  wire \temp_output[0]05_out_carry_n_3 ;
  wire \temp_output[0][27]_i_10_n_0 ;
  wire \temp_output[0][27]_i_3_n_0 ;
  wire \temp_output[0][27]_i_4_n_0 ;
  wire \temp_output[0][27]_i_5_n_0 ;
  wire \temp_output[0][27]_i_6_n_0 ;
  wire \temp_output[0][27]_i_7_n_0 ;
  wire \temp_output[0][27]_i_8_n_0 ;
  wire \temp_output[0][27]_i_9_n_0 ;
  wire \temp_output[0][31]_i_10_n_0 ;
  wire \temp_output[0][31]_i_1_n_0 ;
  wire \temp_output[0][31]_i_4_n_0 ;
  wire \temp_output[0][31]_i_5_n_0 ;
  wire \temp_output[0][31]_i_6_n_0 ;
  wire \temp_output[0][31]_i_7_n_0 ;
  wire \temp_output[0][31]_i_8_n_0 ;
  wire \temp_output[0][31]_i_9_n_0 ;
  wire [31:0]\temp_output[1] ;
  wire \temp_output_reg[0][27]_i_2_n_0 ;
  wire \temp_output_reg[0][27]_i_2_n_1 ;
  wire \temp_output_reg[0][27]_i_2_n_2 ;
  wire \temp_output_reg[0][27]_i_2_n_3 ;
  wire \temp_output_reg[0][31]_i_3_n_1 ;
  wire \temp_output_reg[0][31]_i_3_n_2 ;
  wire \temp_output_reg[0][31]_i_3_n_3 ;
  wire \temp_output_reg_n_0_[0][0] ;
  wire \temp_output_reg_n_0_[0][10] ;
  wire \temp_output_reg_n_0_[0][11] ;
  wire \temp_output_reg_n_0_[0][12] ;
  wire \temp_output_reg_n_0_[0][13] ;
  wire \temp_output_reg_n_0_[0][14] ;
  wire \temp_output_reg_n_0_[0][15] ;
  wire \temp_output_reg_n_0_[0][16] ;
  wire \temp_output_reg_n_0_[0][17] ;
  wire \temp_output_reg_n_0_[0][18] ;
  wire \temp_output_reg_n_0_[0][19] ;
  wire \temp_output_reg_n_0_[0][1] ;
  wire \temp_output_reg_n_0_[0][20] ;
  wire \temp_output_reg_n_0_[0][21] ;
  wire \temp_output_reg_n_0_[0][22] ;
  wire \temp_output_reg_n_0_[0][23] ;
  wire \temp_output_reg_n_0_[0][24] ;
  wire \temp_output_reg_n_0_[0][25] ;
  wire \temp_output_reg_n_0_[0][26] ;
  wire \temp_output_reg_n_0_[0][27] ;
  wire \temp_output_reg_n_0_[0][28] ;
  wire \temp_output_reg_n_0_[0][29] ;
  wire \temp_output_reg_n_0_[0][2] ;
  wire \temp_output_reg_n_0_[0][30] ;
  wire \temp_output_reg_n_0_[0][31] ;
  wire \temp_output_reg_n_0_[0][3] ;
  wire \temp_output_reg_n_0_[0][4] ;
  wire \temp_output_reg_n_0_[0][5] ;
  wire \temp_output_reg_n_0_[0][6] ;
  wire \temp_output_reg_n_0_[0][7] ;
  wire \temp_output_reg_n_0_[0][8] ;
  wire \temp_output_reg_n_0_[0][9] ;
  wire temp_result;
  wire temp_result0__0_carry__0_i_1_n_0;
  wire temp_result0__0_carry__0_i_2_n_0;
  wire temp_result0__0_carry__0_i_3_n_0;
  wire temp_result0__0_carry__0_n_3;
  wire temp_result0__0_carry__0_n_6;
  wire temp_result0__0_carry__0_n_7;
  wire temp_result0__0_carry_i_1_n_0;
  wire temp_result0__0_carry_i_2_n_0;
  wire temp_result0__0_carry_i_3_n_0;
  wire temp_result0__0_carry_i_4_n_0;
  wire temp_result0__0_carry_i_5_n_0;
  wire temp_result0__0_carry_i_6_n_0;
  wire temp_result0__0_carry_i_7_n_0;
  wire temp_result0__0_carry_i_8_n_0;
  wire temp_result0__0_carry_n_0;
  wire temp_result0__0_carry_n_1;
  wire temp_result0__0_carry_n_2;
  wire temp_result0__0_carry_n_3;
  wire temp_result0__0_carry_n_4;
  wire temp_result0__0_carry_n_5;
  wire temp_result0__0_carry_n_6;
  wire temp_result0__0_carry_n_7;
  wire temp_result0__14_carry__0_i_1_n_0;
  wire temp_result0__14_carry__0_i_2_n_0;
  wire temp_result0__14_carry__0_i_3_n_0;
  wire temp_result0__14_carry__0_n_3;
  wire temp_result0__14_carry__0_n_6;
  wire temp_result0__14_carry__0_n_7;
  wire temp_result0__14_carry_i_1_n_0;
  wire temp_result0__14_carry_i_2_n_0;
  wire temp_result0__14_carry_i_3_n_0;
  wire temp_result0__14_carry_i_4_n_0;
  wire temp_result0__14_carry_i_5_n_0;
  wire temp_result0__14_carry_i_6_n_0;
  wire temp_result0__14_carry_i_7_n_0;
  wire temp_result0__14_carry_i_8_n_0;
  wire temp_result0__14_carry_n_0;
  wire temp_result0__14_carry_n_1;
  wire temp_result0__14_carry_n_2;
  wire temp_result0__14_carry_n_3;
  wire temp_result0__14_carry_n_4;
  wire temp_result0__14_carry_n_5;
  wire temp_result0__14_carry_n_6;
  wire temp_result0__14_carry_n_7;
  wire \temp_result0_inferred__0/i___0_carry__0_n_3 ;
  wire \temp_result0_inferred__0/i___0_carry__0_n_6 ;
  wire \temp_result0_inferred__0/i___0_carry__0_n_7 ;
  wire \temp_result0_inferred__0/i___0_carry_n_0 ;
  wire \temp_result0_inferred__0/i___0_carry_n_1 ;
  wire \temp_result0_inferred__0/i___0_carry_n_2 ;
  wire \temp_result0_inferred__0/i___0_carry_n_3 ;
  wire \temp_result0_inferred__0/i___0_carry_n_4 ;
  wire \temp_result0_inferred__0/i___0_carry_n_5 ;
  wire \temp_result0_inferred__0/i___0_carry_n_6 ;
  wire \temp_result0_inferred__0/i___0_carry_n_7 ;
  wire \temp_result0_inferred__0/i___14_carry__0_n_3 ;
  wire \temp_result0_inferred__0/i___14_carry__0_n_6 ;
  wire \temp_result0_inferred__0/i___14_carry__0_n_7 ;
  wire \temp_result0_inferred__0/i___14_carry_n_0 ;
  wire \temp_result0_inferred__0/i___14_carry_n_1 ;
  wire \temp_result0_inferred__0/i___14_carry_n_2 ;
  wire \temp_result0_inferred__0/i___14_carry_n_3 ;
  wire \temp_result0_inferred__0/i___14_carry_n_4 ;
  wire \temp_result0_inferred__0/i___14_carry_n_5 ;
  wire \temp_result0_inferred__0/i___14_carry_n_6 ;
  wire \temp_result0_inferred__0/i___14_carry_n_7 ;
  wire \temp_result0_inferred__1/i___0_carry__0_n_3 ;
  wire \temp_result0_inferred__1/i___0_carry__0_n_6 ;
  wire \temp_result0_inferred__1/i___0_carry__0_n_7 ;
  wire \temp_result0_inferred__1/i___0_carry_n_0 ;
  wire \temp_result0_inferred__1/i___0_carry_n_1 ;
  wire \temp_result0_inferred__1/i___0_carry_n_2 ;
  wire \temp_result0_inferred__1/i___0_carry_n_3 ;
  wire \temp_result0_inferred__1/i___0_carry_n_4 ;
  wire \temp_result0_inferred__1/i___0_carry_n_5 ;
  wire \temp_result0_inferred__1/i___0_carry_n_6 ;
  wire \temp_result0_inferred__1/i___0_carry_n_7 ;
  wire \temp_result0_inferred__1/i___14_carry__0_n_3 ;
  wire \temp_result0_inferred__1/i___14_carry__0_n_6 ;
  wire \temp_result0_inferred__1/i___14_carry__0_n_7 ;
  wire \temp_result0_inferred__1/i___14_carry_n_0 ;
  wire \temp_result0_inferred__1/i___14_carry_n_1 ;
  wire \temp_result0_inferred__1/i___14_carry_n_2 ;
  wire \temp_result0_inferred__1/i___14_carry_n_3 ;
  wire \temp_result0_inferred__1/i___14_carry_n_4 ;
  wire \temp_result0_inferred__1/i___14_carry_n_5 ;
  wire \temp_result0_inferred__1/i___14_carry_n_6 ;
  wire \temp_result0_inferred__1/i___14_carry_n_7 ;
  wire \temp_result[0]_i_1_n_0 ;
  wire \temp_result[10]_i_1_n_0 ;
  wire \temp_result[10]_i_2_n_0 ;
  wire \temp_result[11]_i_1_n_0 ;
  wire \temp_result[11]_i_2_n_0 ;
  wire \temp_result[12]_i_1_n_0 ;
  wire \temp_result[12]_i_2_n_0 ;
  wire \temp_result[16]_i_1_n_0 ;
  wire \temp_result[17]_i_1_n_0 ;
  wire \temp_result[18]_i_1_n_0 ;
  wire \temp_result[19]_i_1_n_0 ;
  wire \temp_result[1]_i_1_n_0 ;
  wire \temp_result[20]_i_1_n_0 ;
  wire \temp_result[21]_i_1_n_0 ;
  wire \temp_result[22]_i_1_n_0 ;
  wire \temp_result[23]_i_1_n_0 ;
  wire \temp_result[24]_i_1_n_0 ;
  wire \temp_result[25]_i_1_n_0 ;
  wire \temp_result[26]_i_1_n_0 ;
  wire \temp_result[26]_i_2_n_0 ;
  wire \temp_result[27]_i_1_n_0 ;
  wire \temp_result[27]_i_2_n_0 ;
  wire \temp_result[28]_i_2_n_0 ;
  wire \temp_result[28]_i_3_n_0 ;
  wire \temp_result[2]_i_1_n_0 ;
  wire \temp_result[2]_i_2_n_0 ;
  wire \temp_result[31]_i_1_n_0 ;
  wire \temp_result[3]_i_1_n_0 ;
  wire \temp_result[3]_i_2_n_0 ;
  wire \temp_result[4]_i_1_n_0 ;
  wire \temp_result[4]_i_2_n_0 ;
  wire \temp_result[8]_i_1_n_0 ;
  wire \temp_result[9]_i_1_n_0 ;
  wire \temp_result_reg_n_0_[0] ;
  wire \temp_result_reg_n_0_[16] ;
  wire \temp_result_reg_n_0_[17] ;
  wire \temp_result_reg_n_0_[18] ;
  wire \temp_result_reg_n_0_[19] ;
  wire \temp_result_reg_n_0_[1] ;
  wire \temp_result_reg_n_0_[20] ;
  wire \temp_result_reg_n_0_[21] ;
  wire \temp_result_reg_n_0_[22] ;
  wire \temp_result_reg_n_0_[23] ;
  wire \temp_result_reg_n_0_[24] ;
  wire \temp_result_reg_n_0_[25] ;
  wire \temp_result_reg_n_0_[26] ;
  wire \temp_result_reg_n_0_[27] ;
  wire \temp_result_reg_n_0_[28] ;
  wire \temp_result_reg_n_0_[29] ;
  wire \temp_result_reg_n_0_[2] ;
  wire \temp_result_reg_n_0_[30] ;
  wire \temp_result_reg_n_0_[31] ;
  wire \temp_result_reg_n_0_[3] ;
  wire \temp_result_reg_n_0_[4] ;
  wire \temp_result_reg_n_0_[5] ;
  wire \temp_result_reg_n_0_[6] ;
  wire \temp_result_reg_n_0_[7] ;
  wire write_out;
  wire write_out_i_1_n_0;
  wire [3:3]\NLW__inferred__4/i___0_carry__0_CO_UNCONNECTED ;
  wire [3:2]NLW_i0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_i0_carry__6_O_UNCONNECTED;
  wire [3:3]NLW_i___0_carry__0_i_8_CO_UNCONNECTED;
  wire [3:2]NLW_k0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_k0_carry__6_O_UNCONNECTED;
  wire [0:0]NLW_minusOp_carry_O_UNCONNECTED;
  wire [3:2]NLW_minusOp_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_minusOp_carry__6_O_UNCONNECTED;
  wire [0:0]\NLW_minusOp_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_minusOp_inferred__1/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_minusOp_inferred__1/i__carry__6_O_UNCONNECTED ;
  wire [3:0]NLW_multOp__15_carry__0_CO_UNCONNECTED;
  wire [3:1]NLW_multOp__15_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_multOp_carry__0_CO_UNCONNECTED;
  wire [0:0]\NLW_multOp_inferred__1/i___0_carry_O_UNCONNECTED ;
  wire [3:3]\NLW_multOp_inferred__1/i___0_carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_multOp_inferred__1/i___15_carry__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_multOp_inferred__1/i___15_carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_multOp_inferred__1/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_multOp_inferred__4/i___20_carry__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_multOp_inferred__4/i___20_carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_multOp_inferred__4/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_multOp_inferred__5/i___15_carry__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_multOp_inferred__5/i___15_carry__0_O_UNCONNECTED ;
  wire [0:0]\NLW_multOp_inferred__5/i__carry_O_UNCONNECTED ;
  wire [3:3]\NLW_multOp_inferred__5/i__carry__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_multOp_inferred__6/i__carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_o_memb_addr_reg[31]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_o_memb_addr_reg[31]_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_o_memb_addr_reg[4]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_state01_carry_O_UNCONNECTED;
  wire [3:0]NLW_state01_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_state01_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_state01_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_state01_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_temp_output[0]00_out_carry__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_temp_output[0]010_out__2_carry__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_temp_output[0]014_out__2_carry__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_temp_output[0]016_out_carry__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_temp_output[0]017_out__0_carry__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_temp_output[0]017_out__0_carry__0_i_8_CO_UNCONNECTED ;
  wire [0:0]\NLW_temp_output[0]017_out__0_carry_i_8_O_UNCONNECTED ;
  wire [3:3]\NLW_temp_output[0]05_out_carry__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_temp_output_reg[0][31]_i_3_CO_UNCONNECTED ;
  wire [3:1]NLW_temp_result0__0_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_temp_result0__0_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_temp_result0__14_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_temp_result0__14_carry__0_O_UNCONNECTED;
  wire [3:1]\NLW_temp_result0_inferred__0/i___0_carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_temp_result0_inferred__0/i___0_carry__0_O_UNCONNECTED ;
  wire [3:1]\NLW_temp_result0_inferred__0/i___14_carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_temp_result0_inferred__0/i___14_carry__0_O_UNCONNECTED ;
  wire [3:1]\NLW_temp_result0_inferred__1/i___0_carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_temp_result0_inferred__1/i___0_carry__0_O_UNCONNECTED ;
  wire [3:1]\NLW_temp_result0_inferred__1/i___14_carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_temp_result0_inferred__1/i___14_carry__0_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_flag[1]_i_1 
       (.I0(write_out),
        .I1(\FSM_onehot_flag_reg_n_0_[1] ),
        .I2(\FSM_onehot_flag_reg_n_0_[2] ),
        .I3(\FSM_onehot_flag_reg_n_0_[3] ),
        .O(\FSM_onehot_flag[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:0001,iSTATE0:0010,iSTATE1:0100,iSTATE2:1000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_flag_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_flag[1]_i_1_n_0 ),
        .Q(\FSM_onehot_flag_reg_n_0_[1] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0001,iSTATE0:0010,iSTATE1:0100,iSTATE2:1000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_flag_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_flag_reg_n_0_[1] ),
        .Q(\FSM_onehot_flag_reg_n_0_[2] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0001,iSTATE0:0010,iSTATE1:0100,iSTATE2:1000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_flag_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_flag_reg_n_0_[2] ),
        .Q(\FSM_onehot_flag_reg_n_0_[3] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__4/i___0_carry 
       (.CI(1'b0),
        .CO({\_inferred__4/i___0_carry_n_0 ,\_inferred__4/i___0_carry_n_1 ,\_inferred__4/i___0_carry_n_2 ,\_inferred__4/i___0_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___0_carry_i_1_n_0,i___0_carry_i_2__1_n_0,i___0_carry_i_3_n_0,i___0_carry_i_4_n_0}),
        .O({\_inferred__4/i___0_carry_n_4 ,\_inferred__4/i___0_carry_n_5 ,\_inferred__4/i___0_carry_n_6 ,\_inferred__4/i___0_carry_n_7 }),
        .S({i___0_carry_i_5_n_0,i___0_carry_i_6_n_0,i___0_carry_i_7_n_0,i___0_carry_i_8__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__4/i___0_carry__0 
       (.CI(\_inferred__4/i___0_carry_n_0 ),
        .CO({\NLW__inferred__4/i___0_carry__0_CO_UNCONNECTED [3],\_inferred__4/i___0_carry__0_n_1 ,\_inferred__4/i___0_carry__0_n_2 ,\_inferred__4/i___0_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i___0_carry__0_i_1_n_0,i___0_carry__0_i_2__1_n_0,i___0_carry__0_i_3_n_0}),
        .O({\_inferred__4/i___0_carry__0_n_4 ,\_inferred__4/i___0_carry__0_n_5 ,\_inferred__4/i___0_carry__0_n_6 ,\_inferred__4/i___0_carry__0_n_7 }),
        .S({i___0_carry__0_i_4_n_0,i___0_carry__0_i_5_n_0,i___0_carry__0_i_6_n_0,i___0_carry__0_i_7_n_0}));
  LUT6 #(
    .INIT(64'h3033333345440000)) 
    \coef_ctr[0]_i_1 
       (.I0(coef_ctr[1]),
        .I1(s_output_adr_0),
        .I2(state0[0]),
        .I3(state0[1]),
        .I4(state0[2]),
        .I5(coef_ctr[0]),
        .O(\coef_ctr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h303333338A880000)) 
    \coef_ctr[1]_i_1 
       (.I0(coef_ctr[0]),
        .I1(s_output_adr_0),
        .I2(state0[0]),
        .I3(state0[1]),
        .I4(state0[2]),
        .I5(coef_ctr[1]),
        .O(\coef_ctr[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \coef_ctr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\coef_ctr[0]_i_1_n_0 ),
        .Q(coef_ctr[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \coef_ctr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\coef_ctr[1]_i_1_n_0 ),
        .Q(coef_ctr[1]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFD40)) 
    first_add_i_1
       (.I0(state0[2]),
        .I1(state0[0]),
        .I2(state0[1]),
        .I3(first_add),
        .O(first_add_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    first_add_reg
       (.C(clk),
        .CE(1'b1),
        .D(first_add_i_1_n_0),
        .Q(first_add),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry
       (.CI(1'b0),
        .CO({i0_carry_n_0,i0_carry_n_1,i0_carry_n_2,i0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\i_reg_n_0_[4] ,\i_reg_n_0_[3] ,\i_reg_n_0_[2] ,1'b0}),
        .O(i0[4:1]),
        .S({i0_carry_i_1_n_0,i0_carry_i_2_n_0,i0_carry_i_3_n_0,\i_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry__0
       (.CI(i0_carry_n_0),
        .CO({i0_carry__0_n_0,i0_carry__0_n_1,i0_carry__0_n_2,i0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\i_reg_n_0_[8] ,\i_reg_n_0_[7] ,\i_reg_n_0_[6] ,\i_reg_n_0_[5] }),
        .O(i0[8:5]),
        .S({i0_carry__0_i_1_n_0,i0_carry__0_i_2_n_0,i0_carry__0_i_3_n_0,i0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__0_i_1
       (.I0(\i_reg_n_0_[8] ),
        .O(i0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__0_i_2
       (.I0(\i_reg_n_0_[7] ),
        .O(i0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__0_i_3
       (.I0(\i_reg_n_0_[6] ),
        .O(i0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__0_i_4
       (.I0(\i_reg_n_0_[5] ),
        .O(i0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry__1
       (.CI(i0_carry__0_n_0),
        .CO({i0_carry__1_n_0,i0_carry__1_n_1,i0_carry__1_n_2,i0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\i_reg_n_0_[12] ,\i_reg_n_0_[11] ,\i_reg_n_0_[10] ,\i_reg_n_0_[9] }),
        .O(i0[12:9]),
        .S({i0_carry__1_i_1_n_0,i0_carry__1_i_2_n_0,i0_carry__1_i_3_n_0,i0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__1_i_1
       (.I0(\i_reg_n_0_[12] ),
        .O(i0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__1_i_2
       (.I0(\i_reg_n_0_[11] ),
        .O(i0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__1_i_3
       (.I0(\i_reg_n_0_[10] ),
        .O(i0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__1_i_4
       (.I0(\i_reg_n_0_[9] ),
        .O(i0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry__2
       (.CI(i0_carry__1_n_0),
        .CO({i0_carry__2_n_0,i0_carry__2_n_1,i0_carry__2_n_2,i0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\i_reg_n_0_[16] ,\i_reg_n_0_[15] ,\i_reg_n_0_[14] ,\i_reg_n_0_[13] }),
        .O(i0[16:13]),
        .S({i0_carry__2_i_1_n_0,i0_carry__2_i_2_n_0,i0_carry__2_i_3_n_0,i0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__2_i_1
       (.I0(\i_reg_n_0_[16] ),
        .O(i0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__2_i_2
       (.I0(\i_reg_n_0_[15] ),
        .O(i0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__2_i_3
       (.I0(\i_reg_n_0_[14] ),
        .O(i0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__2_i_4
       (.I0(\i_reg_n_0_[13] ),
        .O(i0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry__3
       (.CI(i0_carry__2_n_0),
        .CO({i0_carry__3_n_0,i0_carry__3_n_1,i0_carry__3_n_2,i0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({\i_reg_n_0_[20] ,\i_reg_n_0_[19] ,\i_reg_n_0_[18] ,\i_reg_n_0_[17] }),
        .O(i0[20:17]),
        .S({i0_carry__3_i_1_n_0,i0_carry__3_i_2_n_0,i0_carry__3_i_3_n_0,i0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__3_i_1
       (.I0(\i_reg_n_0_[20] ),
        .O(i0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__3_i_2
       (.I0(\i_reg_n_0_[19] ),
        .O(i0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__3_i_3
       (.I0(\i_reg_n_0_[18] ),
        .O(i0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__3_i_4
       (.I0(\i_reg_n_0_[17] ),
        .O(i0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry__4
       (.CI(i0_carry__3_n_0),
        .CO({i0_carry__4_n_0,i0_carry__4_n_1,i0_carry__4_n_2,i0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({\i_reg_n_0_[24] ,\i_reg_n_0_[23] ,\i_reg_n_0_[22] ,\i_reg_n_0_[21] }),
        .O(i0[24:21]),
        .S({i0_carry__4_i_1_n_0,i0_carry__4_i_2_n_0,i0_carry__4_i_3_n_0,i0_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__4_i_1
       (.I0(\i_reg_n_0_[24] ),
        .O(i0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__4_i_2
       (.I0(\i_reg_n_0_[23] ),
        .O(i0_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__4_i_3
       (.I0(\i_reg_n_0_[22] ),
        .O(i0_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__4_i_4
       (.I0(\i_reg_n_0_[21] ),
        .O(i0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry__5
       (.CI(i0_carry__4_n_0),
        .CO({i0_carry__5_n_0,i0_carry__5_n_1,i0_carry__5_n_2,i0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({\i_reg_n_0_[28] ,\i_reg_n_0_[27] ,\i_reg_n_0_[26] ,\i_reg_n_0_[25] }),
        .O(i0[28:25]),
        .S({i0_carry__5_i_1_n_0,i0_carry__5_i_2_n_0,i0_carry__5_i_3_n_0,i0_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__5_i_1
       (.I0(\i_reg_n_0_[28] ),
        .O(i0_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__5_i_2
       (.I0(\i_reg_n_0_[27] ),
        .O(i0_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__5_i_3
       (.I0(\i_reg_n_0_[26] ),
        .O(i0_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__5_i_4
       (.I0(\i_reg_n_0_[25] ),
        .O(i0_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry__6
       (.CI(i0_carry__5_n_0),
        .CO({NLW_i0_carry__6_CO_UNCONNECTED[3:2],i0_carry__6_n_2,i0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\i_reg_n_0_[30] ,\i_reg_n_0_[29] }),
        .O({NLW_i0_carry__6_O_UNCONNECTED[3],i0[31:29]}),
        .S({1'b0,i0_carry__6_i_1_n_0,i0_carry__6_i_2_n_0,i0_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__6_i_1
       (.I0(\i_reg_n_0_[31] ),
        .O(i0_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__6_i_2
       (.I0(\i_reg_n_0_[30] ),
        .O(i0_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry__6_i_3
       (.I0(\i_reg_n_0_[29] ),
        .O(i0_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry_i_1
       (.I0(\i_reg_n_0_[4] ),
        .O(i0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry_i_2
       (.I0(\i_reg_n_0_[3] ),
        .O(i0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i0_carry_i_3
       (.I0(\i_reg_n_0_[2] ),
        .O(i0_carry_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[10]_i_1 
       (.I0(state0[1]),
        .I1(i0[10]),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[11]_i_1 
       (.I0(state0[1]),
        .I1(i0[11]),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[12]_i_1 
       (.I0(state0[1]),
        .I1(i0[12]),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[13]_i_1 
       (.I0(state0[1]),
        .I1(i0[13]),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[14]_i_1 
       (.I0(state0[1]),
        .I1(i0[14]),
        .O(p_1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[15]_i_1 
       (.I0(state0[1]),
        .I1(i0[15]),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[16]_i_1 
       (.I0(state0[1]),
        .I1(i0[16]),
        .O(p_1_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[17]_i_1 
       (.I0(state0[1]),
        .I1(i0[17]),
        .O(p_1_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[18]_i_1 
       (.I0(state0[1]),
        .I1(i0[18]),
        .O(p_1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[19]_i_1 
       (.I0(state0[1]),
        .I1(i0[19]),
        .O(p_1_in[19]));
  LUT2 #(
    .INIT(4'hB)) 
    \i[1]_i_1 
       (.I0(i0[1]),
        .I1(state0[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[20]_i_1 
       (.I0(state0[1]),
        .I1(i0[20]),
        .O(p_1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[21]_i_1 
       (.I0(state0[1]),
        .I1(i0[21]),
        .O(p_1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[22]_i_1 
       (.I0(state0[1]),
        .I1(i0[22]),
        .O(p_1_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[23]_i_1 
       (.I0(state0[1]),
        .I1(i0[23]),
        .O(p_1_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[24]_i_1 
       (.I0(state0[1]),
        .I1(i0[24]),
        .O(p_1_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[25]_i_1 
       (.I0(state0[1]),
        .I1(i0[25]),
        .O(p_1_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[26]_i_1 
       (.I0(state0[1]),
        .I1(i0[26]),
        .O(p_1_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[27]_i_1 
       (.I0(state0[1]),
        .I1(i0[27]),
        .O(p_1_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[28]_i_1 
       (.I0(state0[1]),
        .I1(i0[28]),
        .O(p_1_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[29]_i_1 
       (.I0(state0[1]),
        .I1(i0[29]),
        .O(p_1_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \i[2]_i_1 
       (.I0(i0[2]),
        .I1(state0[1]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[30]_i_1 
       (.I0(state0[1]),
        .I1(i0[30]),
        .O(p_1_in[30]));
  LUT5 #(
    .INIT(32'h88898888)) 
    \i[31]_i_1 
       (.I0(state0[0]),
        .I1(state0[1]),
        .I2(state0[3]),
        .I3(state0[2]),
        .I4(en),
        .O(\i[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[31]_i_2 
       (.I0(state0[1]),
        .I1(i0[31]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[3]_i_1 
       (.I0(state0[1]),
        .I1(i0[3]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \i[4]_i_1 
       (.I0(i0[4]),
        .I1(state0[1]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \i[5]_i_1 
       (.I0(i0[5]),
        .I1(state0[1]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \i[6]_i_1 
       (.I0(i0[6]),
        .I1(state0[1]),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[7]_i_1 
       (.I0(state0[1]),
        .I1(i0[7]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[8]_i_1 
       (.I0(state0[1]),
        .I1(i0[8]),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[9]_i_1 
       (.I0(state0[1]),
        .I1(i0[9]),
        .O(p_1_in[9]));
  LUT6 #(
    .INIT(64'h0017170017000017)) 
    i___0_carry__0_i_1
       (.I0(multOp__15_carry_n_6),
        .I1(i___0_carry__0_i_8_n_7),
        .I2(input_coef_reg_0_3_12_12_n_1),
        .I3(input_coef_reg_0_3_13_13_n_1),
        .I4(i___0_carry__0_i_8_n_6),
        .I5(multOp__15_carry_n_5),
        .O(i___0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    i___0_carry__0_i_10
       (.I0(multOp__15_carry_n_4),
        .I1(i___0_carry__0_i_8_n_5),
        .I2(input_coef_reg_0_3_14_14_n_1),
        .I3(multOp__15_carry__0_n_7),
        .I4(i___0_carry__0_i_8_n_4),
        .I5(input_coef_reg_0_3_15_15_n_1),
        .O(i___0_carry__0_i_10_n_0));
  LUT3 #(
    .INIT(8'h17)) 
    i___0_carry__0_i_11
       (.I0(input_coef_reg_0_3_13_13_n_1),
        .I1(i___0_carry__0_i_8_n_6),
        .I2(multOp__15_carry_n_5),
        .O(i___0_carry__0_i_11_n_0));
  LUT3 #(
    .INIT(8'h17)) 
    i___0_carry__0_i_12
       (.I0(input_coef_reg_0_3_12_12_n_1),
        .I1(i___0_carry__0_i_8_n_7),
        .I2(multOp__15_carry_n_6),
        .O(i___0_carry__0_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h17)) 
    i___0_carry__0_i_13
       (.I0(input_coef_reg_0_3_11_11_n_1),
        .I1(i___0_carry_i_9_n_4),
        .I2(multOp__15_carry_n_7),
        .O(i___0_carry__0_i_13_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___0_carry__0_i_14
       (.I0(A[7]),
        .I1(A[5]),
        .O(i___0_carry__0_i_14_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___0_carry__0_i_15
       (.I0(A[4]),
        .I1(A[6]),
        .O(i___0_carry__0_i_15_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___0_carry__0_i_16
       (.I0(A[3]),
        .I1(A[5]),
        .O(i___0_carry__0_i_16_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___0_carry__0_i_17
       (.I0(A[2]),
        .I1(A[4]),
        .O(i___0_carry__0_i_17_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'hE38A)) 
    i___0_carry__0_i_1__0
       (.I0(L[15]),
        .I1(L[13]),
        .I2(i___0_carry_i_8_n_0),
        .I3(L[14]),
        .O(i___0_carry__0_i_1__0_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'hE38A)) 
    i___0_carry__0_i_1__1
       (.I0(\temp_result_reg_n_0_[23] ),
        .I1(\temp_result_reg_n_0_[21] ),
        .I2(i___0_carry_i_8__0_n_0),
        .I3(\temp_result_reg_n_0_[22] ),
        .O(i___0_carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___0_carry__0_i_1__2
       (.I0(R[7]),
        .I1(R[5]),
        .O(i___0_carry__0_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h9E38)) 
    i___0_carry__0_i_2
       (.I0(L[14]),
        .I1(i___0_carry_i_8_n_0),
        .I2(L[13]),
        .I3(L[15]),
        .O(i___0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h9E38)) 
    i___0_carry__0_i_2__0
       (.I0(\temp_result_reg_n_0_[22] ),
        .I1(i___0_carry_i_8__0_n_0),
        .I2(\temp_result_reg_n_0_[21] ),
        .I3(\temp_result_reg_n_0_[23] ),
        .O(i___0_carry__0_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0017170017000017)) 
    i___0_carry__0_i_2__1
       (.I0(multOp__15_carry_n_7),
        .I1(i___0_carry_i_9_n_4),
        .I2(input_coef_reg_0_3_11_11_n_1),
        .I3(input_coef_reg_0_3_12_12_n_1),
        .I4(i___0_carry__0_i_8_n_7),
        .I5(multOp__15_carry_n_6),
        .O(i___0_carry__0_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___0_carry__0_i_2__2
       (.I0(R[4]),
        .I1(R[6]),
        .O(i___0_carry__0_i_2__2_n_0));
  LUT6 #(
    .INIT(64'h0017170017000017)) 
    i___0_carry__0_i_3
       (.I0(multOp_carry_n_5),
        .I1(i___0_carry_i_9_n_5),
        .I2(input_coef_reg_0_3_10_10_n_1),
        .I3(input_coef_reg_0_3_11_11_n_1),
        .I4(i___0_carry_i_9_n_4),
        .I5(multOp__15_carry_n_7),
        .O(i___0_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'h69A69659)) 
    i___0_carry__0_i_3__0
       (.I0(i___0_carry__0_i_1__0_n_0),
        .I1(i___0_carry_i_8_n_0),
        .I2(L[13]),
        .I3(L[14]),
        .I4(L[15]),
        .O(i___0_carry__0_i_3__0_n_0));
  LUT5 #(
    .INIT(32'h69A69659)) 
    i___0_carry__0_i_3__1
       (.I0(i___0_carry__0_i_1__1_n_0),
        .I1(i___0_carry_i_8__0_n_0),
        .I2(\temp_result_reg_n_0_[21] ),
        .I3(\temp_result_reg_n_0_[22] ),
        .I4(\temp_result_reg_n_0_[23] ),
        .O(i___0_carry__0_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___0_carry__0_i_3__2
       (.I0(R[3]),
        .I1(R[5]),
        .O(i___0_carry__0_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___0_carry__0_i_4
       (.I0(i___0_carry__0_i_9_n_0),
        .I1(i___0_carry__0_i_10_n_0),
        .O(i___0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___0_carry__0_i_4__0
       (.I0(R[2]),
        .I1(R[4]),
        .O(i___0_carry__0_i_4__0_n_0));
  LUT5 #(
    .INIT(32'h69969669)) 
    i___0_carry__0_i_5
       (.I0(i___0_carry__0_i_1_n_0),
        .I1(input_coef_reg_0_3_14_14_n_1),
        .I2(i___0_carry__0_i_8_n_5),
        .I3(multOp__15_carry_n_4),
        .I4(i___0_carry__0_i_11_n_0),
        .O(i___0_carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'h69969669)) 
    i___0_carry__0_i_6
       (.I0(i___0_carry__0_i_2__1_n_0),
        .I1(input_coef_reg_0_3_13_13_n_1),
        .I2(i___0_carry__0_i_8_n_6),
        .I3(multOp__15_carry_n_5),
        .I4(i___0_carry__0_i_12_n_0),
        .O(i___0_carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'h69969669)) 
    i___0_carry__0_i_7
       (.I0(i___0_carry__0_i_3_n_0),
        .I1(input_coef_reg_0_3_12_12_n_1),
        .I2(i___0_carry__0_i_8_n_7),
        .I3(multOp__15_carry_n_6),
        .I4(i___0_carry__0_i_13_n_0),
        .O(i___0_carry__0_i_7_n_0));
  CARRY4 i___0_carry__0_i_8
       (.CI(i___0_carry_i_9_n_0),
        .CO({NLW_i___0_carry__0_i_8_CO_UNCONNECTED[3],i___0_carry__0_i_8_n_1,i___0_carry__0_i_8_n_2,i___0_carry__0_i_8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,A[4:2]}),
        .O({i___0_carry__0_i_8_n_4,i___0_carry__0_i_8_n_5,i___0_carry__0_i_8_n_6,i___0_carry__0_i_8_n_7}),
        .S({i___0_carry__0_i_14_n_0,i___0_carry__0_i_15_n_0,i___0_carry__0_i_16_n_0,i___0_carry__0_i_17_n_0}));
  LUT6 #(
    .INIT(64'h0017170017000017)) 
    i___0_carry__0_i_9
       (.I0(multOp__15_carry_n_5),
        .I1(i___0_carry__0_i_8_n_6),
        .I2(input_coef_reg_0_3_13_13_n_1),
        .I3(input_coef_reg_0_3_14_14_n_1),
        .I4(i___0_carry__0_i_8_n_5),
        .I5(multOp__15_carry_n_4),
        .O(i___0_carry__0_i_9_n_0));
  LUT5 #(
    .INIT(32'h07707007)) 
    i___0_carry_i_1
       (.I0(i___0_carry_i_9_n_6),
        .I1(multOp_carry_n_6),
        .I2(input_coef_reg_0_3_10_10_n_1),
        .I3(i___0_carry_i_9_n_5),
        .I4(multOp_carry_n_5),
        .O(i___0_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h96)) 
    i___0_carry_i_10
       (.I0(multOp__15_carry_n_7),
        .I1(i___0_carry_i_9_n_4),
        .I2(input_coef_reg_0_3_11_11_n_1),
        .O(i___0_carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___0_carry_i_11
       (.I0(A[1]),
        .I1(A[3]),
        .O(i___0_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___0_carry_i_12
       (.I0(A[0]),
        .I1(A[2]),
        .O(i___0_carry_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___0_carry_i_13
       (.I0(A[1]),
        .O(i___0_carry_i_13_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'hA208)) 
    i___0_carry_i_1__0
       (.I0(L[15]),
        .I1(L[13]),
        .I2(i___0_carry_i_8_n_0),
        .I3(L[14]),
        .O(i___0_carry_i_1__0_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'hA208)) 
    i___0_carry_i_1__1
       (.I0(\temp_result_reg_n_0_[23] ),
        .I1(\temp_result_reg_n_0_[21] ),
        .I2(i___0_carry_i_8__0_n_0),
        .I3(\temp_result_reg_n_0_[22] ),
        .O(i___0_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___0_carry_i_1__2
       (.I0(R[1]),
        .I1(R[3]),
        .O(i___0_carry_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h45BA)) 
    i___0_carry_i_2
       (.I0(L[14]),
        .I1(i___0_carry_i_8_n_0),
        .I2(L[13]),
        .I3(L[15]),
        .O(i___0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h45BA)) 
    i___0_carry_i_2__0
       (.I0(\temp_result_reg_n_0_[22] ),
        .I1(i___0_carry_i_8__0_n_0),
        .I2(\temp_result_reg_n_0_[21] ),
        .I3(\temp_result_reg_n_0_[23] ),
        .O(i___0_carry_i_2__0_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'h41)) 
    i___0_carry_i_2__1
       (.I0(input_coef_reg_0_3_9_9_n_1),
        .I1(i___0_carry_i_9_n_6),
        .I2(multOp_carry_n_6),
        .O(i___0_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___0_carry_i_2__2
       (.I0(R[0]),
        .I1(R[2]),
        .O(i___0_carry_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    i___0_carry_i_3
       (.I0(p_0_in[0]),
        .I1(i___0_carry_i_9_n_7),
        .O(i___0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___0_carry_i_3__0
       (.I0(R[1]),
        .O(i___0_carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    i___0_carry_i_3__1
       (.I0(L[11]),
        .I1(L[8]),
        .I2(L[9]),
        .I3(L[10]),
        .I4(L[12]),
        .I5(L[13]),
        .O(i___0_carry_i_3__1_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    i___0_carry_i_3__2
       (.I0(\temp_result_reg_n_0_[19] ),
        .I1(\temp_result_reg_n_0_[16] ),
        .I2(\temp_result_reg_n_0_[17] ),
        .I3(\temp_result_reg_n_0_[18] ),
        .I4(\temp_result_reg_n_0_[20] ),
        .I5(\temp_result_reg_n_0_[21] ),
        .O(i___0_carry_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___0_carry_i_4
       (.I0(i___0_carry_i_9_n_7),
        .I1(p_0_in[0]),
        .O(i___0_carry_i_4_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT5 #(
    .INIT(32'h699A9665)) 
    i___0_carry_i_4__0
       (.I0(L[15]),
        .I1(L[13]),
        .I2(i___0_carry_i_8_n_0),
        .I3(L[14]),
        .I4(i___0_carry_i_1__0_n_0),
        .O(i___0_carry_i_4__0_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT5 #(
    .INIT(32'h699A9665)) 
    i___0_carry_i_4__1
       (.I0(\temp_result_reg_n_0_[23] ),
        .I1(\temp_result_reg_n_0_[21] ),
        .I2(i___0_carry_i_8__0_n_0),
        .I3(\temp_result_reg_n_0_[22] ),
        .I4(i___0_carry_i_1__1_n_0),
        .O(i___0_carry_i_4__1_n_0));
  LUT6 #(
    .INIT(64'h0F7878F078F0F087)) 
    i___0_carry_i_5
       (.I0(multOp_carry_n_6),
        .I1(i___0_carry_i_9_n_6),
        .I2(i___0_carry_i_10_n_0),
        .I3(multOp_carry_n_5),
        .I4(i___0_carry_i_9_n_5),
        .I5(input_coef_reg_0_3_10_10_n_1),
        .O(i___0_carry_i_5_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h9665)) 
    i___0_carry_i_5__0
       (.I0(L[15]),
        .I1(L[13]),
        .I2(i___0_carry_i_8_n_0),
        .I3(L[14]),
        .O(i___0_carry_i_5__0_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h9665)) 
    i___0_carry_i_5__1
       (.I0(\temp_result_reg_n_0_[23] ),
        .I1(\temp_result_reg_n_0_[21] ),
        .I2(i___0_carry_i_8__0_n_0),
        .I3(\temp_result_reg_n_0_[22] ),
        .O(i___0_carry_i_5__1_n_0));
  LUT6 #(
    .INIT(64'h9669699669966996)) 
    i___0_carry_i_6
       (.I0(i___0_carry_i_2__1_n_0),
        .I1(multOp_carry_n_5),
        .I2(i___0_carry_i_9_n_5),
        .I3(input_coef_reg_0_3_10_10_n_1),
        .I4(multOp_carry_n_6),
        .I5(i___0_carry_i_9_n_6),
        .O(i___0_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h4B)) 
    i___0_carry_i_6__0
       (.I0(L[13]),
        .I1(i___0_carry_i_8_n_0),
        .I2(L[14]),
        .O(i___0_carry_i_6__0_n_0));
  LUT3 #(
    .INIT(8'h4B)) 
    i___0_carry_i_6__1
       (.I0(\temp_result_reg_n_0_[21] ),
        .I1(i___0_carry_i_8__0_n_0),
        .I2(\temp_result_reg_n_0_[22] ),
        .O(i___0_carry_i_6__1_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT5 #(
    .INIT(32'h96696969)) 
    i___0_carry_i_7
       (.I0(input_coef_reg_0_3_9_9_n_1),
        .I1(i___0_carry_i_9_n_6),
        .I2(multOp_carry_n_6),
        .I3(i___0_carry_i_9_n_7),
        .I4(p_0_in[0]),
        .O(i___0_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    i___0_carry_i_7__0
       (.I0(L[11]),
        .I1(L[8]),
        .I2(L[9]),
        .I3(L[10]),
        .I4(L[12]),
        .I5(L[13]),
        .O(i___0_carry_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    i___0_carry_i_7__1
       (.I0(\temp_result_reg_n_0_[19] ),
        .I1(\temp_result_reg_n_0_[16] ),
        .I2(\temp_result_reg_n_0_[17] ),
        .I3(\temp_result_reg_n_0_[18] ),
        .I4(\temp_result_reg_n_0_[20] ),
        .I5(\temp_result_reg_n_0_[21] ),
        .O(i___0_carry_i_7__1_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    i___0_carry_i_8
       (.I0(L[12]),
        .I1(L[10]),
        .I2(L[9]),
        .I3(L[8]),
        .I4(L[11]),
        .O(i___0_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    i___0_carry_i_8__0
       (.I0(\temp_result_reg_n_0_[20] ),
        .I1(\temp_result_reg_n_0_[18] ),
        .I2(\temp_result_reg_n_0_[17] ),
        .I3(\temp_result_reg_n_0_[16] ),
        .I4(\temp_result_reg_n_0_[19] ),
        .O(i___0_carry_i_8__0_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___0_carry_i_8__1
       (.I0(p_0_in[0]),
        .I1(i___0_carry_i_9_n_7),
        .I2(input_coef_reg_0_3_8_8_n_1),
        .O(i___0_carry_i_8__1_n_0));
  CARRY4 i___0_carry_i_9
       (.CI(1'b0),
        .CO({i___0_carry_i_9_n_0,i___0_carry_i_9_n_1,i___0_carry_i_9_n_2,i___0_carry_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({A[1:0],1'b0,1'b1}),
        .O({i___0_carry_i_9_n_4,i___0_carry_i_9_n_5,i___0_carry_i_9_n_6,i___0_carry_i_9_n_7}),
        .S({i___0_carry_i_11_n_0,i___0_carry_i_12_n_0,i___0_carry_i_13_n_0,A[0]}));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    i___14_carry__0_i_1
       (.I0(L[11]),
        .I1(L[8]),
        .I2(L[9]),
        .I3(L[10]),
        .I4(L[12]),
        .O(i___14_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    i___14_carry__0_i_1__0
       (.I0(\temp_result_reg_n_0_[19] ),
        .I1(\temp_result_reg_n_0_[16] ),
        .I2(\temp_result_reg_n_0_[17] ),
        .I3(\temp_result_reg_n_0_[18] ),
        .I4(\temp_result_reg_n_0_[20] ),
        .O(plusOp[4]));
  LUT2 #(
    .INIT(4'h9)) 
    i___14_carry__0_i_2
       (.I0(i___0_carry_i_3__1_n_0),
        .I1(\temp_result0_inferred__0/i___0_carry__0_n_6 ),
        .O(i___14_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___14_carry__0_i_2__0
       (.I0(i___0_carry_i_3__2_n_0),
        .I1(\temp_result0_inferred__1/i___0_carry__0_n_6 ),
        .O(i___14_carry__0_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAA955555556)) 
    i___14_carry__0_i_3
       (.I0(L[12]),
        .I1(L[10]),
        .I2(L[9]),
        .I3(L[8]),
        .I4(L[11]),
        .I5(\temp_result0_inferred__0/i___0_carry__0_n_7 ),
        .O(i___14_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAA955555556)) 
    i___14_carry__0_i_3__0
       (.I0(\temp_result_reg_n_0_[20] ),
        .I1(\temp_result_reg_n_0_[18] ),
        .I2(\temp_result_reg_n_0_[17] ),
        .I3(\temp_result_reg_n_0_[16] ),
        .I4(\temp_result_reg_n_0_[19] ),
        .I5(\temp_result0_inferred__1/i___0_carry__0_n_7 ),
        .O(i___14_carry__0_i_3__0_n_0));
  LUT4 #(
    .INIT(16'hFE01)) 
    i___14_carry_i_1
       (.I0(L[10]),
        .I1(L[9]),
        .I2(L[8]),
        .I3(L[11]),
        .O(i___14_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'hFE01)) 
    i___14_carry_i_1__0
       (.I0(\temp_result_reg_n_0_[18] ),
        .I1(\temp_result_reg_n_0_[17] ),
        .I2(\temp_result_reg_n_0_[16] ),
        .I3(\temp_result_reg_n_0_[19] ),
        .O(plusOp[3]));
  LUT3 #(
    .INIT(8'hE1)) 
    i___14_carry_i_2
       (.I0(L[8]),
        .I1(L[9]),
        .I2(L[10]),
        .O(i___14_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    i___14_carry_i_2__0
       (.I0(\temp_result_reg_n_0_[16] ),
        .I1(\temp_result_reg_n_0_[17] ),
        .I2(\temp_result_reg_n_0_[18] ),
        .O(plusOp[2]));
  LUT2 #(
    .INIT(4'h9)) 
    i___14_carry_i_3
       (.I0(L[8]),
        .I1(L[9]),
        .O(i___14_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___14_carry_i_3__0
       (.I0(\temp_result_reg_n_0_[16] ),
        .I1(\temp_result_reg_n_0_[17] ),
        .O(i___14_carry_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___14_carry_i_4
       (.I0(L[8]),
        .O(i___14_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___14_carry_i_4__0
       (.I0(\temp_result_reg_n_0_[16] ),
        .O(plusOp[0]));
  LUT5 #(
    .INIT(32'hAAA95556)) 
    i___14_carry_i_5
       (.I0(L[11]),
        .I1(L[8]),
        .I2(L[9]),
        .I3(L[10]),
        .I4(\temp_result0_inferred__0/i___0_carry_n_4 ),
        .O(i___14_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'hAAA95556)) 
    i___14_carry_i_5__0
       (.I0(\temp_result_reg_n_0_[19] ),
        .I1(\temp_result_reg_n_0_[16] ),
        .I2(\temp_result_reg_n_0_[17] ),
        .I3(\temp_result_reg_n_0_[18] ),
        .I4(\temp_result0_inferred__1/i___0_carry_n_4 ),
        .O(i___14_carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'hA956)) 
    i___14_carry_i_6
       (.I0(L[10]),
        .I1(L[9]),
        .I2(L[8]),
        .I3(\temp_result0_inferred__0/i___0_carry_n_5 ),
        .O(i___14_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'hA956)) 
    i___14_carry_i_6__0
       (.I0(\temp_result_reg_n_0_[18] ),
        .I1(\temp_result_reg_n_0_[17] ),
        .I2(\temp_result_reg_n_0_[16] ),
        .I3(\temp_result0_inferred__1/i___0_carry_n_5 ),
        .O(i___14_carry_i_6__0_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___14_carry_i_7
       (.I0(L[9]),
        .I1(L[8]),
        .I2(\temp_result0_inferred__0/i___0_carry_n_6 ),
        .O(i___14_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___14_carry_i_7__0
       (.I0(\temp_result_reg_n_0_[17] ),
        .I1(\temp_result_reg_n_0_[16] ),
        .I2(\temp_result0_inferred__1/i___0_carry_n_6 ),
        .O(i___14_carry_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___14_carry_i_8
       (.I0(L[8]),
        .I1(\temp_result0_inferred__0/i___0_carry_n_7 ),
        .O(i___14_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___14_carry_i_8__0
       (.I0(\temp_result_reg_n_0_[16] ),
        .I1(\temp_result0_inferred__1/i___0_carry_n_7 ),
        .O(i___14_carry_i_8__0_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    i___15_carry__0_i_1
       (.I0(R[1]),
        .I1(\multOp_inferred__1/i__carry__0_n_5 ),
        .I2(R[3]),
        .I3(R[2]),
        .I4(\multOp_inferred__1/i__carry__0_n_4 ),
        .I5(R[4]),
        .O(i___15_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9669696996969669)) 
    i___15_carry__0_i_1__0
       (.I0(\multOp_inferred__5/i__carry__0_n_4 ),
        .I1(A[4]),
        .I2(A[2]),
        .I3(A[1]),
        .I4(\multOp_inferred__5/i__carry__0_n_5 ),
        .I5(A[3]),
        .O(i___15_carry__0_i_1__0_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    i___15_carry_i_1
       (.I0(R[2]),
        .I1(\multOp_inferred__1/i__carry__0_n_6 ),
        .I2(R[0]),
        .O(i___15_carry_i_1_n_0));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    i___15_carry_i_1__0
       (.I0(A[2]),
        .I1(\multOp_inferred__5/i__carry__0_n_6 ),
        .I2(A[0]),
        .O(i___15_carry_i_1__0_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    i___15_carry_i_2
       (.I0(R[0]),
        .I1(R[2]),
        .I2(\multOp_inferred__1/i__carry__0_n_6 ),
        .O(i___15_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    i___15_carry_i_2__0
       (.I0(A[0]),
        .I1(A[2]),
        .I2(\multOp_inferred__5/i__carry__0_n_6 ),
        .O(i___15_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i___15_carry_i_3
       (.I0(\multOp_inferred__1/i__carry_n_4 ),
        .I1(R[0]),
        .O(i___15_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i___15_carry_i_3__0
       (.I0(\multOp_inferred__5/i__carry_n_4 ),
        .I1(A[0]),
        .O(i___15_carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    i___15_carry_i_4
       (.I0(i___15_carry_i_1_n_0),
        .I1(\multOp_inferred__1/i__carry__0_n_5 ),
        .I2(R[3]),
        .I3(R[1]),
        .O(i___15_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    i___15_carry_i_4__0
       (.I0(i___15_carry_i_1__0_n_0),
        .I1(\multOp_inferred__5/i__carry__0_n_5 ),
        .I2(A[3]),
        .I3(A[1]),
        .O(i___15_carry_i_4__0_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT5 #(
    .INIT(32'h69966969)) 
    i___15_carry_i_5
       (.I0(R[2]),
        .I1(\multOp_inferred__1/i__carry__0_n_6 ),
        .I2(R[0]),
        .I3(R[1]),
        .I4(\multOp_inferred__1/i__carry__0_n_7 ),
        .O(i___15_carry_i_5_n_0));
  (* HLUTNM = "lutpair14" *) 
  LUT5 #(
    .INIT(32'h69966969)) 
    i___15_carry_i_5__0
       (.I0(A[2]),
        .I1(\multOp_inferred__5/i__carry__0_n_6 ),
        .I2(A[0]),
        .I3(A[1]),
        .I4(\multOp_inferred__5/i__carry__0_n_7 ),
        .O(i___15_carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    i___15_carry_i_6
       (.I0(R[0]),
        .I1(\multOp_inferred__1/i__carry_n_4 ),
        .I2(R[1]),
        .I3(\multOp_inferred__1/i__carry__0_n_7 ),
        .O(i___15_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    i___15_carry_i_6__0
       (.I0(A[0]),
        .I1(\multOp_inferred__5/i__carry_n_4 ),
        .I2(A[1]),
        .I3(\multOp_inferred__5/i__carry__0_n_7 ),
        .O(i___15_carry_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___15_carry_i_7
       (.I0(R[0]),
        .I1(\multOp_inferred__1/i__carry_n_4 ),
        .O(i___15_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___15_carry_i_7__0
       (.I0(A[0]),
        .I1(\multOp_inferred__5/i__carry_n_4 ),
        .O(i___15_carry_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    i___20_carry__0_i_1
       (.I0(R[9]),
        .I1(\multOp_inferred__4/i__carry__0_n_5 ),
        .I2(R[11]),
        .I3(R[12]),
        .I4(\multOp_inferred__4/i__carry__0_n_4 ),
        .I5(R[10]),
        .O(i___20_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    i___20_carry_i_1
       (.I0(R[10]),
        .I1(\multOp_inferred__4/i__carry__0_n_6 ),
        .I2(R[8]),
        .O(i___20_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    i___20_carry_i_2
       (.I0(R[8]),
        .I1(\multOp_inferred__4/i__carry__0_n_6 ),
        .I2(R[10]),
        .O(i___20_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i___20_carry_i_3
       (.I0(\multOp_inferred__4/i__carry_n_4 ),
        .I1(R[8]),
        .O(i___20_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    i___20_carry_i_4
       (.I0(i___20_carry_i_1_n_0),
        .I1(R[11]),
        .I2(\multOp_inferred__4/i__carry__0_n_5 ),
        .I3(R[9]),
        .O(i___20_carry_i_4_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT5 #(
    .INIT(32'h69966969)) 
    i___20_carry_i_5
       (.I0(R[10]),
        .I1(\multOp_inferred__4/i__carry__0_n_6 ),
        .I2(R[8]),
        .I3(R[9]),
        .I4(\multOp_inferred__4/i__carry__0_n_7 ),
        .O(i___20_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    i___20_carry_i_6
       (.I0(R[8]),
        .I1(\multOp_inferred__4/i__carry_n_4 ),
        .I2(\multOp_inferred__4/i__carry__0_n_7 ),
        .I3(R[9]),
        .O(i___20_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___20_carry_i_7
       (.I0(R[8]),
        .I1(\multOp_inferred__4/i__carry_n_4 ),
        .O(i___20_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_1
       (.I0(\k_reg_n_0_[7] ),
        .I1(s_output_adr[7]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__0
       (.I0(input_coef_reg_0_3_13_13_n_1),
        .I1(input_coef_reg_0_3_15_15_n_1),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__1
       (.I0(A[7]),
        .I1(A[5]),
        .O(i__carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__2
       (.I0(R[13]),
        .I1(R[15]),
        .O(i__carry__0_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__3
       (.I0(R[7]),
        .I1(R[5]),
        .O(i__carry__0_i_1__3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_2
       (.I0(\k_reg_n_0_[6] ),
        .I1(s_output_adr[6]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__0
       (.I0(input_coef_reg_0_3_12_12_n_1),
        .I1(input_coef_reg_0_3_14_14_n_1),
        .O(i__carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__1
       (.I0(A[4]),
        .I1(A[6]),
        .O(i__carry__0_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__2
       (.I0(R[12]),
        .I1(R[14]),
        .O(i__carry__0_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__3
       (.I0(R[4]),
        .I1(R[6]),
        .O(i__carry__0_i_2__3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_3
       (.I0(\k_reg_n_0_[5] ),
        .I1(s_output_adr[5]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__0
       (.I0(input_coef_reg_0_3_11_11_n_1),
        .I1(input_coef_reg_0_3_13_13_n_1),
        .O(i__carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__1
       (.I0(A[3]),
        .I1(A[5]),
        .O(i__carry__0_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__2
       (.I0(R[11]),
        .I1(R[13]),
        .O(i__carry__0_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__3
       (.I0(R[3]),
        .I1(R[5]),
        .O(i__carry__0_i_3__3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_4
       (.I0(\k_reg_n_0_[4] ),
        .I1(s_output_adr[4]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4__0
       (.I0(input_coef_reg_0_3_10_10_n_1),
        .I1(input_coef_reg_0_3_12_12_n_1),
        .O(i__carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4__1
       (.I0(A[2]),
        .I1(A[4]),
        .O(i__carry__0_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4__2
       (.I0(R[10]),
        .I1(R[12]),
        .O(i__carry__0_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4__3
       (.I0(R[2]),
        .I1(R[4]),
        .O(i__carry__0_i_4__3_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__0_i_5
       (.I0(s_output_adr[7]),
        .I1(\k_reg_n_0_[7] ),
        .I2(s_output_adr[8]),
        .I3(\k_reg_n_0_[8] ),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__0_i_6
       (.I0(s_output_adr[6]),
        .I1(\k_reg_n_0_[6] ),
        .I2(s_output_adr[7]),
        .I3(\k_reg_n_0_[7] ),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__0_i_7
       (.I0(s_output_adr[5]),
        .I1(\k_reg_n_0_[5] ),
        .I2(s_output_adr[6]),
        .I3(\k_reg_n_0_[6] ),
        .O(i__carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__0_i_8
       (.I0(s_output_adr[4]),
        .I1(\k_reg_n_0_[4] ),
        .I2(s_output_adr[5]),
        .I3(\k_reg_n_0_[5] ),
        .O(i__carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_1
       (.I0(\k_reg_n_0_[11] ),
        .I1(s_output_adr[11]),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_2
       (.I0(\k_reg_n_0_[10] ),
        .I1(s_output_adr[10]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_3
       (.I0(\k_reg_n_0_[9] ),
        .I1(s_output_adr[9]),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_4
       (.I0(\k_reg_n_0_[8] ),
        .I1(s_output_adr[8]),
        .O(i__carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__1_i_5
       (.I0(s_output_adr[11]),
        .I1(\k_reg_n_0_[11] ),
        .I2(s_output_adr[12]),
        .I3(\k_reg_n_0_[12] ),
        .O(i__carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__1_i_6
       (.I0(s_output_adr[10]),
        .I1(\k_reg_n_0_[10] ),
        .I2(s_output_adr[11]),
        .I3(\k_reg_n_0_[11] ),
        .O(i__carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__1_i_7
       (.I0(s_output_adr[9]),
        .I1(\k_reg_n_0_[9] ),
        .I2(s_output_adr[10]),
        .I3(\k_reg_n_0_[10] ),
        .O(i__carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__1_i_8
       (.I0(s_output_adr[8]),
        .I1(\k_reg_n_0_[8] ),
        .I2(s_output_adr[9]),
        .I3(\k_reg_n_0_[9] ),
        .O(i__carry__1_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_1
       (.I0(\k_reg_n_0_[15] ),
        .I1(s_output_adr[15]),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_2
       (.I0(\k_reg_n_0_[14] ),
        .I1(s_output_adr[14]),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_3
       (.I0(\k_reg_n_0_[13] ),
        .I1(s_output_adr[13]),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_4
       (.I0(\k_reg_n_0_[12] ),
        .I1(s_output_adr[12]),
        .O(i__carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__2_i_5
       (.I0(s_output_adr[15]),
        .I1(\k_reg_n_0_[15] ),
        .I2(s_output_adr[16]),
        .I3(\k_reg_n_0_[16] ),
        .O(i__carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__2_i_6
       (.I0(s_output_adr[14]),
        .I1(\k_reg_n_0_[14] ),
        .I2(s_output_adr[15]),
        .I3(\k_reg_n_0_[15] ),
        .O(i__carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__2_i_7
       (.I0(s_output_adr[13]),
        .I1(\k_reg_n_0_[13] ),
        .I2(s_output_adr[14]),
        .I3(\k_reg_n_0_[14] ),
        .O(i__carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__2_i_8
       (.I0(s_output_adr[12]),
        .I1(\k_reg_n_0_[12] ),
        .I2(s_output_adr[13]),
        .I3(\k_reg_n_0_[13] ),
        .O(i__carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__3_i_1
       (.I0(\k_reg_n_0_[19] ),
        .I1(s_output_adr[19]),
        .O(i__carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__3_i_2
       (.I0(\k_reg_n_0_[18] ),
        .I1(s_output_adr[18]),
        .O(i__carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__3_i_3
       (.I0(\k_reg_n_0_[17] ),
        .I1(s_output_adr[17]),
        .O(i__carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__3_i_4
       (.I0(\k_reg_n_0_[16] ),
        .I1(s_output_adr[16]),
        .O(i__carry__3_i_4_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__3_i_5
       (.I0(s_output_adr[19]),
        .I1(\k_reg_n_0_[19] ),
        .I2(s_output_adr[20]),
        .I3(\k_reg_n_0_[20] ),
        .O(i__carry__3_i_5_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__3_i_6
       (.I0(s_output_adr[18]),
        .I1(\k_reg_n_0_[18] ),
        .I2(s_output_adr[19]),
        .I3(\k_reg_n_0_[19] ),
        .O(i__carry__3_i_6_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__3_i_7
       (.I0(s_output_adr[17]),
        .I1(\k_reg_n_0_[17] ),
        .I2(s_output_adr[18]),
        .I3(\k_reg_n_0_[18] ),
        .O(i__carry__3_i_7_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__3_i_8
       (.I0(s_output_adr[16]),
        .I1(\k_reg_n_0_[16] ),
        .I2(s_output_adr[17]),
        .I3(\k_reg_n_0_[17] ),
        .O(i__carry__3_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__4_i_1
       (.I0(\k_reg_n_0_[23] ),
        .I1(s_output_adr[23]),
        .O(i__carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__4_i_2
       (.I0(\k_reg_n_0_[22] ),
        .I1(s_output_adr[22]),
        .O(i__carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__4_i_3
       (.I0(\k_reg_n_0_[21] ),
        .I1(s_output_adr[21]),
        .O(i__carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__4_i_4
       (.I0(\k_reg_n_0_[20] ),
        .I1(s_output_adr[20]),
        .O(i__carry__4_i_4_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__4_i_5
       (.I0(s_output_adr[23]),
        .I1(\k_reg_n_0_[23] ),
        .I2(s_output_adr[24]),
        .I3(\k_reg_n_0_[24] ),
        .O(i__carry__4_i_5_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__4_i_6
       (.I0(s_output_adr[22]),
        .I1(\k_reg_n_0_[22] ),
        .I2(s_output_adr[23]),
        .I3(\k_reg_n_0_[23] ),
        .O(i__carry__4_i_6_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__4_i_7
       (.I0(s_output_adr[21]),
        .I1(\k_reg_n_0_[21] ),
        .I2(s_output_adr[22]),
        .I3(\k_reg_n_0_[22] ),
        .O(i__carry__4_i_7_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__4_i_8
       (.I0(s_output_adr[20]),
        .I1(\k_reg_n_0_[20] ),
        .I2(s_output_adr[21]),
        .I3(\k_reg_n_0_[21] ),
        .O(i__carry__4_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__5_i_1
       (.I0(\k_reg_n_0_[27] ),
        .I1(s_output_adr[27]),
        .O(i__carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__5_i_2
       (.I0(\k_reg_n_0_[26] ),
        .I1(s_output_adr[26]),
        .O(i__carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__5_i_3
       (.I0(\k_reg_n_0_[25] ),
        .I1(s_output_adr[25]),
        .O(i__carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__5_i_4
       (.I0(\k_reg_n_0_[24] ),
        .I1(s_output_adr[24]),
        .O(i__carry__5_i_4_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__5_i_5
       (.I0(s_output_adr[27]),
        .I1(\k_reg_n_0_[27] ),
        .I2(s_output_adr[28]),
        .I3(\k_reg_n_0_[28] ),
        .O(i__carry__5_i_5_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__5_i_6
       (.I0(s_output_adr[26]),
        .I1(\k_reg_n_0_[26] ),
        .I2(s_output_adr[27]),
        .I3(\k_reg_n_0_[27] ),
        .O(i__carry__5_i_6_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__5_i_7
       (.I0(s_output_adr[25]),
        .I1(\k_reg_n_0_[25] ),
        .I2(s_output_adr[26]),
        .I3(\k_reg_n_0_[26] ),
        .O(i__carry__5_i_7_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__5_i_8
       (.I0(s_output_adr[24]),
        .I1(\k_reg_n_0_[24] ),
        .I2(s_output_adr[25]),
        .I3(\k_reg_n_0_[25] ),
        .O(i__carry__5_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__6_i_1
       (.I0(\k_reg_n_0_[29] ),
        .I1(s_output_adr[29]),
        .O(i__carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__6_i_2
       (.I0(\k_reg_n_0_[28] ),
        .I1(s_output_adr[28]),
        .O(i__carry__6_i_2_n_0));
  LUT3 #(
    .INIT(8'hA9)) 
    i__carry__6_i_3
       (.I0(s_output_adr[31]),
        .I1(s_output_adr[30]),
        .I2(\k_reg_n_0_[30] ),
        .O(i__carry__6_i_3_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__6_i_4
       (.I0(s_output_adr[29]),
        .I1(\k_reg_n_0_[29] ),
        .I2(s_output_adr[30]),
        .I3(\k_reg_n_0_[30] ),
        .O(i__carry__6_i_4_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__6_i_5
       (.I0(s_output_adr[28]),
        .I1(\k_reg_n_0_[28] ),
        .I2(s_output_adr[29]),
        .I3(\k_reg_n_0_[29] ),
        .O(i__carry__6_i_5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_1
       (.I0(\k_reg_n_0_[3] ),
        .I1(s_output_adr[3]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__0
       (.I0(input_coef_reg_0_3_9_9_n_1),
        .I1(input_coef_reg_0_3_11_11_n_1),
        .O(i__carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__1
       (.I0(A[1]),
        .I1(A[3]),
        .O(i__carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__2
       (.I0(R[9]),
        .I1(R[11]),
        .O(i__carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__3
       (.I0(R[1]),
        .I1(R[3]),
        .O(i__carry_i_1__3_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry_i_2
       (.I0(s_output_adr[3]),
        .I1(\k_reg_n_0_[3] ),
        .I2(s_output_adr[4]),
        .I3(\k_reg_n_0_[4] ),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__0
       (.I0(input_coef_reg_0_3_8_8_n_1),
        .I1(input_coef_reg_0_3_10_10_n_1),
        .O(i__carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__1
       (.I0(A[0]),
        .I1(A[2]),
        .O(i__carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__2
       (.I0(R[8]),
        .I1(R[10]),
        .O(i__carry_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__3
       (.I0(R[0]),
        .I1(R[2]),
        .O(i__carry_i_2__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3
       (.I0(input_coef_reg_0_3_9_9_n_1),
        .O(p_2_in));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3__0
       (.I0(A[1]),
        .O(i__carry_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3__1
       (.I0(R[9]),
        .O(i__carry_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3__2
       (.I0(R[1]),
        .O(i__carry_i_3__2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry_i_3__3
       (.I0(s_output_adr[3]),
        .I1(\k_reg_n_0_[3] ),
        .I2(\k_reg_n_0_[2] ),
        .O(i__carry_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4
       (.I0(\k_reg_n_0_[2] ),
        .I1(s_output_adr[2]),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_5
       (.I0(s_output_adr[1]),
        .I1(\k_reg_n_0_[1] ),
        .O(i__carry_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[10] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(\i_reg_n_0_[10] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[11] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(\i_reg_n_0_[11] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[12] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(\i_reg_n_0_[12] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[13] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(\i_reg_n_0_[13] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[14] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(\i_reg_n_0_[14] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[15] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(\i_reg_n_0_[15] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[16] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(p_1_in[16]),
        .Q(\i_reg_n_0_[16] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[17] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(p_1_in[17]),
        .Q(\i_reg_n_0_[17] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[18] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(p_1_in[18]),
        .Q(\i_reg_n_0_[18] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[19] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(p_1_in[19]),
        .Q(\i_reg_n_0_[19] ),
        .R(rst));
  FDSE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\i_reg_n_0_[1] ),
        .S(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[20] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(p_1_in[20]),
        .Q(\i_reg_n_0_[20] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[21] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(p_1_in[21]),
        .Q(\i_reg_n_0_[21] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[22] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(p_1_in[22]),
        .Q(\i_reg_n_0_[22] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[23] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(p_1_in[23]),
        .Q(\i_reg_n_0_[23] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[24] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(p_1_in[24]),
        .Q(\i_reg_n_0_[24] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[25] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(p_1_in[25]),
        .Q(\i_reg_n_0_[25] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[26] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(p_1_in[26]),
        .Q(\i_reg_n_0_[26] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[27] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(p_1_in[27]),
        .Q(\i_reg_n_0_[27] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[28] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(p_1_in[28]),
        .Q(\i_reg_n_0_[28] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[29] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(p_1_in[29]),
        .Q(\i_reg_n_0_[29] ),
        .R(rst));
  FDSE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(\i_reg_n_0_[2] ),
        .S(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[30] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(p_1_in[30]),
        .Q(\i_reg_n_0_[30] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[31] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(p_1_in[31]),
        .Q(\i_reg_n_0_[31] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[3] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(\i_reg_n_0_[3] ),
        .R(rst));
  FDSE #(
    .INIT(1'b0)) 
    \i_reg[4] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(\i_reg_n_0_[4] ),
        .S(rst));
  FDSE #(
    .INIT(1'b0)) 
    \i_reg[5] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(\i_reg_n_0_[5] ),
        .S(rst));
  FDSE #(
    .INIT(1'b0)) 
    \i_reg[6] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(\i_reg_n_0_[6] ),
        .S(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[7] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(\i_reg_n_0_[7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[8] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(\i_reg_n_0_[8] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[9] 
       (.C(clk),
        .CE(\i[31]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(\i_reg_n_0_[9] ),
        .R(rst));
  LUT6 #(
    .INIT(64'hF0FFFFFB0F000000)) 
    \in_ctr[0]_i_1 
       (.I0(state0[3]),
        .I1(en),
        .I2(state0[0]),
        .I3(state0[1]),
        .I4(state0[2]),
        .I5(\in_ctr_reg_n_0_[0] ),
        .O(\in_ctr[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_ctr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\in_ctr[0]_i_1_n_0 ),
        .Q(\in_ctr_reg_n_0_[0] ),
        .R(rst));
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "U0/input_coef" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    input_coef_reg_0_3_0_0
       (.A0(coef_ctr[0]),
        .A1(coef_ctr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_mema_dout[0]),
        .DPO(R[0]),
        .DPRA0(prev_ctr[0]),
        .DPRA1(prev_ctr[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(input_coef_reg_0_3_0_0_n_1),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    input_coef_reg_0_3_0_0_i_1
       (.I0(coef_ctr[1]),
        .I1(coef_ctr[0]),
        .O(prev_ctr[0]));
  LUT2 #(
    .INIT(4'h9)) 
    input_coef_reg_0_3_0_0_i_2
       (.I0(coef_ctr[0]),
        .I1(coef_ctr[1]),
        .O(prev_ctr[1]));
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "U0/input_coef" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    input_coef_reg_0_3_10_10
       (.A0(coef_ctr[0]),
        .A1(coef_ctr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_mema_dout[10]),
        .DPO(R[10]),
        .DPRA0(prev_ctr[0]),
        .DPRA1(prev_ctr[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(input_coef_reg_0_3_10_10_n_1),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "U0/input_coef" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    input_coef_reg_0_3_11_11
       (.A0(coef_ctr[0]),
        .A1(coef_ctr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_mema_dout[11]),
        .DPO(R[11]),
        .DPRA0(prev_ctr[0]),
        .DPRA1(prev_ctr[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(input_coef_reg_0_3_11_11_n_1),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "U0/input_coef" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    input_coef_reg_0_3_12_12
       (.A0(coef_ctr[0]),
        .A1(coef_ctr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_mema_dout[12]),
        .DPO(R[12]),
        .DPRA0(prev_ctr[0]),
        .DPRA1(prev_ctr[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(input_coef_reg_0_3_12_12_n_1),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "U0/input_coef" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    input_coef_reg_0_3_13_13
       (.A0(coef_ctr[0]),
        .A1(coef_ctr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_mema_dout[13]),
        .DPO(R[13]),
        .DPRA0(prev_ctr[0]),
        .DPRA1(prev_ctr[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(input_coef_reg_0_3_13_13_n_1),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "U0/input_coef" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    input_coef_reg_0_3_14_14
       (.A0(coef_ctr[0]),
        .A1(coef_ctr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_mema_dout[14]),
        .DPO(R[14]),
        .DPRA0(prev_ctr[0]),
        .DPRA1(prev_ctr[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(input_coef_reg_0_3_14_14_n_1),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "U0/input_coef" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    input_coef_reg_0_3_15_15
       (.A0(coef_ctr[0]),
        .A1(coef_ctr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_mema_dout[15]),
        .DPO(R[15]),
        .DPRA0(prev_ctr[0]),
        .DPRA1(prev_ctr[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(input_coef_reg_0_3_15_15_n_1),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "U0/input_coef" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    input_coef_reg_0_3_16_16
       (.A0(coef_ctr[0]),
        .A1(coef_ctr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_mema_dout[16]),
        .DPO(input_coef_reg_0_3_16_16_n_0),
        .DPRA0(prev_ctr[0]),
        .DPRA1(prev_ctr[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(A[0]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "U0/input_coef" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    input_coef_reg_0_3_17_17
       (.A0(coef_ctr[0]),
        .A1(coef_ctr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_mema_dout[17]),
        .DPO(input_coef_reg_0_3_17_17_n_0),
        .DPRA0(prev_ctr[0]),
        .DPRA1(prev_ctr[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(A[1]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "U0/input_coef" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    input_coef_reg_0_3_18_18
       (.A0(coef_ctr[0]),
        .A1(coef_ctr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_mema_dout[18]),
        .DPO(input_coef_reg_0_3_18_18_n_0),
        .DPRA0(prev_ctr[0]),
        .DPRA1(prev_ctr[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(A[2]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "U0/input_coef" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    input_coef_reg_0_3_19_19
       (.A0(coef_ctr[0]),
        .A1(coef_ctr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_mema_dout[19]),
        .DPO(input_coef_reg_0_3_19_19_n_0),
        .DPRA0(prev_ctr[0]),
        .DPRA1(prev_ctr[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(A[3]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "U0/input_coef" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    input_coef_reg_0_3_1_1
       (.A0(coef_ctr[0]),
        .A1(coef_ctr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_mema_dout[1]),
        .DPO(R[1]),
        .DPRA0(prev_ctr[0]),
        .DPRA1(prev_ctr[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(input_coef_reg_0_3_1_1_n_1),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "U0/input_coef" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    input_coef_reg_0_3_20_20
       (.A0(coef_ctr[0]),
        .A1(coef_ctr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_mema_dout[20]),
        .DPO(input_coef_reg_0_3_20_20_n_0),
        .DPRA0(prev_ctr[0]),
        .DPRA1(prev_ctr[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(A[4]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "U0/input_coef" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    input_coef_reg_0_3_21_21
       (.A0(coef_ctr[0]),
        .A1(coef_ctr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_mema_dout[21]),
        .DPO(input_coef_reg_0_3_21_21_n_0),
        .DPRA0(prev_ctr[0]),
        .DPRA1(prev_ctr[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(A[5]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "U0/input_coef" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    input_coef_reg_0_3_22_22
       (.A0(coef_ctr[0]),
        .A1(coef_ctr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_mema_dout[22]),
        .DPO(input_coef_reg_0_3_22_22_n_0),
        .DPRA0(prev_ctr[0]),
        .DPRA1(prev_ctr[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(A[6]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "U0/input_coef" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    input_coef_reg_0_3_23_23
       (.A0(coef_ctr[0]),
        .A1(coef_ctr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_mema_dout[23]),
        .DPO(input_coef_reg_0_3_23_23_n_0),
        .DPRA0(prev_ctr[0]),
        .DPRA1(prev_ctr[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(A[7]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "U0/input_coef" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    input_coef_reg_0_3_24_24
       (.A0(coef_ctr[0]),
        .A1(coef_ctr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_mema_dout[24]),
        .DPO(input_coef_reg_0_3_24_24_n_0),
        .DPRA0(prev_ctr[0]),
        .DPRA1(prev_ctr[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in[0]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "U0/input_coef" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    input_coef_reg_0_3_25_25
       (.A0(coef_ctr[0]),
        .A1(coef_ctr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_mema_dout[25]),
        .DPO(input_coef_reg_0_3_25_25_n_0),
        .DPRA0(prev_ctr[0]),
        .DPRA1(prev_ctr[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in[1]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "U0/input_coef" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    input_coef_reg_0_3_26_26
       (.A0(coef_ctr[0]),
        .A1(coef_ctr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_mema_dout[26]),
        .DPO(input_coef_reg_0_3_26_26_n_0),
        .DPRA0(prev_ctr[0]),
        .DPRA1(prev_ctr[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in[2]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "U0/input_coef" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    input_coef_reg_0_3_27_27
       (.A0(coef_ctr[0]),
        .A1(coef_ctr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_mema_dout[27]),
        .DPO(input_coef_reg_0_3_27_27_n_0),
        .DPRA0(prev_ctr[0]),
        .DPRA1(prev_ctr[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in[3]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "U0/input_coef" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    input_coef_reg_0_3_28_28
       (.A0(coef_ctr[0]),
        .A1(coef_ctr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_mema_dout[28]),
        .DPO(input_coef_reg_0_3_28_28_n_0),
        .DPRA0(prev_ctr[0]),
        .DPRA1(prev_ctr[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in[4]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "U0/input_coef" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    input_coef_reg_0_3_29_29
       (.A0(coef_ctr[0]),
        .A1(coef_ctr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_mema_dout[29]),
        .DPO(input_coef_reg_0_3_29_29_n_0),
        .DPRA0(prev_ctr[0]),
        .DPRA1(prev_ctr[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in[5]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "U0/input_coef" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    input_coef_reg_0_3_2_2
       (.A0(coef_ctr[0]),
        .A1(coef_ctr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_mema_dout[2]),
        .DPO(R[2]),
        .DPRA0(prev_ctr[0]),
        .DPRA1(prev_ctr[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(input_coef_reg_0_3_2_2_n_1),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "U0/input_coef" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    input_coef_reg_0_3_30_30
       (.A0(coef_ctr[0]),
        .A1(coef_ctr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_mema_dout[30]),
        .DPO(input_coef_reg_0_3_30_30_n_0),
        .DPRA0(prev_ctr[0]),
        .DPRA1(prev_ctr[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in[6]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "U0/input_coef" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    input_coef_reg_0_3_31_31
       (.A0(coef_ctr[0]),
        .A1(coef_ctr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_mema_dout[31]),
        .DPO(input_coef_reg_0_3_31_31_n_0),
        .DPRA0(prev_ctr[0]),
        .DPRA1(prev_ctr[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in[7]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "U0/input_coef" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    input_coef_reg_0_3_3_3
       (.A0(coef_ctr[0]),
        .A1(coef_ctr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_mema_dout[3]),
        .DPO(R[3]),
        .DPRA0(prev_ctr[0]),
        .DPRA1(prev_ctr[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(input_coef_reg_0_3_3_3_n_1),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "U0/input_coef" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    input_coef_reg_0_3_4_4
       (.A0(coef_ctr[0]),
        .A1(coef_ctr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_mema_dout[4]),
        .DPO(R[4]),
        .DPRA0(prev_ctr[0]),
        .DPRA1(prev_ctr[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(input_coef_reg_0_3_4_4_n_1),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "U0/input_coef" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    input_coef_reg_0_3_5_5
       (.A0(coef_ctr[0]),
        .A1(coef_ctr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_mema_dout[5]),
        .DPO(R[5]),
        .DPRA0(prev_ctr[0]),
        .DPRA1(prev_ctr[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(input_coef_reg_0_3_5_5_n_1),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "U0/input_coef" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    input_coef_reg_0_3_6_6
       (.A0(coef_ctr[0]),
        .A1(coef_ctr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_mema_dout[6]),
        .DPO(R[6]),
        .DPRA0(prev_ctr[0]),
        .DPRA1(prev_ctr[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(input_coef_reg_0_3_6_6_n_1),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "U0/input_coef" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    input_coef_reg_0_3_7_7
       (.A0(coef_ctr[0]),
        .A1(coef_ctr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_mema_dout[7]),
        .DPO(R[7]),
        .DPRA0(prev_ctr[0]),
        .DPRA1(prev_ctr[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(input_coef_reg_0_3_7_7_n_1),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "U0/input_coef" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    input_coef_reg_0_3_8_8
       (.A0(coef_ctr[0]),
        .A1(coef_ctr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_mema_dout[8]),
        .DPO(R[8]),
        .DPRA0(prev_ctr[0]),
        .DPRA1(prev_ctr[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(input_coef_reg_0_3_8_8_n_1),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "U0/input_coef" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    input_coef_reg_0_3_9_9
       (.A0(coef_ctr[0]),
        .A1(coef_ctr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_mema_dout[9]),
        .DPO(R[9]),
        .DPRA0(prev_ctr[0]),
        .DPRA1(prev_ctr[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(input_coef_reg_0_3_9_9_n_1),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 k0_carry
       (.CI(1'b0),
        .CO({k0_carry_n_0,k0_carry_n_1,k0_carry_n_2,k0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\k_reg_n_0_[4] ,\k_reg_n_0_[3] ,\k_reg_n_0_[2] ,1'b0}),
        .O(data0[4:1]),
        .S({k0_carry_i_1_n_0,k0_carry_i_2_n_0,k0_carry_i_3_n_0,\k_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 k0_carry__0
       (.CI(k0_carry_n_0),
        .CO({k0_carry__0_n_0,k0_carry__0_n_1,k0_carry__0_n_2,k0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\k_reg_n_0_[8] ,\k_reg_n_0_[7] ,\k_reg_n_0_[6] ,\k_reg_n_0_[5] }),
        .O(data0[8:5]),
        .S({k0_carry__0_i_1_n_0,k0_carry__0_i_2_n_0,k0_carry__0_i_3_n_0,k0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    k0_carry__0_i_1
       (.I0(\k_reg_n_0_[8] ),
        .O(k0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    k0_carry__0_i_2
       (.I0(\k_reg_n_0_[7] ),
        .O(k0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    k0_carry__0_i_3
       (.I0(\k_reg_n_0_[6] ),
        .O(k0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    k0_carry__0_i_4
       (.I0(\k_reg_n_0_[5] ),
        .O(k0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 k0_carry__1
       (.CI(k0_carry__0_n_0),
        .CO({k0_carry__1_n_0,k0_carry__1_n_1,k0_carry__1_n_2,k0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\k_reg_n_0_[12] ,\k_reg_n_0_[11] ,\k_reg_n_0_[10] ,\k_reg_n_0_[9] }),
        .O(data0[12:9]),
        .S({k0_carry__1_i_1_n_0,k0_carry__1_i_2_n_0,k0_carry__1_i_3_n_0,k0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    k0_carry__1_i_1
       (.I0(\k_reg_n_0_[12] ),
        .O(k0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    k0_carry__1_i_2
       (.I0(\k_reg_n_0_[11] ),
        .O(k0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    k0_carry__1_i_3
       (.I0(\k_reg_n_0_[10] ),
        .O(k0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    k0_carry__1_i_4
       (.I0(\k_reg_n_0_[9] ),
        .O(k0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 k0_carry__2
       (.CI(k0_carry__1_n_0),
        .CO({k0_carry__2_n_0,k0_carry__2_n_1,k0_carry__2_n_2,k0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\k_reg_n_0_[16] ,\k_reg_n_0_[15] ,\k_reg_n_0_[14] ,\k_reg_n_0_[13] }),
        .O(data0[16:13]),
        .S({k0_carry__2_i_1_n_0,k0_carry__2_i_2_n_0,k0_carry__2_i_3_n_0,k0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    k0_carry__2_i_1
       (.I0(\k_reg_n_0_[16] ),
        .O(k0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    k0_carry__2_i_2
       (.I0(\k_reg_n_0_[15] ),
        .O(k0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    k0_carry__2_i_3
       (.I0(\k_reg_n_0_[14] ),
        .O(k0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    k0_carry__2_i_4
       (.I0(\k_reg_n_0_[13] ),
        .O(k0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 k0_carry__3
       (.CI(k0_carry__2_n_0),
        .CO({k0_carry__3_n_0,k0_carry__3_n_1,k0_carry__3_n_2,k0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({\k_reg_n_0_[20] ,\k_reg_n_0_[19] ,\k_reg_n_0_[18] ,\k_reg_n_0_[17] }),
        .O(data0[20:17]),
        .S({k0_carry__3_i_1_n_0,k0_carry__3_i_2_n_0,k0_carry__3_i_3_n_0,k0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    k0_carry__3_i_1
       (.I0(\k_reg_n_0_[20] ),
        .O(k0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    k0_carry__3_i_2
       (.I0(\k_reg_n_0_[19] ),
        .O(k0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    k0_carry__3_i_3
       (.I0(\k_reg_n_0_[18] ),
        .O(k0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    k0_carry__3_i_4
       (.I0(\k_reg_n_0_[17] ),
        .O(k0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 k0_carry__4
       (.CI(k0_carry__3_n_0),
        .CO({k0_carry__4_n_0,k0_carry__4_n_1,k0_carry__4_n_2,k0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({\k_reg_n_0_[24] ,\k_reg_n_0_[23] ,\k_reg_n_0_[22] ,\k_reg_n_0_[21] }),
        .O(data0[24:21]),
        .S({k0_carry__4_i_1_n_0,k0_carry__4_i_2_n_0,k0_carry__4_i_3_n_0,k0_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    k0_carry__4_i_1
       (.I0(\k_reg_n_0_[24] ),
        .O(k0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    k0_carry__4_i_2
       (.I0(\k_reg_n_0_[23] ),
        .O(k0_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    k0_carry__4_i_3
       (.I0(\k_reg_n_0_[22] ),
        .O(k0_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    k0_carry__4_i_4
       (.I0(\k_reg_n_0_[21] ),
        .O(k0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 k0_carry__5
       (.CI(k0_carry__4_n_0),
        .CO({k0_carry__5_n_0,k0_carry__5_n_1,k0_carry__5_n_2,k0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({\k_reg_n_0_[28] ,\k_reg_n_0_[27] ,\k_reg_n_0_[26] ,\k_reg_n_0_[25] }),
        .O(data0[28:25]),
        .S({k0_carry__5_i_1_n_0,k0_carry__5_i_2_n_0,k0_carry__5_i_3_n_0,k0_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    k0_carry__5_i_1
       (.I0(\k_reg_n_0_[28] ),
        .O(k0_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    k0_carry__5_i_2
       (.I0(\k_reg_n_0_[27] ),
        .O(k0_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    k0_carry__5_i_3
       (.I0(\k_reg_n_0_[26] ),
        .O(k0_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    k0_carry__5_i_4
       (.I0(\k_reg_n_0_[25] ),
        .O(k0_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 k0_carry__6
       (.CI(k0_carry__5_n_0),
        .CO({NLW_k0_carry__6_CO_UNCONNECTED[3:2],k0_carry__6_n_2,k0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\k_reg_n_0_[30] ,\k_reg_n_0_[29] }),
        .O({NLW_k0_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,k0_carry__6_i_1_n_0,k0_carry__6_i_2_n_0,k0_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    k0_carry__6_i_1
       (.I0(\k_reg_n_0_[31] ),
        .O(k0_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    k0_carry__6_i_2
       (.I0(\k_reg_n_0_[30] ),
        .O(k0_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    k0_carry__6_i_3
       (.I0(\k_reg_n_0_[29] ),
        .O(k0_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    k0_carry_i_1
       (.I0(\k_reg_n_0_[4] ),
        .O(k0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    k0_carry_i_2
       (.I0(\k_reg_n_0_[3] ),
        .O(k0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    k0_carry_i_3
       (.I0(\k_reg_n_0_[2] ),
        .O(k0_carry_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \k[10]_i_1 
       (.I0(data0[10]),
        .I1(o_done_i_2_n_0),
        .O(\k[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \k[11]_i_1 
       (.I0(data0[11]),
        .I1(o_done_i_2_n_0),
        .O(\k[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \k[12]_i_1 
       (.I0(data0[12]),
        .I1(o_done_i_2_n_0),
        .O(\k[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \k[13]_i_1 
       (.I0(data0[13]),
        .I1(o_done_i_2_n_0),
        .O(\k[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \k[14]_i_1 
       (.I0(data0[14]),
        .I1(o_done_i_2_n_0),
        .O(\k[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \k[15]_i_1 
       (.I0(data0[15]),
        .I1(o_done_i_2_n_0),
        .O(\k[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \k[16]_i_1 
       (.I0(data0[16]),
        .I1(o_done_i_2_n_0),
        .O(\k[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \k[17]_i_1 
       (.I0(data0[17]),
        .I1(o_done_i_2_n_0),
        .O(\k[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \k[18]_i_1 
       (.I0(data0[18]),
        .I1(o_done_i_2_n_0),
        .O(\k[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \k[19]_i_1 
       (.I0(data0[19]),
        .I1(o_done_i_2_n_0),
        .O(\k[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \k[1]_i_1 
       (.I0(data0[1]),
        .I1(o_done_i_2_n_0),
        .O(\k[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \k[20]_i_1 
       (.I0(data0[20]),
        .I1(o_done_i_2_n_0),
        .O(\k[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \k[21]_i_1 
       (.I0(data0[21]),
        .I1(o_done_i_2_n_0),
        .O(\k[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \k[22]_i_1 
       (.I0(data0[22]),
        .I1(o_done_i_2_n_0),
        .O(\k[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \k[23]_i_1 
       (.I0(data0[23]),
        .I1(o_done_i_2_n_0),
        .O(\k[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \k[24]_i_1 
       (.I0(data0[24]),
        .I1(o_done_i_2_n_0),
        .O(\k[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \k[25]_i_1 
       (.I0(data0[25]),
        .I1(o_done_i_2_n_0),
        .O(\k[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \k[26]_i_1 
       (.I0(data0[26]),
        .I1(o_done_i_2_n_0),
        .O(\k[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \k[27]_i_1 
       (.I0(data0[27]),
        .I1(o_done_i_2_n_0),
        .O(\k[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \k[28]_i_1 
       (.I0(data0[28]),
        .I1(o_done_i_2_n_0),
        .O(\k[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \k[29]_i_1 
       (.I0(data0[29]),
        .I1(o_done_i_2_n_0),
        .O(\k[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \k[2]_i_1 
       (.I0(data0[2]),
        .I1(o_done_i_2_n_0),
        .O(\k[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \k[30]_i_1 
       (.I0(data0[30]),
        .I1(o_done_i_2_n_0),
        .O(\k[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \k[31]_i_1 
       (.I0(\FSM_onehot_flag_reg_n_0_[2] ),
        .I1(o_done_i_2_n_0),
        .O(k));
  LUT2 #(
    .INIT(4'h2)) 
    \k[31]_i_2 
       (.I0(data0[31]),
        .I1(o_done_i_2_n_0),
        .O(\k[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \k[3]_i_1 
       (.I0(data0[3]),
        .I1(o_done_i_2_n_0),
        .O(\k[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \k[4]_i_1 
       (.I0(data0[4]),
        .I1(o_done_i_2_n_0),
        .O(\k[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \k[5]_i_1 
       (.I0(data0[5]),
        .I1(o_done_i_2_n_0),
        .O(\k[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \k[6]_i_1 
       (.I0(data0[6]),
        .I1(o_done_i_2_n_0),
        .O(\k[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \k[7]_i_1 
       (.I0(data0[7]),
        .I1(o_done_i_2_n_0),
        .O(\k[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \k[8]_i_1 
       (.I0(data0[8]),
        .I1(o_done_i_2_n_0),
        .O(\k[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \k[9]_i_1 
       (.I0(data0[9]),
        .I1(o_done_i_2_n_0),
        .O(\k[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[10] 
       (.C(clk),
        .CE(k),
        .D(\k[10]_i_1_n_0 ),
        .Q(\k_reg_n_0_[10] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[11] 
       (.C(clk),
        .CE(k),
        .D(\k[11]_i_1_n_0 ),
        .Q(\k_reg_n_0_[11] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[12] 
       (.C(clk),
        .CE(k),
        .D(\k[12]_i_1_n_0 ),
        .Q(\k_reg_n_0_[12] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[13] 
       (.C(clk),
        .CE(k),
        .D(\k[13]_i_1_n_0 ),
        .Q(\k_reg_n_0_[13] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[14] 
       (.C(clk),
        .CE(k),
        .D(\k[14]_i_1_n_0 ),
        .Q(\k_reg_n_0_[14] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[15] 
       (.C(clk),
        .CE(k),
        .D(\k[15]_i_1_n_0 ),
        .Q(\k_reg_n_0_[15] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[16] 
       (.C(clk),
        .CE(k),
        .D(\k[16]_i_1_n_0 ),
        .Q(\k_reg_n_0_[16] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[17] 
       (.C(clk),
        .CE(k),
        .D(\k[17]_i_1_n_0 ),
        .Q(\k_reg_n_0_[17] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[18] 
       (.C(clk),
        .CE(k),
        .D(\k[18]_i_1_n_0 ),
        .Q(\k_reg_n_0_[18] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[19] 
       (.C(clk),
        .CE(k),
        .D(\k[19]_i_1_n_0 ),
        .Q(\k_reg_n_0_[19] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[1] 
       (.C(clk),
        .CE(k),
        .D(\k[1]_i_1_n_0 ),
        .Q(\k_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[20] 
       (.C(clk),
        .CE(k),
        .D(\k[20]_i_1_n_0 ),
        .Q(\k_reg_n_0_[20] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[21] 
       (.C(clk),
        .CE(k),
        .D(\k[21]_i_1_n_0 ),
        .Q(\k_reg_n_0_[21] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[22] 
       (.C(clk),
        .CE(k),
        .D(\k[22]_i_1_n_0 ),
        .Q(\k_reg_n_0_[22] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[23] 
       (.C(clk),
        .CE(k),
        .D(\k[23]_i_1_n_0 ),
        .Q(\k_reg_n_0_[23] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[24] 
       (.C(clk),
        .CE(k),
        .D(\k[24]_i_1_n_0 ),
        .Q(\k_reg_n_0_[24] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[25] 
       (.C(clk),
        .CE(k),
        .D(\k[25]_i_1_n_0 ),
        .Q(\k_reg_n_0_[25] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[26] 
       (.C(clk),
        .CE(k),
        .D(\k[26]_i_1_n_0 ),
        .Q(\k_reg_n_0_[26] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[27] 
       (.C(clk),
        .CE(k),
        .D(\k[27]_i_1_n_0 ),
        .Q(\k_reg_n_0_[27] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[28] 
       (.C(clk),
        .CE(k),
        .D(\k[28]_i_1_n_0 ),
        .Q(\k_reg_n_0_[28] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[29] 
       (.C(clk),
        .CE(k),
        .D(\k[29]_i_1_n_0 ),
        .Q(\k_reg_n_0_[29] ),
        .R(rst));
  FDSE #(
    .INIT(1'b0)) 
    \k_reg[2] 
       (.C(clk),
        .CE(k),
        .D(\k[2]_i_1_n_0 ),
        .Q(\k_reg_n_0_[2] ),
        .S(rst));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[30] 
       (.C(clk),
        .CE(k),
        .D(\k[30]_i_1_n_0 ),
        .Q(\k_reg_n_0_[30] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[31] 
       (.C(clk),
        .CE(k),
        .D(\k[31]_i_2_n_0 ),
        .Q(\k_reg_n_0_[31] ),
        .R(rst));
  FDSE #(
    .INIT(1'b0)) 
    \k_reg[3] 
       (.C(clk),
        .CE(k),
        .D(\k[3]_i_1_n_0 ),
        .Q(\k_reg_n_0_[3] ),
        .S(rst));
  FDSE #(
    .INIT(1'b0)) 
    \k_reg[4] 
       (.C(clk),
        .CE(k),
        .D(\k[4]_i_1_n_0 ),
        .Q(\k_reg_n_0_[4] ),
        .S(rst));
  FDSE #(
    .INIT(1'b0)) 
    \k_reg[5] 
       (.C(clk),
        .CE(k),
        .D(\k[5]_i_1_n_0 ),
        .Q(\k_reg_n_0_[5] ),
        .S(rst));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[6] 
       (.C(clk),
        .CE(k),
        .D(\k[6]_i_1_n_0 ),
        .Q(\k_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[7] 
       (.C(clk),
        .CE(k),
        .D(\k[7]_i_1_n_0 ),
        .Q(\k_reg_n_0_[7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[8] 
       (.C(clk),
        .CE(k),
        .D(\k[8]_i_1_n_0 ),
        .Q(\k_reg_n_0_[8] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \k_reg[9] 
       (.C(clk),
        .CE(k),
        .D(\k[9]_i_1_n_0 ),
        .Q(\k_reg_n_0_[9] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,minusOp_carry_n_1,minusOp_carry_n_2,minusOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({minusOp_carry_i_1_n_0,\i_reg_n_0_[2] ,s_input_adr[2:1]}),
        .O({minusOp[4:2],NLW_minusOp_carry_O_UNCONNECTED[0]}),
        .S({minusOp_carry_i_2_n_0,minusOp_carry_i_3_n_0,minusOp_carry_i_4_n_0,minusOp_carry_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO({minusOp_carry__0_n_0,minusOp_carry__0_n_1,minusOp_carry__0_n_2,minusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({minusOp_carry__0_i_1_n_0,minusOp_carry__0_i_2_n_0,minusOp_carry__0_i_3_n_0,minusOp_carry__0_i_4_n_0}),
        .O(minusOp[8:5]),
        .S({minusOp_carry__0_i_5_n_0,minusOp_carry__0_i_6_n_0,minusOp_carry__0_i_7_n_0,minusOp_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp_carry__0_i_1
       (.I0(\i_reg_n_0_[7] ),
        .I1(s_input_adr[7]),
        .O(minusOp_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp_carry__0_i_2
       (.I0(\i_reg_n_0_[6] ),
        .I1(s_input_adr[6]),
        .O(minusOp_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp_carry__0_i_3
       (.I0(\i_reg_n_0_[5] ),
        .I1(s_input_adr[5]),
        .O(minusOp_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp_carry__0_i_4
       (.I0(\i_reg_n_0_[4] ),
        .I1(s_input_adr[4]),
        .O(minusOp_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp_carry__0_i_5
       (.I0(s_input_adr[7]),
        .I1(\i_reg_n_0_[7] ),
        .I2(s_input_adr[8]),
        .I3(\i_reg_n_0_[8] ),
        .O(minusOp_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp_carry__0_i_6
       (.I0(s_input_adr[6]),
        .I1(\i_reg_n_0_[6] ),
        .I2(s_input_adr[7]),
        .I3(\i_reg_n_0_[7] ),
        .O(minusOp_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp_carry__0_i_7
       (.I0(s_input_adr[5]),
        .I1(\i_reg_n_0_[5] ),
        .I2(s_input_adr[6]),
        .I3(\i_reg_n_0_[6] ),
        .O(minusOp_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp_carry__0_i_8
       (.I0(s_input_adr[4]),
        .I1(\i_reg_n_0_[4] ),
        .I2(\i_reg_n_0_[5] ),
        .I3(s_input_adr[5]),
        .O(minusOp_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__1
       (.CI(minusOp_carry__0_n_0),
        .CO({minusOp_carry__1_n_0,minusOp_carry__1_n_1,minusOp_carry__1_n_2,minusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({minusOp_carry__1_i_1_n_0,minusOp_carry__1_i_2_n_0,minusOp_carry__1_i_3_n_0,minusOp_carry__1_i_4_n_0}),
        .O(minusOp[12:9]),
        .S({minusOp_carry__1_i_5_n_0,minusOp_carry__1_i_6_n_0,minusOp_carry__1_i_7_n_0,minusOp_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp_carry__1_i_1
       (.I0(\i_reg_n_0_[11] ),
        .I1(s_input_adr[11]),
        .O(minusOp_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp_carry__1_i_2
       (.I0(\i_reg_n_0_[10] ),
        .I1(s_input_adr[10]),
        .O(minusOp_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp_carry__1_i_3
       (.I0(\i_reg_n_0_[9] ),
        .I1(s_input_adr[9]),
        .O(minusOp_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp_carry__1_i_4
       (.I0(\i_reg_n_0_[8] ),
        .I1(s_input_adr[8]),
        .O(minusOp_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp_carry__1_i_5
       (.I0(s_input_adr[11]),
        .I1(\i_reg_n_0_[11] ),
        .I2(s_input_adr[12]),
        .I3(\i_reg_n_0_[12] ),
        .O(minusOp_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp_carry__1_i_6
       (.I0(s_input_adr[10]),
        .I1(\i_reg_n_0_[10] ),
        .I2(s_input_adr[11]),
        .I3(\i_reg_n_0_[11] ),
        .O(minusOp_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp_carry__1_i_7
       (.I0(s_input_adr[9]),
        .I1(\i_reg_n_0_[9] ),
        .I2(s_input_adr[10]),
        .I3(\i_reg_n_0_[10] ),
        .O(minusOp_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp_carry__1_i_8
       (.I0(s_input_adr[8]),
        .I1(\i_reg_n_0_[8] ),
        .I2(s_input_adr[9]),
        .I3(\i_reg_n_0_[9] ),
        .O(minusOp_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__2
       (.CI(minusOp_carry__1_n_0),
        .CO({minusOp_carry__2_n_0,minusOp_carry__2_n_1,minusOp_carry__2_n_2,minusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({minusOp_carry__2_i_1_n_0,minusOp_carry__2_i_2_n_0,minusOp_carry__2_i_3_n_0,minusOp_carry__2_i_4_n_0}),
        .O(minusOp[16:13]),
        .S({minusOp_carry__2_i_5_n_0,minusOp_carry__2_i_6_n_0,minusOp_carry__2_i_7_n_0,minusOp_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp_carry__2_i_1
       (.I0(\i_reg_n_0_[15] ),
        .I1(s_input_adr[15]),
        .O(minusOp_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp_carry__2_i_2
       (.I0(\i_reg_n_0_[14] ),
        .I1(s_input_adr[14]),
        .O(minusOp_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp_carry__2_i_3
       (.I0(\i_reg_n_0_[13] ),
        .I1(s_input_adr[13]),
        .O(minusOp_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp_carry__2_i_4
       (.I0(\i_reg_n_0_[12] ),
        .I1(s_input_adr[12]),
        .O(minusOp_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp_carry__2_i_5
       (.I0(s_input_adr[15]),
        .I1(\i_reg_n_0_[15] ),
        .I2(s_input_adr[16]),
        .I3(\i_reg_n_0_[16] ),
        .O(minusOp_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp_carry__2_i_6
       (.I0(s_input_adr[14]),
        .I1(\i_reg_n_0_[14] ),
        .I2(s_input_adr[15]),
        .I3(\i_reg_n_0_[15] ),
        .O(minusOp_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp_carry__2_i_7
       (.I0(s_input_adr[13]),
        .I1(\i_reg_n_0_[13] ),
        .I2(s_input_adr[14]),
        .I3(\i_reg_n_0_[14] ),
        .O(minusOp_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp_carry__2_i_8
       (.I0(s_input_adr[12]),
        .I1(\i_reg_n_0_[12] ),
        .I2(s_input_adr[13]),
        .I3(\i_reg_n_0_[13] ),
        .O(minusOp_carry__2_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__3
       (.CI(minusOp_carry__2_n_0),
        .CO({minusOp_carry__3_n_0,minusOp_carry__3_n_1,minusOp_carry__3_n_2,minusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({minusOp_carry__3_i_1_n_0,minusOp_carry__3_i_2_n_0,minusOp_carry__3_i_3_n_0,minusOp_carry__3_i_4_n_0}),
        .O(minusOp[20:17]),
        .S({minusOp_carry__3_i_5_n_0,minusOp_carry__3_i_6_n_0,minusOp_carry__3_i_7_n_0,minusOp_carry__3_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp_carry__3_i_1
       (.I0(\i_reg_n_0_[19] ),
        .I1(s_input_adr[19]),
        .O(minusOp_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp_carry__3_i_2
       (.I0(\i_reg_n_0_[18] ),
        .I1(s_input_adr[18]),
        .O(minusOp_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp_carry__3_i_3
       (.I0(\i_reg_n_0_[17] ),
        .I1(s_input_adr[17]),
        .O(minusOp_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp_carry__3_i_4
       (.I0(\i_reg_n_0_[16] ),
        .I1(s_input_adr[16]),
        .O(minusOp_carry__3_i_4_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp_carry__3_i_5
       (.I0(s_input_adr[19]),
        .I1(\i_reg_n_0_[19] ),
        .I2(s_input_adr[20]),
        .I3(\i_reg_n_0_[20] ),
        .O(minusOp_carry__3_i_5_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp_carry__3_i_6
       (.I0(s_input_adr[18]),
        .I1(\i_reg_n_0_[18] ),
        .I2(s_input_adr[19]),
        .I3(\i_reg_n_0_[19] ),
        .O(minusOp_carry__3_i_6_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp_carry__3_i_7
       (.I0(s_input_adr[17]),
        .I1(\i_reg_n_0_[17] ),
        .I2(s_input_adr[18]),
        .I3(\i_reg_n_0_[18] ),
        .O(minusOp_carry__3_i_7_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp_carry__3_i_8
       (.I0(s_input_adr[16]),
        .I1(\i_reg_n_0_[16] ),
        .I2(s_input_adr[17]),
        .I3(\i_reg_n_0_[17] ),
        .O(minusOp_carry__3_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__4
       (.CI(minusOp_carry__3_n_0),
        .CO({minusOp_carry__4_n_0,minusOp_carry__4_n_1,minusOp_carry__4_n_2,minusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({minusOp_carry__4_i_1_n_0,minusOp_carry__4_i_2_n_0,minusOp_carry__4_i_3_n_0,minusOp_carry__4_i_4_n_0}),
        .O(minusOp[24:21]),
        .S({minusOp_carry__4_i_5_n_0,minusOp_carry__4_i_6_n_0,minusOp_carry__4_i_7_n_0,minusOp_carry__4_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp_carry__4_i_1
       (.I0(\i_reg_n_0_[23] ),
        .I1(s_input_adr[23]),
        .O(minusOp_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp_carry__4_i_2
       (.I0(\i_reg_n_0_[22] ),
        .I1(s_input_adr[22]),
        .O(minusOp_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp_carry__4_i_3
       (.I0(\i_reg_n_0_[21] ),
        .I1(s_input_adr[21]),
        .O(minusOp_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp_carry__4_i_4
       (.I0(\i_reg_n_0_[20] ),
        .I1(s_input_adr[20]),
        .O(minusOp_carry__4_i_4_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp_carry__4_i_5
       (.I0(s_input_adr[23]),
        .I1(\i_reg_n_0_[23] ),
        .I2(s_input_adr[24]),
        .I3(\i_reg_n_0_[24] ),
        .O(minusOp_carry__4_i_5_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp_carry__4_i_6
       (.I0(s_input_adr[22]),
        .I1(\i_reg_n_0_[22] ),
        .I2(s_input_adr[23]),
        .I3(\i_reg_n_0_[23] ),
        .O(minusOp_carry__4_i_6_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp_carry__4_i_7
       (.I0(s_input_adr[21]),
        .I1(\i_reg_n_0_[21] ),
        .I2(s_input_adr[22]),
        .I3(\i_reg_n_0_[22] ),
        .O(minusOp_carry__4_i_7_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp_carry__4_i_8
       (.I0(s_input_adr[20]),
        .I1(\i_reg_n_0_[20] ),
        .I2(s_input_adr[21]),
        .I3(\i_reg_n_0_[21] ),
        .O(minusOp_carry__4_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__5
       (.CI(minusOp_carry__4_n_0),
        .CO({minusOp_carry__5_n_0,minusOp_carry__5_n_1,minusOp_carry__5_n_2,minusOp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({minusOp_carry__5_i_1_n_0,minusOp_carry__5_i_2_n_0,minusOp_carry__5_i_3_n_0,minusOp_carry__5_i_4_n_0}),
        .O(minusOp[28:25]),
        .S({minusOp_carry__5_i_5_n_0,minusOp_carry__5_i_6_n_0,minusOp_carry__5_i_7_n_0,minusOp_carry__5_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp_carry__5_i_1
       (.I0(\i_reg_n_0_[27] ),
        .I1(s_input_adr[27]),
        .O(minusOp_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp_carry__5_i_2
       (.I0(\i_reg_n_0_[26] ),
        .I1(s_input_adr[26]),
        .O(minusOp_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp_carry__5_i_3
       (.I0(\i_reg_n_0_[25] ),
        .I1(s_input_adr[25]),
        .O(minusOp_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp_carry__5_i_4
       (.I0(\i_reg_n_0_[24] ),
        .I1(s_input_adr[24]),
        .O(minusOp_carry__5_i_4_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp_carry__5_i_5
       (.I0(s_input_adr[27]),
        .I1(\i_reg_n_0_[27] ),
        .I2(s_input_adr[28]),
        .I3(\i_reg_n_0_[28] ),
        .O(minusOp_carry__5_i_5_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp_carry__5_i_6
       (.I0(s_input_adr[26]),
        .I1(\i_reg_n_0_[26] ),
        .I2(s_input_adr[27]),
        .I3(\i_reg_n_0_[27] ),
        .O(minusOp_carry__5_i_6_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp_carry__5_i_7
       (.I0(s_input_adr[25]),
        .I1(\i_reg_n_0_[25] ),
        .I2(s_input_adr[26]),
        .I3(\i_reg_n_0_[26] ),
        .O(minusOp_carry__5_i_7_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp_carry__5_i_8
       (.I0(s_input_adr[24]),
        .I1(\i_reg_n_0_[24] ),
        .I2(s_input_adr[25]),
        .I3(\i_reg_n_0_[25] ),
        .O(minusOp_carry__5_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__6
       (.CI(minusOp_carry__5_n_0),
        .CO({NLW_minusOp_carry__6_CO_UNCONNECTED[3:2],minusOp_carry__6_n_2,minusOp_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,minusOp_carry__6_i_1_n_0,minusOp_carry__6_i_2_n_0}),
        .O({NLW_minusOp_carry__6_O_UNCONNECTED[3],minusOp[31:29]}),
        .S({1'b0,minusOp_carry__6_i_3_n_0,minusOp_carry__6_i_4_n_0,minusOp_carry__6_i_5_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp_carry__6_i_1
       (.I0(\i_reg_n_0_[29] ),
        .I1(s_input_adr[29]),
        .O(minusOp_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp_carry__6_i_2
       (.I0(\i_reg_n_0_[28] ),
        .I1(s_input_adr[28]),
        .O(minusOp_carry__6_i_2_n_0));
  LUT3 #(
    .INIT(8'hA9)) 
    minusOp_carry__6_i_3
       (.I0(s_input_adr[31]),
        .I1(s_input_adr[30]),
        .I2(\i_reg_n_0_[30] ),
        .O(minusOp_carry__6_i_3_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp_carry__6_i_4
       (.I0(s_input_adr[29]),
        .I1(\i_reg_n_0_[29] ),
        .I2(s_input_adr[30]),
        .I3(\i_reg_n_0_[30] ),
        .O(minusOp_carry__6_i_4_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp_carry__6_i_5
       (.I0(s_input_adr[28]),
        .I1(\i_reg_n_0_[28] ),
        .I2(s_input_adr[29]),
        .I3(\i_reg_n_0_[29] ),
        .O(minusOp_carry__6_i_5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp_carry_i_1
       (.I0(\i_reg_n_0_[3] ),
        .I1(s_input_adr[3]),
        .O(minusOp_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp_carry_i_2
       (.I0(s_input_adr[3]),
        .I1(\i_reg_n_0_[3] ),
        .I2(\i_reg_n_0_[4] ),
        .I3(s_input_adr[4]),
        .O(minusOp_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    minusOp_carry_i_3
       (.I0(\i_reg_n_0_[3] ),
        .I1(s_input_adr[3]),
        .I2(\i_reg_n_0_[2] ),
        .O(minusOp_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_4
       (.I0(\i_reg_n_0_[2] ),
        .I1(s_input_adr[2]),
        .O(minusOp_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    minusOp_carry_i_5
       (.I0(s_input_adr[1]),
        .I1(\i_reg_n_0_[1] ),
        .O(minusOp_carry_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\minusOp_inferred__1/i__carry_n_0 ,\minusOp_inferred__1/i__carry_n_1 ,\minusOp_inferred__1/i__carry_n_2 ,\minusOp_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,\k_reg_n_0_[2] ,s_output_adr[2:1]}),
        .O({\minusOp_inferred__1/i__carry_n_4 ,\minusOp_inferred__1/i__carry_n_5 ,\minusOp_inferred__1/i__carry_n_6 ,\NLW_minusOp_inferred__1/i__carry_O_UNCONNECTED [0]}),
        .S({i__carry_i_2_n_0,i__carry_i_3__3_n_0,i__carry_i_4_n_0,i__carry_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__1/i__carry__0 
       (.CI(\minusOp_inferred__1/i__carry_n_0 ),
        .CO({\minusOp_inferred__1/i__carry__0_n_0 ,\minusOp_inferred__1/i__carry__0_n_1 ,\minusOp_inferred__1/i__carry__0_n_2 ,\minusOp_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O({\minusOp_inferred__1/i__carry__0_n_4 ,\minusOp_inferred__1/i__carry__0_n_5 ,\minusOp_inferred__1/i__carry__0_n_6 ,\minusOp_inferred__1/i__carry__0_n_7 }),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__1/i__carry__1 
       (.CI(\minusOp_inferred__1/i__carry__0_n_0 ),
        .CO({\minusOp_inferred__1/i__carry__1_n_0 ,\minusOp_inferred__1/i__carry__1_n_1 ,\minusOp_inferred__1/i__carry__1_n_2 ,\minusOp_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}),
        .O({\minusOp_inferred__1/i__carry__1_n_4 ,\minusOp_inferred__1/i__carry__1_n_5 ,\minusOp_inferred__1/i__carry__1_n_6 ,\minusOp_inferred__1/i__carry__1_n_7 }),
        .S({i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0,i__carry__1_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__1/i__carry__2 
       (.CI(\minusOp_inferred__1/i__carry__1_n_0 ),
        .CO({\minusOp_inferred__1/i__carry__2_n_0 ,\minusOp_inferred__1/i__carry__2_n_1 ,\minusOp_inferred__1/i__carry__2_n_2 ,\minusOp_inferred__1/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}),
        .O({\minusOp_inferred__1/i__carry__2_n_4 ,\minusOp_inferred__1/i__carry__2_n_5 ,\minusOp_inferred__1/i__carry__2_n_6 ,\minusOp_inferred__1/i__carry__2_n_7 }),
        .S({i__carry__2_i_5_n_0,i__carry__2_i_6_n_0,i__carry__2_i_7_n_0,i__carry__2_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__1/i__carry__3 
       (.CI(\minusOp_inferred__1/i__carry__2_n_0 ),
        .CO({\minusOp_inferred__1/i__carry__3_n_0 ,\minusOp_inferred__1/i__carry__3_n_1 ,\minusOp_inferred__1/i__carry__3_n_2 ,\minusOp_inferred__1/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}),
        .O({\minusOp_inferred__1/i__carry__3_n_4 ,\minusOp_inferred__1/i__carry__3_n_5 ,\minusOp_inferred__1/i__carry__3_n_6 ,\minusOp_inferred__1/i__carry__3_n_7 }),
        .S({i__carry__3_i_5_n_0,i__carry__3_i_6_n_0,i__carry__3_i_7_n_0,i__carry__3_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__1/i__carry__4 
       (.CI(\minusOp_inferred__1/i__carry__3_n_0 ),
        .CO({\minusOp_inferred__1/i__carry__4_n_0 ,\minusOp_inferred__1/i__carry__4_n_1 ,\minusOp_inferred__1/i__carry__4_n_2 ,\minusOp_inferred__1/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0,i__carry__4_i_4_n_0}),
        .O({\minusOp_inferred__1/i__carry__4_n_4 ,\minusOp_inferred__1/i__carry__4_n_5 ,\minusOp_inferred__1/i__carry__4_n_6 ,\minusOp_inferred__1/i__carry__4_n_7 }),
        .S({i__carry__4_i_5_n_0,i__carry__4_i_6_n_0,i__carry__4_i_7_n_0,i__carry__4_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__1/i__carry__5 
       (.CI(\minusOp_inferred__1/i__carry__4_n_0 ),
        .CO({\minusOp_inferred__1/i__carry__5_n_0 ,\minusOp_inferred__1/i__carry__5_n_1 ,\minusOp_inferred__1/i__carry__5_n_2 ,\minusOp_inferred__1/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__5_i_1_n_0,i__carry__5_i_2_n_0,i__carry__5_i_3_n_0,i__carry__5_i_4_n_0}),
        .O({\minusOp_inferred__1/i__carry__5_n_4 ,\minusOp_inferred__1/i__carry__5_n_5 ,\minusOp_inferred__1/i__carry__5_n_6 ,\minusOp_inferred__1/i__carry__5_n_7 }),
        .S({i__carry__5_i_5_n_0,i__carry__5_i_6_n_0,i__carry__5_i_7_n_0,i__carry__5_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__1/i__carry__6 
       (.CI(\minusOp_inferred__1/i__carry__5_n_0 ),
        .CO({\NLW_minusOp_inferred__1/i__carry__6_CO_UNCONNECTED [3:2],\minusOp_inferred__1/i__carry__6_n_2 ,\minusOp_inferred__1/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry__6_i_1_n_0,i__carry__6_i_2_n_0}),
        .O({\NLW_minusOp_inferred__1/i__carry__6_O_UNCONNECTED [3],\minusOp_inferred__1/i__carry__6_n_5 ,\minusOp_inferred__1/i__carry__6_n_6 ,\minusOp_inferred__1/i__carry__6_n_7 }),
        .S({1'b0,i__carry__6_i_3_n_0,i__carry__6_i_4_n_0,i__carry__6_i_5_n_0}));
  CARRY4 multOp__15_carry
       (.CI(1'b0),
        .CO({multOp__15_carry_n_0,multOp__15_carry_n_1,multOp__15_carry_n_2,multOp__15_carry_n_3}),
        .CYINIT(1'b0),
        .DI({multOp__15_carry_i_1_n_0,multOp__15_carry_i_2_n_0,multOp__15_carry_i_3_n_0,1'b0}),
        .O({multOp__15_carry_n_4,multOp__15_carry_n_5,multOp__15_carry_n_6,multOp__15_carry_n_7}),
        .S({multOp__15_carry_i_4_n_0,multOp__15_carry_i_5_n_0,multOp__15_carry_i_6_n_0,multOp__15_carry_i_7_n_0}));
  CARRY4 multOp__15_carry__0
       (.CI(multOp__15_carry_n_0),
        .CO(NLW_multOp__15_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_multOp__15_carry__0_O_UNCONNECTED[3:1],multOp__15_carry__0_n_7}),
        .S({1'b0,1'b0,1'b0,multOp__15_carry__0_i_1_n_0}));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    multOp__15_carry__0_i_1
       (.I0(p_0_in[1]),
        .I1(multOp_carry__0_n_5),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(multOp_carry__0_n_4),
        .I5(p_0_in[4]),
        .O(multOp__15_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    multOp__15_carry_i_1
       (.I0(p_0_in[2]),
        .I1(multOp_carry__0_n_6),
        .I2(p_0_in[0]),
        .O(multOp__15_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    multOp__15_carry_i_2
       (.I0(p_0_in[0]),
        .I1(p_0_in[2]),
        .I2(multOp_carry__0_n_6),
        .O(multOp__15_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    multOp__15_carry_i_3
       (.I0(multOp_carry_n_4),
        .I1(p_0_in[0]),
        .O(multOp__15_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    multOp__15_carry_i_4
       (.I0(multOp__15_carry_i_1_n_0),
        .I1(multOp_carry__0_n_5),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .O(multOp__15_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h69966969)) 
    multOp__15_carry_i_5
       (.I0(p_0_in[2]),
        .I1(multOp_carry__0_n_6),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(multOp_carry__0_n_7),
        .O(multOp__15_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    multOp__15_carry_i_6
       (.I0(p_0_in[0]),
        .I1(multOp_carry_n_4),
        .I2(p_0_in[1]),
        .I3(multOp_carry__0_n_7),
        .O(multOp__15_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    multOp__15_carry_i_7
       (.I0(p_0_in[0]),
        .I1(multOp_carry_n_4),
        .O(multOp__15_carry_i_7_n_0));
  CARRY4 multOp_carry
       (.CI(1'b0),
        .CO({multOp_carry_n_0,multOp_carry_n_1,multOp_carry_n_2,multOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({p_0_in[1:0],1'b0,1'b1}),
        .O({multOp_carry_n_4,multOp_carry_n_5,multOp_carry_n_6,multOp[0]}),
        .S({multOp_carry_i_1_n_0,multOp_carry_i_2_n_0,multOp_carry_i_3_n_0,p_0_in[0]}));
  CARRY4 multOp_carry__0
       (.CI(multOp_carry_n_0),
        .CO({NLW_multOp_carry__0_CO_UNCONNECTED[3],multOp_carry__0_n_1,multOp_carry__0_n_2,multOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,p_0_in[4:2]}),
        .O({multOp_carry__0_n_4,multOp_carry__0_n_5,multOp_carry__0_n_6,multOp_carry__0_n_7}),
        .S({multOp_carry__0_i_1_n_0,multOp_carry__0_i_2_n_0,multOp_carry__0_i_3_n_0,multOp_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    multOp_carry__0_i_1
       (.I0(p_0_in[7]),
        .I1(p_0_in[5]),
        .O(multOp_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    multOp_carry__0_i_2
       (.I0(p_0_in[4]),
        .I1(p_0_in[6]),
        .O(multOp_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    multOp_carry__0_i_3
       (.I0(p_0_in[3]),
        .I1(p_0_in[5]),
        .O(multOp_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    multOp_carry__0_i_4
       (.I0(p_0_in[2]),
        .I1(p_0_in[4]),
        .O(multOp_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    multOp_carry_i_1
       (.I0(p_0_in[1]),
        .I1(p_0_in[3]),
        .O(multOp_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    multOp_carry_i_2
       (.I0(p_0_in[0]),
        .I1(p_0_in[2]),
        .O(multOp_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    multOp_carry_i_3
       (.I0(p_0_in[1]),
        .O(multOp_carry_i_3_n_0));
  CARRY4 \multOp_inferred__1/i___0_carry 
       (.CI(1'b0),
        .CO({\multOp_inferred__1/i___0_carry_n_0 ,\multOp_inferred__1/i___0_carry_n_1 ,\multOp_inferred__1/i___0_carry_n_2 ,\multOp_inferred__1/i___0_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({R[1:0],1'b0,1'b1}),
        .O({\multOp_inferred__1/i___0_carry_n_4 ,\multOp_inferred__1/i___0_carry_n_5 ,\multOp_inferred__1/i___0_carry_n_6 ,\NLW_multOp_inferred__1/i___0_carry_O_UNCONNECTED [0]}),
        .S({i___0_carry_i_1__2_n_0,i___0_carry_i_2__2_n_0,i___0_carry_i_3__0_n_0,R[0]}));
  CARRY4 \multOp_inferred__1/i___0_carry__0 
       (.CI(\multOp_inferred__1/i___0_carry_n_0 ),
        .CO({\NLW_multOp_inferred__1/i___0_carry__0_CO_UNCONNECTED [3],\multOp_inferred__1/i___0_carry__0_n_1 ,\multOp_inferred__1/i___0_carry__0_n_2 ,\multOp_inferred__1/i___0_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,R[4:2]}),
        .O({\multOp_inferred__1/i___0_carry__0_n_4 ,\multOp_inferred__1/i___0_carry__0_n_5 ,\multOp_inferred__1/i___0_carry__0_n_6 ,\multOp_inferred__1/i___0_carry__0_n_7 }),
        .S({i___0_carry__0_i_1__2_n_0,i___0_carry__0_i_2__2_n_0,i___0_carry__0_i_3__2_n_0,i___0_carry__0_i_4__0_n_0}));
  CARRY4 \multOp_inferred__1/i___15_carry 
       (.CI(1'b0),
        .CO({\multOp_inferred__1/i___15_carry_n_0 ,\multOp_inferred__1/i___15_carry_n_1 ,\multOp_inferred__1/i___15_carry_n_2 ,\multOp_inferred__1/i___15_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___15_carry_i_1_n_0,i___15_carry_i_2_n_0,i___15_carry_i_3_n_0,1'b0}),
        .O({\multOp_inferred__1/i___15_carry_n_4 ,\multOp_inferred__1/i___15_carry_n_5 ,\multOp_inferred__1/i___15_carry_n_6 ,\multOp_inferred__1/i___15_carry_n_7 }),
        .S({i___15_carry_i_4_n_0,i___15_carry_i_5_n_0,i___15_carry_i_6_n_0,i___15_carry_i_7_n_0}));
  CARRY4 \multOp_inferred__1/i___15_carry__0 
       (.CI(\multOp_inferred__1/i___15_carry_n_0 ),
        .CO(\NLW_multOp_inferred__1/i___15_carry__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_multOp_inferred__1/i___15_carry__0_O_UNCONNECTED [3:1],\multOp_inferred__1/i___15_carry__0_n_7 }),
        .S({1'b0,1'b0,1'b0,i___15_carry__0_i_1_n_0}));
  CARRY4 \multOp_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\multOp_inferred__1/i__carry_n_0 ,\multOp_inferred__1/i__carry_n_1 ,\multOp_inferred__1/i__carry_n_2 ,\multOp_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({R[1:0],1'b0,1'b1}),
        .O({\multOp_inferred__1/i__carry_n_4 ,\multOp_inferred__1/i__carry_n_5 ,\multOp_inferred__1/i__carry_n_6 ,\multOp_inferred__1/i__carry_n_7 }),
        .S({i__carry_i_1__3_n_0,i__carry_i_2__3_n_0,i__carry_i_3__2_n_0,R[0]}));
  CARRY4 \multOp_inferred__1/i__carry__0 
       (.CI(\multOp_inferred__1/i__carry_n_0 ),
        .CO({\NLW_multOp_inferred__1/i__carry__0_CO_UNCONNECTED [3],\multOp_inferred__1/i__carry__0_n_1 ,\multOp_inferred__1/i__carry__0_n_2 ,\multOp_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,R[4:2]}),
        .O({\multOp_inferred__1/i__carry__0_n_4 ,\multOp_inferred__1/i__carry__0_n_5 ,\multOp_inferred__1/i__carry__0_n_6 ,\multOp_inferred__1/i__carry__0_n_7 }),
        .S({i__carry__0_i_1__3_n_0,i__carry__0_i_2__3_n_0,i__carry__0_i_3__3_n_0,i__carry__0_i_4__3_n_0}));
  CARRY4 \multOp_inferred__4/i___20_carry 
       (.CI(1'b0),
        .CO({\multOp_inferred__4/i___20_carry_n_0 ,\multOp_inferred__4/i___20_carry_n_1 ,\multOp_inferred__4/i___20_carry_n_2 ,\multOp_inferred__4/i___20_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___20_carry_i_1_n_0,i___20_carry_i_2_n_0,i___20_carry_i_3_n_0,1'b0}),
        .O({\multOp_inferred__4/i___20_carry_n_4 ,\multOp_inferred__4/i___20_carry_n_5 ,\multOp_inferred__4/i___20_carry_n_6 ,\multOp_inferred__4/i___20_carry_n_7 }),
        .S({i___20_carry_i_4_n_0,i___20_carry_i_5_n_0,i___20_carry_i_6_n_0,i___20_carry_i_7_n_0}));
  CARRY4 \multOp_inferred__4/i___20_carry__0 
       (.CI(\multOp_inferred__4/i___20_carry_n_0 ),
        .CO(\NLW_multOp_inferred__4/i___20_carry__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_multOp_inferred__4/i___20_carry__0_O_UNCONNECTED [3:1],\multOp_inferred__4/i___20_carry__0_n_7 }),
        .S({1'b0,1'b0,1'b0,i___20_carry__0_i_1_n_0}));
  CARRY4 \multOp_inferred__4/i__carry 
       (.CI(1'b0),
        .CO({\multOp_inferred__4/i__carry_n_0 ,\multOp_inferred__4/i__carry_n_1 ,\multOp_inferred__4/i__carry_n_2 ,\multOp_inferred__4/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({R[9:8],1'b0,1'b1}),
        .O({\multOp_inferred__4/i__carry_n_4 ,\multOp_inferred__4/i__carry_n_5 ,\multOp_inferred__4/i__carry_n_6 ,\multOp_inferred__4/i__carry_n_7 }),
        .S({i__carry_i_1__2_n_0,i__carry_i_2__2_n_0,i__carry_i_3__1_n_0,R[8]}));
  CARRY4 \multOp_inferred__4/i__carry__0 
       (.CI(\multOp_inferred__4/i__carry_n_0 ),
        .CO({\NLW_multOp_inferred__4/i__carry__0_CO_UNCONNECTED [3],\multOp_inferred__4/i__carry__0_n_1 ,\multOp_inferred__4/i__carry__0_n_2 ,\multOp_inferred__4/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,R[12:10]}),
        .O({\multOp_inferred__4/i__carry__0_n_4 ,\multOp_inferred__4/i__carry__0_n_5 ,\multOp_inferred__4/i__carry__0_n_6 ,\multOp_inferred__4/i__carry__0_n_7 }),
        .S({i__carry__0_i_1__2_n_0,i__carry__0_i_2__2_n_0,i__carry__0_i_3__2_n_0,i__carry__0_i_4__2_n_0}));
  CARRY4 \multOp_inferred__5/i___15_carry 
       (.CI(1'b0),
        .CO({\multOp_inferred__5/i___15_carry_n_0 ,\multOp_inferred__5/i___15_carry_n_1 ,\multOp_inferred__5/i___15_carry_n_2 ,\multOp_inferred__5/i___15_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___15_carry_i_1__0_n_0,i___15_carry_i_2__0_n_0,i___15_carry_i_3__0_n_0,1'b0}),
        .O({\multOp_inferred__5/i___15_carry_n_4 ,\multOp_inferred__5/i___15_carry_n_5 ,\multOp_inferred__5/i___15_carry_n_6 ,\multOp_inferred__5/i___15_carry_n_7 }),
        .S({i___15_carry_i_4__0_n_0,i___15_carry_i_5__0_n_0,i___15_carry_i_6__0_n_0,i___15_carry_i_7__0_n_0}));
  CARRY4 \multOp_inferred__5/i___15_carry__0 
       (.CI(\multOp_inferred__5/i___15_carry_n_0 ),
        .CO(\NLW_multOp_inferred__5/i___15_carry__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_multOp_inferred__5/i___15_carry__0_O_UNCONNECTED [3:1],\multOp_inferred__5/i___15_carry__0_n_7 }),
        .S({1'b0,1'b0,1'b0,i___15_carry__0_i_1__0_n_0}));
  CARRY4 \multOp_inferred__5/i__carry 
       (.CI(1'b0),
        .CO({\multOp_inferred__5/i__carry_n_0 ,\multOp_inferred__5/i__carry_n_1 ,\multOp_inferred__5/i__carry_n_2 ,\multOp_inferred__5/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({A[1:0],1'b0,1'b1}),
        .O({\multOp_inferred__5/i__carry_n_4 ,\multOp_inferred__5/i__carry_n_5 ,\multOp_inferred__5/i__carry_n_6 ,\NLW_multOp_inferred__5/i__carry_O_UNCONNECTED [0]}),
        .S({i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__0_n_0,A[0]}));
  CARRY4 \multOp_inferred__5/i__carry__0 
       (.CI(\multOp_inferred__5/i__carry_n_0 ),
        .CO({\NLW_multOp_inferred__5/i__carry__0_CO_UNCONNECTED [3],\multOp_inferred__5/i__carry__0_n_1 ,\multOp_inferred__5/i__carry__0_n_2 ,\multOp_inferred__5/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,A[4:2]}),
        .O({\multOp_inferred__5/i__carry__0_n_4 ,\multOp_inferred__5/i__carry__0_n_5 ,\multOp_inferred__5/i__carry__0_n_6 ,\multOp_inferred__5/i__carry__0_n_7 }),
        .S({i__carry__0_i_1__1_n_0,i__carry__0_i_2__1_n_0,i__carry__0_i_3__1_n_0,i__carry__0_i_4__1_n_0}));
  CARRY4 \multOp_inferred__6/i__carry 
       (.CI(1'b0),
        .CO({\multOp_inferred__6/i__carry_n_0 ,\multOp_inferred__6/i__carry_n_1 ,\multOp_inferred__6/i__carry_n_2 ,\multOp_inferred__6/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({input_coef_reg_0_3_9_9_n_1,input_coef_reg_0_3_8_8_n_1,1'b0,1'b1}),
        .O({\multOp_inferred__6/i__carry_n_4 ,\multOp_inferred__6/i__carry_n_5 ,\multOp_inferred__6/i__carry_n_6 ,\multOp_inferred__6/i__carry_n_7 }),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,p_2_in,input_coef_reg_0_3_8_8_n_1}));
  CARRY4 \multOp_inferred__6/i__carry__0 
       (.CI(\multOp_inferred__6/i__carry_n_0 ),
        .CO({\NLW_multOp_inferred__6/i__carry__0_CO_UNCONNECTED [3],\multOp_inferred__6/i__carry__0_n_1 ,\multOp_inferred__6/i__carry__0_n_2 ,\multOp_inferred__6/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,input_coef_reg_0_3_12_12_n_1,input_coef_reg_0_3_11_11_n_1,input_coef_reg_0_3_10_10_n_1}),
        .O({\multOp_inferred__6/i__carry__0_n_4 ,\multOp_inferred__6/i__carry__0_n_5 ,\multOp_inferred__6/i__carry__0_n_6 ,\multOp_inferred__6/i__carry__0_n_7 }),
        .S({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    o_controla_i_1
       (.I0(en),
        .I1(state0[0]),
        .I2(state0[1]),
        .I3(state0[3]),
        .I4(state0[2]),
        .I5(o_controla),
        .O(o_controla_i_1_n_0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Exta CTRL" *) 
  FDRE o_controla_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_controla_i_1_n_0),
        .Q(o_controla),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    o_controlb_i_1
       (.I0(en),
        .I1(state0[0]),
        .I2(state0[1]),
        .I3(state0[3]),
        .I4(state0[2]),
        .I5(o_controlb),
        .O(o_controlb_i_1_n_0));
  (* equivalent_register_removal = "no" *) 
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extb CTRL" *) 
  FDRE o_controlb_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_controlb_i_1_n_0),
        .Q(o_controlb),
        .R(rst));
  LUT6 #(
    .INIT(64'h0000000054554444)) 
    o_controlc_i_1
       (.I0(o_done_i_2_n_0),
        .I1(\FSM_onehot_flag_reg_n_0_[2] ),
        .I2(\FSM_onehot_flag_reg_n_0_[1] ),
        .I3(\FSM_onehot_flag_reg_n_0_[3] ),
        .I4(o_controlc),
        .I5(rst),
        .O(o_controlc_i_1_n_0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc CTRL" *) 
  FDRE o_controlc_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_controlc_i_1_n_0),
        .Q(o_controlc),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    o_done_i_1
       (.I0(o_done),
        .I1(rst),
        .I2(o_done_i_2_n_0),
        .O(o_done_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    o_done_i_2
       (.I0(\k_reg_n_0_[3] ),
        .I1(\k_reg_n_0_[2] ),
        .I2(\k_reg_n_0_[1] ),
        .I3(o_done_i_3_n_0),
        .I4(o_done_i_4_n_0),
        .I5(o_done_i_5_n_0),
        .O(o_done_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_done_i_3
       (.I0(\k_reg_n_0_[7] ),
        .I1(\k_reg_n_0_[6] ),
        .I2(\k_reg_n_0_[4] ),
        .I3(\k_reg_n_0_[5] ),
        .O(o_done_i_3_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    o_done_i_4
       (.I0(\k_reg_n_0_[11] ),
        .I1(\k_reg_n_0_[9] ),
        .I2(\k_reg_n_0_[8] ),
        .I3(\k_reg_n_0_[10] ),
        .I4(o_done_i_6_n_0),
        .O(o_done_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    o_done_i_5
       (.I0(o_done_i_7_n_0),
        .I1(\k_reg_n_0_[25] ),
        .I2(\k_reg_n_0_[24] ),
        .I3(\k_reg_n_0_[30] ),
        .I4(\k_reg_n_0_[26] ),
        .I5(o_done_i_8_n_0),
        .O(o_done_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_done_i_6
       (.I0(\k_reg_n_0_[13] ),
        .I1(\k_reg_n_0_[12] ),
        .I2(\k_reg_n_0_[14] ),
        .I3(\k_reg_n_0_[15] ),
        .O(o_done_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_done_i_7
       (.I0(\k_reg_n_0_[31] ),
        .I1(\k_reg_n_0_[28] ),
        .I2(\k_reg_n_0_[27] ),
        .I3(\k_reg_n_0_[29] ),
        .O(o_done_i_7_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    o_done_i_8
       (.I0(\k_reg_n_0_[18] ),
        .I1(\k_reg_n_0_[19] ),
        .I2(\k_reg_n_0_[17] ),
        .I3(\k_reg_n_0_[16] ),
        .I4(o_done_i_9_n_0),
        .O(o_done_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_done_i_9
       (.I0(\k_reg_n_0_[22] ),
        .I1(\k_reg_n_0_[23] ),
        .I2(\k_reg_n_0_[20] ),
        .I3(\k_reg_n_0_[21] ),
        .O(o_done_i_9_n_0));
  FDRE o_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_done_i_1_n_0),
        .Q(o_done),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \o_mema_addr[1]_i_1 
       (.I0(s_input_adr[1]),
        .I1(\i_reg_n_0_[1] ),
        .O(minusOp[1]));
  LUT3 #(
    .INIT(8'h04)) 
    \o_mema_addr[31]_i_1 
       (.I0(rst),
        .I1(state0[0]),
        .I2(state0[1]),
        .O(\o_mema_addr[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Exta ADDR" *) 
  FDRE \o_mema_addr_reg[0] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(s_input_adr[0]),
        .Q(o_mema_addr[0]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Exta ADDR" *) 
  FDRE \o_mema_addr_reg[10] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(minusOp[10]),
        .Q(o_mema_addr[10]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Exta ADDR" *) 
  FDRE \o_mema_addr_reg[11] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(minusOp[11]),
        .Q(o_mema_addr[11]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Exta ADDR" *) 
  FDRE \o_mema_addr_reg[12] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(minusOp[12]),
        .Q(o_mema_addr[12]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Exta ADDR" *) 
  FDRE \o_mema_addr_reg[13] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(minusOp[13]),
        .Q(o_mema_addr[13]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Exta ADDR" *) 
  FDRE \o_mema_addr_reg[14] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(minusOp[14]),
        .Q(o_mema_addr[14]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Exta ADDR" *) 
  FDRE \o_mema_addr_reg[15] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(minusOp[15]),
        .Q(o_mema_addr[15]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Exta ADDR" *) 
  FDRE \o_mema_addr_reg[16] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(minusOp[16]),
        .Q(o_mema_addr[16]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Exta ADDR" *) 
  FDRE \o_mema_addr_reg[17] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(minusOp[17]),
        .Q(o_mema_addr[17]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Exta ADDR" *) 
  FDRE \o_mema_addr_reg[18] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(minusOp[18]),
        .Q(o_mema_addr[18]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Exta ADDR" *) 
  FDRE \o_mema_addr_reg[19] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(minusOp[19]),
        .Q(o_mema_addr[19]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Exta ADDR" *) 
  FDRE \o_mema_addr_reg[1] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(minusOp[1]),
        .Q(o_mema_addr[1]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Exta ADDR" *) 
  FDRE \o_mema_addr_reg[20] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(minusOp[20]),
        .Q(o_mema_addr[20]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Exta ADDR" *) 
  FDRE \o_mema_addr_reg[21] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(minusOp[21]),
        .Q(o_mema_addr[21]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Exta ADDR" *) 
  FDRE \o_mema_addr_reg[22] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(minusOp[22]),
        .Q(o_mema_addr[22]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Exta ADDR" *) 
  FDRE \o_mema_addr_reg[23] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(minusOp[23]),
        .Q(o_mema_addr[23]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Exta ADDR" *) 
  FDRE \o_mema_addr_reg[24] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(minusOp[24]),
        .Q(o_mema_addr[24]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Exta ADDR" *) 
  FDRE \o_mema_addr_reg[25] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(minusOp[25]),
        .Q(o_mema_addr[25]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Exta ADDR" *) 
  FDRE \o_mema_addr_reg[26] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(minusOp[26]),
        .Q(o_mema_addr[26]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Exta ADDR" *) 
  FDRE \o_mema_addr_reg[27] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(minusOp[27]),
        .Q(o_mema_addr[27]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Exta ADDR" *) 
  FDRE \o_mema_addr_reg[28] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(minusOp[28]),
        .Q(o_mema_addr[28]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Exta ADDR" *) 
  FDRE \o_mema_addr_reg[29] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(minusOp[29]),
        .Q(o_mema_addr[29]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Exta ADDR" *) 
  FDRE \o_mema_addr_reg[2] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(minusOp[2]),
        .Q(o_mema_addr[2]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Exta ADDR" *) 
  FDRE \o_mema_addr_reg[30] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(minusOp[30]),
        .Q(o_mema_addr[30]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Exta ADDR" *) 
  FDRE \o_mema_addr_reg[31] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(minusOp[31]),
        .Q(o_mema_addr[31]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Exta ADDR" *) 
  FDRE \o_mema_addr_reg[3] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(minusOp[3]),
        .Q(o_mema_addr[3]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Exta ADDR" *) 
  FDRE \o_mema_addr_reg[4] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(minusOp[4]),
        .Q(o_mema_addr[4]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Exta ADDR" *) 
  FDRE \o_mema_addr_reg[5] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(minusOp[5]),
        .Q(o_mema_addr[5]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Exta ADDR" *) 
  FDRE \o_mema_addr_reg[6] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(minusOp[6]),
        .Q(o_mema_addr[6]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Exta ADDR" *) 
  FDRE \o_mema_addr_reg[7] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(minusOp[7]),
        .Q(o_mema_addr[7]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Exta ADDR" *) 
  FDRE \o_mema_addr_reg[8] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(minusOp[8]),
        .Q(o_mema_addr[8]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Exta ADDR" *) 
  FDRE \o_mema_addr_reg[9] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(minusOp[9]),
        .Q(o_mema_addr[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h74)) 
    o_mema_en_i_1
       (.I0(state0[1]),
        .I1(state0[0]),
        .I2(o_mema_en),
        .O(o_mema_en_i_1_n_0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Exta EN" *) 
  FDRE o_mema_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_mema_en_i_1_n_0),
        .Q(o_mema_en),
        .R(rst));
  LUT2 #(
    .INIT(4'hE)) 
    \o_memb_addr[12]_i_2 
       (.I0(\i_reg_n_0_[11] ),
        .I1(s_input_adr[11]),
        .O(\o_memb_addr[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_memb_addr[12]_i_3 
       (.I0(\i_reg_n_0_[10] ),
        .I1(s_input_adr[10]),
        .O(\o_memb_addr[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_memb_addr[12]_i_4 
       (.I0(\i_reg_n_0_[9] ),
        .I1(s_input_adr[9]),
        .O(\o_memb_addr[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_memb_addr[12]_i_5 
       (.I0(\i_reg_n_0_[8] ),
        .I1(s_input_adr[8]),
        .O(\o_memb_addr[12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \o_memb_addr[12]_i_6 
       (.I0(s_input_adr[11]),
        .I1(\i_reg_n_0_[11] ),
        .I2(s_input_adr[12]),
        .I3(\i_reg_n_0_[12] ),
        .O(\o_memb_addr[12]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \o_memb_addr[12]_i_7 
       (.I0(s_input_adr[10]),
        .I1(\i_reg_n_0_[10] ),
        .I2(s_input_adr[11]),
        .I3(\i_reg_n_0_[11] ),
        .O(\o_memb_addr[12]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \o_memb_addr[12]_i_8 
       (.I0(s_input_adr[9]),
        .I1(\i_reg_n_0_[9] ),
        .I2(s_input_adr[10]),
        .I3(\i_reg_n_0_[10] ),
        .O(\o_memb_addr[12]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \o_memb_addr[12]_i_9 
       (.I0(s_input_adr[8]),
        .I1(\i_reg_n_0_[8] ),
        .I2(s_input_adr[9]),
        .I3(\i_reg_n_0_[9] ),
        .O(\o_memb_addr[12]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_memb_addr[16]_i_2 
       (.I0(\i_reg_n_0_[15] ),
        .I1(s_input_adr[15]),
        .O(\o_memb_addr[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_memb_addr[16]_i_3 
       (.I0(\i_reg_n_0_[14] ),
        .I1(s_input_adr[14]),
        .O(\o_memb_addr[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_memb_addr[16]_i_4 
       (.I0(\i_reg_n_0_[13] ),
        .I1(s_input_adr[13]),
        .O(\o_memb_addr[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_memb_addr[16]_i_5 
       (.I0(\i_reg_n_0_[12] ),
        .I1(s_input_adr[12]),
        .O(\o_memb_addr[16]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \o_memb_addr[16]_i_6 
       (.I0(s_input_adr[15]),
        .I1(\i_reg_n_0_[15] ),
        .I2(s_input_adr[16]),
        .I3(\i_reg_n_0_[16] ),
        .O(\o_memb_addr[16]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \o_memb_addr[16]_i_7 
       (.I0(s_input_adr[14]),
        .I1(\i_reg_n_0_[14] ),
        .I2(s_input_adr[15]),
        .I3(\i_reg_n_0_[15] ),
        .O(\o_memb_addr[16]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \o_memb_addr[16]_i_8 
       (.I0(s_input_adr[13]),
        .I1(\i_reg_n_0_[13] ),
        .I2(s_input_adr[14]),
        .I3(\i_reg_n_0_[14] ),
        .O(\o_memb_addr[16]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \o_memb_addr[16]_i_9 
       (.I0(s_input_adr[12]),
        .I1(\i_reg_n_0_[12] ),
        .I2(s_input_adr[13]),
        .I3(\i_reg_n_0_[13] ),
        .O(\o_memb_addr[16]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_memb_addr[20]_i_2 
       (.I0(\i_reg_n_0_[19] ),
        .I1(s_input_adr[19]),
        .O(\o_memb_addr[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_memb_addr[20]_i_3 
       (.I0(\i_reg_n_0_[18] ),
        .I1(s_input_adr[18]),
        .O(\o_memb_addr[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_memb_addr[20]_i_4 
       (.I0(\i_reg_n_0_[17] ),
        .I1(s_input_adr[17]),
        .O(\o_memb_addr[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_memb_addr[20]_i_5 
       (.I0(\i_reg_n_0_[16] ),
        .I1(s_input_adr[16]),
        .O(\o_memb_addr[20]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \o_memb_addr[20]_i_6 
       (.I0(s_input_adr[19]),
        .I1(\i_reg_n_0_[19] ),
        .I2(s_input_adr[20]),
        .I3(\i_reg_n_0_[20] ),
        .O(\o_memb_addr[20]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \o_memb_addr[20]_i_7 
       (.I0(s_input_adr[18]),
        .I1(\i_reg_n_0_[18] ),
        .I2(s_input_adr[19]),
        .I3(\i_reg_n_0_[19] ),
        .O(\o_memb_addr[20]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \o_memb_addr[20]_i_8 
       (.I0(s_input_adr[17]),
        .I1(\i_reg_n_0_[17] ),
        .I2(s_input_adr[18]),
        .I3(\i_reg_n_0_[18] ),
        .O(\o_memb_addr[20]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \o_memb_addr[20]_i_9 
       (.I0(s_input_adr[16]),
        .I1(\i_reg_n_0_[16] ),
        .I2(s_input_adr[17]),
        .I3(\i_reg_n_0_[17] ),
        .O(\o_memb_addr[20]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_memb_addr[24]_i_2 
       (.I0(\i_reg_n_0_[23] ),
        .I1(s_input_adr[23]),
        .O(\o_memb_addr[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_memb_addr[24]_i_3 
       (.I0(\i_reg_n_0_[22] ),
        .I1(s_input_adr[22]),
        .O(\o_memb_addr[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_memb_addr[24]_i_4 
       (.I0(\i_reg_n_0_[21] ),
        .I1(s_input_adr[21]),
        .O(\o_memb_addr[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_memb_addr[24]_i_5 
       (.I0(\i_reg_n_0_[20] ),
        .I1(s_input_adr[20]),
        .O(\o_memb_addr[24]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \o_memb_addr[24]_i_6 
       (.I0(s_input_adr[23]),
        .I1(\i_reg_n_0_[23] ),
        .I2(s_input_adr[24]),
        .I3(\i_reg_n_0_[24] ),
        .O(\o_memb_addr[24]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \o_memb_addr[24]_i_7 
       (.I0(s_input_adr[22]),
        .I1(\i_reg_n_0_[22] ),
        .I2(s_input_adr[23]),
        .I3(\i_reg_n_0_[23] ),
        .O(\o_memb_addr[24]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \o_memb_addr[24]_i_8 
       (.I0(s_input_adr[21]),
        .I1(\i_reg_n_0_[21] ),
        .I2(s_input_adr[22]),
        .I3(\i_reg_n_0_[22] ),
        .O(\o_memb_addr[24]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \o_memb_addr[24]_i_9 
       (.I0(s_input_adr[20]),
        .I1(\i_reg_n_0_[20] ),
        .I2(s_input_adr[21]),
        .I3(\i_reg_n_0_[21] ),
        .O(\o_memb_addr[24]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_memb_addr[28]_i_2 
       (.I0(\i_reg_n_0_[27] ),
        .I1(s_input_adr[27]),
        .O(\o_memb_addr[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_memb_addr[28]_i_3 
       (.I0(\i_reg_n_0_[26] ),
        .I1(s_input_adr[26]),
        .O(\o_memb_addr[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_memb_addr[28]_i_4 
       (.I0(\i_reg_n_0_[25] ),
        .I1(s_input_adr[25]),
        .O(\o_memb_addr[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_memb_addr[28]_i_5 
       (.I0(\i_reg_n_0_[24] ),
        .I1(s_input_adr[24]),
        .O(\o_memb_addr[28]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \o_memb_addr[28]_i_6 
       (.I0(s_input_adr[27]),
        .I1(\i_reg_n_0_[27] ),
        .I2(s_input_adr[28]),
        .I3(\i_reg_n_0_[28] ),
        .O(\o_memb_addr[28]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \o_memb_addr[28]_i_7 
       (.I0(s_input_adr[26]),
        .I1(\i_reg_n_0_[26] ),
        .I2(s_input_adr[27]),
        .I3(\i_reg_n_0_[27] ),
        .O(\o_memb_addr[28]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \o_memb_addr[28]_i_8 
       (.I0(s_input_adr[25]),
        .I1(\i_reg_n_0_[25] ),
        .I2(s_input_adr[26]),
        .I3(\i_reg_n_0_[26] ),
        .O(\o_memb_addr[28]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \o_memb_addr[28]_i_9 
       (.I0(s_input_adr[24]),
        .I1(\i_reg_n_0_[24] ),
        .I2(s_input_adr[25]),
        .I3(\i_reg_n_0_[25] ),
        .O(\o_memb_addr[28]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_memb_addr[31]_i_2 
       (.I0(\i_reg_n_0_[29] ),
        .I1(s_input_adr[29]),
        .O(\o_memb_addr[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_memb_addr[31]_i_3 
       (.I0(\i_reg_n_0_[28] ),
        .I1(s_input_adr[28]),
        .O(\o_memb_addr[31]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \o_memb_addr[31]_i_4 
       (.I0(s_input_adr[31]),
        .I1(s_input_adr[30]),
        .I2(\i_reg_n_0_[30] ),
        .O(\o_memb_addr[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \o_memb_addr[31]_i_5 
       (.I0(s_input_adr[29]),
        .I1(\i_reg_n_0_[29] ),
        .I2(s_input_adr[30]),
        .I3(\i_reg_n_0_[30] ),
        .O(\o_memb_addr[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \o_memb_addr[31]_i_6 
       (.I0(s_input_adr[28]),
        .I1(\i_reg_n_0_[28] ),
        .I2(s_input_adr[29]),
        .I3(\i_reg_n_0_[29] ),
        .O(\o_memb_addr[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_memb_addr[4]_i_2 
       (.I0(s_input_adr[4]),
        .I1(\i_reg_n_0_[4] ),
        .O(\o_memb_addr[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_memb_addr[4]_i_3 
       (.I0(s_input_adr[3]),
        .I1(\i_reg_n_0_[3] ),
        .O(\o_memb_addr[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_memb_addr[4]_i_4 
       (.I0(s_input_adr[2]),
        .I1(\i_reg_n_0_[2] ),
        .O(\o_memb_addr[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_memb_addr[4]_i_5 
       (.I0(s_input_adr[1]),
        .I1(\i_reg_n_0_[1] ),
        .O(\o_memb_addr[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_memb_addr[8]_i_2 
       (.I0(\i_reg_n_0_[7] ),
        .I1(s_input_adr[7]),
        .O(\o_memb_addr[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_memb_addr[8]_i_3 
       (.I0(\i_reg_n_0_[6] ),
        .O(\o_memb_addr[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \o_memb_addr[8]_i_4 
       (.I0(s_input_adr[7]),
        .I1(\i_reg_n_0_[7] ),
        .I2(s_input_adr[8]),
        .I3(\i_reg_n_0_[8] ),
        .O(\o_memb_addr[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \o_memb_addr[8]_i_5 
       (.I0(s_input_adr[7]),
        .I1(\i_reg_n_0_[7] ),
        .I2(\i_reg_n_0_[6] ),
        .O(\o_memb_addr[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \o_memb_addr[8]_i_6 
       (.I0(\i_reg_n_0_[6] ),
        .I1(s_input_adr[6]),
        .O(\o_memb_addr[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o_memb_addr[8]_i_7 
       (.I0(s_input_adr[5]),
        .I1(\i_reg_n_0_[5] ),
        .O(\o_memb_addr[8]_i_7_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extb ADDR" *) 
  FDRE \o_memb_addr_reg[10] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(\o_memb_addr_reg[12]_i_1_n_6 ),
        .Q(o_memb_addr[8]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extb ADDR" *) 
  FDRE \o_memb_addr_reg[11] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(\o_memb_addr_reg[12]_i_1_n_5 ),
        .Q(o_memb_addr[9]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extb ADDR" *) 
  FDRE \o_memb_addr_reg[12] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(\o_memb_addr_reg[12]_i_1_n_4 ),
        .Q(o_memb_addr[10]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_memb_addr_reg[12]_i_1 
       (.CI(\o_memb_addr_reg[8]_i_1_n_0 ),
        .CO({\o_memb_addr_reg[12]_i_1_n_0 ,\o_memb_addr_reg[12]_i_1_n_1 ,\o_memb_addr_reg[12]_i_1_n_2 ,\o_memb_addr_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\o_memb_addr[12]_i_2_n_0 ,\o_memb_addr[12]_i_3_n_0 ,\o_memb_addr[12]_i_4_n_0 ,\o_memb_addr[12]_i_5_n_0 }),
        .O({\o_memb_addr_reg[12]_i_1_n_4 ,\o_memb_addr_reg[12]_i_1_n_5 ,\o_memb_addr_reg[12]_i_1_n_6 ,\o_memb_addr_reg[12]_i_1_n_7 }),
        .S({\o_memb_addr[12]_i_6_n_0 ,\o_memb_addr[12]_i_7_n_0 ,\o_memb_addr[12]_i_8_n_0 ,\o_memb_addr[12]_i_9_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extb ADDR" *) 
  FDRE \o_memb_addr_reg[13] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(\o_memb_addr_reg[16]_i_1_n_7 ),
        .Q(o_memb_addr[11]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extb ADDR" *) 
  FDRE \o_memb_addr_reg[14] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(\o_memb_addr_reg[16]_i_1_n_6 ),
        .Q(o_memb_addr[12]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extb ADDR" *) 
  FDRE \o_memb_addr_reg[15] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(\o_memb_addr_reg[16]_i_1_n_5 ),
        .Q(o_memb_addr[13]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extb ADDR" *) 
  FDRE \o_memb_addr_reg[16] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(\o_memb_addr_reg[16]_i_1_n_4 ),
        .Q(o_memb_addr[14]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_memb_addr_reg[16]_i_1 
       (.CI(\o_memb_addr_reg[12]_i_1_n_0 ),
        .CO({\o_memb_addr_reg[16]_i_1_n_0 ,\o_memb_addr_reg[16]_i_1_n_1 ,\o_memb_addr_reg[16]_i_1_n_2 ,\o_memb_addr_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\o_memb_addr[16]_i_2_n_0 ,\o_memb_addr[16]_i_3_n_0 ,\o_memb_addr[16]_i_4_n_0 ,\o_memb_addr[16]_i_5_n_0 }),
        .O({\o_memb_addr_reg[16]_i_1_n_4 ,\o_memb_addr_reg[16]_i_1_n_5 ,\o_memb_addr_reg[16]_i_1_n_6 ,\o_memb_addr_reg[16]_i_1_n_7 }),
        .S({\o_memb_addr[16]_i_6_n_0 ,\o_memb_addr[16]_i_7_n_0 ,\o_memb_addr[16]_i_8_n_0 ,\o_memb_addr[16]_i_9_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extb ADDR" *) 
  FDRE \o_memb_addr_reg[17] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(\o_memb_addr_reg[20]_i_1_n_7 ),
        .Q(o_memb_addr[15]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extb ADDR" *) 
  FDRE \o_memb_addr_reg[18] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(\o_memb_addr_reg[20]_i_1_n_6 ),
        .Q(o_memb_addr[16]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extb ADDR" *) 
  FDRE \o_memb_addr_reg[19] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(\o_memb_addr_reg[20]_i_1_n_5 ),
        .Q(o_memb_addr[17]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extb ADDR" *) 
  FDRE \o_memb_addr_reg[20] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(\o_memb_addr_reg[20]_i_1_n_4 ),
        .Q(o_memb_addr[18]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_memb_addr_reg[20]_i_1 
       (.CI(\o_memb_addr_reg[16]_i_1_n_0 ),
        .CO({\o_memb_addr_reg[20]_i_1_n_0 ,\o_memb_addr_reg[20]_i_1_n_1 ,\o_memb_addr_reg[20]_i_1_n_2 ,\o_memb_addr_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\o_memb_addr[20]_i_2_n_0 ,\o_memb_addr[20]_i_3_n_0 ,\o_memb_addr[20]_i_4_n_0 ,\o_memb_addr[20]_i_5_n_0 }),
        .O({\o_memb_addr_reg[20]_i_1_n_4 ,\o_memb_addr_reg[20]_i_1_n_5 ,\o_memb_addr_reg[20]_i_1_n_6 ,\o_memb_addr_reg[20]_i_1_n_7 }),
        .S({\o_memb_addr[20]_i_6_n_0 ,\o_memb_addr[20]_i_7_n_0 ,\o_memb_addr[20]_i_8_n_0 ,\o_memb_addr[20]_i_9_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extb ADDR" *) 
  FDRE \o_memb_addr_reg[21] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(\o_memb_addr_reg[24]_i_1_n_7 ),
        .Q(o_memb_addr[19]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extb ADDR" *) 
  FDRE \o_memb_addr_reg[22] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(\o_memb_addr_reg[24]_i_1_n_6 ),
        .Q(o_memb_addr[20]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extb ADDR" *) 
  FDRE \o_memb_addr_reg[23] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(\o_memb_addr_reg[24]_i_1_n_5 ),
        .Q(o_memb_addr[21]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extb ADDR" *) 
  FDRE \o_memb_addr_reg[24] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(\o_memb_addr_reg[24]_i_1_n_4 ),
        .Q(o_memb_addr[22]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_memb_addr_reg[24]_i_1 
       (.CI(\o_memb_addr_reg[20]_i_1_n_0 ),
        .CO({\o_memb_addr_reg[24]_i_1_n_0 ,\o_memb_addr_reg[24]_i_1_n_1 ,\o_memb_addr_reg[24]_i_1_n_2 ,\o_memb_addr_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\o_memb_addr[24]_i_2_n_0 ,\o_memb_addr[24]_i_3_n_0 ,\o_memb_addr[24]_i_4_n_0 ,\o_memb_addr[24]_i_5_n_0 }),
        .O({\o_memb_addr_reg[24]_i_1_n_4 ,\o_memb_addr_reg[24]_i_1_n_5 ,\o_memb_addr_reg[24]_i_1_n_6 ,\o_memb_addr_reg[24]_i_1_n_7 }),
        .S({\o_memb_addr[24]_i_6_n_0 ,\o_memb_addr[24]_i_7_n_0 ,\o_memb_addr[24]_i_8_n_0 ,\o_memb_addr[24]_i_9_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extb ADDR" *) 
  FDRE \o_memb_addr_reg[25] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(\o_memb_addr_reg[28]_i_1_n_7 ),
        .Q(o_memb_addr[23]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extb ADDR" *) 
  FDRE \o_memb_addr_reg[26] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(\o_memb_addr_reg[28]_i_1_n_6 ),
        .Q(o_memb_addr[24]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extb ADDR" *) 
  FDRE \o_memb_addr_reg[27] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(\o_memb_addr_reg[28]_i_1_n_5 ),
        .Q(o_memb_addr[25]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extb ADDR" *) 
  FDRE \o_memb_addr_reg[28] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(\o_memb_addr_reg[28]_i_1_n_4 ),
        .Q(o_memb_addr[26]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_memb_addr_reg[28]_i_1 
       (.CI(\o_memb_addr_reg[24]_i_1_n_0 ),
        .CO({\o_memb_addr_reg[28]_i_1_n_0 ,\o_memb_addr_reg[28]_i_1_n_1 ,\o_memb_addr_reg[28]_i_1_n_2 ,\o_memb_addr_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\o_memb_addr[28]_i_2_n_0 ,\o_memb_addr[28]_i_3_n_0 ,\o_memb_addr[28]_i_4_n_0 ,\o_memb_addr[28]_i_5_n_0 }),
        .O({\o_memb_addr_reg[28]_i_1_n_4 ,\o_memb_addr_reg[28]_i_1_n_5 ,\o_memb_addr_reg[28]_i_1_n_6 ,\o_memb_addr_reg[28]_i_1_n_7 }),
        .S({\o_memb_addr[28]_i_6_n_0 ,\o_memb_addr[28]_i_7_n_0 ,\o_memb_addr[28]_i_8_n_0 ,\o_memb_addr[28]_i_9_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extb ADDR" *) 
  FDRE \o_memb_addr_reg[29] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(\o_memb_addr_reg[31]_i_1_n_7 ),
        .Q(o_memb_addr[27]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extb ADDR" *) 
  FDRE \o_memb_addr_reg[2] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(\o_memb_addr_reg[4]_i_1_n_6 ),
        .Q(o_memb_addr[0]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extb ADDR" *) 
  FDRE \o_memb_addr_reg[30] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(\o_memb_addr_reg[31]_i_1_n_6 ),
        .Q(o_memb_addr[28]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extb ADDR" *) 
  FDRE \o_memb_addr_reg[31] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(\o_memb_addr_reg[31]_i_1_n_5 ),
        .Q(o_memb_addr[29]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_memb_addr_reg[31]_i_1 
       (.CI(\o_memb_addr_reg[28]_i_1_n_0 ),
        .CO({\NLW_o_memb_addr_reg[31]_i_1_CO_UNCONNECTED [3:2],\o_memb_addr_reg[31]_i_1_n_2 ,\o_memb_addr_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\o_memb_addr[31]_i_2_n_0 ,\o_memb_addr[31]_i_3_n_0 }),
        .O({\NLW_o_memb_addr_reg[31]_i_1_O_UNCONNECTED [3],\o_memb_addr_reg[31]_i_1_n_5 ,\o_memb_addr_reg[31]_i_1_n_6 ,\o_memb_addr_reg[31]_i_1_n_7 }),
        .S({1'b0,\o_memb_addr[31]_i_4_n_0 ,\o_memb_addr[31]_i_5_n_0 ,\o_memb_addr[31]_i_6_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extb ADDR" *) 
  FDRE \o_memb_addr_reg[3] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(\o_memb_addr_reg[4]_i_1_n_5 ),
        .Q(o_memb_addr[1]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extb ADDR" *) 
  FDRE \o_memb_addr_reg[4] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(\o_memb_addr_reg[4]_i_1_n_4 ),
        .Q(o_memb_addr[2]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_memb_addr_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\o_memb_addr_reg[4]_i_1_n_0 ,\o_memb_addr_reg[4]_i_1_n_1 ,\o_memb_addr_reg[4]_i_1_n_2 ,\o_memb_addr_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(s_input_adr[4:1]),
        .O({\o_memb_addr_reg[4]_i_1_n_4 ,\o_memb_addr_reg[4]_i_1_n_5 ,\o_memb_addr_reg[4]_i_1_n_6 ,\NLW_o_memb_addr_reg[4]_i_1_O_UNCONNECTED [0]}),
        .S({\o_memb_addr[4]_i_2_n_0 ,\o_memb_addr[4]_i_3_n_0 ,\o_memb_addr[4]_i_4_n_0 ,\o_memb_addr[4]_i_5_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extb ADDR" *) 
  FDRE \o_memb_addr_reg[5] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(\o_memb_addr_reg[8]_i_1_n_7 ),
        .Q(o_memb_addr[3]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extb ADDR" *) 
  FDRE \o_memb_addr_reg[6] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(\o_memb_addr_reg[8]_i_1_n_6 ),
        .Q(o_memb_addr[4]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extb ADDR" *) 
  FDRE \o_memb_addr_reg[7] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(\o_memb_addr_reg[8]_i_1_n_5 ),
        .Q(o_memb_addr[5]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extb ADDR" *) 
  FDRE \o_memb_addr_reg[8] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(\o_memb_addr_reg[8]_i_1_n_4 ),
        .Q(o_memb_addr[6]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_memb_addr_reg[8]_i_1 
       (.CI(\o_memb_addr_reg[4]_i_1_n_0 ),
        .CO({\o_memb_addr_reg[8]_i_1_n_0 ,\o_memb_addr_reg[8]_i_1_n_1 ,\o_memb_addr_reg[8]_i_1_n_2 ,\o_memb_addr_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\o_memb_addr[8]_i_2_n_0 ,\i_reg_n_0_[6] ,\o_memb_addr[8]_i_3_n_0 ,s_input_adr[5]}),
        .O({\o_memb_addr_reg[8]_i_1_n_4 ,\o_memb_addr_reg[8]_i_1_n_5 ,\o_memb_addr_reg[8]_i_1_n_6 ,\o_memb_addr_reg[8]_i_1_n_7 }),
        .S({\o_memb_addr[8]_i_4_n_0 ,\o_memb_addr[8]_i_5_n_0 ,\o_memb_addr[8]_i_6_n_0 ,\o_memb_addr[8]_i_7_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extb ADDR" *) 
  FDRE \o_memb_addr_reg[9] 
       (.C(clk),
        .CE(\o_mema_addr[31]_i_1_n_0 ),
        .D(\o_memb_addr_reg[12]_i_1_n_7 ),
        .Q(o_memb_addr[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h74)) 
    o_memb_en_i_1
       (.I0(state0[1]),
        .I1(state0[0]),
        .I2(o_memb_en),
        .O(o_memb_en_i_1_n_0));
  (* equivalent_register_removal = "no" *) 
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extb EN" *) 
  FDRE o_memb_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_memb_en_i_1_n_0),
        .Q(o_memb_en),
        .R(rst));
  LUT2 #(
    .INIT(4'h6)) 
    \o_memc_addr[1]_i_1 
       (.I0(s_output_adr[1]),
        .I1(\k_reg_n_0_[1] ),
        .O(\o_memc_addr[1]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc ADDR" *) 
  FDRE \o_memc_addr_reg[0] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(s_output_adr[0]),
        .Q(o_memc_addr[0]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc ADDR" *) 
  FDRE \o_memc_addr_reg[10] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\minusOp_inferred__1/i__carry__1_n_6 ),
        .Q(o_memc_addr[10]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc ADDR" *) 
  FDRE \o_memc_addr_reg[11] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\minusOp_inferred__1/i__carry__1_n_5 ),
        .Q(o_memc_addr[11]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc ADDR" *) 
  FDRE \o_memc_addr_reg[12] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\minusOp_inferred__1/i__carry__1_n_4 ),
        .Q(o_memc_addr[12]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc ADDR" *) 
  FDRE \o_memc_addr_reg[13] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\minusOp_inferred__1/i__carry__2_n_7 ),
        .Q(o_memc_addr[13]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc ADDR" *) 
  FDRE \o_memc_addr_reg[14] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\minusOp_inferred__1/i__carry__2_n_6 ),
        .Q(o_memc_addr[14]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc ADDR" *) 
  FDRE \o_memc_addr_reg[15] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\minusOp_inferred__1/i__carry__2_n_5 ),
        .Q(o_memc_addr[15]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc ADDR" *) 
  FDRE \o_memc_addr_reg[16] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\minusOp_inferred__1/i__carry__2_n_4 ),
        .Q(o_memc_addr[16]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc ADDR" *) 
  FDRE \o_memc_addr_reg[17] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\minusOp_inferred__1/i__carry__3_n_7 ),
        .Q(o_memc_addr[17]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc ADDR" *) 
  FDRE \o_memc_addr_reg[18] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\minusOp_inferred__1/i__carry__3_n_6 ),
        .Q(o_memc_addr[18]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc ADDR" *) 
  FDRE \o_memc_addr_reg[19] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\minusOp_inferred__1/i__carry__3_n_5 ),
        .Q(o_memc_addr[19]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc ADDR" *) 
  FDRE \o_memc_addr_reg[1] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\o_memc_addr[1]_i_1_n_0 ),
        .Q(o_memc_addr[1]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc ADDR" *) 
  FDRE \o_memc_addr_reg[20] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\minusOp_inferred__1/i__carry__3_n_4 ),
        .Q(o_memc_addr[20]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc ADDR" *) 
  FDRE \o_memc_addr_reg[21] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\minusOp_inferred__1/i__carry__4_n_7 ),
        .Q(o_memc_addr[21]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc ADDR" *) 
  FDRE \o_memc_addr_reg[22] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\minusOp_inferred__1/i__carry__4_n_6 ),
        .Q(o_memc_addr[22]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc ADDR" *) 
  FDRE \o_memc_addr_reg[23] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\minusOp_inferred__1/i__carry__4_n_5 ),
        .Q(o_memc_addr[23]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc ADDR" *) 
  FDRE \o_memc_addr_reg[24] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\minusOp_inferred__1/i__carry__4_n_4 ),
        .Q(o_memc_addr[24]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc ADDR" *) 
  FDRE \o_memc_addr_reg[25] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\minusOp_inferred__1/i__carry__5_n_7 ),
        .Q(o_memc_addr[25]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc ADDR" *) 
  FDRE \o_memc_addr_reg[26] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\minusOp_inferred__1/i__carry__5_n_6 ),
        .Q(o_memc_addr[26]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc ADDR" *) 
  FDRE \o_memc_addr_reg[27] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\minusOp_inferred__1/i__carry__5_n_5 ),
        .Q(o_memc_addr[27]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc ADDR" *) 
  FDRE \o_memc_addr_reg[28] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\minusOp_inferred__1/i__carry__5_n_4 ),
        .Q(o_memc_addr[28]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc ADDR" *) 
  FDRE \o_memc_addr_reg[29] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\minusOp_inferred__1/i__carry__6_n_7 ),
        .Q(o_memc_addr[29]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc ADDR" *) 
  FDRE \o_memc_addr_reg[2] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\minusOp_inferred__1/i__carry_n_6 ),
        .Q(o_memc_addr[2]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc ADDR" *) 
  FDRE \o_memc_addr_reg[30] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\minusOp_inferred__1/i__carry__6_n_6 ),
        .Q(o_memc_addr[30]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc ADDR" *) 
  FDRE \o_memc_addr_reg[31] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\minusOp_inferred__1/i__carry__6_n_5 ),
        .Q(o_memc_addr[31]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc ADDR" *) 
  FDRE \o_memc_addr_reg[3] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\minusOp_inferred__1/i__carry_n_5 ),
        .Q(o_memc_addr[3]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc ADDR" *) 
  FDRE \o_memc_addr_reg[4] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\minusOp_inferred__1/i__carry_n_4 ),
        .Q(o_memc_addr[4]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc ADDR" *) 
  FDRE \o_memc_addr_reg[5] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\minusOp_inferred__1/i__carry__0_n_7 ),
        .Q(o_memc_addr[5]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc ADDR" *) 
  FDRE \o_memc_addr_reg[6] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\minusOp_inferred__1/i__carry__0_n_6 ),
        .Q(o_memc_addr[6]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc ADDR" *) 
  FDRE \o_memc_addr_reg[7] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\minusOp_inferred__1/i__carry__0_n_5 ),
        .Q(o_memc_addr[7]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc ADDR" *) 
  FDRE \o_memc_addr_reg[8] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\minusOp_inferred__1/i__carry__0_n_4 ),
        .Q(o_memc_addr[8]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc ADDR" *) 
  FDRE \o_memc_addr_reg[9] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\minusOp_inferred__1/i__carry__1_n_7 ),
        .Q(o_memc_addr[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h02)) 
    \o_memc_din[31]_i_1 
       (.I0(\FSM_onehot_flag_reg_n_0_[2] ),
        .I1(rst),
        .I2(\FSM_onehot_flag_reg_n_0_[1] ),
        .O(\o_memc_din[31]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc DIN" *) 
  FDRE \o_memc_din_reg[0] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\temp_result_reg_n_0_[0] ),
        .Q(o_memc_din[0]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc DIN" *) 
  FDRE \o_memc_din_reg[10] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(L[10]),
        .Q(o_memc_din[10]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc DIN" *) 
  FDRE \o_memc_din_reg[11] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(L[11]),
        .Q(o_memc_din[11]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc DIN" *) 
  FDRE \o_memc_din_reg[12] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(L[12]),
        .Q(o_memc_din[12]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc DIN" *) 
  FDRE \o_memc_din_reg[13] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(L[13]),
        .Q(o_memc_din[13]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc DIN" *) 
  FDRE \o_memc_din_reg[14] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(L[14]),
        .Q(o_memc_din[14]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc DIN" *) 
  FDRE \o_memc_din_reg[15] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(L[15]),
        .Q(o_memc_din[15]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc DIN" *) 
  FDRE \o_memc_din_reg[16] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\temp_result_reg_n_0_[16] ),
        .Q(o_memc_din[16]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc DIN" *) 
  FDRE \o_memc_din_reg[17] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\temp_result_reg_n_0_[17] ),
        .Q(o_memc_din[17]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc DIN" *) 
  FDRE \o_memc_din_reg[18] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\temp_result_reg_n_0_[18] ),
        .Q(o_memc_din[18]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc DIN" *) 
  FDRE \o_memc_din_reg[19] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\temp_result_reg_n_0_[19] ),
        .Q(o_memc_din[19]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc DIN" *) 
  FDRE \o_memc_din_reg[1] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\temp_result_reg_n_0_[1] ),
        .Q(o_memc_din[1]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc DIN" *) 
  FDRE \o_memc_din_reg[20] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\temp_result_reg_n_0_[20] ),
        .Q(o_memc_din[20]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc DIN" *) 
  FDRE \o_memc_din_reg[21] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\temp_result_reg_n_0_[21] ),
        .Q(o_memc_din[21]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc DIN" *) 
  FDRE \o_memc_din_reg[22] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\temp_result_reg_n_0_[22] ),
        .Q(o_memc_din[22]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc DIN" *) 
  FDRE \o_memc_din_reg[23] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\temp_result_reg_n_0_[23] ),
        .Q(o_memc_din[23]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc DIN" *) 
  FDRE \o_memc_din_reg[24] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\temp_result_reg_n_0_[24] ),
        .Q(o_memc_din[24]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc DIN" *) 
  FDRE \o_memc_din_reg[25] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\temp_result_reg_n_0_[25] ),
        .Q(o_memc_din[25]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc DIN" *) 
  FDRE \o_memc_din_reg[26] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\temp_result_reg_n_0_[26] ),
        .Q(o_memc_din[26]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc DIN" *) 
  FDRE \o_memc_din_reg[27] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\temp_result_reg_n_0_[27] ),
        .Q(o_memc_din[27]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc DIN" *) 
  FDRE \o_memc_din_reg[28] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\temp_result_reg_n_0_[28] ),
        .Q(o_memc_din[28]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc DIN" *) 
  FDRE \o_memc_din_reg[29] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\temp_result_reg_n_0_[29] ),
        .Q(o_memc_din[29]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc DIN" *) 
  FDRE \o_memc_din_reg[2] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\temp_result_reg_n_0_[2] ),
        .Q(o_memc_din[2]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc DIN" *) 
  FDRE \o_memc_din_reg[30] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\temp_result_reg_n_0_[30] ),
        .Q(o_memc_din[30]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc DIN" *) 
  FDRE \o_memc_din_reg[31] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\temp_result_reg_n_0_[31] ),
        .Q(o_memc_din[31]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc DIN" *) 
  FDRE \o_memc_din_reg[3] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\temp_result_reg_n_0_[3] ),
        .Q(o_memc_din[3]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc DIN" *) 
  FDRE \o_memc_din_reg[4] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\temp_result_reg_n_0_[4] ),
        .Q(o_memc_din[4]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc DIN" *) 
  FDRE \o_memc_din_reg[5] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\temp_result_reg_n_0_[5] ),
        .Q(o_memc_din[5]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc DIN" *) 
  FDRE \o_memc_din_reg[6] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\temp_result_reg_n_0_[6] ),
        .Q(o_memc_din[6]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc DIN" *) 
  FDRE \o_memc_din_reg[7] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(\temp_result_reg_n_0_[7] ),
        .Q(o_memc_din[7]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc DIN" *) 
  FDRE \o_memc_din_reg[8] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(L[8]),
        .Q(o_memc_din[8]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc DIN" *) 
  FDRE \o_memc_din_reg[9] 
       (.C(clk),
        .CE(\o_memc_din[31]_i_1_n_0 ),
        .D(L[9]),
        .Q(o_memc_din[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEFAA)) 
    o_memc_en_i_1
       (.I0(\FSM_onehot_flag_reg_n_0_[2] ),
        .I1(\FSM_onehot_flag_reg_n_0_[1] ),
        .I2(\FSM_onehot_flag_reg_n_0_[3] ),
        .I3(o_memc_en),
        .O(o_memc_en_i_1_n_0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc EN" *) 
  FDRE o_memc_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_memc_en_i_1_n_0),
        .Q(o_memc_en),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hEFAA)) 
    \o_memc_we[3]_i_1 
       (.I0(\FSM_onehot_flag_reg_n_0_[2] ),
        .I1(\FSM_onehot_flag_reg_n_0_[1] ),
        .I2(\FSM_onehot_flag_reg_n_0_[3] ),
        .I3(o_memc_we),
        .O(\o_memc_we[3]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Red_Extc WE" *) 
  FDRE \o_memc_we_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\o_memc_we[3]_i_1_n_0 ),
        .Q(o_memc_we),
        .R(rst));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/orig_input" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    orig_input_reg_0_1_0_0
       (.A0(\in_ctr_reg_n_0_[0] ),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_memb_dout[0]),
        .O(orig_input_reg_0_1_0_0_n_0),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    orig_input_reg_0_1_0_0_i_1
       (.I0(state0[0]),
        .I1(state0[1]),
        .I2(rst),
        .O(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/orig_input" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    orig_input_reg_0_1_10_10
       (.A0(\in_ctr_reg_n_0_[0] ),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_memb_dout[10]),
        .O(p_0_in15_in[2]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/orig_input" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    orig_input_reg_0_1_11_11
       (.A0(\in_ctr_reg_n_0_[0] ),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_memb_dout[11]),
        .O(p_0_in15_in[3]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/orig_input" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    orig_input_reg_0_1_12_12
       (.A0(\in_ctr_reg_n_0_[0] ),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_memb_dout[12]),
        .O(p_0_in15_in[4]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/orig_input" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    orig_input_reg_0_1_13_13
       (.A0(\in_ctr_reg_n_0_[0] ),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_memb_dout[13]),
        .O(p_0_in15_in[5]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/orig_input" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    orig_input_reg_0_1_14_14
       (.A0(\in_ctr_reg_n_0_[0] ),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_memb_dout[14]),
        .O(p_0_in15_in[6]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/orig_input" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    orig_input_reg_0_1_15_15
       (.A0(\in_ctr_reg_n_0_[0] ),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_memb_dout[15]),
        .O(p_0_in15_in[7]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/orig_input" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    orig_input_reg_0_1_16_16
       (.A0(\in_ctr_reg_n_0_[0] ),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_memb_dout[16]),
        .O(p_0_in4_in[0]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/orig_input" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    orig_input_reg_0_1_17_17
       (.A0(\in_ctr_reg_n_0_[0] ),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_memb_dout[17]),
        .O(p_0_in4_in[1]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/orig_input" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    orig_input_reg_0_1_18_18
       (.A0(\in_ctr_reg_n_0_[0] ),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_memb_dout[18]),
        .O(p_0_in4_in[2]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/orig_input" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    orig_input_reg_0_1_19_19
       (.A0(\in_ctr_reg_n_0_[0] ),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_memb_dout[19]),
        .O(p_0_in4_in[3]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/orig_input" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    orig_input_reg_0_1_1_1
       (.A0(\in_ctr_reg_n_0_[0] ),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_memb_dout[1]),
        .O(orig_input_reg_0_1_1_1_n_0),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/orig_input" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    orig_input_reg_0_1_20_20
       (.A0(\in_ctr_reg_n_0_[0] ),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_memb_dout[20]),
        .O(p_0_in4_in[4]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/orig_input" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    orig_input_reg_0_1_21_21
       (.A0(\in_ctr_reg_n_0_[0] ),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_memb_dout[21]),
        .O(p_0_in4_in[5]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/orig_input" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    orig_input_reg_0_1_22_22
       (.A0(\in_ctr_reg_n_0_[0] ),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_memb_dout[22]),
        .O(p_0_in4_in[6]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/orig_input" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    orig_input_reg_0_1_23_23
       (.A0(\in_ctr_reg_n_0_[0] ),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_memb_dout[23]),
        .O(p_0_in4_in[7]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/orig_input" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    orig_input_reg_0_1_24_24
       (.A0(\in_ctr_reg_n_0_[0] ),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_memb_dout[24]),
        .O(p_0_in9_in[0]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/orig_input" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    orig_input_reg_0_1_25_25
       (.A0(\in_ctr_reg_n_0_[0] ),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_memb_dout[25]),
        .O(p_0_in9_in[1]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/orig_input" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    orig_input_reg_0_1_26_26
       (.A0(\in_ctr_reg_n_0_[0] ),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_memb_dout[26]),
        .O(p_0_in9_in[2]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/orig_input" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    orig_input_reg_0_1_27_27
       (.A0(\in_ctr_reg_n_0_[0] ),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_memb_dout[27]),
        .O(p_0_in9_in[3]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/orig_input" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    orig_input_reg_0_1_28_28
       (.A0(\in_ctr_reg_n_0_[0] ),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_memb_dout[28]),
        .O(p_0_in9_in[4]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/orig_input" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    orig_input_reg_0_1_29_29
       (.A0(\in_ctr_reg_n_0_[0] ),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_memb_dout[29]),
        .O(p_0_in9_in[5]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/orig_input" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    orig_input_reg_0_1_2_2
       (.A0(\in_ctr_reg_n_0_[0] ),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_memb_dout[2]),
        .O(orig_input_reg_0_1_2_2_n_0),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/orig_input" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    orig_input_reg_0_1_30_30
       (.A0(\in_ctr_reg_n_0_[0] ),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_memb_dout[30]),
        .O(p_0_in9_in[6]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/orig_input" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    orig_input_reg_0_1_31_31
       (.A0(\in_ctr_reg_n_0_[0] ),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_memb_dout[31]),
        .O(p_0_in9_in[7]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/orig_input" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    orig_input_reg_0_1_3_3
       (.A0(\in_ctr_reg_n_0_[0] ),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_memb_dout[3]),
        .O(orig_input_reg_0_1_3_3_n_0),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/orig_input" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    orig_input_reg_0_1_4_4
       (.A0(\in_ctr_reg_n_0_[0] ),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_memb_dout[4]),
        .O(orig_input_reg_0_1_4_4_n_0),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/orig_input" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    orig_input_reg_0_1_5_5
       (.A0(\in_ctr_reg_n_0_[0] ),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_memb_dout[5]),
        .O(orig_input_reg_0_1_5_5_n_0),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/orig_input" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    orig_input_reg_0_1_6_6
       (.A0(\in_ctr_reg_n_0_[0] ),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_memb_dout[6]),
        .O(orig_input_reg_0_1_6_6_n_0),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/orig_input" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    orig_input_reg_0_1_7_7
       (.A0(\in_ctr_reg_n_0_[0] ),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_memb_dout[7]),
        .O(orig_input_reg_0_1_7_7_n_0),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/orig_input" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    orig_input_reg_0_1_8_8
       (.A0(\in_ctr_reg_n_0_[0] ),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_memb_dout[8]),
        .O(p_0_in15_in[0]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "U0/orig_input" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    orig_input_reg_0_1_9_9
       (.A0(\in_ctr_reg_n_0_[0] ),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(i_memb_dout[9]),
        .O(p_0_in15_in[1]),
        .WCLK(clk),
        .WE(orig_input_reg_0_1_0_0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \out_ctr[0]_i_1 
       (.I0(out_ctr),
        .O(\out_ctr[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_ctr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\out_ctr[0]_i_1_n_0 ),
        .Q(out_ctr),
        .R(rst));
  LUT5 #(
    .INIT(32'h00000002)) 
    \s_input_adr[31]_i_1 
       (.I0(en),
        .I1(state0[2]),
        .I2(state0[3]),
        .I3(state0[1]),
        .I4(state0[0]),
        .O(s_output_adr_0));
  FDRE \s_input_adr_reg[0] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_input_adr[0]),
        .Q(s_input_adr[0]),
        .R(rst));
  FDRE \s_input_adr_reg[10] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_input_adr[10]),
        .Q(s_input_adr[10]),
        .R(rst));
  FDRE \s_input_adr_reg[11] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_input_adr[11]),
        .Q(s_input_adr[11]),
        .R(rst));
  FDRE \s_input_adr_reg[12] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_input_adr[12]),
        .Q(s_input_adr[12]),
        .R(rst));
  FDRE \s_input_adr_reg[13] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_input_adr[13]),
        .Q(s_input_adr[13]),
        .R(rst));
  FDRE \s_input_adr_reg[14] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_input_adr[14]),
        .Q(s_input_adr[14]),
        .R(rst));
  FDRE \s_input_adr_reg[15] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_input_adr[15]),
        .Q(s_input_adr[15]),
        .R(rst));
  FDRE \s_input_adr_reg[16] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_input_adr[16]),
        .Q(s_input_adr[16]),
        .R(rst));
  FDRE \s_input_adr_reg[17] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_input_adr[17]),
        .Q(s_input_adr[17]),
        .R(rst));
  FDRE \s_input_adr_reg[18] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_input_adr[18]),
        .Q(s_input_adr[18]),
        .R(rst));
  FDRE \s_input_adr_reg[19] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_input_adr[19]),
        .Q(s_input_adr[19]),
        .R(rst));
  FDRE \s_input_adr_reg[1] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_input_adr[1]),
        .Q(s_input_adr[1]),
        .R(rst));
  FDRE \s_input_adr_reg[20] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_input_adr[20]),
        .Q(s_input_adr[20]),
        .R(rst));
  FDRE \s_input_adr_reg[21] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_input_adr[21]),
        .Q(s_input_adr[21]),
        .R(rst));
  FDRE \s_input_adr_reg[22] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_input_adr[22]),
        .Q(s_input_adr[22]),
        .R(rst));
  FDRE \s_input_adr_reg[23] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_input_adr[23]),
        .Q(s_input_adr[23]),
        .R(rst));
  FDRE \s_input_adr_reg[24] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_input_adr[24]),
        .Q(s_input_adr[24]),
        .R(rst));
  FDRE \s_input_adr_reg[25] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_input_adr[25]),
        .Q(s_input_adr[25]),
        .R(rst));
  FDRE \s_input_adr_reg[26] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_input_adr[26]),
        .Q(s_input_adr[26]),
        .R(rst));
  FDRE \s_input_adr_reg[27] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_input_adr[27]),
        .Q(s_input_adr[27]),
        .R(rst));
  FDRE \s_input_adr_reg[28] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_input_adr[28]),
        .Q(s_input_adr[28]),
        .R(rst));
  FDRE \s_input_adr_reg[29] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_input_adr[29]),
        .Q(s_input_adr[29]),
        .R(rst));
  FDRE \s_input_adr_reg[2] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_input_adr[2]),
        .Q(s_input_adr[2]),
        .R(rst));
  FDRE \s_input_adr_reg[30] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_input_adr[30]),
        .Q(s_input_adr[30]),
        .R(rst));
  FDRE \s_input_adr_reg[31] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_input_adr[31]),
        .Q(s_input_adr[31]),
        .R(rst));
  FDRE \s_input_adr_reg[3] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_input_adr[3]),
        .Q(s_input_adr[3]),
        .R(rst));
  FDRE \s_input_adr_reg[4] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_input_adr[4]),
        .Q(s_input_adr[4]),
        .R(rst));
  FDRE \s_input_adr_reg[5] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_input_adr[5]),
        .Q(s_input_adr[5]),
        .R(rst));
  FDRE \s_input_adr_reg[6] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_input_adr[6]),
        .Q(s_input_adr[6]),
        .R(rst));
  FDRE \s_input_adr_reg[7] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_input_adr[7]),
        .Q(s_input_adr[7]),
        .R(rst));
  FDRE \s_input_adr_reg[8] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_input_adr[8]),
        .Q(s_input_adr[8]),
        .R(rst));
  FDRE \s_input_adr_reg[9] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_input_adr[9]),
        .Q(s_input_adr[9]),
        .R(rst));
  FDRE \s_output_adr_reg[0] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_output_adr[0]),
        .Q(s_output_adr[0]),
        .R(rst));
  FDRE \s_output_adr_reg[10] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_output_adr[10]),
        .Q(s_output_adr[10]),
        .R(rst));
  FDRE \s_output_adr_reg[11] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_output_adr[11]),
        .Q(s_output_adr[11]),
        .R(rst));
  FDRE \s_output_adr_reg[12] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_output_adr[12]),
        .Q(s_output_adr[12]),
        .R(rst));
  FDRE \s_output_adr_reg[13] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_output_adr[13]),
        .Q(s_output_adr[13]),
        .R(rst));
  FDRE \s_output_adr_reg[14] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_output_adr[14]),
        .Q(s_output_adr[14]),
        .R(rst));
  FDRE \s_output_adr_reg[15] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_output_adr[15]),
        .Q(s_output_adr[15]),
        .R(rst));
  FDRE \s_output_adr_reg[16] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_output_adr[16]),
        .Q(s_output_adr[16]),
        .R(rst));
  FDRE \s_output_adr_reg[17] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_output_adr[17]),
        .Q(s_output_adr[17]),
        .R(rst));
  FDRE \s_output_adr_reg[18] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_output_adr[18]),
        .Q(s_output_adr[18]),
        .R(rst));
  FDRE \s_output_adr_reg[19] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_output_adr[19]),
        .Q(s_output_adr[19]),
        .R(rst));
  FDRE \s_output_adr_reg[1] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_output_adr[1]),
        .Q(s_output_adr[1]),
        .R(rst));
  FDRE \s_output_adr_reg[20] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_output_adr[20]),
        .Q(s_output_adr[20]),
        .R(rst));
  FDRE \s_output_adr_reg[21] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_output_adr[21]),
        .Q(s_output_adr[21]),
        .R(rst));
  FDRE \s_output_adr_reg[22] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_output_adr[22]),
        .Q(s_output_adr[22]),
        .R(rst));
  FDRE \s_output_adr_reg[23] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_output_adr[23]),
        .Q(s_output_adr[23]),
        .R(rst));
  FDRE \s_output_adr_reg[24] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_output_adr[24]),
        .Q(s_output_adr[24]),
        .R(rst));
  FDRE \s_output_adr_reg[25] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_output_adr[25]),
        .Q(s_output_adr[25]),
        .R(rst));
  FDRE \s_output_adr_reg[26] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_output_adr[26]),
        .Q(s_output_adr[26]),
        .R(rst));
  FDRE \s_output_adr_reg[27] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_output_adr[27]),
        .Q(s_output_adr[27]),
        .R(rst));
  FDRE \s_output_adr_reg[28] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_output_adr[28]),
        .Q(s_output_adr[28]),
        .R(rst));
  FDRE \s_output_adr_reg[29] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_output_adr[29]),
        .Q(s_output_adr[29]),
        .R(rst));
  FDRE \s_output_adr_reg[2] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_output_adr[2]),
        .Q(s_output_adr[2]),
        .R(rst));
  FDRE \s_output_adr_reg[30] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_output_adr[30]),
        .Q(s_output_adr[30]),
        .R(rst));
  FDRE \s_output_adr_reg[31] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_output_adr[31]),
        .Q(s_output_adr[31]),
        .R(rst));
  FDRE \s_output_adr_reg[3] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_output_adr[3]),
        .Q(s_output_adr[3]),
        .R(rst));
  FDRE \s_output_adr_reg[4] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_output_adr[4]),
        .Q(s_output_adr[4]),
        .R(rst));
  FDRE \s_output_adr_reg[5] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_output_adr[5]),
        .Q(s_output_adr[5]),
        .R(rst));
  FDRE \s_output_adr_reg[6] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_output_adr[6]),
        .Q(s_output_adr[6]),
        .R(rst));
  FDRE \s_output_adr_reg[7] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_output_adr[7]),
        .Q(s_output_adr[7]),
        .R(rst));
  FDRE \s_output_adr_reg[8] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_output_adr[8]),
        .Q(s_output_adr[8]),
        .R(rst));
  FDRE \s_output_adr_reg[9] 
       (.C(clk),
        .CE(s_output_adr_0),
        .D(i_output_adr[9]),
        .Q(s_output_adr[9]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFD80)) 
    start_add_i_1
       (.I0(state0[2]),
        .I1(state0[0]),
        .I2(state0[1]),
        .I3(start_add),
        .O(start_add_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    start_add_reg
       (.C(clk),
        .CE(1'b1),
        .D(start_add_i_1_n_0),
        .Q(start_add),
        .R(rst));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 state01_carry
       (.CI(1'b0),
        .CO({state01_carry_n_0,state01_carry_n_1,state01_carry_n_2,state01_carry_n_3}),
        .CYINIT(1'b0),
        .DI({state01_carry_i_1_n_0,state01_carry_i_2_n_0,1'b0,state01_carry_i_3_n_0}),
        .O(NLW_state01_carry_O_UNCONNECTED[3:0]),
        .S({state01_carry_i_4_n_0,state01_carry_i_5_n_0,state01_carry_i_6_n_0,state01_carry_i_7_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 state01_carry__0
       (.CI(state01_carry_n_0),
        .CO({state01_carry__0_n_0,state01_carry__0_n_1,state01_carry__0_n_2,state01_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({state01_carry__0_i_1_n_0,state01_carry__0_i_2_n_0,state01_carry__0_i_3_n_0,state01_carry__0_i_4_n_0}),
        .O(NLW_state01_carry__0_O_UNCONNECTED[3:0]),
        .S({state01_carry__0_i_5_n_0,state01_carry__0_i_6_n_0,state01_carry__0_i_7_n_0,state01_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    state01_carry__0_i_1
       (.I0(\i_reg_n_0_[17] ),
        .I1(\i_reg_n_0_[16] ),
        .O(state01_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    state01_carry__0_i_2
       (.I0(\i_reg_n_0_[15] ),
        .I1(\i_reg_n_0_[14] ),
        .O(state01_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    state01_carry__0_i_3
       (.I0(\i_reg_n_0_[13] ),
        .I1(\i_reg_n_0_[12] ),
        .O(state01_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    state01_carry__0_i_4
       (.I0(\i_reg_n_0_[11] ),
        .I1(\i_reg_n_0_[10] ),
        .O(state01_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state01_carry__0_i_5
       (.I0(\i_reg_n_0_[16] ),
        .I1(\i_reg_n_0_[17] ),
        .O(state01_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state01_carry__0_i_6
       (.I0(\i_reg_n_0_[14] ),
        .I1(\i_reg_n_0_[15] ),
        .O(state01_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state01_carry__0_i_7
       (.I0(\i_reg_n_0_[12] ),
        .I1(\i_reg_n_0_[13] ),
        .O(state01_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state01_carry__0_i_8
       (.I0(\i_reg_n_0_[10] ),
        .I1(\i_reg_n_0_[11] ),
        .O(state01_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 state01_carry__1
       (.CI(state01_carry__0_n_0),
        .CO({state01_carry__1_n_0,state01_carry__1_n_1,state01_carry__1_n_2,state01_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({state01_carry__1_i_1_n_0,state01_carry__1_i_2_n_0,state01_carry__1_i_3_n_0,state01_carry__1_i_4_n_0}),
        .O(NLW_state01_carry__1_O_UNCONNECTED[3:0]),
        .S({state01_carry__1_i_5_n_0,state01_carry__1_i_6_n_0,state01_carry__1_i_7_n_0,state01_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    state01_carry__1_i_1
       (.I0(\i_reg_n_0_[25] ),
        .I1(\i_reg_n_0_[24] ),
        .O(state01_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    state01_carry__1_i_2
       (.I0(\i_reg_n_0_[23] ),
        .I1(\i_reg_n_0_[22] ),
        .O(state01_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    state01_carry__1_i_3
       (.I0(\i_reg_n_0_[21] ),
        .I1(\i_reg_n_0_[20] ),
        .O(state01_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    state01_carry__1_i_4
       (.I0(\i_reg_n_0_[19] ),
        .I1(\i_reg_n_0_[18] ),
        .O(state01_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state01_carry__1_i_5
       (.I0(\i_reg_n_0_[24] ),
        .I1(\i_reg_n_0_[25] ),
        .O(state01_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state01_carry__1_i_6
       (.I0(\i_reg_n_0_[22] ),
        .I1(\i_reg_n_0_[23] ),
        .O(state01_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state01_carry__1_i_7
       (.I0(\i_reg_n_0_[20] ),
        .I1(\i_reg_n_0_[21] ),
        .O(state01_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state01_carry__1_i_8
       (.I0(\i_reg_n_0_[18] ),
        .I1(\i_reg_n_0_[19] ),
        .O(state01_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 state01_carry__2
       (.CI(state01_carry__1_n_0),
        .CO({NLW_state01_carry__2_CO_UNCONNECTED[3],state01,state01_carry__2_n_2,state01_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,state01_carry__2_i_1_n_0,state01_carry__2_i_2_n_0,state01_carry__2_i_3_n_0}),
        .O(NLW_state01_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,state01_carry__2_i_4_n_0,state01_carry__2_i_5_n_0,state01_carry__2_i_6_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    state01_carry__2_i_1
       (.I0(\i_reg_n_0_[30] ),
        .I1(\i_reg_n_0_[31] ),
        .O(state01_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    state01_carry__2_i_2
       (.I0(\i_reg_n_0_[29] ),
        .I1(\i_reg_n_0_[28] ),
        .O(state01_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    state01_carry__2_i_3
       (.I0(\i_reg_n_0_[27] ),
        .I1(\i_reg_n_0_[26] ),
        .O(state01_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state01_carry__2_i_4
       (.I0(\i_reg_n_0_[30] ),
        .I1(\i_reg_n_0_[31] ),
        .O(state01_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state01_carry__2_i_5
       (.I0(\i_reg_n_0_[28] ),
        .I1(\i_reg_n_0_[29] ),
        .O(state01_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state01_carry__2_i_6
       (.I0(\i_reg_n_0_[26] ),
        .I1(\i_reg_n_0_[27] ),
        .O(state01_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    state01_carry_i_1
       (.I0(\i_reg_n_0_[9] ),
        .I1(\i_reg_n_0_[8] ),
        .O(state01_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    state01_carry_i_2
       (.I0(\i_reg_n_0_[7] ),
        .I1(\i_reg_n_0_[6] ),
        .O(state01_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    state01_carry_i_3
       (.I0(\i_reg_n_0_[3] ),
        .I1(\i_reg_n_0_[2] ),
        .O(state01_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state01_carry_i_4
       (.I0(\i_reg_n_0_[8] ),
        .I1(\i_reg_n_0_[9] ),
        .O(state01_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state01_carry_i_5
       (.I0(\i_reg_n_0_[6] ),
        .I1(\i_reg_n_0_[7] ),
        .O(state01_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    state01_carry_i_6
       (.I0(\i_reg_n_0_[5] ),
        .I1(\i_reg_n_0_[4] ),
        .O(state01_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    state01_carry_i_7
       (.I0(\i_reg_n_0_[3] ),
        .I1(\i_reg_n_0_[2] ),
        .O(state01_carry_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h000000FB)) 
    \state0[0]_i_1 
       (.I0(state01),
        .I1(state0[2]),
        .I2(state0[1]),
        .I3(state0[3]),
        .I4(state0[0]),
        .O(\state0[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \state0[1]_i_1 
       (.I0(state0[1]),
        .I1(state0[0]),
        .O(\state0[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFEC0)) 
    \state0[2]_i_1 
       (.I0(state01),
        .I1(state0[1]),
        .I2(state0[0]),
        .I3(state0[2]),
        .O(\state0[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state0[3]_i_1 
       (.I0(en),
        .I1(state0[2]),
        .I2(state0[3]),
        .I3(state0[1]),
        .I4(state0[0]),
        .O(\state0[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \state0[3]_i_2 
       (.I0(state0[0]),
        .I1(state0[1]),
        .I2(state0[2]),
        .I3(state01),
        .O(\state0[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state0_reg[0] 
       (.C(clk),
        .CE(\state0[3]_i_1_n_0 ),
        .D(\state0[0]_i_1_n_0 ),
        .Q(state0[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \state0_reg[1] 
       (.C(clk),
        .CE(\state0[3]_i_1_n_0 ),
        .D(\state0[1]_i_1_n_0 ),
        .Q(state0[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \state0_reg[2] 
       (.C(clk),
        .CE(\state0[3]_i_1_n_0 ),
        .D(\state0[2]_i_1_n_0 ),
        .Q(state0[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \state0_reg[3] 
       (.C(clk),
        .CE(\state0[3]_i_1_n_0 ),
        .D(\state0[3]_i_2_n_0 ),
        .Q(state0[3]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \temp_output[0]00_out_carry 
       (.CI(1'b0),
        .CO({\temp_output[0]00_out_carry_n_0 ,\temp_output[0]00_out_carry_n_1 ,\temp_output[0]00_out_carry_n_2 ,\temp_output[0]00_out_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\_inferred__4/i___0_carry_n_4 ,\_inferred__4/i___0_carry_n_5 ,\_inferred__4/i___0_carry_n_6 ,\_inferred__4/i___0_carry_n_7 }),
        .O(\temp_output[0]00_out [3:0]),
        .S({\temp_output[0]00_out_carry_i_1_n_0 ,\temp_output[0]00_out_carry_i_2_n_0 ,\temp_output[0]00_out_carry_i_3_n_0 ,\temp_output[0]00_out_carry_i_4_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \temp_output[0]00_out_carry__0 
       (.CI(\temp_output[0]00_out_carry_n_0 ),
        .CO({\NLW_temp_output[0]00_out_carry__0_CO_UNCONNECTED [3],\temp_output[0]00_out_carry__0_n_1 ,\temp_output[0]00_out_carry__0_n_2 ,\temp_output[0]00_out_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\_inferred__4/i___0_carry__0_n_5 ,\_inferred__4/i___0_carry__0_n_6 ,\_inferred__4/i___0_carry__0_n_7 }),
        .O(\temp_output[0]00_out [7:4]),
        .S({\temp_output[0]00_out_carry__0_i_1_n_0 ,\temp_output[0]00_out_carry__0_i_2_n_0 ,\temp_output[0]00_out_carry__0_i_3_n_0 ,\temp_output[0]00_out_carry__0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \temp_output[0]00_out_carry__0_i_1 
       (.I0(orig_input_reg_0_1_7_7_n_0),
        .I1(\_inferred__4/i___0_carry__0_n_4 ),
        .O(\temp_output[0]00_out_carry__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \temp_output[0]00_out_carry__0_i_2 
       (.I0(\_inferred__4/i___0_carry__0_n_5 ),
        .I1(orig_input_reg_0_1_6_6_n_0),
        .O(\temp_output[0]00_out_carry__0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \temp_output[0]00_out_carry__0_i_3 
       (.I0(\_inferred__4/i___0_carry__0_n_6 ),
        .I1(orig_input_reg_0_1_5_5_n_0),
        .O(\temp_output[0]00_out_carry__0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \temp_output[0]00_out_carry__0_i_4 
       (.I0(\_inferred__4/i___0_carry__0_n_7 ),
        .I1(orig_input_reg_0_1_4_4_n_0),
        .O(\temp_output[0]00_out_carry__0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \temp_output[0]00_out_carry_i_1 
       (.I0(\_inferred__4/i___0_carry_n_4 ),
        .I1(orig_input_reg_0_1_3_3_n_0),
        .O(\temp_output[0]00_out_carry_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \temp_output[0]00_out_carry_i_2 
       (.I0(\_inferred__4/i___0_carry_n_5 ),
        .I1(orig_input_reg_0_1_2_2_n_0),
        .O(\temp_output[0]00_out_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \temp_output[0]00_out_carry_i_3 
       (.I0(\_inferred__4/i___0_carry_n_6 ),
        .I1(orig_input_reg_0_1_1_1_n_0),
        .O(\temp_output[0]00_out_carry_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \temp_output[0]00_out_carry_i_4 
       (.I0(\_inferred__4/i___0_carry_n_7 ),
        .I1(orig_input_reg_0_1_0_0_n_0),
        .O(\temp_output[0]00_out_carry_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \temp_output[0]010_out__2_carry 
       (.CI(1'b0),
        .CO({\temp_output[0]010_out__2_carry_n_0 ,\temp_output[0]010_out__2_carry_n_1 ,\temp_output[0]010_out__2_carry_n_2 ,\temp_output[0]010_out__2_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\temp_output[0]010_out__2_carry_i_1_n_0 ,\temp_output[0]010_out__2_carry_i_2_n_0 ,\temp_output[0]010_out__2_carry_i_3_n_0 ,\temp_output[0]010_out__2_carry_i_4_n_0 }),
        .O(\temp_output[0]010_out [3:0]),
        .S({\temp_output[0]010_out__2_carry_i_5_n_0 ,\temp_output[0]010_out__2_carry_i_6_n_0 ,\temp_output[0]010_out__2_carry_i_7_n_0 ,\temp_output[0]010_out__2_carry_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \temp_output[0]010_out__2_carry__0 
       (.CI(\temp_output[0]010_out__2_carry_n_0 ),
        .CO({\NLW_temp_output[0]010_out__2_carry__0_CO_UNCONNECTED [3],\temp_output[0]010_out__2_carry__0_n_1 ,\temp_output[0]010_out__2_carry__0_n_2 ,\temp_output[0]010_out__2_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\temp_output[0]010_out__2_carry__0_i_1_n_0 ,\temp_output[0]010_out__2_carry__0_i_2_n_0 ,\temp_output[0]010_out__2_carry__0_i_3_n_0 }),
        .O(\temp_output[0]010_out [7:4]),
        .S({\temp_output[0]010_out__2_carry__0_i_4_n_0 ,\temp_output[0]010_out__2_carry__0_i_5_n_0 ,\temp_output[0]010_out__2_carry__0_i_6_n_0 ,\temp_output[0]010_out__2_carry__0_i_7_n_0 }));
  LUT6 #(
    .INIT(64'h00000000004D4DFF)) 
    \temp_output[0]010_out__2_carry__0_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in9_in[3]),
        .I2(\multOp_inferred__1/i___0_carry_n_4 ),
        .I3(\temp_output[0]010_out__2_carry__0_i_8_n_0 ),
        .I4(\multOp_inferred__4/i___20_carry_n_6 ),
        .I5(\temp_output[0]010_out__2_carry__0_i_9_n_0 ),
        .O(\temp_output[0]010_out__2_carry__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h96996696)) 
    \temp_output[0]010_out__2_carry__0_i_10 
       (.I0(\temp_output[0]010_out__2_carry__0_i_8_n_0 ),
        .I1(\multOp_inferred__4/i___20_carry_n_6 ),
        .I2(p_0_in[3]),
        .I3(p_0_in9_in[3]),
        .I4(\multOp_inferred__1/i___0_carry_n_4 ),
        .O(\temp_output[0]010_out__2_carry__0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hE8EE88E8)) 
    \temp_output[0]010_out__2_carry__0_i_11 
       (.I0(\multOp_inferred__4/i___20_carry_n_5 ),
        .I1(\temp_output[0]010_out__2_carry__0_i_18_n_0 ),
        .I2(\multOp_inferred__1/i___0_carry__0_n_7 ),
        .I3(p_0_in9_in[4]),
        .I4(p_0_in[4]),
        .O(\temp_output[0]010_out__2_carry__0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9669969669699669)) 
    \temp_output[0]010_out__2_carry__0_i_12 
       (.I0(\multOp_inferred__1/i___0_carry__0_n_4 ),
        .I1(\multOp_inferred__4/i___20_carry__0_n_7 ),
        .I2(\temp_output[0]010_out__2_carry__0_i_19_n_0 ),
        .I3(p_0_in[6]),
        .I4(p_0_in9_in[6]),
        .I5(\multOp_inferred__1/i___0_carry__0_n_5 ),
        .O(\temp_output[0]010_out__2_carry__0_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \temp_output[0]010_out__2_carry__0_i_13 
       (.I0(\multOp_inferred__1/i___0_carry__0_n_6 ),
        .I1(p_0_in9_in[5]),
        .I2(p_0_in[5]),
        .O(\temp_output[0]010_out__2_carry__0_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \temp_output[0]010_out__2_carry__0_i_14 
       (.I0(p_0_in9_in[6]),
        .I1(p_0_in[6]),
        .I2(\multOp_inferred__1/i___0_carry__0_n_5 ),
        .O(\temp_output[0]010_out__2_carry__0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h96996696)) 
    \temp_output[0]010_out__2_carry__0_i_15 
       (.I0(\temp_output[0]010_out__2_carry__0_i_14_n_0 ),
        .I1(\multOp_inferred__4/i___20_carry_n_4 ),
        .I2(p_0_in[5]),
        .I3(p_0_in9_in[5]),
        .I4(\multOp_inferred__1/i___0_carry__0_n_6 ),
        .O(\temp_output[0]010_out__2_carry__0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hE8EE88E8)) 
    \temp_output[0]010_out__2_carry__0_i_16 
       (.I0(\multOp_inferred__4/i___20_carry_n_6 ),
        .I1(\temp_output[0]010_out__2_carry__0_i_8_n_0 ),
        .I2(\multOp_inferred__1/i___0_carry_n_4 ),
        .I3(p_0_in9_in[3]),
        .I4(p_0_in[3]),
        .O(\temp_output[0]010_out__2_carry__0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hE8EE88E8)) 
    \temp_output[0]010_out__2_carry__0_i_17 
       (.I0(\multOp_inferred__4/i___20_carry_n_7 ),
        .I1(\temp_output[0]010_out__2_carry_i_10_n_0 ),
        .I2(\multOp_inferred__1/i___0_carry_n_5 ),
        .I3(p_0_in9_in[2]),
        .I4(p_0_in[2]),
        .O(\temp_output[0]010_out__2_carry__0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_output[0]010_out__2_carry__0_i_18 
       (.I0(p_0_in9_in[5]),
        .I1(p_0_in[5]),
        .I2(\multOp_inferred__1/i___0_carry__0_n_6 ),
        .O(\temp_output[0]010_out__2_carry__0_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \temp_output[0]010_out__2_carry__0_i_19 
       (.I0(p_0_in[7]),
        .I1(p_0_in9_in[7]),
        .O(\temp_output[0]010_out__2_carry__0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000004D4DFF)) 
    \temp_output[0]010_out__2_carry__0_i_2 
       (.I0(p_0_in[2]),
        .I1(p_0_in9_in[2]),
        .I2(\multOp_inferred__1/i___0_carry_n_5 ),
        .I3(\temp_output[0]010_out__2_carry_i_10_n_0 ),
        .I4(\multOp_inferred__4/i___20_carry_n_7 ),
        .I5(\temp_output[0]010_out__2_carry__0_i_10_n_0 ),
        .O(\temp_output[0]010_out__2_carry__0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h20A28A088A0820A2)) 
    \temp_output[0]010_out__2_carry__0_i_3 
       (.I0(\temp_output[0]010_out__2_carry_i_9_n_0 ),
        .I1(\multOp_inferred__1/i___0_carry_n_5 ),
        .I2(p_0_in9_in[2]),
        .I3(p_0_in[2]),
        .I4(\multOp_inferred__4/i___20_carry_n_7 ),
        .I5(\temp_output[0]010_out__2_carry_i_10_n_0 ),
        .O(\temp_output[0]010_out__2_carry__0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h366C6CC9)) 
    \temp_output[0]010_out__2_carry__0_i_4 
       (.I0(\temp_output[0]010_out__2_carry__0_i_11_n_0 ),
        .I1(\temp_output[0]010_out__2_carry__0_i_12_n_0 ),
        .I2(\temp_output[0]010_out__2_carry__0_i_13_n_0 ),
        .I3(\multOp_inferred__4/i___20_carry_n_4 ),
        .I4(\temp_output[0]010_out__2_carry__0_i_14_n_0 ),
        .O(\temp_output[0]010_out__2_carry__0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \temp_output[0]010_out__2_carry__0_i_5 
       (.I0(\temp_output[0]010_out__2_carry__0_i_1_n_0 ),
        .I1(\temp_output[0]010_out__2_carry__0_i_15_n_0 ),
        .I2(\temp_output[0]010_out__2_carry__0_i_11_n_0 ),
        .O(\temp_output[0]010_out__2_carry__0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \temp_output[0]010_out__2_carry__0_i_6 
       (.I0(\temp_output[0]010_out__2_carry__0_i_2_n_0 ),
        .I1(\temp_output[0]010_out__2_carry__0_i_9_n_0 ),
        .I2(\temp_output[0]010_out__2_carry__0_i_16_n_0 ),
        .O(\temp_output[0]010_out__2_carry__0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \temp_output[0]010_out__2_carry__0_i_7 
       (.I0(\temp_output[0]010_out__2_carry__0_i_3_n_0 ),
        .I1(\temp_output[0]010_out__2_carry__0_i_10_n_0 ),
        .I2(\temp_output[0]010_out__2_carry__0_i_17_n_0 ),
        .O(\temp_output[0]010_out__2_carry__0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \temp_output[0]010_out__2_carry__0_i_8 
       (.I0(p_0_in9_in[4]),
        .I1(p_0_in[4]),
        .I2(\multOp_inferred__1/i___0_carry__0_n_7 ),
        .O(\temp_output[0]010_out__2_carry__0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h96996696)) 
    \temp_output[0]010_out__2_carry__0_i_9 
       (.I0(\temp_output[0]010_out__2_carry__0_i_18_n_0 ),
        .I1(\multOp_inferred__4/i___20_carry_n_5 ),
        .I2(p_0_in[4]),
        .I3(p_0_in9_in[4]),
        .I4(\multOp_inferred__1/i___0_carry__0_n_7 ),
        .O(\temp_output[0]010_out__2_carry__0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h9A5965A665A69A59)) 
    \temp_output[0]010_out__2_carry_i_1 
       (.I0(\temp_output[0]010_out__2_carry_i_9_n_0 ),
        .I1(\multOp_inferred__1/i___0_carry_n_5 ),
        .I2(p_0_in9_in[2]),
        .I3(p_0_in[2]),
        .I4(\multOp_inferred__4/i___20_carry_n_7 ),
        .I5(\temp_output[0]010_out__2_carry_i_10_n_0 ),
        .O(\temp_output[0]010_out__2_carry_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \temp_output[0]010_out__2_carry_i_10 
       (.I0(p_0_in9_in[3]),
        .I1(p_0_in[3]),
        .I2(\multOp_inferred__1/i___0_carry_n_4 ),
        .O(\temp_output[0]010_out__2_carry_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_output[0]010_out__2_carry_i_11 
       (.I0(p_0_in9_in[2]),
        .I1(p_0_in[2]),
        .I2(\multOp_inferred__1/i___0_carry_n_5 ),
        .O(\temp_output[0]010_out__2_carry_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \temp_output[0]010_out__2_carry_i_12 
       (.I0(p_0_in[1]),
        .I1(p_0_in9_in[1]),
        .O(\temp_output[0]010_out__2_carry_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h4BB4B44BB44B4BB4)) 
    \temp_output[0]010_out__2_carry_i_2 
       (.I0(p_0_in9_in[1]),
        .I1(p_0_in[1]),
        .I2(p_0_in9_in[2]),
        .I3(p_0_in[2]),
        .I4(\multOp_inferred__1/i___0_carry_n_5 ),
        .I5(\multOp_inferred__4/i__carry_n_5 ),
        .O(\temp_output[0]010_out__2_carry_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996699669969669)) 
    \temp_output[0]010_out__2_carry_i_3 
       (.I0(p_0_in9_in[1]),
        .I1(p_0_in[1]),
        .I2(\multOp_inferred__1/i___0_carry_n_6 ),
        .I3(\multOp_inferred__4/i__carry_n_6 ),
        .I4(R[0]),
        .I5(\multOp_inferred__4/i__carry_n_7 ),
        .O(\temp_output[0]010_out__2_carry_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \temp_output[0]010_out__2_carry_i_4 
       (.I0(p_0_in9_in[0]),
        .I1(p_0_in[0]),
        .O(\temp_output[0]010_out__2_carry_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAA656555)) 
    \temp_output[0]010_out__2_carry_i_5 
       (.I0(\temp_output[0]010_out__2_carry_i_1_n_0 ),
        .I1(p_0_in9_in[1]),
        .I2(p_0_in[1]),
        .I3(\temp_output[0]010_out__2_carry_i_11_n_0 ),
        .I4(\multOp_inferred__4/i__carry_n_5 ),
        .O(\temp_output[0]010_out__2_carry_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAA9999599955556)) 
    \temp_output[0]010_out__2_carry_i_6 
       (.I0(\temp_output[0]010_out__2_carry_i_2_n_0 ),
        .I1(\temp_output[0]010_out__2_carry_i_12_n_0 ),
        .I2(\multOp_inferred__4/i__carry_n_7 ),
        .I3(R[0]),
        .I4(\multOp_inferred__4/i__carry_n_6 ),
        .I5(\multOp_inferred__1/i___0_carry_n_6 ),
        .O(\temp_output[0]010_out__2_carry_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h59)) 
    \temp_output[0]010_out__2_carry_i_7 
       (.I0(\temp_output[0]010_out__2_carry_i_3_n_0 ),
        .I1(p_0_in[0]),
        .I2(p_0_in9_in[0]),
        .O(\temp_output[0]010_out__2_carry_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \temp_output[0]010_out__2_carry_i_8 
       (.I0(p_0_in9_in[0]),
        .I1(p_0_in[0]),
        .I2(\multOp_inferred__4/i__carry_n_7 ),
        .I3(R[0]),
        .O(\temp_output[0]010_out__2_carry_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000006)) 
    \temp_output[0]010_out__2_carry_i_9 
       (.I0(p_0_in[1]),
        .I1(p_0_in9_in[1]),
        .I2(\multOp_inferred__4/i__carry_n_7 ),
        .I3(R[0]),
        .I4(\multOp_inferred__4/i__carry_n_6 ),
        .I5(\multOp_inferred__1/i___0_carry_n_6 ),
        .O(\temp_output[0]010_out__2_carry_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \temp_output[0]014_out__2_carry 
       (.CI(1'b0),
        .CO({\temp_output[0]014_out__2_carry_n_0 ,\temp_output[0]014_out__2_carry_n_1 ,\temp_output[0]014_out__2_carry_n_2 ,\temp_output[0]014_out__2_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\temp_output[0]014_out__2_carry_i_1_n_0 ,\temp_output[0]014_out__2_carry_i_2_n_0 ,\temp_output[0]014_out__2_carry_i_3_n_0 ,\temp_output[0]014_out__2_carry_i_4_n_0 }),
        .O(\temp_output[0]014_out [3:0]),
        .S({\temp_output[0]014_out__2_carry_i_5_n_0 ,\temp_output[0]014_out__2_carry_i_6_n_0 ,\temp_output[0]014_out__2_carry_i_7_n_0 ,\temp_output[0]014_out__2_carry_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \temp_output[0]014_out__2_carry__0 
       (.CI(\temp_output[0]014_out__2_carry_n_0 ),
        .CO({\NLW_temp_output[0]014_out__2_carry__0_CO_UNCONNECTED [3],\temp_output[0]014_out__2_carry__0_n_1 ,\temp_output[0]014_out__2_carry__0_n_2 ,\temp_output[0]014_out__2_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\temp_output[0]014_out__2_carry__0_i_1_n_0 ,\temp_output[0]014_out__2_carry__0_i_2_n_0 ,\temp_output[0]014_out__2_carry__0_i_3_n_0 }),
        .O(\temp_output[0]014_out [7:4]),
        .S({\temp_output[0]014_out__2_carry__0_i_4_n_0 ,\temp_output[0]014_out__2_carry__0_i_5_n_0 ,\temp_output[0]014_out__2_carry__0_i_6_n_0 ,\temp_output[0]014_out__2_carry__0_i_7_n_0 }));
  LUT6 #(
    .INIT(64'h000000001700FF17)) 
    \temp_output[0]014_out__2_carry__0_i_1 
       (.I0(\multOp_inferred__5/i___15_carry_n_7 ),
        .I1(\multOp_inferred__6/i__carry_n_4 ),
        .I2(input_coef_reg_0_3_3_3_n_1),
        .I3(orig_input_reg_0_1_4_4_n_0),
        .I4(\temp_output[0]014_out__2_carry__0_i_8_n_0 ),
        .I5(\temp_output[0]014_out__2_carry__0_i_9_n_0 ),
        .O(\temp_output[0]014_out__2_carry__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h17E8E817)) 
    \temp_output[0]014_out__2_carry__0_i_10 
       (.I0(\multOp_inferred__5/i___15_carry_n_7 ),
        .I1(\multOp_inferred__6/i__carry_n_4 ),
        .I2(input_coef_reg_0_3_3_3_n_1),
        .I3(\temp_output[0]014_out__2_carry__0_i_8_n_0 ),
        .I4(orig_input_reg_0_1_4_4_n_0),
        .O(\temp_output[0]014_out__2_carry__0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hBBB2B222)) 
    \temp_output[0]014_out__2_carry__0_i_11 
       (.I0(\temp_output[0]014_out__2_carry__0_i_18_n_0 ),
        .I1(orig_input_reg_0_1_5_5_n_0),
        .I2(input_coef_reg_0_3_4_4_n_1),
        .I3(\multOp_inferred__6/i__carry__0_n_7 ),
        .I4(\multOp_inferred__5/i___15_carry_n_6 ),
        .O(\temp_output[0]014_out__2_carry__0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hE81717E817E8E817)) 
    \temp_output[0]014_out__2_carry__0_i_12 
       (.I0(\multOp_inferred__5/i___15_carry_n_4 ),
        .I1(\multOp_inferred__6/i__carry__0_n_5 ),
        .I2(input_coef_reg_0_3_6_6_n_1),
        .I3(\temp_output[0]014_out__2_carry__0_i_19_n_0 ),
        .I4(\multOp_inferred__5/i___15_carry__0_n_7 ),
        .I5(\multOp_inferred__6/i__carry__0_n_4 ),
        .O(\temp_output[0]014_out__2_carry__0_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \temp_output[0]014_out__2_carry__0_i_13 
       (.I0(\multOp_inferred__5/i___15_carry_n_4 ),
        .I1(\multOp_inferred__6/i__carry__0_n_5 ),
        .I2(input_coef_reg_0_3_6_6_n_1),
        .O(\temp_output[0]014_out__2_carry__0_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \temp_output[0]014_out__2_carry__0_i_14 
       (.I0(\multOp_inferred__5/i___15_carry_n_5 ),
        .I1(\multOp_inferred__6/i__carry__0_n_6 ),
        .I2(input_coef_reg_0_3_5_5_n_1),
        .O(\temp_output[0]014_out__2_carry__0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h17E8E817)) 
    \temp_output[0]014_out__2_carry__0_i_15 
       (.I0(input_coef_reg_0_3_5_5_n_1),
        .I1(\multOp_inferred__6/i__carry__0_n_6 ),
        .I2(\multOp_inferred__5/i___15_carry_n_5 ),
        .I3(\temp_output[0]014_out__2_carry__0_i_13_n_0 ),
        .I4(orig_input_reg_0_1_6_6_n_0),
        .O(\temp_output[0]014_out__2_carry__0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hBBB2B222)) 
    \temp_output[0]014_out__2_carry__0_i_16 
       (.I0(\temp_output[0]014_out__2_carry__0_i_8_n_0 ),
        .I1(orig_input_reg_0_1_4_4_n_0),
        .I2(input_coef_reg_0_3_3_3_n_1),
        .I3(\multOp_inferred__6/i__carry_n_4 ),
        .I4(\multOp_inferred__5/i___15_carry_n_7 ),
        .O(\temp_output[0]014_out__2_carry__0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hBBB2B222)) 
    \temp_output[0]014_out__2_carry__0_i_17 
       (.I0(\temp_output[0]014_out__2_carry_i_10_n_0 ),
        .I1(orig_input_reg_0_1_3_3_n_0),
        .I2(input_coef_reg_0_3_2_2_n_1),
        .I3(\multOp_inferred__6/i__carry_n_5 ),
        .I4(\multOp_inferred__5/i__carry_n_5 ),
        .O(\temp_output[0]014_out__2_carry__0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \temp_output[0]014_out__2_carry__0_i_18 
       (.I0(\multOp_inferred__5/i___15_carry_n_5 ),
        .I1(\multOp_inferred__6/i__carry__0_n_6 ),
        .I2(input_coef_reg_0_3_5_5_n_1),
        .O(\temp_output[0]014_out__2_carry__0_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \temp_output[0]014_out__2_carry__0_i_19 
       (.I0(orig_input_reg_0_1_7_7_n_0),
        .I1(input_coef_reg_0_3_7_7_n_1),
        .O(\temp_output[0]014_out__2_carry__0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h000000001700FF17)) 
    \temp_output[0]014_out__2_carry__0_i_2 
       (.I0(\multOp_inferred__5/i__carry_n_5 ),
        .I1(\multOp_inferred__6/i__carry_n_5 ),
        .I2(input_coef_reg_0_3_2_2_n_1),
        .I3(orig_input_reg_0_1_3_3_n_0),
        .I4(\temp_output[0]014_out__2_carry_i_10_n_0 ),
        .I5(\temp_output[0]014_out__2_carry__0_i_10_n_0 ),
        .O(\temp_output[0]014_out__2_carry__0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8282822882282828)) 
    \temp_output[0]014_out__2_carry__0_i_3 
       (.I0(\temp_output[0]014_out__2_carry_i_9_n_0 ),
        .I1(orig_input_reg_0_1_3_3_n_0),
        .I2(\temp_output[0]014_out__2_carry_i_10_n_0 ),
        .I3(input_coef_reg_0_3_2_2_n_1),
        .I4(\multOp_inferred__6/i__carry_n_5 ),
        .I5(\multOp_inferred__5/i__carry_n_5 ),
        .O(\temp_output[0]014_out__2_carry__0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h6C36C96C)) 
    \temp_output[0]014_out__2_carry__0_i_4 
       (.I0(\temp_output[0]014_out__2_carry__0_i_11_n_0 ),
        .I1(\temp_output[0]014_out__2_carry__0_i_12_n_0 ),
        .I2(\temp_output[0]014_out__2_carry__0_i_13_n_0 ),
        .I3(orig_input_reg_0_1_6_6_n_0),
        .I4(\temp_output[0]014_out__2_carry__0_i_14_n_0 ),
        .O(\temp_output[0]014_out__2_carry__0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \temp_output[0]014_out__2_carry__0_i_5 
       (.I0(\temp_output[0]014_out__2_carry__0_i_1_n_0 ),
        .I1(\temp_output[0]014_out__2_carry__0_i_15_n_0 ),
        .I2(\temp_output[0]014_out__2_carry__0_i_11_n_0 ),
        .O(\temp_output[0]014_out__2_carry__0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \temp_output[0]014_out__2_carry__0_i_6 
       (.I0(\temp_output[0]014_out__2_carry__0_i_2_n_0 ),
        .I1(\temp_output[0]014_out__2_carry__0_i_9_n_0 ),
        .I2(\temp_output[0]014_out__2_carry__0_i_16_n_0 ),
        .O(\temp_output[0]014_out__2_carry__0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \temp_output[0]014_out__2_carry__0_i_7 
       (.I0(\temp_output[0]014_out__2_carry__0_i_3_n_0 ),
        .I1(\temp_output[0]014_out__2_carry__0_i_10_n_0 ),
        .I2(\temp_output[0]014_out__2_carry__0_i_17_n_0 ),
        .O(\temp_output[0]014_out__2_carry__0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \temp_output[0]014_out__2_carry__0_i_8 
       (.I0(\multOp_inferred__5/i___15_carry_n_6 ),
        .I1(\multOp_inferred__6/i__carry__0_n_7 ),
        .I2(input_coef_reg_0_3_4_4_n_1),
        .O(\temp_output[0]014_out__2_carry__0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h17E8E817)) 
    \temp_output[0]014_out__2_carry__0_i_9 
       (.I0(\multOp_inferred__5/i___15_carry_n_6 ),
        .I1(\multOp_inferred__6/i__carry__0_n_7 ),
        .I2(input_coef_reg_0_3_4_4_n_1),
        .I3(\temp_output[0]014_out__2_carry__0_i_18_n_0 ),
        .I4(orig_input_reg_0_1_5_5_n_0),
        .O(\temp_output[0]014_out__2_carry__0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \temp_output[0]014_out__2_carry_i_1 
       (.I0(\temp_output[0]014_out__2_carry_i_9_n_0 ),
        .I1(orig_input_reg_0_1_3_3_n_0),
        .I2(\temp_output[0]014_out__2_carry_i_10_n_0 ),
        .I3(input_coef_reg_0_3_2_2_n_1),
        .I4(\multOp_inferred__6/i__carry_n_5 ),
        .I5(\multOp_inferred__5/i__carry_n_5 ),
        .O(\temp_output[0]014_out__2_carry_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \temp_output[0]014_out__2_carry_i_10 
       (.I0(\multOp_inferred__5/i___15_carry_n_7 ),
        .I1(\multOp_inferred__6/i__carry_n_4 ),
        .I2(input_coef_reg_0_3_3_3_n_1),
        .O(\temp_output[0]014_out__2_carry_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \temp_output[0]014_out__2_carry_i_11 
       (.I0(input_coef_reg_0_3_1_1_n_1),
        .I1(\multOp_inferred__5/i__carry_n_6 ),
        .O(\temp_output[0]014_out__2_carry_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp_output[0]014_out__2_carry_i_12 
       (.I0(orig_input_reg_0_1_0_0_n_0),
        .I1(\multOp_inferred__6/i__carry_n_7 ),
        .O(\temp_output[0]014_out__2_carry_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h4BB4)) 
    \temp_output[0]014_out__2_carry_i_13 
       (.I0(\multOp_inferred__6/i__carry_n_7 ),
        .I1(orig_input_reg_0_1_0_0_n_0),
        .I2(\multOp_inferred__6/i__carry_n_6 ),
        .I3(orig_input_reg_0_1_1_1_n_0),
        .O(\temp_output[0]014_out__2_carry_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h8778788778878778)) 
    \temp_output[0]014_out__2_carry_i_2 
       (.I0(\multOp_inferred__5/i__carry_n_6 ),
        .I1(input_coef_reg_0_3_1_1_n_1),
        .I2(orig_input_reg_0_1_2_2_n_0),
        .I3(input_coef_reg_0_3_2_2_n_1),
        .I4(\multOp_inferred__6/i__carry_n_5 ),
        .I5(\multOp_inferred__5/i__carry_n_5 ),
        .O(\temp_output[0]014_out__2_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \temp_output[0]014_out__2_carry_i_3 
       (.I0(input_coef_reg_0_3_0_0_n_1),
        .I1(A[0]),
        .O(\temp_output[0]014_out__2_carry_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \temp_output[0]014_out__2_carry_i_4 
       (.I0(A[0]),
        .I1(input_coef_reg_0_3_0_0_n_1),
        .O(\temp_output[0]014_out__2_carry_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h95595995A99A9AA9)) 
    \temp_output[0]014_out__2_carry_i_5 
       (.I0(\temp_output[0]014_out__2_carry_i_1_n_0 ),
        .I1(\temp_output[0]014_out__2_carry_i_11_n_0 ),
        .I2(\multOp_inferred__5/i__carry_n_5 ),
        .I3(\multOp_inferred__6/i__carry_n_5 ),
        .I4(input_coef_reg_0_3_2_2_n_1),
        .I5(orig_input_reg_0_1_2_2_n_0),
        .O(\temp_output[0]014_out__2_carry_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h556969AA96555569)) 
    \temp_output[0]014_out__2_carry_i_6 
       (.I0(\temp_output[0]014_out__2_carry_i_2_n_0 ),
        .I1(\multOp_inferred__5/i__carry_n_6 ),
        .I2(input_coef_reg_0_3_1_1_n_1),
        .I3(\temp_output[0]014_out__2_carry_i_12_n_0 ),
        .I4(orig_input_reg_0_1_1_1_n_0),
        .I5(\multOp_inferred__6/i__carry_n_6 ),
        .O(\temp_output[0]014_out__2_carry_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h96696969)) 
    \temp_output[0]014_out__2_carry_i_7 
       (.I0(\temp_output[0]014_out__2_carry_i_13_n_0 ),
        .I1(\multOp_inferred__5/i__carry_n_6 ),
        .I2(input_coef_reg_0_3_1_1_n_1),
        .I3(A[0]),
        .I4(input_coef_reg_0_3_0_0_n_1),
        .O(\temp_output[0]014_out__2_carry_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \temp_output[0]014_out__2_carry_i_8 
       (.I0(input_coef_reg_0_3_0_0_n_1),
        .I1(A[0]),
        .I2(orig_input_reg_0_1_0_0_n_0),
        .I3(\multOp_inferred__6/i__carry_n_7 ),
        .O(\temp_output[0]014_out__2_carry_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000009000000)) 
    \temp_output[0]014_out__2_carry_i_9 
       (.I0(\multOp_inferred__5/i__carry_n_6 ),
        .I1(input_coef_reg_0_3_1_1_n_1),
        .I2(\multOp_inferred__6/i__carry_n_7 ),
        .I3(orig_input_reg_0_1_0_0_n_0),
        .I4(orig_input_reg_0_1_1_1_n_0),
        .I5(\multOp_inferred__6/i__carry_n_6 ),
        .O(\temp_output[0]014_out__2_carry_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \temp_output[0]016_out_carry 
       (.CI(1'b0),
        .CO({\temp_output[0]016_out_carry_n_0 ,\temp_output[0]016_out_carry_n_1 ,\temp_output[0]016_out_carry_n_2 ,\temp_output[0]016_out_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\_inferred__4/i___0_carry_n_4 ,\_inferred__4/i___0_carry_n_5 ,\_inferred__4/i___0_carry_n_6 ,\_inferred__4/i___0_carry_n_7 }),
        .O(\temp_output[0]016_out [3:0]),
        .S({\temp_output[0]016_out_carry_i_1_n_0 ,\temp_output[0]016_out_carry_i_2_n_0 ,\temp_output[0]016_out_carry_i_3_n_0 ,\temp_output[0]016_out_carry_i_4_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \temp_output[0]016_out_carry__0 
       (.CI(\temp_output[0]016_out_carry_n_0 ),
        .CO({\NLW_temp_output[0]016_out_carry__0_CO_UNCONNECTED [3],\temp_output[0]016_out_carry__0_n_1 ,\temp_output[0]016_out_carry__0_n_2 ,\temp_output[0]016_out_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\_inferred__4/i___0_carry__0_n_5 ,\_inferred__4/i___0_carry__0_n_6 ,\_inferred__4/i___0_carry__0_n_7 }),
        .O(\temp_output[0]016_out [7:4]),
        .S({\temp_output[0]016_out_carry__0_i_1_n_0 ,\temp_output[0]016_out_carry__0_i_2_n_0 ,\temp_output[0]016_out_carry__0_i_3_n_0 ,\temp_output[0]016_out_carry__0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \temp_output[0]016_out_carry__0_i_1 
       (.I0(\_inferred__4/i___0_carry__0_n_4 ),
        .I1(p_0_in15_in[7]),
        .O(\temp_output[0]016_out_carry__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \temp_output[0]016_out_carry__0_i_2 
       (.I0(\_inferred__4/i___0_carry__0_n_5 ),
        .I1(p_0_in15_in[6]),
        .O(\temp_output[0]016_out_carry__0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \temp_output[0]016_out_carry__0_i_3 
       (.I0(\_inferred__4/i___0_carry__0_n_6 ),
        .I1(p_0_in15_in[5]),
        .O(\temp_output[0]016_out_carry__0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \temp_output[0]016_out_carry__0_i_4 
       (.I0(\_inferred__4/i___0_carry__0_n_7 ),
        .I1(p_0_in15_in[4]),
        .O(\temp_output[0]016_out_carry__0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \temp_output[0]016_out_carry_i_1 
       (.I0(\_inferred__4/i___0_carry_n_4 ),
        .I1(p_0_in15_in[3]),
        .O(\temp_output[0]016_out_carry_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \temp_output[0]016_out_carry_i_2 
       (.I0(\_inferred__4/i___0_carry_n_5 ),
        .I1(p_0_in15_in[2]),
        .O(\temp_output[0]016_out_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \temp_output[0]016_out_carry_i_3 
       (.I0(\_inferred__4/i___0_carry_n_6 ),
        .I1(p_0_in15_in[1]),
        .O(\temp_output[0]016_out_carry_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \temp_output[0]016_out_carry_i_4 
       (.I0(\_inferred__4/i___0_carry_n_7 ),
        .I1(p_0_in15_in[0]),
        .O(\temp_output[0]016_out_carry_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \temp_output[0]017_out__0_carry 
       (.CI(1'b0),
        .CO({\temp_output[0]017_out__0_carry_n_0 ,\temp_output[0]017_out__0_carry_n_1 ,\temp_output[0]017_out__0_carry_n_2 ,\temp_output[0]017_out__0_carry_n_3 }),
        .CYINIT(1'b1),
        .DI({\temp_output[0]017_out__0_carry_i_1_n_0 ,\temp_output[0]017_out__0_carry_i_2_n_0 ,\temp_output[0]017_out__0_carry_i_3_n_0 ,1'b1}),
        .O(C[3:0]),
        .S({\temp_output[0]017_out__0_carry_i_4_n_0 ,\temp_output[0]017_out__0_carry_i_5_n_0 ,\temp_output[0]017_out__0_carry_i_6_n_0 ,\temp_output[0]017_out__0_carry_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \temp_output[0]017_out__0_carry__0 
       (.CI(\temp_output[0]017_out__0_carry_n_0 ),
        .CO({\NLW_temp_output[0]017_out__0_carry__0_CO_UNCONNECTED [3],\temp_output[0]017_out__0_carry__0_n_1 ,\temp_output[0]017_out__0_carry__0_n_2 ,\temp_output[0]017_out__0_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\temp_output[0]017_out__0_carry__0_i_1_n_0 ,\temp_output[0]017_out__0_carry__0_i_2_n_0 ,\temp_output[0]017_out__0_carry__0_i_3_n_0 }),
        .O(C[7:4]),
        .S({\temp_output[0]017_out__0_carry__0_i_4_n_0 ,\temp_output[0]017_out__0_carry__0_i_5_n_0 ,\temp_output[0]017_out__0_carry__0_i_6_n_0 ,\temp_output[0]017_out__0_carry__0_i_7_n_0 }));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \temp_output[0]017_out__0_carry__0_i_1 
       (.I0(p_0_in4_in[5]),
        .I1(multOp[5]),
        .I2(A[5]),
        .O(\temp_output[0]017_out__0_carry__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \temp_output[0]017_out__0_carry__0_i_10 
       (.I0(p_0_in[4]),
        .I1(p_0_in[6]),
        .O(\temp_output[0]017_out__0_carry__0_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \temp_output[0]017_out__0_carry__0_i_11 
       (.I0(p_0_in[3]),
        .I1(p_0_in[5]),
        .O(\temp_output[0]017_out__0_carry__0_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \temp_output[0]017_out__0_carry__0_i_12 
       (.I0(p_0_in[2]),
        .I1(p_0_in[4]),
        .O(\temp_output[0]017_out__0_carry__0_i_12_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \temp_output[0]017_out__0_carry__0_i_2 
       (.I0(p_0_in4_in[4]),
        .I1(multOp[4]),
        .I2(A[4]),
        .O(\temp_output[0]017_out__0_carry__0_i_2_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \temp_output[0]017_out__0_carry__0_i_3 
       (.I0(p_0_in4_in[3]),
        .I1(multOp[3]),
        .I2(A[3]),
        .O(\temp_output[0]017_out__0_carry__0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \temp_output[0]017_out__0_carry__0_i_4 
       (.I0(A[6]),
        .I1(multOp[6]),
        .I2(p_0_in4_in[6]),
        .I3(p_0_in4_in[7]),
        .I4(A[7]),
        .I5(multOp[7]),
        .O(\temp_output[0]017_out__0_carry__0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \temp_output[0]017_out__0_carry__0_i_5 
       (.I0(\temp_output[0]017_out__0_carry__0_i_1_n_0 ),
        .I1(p_0_in4_in[6]),
        .I2(multOp[6]),
        .I3(A[6]),
        .O(\temp_output[0]017_out__0_carry__0_i_5_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \temp_output[0]017_out__0_carry__0_i_6 
       (.I0(p_0_in4_in[5]),
        .I1(multOp[5]),
        .I2(A[5]),
        .I3(\temp_output[0]017_out__0_carry__0_i_2_n_0 ),
        .O(\temp_output[0]017_out__0_carry__0_i_6_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \temp_output[0]017_out__0_carry__0_i_7 
       (.I0(p_0_in4_in[4]),
        .I1(multOp[4]),
        .I2(A[4]),
        .I3(\temp_output[0]017_out__0_carry__0_i_3_n_0 ),
        .O(\temp_output[0]017_out__0_carry__0_i_7_n_0 ));
  CARRY4 \temp_output[0]017_out__0_carry__0_i_8 
       (.CI(\temp_output[0]017_out__0_carry_i_8_n_0 ),
        .CO({\NLW_temp_output[0]017_out__0_carry__0_i_8_CO_UNCONNECTED [3],\temp_output[0]017_out__0_carry__0_i_8_n_1 ,\temp_output[0]017_out__0_carry__0_i_8_n_2 ,\temp_output[0]017_out__0_carry__0_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,p_0_in[4:2]}),
        .O(multOp[7:4]),
        .S({\temp_output[0]017_out__0_carry__0_i_9_n_0 ,\temp_output[0]017_out__0_carry__0_i_10_n_0 ,\temp_output[0]017_out__0_carry__0_i_11_n_0 ,\temp_output[0]017_out__0_carry__0_i_12_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \temp_output[0]017_out__0_carry__0_i_9 
       (.I0(p_0_in[7]),
        .I1(p_0_in[5]),
        .O(\temp_output[0]017_out__0_carry__0_i_9_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \temp_output[0]017_out__0_carry_i_1 
       (.I0(p_0_in4_in[2]),
        .I1(multOp[2]),
        .I2(A[2]),
        .O(\temp_output[0]017_out__0_carry_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \temp_output[0]017_out__0_carry_i_10 
       (.I0(p_0_in[0]),
        .I1(p_0_in[2]),
        .O(\temp_output[0]017_out__0_carry_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_output[0]017_out__0_carry_i_11 
       (.I0(p_0_in[1]),
        .O(\temp_output[0]017_out__0_carry_i_11_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \temp_output[0]017_out__0_carry_i_2 
       (.I0(p_0_in4_in[1]),
        .I1(multOp[1]),
        .I2(A[1]),
        .O(\temp_output[0]017_out__0_carry_i_2_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    \temp_output[0]017_out__0_carry_i_3 
       (.I0(A[0]),
        .I1(p_0_in4_in[0]),
        .I2(multOp[0]),
        .O(\temp_output[0]017_out__0_carry_i_3_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \temp_output[0]017_out__0_carry_i_4 
       (.I0(p_0_in4_in[3]),
        .I1(multOp[3]),
        .I2(A[3]),
        .I3(\temp_output[0]017_out__0_carry_i_1_n_0 ),
        .O(\temp_output[0]017_out__0_carry_i_4_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \temp_output[0]017_out__0_carry_i_5 
       (.I0(p_0_in4_in[2]),
        .I1(multOp[2]),
        .I2(A[2]),
        .I3(\temp_output[0]017_out__0_carry_i_2_n_0 ),
        .O(\temp_output[0]017_out__0_carry_i_5_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \temp_output[0]017_out__0_carry_i_6 
       (.I0(p_0_in4_in[1]),
        .I1(multOp[1]),
        .I2(A[1]),
        .I3(\temp_output[0]017_out__0_carry_i_3_n_0 ),
        .O(\temp_output[0]017_out__0_carry_i_6_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \temp_output[0]017_out__0_carry_i_7 
       (.I0(A[0]),
        .I1(p_0_in4_in[0]),
        .I2(multOp[0]),
        .O(\temp_output[0]017_out__0_carry_i_7_n_0 ));
  CARRY4 \temp_output[0]017_out__0_carry_i_8 
       (.CI(1'b0),
        .CO({\temp_output[0]017_out__0_carry_i_8_n_0 ,\temp_output[0]017_out__0_carry_i_8_n_1 ,\temp_output[0]017_out__0_carry_i_8_n_2 ,\temp_output[0]017_out__0_carry_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({p_0_in[1:0],1'b0,1'b1}),
        .O({multOp[3:1],\NLW_temp_output[0]017_out__0_carry_i_8_O_UNCONNECTED [0]}),
        .S({\temp_output[0]017_out__0_carry_i_9_n_0 ,\temp_output[0]017_out__0_carry_i_10_n_0 ,\temp_output[0]017_out__0_carry_i_11_n_0 ,p_0_in[0]}));
  LUT2 #(
    .INIT(4'h9)) 
    \temp_output[0]017_out__0_carry_i_9 
       (.I0(p_0_in[1]),
        .I1(p_0_in[3]),
        .O(\temp_output[0]017_out__0_carry_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \temp_output[0]05_out_carry 
       (.CI(1'b0),
        .CO({\temp_output[0]05_out_carry_n_0 ,\temp_output[0]05_out_carry_n_1 ,\temp_output[0]05_out_carry_n_2 ,\temp_output[0]05_out_carry_n_3 }),
        .CYINIT(1'b0),
        .DI(C[3:0]),
        .O(\temp_output[0]05_out [3:0]),
        .S({\temp_output[0]05_out_carry_i_1_n_0 ,\temp_output[0]05_out_carry_i_2_n_0 ,\temp_output[0]05_out_carry_i_3_n_0 ,\temp_output[0]05_out_carry_i_4_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \temp_output[0]05_out_carry__0 
       (.CI(\temp_output[0]05_out_carry_n_0 ),
        .CO({\NLW_temp_output[0]05_out_carry__0_CO_UNCONNECTED [3],\temp_output[0]05_out_carry__0_n_1 ,\temp_output[0]05_out_carry__0_n_2 ,\temp_output[0]05_out_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,C[6:4]}),
        .O(\temp_output[0]05_out [7:4]),
        .S({\temp_output[0]05_out_carry__0_i_1_n_0 ,\temp_output[0]05_out_carry__0_i_2_n_0 ,\temp_output[0]05_out_carry__0_i_3_n_0 ,\temp_output[0]05_out_carry__0_i_4_n_0 }));
  LUT4 #(
    .INIT(16'hD22D)) 
    \temp_output[0]05_out_carry__0_i_1 
       (.I0(\temp_output[0]05_out_carry__0_i_5_n_0 ),
        .I1(\multOp_inferred__1/i___15_carry_n_4 ),
        .I2(\multOp_inferred__1/i___15_carry__0_n_7 ),
        .I3(C[7]),
        .O(\temp_output[0]05_out_carry__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \temp_output[0]05_out_carry__0_i_2 
       (.I0(C[6]),
        .I1(\temp_output[0]05_out_carry__0_i_5_n_0 ),
        .I2(\multOp_inferred__1/i___15_carry_n_4 ),
        .O(\temp_output[0]05_out_carry__0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \temp_output[0]05_out_carry__0_i_3 
       (.I0(C[5]),
        .I1(\temp_output[0]05_out_carry__0_i_6_n_0 ),
        .I2(\multOp_inferred__1/i___15_carry_n_5 ),
        .O(\temp_output[0]05_out_carry__0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA955555556)) 
    \temp_output[0]05_out_carry__0_i_4 
       (.I0(C[4]),
        .I1(\multOp_inferred__1/i___15_carry_n_7 ),
        .I2(\multOp_inferred__1/i__carry_n_7 ),
        .I3(\multOp_inferred__1/i__carry_n_6 ),
        .I4(\multOp_inferred__1/i__carry_n_5 ),
        .I5(\multOp_inferred__1/i___15_carry_n_6 ),
        .O(\temp_output[0]05_out_carry__0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \temp_output[0]05_out_carry__0_i_5 
       (.I0(\multOp_inferred__1/i___15_carry_n_5 ),
        .I1(\multOp_inferred__1/i___15_carry_n_7 ),
        .I2(\multOp_inferred__1/i__carry_n_7 ),
        .I3(\multOp_inferred__1/i__carry_n_6 ),
        .I4(\multOp_inferred__1/i__carry_n_5 ),
        .I5(\multOp_inferred__1/i___15_carry_n_6 ),
        .O(\temp_output[0]05_out_carry__0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \temp_output[0]05_out_carry__0_i_6 
       (.I0(\multOp_inferred__1/i___15_carry_n_6 ),
        .I1(\multOp_inferred__1/i__carry_n_5 ),
        .I2(\multOp_inferred__1/i__carry_n_6 ),
        .I3(\multOp_inferred__1/i__carry_n_7 ),
        .I4(\multOp_inferred__1/i___15_carry_n_7 ),
        .O(\temp_output[0]05_out_carry__0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAAA95556)) 
    \temp_output[0]05_out_carry_i_1 
       (.I0(C[3]),
        .I1(\multOp_inferred__1/i__carry_n_5 ),
        .I2(\multOp_inferred__1/i__carry_n_6 ),
        .I3(\multOp_inferred__1/i__carry_n_7 ),
        .I4(\multOp_inferred__1/i___15_carry_n_7 ),
        .O(\temp_output[0]05_out_carry_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA956)) 
    \temp_output[0]05_out_carry_i_2 
       (.I0(C[2]),
        .I1(\multOp_inferred__1/i__carry_n_7 ),
        .I2(\multOp_inferred__1/i__carry_n_6 ),
        .I3(\multOp_inferred__1/i__carry_n_5 ),
        .O(\temp_output[0]05_out_carry_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \temp_output[0]05_out_carry_i_3 
       (.I0(C[1]),
        .I1(\multOp_inferred__1/i__carry_n_6 ),
        .I2(\multOp_inferred__1/i__carry_n_7 ),
        .O(\temp_output[0]05_out_carry_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \temp_output[0]05_out_carry_i_4 
       (.I0(C[0]),
        .I1(\multOp_inferred__1/i__carry_n_7 ),
        .O(\temp_output[0]05_out_carry_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_output[0][0]_i_1 
       (.I0(\temp_output[0]014_out [0]),
        .I1(first_add),
        .I2(\temp_output[0]00_out [0]),
        .O(\temp_output[1] [0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_output[0][16]_i_1 
       (.I0(C[0]),
        .I1(first_add),
        .I2(\temp_output[0]05_out [0]),
        .O(\temp_output[1] [16]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_output[0][17]_i_1 
       (.I0(C[1]),
        .I1(first_add),
        .I2(\temp_output[0]05_out [1]),
        .O(\temp_output[1] [17]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_output[0][18]_i_1 
       (.I0(C[2]),
        .I1(first_add),
        .I2(\temp_output[0]05_out [2]),
        .O(\temp_output[1] [18]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_output[0][19]_i_1 
       (.I0(C[3]),
        .I1(first_add),
        .I2(\temp_output[0]05_out [3]),
        .O(\temp_output[1] [19]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_output[0][1]_i_1 
       (.I0(\temp_output[0]014_out [1]),
        .I1(first_add),
        .I2(\temp_output[0]00_out [1]),
        .O(\temp_output[1] [1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_output[0][20]_i_1 
       (.I0(C[4]),
        .I1(first_add),
        .I2(\temp_output[0]05_out [4]),
        .O(\temp_output[1] [20]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_output[0][21]_i_1 
       (.I0(C[5]),
        .I1(first_add),
        .I2(\temp_output[0]05_out [5]),
        .O(\temp_output[1] [21]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_output[0][22]_i_1 
       (.I0(C[6]),
        .I1(first_add),
        .I2(\temp_output[0]05_out [6]),
        .O(\temp_output[1] [22]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_output[0][23]_i_1 
       (.I0(C[7]),
        .I1(first_add),
        .I2(\temp_output[0]05_out [7]),
        .O(\temp_output[1] [23]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_output[0][24]_i_1 
       (.I0(\temp_output[0]018_out [0]),
        .I1(first_add),
        .I2(\temp_output[0]010_out [0]),
        .O(\temp_output[1] [24]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_output[0][25]_i_1 
       (.I0(\temp_output[0]018_out [1]),
        .I1(first_add),
        .I2(\temp_output[0]010_out [1]),
        .O(\temp_output[1] [25]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_output[0][26]_i_1 
       (.I0(\temp_output[0]018_out [2]),
        .I1(first_add),
        .I2(\temp_output[0]010_out [2]),
        .O(\temp_output[1] [26]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_output[0][27]_i_1 
       (.I0(\temp_output[0]018_out [3]),
        .I1(first_add),
        .I2(\temp_output[0]010_out [3]),
        .O(\temp_output[1] [27]));
  LUT2 #(
    .INIT(4'h9)) 
    \temp_output[0][27]_i_10 
       (.I0(p_0_in[0]),
        .I1(p_0_in9_in[0]),
        .O(\temp_output[0][27]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_output[0][27]_i_3 
       (.I0(p_0_in[3]),
        .O(\temp_output[0][27]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_output[0][27]_i_4 
       (.I0(p_0_in[2]),
        .O(\temp_output[0][27]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_output[0][27]_i_5 
       (.I0(p_0_in[1]),
        .O(\temp_output[0][27]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_output[0][27]_i_6 
       (.I0(p_0_in[0]),
        .O(\temp_output[0][27]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \temp_output[0][27]_i_7 
       (.I0(p_0_in[3]),
        .I1(p_0_in9_in[3]),
        .O(\temp_output[0][27]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \temp_output[0][27]_i_8 
       (.I0(p_0_in[2]),
        .I1(p_0_in9_in[2]),
        .O(\temp_output[0][27]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \temp_output[0][27]_i_9 
       (.I0(p_0_in[1]),
        .I1(p_0_in9_in[1]),
        .O(\temp_output[0][27]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_output[0][28]_i_1 
       (.I0(\temp_output[0]018_out [4]),
        .I1(first_add),
        .I2(\temp_output[0]010_out [4]),
        .O(\temp_output[1] [28]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_output[0][29]_i_1 
       (.I0(\temp_output[0]018_out [5]),
        .I1(first_add),
        .I2(\temp_output[0]010_out [5]),
        .O(\temp_output[1] [29]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_output[0][2]_i_1 
       (.I0(\temp_output[0]014_out [2]),
        .I1(first_add),
        .I2(\temp_output[0]00_out [2]),
        .O(\temp_output[1] [2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_output[0][30]_i_1 
       (.I0(\temp_output[0]018_out [6]),
        .I1(first_add),
        .I2(\temp_output[0]010_out [6]),
        .O(\temp_output[1] [30]));
  LUT3 #(
    .INIT(8'h0E)) 
    \temp_output[0][31]_i_1 
       (.I0(start_add),
        .I1(first_add),
        .I2(out_ctr),
        .O(\temp_output[0][31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \temp_output[0][31]_i_10 
       (.I0(p_0_in[4]),
        .I1(p_0_in9_in[4]),
        .O(\temp_output[0][31]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_output[0][31]_i_2 
       (.I0(\temp_output[0]018_out [7]),
        .I1(first_add),
        .I2(\temp_output[0]010_out [7]),
        .O(\temp_output[1] [31]));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_output[0][31]_i_4 
       (.I0(p_0_in[6]),
        .O(\temp_output[0][31]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_output[0][31]_i_5 
       (.I0(p_0_in[5]),
        .O(\temp_output[0][31]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_output[0][31]_i_6 
       (.I0(p_0_in[4]),
        .O(\temp_output[0][31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \temp_output[0][31]_i_7 
       (.I0(p_0_in9_in[7]),
        .I1(p_0_in[7]),
        .O(\temp_output[0][31]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \temp_output[0][31]_i_8 
       (.I0(p_0_in[6]),
        .I1(p_0_in9_in[6]),
        .O(\temp_output[0][31]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \temp_output[0][31]_i_9 
       (.I0(p_0_in[5]),
        .I1(p_0_in9_in[5]),
        .O(\temp_output[0][31]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_output[0][3]_i_1 
       (.I0(\temp_output[0]014_out [3]),
        .I1(first_add),
        .I2(\temp_output[0]00_out [3]),
        .O(\temp_output[1] [3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_output[0][4]_i_1 
       (.I0(\temp_output[0]014_out [4]),
        .I1(first_add),
        .I2(\temp_output[0]00_out [4]),
        .O(\temp_output[1] [4]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_output[0][5]_i_1 
       (.I0(\temp_output[0]014_out [5]),
        .I1(first_add),
        .I2(\temp_output[0]00_out [5]),
        .O(\temp_output[1] [5]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_output[0][6]_i_1 
       (.I0(\temp_output[0]014_out [6]),
        .I1(first_add),
        .I2(\temp_output[0]00_out [6]),
        .O(\temp_output[1] [6]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_output[0][7]_i_1 
       (.I0(\temp_output[0]014_out [7]),
        .I1(first_add),
        .I2(\temp_output[0]00_out [7]),
        .O(\temp_output[1] [7]));
  FDRE #(
    .INIT(1'b0)) 
    \temp_output_reg[0][0] 
       (.C(clk),
        .CE(\temp_output[0][31]_i_1_n_0 ),
        .D(\temp_output[1] [0]),
        .Q(\temp_output_reg_n_0_[0][0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \temp_output_reg[0][10] 
       (.C(clk),
        .CE(\temp_output[0][31]_i_1_n_0 ),
        .D(\temp_output[0]016_out [2]),
        .Q(\temp_output_reg_n_0_[0][10] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \temp_output_reg[0][11] 
       (.C(clk),
        .CE(\temp_output[0][31]_i_1_n_0 ),
        .D(\temp_output[0]016_out [3]),
        .Q(\temp_output_reg_n_0_[0][11] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \temp_output_reg[0][12] 
       (.C(clk),
        .CE(\temp_output[0][31]_i_1_n_0 ),
        .D(\temp_output[0]016_out [4]),
        .Q(\temp_output_reg_n_0_[0][12] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \temp_output_reg[0][13] 
       (.C(clk),
        .CE(\temp_output[0][31]_i_1_n_0 ),
        .D(\temp_output[0]016_out [5]),
        .Q(\temp_output_reg_n_0_[0][13] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \temp_output_reg[0][14] 
       (.C(clk),
        .CE(\temp_output[0][31]_i_1_n_0 ),
        .D(\temp_output[0]016_out [6]),
        .Q(\temp_output_reg_n_0_[0][14] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \temp_output_reg[0][15] 
       (.C(clk),
        .CE(\temp_output[0][31]_i_1_n_0 ),
        .D(\temp_output[0]016_out [7]),
        .Q(\temp_output_reg_n_0_[0][15] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \temp_output_reg[0][16] 
       (.C(clk),
        .CE(\temp_output[0][31]_i_1_n_0 ),
        .D(\temp_output[1] [16]),
        .Q(\temp_output_reg_n_0_[0][16] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \temp_output_reg[0][17] 
       (.C(clk),
        .CE(\temp_output[0][31]_i_1_n_0 ),
        .D(\temp_output[1] [17]),
        .Q(\temp_output_reg_n_0_[0][17] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \temp_output_reg[0][18] 
       (.C(clk),
        .CE(\temp_output[0][31]_i_1_n_0 ),
        .D(\temp_output[1] [18]),
        .Q(\temp_output_reg_n_0_[0][18] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \temp_output_reg[0][19] 
       (.C(clk),
        .CE(\temp_output[0][31]_i_1_n_0 ),
        .D(\temp_output[1] [19]),
        .Q(\temp_output_reg_n_0_[0][19] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \temp_output_reg[0][1] 
       (.C(clk),
        .CE(\temp_output[0][31]_i_1_n_0 ),
        .D(\temp_output[1] [1]),
        .Q(\temp_output_reg_n_0_[0][1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \temp_output_reg[0][20] 
       (.C(clk),
        .CE(\temp_output[0][31]_i_1_n_0 ),
        .D(\temp_output[1] [20]),
        .Q(\temp_output_reg_n_0_[0][20] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \temp_output_reg[0][21] 
       (.C(clk),
        .CE(\temp_output[0][31]_i_1_n_0 ),
        .D(\temp_output[1] [21]),
        .Q(\temp_output_reg_n_0_[0][21] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \temp_output_reg[0][22] 
       (.C(clk),
        .CE(\temp_output[0][31]_i_1_n_0 ),
        .D(\temp_output[1] [22]),
        .Q(\temp_output_reg_n_0_[0][22] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \temp_output_reg[0][23] 
       (.C(clk),
        .CE(\temp_output[0][31]_i_1_n_0 ),
        .D(\temp_output[1] [23]),
        .Q(\temp_output_reg_n_0_[0][23] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \temp_output_reg[0][24] 
       (.C(clk),
        .CE(\temp_output[0][31]_i_1_n_0 ),
        .D(\temp_output[1] [24]),
        .Q(\temp_output_reg_n_0_[0][24] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \temp_output_reg[0][25] 
       (.C(clk),
        .CE(\temp_output[0][31]_i_1_n_0 ),
        .D(\temp_output[1] [25]),
        .Q(\temp_output_reg_n_0_[0][25] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \temp_output_reg[0][26] 
       (.C(clk),
        .CE(\temp_output[0][31]_i_1_n_0 ),
        .D(\temp_output[1] [26]),
        .Q(\temp_output_reg_n_0_[0][26] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \temp_output_reg[0][27] 
       (.C(clk),
        .CE(\temp_output[0][31]_i_1_n_0 ),
        .D(\temp_output[1] [27]),
        .Q(\temp_output_reg_n_0_[0][27] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \temp_output_reg[0][27]_i_2 
       (.CI(1'b0),
        .CO({\temp_output_reg[0][27]_i_2_n_0 ,\temp_output_reg[0][27]_i_2_n_1 ,\temp_output_reg[0][27]_i_2_n_2 ,\temp_output_reg[0][27]_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({\temp_output[0][27]_i_3_n_0 ,\temp_output[0][27]_i_4_n_0 ,\temp_output[0][27]_i_5_n_0 ,\temp_output[0][27]_i_6_n_0 }),
        .O(\temp_output[0]018_out [3:0]),
        .S({\temp_output[0][27]_i_7_n_0 ,\temp_output[0][27]_i_8_n_0 ,\temp_output[0][27]_i_9_n_0 ,\temp_output[0][27]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \temp_output_reg[0][28] 
       (.C(clk),
        .CE(\temp_output[0][31]_i_1_n_0 ),
        .D(\temp_output[1] [28]),
        .Q(\temp_output_reg_n_0_[0][28] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \temp_output_reg[0][29] 
       (.C(clk),
        .CE(\temp_output[0][31]_i_1_n_0 ),
        .D(\temp_output[1] [29]),
        .Q(\temp_output_reg_n_0_[0][29] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \temp_output_reg[0][2] 
       (.C(clk),
        .CE(\temp_output[0][31]_i_1_n_0 ),
        .D(\temp_output[1] [2]),
        .Q(\temp_output_reg_n_0_[0][2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \temp_output_reg[0][30] 
       (.C(clk),
        .CE(\temp_output[0][31]_i_1_n_0 ),
        .D(\temp_output[1] [30]),
        .Q(\temp_output_reg_n_0_[0][30] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \temp_output_reg[0][31] 
       (.C(clk),
        .CE(\temp_output[0][31]_i_1_n_0 ),
        .D(\temp_output[1] [31]),
        .Q(\temp_output_reg_n_0_[0][31] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \temp_output_reg[0][31]_i_3 
       (.CI(\temp_output_reg[0][27]_i_2_n_0 ),
        .CO({\NLW_temp_output_reg[0][31]_i_3_CO_UNCONNECTED [3],\temp_output_reg[0][31]_i_3_n_1 ,\temp_output_reg[0][31]_i_3_n_2 ,\temp_output_reg[0][31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\temp_output[0][31]_i_4_n_0 ,\temp_output[0][31]_i_5_n_0 ,\temp_output[0][31]_i_6_n_0 }),
        .O(\temp_output[0]018_out [7:4]),
        .S({\temp_output[0][31]_i_7_n_0 ,\temp_output[0][31]_i_8_n_0 ,\temp_output[0][31]_i_9_n_0 ,\temp_output[0][31]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \temp_output_reg[0][3] 
       (.C(clk),
        .CE(\temp_output[0][31]_i_1_n_0 ),
        .D(\temp_output[1] [3]),
        .Q(\temp_output_reg_n_0_[0][3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \temp_output_reg[0][4] 
       (.C(clk),
        .CE(\temp_output[0][31]_i_1_n_0 ),
        .D(\temp_output[1] [4]),
        .Q(\temp_output_reg_n_0_[0][4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \temp_output_reg[0][5] 
       (.C(clk),
        .CE(\temp_output[0][31]_i_1_n_0 ),
        .D(\temp_output[1] [5]),
        .Q(\temp_output_reg_n_0_[0][5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \temp_output_reg[0][6] 
       (.C(clk),
        .CE(\temp_output[0][31]_i_1_n_0 ),
        .D(\temp_output[1] [6]),
        .Q(\temp_output_reg_n_0_[0][6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \temp_output_reg[0][7] 
       (.C(clk),
        .CE(\temp_output[0][31]_i_1_n_0 ),
        .D(\temp_output[1] [7]),
        .Q(\temp_output_reg_n_0_[0][7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \temp_output_reg[0][8] 
       (.C(clk),
        .CE(\temp_output[0][31]_i_1_n_0 ),
        .D(\temp_output[0]016_out [0]),
        .Q(\temp_output_reg_n_0_[0][8] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \temp_output_reg[0][9] 
       (.C(clk),
        .CE(\temp_output[0][31]_i_1_n_0 ),
        .D(\temp_output[0]016_out [1]),
        .Q(\temp_output_reg_n_0_[0][9] ),
        .R(rst));
  CARRY4 temp_result0__0_carry
       (.CI(1'b0),
        .CO({temp_result0__0_carry_n_0,temp_result0__0_carry_n_1,temp_result0__0_carry_n_2,temp_result0__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({temp_result0__0_carry_i_1_n_0,temp_result0__0_carry_i_2_n_0,temp_result0__0_carry_i_3_n_0,1'b0}),
        .O({temp_result0__0_carry_n_4,temp_result0__0_carry_n_5,temp_result0__0_carry_n_6,temp_result0__0_carry_n_7}),
        .S({temp_result0__0_carry_i_4_n_0,temp_result0__0_carry_i_5_n_0,temp_result0__0_carry_i_6_n_0,temp_result0__0_carry_i_7_n_0}));
  CARRY4 temp_result0__0_carry__0
       (.CI(temp_result0__0_carry_n_0),
        .CO({NLW_temp_result0__0_carry__0_CO_UNCONNECTED[3:1],temp_result0__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,temp_result0__0_carry__0_i_1_n_0}),
        .O({NLW_temp_result0__0_carry__0_O_UNCONNECTED[3:2],temp_result0__0_carry__0_n_6,temp_result0__0_carry__0_n_7}),
        .S({1'b0,1'b0,temp_result0__0_carry__0_i_2_n_0,temp_result0__0_carry__0_i_3_n_0}));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'hE38A)) 
    temp_result0__0_carry__0_i_1
       (.I0(\temp_result_reg_n_0_[7] ),
        .I1(\temp_result_reg_n_0_[5] ),
        .I2(temp_result0__0_carry_i_8_n_0),
        .I3(\temp_result_reg_n_0_[6] ),
        .O(temp_result0__0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9E38)) 
    temp_result0__0_carry__0_i_2
       (.I0(\temp_result_reg_n_0_[6] ),
        .I1(temp_result0__0_carry_i_8_n_0),
        .I2(\temp_result_reg_n_0_[5] ),
        .I3(\temp_result_reg_n_0_[7] ),
        .O(temp_result0__0_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h69A69659)) 
    temp_result0__0_carry__0_i_3
       (.I0(temp_result0__0_carry__0_i_1_n_0),
        .I1(temp_result0__0_carry_i_8_n_0),
        .I2(\temp_result_reg_n_0_[5] ),
        .I3(\temp_result_reg_n_0_[6] ),
        .I4(\temp_result_reg_n_0_[7] ),
        .O(temp_result0__0_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'hA208)) 
    temp_result0__0_carry_i_1
       (.I0(\temp_result_reg_n_0_[7] ),
        .I1(\temp_result_reg_n_0_[5] ),
        .I2(temp_result0__0_carry_i_8_n_0),
        .I3(\temp_result_reg_n_0_[6] ),
        .O(temp_result0__0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h45BA)) 
    temp_result0__0_carry_i_2
       (.I0(\temp_result_reg_n_0_[6] ),
        .I1(temp_result0__0_carry_i_8_n_0),
        .I2(\temp_result_reg_n_0_[5] ),
        .I3(\temp_result_reg_n_0_[7] ),
        .O(temp_result0__0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    temp_result0__0_carry_i_3
       (.I0(\temp_result_reg_n_0_[3] ),
        .I1(\temp_result_reg_n_0_[0] ),
        .I2(\temp_result_reg_n_0_[1] ),
        .I3(\temp_result_reg_n_0_[2] ),
        .I4(\temp_result_reg_n_0_[4] ),
        .I5(\temp_result_reg_n_0_[5] ),
        .O(temp_result0__0_carry_i_3_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT5 #(
    .INIT(32'h699A9665)) 
    temp_result0__0_carry_i_4
       (.I0(\temp_result_reg_n_0_[7] ),
        .I1(\temp_result_reg_n_0_[5] ),
        .I2(temp_result0__0_carry_i_8_n_0),
        .I3(\temp_result_reg_n_0_[6] ),
        .I4(temp_result0__0_carry_i_1_n_0),
        .O(temp_result0__0_carry_i_4_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h9665)) 
    temp_result0__0_carry_i_5
       (.I0(\temp_result_reg_n_0_[7] ),
        .I1(\temp_result_reg_n_0_[5] ),
        .I2(temp_result0__0_carry_i_8_n_0),
        .I3(\temp_result_reg_n_0_[6] ),
        .O(temp_result0__0_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h4B)) 
    temp_result0__0_carry_i_6
       (.I0(\temp_result_reg_n_0_[5] ),
        .I1(temp_result0__0_carry_i_8_n_0),
        .I2(\temp_result_reg_n_0_[6] ),
        .O(temp_result0__0_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    temp_result0__0_carry_i_7
       (.I0(\temp_result_reg_n_0_[3] ),
        .I1(\temp_result_reg_n_0_[0] ),
        .I2(\temp_result_reg_n_0_[1] ),
        .I3(\temp_result_reg_n_0_[2] ),
        .I4(\temp_result_reg_n_0_[4] ),
        .I5(\temp_result_reg_n_0_[5] ),
        .O(temp_result0__0_carry_i_7_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    temp_result0__0_carry_i_8
       (.I0(\temp_result_reg_n_0_[4] ),
        .I1(\temp_result_reg_n_0_[2] ),
        .I2(\temp_result_reg_n_0_[1] ),
        .I3(\temp_result_reg_n_0_[0] ),
        .I4(\temp_result_reg_n_0_[3] ),
        .O(temp_result0__0_carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 temp_result0__14_carry
       (.CI(1'b0),
        .CO({temp_result0__14_carry_n_0,temp_result0__14_carry_n_1,temp_result0__14_carry_n_2,temp_result0__14_carry_n_3}),
        .CYINIT(1'b1),
        .DI({temp_result0__14_carry_i_1_n_0,temp_result0__14_carry_i_2_n_0,temp_result0__14_carry_i_3_n_0,temp_result0__14_carry_i_4_n_0}),
        .O({temp_result0__14_carry_n_4,temp_result0__14_carry_n_5,temp_result0__14_carry_n_6,temp_result0__14_carry_n_7}),
        .S({temp_result0__14_carry_i_5_n_0,temp_result0__14_carry_i_6_n_0,temp_result0__14_carry_i_7_n_0,temp_result0__14_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 temp_result0__14_carry__0
       (.CI(temp_result0__14_carry_n_0),
        .CO({NLW_temp_result0__14_carry__0_CO_UNCONNECTED[3:1],temp_result0__14_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,temp_result0__14_carry__0_i_1_n_0}),
        .O({NLW_temp_result0__14_carry__0_O_UNCONNECTED[3:2],temp_result0__14_carry__0_n_6,temp_result0__14_carry__0_n_7}),
        .S({1'b0,1'b0,temp_result0__14_carry__0_i_2_n_0,temp_result0__14_carry__0_i_3_n_0}));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    temp_result0__14_carry__0_i_1
       (.I0(\temp_result_reg_n_0_[3] ),
        .I1(\temp_result_reg_n_0_[0] ),
        .I2(\temp_result_reg_n_0_[1] ),
        .I3(\temp_result_reg_n_0_[2] ),
        .I4(\temp_result_reg_n_0_[4] ),
        .O(temp_result0__14_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_result0__14_carry__0_i_2
       (.I0(temp_result0__0_carry_i_3_n_0),
        .I1(temp_result0__0_carry__0_n_6),
        .O(temp_result0__14_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAA955555556)) 
    temp_result0__14_carry__0_i_3
       (.I0(\temp_result_reg_n_0_[4] ),
        .I1(\temp_result_reg_n_0_[2] ),
        .I2(\temp_result_reg_n_0_[1] ),
        .I3(\temp_result_reg_n_0_[0] ),
        .I4(\temp_result_reg_n_0_[3] ),
        .I5(temp_result0__0_carry__0_n_7),
        .O(temp_result0__14_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'hFE01)) 
    temp_result0__14_carry_i_1
       (.I0(\temp_result_reg_n_0_[2] ),
        .I1(\temp_result_reg_n_0_[1] ),
        .I2(\temp_result_reg_n_0_[0] ),
        .I3(\temp_result_reg_n_0_[3] ),
        .O(temp_result0__14_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    temp_result0__14_carry_i_2
       (.I0(\temp_result_reg_n_0_[0] ),
        .I1(\temp_result_reg_n_0_[1] ),
        .I2(\temp_result_reg_n_0_[2] ),
        .O(temp_result0__14_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_result0__14_carry_i_3
       (.I0(\temp_result_reg_n_0_[0] ),
        .I1(\temp_result_reg_n_0_[1] ),
        .O(temp_result0__14_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    temp_result0__14_carry_i_4
       (.I0(\temp_result_reg_n_0_[0] ),
        .O(temp_result0__14_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'hAAA95556)) 
    temp_result0__14_carry_i_5
       (.I0(\temp_result_reg_n_0_[3] ),
        .I1(\temp_result_reg_n_0_[0] ),
        .I2(\temp_result_reg_n_0_[1] ),
        .I3(\temp_result_reg_n_0_[2] ),
        .I4(temp_result0__0_carry_n_4),
        .O(temp_result0__14_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'hA956)) 
    temp_result0__14_carry_i_6
       (.I0(\temp_result_reg_n_0_[2] ),
        .I1(\temp_result_reg_n_0_[1] ),
        .I2(\temp_result_reg_n_0_[0] ),
        .I3(temp_result0__0_carry_n_5),
        .O(temp_result0__14_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    temp_result0__14_carry_i_7
       (.I0(\temp_result_reg_n_0_[1] ),
        .I1(\temp_result_reg_n_0_[0] ),
        .I2(temp_result0__0_carry_n_6),
        .O(temp_result0__14_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_result0__14_carry_i_8
       (.I0(\temp_result_reg_n_0_[0] ),
        .I1(temp_result0__0_carry_n_7),
        .O(temp_result0__14_carry_i_8_n_0));
  CARRY4 \temp_result0_inferred__0/i___0_carry 
       (.CI(1'b0),
        .CO({\temp_result0_inferred__0/i___0_carry_n_0 ,\temp_result0_inferred__0/i___0_carry_n_1 ,\temp_result0_inferred__0/i___0_carry_n_2 ,\temp_result0_inferred__0/i___0_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___0_carry_i_1__0_n_0,i___0_carry_i_2_n_0,i___0_carry_i_3__1_n_0,1'b0}),
        .O({\temp_result0_inferred__0/i___0_carry_n_4 ,\temp_result0_inferred__0/i___0_carry_n_5 ,\temp_result0_inferred__0/i___0_carry_n_6 ,\temp_result0_inferred__0/i___0_carry_n_7 }),
        .S({i___0_carry_i_4__0_n_0,i___0_carry_i_5__0_n_0,i___0_carry_i_6__0_n_0,i___0_carry_i_7__0_n_0}));
  CARRY4 \temp_result0_inferred__0/i___0_carry__0 
       (.CI(\temp_result0_inferred__0/i___0_carry_n_0 ),
        .CO({\NLW_temp_result0_inferred__0/i___0_carry__0_CO_UNCONNECTED [3:1],\temp_result0_inferred__0/i___0_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i___0_carry__0_i_1__0_n_0}),
        .O({\NLW_temp_result0_inferred__0/i___0_carry__0_O_UNCONNECTED [3:2],\temp_result0_inferred__0/i___0_carry__0_n_6 ,\temp_result0_inferred__0/i___0_carry__0_n_7 }),
        .S({1'b0,1'b0,i___0_carry__0_i_2_n_0,i___0_carry__0_i_3__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \temp_result0_inferred__0/i___14_carry 
       (.CI(1'b0),
        .CO({\temp_result0_inferred__0/i___14_carry_n_0 ,\temp_result0_inferred__0/i___14_carry_n_1 ,\temp_result0_inferred__0/i___14_carry_n_2 ,\temp_result0_inferred__0/i___14_carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i___14_carry_i_1_n_0,i___14_carry_i_2_n_0,i___14_carry_i_3_n_0,i___14_carry_i_4_n_0}),
        .O({\temp_result0_inferred__0/i___14_carry_n_4 ,\temp_result0_inferred__0/i___14_carry_n_5 ,\temp_result0_inferred__0/i___14_carry_n_6 ,\temp_result0_inferred__0/i___14_carry_n_7 }),
        .S({i___14_carry_i_5_n_0,i___14_carry_i_6_n_0,i___14_carry_i_7_n_0,i___14_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \temp_result0_inferred__0/i___14_carry__0 
       (.CI(\temp_result0_inferred__0/i___14_carry_n_0 ),
        .CO({\NLW_temp_result0_inferred__0/i___14_carry__0_CO_UNCONNECTED [3:1],\temp_result0_inferred__0/i___14_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i___14_carry__0_i_1_n_0}),
        .O({\NLW_temp_result0_inferred__0/i___14_carry__0_O_UNCONNECTED [3:2],\temp_result0_inferred__0/i___14_carry__0_n_6 ,\temp_result0_inferred__0/i___14_carry__0_n_7 }),
        .S({1'b0,1'b0,i___14_carry__0_i_2_n_0,i___14_carry__0_i_3_n_0}));
  CARRY4 \temp_result0_inferred__1/i___0_carry 
       (.CI(1'b0),
        .CO({\temp_result0_inferred__1/i___0_carry_n_0 ,\temp_result0_inferred__1/i___0_carry_n_1 ,\temp_result0_inferred__1/i___0_carry_n_2 ,\temp_result0_inferred__1/i___0_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___0_carry_i_1__1_n_0,i___0_carry_i_2__0_n_0,i___0_carry_i_3__2_n_0,1'b0}),
        .O({\temp_result0_inferred__1/i___0_carry_n_4 ,\temp_result0_inferred__1/i___0_carry_n_5 ,\temp_result0_inferred__1/i___0_carry_n_6 ,\temp_result0_inferred__1/i___0_carry_n_7 }),
        .S({i___0_carry_i_4__1_n_0,i___0_carry_i_5__1_n_0,i___0_carry_i_6__1_n_0,i___0_carry_i_7__1_n_0}));
  CARRY4 \temp_result0_inferred__1/i___0_carry__0 
       (.CI(\temp_result0_inferred__1/i___0_carry_n_0 ),
        .CO({\NLW_temp_result0_inferred__1/i___0_carry__0_CO_UNCONNECTED [3:1],\temp_result0_inferred__1/i___0_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i___0_carry__0_i_1__1_n_0}),
        .O({\NLW_temp_result0_inferred__1/i___0_carry__0_O_UNCONNECTED [3:2],\temp_result0_inferred__1/i___0_carry__0_n_6 ,\temp_result0_inferred__1/i___0_carry__0_n_7 }),
        .S({1'b0,1'b0,i___0_carry__0_i_2__0_n_0,i___0_carry__0_i_3__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \temp_result0_inferred__1/i___14_carry 
       (.CI(1'b0),
        .CO({\temp_result0_inferred__1/i___14_carry_n_0 ,\temp_result0_inferred__1/i___14_carry_n_1 ,\temp_result0_inferred__1/i___14_carry_n_2 ,\temp_result0_inferred__1/i___14_carry_n_3 }),
        .CYINIT(1'b1),
        .DI({plusOp[3:2],i___14_carry_i_3__0_n_0,plusOp[0]}),
        .O({\temp_result0_inferred__1/i___14_carry_n_4 ,\temp_result0_inferred__1/i___14_carry_n_5 ,\temp_result0_inferred__1/i___14_carry_n_6 ,\temp_result0_inferred__1/i___14_carry_n_7 }),
        .S({i___14_carry_i_5__0_n_0,i___14_carry_i_6__0_n_0,i___14_carry_i_7__0_n_0,i___14_carry_i_8__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \temp_result0_inferred__1/i___14_carry__0 
       (.CI(\temp_result0_inferred__1/i___14_carry_n_0 ),
        .CO({\NLW_temp_result0_inferred__1/i___14_carry__0_CO_UNCONNECTED [3:1],\temp_result0_inferred__1/i___14_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,plusOp[4]}),
        .O({\NLW_temp_result0_inferred__1/i___14_carry__0_O_UNCONNECTED [3:2],\temp_result0_inferred__1/i___14_carry__0_n_6 ,\temp_result0_inferred__1/i___14_carry__0_n_7 }),
        .S({1'b0,1'b0,i___14_carry__0_i_2__0_n_0,i___14_carry__0_i_3__0_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h9F90)) 
    \temp_result[0]_i_1 
       (.I0(temp_result0__14_carry_n_7),
        .I1(\temp_result[2]_i_2_n_0 ),
        .I2(\FSM_onehot_flag_reg_n_0_[1] ),
        .I3(\temp_output_reg_n_0_[0][0] ),
        .O(\temp_result[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9AAAFFFF9AAA0000)) 
    \temp_result[10]_i_1 
       (.I0(\temp_result0_inferred__0/i___14_carry_n_5 ),
        .I1(\temp_result[10]_i_2_n_0 ),
        .I2(\temp_result0_inferred__0/i___14_carry_n_6 ),
        .I3(\temp_result0_inferred__0/i___14_carry_n_7 ),
        .I4(\FSM_onehot_flag_reg_n_0_[1] ),
        .I5(\temp_output_reg_n_0_[0][10] ),
        .O(\temp_result[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    \temp_result[10]_i_2 
       (.I0(\temp_result0_inferred__0/i___14_carry__0_n_7 ),
        .I1(\temp_result0_inferred__0/i___14_carry_n_7 ),
        .I2(\temp_result0_inferred__0/i___14_carry_n_6 ),
        .I3(\temp_result0_inferred__0/i___14_carry_n_4 ),
        .I4(\temp_result0_inferred__0/i___14_carry_n_5 ),
        .I5(\temp_result0_inferred__0/i___14_carry__0_n_6 ),
        .O(\temp_result[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h6AFF6A00)) 
    \temp_result[11]_i_1 
       (.I0(\temp_result0_inferred__0/i___14_carry_n_4 ),
        .I1(\temp_result[11]_i_2_n_0 ),
        .I2(\temp_result0_inferred__0/i___14_carry_n_5 ),
        .I3(\FSM_onehot_flag_reg_n_0_[1] ),
        .I4(\temp_output_reg_n_0_[0][11] ),
        .O(\temp_result[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEA000000AA000000)) 
    \temp_result[11]_i_2 
       (.I0(\temp_result0_inferred__0/i___14_carry__0_n_6 ),
        .I1(\temp_result0_inferred__0/i___14_carry_n_5 ),
        .I2(\temp_result0_inferred__0/i___14_carry_n_4 ),
        .I3(\temp_result0_inferred__0/i___14_carry_n_6 ),
        .I4(\temp_result0_inferred__0/i___14_carry_n_7 ),
        .I5(\temp_result0_inferred__0/i___14_carry__0_n_7 ),
        .O(\temp_result[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h98FF9800)) 
    \temp_result[12]_i_1 
       (.I0(\temp_result0_inferred__0/i___14_carry__0_n_7 ),
        .I1(\temp_result[12]_i_2_n_0 ),
        .I2(\temp_result0_inferred__0/i___14_carry__0_n_6 ),
        .I3(\FSM_onehot_flag_reg_n_0_[1] ),
        .I4(\temp_output_reg_n_0_[0][12] ),
        .O(\temp_result[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \temp_result[12]_i_2 
       (.I0(\temp_result0_inferred__0/i___14_carry_n_7 ),
        .I1(\temp_result0_inferred__0/i___14_carry_n_6 ),
        .I2(\temp_result0_inferred__0/i___14_carry_n_4 ),
        .I3(\temp_result0_inferred__0/i___14_carry_n_5 ),
        .O(\temp_result[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h9F90)) 
    \temp_result[16]_i_1 
       (.I0(\temp_result0_inferred__1/i___14_carry_n_7 ),
        .I1(\temp_result[26]_i_2_n_0 ),
        .I2(\FSM_onehot_flag_reg_n_0_[1] ),
        .I3(\temp_output_reg_n_0_[0][16] ),
        .O(\temp_result[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h9CFF9C00)) 
    \temp_result[17]_i_1 
       (.I0(\temp_result[26]_i_2_n_0 ),
        .I1(\temp_result0_inferred__1/i___14_carry_n_6 ),
        .I2(\temp_result0_inferred__1/i___14_carry_n_7 ),
        .I3(\FSM_onehot_flag_reg_n_0_[1] ),
        .I4(\temp_output_reg_n_0_[0][17] ),
        .O(\temp_result[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9CCCFFFF9CCC0000)) 
    \temp_result[18]_i_1 
       (.I0(\temp_result[26]_i_2_n_0 ),
        .I1(\temp_result0_inferred__1/i___14_carry_n_5 ),
        .I2(\temp_result0_inferred__1/i___14_carry_n_7 ),
        .I3(\temp_result0_inferred__1/i___14_carry_n_6 ),
        .I4(\FSM_onehot_flag_reg_n_0_[1] ),
        .I5(\temp_output_reg_n_0_[0][18] ),
        .O(\temp_result[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_result[19]_i_1 
       (.I0(\temp_result[27]_i_2_n_0 ),
        .I1(\FSM_onehot_flag_reg_n_0_[1] ),
        .I2(\temp_output_reg_n_0_[0][19] ),
        .O(\temp_result[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h9AFF9A00)) 
    \temp_result[1]_i_1 
       (.I0(temp_result0__14_carry_n_6),
        .I1(\temp_result[2]_i_2_n_0 ),
        .I2(temp_result0__14_carry_n_7),
        .I3(\FSM_onehot_flag_reg_n_0_[1] ),
        .I4(\temp_output_reg_n_0_[0][1] ),
        .O(\temp_result[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h98FF9800)) 
    \temp_result[20]_i_1 
       (.I0(\temp_result[28]_i_3_n_0 ),
        .I1(\temp_result0_inferred__1/i___14_carry__0_n_7 ),
        .I2(\temp_result0_inferred__1/i___14_carry__0_n_6 ),
        .I3(\FSM_onehot_flag_reg_n_0_[1] ),
        .I4(\temp_output_reg_n_0_[0][20] ),
        .O(\temp_result[20]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \temp_result[21]_i_1 
       (.I0(\temp_output_reg_n_0_[0][21] ),
        .I1(\FSM_onehot_flag_reg_n_0_[1] ),
        .O(\temp_result[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp_result[22]_i_1 
       (.I0(\temp_output_reg_n_0_[0][22] ),
        .I1(\FSM_onehot_flag_reg_n_0_[1] ),
        .O(\temp_result[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp_result[23]_i_1 
       (.I0(\temp_output_reg_n_0_[0][23] ),
        .I1(\FSM_onehot_flag_reg_n_0_[1] ),
        .O(\temp_result[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h9F90)) 
    \temp_result[24]_i_1 
       (.I0(\temp_result0_inferred__1/i___14_carry_n_7 ),
        .I1(\temp_result[26]_i_2_n_0 ),
        .I2(\FSM_onehot_flag_reg_n_0_[1] ),
        .I3(\temp_output_reg_n_0_[0][24] ),
        .O(\temp_result[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h9CFF9C00)) 
    \temp_result[25]_i_1 
       (.I0(\temp_result[26]_i_2_n_0 ),
        .I1(\temp_result0_inferred__1/i___14_carry_n_6 ),
        .I2(\temp_result0_inferred__1/i___14_carry_n_7 ),
        .I3(\FSM_onehot_flag_reg_n_0_[1] ),
        .I4(\temp_output_reg_n_0_[0][25] ),
        .O(\temp_result[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9CCCFFFF9CCC0000)) 
    \temp_result[26]_i_1 
       (.I0(\temp_result[26]_i_2_n_0 ),
        .I1(\temp_result0_inferred__1/i___14_carry_n_5 ),
        .I2(\temp_result0_inferred__1/i___14_carry_n_7 ),
        .I3(\temp_result0_inferred__1/i___14_carry_n_6 ),
        .I4(\FSM_onehot_flag_reg_n_0_[1] ),
        .I5(\temp_output_reg_n_0_[0][26] ),
        .O(\temp_result[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1555555555555555)) 
    \temp_result[26]_i_2 
       (.I0(\temp_result0_inferred__1/i___14_carry__0_n_6 ),
        .I1(\temp_result0_inferred__1/i___14_carry_n_7 ),
        .I2(\temp_result0_inferred__1/i___14_carry_n_6 ),
        .I3(\temp_result0_inferred__1/i___14_carry_n_4 ),
        .I4(\temp_result0_inferred__1/i___14_carry_n_5 ),
        .I5(\temp_result0_inferred__1/i___14_carry__0_n_7 ),
        .O(\temp_result[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_result[27]_i_1 
       (.I0(\temp_result[27]_i_2_n_0 ),
        .I1(\FSM_onehot_flag_reg_n_0_[1] ),
        .I2(\temp_output_reg_n_0_[0][27] ),
        .O(\temp_result[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3CF0F0F070F0F0F0)) 
    \temp_result[27]_i_2 
       (.I0(\temp_result0_inferred__1/i___14_carry__0_n_7 ),
        .I1(\temp_result0_inferred__1/i___14_carry_n_5 ),
        .I2(\temp_result0_inferred__1/i___14_carry_n_4 ),
        .I3(\temp_result0_inferred__1/i___14_carry_n_6 ),
        .I4(\temp_result0_inferred__1/i___14_carry_n_7 ),
        .I5(\temp_result0_inferred__1/i___14_carry__0_n_6 ),
        .O(\temp_result[27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \temp_result[28]_i_1 
       (.I0(write_out),
        .I1(\FSM_onehot_flag_reg_n_0_[1] ),
        .O(temp_result));
  LUT5 #(
    .INIT(32'hC3AAC0AA)) 
    \temp_result[28]_i_2 
       (.I0(\temp_output_reg_n_0_[0][28] ),
        .I1(\temp_result[28]_i_3_n_0 ),
        .I2(\temp_result0_inferred__1/i___14_carry__0_n_7 ),
        .I3(\FSM_onehot_flag_reg_n_0_[1] ),
        .I4(\temp_result0_inferred__1/i___14_carry__0_n_6 ),
        .O(\temp_result[28]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \temp_result[28]_i_3 
       (.I0(\temp_result0_inferred__1/i___14_carry_n_7 ),
        .I1(\temp_result0_inferred__1/i___14_carry_n_6 ),
        .I2(\temp_result0_inferred__1/i___14_carry_n_4 ),
        .I3(\temp_result0_inferred__1/i___14_carry_n_5 ),
        .O(\temp_result[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9AAAFFFF9AAA0000)) 
    \temp_result[2]_i_1 
       (.I0(temp_result0__14_carry_n_5),
        .I1(\temp_result[2]_i_2_n_0 ),
        .I2(temp_result0__14_carry_n_6),
        .I3(temp_result0__14_carry_n_7),
        .I4(\FSM_onehot_flag_reg_n_0_[1] ),
        .I5(\temp_output_reg_n_0_[0][2] ),
        .O(\temp_result[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1555555555555555)) 
    \temp_result[2]_i_2 
       (.I0(temp_result0__14_carry__0_n_6),
        .I1(temp_result0__14_carry_n_7),
        .I2(temp_result0__14_carry_n_6),
        .I3(temp_result0__14_carry_n_4),
        .I4(temp_result0__14_carry_n_5),
        .I5(temp_result0__14_carry__0_n_7),
        .O(\temp_result[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \temp_result[31]_i_1 
       (.I0(\FSM_onehot_flag_reg_n_0_[1] ),
        .I1(rst),
        .O(\temp_result[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6AFF6A00)) 
    \temp_result[3]_i_1 
       (.I0(temp_result0__14_carry_n_4),
        .I1(\temp_result[3]_i_2_n_0 ),
        .I2(temp_result0__14_carry_n_5),
        .I3(\FSM_onehot_flag_reg_n_0_[1] ),
        .I4(\temp_output_reg_n_0_[0][3] ),
        .O(\temp_result[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00000080000000)) 
    \temp_result[3]_i_2 
       (.I0(temp_result0__14_carry__0_n_7),
        .I1(temp_result0__14_carry_n_5),
        .I2(temp_result0__14_carry_n_4),
        .I3(temp_result0__14_carry_n_6),
        .I4(temp_result0__14_carry_n_7),
        .I5(temp_result0__14_carry__0_n_6),
        .O(\temp_result[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h98FF9800)) 
    \temp_result[4]_i_1 
       (.I0(\temp_result[4]_i_2_n_0 ),
        .I1(temp_result0__14_carry__0_n_7),
        .I2(temp_result0__14_carry__0_n_6),
        .I3(\FSM_onehot_flag_reg_n_0_[1] ),
        .I4(\temp_output_reg_n_0_[0][4] ),
        .O(\temp_result[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \temp_result[4]_i_2 
       (.I0(temp_result0__14_carry_n_7),
        .I1(temp_result0__14_carry_n_6),
        .I2(temp_result0__14_carry_n_4),
        .I3(temp_result0__14_carry_n_5),
        .O(\temp_result[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h9F90)) 
    \temp_result[8]_i_1 
       (.I0(\temp_result0_inferred__0/i___14_carry_n_7 ),
        .I1(\temp_result[10]_i_2_n_0 ),
        .I2(\FSM_onehot_flag_reg_n_0_[1] ),
        .I3(\temp_output_reg_n_0_[0][8] ),
        .O(\temp_result[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h9AFF9A00)) 
    \temp_result[9]_i_1 
       (.I0(\temp_result0_inferred__0/i___14_carry_n_6 ),
        .I1(\temp_result[10]_i_2_n_0 ),
        .I2(\temp_result0_inferred__0/i___14_carry_n_7 ),
        .I3(\FSM_onehot_flag_reg_n_0_[1] ),
        .I4(\temp_output_reg_n_0_[0][9] ),
        .O(\temp_result[9]_i_1_n_0 ));
  FDRE \temp_result_reg[0] 
       (.C(clk),
        .CE(temp_result),
        .D(\temp_result[0]_i_1_n_0 ),
        .Q(\temp_result_reg_n_0_[0] ),
        .R(rst));
  FDRE \temp_result_reg[10] 
       (.C(clk),
        .CE(temp_result),
        .D(\temp_result[10]_i_1_n_0 ),
        .Q(L[10]),
        .R(rst));
  FDRE \temp_result_reg[11] 
       (.C(clk),
        .CE(temp_result),
        .D(\temp_result[11]_i_1_n_0 ),
        .Q(L[11]),
        .R(rst));
  FDRE \temp_result_reg[12] 
       (.C(clk),
        .CE(temp_result),
        .D(\temp_result[12]_i_1_n_0 ),
        .Q(L[12]),
        .R(rst));
  FDRE \temp_result_reg[13] 
       (.C(clk),
        .CE(write_out),
        .D(\temp_output_reg_n_0_[0][13] ),
        .Q(L[13]),
        .R(\temp_result[31]_i_1_n_0 ));
  FDRE \temp_result_reg[14] 
       (.C(clk),
        .CE(write_out),
        .D(\temp_output_reg_n_0_[0][14] ),
        .Q(L[14]),
        .R(\temp_result[31]_i_1_n_0 ));
  FDRE \temp_result_reg[15] 
       (.C(clk),
        .CE(write_out),
        .D(\temp_output_reg_n_0_[0][15] ),
        .Q(L[15]),
        .R(\temp_result[31]_i_1_n_0 ));
  FDRE \temp_result_reg[16] 
       (.C(clk),
        .CE(temp_result),
        .D(\temp_result[16]_i_1_n_0 ),
        .Q(\temp_result_reg_n_0_[16] ),
        .R(rst));
  FDRE \temp_result_reg[17] 
       (.C(clk),
        .CE(temp_result),
        .D(\temp_result[17]_i_1_n_0 ),
        .Q(\temp_result_reg_n_0_[17] ),
        .R(rst));
  FDRE \temp_result_reg[18] 
       (.C(clk),
        .CE(temp_result),
        .D(\temp_result[18]_i_1_n_0 ),
        .Q(\temp_result_reg_n_0_[18] ),
        .R(rst));
  FDRE \temp_result_reg[19] 
       (.C(clk),
        .CE(temp_result),
        .D(\temp_result[19]_i_1_n_0 ),
        .Q(\temp_result_reg_n_0_[19] ),
        .R(rst));
  FDRE \temp_result_reg[1] 
       (.C(clk),
        .CE(temp_result),
        .D(\temp_result[1]_i_1_n_0 ),
        .Q(\temp_result_reg_n_0_[1] ),
        .R(rst));
  FDRE \temp_result_reg[20] 
       (.C(clk),
        .CE(temp_result),
        .D(\temp_result[20]_i_1_n_0 ),
        .Q(\temp_result_reg_n_0_[20] ),
        .R(rst));
  FDRE \temp_result_reg[21] 
       (.C(clk),
        .CE(temp_result),
        .D(\temp_result[21]_i_1_n_0 ),
        .Q(\temp_result_reg_n_0_[21] ),
        .R(rst));
  FDRE \temp_result_reg[22] 
       (.C(clk),
        .CE(temp_result),
        .D(\temp_result[22]_i_1_n_0 ),
        .Q(\temp_result_reg_n_0_[22] ),
        .R(rst));
  FDRE \temp_result_reg[23] 
       (.C(clk),
        .CE(temp_result),
        .D(\temp_result[23]_i_1_n_0 ),
        .Q(\temp_result_reg_n_0_[23] ),
        .R(rst));
  FDRE \temp_result_reg[24] 
       (.C(clk),
        .CE(temp_result),
        .D(\temp_result[24]_i_1_n_0 ),
        .Q(\temp_result_reg_n_0_[24] ),
        .R(rst));
  FDRE \temp_result_reg[25] 
       (.C(clk),
        .CE(temp_result),
        .D(\temp_result[25]_i_1_n_0 ),
        .Q(\temp_result_reg_n_0_[25] ),
        .R(rst));
  FDRE \temp_result_reg[26] 
       (.C(clk),
        .CE(temp_result),
        .D(\temp_result[26]_i_1_n_0 ),
        .Q(\temp_result_reg_n_0_[26] ),
        .R(rst));
  FDRE \temp_result_reg[27] 
       (.C(clk),
        .CE(temp_result),
        .D(\temp_result[27]_i_1_n_0 ),
        .Q(\temp_result_reg_n_0_[27] ),
        .R(rst));
  FDRE \temp_result_reg[28] 
       (.C(clk),
        .CE(temp_result),
        .D(\temp_result[28]_i_2_n_0 ),
        .Q(\temp_result_reg_n_0_[28] ),
        .R(rst));
  FDRE \temp_result_reg[29] 
       (.C(clk),
        .CE(write_out),
        .D(\temp_output_reg_n_0_[0][29] ),
        .Q(\temp_result_reg_n_0_[29] ),
        .R(\temp_result[31]_i_1_n_0 ));
  FDRE \temp_result_reg[2] 
       (.C(clk),
        .CE(temp_result),
        .D(\temp_result[2]_i_1_n_0 ),
        .Q(\temp_result_reg_n_0_[2] ),
        .R(rst));
  FDRE \temp_result_reg[30] 
       (.C(clk),
        .CE(write_out),
        .D(\temp_output_reg_n_0_[0][30] ),
        .Q(\temp_result_reg_n_0_[30] ),
        .R(\temp_result[31]_i_1_n_0 ));
  FDRE \temp_result_reg[31] 
       (.C(clk),
        .CE(write_out),
        .D(\temp_output_reg_n_0_[0][31] ),
        .Q(\temp_result_reg_n_0_[31] ),
        .R(\temp_result[31]_i_1_n_0 ));
  FDRE \temp_result_reg[3] 
       (.C(clk),
        .CE(temp_result),
        .D(\temp_result[3]_i_1_n_0 ),
        .Q(\temp_result_reg_n_0_[3] ),
        .R(rst));
  FDRE \temp_result_reg[4] 
       (.C(clk),
        .CE(temp_result),
        .D(\temp_result[4]_i_1_n_0 ),
        .Q(\temp_result_reg_n_0_[4] ),
        .R(rst));
  FDRE \temp_result_reg[5] 
       (.C(clk),
        .CE(write_out),
        .D(\temp_output_reg_n_0_[0][5] ),
        .Q(\temp_result_reg_n_0_[5] ),
        .R(\temp_result[31]_i_1_n_0 ));
  FDRE \temp_result_reg[6] 
       (.C(clk),
        .CE(write_out),
        .D(\temp_output_reg_n_0_[0][6] ),
        .Q(\temp_result_reg_n_0_[6] ),
        .R(\temp_result[31]_i_1_n_0 ));
  FDRE \temp_result_reg[7] 
       (.C(clk),
        .CE(write_out),
        .D(\temp_output_reg_n_0_[0][7] ),
        .Q(\temp_result_reg_n_0_[7] ),
        .R(\temp_result[31]_i_1_n_0 ));
  FDRE \temp_result_reg[8] 
       (.C(clk),
        .CE(temp_result),
        .D(\temp_result[8]_i_1_n_0 ),
        .Q(L[8]),
        .R(rst));
  FDRE \temp_result_reg[9] 
       (.C(clk),
        .CE(temp_result),
        .D(\temp_result[9]_i_1_n_0 ),
        .Q(L[9]),
        .R(rst));
  LUT2 #(
    .INIT(4'hE)) 
    write_out_i_1
       (.I0(start_add),
        .I1(first_add),
        .O(write_out_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    write_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(write_out_i_1_n_0),
        .Q(write_out),
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
