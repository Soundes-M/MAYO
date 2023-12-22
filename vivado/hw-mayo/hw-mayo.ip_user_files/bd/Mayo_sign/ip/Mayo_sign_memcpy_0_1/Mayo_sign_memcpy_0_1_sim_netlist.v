// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Dec  8 17:14:17 2023
// Host        : zenith running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/osm/Documents/Sect/SECT-MAYO/MAYO/vivado/hw-mayo/hw-mayo.gen/sources_1/bd/Mayo_sign/ip/Mayo_sign_memcpy_0_1/Mayo_sign_memcpy_0_1_sim_netlist.v
// Design      : Mayo_sign_memcpy_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Mayo_sign_memcpy_0_1,memcpy,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "memcpy,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Mayo_sign_memcpy_0_1
   (clk,
    rst,
    start,
    i_src_adr,
    i_dst_adr,
    i_len,
    o_done,
    i_mem_port_sel,
    i_src_dout,
    o_src_din,
    o_src_addr,
    o_src_en,
    o_src_rst,
    o_src_we,
    o_src_control,
    i_dest_dout,
    o_dest_din,
    o_dest_addr,
    o_dest_en,
    o_dest_rst,
    o_dest_we,
    o_dest_control);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN Mayo_sign_clk, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input start;
  input [31:0]i_src_adr;
  input [31:0]i_dst_adr;
  input [31:0]i_len;
  output o_done;
  input [1:0]i_mem_port_sel;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Src_PORTA DOUT" *) input [31:0]i_src_dout;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Src_PORTA DIN" *) output [31:0]o_src_din;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Src_PORTA ADDR" *) output [31:0]o_src_addr;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Src_PORTA EN" *) output o_src_en;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Src_PORTA RST" *) output o_src_rst;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Src_PORTA WE" *) output [3:0]o_src_we;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Src_PORTA CTRL" *) output o_src_control;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Dest_PORTB DOUT" *) input [31:0]i_dest_dout;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Dest_PORTB DIN" *) output [31:0]o_dest_din;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Dest_PORTB ADDR" *) output [31:0]o_dest_addr;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Dest_PORTB EN" *) output o_dest_en;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Dest_PORTB RST" *) output o_dest_rst;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Dest_PORTB WE" *) output [3:0]o_dest_we;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Dest_PORTB CTRL" *) output o_dest_control;

  wire \<const0> ;
  wire clk;
  wire [31:0]i_dest_dout;
  wire [31:0]i_dst_adr;
  wire [31:0]i_len;
  wire [1:0]i_mem_port_sel;
  wire [31:0]i_src_adr;
  wire [31:0]i_src_dout;
  wire [31:0]o_dest_addr;
  wire o_dest_control;
  wire [31:0]o_dest_din;
  wire o_dest_en;
  wire [2:2]\^o_dest_we ;
  wire o_done;
  wire [31:0]o_src_addr;
  wire o_src_control;
  wire [31:0]o_src_din;
  wire o_src_en;
  wire [2:2]\^o_src_we ;
  wire rst;
  wire start;

  assign o_dest_rst = \<const0> ;
  assign o_dest_we[3] = \^o_dest_we [2];
  assign o_dest_we[2] = \^o_dest_we [2];
  assign o_dest_we[1] = \^o_dest_we [2];
  assign o_dest_we[0] = \^o_dest_we [2];
  assign o_src_rst = \<const0> ;
  assign o_src_we[3] = \^o_src_we [2];
  assign o_src_we[2] = \^o_src_we [2];
  assign o_src_we[1] = \^o_src_we [2];
  assign o_src_we[0] = \^o_src_we [2];
  GND GND
       (.G(\<const0> ));
  Mayo_sign_memcpy_0_1_memcpy U0
       (.clk(clk),
        .i_dest_dout(i_dest_dout),
        .i_dst_adr(i_dst_adr),
        .i_len(i_len),
        .i_mem_port_sel(i_mem_port_sel),
        .i_src_adr(i_src_adr),
        .i_src_dout(i_src_dout),
        .o_dest_addr(o_dest_addr),
        .o_dest_control(o_dest_control),
        .o_dest_din(o_dest_din),
        .o_dest_en(o_dest_en),
        .o_dest_we(\^o_dest_we ),
        .o_done(o_done),
        .o_src_addr(o_src_addr),
        .o_src_control(o_src_control),
        .o_src_din(o_src_din),
        .o_src_en(o_src_en),
        .o_src_we(\^o_src_we ),
        .rst(rst),
        .start(start));
endmodule

