// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Nov 12 18:18:16 2023
// Host        : zenith running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/osm/Documents/Sect/SECT-MAYO/MAYO/vivado/hw-mayo/hw-mayo.gen/sources_1/bd/Mayo_sign/ip/Mayo_sign_mayo_add_vectors_0_0/Mayo_sign_mayo_add_vectors_0_0_sim_netlist.v
// Design      : Mayo_sign_mayo_add_vectors_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Mayo_sign_mayo_add_vectors_0_0,mayo_add_vectors,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "mayo_add_vectors,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Mayo_sign_mayo_add_vectors_0_0
   (i_clk,
    rst,
    i_enable,
    i_v1_addr,
    i_v2_addr,
    i_out_addr,
    i_bram_sel,
    o_done,
    i_mema_dout,
    o_mema_din,
    o_mema_addr,
    o_mema_en,
    o_mema_rst,
    o_mema_we,
    i_memb_dout,
    o_memb_din,
    o_memb_addr,
    o_memb_en,
    o_memb_rst,
    o_memb_we,
    i_memc_dout,
    o_memc_din,
    o_memc_addr,
    o_memc_en,
    o_memc_rst,
    o_memc_we,
    o_controla,
    o_controlb,
    o_controlc);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN Mayo_sign_clk, INSERT_VIP 0" *) input i_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input i_enable;
  (* x_interface_ignore = "TRUE" *) input [31:0]i_v1_addr;
  (* x_interface_ignore = "TRUE" *) input [31:0]i_v2_addr;
  (* x_interface_ignore = "TRUE" *) input [31:0]i_out_addr;
  input [1:0]i_bram_sel;
  output o_done;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_VecA DOUT" *) input [31:0]i_mema_dout;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_VecA DIN" *) output [31:0]o_mema_din;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_VecA ADDR" *) output [31:0]o_mema_addr;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_VecA EN" *) output o_mema_en;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_VecA RST" *) output o_mema_rst;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_VecA WE" *) output [3:0]o_mema_we;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_VecB DOUT" *) input [31:0]i_memb_dout;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_VecB DIN" *) output [31:0]o_memb_din;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_VecB ADDR" *) output [31:0]o_memb_addr;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_VecB EN" *) output o_memb_en;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_VecB RST" *) output o_memb_rst;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_VecB WE" *) output [3:0]o_memb_we;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_VecC DOUT" *) input [31:0]i_memc_dout;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_VecC DIN" *) output [31:0]o_memc_din;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_VecC ADDR" *) output [31:0]o_memc_addr;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_VecC EN" *) output o_memc_en;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_VecC RST" *) output o_memc_rst;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_VecC WE" *) output [3:0]o_memc_we;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_VecA CTRL" *) output o_controla;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_VecB CTRL" *) output o_controlb;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_VecC CTRL" *) output o_controlc;

  wire \<const0> ;
  wire [1:0]i_bram_sel;
  wire i_clk;
  wire i_enable;
  wire [31:0]i_mema_dout;
  wire [31:0]i_memb_dout;
  wire [31:0]i_memc_dout;
  wire [31:0]i_out_addr;
  wire [31:0]i_v1_addr;
  wire [31:0]i_v2_addr;
  wire o_controla;
  wire o_controlb;
  wire o_controlc;
  wire o_done;
  wire [31:0]o_mema_addr;
  wire [28:0]\^o_mema_din ;
  wire o_mema_en;
  wire [2:2]\^o_mema_we ;
  wire [31:0]o_memb_addr;
  wire o_memb_en;
  wire [31:0]o_memc_addr;
  wire [28:0]\^o_memc_din ;
  wire o_memc_en;
  wire [2:2]\^o_memc_we ;
  wire rst;

  assign o_mema_din[31] = \<const0> ;
  assign o_mema_din[30] = \<const0> ;
  assign o_mema_din[29] = \<const0> ;
  assign o_mema_din[28:24] = \^o_mema_din [28:24];
  assign o_mema_din[23] = \<const0> ;
  assign o_mema_din[22] = \<const0> ;
  assign o_mema_din[21] = \<const0> ;
  assign o_mema_din[20:16] = \^o_mema_din [20:16];
  assign o_mema_din[15] = \<const0> ;
  assign o_mema_din[14] = \<const0> ;
  assign o_mema_din[13] = \<const0> ;
  assign o_mema_din[12:8] = \^o_mema_din [12:8];
  assign o_mema_din[7] = \<const0> ;
  assign o_mema_din[6] = \<const0> ;
  assign o_mema_din[5] = \<const0> ;
  assign o_mema_din[4:0] = \^o_mema_din [4:0];
  assign o_mema_rst = \<const0> ;
  assign o_mema_we[3] = \^o_mema_we [2];
  assign o_mema_we[2] = \^o_mema_we [2];
  assign o_mema_we[1] = \^o_mema_we [2];
  assign o_mema_we[0] = \^o_mema_we [2];
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
  assign o_memc_din[31] = \<const0> ;
  assign o_memc_din[30] = \<const0> ;
  assign o_memc_din[29] = \<const0> ;
  assign o_memc_din[28:24] = \^o_memc_din [28:24];
  assign o_memc_din[23] = \<const0> ;
  assign o_memc_din[22] = \<const0> ;
  assign o_memc_din[21] = \<const0> ;
  assign o_memc_din[20:16] = \^o_memc_din [20:16];
  assign o_memc_din[15] = \<const0> ;
  assign o_memc_din[14] = \<const0> ;
  assign o_memc_din[13] = \<const0> ;
  assign o_memc_din[12:8] = \^o_memc_din [12:8];
  assign o_memc_din[7] = \<const0> ;
  assign o_memc_din[6] = \<const0> ;
  assign o_memc_din[5] = \<const0> ;
  assign o_memc_din[4:0] = \^o_memc_din [4:0];
  assign o_memc_rst = \<const0> ;
  assign o_memc_we[3] = \^o_memc_we [2];
  assign o_memc_we[2] = \^o_memc_we [2];
  assign o_memc_we[1] = \^o_memc_we [2];
  assign o_memc_we[0] = \^o_memc_we [2];
  GND GND
       (.G(\<const0> ));
  Mayo_sign_mayo_add_vectors_0_0_mayo_add_vectors U0
       (.i_bram_sel(i_bram_sel),
        .i_clk(i_clk),
        .i_enable(i_enable),
        .i_mema_dout(i_mema_dout),
        .i_memb_dout(i_memb_dout),
        .i_memc_dout(i_memc_dout),
        .i_out_addr(i_out_addr),
        .i_v1_addr(i_v1_addr),
        .i_v2_addr(i_v2_addr),
        .o_controla(o_controla),
        .o_controlb(o_controlb),
        .o_controlc(o_controlc),
        .o_done(o_done),
        .o_mema_addr(o_mema_addr),
        .o_mema_din({\^o_mema_din [28:24],\^o_mema_din [20:16],\^o_mema_din [12:8],\^o_mema_din [4:0]}),
        .o_mema_en(o_mema_en),
        .o_mema_we(\^o_mema_we ),
        .o_memb_addr(o_memb_addr),
        .o_memb_en(o_memb_en),
        .o_memc_addr(o_memc_addr),
        .o_memc_din({\^o_memc_din [28:24],\^o_memc_din [20:16],\^o_memc_din [12:8],\^o_memc_din [4:0]}),
        .o_memc_en(o_memc_en),
        .o_memc_we(\^o_memc_we ),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "mayo_add_vectors" *) 
module Mayo_sign_mayo_add_vectors_0_0_mayo_add_vectors
   (o_memb_en,
    o_mema_din,
    o_mema_addr,
    o_memb_addr,
    o_memc_din,
    o_memc_addr,
    o_done,
    o_mema_en,
    o_mema_we,
    o_memc_en,
    o_memc_we,
    o_controlb,
    o_controlc,
    o_controla,
    rst,
    i_enable,
    i_bram_sel,
    i_clk,
    i_v2_addr,
    i_v1_addr,
    i_out_addr,
    i_memb_dout,
    i_mema_dout,
    i_memc_dout);
  output o_memb_en;
  output [19:0]o_mema_din;
  output [31:0]o_mema_addr;
  output [31:0]o_memb_addr;
  output [19:0]o_memc_din;
  output [31:0]o_memc_addr;
  output o_done;
  output o_mema_en;
  output [0:0]o_mema_we;
  output o_memc_en;
  output [0:0]o_memc_we;
  output o_controlb;
  output o_controlc;
  output o_controla;
  input rst;
  input i_enable;
  input [1:0]i_bram_sel;
  input i_clk;
  input [31:0]i_v2_addr;
  input [31:0]i_v1_addr;
  input [31:0]i_out_addr;
  input [31:0]i_memb_dout;
  input [31:0]i_mema_dout;
  input [31:0]i_memc_dout;

  wire \FSM_sequential_s_state[0]_i_2_n_0 ;
  wire \FSM_sequential_s_state[0]_i_3_n_0 ;
  wire \FSM_sequential_s_state[1]_i_2_n_0 ;
  wire \FSM_sequential_s_state[1]_i_3_n_0 ;
  wire \FSM_sequential_s_state[1]_i_4_n_0 ;
  wire \FSM_sequential_s_state[1]_i_5_n_0 ;
  wire \FSM_sequential_s_state[1]_i_6_n_0 ;
  wire \FSM_sequential_s_state[1]_i_7_n_0 ;
  wire \FSM_sequential_s_state[2]_i_2_n_0 ;
  wire \FSM_sequential_s_state[3]_i_2_n_0 ;
  wire \FSM_sequential_s_state[3]_i_3_n_0 ;
  wire \FSM_sequential_s_state[3]_i_4_n_0 ;
  wire \FSM_sequential_s_state[3]_i_5_n_0 ;
  wire \FSM_sequential_s_state[3]_i_6_n_0 ;
  wire \FSM_sequential_s_state[3]_i_7_n_0 ;
  wire \FSM_sequential_s_state[3]_i_8_n_0 ;
  wire \FSM_sequential_s_state[3]_i_9_n_0 ;
  wire \FSM_sequential_s_state[4]_i_10_n_0 ;
  wire \FSM_sequential_s_state[4]_i_11_n_0 ;
  wire \FSM_sequential_s_state[4]_i_12_n_0 ;
  wire \FSM_sequential_s_state[4]_i_1_n_0 ;
  wire \FSM_sequential_s_state[4]_i_3_n_0 ;
  wire \FSM_sequential_s_state[4]_i_4_n_0 ;
  wire \FSM_sequential_s_state[4]_i_5_n_0 ;
  wire \FSM_sequential_s_state[4]_i_6_n_0 ;
  wire \FSM_sequential_s_state[4]_i_7_n_0 ;
  wire \FSM_sequential_s_state[4]_i_8_n_0 ;
  wire \FSM_sequential_s_state[4]_i_9_n_0 ;
  wire \FSM_sequential_s_state_1[0]_i_1_n_0 ;
  wire \FSM_sequential_s_state_1[1]_i_1_n_0 ;
  wire \bram0a[o][o_addr]0_inferred__1/i__carry__0_n_0 ;
  wire \bram0a[o][o_addr]0_inferred__1/i__carry__0_n_1 ;
  wire \bram0a[o][o_addr]0_inferred__1/i__carry__0_n_2 ;
  wire \bram0a[o][o_addr]0_inferred__1/i__carry__0_n_3 ;
  wire \bram0a[o][o_addr]0_inferred__1/i__carry__1_n_0 ;
  wire \bram0a[o][o_addr]0_inferred__1/i__carry__1_n_1 ;
  wire \bram0a[o][o_addr]0_inferred__1/i__carry__1_n_2 ;
  wire \bram0a[o][o_addr]0_inferred__1/i__carry__1_n_3 ;
  wire \bram0a[o][o_addr]0_inferred__1/i__carry__2_n_0 ;
  wire \bram0a[o][o_addr]0_inferred__1/i__carry__2_n_1 ;
  wire \bram0a[o][o_addr]0_inferred__1/i__carry__2_n_2 ;
  wire \bram0a[o][o_addr]0_inferred__1/i__carry__2_n_3 ;
  wire \bram0a[o][o_addr]0_inferred__1/i__carry__3_n_0 ;
  wire \bram0a[o][o_addr]0_inferred__1/i__carry__3_n_1 ;
  wire \bram0a[o][o_addr]0_inferred__1/i__carry__3_n_2 ;
  wire \bram0a[o][o_addr]0_inferred__1/i__carry__3_n_3 ;
  wire \bram0a[o][o_addr]0_inferred__1/i__carry__4_n_0 ;
  wire \bram0a[o][o_addr]0_inferred__1/i__carry__4_n_1 ;
  wire \bram0a[o][o_addr]0_inferred__1/i__carry__4_n_2 ;
  wire \bram0a[o][o_addr]0_inferred__1/i__carry__4_n_3 ;
  wire \bram0a[o][o_addr]0_inferred__1/i__carry__5_n_0 ;
  wire \bram0a[o][o_addr]0_inferred__1/i__carry__5_n_1 ;
  wire \bram0a[o][o_addr]0_inferred__1/i__carry__5_n_2 ;
  wire \bram0a[o][o_addr]0_inferred__1/i__carry__5_n_3 ;
  wire \bram0a[o][o_addr]0_inferred__1/i__carry__6_n_2 ;
  wire \bram0a[o][o_addr]0_inferred__1/i__carry__6_n_3 ;
  wire \bram0a[o][o_addr]0_inferred__1/i__carry_n_0 ;
  wire \bram0a[o][o_addr]0_inferred__1/i__carry_n_1 ;
  wire \bram0a[o][o_addr]0_inferred__1/i__carry_n_2 ;
  wire \bram0a[o][o_addr]0_inferred__1/i__carry_n_3 ;
  wire \bram0a[o][o_addr]0_inferred__2/i__carry__0_n_0 ;
  wire \bram0a[o][o_addr]0_inferred__2/i__carry__0_n_1 ;
  wire \bram0a[o][o_addr]0_inferred__2/i__carry__0_n_2 ;
  wire \bram0a[o][o_addr]0_inferred__2/i__carry__0_n_3 ;
  wire \bram0a[o][o_addr]0_inferred__2/i__carry__1_n_0 ;
  wire \bram0a[o][o_addr]0_inferred__2/i__carry__1_n_1 ;
  wire \bram0a[o][o_addr]0_inferred__2/i__carry__1_n_2 ;
  wire \bram0a[o][o_addr]0_inferred__2/i__carry__1_n_3 ;
  wire \bram0a[o][o_addr]0_inferred__2/i__carry__2_n_0 ;
  wire \bram0a[o][o_addr]0_inferred__2/i__carry__2_n_1 ;
  wire \bram0a[o][o_addr]0_inferred__2/i__carry__2_n_2 ;
  wire \bram0a[o][o_addr]0_inferred__2/i__carry__2_n_3 ;
  wire \bram0a[o][o_addr]0_inferred__2/i__carry__3_n_0 ;
  wire \bram0a[o][o_addr]0_inferred__2/i__carry__3_n_1 ;
  wire \bram0a[o][o_addr]0_inferred__2/i__carry__3_n_2 ;
  wire \bram0a[o][o_addr]0_inferred__2/i__carry__3_n_3 ;
  wire \bram0a[o][o_addr]0_inferred__2/i__carry__4_n_0 ;
  wire \bram0a[o][o_addr]0_inferred__2/i__carry__4_n_1 ;
  wire \bram0a[o][o_addr]0_inferred__2/i__carry__4_n_2 ;
  wire \bram0a[o][o_addr]0_inferred__2/i__carry__4_n_3 ;
  wire \bram0a[o][o_addr]0_inferred__2/i__carry__5_n_0 ;
  wire \bram0a[o][o_addr]0_inferred__2/i__carry__5_n_1 ;
  wire \bram0a[o][o_addr]0_inferred__2/i__carry__5_n_2 ;
  wire \bram0a[o][o_addr]0_inferred__2/i__carry__5_n_3 ;
  wire \bram0a[o][o_addr]0_inferred__2/i__carry__6_n_2 ;
  wire \bram0a[o][o_addr]0_inferred__2/i__carry__6_n_3 ;
  wire \bram0a[o][o_addr]0_inferred__2/i__carry_n_0 ;
  wire \bram0a[o][o_addr]0_inferred__2/i__carry_n_1 ;
  wire \bram0a[o][o_addr]0_inferred__2/i__carry_n_2 ;
  wire \bram0a[o][o_addr]0_inferred__2/i__carry_n_3 ;
  wire \bram0a[o][o_addr][0]_i_1_n_0 ;
  wire \bram0a[o][o_addr][10]_i_1_n_0 ;
  wire \bram0a[o][o_addr][10]_i_2_n_0 ;
  wire \bram0a[o][o_addr][11]_i_1_n_0 ;
  wire \bram0a[o][o_addr][11]_i_2_n_0 ;
  wire \bram0a[o][o_addr][12]_i_1_n_0 ;
  wire \bram0a[o][o_addr][12]_i_2_n_0 ;
  wire \bram0a[o][o_addr][13]_i_1_n_0 ;
  wire \bram0a[o][o_addr][13]_i_2_n_0 ;
  wire \bram0a[o][o_addr][14]_i_1_n_0 ;
  wire \bram0a[o][o_addr][14]_i_2_n_0 ;
  wire \bram0a[o][o_addr][15]_i_1_n_0 ;
  wire \bram0a[o][o_addr][15]_i_2_n_0 ;
  wire \bram0a[o][o_addr][16]_i_1_n_0 ;
  wire \bram0a[o][o_addr][16]_i_2_n_0 ;
  wire \bram0a[o][o_addr][17]_i_1_n_0 ;
  wire \bram0a[o][o_addr][17]_i_2_n_0 ;
  wire \bram0a[o][o_addr][18]_i_1_n_0 ;
  wire \bram0a[o][o_addr][18]_i_2_n_0 ;
  wire \bram0a[o][o_addr][19]_i_1_n_0 ;
  wire \bram0a[o][o_addr][19]_i_2_n_0 ;
  wire \bram0a[o][o_addr][1]_i_1_n_0 ;
  wire \bram0a[o][o_addr][1]_i_3_n_0 ;
  wire \bram0a[o][o_addr][20]_i_1_n_0 ;
  wire \bram0a[o][o_addr][20]_i_2_n_0 ;
  wire \bram0a[o][o_addr][21]_i_1_n_0 ;
  wire \bram0a[o][o_addr][21]_i_2_n_0 ;
  wire \bram0a[o][o_addr][22]_i_1_n_0 ;
  wire \bram0a[o][o_addr][22]_i_2_n_0 ;
  wire \bram0a[o][o_addr][23]_i_1_n_0 ;
  wire \bram0a[o][o_addr][23]_i_2_n_0 ;
  wire \bram0a[o][o_addr][24]_i_1_n_0 ;
  wire \bram0a[o][o_addr][24]_i_2_n_0 ;
  wire \bram0a[o][o_addr][25]_i_1_n_0 ;
  wire \bram0a[o][o_addr][25]_i_2_n_0 ;
  wire \bram0a[o][o_addr][26]_i_1_n_0 ;
  wire \bram0a[o][o_addr][26]_i_2_n_0 ;
  wire \bram0a[o][o_addr][27]_i_1_n_0 ;
  wire \bram0a[o][o_addr][27]_i_2_n_0 ;
  wire \bram0a[o][o_addr][28]_i_1_n_0 ;
  wire \bram0a[o][o_addr][28]_i_2_n_0 ;
  wire \bram0a[o][o_addr][29]_i_1_n_0 ;
  wire \bram0a[o][o_addr][29]_i_2_n_0 ;
  wire \bram0a[o][o_addr][2]_i_1_n_0 ;
  wire \bram0a[o][o_addr][2]_i_2_n_0 ;
  wire \bram0a[o][o_addr][30]_i_1_n_0 ;
  wire \bram0a[o][o_addr][30]_i_2_n_0 ;
  wire \bram0a[o][o_addr][31]_i_10_n_0 ;
  wire \bram0a[o][o_addr][31]_i_1_n_0 ;
  wire \bram0a[o][o_addr][31]_i_2_n_0 ;
  wire \bram0a[o][o_addr][31]_i_3_n_0 ;
  wire \bram0a[o][o_addr][31]_i_4_n_0 ;
  wire \bram0a[o][o_addr][31]_i_5_n_0 ;
  wire \bram0a[o][o_addr][31]_i_6_n_0 ;
  wire \bram0a[o][o_addr][31]_i_7_n_0 ;
  wire \bram0a[o][o_addr][31]_i_8_n_0 ;
  wire \bram0a[o][o_addr][31]_i_9_n_0 ;
  wire \bram0a[o][o_addr][3]_i_1_n_0 ;
  wire \bram0a[o][o_addr][3]_i_2_n_0 ;
  wire \bram0a[o][o_addr][4]_i_1_n_0 ;
  wire \bram0a[o][o_addr][4]_i_2_n_0 ;
  wire \bram0a[o][o_addr][5]_i_1_n_0 ;
  wire \bram0a[o][o_addr][5]_i_2_n_0 ;
  wire \bram0a[o][o_addr][6]_i_1_n_0 ;
  wire \bram0a[o][o_addr][6]_i_2_n_0 ;
  wire \bram0a[o][o_addr][7]_i_1_n_0 ;
  wire \bram0a[o][o_addr][7]_i_2_n_0 ;
  wire \bram0a[o][o_addr][8]_i_1_n_0 ;
  wire \bram0a[o][o_addr][8]_i_2_n_0 ;
  wire \bram0a[o][o_addr][9]_i_1_n_0 ;
  wire \bram0a[o][o_addr][9]_i_2_n_0 ;
  wire \bram0a[o][o_din][0]_i_1_n_0 ;
  wire \bram0a[o][o_din][10]_i_1_n_0 ;
  wire \bram0a[o][o_din][11]_i_1_n_0 ;
  wire \bram0a[o][o_din][12]_i_1_n_0 ;
  wire \bram0a[o][o_din][16]_i_1_n_0 ;
  wire \bram0a[o][o_din][17]_i_1_n_0 ;
  wire \bram0a[o][o_din][18]_i_1_n_0 ;
  wire \bram0a[o][o_din][19]_i_1_n_0 ;
  wire \bram0a[o][o_din][1]_i_1_n_0 ;
  wire \bram0a[o][o_din][20]_i_1_n_0 ;
  wire \bram0a[o][o_din][24]_i_1_n_0 ;
  wire \bram0a[o][o_din][25]_i_1_n_0 ;
  wire \bram0a[o][o_din][26]_i_1_n_0 ;
  wire \bram0a[o][o_din][27]_i_1_n_0 ;
  wire \bram0a[o][o_din][28]_i_1_n_0 ;
  wire \bram0a[o][o_din][28]_i_2_n_0 ;
  wire \bram0a[o][o_din][2]_i_1_n_0 ;
  wire \bram0a[o][o_din][3]_i_1_n_0 ;
  wire \bram0a[o][o_din][4]_i_1_n_0 ;
  wire \bram0a[o][o_din][8]_i_1_n_0 ;
  wire \bram0a[o][o_din][9]_i_1_n_0 ;
  wire \bram0a[o][o_en] ;
  wire \bram0a[o][o_en]_i_1_n_0 ;
  wire \bram0a[o][o_we][3]_i_1_n_0 ;
  wire \bram0b[o][o_addr] ;
  wire \bram0b[o][o_addr][12]_i_2_n_0 ;
  wire \bram0b[o][o_addr][12]_i_3_n_0 ;
  wire \bram0b[o][o_addr][12]_i_4_n_0 ;
  wire \bram0b[o][o_addr][12]_i_5_n_0 ;
  wire \bram0b[o][o_addr][16]_i_2_n_0 ;
  wire \bram0b[o][o_addr][16]_i_3_n_0 ;
  wire \bram0b[o][o_addr][16]_i_4_n_0 ;
  wire \bram0b[o][o_addr][16]_i_5_n_0 ;
  wire \bram0b[o][o_addr][1]_i_1_n_0 ;
  wire \bram0b[o][o_addr][20]_i_2_n_0 ;
  wire \bram0b[o][o_addr][20]_i_3_n_0 ;
  wire \bram0b[o][o_addr][20]_i_4_n_0 ;
  wire \bram0b[o][o_addr][20]_i_5_n_0 ;
  wire \bram0b[o][o_addr][24]_i_2_n_0 ;
  wire \bram0b[o][o_addr][24]_i_3_n_0 ;
  wire \bram0b[o][o_addr][24]_i_4_n_0 ;
  wire \bram0b[o][o_addr][24]_i_5_n_0 ;
  wire \bram0b[o][o_addr][28]_i_2_n_0 ;
  wire \bram0b[o][o_addr][28]_i_3_n_0 ;
  wire \bram0b[o][o_addr][28]_i_4_n_0 ;
  wire \bram0b[o][o_addr][28]_i_5_n_0 ;
  wire \bram0b[o][o_addr][31]_i_3_n_0 ;
  wire \bram0b[o][o_addr][31]_i_4_n_0 ;
  wire \bram0b[o][o_addr][4]_i_2_n_0 ;
  wire \bram0b[o][o_addr][4]_i_3_n_0 ;
  wire \bram0b[o][o_addr][4]_i_4_n_0 ;
  wire \bram0b[o][o_addr][4]_i_5_n_0 ;
  wire \bram0b[o][o_addr][8]_i_2_n_0 ;
  wire \bram0b[o][o_addr][8]_i_3_n_0 ;
  wire \bram0b[o][o_addr][8]_i_4_n_0 ;
  wire \bram0b[o][o_addr][8]_i_5_n_0 ;
  wire \bram0b[o][o_en]_i_1_n_0 ;
  wire \bram0b[o][o_en]_i_2_n_0 ;
  wire \bram0b_reg[o][o_addr][12]_i_1_n_0 ;
  wire \bram0b_reg[o][o_addr][12]_i_1_n_1 ;
  wire \bram0b_reg[o][o_addr][12]_i_1_n_2 ;
  wire \bram0b_reg[o][o_addr][12]_i_1_n_3 ;
  wire \bram0b_reg[o][o_addr][12]_i_1_n_4 ;
  wire \bram0b_reg[o][o_addr][12]_i_1_n_5 ;
  wire \bram0b_reg[o][o_addr][12]_i_1_n_6 ;
  wire \bram0b_reg[o][o_addr][12]_i_1_n_7 ;
  wire \bram0b_reg[o][o_addr][16]_i_1_n_0 ;
  wire \bram0b_reg[o][o_addr][16]_i_1_n_1 ;
  wire \bram0b_reg[o][o_addr][16]_i_1_n_2 ;
  wire \bram0b_reg[o][o_addr][16]_i_1_n_3 ;
  wire \bram0b_reg[o][o_addr][16]_i_1_n_4 ;
  wire \bram0b_reg[o][o_addr][16]_i_1_n_5 ;
  wire \bram0b_reg[o][o_addr][16]_i_1_n_6 ;
  wire \bram0b_reg[o][o_addr][16]_i_1_n_7 ;
  wire \bram0b_reg[o][o_addr][20]_i_1_n_0 ;
  wire \bram0b_reg[o][o_addr][20]_i_1_n_1 ;
  wire \bram0b_reg[o][o_addr][20]_i_1_n_2 ;
  wire \bram0b_reg[o][o_addr][20]_i_1_n_3 ;
  wire \bram0b_reg[o][o_addr][20]_i_1_n_4 ;
  wire \bram0b_reg[o][o_addr][20]_i_1_n_5 ;
  wire \bram0b_reg[o][o_addr][20]_i_1_n_6 ;
  wire \bram0b_reg[o][o_addr][20]_i_1_n_7 ;
  wire \bram0b_reg[o][o_addr][24]_i_1_n_0 ;
  wire \bram0b_reg[o][o_addr][24]_i_1_n_1 ;
  wire \bram0b_reg[o][o_addr][24]_i_1_n_2 ;
  wire \bram0b_reg[o][o_addr][24]_i_1_n_3 ;
  wire \bram0b_reg[o][o_addr][24]_i_1_n_4 ;
  wire \bram0b_reg[o][o_addr][24]_i_1_n_5 ;
  wire \bram0b_reg[o][o_addr][24]_i_1_n_6 ;
  wire \bram0b_reg[o][o_addr][24]_i_1_n_7 ;
  wire \bram0b_reg[o][o_addr][28]_i_1_n_0 ;
  wire \bram0b_reg[o][o_addr][28]_i_1_n_1 ;
  wire \bram0b_reg[o][o_addr][28]_i_1_n_2 ;
  wire \bram0b_reg[o][o_addr][28]_i_1_n_3 ;
  wire \bram0b_reg[o][o_addr][28]_i_1_n_4 ;
  wire \bram0b_reg[o][o_addr][28]_i_1_n_5 ;
  wire \bram0b_reg[o][o_addr][28]_i_1_n_6 ;
  wire \bram0b_reg[o][o_addr][28]_i_1_n_7 ;
  wire \bram0b_reg[o][o_addr][31]_i_2_n_2 ;
  wire \bram0b_reg[o][o_addr][31]_i_2_n_3 ;
  wire \bram0b_reg[o][o_addr][31]_i_2_n_5 ;
  wire \bram0b_reg[o][o_addr][31]_i_2_n_6 ;
  wire \bram0b_reg[o][o_addr][31]_i_2_n_7 ;
  wire \bram0b_reg[o][o_addr][4]_i_1_n_0 ;
  wire \bram0b_reg[o][o_addr][4]_i_1_n_1 ;
  wire \bram0b_reg[o][o_addr][4]_i_1_n_2 ;
  wire \bram0b_reg[o][o_addr][4]_i_1_n_3 ;
  wire \bram0b_reg[o][o_addr][4]_i_1_n_4 ;
  wire \bram0b_reg[o][o_addr][4]_i_1_n_5 ;
  wire \bram0b_reg[o][o_addr][4]_i_1_n_6 ;
  wire \bram0b_reg[o][o_addr][8]_i_1_n_0 ;
  wire \bram0b_reg[o][o_addr][8]_i_1_n_1 ;
  wire \bram0b_reg[o][o_addr][8]_i_1_n_2 ;
  wire \bram0b_reg[o][o_addr][8]_i_1_n_3 ;
  wire \bram0b_reg[o][o_addr][8]_i_1_n_4 ;
  wire \bram0b_reg[o][o_addr][8]_i_1_n_5 ;
  wire \bram0b_reg[o][o_addr][8]_i_1_n_6 ;
  wire \bram0b_reg[o][o_addr][8]_i_1_n_7 ;
  wire \bram1a[o][o_addr][0]_i_1_n_0 ;
  wire \bram1a[o][o_addr][0]_i_2_n_0 ;
  wire \bram1a[o][o_addr][0]_i_3_n_0 ;
  wire \bram1a[o][o_addr][10]_i_1_n_0 ;
  wire \bram1a[o][o_addr][10]_i_2_n_0 ;
  wire \bram1a[o][o_addr][11]_i_1_n_0 ;
  wire \bram1a[o][o_addr][11]_i_2_n_0 ;
  wire \bram1a[o][o_addr][12]_i_10_n_0 ;
  wire \bram1a[o][o_addr][12]_i_11_n_0 ;
  wire \bram1a[o][o_addr][12]_i_12_n_0 ;
  wire \bram1a[o][o_addr][12]_i_1_n_0 ;
  wire \bram1a[o][o_addr][12]_i_4_n_0 ;
  wire \bram1a[o][o_addr][12]_i_5_n_0 ;
  wire \bram1a[o][o_addr][12]_i_6_n_0 ;
  wire \bram1a[o][o_addr][12]_i_7_n_0 ;
  wire \bram1a[o][o_addr][12]_i_8_n_0 ;
  wire \bram1a[o][o_addr][12]_i_9_n_0 ;
  wire \bram1a[o][o_addr][13]_i_1_n_0 ;
  wire \bram1a[o][o_addr][13]_i_2_n_0 ;
  wire \bram1a[o][o_addr][14]_i_1_n_0 ;
  wire \bram1a[o][o_addr][14]_i_2_n_0 ;
  wire \bram1a[o][o_addr][15]_i_1_n_0 ;
  wire \bram1a[o][o_addr][15]_i_2_n_0 ;
  wire \bram1a[o][o_addr][16]_i_10_n_0 ;
  wire \bram1a[o][o_addr][16]_i_11_n_0 ;
  wire \bram1a[o][o_addr][16]_i_12_n_0 ;
  wire \bram1a[o][o_addr][16]_i_1_n_0 ;
  wire \bram1a[o][o_addr][16]_i_4_n_0 ;
  wire \bram1a[o][o_addr][16]_i_5_n_0 ;
  wire \bram1a[o][o_addr][16]_i_6_n_0 ;
  wire \bram1a[o][o_addr][16]_i_7_n_0 ;
  wire \bram1a[o][o_addr][16]_i_8_n_0 ;
  wire \bram1a[o][o_addr][16]_i_9_n_0 ;
  wire \bram1a[o][o_addr][17]_i_1_n_0 ;
  wire \bram1a[o][o_addr][17]_i_2_n_0 ;
  wire \bram1a[o][o_addr][18]_i_1_n_0 ;
  wire \bram1a[o][o_addr][18]_i_2_n_0 ;
  wire \bram1a[o][o_addr][19]_i_1_n_0 ;
  wire \bram1a[o][o_addr][19]_i_2_n_0 ;
  wire \bram1a[o][o_addr][1]_i_1_n_0 ;
  wire \bram1a[o][o_addr][1]_i_2_n_0 ;
  wire \bram1a[o][o_addr][1]_i_3_n_0 ;
  wire \bram1a[o][o_addr][1]_i_4_n_0 ;
  wire \bram1a[o][o_addr][20]_i_10_n_0 ;
  wire \bram1a[o][o_addr][20]_i_11_n_0 ;
  wire \bram1a[o][o_addr][20]_i_12_n_0 ;
  wire \bram1a[o][o_addr][20]_i_1_n_0 ;
  wire \bram1a[o][o_addr][20]_i_4_n_0 ;
  wire \bram1a[o][o_addr][20]_i_5_n_0 ;
  wire \bram1a[o][o_addr][20]_i_6_n_0 ;
  wire \bram1a[o][o_addr][20]_i_7_n_0 ;
  wire \bram1a[o][o_addr][20]_i_8_n_0 ;
  wire \bram1a[o][o_addr][20]_i_9_n_0 ;
  wire \bram1a[o][o_addr][21]_i_1_n_0 ;
  wire \bram1a[o][o_addr][21]_i_2_n_0 ;
  wire \bram1a[o][o_addr][22]_i_1_n_0 ;
  wire \bram1a[o][o_addr][22]_i_2_n_0 ;
  wire \bram1a[o][o_addr][23]_i_1_n_0 ;
  wire \bram1a[o][o_addr][23]_i_2_n_0 ;
  wire \bram1a[o][o_addr][24]_i_10_n_0 ;
  wire \bram1a[o][o_addr][24]_i_11_n_0 ;
  wire \bram1a[o][o_addr][24]_i_12_n_0 ;
  wire \bram1a[o][o_addr][24]_i_1_n_0 ;
  wire \bram1a[o][o_addr][24]_i_4_n_0 ;
  wire \bram1a[o][o_addr][24]_i_5_n_0 ;
  wire \bram1a[o][o_addr][24]_i_6_n_0 ;
  wire \bram1a[o][o_addr][24]_i_7_n_0 ;
  wire \bram1a[o][o_addr][24]_i_8_n_0 ;
  wire \bram1a[o][o_addr][24]_i_9_n_0 ;
  wire \bram1a[o][o_addr][25]_i_1_n_0 ;
  wire \bram1a[o][o_addr][25]_i_2_n_0 ;
  wire \bram1a[o][o_addr][26]_i_1_n_0 ;
  wire \bram1a[o][o_addr][26]_i_2_n_0 ;
  wire \bram1a[o][o_addr][27]_i_1_n_0 ;
  wire \bram1a[o][o_addr][27]_i_2_n_0 ;
  wire \bram1a[o][o_addr][28]_i_10_n_0 ;
  wire \bram1a[o][o_addr][28]_i_11_n_0 ;
  wire \bram1a[o][o_addr][28]_i_12_n_0 ;
  wire \bram1a[o][o_addr][28]_i_1_n_0 ;
  wire \bram1a[o][o_addr][28]_i_4_n_0 ;
  wire \bram1a[o][o_addr][28]_i_5_n_0 ;
  wire \bram1a[o][o_addr][28]_i_6_n_0 ;
  wire \bram1a[o][o_addr][28]_i_7_n_0 ;
  wire \bram1a[o][o_addr][28]_i_8_n_0 ;
  wire \bram1a[o][o_addr][28]_i_9_n_0 ;
  wire \bram1a[o][o_addr][29]_i_1_n_0 ;
  wire \bram1a[o][o_addr][29]_i_2_n_0 ;
  wire \bram1a[o][o_addr][2]_i_1_n_0 ;
  wire \bram1a[o][o_addr][2]_i_2_n_0 ;
  wire \bram1a[o][o_addr][30]_i_1_n_0 ;
  wire \bram1a[o][o_addr][30]_i_2_n_0 ;
  wire \bram1a[o][o_addr][31]_i_1_n_0 ;
  wire \bram1a[o][o_addr][31]_i_2_n_0 ;
  wire \bram1a[o][o_addr][31]_i_5_n_0 ;
  wire \bram1a[o][o_addr][31]_i_6_n_0 ;
  wire \bram1a[o][o_addr][31]_i_7_n_0 ;
  wire \bram1a[o][o_addr][31]_i_8_n_0 ;
  wire \bram1a[o][o_addr][31]_i_9_n_0 ;
  wire \bram1a[o][o_addr][3]_i_1_n_0 ;
  wire \bram1a[o][o_addr][3]_i_2_n_0 ;
  wire \bram1a[o][o_addr][4]_i_10_n_0 ;
  wire \bram1a[o][o_addr][4]_i_11_n_0 ;
  wire \bram1a[o][o_addr][4]_i_12_n_0 ;
  wire \bram1a[o][o_addr][4]_i_1_n_0 ;
  wire \bram1a[o][o_addr][4]_i_4_n_0 ;
  wire \bram1a[o][o_addr][4]_i_5_n_0 ;
  wire \bram1a[o][o_addr][4]_i_6_n_0 ;
  wire \bram1a[o][o_addr][4]_i_7_n_0 ;
  wire \bram1a[o][o_addr][4]_i_8_n_0 ;
  wire \bram1a[o][o_addr][4]_i_9_n_0 ;
  wire \bram1a[o][o_addr][5]_i_1_n_0 ;
  wire \bram1a[o][o_addr][5]_i_2_n_0 ;
  wire \bram1a[o][o_addr][6]_i_1_n_0 ;
  wire \bram1a[o][o_addr][6]_i_2_n_0 ;
  wire \bram1a[o][o_addr][7]_i_1_n_0 ;
  wire \bram1a[o][o_addr][7]_i_2_n_0 ;
  wire \bram1a[o][o_addr][8]_i_10_n_0 ;
  wire \bram1a[o][o_addr][8]_i_11_n_0 ;
  wire \bram1a[o][o_addr][8]_i_12_n_0 ;
  wire \bram1a[o][o_addr][8]_i_1_n_0 ;
  wire \bram1a[o][o_addr][8]_i_4_n_0 ;
  wire \bram1a[o][o_addr][8]_i_5_n_0 ;
  wire \bram1a[o][o_addr][8]_i_6_n_0 ;
  wire \bram1a[o][o_addr][8]_i_7_n_0 ;
  wire \bram1a[o][o_addr][8]_i_8_n_0 ;
  wire \bram1a[o][o_addr][8]_i_9_n_0 ;
  wire \bram1a[o][o_addr][9]_i_1_n_0 ;
  wire \bram1a[o][o_addr][9]_i_2_n_0 ;
  wire \bram1a[o][o_din][0]_i_1_n_0 ;
  wire \bram1a[o][o_din][10]_i_1_n_0 ;
  wire \bram1a[o][o_din][11]_i_1_n_0 ;
  wire \bram1a[o][o_din][12]_i_1_n_0 ;
  wire \bram1a[o][o_din][16]_i_1_n_0 ;
  wire \bram1a[o][o_din][17]_i_1_n_0 ;
  wire \bram1a[o][o_din][18]_i_1_n_0 ;
  wire \bram1a[o][o_din][19]_i_1_n_0 ;
  wire \bram1a[o][o_din][1]_i_1_n_0 ;
  wire \bram1a[o][o_din][20]_i_1_n_0 ;
  wire \bram1a[o][o_din][24]_i_1_n_0 ;
  wire \bram1a[o][o_din][25]_i_1_n_0 ;
  wire \bram1a[o][o_din][26]_i_1_n_0 ;
  wire \bram1a[o][o_din][27]_i_1_n_0 ;
  wire \bram1a[o][o_din][28]_i_1_n_0 ;
  wire \bram1a[o][o_din][28]_i_2_n_0 ;
  wire \bram1a[o][o_din][2]_i_1_n_0 ;
  wire \bram1a[o][o_din][3]_i_1_n_0 ;
  wire \bram1a[o][o_din][4]_i_1_n_0 ;
  wire \bram1a[o][o_din][8]_i_1_n_0 ;
  wire \bram1a[o][o_din][9]_i_1_n_0 ;
  wire \bram1a[o][o_en]_i_1_n_0 ;
  wire \bram1a[o][o_we][3]_i_1_n_0 ;
  wire \bram1a_reg[o][o_addr][12]_i_2_n_0 ;
  wire \bram1a_reg[o][o_addr][12]_i_2_n_1 ;
  wire \bram1a_reg[o][o_addr][12]_i_2_n_2 ;
  wire \bram1a_reg[o][o_addr][12]_i_2_n_3 ;
  wire \bram1a_reg[o][o_addr][12]_i_3_n_0 ;
  wire \bram1a_reg[o][o_addr][12]_i_3_n_1 ;
  wire \bram1a_reg[o][o_addr][12]_i_3_n_2 ;
  wire \bram1a_reg[o][o_addr][12]_i_3_n_3 ;
  wire \bram1a_reg[o][o_addr][16]_i_2_n_0 ;
  wire \bram1a_reg[o][o_addr][16]_i_2_n_1 ;
  wire \bram1a_reg[o][o_addr][16]_i_2_n_2 ;
  wire \bram1a_reg[o][o_addr][16]_i_2_n_3 ;
  wire \bram1a_reg[o][o_addr][16]_i_3_n_0 ;
  wire \bram1a_reg[o][o_addr][16]_i_3_n_1 ;
  wire \bram1a_reg[o][o_addr][16]_i_3_n_2 ;
  wire \bram1a_reg[o][o_addr][16]_i_3_n_3 ;
  wire \bram1a_reg[o][o_addr][20]_i_2_n_0 ;
  wire \bram1a_reg[o][o_addr][20]_i_2_n_1 ;
  wire \bram1a_reg[o][o_addr][20]_i_2_n_2 ;
  wire \bram1a_reg[o][o_addr][20]_i_2_n_3 ;
  wire \bram1a_reg[o][o_addr][20]_i_3_n_0 ;
  wire \bram1a_reg[o][o_addr][20]_i_3_n_1 ;
  wire \bram1a_reg[o][o_addr][20]_i_3_n_2 ;
  wire \bram1a_reg[o][o_addr][20]_i_3_n_3 ;
  wire \bram1a_reg[o][o_addr][24]_i_2_n_0 ;
  wire \bram1a_reg[o][o_addr][24]_i_2_n_1 ;
  wire \bram1a_reg[o][o_addr][24]_i_2_n_2 ;
  wire \bram1a_reg[o][o_addr][24]_i_2_n_3 ;
  wire \bram1a_reg[o][o_addr][24]_i_3_n_0 ;
  wire \bram1a_reg[o][o_addr][24]_i_3_n_1 ;
  wire \bram1a_reg[o][o_addr][24]_i_3_n_2 ;
  wire \bram1a_reg[o][o_addr][24]_i_3_n_3 ;
  wire \bram1a_reg[o][o_addr][28]_i_2_n_0 ;
  wire \bram1a_reg[o][o_addr][28]_i_2_n_1 ;
  wire \bram1a_reg[o][o_addr][28]_i_2_n_2 ;
  wire \bram1a_reg[o][o_addr][28]_i_2_n_3 ;
  wire \bram1a_reg[o][o_addr][28]_i_3_n_0 ;
  wire \bram1a_reg[o][o_addr][28]_i_3_n_1 ;
  wire \bram1a_reg[o][o_addr][28]_i_3_n_2 ;
  wire \bram1a_reg[o][o_addr][28]_i_3_n_3 ;
  wire \bram1a_reg[o][o_addr][31]_i_3_n_2 ;
  wire \bram1a_reg[o][o_addr][31]_i_3_n_3 ;
  wire \bram1a_reg[o][o_addr][31]_i_4_n_2 ;
  wire \bram1a_reg[o][o_addr][31]_i_4_n_3 ;
  wire \bram1a_reg[o][o_addr][4]_i_2_n_0 ;
  wire \bram1a_reg[o][o_addr][4]_i_2_n_1 ;
  wire \bram1a_reg[o][o_addr][4]_i_2_n_2 ;
  wire \bram1a_reg[o][o_addr][4]_i_2_n_3 ;
  wire \bram1a_reg[o][o_addr][4]_i_3_n_0 ;
  wire \bram1a_reg[o][o_addr][4]_i_3_n_1 ;
  wire \bram1a_reg[o][o_addr][4]_i_3_n_2 ;
  wire \bram1a_reg[o][o_addr][4]_i_3_n_3 ;
  wire \bram1a_reg[o][o_addr][8]_i_2_n_0 ;
  wire \bram1a_reg[o][o_addr][8]_i_2_n_1 ;
  wire \bram1a_reg[o][o_addr][8]_i_2_n_2 ;
  wire \bram1a_reg[o][o_addr][8]_i_2_n_3 ;
  wire \bram1a_reg[o][o_addr][8]_i_3_n_0 ;
  wire \bram1a_reg[o][o_addr][8]_i_3_n_1 ;
  wire \bram1a_reg[o][o_addr][8]_i_3_n_2 ;
  wire \bram1a_reg[o][o_addr][8]_i_3_n_3 ;
  wire control0a_i_1_n_0;
  wire control0a_i_2_n_0;
  wire control0b_i_1_n_0;
  wire control0b_i_2_n_0;
  wire control1a_i_1_n_0;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1__10_n_0;
  wire i__carry__0_i_1__11_n_0;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_1__2_n_0;
  wire i__carry__0_i_1__3_n_0;
  wire i__carry__0_i_1__4_n_0;
  wire i__carry__0_i_1__5_n_0;
  wire i__carry__0_i_1__6_n_0;
  wire i__carry__0_i_1__7_n_0;
  wire i__carry__0_i_1__8_n_0;
  wire i__carry__0_i_1__9_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2__10_n_0;
  wire i__carry__0_i_2__11_n_0;
  wire i__carry__0_i_2__1_n_0;
  wire i__carry__0_i_2__2_n_0;
  wire i__carry__0_i_2__3_n_0;
  wire i__carry__0_i_2__4_n_0;
  wire i__carry__0_i_2__5_n_0;
  wire i__carry__0_i_2__6_n_0;
  wire i__carry__0_i_2__7_n_0;
  wire i__carry__0_i_2__8_n_0;
  wire i__carry__0_i_2__9_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3__10_n_0;
  wire i__carry__0_i_3__11_n_0;
  wire i__carry__0_i_3__1_n_0;
  wire i__carry__0_i_3__2_n_0;
  wire i__carry__0_i_3__3_n_0;
  wire i__carry__0_i_3__4_n_0;
  wire i__carry__0_i_3__5_n_0;
  wire i__carry__0_i_3__6_n_0;
  wire i__carry__0_i_3__7_n_0;
  wire i__carry__0_i_3__8_n_0;
  wire i__carry__0_i_3__9_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4__10_n_0;
  wire i__carry__0_i_4__11_n_0;
  wire i__carry__0_i_4__1_n_0;
  wire i__carry__0_i_4__2_n_0;
  wire i__carry__0_i_4__3_n_0;
  wire i__carry__0_i_4__4_n_0;
  wire i__carry__0_i_4__5_n_0;
  wire i__carry__0_i_4__6_n_0;
  wire i__carry__0_i_4__7_n_0;
  wire i__carry__0_i_4__8_n_0;
  wire i__carry__0_i_4__9_n_0;
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
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4__0_n_0;
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
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2__0_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3__0_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4__0_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__2_i_5__0_n_0;
  wire i__carry__2_i_5_n_0;
  wire i__carry__2_i_6__0_n_0;
  wire i__carry__2_i_6_n_0;
  wire i__carry__2_i_7__0_n_0;
  wire i__carry__2_i_7_n_0;
  wire i__carry__2_i_8__0_n_0;
  wire i__carry__2_i_8_n_0;
  wire i__carry__3_i_1__0_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry__3_i_2__0_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry__3_i_3__0_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4__0_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry__3_i_5__0_n_0;
  wire i__carry__3_i_5_n_0;
  wire i__carry__3_i_6__0_n_0;
  wire i__carry__3_i_6_n_0;
  wire i__carry__3_i_7__0_n_0;
  wire i__carry__3_i_7_n_0;
  wire i__carry__3_i_8__0_n_0;
  wire i__carry__3_i_8_n_0;
  wire i__carry__4_i_1__0_n_0;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2__0_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry__4_i_3__0_n_0;
  wire i__carry__4_i_3_n_0;
  wire i__carry__4_i_4__0_n_0;
  wire i__carry__4_i_4_n_0;
  wire i__carry__4_i_5__0_n_0;
  wire i__carry__4_i_5_n_0;
  wire i__carry__4_i_6__0_n_0;
  wire i__carry__4_i_6_n_0;
  wire i__carry__4_i_7__0_n_0;
  wire i__carry__4_i_7_n_0;
  wire i__carry__4_i_8__0_n_0;
  wire i__carry__4_i_8_n_0;
  wire i__carry__5_i_1__0_n_0;
  wire i__carry__5_i_1_n_0;
  wire i__carry__5_i_2__0_n_0;
  wire i__carry__5_i_2_n_0;
  wire i__carry__5_i_3__0_n_0;
  wire i__carry__5_i_3_n_0;
  wire i__carry__5_i_4__0_n_0;
  wire i__carry__5_i_4_n_0;
  wire i__carry__5_i_5__0_n_0;
  wire i__carry__5_i_5_n_0;
  wire i__carry__5_i_6__0_n_0;
  wire i__carry__5_i_6_n_0;
  wire i__carry__5_i_7__0_n_0;
  wire i__carry__5_i_7_n_0;
  wire i__carry__5_i_8__0_n_0;
  wire i__carry__5_i_8_n_0;
  wire i__carry__6_i_1__0_n_0;
  wire i__carry__6_i_1_n_0;
  wire i__carry__6_i_2__0_n_0;
  wire i__carry__6_i_2_n_0;
  wire i__carry__6_i_3__0_n_0;
  wire i__carry__6_i_3_n_0;
  wire i__carry__6_i_4__0_n_0;
  wire i__carry__6_i_4_n_0;
  wire i__carry__6_i_5__0_n_0;
  wire i__carry__6_i_5_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__10_n_0;
  wire i__carry_i_1__11_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_1__3_n_0;
  wire i__carry_i_1__4_n_0;
  wire i__carry_i_1__5_n_0;
  wire i__carry_i_1__6_n_0;
  wire i__carry_i_1__7_n_0;
  wire i__carry_i_1__8_n_0;
  wire i__carry_i_1__9_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__10_n_0;
  wire i__carry_i_2__11_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_2__3_n_0;
  wire i__carry_i_2__4_n_0;
  wire i__carry_i_2__5_n_0;
  wire i__carry_i_2__6_n_0;
  wire i__carry_i_2__7_n_0;
  wire i__carry_i_2__8_n_0;
  wire i__carry_i_2__9_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__10_n_0;
  wire i__carry_i_3__11_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3__2_n_0;
  wire i__carry_i_3__3_n_0;
  wire i__carry_i_3__4_n_0;
  wire i__carry_i_3__5_n_0;
  wire i__carry_i_3__6_n_0;
  wire i__carry_i_3__7_n_0;
  wire i__carry_i_3__8_n_0;
  wire i__carry_i_3__9_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__10_n_0;
  wire i__carry_i_4__11_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4__2_n_0;
  wire i__carry_i_4__3_n_0;
  wire i__carry_i_4__4_n_0;
  wire i__carry_i_4__5_n_0;
  wire i__carry_i_4__6_n_0;
  wire i__carry_i_4__7_n_0;
  wire i__carry_i_4__8_n_0;
  wire i__carry_i_4__9_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5_n_0;
  wire [1:0]i_bram_sel;
  wire i_clk;
  wire i_enable;
  wire [31:0]i_mema_dout;
  wire [31:0]i_memb_dout;
  wire [31:0]i_memc_dout;
  wire [31:0]i_out_addr;
  wire [31:0]i_v1_addr;
  wire [31:0]i_v2_addr;
  wire [31:1]in10;
  wire [31:1]in11;
  wire [31:2]in12;
  wire [31:2]in14;
  wire [30:1]in6;
  wire o_controla;
  wire o_controlb;
  wire o_controlc;
  wire o_done;
  wire [31:0]o_mema_addr;
  wire [19:0]o_mema_din;
  wire o_mema_en;
  wire [0:0]o_mema_we;
  wire [31:0]o_memb_addr;
  wire o_memb_en;
  wire [31:0]o_memc_addr;
  wire [19:0]o_memc_din;
  wire o_memc_en;
  wire [0:0]o_memc_we;
  wire [7:0]p_0_in;
  wire [7:0]p_1_in10_in;
  wire [7:0]p_1_in13_in;
  wire [7:0]p_1_in16_in;
  wire rst;
  wire [30:1]s_ctr;
  wire \s_ctr[30]_i_1_n_0 ;
  wire \s_ctr[4]_i_3_n_0 ;
  wire \s_ctr_reg[12]_i_2_n_0 ;
  wire \s_ctr_reg[12]_i_2_n_1 ;
  wire \s_ctr_reg[12]_i_2_n_2 ;
  wire \s_ctr_reg[12]_i_2_n_3 ;
  wire \s_ctr_reg[16]_i_2_n_0 ;
  wire \s_ctr_reg[16]_i_2_n_1 ;
  wire \s_ctr_reg[16]_i_2_n_2 ;
  wire \s_ctr_reg[16]_i_2_n_3 ;
  wire \s_ctr_reg[20]_i_2_n_0 ;
  wire \s_ctr_reg[20]_i_2_n_1 ;
  wire \s_ctr_reg[20]_i_2_n_2 ;
  wire \s_ctr_reg[20]_i_2_n_3 ;
  wire \s_ctr_reg[24]_i_2_n_0 ;
  wire \s_ctr_reg[24]_i_2_n_1 ;
  wire \s_ctr_reg[24]_i_2_n_2 ;
  wire \s_ctr_reg[24]_i_2_n_3 ;
  wire \s_ctr_reg[28]_i_2_n_0 ;
  wire \s_ctr_reg[28]_i_2_n_1 ;
  wire \s_ctr_reg[28]_i_2_n_2 ;
  wire \s_ctr_reg[28]_i_2_n_3 ;
  wire \s_ctr_reg[30]_i_3_n_3 ;
  wire \s_ctr_reg[4]_i_2_n_0 ;
  wire \s_ctr_reg[4]_i_2_n_1 ;
  wire \s_ctr_reg[4]_i_2_n_2 ;
  wire \s_ctr_reg[4]_i_2_n_3 ;
  wire \s_ctr_reg[8]_i_2_n_0 ;
  wire \s_ctr_reg[8]_i_2_n_1 ;
  wire \s_ctr_reg[8]_i_2_n_2 ;
  wire \s_ctr_reg[8]_i_2_n_3 ;
  wire \s_ctr_reg_n_0_[10] ;
  wire \s_ctr_reg_n_0_[11] ;
  wire \s_ctr_reg_n_0_[12] ;
  wire \s_ctr_reg_n_0_[13] ;
  wire \s_ctr_reg_n_0_[14] ;
  wire \s_ctr_reg_n_0_[15] ;
  wire \s_ctr_reg_n_0_[16] ;
  wire \s_ctr_reg_n_0_[17] ;
  wire \s_ctr_reg_n_0_[18] ;
  wire \s_ctr_reg_n_0_[19] ;
  wire \s_ctr_reg_n_0_[1] ;
  wire \s_ctr_reg_n_0_[20] ;
  wire \s_ctr_reg_n_0_[21] ;
  wire \s_ctr_reg_n_0_[22] ;
  wire \s_ctr_reg_n_0_[23] ;
  wire \s_ctr_reg_n_0_[24] ;
  wire \s_ctr_reg_n_0_[25] ;
  wire \s_ctr_reg_n_0_[26] ;
  wire \s_ctr_reg_n_0_[27] ;
  wire \s_ctr_reg_n_0_[28] ;
  wire \s_ctr_reg_n_0_[29] ;
  wire \s_ctr_reg_n_0_[2] ;
  wire \s_ctr_reg_n_0_[30] ;
  wire \s_ctr_reg_n_0_[3] ;
  wire \s_ctr_reg_n_0_[4] ;
  wire \s_ctr_reg_n_0_[5] ;
  wire \s_ctr_reg_n_0_[6] ;
  wire \s_ctr_reg_n_0_[7] ;
  wire \s_ctr_reg_n_0_[8] ;
  wire \s_ctr_reg_n_0_[9] ;
  wire s_finish_i_1_n_0;
  wire s_main_en_i_1_n_0;
  wire s_main_en_i_2_n_0;
  wire s_main_en_i_3_n_0;
  wire s_main_en_i_4_n_0;
  wire s_main_en_i_6_n_0;
  wire s_main_en_i_7_n_0;
  wire s_main_en_reg_n_0;
  wire s_main_start_i_1_n_0;
  wire s_main_start_reg_n_0;
  wire [31:0]s_out_addr;
  wire [4:0]s_state;
  wire [1:0]s_state_1__0;
  wire [4:0]s_state__0;
  wire \s_v1[0]_i_1_n_0 ;
  wire \s_v1[10]_i_1_n_0 ;
  wire \s_v1[11]_i_1_n_0 ;
  wire \s_v1[12]_i_1_n_0 ;
  wire \s_v1[13]_i_1_n_0 ;
  wire \s_v1[14]_i_1_n_0 ;
  wire \s_v1[15]_i_1_n_0 ;
  wire \s_v1[16]_i_1_n_0 ;
  wire \s_v1[17]_i_1_n_0 ;
  wire \s_v1[18]_i_1_n_0 ;
  wire \s_v1[19]_i_1_n_0 ;
  wire \s_v1[1]_i_1_n_0 ;
  wire \s_v1[20]_i_1_n_0 ;
  wire \s_v1[21]_i_1_n_0 ;
  wire \s_v1[22]_i_1_n_0 ;
  wire \s_v1[23]_i_1_n_0 ;
  wire \s_v1[24]_i_1_n_0 ;
  wire \s_v1[25]_i_1_n_0 ;
  wire \s_v1[26]_i_1_n_0 ;
  wire \s_v1[27]_i_1_n_0 ;
  wire \s_v1[28]_i_1_n_0 ;
  wire \s_v1[29]_i_1_n_0 ;
  wire \s_v1[2]_i_1_n_0 ;
  wire \s_v1[30]_i_1_n_0 ;
  wire \s_v1[31]_i_1_n_0 ;
  wire \s_v1[31]_i_2_n_0 ;
  wire \s_v1[3]_i_1_n_0 ;
  wire \s_v1[4]_i_1_n_0 ;
  wire \s_v1[5]_i_1_n_0 ;
  wire \s_v1[6]_i_1_n_0 ;
  wire \s_v1[7]_i_1_n_0 ;
  wire \s_v1[8]_i_1_n_0 ;
  wire \s_v1[9]_i_1_n_0 ;
  wire \s_v1_addr_reg_n_0_[0] ;
  wire \s_v1_addr_reg_n_0_[10] ;
  wire \s_v1_addr_reg_n_0_[11] ;
  wire \s_v1_addr_reg_n_0_[12] ;
  wire \s_v1_addr_reg_n_0_[13] ;
  wire \s_v1_addr_reg_n_0_[14] ;
  wire \s_v1_addr_reg_n_0_[15] ;
  wire \s_v1_addr_reg_n_0_[16] ;
  wire \s_v1_addr_reg_n_0_[17] ;
  wire \s_v1_addr_reg_n_0_[18] ;
  wire \s_v1_addr_reg_n_0_[19] ;
  wire \s_v1_addr_reg_n_0_[1] ;
  wire \s_v1_addr_reg_n_0_[20] ;
  wire \s_v1_addr_reg_n_0_[21] ;
  wire \s_v1_addr_reg_n_0_[22] ;
  wire \s_v1_addr_reg_n_0_[23] ;
  wire \s_v1_addr_reg_n_0_[24] ;
  wire \s_v1_addr_reg_n_0_[25] ;
  wire \s_v1_addr_reg_n_0_[26] ;
  wire \s_v1_addr_reg_n_0_[27] ;
  wire \s_v1_addr_reg_n_0_[28] ;
  wire \s_v1_addr_reg_n_0_[29] ;
  wire \s_v1_addr_reg_n_0_[2] ;
  wire \s_v1_addr_reg_n_0_[30] ;
  wire \s_v1_addr_reg_n_0_[31] ;
  wire \s_v1_addr_reg_n_0_[3] ;
  wire \s_v1_addr_reg_n_0_[4] ;
  wire \s_v1_addr_reg_n_0_[5] ;
  wire \s_v1_addr_reg_n_0_[6] ;
  wire \s_v1_addr_reg_n_0_[7] ;
  wire \s_v1_addr_reg_n_0_[8] ;
  wire \s_v1_addr_reg_n_0_[9] ;
  wire \s_v1_reg_n_0_[0] ;
  wire \s_v1_reg_n_0_[1] ;
  wire \s_v1_reg_n_0_[2] ;
  wire \s_v1_reg_n_0_[3] ;
  wire \s_v1_reg_n_0_[4] ;
  wire \s_v1_reg_n_0_[5] ;
  wire \s_v1_reg_n_0_[6] ;
  wire \s_v1_reg_n_0_[7] ;
  wire [31:0]s_v2_addr;
  wire \s_v2_addr[31]_i_1_n_0 ;
  wire [7:0]tmp00;
  wire [7:0]tmp0011_out;
  wire [7:0]tmp0014_out;
  wire [7:0]tmp0017_out;
  wire [7:0]tmp0018_out;
  wire [7:0]tmp0019_out;
  wire [7:0]tmp001_out;
  wire [7:0]tmp0020_out;
  wire [7:0]tmp0021_out;
  wire [7:0]tmp004_out;
  wire [7:0]tmp007_out;
  wire [7:0]tmp008_out;
  wire tmp00_carry__0_i_1_n_0;
  wire tmp00_carry__0_i_2_n_0;
  wire tmp00_carry__0_i_3_n_0;
  wire tmp00_carry__0_i_4_n_0;
  wire tmp00_carry__0_n_1;
  wire tmp00_carry__0_n_2;
  wire tmp00_carry__0_n_3;
  wire tmp00_carry_i_1_n_0;
  wire tmp00_carry_i_2_n_0;
  wire tmp00_carry_i_3_n_0;
  wire tmp00_carry_i_4_n_0;
  wire tmp00_carry_n_0;
  wire tmp00_carry_n_1;
  wire tmp00_carry_n_2;
  wire tmp00_carry_n_3;
  wire [31:0]tmp00_in;
  wire \tmp00_inferred__0/i__carry__0_n_1 ;
  wire \tmp00_inferred__0/i__carry__0_n_2 ;
  wire \tmp00_inferred__0/i__carry__0_n_3 ;
  wire \tmp00_inferred__0/i__carry_n_0 ;
  wire \tmp00_inferred__0/i__carry_n_1 ;
  wire \tmp00_inferred__0/i__carry_n_2 ;
  wire \tmp00_inferred__0/i__carry_n_3 ;
  wire \tmp00_inferred__1/i__carry__0_n_1 ;
  wire \tmp00_inferred__1/i__carry__0_n_2 ;
  wire \tmp00_inferred__1/i__carry__0_n_3 ;
  wire \tmp00_inferred__1/i__carry_n_0 ;
  wire \tmp00_inferred__1/i__carry_n_1 ;
  wire \tmp00_inferred__1/i__carry_n_2 ;
  wire \tmp00_inferred__1/i__carry_n_3 ;
  wire \tmp00_inferred__10/i__carry__0_n_1 ;
  wire \tmp00_inferred__10/i__carry__0_n_2 ;
  wire \tmp00_inferred__10/i__carry__0_n_3 ;
  wire \tmp00_inferred__10/i__carry_n_0 ;
  wire \tmp00_inferred__10/i__carry_n_1 ;
  wire \tmp00_inferred__10/i__carry_n_2 ;
  wire \tmp00_inferred__10/i__carry_n_3 ;
  wire \tmp00_inferred__2/i__carry__0_n_1 ;
  wire \tmp00_inferred__2/i__carry__0_n_2 ;
  wire \tmp00_inferred__2/i__carry__0_n_3 ;
  wire \tmp00_inferred__2/i__carry_n_0 ;
  wire \tmp00_inferred__2/i__carry_n_1 ;
  wire \tmp00_inferred__2/i__carry_n_2 ;
  wire \tmp00_inferred__2/i__carry_n_3 ;
  wire \tmp00_inferred__3/i__carry__0_n_1 ;
  wire \tmp00_inferred__3/i__carry__0_n_2 ;
  wire \tmp00_inferred__3/i__carry__0_n_3 ;
  wire \tmp00_inferred__3/i__carry_n_0 ;
  wire \tmp00_inferred__3/i__carry_n_1 ;
  wire \tmp00_inferred__3/i__carry_n_2 ;
  wire \tmp00_inferred__3/i__carry_n_3 ;
  wire \tmp00_inferred__4/i__carry__0_n_1 ;
  wire \tmp00_inferred__4/i__carry__0_n_2 ;
  wire \tmp00_inferred__4/i__carry__0_n_3 ;
  wire \tmp00_inferred__4/i__carry_n_0 ;
  wire \tmp00_inferred__4/i__carry_n_1 ;
  wire \tmp00_inferred__4/i__carry_n_2 ;
  wire \tmp00_inferred__4/i__carry_n_3 ;
  wire \tmp00_inferred__5/i__carry__0_n_1 ;
  wire \tmp00_inferred__5/i__carry__0_n_2 ;
  wire \tmp00_inferred__5/i__carry__0_n_3 ;
  wire \tmp00_inferred__5/i__carry_n_0 ;
  wire \tmp00_inferred__5/i__carry_n_1 ;
  wire \tmp00_inferred__5/i__carry_n_2 ;
  wire \tmp00_inferred__5/i__carry_n_3 ;
  wire \tmp00_inferred__6/i__carry__0_n_1 ;
  wire \tmp00_inferred__6/i__carry__0_n_2 ;
  wire \tmp00_inferred__6/i__carry__0_n_3 ;
  wire \tmp00_inferred__6/i__carry_n_0 ;
  wire \tmp00_inferred__6/i__carry_n_1 ;
  wire \tmp00_inferred__6/i__carry_n_2 ;
  wire \tmp00_inferred__6/i__carry_n_3 ;
  wire \tmp00_inferred__7/i__carry__0_n_1 ;
  wire \tmp00_inferred__7/i__carry__0_n_2 ;
  wire \tmp00_inferred__7/i__carry__0_n_3 ;
  wire \tmp00_inferred__7/i__carry_n_0 ;
  wire \tmp00_inferred__7/i__carry_n_1 ;
  wire \tmp00_inferred__7/i__carry_n_2 ;
  wire \tmp00_inferred__7/i__carry_n_3 ;
  wire \tmp00_inferred__8/i__carry__0_n_1 ;
  wire \tmp00_inferred__8/i__carry__0_n_2 ;
  wire \tmp00_inferred__8/i__carry__0_n_3 ;
  wire \tmp00_inferred__8/i__carry_n_0 ;
  wire \tmp00_inferred__8/i__carry_n_1 ;
  wire \tmp00_inferred__8/i__carry_n_2 ;
  wire \tmp00_inferred__8/i__carry_n_3 ;
  wire \tmp00_inferred__9/i__carry__0_n_1 ;
  wire \tmp00_inferred__9/i__carry__0_n_2 ;
  wire \tmp00_inferred__9/i__carry__0_n_3 ;
  wire \tmp00_inferred__9/i__carry_n_0 ;
  wire \tmp00_inferred__9/i__carry_n_1 ;
  wire \tmp00_inferred__9/i__carry_n_2 ;
  wire \tmp00_inferred__9/i__carry_n_3 ;
  wire \tmp0[31]_i_1_n_0 ;
  wire \tmp0_reg_n_0_[0] ;
  wire \tmp0_reg_n_0_[16] ;
  wire \tmp0_reg_n_0_[17] ;
  wire \tmp0_reg_n_0_[18] ;
  wire \tmp0_reg_n_0_[19] ;
  wire \tmp0_reg_n_0_[1] ;
  wire \tmp0_reg_n_0_[20] ;
  wire \tmp0_reg_n_0_[21] ;
  wire \tmp0_reg_n_0_[22] ;
  wire \tmp0_reg_n_0_[23] ;
  wire \tmp0_reg_n_0_[24] ;
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
  wire tmp2;
  wire \tmp2_reg_n_0_[0] ;
  wire \tmp2_reg_n_0_[10] ;
  wire \tmp2_reg_n_0_[11] ;
  wire \tmp2_reg_n_0_[12] ;
  wire \tmp2_reg_n_0_[16] ;
  wire \tmp2_reg_n_0_[17] ;
  wire \tmp2_reg_n_0_[18] ;
  wire \tmp2_reg_n_0_[19] ;
  wire \tmp2_reg_n_0_[1] ;
  wire \tmp2_reg_n_0_[20] ;
  wire \tmp2_reg_n_0_[24] ;
  wire \tmp2_reg_n_0_[25] ;
  wire \tmp2_reg_n_0_[26] ;
  wire \tmp2_reg_n_0_[27] ;
  wire \tmp2_reg_n_0_[28] ;
  wire \tmp2_reg_n_0_[2] ;
  wire \tmp2_reg_n_0_[3] ;
  wire \tmp2_reg_n_0_[4] ;
  wire \tmp2_reg_n_0_[8] ;
  wire \tmp2_reg_n_0_[9] ;
  wire [0:0]\NLW_bram0a[o][o_addr]0_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_bram0a[o][o_addr]0_inferred__1/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_bram0a[o][o_addr]0_inferred__1/i__carry__6_O_UNCONNECTED ;
  wire [0:0]\NLW_bram0a[o][o_addr]0_inferred__2/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_bram0a[o][o_addr]0_inferred__2/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_bram0a[o][o_addr]0_inferred__2/i__carry__6_O_UNCONNECTED ;
  wire [3:2]\NLW_bram0b_reg[o][o_addr][31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_bram0b_reg[o][o_addr][31]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_bram0b_reg[o][o_addr][4]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_bram1a_reg[o][o_addr][31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_bram1a_reg[o][o_addr][31]_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_bram1a_reg[o][o_addr][31]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_bram1a_reg[o][o_addr][31]_i_4_O_UNCONNECTED ;
  wire [0:0]\NLW_bram1a_reg[o][o_addr][4]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_bram1a_reg[o][o_addr][4]_i_3_O_UNCONNECTED ;
  wire [3:1]\NLW_s_ctr_reg[30]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_s_ctr_reg[30]_i_3_O_UNCONNECTED ;
  wire [3:3]NLW_tmp00_carry__0_CO_UNCONNECTED;
  wire [3:3]\NLW_tmp00_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_tmp00_inferred__1/i__carry__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_tmp00_inferred__10/i__carry__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_tmp00_inferred__2/i__carry__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_tmp00_inferred__3/i__carry__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_tmp00_inferred__4/i__carry__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_tmp00_inferred__5/i__carry__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_tmp00_inferred__6/i__carry__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_tmp00_inferred__7/i__carry__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_tmp00_inferred__8/i__carry__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_tmp00_inferred__9/i__carry__0_CO_UNCONNECTED ;
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

  LUT6 #(
    .INIT(64'hFFFFFFFF00040000)) 
    \FSM_sequential_s_state[0]_i_1 
       (.I0(s_state[3]),
        .I1(s_state[4]),
        .I2(s_state[1]),
        .I3(s_state[2]),
        .I4(\FSM_sequential_s_state[4]_i_3_n_0 ),
        .I5(\FSM_sequential_s_state[0]_i_2_n_0 ),
        .O(s_state__0[0]));
  LUT6 #(
    .INIT(64'h1051105114551454)) 
    \FSM_sequential_s_state[0]_i_2 
       (.I0(s_state[0]),
        .I1(s_state[4]),
        .I2(s_state[2]),
        .I3(s_state[3]),
        .I4(\FSM_sequential_s_state[0]_i_3_n_0 ),
        .I5(s_state[1]),
        .O(\FSM_sequential_s_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_s_state[0]_i_3 
       (.I0(i_bram_sel[1]),
        .I1(i_bram_sel[0]),
        .O(\FSM_sequential_s_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF10FF10FFFFFF10)) 
    \FSM_sequential_s_state[1]_i_1 
       (.I0(\FSM_sequential_s_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_s_state[1]_i_3_n_0 ),
        .I2(\FSM_sequential_s_state[2]_i_2_n_0 ),
        .I3(\FSM_sequential_s_state[1]_i_4_n_0 ),
        .I4(\FSM_sequential_s_state[1]_i_5_n_0 ),
        .I5(\FSM_sequential_s_state[1]_i_6_n_0 ),
        .O(s_state__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_s_state[1]_i_2 
       (.I0(s_state[4]),
        .I1(s_state[3]),
        .O(\FSM_sequential_s_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_s_state[1]_i_3 
       (.I0(s_state[0]),
        .I1(s_state[1]),
        .O(\FSM_sequential_s_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0067610500666004)) 
    \FSM_sequential_s_state[1]_i_4 
       (.I0(s_state[4]),
        .I1(s_state[3]),
        .I2(s_state[2]),
        .I3(s_state[1]),
        .I4(s_state[0]),
        .I5(\FSM_sequential_s_state[1]_i_7_n_0 ),
        .O(\FSM_sequential_s_state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_s_state[1]_i_5 
       (.I0(s_state[3]),
        .I1(s_state[2]),
        .O(\FSM_sequential_s_state[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF2FF)) 
    \FSM_sequential_s_state[1]_i_6 
       (.I0(\bram0a[o][o_addr][31]_i_3_n_0 ),
        .I1(s_state[0]),
        .I2(s_state[1]),
        .I3(s_state[4]),
        .O(\FSM_sequential_s_state[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFFF6)) 
    \FSM_sequential_s_state[1]_i_7 
       (.I0(i_bram_sel[0]),
        .I1(i_bram_sel[1]),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .O(\FSM_sequential_s_state[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h023E3E3EFF02020E)) 
    \FSM_sequential_s_state[2]_i_1 
       (.I0(\FSM_sequential_s_state[2]_i_2_n_0 ),
        .I1(s_state[3]),
        .I2(s_state[4]),
        .I3(s_state[1]),
        .I4(s_state[0]),
        .I5(s_state[2]),
        .O(s_state__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h20F0)) 
    \FSM_sequential_s_state[2]_i_2 
       (.I0(\bram0a[o][o_addr][31]_i_3_n_0 ),
        .I1(s_state[0]),
        .I2(s_state[2]),
        .I3(s_state[1]),
        .O(\FSM_sequential_s_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F8F8FFFFFFF8)) 
    \FSM_sequential_s_state[3]_i_1 
       (.I0(\FSM_sequential_s_state[3]_i_2_n_0 ),
        .I1(\FSM_sequential_s_state[3]_i_3_n_0 ),
        .I2(\FSM_sequential_s_state[3]_i_4_n_0 ),
        .I3(\FSM_sequential_s_state[3]_i_5_n_0 ),
        .I4(control0a_i_2_n_0),
        .I5(\FSM_sequential_s_state[3]_i_6_n_0 ),
        .O(s_state__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \FSM_sequential_s_state[3]_i_2 
       (.I0(\bram0a[o][o_addr][31]_i_3_n_0 ),
        .I1(s_state[0]),
        .I2(s_state[1]),
        .O(\FSM_sequential_s_state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_sequential_s_state[3]_i_3 
       (.I0(s_state[2]),
        .I1(s_state[3]),
        .I2(s_state[4]),
        .O(\FSM_sequential_s_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h030F00000C0C0002)) 
    \FSM_sequential_s_state[3]_i_4 
       (.I0(\FSM_sequential_s_state[3]_i_7_n_0 ),
        .I1(s_state[0]),
        .I2(s_state[4]),
        .I3(s_state[1]),
        .I4(s_state[3]),
        .I5(s_state[2]),
        .O(\FSM_sequential_s_state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \FSM_sequential_s_state[3]_i_5 
       (.I0(\FSM_sequential_s_state[4]_i_8_n_0 ),
        .I1(\FSM_sequential_s_state[4]_i_7_n_0 ),
        .I2(\FSM_sequential_s_state[3]_i_8_n_0 ),
        .I3(s_state[0]),
        .I4(s_state[1]),
        .O(\FSM_sequential_s_state[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hA2FFAAFF)) 
    \FSM_sequential_s_state[3]_i_6 
       (.I0(s_state[2]),
        .I1(s_state[0]),
        .I2(s_state[3]),
        .I3(s_state[4]),
        .I4(s_state[1]),
        .O(\FSM_sequential_s_state[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_s_state[3]_i_7 
       (.I0(i_bram_sel[0]),
        .I1(i_bram_sel[1]),
        .O(\FSM_sequential_s_state[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_sequential_s_state[3]_i_8 
       (.I0(in6[8]),
        .I1(in6[13]),
        .I2(in6[24]),
        .I3(\FSM_sequential_s_state[4]_i_10_n_0 ),
        .I4(\FSM_sequential_s_state[3]_i_9_n_0 ),
        .O(\FSM_sequential_s_state[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_s_state[3]_i_9 
       (.I0(in6[14]),
        .I1(in6[7]),
        .I2(in6[29]),
        .I3(in6[18]),
        .O(\FSM_sequential_s_state[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h37FF37FFFFFFFFFE)) 
    \FSM_sequential_s_state[4]_i_1 
       (.I0(s_state[1]),
        .I1(s_state[2]),
        .I2(s_state[0]),
        .I3(s_state[4]),
        .I4(i_enable),
        .I5(s_state[3]),
        .O(\FSM_sequential_s_state[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_s_state[4]_i_10 
       (.I0(in6[25]),
        .I1(in6[23]),
        .I2(in6[16]),
        .I3(in6[11]),
        .O(\FSM_sequential_s_state[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_s_state[4]_i_11 
       (.I0(in6[26]),
        .I1(in6[21]),
        .I2(in6[19]),
        .I3(in6[22]),
        .I4(in6[15]),
        .I5(in6[28]),
        .O(\FSM_sequential_s_state[4]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_s_state[4]_i_12 
       (.I0(in6[30]),
        .I1(in6[20]),
        .I2(in6[10]),
        .I3(in6[6]),
        .O(\FSM_sequential_s_state[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFABF0000)) 
    \FSM_sequential_s_state[4]_i_2 
       (.I0(control0a_i_2_n_0),
        .I1(\FSM_sequential_s_state[4]_i_3_n_0 ),
        .I2(s_state[0]),
        .I3(s_state[1]),
        .I4(\FSM_sequential_s_state[4]_i_4_n_0 ),
        .I5(\FSM_sequential_s_state[4]_i_5_n_0 ),
        .O(s_state__0[4]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_s_state[4]_i_3 
       (.I0(\FSM_sequential_s_state[4]_i_6_n_0 ),
        .I1(in6[24]),
        .I2(in6[13]),
        .I3(in6[8]),
        .I4(\FSM_sequential_s_state[4]_i_7_n_0 ),
        .I5(\FSM_sequential_s_state[4]_i_8_n_0 ),
        .O(\FSM_sequential_s_state[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \FSM_sequential_s_state[4]_i_4 
       (.I0(s_state[3]),
        .I1(s_state[2]),
        .I2(s_state[4]),
        .O(\FSM_sequential_s_state[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3000000000000001)) 
    \FSM_sequential_s_state[4]_i_5 
       (.I0(\FSM_sequential_s_state[4]_i_9_n_0 ),
        .I1(s_state[4]),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[3]),
        .I5(s_state[2]),
        .O(\FSM_sequential_s_state[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_s_state[4]_i_6 
       (.I0(in6[18]),
        .I1(in6[29]),
        .I2(in6[7]),
        .I3(in6[14]),
        .I4(\FSM_sequential_s_state[4]_i_10_n_0 ),
        .O(\FSM_sequential_s_state[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_s_state[4]_i_7 
       (.I0(\FSM_sequential_s_state[4]_i_11_n_0 ),
        .I1(\FSM_sequential_s_state[4]_i_12_n_0 ),
        .I2(in6[17]),
        .I3(in6[12]),
        .I4(in6[27]),
        .I5(in6[9]),
        .O(\FSM_sequential_s_state[4]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hE0000000)) 
    \FSM_sequential_s_state[4]_i_8 
       (.I0(in6[2]),
        .I1(in6[1]),
        .I2(in6[3]),
        .I3(in6[4]),
        .I4(in6[5]),
        .O(\FSM_sequential_s_state[4]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_s_state[4]_i_9 
       (.I0(i_bram_sel[0]),
        .I1(i_bram_sel[1]),
        .O(\FSM_sequential_s_state[4]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAA00AA0C)) 
    \FSM_sequential_s_state_1[0]_i_1 
       (.I0(s_main_en_reg_n_0),
        .I1(s_main_start_reg_n_0),
        .I2(i_bram_sel[0]),
        .I3(s_state_1__0[0]),
        .I4(s_state_1__0[1]),
        .O(\FSM_sequential_s_state_1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00000CC0)) 
    \FSM_sequential_s_state_1[1]_i_1 
       (.I0(s_main_en_reg_n_0),
        .I1(s_main_start_reg_n_0),
        .I2(i_bram_sel[0]),
        .I3(i_bram_sel[1]),
        .I4(s_state_1__0[0]),
        .I5(s_state_1__0[1]),
        .O(\FSM_sequential_s_state_1[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:00,main2:11,main1:10,main0:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_s_state_1_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\FSM_sequential_s_state_1[0]_i_1_n_0 ),
        .Q(s_state_1__0[0]),
        .R(rst));
  (* FSM_ENCODED_STATES = "idle:00,main2:11,main1:10,main0:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_s_state_1_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\FSM_sequential_s_state_1[1]_i_1_n_0 ),
        .Q(s_state_1__0[1]),
        .R(rst));
  (* FSM_ENCODED_STATES = "read13:10011,done2:11100,read12:10000,read11:01111,read18:11001,read17:11000,read2:00011,read16:10110,read1:00010,read15:10101,done1:10010,done0:01010,write2:10001,read0:00001,read10:01110,write1:01001,idle:00000,read9:01101,write4:11011,read6:01000,write3:10111,write0:00101,read5:00111,read8:01100,read19:11010,read7:01011,read4:00110,read14:10100,read3:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_s_state_reg[0] 
       (.C(i_clk),
        .CE(\FSM_sequential_s_state[4]_i_1_n_0 ),
        .D(s_state__0[0]),
        .Q(s_state[0]),
        .R(rst));
  (* FSM_ENCODED_STATES = "read13:10011,done2:11100,read12:10000,read11:01111,read18:11001,read17:11000,read2:00011,read16:10110,read1:00010,read15:10101,done1:10010,done0:01010,write2:10001,read0:00001,read10:01110,write1:01001,idle:00000,read9:01101,write4:11011,read6:01000,write3:10111,write0:00101,read5:00111,read8:01100,read19:11010,read7:01011,read4:00110,read14:10100,read3:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_s_state_reg[1] 
       (.C(i_clk),
        .CE(\FSM_sequential_s_state[4]_i_1_n_0 ),
        .D(s_state__0[1]),
        .Q(s_state[1]),
        .R(rst));
  (* FSM_ENCODED_STATES = "read13:10011,done2:11100,read12:10000,read11:01111,read18:11001,read17:11000,read2:00011,read16:10110,read1:00010,read15:10101,done1:10010,done0:01010,write2:10001,read0:00001,read10:01110,write1:01001,idle:00000,read9:01101,write4:11011,read6:01000,write3:10111,write0:00101,read5:00111,read8:01100,read19:11010,read7:01011,read4:00110,read14:10100,read3:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_s_state_reg[2] 
       (.C(i_clk),
        .CE(\FSM_sequential_s_state[4]_i_1_n_0 ),
        .D(s_state__0[2]),
        .Q(s_state[2]),
        .R(rst));
  (* FSM_ENCODED_STATES = "read13:10011,done2:11100,read12:10000,read11:01111,read18:11001,read17:11000,read2:00011,read16:10110,read1:00010,read15:10101,done1:10010,done0:01010,write2:10001,read0:00001,read10:01110,write1:01001,idle:00000,read9:01101,write4:11011,read6:01000,write3:10111,write0:00101,read5:00111,read8:01100,read19:11010,read7:01011,read4:00110,read14:10100,read3:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_s_state_reg[3] 
       (.C(i_clk),
        .CE(\FSM_sequential_s_state[4]_i_1_n_0 ),
        .D(s_state__0[3]),
        .Q(s_state[3]),
        .R(rst));
  (* FSM_ENCODED_STATES = "read13:10011,done2:11100,read12:10000,read11:01111,read18:11001,read17:11000,read2:00011,read16:10110,read1:00010,read15:10101,done1:10010,done0:01010,write2:10001,read0:00001,read10:01110,write1:01001,idle:00000,read9:01101,write4:11011,read6:01000,write3:10111,write0:00101,read5:00111,read8:01100,read19:11010,read7:01011,read4:00110,read14:10100,read3:00100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_s_state_reg[4] 
       (.C(i_clk),
        .CE(\FSM_sequential_s_state[4]_i_1_n_0 ),
        .D(s_state__0[4]),
        .Q(s_state[4]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0a[o][o_addr]0_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\bram0a[o][o_addr]0_inferred__1/i__carry_n_0 ,\bram0a[o][o_addr]0_inferred__1/i__carry_n_1 ,\bram0a[o][o_addr]0_inferred__1/i__carry_n_2 ,\bram0a[o][o_addr]0_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_ctr_reg_n_0_[3] ,i__carry_i_1_n_0,s_out_addr[2:1]}),
        .O({in11[4:2],\NLW_bram0a[o][o_addr]0_inferred__1/i__carry_O_UNCONNECTED [0]}),
        .S({i__carry_i_2__11_n_0,i__carry_i_3__11_n_0,i__carry_i_4__10_n_0,i__carry_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0a[o][o_addr]0_inferred__1/i__carry__0 
       (.CI(\bram0a[o][o_addr]0_inferred__1/i__carry_n_0 ),
        .CO({\bram0a[o][o_addr]0_inferred__1/i__carry__0_n_0 ,\bram0a[o][o_addr]0_inferred__1/i__carry__0_n_1 ,\bram0a[o][o_addr]0_inferred__1/i__carry__0_n_2 ,\bram0a[o][o_addr]0_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__11_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}),
        .O(in11[8:5]),
        .S({i__carry__0_i_5__0_n_0,i__carry__0_i_6__0_n_0,i__carry__0_i_7__0_n_0,i__carry__0_i_8__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0a[o][o_addr]0_inferred__1/i__carry__1 
       (.CI(\bram0a[o][o_addr]0_inferred__1/i__carry__0_n_0 ),
        .CO({\bram0a[o][o_addr]0_inferred__1/i__carry__1_n_0 ,\bram0a[o][o_addr]0_inferred__1/i__carry__1_n_1 ,\bram0a[o][o_addr]0_inferred__1/i__carry__1_n_2 ,\bram0a[o][o_addr]0_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1__0_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0,i__carry__1_i_4__0_n_0}),
        .O(in11[12:9]),
        .S({i__carry__1_i_5__0_n_0,i__carry__1_i_6__0_n_0,i__carry__1_i_7__0_n_0,i__carry__1_i_8__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0a[o][o_addr]0_inferred__1/i__carry__2 
       (.CI(\bram0a[o][o_addr]0_inferred__1/i__carry__1_n_0 ),
        .CO({\bram0a[o][o_addr]0_inferred__1/i__carry__2_n_0 ,\bram0a[o][o_addr]0_inferred__1/i__carry__2_n_1 ,\bram0a[o][o_addr]0_inferred__1/i__carry__2_n_2 ,\bram0a[o][o_addr]0_inferred__1/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1__0_n_0,i__carry__2_i_2__0_n_0,i__carry__2_i_3__0_n_0,i__carry__2_i_4__0_n_0}),
        .O(in11[16:13]),
        .S({i__carry__2_i_5__0_n_0,i__carry__2_i_6__0_n_0,i__carry__2_i_7__0_n_0,i__carry__2_i_8__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0a[o][o_addr]0_inferred__1/i__carry__3 
       (.CI(\bram0a[o][o_addr]0_inferred__1/i__carry__2_n_0 ),
        .CO({\bram0a[o][o_addr]0_inferred__1/i__carry__3_n_0 ,\bram0a[o][o_addr]0_inferred__1/i__carry__3_n_1 ,\bram0a[o][o_addr]0_inferred__1/i__carry__3_n_2 ,\bram0a[o][o_addr]0_inferred__1/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__3_i_1__0_n_0,i__carry__3_i_2__0_n_0,i__carry__3_i_3__0_n_0,i__carry__3_i_4__0_n_0}),
        .O(in11[20:17]),
        .S({i__carry__3_i_5__0_n_0,i__carry__3_i_6__0_n_0,i__carry__3_i_7__0_n_0,i__carry__3_i_8__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0a[o][o_addr]0_inferred__1/i__carry__4 
       (.CI(\bram0a[o][o_addr]0_inferred__1/i__carry__3_n_0 ),
        .CO({\bram0a[o][o_addr]0_inferred__1/i__carry__4_n_0 ,\bram0a[o][o_addr]0_inferred__1/i__carry__4_n_1 ,\bram0a[o][o_addr]0_inferred__1/i__carry__4_n_2 ,\bram0a[o][o_addr]0_inferred__1/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__4_i_1__0_n_0,i__carry__4_i_2__0_n_0,i__carry__4_i_3__0_n_0,i__carry__4_i_4__0_n_0}),
        .O(in11[24:21]),
        .S({i__carry__4_i_5__0_n_0,i__carry__4_i_6__0_n_0,i__carry__4_i_7__0_n_0,i__carry__4_i_8__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0a[o][o_addr]0_inferred__1/i__carry__5 
       (.CI(\bram0a[o][o_addr]0_inferred__1/i__carry__4_n_0 ),
        .CO({\bram0a[o][o_addr]0_inferred__1/i__carry__5_n_0 ,\bram0a[o][o_addr]0_inferred__1/i__carry__5_n_1 ,\bram0a[o][o_addr]0_inferred__1/i__carry__5_n_2 ,\bram0a[o][o_addr]0_inferred__1/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__5_i_1__0_n_0,i__carry__5_i_2__0_n_0,i__carry__5_i_3__0_n_0,i__carry__5_i_4__0_n_0}),
        .O(in11[28:25]),
        .S({i__carry__5_i_5__0_n_0,i__carry__5_i_6__0_n_0,i__carry__5_i_7__0_n_0,i__carry__5_i_8__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0a[o][o_addr]0_inferred__1/i__carry__6 
       (.CI(\bram0a[o][o_addr]0_inferred__1/i__carry__5_n_0 ),
        .CO({\NLW_bram0a[o][o_addr]0_inferred__1/i__carry__6_CO_UNCONNECTED [3:2],\bram0a[o][o_addr]0_inferred__1/i__carry__6_n_2 ,\bram0a[o][o_addr]0_inferred__1/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry__6_i_1__0_n_0,i__carry__6_i_2__0_n_0}),
        .O({\NLW_bram0a[o][o_addr]0_inferred__1/i__carry__6_O_UNCONNECTED [3],in11[31:29]}),
        .S({1'b0,i__carry__6_i_3__0_n_0,i__carry__6_i_4__0_n_0,i__carry__6_i_5__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0a[o][o_addr]0_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\bram0a[o][o_addr]0_inferred__2/i__carry_n_0 ,\bram0a[o][o_addr]0_inferred__2/i__carry_n_1 ,\bram0a[o][o_addr]0_inferred__2/i__carry_n_2 ,\bram0a[o][o_addr]0_inferred__2/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,\s_ctr_reg_n_0_[2] ,s_out_addr[2:1]}),
        .O({in12[4:2],\NLW_bram0a[o][o_addr]0_inferred__2/i__carry_O_UNCONNECTED [0]}),
        .S({i__carry_i_2__10_n_0,i__carry_i_3__10_n_0,i__carry_i_4__11_n_0,i__carry_i_5__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0a[o][o_addr]0_inferred__2/i__carry__0 
       (.CI(\bram0a[o][o_addr]0_inferred__2/i__carry_n_0 ),
        .CO({\bram0a[o][o_addr]0_inferred__2/i__carry__0_n_0 ,\bram0a[o][o_addr]0_inferred__2/i__carry__0_n_1 ,\bram0a[o][o_addr]0_inferred__2/i__carry__0_n_2 ,\bram0a[o][o_addr]0_inferred__2/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__10_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(in12[8:5]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0a[o][o_addr]0_inferred__2/i__carry__1 
       (.CI(\bram0a[o][o_addr]0_inferred__2/i__carry__0_n_0 ),
        .CO({\bram0a[o][o_addr]0_inferred__2/i__carry__1_n_0 ,\bram0a[o][o_addr]0_inferred__2/i__carry__1_n_1 ,\bram0a[o][o_addr]0_inferred__2/i__carry__1_n_2 ,\bram0a[o][o_addr]0_inferred__2/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}),
        .O(in12[12:9]),
        .S({i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0,i__carry__1_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0a[o][o_addr]0_inferred__2/i__carry__2 
       (.CI(\bram0a[o][o_addr]0_inferred__2/i__carry__1_n_0 ),
        .CO({\bram0a[o][o_addr]0_inferred__2/i__carry__2_n_0 ,\bram0a[o][o_addr]0_inferred__2/i__carry__2_n_1 ,\bram0a[o][o_addr]0_inferred__2/i__carry__2_n_2 ,\bram0a[o][o_addr]0_inferred__2/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}),
        .O(in12[16:13]),
        .S({i__carry__2_i_5_n_0,i__carry__2_i_6_n_0,i__carry__2_i_7_n_0,i__carry__2_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0a[o][o_addr]0_inferred__2/i__carry__3 
       (.CI(\bram0a[o][o_addr]0_inferred__2/i__carry__2_n_0 ),
        .CO({\bram0a[o][o_addr]0_inferred__2/i__carry__3_n_0 ,\bram0a[o][o_addr]0_inferred__2/i__carry__3_n_1 ,\bram0a[o][o_addr]0_inferred__2/i__carry__3_n_2 ,\bram0a[o][o_addr]0_inferred__2/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}),
        .O(in12[20:17]),
        .S({i__carry__3_i_5_n_0,i__carry__3_i_6_n_0,i__carry__3_i_7_n_0,i__carry__3_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0a[o][o_addr]0_inferred__2/i__carry__4 
       (.CI(\bram0a[o][o_addr]0_inferred__2/i__carry__3_n_0 ),
        .CO({\bram0a[o][o_addr]0_inferred__2/i__carry__4_n_0 ,\bram0a[o][o_addr]0_inferred__2/i__carry__4_n_1 ,\bram0a[o][o_addr]0_inferred__2/i__carry__4_n_2 ,\bram0a[o][o_addr]0_inferred__2/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0,i__carry__4_i_4_n_0}),
        .O(in12[24:21]),
        .S({i__carry__4_i_5_n_0,i__carry__4_i_6_n_0,i__carry__4_i_7_n_0,i__carry__4_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0a[o][o_addr]0_inferred__2/i__carry__5 
       (.CI(\bram0a[o][o_addr]0_inferred__2/i__carry__4_n_0 ),
        .CO({\bram0a[o][o_addr]0_inferred__2/i__carry__5_n_0 ,\bram0a[o][o_addr]0_inferred__2/i__carry__5_n_1 ,\bram0a[o][o_addr]0_inferred__2/i__carry__5_n_2 ,\bram0a[o][o_addr]0_inferred__2/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__5_i_1_n_0,i__carry__5_i_2_n_0,i__carry__5_i_3_n_0,i__carry__5_i_4_n_0}),
        .O(in12[28:25]),
        .S({i__carry__5_i_5_n_0,i__carry__5_i_6_n_0,i__carry__5_i_7_n_0,i__carry__5_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0a[o][o_addr]0_inferred__2/i__carry__6 
       (.CI(\bram0a[o][o_addr]0_inferred__2/i__carry__5_n_0 ),
        .CO({\NLW_bram0a[o][o_addr]0_inferred__2/i__carry__6_CO_UNCONNECTED [3:2],\bram0a[o][o_addr]0_inferred__2/i__carry__6_n_2 ,\bram0a[o][o_addr]0_inferred__2/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry__6_i_1_n_0,i__carry__6_i_2_n_0}),
        .O({\NLW_bram0a[o][o_addr]0_inferred__2/i__carry__6_O_UNCONNECTED [3],in12[31:29]}),
        .S({1'b0,i__carry__6_i_3_n_0,i__carry__6_i_4_n_0,i__carry__6_i_5_n_0}));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    \bram0a[o][o_addr][0]_i_1 
       (.I0(s_out_addr[0]),
        .I1(s_state[1]),
        .I2(\bram0a[o][o_addr][1]_i_3_n_0 ),
        .I3(\s_v1_addr_reg_n_0_[0] ),
        .I4(s_state[4]),
        .I5(s_v2_addr[0]),
        .O(\bram0a[o][o_addr][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][10]_i_1 
       (.I0(\bram0a[o][o_addr][10]_i_2_n_0 ),
        .I1(s_state[4]),
        .I2(\bram0b_reg[o][o_addr][12]_i_1_n_6 ),
        .O(\bram0a[o][o_addr][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFBBFFB8008800)) 
    \bram0a[o][o_addr][10]_i_2 
       (.I0(in12[10]),
        .I1(s_state[3]),
        .I2(in11[10]),
        .I3(s_state[1]),
        .I4(s_state[2]),
        .I5(in10[10]),
        .O(\bram0a[o][o_addr][10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][11]_i_1 
       (.I0(\bram0a[o][o_addr][11]_i_2_n_0 ),
        .I1(s_state[4]),
        .I2(\bram0b_reg[o][o_addr][12]_i_1_n_5 ),
        .O(\bram0a[o][o_addr][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFBBFFB8008800)) 
    \bram0a[o][o_addr][11]_i_2 
       (.I0(in12[11]),
        .I1(s_state[3]),
        .I2(in11[11]),
        .I3(s_state[1]),
        .I4(s_state[2]),
        .I5(in10[11]),
        .O(\bram0a[o][o_addr][11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][12]_i_1 
       (.I0(\bram0a[o][o_addr][12]_i_2_n_0 ),
        .I1(s_state[4]),
        .I2(\bram0b_reg[o][o_addr][12]_i_1_n_4 ),
        .O(\bram0a[o][o_addr][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFBBFFB8008800)) 
    \bram0a[o][o_addr][12]_i_2 
       (.I0(in12[12]),
        .I1(s_state[3]),
        .I2(in11[12]),
        .I3(s_state[1]),
        .I4(s_state[2]),
        .I5(in10[12]),
        .O(\bram0a[o][o_addr][12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][13]_i_1 
       (.I0(\bram0a[o][o_addr][13]_i_2_n_0 ),
        .I1(s_state[4]),
        .I2(\bram0b_reg[o][o_addr][16]_i_1_n_7 ),
        .O(\bram0a[o][o_addr][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFBBFFB8008800)) 
    \bram0a[o][o_addr][13]_i_2 
       (.I0(in12[13]),
        .I1(s_state[3]),
        .I2(in11[13]),
        .I3(s_state[1]),
        .I4(s_state[2]),
        .I5(in10[13]),
        .O(\bram0a[o][o_addr][13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][14]_i_1 
       (.I0(\bram0a[o][o_addr][14]_i_2_n_0 ),
        .I1(s_state[4]),
        .I2(\bram0b_reg[o][o_addr][16]_i_1_n_6 ),
        .O(\bram0a[o][o_addr][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFBBFFB8008800)) 
    \bram0a[o][o_addr][14]_i_2 
       (.I0(in12[14]),
        .I1(s_state[3]),
        .I2(in11[14]),
        .I3(s_state[1]),
        .I4(s_state[2]),
        .I5(in10[14]),
        .O(\bram0a[o][o_addr][14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][15]_i_1 
       (.I0(\bram0a[o][o_addr][15]_i_2_n_0 ),
        .I1(s_state[4]),
        .I2(\bram0b_reg[o][o_addr][16]_i_1_n_5 ),
        .O(\bram0a[o][o_addr][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFBBFFB8008800)) 
    \bram0a[o][o_addr][15]_i_2 
       (.I0(in12[15]),
        .I1(s_state[3]),
        .I2(in11[15]),
        .I3(s_state[1]),
        .I4(s_state[2]),
        .I5(in10[15]),
        .O(\bram0a[o][o_addr][15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][16]_i_1 
       (.I0(\bram0a[o][o_addr][16]_i_2_n_0 ),
        .I1(s_state[4]),
        .I2(\bram0b_reg[o][o_addr][16]_i_1_n_4 ),
        .O(\bram0a[o][o_addr][16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFBBFFB8008800)) 
    \bram0a[o][o_addr][16]_i_2 
       (.I0(in12[16]),
        .I1(s_state[3]),
        .I2(in11[16]),
        .I3(s_state[1]),
        .I4(s_state[2]),
        .I5(in10[16]),
        .O(\bram0a[o][o_addr][16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][17]_i_1 
       (.I0(\bram0a[o][o_addr][17]_i_2_n_0 ),
        .I1(s_state[4]),
        .I2(\bram0b_reg[o][o_addr][20]_i_1_n_7 ),
        .O(\bram0a[o][o_addr][17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFBBFFB8008800)) 
    \bram0a[o][o_addr][17]_i_2 
       (.I0(in12[17]),
        .I1(s_state[3]),
        .I2(in11[17]),
        .I3(s_state[1]),
        .I4(s_state[2]),
        .I5(in10[17]),
        .O(\bram0a[o][o_addr][17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][18]_i_1 
       (.I0(\bram0a[o][o_addr][18]_i_2_n_0 ),
        .I1(s_state[4]),
        .I2(\bram0b_reg[o][o_addr][20]_i_1_n_6 ),
        .O(\bram0a[o][o_addr][18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFBBFFB8008800)) 
    \bram0a[o][o_addr][18]_i_2 
       (.I0(in12[18]),
        .I1(s_state[3]),
        .I2(in11[18]),
        .I3(s_state[1]),
        .I4(s_state[2]),
        .I5(in10[18]),
        .O(\bram0a[o][o_addr][18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][19]_i_1 
       (.I0(\bram0a[o][o_addr][19]_i_2_n_0 ),
        .I1(s_state[4]),
        .I2(\bram0b_reg[o][o_addr][20]_i_1_n_5 ),
        .O(\bram0a[o][o_addr][19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFBBFFB8008800)) 
    \bram0a[o][o_addr][19]_i_2 
       (.I0(in12[19]),
        .I1(s_state[3]),
        .I2(in11[19]),
        .I3(s_state[1]),
        .I4(s_state[2]),
        .I5(in10[19]),
        .O(\bram0a[o][o_addr][19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    \bram0a[o][o_addr][1]_i_1 
       (.I0(in11[1]),
        .I1(s_state[1]),
        .I2(\bram0a[o][o_addr][1]_i_3_n_0 ),
        .I3(in10[1]),
        .I4(s_state[4]),
        .I5(\bram0b[o][o_addr][1]_i_1_n_0 ),
        .O(\bram0a[o][o_addr][1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0a[o][o_addr][1]_i_2 
       (.I0(s_out_addr[1]),
        .I1(\s_ctr_reg_n_0_[1] ),
        .O(in11[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][1]_i_3 
       (.I0(s_state[1]),
        .I1(s_state[3]),
        .I2(s_state[2]),
        .O(\bram0a[o][o_addr][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bram0a[o][o_addr][1]_i_4 
       (.I0(\s_v1_addr_reg_n_0_[1] ),
        .I1(\s_ctr_reg_n_0_[1] ),
        .O(in10[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][20]_i_1 
       (.I0(\bram0a[o][o_addr][20]_i_2_n_0 ),
        .I1(s_state[4]),
        .I2(\bram0b_reg[o][o_addr][20]_i_1_n_4 ),
        .O(\bram0a[o][o_addr][20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFBBFFB8008800)) 
    \bram0a[o][o_addr][20]_i_2 
       (.I0(in12[20]),
        .I1(s_state[3]),
        .I2(in11[20]),
        .I3(s_state[1]),
        .I4(s_state[2]),
        .I5(in10[20]),
        .O(\bram0a[o][o_addr][20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][21]_i_1 
       (.I0(\bram0a[o][o_addr][21]_i_2_n_0 ),
        .I1(s_state[4]),
        .I2(\bram0b_reg[o][o_addr][24]_i_1_n_7 ),
        .O(\bram0a[o][o_addr][21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFBBFFB8008800)) 
    \bram0a[o][o_addr][21]_i_2 
       (.I0(in12[21]),
        .I1(s_state[3]),
        .I2(in11[21]),
        .I3(s_state[1]),
        .I4(s_state[2]),
        .I5(in10[21]),
        .O(\bram0a[o][o_addr][21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][22]_i_1 
       (.I0(\bram0a[o][o_addr][22]_i_2_n_0 ),
        .I1(s_state[4]),
        .I2(\bram0b_reg[o][o_addr][24]_i_1_n_6 ),
        .O(\bram0a[o][o_addr][22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFBBFFB8008800)) 
    \bram0a[o][o_addr][22]_i_2 
       (.I0(in12[22]),
        .I1(s_state[3]),
        .I2(in11[22]),
        .I3(s_state[1]),
        .I4(s_state[2]),
        .I5(in10[22]),
        .O(\bram0a[o][o_addr][22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][23]_i_1 
       (.I0(\bram0a[o][o_addr][23]_i_2_n_0 ),
        .I1(s_state[4]),
        .I2(\bram0b_reg[o][o_addr][24]_i_1_n_5 ),
        .O(\bram0a[o][o_addr][23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFBBFFB8008800)) 
    \bram0a[o][o_addr][23]_i_2 
       (.I0(in12[23]),
        .I1(s_state[3]),
        .I2(in11[23]),
        .I3(s_state[1]),
        .I4(s_state[2]),
        .I5(in10[23]),
        .O(\bram0a[o][o_addr][23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][24]_i_1 
       (.I0(\bram0a[o][o_addr][24]_i_2_n_0 ),
        .I1(s_state[4]),
        .I2(\bram0b_reg[o][o_addr][24]_i_1_n_4 ),
        .O(\bram0a[o][o_addr][24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFBBFFB8008800)) 
    \bram0a[o][o_addr][24]_i_2 
       (.I0(in12[24]),
        .I1(s_state[3]),
        .I2(in11[24]),
        .I3(s_state[1]),
        .I4(s_state[2]),
        .I5(in10[24]),
        .O(\bram0a[o][o_addr][24]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][25]_i_1 
       (.I0(\bram0a[o][o_addr][25]_i_2_n_0 ),
        .I1(s_state[4]),
        .I2(\bram0b_reg[o][o_addr][28]_i_1_n_7 ),
        .O(\bram0a[o][o_addr][25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFBBFFB8008800)) 
    \bram0a[o][o_addr][25]_i_2 
       (.I0(in12[25]),
        .I1(s_state[3]),
        .I2(in11[25]),
        .I3(s_state[1]),
        .I4(s_state[2]),
        .I5(in10[25]),
        .O(\bram0a[o][o_addr][25]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][26]_i_1 
       (.I0(\bram0a[o][o_addr][26]_i_2_n_0 ),
        .I1(s_state[4]),
        .I2(\bram0b_reg[o][o_addr][28]_i_1_n_6 ),
        .O(\bram0a[o][o_addr][26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFBBFFB8008800)) 
    \bram0a[o][o_addr][26]_i_2 
       (.I0(in12[26]),
        .I1(s_state[3]),
        .I2(in11[26]),
        .I3(s_state[1]),
        .I4(s_state[2]),
        .I5(in10[26]),
        .O(\bram0a[o][o_addr][26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][27]_i_1 
       (.I0(\bram0a[o][o_addr][27]_i_2_n_0 ),
        .I1(s_state[4]),
        .I2(\bram0b_reg[o][o_addr][28]_i_1_n_5 ),
        .O(\bram0a[o][o_addr][27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFBBFFB8008800)) 
    \bram0a[o][o_addr][27]_i_2 
       (.I0(in12[27]),
        .I1(s_state[3]),
        .I2(in11[27]),
        .I3(s_state[1]),
        .I4(s_state[2]),
        .I5(in10[27]),
        .O(\bram0a[o][o_addr][27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][28]_i_1 
       (.I0(\bram0a[o][o_addr][28]_i_2_n_0 ),
        .I1(s_state[4]),
        .I2(\bram0b_reg[o][o_addr][28]_i_1_n_4 ),
        .O(\bram0a[o][o_addr][28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFBBFFB8008800)) 
    \bram0a[o][o_addr][28]_i_2 
       (.I0(in12[28]),
        .I1(s_state[3]),
        .I2(in11[28]),
        .I3(s_state[1]),
        .I4(s_state[2]),
        .I5(in10[28]),
        .O(\bram0a[o][o_addr][28]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][29]_i_1 
       (.I0(\bram0a[o][o_addr][29]_i_2_n_0 ),
        .I1(s_state[4]),
        .I2(\bram0b_reg[o][o_addr][31]_i_2_n_7 ),
        .O(\bram0a[o][o_addr][29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFBBFFB8008800)) 
    \bram0a[o][o_addr][29]_i_2 
       (.I0(in12[29]),
        .I1(s_state[3]),
        .I2(in11[29]),
        .I3(s_state[1]),
        .I4(s_state[2]),
        .I5(in10[29]),
        .O(\bram0a[o][o_addr][29]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][2]_i_1 
       (.I0(\bram0a[o][o_addr][2]_i_2_n_0 ),
        .I1(s_state[4]),
        .I2(\bram0b_reg[o][o_addr][4]_i_1_n_6 ),
        .O(\bram0a[o][o_addr][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFBBFFB8008800)) 
    \bram0a[o][o_addr][2]_i_2 
       (.I0(in12[2]),
        .I1(s_state[3]),
        .I2(in11[2]),
        .I3(s_state[1]),
        .I4(s_state[2]),
        .I5(in10[2]),
        .O(\bram0a[o][o_addr][2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][30]_i_1 
       (.I0(\bram0a[o][o_addr][30]_i_2_n_0 ),
        .I1(s_state[4]),
        .I2(\bram0b_reg[o][o_addr][31]_i_2_n_6 ),
        .O(\bram0a[o][o_addr][30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFBBFFB8008800)) 
    \bram0a[o][o_addr][30]_i_2 
       (.I0(in12[30]),
        .I1(s_state[3]),
        .I2(in11[30]),
        .I3(s_state[1]),
        .I4(s_state[2]),
        .I5(in10[30]),
        .O(\bram0a[o][o_addr][30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5C065C0418040804)) 
    \bram0a[o][o_addr][31]_i_1 
       (.I0(s_state[2]),
        .I1(s_state[0]),
        .I2(s_state[3]),
        .I3(s_state[4]),
        .I4(\bram0a[o][o_addr][31]_i_3_n_0 ),
        .I5(s_state[1]),
        .O(\bram0a[o][o_addr][31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bram0a[o][o_addr][31]_i_10 
       (.I0(\s_ctr_reg_n_0_[19] ),
        .I1(\s_ctr_reg_n_0_[20] ),
        .I2(\s_ctr_reg_n_0_[13] ),
        .I3(\s_ctr_reg_n_0_[21] ),
        .O(\bram0a[o][o_addr][31]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][31]_i_2 
       (.I0(\bram0a[o][o_addr][31]_i_4_n_0 ),
        .I1(s_state[4]),
        .I2(\bram0b_reg[o][o_addr][31]_i_2_n_5 ),
        .O(\bram0a[o][o_addr][31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \bram0a[o][o_addr][31]_i_3 
       (.I0(\bram0a[o][o_addr][31]_i_5_n_0 ),
        .I1(\s_ctr_reg_n_0_[6] ),
        .I2(\s_ctr_reg_n_0_[10] ),
        .I3(\s_ctr_reg_n_0_[24] ),
        .I4(\bram0a[o][o_addr][31]_i_6_n_0 ),
        .I5(\bram0a[o][o_addr][31]_i_7_n_0 ),
        .O(\bram0a[o][o_addr][31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFBBFFB8008800)) 
    \bram0a[o][o_addr][31]_i_4 
       (.I0(in12[31]),
        .I1(s_state[3]),
        .I2(in11[31]),
        .I3(s_state[1]),
        .I4(s_state[2]),
        .I5(in10[31]),
        .O(\bram0a[o][o_addr][31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \bram0a[o][o_addr][31]_i_5 
       (.I0(\s_ctr_reg_n_0_[30] ),
        .I1(\s_ctr_reg_n_0_[22] ),
        .I2(\s_ctr_reg_n_0_[11] ),
        .I3(\s_ctr_reg_n_0_[7] ),
        .I4(\bram0a[o][o_addr][31]_i_8_n_0 ),
        .O(\bram0a[o][o_addr][31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bram0a[o][o_addr][31]_i_6 
       (.I0(\bram0a[o][o_addr][31]_i_9_n_0 ),
        .I1(\bram0a[o][o_addr][31]_i_10_n_0 ),
        .I2(\s_ctr_reg_n_0_[12] ),
        .I3(\s_ctr_reg_n_0_[27] ),
        .I4(\s_ctr_reg_n_0_[18] ),
        .I5(\s_ctr_reg_n_0_[23] ),
        .O(\bram0a[o][o_addr][31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hE0000000)) 
    \bram0a[o][o_addr][31]_i_7 
       (.I0(\s_ctr_reg_n_0_[1] ),
        .I1(\s_ctr_reg_n_0_[2] ),
        .I2(\s_ctr_reg_n_0_[3] ),
        .I3(\s_ctr_reg_n_0_[5] ),
        .I4(\s_ctr_reg_n_0_[4] ),
        .O(\bram0a[o][o_addr][31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bram0a[o][o_addr][31]_i_8 
       (.I0(\s_ctr_reg_n_0_[16] ),
        .I1(\s_ctr_reg_n_0_[17] ),
        .I2(\s_ctr_reg_n_0_[25] ),
        .I3(\s_ctr_reg_n_0_[26] ),
        .O(\bram0a[o][o_addr][31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bram0a[o][o_addr][31]_i_9 
       (.I0(\s_ctr_reg_n_0_[28] ),
        .I1(\s_ctr_reg_n_0_[29] ),
        .I2(\s_ctr_reg_n_0_[15] ),
        .I3(\s_ctr_reg_n_0_[14] ),
        .I4(\s_ctr_reg_n_0_[9] ),
        .I5(\s_ctr_reg_n_0_[8] ),
        .O(\bram0a[o][o_addr][31]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][3]_i_1 
       (.I0(\bram0a[o][o_addr][3]_i_2_n_0 ),
        .I1(s_state[4]),
        .I2(\bram0b_reg[o][o_addr][4]_i_1_n_5 ),
        .O(\bram0a[o][o_addr][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFBBFFB8008800)) 
    \bram0a[o][o_addr][3]_i_2 
       (.I0(in12[3]),
        .I1(s_state[3]),
        .I2(in11[3]),
        .I3(s_state[1]),
        .I4(s_state[2]),
        .I5(in10[3]),
        .O(\bram0a[o][o_addr][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][4]_i_1 
       (.I0(\bram0a[o][o_addr][4]_i_2_n_0 ),
        .I1(s_state[4]),
        .I2(\bram0b_reg[o][o_addr][4]_i_1_n_4 ),
        .O(\bram0a[o][o_addr][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFBBFFB8008800)) 
    \bram0a[o][o_addr][4]_i_2 
       (.I0(in12[4]),
        .I1(s_state[3]),
        .I2(in11[4]),
        .I3(s_state[1]),
        .I4(s_state[2]),
        .I5(in10[4]),
        .O(\bram0a[o][o_addr][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][5]_i_1 
       (.I0(\bram0a[o][o_addr][5]_i_2_n_0 ),
        .I1(s_state[4]),
        .I2(\bram0b_reg[o][o_addr][8]_i_1_n_7 ),
        .O(\bram0a[o][o_addr][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFBBFFB8008800)) 
    \bram0a[o][o_addr][5]_i_2 
       (.I0(in12[5]),
        .I1(s_state[3]),
        .I2(in11[5]),
        .I3(s_state[1]),
        .I4(s_state[2]),
        .I5(in10[5]),
        .O(\bram0a[o][o_addr][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][6]_i_1 
       (.I0(\bram0a[o][o_addr][6]_i_2_n_0 ),
        .I1(s_state[4]),
        .I2(\bram0b_reg[o][o_addr][8]_i_1_n_6 ),
        .O(\bram0a[o][o_addr][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFBBFFB8008800)) 
    \bram0a[o][o_addr][6]_i_2 
       (.I0(in12[6]),
        .I1(s_state[3]),
        .I2(in11[6]),
        .I3(s_state[1]),
        .I4(s_state[2]),
        .I5(in10[6]),
        .O(\bram0a[o][o_addr][6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][7]_i_1 
       (.I0(\bram0a[o][o_addr][7]_i_2_n_0 ),
        .I1(s_state[4]),
        .I2(\bram0b_reg[o][o_addr][8]_i_1_n_5 ),
        .O(\bram0a[o][o_addr][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFBBFFB8008800)) 
    \bram0a[o][o_addr][7]_i_2 
       (.I0(in12[7]),
        .I1(s_state[3]),
        .I2(in11[7]),
        .I3(s_state[1]),
        .I4(s_state[2]),
        .I5(in10[7]),
        .O(\bram0a[o][o_addr][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][8]_i_1 
       (.I0(\bram0a[o][o_addr][8]_i_2_n_0 ),
        .I1(s_state[4]),
        .I2(\bram0b_reg[o][o_addr][8]_i_1_n_4 ),
        .O(\bram0a[o][o_addr][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFBBFFB8008800)) 
    \bram0a[o][o_addr][8]_i_2 
       (.I0(in12[8]),
        .I1(s_state[3]),
        .I2(in11[8]),
        .I3(s_state[1]),
        .I4(s_state[2]),
        .I5(in10[8]),
        .O(\bram0a[o][o_addr][8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][9]_i_1 
       (.I0(\bram0a[o][o_addr][9]_i_2_n_0 ),
        .I1(s_state[4]),
        .I2(\bram0b_reg[o][o_addr][12]_i_1_n_7 ),
        .O(\bram0a[o][o_addr][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFBBFFB8008800)) 
    \bram0a[o][o_addr][9]_i_2 
       (.I0(in12[9]),
        .I1(s_state[3]),
        .I2(in11[9]),
        .I3(s_state[1]),
        .I4(s_state[2]),
        .I5(in10[9]),
        .O(\bram0a[o][o_addr][9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \bram0a[o][o_din][0]_i_1 
       (.I0(tmp1[0]),
        .I1(s_state[0]),
        .I2(s_state[3]),
        .I3(\tmp2_reg_n_0_[0] ),
        .O(\bram0a[o][o_din][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \bram0a[o][o_din][10]_i_1 
       (.I0(tmp1[10]),
        .I1(s_state[0]),
        .I2(s_state[3]),
        .I3(\tmp2_reg_n_0_[10] ),
        .O(\bram0a[o][o_din][10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \bram0a[o][o_din][11]_i_1 
       (.I0(tmp1[11]),
        .I1(s_state[0]),
        .I2(s_state[3]),
        .I3(\tmp2_reg_n_0_[11] ),
        .O(\bram0a[o][o_din][11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \bram0a[o][o_din][12]_i_1 
       (.I0(tmp1[12]),
        .I1(s_state[0]),
        .I2(s_state[3]),
        .I3(\tmp2_reg_n_0_[12] ),
        .O(\bram0a[o][o_din][12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \bram0a[o][o_din][16]_i_1 
       (.I0(tmp1[16]),
        .I1(s_state[0]),
        .I2(s_state[3]),
        .I3(\tmp2_reg_n_0_[16] ),
        .O(\bram0a[o][o_din][16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \bram0a[o][o_din][17]_i_1 
       (.I0(tmp1[17]),
        .I1(s_state[0]),
        .I2(s_state[3]),
        .I3(\tmp2_reg_n_0_[17] ),
        .O(\bram0a[o][o_din][17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \bram0a[o][o_din][18]_i_1 
       (.I0(tmp1[18]),
        .I1(s_state[0]),
        .I2(s_state[3]),
        .I3(\tmp2_reg_n_0_[18] ),
        .O(\bram0a[o][o_din][18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \bram0a[o][o_din][19]_i_1 
       (.I0(tmp1[19]),
        .I1(s_state[0]),
        .I2(s_state[3]),
        .I3(\tmp2_reg_n_0_[19] ),
        .O(\bram0a[o][o_din][19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \bram0a[o][o_din][1]_i_1 
       (.I0(tmp1[1]),
        .I1(s_state[0]),
        .I2(s_state[3]),
        .I3(\tmp2_reg_n_0_[1] ),
        .O(\bram0a[o][o_din][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \bram0a[o][o_din][20]_i_1 
       (.I0(tmp1[20]),
        .I1(s_state[0]),
        .I2(s_state[3]),
        .I3(\tmp2_reg_n_0_[20] ),
        .O(\bram0a[o][o_din][20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \bram0a[o][o_din][24]_i_1 
       (.I0(tmp1[24]),
        .I1(s_state[0]),
        .I2(s_state[3]),
        .I3(\tmp2_reg_n_0_[24] ),
        .O(\bram0a[o][o_din][24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \bram0a[o][o_din][25]_i_1 
       (.I0(tmp1[25]),
        .I1(s_state[0]),
        .I2(s_state[3]),
        .I3(\tmp2_reg_n_0_[25] ),
        .O(\bram0a[o][o_din][25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \bram0a[o][o_din][26]_i_1 
       (.I0(tmp1[26]),
        .I1(s_state[0]),
        .I2(s_state[3]),
        .I3(\tmp2_reg_n_0_[26] ),
        .O(\bram0a[o][o_din][26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \bram0a[o][o_din][27]_i_1 
       (.I0(tmp1[27]),
        .I1(s_state[0]),
        .I2(s_state[3]),
        .I3(\tmp2_reg_n_0_[27] ),
        .O(\bram0a[o][o_din][27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08008080)) 
    \bram0a[o][o_din][28]_i_1 
       (.I0(s_state[4]),
        .I1(s_state[1]),
        .I2(s_state[3]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .O(\bram0a[o][o_din][28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \bram0a[o][o_din][28]_i_2 
       (.I0(tmp1[28]),
        .I1(s_state[0]),
        .I2(s_state[3]),
        .I3(\tmp2_reg_n_0_[28] ),
        .O(\bram0a[o][o_din][28]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \bram0a[o][o_din][2]_i_1 
       (.I0(tmp1[2]),
        .I1(s_state[0]),
        .I2(s_state[3]),
        .I3(\tmp2_reg_n_0_[2] ),
        .O(\bram0a[o][o_din][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \bram0a[o][o_din][3]_i_1 
       (.I0(tmp1[3]),
        .I1(s_state[0]),
        .I2(s_state[3]),
        .I3(\tmp2_reg_n_0_[3] ),
        .O(\bram0a[o][o_din][3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \bram0a[o][o_din][4]_i_1 
       (.I0(tmp1[4]),
        .I1(s_state[0]),
        .I2(s_state[3]),
        .I3(\tmp2_reg_n_0_[4] ),
        .O(\bram0a[o][o_din][4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \bram0a[o][o_din][8]_i_1 
       (.I0(tmp1[8]),
        .I1(s_state[0]),
        .I2(s_state[3]),
        .I3(\tmp2_reg_n_0_[8] ),
        .O(\bram0a[o][o_din][8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \bram0a[o][o_din][9]_i_1 
       (.I0(tmp1[9]),
        .I1(s_state[0]),
        .I2(s_state[3]),
        .I3(\tmp2_reg_n_0_[9] ),
        .O(\bram0a[o][o_din][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFDE00090000)) 
    \bram0a[o][o_en]_i_1 
       (.I0(s_state[1]),
        .I1(s_state[4]),
        .I2(s_state[3]),
        .I3(s_state[2]),
        .I4(s_state[0]),
        .I5(o_mema_en),
        .O(\bram0a[o][o_en]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBECBFE40804000)) 
    \bram0a[o][o_we][3]_i_1 
       (.I0(s_state[2]),
        .I1(s_state[1]),
        .I2(s_state[4]),
        .I3(s_state[3]),
        .I4(s_state[0]),
        .I5(o_mema_we),
        .O(\bram0a[o][o_we][3]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][0] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][0]_i_1_n_0 ),
        .Q(o_mema_addr[0]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][10] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][10]_i_1_n_0 ),
        .Q(o_mema_addr[10]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][11] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][11]_i_1_n_0 ),
        .Q(o_mema_addr[11]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][12] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][12]_i_1_n_0 ),
        .Q(o_mema_addr[12]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][13] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][13]_i_1_n_0 ),
        .Q(o_mema_addr[13]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][14] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][14]_i_1_n_0 ),
        .Q(o_mema_addr[14]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][15] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][15]_i_1_n_0 ),
        .Q(o_mema_addr[15]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][16] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][16]_i_1_n_0 ),
        .Q(o_mema_addr[16]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][17] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][17]_i_1_n_0 ),
        .Q(o_mema_addr[17]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][18] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][18]_i_1_n_0 ),
        .Q(o_mema_addr[18]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][19] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][19]_i_1_n_0 ),
        .Q(o_mema_addr[19]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][1] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][1]_i_1_n_0 ),
        .Q(o_mema_addr[1]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][20] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][20]_i_1_n_0 ),
        .Q(o_mema_addr[20]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][21] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][21]_i_1_n_0 ),
        .Q(o_mema_addr[21]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][22] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][22]_i_1_n_0 ),
        .Q(o_mema_addr[22]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][23] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][23]_i_1_n_0 ),
        .Q(o_mema_addr[23]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][24] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][24]_i_1_n_0 ),
        .Q(o_mema_addr[24]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][25] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][25]_i_1_n_0 ),
        .Q(o_mema_addr[25]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][26] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][26]_i_1_n_0 ),
        .Q(o_mema_addr[26]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][27] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][27]_i_1_n_0 ),
        .Q(o_mema_addr[27]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][28] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][28]_i_1_n_0 ),
        .Q(o_mema_addr[28]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][29] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][29]_i_1_n_0 ),
        .Q(o_mema_addr[29]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][2] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][2]_i_1_n_0 ),
        .Q(o_mema_addr[2]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][30] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][30]_i_1_n_0 ),
        .Q(o_mema_addr[30]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][31] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][31]_i_2_n_0 ),
        .Q(o_mema_addr[31]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][3] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][3]_i_1_n_0 ),
        .Q(o_mema_addr[3]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][4] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][4]_i_1_n_0 ),
        .Q(o_mema_addr[4]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][5] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][5]_i_1_n_0 ),
        .Q(o_mema_addr[5]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][6] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][6]_i_1_n_0 ),
        .Q(o_mema_addr[6]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][7] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][7]_i_1_n_0 ),
        .Q(o_mema_addr[7]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][8] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][8]_i_1_n_0 ),
        .Q(o_mema_addr[8]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][9] 
       (.C(i_clk),
        .CE(\bram0a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram0a[o][o_addr][9]_i_1_n_0 ),
        .Q(o_mema_addr[9]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][0] 
       (.C(i_clk),
        .CE(\bram0a[o][o_din][28]_i_1_n_0 ),
        .D(\bram0a[o][o_din][0]_i_1_n_0 ),
        .Q(o_mema_din[0]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][10] 
       (.C(i_clk),
        .CE(\bram0a[o][o_din][28]_i_1_n_0 ),
        .D(\bram0a[o][o_din][10]_i_1_n_0 ),
        .Q(o_mema_din[7]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][11] 
       (.C(i_clk),
        .CE(\bram0a[o][o_din][28]_i_1_n_0 ),
        .D(\bram0a[o][o_din][11]_i_1_n_0 ),
        .Q(o_mema_din[8]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][12] 
       (.C(i_clk),
        .CE(\bram0a[o][o_din][28]_i_1_n_0 ),
        .D(\bram0a[o][o_din][12]_i_1_n_0 ),
        .Q(o_mema_din[9]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][16] 
       (.C(i_clk),
        .CE(\bram0a[o][o_din][28]_i_1_n_0 ),
        .D(\bram0a[o][o_din][16]_i_1_n_0 ),
        .Q(o_mema_din[10]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][17] 
       (.C(i_clk),
        .CE(\bram0a[o][o_din][28]_i_1_n_0 ),
        .D(\bram0a[o][o_din][17]_i_1_n_0 ),
        .Q(o_mema_din[11]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][18] 
       (.C(i_clk),
        .CE(\bram0a[o][o_din][28]_i_1_n_0 ),
        .D(\bram0a[o][o_din][18]_i_1_n_0 ),
        .Q(o_mema_din[12]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][19] 
       (.C(i_clk),
        .CE(\bram0a[o][o_din][28]_i_1_n_0 ),
        .D(\bram0a[o][o_din][19]_i_1_n_0 ),
        .Q(o_mema_din[13]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][1] 
       (.C(i_clk),
        .CE(\bram0a[o][o_din][28]_i_1_n_0 ),
        .D(\bram0a[o][o_din][1]_i_1_n_0 ),
        .Q(o_mema_din[1]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][20] 
       (.C(i_clk),
        .CE(\bram0a[o][o_din][28]_i_1_n_0 ),
        .D(\bram0a[o][o_din][20]_i_1_n_0 ),
        .Q(o_mema_din[14]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][24] 
       (.C(i_clk),
        .CE(\bram0a[o][o_din][28]_i_1_n_0 ),
        .D(\bram0a[o][o_din][24]_i_1_n_0 ),
        .Q(o_mema_din[15]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][25] 
       (.C(i_clk),
        .CE(\bram0a[o][o_din][28]_i_1_n_0 ),
        .D(\bram0a[o][o_din][25]_i_1_n_0 ),
        .Q(o_mema_din[16]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][26] 
       (.C(i_clk),
        .CE(\bram0a[o][o_din][28]_i_1_n_0 ),
        .D(\bram0a[o][o_din][26]_i_1_n_0 ),
        .Q(o_mema_din[17]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][27] 
       (.C(i_clk),
        .CE(\bram0a[o][o_din][28]_i_1_n_0 ),
        .D(\bram0a[o][o_din][27]_i_1_n_0 ),
        .Q(o_mema_din[18]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][28] 
       (.C(i_clk),
        .CE(\bram0a[o][o_din][28]_i_1_n_0 ),
        .D(\bram0a[o][o_din][28]_i_2_n_0 ),
        .Q(o_mema_din[19]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][2] 
       (.C(i_clk),
        .CE(\bram0a[o][o_din][28]_i_1_n_0 ),
        .D(\bram0a[o][o_din][2]_i_1_n_0 ),
        .Q(o_mema_din[2]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][3] 
       (.C(i_clk),
        .CE(\bram0a[o][o_din][28]_i_1_n_0 ),
        .D(\bram0a[o][o_din][3]_i_1_n_0 ),
        .Q(o_mema_din[3]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][4] 
       (.C(i_clk),
        .CE(\bram0a[o][o_din][28]_i_1_n_0 ),
        .D(\bram0a[o][o_din][4]_i_1_n_0 ),
        .Q(o_mema_din[4]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][8] 
       (.C(i_clk),
        .CE(\bram0a[o][o_din][28]_i_1_n_0 ),
        .D(\bram0a[o][o_din][8]_i_1_n_0 ),
        .Q(o_mema_din[5]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][9] 
       (.C(i_clk),
        .CE(\bram0a[o][o_din][28]_i_1_n_0 ),
        .D(\bram0a[o][o_din][9]_i_1_n_0 ),
        .Q(o_mema_din[6]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA EN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_en] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\bram0a[o][o_en]_i_1_n_0 ),
        .Q(o_mema_en),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA WE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_we][3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\bram0a[o][o_we][3]_i_1_n_0 ),
        .Q(o_mema_we),
        .R(rst));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_addr][12]_i_2 
       (.I0(s_v2_addr[12]),
        .I1(\s_ctr_reg_n_0_[12] ),
        .O(\bram0b[o][o_addr][12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_addr][12]_i_3 
       (.I0(s_v2_addr[11]),
        .I1(\s_ctr_reg_n_0_[11] ),
        .O(\bram0b[o][o_addr][12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_addr][12]_i_4 
       (.I0(s_v2_addr[10]),
        .I1(\s_ctr_reg_n_0_[10] ),
        .O(\bram0b[o][o_addr][12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_addr][12]_i_5 
       (.I0(s_v2_addr[9]),
        .I1(\s_ctr_reg_n_0_[9] ),
        .O(\bram0b[o][o_addr][12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_addr][16]_i_2 
       (.I0(s_v2_addr[16]),
        .I1(\s_ctr_reg_n_0_[16] ),
        .O(\bram0b[o][o_addr][16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_addr][16]_i_3 
       (.I0(s_v2_addr[15]),
        .I1(\s_ctr_reg_n_0_[15] ),
        .O(\bram0b[o][o_addr][16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_addr][16]_i_4 
       (.I0(s_v2_addr[14]),
        .I1(\s_ctr_reg_n_0_[14] ),
        .O(\bram0b[o][o_addr][16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_addr][16]_i_5 
       (.I0(s_v2_addr[13]),
        .I1(\s_ctr_reg_n_0_[13] ),
        .O(\bram0b[o][o_addr][16]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_addr][1]_i_1 
       (.I0(s_v2_addr[1]),
        .I1(\s_ctr_reg_n_0_[1] ),
        .O(\bram0b[o][o_addr][1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_addr][20]_i_2 
       (.I0(s_v2_addr[20]),
        .I1(\s_ctr_reg_n_0_[20] ),
        .O(\bram0b[o][o_addr][20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_addr][20]_i_3 
       (.I0(s_v2_addr[19]),
        .I1(\s_ctr_reg_n_0_[19] ),
        .O(\bram0b[o][o_addr][20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_addr][20]_i_4 
       (.I0(s_v2_addr[18]),
        .I1(\s_ctr_reg_n_0_[18] ),
        .O(\bram0b[o][o_addr][20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_addr][20]_i_5 
       (.I0(s_v2_addr[17]),
        .I1(\s_ctr_reg_n_0_[17] ),
        .O(\bram0b[o][o_addr][20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_addr][24]_i_2 
       (.I0(s_v2_addr[24]),
        .I1(\s_ctr_reg_n_0_[24] ),
        .O(\bram0b[o][o_addr][24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_addr][24]_i_3 
       (.I0(s_v2_addr[23]),
        .I1(\s_ctr_reg_n_0_[23] ),
        .O(\bram0b[o][o_addr][24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_addr][24]_i_4 
       (.I0(s_v2_addr[22]),
        .I1(\s_ctr_reg_n_0_[22] ),
        .O(\bram0b[o][o_addr][24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_addr][24]_i_5 
       (.I0(s_v2_addr[21]),
        .I1(\s_ctr_reg_n_0_[21] ),
        .O(\bram0b[o][o_addr][24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_addr][28]_i_2 
       (.I0(s_v2_addr[28]),
        .I1(\s_ctr_reg_n_0_[28] ),
        .O(\bram0b[o][o_addr][28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_addr][28]_i_3 
       (.I0(s_v2_addr[27]),
        .I1(\s_ctr_reg_n_0_[27] ),
        .O(\bram0b[o][o_addr][28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_addr][28]_i_4 
       (.I0(s_v2_addr[26]),
        .I1(\s_ctr_reg_n_0_[26] ),
        .O(\bram0b[o][o_addr][28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_addr][28]_i_5 
       (.I0(s_v2_addr[25]),
        .I1(\s_ctr_reg_n_0_[25] ),
        .O(\bram0b[o][o_addr][28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0050500800000000)) 
    \bram0b[o][o_addr][31]_i_1 
       (.I0(s_state[3]),
        .I1(\bram0a[o][o_addr][31]_i_3_n_0 ),
        .I2(s_state[0]),
        .I3(s_state[2]),
        .I4(s_state[1]),
        .I5(s_state[4]),
        .O(\bram0b[o][o_addr] ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_addr][31]_i_3 
       (.I0(s_v2_addr[30]),
        .I1(\s_ctr_reg_n_0_[30] ),
        .O(\bram0b[o][o_addr][31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_addr][31]_i_4 
       (.I0(s_v2_addr[29]),
        .I1(\s_ctr_reg_n_0_[29] ),
        .O(\bram0b[o][o_addr][31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_addr][4]_i_2 
       (.I0(s_v2_addr[4]),
        .I1(\s_ctr_reg_n_0_[4] ),
        .O(\bram0b[o][o_addr][4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_addr][4]_i_3 
       (.I0(s_v2_addr[3]),
        .I1(\s_ctr_reg_n_0_[3] ),
        .O(\bram0b[o][o_addr][4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_addr][4]_i_4 
       (.I0(s_v2_addr[2]),
        .I1(\s_ctr_reg_n_0_[2] ),
        .O(\bram0b[o][o_addr][4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_addr][4]_i_5 
       (.I0(s_v2_addr[1]),
        .I1(\s_ctr_reg_n_0_[1] ),
        .O(\bram0b[o][o_addr][4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_addr][8]_i_2 
       (.I0(s_v2_addr[8]),
        .I1(\s_ctr_reg_n_0_[8] ),
        .O(\bram0b[o][o_addr][8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_addr][8]_i_3 
       (.I0(s_v2_addr[7]),
        .I1(\s_ctr_reg_n_0_[7] ),
        .O(\bram0b[o][o_addr][8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_addr][8]_i_4 
       (.I0(s_v2_addr[6]),
        .I1(\s_ctr_reg_n_0_[6] ),
        .O(\bram0b[o][o_addr][8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_addr][8]_i_5 
       (.I0(s_v2_addr[5]),
        .I1(\s_ctr_reg_n_0_[5] ),
        .O(\bram0b[o][o_addr][8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h5FDF0050)) 
    \bram0b[o][o_en]_i_1 
       (.I0(s_state[3]),
        .I1(\bram0a[o][o_addr][31]_i_3_n_0 ),
        .I2(\bram0b[o][o_en]_i_2_n_0 ),
        .I3(s_state[2]),
        .I4(o_memb_en),
        .O(\bram0b[o][o_en]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h2040)) 
    \bram0b[o][o_en]_i_2 
       (.I0(s_state[0]),
        .I1(s_state[3]),
        .I2(s_state[4]),
        .I3(s_state[1]),
        .O(\bram0b[o][o_en]_i_2_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][0] 
       (.C(i_clk),
        .CE(\bram0b[o][o_addr] ),
        .D(s_v2_addr[0]),
        .Q(o_memb_addr[0]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][10] 
       (.C(i_clk),
        .CE(\bram0b[o][o_addr] ),
        .D(\bram0b_reg[o][o_addr][12]_i_1_n_6 ),
        .Q(o_memb_addr[10]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][11] 
       (.C(i_clk),
        .CE(\bram0b[o][o_addr] ),
        .D(\bram0b_reg[o][o_addr][12]_i_1_n_5 ),
        .Q(o_memb_addr[11]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][12] 
       (.C(i_clk),
        .CE(\bram0b[o][o_addr] ),
        .D(\bram0b_reg[o][o_addr][12]_i_1_n_4 ),
        .Q(o_memb_addr[12]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0b_reg[o][o_addr][12]_i_1 
       (.CI(\bram0b_reg[o][o_addr][8]_i_1_n_0 ),
        .CO({\bram0b_reg[o][o_addr][12]_i_1_n_0 ,\bram0b_reg[o][o_addr][12]_i_1_n_1 ,\bram0b_reg[o][o_addr][12]_i_1_n_2 ,\bram0b_reg[o][o_addr][12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(s_v2_addr[12:9]),
        .O({\bram0b_reg[o][o_addr][12]_i_1_n_4 ,\bram0b_reg[o][o_addr][12]_i_1_n_5 ,\bram0b_reg[o][o_addr][12]_i_1_n_6 ,\bram0b_reg[o][o_addr][12]_i_1_n_7 }),
        .S({\bram0b[o][o_addr][12]_i_2_n_0 ,\bram0b[o][o_addr][12]_i_3_n_0 ,\bram0b[o][o_addr][12]_i_4_n_0 ,\bram0b[o][o_addr][12]_i_5_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][13] 
       (.C(i_clk),
        .CE(\bram0b[o][o_addr] ),
        .D(\bram0b_reg[o][o_addr][16]_i_1_n_7 ),
        .Q(o_memb_addr[13]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][14] 
       (.C(i_clk),
        .CE(\bram0b[o][o_addr] ),
        .D(\bram0b_reg[o][o_addr][16]_i_1_n_6 ),
        .Q(o_memb_addr[14]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][15] 
       (.C(i_clk),
        .CE(\bram0b[o][o_addr] ),
        .D(\bram0b_reg[o][o_addr][16]_i_1_n_5 ),
        .Q(o_memb_addr[15]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][16] 
       (.C(i_clk),
        .CE(\bram0b[o][o_addr] ),
        .D(\bram0b_reg[o][o_addr][16]_i_1_n_4 ),
        .Q(o_memb_addr[16]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0b_reg[o][o_addr][16]_i_1 
       (.CI(\bram0b_reg[o][o_addr][12]_i_1_n_0 ),
        .CO({\bram0b_reg[o][o_addr][16]_i_1_n_0 ,\bram0b_reg[o][o_addr][16]_i_1_n_1 ,\bram0b_reg[o][o_addr][16]_i_1_n_2 ,\bram0b_reg[o][o_addr][16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(s_v2_addr[16:13]),
        .O({\bram0b_reg[o][o_addr][16]_i_1_n_4 ,\bram0b_reg[o][o_addr][16]_i_1_n_5 ,\bram0b_reg[o][o_addr][16]_i_1_n_6 ,\bram0b_reg[o][o_addr][16]_i_1_n_7 }),
        .S({\bram0b[o][o_addr][16]_i_2_n_0 ,\bram0b[o][o_addr][16]_i_3_n_0 ,\bram0b[o][o_addr][16]_i_4_n_0 ,\bram0b[o][o_addr][16]_i_5_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][17] 
       (.C(i_clk),
        .CE(\bram0b[o][o_addr] ),
        .D(\bram0b_reg[o][o_addr][20]_i_1_n_7 ),
        .Q(o_memb_addr[17]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][18] 
       (.C(i_clk),
        .CE(\bram0b[o][o_addr] ),
        .D(\bram0b_reg[o][o_addr][20]_i_1_n_6 ),
        .Q(o_memb_addr[18]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][19] 
       (.C(i_clk),
        .CE(\bram0b[o][o_addr] ),
        .D(\bram0b_reg[o][o_addr][20]_i_1_n_5 ),
        .Q(o_memb_addr[19]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][1] 
       (.C(i_clk),
        .CE(\bram0b[o][o_addr] ),
        .D(\bram0b[o][o_addr][1]_i_1_n_0 ),
        .Q(o_memb_addr[1]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][20] 
       (.C(i_clk),
        .CE(\bram0b[o][o_addr] ),
        .D(\bram0b_reg[o][o_addr][20]_i_1_n_4 ),
        .Q(o_memb_addr[20]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0b_reg[o][o_addr][20]_i_1 
       (.CI(\bram0b_reg[o][o_addr][16]_i_1_n_0 ),
        .CO({\bram0b_reg[o][o_addr][20]_i_1_n_0 ,\bram0b_reg[o][o_addr][20]_i_1_n_1 ,\bram0b_reg[o][o_addr][20]_i_1_n_2 ,\bram0b_reg[o][o_addr][20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(s_v2_addr[20:17]),
        .O({\bram0b_reg[o][o_addr][20]_i_1_n_4 ,\bram0b_reg[o][o_addr][20]_i_1_n_5 ,\bram0b_reg[o][o_addr][20]_i_1_n_6 ,\bram0b_reg[o][o_addr][20]_i_1_n_7 }),
        .S({\bram0b[o][o_addr][20]_i_2_n_0 ,\bram0b[o][o_addr][20]_i_3_n_0 ,\bram0b[o][o_addr][20]_i_4_n_0 ,\bram0b[o][o_addr][20]_i_5_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][21] 
       (.C(i_clk),
        .CE(\bram0b[o][o_addr] ),
        .D(\bram0b_reg[o][o_addr][24]_i_1_n_7 ),
        .Q(o_memb_addr[21]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][22] 
       (.C(i_clk),
        .CE(\bram0b[o][o_addr] ),
        .D(\bram0b_reg[o][o_addr][24]_i_1_n_6 ),
        .Q(o_memb_addr[22]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][23] 
       (.C(i_clk),
        .CE(\bram0b[o][o_addr] ),
        .D(\bram0b_reg[o][o_addr][24]_i_1_n_5 ),
        .Q(o_memb_addr[23]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][24] 
       (.C(i_clk),
        .CE(\bram0b[o][o_addr] ),
        .D(\bram0b_reg[o][o_addr][24]_i_1_n_4 ),
        .Q(o_memb_addr[24]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0b_reg[o][o_addr][24]_i_1 
       (.CI(\bram0b_reg[o][o_addr][20]_i_1_n_0 ),
        .CO({\bram0b_reg[o][o_addr][24]_i_1_n_0 ,\bram0b_reg[o][o_addr][24]_i_1_n_1 ,\bram0b_reg[o][o_addr][24]_i_1_n_2 ,\bram0b_reg[o][o_addr][24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(s_v2_addr[24:21]),
        .O({\bram0b_reg[o][o_addr][24]_i_1_n_4 ,\bram0b_reg[o][o_addr][24]_i_1_n_5 ,\bram0b_reg[o][o_addr][24]_i_1_n_6 ,\bram0b_reg[o][o_addr][24]_i_1_n_7 }),
        .S({\bram0b[o][o_addr][24]_i_2_n_0 ,\bram0b[o][o_addr][24]_i_3_n_0 ,\bram0b[o][o_addr][24]_i_4_n_0 ,\bram0b[o][o_addr][24]_i_5_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][25] 
       (.C(i_clk),
        .CE(\bram0b[o][o_addr] ),
        .D(\bram0b_reg[o][o_addr][28]_i_1_n_7 ),
        .Q(o_memb_addr[25]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][26] 
       (.C(i_clk),
        .CE(\bram0b[o][o_addr] ),
        .D(\bram0b_reg[o][o_addr][28]_i_1_n_6 ),
        .Q(o_memb_addr[26]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][27] 
       (.C(i_clk),
        .CE(\bram0b[o][o_addr] ),
        .D(\bram0b_reg[o][o_addr][28]_i_1_n_5 ),
        .Q(o_memb_addr[27]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][28] 
       (.C(i_clk),
        .CE(\bram0b[o][o_addr] ),
        .D(\bram0b_reg[o][o_addr][28]_i_1_n_4 ),
        .Q(o_memb_addr[28]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0b_reg[o][o_addr][28]_i_1 
       (.CI(\bram0b_reg[o][o_addr][24]_i_1_n_0 ),
        .CO({\bram0b_reg[o][o_addr][28]_i_1_n_0 ,\bram0b_reg[o][o_addr][28]_i_1_n_1 ,\bram0b_reg[o][o_addr][28]_i_1_n_2 ,\bram0b_reg[o][o_addr][28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(s_v2_addr[28:25]),
        .O({\bram0b_reg[o][o_addr][28]_i_1_n_4 ,\bram0b_reg[o][o_addr][28]_i_1_n_5 ,\bram0b_reg[o][o_addr][28]_i_1_n_6 ,\bram0b_reg[o][o_addr][28]_i_1_n_7 }),
        .S({\bram0b[o][o_addr][28]_i_2_n_0 ,\bram0b[o][o_addr][28]_i_3_n_0 ,\bram0b[o][o_addr][28]_i_4_n_0 ,\bram0b[o][o_addr][28]_i_5_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][29] 
       (.C(i_clk),
        .CE(\bram0b[o][o_addr] ),
        .D(\bram0b_reg[o][o_addr][31]_i_2_n_7 ),
        .Q(o_memb_addr[29]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][2] 
       (.C(i_clk),
        .CE(\bram0b[o][o_addr] ),
        .D(\bram0b_reg[o][o_addr][4]_i_1_n_6 ),
        .Q(o_memb_addr[2]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][30] 
       (.C(i_clk),
        .CE(\bram0b[o][o_addr] ),
        .D(\bram0b_reg[o][o_addr][31]_i_2_n_6 ),
        .Q(o_memb_addr[30]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][31] 
       (.C(i_clk),
        .CE(\bram0b[o][o_addr] ),
        .D(\bram0b_reg[o][o_addr][31]_i_2_n_5 ),
        .Q(o_memb_addr[31]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0b_reg[o][o_addr][31]_i_2 
       (.CI(\bram0b_reg[o][o_addr][28]_i_1_n_0 ),
        .CO({\NLW_bram0b_reg[o][o_addr][31]_i_2_CO_UNCONNECTED [3:2],\bram0b_reg[o][o_addr][31]_i_2_n_2 ,\bram0b_reg[o][o_addr][31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s_v2_addr[30:29]}),
        .O({\NLW_bram0b_reg[o][o_addr][31]_i_2_O_UNCONNECTED [3],\bram0b_reg[o][o_addr][31]_i_2_n_5 ,\bram0b_reg[o][o_addr][31]_i_2_n_6 ,\bram0b_reg[o][o_addr][31]_i_2_n_7 }),
        .S({1'b0,s_v2_addr[31],\bram0b[o][o_addr][31]_i_3_n_0 ,\bram0b[o][o_addr][31]_i_4_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][3] 
       (.C(i_clk),
        .CE(\bram0b[o][o_addr] ),
        .D(\bram0b_reg[o][o_addr][4]_i_1_n_5 ),
        .Q(o_memb_addr[3]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][4] 
       (.C(i_clk),
        .CE(\bram0b[o][o_addr] ),
        .D(\bram0b_reg[o][o_addr][4]_i_1_n_4 ),
        .Q(o_memb_addr[4]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0b_reg[o][o_addr][4]_i_1 
       (.CI(1'b0),
        .CO({\bram0b_reg[o][o_addr][4]_i_1_n_0 ,\bram0b_reg[o][o_addr][4]_i_1_n_1 ,\bram0b_reg[o][o_addr][4]_i_1_n_2 ,\bram0b_reg[o][o_addr][4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(s_v2_addr[4:1]),
        .O({\bram0b_reg[o][o_addr][4]_i_1_n_4 ,\bram0b_reg[o][o_addr][4]_i_1_n_5 ,\bram0b_reg[o][o_addr][4]_i_1_n_6 ,\NLW_bram0b_reg[o][o_addr][4]_i_1_O_UNCONNECTED [0]}),
        .S({\bram0b[o][o_addr][4]_i_2_n_0 ,\bram0b[o][o_addr][4]_i_3_n_0 ,\bram0b[o][o_addr][4]_i_4_n_0 ,\bram0b[o][o_addr][4]_i_5_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][5] 
       (.C(i_clk),
        .CE(\bram0b[o][o_addr] ),
        .D(\bram0b_reg[o][o_addr][8]_i_1_n_7 ),
        .Q(o_memb_addr[5]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][6] 
       (.C(i_clk),
        .CE(\bram0b[o][o_addr] ),
        .D(\bram0b_reg[o][o_addr][8]_i_1_n_6 ),
        .Q(o_memb_addr[6]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][7] 
       (.C(i_clk),
        .CE(\bram0b[o][o_addr] ),
        .D(\bram0b_reg[o][o_addr][8]_i_1_n_5 ),
        .Q(o_memb_addr[7]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][8] 
       (.C(i_clk),
        .CE(\bram0b[o][o_addr] ),
        .D(\bram0b_reg[o][o_addr][8]_i_1_n_4 ),
        .Q(o_memb_addr[8]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0b_reg[o][o_addr][8]_i_1 
       (.CI(\bram0b_reg[o][o_addr][4]_i_1_n_0 ),
        .CO({\bram0b_reg[o][o_addr][8]_i_1_n_0 ,\bram0b_reg[o][o_addr][8]_i_1_n_1 ,\bram0b_reg[o][o_addr][8]_i_1_n_2 ,\bram0b_reg[o][o_addr][8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(s_v2_addr[8:5]),
        .O({\bram0b_reg[o][o_addr][8]_i_1_n_4 ,\bram0b_reg[o][o_addr][8]_i_1_n_5 ,\bram0b_reg[o][o_addr][8]_i_1_n_6 ,\bram0b_reg[o][o_addr][8]_i_1_n_7 }),
        .S({\bram0b[o][o_addr][8]_i_2_n_0 ,\bram0b[o][o_addr][8]_i_3_n_0 ,\bram0b[o][o_addr][8]_i_4_n_0 ,\bram0b[o][o_addr][8]_i_5_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][9] 
       (.C(i_clk),
        .CE(\bram0b[o][o_addr] ),
        .D(\bram0b_reg[o][o_addr][12]_i_1_n_7 ),
        .Q(o_memb_addr[9]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB EN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_en] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\bram0b[o][o_en]_i_1_n_0 ),
        .Q(o_memb_en),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000BC80)) 
    \bram1a[o][o_addr][0]_i_1 
       (.I0(s_v2_addr[0]),
        .I1(s_state[3]),
        .I2(s_state[2]),
        .I3(s_out_addr[0]),
        .I4(\bram1a[o][o_addr][0]_i_2_n_0 ),
        .I5(\bram1a[o][o_addr][0]_i_3_n_0 ),
        .O(\bram1a[o][o_addr][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram1a[o][o_addr][0]_i_2 
       (.I0(s_state[4]),
        .I1(s_state[1]),
        .O(\bram1a[o][o_addr][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22FF220322002200)) 
    \bram1a[o][o_addr][0]_i_3 
       (.I0(s_out_addr[0]),
        .I1(s_state[3]),
        .I2(s_state[2]),
        .I3(s_state[4]),
        .I4(s_state[1]),
        .I5(\s_v1_addr_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h22F022FF22F02200)) 
    \bram1a[o][o_addr][10]_i_1 
       (.I0(in14[10]),
        .I1(s_state[3]),
        .I2(in10[10]),
        .I3(s_state[4]),
        .I4(s_state[1]),
        .I5(\bram1a[o][o_addr][10]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram1a[o][o_addr][10]_i_2 
       (.I0(\bram0b_reg[o][o_addr][12]_i_1_n_6 ),
        .I1(in11[10]),
        .I2(s_state[2]),
        .I3(in12[10]),
        .I4(s_state[3]),
        .I5(in10[10]),
        .O(\bram1a[o][o_addr][10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F022FF22F02200)) 
    \bram1a[o][o_addr][11]_i_1 
       (.I0(in14[11]),
        .I1(s_state[3]),
        .I2(in10[11]),
        .I3(s_state[4]),
        .I4(s_state[1]),
        .I5(\bram1a[o][o_addr][11]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram1a[o][o_addr][11]_i_2 
       (.I0(\bram0b_reg[o][o_addr][12]_i_1_n_5 ),
        .I1(in11[11]),
        .I2(s_state[2]),
        .I3(in12[11]),
        .I4(s_state[3]),
        .I5(in10[11]),
        .O(\bram1a[o][o_addr][11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F022FF22F02200)) 
    \bram1a[o][o_addr][12]_i_1 
       (.I0(in14[12]),
        .I1(s_state[3]),
        .I2(in10[12]),
        .I3(s_state[4]),
        .I4(s_state[1]),
        .I5(\bram1a[o][o_addr][12]_i_4_n_0 ),
        .O(\bram1a[o][o_addr][12]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][12]_i_10 
       (.I0(\s_v1_addr_reg_n_0_[11] ),
        .I1(\s_ctr_reg_n_0_[11] ),
        .O(\bram1a[o][o_addr][12]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][12]_i_11 
       (.I0(\s_v1_addr_reg_n_0_[10] ),
        .I1(\s_ctr_reg_n_0_[10] ),
        .O(\bram1a[o][o_addr][12]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][12]_i_12 
       (.I0(\s_v1_addr_reg_n_0_[9] ),
        .I1(\s_ctr_reg_n_0_[9] ),
        .O(\bram1a[o][o_addr][12]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram1a[o][o_addr][12]_i_4 
       (.I0(\bram0b_reg[o][o_addr][12]_i_1_n_4 ),
        .I1(in11[12]),
        .I2(s_state[2]),
        .I3(in12[12]),
        .I4(s_state[3]),
        .I5(in10[12]),
        .O(\bram1a[o][o_addr][12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][12]_i_5 
       (.I0(s_out_addr[12]),
        .I1(\s_ctr_reg_n_0_[12] ),
        .O(\bram1a[o][o_addr][12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][12]_i_6 
       (.I0(s_out_addr[11]),
        .I1(\s_ctr_reg_n_0_[11] ),
        .O(\bram1a[o][o_addr][12]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][12]_i_7 
       (.I0(s_out_addr[10]),
        .I1(\s_ctr_reg_n_0_[10] ),
        .O(\bram1a[o][o_addr][12]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][12]_i_8 
       (.I0(s_out_addr[9]),
        .I1(\s_ctr_reg_n_0_[9] ),
        .O(\bram1a[o][o_addr][12]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][12]_i_9 
       (.I0(\s_v1_addr_reg_n_0_[12] ),
        .I1(\s_ctr_reg_n_0_[12] ),
        .O(\bram1a[o][o_addr][12]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h22F022FF22F02200)) 
    \bram1a[o][o_addr][13]_i_1 
       (.I0(in14[13]),
        .I1(s_state[3]),
        .I2(in10[13]),
        .I3(s_state[4]),
        .I4(s_state[1]),
        .I5(\bram1a[o][o_addr][13]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram1a[o][o_addr][13]_i_2 
       (.I0(\bram0b_reg[o][o_addr][16]_i_1_n_7 ),
        .I1(in11[13]),
        .I2(s_state[2]),
        .I3(in12[13]),
        .I4(s_state[3]),
        .I5(in10[13]),
        .O(\bram1a[o][o_addr][13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F022FF22F02200)) 
    \bram1a[o][o_addr][14]_i_1 
       (.I0(in14[14]),
        .I1(s_state[3]),
        .I2(in10[14]),
        .I3(s_state[4]),
        .I4(s_state[1]),
        .I5(\bram1a[o][o_addr][14]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram1a[o][o_addr][14]_i_2 
       (.I0(\bram0b_reg[o][o_addr][16]_i_1_n_6 ),
        .I1(in11[14]),
        .I2(s_state[2]),
        .I3(in12[14]),
        .I4(s_state[3]),
        .I5(in10[14]),
        .O(\bram1a[o][o_addr][14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F022FF22F02200)) 
    \bram1a[o][o_addr][15]_i_1 
       (.I0(in14[15]),
        .I1(s_state[3]),
        .I2(in10[15]),
        .I3(s_state[4]),
        .I4(s_state[1]),
        .I5(\bram1a[o][o_addr][15]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram1a[o][o_addr][15]_i_2 
       (.I0(\bram0b_reg[o][o_addr][16]_i_1_n_5 ),
        .I1(in11[15]),
        .I2(s_state[2]),
        .I3(in12[15]),
        .I4(s_state[3]),
        .I5(in10[15]),
        .O(\bram1a[o][o_addr][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F022FF22F02200)) 
    \bram1a[o][o_addr][16]_i_1 
       (.I0(in14[16]),
        .I1(s_state[3]),
        .I2(in10[16]),
        .I3(s_state[4]),
        .I4(s_state[1]),
        .I5(\bram1a[o][o_addr][16]_i_4_n_0 ),
        .O(\bram1a[o][o_addr][16]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][16]_i_10 
       (.I0(\s_v1_addr_reg_n_0_[15] ),
        .I1(\s_ctr_reg_n_0_[15] ),
        .O(\bram1a[o][o_addr][16]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][16]_i_11 
       (.I0(\s_v1_addr_reg_n_0_[14] ),
        .I1(\s_ctr_reg_n_0_[14] ),
        .O(\bram1a[o][o_addr][16]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][16]_i_12 
       (.I0(\s_v1_addr_reg_n_0_[13] ),
        .I1(\s_ctr_reg_n_0_[13] ),
        .O(\bram1a[o][o_addr][16]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram1a[o][o_addr][16]_i_4 
       (.I0(\bram0b_reg[o][o_addr][16]_i_1_n_4 ),
        .I1(in11[16]),
        .I2(s_state[2]),
        .I3(in12[16]),
        .I4(s_state[3]),
        .I5(in10[16]),
        .O(\bram1a[o][o_addr][16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][16]_i_5 
       (.I0(s_out_addr[16]),
        .I1(\s_ctr_reg_n_0_[16] ),
        .O(\bram1a[o][o_addr][16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][16]_i_6 
       (.I0(s_out_addr[15]),
        .I1(\s_ctr_reg_n_0_[15] ),
        .O(\bram1a[o][o_addr][16]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][16]_i_7 
       (.I0(s_out_addr[14]),
        .I1(\s_ctr_reg_n_0_[14] ),
        .O(\bram1a[o][o_addr][16]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][16]_i_8 
       (.I0(s_out_addr[13]),
        .I1(\s_ctr_reg_n_0_[13] ),
        .O(\bram1a[o][o_addr][16]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][16]_i_9 
       (.I0(\s_v1_addr_reg_n_0_[16] ),
        .I1(\s_ctr_reg_n_0_[16] ),
        .O(\bram1a[o][o_addr][16]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h22F022FF22F02200)) 
    \bram1a[o][o_addr][17]_i_1 
       (.I0(in14[17]),
        .I1(s_state[3]),
        .I2(in10[17]),
        .I3(s_state[4]),
        .I4(s_state[1]),
        .I5(\bram1a[o][o_addr][17]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram1a[o][o_addr][17]_i_2 
       (.I0(\bram0b_reg[o][o_addr][20]_i_1_n_7 ),
        .I1(in11[17]),
        .I2(s_state[2]),
        .I3(in12[17]),
        .I4(s_state[3]),
        .I5(in10[17]),
        .O(\bram1a[o][o_addr][17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F022FF22F02200)) 
    \bram1a[o][o_addr][18]_i_1 
       (.I0(in14[18]),
        .I1(s_state[3]),
        .I2(in10[18]),
        .I3(s_state[4]),
        .I4(s_state[1]),
        .I5(\bram1a[o][o_addr][18]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram1a[o][o_addr][18]_i_2 
       (.I0(\bram0b_reg[o][o_addr][20]_i_1_n_6 ),
        .I1(in11[18]),
        .I2(s_state[2]),
        .I3(in12[18]),
        .I4(s_state[3]),
        .I5(in10[18]),
        .O(\bram1a[o][o_addr][18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F022FF22F02200)) 
    \bram1a[o][o_addr][19]_i_1 
       (.I0(in14[19]),
        .I1(s_state[3]),
        .I2(in10[19]),
        .I3(s_state[4]),
        .I4(s_state[1]),
        .I5(\bram1a[o][o_addr][19]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram1a[o][o_addr][19]_i_2 
       (.I0(\bram0b_reg[o][o_addr][20]_i_1_n_5 ),
        .I1(in11[19]),
        .I2(s_state[2]),
        .I3(in12[19]),
        .I4(s_state[3]),
        .I5(in10[19]),
        .O(\bram1a[o][o_addr][19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBFEEFEAABEAABE)) 
    \bram1a[o][o_addr][1]_i_1 
       (.I0(\bram1a[o][o_addr][1]_i_2_n_0 ),
        .I1(\s_ctr_reg_n_0_[1] ),
        .I2(\s_v1_addr_reg_n_0_[1] ),
        .I3(\bram1a[o][o_addr][1]_i_3_n_0 ),
        .I4(s_out_addr[1]),
        .I5(\bram1a[o][o_addr][1]_i_4_n_0 ),
        .O(\bram1a[o][o_addr][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1114140044141400)) 
    \bram1a[o][o_addr][1]_i_2 
       (.I0(\bram1a[o][o_addr][0]_i_2_n_0 ),
        .I1(\s_ctr_reg_n_0_[1] ),
        .I2(s_out_addr[1]),
        .I3(s_state[2]),
        .I4(s_state[3]),
        .I5(s_v2_addr[1]),
        .O(\bram1a[o][o_addr][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF0FE)) 
    \bram1a[o][o_addr][1]_i_3 
       (.I0(s_state[3]),
        .I1(s_state[2]),
        .I2(s_state[4]),
        .I3(s_state[1]),
        .O(\bram1a[o][o_addr][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram1a[o][o_addr][1]_i_4 
       (.I0(s_state[4]),
        .I1(s_state[3]),
        .O(\bram1a[o][o_addr][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h22F022FF22F02200)) 
    \bram1a[o][o_addr][20]_i_1 
       (.I0(in14[20]),
        .I1(s_state[3]),
        .I2(in10[20]),
        .I3(s_state[4]),
        .I4(s_state[1]),
        .I5(\bram1a[o][o_addr][20]_i_4_n_0 ),
        .O(\bram1a[o][o_addr][20]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][20]_i_10 
       (.I0(\s_v1_addr_reg_n_0_[19] ),
        .I1(\s_ctr_reg_n_0_[19] ),
        .O(\bram1a[o][o_addr][20]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][20]_i_11 
       (.I0(\s_v1_addr_reg_n_0_[18] ),
        .I1(\s_ctr_reg_n_0_[18] ),
        .O(\bram1a[o][o_addr][20]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][20]_i_12 
       (.I0(\s_v1_addr_reg_n_0_[17] ),
        .I1(\s_ctr_reg_n_0_[17] ),
        .O(\bram1a[o][o_addr][20]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram1a[o][o_addr][20]_i_4 
       (.I0(\bram0b_reg[o][o_addr][20]_i_1_n_4 ),
        .I1(in11[20]),
        .I2(s_state[2]),
        .I3(in12[20]),
        .I4(s_state[3]),
        .I5(in10[20]),
        .O(\bram1a[o][o_addr][20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][20]_i_5 
       (.I0(s_out_addr[20]),
        .I1(\s_ctr_reg_n_0_[20] ),
        .O(\bram1a[o][o_addr][20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][20]_i_6 
       (.I0(s_out_addr[19]),
        .I1(\s_ctr_reg_n_0_[19] ),
        .O(\bram1a[o][o_addr][20]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][20]_i_7 
       (.I0(s_out_addr[18]),
        .I1(\s_ctr_reg_n_0_[18] ),
        .O(\bram1a[o][o_addr][20]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][20]_i_8 
       (.I0(s_out_addr[17]),
        .I1(\s_ctr_reg_n_0_[17] ),
        .O(\bram1a[o][o_addr][20]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][20]_i_9 
       (.I0(\s_v1_addr_reg_n_0_[20] ),
        .I1(\s_ctr_reg_n_0_[20] ),
        .O(\bram1a[o][o_addr][20]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h22F022FF22F02200)) 
    \bram1a[o][o_addr][21]_i_1 
       (.I0(in14[21]),
        .I1(s_state[3]),
        .I2(in10[21]),
        .I3(s_state[4]),
        .I4(s_state[1]),
        .I5(\bram1a[o][o_addr][21]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram1a[o][o_addr][21]_i_2 
       (.I0(\bram0b_reg[o][o_addr][24]_i_1_n_7 ),
        .I1(in11[21]),
        .I2(s_state[2]),
        .I3(in12[21]),
        .I4(s_state[3]),
        .I5(in10[21]),
        .O(\bram1a[o][o_addr][21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F022FF22F02200)) 
    \bram1a[o][o_addr][22]_i_1 
       (.I0(in14[22]),
        .I1(s_state[3]),
        .I2(in10[22]),
        .I3(s_state[4]),
        .I4(s_state[1]),
        .I5(\bram1a[o][o_addr][22]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram1a[o][o_addr][22]_i_2 
       (.I0(\bram0b_reg[o][o_addr][24]_i_1_n_6 ),
        .I1(in11[22]),
        .I2(s_state[2]),
        .I3(in12[22]),
        .I4(s_state[3]),
        .I5(in10[22]),
        .O(\bram1a[o][o_addr][22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F022FF22F02200)) 
    \bram1a[o][o_addr][23]_i_1 
       (.I0(in14[23]),
        .I1(s_state[3]),
        .I2(in10[23]),
        .I3(s_state[4]),
        .I4(s_state[1]),
        .I5(\bram1a[o][o_addr][23]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram1a[o][o_addr][23]_i_2 
       (.I0(\bram0b_reg[o][o_addr][24]_i_1_n_5 ),
        .I1(in11[23]),
        .I2(s_state[2]),
        .I3(in12[23]),
        .I4(s_state[3]),
        .I5(in10[23]),
        .O(\bram1a[o][o_addr][23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F022FF22F02200)) 
    \bram1a[o][o_addr][24]_i_1 
       (.I0(in14[24]),
        .I1(s_state[3]),
        .I2(in10[24]),
        .I3(s_state[4]),
        .I4(s_state[1]),
        .I5(\bram1a[o][o_addr][24]_i_4_n_0 ),
        .O(\bram1a[o][o_addr][24]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][24]_i_10 
       (.I0(\s_v1_addr_reg_n_0_[23] ),
        .I1(\s_ctr_reg_n_0_[23] ),
        .O(\bram1a[o][o_addr][24]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][24]_i_11 
       (.I0(\s_v1_addr_reg_n_0_[22] ),
        .I1(\s_ctr_reg_n_0_[22] ),
        .O(\bram1a[o][o_addr][24]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][24]_i_12 
       (.I0(\s_v1_addr_reg_n_0_[21] ),
        .I1(\s_ctr_reg_n_0_[21] ),
        .O(\bram1a[o][o_addr][24]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram1a[o][o_addr][24]_i_4 
       (.I0(\bram0b_reg[o][o_addr][24]_i_1_n_4 ),
        .I1(in11[24]),
        .I2(s_state[2]),
        .I3(in12[24]),
        .I4(s_state[3]),
        .I5(in10[24]),
        .O(\bram1a[o][o_addr][24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][24]_i_5 
       (.I0(s_out_addr[24]),
        .I1(\s_ctr_reg_n_0_[24] ),
        .O(\bram1a[o][o_addr][24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][24]_i_6 
       (.I0(s_out_addr[23]),
        .I1(\s_ctr_reg_n_0_[23] ),
        .O(\bram1a[o][o_addr][24]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][24]_i_7 
       (.I0(s_out_addr[22]),
        .I1(\s_ctr_reg_n_0_[22] ),
        .O(\bram1a[o][o_addr][24]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][24]_i_8 
       (.I0(s_out_addr[21]),
        .I1(\s_ctr_reg_n_0_[21] ),
        .O(\bram1a[o][o_addr][24]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][24]_i_9 
       (.I0(\s_v1_addr_reg_n_0_[24] ),
        .I1(\s_ctr_reg_n_0_[24] ),
        .O(\bram1a[o][o_addr][24]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h22F022FF22F02200)) 
    \bram1a[o][o_addr][25]_i_1 
       (.I0(in14[25]),
        .I1(s_state[3]),
        .I2(in10[25]),
        .I3(s_state[4]),
        .I4(s_state[1]),
        .I5(\bram1a[o][o_addr][25]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram1a[o][o_addr][25]_i_2 
       (.I0(\bram0b_reg[o][o_addr][28]_i_1_n_7 ),
        .I1(in11[25]),
        .I2(s_state[2]),
        .I3(in12[25]),
        .I4(s_state[3]),
        .I5(in10[25]),
        .O(\bram1a[o][o_addr][25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F022FF22F02200)) 
    \bram1a[o][o_addr][26]_i_1 
       (.I0(in14[26]),
        .I1(s_state[3]),
        .I2(in10[26]),
        .I3(s_state[4]),
        .I4(s_state[1]),
        .I5(\bram1a[o][o_addr][26]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram1a[o][o_addr][26]_i_2 
       (.I0(\bram0b_reg[o][o_addr][28]_i_1_n_6 ),
        .I1(in11[26]),
        .I2(s_state[2]),
        .I3(in12[26]),
        .I4(s_state[3]),
        .I5(in10[26]),
        .O(\bram1a[o][o_addr][26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F022FF22F02200)) 
    \bram1a[o][o_addr][27]_i_1 
       (.I0(in14[27]),
        .I1(s_state[3]),
        .I2(in10[27]),
        .I3(s_state[4]),
        .I4(s_state[1]),
        .I5(\bram1a[o][o_addr][27]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram1a[o][o_addr][27]_i_2 
       (.I0(\bram0b_reg[o][o_addr][28]_i_1_n_5 ),
        .I1(in11[27]),
        .I2(s_state[2]),
        .I3(in12[27]),
        .I4(s_state[3]),
        .I5(in10[27]),
        .O(\bram1a[o][o_addr][27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F022FF22F02200)) 
    \bram1a[o][o_addr][28]_i_1 
       (.I0(in14[28]),
        .I1(s_state[3]),
        .I2(in10[28]),
        .I3(s_state[4]),
        .I4(s_state[1]),
        .I5(\bram1a[o][o_addr][28]_i_4_n_0 ),
        .O(\bram1a[o][o_addr][28]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][28]_i_10 
       (.I0(\s_v1_addr_reg_n_0_[27] ),
        .I1(\s_ctr_reg_n_0_[27] ),
        .O(\bram1a[o][o_addr][28]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][28]_i_11 
       (.I0(\s_v1_addr_reg_n_0_[26] ),
        .I1(\s_ctr_reg_n_0_[26] ),
        .O(\bram1a[o][o_addr][28]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][28]_i_12 
       (.I0(\s_v1_addr_reg_n_0_[25] ),
        .I1(\s_ctr_reg_n_0_[25] ),
        .O(\bram1a[o][o_addr][28]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram1a[o][o_addr][28]_i_4 
       (.I0(\bram0b_reg[o][o_addr][28]_i_1_n_4 ),
        .I1(in11[28]),
        .I2(s_state[2]),
        .I3(in12[28]),
        .I4(s_state[3]),
        .I5(in10[28]),
        .O(\bram1a[o][o_addr][28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][28]_i_5 
       (.I0(s_out_addr[28]),
        .I1(\s_ctr_reg_n_0_[28] ),
        .O(\bram1a[o][o_addr][28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][28]_i_6 
       (.I0(s_out_addr[27]),
        .I1(\s_ctr_reg_n_0_[27] ),
        .O(\bram1a[o][o_addr][28]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][28]_i_7 
       (.I0(s_out_addr[26]),
        .I1(\s_ctr_reg_n_0_[26] ),
        .O(\bram1a[o][o_addr][28]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][28]_i_8 
       (.I0(s_out_addr[25]),
        .I1(\s_ctr_reg_n_0_[25] ),
        .O(\bram1a[o][o_addr][28]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][28]_i_9 
       (.I0(\s_v1_addr_reg_n_0_[28] ),
        .I1(\s_ctr_reg_n_0_[28] ),
        .O(\bram1a[o][o_addr][28]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h22F022FF22F02200)) 
    \bram1a[o][o_addr][29]_i_1 
       (.I0(in14[29]),
        .I1(s_state[3]),
        .I2(in10[29]),
        .I3(s_state[4]),
        .I4(s_state[1]),
        .I5(\bram1a[o][o_addr][29]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram1a[o][o_addr][29]_i_2 
       (.I0(\bram0b_reg[o][o_addr][31]_i_2_n_7 ),
        .I1(in11[29]),
        .I2(s_state[2]),
        .I3(in12[29]),
        .I4(s_state[3]),
        .I5(in10[29]),
        .O(\bram1a[o][o_addr][29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F022FF22F02200)) 
    \bram1a[o][o_addr][2]_i_1 
       (.I0(in14[2]),
        .I1(s_state[3]),
        .I2(in10[2]),
        .I3(s_state[4]),
        .I4(s_state[1]),
        .I5(\bram1a[o][o_addr][2]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram1a[o][o_addr][2]_i_2 
       (.I0(\bram0b_reg[o][o_addr][4]_i_1_n_6 ),
        .I1(in11[2]),
        .I2(s_state[2]),
        .I3(in12[2]),
        .I4(s_state[3]),
        .I5(in10[2]),
        .O(\bram1a[o][o_addr][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F022FF22F02200)) 
    \bram1a[o][o_addr][30]_i_1 
       (.I0(in14[30]),
        .I1(s_state[3]),
        .I2(in10[30]),
        .I3(s_state[4]),
        .I4(s_state[1]),
        .I5(\bram1a[o][o_addr][30]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram1a[o][o_addr][30]_i_2 
       (.I0(\bram0b_reg[o][o_addr][31]_i_2_n_6 ),
        .I1(in11[30]),
        .I2(s_state[2]),
        .I3(in12[30]),
        .I4(s_state[3]),
        .I5(in10[30]),
        .O(\bram1a[o][o_addr][30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000303038F3F0)) 
    \bram1a[o][o_addr][31]_i_1 
       (.I0(\bram0a[o][o_addr][31]_i_3_n_0 ),
        .I1(s_state[1]),
        .I2(s_state[0]),
        .I3(s_state[3]),
        .I4(s_state[2]),
        .I5(s_state[4]),
        .O(\bram1a[o][o_addr][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h22F022FF22F02200)) 
    \bram1a[o][o_addr][31]_i_2 
       (.I0(in14[31]),
        .I1(s_state[3]),
        .I2(in10[31]),
        .I3(s_state[4]),
        .I4(s_state[1]),
        .I5(\bram1a[o][o_addr][31]_i_5_n_0 ),
        .O(\bram1a[o][o_addr][31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram1a[o][o_addr][31]_i_5 
       (.I0(\bram0b_reg[o][o_addr][31]_i_2_n_5 ),
        .I1(in11[31]),
        .I2(s_state[2]),
        .I3(in12[31]),
        .I4(s_state[3]),
        .I5(in10[31]),
        .O(\bram1a[o][o_addr][31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][31]_i_6 
       (.I0(s_out_addr[30]),
        .I1(\s_ctr_reg_n_0_[30] ),
        .O(\bram1a[o][o_addr][31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][31]_i_7 
       (.I0(s_out_addr[29]),
        .I1(\s_ctr_reg_n_0_[29] ),
        .O(\bram1a[o][o_addr][31]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][31]_i_8 
       (.I0(\s_v1_addr_reg_n_0_[30] ),
        .I1(\s_ctr_reg_n_0_[30] ),
        .O(\bram1a[o][o_addr][31]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][31]_i_9 
       (.I0(\s_v1_addr_reg_n_0_[29] ),
        .I1(\s_ctr_reg_n_0_[29] ),
        .O(\bram1a[o][o_addr][31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h22F022FF22F02200)) 
    \bram1a[o][o_addr][3]_i_1 
       (.I0(in14[3]),
        .I1(s_state[3]),
        .I2(in10[3]),
        .I3(s_state[4]),
        .I4(s_state[1]),
        .I5(\bram1a[o][o_addr][3]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram1a[o][o_addr][3]_i_2 
       (.I0(\bram0b_reg[o][o_addr][4]_i_1_n_5 ),
        .I1(in11[3]),
        .I2(s_state[2]),
        .I3(in12[3]),
        .I4(s_state[3]),
        .I5(in10[3]),
        .O(\bram1a[o][o_addr][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F022FF22F02200)) 
    \bram1a[o][o_addr][4]_i_1 
       (.I0(in14[4]),
        .I1(s_state[3]),
        .I2(in10[4]),
        .I3(s_state[4]),
        .I4(s_state[1]),
        .I5(\bram1a[o][o_addr][4]_i_4_n_0 ),
        .O(\bram1a[o][o_addr][4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][4]_i_10 
       (.I0(\s_v1_addr_reg_n_0_[3] ),
        .I1(\s_ctr_reg_n_0_[3] ),
        .O(\bram1a[o][o_addr][4]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][4]_i_11 
       (.I0(\s_v1_addr_reg_n_0_[2] ),
        .I1(\s_ctr_reg_n_0_[2] ),
        .O(\bram1a[o][o_addr][4]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][4]_i_12 
       (.I0(\s_v1_addr_reg_n_0_[1] ),
        .I1(\s_ctr_reg_n_0_[1] ),
        .O(\bram1a[o][o_addr][4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram1a[o][o_addr][4]_i_4 
       (.I0(\bram0b_reg[o][o_addr][4]_i_1_n_4 ),
        .I1(in11[4]),
        .I2(s_state[2]),
        .I3(in12[4]),
        .I4(s_state[3]),
        .I5(in10[4]),
        .O(\bram1a[o][o_addr][4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][4]_i_5 
       (.I0(s_out_addr[4]),
        .I1(\s_ctr_reg_n_0_[4] ),
        .O(\bram1a[o][o_addr][4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][4]_i_6 
       (.I0(s_out_addr[3]),
        .I1(\s_ctr_reg_n_0_[3] ),
        .O(\bram1a[o][o_addr][4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][4]_i_7 
       (.I0(s_out_addr[2]),
        .I1(\s_ctr_reg_n_0_[2] ),
        .O(\bram1a[o][o_addr][4]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][4]_i_8 
       (.I0(s_out_addr[1]),
        .I1(\s_ctr_reg_n_0_[1] ),
        .O(\bram1a[o][o_addr][4]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][4]_i_9 
       (.I0(\s_v1_addr_reg_n_0_[4] ),
        .I1(\s_ctr_reg_n_0_[4] ),
        .O(\bram1a[o][o_addr][4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h22F022FF22F02200)) 
    \bram1a[o][o_addr][5]_i_1 
       (.I0(in14[5]),
        .I1(s_state[3]),
        .I2(in10[5]),
        .I3(s_state[4]),
        .I4(s_state[1]),
        .I5(\bram1a[o][o_addr][5]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram1a[o][o_addr][5]_i_2 
       (.I0(\bram0b_reg[o][o_addr][8]_i_1_n_7 ),
        .I1(in11[5]),
        .I2(s_state[2]),
        .I3(in12[5]),
        .I4(s_state[3]),
        .I5(in10[5]),
        .O(\bram1a[o][o_addr][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F022FF22F02200)) 
    \bram1a[o][o_addr][6]_i_1 
       (.I0(in14[6]),
        .I1(s_state[3]),
        .I2(in10[6]),
        .I3(s_state[4]),
        .I4(s_state[1]),
        .I5(\bram1a[o][o_addr][6]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram1a[o][o_addr][6]_i_2 
       (.I0(\bram0b_reg[o][o_addr][8]_i_1_n_6 ),
        .I1(in11[6]),
        .I2(s_state[2]),
        .I3(in12[6]),
        .I4(s_state[3]),
        .I5(in10[6]),
        .O(\bram1a[o][o_addr][6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F022FF22F02200)) 
    \bram1a[o][o_addr][7]_i_1 
       (.I0(in14[7]),
        .I1(s_state[3]),
        .I2(in10[7]),
        .I3(s_state[4]),
        .I4(s_state[1]),
        .I5(\bram1a[o][o_addr][7]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram1a[o][o_addr][7]_i_2 
       (.I0(\bram0b_reg[o][o_addr][8]_i_1_n_5 ),
        .I1(in11[7]),
        .I2(s_state[2]),
        .I3(in12[7]),
        .I4(s_state[3]),
        .I5(in10[7]),
        .O(\bram1a[o][o_addr][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F022FF22F02200)) 
    \bram1a[o][o_addr][8]_i_1 
       (.I0(in14[8]),
        .I1(s_state[3]),
        .I2(in10[8]),
        .I3(s_state[4]),
        .I4(s_state[1]),
        .I5(\bram1a[o][o_addr][8]_i_4_n_0 ),
        .O(\bram1a[o][o_addr][8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][8]_i_10 
       (.I0(\s_v1_addr_reg_n_0_[7] ),
        .I1(\s_ctr_reg_n_0_[7] ),
        .O(\bram1a[o][o_addr][8]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][8]_i_11 
       (.I0(\s_v1_addr_reg_n_0_[6] ),
        .I1(\s_ctr_reg_n_0_[6] ),
        .O(\bram1a[o][o_addr][8]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][8]_i_12 
       (.I0(\s_v1_addr_reg_n_0_[5] ),
        .I1(\s_ctr_reg_n_0_[5] ),
        .O(\bram1a[o][o_addr][8]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram1a[o][o_addr][8]_i_4 
       (.I0(\bram0b_reg[o][o_addr][8]_i_1_n_4 ),
        .I1(in11[8]),
        .I2(s_state[2]),
        .I3(in12[8]),
        .I4(s_state[3]),
        .I5(in10[8]),
        .O(\bram1a[o][o_addr][8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][8]_i_5 
       (.I0(s_out_addr[8]),
        .I1(\s_ctr_reg_n_0_[8] ),
        .O(\bram1a[o][o_addr][8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][8]_i_6 
       (.I0(s_out_addr[7]),
        .I1(\s_ctr_reg_n_0_[7] ),
        .O(\bram1a[o][o_addr][8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][8]_i_7 
       (.I0(s_out_addr[6]),
        .I1(\s_ctr_reg_n_0_[6] ),
        .O(\bram1a[o][o_addr][8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][8]_i_8 
       (.I0(s_out_addr[5]),
        .I1(\s_ctr_reg_n_0_[5] ),
        .O(\bram1a[o][o_addr][8]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][8]_i_9 
       (.I0(\s_v1_addr_reg_n_0_[8] ),
        .I1(\s_ctr_reg_n_0_[8] ),
        .O(\bram1a[o][o_addr][8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h22F022FF22F02200)) 
    \bram1a[o][o_addr][9]_i_1 
       (.I0(in14[9]),
        .I1(s_state[3]),
        .I2(in10[9]),
        .I3(s_state[4]),
        .I4(s_state[1]),
        .I5(\bram1a[o][o_addr][9]_i_2_n_0 ),
        .O(\bram1a[o][o_addr][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bram1a[o][o_addr][9]_i_2 
       (.I0(\bram0b_reg[o][o_addr][12]_i_1_n_7 ),
        .I1(in11[9]),
        .I2(s_state[2]),
        .I3(in12[9]),
        .I4(s_state[3]),
        .I5(in10[9]),
        .O(\bram1a[o][o_addr][9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3F0A000A)) 
    \bram1a[o][o_din][0]_i_1 
       (.I0(\tmp2_reg_n_0_[0] ),
        .I1(s_state[2]),
        .I2(s_state[4]),
        .I3(s_state[0]),
        .I4(tmp1[0]),
        .O(\bram1a[o][o_din][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3F0A000A)) 
    \bram1a[o][o_din][10]_i_1 
       (.I0(\tmp2_reg_n_0_[10] ),
        .I1(s_state[2]),
        .I2(s_state[4]),
        .I3(s_state[0]),
        .I4(tmp1[10]),
        .O(\bram1a[o][o_din][10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3F0A000A)) 
    \bram1a[o][o_din][11]_i_1 
       (.I0(\tmp2_reg_n_0_[11] ),
        .I1(s_state[2]),
        .I2(s_state[4]),
        .I3(s_state[0]),
        .I4(tmp1[11]),
        .O(\bram1a[o][o_din][11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3F0A000A)) 
    \bram1a[o][o_din][12]_i_1 
       (.I0(\tmp2_reg_n_0_[12] ),
        .I1(s_state[2]),
        .I2(s_state[4]),
        .I3(s_state[0]),
        .I4(tmp1[12]),
        .O(\bram1a[o][o_din][12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3F0A000A)) 
    \bram1a[o][o_din][16]_i_1 
       (.I0(\tmp2_reg_n_0_[16] ),
        .I1(s_state[2]),
        .I2(s_state[4]),
        .I3(s_state[0]),
        .I4(tmp1[16]),
        .O(\bram1a[o][o_din][16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3F0A000A)) 
    \bram1a[o][o_din][17]_i_1 
       (.I0(\tmp2_reg_n_0_[17] ),
        .I1(s_state[2]),
        .I2(s_state[4]),
        .I3(s_state[0]),
        .I4(tmp1[17]),
        .O(\bram1a[o][o_din][17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3F0A000A)) 
    \bram1a[o][o_din][18]_i_1 
       (.I0(\tmp2_reg_n_0_[18] ),
        .I1(s_state[2]),
        .I2(s_state[4]),
        .I3(s_state[0]),
        .I4(tmp1[18]),
        .O(\bram1a[o][o_din][18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3F0A000A)) 
    \bram1a[o][o_din][19]_i_1 
       (.I0(\tmp2_reg_n_0_[19] ),
        .I1(s_state[2]),
        .I2(s_state[4]),
        .I3(s_state[0]),
        .I4(tmp1[19]),
        .O(\bram1a[o][o_din][19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3F0A000A)) 
    \bram1a[o][o_din][1]_i_1 
       (.I0(\tmp2_reg_n_0_[1] ),
        .I1(s_state[2]),
        .I2(s_state[4]),
        .I3(s_state[0]),
        .I4(tmp1[1]),
        .O(\bram1a[o][o_din][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3F0A000A)) 
    \bram1a[o][o_din][20]_i_1 
       (.I0(\tmp2_reg_n_0_[20] ),
        .I1(s_state[2]),
        .I2(s_state[4]),
        .I3(s_state[0]),
        .I4(tmp1[20]),
        .O(\bram1a[o][o_din][20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3F0A000A)) 
    \bram1a[o][o_din][24]_i_1 
       (.I0(\tmp2_reg_n_0_[24] ),
        .I1(s_state[2]),
        .I2(s_state[4]),
        .I3(s_state[0]),
        .I4(tmp1[24]),
        .O(\bram1a[o][o_din][24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3F0A000A)) 
    \bram1a[o][o_din][25]_i_1 
       (.I0(\tmp2_reg_n_0_[25] ),
        .I1(s_state[2]),
        .I2(s_state[4]),
        .I3(s_state[0]),
        .I4(tmp1[25]),
        .O(\bram1a[o][o_din][25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3F0A000A)) 
    \bram1a[o][o_din][26]_i_1 
       (.I0(\tmp2_reg_n_0_[26] ),
        .I1(s_state[2]),
        .I2(s_state[4]),
        .I3(s_state[0]),
        .I4(tmp1[26]),
        .O(\bram1a[o][o_din][26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3F0A000A)) 
    \bram1a[o][o_din][27]_i_1 
       (.I0(\tmp2_reg_n_0_[27] ),
        .I1(s_state[2]),
        .I2(s_state[4]),
        .I3(s_state[0]),
        .I4(tmp1[27]),
        .O(\bram1a[o][o_din][27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00101044)) 
    \bram1a[o][o_din][28]_i_1 
       (.I0(s_state[1]),
        .I1(s_state[3]),
        .I2(s_state[0]),
        .I3(s_state[4]),
        .I4(s_state[2]),
        .O(\bram1a[o][o_din][28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h3F0A000A)) 
    \bram1a[o][o_din][28]_i_2 
       (.I0(\tmp2_reg_n_0_[28] ),
        .I1(s_state[2]),
        .I2(s_state[4]),
        .I3(s_state[0]),
        .I4(tmp1[28]),
        .O(\bram1a[o][o_din][28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3F0A000A)) 
    \bram1a[o][o_din][2]_i_1 
       (.I0(\tmp2_reg_n_0_[2] ),
        .I1(s_state[2]),
        .I2(s_state[4]),
        .I3(s_state[0]),
        .I4(tmp1[2]),
        .O(\bram1a[o][o_din][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3F0A000A)) 
    \bram1a[o][o_din][3]_i_1 
       (.I0(\tmp2_reg_n_0_[3] ),
        .I1(s_state[2]),
        .I2(s_state[4]),
        .I3(s_state[0]),
        .I4(tmp1[3]),
        .O(\bram1a[o][o_din][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3F0A000A)) 
    \bram1a[o][o_din][4]_i_1 
       (.I0(\tmp2_reg_n_0_[4] ),
        .I1(s_state[2]),
        .I2(s_state[4]),
        .I3(s_state[0]),
        .I4(tmp1[4]),
        .O(\bram1a[o][o_din][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3F0A000A)) 
    \bram1a[o][o_din][8]_i_1 
       (.I0(\tmp2_reg_n_0_[8] ),
        .I1(s_state[2]),
        .I2(s_state[4]),
        .I3(s_state[0]),
        .I4(tmp1[8]),
        .O(\bram1a[o][o_din][8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3F0A000A)) 
    \bram1a[o][o_din][9]_i_1 
       (.I0(\tmp2_reg_n_0_[9] ),
        .I1(s_state[2]),
        .I2(s_state[4]),
        .I3(s_state[0]),
        .I4(tmp1[9]),
        .O(\bram1a[o][o_din][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFD7FDE01002100)) 
    \bram1a[o][o_en]_i_1 
       (.I0(s_state[1]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[0]),
        .I4(s_state[4]),
        .I5(o_memc_en),
        .O(\bram1a[o][o_en]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBEEF9E01060004)) 
    \bram1a[o][o_we][3]_i_1 
       (.I0(s_state[2]),
        .I1(s_state[3]),
        .I2(s_state[1]),
        .I3(s_state[4]),
        .I4(s_state[0]),
        .I5(o_memc_we),
        .O(\bram1a[o][o_we][3]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][0] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][0]_i_1_n_0 ),
        .Q(o_memc_addr[0]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][10] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][10]_i_1_n_0 ),
        .Q(o_memc_addr[10]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][11] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][11]_i_1_n_0 ),
        .Q(o_memc_addr[11]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][12] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][12]_i_1_n_0 ),
        .Q(o_memc_addr[12]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram1a_reg[o][o_addr][12]_i_2 
       (.CI(\bram1a_reg[o][o_addr][8]_i_2_n_0 ),
        .CO({\bram1a_reg[o][o_addr][12]_i_2_n_0 ,\bram1a_reg[o][o_addr][12]_i_2_n_1 ,\bram1a_reg[o][o_addr][12]_i_2_n_2 ,\bram1a_reg[o][o_addr][12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(s_out_addr[12:9]),
        .O(in14[12:9]),
        .S({\bram1a[o][o_addr][12]_i_5_n_0 ,\bram1a[o][o_addr][12]_i_6_n_0 ,\bram1a[o][o_addr][12]_i_7_n_0 ,\bram1a[o][o_addr][12]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram1a_reg[o][o_addr][12]_i_3 
       (.CI(\bram1a_reg[o][o_addr][8]_i_3_n_0 ),
        .CO({\bram1a_reg[o][o_addr][12]_i_3_n_0 ,\bram1a_reg[o][o_addr][12]_i_3_n_1 ,\bram1a_reg[o][o_addr][12]_i_3_n_2 ,\bram1a_reg[o][o_addr][12]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_v1_addr_reg_n_0_[12] ,\s_v1_addr_reg_n_0_[11] ,\s_v1_addr_reg_n_0_[10] ,\s_v1_addr_reg_n_0_[9] }),
        .O(in10[12:9]),
        .S({\bram1a[o][o_addr][12]_i_9_n_0 ,\bram1a[o][o_addr][12]_i_10_n_0 ,\bram1a[o][o_addr][12]_i_11_n_0 ,\bram1a[o][o_addr][12]_i_12_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][13] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][13]_i_1_n_0 ),
        .Q(o_memc_addr[13]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][14] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][14]_i_1_n_0 ),
        .Q(o_memc_addr[14]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][15] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][15]_i_1_n_0 ),
        .Q(o_memc_addr[15]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][16] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][16]_i_1_n_0 ),
        .Q(o_memc_addr[16]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram1a_reg[o][o_addr][16]_i_2 
       (.CI(\bram1a_reg[o][o_addr][12]_i_2_n_0 ),
        .CO({\bram1a_reg[o][o_addr][16]_i_2_n_0 ,\bram1a_reg[o][o_addr][16]_i_2_n_1 ,\bram1a_reg[o][o_addr][16]_i_2_n_2 ,\bram1a_reg[o][o_addr][16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(s_out_addr[16:13]),
        .O(in14[16:13]),
        .S({\bram1a[o][o_addr][16]_i_5_n_0 ,\bram1a[o][o_addr][16]_i_6_n_0 ,\bram1a[o][o_addr][16]_i_7_n_0 ,\bram1a[o][o_addr][16]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram1a_reg[o][o_addr][16]_i_3 
       (.CI(\bram1a_reg[o][o_addr][12]_i_3_n_0 ),
        .CO({\bram1a_reg[o][o_addr][16]_i_3_n_0 ,\bram1a_reg[o][o_addr][16]_i_3_n_1 ,\bram1a_reg[o][o_addr][16]_i_3_n_2 ,\bram1a_reg[o][o_addr][16]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_v1_addr_reg_n_0_[16] ,\s_v1_addr_reg_n_0_[15] ,\s_v1_addr_reg_n_0_[14] ,\s_v1_addr_reg_n_0_[13] }),
        .O(in10[16:13]),
        .S({\bram1a[o][o_addr][16]_i_9_n_0 ,\bram1a[o][o_addr][16]_i_10_n_0 ,\bram1a[o][o_addr][16]_i_11_n_0 ,\bram1a[o][o_addr][16]_i_12_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][17] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][17]_i_1_n_0 ),
        .Q(o_memc_addr[17]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][18] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][18]_i_1_n_0 ),
        .Q(o_memc_addr[18]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][19] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][19]_i_1_n_0 ),
        .Q(o_memc_addr[19]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][1] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][1]_i_1_n_0 ),
        .Q(o_memc_addr[1]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][20] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][20]_i_1_n_0 ),
        .Q(o_memc_addr[20]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram1a_reg[o][o_addr][20]_i_2 
       (.CI(\bram1a_reg[o][o_addr][16]_i_2_n_0 ),
        .CO({\bram1a_reg[o][o_addr][20]_i_2_n_0 ,\bram1a_reg[o][o_addr][20]_i_2_n_1 ,\bram1a_reg[o][o_addr][20]_i_2_n_2 ,\bram1a_reg[o][o_addr][20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(s_out_addr[20:17]),
        .O(in14[20:17]),
        .S({\bram1a[o][o_addr][20]_i_5_n_0 ,\bram1a[o][o_addr][20]_i_6_n_0 ,\bram1a[o][o_addr][20]_i_7_n_0 ,\bram1a[o][o_addr][20]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram1a_reg[o][o_addr][20]_i_3 
       (.CI(\bram1a_reg[o][o_addr][16]_i_3_n_0 ),
        .CO({\bram1a_reg[o][o_addr][20]_i_3_n_0 ,\bram1a_reg[o][o_addr][20]_i_3_n_1 ,\bram1a_reg[o][o_addr][20]_i_3_n_2 ,\bram1a_reg[o][o_addr][20]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_v1_addr_reg_n_0_[20] ,\s_v1_addr_reg_n_0_[19] ,\s_v1_addr_reg_n_0_[18] ,\s_v1_addr_reg_n_0_[17] }),
        .O(in10[20:17]),
        .S({\bram1a[o][o_addr][20]_i_9_n_0 ,\bram1a[o][o_addr][20]_i_10_n_0 ,\bram1a[o][o_addr][20]_i_11_n_0 ,\bram1a[o][o_addr][20]_i_12_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][21] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][21]_i_1_n_0 ),
        .Q(o_memc_addr[21]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][22] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][22]_i_1_n_0 ),
        .Q(o_memc_addr[22]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][23] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][23]_i_1_n_0 ),
        .Q(o_memc_addr[23]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][24] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][24]_i_1_n_0 ),
        .Q(o_memc_addr[24]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram1a_reg[o][o_addr][24]_i_2 
       (.CI(\bram1a_reg[o][o_addr][20]_i_2_n_0 ),
        .CO({\bram1a_reg[o][o_addr][24]_i_2_n_0 ,\bram1a_reg[o][o_addr][24]_i_2_n_1 ,\bram1a_reg[o][o_addr][24]_i_2_n_2 ,\bram1a_reg[o][o_addr][24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(s_out_addr[24:21]),
        .O(in14[24:21]),
        .S({\bram1a[o][o_addr][24]_i_5_n_0 ,\bram1a[o][o_addr][24]_i_6_n_0 ,\bram1a[o][o_addr][24]_i_7_n_0 ,\bram1a[o][o_addr][24]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram1a_reg[o][o_addr][24]_i_3 
       (.CI(\bram1a_reg[o][o_addr][20]_i_3_n_0 ),
        .CO({\bram1a_reg[o][o_addr][24]_i_3_n_0 ,\bram1a_reg[o][o_addr][24]_i_3_n_1 ,\bram1a_reg[o][o_addr][24]_i_3_n_2 ,\bram1a_reg[o][o_addr][24]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_v1_addr_reg_n_0_[24] ,\s_v1_addr_reg_n_0_[23] ,\s_v1_addr_reg_n_0_[22] ,\s_v1_addr_reg_n_0_[21] }),
        .O(in10[24:21]),
        .S({\bram1a[o][o_addr][24]_i_9_n_0 ,\bram1a[o][o_addr][24]_i_10_n_0 ,\bram1a[o][o_addr][24]_i_11_n_0 ,\bram1a[o][o_addr][24]_i_12_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][25] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][25]_i_1_n_0 ),
        .Q(o_memc_addr[25]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][26] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][26]_i_1_n_0 ),
        .Q(o_memc_addr[26]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][27] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][27]_i_1_n_0 ),
        .Q(o_memc_addr[27]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][28] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][28]_i_1_n_0 ),
        .Q(o_memc_addr[28]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram1a_reg[o][o_addr][28]_i_2 
       (.CI(\bram1a_reg[o][o_addr][24]_i_2_n_0 ),
        .CO({\bram1a_reg[o][o_addr][28]_i_2_n_0 ,\bram1a_reg[o][o_addr][28]_i_2_n_1 ,\bram1a_reg[o][o_addr][28]_i_2_n_2 ,\bram1a_reg[o][o_addr][28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(s_out_addr[28:25]),
        .O(in14[28:25]),
        .S({\bram1a[o][o_addr][28]_i_5_n_0 ,\bram1a[o][o_addr][28]_i_6_n_0 ,\bram1a[o][o_addr][28]_i_7_n_0 ,\bram1a[o][o_addr][28]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram1a_reg[o][o_addr][28]_i_3 
       (.CI(\bram1a_reg[o][o_addr][24]_i_3_n_0 ),
        .CO({\bram1a_reg[o][o_addr][28]_i_3_n_0 ,\bram1a_reg[o][o_addr][28]_i_3_n_1 ,\bram1a_reg[o][o_addr][28]_i_3_n_2 ,\bram1a_reg[o][o_addr][28]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_v1_addr_reg_n_0_[28] ,\s_v1_addr_reg_n_0_[27] ,\s_v1_addr_reg_n_0_[26] ,\s_v1_addr_reg_n_0_[25] }),
        .O(in10[28:25]),
        .S({\bram1a[o][o_addr][28]_i_9_n_0 ,\bram1a[o][o_addr][28]_i_10_n_0 ,\bram1a[o][o_addr][28]_i_11_n_0 ,\bram1a[o][o_addr][28]_i_12_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][29] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][29]_i_1_n_0 ),
        .Q(o_memc_addr[29]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][2] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][2]_i_1_n_0 ),
        .Q(o_memc_addr[2]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][30] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][30]_i_1_n_0 ),
        .Q(o_memc_addr[30]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][31] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][31]_i_2_n_0 ),
        .Q(o_memc_addr[31]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram1a_reg[o][o_addr][31]_i_3 
       (.CI(\bram1a_reg[o][o_addr][28]_i_2_n_0 ),
        .CO({\NLW_bram1a_reg[o][o_addr][31]_i_3_CO_UNCONNECTED [3:2],\bram1a_reg[o][o_addr][31]_i_3_n_2 ,\bram1a_reg[o][o_addr][31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s_out_addr[30:29]}),
        .O({\NLW_bram1a_reg[o][o_addr][31]_i_3_O_UNCONNECTED [3],in14[31:29]}),
        .S({1'b0,s_out_addr[31],\bram1a[o][o_addr][31]_i_6_n_0 ,\bram1a[o][o_addr][31]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram1a_reg[o][o_addr][31]_i_4 
       (.CI(\bram1a_reg[o][o_addr][28]_i_3_n_0 ),
        .CO({\NLW_bram1a_reg[o][o_addr][31]_i_4_CO_UNCONNECTED [3:2],\bram1a_reg[o][o_addr][31]_i_4_n_2 ,\bram1a_reg[o][o_addr][31]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\s_v1_addr_reg_n_0_[30] ,\s_v1_addr_reg_n_0_[29] }),
        .O({\NLW_bram1a_reg[o][o_addr][31]_i_4_O_UNCONNECTED [3],in10[31:29]}),
        .S({1'b0,\s_v1_addr_reg_n_0_[31] ,\bram1a[o][o_addr][31]_i_8_n_0 ,\bram1a[o][o_addr][31]_i_9_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][3] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][3]_i_1_n_0 ),
        .Q(o_memc_addr[3]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][4] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][4]_i_1_n_0 ),
        .Q(o_memc_addr[4]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram1a_reg[o][o_addr][4]_i_2 
       (.CI(1'b0),
        .CO({\bram1a_reg[o][o_addr][4]_i_2_n_0 ,\bram1a_reg[o][o_addr][4]_i_2_n_1 ,\bram1a_reg[o][o_addr][4]_i_2_n_2 ,\bram1a_reg[o][o_addr][4]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(s_out_addr[4:1]),
        .O({in14[4:2],\NLW_bram1a_reg[o][o_addr][4]_i_2_O_UNCONNECTED [0]}),
        .S({\bram1a[o][o_addr][4]_i_5_n_0 ,\bram1a[o][o_addr][4]_i_6_n_0 ,\bram1a[o][o_addr][4]_i_7_n_0 ,\bram1a[o][o_addr][4]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram1a_reg[o][o_addr][4]_i_3 
       (.CI(1'b0),
        .CO({\bram1a_reg[o][o_addr][4]_i_3_n_0 ,\bram1a_reg[o][o_addr][4]_i_3_n_1 ,\bram1a_reg[o][o_addr][4]_i_3_n_2 ,\bram1a_reg[o][o_addr][4]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_v1_addr_reg_n_0_[4] ,\s_v1_addr_reg_n_0_[3] ,\s_v1_addr_reg_n_0_[2] ,\s_v1_addr_reg_n_0_[1] }),
        .O({in10[4:2],\NLW_bram1a_reg[o][o_addr][4]_i_3_O_UNCONNECTED [0]}),
        .S({\bram1a[o][o_addr][4]_i_9_n_0 ,\bram1a[o][o_addr][4]_i_10_n_0 ,\bram1a[o][o_addr][4]_i_11_n_0 ,\bram1a[o][o_addr][4]_i_12_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][5] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][5]_i_1_n_0 ),
        .Q(o_memc_addr[5]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][6] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][6]_i_1_n_0 ),
        .Q(o_memc_addr[6]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][7] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][7]_i_1_n_0 ),
        .Q(o_memc_addr[7]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][8] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][8]_i_1_n_0 ),
        .Q(o_memc_addr[8]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram1a_reg[o][o_addr][8]_i_2 
       (.CI(\bram1a_reg[o][o_addr][4]_i_2_n_0 ),
        .CO({\bram1a_reg[o][o_addr][8]_i_2_n_0 ,\bram1a_reg[o][o_addr][8]_i_2_n_1 ,\bram1a_reg[o][o_addr][8]_i_2_n_2 ,\bram1a_reg[o][o_addr][8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(s_out_addr[8:5]),
        .O(in14[8:5]),
        .S({\bram1a[o][o_addr][8]_i_5_n_0 ,\bram1a[o][o_addr][8]_i_6_n_0 ,\bram1a[o][o_addr][8]_i_7_n_0 ,\bram1a[o][o_addr][8]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram1a_reg[o][o_addr][8]_i_3 
       (.CI(\bram1a_reg[o][o_addr][4]_i_3_n_0 ),
        .CO({\bram1a_reg[o][o_addr][8]_i_3_n_0 ,\bram1a_reg[o][o_addr][8]_i_3_n_1 ,\bram1a_reg[o][o_addr][8]_i_3_n_2 ,\bram1a_reg[o][o_addr][8]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_v1_addr_reg_n_0_[8] ,\s_v1_addr_reg_n_0_[7] ,\s_v1_addr_reg_n_0_[6] ,\s_v1_addr_reg_n_0_[5] }),
        .O(in10[8:5]),
        .S({\bram1a[o][o_addr][8]_i_9_n_0 ,\bram1a[o][o_addr][8]_i_10_n_0 ,\bram1a[o][o_addr][8]_i_11_n_0 ,\bram1a[o][o_addr][8]_i_12_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][9] 
       (.C(i_clk),
        .CE(\bram1a[o][o_addr][31]_i_1_n_0 ),
        .D(\bram1a[o][o_addr][9]_i_1_n_0 ),
        .Q(o_memc_addr[9]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][0] 
       (.C(i_clk),
        .CE(\bram1a[o][o_din][28]_i_1_n_0 ),
        .D(\bram1a[o][o_din][0]_i_1_n_0 ),
        .Q(o_memc_din[0]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][10] 
       (.C(i_clk),
        .CE(\bram1a[o][o_din][28]_i_1_n_0 ),
        .D(\bram1a[o][o_din][10]_i_1_n_0 ),
        .Q(o_memc_din[7]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][11] 
       (.C(i_clk),
        .CE(\bram1a[o][o_din][28]_i_1_n_0 ),
        .D(\bram1a[o][o_din][11]_i_1_n_0 ),
        .Q(o_memc_din[8]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][12] 
       (.C(i_clk),
        .CE(\bram1a[o][o_din][28]_i_1_n_0 ),
        .D(\bram1a[o][o_din][12]_i_1_n_0 ),
        .Q(o_memc_din[9]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][16] 
       (.C(i_clk),
        .CE(\bram1a[o][o_din][28]_i_1_n_0 ),
        .D(\bram1a[o][o_din][16]_i_1_n_0 ),
        .Q(o_memc_din[10]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][17] 
       (.C(i_clk),
        .CE(\bram1a[o][o_din][28]_i_1_n_0 ),
        .D(\bram1a[o][o_din][17]_i_1_n_0 ),
        .Q(o_memc_din[11]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][18] 
       (.C(i_clk),
        .CE(\bram1a[o][o_din][28]_i_1_n_0 ),
        .D(\bram1a[o][o_din][18]_i_1_n_0 ),
        .Q(o_memc_din[12]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][19] 
       (.C(i_clk),
        .CE(\bram1a[o][o_din][28]_i_1_n_0 ),
        .D(\bram1a[o][o_din][19]_i_1_n_0 ),
        .Q(o_memc_din[13]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][1] 
       (.C(i_clk),
        .CE(\bram1a[o][o_din][28]_i_1_n_0 ),
        .D(\bram1a[o][o_din][1]_i_1_n_0 ),
        .Q(o_memc_din[1]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][20] 
       (.C(i_clk),
        .CE(\bram1a[o][o_din][28]_i_1_n_0 ),
        .D(\bram1a[o][o_din][20]_i_1_n_0 ),
        .Q(o_memc_din[14]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][24] 
       (.C(i_clk),
        .CE(\bram1a[o][o_din][28]_i_1_n_0 ),
        .D(\bram1a[o][o_din][24]_i_1_n_0 ),
        .Q(o_memc_din[15]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][25] 
       (.C(i_clk),
        .CE(\bram1a[o][o_din][28]_i_1_n_0 ),
        .D(\bram1a[o][o_din][25]_i_1_n_0 ),
        .Q(o_memc_din[16]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][26] 
       (.C(i_clk),
        .CE(\bram1a[o][o_din][28]_i_1_n_0 ),
        .D(\bram1a[o][o_din][26]_i_1_n_0 ),
        .Q(o_memc_din[17]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][27] 
       (.C(i_clk),
        .CE(\bram1a[o][o_din][28]_i_1_n_0 ),
        .D(\bram1a[o][o_din][27]_i_1_n_0 ),
        .Q(o_memc_din[18]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][28] 
       (.C(i_clk),
        .CE(\bram1a[o][o_din][28]_i_1_n_0 ),
        .D(\bram1a[o][o_din][28]_i_2_n_0 ),
        .Q(o_memc_din[19]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][2] 
       (.C(i_clk),
        .CE(\bram1a[o][o_din][28]_i_1_n_0 ),
        .D(\bram1a[o][o_din][2]_i_1_n_0 ),
        .Q(o_memc_din[2]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][3] 
       (.C(i_clk),
        .CE(\bram1a[o][o_din][28]_i_1_n_0 ),
        .D(\bram1a[o][o_din][3]_i_1_n_0 ),
        .Q(o_memc_din[3]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][4] 
       (.C(i_clk),
        .CE(\bram1a[o][o_din][28]_i_1_n_0 ),
        .D(\bram1a[o][o_din][4]_i_1_n_0 ),
        .Q(o_memc_din[4]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][8] 
       (.C(i_clk),
        .CE(\bram1a[o][o_din][28]_i_1_n_0 ),
        .D(\bram1a[o][o_din][8]_i_1_n_0 ),
        .Q(o_memc_din[5]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_din][9] 
       (.C(i_clk),
        .CE(\bram1a[o][o_din][28]_i_1_n_0 ),
        .D(\bram1a[o][o_din][9]_i_1_n_0 ),
        .Q(o_memc_din[6]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC EN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_en] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\bram1a[o][o_en]_i_1_n_0 ),
        .Q(o_memc_en),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC WE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_we][3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\bram1a[o][o_we][3]_i_1_n_0 ),
        .Q(o_memc_we),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFFFF200000002)) 
    control0a_i_1
       (.I0(i_enable),
        .I1(i_bram_sel[0]),
        .I2(s_state[0]),
        .I3(\bram1a[o][o_addr][0]_i_2_n_0 ),
        .I4(control0a_i_2_n_0),
        .I5(o_controla),
        .O(control0a_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    control0a_i_2
       (.I0(s_state[3]),
        .I1(s_state[2]),
        .O(control0a_i_2_n_0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecA CTRL" *) 
  FDRE #(
    .INIT(1'b0)) 
    control0a_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(control0a_i_1_n_0),
        .Q(o_controla),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFF08FF00000800)) 
    control0b_i_1
       (.I0(i_enable),
        .I1(i_bram_sel[1]),
        .I2(i_bram_sel[0]),
        .I3(control0b_i_2_n_0),
        .I4(rst),
        .I5(o_controlb),
        .O(control0b_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    control0b_i_2
       (.I0(s_state[0]),
        .I1(s_state[4]),
        .I2(s_state[1]),
        .I3(s_state[3]),
        .I4(s_state[2]),
        .O(control0b_i_2_n_0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecB CTRL" *) 
  FDRE #(
    .INIT(1'b0)) 
    control0b_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(control0b_i_1_n_0),
        .Q(o_controlb),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFF200000002)) 
    control1a_i_1
       (.I0(i_enable),
        .I1(i_bram_sel[1]),
        .I2(s_state[0]),
        .I3(\bram1a[o][o_addr][0]_i_2_n_0 ),
        .I4(control0a_i_2_n_0),
        .I5(o_controlc),
        .O(control1a_i_1_n_0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_VecC CTRL" *) 
  FDRE #(
    .INIT(1'b0)) 
    control1a_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(control1a_i_1_n_0),
        .Q(o_controlc),
        .R(rst));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_1
       (.I0(i_memb_dout[15]),
        .I1(i_mema_dout[15]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_1__0
       (.I0(i_memb_dout[23]),
        .I1(i_mema_dout[23]),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_1__1
       (.I0(i_memb_dout[31]),
        .I1(i_mema_dout[31]),
        .O(i__carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_1__10
       (.I0(\s_ctr_reg_n_0_[7] ),
        .I1(s_out_addr[7]),
        .O(i__carry__0_i_1__10_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_1__11
       (.I0(\s_ctr_reg_n_0_[7] ),
        .I1(s_out_addr[7]),
        .O(i__carry__0_i_1__11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_1__2
       (.I0(i_memc_dout[7]),
        .I1(\s_v1_reg_n_0_[7] ),
        .O(i__carry__0_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_1__3
       (.I0(i_memc_dout[15]),
        .I1(p_1_in10_in[7]),
        .O(i__carry__0_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_1__4
       (.I0(i_memc_dout[23]),
        .I1(p_1_in13_in[7]),
        .O(i__carry__0_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_1__5
       (.I0(i_memc_dout[31]),
        .I1(p_1_in16_in[7]),
        .O(i__carry__0_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_1__6
       (.I0(i_mema_dout[7]),
        .I1(i_memc_dout[7]),
        .O(i__carry__0_i_1__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_1__7
       (.I0(i_mema_dout[15]),
        .I1(i_memc_dout[15]),
        .O(i__carry__0_i_1__7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_1__8
       (.I0(i_mema_dout[23]),
        .I1(i_memc_dout[23]),
        .O(i__carry__0_i_1__8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_1__9
       (.I0(i_mema_dout[31]),
        .I1(i_memc_dout[31]),
        .O(i__carry__0_i_1__9_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_2
       (.I0(\s_ctr_reg_n_0_[6] ),
        .I1(s_out_addr[6]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_2__0
       (.I0(\s_ctr_reg_n_0_[6] ),
        .I1(s_out_addr[6]),
        .O(i__carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_2__1
       (.I0(i_mema_dout[14]),
        .I1(i_memb_dout[14]),
        .O(i__carry__0_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_2__10
       (.I0(i_memc_dout[22]),
        .I1(i_mema_dout[22]),
        .O(i__carry__0_i_2__10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_2__11
       (.I0(i_memc_dout[30]),
        .I1(i_mema_dout[30]),
        .O(i__carry__0_i_2__11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_2__2
       (.I0(i_mema_dout[22]),
        .I1(i_memb_dout[22]),
        .O(i__carry__0_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_2__3
       (.I0(i_mema_dout[30]),
        .I1(i_memb_dout[30]),
        .O(i__carry__0_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_2__4
       (.I0(\s_v1_reg_n_0_[6] ),
        .I1(i_memc_dout[6]),
        .O(i__carry__0_i_2__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_2__5
       (.I0(p_1_in10_in[6]),
        .I1(i_memc_dout[14]),
        .O(i__carry__0_i_2__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_2__6
       (.I0(p_1_in13_in[6]),
        .I1(i_memc_dout[22]),
        .O(i__carry__0_i_2__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_2__7
       (.I0(p_1_in16_in[6]),
        .I1(i_memc_dout[30]),
        .O(i__carry__0_i_2__7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_2__8
       (.I0(i_memc_dout[6]),
        .I1(i_mema_dout[6]),
        .O(i__carry__0_i_2__8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_2__9
       (.I0(i_memc_dout[14]),
        .I1(i_mema_dout[14]),
        .O(i__carry__0_i_2__9_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_3
       (.I0(\s_ctr_reg_n_0_[5] ),
        .I1(s_out_addr[5]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_3__0
       (.I0(\s_ctr_reg_n_0_[5] ),
        .I1(s_out_addr[5]),
        .O(i__carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_3__1
       (.I0(i_mema_dout[13]),
        .I1(i_memb_dout[13]),
        .O(i__carry__0_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_3__10
       (.I0(i_memc_dout[21]),
        .I1(i_mema_dout[21]),
        .O(i__carry__0_i_3__10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_3__11
       (.I0(i_memc_dout[29]),
        .I1(i_mema_dout[29]),
        .O(i__carry__0_i_3__11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_3__2
       (.I0(i_mema_dout[21]),
        .I1(i_memb_dout[21]),
        .O(i__carry__0_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_3__3
       (.I0(i_mema_dout[29]),
        .I1(i_memb_dout[29]),
        .O(i__carry__0_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_3__4
       (.I0(\s_v1_reg_n_0_[5] ),
        .I1(i_memc_dout[5]),
        .O(i__carry__0_i_3__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_3__5
       (.I0(p_1_in10_in[5]),
        .I1(i_memc_dout[13]),
        .O(i__carry__0_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_3__6
       (.I0(p_1_in13_in[5]),
        .I1(i_memc_dout[21]),
        .O(i__carry__0_i_3__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_3__7
       (.I0(p_1_in16_in[5]),
        .I1(i_memc_dout[29]),
        .O(i__carry__0_i_3__7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_3__8
       (.I0(i_memc_dout[5]),
        .I1(i_mema_dout[5]),
        .O(i__carry__0_i_3__8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_3__9
       (.I0(i_memc_dout[13]),
        .I1(i_mema_dout[13]),
        .O(i__carry__0_i_3__9_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_4
       (.I0(\s_ctr_reg_n_0_[4] ),
        .I1(s_out_addr[4]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_4__0
       (.I0(\s_ctr_reg_n_0_[4] ),
        .I1(s_out_addr[4]),
        .O(i__carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_4__1
       (.I0(i_mema_dout[12]),
        .I1(i_memb_dout[12]),
        .O(i__carry__0_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_4__10
       (.I0(i_memc_dout[20]),
        .I1(i_mema_dout[20]),
        .O(i__carry__0_i_4__10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_4__11
       (.I0(i_memc_dout[28]),
        .I1(i_mema_dout[28]),
        .O(i__carry__0_i_4__11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_4__2
       (.I0(i_mema_dout[20]),
        .I1(i_memb_dout[20]),
        .O(i__carry__0_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_4__3
       (.I0(i_mema_dout[28]),
        .I1(i_memb_dout[28]),
        .O(i__carry__0_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_4__4
       (.I0(\s_v1_reg_n_0_[4] ),
        .I1(i_memc_dout[4]),
        .O(i__carry__0_i_4__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_4__5
       (.I0(p_1_in10_in[4]),
        .I1(i_memc_dout[12]),
        .O(i__carry__0_i_4__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_4__6
       (.I0(p_1_in13_in[4]),
        .I1(i_memc_dout[20]),
        .O(i__carry__0_i_4__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_4__7
       (.I0(p_1_in16_in[4]),
        .I1(i_memc_dout[28]),
        .O(i__carry__0_i_4__7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_4__8
       (.I0(i_memc_dout[4]),
        .I1(i_mema_dout[4]),
        .O(i__carry__0_i_4__8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_4__9
       (.I0(i_memc_dout[12]),
        .I1(i_mema_dout[12]),
        .O(i__carry__0_i_4__9_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__0_i_5
       (.I0(s_out_addr[7]),
        .I1(\s_ctr_reg_n_0_[7] ),
        .I2(\s_ctr_reg_n_0_[8] ),
        .I3(s_out_addr[8]),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__0_i_5__0
       (.I0(s_out_addr[7]),
        .I1(\s_ctr_reg_n_0_[7] ),
        .I2(\s_ctr_reg_n_0_[8] ),
        .I3(s_out_addr[8]),
        .O(i__carry__0_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__0_i_6
       (.I0(s_out_addr[6]),
        .I1(\s_ctr_reg_n_0_[6] ),
        .I2(\s_ctr_reg_n_0_[7] ),
        .I3(s_out_addr[7]),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__0_i_6__0
       (.I0(s_out_addr[6]),
        .I1(\s_ctr_reg_n_0_[6] ),
        .I2(\s_ctr_reg_n_0_[7] ),
        .I3(s_out_addr[7]),
        .O(i__carry__0_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__0_i_7
       (.I0(s_out_addr[5]),
        .I1(\s_ctr_reg_n_0_[5] ),
        .I2(\s_ctr_reg_n_0_[6] ),
        .I3(s_out_addr[6]),
        .O(i__carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__0_i_7__0
       (.I0(s_out_addr[5]),
        .I1(\s_ctr_reg_n_0_[5] ),
        .I2(\s_ctr_reg_n_0_[6] ),
        .I3(s_out_addr[6]),
        .O(i__carry__0_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__0_i_8
       (.I0(s_out_addr[4]),
        .I1(\s_ctr_reg_n_0_[4] ),
        .I2(\s_ctr_reg_n_0_[5] ),
        .I3(s_out_addr[5]),
        .O(i__carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__0_i_8__0
       (.I0(s_out_addr[4]),
        .I1(\s_ctr_reg_n_0_[4] ),
        .I2(\s_ctr_reg_n_0_[5] ),
        .I3(s_out_addr[5]),
        .O(i__carry__0_i_8__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_1
       (.I0(\s_ctr_reg_n_0_[11] ),
        .I1(s_out_addr[11]),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_1__0
       (.I0(\s_ctr_reg_n_0_[11] ),
        .I1(s_out_addr[11]),
        .O(i__carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_2
       (.I0(\s_ctr_reg_n_0_[10] ),
        .I1(s_out_addr[10]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_2__0
       (.I0(\s_ctr_reg_n_0_[10] ),
        .I1(s_out_addr[10]),
        .O(i__carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_3
       (.I0(\s_ctr_reg_n_0_[9] ),
        .I1(s_out_addr[9]),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_3__0
       (.I0(\s_ctr_reg_n_0_[9] ),
        .I1(s_out_addr[9]),
        .O(i__carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_4
       (.I0(\s_ctr_reg_n_0_[8] ),
        .I1(s_out_addr[8]),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_4__0
       (.I0(\s_ctr_reg_n_0_[8] ),
        .I1(s_out_addr[8]),
        .O(i__carry__1_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__1_i_5
       (.I0(s_out_addr[11]),
        .I1(\s_ctr_reg_n_0_[11] ),
        .I2(\s_ctr_reg_n_0_[12] ),
        .I3(s_out_addr[12]),
        .O(i__carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__1_i_5__0
       (.I0(s_out_addr[11]),
        .I1(\s_ctr_reg_n_0_[11] ),
        .I2(\s_ctr_reg_n_0_[12] ),
        .I3(s_out_addr[12]),
        .O(i__carry__1_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__1_i_6
       (.I0(s_out_addr[10]),
        .I1(\s_ctr_reg_n_0_[10] ),
        .I2(\s_ctr_reg_n_0_[11] ),
        .I3(s_out_addr[11]),
        .O(i__carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__1_i_6__0
       (.I0(s_out_addr[10]),
        .I1(\s_ctr_reg_n_0_[10] ),
        .I2(\s_ctr_reg_n_0_[11] ),
        .I3(s_out_addr[11]),
        .O(i__carry__1_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__1_i_7
       (.I0(s_out_addr[9]),
        .I1(\s_ctr_reg_n_0_[9] ),
        .I2(\s_ctr_reg_n_0_[10] ),
        .I3(s_out_addr[10]),
        .O(i__carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__1_i_7__0
       (.I0(s_out_addr[9]),
        .I1(\s_ctr_reg_n_0_[9] ),
        .I2(\s_ctr_reg_n_0_[10] ),
        .I3(s_out_addr[10]),
        .O(i__carry__1_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__1_i_8
       (.I0(s_out_addr[8]),
        .I1(\s_ctr_reg_n_0_[8] ),
        .I2(\s_ctr_reg_n_0_[9] ),
        .I3(s_out_addr[9]),
        .O(i__carry__1_i_8_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__1_i_8__0
       (.I0(s_out_addr[8]),
        .I1(\s_ctr_reg_n_0_[8] ),
        .I2(\s_ctr_reg_n_0_[9] ),
        .I3(s_out_addr[9]),
        .O(i__carry__1_i_8__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_1
       (.I0(\s_ctr_reg_n_0_[15] ),
        .I1(s_out_addr[15]),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_1__0
       (.I0(\s_ctr_reg_n_0_[15] ),
        .I1(s_out_addr[15]),
        .O(i__carry__2_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_2
       (.I0(\s_ctr_reg_n_0_[14] ),
        .I1(s_out_addr[14]),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_2__0
       (.I0(\s_ctr_reg_n_0_[14] ),
        .I1(s_out_addr[14]),
        .O(i__carry__2_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_3
       (.I0(\s_ctr_reg_n_0_[13] ),
        .I1(s_out_addr[13]),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_3__0
       (.I0(\s_ctr_reg_n_0_[13] ),
        .I1(s_out_addr[13]),
        .O(i__carry__2_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_4
       (.I0(\s_ctr_reg_n_0_[12] ),
        .I1(s_out_addr[12]),
        .O(i__carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_4__0
       (.I0(\s_ctr_reg_n_0_[12] ),
        .I1(s_out_addr[12]),
        .O(i__carry__2_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__2_i_5
       (.I0(s_out_addr[15]),
        .I1(\s_ctr_reg_n_0_[15] ),
        .I2(\s_ctr_reg_n_0_[16] ),
        .I3(s_out_addr[16]),
        .O(i__carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__2_i_5__0
       (.I0(s_out_addr[15]),
        .I1(\s_ctr_reg_n_0_[15] ),
        .I2(\s_ctr_reg_n_0_[16] ),
        .I3(s_out_addr[16]),
        .O(i__carry__2_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__2_i_6
       (.I0(s_out_addr[14]),
        .I1(\s_ctr_reg_n_0_[14] ),
        .I2(\s_ctr_reg_n_0_[15] ),
        .I3(s_out_addr[15]),
        .O(i__carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__2_i_6__0
       (.I0(s_out_addr[14]),
        .I1(\s_ctr_reg_n_0_[14] ),
        .I2(\s_ctr_reg_n_0_[15] ),
        .I3(s_out_addr[15]),
        .O(i__carry__2_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__2_i_7
       (.I0(s_out_addr[13]),
        .I1(\s_ctr_reg_n_0_[13] ),
        .I2(\s_ctr_reg_n_0_[14] ),
        .I3(s_out_addr[14]),
        .O(i__carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__2_i_7__0
       (.I0(s_out_addr[13]),
        .I1(\s_ctr_reg_n_0_[13] ),
        .I2(\s_ctr_reg_n_0_[14] ),
        .I3(s_out_addr[14]),
        .O(i__carry__2_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__2_i_8
       (.I0(s_out_addr[12]),
        .I1(\s_ctr_reg_n_0_[12] ),
        .I2(\s_ctr_reg_n_0_[13] ),
        .I3(s_out_addr[13]),
        .O(i__carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__2_i_8__0
       (.I0(s_out_addr[12]),
        .I1(\s_ctr_reg_n_0_[12] ),
        .I2(\s_ctr_reg_n_0_[13] ),
        .I3(s_out_addr[13]),
        .O(i__carry__2_i_8__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__3_i_1
       (.I0(\s_ctr_reg_n_0_[19] ),
        .I1(s_out_addr[19]),
        .O(i__carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__3_i_1__0
       (.I0(\s_ctr_reg_n_0_[19] ),
        .I1(s_out_addr[19]),
        .O(i__carry__3_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__3_i_2
       (.I0(\s_ctr_reg_n_0_[18] ),
        .I1(s_out_addr[18]),
        .O(i__carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__3_i_2__0
       (.I0(\s_ctr_reg_n_0_[18] ),
        .I1(s_out_addr[18]),
        .O(i__carry__3_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__3_i_3
       (.I0(\s_ctr_reg_n_0_[17] ),
        .I1(s_out_addr[17]),
        .O(i__carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__3_i_3__0
       (.I0(\s_ctr_reg_n_0_[17] ),
        .I1(s_out_addr[17]),
        .O(i__carry__3_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__3_i_4
       (.I0(\s_ctr_reg_n_0_[16] ),
        .I1(s_out_addr[16]),
        .O(i__carry__3_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__3_i_4__0
       (.I0(\s_ctr_reg_n_0_[16] ),
        .I1(s_out_addr[16]),
        .O(i__carry__3_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__3_i_5
       (.I0(s_out_addr[19]),
        .I1(\s_ctr_reg_n_0_[19] ),
        .I2(\s_ctr_reg_n_0_[20] ),
        .I3(s_out_addr[20]),
        .O(i__carry__3_i_5_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__3_i_5__0
       (.I0(s_out_addr[19]),
        .I1(\s_ctr_reg_n_0_[19] ),
        .I2(\s_ctr_reg_n_0_[20] ),
        .I3(s_out_addr[20]),
        .O(i__carry__3_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__3_i_6
       (.I0(s_out_addr[18]),
        .I1(\s_ctr_reg_n_0_[18] ),
        .I2(\s_ctr_reg_n_0_[19] ),
        .I3(s_out_addr[19]),
        .O(i__carry__3_i_6_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__3_i_6__0
       (.I0(s_out_addr[18]),
        .I1(\s_ctr_reg_n_0_[18] ),
        .I2(\s_ctr_reg_n_0_[19] ),
        .I3(s_out_addr[19]),
        .O(i__carry__3_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__3_i_7
       (.I0(s_out_addr[17]),
        .I1(\s_ctr_reg_n_0_[17] ),
        .I2(\s_ctr_reg_n_0_[18] ),
        .I3(s_out_addr[18]),
        .O(i__carry__3_i_7_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__3_i_7__0
       (.I0(s_out_addr[17]),
        .I1(\s_ctr_reg_n_0_[17] ),
        .I2(\s_ctr_reg_n_0_[18] ),
        .I3(s_out_addr[18]),
        .O(i__carry__3_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__3_i_8
       (.I0(s_out_addr[16]),
        .I1(\s_ctr_reg_n_0_[16] ),
        .I2(\s_ctr_reg_n_0_[17] ),
        .I3(s_out_addr[17]),
        .O(i__carry__3_i_8_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__3_i_8__0
       (.I0(s_out_addr[16]),
        .I1(\s_ctr_reg_n_0_[16] ),
        .I2(\s_ctr_reg_n_0_[17] ),
        .I3(s_out_addr[17]),
        .O(i__carry__3_i_8__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__4_i_1
       (.I0(\s_ctr_reg_n_0_[23] ),
        .I1(s_out_addr[23]),
        .O(i__carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__4_i_1__0
       (.I0(\s_ctr_reg_n_0_[23] ),
        .I1(s_out_addr[23]),
        .O(i__carry__4_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__4_i_2
       (.I0(\s_ctr_reg_n_0_[22] ),
        .I1(s_out_addr[22]),
        .O(i__carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__4_i_2__0
       (.I0(\s_ctr_reg_n_0_[22] ),
        .I1(s_out_addr[22]),
        .O(i__carry__4_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__4_i_3
       (.I0(\s_ctr_reg_n_0_[21] ),
        .I1(s_out_addr[21]),
        .O(i__carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__4_i_3__0
       (.I0(\s_ctr_reg_n_0_[21] ),
        .I1(s_out_addr[21]),
        .O(i__carry__4_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__4_i_4
       (.I0(\s_ctr_reg_n_0_[20] ),
        .I1(s_out_addr[20]),
        .O(i__carry__4_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__4_i_4__0
       (.I0(\s_ctr_reg_n_0_[20] ),
        .I1(s_out_addr[20]),
        .O(i__carry__4_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__4_i_5
       (.I0(s_out_addr[23]),
        .I1(\s_ctr_reg_n_0_[23] ),
        .I2(\s_ctr_reg_n_0_[24] ),
        .I3(s_out_addr[24]),
        .O(i__carry__4_i_5_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__4_i_5__0
       (.I0(s_out_addr[23]),
        .I1(\s_ctr_reg_n_0_[23] ),
        .I2(\s_ctr_reg_n_0_[24] ),
        .I3(s_out_addr[24]),
        .O(i__carry__4_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__4_i_6
       (.I0(s_out_addr[22]),
        .I1(\s_ctr_reg_n_0_[22] ),
        .I2(\s_ctr_reg_n_0_[23] ),
        .I3(s_out_addr[23]),
        .O(i__carry__4_i_6_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__4_i_6__0
       (.I0(s_out_addr[22]),
        .I1(\s_ctr_reg_n_0_[22] ),
        .I2(\s_ctr_reg_n_0_[23] ),
        .I3(s_out_addr[23]),
        .O(i__carry__4_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__4_i_7
       (.I0(s_out_addr[21]),
        .I1(\s_ctr_reg_n_0_[21] ),
        .I2(\s_ctr_reg_n_0_[22] ),
        .I3(s_out_addr[22]),
        .O(i__carry__4_i_7_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__4_i_7__0
       (.I0(s_out_addr[21]),
        .I1(\s_ctr_reg_n_0_[21] ),
        .I2(\s_ctr_reg_n_0_[22] ),
        .I3(s_out_addr[22]),
        .O(i__carry__4_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__4_i_8
       (.I0(s_out_addr[20]),
        .I1(\s_ctr_reg_n_0_[20] ),
        .I2(\s_ctr_reg_n_0_[21] ),
        .I3(s_out_addr[21]),
        .O(i__carry__4_i_8_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__4_i_8__0
       (.I0(s_out_addr[20]),
        .I1(\s_ctr_reg_n_0_[20] ),
        .I2(\s_ctr_reg_n_0_[21] ),
        .I3(s_out_addr[21]),
        .O(i__carry__4_i_8__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__5_i_1
       (.I0(\s_ctr_reg_n_0_[27] ),
        .I1(s_out_addr[27]),
        .O(i__carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__5_i_1__0
       (.I0(\s_ctr_reg_n_0_[27] ),
        .I1(s_out_addr[27]),
        .O(i__carry__5_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__5_i_2
       (.I0(\s_ctr_reg_n_0_[26] ),
        .I1(s_out_addr[26]),
        .O(i__carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__5_i_2__0
       (.I0(\s_ctr_reg_n_0_[26] ),
        .I1(s_out_addr[26]),
        .O(i__carry__5_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__5_i_3
       (.I0(\s_ctr_reg_n_0_[25] ),
        .I1(s_out_addr[25]),
        .O(i__carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__5_i_3__0
       (.I0(\s_ctr_reg_n_0_[25] ),
        .I1(s_out_addr[25]),
        .O(i__carry__5_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__5_i_4
       (.I0(\s_ctr_reg_n_0_[24] ),
        .I1(s_out_addr[24]),
        .O(i__carry__5_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__5_i_4__0
       (.I0(\s_ctr_reg_n_0_[24] ),
        .I1(s_out_addr[24]),
        .O(i__carry__5_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__5_i_5
       (.I0(s_out_addr[27]),
        .I1(\s_ctr_reg_n_0_[27] ),
        .I2(\s_ctr_reg_n_0_[28] ),
        .I3(s_out_addr[28]),
        .O(i__carry__5_i_5_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__5_i_5__0
       (.I0(s_out_addr[27]),
        .I1(\s_ctr_reg_n_0_[27] ),
        .I2(\s_ctr_reg_n_0_[28] ),
        .I3(s_out_addr[28]),
        .O(i__carry__5_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__5_i_6
       (.I0(s_out_addr[26]),
        .I1(\s_ctr_reg_n_0_[26] ),
        .I2(\s_ctr_reg_n_0_[27] ),
        .I3(s_out_addr[27]),
        .O(i__carry__5_i_6_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__5_i_6__0
       (.I0(s_out_addr[26]),
        .I1(\s_ctr_reg_n_0_[26] ),
        .I2(\s_ctr_reg_n_0_[27] ),
        .I3(s_out_addr[27]),
        .O(i__carry__5_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__5_i_7
       (.I0(s_out_addr[25]),
        .I1(\s_ctr_reg_n_0_[25] ),
        .I2(\s_ctr_reg_n_0_[26] ),
        .I3(s_out_addr[26]),
        .O(i__carry__5_i_7_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__5_i_7__0
       (.I0(s_out_addr[25]),
        .I1(\s_ctr_reg_n_0_[25] ),
        .I2(\s_ctr_reg_n_0_[26] ),
        .I3(s_out_addr[26]),
        .O(i__carry__5_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__5_i_8
       (.I0(s_out_addr[24]),
        .I1(\s_ctr_reg_n_0_[24] ),
        .I2(\s_ctr_reg_n_0_[25] ),
        .I3(s_out_addr[25]),
        .O(i__carry__5_i_8_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__5_i_8__0
       (.I0(s_out_addr[24]),
        .I1(\s_ctr_reg_n_0_[24] ),
        .I2(\s_ctr_reg_n_0_[25] ),
        .I3(s_out_addr[25]),
        .O(i__carry__5_i_8__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__6_i_1
       (.I0(\s_ctr_reg_n_0_[29] ),
        .I1(s_out_addr[29]),
        .O(i__carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__6_i_1__0
       (.I0(\s_ctr_reg_n_0_[29] ),
        .I1(s_out_addr[29]),
        .O(i__carry__6_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__6_i_2
       (.I0(\s_ctr_reg_n_0_[28] ),
        .I1(s_out_addr[28]),
        .O(i__carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__6_i_2__0
       (.I0(\s_ctr_reg_n_0_[28] ),
        .I1(s_out_addr[28]),
        .O(i__carry__6_i_2__0_n_0));
  LUT3 #(
    .INIT(8'hA9)) 
    i__carry__6_i_3
       (.I0(s_out_addr[31]),
        .I1(s_out_addr[30]),
        .I2(\s_ctr_reg_n_0_[30] ),
        .O(i__carry__6_i_3_n_0));
  LUT3 #(
    .INIT(8'hA9)) 
    i__carry__6_i_3__0
       (.I0(s_out_addr[31]),
        .I1(s_out_addr[30]),
        .I2(\s_ctr_reg_n_0_[30] ),
        .O(i__carry__6_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__6_i_4
       (.I0(s_out_addr[29]),
        .I1(\s_ctr_reg_n_0_[29] ),
        .I2(\s_ctr_reg_n_0_[30] ),
        .I3(s_out_addr[30]),
        .O(i__carry__6_i_4_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__6_i_4__0
       (.I0(s_out_addr[29]),
        .I1(\s_ctr_reg_n_0_[29] ),
        .I2(\s_ctr_reg_n_0_[30] ),
        .I3(s_out_addr[30]),
        .O(i__carry__6_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__6_i_5
       (.I0(s_out_addr[28]),
        .I1(\s_ctr_reg_n_0_[28] ),
        .I2(\s_ctr_reg_n_0_[29] ),
        .I3(s_out_addr[29]),
        .O(i__carry__6_i_5_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry__6_i_5__0
       (.I0(s_out_addr[28]),
        .I1(\s_ctr_reg_n_0_[28] ),
        .I2(\s_ctr_reg_n_0_[29] ),
        .I3(s_out_addr[29]),
        .O(i__carry__6_i_5__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(\s_ctr_reg_n_0_[3] ),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_1__0
       (.I0(\s_ctr_reg_n_0_[3] ),
        .I1(s_out_addr[3]),
        .O(i__carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1__1
       (.I0(i_mema_dout[11]),
        .I1(i_memb_dout[11]),
        .O(i__carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1__10
       (.I0(i_memc_dout[19]),
        .I1(i_mema_dout[19]),
        .O(i__carry_i_1__10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1__11
       (.I0(i_memc_dout[27]),
        .I1(i_mema_dout[27]),
        .O(i__carry_i_1__11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1__2
       (.I0(i_mema_dout[19]),
        .I1(i_memb_dout[19]),
        .O(i__carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1__3
       (.I0(i_mema_dout[27]),
        .I1(i_memb_dout[27]),
        .O(i__carry_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1__4
       (.I0(\s_v1_reg_n_0_[3] ),
        .I1(i_memc_dout[3]),
        .O(i__carry_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1__5
       (.I0(p_1_in10_in[3]),
        .I1(i_memc_dout[11]),
        .O(i__carry_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1__6
       (.I0(p_1_in13_in[3]),
        .I1(i_memc_dout[19]),
        .O(i__carry_i_1__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1__7
       (.I0(p_1_in16_in[3]),
        .I1(i_memc_dout[27]),
        .O(i__carry_i_1__7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1__8
       (.I0(i_memc_dout[3]),
        .I1(i_mema_dout[3]),
        .O(i__carry_i_1__8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1__9
       (.I0(i_memc_dout[11]),
        .I1(i_mema_dout[11]),
        .O(i__carry_i_1__9_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_2
       (.I0(i_mema_dout[10]),
        .I1(i_memb_dout[10]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_2__0
       (.I0(i_mema_dout[18]),
        .I1(i_memb_dout[18]),
        .O(i__carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_2__1
       (.I0(i_mema_dout[26]),
        .I1(i_memb_dout[26]),
        .O(i__carry_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    i__carry_i_2__10
       (.I0(s_out_addr[3]),
        .I1(\s_ctr_reg_n_0_[3] ),
        .I2(\s_ctr_reg_n_0_[4] ),
        .I3(s_out_addr[4]),
        .O(i__carry_i_2__10_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry_i_2__11
       (.I0(\s_ctr_reg_n_0_[4] ),
        .I1(s_out_addr[4]),
        .I2(\s_ctr_reg_n_0_[3] ),
        .O(i__carry_i_2__11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_2__2
       (.I0(\s_v1_reg_n_0_[2] ),
        .I1(i_memc_dout[2]),
        .O(i__carry_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_2__3
       (.I0(p_1_in10_in[2]),
        .I1(i_memc_dout[10]),
        .O(i__carry_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_2__4
       (.I0(p_1_in13_in[2]),
        .I1(i_memc_dout[18]),
        .O(i__carry_i_2__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_2__5
       (.I0(p_1_in16_in[2]),
        .I1(i_memc_dout[26]),
        .O(i__carry_i_2__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_2__6
       (.I0(i_memc_dout[2]),
        .I1(i_mema_dout[2]),
        .O(i__carry_i_2__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_2__7
       (.I0(i_memc_dout[10]),
        .I1(i_mema_dout[10]),
        .O(i__carry_i_2__7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_2__8
       (.I0(i_memc_dout[18]),
        .I1(i_mema_dout[18]),
        .O(i__carry_i_2__8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_2__9
       (.I0(i_memc_dout[26]),
        .I1(i_mema_dout[26]),
        .O(i__carry_i_2__9_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3
       (.I0(i_mema_dout[9]),
        .I1(i_memb_dout[9]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3__0
       (.I0(i_mema_dout[17]),
        .I1(i_memb_dout[17]),
        .O(i__carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3__1
       (.I0(i_mema_dout[25]),
        .I1(i_memb_dout[25]),
        .O(i__carry_i_3__1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry_i_3__10
       (.I0(\s_ctr_reg_n_0_[3] ),
        .I1(s_out_addr[3]),
        .I2(\s_ctr_reg_n_0_[2] ),
        .O(i__carry_i_3__10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__11
       (.I0(\s_ctr_reg_n_0_[3] ),
        .I1(s_out_addr[3]),
        .O(i__carry_i_3__11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3__2
       (.I0(\s_v1_reg_n_0_[1] ),
        .I1(i_memc_dout[1]),
        .O(i__carry_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3__3
       (.I0(p_1_in10_in[1]),
        .I1(i_memc_dout[9]),
        .O(i__carry_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3__4
       (.I0(p_1_in13_in[1]),
        .I1(i_memc_dout[17]),
        .O(i__carry_i_3__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3__5
       (.I0(p_1_in16_in[1]),
        .I1(i_memc_dout[25]),
        .O(i__carry_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3__6
       (.I0(i_memc_dout[1]),
        .I1(i_mema_dout[1]),
        .O(i__carry_i_3__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3__7
       (.I0(i_memc_dout[9]),
        .I1(i_mema_dout[9]),
        .O(i__carry_i_3__7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3__8
       (.I0(i_memc_dout[17]),
        .I1(i_mema_dout[17]),
        .O(i__carry_i_3__8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3__9
       (.I0(i_memc_dout[25]),
        .I1(i_mema_dout[25]),
        .O(i__carry_i_3__9_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_4
       (.I0(i_mema_dout[8]),
        .I1(i_memb_dout[8]),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_4__0
       (.I0(i_mema_dout[16]),
        .I1(i_memb_dout[16]),
        .O(i__carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_4__1
       (.I0(i_mema_dout[24]),
        .I1(i_memb_dout[24]),
        .O(i__carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_4__10
       (.I0(s_out_addr[2]),
        .I1(\s_ctr_reg_n_0_[2] ),
        .O(i__carry_i_4__10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__11
       (.I0(\s_ctr_reg_n_0_[2] ),
        .I1(s_out_addr[2]),
        .O(i__carry_i_4__11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_4__2
       (.I0(\s_v1_reg_n_0_[0] ),
        .I1(i_memc_dout[0]),
        .O(i__carry_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_4__3
       (.I0(p_1_in10_in[0]),
        .I1(i_memc_dout[8]),
        .O(i__carry_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_4__4
       (.I0(p_1_in13_in[0]),
        .I1(i_memc_dout[16]),
        .O(i__carry_i_4__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_4__5
       (.I0(p_1_in16_in[0]),
        .I1(i_memc_dout[24]),
        .O(i__carry_i_4__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_4__6
       (.I0(i_memc_dout[0]),
        .I1(i_mema_dout[0]),
        .O(i__carry_i_4__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_4__7
       (.I0(i_memc_dout[8]),
        .I1(i_mema_dout[8]),
        .O(i__carry_i_4__7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_4__8
       (.I0(i_memc_dout[16]),
        .I1(i_mema_dout[16]),
        .O(i__carry_i_4__8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_4__9
       (.I0(i_memc_dout[24]),
        .I1(i_mema_dout[24]),
        .O(i__carry_i_4__9_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_5
       (.I0(s_out_addr[1]),
        .I1(\s_ctr_reg_n_0_[1] ),
        .O(i__carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_5__0
       (.I0(s_out_addr[1]),
        .I1(\s_ctr_reg_n_0_[1] ),
        .O(i__carry_i_5__0_n_0));
  LUT5 #(
    .INIT(32'h2A2A2A28)) 
    \s_ctr[10]_i_1 
       (.I0(in6[10]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[1]),
        .I4(s_state[4]),
        .O(s_ctr[10]));
  LUT5 #(
    .INIT(32'h2A2A2A28)) 
    \s_ctr[11]_i_1 
       (.I0(in6[11]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[1]),
        .I4(s_state[4]),
        .O(s_ctr[11]));
  LUT5 #(
    .INIT(32'h2A2A2A28)) 
    \s_ctr[12]_i_1 
       (.I0(in6[12]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[1]),
        .I4(s_state[4]),
        .O(s_ctr[12]));
  LUT5 #(
    .INIT(32'h2A2A2A28)) 
    \s_ctr[13]_i_1 
       (.I0(in6[13]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[1]),
        .I4(s_state[4]),
        .O(s_ctr[13]));
  LUT5 #(
    .INIT(32'h2A2A2A28)) 
    \s_ctr[14]_i_1 
       (.I0(in6[14]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[1]),
        .I4(s_state[4]),
        .O(s_ctr[14]));
  LUT5 #(
    .INIT(32'h2A2A2A28)) 
    \s_ctr[15]_i_1 
       (.I0(in6[15]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[1]),
        .I4(s_state[4]),
        .O(s_ctr[15]));
  LUT5 #(
    .INIT(32'h2A2A2A28)) 
    \s_ctr[16]_i_1 
       (.I0(in6[16]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[1]),
        .I4(s_state[4]),
        .O(s_ctr[16]));
  LUT5 #(
    .INIT(32'h2A2A2A28)) 
    \s_ctr[17]_i_1 
       (.I0(in6[17]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[1]),
        .I4(s_state[4]),
        .O(s_ctr[17]));
  LUT5 #(
    .INIT(32'h2A2A2A28)) 
    \s_ctr[18]_i_1 
       (.I0(in6[18]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[1]),
        .I4(s_state[4]),
        .O(s_ctr[18]));
  LUT5 #(
    .INIT(32'h2A2A2A28)) 
    \s_ctr[19]_i_1 
       (.I0(in6[19]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[1]),
        .I4(s_state[4]),
        .O(s_ctr[19]));
  LUT5 #(
    .INIT(32'h2A2A2A28)) 
    \s_ctr[1]_i_1 
       (.I0(in6[1]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[1]),
        .I4(s_state[4]),
        .O(s_ctr[1]));
  LUT5 #(
    .INIT(32'h2A2A2A28)) 
    \s_ctr[20]_i_1 
       (.I0(in6[20]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[1]),
        .I4(s_state[4]),
        .O(s_ctr[20]));
  LUT5 #(
    .INIT(32'h2A2A2A28)) 
    \s_ctr[21]_i_1 
       (.I0(in6[21]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[1]),
        .I4(s_state[4]),
        .O(s_ctr[21]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h2A2A2A28)) 
    \s_ctr[22]_i_1 
       (.I0(in6[22]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[1]),
        .I4(s_state[4]),
        .O(s_ctr[22]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h2A2A2A28)) 
    \s_ctr[23]_i_1 
       (.I0(in6[23]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[1]),
        .I4(s_state[4]),
        .O(s_ctr[23]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h2A2A2A28)) 
    \s_ctr[24]_i_1 
       (.I0(in6[24]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[1]),
        .I4(s_state[4]),
        .O(s_ctr[24]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h2A2A2A28)) 
    \s_ctr[25]_i_1 
       (.I0(in6[25]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[1]),
        .I4(s_state[4]),
        .O(s_ctr[25]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h2A2A2A28)) 
    \s_ctr[26]_i_1 
       (.I0(in6[26]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[1]),
        .I4(s_state[4]),
        .O(s_ctr[26]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h2A2A2A28)) 
    \s_ctr[27]_i_1 
       (.I0(in6[27]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[1]),
        .I4(s_state[4]),
        .O(s_ctr[27]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h2A2A2A28)) 
    \s_ctr[28]_i_1 
       (.I0(in6[28]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[1]),
        .I4(s_state[4]),
        .O(s_ctr[28]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h2A2A2A28)) 
    \s_ctr[29]_i_1 
       (.I0(in6[29]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[1]),
        .I4(s_state[4]),
        .O(s_ctr[29]));
  LUT5 #(
    .INIT(32'h2A2A2A28)) 
    \s_ctr[2]_i_1 
       (.I0(in6[2]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[1]),
        .I4(s_state[4]),
        .O(s_ctr[2]));
  LUT5 #(
    .INIT(32'h05420115)) 
    \s_ctr[30]_i_1 
       (.I0(s_state[0]),
        .I1(s_state[1]),
        .I2(s_state[3]),
        .I3(s_state[2]),
        .I4(s_state[4]),
        .O(\s_ctr[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h2A2A2A28)) 
    \s_ctr[30]_i_2 
       (.I0(in6[30]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[1]),
        .I4(s_state[4]),
        .O(s_ctr[30]));
  LUT5 #(
    .INIT(32'h2A2A2A28)) 
    \s_ctr[3]_i_1 
       (.I0(in6[3]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[1]),
        .I4(s_state[4]),
        .O(s_ctr[3]));
  LUT5 #(
    .INIT(32'h2A2A2A28)) 
    \s_ctr[4]_i_1 
       (.I0(in6[4]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[1]),
        .I4(s_state[4]),
        .O(s_ctr[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \s_ctr[4]_i_3 
       (.I0(\s_ctr_reg_n_0_[2] ),
        .O(\s_ctr[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h2A2A2A28)) 
    \s_ctr[5]_i_1 
       (.I0(in6[5]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[1]),
        .I4(s_state[4]),
        .O(s_ctr[5]));
  LUT5 #(
    .INIT(32'h2A2A2A28)) 
    \s_ctr[6]_i_1 
       (.I0(in6[6]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[1]),
        .I4(s_state[4]),
        .O(s_ctr[6]));
  LUT5 #(
    .INIT(32'h2A2A2A28)) 
    \s_ctr[7]_i_1 
       (.I0(in6[7]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[1]),
        .I4(s_state[4]),
        .O(s_ctr[7]));
  LUT5 #(
    .INIT(32'h2A2A2A28)) 
    \s_ctr[8]_i_1 
       (.I0(in6[8]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[1]),
        .I4(s_state[4]),
        .O(s_ctr[8]));
  LUT5 #(
    .INIT(32'h2A2A2A28)) 
    \s_ctr[9]_i_1 
       (.I0(in6[9]),
        .I1(s_state[2]),
        .I2(s_state[3]),
        .I3(s_state[1]),
        .I4(s_state[4]),
        .O(s_ctr[9]));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[10] 
       (.C(i_clk),
        .CE(\s_ctr[30]_i_1_n_0 ),
        .D(s_ctr[10]),
        .Q(\s_ctr_reg_n_0_[10] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[11] 
       (.C(i_clk),
        .CE(\s_ctr[30]_i_1_n_0 ),
        .D(s_ctr[11]),
        .Q(\s_ctr_reg_n_0_[11] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[12] 
       (.C(i_clk),
        .CE(\s_ctr[30]_i_1_n_0 ),
        .D(s_ctr[12]),
        .Q(\s_ctr_reg_n_0_[12] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_ctr_reg[12]_i_2 
       (.CI(\s_ctr_reg[8]_i_2_n_0 ),
        .CO({\s_ctr_reg[12]_i_2_n_0 ,\s_ctr_reg[12]_i_2_n_1 ,\s_ctr_reg[12]_i_2_n_2 ,\s_ctr_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in6[12:9]),
        .S({\s_ctr_reg_n_0_[12] ,\s_ctr_reg_n_0_[11] ,\s_ctr_reg_n_0_[10] ,\s_ctr_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[13] 
       (.C(i_clk),
        .CE(\s_ctr[30]_i_1_n_0 ),
        .D(s_ctr[13]),
        .Q(\s_ctr_reg_n_0_[13] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[14] 
       (.C(i_clk),
        .CE(\s_ctr[30]_i_1_n_0 ),
        .D(s_ctr[14]),
        .Q(\s_ctr_reg_n_0_[14] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[15] 
       (.C(i_clk),
        .CE(\s_ctr[30]_i_1_n_0 ),
        .D(s_ctr[15]),
        .Q(\s_ctr_reg_n_0_[15] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[16] 
       (.C(i_clk),
        .CE(\s_ctr[30]_i_1_n_0 ),
        .D(s_ctr[16]),
        .Q(\s_ctr_reg_n_0_[16] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_ctr_reg[16]_i_2 
       (.CI(\s_ctr_reg[12]_i_2_n_0 ),
        .CO({\s_ctr_reg[16]_i_2_n_0 ,\s_ctr_reg[16]_i_2_n_1 ,\s_ctr_reg[16]_i_2_n_2 ,\s_ctr_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in6[16:13]),
        .S({\s_ctr_reg_n_0_[16] ,\s_ctr_reg_n_0_[15] ,\s_ctr_reg_n_0_[14] ,\s_ctr_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[17] 
       (.C(i_clk),
        .CE(\s_ctr[30]_i_1_n_0 ),
        .D(s_ctr[17]),
        .Q(\s_ctr_reg_n_0_[17] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[18] 
       (.C(i_clk),
        .CE(\s_ctr[30]_i_1_n_0 ),
        .D(s_ctr[18]),
        .Q(\s_ctr_reg_n_0_[18] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[19] 
       (.C(i_clk),
        .CE(\s_ctr[30]_i_1_n_0 ),
        .D(s_ctr[19]),
        .Q(\s_ctr_reg_n_0_[19] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[1] 
       (.C(i_clk),
        .CE(\s_ctr[30]_i_1_n_0 ),
        .D(s_ctr[1]),
        .Q(\s_ctr_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[20] 
       (.C(i_clk),
        .CE(\s_ctr[30]_i_1_n_0 ),
        .D(s_ctr[20]),
        .Q(\s_ctr_reg_n_0_[20] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_ctr_reg[20]_i_2 
       (.CI(\s_ctr_reg[16]_i_2_n_0 ),
        .CO({\s_ctr_reg[20]_i_2_n_0 ,\s_ctr_reg[20]_i_2_n_1 ,\s_ctr_reg[20]_i_2_n_2 ,\s_ctr_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in6[20:17]),
        .S({\s_ctr_reg_n_0_[20] ,\s_ctr_reg_n_0_[19] ,\s_ctr_reg_n_0_[18] ,\s_ctr_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[21] 
       (.C(i_clk),
        .CE(\s_ctr[30]_i_1_n_0 ),
        .D(s_ctr[21]),
        .Q(\s_ctr_reg_n_0_[21] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[22] 
       (.C(i_clk),
        .CE(\s_ctr[30]_i_1_n_0 ),
        .D(s_ctr[22]),
        .Q(\s_ctr_reg_n_0_[22] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[23] 
       (.C(i_clk),
        .CE(\s_ctr[30]_i_1_n_0 ),
        .D(s_ctr[23]),
        .Q(\s_ctr_reg_n_0_[23] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[24] 
       (.C(i_clk),
        .CE(\s_ctr[30]_i_1_n_0 ),
        .D(s_ctr[24]),
        .Q(\s_ctr_reg_n_0_[24] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_ctr_reg[24]_i_2 
       (.CI(\s_ctr_reg[20]_i_2_n_0 ),
        .CO({\s_ctr_reg[24]_i_2_n_0 ,\s_ctr_reg[24]_i_2_n_1 ,\s_ctr_reg[24]_i_2_n_2 ,\s_ctr_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in6[24:21]),
        .S({\s_ctr_reg_n_0_[24] ,\s_ctr_reg_n_0_[23] ,\s_ctr_reg_n_0_[22] ,\s_ctr_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[25] 
       (.C(i_clk),
        .CE(\s_ctr[30]_i_1_n_0 ),
        .D(s_ctr[25]),
        .Q(\s_ctr_reg_n_0_[25] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[26] 
       (.C(i_clk),
        .CE(\s_ctr[30]_i_1_n_0 ),
        .D(s_ctr[26]),
        .Q(\s_ctr_reg_n_0_[26] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[27] 
       (.C(i_clk),
        .CE(\s_ctr[30]_i_1_n_0 ),
        .D(s_ctr[27]),
        .Q(\s_ctr_reg_n_0_[27] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[28] 
       (.C(i_clk),
        .CE(\s_ctr[30]_i_1_n_0 ),
        .D(s_ctr[28]),
        .Q(\s_ctr_reg_n_0_[28] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_ctr_reg[28]_i_2 
       (.CI(\s_ctr_reg[24]_i_2_n_0 ),
        .CO({\s_ctr_reg[28]_i_2_n_0 ,\s_ctr_reg[28]_i_2_n_1 ,\s_ctr_reg[28]_i_2_n_2 ,\s_ctr_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in6[28:25]),
        .S({\s_ctr_reg_n_0_[28] ,\s_ctr_reg_n_0_[27] ,\s_ctr_reg_n_0_[26] ,\s_ctr_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[29] 
       (.C(i_clk),
        .CE(\s_ctr[30]_i_1_n_0 ),
        .D(s_ctr[29]),
        .Q(\s_ctr_reg_n_0_[29] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[2] 
       (.C(i_clk),
        .CE(\s_ctr[30]_i_1_n_0 ),
        .D(s_ctr[2]),
        .Q(\s_ctr_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[30] 
       (.C(i_clk),
        .CE(\s_ctr[30]_i_1_n_0 ),
        .D(s_ctr[30]),
        .Q(\s_ctr_reg_n_0_[30] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_ctr_reg[30]_i_3 
       (.CI(\s_ctr_reg[28]_i_2_n_0 ),
        .CO({\NLW_s_ctr_reg[30]_i_3_CO_UNCONNECTED [3:1],\s_ctr_reg[30]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_s_ctr_reg[30]_i_3_O_UNCONNECTED [3:2],in6[30:29]}),
        .S({1'b0,1'b0,\s_ctr_reg_n_0_[30] ,\s_ctr_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[3] 
       (.C(i_clk),
        .CE(\s_ctr[30]_i_1_n_0 ),
        .D(s_ctr[3]),
        .Q(\s_ctr_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[4] 
       (.C(i_clk),
        .CE(\s_ctr[30]_i_1_n_0 ),
        .D(s_ctr[4]),
        .Q(\s_ctr_reg_n_0_[4] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_ctr_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\s_ctr_reg[4]_i_2_n_0 ,\s_ctr_reg[4]_i_2_n_1 ,\s_ctr_reg[4]_i_2_n_2 ,\s_ctr_reg[4]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\s_ctr_reg_n_0_[2] ,1'b0}),
        .O(in6[4:1]),
        .S({\s_ctr_reg_n_0_[4] ,\s_ctr_reg_n_0_[3] ,\s_ctr[4]_i_3_n_0 ,\s_ctr_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[5] 
       (.C(i_clk),
        .CE(\s_ctr[30]_i_1_n_0 ),
        .D(s_ctr[5]),
        .Q(\s_ctr_reg_n_0_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[6] 
       (.C(i_clk),
        .CE(\s_ctr[30]_i_1_n_0 ),
        .D(s_ctr[6]),
        .Q(\s_ctr_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[7] 
       (.C(i_clk),
        .CE(\s_ctr[30]_i_1_n_0 ),
        .D(s_ctr[7]),
        .Q(\s_ctr_reg_n_0_[7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[8] 
       (.C(i_clk),
        .CE(\s_ctr[30]_i_1_n_0 ),
        .D(s_ctr[8]),
        .Q(\s_ctr_reg_n_0_[8] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_ctr_reg[8]_i_2 
       (.CI(\s_ctr_reg[4]_i_2_n_0 ),
        .CO({\s_ctr_reg[8]_i_2_n_0 ,\s_ctr_reg[8]_i_2_n_1 ,\s_ctr_reg[8]_i_2_n_2 ,\s_ctr_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in6[8:5]),
        .S({\s_ctr_reg_n_0_[8] ,\s_ctr_reg_n_0_[7] ,\s_ctr_reg_n_0_[6] ,\s_ctr_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \s_ctr_reg[9] 
       (.C(i_clk),
        .CE(\s_ctr[30]_i_1_n_0 ),
        .D(s_ctr[9]),
        .Q(\s_ctr_reg_n_0_[9] ),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFFFFE10040400)) 
    s_finish_i_1
       (.I0(s_state[0]),
        .I1(s_state[1]),
        .I2(s_state[2]),
        .I3(s_state[3]),
        .I4(s_state[4]),
        .I5(o_done),
        .O(s_finish_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_finish_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(s_finish_i_1_n_0),
        .Q(o_done),
        .R(rst));
  LUT6 #(
    .INIT(64'hF1FFF1F101000101)) 
    s_main_en_i_1
       (.I0(s_state[0]),
        .I1(s_main_en_i_2_n_0),
        .I2(rst),
        .I3(s_main_en_i_3_n_0),
        .I4(s_main_en_i_4_n_0),
        .I5(s_main_en_reg_n_0),
        .O(s_main_en_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    s_main_en_i_2
       (.I0(s_state[3]),
        .I1(s_state[4]),
        .I2(s_state[2]),
        .O(s_main_en_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00011400)) 
    s_main_en_i_3
       (.I0(s_state[0]),
        .I1(s_state[4]),
        .I2(s_state[3]),
        .I3(s_state[2]),
        .I4(s_state[1]),
        .O(s_main_en_i_3_n_0));
  LUT6 #(
    .INIT(64'h7777FFFFDFDD7777)) 
    s_main_en_i_4
       (.I0(\bram0a[o][o_en] ),
        .I1(s_state[3]),
        .I2(s_main_en_i_6_n_0),
        .I3(\FSM_sequential_s_state[3]_i_8_n_0 ),
        .I4(s_state[4]),
        .I5(s_state[1]),
        .O(s_main_en_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_main_en_i_5
       (.I0(s_state[0]),
        .I1(s_state[2]),
        .O(\bram0a[o][o_en] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    s_main_en_i_6
       (.I0(\FSM_sequential_s_state[4]_i_8_n_0 ),
        .I1(s_main_en_i_7_n_0),
        .I2(\FSM_sequential_s_state[4]_i_12_n_0 ),
        .I3(\FSM_sequential_s_state[4]_i_11_n_0 ),
        .O(s_main_en_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    s_main_en_i_7
       (.I0(in6[17]),
        .I1(in6[12]),
        .I2(in6[27]),
        .I3(in6[9]),
        .O(s_main_en_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_main_en_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(s_main_en_i_1_n_0),
        .Q(s_main_en_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFEBFD00290000)) 
    s_main_start_i_1
       (.I0(s_state[1]),
        .I1(s_state[3]),
        .I2(s_state[4]),
        .I3(s_state[2]),
        .I4(s_state[0]),
        .I5(s_main_start_reg_n_0),
        .O(s_main_start_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_main_start_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(s_main_start_i_1_n_0),
        .Q(s_main_start_reg_n_0),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_addr_reg[0] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_out_addr[0]),
        .Q(s_out_addr[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_addr_reg[10] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_out_addr[10]),
        .Q(s_out_addr[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_addr_reg[11] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_out_addr[11]),
        .Q(s_out_addr[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_addr_reg[12] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_out_addr[12]),
        .Q(s_out_addr[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_addr_reg[13] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_out_addr[13]),
        .Q(s_out_addr[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_addr_reg[14] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_out_addr[14]),
        .Q(s_out_addr[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_addr_reg[15] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_out_addr[15]),
        .Q(s_out_addr[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_addr_reg[16] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_out_addr[16]),
        .Q(s_out_addr[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_addr_reg[17] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_out_addr[17]),
        .Q(s_out_addr[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_addr_reg[18] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_out_addr[18]),
        .Q(s_out_addr[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_addr_reg[19] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_out_addr[19]),
        .Q(s_out_addr[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_addr_reg[1] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_out_addr[1]),
        .Q(s_out_addr[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_addr_reg[20] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_out_addr[20]),
        .Q(s_out_addr[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_addr_reg[21] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_out_addr[21]),
        .Q(s_out_addr[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_addr_reg[22] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_out_addr[22]),
        .Q(s_out_addr[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_addr_reg[23] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_out_addr[23]),
        .Q(s_out_addr[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_addr_reg[24] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_out_addr[24]),
        .Q(s_out_addr[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_addr_reg[25] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_out_addr[25]),
        .Q(s_out_addr[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_addr_reg[26] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_out_addr[26]),
        .Q(s_out_addr[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_addr_reg[27] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_out_addr[27]),
        .Q(s_out_addr[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_addr_reg[28] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_out_addr[28]),
        .Q(s_out_addr[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_addr_reg[29] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_out_addr[29]),
        .Q(s_out_addr[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_addr_reg[2] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_out_addr[2]),
        .Q(s_out_addr[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_addr_reg[30] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_out_addr[30]),
        .Q(s_out_addr[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_addr_reg[31] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_out_addr[31]),
        .Q(s_out_addr[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_addr_reg[3] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_out_addr[3]),
        .Q(s_out_addr[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_addr_reg[4] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_out_addr[4]),
        .Q(s_out_addr[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_addr_reg[5] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_out_addr[5]),
        .Q(s_out_addr[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_addr_reg[6] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_out_addr[6]),
        .Q(s_out_addr[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_addr_reg[7] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_out_addr[7]),
        .Q(s_out_addr[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_addr_reg[8] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_out_addr[8]),
        .Q(s_out_addr[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_out_addr_reg[9] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_out_addr[9]),
        .Q(s_out_addr[9]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_v1[0]_i_1 
       (.I0(i_mema_dout[0]),
        .I1(s_state[4]),
        .I2(i_memc_dout[0]),
        .O(\s_v1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_v1[10]_i_1 
       (.I0(i_mema_dout[10]),
        .I1(s_state[4]),
        .I2(i_memc_dout[10]),
        .O(\s_v1[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_v1[11]_i_1 
       (.I0(i_mema_dout[11]),
        .I1(s_state[4]),
        .I2(i_memc_dout[11]),
        .O(\s_v1[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_v1[12]_i_1 
       (.I0(i_mema_dout[12]),
        .I1(s_state[4]),
        .I2(i_memc_dout[12]),
        .O(\s_v1[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_v1[13]_i_1 
       (.I0(i_mema_dout[13]),
        .I1(s_state[4]),
        .I2(i_memc_dout[13]),
        .O(\s_v1[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_v1[14]_i_1 
       (.I0(i_mema_dout[14]),
        .I1(s_state[4]),
        .I2(i_memc_dout[14]),
        .O(\s_v1[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_v1[15]_i_1 
       (.I0(i_mema_dout[15]),
        .I1(s_state[4]),
        .I2(i_memc_dout[15]),
        .O(\s_v1[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_v1[16]_i_1 
       (.I0(i_mema_dout[16]),
        .I1(s_state[4]),
        .I2(i_memc_dout[16]),
        .O(\s_v1[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_v1[17]_i_1 
       (.I0(i_mema_dout[17]),
        .I1(s_state[4]),
        .I2(i_memc_dout[17]),
        .O(\s_v1[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_v1[18]_i_1 
       (.I0(i_mema_dout[18]),
        .I1(s_state[4]),
        .I2(i_memc_dout[18]),
        .O(\s_v1[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_v1[19]_i_1 
       (.I0(i_mema_dout[19]),
        .I1(s_state[4]),
        .I2(i_memc_dout[19]),
        .O(\s_v1[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_v1[1]_i_1 
       (.I0(i_mema_dout[1]),
        .I1(s_state[4]),
        .I2(i_memc_dout[1]),
        .O(\s_v1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_v1[20]_i_1 
       (.I0(i_mema_dout[20]),
        .I1(s_state[4]),
        .I2(i_memc_dout[20]),
        .O(\s_v1[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_v1[21]_i_1 
       (.I0(i_mema_dout[21]),
        .I1(s_state[4]),
        .I2(i_memc_dout[21]),
        .O(\s_v1[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_v1[22]_i_1 
       (.I0(i_mema_dout[22]),
        .I1(s_state[4]),
        .I2(i_memc_dout[22]),
        .O(\s_v1[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_v1[23]_i_1 
       (.I0(i_mema_dout[23]),
        .I1(s_state[4]),
        .I2(i_memc_dout[23]),
        .O(\s_v1[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_v1[24]_i_1 
       (.I0(i_mema_dout[24]),
        .I1(s_state[4]),
        .I2(i_memc_dout[24]),
        .O(\s_v1[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_v1[25]_i_1 
       (.I0(i_mema_dout[25]),
        .I1(s_state[4]),
        .I2(i_memc_dout[25]),
        .O(\s_v1[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_v1[26]_i_1 
       (.I0(i_mema_dout[26]),
        .I1(s_state[4]),
        .I2(i_memc_dout[26]),
        .O(\s_v1[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_v1[27]_i_1 
       (.I0(i_mema_dout[27]),
        .I1(s_state[4]),
        .I2(i_memc_dout[27]),
        .O(\s_v1[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_v1[28]_i_1 
       (.I0(i_mema_dout[28]),
        .I1(s_state[4]),
        .I2(i_memc_dout[28]),
        .O(\s_v1[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_v1[29]_i_1 
       (.I0(i_mema_dout[29]),
        .I1(s_state[4]),
        .I2(i_memc_dout[29]),
        .O(\s_v1[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_v1[2]_i_1 
       (.I0(i_mema_dout[2]),
        .I1(s_state[4]),
        .I2(i_memc_dout[2]),
        .O(\s_v1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_v1[30]_i_1 
       (.I0(i_mema_dout[30]),
        .I1(s_state[4]),
        .I2(i_memc_dout[30]),
        .O(\s_v1[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1105001000004004)) 
    \s_v1[31]_i_1 
       (.I0(rst),
        .I1(s_state[3]),
        .I2(s_state[1]),
        .I3(s_state[4]),
        .I4(s_state[2]),
        .I5(s_state[0]),
        .O(\s_v1[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_v1[31]_i_2 
       (.I0(i_mema_dout[31]),
        .I1(s_state[4]),
        .I2(i_memc_dout[31]),
        .O(\s_v1[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_v1[3]_i_1 
       (.I0(i_mema_dout[3]),
        .I1(s_state[4]),
        .I2(i_memc_dout[3]),
        .O(\s_v1[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_v1[4]_i_1 
       (.I0(i_mema_dout[4]),
        .I1(s_state[4]),
        .I2(i_memc_dout[4]),
        .O(\s_v1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_v1[5]_i_1 
       (.I0(i_mema_dout[5]),
        .I1(s_state[4]),
        .I2(i_memc_dout[5]),
        .O(\s_v1[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_v1[6]_i_1 
       (.I0(i_mema_dout[6]),
        .I1(s_state[4]),
        .I2(i_memc_dout[6]),
        .O(\s_v1[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_v1[7]_i_1 
       (.I0(i_mema_dout[7]),
        .I1(s_state[4]),
        .I2(i_memc_dout[7]),
        .O(\s_v1[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_v1[8]_i_1 
       (.I0(i_mema_dout[8]),
        .I1(s_state[4]),
        .I2(i_memc_dout[8]),
        .O(\s_v1[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_v1[9]_i_1 
       (.I0(i_mema_dout[9]),
        .I1(s_state[4]),
        .I2(i_memc_dout[9]),
        .O(\s_v1[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_addr_reg[0] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v1_addr[0]),
        .Q(\s_v1_addr_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_addr_reg[10] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v1_addr[10]),
        .Q(\s_v1_addr_reg_n_0_[10] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_addr_reg[11] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v1_addr[11]),
        .Q(\s_v1_addr_reg_n_0_[11] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_addr_reg[12] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v1_addr[12]),
        .Q(\s_v1_addr_reg_n_0_[12] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_addr_reg[13] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v1_addr[13]),
        .Q(\s_v1_addr_reg_n_0_[13] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_addr_reg[14] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v1_addr[14]),
        .Q(\s_v1_addr_reg_n_0_[14] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_addr_reg[15] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v1_addr[15]),
        .Q(\s_v1_addr_reg_n_0_[15] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_addr_reg[16] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v1_addr[16]),
        .Q(\s_v1_addr_reg_n_0_[16] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_addr_reg[17] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v1_addr[17]),
        .Q(\s_v1_addr_reg_n_0_[17] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_addr_reg[18] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v1_addr[18]),
        .Q(\s_v1_addr_reg_n_0_[18] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_addr_reg[19] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v1_addr[19]),
        .Q(\s_v1_addr_reg_n_0_[19] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_addr_reg[1] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v1_addr[1]),
        .Q(\s_v1_addr_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_addr_reg[20] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v1_addr[20]),
        .Q(\s_v1_addr_reg_n_0_[20] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_addr_reg[21] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v1_addr[21]),
        .Q(\s_v1_addr_reg_n_0_[21] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_addr_reg[22] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v1_addr[22]),
        .Q(\s_v1_addr_reg_n_0_[22] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_addr_reg[23] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v1_addr[23]),
        .Q(\s_v1_addr_reg_n_0_[23] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_addr_reg[24] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v1_addr[24]),
        .Q(\s_v1_addr_reg_n_0_[24] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_addr_reg[25] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v1_addr[25]),
        .Q(\s_v1_addr_reg_n_0_[25] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_addr_reg[26] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v1_addr[26]),
        .Q(\s_v1_addr_reg_n_0_[26] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_addr_reg[27] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v1_addr[27]),
        .Q(\s_v1_addr_reg_n_0_[27] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_addr_reg[28] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v1_addr[28]),
        .Q(\s_v1_addr_reg_n_0_[28] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_addr_reg[29] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v1_addr[29]),
        .Q(\s_v1_addr_reg_n_0_[29] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_addr_reg[2] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v1_addr[2]),
        .Q(\s_v1_addr_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_addr_reg[30] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v1_addr[30]),
        .Q(\s_v1_addr_reg_n_0_[30] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_addr_reg[31] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v1_addr[31]),
        .Q(\s_v1_addr_reg_n_0_[31] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_addr_reg[3] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v1_addr[3]),
        .Q(\s_v1_addr_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_addr_reg[4] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v1_addr[4]),
        .Q(\s_v1_addr_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_addr_reg[5] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v1_addr[5]),
        .Q(\s_v1_addr_reg_n_0_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_addr_reg[6] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v1_addr[6]),
        .Q(\s_v1_addr_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_addr_reg[7] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v1_addr[7]),
        .Q(\s_v1_addr_reg_n_0_[7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_addr_reg[8] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v1_addr[8]),
        .Q(\s_v1_addr_reg_n_0_[8] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_addr_reg[9] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v1_addr[9]),
        .Q(\s_v1_addr_reg_n_0_[9] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_reg[0] 
       (.C(i_clk),
        .CE(\s_v1[31]_i_1_n_0 ),
        .D(\s_v1[0]_i_1_n_0 ),
        .Q(\s_v1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_reg[10] 
       (.C(i_clk),
        .CE(\s_v1[31]_i_1_n_0 ),
        .D(\s_v1[10]_i_1_n_0 ),
        .Q(p_1_in10_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_reg[11] 
       (.C(i_clk),
        .CE(\s_v1[31]_i_1_n_0 ),
        .D(\s_v1[11]_i_1_n_0 ),
        .Q(p_1_in10_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_reg[12] 
       (.C(i_clk),
        .CE(\s_v1[31]_i_1_n_0 ),
        .D(\s_v1[12]_i_1_n_0 ),
        .Q(p_1_in10_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_reg[13] 
       (.C(i_clk),
        .CE(\s_v1[31]_i_1_n_0 ),
        .D(\s_v1[13]_i_1_n_0 ),
        .Q(p_1_in10_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_reg[14] 
       (.C(i_clk),
        .CE(\s_v1[31]_i_1_n_0 ),
        .D(\s_v1[14]_i_1_n_0 ),
        .Q(p_1_in10_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_reg[15] 
       (.C(i_clk),
        .CE(\s_v1[31]_i_1_n_0 ),
        .D(\s_v1[15]_i_1_n_0 ),
        .Q(p_1_in10_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_reg[16] 
       (.C(i_clk),
        .CE(\s_v1[31]_i_1_n_0 ),
        .D(\s_v1[16]_i_1_n_0 ),
        .Q(p_1_in13_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_reg[17] 
       (.C(i_clk),
        .CE(\s_v1[31]_i_1_n_0 ),
        .D(\s_v1[17]_i_1_n_0 ),
        .Q(p_1_in13_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_reg[18] 
       (.C(i_clk),
        .CE(\s_v1[31]_i_1_n_0 ),
        .D(\s_v1[18]_i_1_n_0 ),
        .Q(p_1_in13_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_reg[19] 
       (.C(i_clk),
        .CE(\s_v1[31]_i_1_n_0 ),
        .D(\s_v1[19]_i_1_n_0 ),
        .Q(p_1_in13_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_reg[1] 
       (.C(i_clk),
        .CE(\s_v1[31]_i_1_n_0 ),
        .D(\s_v1[1]_i_1_n_0 ),
        .Q(\s_v1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_reg[20] 
       (.C(i_clk),
        .CE(\s_v1[31]_i_1_n_0 ),
        .D(\s_v1[20]_i_1_n_0 ),
        .Q(p_1_in13_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_reg[21] 
       (.C(i_clk),
        .CE(\s_v1[31]_i_1_n_0 ),
        .D(\s_v1[21]_i_1_n_0 ),
        .Q(p_1_in13_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_reg[22] 
       (.C(i_clk),
        .CE(\s_v1[31]_i_1_n_0 ),
        .D(\s_v1[22]_i_1_n_0 ),
        .Q(p_1_in13_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_reg[23] 
       (.C(i_clk),
        .CE(\s_v1[31]_i_1_n_0 ),
        .D(\s_v1[23]_i_1_n_0 ),
        .Q(p_1_in13_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_reg[24] 
       (.C(i_clk),
        .CE(\s_v1[31]_i_1_n_0 ),
        .D(\s_v1[24]_i_1_n_0 ),
        .Q(p_1_in16_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_reg[25] 
       (.C(i_clk),
        .CE(\s_v1[31]_i_1_n_0 ),
        .D(\s_v1[25]_i_1_n_0 ),
        .Q(p_1_in16_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_reg[26] 
       (.C(i_clk),
        .CE(\s_v1[31]_i_1_n_0 ),
        .D(\s_v1[26]_i_1_n_0 ),
        .Q(p_1_in16_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_reg[27] 
       (.C(i_clk),
        .CE(\s_v1[31]_i_1_n_0 ),
        .D(\s_v1[27]_i_1_n_0 ),
        .Q(p_1_in16_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_reg[28] 
       (.C(i_clk),
        .CE(\s_v1[31]_i_1_n_0 ),
        .D(\s_v1[28]_i_1_n_0 ),
        .Q(p_1_in16_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_reg[29] 
       (.C(i_clk),
        .CE(\s_v1[31]_i_1_n_0 ),
        .D(\s_v1[29]_i_1_n_0 ),
        .Q(p_1_in16_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_reg[2] 
       (.C(i_clk),
        .CE(\s_v1[31]_i_1_n_0 ),
        .D(\s_v1[2]_i_1_n_0 ),
        .Q(\s_v1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_reg[30] 
       (.C(i_clk),
        .CE(\s_v1[31]_i_1_n_0 ),
        .D(\s_v1[30]_i_1_n_0 ),
        .Q(p_1_in16_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_reg[31] 
       (.C(i_clk),
        .CE(\s_v1[31]_i_1_n_0 ),
        .D(\s_v1[31]_i_2_n_0 ),
        .Q(p_1_in16_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_reg[3] 
       (.C(i_clk),
        .CE(\s_v1[31]_i_1_n_0 ),
        .D(\s_v1[3]_i_1_n_0 ),
        .Q(\s_v1_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_reg[4] 
       (.C(i_clk),
        .CE(\s_v1[31]_i_1_n_0 ),
        .D(\s_v1[4]_i_1_n_0 ),
        .Q(\s_v1_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_reg[5] 
       (.C(i_clk),
        .CE(\s_v1[31]_i_1_n_0 ),
        .D(\s_v1[5]_i_1_n_0 ),
        .Q(\s_v1_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_reg[6] 
       (.C(i_clk),
        .CE(\s_v1[31]_i_1_n_0 ),
        .D(\s_v1[6]_i_1_n_0 ),
        .Q(\s_v1_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_reg[7] 
       (.C(i_clk),
        .CE(\s_v1[31]_i_1_n_0 ),
        .D(\s_v1[7]_i_1_n_0 ),
        .Q(\s_v1_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_reg[8] 
       (.C(i_clk),
        .CE(\s_v1[31]_i_1_n_0 ),
        .D(\s_v1[8]_i_1_n_0 ),
        .Q(p_1_in10_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_v1_reg[9] 
       (.C(i_clk),
        .CE(\s_v1[31]_i_1_n_0 ),
        .D(\s_v1[9]_i_1_n_0 ),
        .Q(p_1_in10_in[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \s_v2_addr[31]_i_1 
       (.I0(s_state[2]),
        .I1(s_state[3]),
        .I2(i_enable),
        .I3(s_state[4]),
        .I4(s_state[0]),
        .I5(s_state[1]),
        .O(\s_v2_addr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_v2_addr_reg[0] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v2_addr[0]),
        .Q(s_v2_addr[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v2_addr_reg[10] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v2_addr[10]),
        .Q(s_v2_addr[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v2_addr_reg[11] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v2_addr[11]),
        .Q(s_v2_addr[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v2_addr_reg[12] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v2_addr[12]),
        .Q(s_v2_addr[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v2_addr_reg[13] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v2_addr[13]),
        .Q(s_v2_addr[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v2_addr_reg[14] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v2_addr[14]),
        .Q(s_v2_addr[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v2_addr_reg[15] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v2_addr[15]),
        .Q(s_v2_addr[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v2_addr_reg[16] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v2_addr[16]),
        .Q(s_v2_addr[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v2_addr_reg[17] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v2_addr[17]),
        .Q(s_v2_addr[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v2_addr_reg[18] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v2_addr[18]),
        .Q(s_v2_addr[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v2_addr_reg[19] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v2_addr[19]),
        .Q(s_v2_addr[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v2_addr_reg[1] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v2_addr[1]),
        .Q(s_v2_addr[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v2_addr_reg[20] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v2_addr[20]),
        .Q(s_v2_addr[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v2_addr_reg[21] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v2_addr[21]),
        .Q(s_v2_addr[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v2_addr_reg[22] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v2_addr[22]),
        .Q(s_v2_addr[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v2_addr_reg[23] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v2_addr[23]),
        .Q(s_v2_addr[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v2_addr_reg[24] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v2_addr[24]),
        .Q(s_v2_addr[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v2_addr_reg[25] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v2_addr[25]),
        .Q(s_v2_addr[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v2_addr_reg[26] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v2_addr[26]),
        .Q(s_v2_addr[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v2_addr_reg[27] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v2_addr[27]),
        .Q(s_v2_addr[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v2_addr_reg[28] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v2_addr[28]),
        .Q(s_v2_addr[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v2_addr_reg[29] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v2_addr[29]),
        .Q(s_v2_addr[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v2_addr_reg[2] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v2_addr[2]),
        .Q(s_v2_addr[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v2_addr_reg[30] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v2_addr[30]),
        .Q(s_v2_addr[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v2_addr_reg[31] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v2_addr[31]),
        .Q(s_v2_addr[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v2_addr_reg[3] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v2_addr[3]),
        .Q(s_v2_addr[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v2_addr_reg[4] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v2_addr[4]),
        .Q(s_v2_addr[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v2_addr_reg[5] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v2_addr[5]),
        .Q(s_v2_addr[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v2_addr_reg[6] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v2_addr[6]),
        .Q(s_v2_addr[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v2_addr_reg[7] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v2_addr[7]),
        .Q(s_v2_addr[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v2_addr_reg[8] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v2_addr[8]),
        .Q(s_v2_addr[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_v2_addr_reg[9] 
       (.C(i_clk),
        .CE(\s_v2_addr[31]_i_1_n_0 ),
        .D(i_v2_addr[9]),
        .Q(s_v2_addr[9]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tmp00_carry
       (.CI(1'b0),
        .CO({tmp00_carry_n_0,tmp00_carry_n_1,tmp00_carry_n_2,tmp00_carry_n_3}),
        .CYINIT(1'b0),
        .DI(i_mema_dout[3:0]),
        .O(tmp00[3:0]),
        .S({tmp00_carry_i_1_n_0,tmp00_carry_i_2_n_0,tmp00_carry_i_3_n_0,tmp00_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tmp00_carry__0
       (.CI(tmp00_carry_n_0),
        .CO({NLW_tmp00_carry__0_CO_UNCONNECTED[3],tmp00_carry__0_n_1,tmp00_carry__0_n_2,tmp00_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,i_mema_dout[6:4]}),
        .O(tmp00[7:4]),
        .S({tmp00_carry__0_i_1_n_0,tmp00_carry__0_i_2_n_0,tmp00_carry__0_i_3_n_0,tmp00_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    tmp00_carry__0_i_1
       (.I0(i_memb_dout[7]),
        .I1(i_mema_dout[7]),
        .O(tmp00_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp00_carry__0_i_2
       (.I0(i_mema_dout[6]),
        .I1(i_memb_dout[6]),
        .O(tmp00_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp00_carry__0_i_3
       (.I0(i_mema_dout[5]),
        .I1(i_memb_dout[5]),
        .O(tmp00_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp00_carry__0_i_4
       (.I0(i_mema_dout[4]),
        .I1(i_memb_dout[4]),
        .O(tmp00_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp00_carry_i_1
       (.I0(i_mema_dout[3]),
        .I1(i_memb_dout[3]),
        .O(tmp00_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp00_carry_i_2
       (.I0(i_mema_dout[2]),
        .I1(i_memb_dout[2]),
        .O(tmp00_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp00_carry_i_3
       (.I0(i_mema_dout[1]),
        .I1(i_memb_dout[1]),
        .O(tmp00_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp00_carry_i_4
       (.I0(i_mema_dout[0]),
        .I1(i_memb_dout[0]),
        .O(tmp00_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp00_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\tmp00_inferred__0/i__carry_n_0 ,\tmp00_inferred__0/i__carry_n_1 ,\tmp00_inferred__0/i__carry_n_2 ,\tmp00_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI(i_mema_dout[11:8]),
        .O(tmp001_out[3:0]),
        .S({i__carry_i_1__1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp00_inferred__0/i__carry__0 
       (.CI(\tmp00_inferred__0/i__carry_n_0 ),
        .CO({\NLW_tmp00_inferred__0/i__carry__0_CO_UNCONNECTED [3],\tmp00_inferred__0/i__carry__0_n_1 ,\tmp00_inferred__0/i__carry__0_n_2 ,\tmp00_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i_mema_dout[14:12]}),
        .O(tmp001_out[7:4]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2__1_n_0,i__carry__0_i_3__1_n_0,i__carry__0_i_4__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp00_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\tmp00_inferred__1/i__carry_n_0 ,\tmp00_inferred__1/i__carry_n_1 ,\tmp00_inferred__1/i__carry_n_2 ,\tmp00_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI(i_mema_dout[19:16]),
        .O(tmp004_out[3:0]),
        .S({i__carry_i_1__2_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp00_inferred__1/i__carry__0 
       (.CI(\tmp00_inferred__1/i__carry_n_0 ),
        .CO({\NLW_tmp00_inferred__1/i__carry__0_CO_UNCONNECTED [3],\tmp00_inferred__1/i__carry__0_n_1 ,\tmp00_inferred__1/i__carry__0_n_2 ,\tmp00_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i_mema_dout[22:20]}),
        .O(tmp004_out[7:4]),
        .S({i__carry__0_i_1__0_n_0,i__carry__0_i_2__2_n_0,i__carry__0_i_3__2_n_0,i__carry__0_i_4__2_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp00_inferred__10/i__carry 
       (.CI(1'b0),
        .CO({\tmp00_inferred__10/i__carry_n_0 ,\tmp00_inferred__10/i__carry_n_1 ,\tmp00_inferred__10/i__carry_n_2 ,\tmp00_inferred__10/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI(i_memc_dout[27:24]),
        .O(tmp0021_out[3:0]),
        .S({i__carry_i_1__11_n_0,i__carry_i_2__9_n_0,i__carry_i_3__9_n_0,i__carry_i_4__9_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp00_inferred__10/i__carry__0 
       (.CI(\tmp00_inferred__10/i__carry_n_0 ),
        .CO({\NLW_tmp00_inferred__10/i__carry__0_CO_UNCONNECTED [3],\tmp00_inferred__10/i__carry__0_n_1 ,\tmp00_inferred__10/i__carry__0_n_2 ,\tmp00_inferred__10/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i_memc_dout[30:28]}),
        .O(tmp0021_out[7:4]),
        .S({i__carry__0_i_1__9_n_0,i__carry__0_i_2__11_n_0,i__carry__0_i_3__11_n_0,i__carry__0_i_4__11_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp00_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\tmp00_inferred__2/i__carry_n_0 ,\tmp00_inferred__2/i__carry_n_1 ,\tmp00_inferred__2/i__carry_n_2 ,\tmp00_inferred__2/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI(i_mema_dout[27:24]),
        .O(tmp007_out[3:0]),
        .S({i__carry_i_1__3_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,i__carry_i_4__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp00_inferred__2/i__carry__0 
       (.CI(\tmp00_inferred__2/i__carry_n_0 ),
        .CO({\NLW_tmp00_inferred__2/i__carry__0_CO_UNCONNECTED [3],\tmp00_inferred__2/i__carry__0_n_1 ,\tmp00_inferred__2/i__carry__0_n_2 ,\tmp00_inferred__2/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i_mema_dout[30:28]}),
        .O(tmp007_out[7:4]),
        .S({i__carry__0_i_1__1_n_0,i__carry__0_i_2__3_n_0,i__carry__0_i_3__3_n_0,i__carry__0_i_4__3_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp00_inferred__3/i__carry 
       (.CI(1'b0),
        .CO({\tmp00_inferred__3/i__carry_n_0 ,\tmp00_inferred__3/i__carry_n_1 ,\tmp00_inferred__3/i__carry_n_2 ,\tmp00_inferred__3/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_v1_reg_n_0_[3] ,\s_v1_reg_n_0_[2] ,\s_v1_reg_n_0_[1] ,\s_v1_reg_n_0_[0] }),
        .O(tmp008_out[3:0]),
        .S({i__carry_i_1__4_n_0,i__carry_i_2__2_n_0,i__carry_i_3__2_n_0,i__carry_i_4__2_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp00_inferred__3/i__carry__0 
       (.CI(\tmp00_inferred__3/i__carry_n_0 ),
        .CO({\NLW_tmp00_inferred__3/i__carry__0_CO_UNCONNECTED [3],\tmp00_inferred__3/i__carry__0_n_1 ,\tmp00_inferred__3/i__carry__0_n_2 ,\tmp00_inferred__3/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\s_v1_reg_n_0_[6] ,\s_v1_reg_n_0_[5] ,\s_v1_reg_n_0_[4] }),
        .O(tmp008_out[7:4]),
        .S({i__carry__0_i_1__2_n_0,i__carry__0_i_2__4_n_0,i__carry__0_i_3__4_n_0,i__carry__0_i_4__4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp00_inferred__4/i__carry 
       (.CI(1'b0),
        .CO({\tmp00_inferred__4/i__carry_n_0 ,\tmp00_inferred__4/i__carry_n_1 ,\tmp00_inferred__4/i__carry_n_2 ,\tmp00_inferred__4/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI(p_1_in10_in[3:0]),
        .O(tmp0011_out[3:0]),
        .S({i__carry_i_1__5_n_0,i__carry_i_2__3_n_0,i__carry_i_3__3_n_0,i__carry_i_4__3_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp00_inferred__4/i__carry__0 
       (.CI(\tmp00_inferred__4/i__carry_n_0 ),
        .CO({\NLW_tmp00_inferred__4/i__carry__0_CO_UNCONNECTED [3],\tmp00_inferred__4/i__carry__0_n_1 ,\tmp00_inferred__4/i__carry__0_n_2 ,\tmp00_inferred__4/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,p_1_in10_in[6:4]}),
        .O(tmp0011_out[7:4]),
        .S({i__carry__0_i_1__3_n_0,i__carry__0_i_2__5_n_0,i__carry__0_i_3__5_n_0,i__carry__0_i_4__5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp00_inferred__5/i__carry 
       (.CI(1'b0),
        .CO({\tmp00_inferred__5/i__carry_n_0 ,\tmp00_inferred__5/i__carry_n_1 ,\tmp00_inferred__5/i__carry_n_2 ,\tmp00_inferred__5/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI(p_1_in13_in[3:0]),
        .O(tmp0014_out[3:0]),
        .S({i__carry_i_1__6_n_0,i__carry_i_2__4_n_0,i__carry_i_3__4_n_0,i__carry_i_4__4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp00_inferred__5/i__carry__0 
       (.CI(\tmp00_inferred__5/i__carry_n_0 ),
        .CO({\NLW_tmp00_inferred__5/i__carry__0_CO_UNCONNECTED [3],\tmp00_inferred__5/i__carry__0_n_1 ,\tmp00_inferred__5/i__carry__0_n_2 ,\tmp00_inferred__5/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,p_1_in13_in[6:4]}),
        .O(tmp0014_out[7:4]),
        .S({i__carry__0_i_1__4_n_0,i__carry__0_i_2__6_n_0,i__carry__0_i_3__6_n_0,i__carry__0_i_4__6_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp00_inferred__6/i__carry 
       (.CI(1'b0),
        .CO({\tmp00_inferred__6/i__carry_n_0 ,\tmp00_inferred__6/i__carry_n_1 ,\tmp00_inferred__6/i__carry_n_2 ,\tmp00_inferred__6/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI(p_1_in16_in[3:0]),
        .O(tmp0017_out[3:0]),
        .S({i__carry_i_1__7_n_0,i__carry_i_2__5_n_0,i__carry_i_3__5_n_0,i__carry_i_4__5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp00_inferred__6/i__carry__0 
       (.CI(\tmp00_inferred__6/i__carry_n_0 ),
        .CO({\NLW_tmp00_inferred__6/i__carry__0_CO_UNCONNECTED [3],\tmp00_inferred__6/i__carry__0_n_1 ,\tmp00_inferred__6/i__carry__0_n_2 ,\tmp00_inferred__6/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,p_1_in16_in[6:4]}),
        .O(tmp0017_out[7:4]),
        .S({i__carry__0_i_1__5_n_0,i__carry__0_i_2__7_n_0,i__carry__0_i_3__7_n_0,i__carry__0_i_4__7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp00_inferred__7/i__carry 
       (.CI(1'b0),
        .CO({\tmp00_inferred__7/i__carry_n_0 ,\tmp00_inferred__7/i__carry_n_1 ,\tmp00_inferred__7/i__carry_n_2 ,\tmp00_inferred__7/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI(i_memc_dout[3:0]),
        .O(tmp0018_out[3:0]),
        .S({i__carry_i_1__8_n_0,i__carry_i_2__6_n_0,i__carry_i_3__6_n_0,i__carry_i_4__6_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp00_inferred__7/i__carry__0 
       (.CI(\tmp00_inferred__7/i__carry_n_0 ),
        .CO({\NLW_tmp00_inferred__7/i__carry__0_CO_UNCONNECTED [3],\tmp00_inferred__7/i__carry__0_n_1 ,\tmp00_inferred__7/i__carry__0_n_2 ,\tmp00_inferred__7/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i_memc_dout[6:4]}),
        .O(tmp0018_out[7:4]),
        .S({i__carry__0_i_1__6_n_0,i__carry__0_i_2__8_n_0,i__carry__0_i_3__8_n_0,i__carry__0_i_4__8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp00_inferred__8/i__carry 
       (.CI(1'b0),
        .CO({\tmp00_inferred__8/i__carry_n_0 ,\tmp00_inferred__8/i__carry_n_1 ,\tmp00_inferred__8/i__carry_n_2 ,\tmp00_inferred__8/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI(i_memc_dout[11:8]),
        .O(tmp0019_out[3:0]),
        .S({i__carry_i_1__9_n_0,i__carry_i_2__7_n_0,i__carry_i_3__7_n_0,i__carry_i_4__7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp00_inferred__8/i__carry__0 
       (.CI(\tmp00_inferred__8/i__carry_n_0 ),
        .CO({\NLW_tmp00_inferred__8/i__carry__0_CO_UNCONNECTED [3],\tmp00_inferred__8/i__carry__0_n_1 ,\tmp00_inferred__8/i__carry__0_n_2 ,\tmp00_inferred__8/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i_memc_dout[14:12]}),
        .O(tmp0019_out[7:4]),
        .S({i__carry__0_i_1__7_n_0,i__carry__0_i_2__9_n_0,i__carry__0_i_3__9_n_0,i__carry__0_i_4__9_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp00_inferred__9/i__carry 
       (.CI(1'b0),
        .CO({\tmp00_inferred__9/i__carry_n_0 ,\tmp00_inferred__9/i__carry_n_1 ,\tmp00_inferred__9/i__carry_n_2 ,\tmp00_inferred__9/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI(i_memc_dout[19:16]),
        .O(tmp0020_out[3:0]),
        .S({i__carry_i_1__10_n_0,i__carry_i_2__8_n_0,i__carry_i_3__8_n_0,i__carry_i_4__8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp00_inferred__9/i__carry__0 
       (.CI(\tmp00_inferred__9/i__carry_n_0 ),
        .CO({\NLW_tmp00_inferred__9/i__carry__0_CO_UNCONNECTED [3],\tmp00_inferred__9/i__carry__0_n_1 ,\tmp00_inferred__9/i__carry__0_n_2 ,\tmp00_inferred__9/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i_memc_dout[22:20]}),
        .O(tmp0020_out[7:4]),
        .S({i__carry__0_i_1__8_n_0,i__carry__0_i_2__10_n_0,i__carry__0_i_3__10_n_0,i__carry__0_i_4__10_n_0}));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmp0[0]_i_1 
       (.I0(tmp00[0]),
        .I1(s_state_1__0[0]),
        .I2(tmp008_out[0]),
        .I3(s_state_1__0[1]),
        .I4(tmp0018_out[0]),
        .O(tmp00_in[0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmp0[10]_i_1 
       (.I0(tmp001_out[2]),
        .I1(s_state_1__0[0]),
        .I2(tmp0011_out[2]),
        .I3(s_state_1__0[1]),
        .I4(tmp0019_out[2]),
        .O(tmp00_in[10]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmp0[11]_i_1 
       (.I0(tmp001_out[3]),
        .I1(s_state_1__0[0]),
        .I2(tmp0011_out[3]),
        .I3(s_state_1__0[1]),
        .I4(tmp0019_out[3]),
        .O(tmp00_in[11]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmp0[12]_i_1 
       (.I0(tmp001_out[4]),
        .I1(s_state_1__0[0]),
        .I2(tmp0011_out[4]),
        .I3(s_state_1__0[1]),
        .I4(tmp0019_out[4]),
        .O(tmp00_in[12]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmp0[13]_i_1 
       (.I0(tmp001_out[5]),
        .I1(s_state_1__0[0]),
        .I2(tmp0011_out[5]),
        .I3(s_state_1__0[1]),
        .I4(tmp0019_out[5]),
        .O(tmp00_in[13]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmp0[14]_i_1 
       (.I0(tmp001_out[6]),
        .I1(s_state_1__0[0]),
        .I2(tmp0011_out[6]),
        .I3(s_state_1__0[1]),
        .I4(tmp0019_out[6]),
        .O(tmp00_in[14]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmp0[15]_i_1 
       (.I0(tmp001_out[7]),
        .I1(s_state_1__0[0]),
        .I2(tmp0011_out[7]),
        .I3(s_state_1__0[1]),
        .I4(tmp0019_out[7]),
        .O(tmp00_in[15]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmp0[16]_i_1 
       (.I0(tmp004_out[0]),
        .I1(s_state_1__0[0]),
        .I2(tmp0014_out[0]),
        .I3(s_state_1__0[1]),
        .I4(tmp0020_out[0]),
        .O(tmp00_in[16]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmp0[17]_i_1 
       (.I0(tmp004_out[1]),
        .I1(s_state_1__0[0]),
        .I2(tmp0014_out[1]),
        .I3(s_state_1__0[1]),
        .I4(tmp0020_out[1]),
        .O(tmp00_in[17]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmp0[18]_i_1 
       (.I0(tmp004_out[2]),
        .I1(s_state_1__0[0]),
        .I2(tmp0014_out[2]),
        .I3(s_state_1__0[1]),
        .I4(tmp0020_out[2]),
        .O(tmp00_in[18]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmp0[19]_i_1 
       (.I0(tmp004_out[3]),
        .I1(s_state_1__0[0]),
        .I2(tmp0014_out[3]),
        .I3(s_state_1__0[1]),
        .I4(tmp0020_out[3]),
        .O(tmp00_in[19]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmp0[1]_i_1 
       (.I0(tmp00[1]),
        .I1(s_state_1__0[0]),
        .I2(tmp008_out[1]),
        .I3(s_state_1__0[1]),
        .I4(tmp0018_out[1]),
        .O(tmp00_in[1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmp0[20]_i_1 
       (.I0(tmp004_out[4]),
        .I1(s_state_1__0[0]),
        .I2(tmp0014_out[4]),
        .I3(s_state_1__0[1]),
        .I4(tmp0020_out[4]),
        .O(tmp00_in[20]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmp0[21]_i_1 
       (.I0(tmp004_out[5]),
        .I1(s_state_1__0[0]),
        .I2(tmp0014_out[5]),
        .I3(s_state_1__0[1]),
        .I4(tmp0020_out[5]),
        .O(tmp00_in[21]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmp0[22]_i_1 
       (.I0(tmp004_out[6]),
        .I1(s_state_1__0[0]),
        .I2(tmp0014_out[6]),
        .I3(s_state_1__0[1]),
        .I4(tmp0020_out[6]),
        .O(tmp00_in[22]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmp0[23]_i_1 
       (.I0(tmp004_out[7]),
        .I1(s_state_1__0[0]),
        .I2(tmp0014_out[7]),
        .I3(s_state_1__0[1]),
        .I4(tmp0020_out[7]),
        .O(tmp00_in[23]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmp0[24]_i_1 
       (.I0(tmp007_out[0]),
        .I1(s_state_1__0[0]),
        .I2(tmp0017_out[0]),
        .I3(s_state_1__0[1]),
        .I4(tmp0021_out[0]),
        .O(tmp00_in[24]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmp0[25]_i_1 
       (.I0(tmp007_out[1]),
        .I1(s_state_1__0[0]),
        .I2(tmp0017_out[1]),
        .I3(s_state_1__0[1]),
        .I4(tmp0021_out[1]),
        .O(tmp00_in[25]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmp0[26]_i_1 
       (.I0(tmp007_out[2]),
        .I1(s_state_1__0[0]),
        .I2(tmp0017_out[2]),
        .I3(s_state_1__0[1]),
        .I4(tmp0021_out[2]),
        .O(tmp00_in[26]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmp0[27]_i_1 
       (.I0(tmp007_out[3]),
        .I1(s_state_1__0[0]),
        .I2(tmp0017_out[3]),
        .I3(s_state_1__0[1]),
        .I4(tmp0021_out[3]),
        .O(tmp00_in[27]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmp0[28]_i_1 
       (.I0(tmp007_out[4]),
        .I1(s_state_1__0[0]),
        .I2(tmp0017_out[4]),
        .I3(s_state_1__0[1]),
        .I4(tmp0021_out[4]),
        .O(tmp00_in[28]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmp0[29]_i_1 
       (.I0(tmp007_out[5]),
        .I1(s_state_1__0[0]),
        .I2(tmp0017_out[5]),
        .I3(s_state_1__0[1]),
        .I4(tmp0021_out[5]),
        .O(tmp00_in[29]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmp0[2]_i_1 
       (.I0(tmp00[2]),
        .I1(s_state_1__0[0]),
        .I2(tmp008_out[2]),
        .I3(s_state_1__0[1]),
        .I4(tmp0018_out[2]),
        .O(tmp00_in[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmp0[30]_i_1 
       (.I0(tmp007_out[6]),
        .I1(s_state_1__0[0]),
        .I2(tmp0017_out[6]),
        .I3(s_state_1__0[1]),
        .I4(tmp0021_out[6]),
        .O(tmp00_in[30]));
  LUT3 #(
    .INIT(8'hA8)) 
    \tmp0[31]_i_1 
       (.I0(s_main_en_reg_n_0),
        .I1(s_state_1__0[1]),
        .I2(s_state_1__0[0]),
        .O(\tmp0[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmp0[31]_i_2 
       (.I0(tmp007_out[7]),
        .I1(s_state_1__0[0]),
        .I2(tmp0017_out[7]),
        .I3(s_state_1__0[1]),
        .I4(tmp0021_out[7]),
        .O(tmp00_in[31]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmp0[3]_i_1 
       (.I0(tmp00[3]),
        .I1(s_state_1__0[0]),
        .I2(tmp008_out[3]),
        .I3(s_state_1__0[1]),
        .I4(tmp0018_out[3]),
        .O(tmp00_in[3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmp0[4]_i_1 
       (.I0(tmp00[4]),
        .I1(s_state_1__0[0]),
        .I2(tmp008_out[4]),
        .I3(s_state_1__0[1]),
        .I4(tmp0018_out[4]),
        .O(tmp00_in[4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmp0[5]_i_1 
       (.I0(tmp00[5]),
        .I1(s_state_1__0[0]),
        .I2(tmp008_out[5]),
        .I3(s_state_1__0[1]),
        .I4(tmp0018_out[5]),
        .O(tmp00_in[5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmp0[6]_i_1 
       (.I0(tmp00[6]),
        .I1(s_state_1__0[0]),
        .I2(tmp008_out[6]),
        .I3(s_state_1__0[1]),
        .I4(tmp0018_out[6]),
        .O(tmp00_in[6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmp0[7]_i_1 
       (.I0(tmp00[7]),
        .I1(s_state_1__0[0]),
        .I2(tmp008_out[7]),
        .I3(s_state_1__0[1]),
        .I4(tmp0018_out[7]),
        .O(tmp00_in[7]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmp0[8]_i_1 
       (.I0(tmp001_out[0]),
        .I1(s_state_1__0[0]),
        .I2(tmp0011_out[0]),
        .I3(s_state_1__0[1]),
        .I4(tmp0019_out[0]),
        .O(tmp00_in[8]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmp0[9]_i_1 
       (.I0(tmp001_out[1]),
        .I1(s_state_1__0[0]),
        .I2(tmp0011_out[1]),
        .I3(s_state_1__0[1]),
        .I4(tmp0019_out[1]),
        .O(tmp00_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[0] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp00_in[0]),
        .Q(\tmp0_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[10] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp00_in[10]),
        .Q(p_0_in[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[11] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp00_in[11]),
        .Q(p_0_in[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[12] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp00_in[12]),
        .Q(p_0_in[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[13] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp00_in[13]),
        .Q(p_0_in[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[14] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp00_in[14]),
        .Q(p_0_in[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[15] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp00_in[15]),
        .Q(p_0_in[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[16] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp00_in[16]),
        .Q(\tmp0_reg_n_0_[16] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[17] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp00_in[17]),
        .Q(\tmp0_reg_n_0_[17] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[18] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp00_in[18]),
        .Q(\tmp0_reg_n_0_[18] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[19] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp00_in[19]),
        .Q(\tmp0_reg_n_0_[19] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[1] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp00_in[1]),
        .Q(\tmp0_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[20] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp00_in[20]),
        .Q(\tmp0_reg_n_0_[20] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[21] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp00_in[21]),
        .Q(\tmp0_reg_n_0_[21] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[22] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp00_in[22]),
        .Q(\tmp0_reg_n_0_[22] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[23] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp00_in[23]),
        .Q(\tmp0_reg_n_0_[23] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[24] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp00_in[24]),
        .Q(\tmp0_reg_n_0_[24] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[25] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp00_in[25]),
        .Q(\tmp0_reg_n_0_[25] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[26] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp00_in[26]),
        .Q(\tmp0_reg_n_0_[26] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[27] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp00_in[27]),
        .Q(\tmp0_reg_n_0_[27] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[28] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp00_in[28]),
        .Q(\tmp0_reg_n_0_[28] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[29] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp00_in[29]),
        .Q(\tmp0_reg_n_0_[29] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[2] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp00_in[2]),
        .Q(\tmp0_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[30] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp00_in[30]),
        .Q(\tmp0_reg_n_0_[30] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[31] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp00_in[31]),
        .Q(\tmp0_reg_n_0_[31] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[3] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp00_in[3]),
        .Q(\tmp0_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[4] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp00_in[4]),
        .Q(\tmp0_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[5] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp00_in[5]),
        .Q(\tmp0_reg_n_0_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[6] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp00_in[6]),
        .Q(\tmp0_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[7] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp00_in[7]),
        .Q(\tmp0_reg_n_0_[7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[8] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp00_in[8]),
        .Q(p_0_in[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_reg[9] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp00_in[9]),
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
  LUT2 #(
    .INIT(4'h9)) 
    \tmp1[12]_i_7 
       (.I0(p_0_in[0]),
        .I1(\tmp1_reg[12]_i_10_n_7 ),
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
  LUT2 #(
    .INIT(4'h9)) 
    \tmp1[20]_i_7 
       (.I0(\tmp0_reg_n_0_[16] ),
        .I1(\tmp1_reg[20]_i_10_n_7 ),
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
  LUT2 #(
    .INIT(4'h9)) 
    \tmp1[28]_i_7 
       (.I0(\tmp0_reg_n_0_[24] ),
        .I1(\tmp1_reg[28]_i_10_n_7 ),
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
  LUT2 #(
    .INIT(4'h9)) 
    \tmp1[4]_i_7 
       (.I0(\tmp0_reg_n_0_[0] ),
        .I1(\tmp1_reg[4]_i_10_n_7 ),
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
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(\tmp1[0]_i_1_n_0 ),
        .Q(tmp1[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[10] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(\tmp1[10]_i_1_n_0 ),
        .Q(tmp1[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[11] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(\tmp1[11]_i_1_n_0 ),
        .Q(tmp1[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[12] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
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
        .DI(p_0_in[3:0]),
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
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(\tmp1[16]_i_1_n_0 ),
        .Q(tmp1[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[17] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(\tmp1[17]_i_1_n_0 ),
        .Q(tmp1[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[18] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(\tmp1[18]_i_1_n_0 ),
        .Q(tmp1[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[19] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(\tmp1[19]_i_1_n_0 ),
        .Q(tmp1[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[1] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(\tmp1[1]_i_1_n_0 ),
        .Q(tmp1[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[20] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
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
        .DI({\tmp0_reg_n_0_[19] ,\tmp0_reg_n_0_[18] ,\tmp0_reg_n_0_[17] ,\tmp0_reg_n_0_[16] }),
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
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp10[0]),
        .Q(tmp1[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[25] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp10[1]),
        .Q(tmp1[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[26] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp10[2]),
        .Q(tmp1[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[27] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(tmp10[3]),
        .Q(tmp1[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[28] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
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
        .DI({\tmp0_reg_n_0_[27] ,\tmp0_reg_n_0_[26] ,\tmp0_reg_n_0_[25] ,\tmp0_reg_n_0_[24] }),
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
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(\tmp1[2]_i_1_n_0 ),
        .Q(tmp1[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[3] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(\tmp1[3]_i_1_n_0 ),
        .Q(tmp1[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[4] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
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
        .DI({\tmp0_reg_n_0_[3] ,\tmp0_reg_n_0_[2] ,\tmp0_reg_n_0_[1] ,\tmp0_reg_n_0_[0] }),
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
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(\tmp1[8]_i_1_n_0 ),
        .Q(tmp1[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[9] 
       (.C(i_clk),
        .CE(\tmp0[31]_i_1_n_0 ),
        .D(\tmp1[9]_i_1_n_0 ),
        .Q(tmp1[9]),
        .R(rst));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp2[28]_i_1 
       (.I0(s_main_en_reg_n_0),
        .I1(s_state_1__0[0]),
        .O(tmp2));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[0] 
       (.C(i_clk),
        .CE(tmp2),
        .D(tmp1[0]),
        .Q(\tmp2_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[10] 
       (.C(i_clk),
        .CE(tmp2),
        .D(tmp1[10]),
        .Q(\tmp2_reg_n_0_[10] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[11] 
       (.C(i_clk),
        .CE(tmp2),
        .D(tmp1[11]),
        .Q(\tmp2_reg_n_0_[11] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[12] 
       (.C(i_clk),
        .CE(tmp2),
        .D(tmp1[12]),
        .Q(\tmp2_reg_n_0_[12] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[16] 
       (.C(i_clk),
        .CE(tmp2),
        .D(tmp1[16]),
        .Q(\tmp2_reg_n_0_[16] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[17] 
       (.C(i_clk),
        .CE(tmp2),
        .D(tmp1[17]),
        .Q(\tmp2_reg_n_0_[17] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[18] 
       (.C(i_clk),
        .CE(tmp2),
        .D(tmp1[18]),
        .Q(\tmp2_reg_n_0_[18] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[19] 
       (.C(i_clk),
        .CE(tmp2),
        .D(tmp1[19]),
        .Q(\tmp2_reg_n_0_[19] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[1] 
       (.C(i_clk),
        .CE(tmp2),
        .D(tmp1[1]),
        .Q(\tmp2_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[20] 
       (.C(i_clk),
        .CE(tmp2),
        .D(tmp1[20]),
        .Q(\tmp2_reg_n_0_[20] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[24] 
       (.C(i_clk),
        .CE(tmp2),
        .D(tmp1[24]),
        .Q(\tmp2_reg_n_0_[24] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[25] 
       (.C(i_clk),
        .CE(tmp2),
        .D(tmp1[25]),
        .Q(\tmp2_reg_n_0_[25] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[26] 
       (.C(i_clk),
        .CE(tmp2),
        .D(tmp1[26]),
        .Q(\tmp2_reg_n_0_[26] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[27] 
       (.C(i_clk),
        .CE(tmp2),
        .D(tmp1[27]),
        .Q(\tmp2_reg_n_0_[27] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[28] 
       (.C(i_clk),
        .CE(tmp2),
        .D(tmp1[28]),
        .Q(\tmp2_reg_n_0_[28] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[2] 
       (.C(i_clk),
        .CE(tmp2),
        .D(tmp1[2]),
        .Q(\tmp2_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[3] 
       (.C(i_clk),
        .CE(tmp2),
        .D(tmp1[3]),
        .Q(\tmp2_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[4] 
       (.C(i_clk),
        .CE(tmp2),
        .D(tmp1[4]),
        .Q(\tmp2_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[8] 
       (.C(i_clk),
        .CE(tmp2),
        .D(tmp1[8]),
        .Q(\tmp2_reg_n_0_[8] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[9] 
       (.C(i_clk),
        .CE(tmp2),
        .D(tmp1[9]),
        .Q(\tmp2_reg_n_0_[9] ),
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