(* ORIG_REF_NAME = "memcpy" *) 
module Mayo_sign_memcpy_0_1_memcpy
   (o_src_addr,
    o_src_din,
    o_dest_din,
    o_dest_addr,
    o_done,
    o_src_en,
    o_src_we,
    o_dest_we,
    o_dest_en,
    o_src_control,
    o_dest_control,
    rst,
    clk,
    i_len,
    i_src_adr,
    i_dst_adr,
    i_src_dout,
    start,
    i_mem_port_sel,
    i_dest_dout);
  output [31:0]o_src_addr;
  output [31:0]o_src_din;
  output [31:0]o_dest_din;
  output [31:0]o_dest_addr;
  output o_done;
  output o_src_en;
  output [0:0]o_src_we;
  output [0:0]o_dest_we;
  output o_dest_en;
  output o_src_control;
  output o_dest_control;
  input rst;
  input clk;
  input [31:0]i_len;
  input [31:0]i_src_adr;
  input [31:0]i_dst_adr;
  input [31:0]i_src_dout;
  input start;
  input [1:0]i_mem_port_sel;
  input [31:0]i_dest_dout;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[0]_i_2_n_0 ;
  wire \FSM_onehot_state[12]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[8]_i_1_n_0 ;
  wire \FSM_onehot_state[9]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[10] ;
  wire \FSM_onehot_state_reg_n_0_[11] ;
  wire \FSM_onehot_state_reg_n_0_[12] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire \FSM_onehot_state_reg_n_0_[8] ;
  wire \FSM_onehot_state_reg_n_0_[9] ;
  wire \bram_dst[o][o_addr][0]_i_1_n_0 ;
  wire \bram_dst[o][o_addr][10]_i_1_n_0 ;
  wire \bram_dst[o][o_addr][11]_i_1_n_0 ;
  wire \bram_dst[o][o_addr][12]_i_1_n_0 ;
  wire \bram_dst[o][o_addr][13]_i_1_n_0 ;
  wire \bram_dst[o][o_addr][14]_i_1_n_0 ;
  wire \bram_dst[o][o_addr][15]_i_1_n_0 ;
  wire \bram_dst[o][o_addr][16]_i_1_n_0 ;
  wire \bram_dst[o][o_addr][17]_i_1_n_0 ;
  wire \bram_dst[o][o_addr][18]_i_1_n_0 ;
  wire \bram_dst[o][o_addr][19]_i_1_n_0 ;
  wire \bram_dst[o][o_addr][1]_i_1_n_0 ;
  wire \bram_dst[o][o_addr][20]_i_1_n_0 ;
  wire \bram_dst[o][o_addr][21]_i_1_n_0 ;
  wire \bram_dst[o][o_addr][22]_i_1_n_0 ;
  wire \bram_dst[o][o_addr][23]_i_1_n_0 ;
  wire \bram_dst[o][o_addr][24]_i_1_n_0 ;
  wire \bram_dst[o][o_addr][25]_i_1_n_0 ;
  wire \bram_dst[o][o_addr][26]_i_1_n_0 ;
  wire \bram_dst[o][o_addr][27]_i_1_n_0 ;
  wire \bram_dst[o][o_addr][28]_i_1_n_0 ;
  wire \bram_dst[o][o_addr][29]_i_1_n_0 ;
  wire \bram_dst[o][o_addr][2]_i_1_n_0 ;
  wire \bram_dst[o][o_addr][30]_i_1_n_0 ;
  wire \bram_dst[o][o_addr][31]_i_1_n_0 ;
  wire \bram_dst[o][o_addr][31]_i_2_n_0 ;
  wire \bram_dst[o][o_addr][3]_i_1_n_0 ;
  wire \bram_dst[o][o_addr][4]_i_1_n_0 ;
  wire \bram_dst[o][o_addr][5]_i_1_n_0 ;
  wire \bram_dst[o][o_addr][6]_i_1_n_0 ;
  wire \bram_dst[o][o_addr][7]_i_1_n_0 ;
  wire \bram_dst[o][o_addr][8]_i_1_n_0 ;
  wire \bram_dst[o][o_addr][9]_i_1_n_0 ;
  wire \bram_dst[o][o_din][0]_i_1_n_0 ;
  wire \bram_dst[o][o_din][10]_i_1_n_0 ;
  wire \bram_dst[o][o_din][11]_i_1_n_0 ;
  wire \bram_dst[o][o_din][12]_i_1_n_0 ;
  wire \bram_dst[o][o_din][13]_i_1_n_0 ;
  wire \bram_dst[o][o_din][14]_i_1_n_0 ;
  wire \bram_dst[o][o_din][15]_i_1_n_0 ;
  wire \bram_dst[o][o_din][16]_i_1_n_0 ;
  wire \bram_dst[o][o_din][17]_i_1_n_0 ;
  wire \bram_dst[o][o_din][18]_i_1_n_0 ;
  wire \bram_dst[o][o_din][19]_i_1_n_0 ;
  wire \bram_dst[o][o_din][1]_i_1_n_0 ;
  wire \bram_dst[o][o_din][20]_i_1_n_0 ;
  wire \bram_dst[o][o_din][21]_i_1_n_0 ;
  wire \bram_dst[o][o_din][22]_i_1_n_0 ;
  wire \bram_dst[o][o_din][23]_i_1_n_0 ;
  wire \bram_dst[o][o_din][24]_i_1_n_0 ;
  wire \bram_dst[o][o_din][25]_i_1_n_0 ;
  wire \bram_dst[o][o_din][26]_i_1_n_0 ;
  wire \bram_dst[o][o_din][27]_i_1_n_0 ;
  wire \bram_dst[o][o_din][28]_i_1_n_0 ;
  wire \bram_dst[o][o_din][29]_i_1_n_0 ;
  wire \bram_dst[o][o_din][2]_i_1_n_0 ;
  wire \bram_dst[o][o_din][30]_i_1_n_0 ;
  wire \bram_dst[o][o_din][31]_i_1_n_0 ;
  wire \bram_dst[o][o_din][31]_i_2_n_0 ;
  wire \bram_dst[o][o_din][3]_i_1_n_0 ;
  wire \bram_dst[o][o_din][4]_i_1_n_0 ;
  wire \bram_dst[o][o_din][5]_i_1_n_0 ;
  wire \bram_dst[o][o_din][6]_i_1_n_0 ;
  wire \bram_dst[o][o_din][7]_i_1_n_0 ;
  wire \bram_dst[o][o_din][8]_i_1_n_0 ;
  wire \bram_dst[o][o_din][9]_i_1_n_0 ;
  wire \bram_dst[o][o_en]_i_1_n_0 ;
  wire \bram_dst[o][o_en]_i_2_n_0 ;
  wire \bram_dst[o][o_we][3]_i_1_n_0 ;
  wire \bram_src[o][o_addr][0]_i_1_n_0 ;
  wire \bram_src[o][o_addr][0]_i_2_n_0 ;
  wire \bram_src[o][o_addr][10]_i_1_n_0 ;
  wire \bram_src[o][o_addr][10]_i_2_n_0 ;
  wire \bram_src[o][o_addr][11]_i_1_n_0 ;
  wire \bram_src[o][o_addr][11]_i_2_n_0 ;
  wire \bram_src[o][o_addr][12]_i_10_n_0 ;
  wire \bram_src[o][o_addr][12]_i_11_n_0 ;
  wire \bram_src[o][o_addr][12]_i_12_n_0 ;
  wire \bram_src[o][o_addr][12]_i_1_n_0 ;
  wire \bram_src[o][o_addr][12]_i_4_n_0 ;
  wire \bram_src[o][o_addr][12]_i_5_n_0 ;
  wire \bram_src[o][o_addr][12]_i_6_n_0 ;
  wire \bram_src[o][o_addr][12]_i_7_n_0 ;
  wire \bram_src[o][o_addr][12]_i_8_n_0 ;
  wire \bram_src[o][o_addr][12]_i_9_n_0 ;
  wire \bram_src[o][o_addr][13]_i_1_n_0 ;
  wire \bram_src[o][o_addr][13]_i_2_n_0 ;
  wire \bram_src[o][o_addr][14]_i_1_n_0 ;
  wire \bram_src[o][o_addr][14]_i_2_n_0 ;
  wire \bram_src[o][o_addr][15]_i_1_n_0 ;
  wire \bram_src[o][o_addr][15]_i_2_n_0 ;
  wire \bram_src[o][o_addr][16]_i_10_n_0 ;
  wire \bram_src[o][o_addr][16]_i_11_n_0 ;
  wire \bram_src[o][o_addr][16]_i_12_n_0 ;
  wire \bram_src[o][o_addr][16]_i_1_n_0 ;
  wire \bram_src[o][o_addr][16]_i_4_n_0 ;
  wire \bram_src[o][o_addr][16]_i_5_n_0 ;
  wire \bram_src[o][o_addr][16]_i_6_n_0 ;
  wire \bram_src[o][o_addr][16]_i_7_n_0 ;
  wire \bram_src[o][o_addr][16]_i_8_n_0 ;
  wire \bram_src[o][o_addr][16]_i_9_n_0 ;
  wire \bram_src[o][o_addr][17]_i_1_n_0 ;
  wire \bram_src[o][o_addr][17]_i_2_n_0 ;
  wire \bram_src[o][o_addr][18]_i_1_n_0 ;
  wire \bram_src[o][o_addr][18]_i_2_n_0 ;
  wire \bram_src[o][o_addr][19]_i_1_n_0 ;
  wire \bram_src[o][o_addr][19]_i_2_n_0 ;
  wire \bram_src[o][o_addr][1]_i_1_n_0 ;
  wire \bram_src[o][o_addr][1]_i_2_n_0 ;
  wire \bram_src[o][o_addr][20]_i_10_n_0 ;
  wire \bram_src[o][o_addr][20]_i_11_n_0 ;
  wire \bram_src[o][o_addr][20]_i_12_n_0 ;
  wire \bram_src[o][o_addr][20]_i_1_n_0 ;
  wire \bram_src[o][o_addr][20]_i_4_n_0 ;
  wire \bram_src[o][o_addr][20]_i_5_n_0 ;
  wire \bram_src[o][o_addr][20]_i_6_n_0 ;
  wire \bram_src[o][o_addr][20]_i_7_n_0 ;
  wire \bram_src[o][o_addr][20]_i_8_n_0 ;
  wire \bram_src[o][o_addr][20]_i_9_n_0 ;
  wire \bram_src[o][o_addr][21]_i_1_n_0 ;
  wire \bram_src[o][o_addr][21]_i_2_n_0 ;
  wire \bram_src[o][o_addr][22]_i_1_n_0 ;
  wire \bram_src[o][o_addr][22]_i_2_n_0 ;
  wire \bram_src[o][o_addr][23]_i_1_n_0 ;
  wire \bram_src[o][o_addr][23]_i_2_n_0 ;
  wire \bram_src[o][o_addr][24]_i_10_n_0 ;
  wire \bram_src[o][o_addr][24]_i_11_n_0 ;
  wire \bram_src[o][o_addr][24]_i_12_n_0 ;
  wire \bram_src[o][o_addr][24]_i_1_n_0 ;
  wire \bram_src[o][o_addr][24]_i_4_n_0 ;
  wire \bram_src[o][o_addr][24]_i_5_n_0 ;
  wire \bram_src[o][o_addr][24]_i_6_n_0 ;
  wire \bram_src[o][o_addr][24]_i_7_n_0 ;
  wire \bram_src[o][o_addr][24]_i_8_n_0 ;
  wire \bram_src[o][o_addr][24]_i_9_n_0 ;
  wire \bram_src[o][o_addr][25]_i_1_n_0 ;
  wire \bram_src[o][o_addr][25]_i_2_n_0 ;
  wire \bram_src[o][o_addr][26]_i_1_n_0 ;
  wire \bram_src[o][o_addr][26]_i_2_n_0 ;
  wire \bram_src[o][o_addr][27]_i_1_n_0 ;
  wire \bram_src[o][o_addr][27]_i_2_n_0 ;
  wire \bram_src[o][o_addr][28]_i_10_n_0 ;
  wire \bram_src[o][o_addr][28]_i_11_n_0 ;
  wire \bram_src[o][o_addr][28]_i_12_n_0 ;
  wire \bram_src[o][o_addr][28]_i_1_n_0 ;
  wire \bram_src[o][o_addr][28]_i_4_n_0 ;
  wire \bram_src[o][o_addr][28]_i_5_n_0 ;
  wire \bram_src[o][o_addr][28]_i_6_n_0 ;
  wire \bram_src[o][o_addr][28]_i_7_n_0 ;
  wire \bram_src[o][o_addr][28]_i_8_n_0 ;
  wire \bram_src[o][o_addr][28]_i_9_n_0 ;
  wire \bram_src[o][o_addr][29]_i_1_n_0 ;
  wire \bram_src[o][o_addr][29]_i_2_n_0 ;
  wire \bram_src[o][o_addr][2]_i_1_n_0 ;
  wire \bram_src[o][o_addr][2]_i_2_n_0 ;
  wire \bram_src[o][o_addr][30]_i_1_n_0 ;
  wire \bram_src[o][o_addr][30]_i_2_n_0 ;
  wire \bram_src[o][o_addr][31]_i_1_n_0 ;
  wire \bram_src[o][o_addr][31]_i_2_n_0 ;
  wire \bram_src[o][o_addr][31]_i_5_n_0 ;
  wire \bram_src[o][o_addr][31]_i_6_n_0 ;
  wire \bram_src[o][o_addr][31]_i_7_n_0 ;
  wire \bram_src[o][o_addr][31]_i_8_n_0 ;
  wire \bram_src[o][o_addr][31]_i_9_n_0 ;
  wire \bram_src[o][o_addr][3]_i_1_n_0 ;
  wire \bram_src[o][o_addr][3]_i_2_n_0 ;
  wire \bram_src[o][o_addr][4]_i_10_n_0 ;
  wire \bram_src[o][o_addr][4]_i_11_n_0 ;
  wire \bram_src[o][o_addr][4]_i_1_n_0 ;
  wire \bram_src[o][o_addr][4]_i_4_n_0 ;
  wire \bram_src[o][o_addr][4]_i_5_n_0 ;
  wire \bram_src[o][o_addr][4]_i_6_n_0 ;
  wire \bram_src[o][o_addr][4]_i_7_n_0 ;
  wire \bram_src[o][o_addr][4]_i_9_n_0 ;
  wire \bram_src[o][o_addr][5]_i_1_n_0 ;
  wire \bram_src[o][o_addr][5]_i_2_n_0 ;
  wire \bram_src[o][o_addr][6]_i_1_n_0 ;
  wire \bram_src[o][o_addr][6]_i_2_n_0 ;
  wire \bram_src[o][o_addr][7]_i_1_n_0 ;
  wire \bram_src[o][o_addr][7]_i_2_n_0 ;
  wire \bram_src[o][o_addr][8]_i_10_n_0 ;
  wire \bram_src[o][o_addr][8]_i_11_n_0 ;
  wire \bram_src[o][o_addr][8]_i_12_n_0 ;
  wire \bram_src[o][o_addr][8]_i_1_n_0 ;
  wire \bram_src[o][o_addr][8]_i_4_n_0 ;
  wire \bram_src[o][o_addr][8]_i_5_n_0 ;
  wire \bram_src[o][o_addr][8]_i_6_n_0 ;
  wire \bram_src[o][o_addr][8]_i_7_n_0 ;
  wire \bram_src[o][o_addr][8]_i_8_n_0 ;
  wire \bram_src[o][o_addr][8]_i_9_n_0 ;
  wire \bram_src[o][o_addr][9]_i_1_n_0 ;
  wire \bram_src[o][o_addr][9]_i_2_n_0 ;
  wire \bram_src[o][o_din] ;
  wire \bram_src[o][o_en]_i_1_n_0 ;
  wire \bram_src[o][o_en]_i_2_n_0 ;
  wire \bram_src[o][o_we][3]_i_1_n_0 ;
  wire \bram_src_reg[o][o_addr][12]_i_2_n_0 ;
  wire \bram_src_reg[o][o_addr][12]_i_2_n_1 ;
  wire \bram_src_reg[o][o_addr][12]_i_2_n_2 ;
  wire \bram_src_reg[o][o_addr][12]_i_2_n_3 ;
  wire \bram_src_reg[o][o_addr][12]_i_3_n_0 ;
  wire \bram_src_reg[o][o_addr][12]_i_3_n_1 ;
  wire \bram_src_reg[o][o_addr][12]_i_3_n_2 ;
  wire \bram_src_reg[o][o_addr][12]_i_3_n_3 ;
  wire \bram_src_reg[o][o_addr][16]_i_2_n_0 ;
  wire \bram_src_reg[o][o_addr][16]_i_2_n_1 ;
  wire \bram_src_reg[o][o_addr][16]_i_2_n_2 ;
  wire \bram_src_reg[o][o_addr][16]_i_2_n_3 ;
  wire \bram_src_reg[o][o_addr][16]_i_3_n_0 ;
  wire \bram_src_reg[o][o_addr][16]_i_3_n_1 ;
  wire \bram_src_reg[o][o_addr][16]_i_3_n_2 ;
  wire \bram_src_reg[o][o_addr][16]_i_3_n_3 ;
  wire \bram_src_reg[o][o_addr][20]_i_2_n_0 ;
  wire \bram_src_reg[o][o_addr][20]_i_2_n_1 ;
  wire \bram_src_reg[o][o_addr][20]_i_2_n_2 ;
  wire \bram_src_reg[o][o_addr][20]_i_2_n_3 ;
  wire \bram_src_reg[o][o_addr][20]_i_3_n_0 ;
  wire \bram_src_reg[o][o_addr][20]_i_3_n_1 ;
  wire \bram_src_reg[o][o_addr][20]_i_3_n_2 ;
  wire \bram_src_reg[o][o_addr][20]_i_3_n_3 ;
  wire \bram_src_reg[o][o_addr][24]_i_2_n_0 ;
  wire \bram_src_reg[o][o_addr][24]_i_2_n_1 ;
  wire \bram_src_reg[o][o_addr][24]_i_2_n_2 ;
  wire \bram_src_reg[o][o_addr][24]_i_2_n_3 ;
  wire \bram_src_reg[o][o_addr][24]_i_3_n_0 ;
  wire \bram_src_reg[o][o_addr][24]_i_3_n_1 ;
  wire \bram_src_reg[o][o_addr][24]_i_3_n_2 ;
  wire \bram_src_reg[o][o_addr][24]_i_3_n_3 ;
  wire \bram_src_reg[o][o_addr][28]_i_2_n_0 ;
  wire \bram_src_reg[o][o_addr][28]_i_2_n_1 ;
  wire \bram_src_reg[o][o_addr][28]_i_2_n_2 ;
  wire \bram_src_reg[o][o_addr][28]_i_2_n_3 ;
  wire \bram_src_reg[o][o_addr][28]_i_3_n_0 ;
  wire \bram_src_reg[o][o_addr][28]_i_3_n_1 ;
  wire \bram_src_reg[o][o_addr][28]_i_3_n_2 ;
  wire \bram_src_reg[o][o_addr][28]_i_3_n_3 ;
  wire \bram_src_reg[o][o_addr][31]_i_3_n_2 ;
  wire \bram_src_reg[o][o_addr][31]_i_3_n_3 ;
  wire \bram_src_reg[o][o_addr][31]_i_4_n_2 ;
  wire \bram_src_reg[o][o_addr][31]_i_4_n_3 ;
  wire \bram_src_reg[o][o_addr][4]_i_2_n_0 ;
  wire \bram_src_reg[o][o_addr][4]_i_2_n_1 ;
  wire \bram_src_reg[o][o_addr][4]_i_2_n_2 ;
  wire \bram_src_reg[o][o_addr][4]_i_2_n_3 ;
  wire \bram_src_reg[o][o_addr][4]_i_3_n_0 ;
  wire \bram_src_reg[o][o_addr][4]_i_3_n_1 ;
  wire \bram_src_reg[o][o_addr][4]_i_3_n_2 ;
  wire \bram_src_reg[o][o_addr][4]_i_3_n_3 ;
  wire \bram_src_reg[o][o_addr][8]_i_2_n_0 ;
  wire \bram_src_reg[o][o_addr][8]_i_2_n_1 ;
  wire \bram_src_reg[o][o_addr][8]_i_2_n_2 ;
  wire \bram_src_reg[o][o_addr][8]_i_2_n_3 ;
  wire \bram_src_reg[o][o_addr][8]_i_3_n_0 ;
  wire \bram_src_reg[o][o_addr][8]_i_3_n_1 ;
  wire \bram_src_reg[o][o_addr][8]_i_3_n_2 ;
  wire \bram_src_reg[o][o_addr][8]_i_3_n_3 ;
  wire clk;
  wire \copy_index0_inferred__0/i__carry__0_n_0 ;
  wire \copy_index0_inferred__0/i__carry__0_n_1 ;
  wire \copy_index0_inferred__0/i__carry__0_n_2 ;
  wire \copy_index0_inferred__0/i__carry__0_n_3 ;
  wire \copy_index0_inferred__0/i__carry__1_n_0 ;
  wire \copy_index0_inferred__0/i__carry__1_n_1 ;
  wire \copy_index0_inferred__0/i__carry__1_n_2 ;
  wire \copy_index0_inferred__0/i__carry__1_n_3 ;
  wire \copy_index0_inferred__0/i__carry__2_n_0 ;
  wire \copy_index0_inferred__0/i__carry__2_n_1 ;
  wire \copy_index0_inferred__0/i__carry__2_n_2 ;
  wire \copy_index0_inferred__0/i__carry__2_n_3 ;
  wire \copy_index0_inferred__0/i__carry_n_0 ;
  wire \copy_index0_inferred__0/i__carry_n_1 ;
  wire \copy_index0_inferred__0/i__carry_n_2 ;
  wire \copy_index0_inferred__0/i__carry_n_3 ;
  wire \copy_index[10]_i_1_n_0 ;
  wire \copy_index[11]_i_1_n_0 ;
  wire \copy_index[12]_i_1_n_0 ;
  wire \copy_index[13]_i_1_n_0 ;
  wire \copy_index[14]_i_1_n_0 ;
  wire \copy_index[15]_i_1_n_0 ;
  wire \copy_index[16]_i_1_n_0 ;
  wire \copy_index[17]_i_1_n_0 ;
  wire \copy_index[18]_i_1_n_0 ;
  wire \copy_index[19]_i_1_n_0 ;
  wire \copy_index[1]_i_1_n_0 ;
  wire \copy_index[20]_i_1_n_0 ;
  wire \copy_index[21]_i_1_n_0 ;
  wire \copy_index[22]_i_1_n_0 ;
  wire \copy_index[23]_i_1_n_0 ;
  wire \copy_index[24]_i_1_n_0 ;
  wire \copy_index[25]_i_1_n_0 ;
  wire \copy_index[26]_i_1_n_0 ;
  wire \copy_index[27]_i_1_n_0 ;
  wire \copy_index[28]_i_1_n_0 ;
  wire \copy_index[29]_i_1_n_0 ;
  wire \copy_index[2]_i_1_n_0 ;
  wire \copy_index[30]_i_1_n_0 ;
  wire \copy_index[31]_i_1_n_0 ;
  wire \copy_index[31]_i_2_n_0 ;
  wire \copy_index[3]_i_1_n_0 ;
  wire \copy_index[4]_i_1_n_0 ;
  wire \copy_index[4]_i_3_n_0 ;
  wire \copy_index[5]_i_1_n_0 ;
  wire \copy_index[6]_i_1_n_0 ;
  wire \copy_index[7]_i_1_n_0 ;
  wire \copy_index[8]_i_1_n_0 ;
  wire \copy_index[9]_i_1_n_0 ;
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
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
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
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire [31:0]i_dest_dout;
  wire [31:0]i_dst_adr;
  wire [31:0]i_len;
  wire [1:0]i_mem_port_sel;
  wire [31:0]i_src_adr;
  wire [31:0]i_src_dout;
  wire [31:1]in11;
  wire [31:1]in5;
  wire [31:1]in8;
  wire [31:1]in9;
  wire [31:0]len;
  wire len_0;
  wire [31:0]o_dest_addr;
  wire o_dest_control;
  wire o_dest_control_i_1_n_0;
  wire [31:0]o_dest_din;
  wire o_dest_en;
  wire [0:0]o_dest_we;
  wire o_done;
  wire o_done_i_1_n_0;
  wire [31:0]o_src_addr;
  wire o_src_control;
  wire o_src_control_i_1_n_0;
  wire [31:0]o_src_din;
  wire o_src_en;
  wire [0:0]o_src_we;
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
  wire [31:0]s_dst_adr;
  wire [31:0]s_src_adr;
  wire start;
  wire [3:2]\NLW_bram_src_reg[o][o_addr][31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_bram_src_reg[o][o_addr][31]_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_bram_src_reg[o][o_addr][31]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_bram_src_reg[o][o_addr][31]_i_4_O_UNCONNECTED ;
  wire [0:0]\NLW_bram_src_reg[o][o_addr][4]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_bram_src_reg[o][o_addr][4]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_copy_index0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_copy_index0_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_copy_index0_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_copy_index0_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:2]\NLW_copy_index_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_copy_index_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:2]NLW_plusOp_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__6_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .I2(\FSM_onehot_state[0]_i_2_n_0 ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEAFFAAAA)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(i_mem_port_sel[1]),
        .I2(i_mem_port_sel[0]),
        .I3(start),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[11] ),
        .I1(\copy_index0_inferred__0/i__carry__2_n_0 ),
        .O(\FSM_onehot_state[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(start),
        .I2(i_mem_port_sel[0]),
        .I3(i_mem_port_sel[1]),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\copy_index0_inferred__0/i__carry__2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\copy_index0_inferred__0/i__carry__2_n_0 ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF400040004000)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(i_mem_port_sel[1]),
        .I1(i_mem_port_sel[0]),
        .I2(start),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\copy_index0_inferred__0/i__carry__2_n_0 ),
        .I5(\bram_src[o][o_din] ),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[8]_i_1 
       (.I0(\bram_src[o][o_din] ),
        .I1(\copy_index0_inferred__0/i__carry__2_n_0 ),
        .O(\FSM_onehot_state[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF400040004000)) 
    \FSM_onehot_state[9]_i_1 
       (.I0(i_mem_port_sel[0]),
        .I1(i_mem_port_sel[1]),
        .I2(start),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\copy_index0_inferred__0/i__carry__2_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\FSM_onehot_state[9]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "cpy2:0000000001000,cpy1:0000000000100,done0:0000100000000,cpy10:0100000000000,done:0000000010000,cpy9:0010000000000,cpy0:0000000000010,idle:0000000000001,cpy8:0001000000000,cpy7:0000010000000,cpy5:0000001000000,done1:1000000000000,cpy4:0000000100000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(rst));
  (* FSM_ENCODED_STATES = "cpy2:0000000001000,cpy1:0000000000100,done0:0000100000000,cpy10:0100000000000,done:0000000010000,cpy9:0010000000000,cpy0:0000000000010,idle:0000000000001,cpy8:0001000000000,cpy7:0000010000000,cpy5:0000001000000,done1:1000000000000,cpy4:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[9] ),
        .Q(\FSM_onehot_state_reg_n_0_[10] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "cpy2:0000000001000,cpy1:0000000000100,done0:0000100000000,cpy10:0100000000000,done:0000000010000,cpy9:0010000000000,cpy0:0000000000010,idle:0000000000001,cpy8:0001000000000,cpy7:0000010000000,cpy5:0000001000000,done1:1000000000000,cpy4:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[10] ),
        .Q(\FSM_onehot_state_reg_n_0_[11] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "cpy2:0000000001000,cpy1:0000000000100,done0:0000100000000,cpy10:0100000000000,done:0000000010000,cpy9:0010000000000,cpy0:0000000000010,idle:0000000000001,cpy8:0001000000000,cpy7:0000010000000,cpy5:0000001000000,done1:1000000000000,cpy4:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[12]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[12] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "cpy2:0000000001000,cpy1:0000000000100,done0:0000100000000,cpy10:0100000000000,done:0000000010000,cpy9:0010000000000,cpy0:0000000000010,idle:0000000000001,cpy8:0001000000000,cpy7:0000010000000,cpy5:0000001000000,done1:1000000000000,cpy4:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "cpy2:0000000001000,cpy1:0000000000100,done0:0000100000000,cpy10:0100000000000,done:0000000010000,cpy9:0010000000000,cpy0:0000000000010,idle:0000000000001,cpy8:0001000000000,cpy7:0000010000000,cpy5:0000001000000,done1:1000000000000,cpy4:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "cpy2:0000000001000,cpy1:0000000000100,done0:0000100000000,cpy10:0100000000000,done:0000000010000,cpy9:0010000000000,cpy0:0000000000010,idle:0000000000001,cpy8:0001000000000,cpy7:0000010000000,cpy5:0000001000000,done1:1000000000000,cpy4:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "cpy2:0000000001000,cpy1:0000000000100,done0:0000100000000,cpy10:0100000000000,done:0000000010000,cpy9:0010000000000,cpy0:0000000000010,idle:0000000000001,cpy8:0001000000000,cpy7:0000010000000,cpy5:0000001000000,done1:1000000000000,cpy4:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "cpy2:0000000001000,cpy1:0000000000100,done0:0000100000000,cpy10:0100000000000,done:0000000010000,cpy9:0010000000000,cpy0:0000000000010,idle:0000000000001,cpy8:0001000000000,cpy7:0000010000000,cpy5:0000001000000,done1:1000000000000,cpy4:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "cpy2:0000000001000,cpy1:0000000000100,done0:0000100000000,cpy10:0100000000000,done:0000000010000,cpy9:0010000000000,cpy0:0000000000010,idle:0000000000001,cpy8:0001000000000,cpy7:0000010000000,cpy5:0000001000000,done1:1000000000000,cpy4:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[5] ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "cpy2:0000000001000,cpy1:0000000000100,done0:0000100000000,cpy10:0100000000000,done:0000000010000,cpy9:0010000000000,cpy0:0000000000010,idle:0000000000001,cpy8:0001000000000,cpy7:0000010000000,cpy5:0000001000000,done1:1000000000000,cpy4:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[6] ),
        .Q(\bram_src[o][o_din] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "cpy2:0000000001000,cpy1:0000000000100,done0:0000100000000,cpy10:0100000000000,done:0000000010000,cpy9:0010000000000,cpy0:0000000000010,idle:0000000000001,cpy8:0001000000000,cpy7:0000010000000,cpy5:0000001000000,done1:1000000000000,cpy4:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[8]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[8] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "cpy2:0000000001000,cpy1:0000000000100,done0:0000100000000,cpy10:0100000000000,done:0000000010000,cpy9:0010000000000,cpy0:0000000000010,idle:0000000000001,cpy8:0001000000000,cpy7:0000010000000,cpy5:0000001000000,done1:1000000000000,cpy4:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[9]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[9] ),
        .R(rst));
  LUT5 #(
    .INIT(32'hFAAAF888)) 
    \bram_dst[o][o_addr][0]_i_1 
       (.I0(s_dst_adr[0]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(s_src_adr[0]),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_dst[o][o_addr][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAF888)) 
    \bram_dst[o][o_addr][10]_i_1 
       (.I0(in8[10]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(in9[10]),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_dst[o][o_addr][10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAF888)) 
    \bram_dst[o][o_addr][11]_i_1 
       (.I0(in8[11]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(in9[11]),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_dst[o][o_addr][11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAF888)) 
    \bram_dst[o][o_addr][12]_i_1 
       (.I0(in8[12]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(in9[12]),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_dst[o][o_addr][12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAF888)) 
    \bram_dst[o][o_addr][13]_i_1 
       (.I0(in8[13]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(in9[13]),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_dst[o][o_addr][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAF888)) 
    \bram_dst[o][o_addr][14]_i_1 
       (.I0(in8[14]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(in9[14]),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_dst[o][o_addr][14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAF888)) 
    \bram_dst[o][o_addr][15]_i_1 
       (.I0(in8[15]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(in9[15]),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_dst[o][o_addr][15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAF888)) 
    \bram_dst[o][o_addr][16]_i_1 
       (.I0(in8[16]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(in9[16]),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_dst[o][o_addr][16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAF888)) 
    \bram_dst[o][o_addr][17]_i_1 
       (.I0(in8[17]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(in9[17]),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_dst[o][o_addr][17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAF888)) 
    \bram_dst[o][o_addr][18]_i_1 
       (.I0(in8[18]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(in9[18]),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_dst[o][o_addr][18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAF888)) 
    \bram_dst[o][o_addr][19]_i_1 
       (.I0(in8[19]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(in9[19]),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_dst[o][o_addr][19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5FFA55AA4FF84488)) 
    \bram_dst[o][o_addr][1]_i_1 
       (.I0(s_dst_adr[1]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(s_src_adr[1]),
        .I3(\copy_index_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_reg_n_0_[9] ),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_dst[o][o_addr][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAF888)) 
    \bram_dst[o][o_addr][20]_i_1 
       (.I0(in8[20]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(in9[20]),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_dst[o][o_addr][20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAF888)) 
    \bram_dst[o][o_addr][21]_i_1 
       (.I0(in8[21]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(in9[21]),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_dst[o][o_addr][21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAF888)) 
    \bram_dst[o][o_addr][22]_i_1 
       (.I0(in8[22]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(in9[22]),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_dst[o][o_addr][22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAF888)) 
    \bram_dst[o][o_addr][23]_i_1 
       (.I0(in8[23]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(in9[23]),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_dst[o][o_addr][23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAF888)) 
    \bram_dst[o][o_addr][24]_i_1 
       (.I0(in8[24]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(in9[24]),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_dst[o][o_addr][24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAF888)) 
    \bram_dst[o][o_addr][25]_i_1 
       (.I0(in8[25]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(in9[25]),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_dst[o][o_addr][25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAF888)) 
    \bram_dst[o][o_addr][26]_i_1 
       (.I0(in8[26]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(in9[26]),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_dst[o][o_addr][26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAF888)) 
    \bram_dst[o][o_addr][27]_i_1 
       (.I0(in8[27]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(in9[27]),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_dst[o][o_addr][27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAF888)) 
    \bram_dst[o][o_addr][28]_i_1 
       (.I0(in8[28]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(in9[28]),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_dst[o][o_addr][28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAF888)) 
    \bram_dst[o][o_addr][29]_i_1 
       (.I0(in8[29]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(in9[29]),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_dst[o][o_addr][29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAF888)) 
    \bram_dst[o][o_addr][2]_i_1 
       (.I0(in8[2]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(in9[2]),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_dst[o][o_addr][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAF888)) 
    \bram_dst[o][o_addr][30]_i_1 
       (.I0(in8[30]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(in9[30]),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_dst[o][o_addr][30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \bram_dst[o][o_addr][31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\bram_dst[o][o_addr][31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAF888)) 
    \bram_dst[o][o_addr][31]_i_2 
       (.I0(in8[31]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(in9[31]),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_dst[o][o_addr][31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAF888)) 
    \bram_dst[o][o_addr][3]_i_1 
       (.I0(in8[3]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(in9[3]),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_dst[o][o_addr][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAF888)) 
    \bram_dst[o][o_addr][4]_i_1 
       (.I0(in8[4]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(in9[4]),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_dst[o][o_addr][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAF888)) 
    \bram_dst[o][o_addr][5]_i_1 
       (.I0(in8[5]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(in9[5]),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_dst[o][o_addr][5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAF888)) 
    \bram_dst[o][o_addr][6]_i_1 
       (.I0(in8[6]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(in9[6]),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_dst[o][o_addr][6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAF888)) 
    \bram_dst[o][o_addr][7]_i_1 
       (.I0(in8[7]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(in9[7]),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_dst[o][o_addr][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAF888)) 
    \bram_dst[o][o_addr][8]_i_1 
       (.I0(in8[8]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(in9[8]),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_dst[o][o_addr][8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAF888)) 
    \bram_dst[o][o_addr][9]_i_1 
       (.I0(in8[9]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(in9[9]),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bram_dst[o][o_addr][9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_dst[o][o_din][0]_i_1 
       (.I0(i_src_dout[0]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(i_dest_dout[0]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\bram_dst[o][o_din][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_dst[o][o_din][10]_i_1 
       (.I0(i_src_dout[10]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(i_dest_dout[10]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\bram_dst[o][o_din][10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_dst[o][o_din][11]_i_1 
       (.I0(i_src_dout[11]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(i_dest_dout[11]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\bram_dst[o][o_din][11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_dst[o][o_din][12]_i_1 
       (.I0(i_src_dout[12]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(i_dest_dout[12]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\bram_dst[o][o_din][12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_dst[o][o_din][13]_i_1 
       (.I0(i_src_dout[13]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(i_dest_dout[13]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\bram_dst[o][o_din][13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_dst[o][o_din][14]_i_1 
       (.I0(i_src_dout[14]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(i_dest_dout[14]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\bram_dst[o][o_din][14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_dst[o][o_din][15]_i_1 
       (.I0(i_src_dout[15]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(i_dest_dout[15]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\bram_dst[o][o_din][15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_dst[o][o_din][16]_i_1 
       (.I0(i_src_dout[16]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(i_dest_dout[16]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\bram_dst[o][o_din][16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_dst[o][o_din][17]_i_1 
       (.I0(i_src_dout[17]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(i_dest_dout[17]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\bram_dst[o][o_din][17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_dst[o][o_din][18]_i_1 
       (.I0(i_src_dout[18]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(i_dest_dout[18]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\bram_dst[o][o_din][18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_dst[o][o_din][19]_i_1 
       (.I0(i_src_dout[19]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(i_dest_dout[19]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\bram_dst[o][o_din][19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_dst[o][o_din][1]_i_1 
       (.I0(i_src_dout[1]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(i_dest_dout[1]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\bram_dst[o][o_din][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_dst[o][o_din][20]_i_1 
       (.I0(i_src_dout[20]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(i_dest_dout[20]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\bram_dst[o][o_din][20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_dst[o][o_din][21]_i_1 
       (.I0(i_src_dout[21]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(i_dest_dout[21]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\bram_dst[o][o_din][21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_dst[o][o_din][22]_i_1 
       (.I0(i_src_dout[22]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(i_dest_dout[22]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\bram_dst[o][o_din][22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_dst[o][o_din][23]_i_1 
       (.I0(i_src_dout[23]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(i_dest_dout[23]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\bram_dst[o][o_din][23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_dst[o][o_din][24]_i_1 
       (.I0(i_src_dout[24]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(i_dest_dout[24]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\bram_dst[o][o_din][24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_dst[o][o_din][25]_i_1 
       (.I0(i_src_dout[25]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(i_dest_dout[25]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\bram_dst[o][o_din][25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_dst[o][o_din][26]_i_1 
       (.I0(i_src_dout[26]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(i_dest_dout[26]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\bram_dst[o][o_din][26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_dst[o][o_din][27]_i_1 
       (.I0(i_src_dout[27]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(i_dest_dout[27]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\bram_dst[o][o_din][27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_dst[o][o_din][28]_i_1 
       (.I0(i_src_dout[28]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(i_dest_dout[28]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\bram_dst[o][o_din][28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_dst[o][o_din][29]_i_1 
       (.I0(i_src_dout[29]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(i_dest_dout[29]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\bram_dst[o][o_din][29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_dst[o][o_din][2]_i_1 
       (.I0(i_src_dout[2]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(i_dest_dout[2]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\bram_dst[o][o_din][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_dst[o][o_din][30]_i_1 
       (.I0(i_src_dout[30]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(i_dest_dout[30]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\bram_dst[o][o_din][30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bram_dst[o][o_din][31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\bram_dst[o][o_din][31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_dst[o][o_din][31]_i_2 
       (.I0(i_src_dout[31]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(i_dest_dout[31]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\bram_dst[o][o_din][31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_dst[o][o_din][3]_i_1 
       (.I0(i_src_dout[3]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(i_dest_dout[3]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\bram_dst[o][o_din][3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_dst[o][o_din][4]_i_1 
       (.I0(i_src_dout[4]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(i_dest_dout[4]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\bram_dst[o][o_din][4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_dst[o][o_din][5]_i_1 
       (.I0(i_src_dout[5]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(i_dest_dout[5]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\bram_dst[o][o_din][5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_dst[o][o_din][6]_i_1 
       (.I0(i_src_dout[6]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(i_dest_dout[6]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\bram_dst[o][o_din][6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_dst[o][o_din][7]_i_1 
       (.I0(i_src_dout[7]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(i_dest_dout[7]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\bram_dst[o][o_din][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_dst[o][o_din][8]_i_1 
       (.I0(i_src_dout[8]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(i_dest_dout[8]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\bram_dst[o][o_din][8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_dst[o][o_din][9]_i_1 
       (.I0(i_src_dout[9]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(i_dest_dout[9]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\bram_dst[o][o_din][9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFE00)) 
    \bram_dst[o][o_en]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .I3(\bram_dst[o][o_en]_i_2_n_0 ),
        .I4(o_dest_en),
        .O(\bram_dst[o][o_en]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bram_dst[o][o_en]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[9] ),
        .I5(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\bram_dst[o][o_en]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hEFE0)) 
    \bram_dst[o][o_we][3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\bram_dst[o][o_en]_i_2_n_0 ),
        .I3(o_dest_we),
        .O(\bram_dst[o][o_we][3]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_addr][0] 
       (.C(clk),
        .CE(\bram_dst[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_addr][0]_i_1_n_0 ),
        .Q(o_dest_addr[0]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_addr][10] 
       (.C(clk),
        .CE(\bram_dst[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_addr][10]_i_1_n_0 ),
        .Q(o_dest_addr[10]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_addr][11] 
       (.C(clk),
        .CE(\bram_dst[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_addr][11]_i_1_n_0 ),
        .Q(o_dest_addr[11]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_addr][12] 
       (.C(clk),
        .CE(\bram_dst[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_addr][12]_i_1_n_0 ),
        .Q(o_dest_addr[12]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_addr][13] 
       (.C(clk),
        .CE(\bram_dst[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_addr][13]_i_1_n_0 ),
        .Q(o_dest_addr[13]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_addr][14] 
       (.C(clk),
        .CE(\bram_dst[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_addr][14]_i_1_n_0 ),
        .Q(o_dest_addr[14]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_addr][15] 
       (.C(clk),
        .CE(\bram_dst[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_addr][15]_i_1_n_0 ),
        .Q(o_dest_addr[15]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_addr][16] 
       (.C(clk),
        .CE(\bram_dst[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_addr][16]_i_1_n_0 ),
        .Q(o_dest_addr[16]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_addr][17] 
       (.C(clk),
        .CE(\bram_dst[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_addr][17]_i_1_n_0 ),
        .Q(o_dest_addr[17]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_addr][18] 
       (.C(clk),
        .CE(\bram_dst[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_addr][18]_i_1_n_0 ),
        .Q(o_dest_addr[18]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_addr][19] 
       (.C(clk),
        .CE(\bram_dst[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_addr][19]_i_1_n_0 ),
        .Q(o_dest_addr[19]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_addr][1] 
       (.C(clk),
        .CE(\bram_dst[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_addr][1]_i_1_n_0 ),
        .Q(o_dest_addr[1]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_addr][20] 
       (.C(clk),
        .CE(\bram_dst[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_addr][20]_i_1_n_0 ),
        .Q(o_dest_addr[20]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_addr][21] 
       (.C(clk),
        .CE(\bram_dst[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_addr][21]_i_1_n_0 ),
        .Q(o_dest_addr[21]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_addr][22] 
       (.C(clk),
        .CE(\bram_dst[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_addr][22]_i_1_n_0 ),
        .Q(o_dest_addr[22]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_addr][23] 
       (.C(clk),
        .CE(\bram_dst[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_addr][23]_i_1_n_0 ),
        .Q(o_dest_addr[23]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_addr][24] 
       (.C(clk),
        .CE(\bram_dst[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_addr][24]_i_1_n_0 ),
        .Q(o_dest_addr[24]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_addr][25] 
       (.C(clk),
        .CE(\bram_dst[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_addr][25]_i_1_n_0 ),
        .Q(o_dest_addr[25]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_addr][26] 
       (.C(clk),
        .CE(\bram_dst[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_addr][26]_i_1_n_0 ),
        .Q(o_dest_addr[26]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_addr][27] 
       (.C(clk),
        .CE(\bram_dst[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_addr][27]_i_1_n_0 ),
        .Q(o_dest_addr[27]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_addr][28] 
       (.C(clk),
        .CE(\bram_dst[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_addr][28]_i_1_n_0 ),
        .Q(o_dest_addr[28]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_addr][29] 
       (.C(clk),
        .CE(\bram_dst[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_addr][29]_i_1_n_0 ),
        .Q(o_dest_addr[29]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_addr][2] 
       (.C(clk),
        .CE(\bram_dst[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_addr][2]_i_1_n_0 ),
        .Q(o_dest_addr[2]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_addr][30] 
       (.C(clk),
        .CE(\bram_dst[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_addr][30]_i_1_n_0 ),
        .Q(o_dest_addr[30]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_addr][31] 
       (.C(clk),
        .CE(\bram_dst[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_addr][31]_i_2_n_0 ),
        .Q(o_dest_addr[31]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_addr][3] 
       (.C(clk),
        .CE(\bram_dst[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_addr][3]_i_1_n_0 ),
        .Q(o_dest_addr[3]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_addr][4] 
       (.C(clk),
        .CE(\bram_dst[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_addr][4]_i_1_n_0 ),
        .Q(o_dest_addr[4]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_addr][5] 
       (.C(clk),
        .CE(\bram_dst[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_addr][5]_i_1_n_0 ),
        .Q(o_dest_addr[5]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_addr][6] 
       (.C(clk),
        .CE(\bram_dst[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_addr][6]_i_1_n_0 ),
        .Q(o_dest_addr[6]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_addr][7] 
       (.C(clk),
        .CE(\bram_dst[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_addr][7]_i_1_n_0 ),
        .Q(o_dest_addr[7]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_addr][8] 
       (.C(clk),
        .CE(\bram_dst[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_addr][8]_i_1_n_0 ),
        .Q(o_dest_addr[8]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_addr][9] 
       (.C(clk),
        .CE(\bram_dst[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_addr][9]_i_1_n_0 ),
        .Q(o_dest_addr[9]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_din][0] 
       (.C(clk),
        .CE(\bram_dst[o][o_din][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_din][0]_i_1_n_0 ),
        .Q(o_dest_din[0]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_din][10] 
       (.C(clk),
        .CE(\bram_dst[o][o_din][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_din][10]_i_1_n_0 ),
        .Q(o_dest_din[10]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_din][11] 
       (.C(clk),
        .CE(\bram_dst[o][o_din][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_din][11]_i_1_n_0 ),
        .Q(o_dest_din[11]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_din][12] 
       (.C(clk),
        .CE(\bram_dst[o][o_din][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_din][12]_i_1_n_0 ),
        .Q(o_dest_din[12]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_din][13] 
       (.C(clk),
        .CE(\bram_dst[o][o_din][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_din][13]_i_1_n_0 ),
        .Q(o_dest_din[13]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_din][14] 
       (.C(clk),
        .CE(\bram_dst[o][o_din][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_din][14]_i_1_n_0 ),
        .Q(o_dest_din[14]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_din][15] 
       (.C(clk),
        .CE(\bram_dst[o][o_din][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_din][15]_i_1_n_0 ),
        .Q(o_dest_din[15]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_din][16] 
       (.C(clk),
        .CE(\bram_dst[o][o_din][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_din][16]_i_1_n_0 ),
        .Q(o_dest_din[16]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_din][17] 
       (.C(clk),
        .CE(\bram_dst[o][o_din][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_din][17]_i_1_n_0 ),
        .Q(o_dest_din[17]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_din][18] 
       (.C(clk),
        .CE(\bram_dst[o][o_din][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_din][18]_i_1_n_0 ),
        .Q(o_dest_din[18]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_din][19] 
       (.C(clk),
        .CE(\bram_dst[o][o_din][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_din][19]_i_1_n_0 ),
        .Q(o_dest_din[19]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_din][1] 
       (.C(clk),
        .CE(\bram_dst[o][o_din][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_din][1]_i_1_n_0 ),
        .Q(o_dest_din[1]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_din][20] 
       (.C(clk),
        .CE(\bram_dst[o][o_din][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_din][20]_i_1_n_0 ),
        .Q(o_dest_din[20]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_din][21] 
       (.C(clk),
        .CE(\bram_dst[o][o_din][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_din][21]_i_1_n_0 ),
        .Q(o_dest_din[21]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_din][22] 
       (.C(clk),
        .CE(\bram_dst[o][o_din][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_din][22]_i_1_n_0 ),
        .Q(o_dest_din[22]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_din][23] 
       (.C(clk),
        .CE(\bram_dst[o][o_din][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_din][23]_i_1_n_0 ),
        .Q(o_dest_din[23]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_din][24] 
       (.C(clk),
        .CE(\bram_dst[o][o_din][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_din][24]_i_1_n_0 ),
        .Q(o_dest_din[24]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_din][25] 
       (.C(clk),
        .CE(\bram_dst[o][o_din][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_din][25]_i_1_n_0 ),
        .Q(o_dest_din[25]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_din][26] 
       (.C(clk),
        .CE(\bram_dst[o][o_din][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_din][26]_i_1_n_0 ),
        .Q(o_dest_din[26]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_din][27] 
       (.C(clk),
        .CE(\bram_dst[o][o_din][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_din][27]_i_1_n_0 ),
        .Q(o_dest_din[27]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_din][28] 
       (.C(clk),
        .CE(\bram_dst[o][o_din][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_din][28]_i_1_n_0 ),
        .Q(o_dest_din[28]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_din][29] 
       (.C(clk),
        .CE(\bram_dst[o][o_din][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_din][29]_i_1_n_0 ),
        .Q(o_dest_din[29]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_din][2] 
       (.C(clk),
        .CE(\bram_dst[o][o_din][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_din][2]_i_1_n_0 ),
        .Q(o_dest_din[2]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_din][30] 
       (.C(clk),
        .CE(\bram_dst[o][o_din][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_din][30]_i_1_n_0 ),
        .Q(o_dest_din[30]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_din][31] 
       (.C(clk),
        .CE(\bram_dst[o][o_din][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_din][31]_i_2_n_0 ),
        .Q(o_dest_din[31]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_din][3] 
       (.C(clk),
        .CE(\bram_dst[o][o_din][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_din][3]_i_1_n_0 ),
        .Q(o_dest_din[3]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_din][4] 
       (.C(clk),
        .CE(\bram_dst[o][o_din][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_din][4]_i_1_n_0 ),
        .Q(o_dest_din[4]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_din][5] 
       (.C(clk),
        .CE(\bram_dst[o][o_din][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_din][5]_i_1_n_0 ),
        .Q(o_dest_din[5]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_din][6] 
       (.C(clk),
        .CE(\bram_dst[o][o_din][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_din][6]_i_1_n_0 ),
        .Q(o_dest_din[6]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_din][7] 
       (.C(clk),
        .CE(\bram_dst[o][o_din][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_din][7]_i_1_n_0 ),
        .Q(o_dest_din[7]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_din][8] 
       (.C(clk),
        .CE(\bram_dst[o][o_din][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_din][8]_i_1_n_0 ),
        .Q(o_dest_din[8]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_din][9] 
       (.C(clk),
        .CE(\bram_dst[o][o_din][31]_i_1_n_0 ),
        .D(\bram_dst[o][o_din][9]_i_1_n_0 ),
        .Q(o_dest_din[9]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB EN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_en] 
       (.C(clk),
        .CE(1'b1),
        .D(\bram_dst[o][o_en]_i_1_n_0 ),
        .Q(o_dest_en),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB WE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_dst_reg[o][o_we][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\bram_dst[o][o_we][3]_i_1_n_0 ),
        .Q(o_dest_we),
        .R(rst));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bram_src[o][o_addr][0]_i_1 
       (.I0(\bram_src[o][o_din] ),
        .I1(s_dst_adr[0]),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(s_src_adr[0]),
        .I4(\bram_src[o][o_addr][0]_i_2_n_0 ),
        .O(\bram_src[o][o_addr][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_src[o][o_addr][0]_i_2 
       (.I0(o_src_addr[0]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_src_adr[0]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bram_src[o][o_addr][0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bram_src[o][o_addr][10]_i_1 
       (.I0(\bram_src[o][o_din] ),
        .I1(in8[10]),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(in9[10]),
        .I4(\bram_src[o][o_addr][10]_i_2_n_0 ),
        .O(\bram_src[o][o_addr][10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_src[o][o_addr][10]_i_2 
       (.I0(in11[10]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_src_adr[10]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bram_src[o][o_addr][10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bram_src[o][o_addr][11]_i_1 
       (.I0(\bram_src[o][o_din] ),
        .I1(in8[11]),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(in9[11]),
        .I4(\bram_src[o][o_addr][11]_i_2_n_0 ),
        .O(\bram_src[o][o_addr][11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_src[o][o_addr][11]_i_2 
       (.I0(in11[11]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_src_adr[11]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bram_src[o][o_addr][11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bram_src[o][o_addr][12]_i_1 
       (.I0(\bram_src[o][o_din] ),
        .I1(in8[12]),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(in9[12]),
        .I4(\bram_src[o][o_addr][12]_i_4_n_0 ),
        .O(\bram_src[o][o_addr][12]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][12]_i_10 
       (.I0(s_src_adr[11]),
        .I1(\copy_index_reg_n_0_[11] ),
        .O(\bram_src[o][o_addr][12]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][12]_i_11 
       (.I0(s_src_adr[10]),
        .I1(\copy_index_reg_n_0_[10] ),
        .O(\bram_src[o][o_addr][12]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][12]_i_12 
       (.I0(s_src_adr[9]),
        .I1(\copy_index_reg_n_0_[9] ),
        .O(\bram_src[o][o_addr][12]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_src[o][o_addr][12]_i_4 
       (.I0(in11[12]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_src_adr[12]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bram_src[o][o_addr][12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][12]_i_5 
       (.I0(s_dst_adr[12]),
        .I1(\copy_index_reg_n_0_[12] ),
        .O(\bram_src[o][o_addr][12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][12]_i_6 
       (.I0(s_dst_adr[11]),
        .I1(\copy_index_reg_n_0_[11] ),
        .O(\bram_src[o][o_addr][12]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][12]_i_7 
       (.I0(s_dst_adr[10]),
        .I1(\copy_index_reg_n_0_[10] ),
        .O(\bram_src[o][o_addr][12]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][12]_i_8 
       (.I0(s_dst_adr[9]),
        .I1(\copy_index_reg_n_0_[9] ),
        .O(\bram_src[o][o_addr][12]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][12]_i_9 
       (.I0(s_src_adr[12]),
        .I1(\copy_index_reg_n_0_[12] ),
        .O(\bram_src[o][o_addr][12]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bram_src[o][o_addr][13]_i_1 
       (.I0(\bram_src[o][o_din] ),
        .I1(in8[13]),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(in9[13]),
        .I4(\bram_src[o][o_addr][13]_i_2_n_0 ),
        .O(\bram_src[o][o_addr][13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_src[o][o_addr][13]_i_2 
       (.I0(in11[13]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_src_adr[13]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bram_src[o][o_addr][13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bram_src[o][o_addr][14]_i_1 
       (.I0(\bram_src[o][o_din] ),
        .I1(in8[14]),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(in9[14]),
        .I4(\bram_src[o][o_addr][14]_i_2_n_0 ),
        .O(\bram_src[o][o_addr][14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_src[o][o_addr][14]_i_2 
       (.I0(in11[14]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_src_adr[14]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bram_src[o][o_addr][14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bram_src[o][o_addr][15]_i_1 
       (.I0(\bram_src[o][o_din] ),
        .I1(in8[15]),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(in9[15]),
        .I4(\bram_src[o][o_addr][15]_i_2_n_0 ),
        .O(\bram_src[o][o_addr][15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_src[o][o_addr][15]_i_2 
       (.I0(in11[15]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_src_adr[15]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bram_src[o][o_addr][15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bram_src[o][o_addr][16]_i_1 
       (.I0(\bram_src[o][o_din] ),
        .I1(in8[16]),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(in9[16]),
        .I4(\bram_src[o][o_addr][16]_i_4_n_0 ),
        .O(\bram_src[o][o_addr][16]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][16]_i_10 
       (.I0(s_src_adr[15]),
        .I1(\copy_index_reg_n_0_[15] ),
        .O(\bram_src[o][o_addr][16]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][16]_i_11 
       (.I0(s_src_adr[14]),
        .I1(\copy_index_reg_n_0_[14] ),
        .O(\bram_src[o][o_addr][16]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][16]_i_12 
       (.I0(s_src_adr[13]),
        .I1(\copy_index_reg_n_0_[13] ),
        .O(\bram_src[o][o_addr][16]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_src[o][o_addr][16]_i_4 
       (.I0(in11[16]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_src_adr[16]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bram_src[o][o_addr][16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][16]_i_5 
       (.I0(s_dst_adr[16]),
        .I1(\copy_index_reg_n_0_[16] ),
        .O(\bram_src[o][o_addr][16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][16]_i_6 
       (.I0(s_dst_adr[15]),
        .I1(\copy_index_reg_n_0_[15] ),
        .O(\bram_src[o][o_addr][16]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][16]_i_7 
       (.I0(s_dst_adr[14]),
        .I1(\copy_index_reg_n_0_[14] ),
        .O(\bram_src[o][o_addr][16]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][16]_i_8 
       (.I0(s_dst_adr[13]),
        .I1(\copy_index_reg_n_0_[13] ),
        .O(\bram_src[o][o_addr][16]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][16]_i_9 
       (.I0(s_src_adr[16]),
        .I1(\copy_index_reg_n_0_[16] ),
        .O(\bram_src[o][o_addr][16]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bram_src[o][o_addr][17]_i_1 
       (.I0(\bram_src[o][o_din] ),
        .I1(in8[17]),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(in9[17]),
        .I4(\bram_src[o][o_addr][17]_i_2_n_0 ),
        .O(\bram_src[o][o_addr][17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_src[o][o_addr][17]_i_2 
       (.I0(in11[17]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_src_adr[17]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bram_src[o][o_addr][17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bram_src[o][o_addr][18]_i_1 
       (.I0(\bram_src[o][o_din] ),
        .I1(in8[18]),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(in9[18]),
        .I4(\bram_src[o][o_addr][18]_i_2_n_0 ),
        .O(\bram_src[o][o_addr][18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_src[o][o_addr][18]_i_2 
       (.I0(in11[18]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_src_adr[18]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bram_src[o][o_addr][18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bram_src[o][o_addr][19]_i_1 
       (.I0(\bram_src[o][o_din] ),
        .I1(in8[19]),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(in9[19]),
        .I4(\bram_src[o][o_addr][19]_i_2_n_0 ),
        .O(\bram_src[o][o_addr][19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_src[o][o_addr][19]_i_2 
       (.I0(in11[19]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_src_adr[19]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bram_src[o][o_addr][19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \bram_src[o][o_addr][1]_i_1 
       (.I0(\bram_src[o][o_addr][1]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(s_src_adr[1]),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(in11[1]),
        .O(\bram_src[o][o_addr][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4FF84488)) 
    \bram_src[o][o_addr][1]_i_2 
       (.I0(s_src_adr[1]),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(s_dst_adr[1]),
        .I3(\copy_index_reg_n_0_[1] ),
        .I4(\bram_src[o][o_din] ),
        .O(\bram_src[o][o_addr][1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bram_src[o][o_addr][20]_i_1 
       (.I0(\bram_src[o][o_din] ),
        .I1(in8[20]),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(in9[20]),
        .I4(\bram_src[o][o_addr][20]_i_4_n_0 ),
        .O(\bram_src[o][o_addr][20]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][20]_i_10 
       (.I0(s_src_adr[19]),
        .I1(\copy_index_reg_n_0_[19] ),
        .O(\bram_src[o][o_addr][20]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][20]_i_11 
       (.I0(s_src_adr[18]),
        .I1(\copy_index_reg_n_0_[18] ),
        .O(\bram_src[o][o_addr][20]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][20]_i_12 
       (.I0(s_src_adr[17]),
        .I1(\copy_index_reg_n_0_[17] ),
        .O(\bram_src[o][o_addr][20]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_src[o][o_addr][20]_i_4 
       (.I0(in11[20]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_src_adr[20]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bram_src[o][o_addr][20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][20]_i_5 
       (.I0(s_dst_adr[20]),
        .I1(\copy_index_reg_n_0_[20] ),
        .O(\bram_src[o][o_addr][20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][20]_i_6 
       (.I0(s_dst_adr[19]),
        .I1(\copy_index_reg_n_0_[19] ),
        .O(\bram_src[o][o_addr][20]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][20]_i_7 
       (.I0(s_dst_adr[18]),
        .I1(\copy_index_reg_n_0_[18] ),
        .O(\bram_src[o][o_addr][20]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][20]_i_8 
       (.I0(s_dst_adr[17]),
        .I1(\copy_index_reg_n_0_[17] ),
        .O(\bram_src[o][o_addr][20]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][20]_i_9 
       (.I0(s_src_adr[20]),
        .I1(\copy_index_reg_n_0_[20] ),
        .O(\bram_src[o][o_addr][20]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bram_src[o][o_addr][21]_i_1 
       (.I0(\bram_src[o][o_din] ),
        .I1(in8[21]),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(in9[21]),
        .I4(\bram_src[o][o_addr][21]_i_2_n_0 ),
        .O(\bram_src[o][o_addr][21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_src[o][o_addr][21]_i_2 
       (.I0(in11[21]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_src_adr[21]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bram_src[o][o_addr][21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bram_src[o][o_addr][22]_i_1 
       (.I0(\bram_src[o][o_din] ),
        .I1(in8[22]),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(in9[22]),
        .I4(\bram_src[o][o_addr][22]_i_2_n_0 ),
        .O(\bram_src[o][o_addr][22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_src[o][o_addr][22]_i_2 
       (.I0(in11[22]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_src_adr[22]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bram_src[o][o_addr][22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bram_src[o][o_addr][23]_i_1 
       (.I0(\bram_src[o][o_din] ),
        .I1(in8[23]),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(in9[23]),
        .I4(\bram_src[o][o_addr][23]_i_2_n_0 ),
        .O(\bram_src[o][o_addr][23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_src[o][o_addr][23]_i_2 
       (.I0(in11[23]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_src_adr[23]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bram_src[o][o_addr][23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bram_src[o][o_addr][24]_i_1 
       (.I0(\bram_src[o][o_din] ),
        .I1(in8[24]),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(in9[24]),
        .I4(\bram_src[o][o_addr][24]_i_4_n_0 ),
        .O(\bram_src[o][o_addr][24]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][24]_i_10 
       (.I0(s_src_adr[23]),
        .I1(\copy_index_reg_n_0_[23] ),
        .O(\bram_src[o][o_addr][24]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][24]_i_11 
       (.I0(s_src_adr[22]),
        .I1(\copy_index_reg_n_0_[22] ),
        .O(\bram_src[o][o_addr][24]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][24]_i_12 
       (.I0(s_src_adr[21]),
        .I1(\copy_index_reg_n_0_[21] ),
        .O(\bram_src[o][o_addr][24]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_src[o][o_addr][24]_i_4 
       (.I0(in11[24]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_src_adr[24]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bram_src[o][o_addr][24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][24]_i_5 
       (.I0(s_dst_adr[24]),
        .I1(\copy_index_reg_n_0_[24] ),
        .O(\bram_src[o][o_addr][24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][24]_i_6 
       (.I0(s_dst_adr[23]),
        .I1(\copy_index_reg_n_0_[23] ),
        .O(\bram_src[o][o_addr][24]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][24]_i_7 
       (.I0(s_dst_adr[22]),
        .I1(\copy_index_reg_n_0_[22] ),
        .O(\bram_src[o][o_addr][24]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][24]_i_8 
       (.I0(s_dst_adr[21]),
        .I1(\copy_index_reg_n_0_[21] ),
        .O(\bram_src[o][o_addr][24]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][24]_i_9 
       (.I0(s_src_adr[24]),
        .I1(\copy_index_reg_n_0_[24] ),
        .O(\bram_src[o][o_addr][24]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bram_src[o][o_addr][25]_i_1 
       (.I0(\bram_src[o][o_din] ),
        .I1(in8[25]),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(in9[25]),
        .I4(\bram_src[o][o_addr][25]_i_2_n_0 ),
        .O(\bram_src[o][o_addr][25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_src[o][o_addr][25]_i_2 
       (.I0(in11[25]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_src_adr[25]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bram_src[o][o_addr][25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bram_src[o][o_addr][26]_i_1 
       (.I0(\bram_src[o][o_din] ),
        .I1(in8[26]),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(in9[26]),
        .I4(\bram_src[o][o_addr][26]_i_2_n_0 ),
        .O(\bram_src[o][o_addr][26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_src[o][o_addr][26]_i_2 
       (.I0(in11[26]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_src_adr[26]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bram_src[o][o_addr][26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bram_src[o][o_addr][27]_i_1 
       (.I0(\bram_src[o][o_din] ),
        .I1(in8[27]),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(in9[27]),
        .I4(\bram_src[o][o_addr][27]_i_2_n_0 ),
        .O(\bram_src[o][o_addr][27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_src[o][o_addr][27]_i_2 
       (.I0(in11[27]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_src_adr[27]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bram_src[o][o_addr][27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bram_src[o][o_addr][28]_i_1 
       (.I0(\bram_src[o][o_din] ),
        .I1(in8[28]),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(in9[28]),
        .I4(\bram_src[o][o_addr][28]_i_4_n_0 ),
        .O(\bram_src[o][o_addr][28]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][28]_i_10 
       (.I0(s_src_adr[27]),
        .I1(\copy_index_reg_n_0_[27] ),
        .O(\bram_src[o][o_addr][28]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][28]_i_11 
       (.I0(s_src_adr[26]),
        .I1(\copy_index_reg_n_0_[26] ),
        .O(\bram_src[o][o_addr][28]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][28]_i_12 
       (.I0(s_src_adr[25]),
        .I1(\copy_index_reg_n_0_[25] ),
        .O(\bram_src[o][o_addr][28]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_src[o][o_addr][28]_i_4 
       (.I0(in11[28]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_src_adr[28]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bram_src[o][o_addr][28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][28]_i_5 
       (.I0(s_dst_adr[28]),
        .I1(\copy_index_reg_n_0_[28] ),
        .O(\bram_src[o][o_addr][28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][28]_i_6 
       (.I0(s_dst_adr[27]),
        .I1(\copy_index_reg_n_0_[27] ),
        .O(\bram_src[o][o_addr][28]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][28]_i_7 
       (.I0(s_dst_adr[26]),
        .I1(\copy_index_reg_n_0_[26] ),
        .O(\bram_src[o][o_addr][28]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][28]_i_8 
       (.I0(s_dst_adr[25]),
        .I1(\copy_index_reg_n_0_[25] ),
        .O(\bram_src[o][o_addr][28]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][28]_i_9 
       (.I0(s_src_adr[28]),
        .I1(\copy_index_reg_n_0_[28] ),
        .O(\bram_src[o][o_addr][28]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bram_src[o][o_addr][29]_i_1 
       (.I0(\bram_src[o][o_din] ),
        .I1(in8[29]),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(in9[29]),
        .I4(\bram_src[o][o_addr][29]_i_2_n_0 ),
        .O(\bram_src[o][o_addr][29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_src[o][o_addr][29]_i_2 
       (.I0(in11[29]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_src_adr[29]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bram_src[o][o_addr][29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bram_src[o][o_addr][2]_i_1 
       (.I0(\bram_src[o][o_din] ),
        .I1(in8[2]),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(in9[2]),
        .I4(\bram_src[o][o_addr][2]_i_2_n_0 ),
        .O(\bram_src[o][o_addr][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_src[o][o_addr][2]_i_2 
       (.I0(in11[2]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_src_adr[2]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bram_src[o][o_addr][2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bram_src[o][o_addr][30]_i_1 
       (.I0(\bram_src[o][o_din] ),
        .I1(in8[30]),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(in9[30]),
        .I4(\bram_src[o][o_addr][30]_i_2_n_0 ),
        .O(\bram_src[o][o_addr][30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_src[o][o_addr][30]_i_2 
       (.I0(in11[30]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_src_adr[30]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bram_src[o][o_addr][30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \bram_src[o][o_addr][31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\copy_index0_inferred__0/i__carry__2_n_0 ),
        .I4(\bram_src[o][o_din] ),
        .O(\bram_src[o][o_addr][31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bram_src[o][o_addr][31]_i_2 
       (.I0(\bram_src[o][o_din] ),
        .I1(in8[31]),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(in9[31]),
        .I4(\bram_src[o][o_addr][31]_i_5_n_0 ),
        .O(\bram_src[o][o_addr][31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_src[o][o_addr][31]_i_5 
       (.I0(in11[31]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_src_adr[31]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bram_src[o][o_addr][31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][31]_i_6 
       (.I0(s_dst_adr[30]),
        .I1(\copy_index_reg_n_0_[30] ),
        .O(\bram_src[o][o_addr][31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][31]_i_7 
       (.I0(s_dst_adr[29]),
        .I1(\copy_index_reg_n_0_[29] ),
        .O(\bram_src[o][o_addr][31]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][31]_i_8 
       (.I0(s_src_adr[30]),
        .I1(\copy_index_reg_n_0_[30] ),
        .O(\bram_src[o][o_addr][31]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][31]_i_9 
       (.I0(s_src_adr[29]),
        .I1(\copy_index_reg_n_0_[29] ),
        .O(\bram_src[o][o_addr][31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bram_src[o][o_addr][3]_i_1 
       (.I0(\bram_src[o][o_din] ),
        .I1(in8[3]),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(in9[3]),
        .I4(\bram_src[o][o_addr][3]_i_2_n_0 ),
        .O(\bram_src[o][o_addr][3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_src[o][o_addr][3]_i_2 
       (.I0(in11[3]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_src_adr[3]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bram_src[o][o_addr][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bram_src[o][o_addr][4]_i_1 
       (.I0(\bram_src[o][o_din] ),
        .I1(in8[4]),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(in9[4]),
        .I4(\bram_src[o][o_addr][4]_i_4_n_0 ),
        .O(\bram_src[o][o_addr][4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][4]_i_10 
       (.I0(s_src_adr[3]),
        .I1(\copy_index_reg_n_0_[3] ),
        .O(\bram_src[o][o_addr][4]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][4]_i_11 
       (.I0(s_src_adr[2]),
        .I1(\copy_index_reg_n_0_[2] ),
        .O(\bram_src[o][o_addr][4]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][4]_i_12 
       (.I0(s_src_adr[1]),
        .I1(\copy_index_reg_n_0_[1] ),
        .O(in9[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_src[o][o_addr][4]_i_4 
       (.I0(in11[4]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_src_adr[4]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bram_src[o][o_addr][4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][4]_i_5 
       (.I0(s_dst_adr[4]),
        .I1(\copy_index_reg_n_0_[4] ),
        .O(\bram_src[o][o_addr][4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][4]_i_6 
       (.I0(s_dst_adr[3]),
        .I1(\copy_index_reg_n_0_[3] ),
        .O(\bram_src[o][o_addr][4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][4]_i_7 
       (.I0(s_dst_adr[2]),
        .I1(\copy_index_reg_n_0_[2] ),
        .O(\bram_src[o][o_addr][4]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][4]_i_8 
       (.I0(s_dst_adr[1]),
        .I1(\copy_index_reg_n_0_[1] ),
        .O(in8[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][4]_i_9 
       (.I0(s_src_adr[4]),
        .I1(\copy_index_reg_n_0_[4] ),
        .O(\bram_src[o][o_addr][4]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bram_src[o][o_addr][5]_i_1 
       (.I0(\bram_src[o][o_din] ),
        .I1(in8[5]),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(in9[5]),
        .I4(\bram_src[o][o_addr][5]_i_2_n_0 ),
        .O(\bram_src[o][o_addr][5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_src[o][o_addr][5]_i_2 
       (.I0(in11[5]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_src_adr[5]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bram_src[o][o_addr][5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bram_src[o][o_addr][6]_i_1 
       (.I0(\bram_src[o][o_din] ),
        .I1(in8[6]),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(in9[6]),
        .I4(\bram_src[o][o_addr][6]_i_2_n_0 ),
        .O(\bram_src[o][o_addr][6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_src[o][o_addr][6]_i_2 
       (.I0(in11[6]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_src_adr[6]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bram_src[o][o_addr][6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bram_src[o][o_addr][7]_i_1 
       (.I0(\bram_src[o][o_din] ),
        .I1(in8[7]),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(in9[7]),
        .I4(\bram_src[o][o_addr][7]_i_2_n_0 ),
        .O(\bram_src[o][o_addr][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_src[o][o_addr][7]_i_2 
       (.I0(in11[7]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_src_adr[7]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bram_src[o][o_addr][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bram_src[o][o_addr][8]_i_1 
       (.I0(\bram_src[o][o_din] ),
        .I1(in8[8]),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(in9[8]),
        .I4(\bram_src[o][o_addr][8]_i_4_n_0 ),
        .O(\bram_src[o][o_addr][8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][8]_i_10 
       (.I0(s_src_adr[7]),
        .I1(\copy_index_reg_n_0_[7] ),
        .O(\bram_src[o][o_addr][8]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][8]_i_11 
       (.I0(s_src_adr[6]),
        .I1(\copy_index_reg_n_0_[6] ),
        .O(\bram_src[o][o_addr][8]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][8]_i_12 
       (.I0(s_src_adr[5]),
        .I1(\copy_index_reg_n_0_[5] ),
        .O(\bram_src[o][o_addr][8]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_src[o][o_addr][8]_i_4 
       (.I0(in11[8]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_src_adr[8]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bram_src[o][o_addr][8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][8]_i_5 
       (.I0(s_dst_adr[8]),
        .I1(\copy_index_reg_n_0_[8] ),
        .O(\bram_src[o][o_addr][8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][8]_i_6 
       (.I0(s_dst_adr[7]),
        .I1(\copy_index_reg_n_0_[7] ),
        .O(\bram_src[o][o_addr][8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][8]_i_7 
       (.I0(s_dst_adr[6]),
        .I1(\copy_index_reg_n_0_[6] ),
        .O(\bram_src[o][o_addr][8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][8]_i_8 
       (.I0(s_dst_adr[5]),
        .I1(\copy_index_reg_n_0_[5] ),
        .O(\bram_src[o][o_addr][8]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_src[o][o_addr][8]_i_9 
       (.I0(s_src_adr[8]),
        .I1(\copy_index_reg_n_0_[8] ),
        .O(\bram_src[o][o_addr][8]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bram_src[o][o_addr][9]_i_1 
       (.I0(\bram_src[o][o_din] ),
        .I1(in8[9]),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(in9[9]),
        .I4(\bram_src[o][o_addr][9]_i_2_n_0 ),
        .O(\bram_src[o][o_addr][9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bram_src[o][o_addr][9]_i_2 
       (.I0(in11[9]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_src_adr[9]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bram_src[o][o_addr][9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFE00)) 
    \bram_src[o][o_en]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\bram_src[o][o_din] ),
        .I3(\bram_src[o][o_en]_i_2_n_0 ),
        .I4(o_src_en),
        .O(\bram_src[o][o_en]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEE)) 
    \bram_src[o][o_en]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[8] ),
        .I2(\copy_index0_inferred__0/i__carry__2_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\bram_src[o][o_din] ),
        .I5(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\bram_src[o][o_en]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_src[o][o_we][3]_i_1 
       (.I0(\bram_src[o][o_din] ),
        .I1(\bram_src[o][o_en]_i_2_n_0 ),
        .I2(o_src_we),
        .O(\bram_src[o][o_we][3]_i_1_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_addr][0] 
       (.C(clk),
        .CE(\bram_src[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_src[o][o_addr][0]_i_1_n_0 ),
        .Q(o_src_addr[0]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_addr][10] 
       (.C(clk),
        .CE(\bram_src[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_src[o][o_addr][10]_i_1_n_0 ),
        .Q(o_src_addr[10]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_addr][11] 
       (.C(clk),
        .CE(\bram_src[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_src[o][o_addr][11]_i_1_n_0 ),
        .Q(o_src_addr[11]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_addr][12] 
       (.C(clk),
        .CE(\bram_src[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_src[o][o_addr][12]_i_1_n_0 ),
        .Q(o_src_addr[12]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_src_reg[o][o_addr][12]_i_2 
       (.CI(\bram_src_reg[o][o_addr][8]_i_2_n_0 ),
        .CO({\bram_src_reg[o][o_addr][12]_i_2_n_0 ,\bram_src_reg[o][o_addr][12]_i_2_n_1 ,\bram_src_reg[o][o_addr][12]_i_2_n_2 ,\bram_src_reg[o][o_addr][12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(s_dst_adr[12:9]),
        .O(in8[12:9]),
        .S({\bram_src[o][o_addr][12]_i_5_n_0 ,\bram_src[o][o_addr][12]_i_6_n_0 ,\bram_src[o][o_addr][12]_i_7_n_0 ,\bram_src[o][o_addr][12]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_src_reg[o][o_addr][12]_i_3 
       (.CI(\bram_src_reg[o][o_addr][8]_i_3_n_0 ),
        .CO({\bram_src_reg[o][o_addr][12]_i_3_n_0 ,\bram_src_reg[o][o_addr][12]_i_3_n_1 ,\bram_src_reg[o][o_addr][12]_i_3_n_2 ,\bram_src_reg[o][o_addr][12]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(s_src_adr[12:9]),
        .O(in9[12:9]),
        .S({\bram_src[o][o_addr][12]_i_9_n_0 ,\bram_src[o][o_addr][12]_i_10_n_0 ,\bram_src[o][o_addr][12]_i_11_n_0 ,\bram_src[o][o_addr][12]_i_12_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_addr][13] 
       (.C(clk),
        .CE(\bram_src[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_src[o][o_addr][13]_i_1_n_0 ),
        .Q(o_src_addr[13]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_addr][14] 
       (.C(clk),
        .CE(\bram_src[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_src[o][o_addr][14]_i_1_n_0 ),
        .Q(o_src_addr[14]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_addr][15] 
       (.C(clk),
        .CE(\bram_src[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_src[o][o_addr][15]_i_1_n_0 ),
        .Q(o_src_addr[15]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_addr][16] 
       (.C(clk),
        .CE(\bram_src[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_src[o][o_addr][16]_i_1_n_0 ),
        .Q(o_src_addr[16]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_src_reg[o][o_addr][16]_i_2 
       (.CI(\bram_src_reg[o][o_addr][12]_i_2_n_0 ),
        .CO({\bram_src_reg[o][o_addr][16]_i_2_n_0 ,\bram_src_reg[o][o_addr][16]_i_2_n_1 ,\bram_src_reg[o][o_addr][16]_i_2_n_2 ,\bram_src_reg[o][o_addr][16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(s_dst_adr[16:13]),
        .O(in8[16:13]),
        .S({\bram_src[o][o_addr][16]_i_5_n_0 ,\bram_src[o][o_addr][16]_i_6_n_0 ,\bram_src[o][o_addr][16]_i_7_n_0 ,\bram_src[o][o_addr][16]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_src_reg[o][o_addr][16]_i_3 
       (.CI(\bram_src_reg[o][o_addr][12]_i_3_n_0 ),
        .CO({\bram_src_reg[o][o_addr][16]_i_3_n_0 ,\bram_src_reg[o][o_addr][16]_i_3_n_1 ,\bram_src_reg[o][o_addr][16]_i_3_n_2 ,\bram_src_reg[o][o_addr][16]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(s_src_adr[16:13]),
        .O(in9[16:13]),
        .S({\bram_src[o][o_addr][16]_i_9_n_0 ,\bram_src[o][o_addr][16]_i_10_n_0 ,\bram_src[o][o_addr][16]_i_11_n_0 ,\bram_src[o][o_addr][16]_i_12_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_addr][17] 
       (.C(clk),
        .CE(\bram_src[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_src[o][o_addr][17]_i_1_n_0 ),
        .Q(o_src_addr[17]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_addr][18] 
       (.C(clk),
        .CE(\bram_src[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_src[o][o_addr][18]_i_1_n_0 ),
        .Q(o_src_addr[18]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_addr][19] 
       (.C(clk),
        .CE(\bram_src[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_src[o][o_addr][19]_i_1_n_0 ),
        .Q(o_src_addr[19]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_addr][1] 
       (.C(clk),
        .CE(\bram_src[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_src[o][o_addr][1]_i_1_n_0 ),
        .Q(o_src_addr[1]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_addr][20] 
       (.C(clk),
        .CE(\bram_src[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_src[o][o_addr][20]_i_1_n_0 ),
        .Q(o_src_addr[20]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_src_reg[o][o_addr][20]_i_2 
       (.CI(\bram_src_reg[o][o_addr][16]_i_2_n_0 ),
        .CO({\bram_src_reg[o][o_addr][20]_i_2_n_0 ,\bram_src_reg[o][o_addr][20]_i_2_n_1 ,\bram_src_reg[o][o_addr][20]_i_2_n_2 ,\bram_src_reg[o][o_addr][20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(s_dst_adr[20:17]),
        .O(in8[20:17]),
        .S({\bram_src[o][o_addr][20]_i_5_n_0 ,\bram_src[o][o_addr][20]_i_6_n_0 ,\bram_src[o][o_addr][20]_i_7_n_0 ,\bram_src[o][o_addr][20]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_src_reg[o][o_addr][20]_i_3 
       (.CI(\bram_src_reg[o][o_addr][16]_i_3_n_0 ),
        .CO({\bram_src_reg[o][o_addr][20]_i_3_n_0 ,\bram_src_reg[o][o_addr][20]_i_3_n_1 ,\bram_src_reg[o][o_addr][20]_i_3_n_2 ,\bram_src_reg[o][o_addr][20]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(s_src_adr[20:17]),
        .O(in9[20:17]),
        .S({\bram_src[o][o_addr][20]_i_9_n_0 ,\bram_src[o][o_addr][20]_i_10_n_0 ,\bram_src[o][o_addr][20]_i_11_n_0 ,\bram_src[o][o_addr][20]_i_12_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_addr][21] 
       (.C(clk),
        .CE(\bram_src[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_src[o][o_addr][21]_i_1_n_0 ),
        .Q(o_src_addr[21]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_addr][22] 
       (.C(clk),
        .CE(\bram_src[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_src[o][o_addr][22]_i_1_n_0 ),
        .Q(o_src_addr[22]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_addr][23] 
       (.C(clk),
        .CE(\bram_src[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_src[o][o_addr][23]_i_1_n_0 ),
        .Q(o_src_addr[23]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_addr][24] 
       (.C(clk),
        .CE(\bram_src[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_src[o][o_addr][24]_i_1_n_0 ),
        .Q(o_src_addr[24]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_src_reg[o][o_addr][24]_i_2 
       (.CI(\bram_src_reg[o][o_addr][20]_i_2_n_0 ),
        .CO({\bram_src_reg[o][o_addr][24]_i_2_n_0 ,\bram_src_reg[o][o_addr][24]_i_2_n_1 ,\bram_src_reg[o][o_addr][24]_i_2_n_2 ,\bram_src_reg[o][o_addr][24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(s_dst_adr[24:21]),
        .O(in8[24:21]),
        .S({\bram_src[o][o_addr][24]_i_5_n_0 ,\bram_src[o][o_addr][24]_i_6_n_0 ,\bram_src[o][o_addr][24]_i_7_n_0 ,\bram_src[o][o_addr][24]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_src_reg[o][o_addr][24]_i_3 
       (.CI(\bram_src_reg[o][o_addr][20]_i_3_n_0 ),
        .CO({\bram_src_reg[o][o_addr][24]_i_3_n_0 ,\bram_src_reg[o][o_addr][24]_i_3_n_1 ,\bram_src_reg[o][o_addr][24]_i_3_n_2 ,\bram_src_reg[o][o_addr][24]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(s_src_adr[24:21]),
        .O(in9[24:21]),
        .S({\bram_src[o][o_addr][24]_i_9_n_0 ,\bram_src[o][o_addr][24]_i_10_n_0 ,\bram_src[o][o_addr][24]_i_11_n_0 ,\bram_src[o][o_addr][24]_i_12_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_addr][25] 
       (.C(clk),
        .CE(\bram_src[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_src[o][o_addr][25]_i_1_n_0 ),
        .Q(o_src_addr[25]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_addr][26] 
       (.C(clk),
        .CE(\bram_src[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_src[o][o_addr][26]_i_1_n_0 ),
        .Q(o_src_addr[26]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_addr][27] 
       (.C(clk),
        .CE(\bram_src[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_src[o][o_addr][27]_i_1_n_0 ),
        .Q(o_src_addr[27]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_addr][28] 
       (.C(clk),
        .CE(\bram_src[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_src[o][o_addr][28]_i_1_n_0 ),
        .Q(o_src_addr[28]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_src_reg[o][o_addr][28]_i_2 
       (.CI(\bram_src_reg[o][o_addr][24]_i_2_n_0 ),
        .CO({\bram_src_reg[o][o_addr][28]_i_2_n_0 ,\bram_src_reg[o][o_addr][28]_i_2_n_1 ,\bram_src_reg[o][o_addr][28]_i_2_n_2 ,\bram_src_reg[o][o_addr][28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(s_dst_adr[28:25]),
        .O(in8[28:25]),
        .S({\bram_src[o][o_addr][28]_i_5_n_0 ,\bram_src[o][o_addr][28]_i_6_n_0 ,\bram_src[o][o_addr][28]_i_7_n_0 ,\bram_src[o][o_addr][28]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_src_reg[o][o_addr][28]_i_3 
       (.CI(\bram_src_reg[o][o_addr][24]_i_3_n_0 ),
        .CO({\bram_src_reg[o][o_addr][28]_i_3_n_0 ,\bram_src_reg[o][o_addr][28]_i_3_n_1 ,\bram_src_reg[o][o_addr][28]_i_3_n_2 ,\bram_src_reg[o][o_addr][28]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(s_src_adr[28:25]),
        .O(in9[28:25]),
        .S({\bram_src[o][o_addr][28]_i_9_n_0 ,\bram_src[o][o_addr][28]_i_10_n_0 ,\bram_src[o][o_addr][28]_i_11_n_0 ,\bram_src[o][o_addr][28]_i_12_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_addr][29] 
       (.C(clk),
        .CE(\bram_src[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_src[o][o_addr][29]_i_1_n_0 ),
        .Q(o_src_addr[29]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_addr][2] 
       (.C(clk),
        .CE(\bram_src[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_src[o][o_addr][2]_i_1_n_0 ),
        .Q(o_src_addr[2]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_addr][30] 
       (.C(clk),
        .CE(\bram_src[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_src[o][o_addr][30]_i_1_n_0 ),
        .Q(o_src_addr[30]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_addr][31] 
       (.C(clk),
        .CE(\bram_src[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_src[o][o_addr][31]_i_2_n_0 ),
        .Q(o_src_addr[31]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_src_reg[o][o_addr][31]_i_3 
       (.CI(\bram_src_reg[o][o_addr][28]_i_2_n_0 ),
        .CO({\NLW_bram_src_reg[o][o_addr][31]_i_3_CO_UNCONNECTED [3:2],\bram_src_reg[o][o_addr][31]_i_3_n_2 ,\bram_src_reg[o][o_addr][31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s_dst_adr[30:29]}),
        .O({\NLW_bram_src_reg[o][o_addr][31]_i_3_O_UNCONNECTED [3],in8[31:29]}),
        .S({1'b0,s_dst_adr[31],\bram_src[o][o_addr][31]_i_6_n_0 ,\bram_src[o][o_addr][31]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_src_reg[o][o_addr][31]_i_4 
       (.CI(\bram_src_reg[o][o_addr][28]_i_3_n_0 ),
        .CO({\NLW_bram_src_reg[o][o_addr][31]_i_4_CO_UNCONNECTED [3:2],\bram_src_reg[o][o_addr][31]_i_4_n_2 ,\bram_src_reg[o][o_addr][31]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s_src_adr[30:29]}),
        .O({\NLW_bram_src_reg[o][o_addr][31]_i_4_O_UNCONNECTED [3],in9[31:29]}),
        .S({1'b0,s_src_adr[31],\bram_src[o][o_addr][31]_i_8_n_0 ,\bram_src[o][o_addr][31]_i_9_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_addr][3] 
       (.C(clk),
        .CE(\bram_src[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_src[o][o_addr][3]_i_1_n_0 ),
        .Q(o_src_addr[3]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_addr][4] 
       (.C(clk),
        .CE(\bram_src[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_src[o][o_addr][4]_i_1_n_0 ),
        .Q(o_src_addr[4]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_src_reg[o][o_addr][4]_i_2 
       (.CI(1'b0),
        .CO({\bram_src_reg[o][o_addr][4]_i_2_n_0 ,\bram_src_reg[o][o_addr][4]_i_2_n_1 ,\bram_src_reg[o][o_addr][4]_i_2_n_2 ,\bram_src_reg[o][o_addr][4]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(s_dst_adr[4:1]),
        .O({in8[4:2],\NLW_bram_src_reg[o][o_addr][4]_i_2_O_UNCONNECTED [0]}),
        .S({\bram_src[o][o_addr][4]_i_5_n_0 ,\bram_src[o][o_addr][4]_i_6_n_0 ,\bram_src[o][o_addr][4]_i_7_n_0 ,in8[1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_src_reg[o][o_addr][4]_i_3 
       (.CI(1'b0),
        .CO({\bram_src_reg[o][o_addr][4]_i_3_n_0 ,\bram_src_reg[o][o_addr][4]_i_3_n_1 ,\bram_src_reg[o][o_addr][4]_i_3_n_2 ,\bram_src_reg[o][o_addr][4]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(s_src_adr[4:1]),
        .O({in9[4:2],\NLW_bram_src_reg[o][o_addr][4]_i_3_O_UNCONNECTED [0]}),
        .S({\bram_src[o][o_addr][4]_i_9_n_0 ,\bram_src[o][o_addr][4]_i_10_n_0 ,\bram_src[o][o_addr][4]_i_11_n_0 ,in9[1]}));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_addr][5] 
       (.C(clk),
        .CE(\bram_src[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_src[o][o_addr][5]_i_1_n_0 ),
        .Q(o_src_addr[5]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_addr][6] 
       (.C(clk),
        .CE(\bram_src[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_src[o][o_addr][6]_i_1_n_0 ),
        .Q(o_src_addr[6]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_addr][7] 
       (.C(clk),
        .CE(\bram_src[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_src[o][o_addr][7]_i_1_n_0 ),
        .Q(o_src_addr[7]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_addr][8] 
       (.C(clk),
        .CE(\bram_src[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_src[o][o_addr][8]_i_1_n_0 ),
        .Q(o_src_addr[8]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_src_reg[o][o_addr][8]_i_2 
       (.CI(\bram_src_reg[o][o_addr][4]_i_2_n_0 ),
        .CO({\bram_src_reg[o][o_addr][8]_i_2_n_0 ,\bram_src_reg[o][o_addr][8]_i_2_n_1 ,\bram_src_reg[o][o_addr][8]_i_2_n_2 ,\bram_src_reg[o][o_addr][8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(s_dst_adr[8:5]),
        .O(in8[8:5]),
        .S({\bram_src[o][o_addr][8]_i_5_n_0 ,\bram_src[o][o_addr][8]_i_6_n_0 ,\bram_src[o][o_addr][8]_i_7_n_0 ,\bram_src[o][o_addr][8]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_src_reg[o][o_addr][8]_i_3 
       (.CI(\bram_src_reg[o][o_addr][4]_i_3_n_0 ),
        .CO({\bram_src_reg[o][o_addr][8]_i_3_n_0 ,\bram_src_reg[o][o_addr][8]_i_3_n_1 ,\bram_src_reg[o][o_addr][8]_i_3_n_2 ,\bram_src_reg[o][o_addr][8]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(s_src_adr[8:5]),
        .O(in9[8:5]),
        .S({\bram_src[o][o_addr][8]_i_9_n_0 ,\bram_src[o][o_addr][8]_i_10_n_0 ,\bram_src[o][o_addr][8]_i_11_n_0 ,\bram_src[o][o_addr][8]_i_12_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_addr][9] 
       (.C(clk),
        .CE(\bram_src[o][o_addr][31]_i_1_n_0 ),
        .D(\bram_src[o][o_addr][9]_i_1_n_0 ),
        .Q(o_src_addr[9]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_din][0] 
       (.C(clk),
        .CE(\bram_src[o][o_din] ),
        .D(i_src_dout[0]),
        .Q(o_src_din[0]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_din][10] 
       (.C(clk),
        .CE(\bram_src[o][o_din] ),
        .D(i_src_dout[10]),
        .Q(o_src_din[10]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_din][11] 
       (.C(clk),
        .CE(\bram_src[o][o_din] ),
        .D(i_src_dout[11]),
        .Q(o_src_din[11]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_din][12] 
       (.C(clk),
        .CE(\bram_src[o][o_din] ),
        .D(i_src_dout[12]),
        .Q(o_src_din[12]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_din][13] 
       (.C(clk),
        .CE(\bram_src[o][o_din] ),
        .D(i_src_dout[13]),
        .Q(o_src_din[13]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_din][14] 
       (.C(clk),
        .CE(\bram_src[o][o_din] ),
        .D(i_src_dout[14]),
        .Q(o_src_din[14]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_din][15] 
       (.C(clk),
        .CE(\bram_src[o][o_din] ),
        .D(i_src_dout[15]),
        .Q(o_src_din[15]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_din][16] 
       (.C(clk),
        .CE(\bram_src[o][o_din] ),
        .D(i_src_dout[16]),
        .Q(o_src_din[16]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_din][17] 
       (.C(clk),
        .CE(\bram_src[o][o_din] ),
        .D(i_src_dout[17]),
        .Q(o_src_din[17]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_din][18] 
       (.C(clk),
        .CE(\bram_src[o][o_din] ),
        .D(i_src_dout[18]),
        .Q(o_src_din[18]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_din][19] 
       (.C(clk),
        .CE(\bram_src[o][o_din] ),
        .D(i_src_dout[19]),
        .Q(o_src_din[19]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_din][1] 
       (.C(clk),
        .CE(\bram_src[o][o_din] ),
        .D(i_src_dout[1]),
        .Q(o_src_din[1]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_din][20] 
       (.C(clk),
        .CE(\bram_src[o][o_din] ),
        .D(i_src_dout[20]),
        .Q(o_src_din[20]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_din][21] 
       (.C(clk),
        .CE(\bram_src[o][o_din] ),
        .D(i_src_dout[21]),
        .Q(o_src_din[21]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_din][22] 
       (.C(clk),
        .CE(\bram_src[o][o_din] ),
        .D(i_src_dout[22]),
        .Q(o_src_din[22]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_din][23] 
       (.C(clk),
        .CE(\bram_src[o][o_din] ),
        .D(i_src_dout[23]),
        .Q(o_src_din[23]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_din][24] 
       (.C(clk),
        .CE(\bram_src[o][o_din] ),
        .D(i_src_dout[24]),
        .Q(o_src_din[24]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_din][25] 
       (.C(clk),
        .CE(\bram_src[o][o_din] ),
        .D(i_src_dout[25]),
        .Q(o_src_din[25]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_din][26] 
       (.C(clk),
        .CE(\bram_src[o][o_din] ),
        .D(i_src_dout[26]),
        .Q(o_src_din[26]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_din][27] 
       (.C(clk),
        .CE(\bram_src[o][o_din] ),
        .D(i_src_dout[27]),
        .Q(o_src_din[27]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_din][28] 
       (.C(clk),
        .CE(\bram_src[o][o_din] ),
        .D(i_src_dout[28]),
        .Q(o_src_din[28]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_din][29] 
       (.C(clk),
        .CE(\bram_src[o][o_din] ),
        .D(i_src_dout[29]),
        .Q(o_src_din[29]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_din][2] 
       (.C(clk),
        .CE(\bram_src[o][o_din] ),
        .D(i_src_dout[2]),
        .Q(o_src_din[2]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_din][30] 
       (.C(clk),
        .CE(\bram_src[o][o_din] ),
        .D(i_src_dout[30]),
        .Q(o_src_din[30]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_din][31] 
       (.C(clk),
        .CE(\bram_src[o][o_din] ),
        .D(i_src_dout[31]),
        .Q(o_src_din[31]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_din][3] 
       (.C(clk),
        .CE(\bram_src[o][o_din] ),
        .D(i_src_dout[3]),
        .Q(o_src_din[3]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_din][4] 
       (.C(clk),
        .CE(\bram_src[o][o_din] ),
        .D(i_src_dout[4]),
        .Q(o_src_din[4]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_din][5] 
       (.C(clk),
        .CE(\bram_src[o][o_din] ),
        .D(i_src_dout[5]),
        .Q(o_src_din[5]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_din][6] 
       (.C(clk),
        .CE(\bram_src[o][o_din] ),
        .D(i_src_dout[6]),
        .Q(o_src_din[6]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_din][7] 
       (.C(clk),
        .CE(\bram_src[o][o_din] ),
        .D(i_src_dout[7]),
        .Q(o_src_din[7]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_din][8] 
       (.C(clk),
        .CE(\bram_src[o][o_din] ),
        .D(i_src_dout[8]),
        .Q(o_src_din[8]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_din][9] 
       (.C(clk),
        .CE(\bram_src[o][o_din] ),
        .D(i_src_dout[9]),
        .Q(o_src_din[9]),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA EN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_en] 
       (.C(clk),
        .CE(1'b1),
        .D(\bram_src[o][o_en]_i_1_n_0 ),
        .Q(o_src_en),
        .R(rst));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA WE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram_src_reg[o][o_we][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\bram_src[o][o_we][3]_i_1_n_0 ),
        .Q(o_src_we),
        .R(rst));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \copy_index0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\copy_index0_inferred__0/i__carry_n_0 ,\copy_index0_inferred__0/i__carry_n_1 ,\copy_index0_inferred__0/i__carry_n_2 ,\copy_index0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_copy_index0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \copy_index0_inferred__0/i__carry__0 
       (.CI(\copy_index0_inferred__0/i__carry_n_0 ),
        .CO({\copy_index0_inferred__0/i__carry__0_n_0 ,\copy_index0_inferred__0/i__carry__0_n_1 ,\copy_index0_inferred__0/i__carry__0_n_2 ,\copy_index0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(\NLW_copy_index0_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \copy_index0_inferred__0/i__carry__1 
       (.CI(\copy_index0_inferred__0/i__carry__0_n_0 ),
        .CO({\copy_index0_inferred__0/i__carry__1_n_0 ,\copy_index0_inferred__0/i__carry__1_n_1 ,\copy_index0_inferred__0/i__carry__1_n_2 ,\copy_index0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}),
        .O(\NLW_copy_index0_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0,i__carry__1_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \copy_index0_inferred__0/i__carry__2 
       (.CI(\copy_index0_inferred__0/i__carry__1_n_0 ),
        .CO({\copy_index0_inferred__0/i__carry__2_n_0 ,\copy_index0_inferred__0/i__carry__2_n_1 ,\copy_index0_inferred__0/i__carry__2_n_2 ,\copy_index0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}),
        .O(\NLW_copy_index0_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_5_n_0,i__carry__2_i_6_n_0,i__carry__2_i_7_n_0,i__carry__2_i_8_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \copy_index[10]_i_1 
       (.I0(in5[10]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\bram_src[o][o_din] ),
        .O(\copy_index[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \copy_index[11]_i_1 
       (.I0(in5[11]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\bram_src[o][o_din] ),
        .O(\copy_index[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \copy_index[12]_i_1 
       (.I0(in5[12]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\bram_src[o][o_din] ),
        .O(\copy_index[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \copy_index[13]_i_1 
       (.I0(in5[13]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\bram_src[o][o_din] ),
        .O(\copy_index[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \copy_index[14]_i_1 
       (.I0(in5[14]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\bram_src[o][o_din] ),
        .O(\copy_index[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \copy_index[15]_i_1 
       (.I0(in5[15]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\bram_src[o][o_din] ),
        .O(\copy_index[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \copy_index[16]_i_1 
       (.I0(in5[16]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\bram_src[o][o_din] ),
        .O(\copy_index[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \copy_index[17]_i_1 
       (.I0(in5[17]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\bram_src[o][o_din] ),
        .O(\copy_index[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \copy_index[18]_i_1 
       (.I0(in5[18]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\bram_src[o][o_din] ),
        .O(\copy_index[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \copy_index[19]_i_1 
       (.I0(in5[19]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\bram_src[o][o_din] ),
        .O(\copy_index[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \copy_index[1]_i_1 
       (.I0(in5[1]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\bram_src[o][o_din] ),
        .O(\copy_index[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \copy_index[20]_i_1 
       (.I0(in5[20]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\bram_src[o][o_din] ),
        .O(\copy_index[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \copy_index[21]_i_1 
       (.I0(in5[21]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\bram_src[o][o_din] ),
        .O(\copy_index[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \copy_index[22]_i_1 
       (.I0(in5[22]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\bram_src[o][o_din] ),
        .O(\copy_index[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \copy_index[23]_i_1 
       (.I0(in5[23]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\bram_src[o][o_din] ),
        .O(\copy_index[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \copy_index[24]_i_1 
       (.I0(in5[24]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\bram_src[o][o_din] ),
        .O(\copy_index[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \copy_index[25]_i_1 
       (.I0(in5[25]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\bram_src[o][o_din] ),
        .O(\copy_index[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \copy_index[26]_i_1 
       (.I0(in5[26]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\bram_src[o][o_din] ),
        .O(\copy_index[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \copy_index[27]_i_1 
       (.I0(in5[27]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\bram_src[o][o_din] ),
        .O(\copy_index[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \copy_index[28]_i_1 
       (.I0(in5[28]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\bram_src[o][o_din] ),
        .O(\copy_index[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \copy_index[29]_i_1 
       (.I0(in5[29]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\bram_src[o][o_din] ),
        .O(\copy_index[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \copy_index[2]_i_1 
       (.I0(in5[2]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\bram_src[o][o_din] ),
        .O(\copy_index[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \copy_index[30]_i_1 
       (.I0(in5[30]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\bram_src[o][o_din] ),
        .O(\copy_index[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF888888888)) 
    \copy_index[31]_i_1 
       (.I0(start),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\bram_src[o][o_din] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[11] ),
        .I5(\copy_index0_inferred__0/i__carry__2_n_0 ),
        .O(\copy_index[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \copy_index[31]_i_2 
       (.I0(in5[31]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\bram_src[o][o_din] ),
        .O(\copy_index[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \copy_index[3]_i_1 
       (.I0(in5[3]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\bram_src[o][o_din] ),
        .O(\copy_index[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \copy_index[4]_i_1 
       (.I0(in5[4]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\bram_src[o][o_din] ),
        .O(\copy_index[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \copy_index[4]_i_3 
       (.I0(\copy_index_reg_n_0_[2] ),
        .O(\copy_index[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \copy_index[5]_i_1 
       (.I0(in5[5]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\bram_src[o][o_din] ),
        .O(\copy_index[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \copy_index[6]_i_1 
       (.I0(in5[6]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\bram_src[o][o_din] ),
        .O(\copy_index[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \copy_index[7]_i_1 
       (.I0(in5[7]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\bram_src[o][o_din] ),
        .O(\copy_index[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \copy_index[8]_i_1 
       (.I0(in5[8]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\bram_src[o][o_din] ),
        .O(\copy_index[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \copy_index[9]_i_1 
       (.I0(in5[9]),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\bram_src[o][o_din] ),
        .O(\copy_index[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[10] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(\copy_index[10]_i_1_n_0 ),
        .Q(\copy_index_reg_n_0_[10] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[11] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(\copy_index[11]_i_1_n_0 ),
        .Q(\copy_index_reg_n_0_[11] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[12] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(\copy_index[12]_i_1_n_0 ),
        .Q(\copy_index_reg_n_0_[12] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \copy_index_reg[12]_i_2 
       (.CI(\copy_index_reg[8]_i_2_n_0 ),
        .CO({\copy_index_reg[12]_i_2_n_0 ,\copy_index_reg[12]_i_2_n_1 ,\copy_index_reg[12]_i_2_n_2 ,\copy_index_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[12:9]),
        .S({\copy_index_reg_n_0_[12] ,\copy_index_reg_n_0_[11] ,\copy_index_reg_n_0_[10] ,\copy_index_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[13] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(\copy_index[13]_i_1_n_0 ),
        .Q(\copy_index_reg_n_0_[13] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[14] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(\copy_index[14]_i_1_n_0 ),
        .Q(\copy_index_reg_n_0_[14] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[15] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(\copy_index[15]_i_1_n_0 ),
        .Q(\copy_index_reg_n_0_[15] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[16] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(\copy_index[16]_i_1_n_0 ),
        .Q(\copy_index_reg_n_0_[16] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \copy_index_reg[16]_i_2 
       (.CI(\copy_index_reg[12]_i_2_n_0 ),
        .CO({\copy_index_reg[16]_i_2_n_0 ,\copy_index_reg[16]_i_2_n_1 ,\copy_index_reg[16]_i_2_n_2 ,\copy_index_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[16:13]),
        .S({\copy_index_reg_n_0_[16] ,\copy_index_reg_n_0_[15] ,\copy_index_reg_n_0_[14] ,\copy_index_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[17] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(\copy_index[17]_i_1_n_0 ),
        .Q(\copy_index_reg_n_0_[17] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[18] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(\copy_index[18]_i_1_n_0 ),
        .Q(\copy_index_reg_n_0_[18] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[19] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(\copy_index[19]_i_1_n_0 ),
        .Q(\copy_index_reg_n_0_[19] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[1] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(\copy_index[1]_i_1_n_0 ),
        .Q(\copy_index_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[20] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(\copy_index[20]_i_1_n_0 ),
        .Q(\copy_index_reg_n_0_[20] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \copy_index_reg[20]_i_2 
       (.CI(\copy_index_reg[16]_i_2_n_0 ),
        .CO({\copy_index_reg[20]_i_2_n_0 ,\copy_index_reg[20]_i_2_n_1 ,\copy_index_reg[20]_i_2_n_2 ,\copy_index_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[20:17]),
        .S({\copy_index_reg_n_0_[20] ,\copy_index_reg_n_0_[19] ,\copy_index_reg_n_0_[18] ,\copy_index_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[21] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(\copy_index[21]_i_1_n_0 ),
        .Q(\copy_index_reg_n_0_[21] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[22] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(\copy_index[22]_i_1_n_0 ),
        .Q(\copy_index_reg_n_0_[22] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[23] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(\copy_index[23]_i_1_n_0 ),
        .Q(\copy_index_reg_n_0_[23] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[24] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(\copy_index[24]_i_1_n_0 ),
        .Q(\copy_index_reg_n_0_[24] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \copy_index_reg[24]_i_2 
       (.CI(\copy_index_reg[20]_i_2_n_0 ),
        .CO({\copy_index_reg[24]_i_2_n_0 ,\copy_index_reg[24]_i_2_n_1 ,\copy_index_reg[24]_i_2_n_2 ,\copy_index_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[24:21]),
        .S({\copy_index_reg_n_0_[24] ,\copy_index_reg_n_0_[23] ,\copy_index_reg_n_0_[22] ,\copy_index_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[25] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(\copy_index[25]_i_1_n_0 ),
        .Q(\copy_index_reg_n_0_[25] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[26] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(\copy_index[26]_i_1_n_0 ),
        .Q(\copy_index_reg_n_0_[26] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[27] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(\copy_index[27]_i_1_n_0 ),
        .Q(\copy_index_reg_n_0_[27] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[28] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(\copy_index[28]_i_1_n_0 ),
        .Q(\copy_index_reg_n_0_[28] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \copy_index_reg[28]_i_2 
       (.CI(\copy_index_reg[24]_i_2_n_0 ),
        .CO({\copy_index_reg[28]_i_2_n_0 ,\copy_index_reg[28]_i_2_n_1 ,\copy_index_reg[28]_i_2_n_2 ,\copy_index_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[28:25]),
        .S({\copy_index_reg_n_0_[28] ,\copy_index_reg_n_0_[27] ,\copy_index_reg_n_0_[26] ,\copy_index_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[29] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(\copy_index[29]_i_1_n_0 ),
        .Q(\copy_index_reg_n_0_[29] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[2] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(\copy_index[2]_i_1_n_0 ),
        .Q(\copy_index_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[30] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(\copy_index[30]_i_1_n_0 ),
        .Q(\copy_index_reg_n_0_[30] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[31] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(\copy_index[31]_i_2_n_0 ),
        .Q(\copy_index_reg_n_0_[31] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \copy_index_reg[31]_i_3 
       (.CI(\copy_index_reg[28]_i_2_n_0 ),
        .CO({\NLW_copy_index_reg[31]_i_3_CO_UNCONNECTED [3:2],\copy_index_reg[31]_i_3_n_2 ,\copy_index_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_copy_index_reg[31]_i_3_O_UNCONNECTED [3],in5[31:29]}),
        .S({1'b0,\copy_index_reg_n_0_[31] ,\copy_index_reg_n_0_[30] ,\copy_index_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[3] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(\copy_index[3]_i_1_n_0 ),
        .Q(\copy_index_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[4] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(\copy_index[4]_i_1_n_0 ),
        .Q(\copy_index_reg_n_0_[4] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \copy_index_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\copy_index_reg[4]_i_2_n_0 ,\copy_index_reg[4]_i_2_n_1 ,\copy_index_reg[4]_i_2_n_2 ,\copy_index_reg[4]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\copy_index_reg_n_0_[2] ,1'b0}),
        .O(in5[4:1]),
        .S({\copy_index_reg_n_0_[4] ,\copy_index_reg_n_0_[3] ,\copy_index[4]_i_3_n_0 ,\copy_index_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[5] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(\copy_index[5]_i_1_n_0 ),
        .Q(\copy_index_reg_n_0_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[6] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(\copy_index[6]_i_1_n_0 ),
        .Q(\copy_index_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[7] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(\copy_index[7]_i_1_n_0 ),
        .Q(\copy_index_reg_n_0_[7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[8] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(\copy_index[8]_i_1_n_0 ),
        .Q(\copy_index_reg_n_0_[8] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \copy_index_reg[8]_i_2 
       (.CI(\copy_index_reg[4]_i_2_n_0 ),
        .CO({\copy_index_reg[8]_i_2_n_0 ,\copy_index_reg[8]_i_2_n_1 ,\copy_index_reg[8]_i_2_n_2 ,\copy_index_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[8:5]),
        .S({\copy_index_reg_n_0_[8] ,\copy_index_reg_n_0_[7] ,\copy_index_reg_n_0_[6] ,\copy_index_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \copy_index_reg[9] 
       (.C(clk),
        .CE(\copy_index[31]_i_1_n_0 ),
        .D(\copy_index[9]_i_1_n_0 ),
        .Q(\copy_index_reg_n_0_[9] ),
        .R(rst));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_1
       (.I0(len[14]),
        .I1(\copy_index_reg_n_0_[14] ),
        .I2(\copy_index_reg_n_0_[15] ),
        .I3(len[15]),
        .O(i__carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_2
       (.I0(len[12]),
        .I1(\copy_index_reg_n_0_[12] ),
        .I2(\copy_index_reg_n_0_[13] ),
        .I3(len[13]),
        .O(i__carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_3
       (.I0(len[10]),
        .I1(\copy_index_reg_n_0_[10] ),
        .I2(\copy_index_reg_n_0_[11] ),
        .I3(len[11]),
        .O(i__carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_4
       (.I0(len[8]),
        .I1(\copy_index_reg_n_0_[8] ),
        .I2(\copy_index_reg_n_0_[9] ),
        .I3(len[9]),
        .O(i__carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5
       (.I0(len[14]),
        .I1(\copy_index_reg_n_0_[14] ),
        .I2(len[15]),
        .I3(\copy_index_reg_n_0_[15] ),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6
       (.I0(len[12]),
        .I1(\copy_index_reg_n_0_[12] ),
        .I2(len[13]),
        .I3(\copy_index_reg_n_0_[13] ),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7
       (.I0(len[10]),
        .I1(\copy_index_reg_n_0_[10] ),
        .I2(len[11]),
        .I3(\copy_index_reg_n_0_[11] ),
        .O(i__carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8
       (.I0(len[8]),
        .I1(\copy_index_reg_n_0_[8] ),
        .I2(len[9]),
        .I3(\copy_index_reg_n_0_[9] ),
        .O(i__carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_1
       (.I0(len[22]),
        .I1(\copy_index_reg_n_0_[22] ),
        .I2(\copy_index_reg_n_0_[23] ),
        .I3(len[23]),
        .O(i__carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_2
       (.I0(len[20]),
        .I1(\copy_index_reg_n_0_[20] ),
        .I2(\copy_index_reg_n_0_[21] ),
        .I3(len[21]),
        .O(i__carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_3
       (.I0(len[18]),
        .I1(\copy_index_reg_n_0_[18] ),
        .I2(\copy_index_reg_n_0_[19] ),
        .I3(len[19]),
        .O(i__carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_4
       (.I0(len[16]),
        .I1(\copy_index_reg_n_0_[16] ),
        .I2(\copy_index_reg_n_0_[17] ),
        .I3(len[17]),
        .O(i__carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_5
       (.I0(len[22]),
        .I1(\copy_index_reg_n_0_[22] ),
        .I2(len[23]),
        .I3(\copy_index_reg_n_0_[23] ),
        .O(i__carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_6
       (.I0(len[20]),
        .I1(\copy_index_reg_n_0_[20] ),
        .I2(len[21]),
        .I3(\copy_index_reg_n_0_[21] ),
        .O(i__carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_7
       (.I0(len[18]),
        .I1(\copy_index_reg_n_0_[18] ),
        .I2(len[19]),
        .I3(\copy_index_reg_n_0_[19] ),
        .O(i__carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_8
       (.I0(len[16]),
        .I1(\copy_index_reg_n_0_[16] ),
        .I2(len[17]),
        .I3(\copy_index_reg_n_0_[17] ),
        .O(i__carry__1_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_1
       (.I0(len[30]),
        .I1(\copy_index_reg_n_0_[30] ),
        .I2(len[31]),
        .I3(\copy_index_reg_n_0_[31] ),
        .O(i__carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_2
       (.I0(len[28]),
        .I1(\copy_index_reg_n_0_[28] ),
        .I2(\copy_index_reg_n_0_[29] ),
        .I3(len[29]),
        .O(i__carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_3
       (.I0(len[26]),
        .I1(\copy_index_reg_n_0_[26] ),
        .I2(\copy_index_reg_n_0_[27] ),
        .I3(len[27]),
        .O(i__carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_4
       (.I0(len[24]),
        .I1(\copy_index_reg_n_0_[24] ),
        .I2(\copy_index_reg_n_0_[25] ),
        .I3(len[25]),
        .O(i__carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_5
       (.I0(len[30]),
        .I1(\copy_index_reg_n_0_[30] ),
        .I2(\copy_index_reg_n_0_[31] ),
        .I3(len[31]),
        .O(i__carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_6
       (.I0(len[28]),
        .I1(\copy_index_reg_n_0_[28] ),
        .I2(len[29]),
        .I3(\copy_index_reg_n_0_[29] ),
        .O(i__carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_7
       (.I0(len[26]),
        .I1(\copy_index_reg_n_0_[26] ),
        .I2(len[27]),
        .I3(\copy_index_reg_n_0_[27] ),
        .O(i__carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_8
       (.I0(len[24]),
        .I1(\copy_index_reg_n_0_[24] ),
        .I2(len[25]),
        .I3(\copy_index_reg_n_0_[25] ),
        .O(i__carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1
       (.I0(len[6]),
        .I1(\copy_index_reg_n_0_[6] ),
        .I2(\copy_index_reg_n_0_[7] ),
        .I3(len[7]),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2
       (.I0(len[4]),
        .I1(\copy_index_reg_n_0_[4] ),
        .I2(\copy_index_reg_n_0_[5] ),
        .I3(len[5]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3
       (.I0(len[2]),
        .I1(\copy_index_reg_n_0_[2] ),
        .I2(\copy_index_reg_n_0_[3] ),
        .I3(len[3]),
        .O(i__carry_i_3_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    i__carry_i_4
       (.I0(len[0]),
        .I1(\copy_index_reg_n_0_[1] ),
        .I2(len[1]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(len[6]),
        .I1(\copy_index_reg_n_0_[6] ),
        .I2(len[7]),
        .I3(\copy_index_reg_n_0_[7] ),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(len[4]),
        .I1(\copy_index_reg_n_0_[4] ),
        .I2(len[5]),
        .I3(\copy_index_reg_n_0_[5] ),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(len[2]),
        .I1(\copy_index_reg_n_0_[2] ),
        .I2(len[3]),
        .I3(\copy_index_reg_n_0_[3] ),
        .O(i__carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    i__carry_i_8
       (.I0(len[1]),
        .I1(\copy_index_reg_n_0_[1] ),
        .I2(len[0]),
        .O(i__carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \len[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(start),
        .O(len_0));
  FDRE #(
    .INIT(1'b0)) 
    \len_reg[0] 
       (.C(clk),
        .CE(len_0),
        .D(i_len[0]),
        .Q(len[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \len_reg[10] 
       (.C(clk),
        .CE(len_0),
        .D(i_len[10]),
        .Q(len[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \len_reg[11] 
       (.C(clk),
        .CE(len_0),
        .D(i_len[11]),
        .Q(len[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \len_reg[12] 
       (.C(clk),
        .CE(len_0),
        .D(i_len[12]),
        .Q(len[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \len_reg[13] 
       (.C(clk),
        .CE(len_0),
        .D(i_len[13]),
        .Q(len[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \len_reg[14] 
       (.C(clk),
        .CE(len_0),
        .D(i_len[14]),
        .Q(len[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \len_reg[15] 
       (.C(clk),
        .CE(len_0),
        .D(i_len[15]),
        .Q(len[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \len_reg[16] 
       (.C(clk),
        .CE(len_0),
        .D(i_len[16]),
        .Q(len[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \len_reg[17] 
       (.C(clk),
        .CE(len_0),
        .D(i_len[17]),
        .Q(len[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \len_reg[18] 
       (.C(clk),
        .CE(len_0),
        .D(i_len[18]),
        .Q(len[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \len_reg[19] 
       (.C(clk),
        .CE(len_0),
        .D(i_len[19]),
        .Q(len[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \len_reg[1] 
       (.C(clk),
        .CE(len_0),
        .D(i_len[1]),
        .Q(len[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \len_reg[20] 
       (.C(clk),
        .CE(len_0),
        .D(i_len[20]),
        .Q(len[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \len_reg[21] 
       (.C(clk),
        .CE(len_0),
        .D(i_len[21]),
        .Q(len[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \len_reg[22] 
       (.C(clk),
        .CE(len_0),
        .D(i_len[22]),
        .Q(len[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \len_reg[23] 
       (.C(clk),
        .CE(len_0),
        .D(i_len[23]),
        .Q(len[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \len_reg[24] 
       (.C(clk),
        .CE(len_0),
        .D(i_len[24]),
        .Q(len[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \len_reg[25] 
       (.C(clk),
        .CE(len_0),
        .D(i_len[25]),
        .Q(len[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \len_reg[26] 
       (.C(clk),
        .CE(len_0),
        .D(i_len[26]),
        .Q(len[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \len_reg[27] 
       (.C(clk),
        .CE(len_0),
        .D(i_len[27]),
        .Q(len[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \len_reg[28] 
       (.C(clk),
        .CE(len_0),
        .D(i_len[28]),
        .Q(len[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \len_reg[29] 
       (.C(clk),
        .CE(len_0),
        .D(i_len[29]),
        .Q(len[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \len_reg[2] 
       (.C(clk),
        .CE(len_0),
        .D(i_len[2]),
        .Q(len[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \len_reg[30] 
       (.C(clk),
        .CE(len_0),
        .D(i_len[30]),
        .Q(len[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \len_reg[31] 
       (.C(clk),
        .CE(len_0),
        .D(i_len[31]),
        .Q(len[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \len_reg[3] 
       (.C(clk),
        .CE(len_0),
        .D(i_len[3]),
        .Q(len[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \len_reg[4] 
       (.C(clk),
        .CE(len_0),
        .D(i_len[4]),
        .Q(len[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \len_reg[5] 
       (.C(clk),
        .CE(len_0),
        .D(i_len[5]),
        .Q(len[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \len_reg[6] 
       (.C(clk),
        .CE(len_0),
        .D(i_len[6]),
        .Q(len[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \len_reg[7] 
       (.C(clk),
        .CE(len_0),
        .D(i_len[7]),
        .Q(len[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \len_reg[8] 
       (.C(clk),
        .CE(len_0),
        .D(i_len[8]),
        .Q(len[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \len_reg[9] 
       (.C(clk),
        .CE(len_0),
        .D(i_len[9]),
        .Q(len[9]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    o_dest_control_i_1
       (.I0(start),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(o_dest_control),
        .O(o_dest_control_i_1_n_0));
  (* equivalent_register_removal = "no" *) 
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Dest_PORTB CTRL" *) 
  FDRE o_dest_control_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_dest_control_i_1_n_0),
        .Q(o_dest_control),
        .R(rst));
  LUT5 #(
    .INIT(32'hFFEFFFEE)) 
    o_done_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(\FSM_onehot_state_reg_n_0_[8] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(o_done),
        .O(o_done_i_1_n_0));
  FDRE o_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_done_i_1_n_0),
        .Q(o_done),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    o_src_control_i_1
       (.I0(start),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(o_src_control),
        .O(o_src_control_i_1_n_0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Src_PORTA CTRL" *) 
  FDRE o_src_control_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_src_control_i_1_n_0),
        .Q(o_src_control),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,o_src_addr[2],1'b0}),
        .O(in11[4:1]),
        .S({o_src_addr[4:3],plusOp_carry_i_1_n_0,o_src_addr[1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in11[8:5]),
        .S(o_src_addr[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in11[12:9]),
        .S(o_src_addr[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in11[16:13]),
        .S(o_src_addr[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({plusOp_carry__3_n_0,plusOp_carry__3_n_1,plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in11[20:17]),
        .S(o_src_addr[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_0),
        .CO({plusOp_carry__4_n_0,plusOp_carry__4_n_1,plusOp_carry__4_n_2,plusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in11[24:21]),
        .S(o_src_addr[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__5
       (.CI(plusOp_carry__4_n_0),
        .CO({plusOp_carry__5_n_0,plusOp_carry__5_n_1,plusOp_carry__5_n_2,plusOp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in11[28:25]),
        .S(o_src_addr[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__6
       (.CI(plusOp_carry__5_n_0),
        .CO({NLW_plusOp_carry__6_CO_UNCONNECTED[3:2],plusOp_carry__6_n_2,plusOp_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__6_O_UNCONNECTED[3],in11[31:29]}),
        .S({1'b0,o_src_addr[31:29]}));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_carry_i_1
       (.I0(o_src_addr[2]),
        .O(plusOp_carry_i_1_n_0));
  FDRE \s_dst_adr_reg[0] 
       (.C(clk),
        .CE(len_0),
        .D(i_dst_adr[0]),
        .Q(s_dst_adr[0]),
        .R(rst));
  FDRE \s_dst_adr_reg[10] 
       (.C(clk),
        .CE(len_0),
        .D(i_dst_adr[10]),
        .Q(s_dst_adr[10]),
        .R(rst));
  FDRE \s_dst_adr_reg[11] 
       (.C(clk),
        .CE(len_0),
        .D(i_dst_adr[11]),
        .Q(s_dst_adr[11]),
        .R(rst));
  FDRE \s_dst_adr_reg[12] 
       (.C(clk),
        .CE(len_0),
        .D(i_dst_adr[12]),
        .Q(s_dst_adr[12]),
        .R(rst));
  FDRE \s_dst_adr_reg[13] 
       (.C(clk),
        .CE(len_0),
        .D(i_dst_adr[13]),
        .Q(s_dst_adr[13]),
        .R(rst));
  FDRE \s_dst_adr_reg[14] 
       (.C(clk),
        .CE(len_0),
        .D(i_dst_adr[14]),
        .Q(s_dst_adr[14]),
        .R(rst));
  FDRE \s_dst_adr_reg[15] 
       (.C(clk),
        .CE(len_0),
        .D(i_dst_adr[15]),
        .Q(s_dst_adr[15]),
        .R(rst));
  FDRE \s_dst_adr_reg[16] 
       (.C(clk),
        .CE(len_0),
        .D(i_dst_adr[16]),
        .Q(s_dst_adr[16]),
        .R(rst));
  FDRE \s_dst_adr_reg[17] 
       (.C(clk),
        .CE(len_0),
        .D(i_dst_adr[17]),
        .Q(s_dst_adr[17]),
        .R(rst));
  FDRE \s_dst_adr_reg[18] 
       (.C(clk),
        .CE(len_0),
        .D(i_dst_adr[18]),
        .Q(s_dst_adr[18]),
        .R(rst));
  FDRE \s_dst_adr_reg[19] 
       (.C(clk),
        .CE(len_0),
        .D(i_dst_adr[19]),
        .Q(s_dst_adr[19]),
        .R(rst));
  FDRE \s_dst_adr_reg[1] 
       (.C(clk),
        .CE(len_0),
        .D(i_dst_adr[1]),
        .Q(s_dst_adr[1]),
        .R(rst));
  FDRE \s_dst_adr_reg[20] 
       (.C(clk),
        .CE(len_0),
        .D(i_dst_adr[20]),
        .Q(s_dst_adr[20]),
        .R(rst));
  FDRE \s_dst_adr_reg[21] 
       (.C(clk),
        .CE(len_0),
        .D(i_dst_adr[21]),
        .Q(s_dst_adr[21]),
        .R(rst));
  FDRE \s_dst_adr_reg[22] 
       (.C(clk),
        .CE(len_0),
        .D(i_dst_adr[22]),
        .Q(s_dst_adr[22]),
        .R(rst));
  FDRE \s_dst_adr_reg[23] 
       (.C(clk),
        .CE(len_0),
        .D(i_dst_adr[23]),
        .Q(s_dst_adr[23]),
        .R(rst));
  FDRE \s_dst_adr_reg[24] 
       (.C(clk),
        .CE(len_0),
        .D(i_dst_adr[24]),
        .Q(s_dst_adr[24]),
        .R(rst));
  FDRE \s_dst_adr_reg[25] 
       (.C(clk),
        .CE(len_0),
        .D(i_dst_adr[25]),
        .Q(s_dst_adr[25]),
        .R(rst));
  FDRE \s_dst_adr_reg[26] 
       (.C(clk),
        .CE(len_0),
        .D(i_dst_adr[26]),
        .Q(s_dst_adr[26]),
        .R(rst));
  FDRE \s_dst_adr_reg[27] 
       (.C(clk),
        .CE(len_0),
        .D(i_dst_adr[27]),
        .Q(s_dst_adr[27]),
        .R(rst));
  FDRE \s_dst_adr_reg[28] 
       (.C(clk),
        .CE(len_0),
        .D(i_dst_adr[28]),
        .Q(s_dst_adr[28]),
        .R(rst));
  FDRE \s_dst_adr_reg[29] 
       (.C(clk),
        .CE(len_0),
        .D(i_dst_adr[29]),
        .Q(s_dst_adr[29]),
        .R(rst));
  FDRE \s_dst_adr_reg[2] 
       (.C(clk),
        .CE(len_0),
        .D(i_dst_adr[2]),
        .Q(s_dst_adr[2]),
        .R(rst));
  FDRE \s_dst_adr_reg[30] 
       (.C(clk),
        .CE(len_0),
        .D(i_dst_adr[30]),
        .Q(s_dst_adr[30]),
        .R(rst));
  FDRE \s_dst_adr_reg[31] 
       (.C(clk),
        .CE(len_0),
        .D(i_dst_adr[31]),
        .Q(s_dst_adr[31]),
        .R(rst));
  FDRE \s_dst_adr_reg[3] 
       (.C(clk),
        .CE(len_0),
        .D(i_dst_adr[3]),
        .Q(s_dst_adr[3]),
        .R(rst));
  FDRE \s_dst_adr_reg[4] 
       (.C(clk),
        .CE(len_0),
        .D(i_dst_adr[4]),
        .Q(s_dst_adr[4]),
        .R(rst));
  FDRE \s_dst_adr_reg[5] 
       (.C(clk),
        .CE(len_0),
        .D(i_dst_adr[5]),
        .Q(s_dst_adr[5]),
        .R(rst));
  FDRE \s_dst_adr_reg[6] 
       (.C(clk),
        .CE(len_0),
        .D(i_dst_adr[6]),
        .Q(s_dst_adr[6]),
        .R(rst));
  FDRE \s_dst_adr_reg[7] 
       (.C(clk),
        .CE(len_0),
        .D(i_dst_adr[7]),
        .Q(s_dst_adr[7]),
        .R(rst));
  FDRE \s_dst_adr_reg[8] 
       (.C(clk),
        .CE(len_0),
        .D(i_dst_adr[8]),
        .Q(s_dst_adr[8]),
        .R(rst));
  FDRE \s_dst_adr_reg[9] 
       (.C(clk),
        .CE(len_0),
        .D(i_dst_adr[9]),
        .Q(s_dst_adr[9]),
        .R(rst));
  FDRE \s_src_adr_reg[0] 
       (.C(clk),
        .CE(len_0),
        .D(i_src_adr[0]),
        .Q(s_src_adr[0]),
        .R(rst));
  FDRE \s_src_adr_reg[10] 
       (.C(clk),
        .CE(len_0),
        .D(i_src_adr[10]),
        .Q(s_src_adr[10]),
        .R(rst));
  FDRE \s_src_adr_reg[11] 
       (.C(clk),
        .CE(len_0),
        .D(i_src_adr[11]),
        .Q(s_src_adr[11]),
        .R(rst));
  FDRE \s_src_adr_reg[12] 
       (.C(clk),
        .CE(len_0),
        .D(i_src_adr[12]),
        .Q(s_src_adr[12]),
        .R(rst));
  FDRE \s_src_adr_reg[13] 
       (.C(clk),
        .CE(len_0),
        .D(i_src_adr[13]),
        .Q(s_src_adr[13]),
        .R(rst));
  FDRE \s_src_adr_reg[14] 
       (.C(clk),
        .CE(len_0),
        .D(i_src_adr[14]),
        .Q(s_src_adr[14]),
        .R(rst));
  FDRE \s_src_adr_reg[15] 
       (.C(clk),
        .CE(len_0),
        .D(i_src_adr[15]),
        .Q(s_src_adr[15]),
        .R(rst));
  FDRE \s_src_adr_reg[16] 
       (.C(clk),
        .CE(len_0),
        .D(i_src_adr[16]),
        .Q(s_src_adr[16]),
        .R(rst));
  FDRE \s_src_adr_reg[17] 
       (.C(clk),
        .CE(len_0),
        .D(i_src_adr[17]),
        .Q(s_src_adr[17]),
        .R(rst));
  FDRE \s_src_adr_reg[18] 
       (.C(clk),
        .CE(len_0),
        .D(i_src_adr[18]),
        .Q(s_src_adr[18]),
        .R(rst));
  FDRE \s_src_adr_reg[19] 
       (.C(clk),
        .CE(len_0),
        .D(i_src_adr[19]),
        .Q(s_src_adr[19]),
        .R(rst));
  FDRE \s_src_adr_reg[1] 
       (.C(clk),
        .CE(len_0),
        .D(i_src_adr[1]),
        .Q(s_src_adr[1]),
        .R(rst));
  FDRE \s_src_adr_reg[20] 
       (.C(clk),
        .CE(len_0),
        .D(i_src_adr[20]),
        .Q(s_src_adr[20]),
        .R(rst));
  FDRE \s_src_adr_reg[21] 
       (.C(clk),
        .CE(len_0),
        .D(i_src_adr[21]),
        .Q(s_src_adr[21]),
        .R(rst));
  FDRE \s_src_adr_reg[22] 
       (.C(clk),
        .CE(len_0),
        .D(i_src_adr[22]),
        .Q(s_src_adr[22]),
        .R(rst));
  FDRE \s_src_adr_reg[23] 
       (.C(clk),
        .CE(len_0),
        .D(i_src_adr[23]),
        .Q(s_src_adr[23]),
        .R(rst));
  FDRE \s_src_adr_reg[24] 
       (.C(clk),
        .CE(len_0),
        .D(i_src_adr[24]),
        .Q(s_src_adr[24]),
        .R(rst));
  FDRE \s_src_adr_reg[25] 
       (.C(clk),
        .CE(len_0),
        .D(i_src_adr[25]),
        .Q(s_src_adr[25]),
        .R(rst));
  FDRE \s_src_adr_reg[26] 
       (.C(clk),
        .CE(len_0),
        .D(i_src_adr[26]),
        .Q(s_src_adr[26]),
        .R(rst));
  FDRE \s_src_adr_reg[27] 
       (.C(clk),
        .CE(len_0),
        .D(i_src_adr[27]),
        .Q(s_src_adr[27]),
        .R(rst));
  FDRE \s_src_adr_reg[28] 
       (.C(clk),
        .CE(len_0),
        .D(i_src_adr[28]),
        .Q(s_src_adr[28]),
        .R(rst));
  FDRE \s_src_adr_reg[29] 
       (.C(clk),
        .CE(len_0),
        .D(i_src_adr[29]),
        .Q(s_src_adr[29]),
        .R(rst));
  FDRE \s_src_adr_reg[2] 
       (.C(clk),
        .CE(len_0),
        .D(i_src_adr[2]),
        .Q(s_src_adr[2]),
        .R(rst));
  FDRE \s_src_adr_reg[30] 
       (.C(clk),
        .CE(len_0),
        .D(i_src_adr[30]),
        .Q(s_src_adr[30]),
        .R(rst));
  FDRE \s_src_adr_reg[31] 
       (.C(clk),
        .CE(len_0),
        .D(i_src_adr[31]),
        .Q(s_src_adr[31]),
        .R(rst));
  FDRE \s_src_adr_reg[3] 
       (.C(clk),
        .CE(len_0),
        .D(i_src_adr[3]),
        .Q(s_src_adr[3]),
        .R(rst));
  FDRE \s_src_adr_reg[4] 
       (.C(clk),
        .CE(len_0),
        .D(i_src_adr[4]),
        .Q(s_src_adr[4]),
        .R(rst));
  FDRE \s_src_adr_reg[5] 
       (.C(clk),
        .CE(len_0),
        .D(i_src_adr[5]),
        .Q(s_src_adr[5]),
        .R(rst));
  FDRE \s_src_adr_reg[6] 
       (.C(clk),
        .CE(len_0),
        .D(i_src_adr[6]),
        .Q(s_src_adr[6]),
        .R(rst));
  FDRE \s_src_adr_reg[7] 
       (.C(clk),
        .CE(len_0),
        .D(i_src_adr[7]),
        .Q(s_src_adr[7]),
        .R(rst));
  FDRE \s_src_adr_reg[8] 
       (.C(clk),
        .CE(len_0),
        .D(i_src_adr[8]),
        .Q(s_src_adr[8]),
        .R(rst));
  FDRE \s_src_adr_reg[9] 
       (.C(clk),
        .CE(len_0),
        .D(i_src_adr[9]),
        .Q(s_src_adr[9]),
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
