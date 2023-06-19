// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Jun 18 17:47:46 2023
// Host        : osm-hzb running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_mayo_add_oil_0_0/Mayo_sign_with_zynq_mayo_add_oil_0_0_sim_netlist.v
// Design      : Mayo_sign_with_zynq_mayo_add_oil_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Mayo_sign_with_zynq_mayo_add_oil_0_0,mayo_add_oil,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "mayo_add_oil,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Mayo_sign_with_zynq_mayo_add_oil_0_0
   (clk,
    rst,
    i_enable,
    o_done,
    i_mem0a_dout,
    o_mem0a_din,
    o_mem0a_addr,
    o_mem0a_en,
    o_mem0a_rst,
    o_mem0a_we,
    o_control0a,
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 83333336, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN Mayo_sign_with_zynq_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  input i_enable;
  output o_done;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_oil0a DOUT" *) input [31:0]i_mem0a_dout;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_oil0a DIN" *) output [31:0]o_mem0a_din;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_oil0a ADDR" *) output [31:0]o_mem0a_addr;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_oil0a EN" *) output o_mem0a_en;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_oil0a RST" *) output o_mem0a_rst;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_oil0a WE" *) output [3:0]o_mem0a_we;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_oil0a CTRL" *) output o_control0a;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_oil0b DOUT" *) input [31:0]i_mem0b_dout;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_oil0b DIN" *) output [31:0]o_mem0b_din;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_oil0b ADDR" *) output [31:0]o_mem0b_addr;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_oil0b EN" *) output o_mem0b_en;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_oil0b RST" *) output o_mem0b_rst;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_oil0b WE" *) output [3:0]o_mem0b_we;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_oil0b CTRL" *) output o_control0b;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_oil1a DOUT" *) input [31:0]i_mem1a_dout;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_oil1a DIN" *) output [31:0]o_mem1a_din;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_oil1a ADDR" *) output [31:0]o_mem1a_addr;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_oil1a EN" *) output o_mem1a_en;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_oil1a RST" *) output o_mem1a_rst;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_oil1a WE" *) output [3:0]o_mem1a_we;
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom:1.0 BRAM_Add_oil1a CTRL" *) output o_control1a;

  wire \<const0> ;
  wire \<const1> ;
  wire U0_n_10;
  wire U0_n_11;
  wire U0_n_12;
  wire U0_n_13;
  wire U0_n_6;
  wire U0_n_7;
  wire U0_n_8;
  wire U0_n_9;
  wire clk;
  wire i_enable;
  wire [31:0]i_mem0a_dout;
  wire [31:0]i_mem0b_dout;
  wire [31:0]i_mem1a_dout;
  wire o_control0a;
  wire o_control0b;
  wire o_control1a;
  wire [16:2]\^o_mem0a_addr ;
  wire [31:0]o_mem0a_din;
  wire o_mem0a_en;
  wire [3:0]o_mem0a_we;
  wire [16:2]\^o_mem0b_addr ;
  wire [31:0]o_mem0b_din;
  wire o_mem0b_en;
  wire [3:1]\^o_mem0b_we ;
  wire [16:2]\^o_mem1a_addr ;
  wire o_mem1a_en;
  wire rst;
  wire \t0[2]_i_13_n_0 ;
  wire \t0[2]_i_14_n_0 ;
  wire \t0[2]_i_16_n_0 ;
  wire \t0[2]_i_17_n_0 ;
  wire \t0[2]_i_18_n_0 ;
  wire \t0[2]_i_30_n_0 ;
  wire \t0[2]_i_31_n_0 ;

  assign o_done = \<const1> ;
  assign o_mem0a_addr[31] = \<const0> ;
  assign o_mem0a_addr[30] = \<const0> ;
  assign o_mem0a_addr[29] = \<const0> ;
  assign o_mem0a_addr[28] = \<const0> ;
  assign o_mem0a_addr[27] = \<const0> ;
  assign o_mem0a_addr[26] = \<const0> ;
  assign o_mem0a_addr[25] = \<const0> ;
  assign o_mem0a_addr[24] = \<const0> ;
  assign o_mem0a_addr[23] = \<const0> ;
  assign o_mem0a_addr[22] = \<const0> ;
  assign o_mem0a_addr[21] = \<const0> ;
  assign o_mem0a_addr[20] = \<const0> ;
  assign o_mem0a_addr[19] = \<const0> ;
  assign o_mem0a_addr[18] = \<const0> ;
  assign o_mem0a_addr[17] = \<const0> ;
  assign o_mem0a_addr[16] = \^o_mem0a_addr [16];
  assign o_mem0a_addr[15] = \^o_mem0a_addr [16];
  assign o_mem0a_addr[14] = \^o_mem0a_addr [16];
  assign o_mem0a_addr[13] = \<const0> ;
  assign o_mem0a_addr[12:2] = \^o_mem0a_addr [12:2];
  assign o_mem0a_addr[1] = \<const0> ;
  assign o_mem0a_addr[0] = \<const0> ;
  assign o_mem0a_rst = \<const0> ;
  assign o_mem0b_addr[31] = \<const0> ;
  assign o_mem0b_addr[30] = \<const0> ;
  assign o_mem0b_addr[29] = \<const0> ;
  assign o_mem0b_addr[28] = \<const0> ;
  assign o_mem0b_addr[27] = \<const0> ;
  assign o_mem0b_addr[26] = \<const0> ;
  assign o_mem0b_addr[25] = \<const0> ;
  assign o_mem0b_addr[24] = \<const0> ;
  assign o_mem0b_addr[23] = \<const0> ;
  assign o_mem0b_addr[22] = \<const0> ;
  assign o_mem0b_addr[21] = \<const0> ;
  assign o_mem0b_addr[20] = \<const0> ;
  assign o_mem0b_addr[19] = \<const0> ;
  assign o_mem0b_addr[18] = \<const0> ;
  assign o_mem0b_addr[17] = \<const0> ;
  assign o_mem0b_addr[16] = \^o_mem0b_addr [16];
  assign o_mem0b_addr[15] = \^o_mem0b_addr [16];
  assign o_mem0b_addr[14] = \^o_mem0b_addr [16];
  assign o_mem0b_addr[13] = \<const0> ;
  assign o_mem0b_addr[12:2] = \^o_mem0b_addr [12:2];
  assign o_mem0b_addr[1] = \<const0> ;
  assign o_mem0b_addr[0] = \<const0> ;
  assign o_mem0b_rst = \<const0> ;
  assign o_mem0b_we[3:1] = \^o_mem0b_we [3:1];
  assign o_mem0b_we[0] = \^o_mem0b_we [1];
  assign o_mem1a_addr[31] = \<const0> ;
  assign o_mem1a_addr[30] = \<const0> ;
  assign o_mem1a_addr[29] = \<const0> ;
  assign o_mem1a_addr[28] = \<const0> ;
  assign o_mem1a_addr[27] = \<const0> ;
  assign o_mem1a_addr[26] = \<const0> ;
  assign o_mem1a_addr[25] = \<const0> ;
  assign o_mem1a_addr[24] = \<const0> ;
  assign o_mem1a_addr[23] = \<const0> ;
  assign o_mem1a_addr[22] = \<const0> ;
  assign o_mem1a_addr[21] = \<const0> ;
  assign o_mem1a_addr[20] = \<const0> ;
  assign o_mem1a_addr[19] = \<const0> ;
  assign o_mem1a_addr[18] = \<const0> ;
  assign o_mem1a_addr[17] = \<const0> ;
  assign o_mem1a_addr[16] = \^o_mem1a_addr [16];
  assign o_mem1a_addr[15] = \^o_mem1a_addr [16];
  assign o_mem1a_addr[14] = \^o_mem1a_addr [16];
  assign o_mem1a_addr[13] = \<const0> ;
  assign o_mem1a_addr[12] = \<const0> ;
  assign o_mem1a_addr[11] = \<const0> ;
  assign o_mem1a_addr[10] = \^o_mem1a_addr [16];
  assign o_mem1a_addr[9:2] = \^o_mem1a_addr [9:2];
  assign o_mem1a_addr[1] = \<const0> ;
  assign o_mem1a_addr[0] = \<const0> ;
  assign o_mem1a_din[31] = \<const0> ;
  assign o_mem1a_din[30] = \<const0> ;
  assign o_mem1a_din[29] = \<const0> ;
  assign o_mem1a_din[28] = \<const0> ;
  assign o_mem1a_din[27] = \<const0> ;
  assign o_mem1a_din[26] = \<const0> ;
  assign o_mem1a_din[25] = \<const0> ;
  assign o_mem1a_din[24] = \<const0> ;
  assign o_mem1a_din[23] = \<const0> ;
  assign o_mem1a_din[22] = \<const0> ;
  assign o_mem1a_din[21] = \<const0> ;
  assign o_mem1a_din[20] = \<const0> ;
  assign o_mem1a_din[19] = \<const0> ;
  assign o_mem1a_din[18] = \<const0> ;
  assign o_mem1a_din[17] = \<const0> ;
  assign o_mem1a_din[16] = \<const0> ;
  assign o_mem1a_din[15] = \<const0> ;
  assign o_mem1a_din[14] = \<const0> ;
  assign o_mem1a_din[13] = \<const0> ;
  assign o_mem1a_din[12] = \<const0> ;
  assign o_mem1a_din[11] = \<const0> ;
  assign o_mem1a_din[10] = \<const0> ;
  assign o_mem1a_din[9] = \<const0> ;
  assign o_mem1a_din[8] = \<const0> ;
  assign o_mem1a_din[7] = \<const0> ;
  assign o_mem1a_din[6] = \<const0> ;
  assign o_mem1a_din[5] = \<const0> ;
  assign o_mem1a_din[4] = \<const0> ;
  assign o_mem1a_din[3] = \<const0> ;
  assign o_mem1a_din[2] = \<const0> ;
  assign o_mem1a_din[1] = \<const0> ;
  assign o_mem1a_din[0] = \<const0> ;
  assign o_mem1a_rst = \<const0> ;
  assign o_mem1a_we[3] = \<const0> ;
  assign o_mem1a_we[2] = \<const0> ;
  assign o_mem1a_we[1] = \<const0> ;
  assign o_mem1a_we[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  Mayo_sign_with_zynq_mayo_add_oil_0_0_mayo_add_oil U0
       (.O(U0_n_6),
        .S({\t0[2]_i_16_n_0 ,\t0[2]_i_17_n_0 ,\t0[2]_i_18_n_0 }),
        .clk(clk),
        .i_enable(i_enable),
        .i_mem0a_dout(i_mem0a_dout),
        .i_mem0b_dout(i_mem0b_dout),
        .i_mem1a_dout(i_mem1a_dout),
        .o_control0a(o_control0a),
        .o_control0b(o_control0b),
        .o_control1a(o_control1a),
        .o_mem0a_addr({\^o_mem0a_addr [16],\^o_mem0a_addr [12:2]}),
        .o_mem0a_din(o_mem0a_din),
        .o_mem0a_en(o_mem0a_en),
        .o_mem0a_we(o_mem0a_we),
        .o_mem0b_addr({\^o_mem0b_addr [16],\^o_mem0b_addr [12:2]}),
        .o_mem0b_din(o_mem0b_din),
        .o_mem0b_en(o_mem0b_en),
        .o_mem0b_we(\^o_mem0b_we ),
        .o_mem1a_addr({\^o_mem1a_addr [16],\^o_mem1a_addr [9:2]}),
        .o_mem1a_en(o_mem1a_en),
        .rst(rst),
        .\t0[2]_i_13 ({\t0[2]_i_30_n_0 ,\t0[2]_i_31_n_0 }),
        .\t0[2]_i_31 (U0_n_8),
        .\t0[2]_i_5_0 ({\t0[2]_i_13_n_0 ,\t0[2]_i_14_n_0 }),
        .\t0_reg[10]_0 (U0_n_7),
        .\t0_reg[13]_0 ({U0_n_9,U0_n_10,U0_n_11,U0_n_12}),
        .\t0_reg[9]_0 (U0_n_13));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \t0[2]_i_13 
       (.I0(U0_n_7),
        .I1(U0_n_6),
        .I2(U0_n_8),
        .I3(U0_n_12),
        .O(\t0[2]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \t0[2]_i_14 
       (.I0(U0_n_7),
        .I1(U0_n_6),
        .O(\t0[2]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \t0[2]_i_16 
       (.I0(U0_n_7),
        .I1(U0_n_10),
        .O(\t0[2]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \t0[2]_i_17 
       (.I0(U0_n_11),
        .O(\t0[2]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \t0[2]_i_18 
       (.I0(U0_n_12),
        .O(\t0[2]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \t0[2]_i_30 
       (.I0(U0_n_11),
        .I1(U0_n_13),
        .O(\t0[2]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \t0[2]_i_31 
       (.I0(U0_n_12),
        .I1(U0_n_9),
        .O(\t0[2]_i_31_n_0 ));
endmodule

(* ORIG_REF_NAME = "mayo_add_oil" *) 
module Mayo_sign_with_zynq_mayo_add_oil_0_0_mayo_add_oil
   (o_mem0a_en,
    o_control0a,
    o_mem0b_en,
    o_control0b,
    o_mem1a_en,
    o_control1a,
    O,
    \t0_reg[10]_0 ,
    \t0[2]_i_31 ,
    \t0_reg[13]_0 ,
    \t0_reg[9]_0 ,
    o_mem0a_din,
    o_mem0a_addr,
    o_mem0a_we,
    o_mem0b_din,
    o_mem0b_addr,
    o_mem0b_we,
    o_mem1a_addr,
    rst,
    clk,
    i_mem0a_dout,
    i_mem0b_dout,
    i_enable,
    i_mem1a_dout,
    S,
    \t0[2]_i_13 ,
    \t0[2]_i_5_0 );
  output o_mem0a_en;
  output o_control0a;
  output o_mem0b_en;
  output o_control0b;
  output o_mem1a_en;
  output o_control1a;
  output [0:0]O;
  output [0:0]\t0_reg[10]_0 ;
  output [0:0]\t0[2]_i_31 ;
  output [3:0]\t0_reg[13]_0 ;
  output [0:0]\t0_reg[9]_0 ;
  output [31:0]o_mem0a_din;
  output [11:0]o_mem0a_addr;
  output [3:0]o_mem0a_we;
  output [31:0]o_mem0b_din;
  output [11:0]o_mem0b_addr;
  output [2:0]o_mem0b_we;
  output [8:0]o_mem1a_addr;
  input rst;
  input clk;
  input [31:0]i_mem0a_dout;
  input [31:0]i_mem0b_dout;
  input i_enable;
  input [31:0]i_mem1a_dout;
  input [2:0]S;
  input [1:0]\t0[2]_i_13 ;
  input [1:0]\t0[2]_i_5_0 ;

  wire [31:4]C;
  wire CEB2;
  wire [0:0]O;
  wire [2:0]S;
  wire [9:2]base_adr7;
  wire [16:2]\bram0a[o][o_addr] ;
  wire \bram0a[o][o_addr][16]_i_1_n_0 ;
  wire \bram0a[o][o_addr][16]_i_3_n_0 ;
  wire \bram0a[o][o_addr][16]_i_4_n_0 ;
  wire \bram0a[o][o_addr][5]_i_6_n_0 ;
  wire [31:0]\bram0a[o][o_din] ;
  wire \bram0a[o][o_din][0]_i_2_n_0 ;
  wire \bram0a[o][o_din][10]_i_2_n_0 ;
  wire \bram0a[o][o_din][11]_i_2_n_0 ;
  wire \bram0a[o][o_din][12]_i_2_n_0 ;
  wire \bram0a[o][o_din][13]_i_2_n_0 ;
  wire \bram0a[o][o_din][14]_i_2_n_0 ;
  wire \bram0a[o][o_din][14]_i_3_n_0 ;
  wire \bram0a[o][o_din][14]_i_4_n_0 ;
  wire \bram0a[o][o_din][15]_i_2_n_0 ;
  wire \bram0a[o][o_din][15]_i_3_n_0 ;
  wire \bram0a[o][o_din][16]_i_2_n_0 ;
  wire \bram0a[o][o_din][17]_i_2_n_0 ;
  wire \bram0a[o][o_din][18]_i_2_n_0 ;
  wire \bram0a[o][o_din][19]_i_2_n_0 ;
  wire \bram0a[o][o_din][1]_i_2_n_0 ;
  wire \bram0a[o][o_din][20]_i_2_n_0 ;
  wire \bram0a[o][o_din][21]_i_2_n_0 ;
  wire \bram0a[o][o_din][22]_i_2_n_0 ;
  wire \bram0a[o][o_din][23]_i_2_n_0 ;
  wire \bram0a[o][o_din][23]_i_3_n_0 ;
  wire \bram0a[o][o_din][23]_i_4_n_0 ;
  wire \bram0a[o][o_din][23]_i_5_n_0 ;
  wire \bram0a[o][o_din][24]_i_2_n_0 ;
  wire \bram0a[o][o_din][24]_i_3_n_0 ;
  wire \bram0a[o][o_din][24]_i_4_n_0 ;
  wire \bram0a[o][o_din][25]_i_2_n_0 ;
  wire \bram0a[o][o_din][25]_i_3_n_0 ;
  wire \bram0a[o][o_din][25]_i_4_n_0 ;
  wire \bram0a[o][o_din][26]_i_2_n_0 ;
  wire \bram0a[o][o_din][26]_i_3_n_0 ;
  wire \bram0a[o][o_din][26]_i_4_n_0 ;
  wire \bram0a[o][o_din][27]_i_2_n_0 ;
  wire \bram0a[o][o_din][27]_i_3_n_0 ;
  wire \bram0a[o][o_din][27]_i_4_n_0 ;
  wire \bram0a[o][o_din][28]_i_2_n_0 ;
  wire \bram0a[o][o_din][28]_i_3_n_0 ;
  wire \bram0a[o][o_din][28]_i_4_n_0 ;
  wire \bram0a[o][o_din][29]_i_2_n_0 ;
  wire \bram0a[o][o_din][29]_i_3_n_0 ;
  wire \bram0a[o][o_din][29]_i_4_n_0 ;
  wire \bram0a[o][o_din][2]_i_2_n_0 ;
  wire \bram0a[o][o_din][30]_i_2_n_0 ;
  wire \bram0a[o][o_din][30]_i_3_n_0 ;
  wire \bram0a[o][o_din][30]_i_4_n_0 ;
  wire \bram0a[o][o_din][31]_i_10_n_0 ;
  wire \bram0a[o][o_din][31]_i_12_n_0 ;
  wire \bram0a[o][o_din][31]_i_15_n_0 ;
  wire \bram0a[o][o_din][31]_i_16_n_0 ;
  wire \bram0a[o][o_din][31]_i_17_n_0 ;
  wire \bram0a[o][o_din][31]_i_18_n_0 ;
  wire \bram0a[o][o_din][31]_i_19_n_0 ;
  wire \bram0a[o][o_din][31]_i_1_n_0 ;
  wire \bram0a[o][o_din][31]_i_22_n_0 ;
  wire \bram0a[o][o_din][31]_i_23_n_0 ;
  wire \bram0a[o][o_din][31]_i_24_n_0 ;
  wire \bram0a[o][o_din][31]_i_25_n_0 ;
  wire \bram0a[o][o_din][31]_i_26_n_0 ;
  wire \bram0a[o][o_din][31]_i_27_n_0 ;
  wire \bram0a[o][o_din][31]_i_28_n_0 ;
  wire \bram0a[o][o_din][31]_i_29_n_0 ;
  wire \bram0a[o][o_din][31]_i_30_n_0 ;
  wire \bram0a[o][o_din][31]_i_31_n_0 ;
  wire \bram0a[o][o_din][31]_i_33_n_0 ;
  wire \bram0a[o][o_din][31]_i_34_n_0 ;
  wire \bram0a[o][o_din][31]_i_35_n_0 ;
  wire \bram0a[o][o_din][31]_i_36_n_0 ;
  wire \bram0a[o][o_din][31]_i_37_n_0 ;
  wire \bram0a[o][o_din][31]_i_38_n_0 ;
  wire \bram0a[o][o_din][31]_i_39_n_0 ;
  wire \bram0a[o][o_din][31]_i_3_n_0 ;
  wire \bram0a[o][o_din][31]_i_40_n_0 ;
  wire \bram0a[o][o_din][31]_i_41_n_0 ;
  wire \bram0a[o][o_din][31]_i_4_n_0 ;
  wire \bram0a[o][o_din][31]_i_5_n_0 ;
  wire \bram0a[o][o_din][31]_i_6_n_0 ;
  wire \bram0a[o][o_din][31]_i_7_n_0 ;
  wire \bram0a[o][o_din][31]_i_8_n_0 ;
  wire \bram0a[o][o_din][31]_i_9_n_0 ;
  wire \bram0a[o][o_din][3]_i_2_n_0 ;
  wire \bram0a[o][o_din][4]_i_2_n_0 ;
  wire \bram0a[o][o_din][5]_i_2_n_0 ;
  wire \bram0a[o][o_din][6]_i_2_n_0 ;
  wire \bram0a[o][o_din][7]_i_2_n_0 ;
  wire \bram0a[o][o_din][7]_i_3_n_0 ;
  wire \bram0a[o][o_din][8]_i_2_n_0 ;
  wire \bram0a[o][o_din][9]_i_2_n_0 ;
  wire \bram0a[o][o_en]_i_1_n_0 ;
  wire \bram0a[o][o_en]_i_2_n_0 ;
  wire [3:0]\bram0a[o][o_we] ;
  wire \bram0a[o][o_we][0]_i_2_n_0 ;
  wire \bram0a[o][o_we][0]_i_3_n_0 ;
  wire \bram0a[o][o_we][1]_i_2_n_0 ;
  wire \bram0a[o][o_we][2]_i_2_n_0 ;
  wire \bram0a[o][o_we][3]_i_1_n_0 ;
  wire \bram0a[o][o_we][3]_i_3_n_0 ;
  wire \bram0a[o][o_we][3]_i_4_n_0 ;
  wire \bram0a[o][o_we][3]_i_5_n_0 ;
  wire \bram0a[o][o_we][3]_i_6_n_0 ;
  wire \bram0a_reg[o][o_addr][12]_i_2_n_1 ;
  wire \bram0a_reg[o][o_addr][12]_i_2_n_3 ;
  wire \bram0a_reg[o][o_addr][12]_i_2_n_6 ;
  wire \bram0a_reg[o][o_addr][12]_i_2_n_7 ;
  wire \bram0a_reg[o][o_addr][5]_i_2_n_0 ;
  wire \bram0a_reg[o][o_addr][5]_i_2_n_1 ;
  wire \bram0a_reg[o][o_addr][5]_i_2_n_2 ;
  wire \bram0a_reg[o][o_addr][5]_i_2_n_3 ;
  wire \bram0a_reg[o][o_addr][5]_i_2_n_4 ;
  wire \bram0a_reg[o][o_addr][5]_i_2_n_5 ;
  wire \bram0a_reg[o][o_addr][5]_i_2_n_6 ;
  wire \bram0a_reg[o][o_addr][5]_i_2_n_7 ;
  wire \bram0a_reg[o][o_addr][9]_i_2_n_0 ;
  wire \bram0a_reg[o][o_addr][9]_i_2_n_1 ;
  wire \bram0a_reg[o][o_addr][9]_i_2_n_2 ;
  wire \bram0a_reg[o][o_addr][9]_i_2_n_3 ;
  wire \bram0a_reg[o][o_addr][9]_i_2_n_4 ;
  wire \bram0a_reg[o][o_addr][9]_i_2_n_5 ;
  wire \bram0a_reg[o][o_addr][9]_i_2_n_6 ;
  wire \bram0a_reg[o][o_addr][9]_i_2_n_7 ;
  wire \bram0a_reg[o][o_din][31]_i_11_n_0 ;
  wire \bram0a_reg[o][o_din][31]_i_11_n_1 ;
  wire \bram0a_reg[o][o_din][31]_i_11_n_2 ;
  wire \bram0a_reg[o][o_din][31]_i_11_n_3 ;
  wire \bram0a_reg[o][o_din][31]_i_11_n_4 ;
  wire \bram0a_reg[o][o_din][31]_i_11_n_5 ;
  wire \bram0a_reg[o][o_din][31]_i_11_n_6 ;
  wire \bram0a_reg[o][o_din][31]_i_11_n_7 ;
  wire \bram0a_reg[o][o_din][31]_i_13_n_0 ;
  wire \bram0a_reg[o][o_din][31]_i_13_n_1 ;
  wire \bram0a_reg[o][o_din][31]_i_13_n_2 ;
  wire \bram0a_reg[o][o_din][31]_i_13_n_3 ;
  wire \bram0a_reg[o][o_din][31]_i_13_n_4 ;
  wire \bram0a_reg[o][o_din][31]_i_13_n_5 ;
  wire \bram0a_reg[o][o_din][31]_i_13_n_6 ;
  wire \bram0a_reg[o][o_din][31]_i_13_n_7 ;
  wire \bram0a_reg[o][o_din][31]_i_14_n_0 ;
  wire \bram0a_reg[o][o_din][31]_i_14_n_1 ;
  wire \bram0a_reg[o][o_din][31]_i_14_n_2 ;
  wire \bram0a_reg[o][o_din][31]_i_14_n_3 ;
  wire \bram0a_reg[o][o_din][31]_i_14_n_4 ;
  wire \bram0a_reg[o][o_din][31]_i_14_n_5 ;
  wire \bram0a_reg[o][o_din][31]_i_14_n_6 ;
  wire \bram0a_reg[o][o_din][31]_i_14_n_7 ;
  wire \bram0a_reg[o][o_din][31]_i_21_n_0 ;
  wire \bram0a_reg[o][o_din][31]_i_21_n_1 ;
  wire \bram0a_reg[o][o_din][31]_i_21_n_2 ;
  wire \bram0a_reg[o][o_din][31]_i_21_n_3 ;
  wire \bram0a_reg[o][o_din][31]_i_21_n_4 ;
  wire \bram0a_reg[o][o_din][31]_i_21_n_5 ;
  wire \bram0a_reg[o][o_din][31]_i_21_n_6 ;
  wire \bram0a_reg[o][o_din][31]_i_21_n_7 ;
  wire \bram0a_reg[o][o_din][31]_i_32_n_0 ;
  wire \bram0a_reg[o][o_din][31]_i_32_n_1 ;
  wire \bram0a_reg[o][o_din][31]_i_32_n_2 ;
  wire \bram0a_reg[o][o_din][31]_i_32_n_3 ;
  wire \bram0a_reg[o][o_din][31]_i_32_n_4 ;
  wire \bram0a_reg[o][o_din][31]_i_32_n_5 ;
  wire \bram0a_reg[o][o_din][31]_i_32_n_6 ;
  wire \bram0a_reg[o][o_din][31]_i_32_n_7 ;
  wire [12:2]\bram0b[o][o_addr]0_in ;
  wire \bram0b[o][o_addr][12]_i_2_n_0 ;
  wire \bram0b[o][o_addr][12]_i_3_n_0 ;
  wire \bram0b[o][o_addr][12]_i_4_n_0 ;
  wire \bram0b[o][o_addr][16]_i_1_n_0 ;
  wire \bram0b[o][o_addr][16]_i_2_n_0 ;
  wire \bram0b[o][o_addr][16]_i_3_n_0 ;
  wire \bram0b[o][o_addr][4]_i_2_n_0 ;
  wire \bram0b[o][o_addr][4]_i_3_n_0 ;
  wire \bram0b[o][o_addr][4]_i_4_n_0 ;
  wire \bram0b[o][o_addr][4]_i_5_n_0 ;
  wire \bram0b[o][o_addr][8]_i_2_n_0 ;
  wire \bram0b[o][o_addr][8]_i_3_n_0 ;
  wire \bram0b[o][o_addr][8]_i_4_n_0 ;
  wire \bram0b[o][o_addr][8]_i_5_n_0 ;
  wire [31:0]\bram0b[o][o_din] ;
  wire \bram0b[o][o_din][0]_i_2_n_0 ;
  wire \bram0b[o][o_din][0]_i_3_n_0 ;
  wire \bram0b[o][o_din][10]_i_2_n_0 ;
  wire \bram0b[o][o_din][10]_i_3_n_0 ;
  wire \bram0b[o][o_din][11]_i_2_n_0 ;
  wire \bram0b[o][o_din][11]_i_3_n_0 ;
  wire \bram0b[o][o_din][12]_i_2_n_0 ;
  wire \bram0b[o][o_din][12]_i_3_n_0 ;
  wire \bram0b[o][o_din][13]_i_2_n_0 ;
  wire \bram0b[o][o_din][13]_i_3_n_0 ;
  wire \bram0b[o][o_din][14]_i_2_n_0 ;
  wire \bram0b[o][o_din][14]_i_3_n_0 ;
  wire \bram0b[o][o_din][15]_i_10_n_0 ;
  wire \bram0b[o][o_din][15]_i_11_n_0 ;
  wire \bram0b[o][o_din][15]_i_12_n_0 ;
  wire \bram0b[o][o_din][15]_i_14_n_0 ;
  wire \bram0b[o][o_din][15]_i_15_n_0 ;
  wire \bram0b[o][o_din][15]_i_16_n_0 ;
  wire \bram0b[o][o_din][15]_i_17_n_0 ;
  wire \bram0b[o][o_din][15]_i_18_n_0 ;
  wire \bram0b[o][o_din][15]_i_19_n_0 ;
  wire \bram0b[o][o_din][15]_i_20_n_0 ;
  wire \bram0b[o][o_din][15]_i_21_n_0 ;
  wire \bram0b[o][o_din][15]_i_3_n_0 ;
  wire \bram0b[o][o_din][15]_i_4_n_0 ;
  wire \bram0b[o][o_din][15]_i_5_n_0 ;
  wire \bram0b[o][o_din][15]_i_7_n_0 ;
  wire \bram0b[o][o_din][15]_i_8_n_0 ;
  wire \bram0b[o][o_din][15]_i_9_n_0 ;
  wire \bram0b[o][o_din][16]_i_2_n_0 ;
  wire \bram0b[o][o_din][16]_i_3_n_0 ;
  wire \bram0b[o][o_din][17]_i_2_n_0 ;
  wire \bram0b[o][o_din][17]_i_3_n_0 ;
  wire \bram0b[o][o_din][18]_i_2_n_0 ;
  wire \bram0b[o][o_din][18]_i_3_n_0 ;
  wire \bram0b[o][o_din][19]_i_2_n_0 ;
  wire \bram0b[o][o_din][19]_i_3_n_0 ;
  wire \bram0b[o][o_din][1]_i_2_n_0 ;
  wire \bram0b[o][o_din][1]_i_3_n_0 ;
  wire \bram0b[o][o_din][20]_i_2_n_0 ;
  wire \bram0b[o][o_din][20]_i_3_n_0 ;
  wire \bram0b[o][o_din][21]_i_2_n_0 ;
  wire \bram0b[o][o_din][21]_i_3_n_0 ;
  wire \bram0b[o][o_din][22]_i_2_n_0 ;
  wire \bram0b[o][o_din][22]_i_3_n_0 ;
  wire \bram0b[o][o_din][23]_i_2_n_0 ;
  wire \bram0b[o][o_din][23]_i_3_n_0 ;
  wire \bram0b[o][o_din][23]_i_4_n_0 ;
  wire \bram0b[o][o_din][24]_i_2_n_0 ;
  wire \bram0b[o][o_din][24]_i_3_n_0 ;
  wire \bram0b[o][o_din][25]_i_2_n_0 ;
  wire \bram0b[o][o_din][25]_i_3_n_0 ;
  wire \bram0b[o][o_din][26]_i_2_n_0 ;
  wire \bram0b[o][o_din][26]_i_3_n_0 ;
  wire \bram0b[o][o_din][27]_i_2_n_0 ;
  wire \bram0b[o][o_din][27]_i_3_n_0 ;
  wire \bram0b[o][o_din][28]_i_2_n_0 ;
  wire \bram0b[o][o_din][28]_i_3_n_0 ;
  wire \bram0b[o][o_din][29]_i_2_n_0 ;
  wire \bram0b[o][o_din][29]_i_3_n_0 ;
  wire \bram0b[o][o_din][2]_i_2_n_0 ;
  wire \bram0b[o][o_din][2]_i_3_n_0 ;
  wire \bram0b[o][o_din][30]_i_2_n_0 ;
  wire \bram0b[o][o_din][30]_i_3_n_0 ;
  wire \bram0b[o][o_din][31]_i_10_n_0 ;
  wire \bram0b[o][o_din][31]_i_11_n_0 ;
  wire \bram0b[o][o_din][31]_i_12_n_0 ;
  wire \bram0b[o][o_din][31]_i_15_n_0 ;
  wire \bram0b[o][o_din][31]_i_16_n_0 ;
  wire \bram0b[o][o_din][31]_i_19_n_0 ;
  wire \bram0b[o][o_din][31]_i_1_n_0 ;
  wire \bram0b[o][o_din][31]_i_20_n_0 ;
  wire \bram0b[o][o_din][31]_i_21_n_0 ;
  wire \bram0b[o][o_din][31]_i_22_n_0 ;
  wire \bram0b[o][o_din][31]_i_23_n_0 ;
  wire \bram0b[o][o_din][31]_i_24_n_0 ;
  wire \bram0b[o][o_din][31]_i_25_n_0 ;
  wire \bram0b[o][o_din][31]_i_26_n_0 ;
  wire \bram0b[o][o_din][31]_i_27_n_0 ;
  wire \bram0b[o][o_din][31]_i_28_n_0 ;
  wire \bram0b[o][o_din][31]_i_29_n_0 ;
  wire \bram0b[o][o_din][31]_i_30_n_0 ;
  wire \bram0b[o][o_din][31]_i_32_n_0 ;
  wire \bram0b[o][o_din][31]_i_33_n_0 ;
  wire \bram0b[o][o_din][31]_i_34_n_0 ;
  wire \bram0b[o][o_din][31]_i_35_n_0 ;
  wire \bram0b[o][o_din][31]_i_37_n_0 ;
  wire \bram0b[o][o_din][31]_i_38_n_0 ;
  wire \bram0b[o][o_din][31]_i_39_n_0 ;
  wire \bram0b[o][o_din][31]_i_3_n_0 ;
  wire \bram0b[o][o_din][31]_i_40_n_0 ;
  wire \bram0b[o][o_din][31]_i_43_n_0 ;
  wire \bram0b[o][o_din][31]_i_44_n_0 ;
  wire \bram0b[o][o_din][31]_i_45_n_0 ;
  wire \bram0b[o][o_din][31]_i_46_n_0 ;
  wire \bram0b[o][o_din][31]_i_47_n_0 ;
  wire \bram0b[o][o_din][31]_i_48_n_0 ;
  wire \bram0b[o][o_din][31]_i_49_n_0 ;
  wire \bram0b[o][o_din][31]_i_4_n_0 ;
  wire \bram0b[o][o_din][31]_i_50_n_0 ;
  wire \bram0b[o][o_din][31]_i_51_n_0 ;
  wire \bram0b[o][o_din][31]_i_52_n_0 ;
  wire \bram0b[o][o_din][31]_i_53_n_0 ;
  wire \bram0b[o][o_din][31]_i_54_n_0 ;
  wire \bram0b[o][o_din][31]_i_55_n_0 ;
  wire \bram0b[o][o_din][31]_i_56_n_0 ;
  wire \bram0b[o][o_din][31]_i_57_n_0 ;
  wire \bram0b[o][o_din][31]_i_58_n_0 ;
  wire \bram0b[o][o_din][31]_i_59_n_0 ;
  wire \bram0b[o][o_din][31]_i_62_n_0 ;
  wire \bram0b[o][o_din][31]_i_63_n_0 ;
  wire \bram0b[o][o_din][31]_i_64_n_0 ;
  wire \bram0b[o][o_din][31]_i_65_n_0 ;
  wire \bram0b[o][o_din][31]_i_66_n_0 ;
  wire \bram0b[o][o_din][31]_i_67_n_0 ;
  wire \bram0b[o][o_din][31]_i_68_n_0 ;
  wire \bram0b[o][o_din][31]_i_69_n_0 ;
  wire \bram0b[o][o_din][31]_i_6_n_0 ;
  wire \bram0b[o][o_din][31]_i_70_n_0 ;
  wire \bram0b[o][o_din][31]_i_71_n_0 ;
  wire \bram0b[o][o_din][31]_i_72_n_0 ;
  wire \bram0b[o][o_din][31]_i_73_n_0 ;
  wire \bram0b[o][o_din][31]_i_74_n_0 ;
  wire \bram0b[o][o_din][31]_i_75_n_0 ;
  wire \bram0b[o][o_din][31]_i_76_n_0 ;
  wire \bram0b[o][o_din][31]_i_77_n_0 ;
  wire \bram0b[o][o_din][31]_i_78_n_0 ;
  wire \bram0b[o][o_din][31]_i_79_n_0 ;
  wire \bram0b[o][o_din][31]_i_7_n_0 ;
  wire \bram0b[o][o_din][31]_i_80_n_0 ;
  wire \bram0b[o][o_din][31]_i_81_n_0 ;
  wire \bram0b[o][o_din][31]_i_82_n_0 ;
  wire \bram0b[o][o_din][31]_i_83_n_0 ;
  wire \bram0b[o][o_din][31]_i_84_n_0 ;
  wire \bram0b[o][o_din][31]_i_85_n_0 ;
  wire \bram0b[o][o_din][31]_i_86_n_0 ;
  wire \bram0b[o][o_din][31]_i_87_n_0 ;
  wire \bram0b[o][o_din][31]_i_88_n_0 ;
  wire \bram0b[o][o_din][31]_i_89_n_0 ;
  wire \bram0b[o][o_din][31]_i_90_n_0 ;
  wire \bram0b[o][o_din][31]_i_91_n_0 ;
  wire \bram0b[o][o_din][31]_i_92_n_0 ;
  wire \bram0b[o][o_din][31]_i_93_n_0 ;
  wire \bram0b[o][o_din][31]_i_94_n_0 ;
  wire \bram0b[o][o_din][31]_i_95_n_0 ;
  wire \bram0b[o][o_din][31]_i_9_n_0 ;
  wire \bram0b[o][o_din][3]_i_2_n_0 ;
  wire \bram0b[o][o_din][3]_i_3_n_0 ;
  wire \bram0b[o][o_din][4]_i_2_n_0 ;
  wire \bram0b[o][o_din][4]_i_3_n_0 ;
  wire \bram0b[o][o_din][5]_i_2_n_0 ;
  wire \bram0b[o][o_din][5]_i_3_n_0 ;
  wire \bram0b[o][o_din][6]_i_2_n_0 ;
  wire \bram0b[o][o_din][6]_i_3_n_0 ;
  wire \bram0b[o][o_din][7]_i_2_n_0 ;
  wire \bram0b[o][o_din][7]_i_3_n_0 ;
  wire \bram0b[o][o_din][8]_i_2_n_0 ;
  wire \bram0b[o][o_din][8]_i_3_n_0 ;
  wire \bram0b[o][o_din][9]_i_2_n_0 ;
  wire \bram0b[o][o_din][9]_i_3_n_0 ;
  wire \bram0b[o][o_en]_i_1_n_0 ;
  wire [1:1]\bram0b[o][o_we] ;
  wire \bram0b[o][o_we][1]_i_1_n_0 ;
  wire \bram0b[o][o_we][2]_i_1_n_0 ;
  wire \bram0b[o][o_we][3]_i_1_n_0 ;
  wire \bram0b[o][o_we][3]_i_3_n_0 ;
  wire \bram0b[o][o_we][3]_i_4_n_0 ;
  wire \bram0b[o][o_we][3]_i_5_n_0 ;
  wire \bram0b_reg[o][o_addr][12]_i_1_n_2 ;
  wire \bram0b_reg[o][o_addr][12]_i_1_n_3 ;
  wire \bram0b_reg[o][o_addr][4]_i_1_n_0 ;
  wire \bram0b_reg[o][o_addr][4]_i_1_n_1 ;
  wire \bram0b_reg[o][o_addr][4]_i_1_n_2 ;
  wire \bram0b_reg[o][o_addr][4]_i_1_n_3 ;
  wire \bram0b_reg[o][o_addr][8]_i_1_n_0 ;
  wire \bram0b_reg[o][o_addr][8]_i_1_n_1 ;
  wire \bram0b_reg[o][o_addr][8]_i_1_n_2 ;
  wire \bram0b_reg[o][o_addr][8]_i_1_n_3 ;
  wire \bram0b_reg[o][o_din][15]_i_2_n_7 ;
  wire \bram0b_reg[o][o_din][15]_i_6_n_0 ;
  wire \bram0b_reg[o][o_din][15]_i_6_n_1 ;
  wire \bram0b_reg[o][o_din][15]_i_6_n_2 ;
  wire \bram0b_reg[o][o_din][15]_i_6_n_3 ;
  wire \bram0b_reg[o][o_din][15]_i_6_n_4 ;
  wire \bram0b_reg[o][o_din][15]_i_6_n_5 ;
  wire \bram0b_reg[o][o_din][15]_i_6_n_6 ;
  wire \bram0b_reg[o][o_din][15]_i_6_n_7 ;
  wire \bram0b_reg[o][o_din][31]_i_13_n_0 ;
  wire \bram0b_reg[o][o_din][31]_i_13_n_1 ;
  wire \bram0b_reg[o][o_din][31]_i_13_n_2 ;
  wire \bram0b_reg[o][o_din][31]_i_13_n_3 ;
  wire \bram0b_reg[o][o_din][31]_i_13_n_4 ;
  wire \bram0b_reg[o][o_din][31]_i_13_n_5 ;
  wire \bram0b_reg[o][o_din][31]_i_13_n_6 ;
  wire \bram0b_reg[o][o_din][31]_i_13_n_7 ;
  wire \bram0b_reg[o][o_din][31]_i_14_n_0 ;
  wire \bram0b_reg[o][o_din][31]_i_14_n_1 ;
  wire \bram0b_reg[o][o_din][31]_i_14_n_2 ;
  wire \bram0b_reg[o][o_din][31]_i_14_n_3 ;
  wire \bram0b_reg[o][o_din][31]_i_14_n_4 ;
  wire \bram0b_reg[o][o_din][31]_i_14_n_5 ;
  wire \bram0b_reg[o][o_din][31]_i_14_n_6 ;
  wire \bram0b_reg[o][o_din][31]_i_14_n_7 ;
  wire \bram0b_reg[o][o_din][31]_i_17_n_0 ;
  wire \bram0b_reg[o][o_din][31]_i_17_n_1 ;
  wire \bram0b_reg[o][o_din][31]_i_17_n_2 ;
  wire \bram0b_reg[o][o_din][31]_i_17_n_3 ;
  wire \bram0b_reg[o][o_din][31]_i_17_n_4 ;
  wire \bram0b_reg[o][o_din][31]_i_17_n_5 ;
  wire \bram0b_reg[o][o_din][31]_i_17_n_6 ;
  wire \bram0b_reg[o][o_din][31]_i_17_n_7 ;
  wire \bram0b_reg[o][o_din][31]_i_18_n_0 ;
  wire \bram0b_reg[o][o_din][31]_i_18_n_1 ;
  wire \bram0b_reg[o][o_din][31]_i_18_n_2 ;
  wire \bram0b_reg[o][o_din][31]_i_18_n_3 ;
  wire \bram0b_reg[o][o_din][31]_i_18_n_4 ;
  wire \bram0b_reg[o][o_din][31]_i_18_n_5 ;
  wire \bram0b_reg[o][o_din][31]_i_18_n_6 ;
  wire \bram0b_reg[o][o_din][31]_i_18_n_7 ;
  wire \bram0b_reg[o][o_din][31]_i_31_n_0 ;
  wire \bram0b_reg[o][o_din][31]_i_31_n_1 ;
  wire \bram0b_reg[o][o_din][31]_i_31_n_2 ;
  wire \bram0b_reg[o][o_din][31]_i_31_n_3 ;
  wire \bram0b_reg[o][o_din][31]_i_31_n_4 ;
  wire \bram0b_reg[o][o_din][31]_i_31_n_5 ;
  wire \bram0b_reg[o][o_din][31]_i_31_n_6 ;
  wire \bram0b_reg[o][o_din][31]_i_31_n_7 ;
  wire \bram0b_reg[o][o_din][31]_i_36_n_0 ;
  wire \bram0b_reg[o][o_din][31]_i_36_n_1 ;
  wire \bram0b_reg[o][o_din][31]_i_36_n_2 ;
  wire \bram0b_reg[o][o_din][31]_i_36_n_3 ;
  wire \bram0b_reg[o][o_din][31]_i_41_n_0 ;
  wire \bram0b_reg[o][o_din][31]_i_41_n_1 ;
  wire \bram0b_reg[o][o_din][31]_i_41_n_2 ;
  wire \bram0b_reg[o][o_din][31]_i_41_n_3 ;
  wire \bram0b_reg[o][o_din][31]_i_41_n_4 ;
  wire \bram0b_reg[o][o_din][31]_i_41_n_5 ;
  wire \bram0b_reg[o][o_din][31]_i_41_n_6 ;
  wire \bram0b_reg[o][o_din][31]_i_41_n_7 ;
  wire \bram0b_reg[o][o_din][31]_i_42_n_0 ;
  wire \bram0b_reg[o][o_din][31]_i_42_n_1 ;
  wire \bram0b_reg[o][o_din][31]_i_42_n_2 ;
  wire \bram0b_reg[o][o_din][31]_i_42_n_3 ;
  wire \bram0b_reg[o][o_din][31]_i_42_n_4 ;
  wire \bram0b_reg[o][o_din][31]_i_42_n_5 ;
  wire \bram0b_reg[o][o_din][31]_i_42_n_6 ;
  wire \bram0b_reg[o][o_din][31]_i_42_n_7 ;
  wire \bram0b_reg[o][o_din][31]_i_5_n_0 ;
  wire \bram0b_reg[o][o_din][31]_i_5_n_1 ;
  wire \bram0b_reg[o][o_din][31]_i_5_n_2 ;
  wire \bram0b_reg[o][o_din][31]_i_5_n_3 ;
  wire \bram0b_reg[o][o_din][31]_i_5_n_4 ;
  wire \bram0b_reg[o][o_din][31]_i_5_n_5 ;
  wire \bram0b_reg[o][o_din][31]_i_5_n_6 ;
  wire \bram0b_reg[o][o_din][31]_i_60_n_0 ;
  wire \bram0b_reg[o][o_din][31]_i_60_n_1 ;
  wire \bram0b_reg[o][o_din][31]_i_60_n_2 ;
  wire \bram0b_reg[o][o_din][31]_i_60_n_3 ;
  wire \bram0b_reg[o][o_din][31]_i_60_n_4 ;
  wire \bram0b_reg[o][o_din][31]_i_60_n_5 ;
  wire \bram0b_reg[o][o_din][31]_i_60_n_6 ;
  wire \bram0b_reg[o][o_din][31]_i_60_n_7 ;
  wire \bram0b_reg[o][o_din][31]_i_61_n_0 ;
  wire \bram0b_reg[o][o_din][31]_i_61_n_1 ;
  wire \bram0b_reg[o][o_din][31]_i_61_n_2 ;
  wire \bram0b_reg[o][o_din][31]_i_61_n_3 ;
  wire \bram0b_reg[o][o_din][31]_i_61_n_4 ;
  wire \bram0b_reg[o][o_din][31]_i_61_n_5 ;
  wire \bram0b_reg[o][o_din][31]_i_61_n_6 ;
  wire \bram0b_reg[o][o_din][31]_i_61_n_7 ;
  wire \bram0b_reg[o][o_din][31]_i_8_n_0 ;
  wire \bram0b_reg[o][o_din][31]_i_8_n_1 ;
  wire \bram0b_reg[o][o_din][31]_i_8_n_2 ;
  wire \bram0b_reg[o][o_din][31]_i_8_n_3 ;
  wire \bram0b_reg[o][o_din][31]_i_8_n_4 ;
  wire \bram0b_reg[o][o_din][31]_i_8_n_5 ;
  wire \bram0b_reg[o][o_din][31]_i_8_n_6 ;
  wire \bram0b_reg[o][o_din][31]_i_8_n_7 ;
  wire \bram1a[o][o_addr][16]_i_1_n_0 ;
  wire \bram1a[o][o_addr][16]_i_2_n_0 ;
  wire \bram1a[o][o_addr][16]_i_3_n_0 ;
  wire \bram1a[o][o_addr][5]_i_2_n_0 ;
  wire \bram1a[o][o_addr][5]_i_3_n_0 ;
  wire \bram1a[o][o_addr][5]_i_4_n_0 ;
  wire \bram1a[o][o_addr][5]_i_5_n_0 ;
  wire \bram1a[o][o_addr][9]_i_2_n_0 ;
  wire \bram1a[o][o_addr][9]_i_3_n_0 ;
  wire \bram1a[o][o_addr][9]_i_4_n_0 ;
  wire \bram1a[o][o_addr][9]_i_5_n_0 ;
  wire \bram1a[o][o_addr][9]_i_6_n_0 ;
  wire \bram1a[o][o_addr][9]_i_7_n_0 ;
  wire \bram1a[o][o_en]_i_1_n_0 ;
  wire \bram1a[o][o_en]_i_2_n_0 ;
  wire \bram1a_reg[o][o_addr][5]_i_1_n_0 ;
  wire \bram1a_reg[o][o_addr][5]_i_1_n_1 ;
  wire \bram1a_reg[o][o_addr][5]_i_1_n_2 ;
  wire \bram1a_reg[o][o_addr][5]_i_1_n_3 ;
  wire \bram1a_reg[o][o_addr][9]_i_1_n_2 ;
  wire \bram1a_reg[o][o_addr][9]_i_1_n_3 ;
  wire [2:1]bytes_first_line;
  wire \bytes_first_line[1]_i_3_n_0 ;
  wire \bytes_first_line[1]_i_4_n_0 ;
  wire \bytes_first_line[1]_i_5_n_0 ;
  wire \bytes_first_line[1]_i_6_n_0 ;
  wire \bytes_first_line[1]_i_7_n_0 ;
  wire \bytes_first_line[2]_i_11_n_0 ;
  wire \bytes_first_line[2]_i_13_n_0 ;
  wire \bytes_first_line[2]_i_14_n_0 ;
  wire \bytes_first_line[2]_i_15_n_0 ;
  wire \bytes_first_line[2]_i_16_n_0 ;
  wire \bytes_first_line[2]_i_17_n_0 ;
  wire \bytes_first_line[2]_i_18_n_0 ;
  wire \bytes_first_line[2]_i_19_n_0 ;
  wire \bytes_first_line[2]_i_1_n_0 ;
  wire \bytes_first_line[2]_i_20_n_0 ;
  wire \bytes_first_line[2]_i_21_n_0 ;
  wire \bytes_first_line[2]_i_4_n_0 ;
  wire \bytes_first_line[2]_i_5_n_0 ;
  wire \bytes_first_line[2]_i_6_n_0 ;
  wire \bytes_first_line_reg[1]_i_2_n_0 ;
  wire \bytes_first_line_reg[1]_i_2_n_1 ;
  wire \bytes_first_line_reg[1]_i_2_n_2 ;
  wire \bytes_first_line_reg[1]_i_2_n_3 ;
  wire \bytes_first_line_reg[1]_i_2_n_4 ;
  wire \bytes_first_line_reg[1]_i_2_n_5 ;
  wire \bytes_first_line_reg[1]_i_2_n_6 ;
  wire \bytes_first_line_reg[2]_i_10_n_0 ;
  wire \bytes_first_line_reg[2]_i_10_n_1 ;
  wire \bytes_first_line_reg[2]_i_10_n_2 ;
  wire \bytes_first_line_reg[2]_i_10_n_3 ;
  wire \bytes_first_line_reg[2]_i_10_n_4 ;
  wire \bytes_first_line_reg[2]_i_10_n_5 ;
  wire \bytes_first_line_reg[2]_i_10_n_6 ;
  wire \bytes_first_line_reg[2]_i_10_n_7 ;
  wire \bytes_first_line_reg[2]_i_12_n_0 ;
  wire \bytes_first_line_reg[2]_i_12_n_1 ;
  wire \bytes_first_line_reg[2]_i_12_n_2 ;
  wire \bytes_first_line_reg[2]_i_12_n_3 ;
  wire \bytes_first_line_reg[2]_i_3_n_2 ;
  wire \bytes_first_line_reg[2]_i_3_n_3 ;
  wire \bytes_first_line_reg[2]_i_7_n_0 ;
  wire \bytes_first_line_reg[2]_i_7_n_1 ;
  wire \bytes_first_line_reg[2]_i_7_n_2 ;
  wire \bytes_first_line_reg[2]_i_7_n_3 ;
  wire \bytes_first_line_reg[2]_i_8_n_2 ;
  wire \bytes_first_line_reg[2]_i_8_n_7 ;
  wire \bytes_first_line_reg[2]_i_9_n_0 ;
  wire \bytes_first_line_reg[2]_i_9_n_1 ;
  wire \bytes_first_line_reg[2]_i_9_n_2 ;
  wire \bytes_first_line_reg[2]_i_9_n_3 ;
  wire \bytes_first_line_reg_n_0_[1] ;
  wire \bytes_first_line_reg_n_0_[2] ;
  wire [2:1]bytes_second_line;
  wire \bytes_second_line_reg_n_0_[1] ;
  wire \bytes_second_line_reg_n_0_[2] ;
  wire clk;
  wire [1:1]data2;
  wire g0_b0__0_n_0;
  wire g0_b0__1_n_0;
  wire g0_b0_n_0;
  wire [5:0]i;
  wire \i[1]_i_1_n_0 ;
  wire \i[5]_i_1_n_0 ;
  wire \i[5]_i_3_n_0 ;
  wire i_enable;
  wire [31:0]i_mem0a_dout;
  wire [31:0]i_mem0b_dout;
  wire [31:0]i_mem1a_dout;
  wire \i_reg_n_0_[0] ;
  wire \i_reg_n_0_[1] ;
  wire \i_reg_n_0_[2] ;
  wire \i_reg_n_0_[3] ;
  wire \i_reg_n_0_[4] ;
  wire \i_reg_n_0_[5] ;
  wire \j[0]_i_1_n_0 ;
  wire \j[1]_i_1_n_0 ;
  wire \j[2]_i_1_n_0 ;
  wire \j[2]_i_2_n_0 ;
  wire \j_reg_n_0_[0] ;
  wire \j_reg_n_0_[1] ;
  wire \j_reg_n_0_[2] ;
  wire [3:0]l;
  wire \l[1]_i_1_n_0 ;
  wire \l[2]_i_1_n_0 ;
  wire \l_reg_n_0_[0] ;
  wire \l_reg_n_0_[1] ;
  wire \l_reg_n_0_[2] ;
  wire \l_reg_n_0_[3] ;
  wire [47:0]mempcpy_scratch;
  wire [31:30]mempcpy_scratch30_out;
  wire [5:5]mempcpy_scratch4;
  wire \mempcpy_scratch[0]_i_1_n_0 ;
  wire \mempcpy_scratch[0]_i_2_n_0 ;
  wire \mempcpy_scratch[0]_i_3_n_0 ;
  wire \mempcpy_scratch[0]_i_4_n_0 ;
  wire \mempcpy_scratch[0]_i_5_n_0 ;
  wire \mempcpy_scratch[0]_i_6_n_0 ;
  wire \mempcpy_scratch[10]_i_1_n_0 ;
  wire \mempcpy_scratch[10]_i_2_n_0 ;
  wire \mempcpy_scratch[10]_i_3_n_0 ;
  wire \mempcpy_scratch[10]_i_4_n_0 ;
  wire \mempcpy_scratch[10]_i_5_n_0 ;
  wire \mempcpy_scratch[10]_i_6_n_0 ;
  wire \mempcpy_scratch[10]_i_7_n_0 ;
  wire \mempcpy_scratch[11]_i_1_n_0 ;
  wire \mempcpy_scratch[11]_i_2_n_0 ;
  wire \mempcpy_scratch[11]_i_3_n_0 ;
  wire \mempcpy_scratch[11]_i_4_n_0 ;
  wire \mempcpy_scratch[11]_i_5_n_0 ;
  wire \mempcpy_scratch[11]_i_6_n_0 ;
  wire \mempcpy_scratch[11]_i_7_n_0 ;
  wire \mempcpy_scratch[12]_i_1_n_0 ;
  wire \mempcpy_scratch[12]_i_2_n_0 ;
  wire \mempcpy_scratch[12]_i_3_n_0 ;
  wire \mempcpy_scratch[12]_i_4_n_0 ;
  wire \mempcpy_scratch[12]_i_5_n_0 ;
  wire \mempcpy_scratch[12]_i_6_n_0 ;
  wire \mempcpy_scratch[12]_i_7_n_0 ;
  wire \mempcpy_scratch[13]_i_1_n_0 ;
  wire \mempcpy_scratch[13]_i_2_n_0 ;
  wire \mempcpy_scratch[13]_i_3_n_0 ;
  wire \mempcpy_scratch[13]_i_4_n_0 ;
  wire \mempcpy_scratch[13]_i_5_n_0 ;
  wire \mempcpy_scratch[13]_i_6_n_0 ;
  wire \mempcpy_scratch[13]_i_7_n_0 ;
  wire \mempcpy_scratch[14]_i_1_n_0 ;
  wire \mempcpy_scratch[14]_i_2_n_0 ;
  wire \mempcpy_scratch[14]_i_3_n_0 ;
  wire \mempcpy_scratch[14]_i_4_n_0 ;
  wire \mempcpy_scratch[14]_i_5_n_0 ;
  wire \mempcpy_scratch[14]_i_6_n_0 ;
  wire \mempcpy_scratch[14]_i_7_n_0 ;
  wire \mempcpy_scratch[15]_i_10_n_0 ;
  wire \mempcpy_scratch[15]_i_11_n_0 ;
  wire \mempcpy_scratch[15]_i_12_n_0 ;
  wire \mempcpy_scratch[15]_i_13_n_0 ;
  wire \mempcpy_scratch[15]_i_16_n_0 ;
  wire \mempcpy_scratch[15]_i_17_n_0 ;
  wire \mempcpy_scratch[15]_i_18_n_0 ;
  wire \mempcpy_scratch[15]_i_19_n_0 ;
  wire \mempcpy_scratch[15]_i_1_n_0 ;
  wire \mempcpy_scratch[15]_i_20_n_0 ;
  wire \mempcpy_scratch[15]_i_21_n_0 ;
  wire \mempcpy_scratch[15]_i_22_n_0 ;
  wire \mempcpy_scratch[15]_i_23_n_0 ;
  wire \mempcpy_scratch[15]_i_25_n_0 ;
  wire \mempcpy_scratch[15]_i_26_n_0 ;
  wire \mempcpy_scratch[15]_i_27_n_0 ;
  wire \mempcpy_scratch[15]_i_28_n_0 ;
  wire \mempcpy_scratch[15]_i_29_n_0 ;
  wire \mempcpy_scratch[15]_i_30_n_0 ;
  wire \mempcpy_scratch[15]_i_31_n_0 ;
  wire \mempcpy_scratch[15]_i_32_n_0 ;
  wire \mempcpy_scratch[15]_i_34_n_0 ;
  wire \mempcpy_scratch[15]_i_35_n_0 ;
  wire \mempcpy_scratch[15]_i_36_n_0 ;
  wire \mempcpy_scratch[15]_i_37_n_0 ;
  wire \mempcpy_scratch[15]_i_39_n_0 ;
  wire \mempcpy_scratch[15]_i_3_n_0 ;
  wire \mempcpy_scratch[15]_i_40_n_0 ;
  wire \mempcpy_scratch[15]_i_41_n_0 ;
  wire \mempcpy_scratch[15]_i_42_n_0 ;
  wire \mempcpy_scratch[15]_i_44_n_0 ;
  wire \mempcpy_scratch[15]_i_45_n_0 ;
  wire \mempcpy_scratch[15]_i_46_n_0 ;
  wire \mempcpy_scratch[15]_i_47_n_0 ;
  wire \mempcpy_scratch[15]_i_49_n_0 ;
  wire \mempcpy_scratch[15]_i_4_n_0 ;
  wire \mempcpy_scratch[15]_i_50_n_0 ;
  wire \mempcpy_scratch[15]_i_51_n_0 ;
  wire \mempcpy_scratch[15]_i_52_n_0 ;
  wire \mempcpy_scratch[15]_i_53_n_0 ;
  wire \mempcpy_scratch[15]_i_54_n_0 ;
  wire \mempcpy_scratch[15]_i_5_n_0 ;
  wire \mempcpy_scratch[15]_i_6_n_0 ;
  wire \mempcpy_scratch[15]_i_9_n_0 ;
  wire \mempcpy_scratch[16]_i_1_n_0 ;
  wire \mempcpy_scratch[16]_i_2_n_0 ;
  wire \mempcpy_scratch[16]_i_3_n_0 ;
  wire \mempcpy_scratch[16]_i_4_n_0 ;
  wire \mempcpy_scratch[16]_i_5_n_0 ;
  wire \mempcpy_scratch[17]_i_1_n_0 ;
  wire \mempcpy_scratch[17]_i_2_n_0 ;
  wire \mempcpy_scratch[17]_i_3_n_0 ;
  wire \mempcpy_scratch[17]_i_4_n_0 ;
  wire \mempcpy_scratch[17]_i_5_n_0 ;
  wire \mempcpy_scratch[17]_i_6_n_0 ;
  wire \mempcpy_scratch[18]_i_1_n_0 ;
  wire \mempcpy_scratch[18]_i_2_n_0 ;
  wire \mempcpy_scratch[18]_i_3_n_0 ;
  wire \mempcpy_scratch[18]_i_4_n_0 ;
  wire \mempcpy_scratch[18]_i_5_n_0 ;
  wire \mempcpy_scratch[18]_i_6_n_0 ;
  wire \mempcpy_scratch[19]_i_1_n_0 ;
  wire \mempcpy_scratch[19]_i_2_n_0 ;
  wire \mempcpy_scratch[19]_i_3_n_0 ;
  wire \mempcpy_scratch[19]_i_4_n_0 ;
  wire \mempcpy_scratch[19]_i_5_n_0 ;
  wire \mempcpy_scratch[19]_i_6_n_0 ;
  wire \mempcpy_scratch[1]_i_1_n_0 ;
  wire \mempcpy_scratch[1]_i_2_n_0 ;
  wire \mempcpy_scratch[1]_i_3_n_0 ;
  wire \mempcpy_scratch[1]_i_4_n_0 ;
  wire \mempcpy_scratch[1]_i_5_n_0 ;
  wire \mempcpy_scratch[1]_i_6_n_0 ;
  wire \mempcpy_scratch[20]_i_1_n_0 ;
  wire \mempcpy_scratch[20]_i_2_n_0 ;
  wire \mempcpy_scratch[20]_i_3_n_0 ;
  wire \mempcpy_scratch[20]_i_4_n_0 ;
  wire \mempcpy_scratch[20]_i_5_n_0 ;
  wire \mempcpy_scratch[20]_i_6_n_0 ;
  wire \mempcpy_scratch[21]_i_1_n_0 ;
  wire \mempcpy_scratch[21]_i_2_n_0 ;
  wire \mempcpy_scratch[21]_i_3_n_0 ;
  wire \mempcpy_scratch[21]_i_4_n_0 ;
  wire \mempcpy_scratch[21]_i_5_n_0 ;
  wire \mempcpy_scratch[21]_i_6_n_0 ;
  wire \mempcpy_scratch[22]_i_1_n_0 ;
  wire \mempcpy_scratch[22]_i_2_n_0 ;
  wire \mempcpy_scratch[22]_i_3_n_0 ;
  wire \mempcpy_scratch[22]_i_4_n_0 ;
  wire \mempcpy_scratch[22]_i_5_n_0 ;
  wire \mempcpy_scratch[22]_i_6_n_0 ;
  wire \mempcpy_scratch[23]_i_1_n_0 ;
  wire \mempcpy_scratch[23]_i_2_n_0 ;
  wire \mempcpy_scratch[23]_i_3_n_0 ;
  wire \mempcpy_scratch[23]_i_4_n_0 ;
  wire \mempcpy_scratch[23]_i_5_n_0 ;
  wire \mempcpy_scratch[23]_i_6_n_0 ;
  wire \mempcpy_scratch[23]_i_7_n_0 ;
  wire \mempcpy_scratch[24]_i_1_n_0 ;
  wire \mempcpy_scratch[24]_i_2_n_0 ;
  wire \mempcpy_scratch[24]_i_3_n_0 ;
  wire \mempcpy_scratch[24]_i_4_n_0 ;
  wire \mempcpy_scratch[24]_i_5_n_0 ;
  wire \mempcpy_scratch[25]_i_1_n_0 ;
  wire \mempcpy_scratch[25]_i_2_n_0 ;
  wire \mempcpy_scratch[25]_i_3_n_0 ;
  wire \mempcpy_scratch[25]_i_4_n_0 ;
  wire \mempcpy_scratch[25]_i_5_n_0 ;
  wire \mempcpy_scratch[26]_i_1_n_0 ;
  wire \mempcpy_scratch[26]_i_2_n_0 ;
  wire \mempcpy_scratch[26]_i_3_n_0 ;
  wire \mempcpy_scratch[26]_i_4_n_0 ;
  wire \mempcpy_scratch[26]_i_5_n_0 ;
  wire \mempcpy_scratch[27]_i_1_n_0 ;
  wire \mempcpy_scratch[27]_i_2_n_0 ;
  wire \mempcpy_scratch[27]_i_3_n_0 ;
  wire \mempcpy_scratch[27]_i_4_n_0 ;
  wire \mempcpy_scratch[27]_i_5_n_0 ;
  wire \mempcpy_scratch[28]_i_1_n_0 ;
  wire \mempcpy_scratch[28]_i_2_n_0 ;
  wire \mempcpy_scratch[28]_i_3_n_0 ;
  wire \mempcpy_scratch[28]_i_4_n_0 ;
  wire \mempcpy_scratch[28]_i_5_n_0 ;
  wire \mempcpy_scratch[29]_i_1_n_0 ;
  wire \mempcpy_scratch[29]_i_2_n_0 ;
  wire \mempcpy_scratch[29]_i_3_n_0 ;
  wire \mempcpy_scratch[29]_i_4_n_0 ;
  wire \mempcpy_scratch[29]_i_5_n_0 ;
  wire \mempcpy_scratch[2]_i_1_n_0 ;
  wire \mempcpy_scratch[2]_i_2_n_0 ;
  wire \mempcpy_scratch[2]_i_3_n_0 ;
  wire \mempcpy_scratch[2]_i_4_n_0 ;
  wire \mempcpy_scratch[2]_i_5_n_0 ;
  wire \mempcpy_scratch[2]_i_6_n_0 ;
  wire \mempcpy_scratch[30]_i_1_n_0 ;
  wire \mempcpy_scratch[30]_i_2_n_0 ;
  wire \mempcpy_scratch[30]_i_3_n_0 ;
  wire \mempcpy_scratch[30]_i_4_n_0 ;
  wire \mempcpy_scratch[30]_i_5_n_0 ;
  wire \mempcpy_scratch[30]_i_6_n_0 ;
  wire \mempcpy_scratch[30]_i_7_n_0 ;
  wire \mempcpy_scratch[30]_i_8_n_0 ;
  wire \mempcpy_scratch[30]_i_9_n_0 ;
  wire \mempcpy_scratch[31]_i_10_n_0 ;
  wire \mempcpy_scratch[31]_i_12_n_0 ;
  wire \mempcpy_scratch[31]_i_13_n_0 ;
  wire \mempcpy_scratch[31]_i_14_n_0 ;
  wire \mempcpy_scratch[31]_i_16_n_0 ;
  wire \mempcpy_scratch[31]_i_17_n_0 ;
  wire \mempcpy_scratch[31]_i_18_n_0 ;
  wire \mempcpy_scratch[31]_i_19_n_0 ;
  wire \mempcpy_scratch[31]_i_1_n_0 ;
  wire \mempcpy_scratch[31]_i_21_n_0 ;
  wire \mempcpy_scratch[31]_i_22_n_0 ;
  wire \mempcpy_scratch[31]_i_23_n_0 ;
  wire \mempcpy_scratch[31]_i_24_n_0 ;
  wire \mempcpy_scratch[31]_i_25_n_0 ;
  wire \mempcpy_scratch[31]_i_26_n_0 ;
  wire \mempcpy_scratch[31]_i_27_n_0 ;
  wire \mempcpy_scratch[31]_i_28_n_0 ;
  wire \mempcpy_scratch[31]_i_29_n_0 ;
  wire \mempcpy_scratch[31]_i_2_n_0 ;
  wire \mempcpy_scratch[31]_i_30_n_0 ;
  wire \mempcpy_scratch[31]_i_31_n_0 ;
  wire \mempcpy_scratch[31]_i_32_n_0 ;
  wire \mempcpy_scratch[31]_i_33_n_0 ;
  wire \mempcpy_scratch[31]_i_36_n_0 ;
  wire \mempcpy_scratch[31]_i_38_n_0 ;
  wire \mempcpy_scratch[31]_i_39_n_0 ;
  wire \mempcpy_scratch[31]_i_3_n_0 ;
  wire \mempcpy_scratch[31]_i_40_n_0 ;
  wire \mempcpy_scratch[31]_i_41_n_0 ;
  wire \mempcpy_scratch[31]_i_42_n_0 ;
  wire \mempcpy_scratch[31]_i_43_n_0 ;
  wire \mempcpy_scratch[31]_i_44_n_0 ;
  wire \mempcpy_scratch[31]_i_45_n_0 ;
  wire \mempcpy_scratch[31]_i_46_n_0 ;
  wire \mempcpy_scratch[31]_i_47_n_0 ;
  wire \mempcpy_scratch[31]_i_48_n_0 ;
  wire \mempcpy_scratch[31]_i_49_n_0 ;
  wire \mempcpy_scratch[31]_i_4_n_0 ;
  wire \mempcpy_scratch[31]_i_50_n_0 ;
  wire \mempcpy_scratch[31]_i_51_n_0 ;
  wire \mempcpy_scratch[31]_i_52_n_0 ;
  wire \mempcpy_scratch[31]_i_53_n_0 ;
  wire \mempcpy_scratch[31]_i_54_n_0 ;
  wire \mempcpy_scratch[31]_i_55_n_0 ;
  wire \mempcpy_scratch[31]_i_56_n_0 ;
  wire \mempcpy_scratch[31]_i_57_n_0 ;
  wire \mempcpy_scratch[31]_i_58_n_0 ;
  wire \mempcpy_scratch[31]_i_59_n_0 ;
  wire \mempcpy_scratch[31]_i_5_n_0 ;
  wire \mempcpy_scratch[31]_i_60_n_0 ;
  wire \mempcpy_scratch[31]_i_61_n_0 ;
  wire \mempcpy_scratch[31]_i_62_n_0 ;
  wire \mempcpy_scratch[31]_i_63_n_0 ;
  wire \mempcpy_scratch[31]_i_64_n_0 ;
  wire \mempcpy_scratch[31]_i_65_n_0 ;
  wire \mempcpy_scratch[31]_i_66_n_0 ;
  wire \mempcpy_scratch[31]_i_67_n_0 ;
  wire \mempcpy_scratch[31]_i_7_n_0 ;
  wire \mempcpy_scratch[31]_i_9_n_0 ;
  wire \mempcpy_scratch[32]_i_1_n_0 ;
  wire \mempcpy_scratch[33]_i_1_n_0 ;
  wire \mempcpy_scratch[34]_i_1_n_0 ;
  wire \mempcpy_scratch[35]_i_1_n_0 ;
  wire \mempcpy_scratch[36]_i_1_n_0 ;
  wire \mempcpy_scratch[37]_i_1_n_0 ;
  wire \mempcpy_scratch[38]_i_1_n_0 ;
  wire \mempcpy_scratch[39]_i_1_n_0 ;
  wire \mempcpy_scratch[39]_i_2_n_0 ;
  wire \mempcpy_scratch[39]_i_3_n_0 ;
  wire \mempcpy_scratch[3]_i_1_n_0 ;
  wire \mempcpy_scratch[3]_i_2_n_0 ;
  wire \mempcpy_scratch[3]_i_3_n_0 ;
  wire \mempcpy_scratch[3]_i_4_n_0 ;
  wire \mempcpy_scratch[3]_i_5_n_0 ;
  wire \mempcpy_scratch[3]_i_6_n_0 ;
  wire \mempcpy_scratch[40]_i_1_n_0 ;
  wire \mempcpy_scratch[41]_i_1_n_0 ;
  wire \mempcpy_scratch[42]_i_1_n_0 ;
  wire \mempcpy_scratch[43]_i_1_n_0 ;
  wire \mempcpy_scratch[44]_i_1_n_0 ;
  wire \mempcpy_scratch[45]_i_1_n_0 ;
  wire \mempcpy_scratch[46]_i_1_n_0 ;
  wire \mempcpy_scratch[47]_i_1_n_0 ;
  wire \mempcpy_scratch[47]_i_2_n_0 ;
  wire \mempcpy_scratch[47]_i_3_n_0 ;
  wire \mempcpy_scratch[47]_i_4_n_0 ;
  wire \mempcpy_scratch[47]_i_5_n_0 ;
  wire \mempcpy_scratch[47]_i_6_n_0 ;
  wire \mempcpy_scratch[47]_i_7_n_0 ;
  wire \mempcpy_scratch[4]_i_1_n_0 ;
  wire \mempcpy_scratch[4]_i_2_n_0 ;
  wire \mempcpy_scratch[4]_i_3_n_0 ;
  wire \mempcpy_scratch[4]_i_4_n_0 ;
  wire \mempcpy_scratch[4]_i_5_n_0 ;
  wire \mempcpy_scratch[4]_i_6_n_0 ;
  wire \mempcpy_scratch[5]_i_1_n_0 ;
  wire \mempcpy_scratch[5]_i_2_n_0 ;
  wire \mempcpy_scratch[5]_i_3_n_0 ;
  wire \mempcpy_scratch[5]_i_4_n_0 ;
  wire \mempcpy_scratch[5]_i_5_n_0 ;
  wire \mempcpy_scratch[5]_i_6_n_0 ;
  wire \mempcpy_scratch[6]_i_1_n_0 ;
  wire \mempcpy_scratch[6]_i_2_n_0 ;
  wire \mempcpy_scratch[6]_i_3_n_0 ;
  wire \mempcpy_scratch[6]_i_4_n_0 ;
  wire \mempcpy_scratch[6]_i_5_n_0 ;
  wire \mempcpy_scratch[6]_i_6_n_0 ;
  wire \mempcpy_scratch[7]_i_1_n_0 ;
  wire \mempcpy_scratch[7]_i_2_n_0 ;
  wire \mempcpy_scratch[7]_i_3_n_0 ;
  wire \mempcpy_scratch[7]_i_4_n_0 ;
  wire \mempcpy_scratch[7]_i_5_n_0 ;
  wire \mempcpy_scratch[7]_i_6_n_0 ;
  wire \mempcpy_scratch[8]_i_1_n_0 ;
  wire \mempcpy_scratch[8]_i_2_n_0 ;
  wire \mempcpy_scratch[8]_i_3_n_0 ;
  wire \mempcpy_scratch[8]_i_4_n_0 ;
  wire \mempcpy_scratch[8]_i_5_n_0 ;
  wire \mempcpy_scratch[8]_i_6_n_0 ;
  wire \mempcpy_scratch[8]_i_7_n_0 ;
  wire \mempcpy_scratch[9]_i_1_n_0 ;
  wire \mempcpy_scratch[9]_i_2_n_0 ;
  wire \mempcpy_scratch[9]_i_3_n_0 ;
  wire \mempcpy_scratch[9]_i_4_n_0 ;
  wire \mempcpy_scratch[9]_i_5_n_0 ;
  wire \mempcpy_scratch[9]_i_6_n_0 ;
  wire \mempcpy_scratch[9]_i_7_n_0 ;
  wire \mempcpy_scratch[9]_i_8_n_0 ;
  wire \mempcpy_scratch_reg[15]_i_14_n_0 ;
  wire \mempcpy_scratch_reg[15]_i_14_n_1 ;
  wire \mempcpy_scratch_reg[15]_i_14_n_2 ;
  wire \mempcpy_scratch_reg[15]_i_14_n_3 ;
  wire \mempcpy_scratch_reg[15]_i_15_n_0 ;
  wire \mempcpy_scratch_reg[15]_i_15_n_1 ;
  wire \mempcpy_scratch_reg[15]_i_15_n_2 ;
  wire \mempcpy_scratch_reg[15]_i_15_n_3 ;
  wire \mempcpy_scratch_reg[15]_i_24_n_0 ;
  wire \mempcpy_scratch_reg[15]_i_24_n_1 ;
  wire \mempcpy_scratch_reg[15]_i_24_n_2 ;
  wire \mempcpy_scratch_reg[15]_i_24_n_3 ;
  wire \mempcpy_scratch_reg[15]_i_2_n_3 ;
  wire \mempcpy_scratch_reg[15]_i_33_n_0 ;
  wire \mempcpy_scratch_reg[15]_i_33_n_1 ;
  wire \mempcpy_scratch_reg[15]_i_33_n_2 ;
  wire \mempcpy_scratch_reg[15]_i_33_n_3 ;
  wire \mempcpy_scratch_reg[15]_i_38_n_0 ;
  wire \mempcpy_scratch_reg[15]_i_38_n_1 ;
  wire \mempcpy_scratch_reg[15]_i_38_n_2 ;
  wire \mempcpy_scratch_reg[15]_i_38_n_3 ;
  wire \mempcpy_scratch_reg[15]_i_43_n_0 ;
  wire \mempcpy_scratch_reg[15]_i_43_n_1 ;
  wire \mempcpy_scratch_reg[15]_i_43_n_2 ;
  wire \mempcpy_scratch_reg[15]_i_43_n_3 ;
  wire \mempcpy_scratch_reg[15]_i_48_n_0 ;
  wire \mempcpy_scratch_reg[15]_i_48_n_1 ;
  wire \mempcpy_scratch_reg[15]_i_48_n_2 ;
  wire \mempcpy_scratch_reg[15]_i_48_n_3 ;
  wire \mempcpy_scratch_reg[15]_i_7_n_0 ;
  wire \mempcpy_scratch_reg[15]_i_7_n_1 ;
  wire \mempcpy_scratch_reg[15]_i_7_n_2 ;
  wire \mempcpy_scratch_reg[15]_i_7_n_3 ;
  wire \mempcpy_scratch_reg[15]_i_8_n_0 ;
  wire \mempcpy_scratch_reg[15]_i_8_n_1 ;
  wire \mempcpy_scratch_reg[15]_i_8_n_2 ;
  wire \mempcpy_scratch_reg[15]_i_8_n_3 ;
  wire \mempcpy_scratch_reg[31]_i_11_n_0 ;
  wire \mempcpy_scratch_reg[31]_i_11_n_1 ;
  wire \mempcpy_scratch_reg[31]_i_11_n_2 ;
  wire \mempcpy_scratch_reg[31]_i_11_n_3 ;
  wire \mempcpy_scratch_reg[31]_i_15_n_0 ;
  wire \mempcpy_scratch_reg[31]_i_15_n_1 ;
  wire \mempcpy_scratch_reg[31]_i_15_n_2 ;
  wire \mempcpy_scratch_reg[31]_i_15_n_3 ;
  wire \mempcpy_scratch_reg[31]_i_15_n_4 ;
  wire \mempcpy_scratch_reg[31]_i_15_n_5 ;
  wire \mempcpy_scratch_reg[31]_i_15_n_6 ;
  wire \mempcpy_scratch_reg[31]_i_15_n_7 ;
  wire \mempcpy_scratch_reg[31]_i_20_n_0 ;
  wire \mempcpy_scratch_reg[31]_i_20_n_1 ;
  wire \mempcpy_scratch_reg[31]_i_20_n_2 ;
  wire \mempcpy_scratch_reg[31]_i_20_n_3 ;
  wire \mempcpy_scratch_reg[31]_i_20_n_4 ;
  wire \mempcpy_scratch_reg[31]_i_20_n_5 ;
  wire \mempcpy_scratch_reg[31]_i_20_n_6 ;
  wire \mempcpy_scratch_reg[31]_i_20_n_7 ;
  wire \mempcpy_scratch_reg[31]_i_34_n_0 ;
  wire \mempcpy_scratch_reg[31]_i_34_n_1 ;
  wire \mempcpy_scratch_reg[31]_i_34_n_2 ;
  wire \mempcpy_scratch_reg[31]_i_34_n_3 ;
  wire \mempcpy_scratch_reg[31]_i_35_n_0 ;
  wire \mempcpy_scratch_reg[31]_i_35_n_1 ;
  wire \mempcpy_scratch_reg[31]_i_35_n_2 ;
  wire \mempcpy_scratch_reg[31]_i_35_n_3 ;
  wire \mempcpy_scratch_reg[31]_i_37_n_0 ;
  wire \mempcpy_scratch_reg[31]_i_37_n_1 ;
  wire \mempcpy_scratch_reg[31]_i_37_n_2 ;
  wire \mempcpy_scratch_reg[31]_i_37_n_3 ;
  wire \mempcpy_scratch_reg[31]_i_6_n_1 ;
  wire \mempcpy_scratch_reg[31]_i_6_n_2 ;
  wire \mempcpy_scratch_reg[31]_i_6_n_3 ;
  wire \mempcpy_scratch_reg[31]_i_6_n_4 ;
  wire \mempcpy_scratch_reg[31]_i_6_n_5 ;
  wire \mempcpy_scratch_reg[31]_i_6_n_6 ;
  wire \mempcpy_scratch_reg[31]_i_6_n_7 ;
  wire \mempcpy_scratch_reg[31]_i_8_n_1 ;
  wire \mempcpy_scratch_reg[31]_i_8_n_2 ;
  wire \mempcpy_scratch_reg[31]_i_8_n_3 ;
  wire \mempcpy_scratch_reg[31]_i_8_n_4 ;
  wire \mempcpy_scratch_reg[31]_i_8_n_5 ;
  wire \mempcpy_scratch_reg[31]_i_8_n_6 ;
  wire \mempcpy_scratch_reg[31]_i_8_n_7 ;
  wire o_control0a;
  wire o_control0a_i_1_n_0;
  wire o_control0a_i_2_n_0;
  wire o_control0a_i_3_n_0;
  wire o_control0b;
  wire o_control0b_i_1_n_0;
  wire o_control1a;
  wire o_control1a_i_1_n_0;
  wire [11:0]o_mem0a_addr;
  wire [31:0]o_mem0a_din;
  wire o_mem0a_en;
  wire [3:0]o_mem0a_we;
  wire [11:0]o_mem0b_addr;
  wire [31:0]o_mem0b_din;
  wire o_mem0b_en;
  wire [2:0]o_mem0b_we;
  wire [8:0]o_mem1a_addr;
  wire o_mem1a_en;
  wire [11:2]p_0_out;
  wire rst;
  wire s_3_lines;
  wire s_3_lines_i_10_n_0;
  wire s_3_lines_i_12_n_0;
  wire s_3_lines_i_13_n_0;
  wire s_3_lines_i_14_n_0;
  wire s_3_lines_i_15_n_0;
  wire s_3_lines_i_16_n_0;
  wire s_3_lines_i_17_n_0;
  wire s_3_lines_i_1_n_0;
  wire s_3_lines_i_5_n_0;
  wire s_3_lines_i_9_n_0;
  wire s_3_lines_reg_i_11_n_0;
  wire s_3_lines_reg_i_11_n_1;
  wire s_3_lines_reg_i_11_n_2;
  wire s_3_lines_reg_i_11_n_3;
  wire s_3_lines_reg_i_2_n_2;
  wire s_3_lines_reg_i_2_n_3;
  wire s_3_lines_reg_i_4_n_0;
  wire s_3_lines_reg_i_4_n_1;
  wire s_3_lines_reg_i_4_n_2;
  wire s_3_lines_reg_i_4_n_3;
  wire s_3_lines_reg_i_6_n_0;
  wire s_3_lines_reg_i_6_n_2;
  wire s_3_lines_reg_i_6_n_3;
  wire s_3_lines_reg_i_6_n_5;
  wire s_3_lines_reg_i_6_n_6;
  wire s_3_lines_reg_i_7_n_0;
  wire s_3_lines_reg_i_7_n_1;
  wire s_3_lines_reg_i_7_n_2;
  wire s_3_lines_reg_i_7_n_3;
  wire s_3_lines_reg_i_8_n_1;
  wire s_3_lines_reg_i_8_n_3;
  wire s_3_lines_reg_i_8_n_6;
  wire s_3_lines_reg_i_8_n_7;
  wire s_3_lines_reg_n_0;
  wire [10:2]s_inp_base_adr;
  wire \s_inp_base_adr[10]_i_3_n_0 ;
  wire \s_inp_base_adr[10]_i_4_n_0 ;
  wire \s_inp_base_adr[4]_i_3_n_0 ;
  wire \s_inp_base_adr[4]_i_4_n_0 ;
  wire \s_inp_base_adr[4]_i_5_n_0 ;
  wire \s_inp_base_adr[4]_i_6_n_0 ;
  wire \s_inp_base_adr[4]_i_7_n_0 ;
  wire \s_inp_base_adr[4]_i_8_n_0 ;
  wire \s_inp_base_adr[4]_i_9_n_0 ;
  wire \s_inp_base_adr[8]_i_10_n_0 ;
  wire \s_inp_base_adr[8]_i_3_n_0 ;
  wire \s_inp_base_adr[8]_i_4_n_0 ;
  wire \s_inp_base_adr[8]_i_5_n_0 ;
  wire \s_inp_base_adr[8]_i_6_n_0 ;
  wire \s_inp_base_adr[8]_i_7_n_0 ;
  wire \s_inp_base_adr[8]_i_8_n_0 ;
  wire \s_inp_base_adr[8]_i_9_n_0 ;
  wire \s_inp_base_adr_reg[10]_i_2_n_2 ;
  wire \s_inp_base_adr_reg[10]_i_2_n_7 ;
  wire \s_inp_base_adr_reg[4]_i_2_n_0 ;
  wire \s_inp_base_adr_reg[4]_i_2_n_1 ;
  wire \s_inp_base_adr_reg[4]_i_2_n_2 ;
  wire \s_inp_base_adr_reg[4]_i_2_n_3 ;
  wire \s_inp_base_adr_reg[4]_i_2_n_4 ;
  wire \s_inp_base_adr_reg[4]_i_2_n_5 ;
  wire \s_inp_base_adr_reg[4]_i_2_n_6 ;
  wire \s_inp_base_adr_reg[8]_i_2_n_0 ;
  wire \s_inp_base_adr_reg[8]_i_2_n_1 ;
  wire \s_inp_base_adr_reg[8]_i_2_n_2 ;
  wire \s_inp_base_adr_reg[8]_i_2_n_3 ;
  wire \s_inp_base_adr_reg[8]_i_2_n_4 ;
  wire \s_inp_base_adr_reg[8]_i_2_n_5 ;
  wire \s_inp_base_adr_reg[8]_i_2_n_6 ;
  wire \s_inp_base_adr_reg[8]_i_2_n_7 ;
  wire \s_inp_base_adr_reg_n_0_[10] ;
  wire \s_inp_base_adr_reg_n_0_[11] ;
  wire \s_inp_base_adr_reg_n_0_[2] ;
  wire \s_inp_base_adr_reg_n_0_[3] ;
  wire \s_inp_base_adr_reg_n_0_[4] ;
  wire \s_inp_base_adr_reg_n_0_[5] ;
  wire \s_inp_base_adr_reg_n_0_[6] ;
  wire \s_inp_base_adr_reg_n_0_[7] ;
  wire \s_inp_base_adr_reg_n_0_[8] ;
  wire \s_inp_base_adr_reg_n_0_[9] ;
  wire [1:0]s_inp_pos_in_line;
  wire \s_inp_pos_in_line[1]_i_1_n_0 ;
  wire \s_inp_pos_in_line[1]_i_4_n_0 ;
  wire \s_inp_pos_in_line[1]_i_5_n_0 ;
  wire \s_inp_pos_in_line[1]_i_6_n_0 ;
  wire \s_inp_pos_in_line[1]_i_7_n_0 ;
  wire \s_inp_pos_in_line_reg[1]_i_3_n_0 ;
  wire \s_inp_pos_in_line_reg[1]_i_3_n_1 ;
  wire \s_inp_pos_in_line_reg[1]_i_3_n_2 ;
  wire \s_inp_pos_in_line_reg[1]_i_3_n_3 ;
  wire \s_inp_pos_in_line_reg[1]_i_3_n_4 ;
  wire \s_inp_pos_in_line_reg[1]_i_3_n_5 ;
  wire \s_inp_pos_in_line_reg_n_0_[0] ;
  wire \s_inp_pos_in_line_reg_n_0_[1] ;
  wire s_oil_base_adr;
  wire \s_oil_base_adr[11]_i_1_n_0 ;
  wire \s_oil_base_adr[2]_i_1_n_0 ;
  wire \s_oil_base_adr[3]_i_1_n_0 ;
  wire \s_oil_base_adr[4]_i_1_n_0 ;
  wire \s_oil_base_adr[5]_i_1_n_0 ;
  wire \s_oil_base_adr[6]_i_1_n_0 ;
  wire \s_oil_base_adr[7]_i_1_n_0 ;
  wire \s_oil_base_adr[8]_i_1_n_0 ;
  wire \s_oil_base_adr[9]_i_1_n_0 ;
  wire \s_oil_base_adr_reg_n_0_[10] ;
  wire \s_oil_base_adr_reg_n_0_[11] ;
  wire \s_oil_base_adr_reg_n_0_[16] ;
  wire \s_oil_base_adr_reg_n_0_[2] ;
  wire \s_oil_base_adr_reg_n_0_[3] ;
  wire \s_oil_base_adr_reg_n_0_[4] ;
  wire \s_oil_base_adr_reg_n_0_[5] ;
  wire \s_oil_base_adr_reg_n_0_[6] ;
  wire \s_oil_base_adr_reg_n_0_[7] ;
  wire \s_oil_base_adr_reg_n_0_[8] ;
  wire \s_oil_base_adr_reg_n_0_[9] ;
  wire \s_oil_pos_in_line[0]_i_1_n_0 ;
  wire \s_oil_pos_in_line[1]_i_2_n_0 ;
  wire \s_oil_pos_in_line[1]_i_3_n_0 ;
  wire \s_oil_pos_in_line[1]_i_4_n_0 ;
  wire \s_oil_pos_in_line_reg_n_0_[0] ;
  wire \s_oil_pos_in_line_reg_n_0_[1] ;
  wire [5:0]state;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_3_n_0 ;
  wire \state[0]_i_4_n_0 ;
  wire \state[0]_i_5_n_0 ;
  wire \state[0]_i_6_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[1]_i_4_n_0 ;
  wire \state[1]_i_5_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state[2]_i_4_n_0 ;
  wire \state[2]_i_5_n_0 ;
  wire \state[2]_i_6_n_0 ;
  wire \state[2]_i_7_n_0 ;
  wire \state[3]_i_2_n_0 ;
  wire \state[3]_i_3_n_0 ;
  wire \state[3]_i_4_n_0 ;
  wire \state[4]_i_2_n_0 ;
  wire \state[4]_i_3_n_0 ;
  wire \state[4]_i_4_n_0 ;
  wire \state[4]_i_5_n_0 ;
  wire \state[4]_i_6_n_0 ;
  wire \state[4]_i_7_n_0 ;
  wire \state[5]_i_2_n_0 ;
  wire \state[5]_i_3_n_0 ;
  wire \state[5]_i_4_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire \state_reg_n_0_[4] ;
  wire \state_reg_n_0_[5] ;
  wire [15:0]t0;
  wire \t0[0]_i_2_n_0 ;
  wire \t0[0]_i_3_n_0 ;
  wire \t0[11]_i_3_n_0 ;
  wire \t0[11]_i_4_n_0 ;
  wire \t0[11]_i_5_n_0 ;
  wire \t0[11]_i_6_n_0 ;
  wire \t0[15]_i_1_n_0 ;
  wire \t0[15]_i_4_n_0 ;
  wire \t0[15]_i_5_n_0 ;
  wire \t0[15]_i_6_n_0 ;
  wire \t0[15]_i_7_n_0 ;
  wire \t0[1]_i_2_n_0 ;
  wire \t0[1]_i_3_n_0 ;
  wire \t0[2]_i_11_n_0 ;
  wire \t0[2]_i_12_n_0 ;
  wire [1:0]\t0[2]_i_13 ;
  wire \t0[2]_i_22_n_0 ;
  wire \t0[2]_i_23_n_0 ;
  wire \t0[2]_i_24_n_0 ;
  wire \t0[2]_i_25_n_0 ;
  wire \t0[2]_i_26_n_0 ;
  wire \t0[2]_i_27_n_0 ;
  wire \t0[2]_i_28_n_0 ;
  wire \t0[2]_i_29_n_0 ;
  wire [0:0]\t0[2]_i_31 ;
  wire \t0[2]_i_32_n_0 ;
  wire \t0[2]_i_33_n_0 ;
  wire \t0[2]_i_34_n_0 ;
  wire \t0[2]_i_35_n_0 ;
  wire \t0[2]_i_36_n_0 ;
  wire \t0[2]_i_37_n_0 ;
  wire \t0[2]_i_38_n_0 ;
  wire \t0[2]_i_39_n_0 ;
  wire \t0[2]_i_3_n_0 ;
  wire \t0[2]_i_41_n_0 ;
  wire \t0[2]_i_42_n_0 ;
  wire \t0[2]_i_43_n_0 ;
  wire \t0[2]_i_44_n_0 ;
  wire \t0[2]_i_45_n_0 ;
  wire \t0[2]_i_47_n_0 ;
  wire \t0[2]_i_48_n_0 ;
  wire \t0[2]_i_49_n_0 ;
  wire \t0[2]_i_4_n_0 ;
  wire \t0[2]_i_50_n_0 ;
  wire [1:0]\t0[2]_i_5_0 ;
  wire \t0[2]_i_5_n_0 ;
  wire \t0[2]_i_6_n_0 ;
  wire \t0[2]_i_7_n_0 ;
  wire \t0[2]_i_8_n_0 ;
  wire \t0[3]_i_3_n_0 ;
  wire \t0[3]_i_4_n_0 ;
  wire \t0[3]_i_5_n_0 ;
  wire \t0[3]_i_6_n_0 ;
  wire \t0[3]_i_7_n_0 ;
  wire \t0[3]_i_8_n_0 ;
  wire \t0[4]_i_2_n_0 ;
  wire \t0[4]_i_3_n_0 ;
  wire \t0[4]_i_4_n_0 ;
  wire \t0[4]_i_6_n_0 ;
  wire \t0[4]_i_7_n_0 ;
  wire \t0[5]_i_2_n_0 ;
  wire \t0[6]_i_2_n_0 ;
  wire \t0[7]_i_3_n_0 ;
  wire \t0[7]_i_4_n_0 ;
  wire \t0[7]_i_5_n_0 ;
  wire \t0[7]_i_6_n_0 ;
  wire \t0[7]_i_7_n_0 ;
  wire [0:0]\t0_reg[10]_0 ;
  wire \t0_reg[11]_i_2_n_0 ;
  wire \t0_reg[11]_i_2_n_1 ;
  wire \t0_reg[11]_i_2_n_2 ;
  wire \t0_reg[11]_i_2_n_3 ;
  wire \t0_reg[11]_i_2_n_4 ;
  wire \t0_reg[11]_i_2_n_5 ;
  wire \t0_reg[11]_i_2_n_6 ;
  wire \t0_reg[11]_i_2_n_7 ;
  wire [3:0]\t0_reg[13]_0 ;
  wire \t0_reg[15]_i_3_n_1 ;
  wire \t0_reg[15]_i_3_n_2 ;
  wire \t0_reg[15]_i_3_n_3 ;
  wire \t0_reg[15]_i_3_n_4 ;
  wire \t0_reg[15]_i_3_n_5 ;
  wire \t0_reg[15]_i_3_n_6 ;
  wire \t0_reg[15]_i_3_n_7 ;
  wire \t0_reg[2]_i_10_n_0 ;
  wire \t0_reg[2]_i_10_n_1 ;
  wire \t0_reg[2]_i_10_n_2 ;
  wire \t0_reg[2]_i_10_n_3 ;
  wire \t0_reg[2]_i_10_n_5 ;
  wire \t0_reg[2]_i_10_n_6 ;
  wire \t0_reg[2]_i_10_n_7 ;
  wire \t0_reg[2]_i_15_n_0 ;
  wire \t0_reg[2]_i_15_n_1 ;
  wire \t0_reg[2]_i_15_n_2 ;
  wire \t0_reg[2]_i_15_n_3 ;
  wire \t0_reg[2]_i_19_n_3 ;
  wire \t0_reg[2]_i_19_n_6 ;
  wire \t0_reg[2]_i_20_n_0 ;
  wire \t0_reg[2]_i_20_n_1 ;
  wire \t0_reg[2]_i_20_n_2 ;
  wire \t0_reg[2]_i_20_n_3 ;
  wire \t0_reg[2]_i_21_n_0 ;
  wire \t0_reg[2]_i_21_n_1 ;
  wire \t0_reg[2]_i_21_n_2 ;
  wire \t0_reg[2]_i_21_n_3 ;
  wire \t0_reg[2]_i_2_n_0 ;
  wire \t0_reg[2]_i_2_n_1 ;
  wire \t0_reg[2]_i_2_n_2 ;
  wire \t0_reg[2]_i_2_n_3 ;
  wire \t0_reg[2]_i_2_n_4 ;
  wire \t0_reg[2]_i_2_n_5 ;
  wire \t0_reg[2]_i_2_n_6 ;
  wire \t0_reg[2]_i_2_n_7 ;
  wire \t0_reg[2]_i_40_n_0 ;
  wire \t0_reg[2]_i_40_n_1 ;
  wire \t0_reg[2]_i_40_n_2 ;
  wire \t0_reg[2]_i_40_n_3 ;
  wire \t0_reg[2]_i_9_n_2 ;
  wire \t0_reg[2]_i_9_n_3 ;
  wire \t0_reg[2]_i_9_n_5 ;
  wire \t0_reg[2]_i_9_n_6 ;
  wire \t0_reg[2]_i_9_n_7 ;
  wire \t0_reg[3]_i_2_n_0 ;
  wire \t0_reg[3]_i_2_n_1 ;
  wire \t0_reg[3]_i_2_n_2 ;
  wire \t0_reg[3]_i_2_n_3 ;
  wire \t0_reg[3]_i_2_n_4 ;
  wire \t0_reg[3]_i_2_n_5 ;
  wire \t0_reg[3]_i_2_n_6 ;
  wire \t0_reg[3]_i_2_n_7 ;
  wire \t0_reg[4]_i_5_n_3 ;
  wire \t0_reg[4]_i_5_n_6 ;
  wire \t0_reg[4]_i_5_n_7 ;
  wire \t0_reg[7]_i_2_n_0 ;
  wire \t0_reg[7]_i_2_n_1 ;
  wire \t0_reg[7]_i_2_n_2 ;
  wire \t0_reg[7]_i_2_n_3 ;
  wire \t0_reg[7]_i_2_n_4 ;
  wire \t0_reg[7]_i_2_n_5 ;
  wire \t0_reg[7]_i_2_n_6 ;
  wire \t0_reg[7]_i_2_n_7 ;
  wire [0:0]\t0_reg[9]_0 ;
  wire \t0_reg_n_0_[0] ;
  wire \t0_reg_n_0_[10] ;
  wire \t0_reg_n_0_[11] ;
  wire \t0_reg_n_0_[12] ;
  wire \t0_reg_n_0_[13] ;
  wire \t0_reg_n_0_[14] ;
  wire \t0_reg_n_0_[15] ;
  wire \t0_reg_n_0_[1] ;
  wire \t0_reg_n_0_[2] ;
  wire \t0_reg_n_0_[3] ;
  wire \t0_reg_n_0_[4] ;
  wire \t0_reg_n_0_[5] ;
  wire \t0_reg_n_0_[6] ;
  wire \t0_reg_n_0_[7] ;
  wire \t0_reg_n_0_[8] ;
  wire \t0_reg_n_0_[9] ;
  wire [15:0]tmp;
  wire [7:0]tmp0;
  wire [15:8]tmp0__0;
  wire \tmp[0]_i_1_n_0 ;
  wire \tmp[0]_i_2_n_0 ;
  wire \tmp[10]_i_10_n_0 ;
  wire \tmp[10]_i_11_n_0 ;
  wire \tmp[10]_i_13_n_0 ;
  wire \tmp[10]_i_14_n_0 ;
  wire \tmp[10]_i_15_n_0 ;
  wire \tmp[10]_i_17_n_0 ;
  wire \tmp[10]_i_18_n_0 ;
  wire \tmp[10]_i_19_n_0 ;
  wire \tmp[10]_i_20_n_0 ;
  wire \tmp[10]_i_21_n_0 ;
  wire \tmp[10]_i_22_n_0 ;
  wire \tmp[10]_i_23_n_0 ;
  wire \tmp[10]_i_24_n_0 ;
  wire \tmp[10]_i_25_n_0 ;
  wire \tmp[10]_i_26_n_0 ;
  wire \tmp[10]_i_27_n_0 ;
  wire \tmp[10]_i_28_n_0 ;
  wire \tmp[10]_i_29_n_0 ;
  wire \tmp[10]_i_30_n_0 ;
  wire \tmp[10]_i_31_n_0 ;
  wire \tmp[10]_i_32_n_0 ;
  wire \tmp[10]_i_33_n_0 ;
  wire \tmp[10]_i_34_n_0 ;
  wire \tmp[10]_i_35_n_0 ;
  wire \tmp[10]_i_36_n_0 ;
  wire \tmp[10]_i_37_n_0 ;
  wire \tmp[10]_i_3_n_0 ;
  wire \tmp[10]_i_4_n_0 ;
  wire \tmp[10]_i_5_n_0 ;
  wire \tmp[10]_i_6_n_0 ;
  wire \tmp[10]_i_7_n_0 ;
  wire \tmp[10]_i_8_n_0 ;
  wire \tmp[10]_i_9_n_0 ;
  wire \tmp[14]_i_10_n_0 ;
  wire \tmp[14]_i_11_n_0 ;
  wire \tmp[14]_i_12_n_0 ;
  wire \tmp[14]_i_13_n_0 ;
  wire \tmp[14]_i_16_n_0 ;
  wire \tmp[14]_i_17_n_0 ;
  wire \tmp[14]_i_18_n_0 ;
  wire \tmp[14]_i_19_n_0 ;
  wire \tmp[14]_i_20_n_0 ;
  wire \tmp[14]_i_21_n_0 ;
  wire \tmp[14]_i_22_n_0 ;
  wire \tmp[14]_i_23_n_0 ;
  wire \tmp[14]_i_24_n_0 ;
  wire \tmp[14]_i_25_n_0 ;
  wire \tmp[14]_i_26_n_0 ;
  wire \tmp[14]_i_27_n_0 ;
  wire \tmp[14]_i_28_n_0 ;
  wire \tmp[14]_i_29_n_0 ;
  wire \tmp[14]_i_2_n_0 ;
  wire \tmp[14]_i_30_n_0 ;
  wire \tmp[14]_i_31_n_0 ;
  wire \tmp[14]_i_32_n_0 ;
  wire \tmp[14]_i_33_n_0 ;
  wire \tmp[14]_i_34_n_0 ;
  wire \tmp[14]_i_35_n_0 ;
  wire \tmp[14]_i_36_n_0 ;
  wire \tmp[14]_i_37_n_0 ;
  wire \tmp[14]_i_38_n_0 ;
  wire \tmp[14]_i_39_n_0 ;
  wire \tmp[14]_i_3_n_0 ;
  wire \tmp[14]_i_40_n_0 ;
  wire \tmp[14]_i_41_n_0 ;
  wire \tmp[14]_i_42_n_0 ;
  wire \tmp[14]_i_43_n_0 ;
  wire \tmp[14]_i_44_n_0 ;
  wire \tmp[14]_i_4_n_0 ;
  wire \tmp[14]_i_5_n_0 ;
  wire \tmp[14]_i_6_n_0 ;
  wire \tmp[14]_i_7_n_0 ;
  wire \tmp[14]_i_8_n_0 ;
  wire \tmp[14]_i_9_n_0 ;
  wire \tmp[15]_i_10_n_0 ;
  wire \tmp[15]_i_11_n_0 ;
  wire \tmp[15]_i_12_n_0 ;
  wire \tmp[15]_i_1_n_0 ;
  wire \tmp[15]_i_3_n_0 ;
  wire \tmp[15]_i_4_n_0 ;
  wire \tmp[15]_i_5_n_0 ;
  wire \tmp[15]_i_7_n_0 ;
  wire \tmp[15]_i_8_n_0 ;
  wire \tmp[15]_i_9_n_0 ;
  wire \tmp[1]_i_1_n_0 ;
  wire \tmp[1]_i_2_n_0 ;
  wire \tmp[2]_i_1_n_0 ;
  wire \tmp[2]_i_2_n_0 ;
  wire \tmp[3]_i_10_n_0 ;
  wire \tmp[3]_i_11_n_0 ;
  wire \tmp[3]_i_12_n_0 ;
  wire \tmp[3]_i_13_n_0 ;
  wire \tmp[3]_i_14_n_0 ;
  wire \tmp[3]_i_15_n_0 ;
  wire \tmp[3]_i_16_n_0 ;
  wire \tmp[3]_i_17_n_0 ;
  wire \tmp[3]_i_18_n_0 ;
  wire \tmp[3]_i_1_n_0 ;
  wire \tmp[3]_i_2_n_0 ;
  wire \tmp[3]_i_5_n_0 ;
  wire \tmp[3]_i_6_n_0 ;
  wire \tmp[3]_i_7_n_0 ;
  wire \tmp[3]_i_8_n_0 ;
  wire \tmp[3]_i_9_n_0 ;
  wire \tmp[4]_i_1_n_0 ;
  wire \tmp[4]_i_2_n_0 ;
  wire \tmp[5]_i_1_n_0 ;
  wire \tmp[5]_i_2_n_0 ;
  wire \tmp[6]_i_1_n_0 ;
  wire \tmp[6]_i_2_n_0 ;
  wire \tmp[7]_i_1_n_0 ;
  wire \tmp[7]_i_2_n_0 ;
  wire \tmp[7]_i_3_n_0 ;
  wire \tmp_reg[10]_i_12_n_0 ;
  wire \tmp_reg[10]_i_12_n_1 ;
  wire \tmp_reg[10]_i_12_n_2 ;
  wire \tmp_reg[10]_i_12_n_3 ;
  wire \tmp_reg[10]_i_12_n_4 ;
  wire \tmp_reg[10]_i_12_n_5 ;
  wire \tmp_reg[10]_i_12_n_6 ;
  wire \tmp_reg[10]_i_12_n_7 ;
  wire \tmp_reg[10]_i_1_n_0 ;
  wire \tmp_reg[10]_i_1_n_1 ;
  wire \tmp_reg[10]_i_1_n_2 ;
  wire \tmp_reg[10]_i_1_n_3 ;
  wire \tmp_reg[10]_i_2_n_0 ;
  wire \tmp_reg[10]_i_2_n_1 ;
  wire \tmp_reg[10]_i_2_n_2 ;
  wire \tmp_reg[10]_i_2_n_3 ;
  wire \tmp_reg[14]_i_14_n_0 ;
  wire \tmp_reg[14]_i_14_n_1 ;
  wire \tmp_reg[14]_i_14_n_2 ;
  wire \tmp_reg[14]_i_14_n_3 ;
  wire \tmp_reg[14]_i_14_n_4 ;
  wire \tmp_reg[14]_i_14_n_5 ;
  wire \tmp_reg[14]_i_14_n_6 ;
  wire \tmp_reg[14]_i_14_n_7 ;
  wire \tmp_reg[14]_i_15_n_1 ;
  wire \tmp_reg[14]_i_15_n_3 ;
  wire \tmp_reg[14]_i_15_n_6 ;
  wire \tmp_reg[14]_i_15_n_7 ;
  wire \tmp_reg[14]_i_1_n_0 ;
  wire \tmp_reg[14]_i_1_n_1 ;
  wire \tmp_reg[14]_i_1_n_2 ;
  wire \tmp_reg[14]_i_1_n_3 ;
  wire \tmp_reg[15]_i_6_n_1 ;
  wire \tmp_reg[15]_i_6_n_3 ;
  wire \tmp_reg[15]_i_6_n_6 ;
  wire \tmp_reg[15]_i_6_n_7 ;
  wire \tmp_reg[3]_i_3_n_0 ;
  wire \tmp_reg[3]_i_3_n_1 ;
  wire \tmp_reg[3]_i_3_n_2 ;
  wire \tmp_reg[3]_i_3_n_3 ;
  wire \tmp_reg[3]_i_3_n_4 ;
  wire \tmp_reg[3]_i_4_n_0 ;
  wire \tmp_reg[3]_i_4_n_1 ;
  wire \tmp_reg[3]_i_4_n_2 ;
  wire \tmp_reg[3]_i_4_n_3 ;
  wire \tmp_reg[3]_i_4_n_4 ;
  wire \tmp_reg[3]_i_4_n_5 ;
  wire \tmp_reg[3]_i_4_n_6 ;
  wire \tmp_reg[3]_i_4_n_7 ;
  wire [3:1]\NLW_bram0a_reg[o][o_addr][12]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_bram0a_reg[o][o_addr][12]_i_2_O_UNCONNECTED ;
  wire [2:2]\NLW_bram0b_reg[o][o_addr][12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_bram0b_reg[o][o_addr][12]_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_bram0b_reg[o][o_addr][4]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_bram0b_reg[o][o_din][15]_i_13_CO_UNCONNECTED ;
  wire [3:1]\NLW_bram0b_reg[o][o_din][15]_i_13_O_UNCONNECTED ;
  wire [3:0]\NLW_bram0b_reg[o][o_din][15]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_bram0b_reg[o][o_din][15]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_bram0b_reg[o][o_din][31]_i_5_O_UNCONNECTED ;
  wire [2:2]\NLW_bram1a_reg[o][o_addr][9]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_bram1a_reg[o][o_addr][9]_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_bytes_first_line_reg[1]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_bytes_first_line_reg[2]_i_12_O_UNCONNECTED ;
  wire [3:2]\NLW_bytes_first_line_reg[2]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_bytes_first_line_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_bytes_first_line_reg[2]_i_7_O_UNCONNECTED ;
  wire [3:0]\NLW_bytes_first_line_reg[2]_i_8_CO_UNCONNECTED ;
  wire [3:1]\NLW_bytes_first_line_reg[2]_i_8_O_UNCONNECTED ;
  wire [3:0]\NLW_bytes_first_line_reg[2]_i_9_O_UNCONNECTED ;
  wire [3:0]\NLW_mempcpy_scratch_reg[15]_i_14_O_UNCONNECTED ;
  wire [3:1]\NLW_mempcpy_scratch_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_mempcpy_scratch_reg[15]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_mempcpy_scratch_reg[15]_i_24_O_UNCONNECTED ;
  wire [3:0]\NLW_mempcpy_scratch_reg[15]_i_33_O_UNCONNECTED ;
  wire [3:0]\NLW_mempcpy_scratch_reg[15]_i_38_O_UNCONNECTED ;
  wire [3:0]\NLW_mempcpy_scratch_reg[15]_i_43_O_UNCONNECTED ;
  wire [3:0]\NLW_mempcpy_scratch_reg[15]_i_48_O_UNCONNECTED ;
  wire [3:0]\NLW_mempcpy_scratch_reg[15]_i_7_O_UNCONNECTED ;
  wire [0:0]\NLW_mempcpy_scratch_reg[31]_i_11_O_UNCONNECTED ;
  wire [3:3]\NLW_mempcpy_scratch_reg[31]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_mempcpy_scratch_reg[31]_i_8_CO_UNCONNECTED ;
  wire [3:0]NLW_s_3_lines_reg_i_11_O_UNCONNECTED;
  wire [3:2]NLW_s_3_lines_reg_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_s_3_lines_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_s_3_lines_reg_i_4_O_UNCONNECTED;
  wire [2:2]NLW_s_3_lines_reg_i_6_CO_UNCONNECTED;
  wire [3:0]NLW_s_3_lines_reg_i_6_O_UNCONNECTED;
  wire [3:0]NLW_s_3_lines_reg_i_7_O_UNCONNECTED;
  wire [3:1]NLW_s_3_lines_reg_i_8_CO_UNCONNECTED;
  wire [3:2]NLW_s_3_lines_reg_i_8_O_UNCONNECTED;
  wire [3:0]\NLW_s_inp_base_adr_reg[10]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_s_inp_base_adr_reg[10]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_s_inp_base_adr_reg[4]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_s_inp_pos_in_line_reg[1]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_t0_reg[15]_i_3_CO_UNCONNECTED ;
  wire [2:0]\NLW_t0_reg[2]_i_15_O_UNCONNECTED ;
  wire [3:1]\NLW_t0_reg[2]_i_19_CO_UNCONNECTED ;
  wire [3:2]\NLW_t0_reg[2]_i_19_O_UNCONNECTED ;
  wire [3:0]\NLW_t0_reg[2]_i_21_O_UNCONNECTED ;
  wire [3:0]\NLW_t0_reg[2]_i_40_O_UNCONNECTED ;
  wire [3:0]\NLW_t0_reg[2]_i_46_CO_UNCONNECTED ;
  wire [3:1]\NLW_t0_reg[2]_i_46_O_UNCONNECTED ;
  wire [3:2]\NLW_t0_reg[2]_i_9_CO_UNCONNECTED ;
  wire [3:3]\NLW_t0_reg[2]_i_9_O_UNCONNECTED ;
  wire [3:1]\NLW_t0_reg[4]_i_5_CO_UNCONNECTED ;
  wire [3:2]\NLW_t0_reg[4]_i_5_O_UNCONNECTED ;
  wire [0:0]\NLW_tmp_reg[10]_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_tmp_reg[14]_i_15_CO_UNCONNECTED ;
  wire [3:2]\NLW_tmp_reg[14]_i_15_O_UNCONNECTED ;
  wire [3:0]\NLW_tmp_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_tmp_reg[15]_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_tmp_reg[15]_i_6_CO_UNCONNECTED ;
  wire [3:2]\NLW_tmp_reg[15]_i_6_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bram0a[o][o_addr][10]_i_1 
       (.I0(\s_inp_base_adr_reg_n_0_[10] ),
        .I1(\bram0a[o][o_addr][16]_i_4_n_0 ),
        .I2(\s_oil_base_adr_reg_n_0_[10] ),
        .I3(\bram0a[o][o_addr][16]_i_3_n_0 ),
        .I4(\bram0a_reg[o][o_addr][12]_i_2_n_7 ),
        .O(\bram0a[o][o_addr] [10]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bram0a[o][o_addr][11]_i_1 
       (.I0(\s_inp_base_adr_reg_n_0_[11] ),
        .I1(\bram0a[o][o_addr][16]_i_4_n_0 ),
        .I2(\s_oil_base_adr_reg_n_0_[11] ),
        .I3(\bram0a[o][o_addr][16]_i_3_n_0 ),
        .I4(\bram0a_reg[o][o_addr][12]_i_2_n_6 ),
        .O(\bram0a[o][o_addr] [11]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \bram0a[o][o_addr][12]_i_1 
       (.I0(\bram0a[o][o_addr][16]_i_3_n_0 ),
        .I1(\bram0a_reg[o][o_addr][12]_i_2_n_1 ),
        .I2(\bram0a[o][o_addr][16]_i_4_n_0 ),
        .O(\bram0a[o][o_addr] [12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][12]_i_3 
       (.I0(\s_oil_base_adr_reg_n_0_[11] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\s_inp_base_adr_reg_n_0_[11] ),
        .O(p_0_out[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][12]_i_4 
       (.I0(\s_oil_base_adr_reg_n_0_[10] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\s_inp_base_adr_reg_n_0_[10] ),
        .O(p_0_out[10]));
  LUT2 #(
    .INIT(4'h2)) 
    \bram0a[o][o_addr][16]_i_1 
       (.I0(g0_b0_n_0),
        .I1(rst),
        .O(\bram0a[o][o_addr][16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    \bram0a[o][o_addr][16]_i_2 
       (.I0(\bram0a[o][o_addr][16]_i_3_n_0 ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\s_oil_base_adr_reg_n_0_[16] ),
        .I3(\bram0a[o][o_addr][16]_i_4_n_0 ),
        .O(\bram0a[o][o_addr] [16]));
  LUT6 #(
    .INIT(64'h05000000E00000F6)) 
    \bram0a[o][o_addr][16]_i_3 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[4] ),
        .O(\bram0a[o][o_addr][16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFEFFFFFFFF9)) 
    \bram0a[o][o_addr][16]_i_4 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[4] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\bram0a[o][o_addr][16]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bram0a[o][o_addr][2]_i_1 
       (.I0(\s_inp_base_adr_reg_n_0_[2] ),
        .I1(\bram0a[o][o_addr][16]_i_4_n_0 ),
        .I2(\s_oil_base_adr_reg_n_0_[2] ),
        .I3(\bram0a[o][o_addr][16]_i_3_n_0 ),
        .I4(\bram0a_reg[o][o_addr][5]_i_2_n_7 ),
        .O(\bram0a[o][o_addr] [2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bram0a[o][o_addr][3]_i_1 
       (.I0(\s_inp_base_adr_reg_n_0_[3] ),
        .I1(\bram0a[o][o_addr][16]_i_4_n_0 ),
        .I2(\s_oil_base_adr_reg_n_0_[3] ),
        .I3(\bram0a[o][o_addr][16]_i_3_n_0 ),
        .I4(\bram0a_reg[o][o_addr][5]_i_2_n_6 ),
        .O(\bram0a[o][o_addr] [3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bram0a[o][o_addr][4]_i_1 
       (.I0(\s_inp_base_adr_reg_n_0_[4] ),
        .I1(\bram0a[o][o_addr][16]_i_4_n_0 ),
        .I2(\s_oil_base_adr_reg_n_0_[4] ),
        .I3(\bram0a[o][o_addr][16]_i_3_n_0 ),
        .I4(\bram0a_reg[o][o_addr][5]_i_2_n_5 ),
        .O(\bram0a[o][o_addr] [4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bram0a[o][o_addr][5]_i_1 
       (.I0(\s_inp_base_adr_reg_n_0_[5] ),
        .I1(\bram0a[o][o_addr][16]_i_4_n_0 ),
        .I2(\s_oil_base_adr_reg_n_0_[5] ),
        .I3(\bram0a[o][o_addr][16]_i_3_n_0 ),
        .I4(\bram0a_reg[o][o_addr][5]_i_2_n_4 ),
        .O(\bram0a[o][o_addr] [5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][5]_i_3 
       (.I0(\s_oil_base_adr_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\s_inp_base_adr_reg_n_0_[3] ),
        .O(p_0_out[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][5]_i_4 
       (.I0(\s_oil_base_adr_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\s_inp_base_adr_reg_n_0_[5] ),
        .O(p_0_out[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][5]_i_5 
       (.I0(\s_oil_base_adr_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\s_inp_base_adr_reg_n_0_[4] ),
        .O(p_0_out[4]));
  LUT3 #(
    .INIT(8'h1D)) 
    \bram0a[o][o_addr][5]_i_6 
       (.I0(\s_inp_base_adr_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\s_oil_base_adr_reg_n_0_[3] ),
        .O(\bram0a[o][o_addr][5]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][5]_i_7 
       (.I0(\s_oil_base_adr_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\s_inp_base_adr_reg_n_0_[2] ),
        .O(p_0_out[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bram0a[o][o_addr][6]_i_1 
       (.I0(\s_inp_base_adr_reg_n_0_[6] ),
        .I1(\bram0a[o][o_addr][16]_i_4_n_0 ),
        .I2(\s_oil_base_adr_reg_n_0_[6] ),
        .I3(\bram0a[o][o_addr][16]_i_3_n_0 ),
        .I4(\bram0a_reg[o][o_addr][9]_i_2_n_7 ),
        .O(\bram0a[o][o_addr] [6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bram0a[o][o_addr][7]_i_1 
       (.I0(\s_inp_base_adr_reg_n_0_[7] ),
        .I1(\bram0a[o][o_addr][16]_i_4_n_0 ),
        .I2(\s_oil_base_adr_reg_n_0_[7] ),
        .I3(\bram0a[o][o_addr][16]_i_3_n_0 ),
        .I4(\bram0a_reg[o][o_addr][9]_i_2_n_6 ),
        .O(\bram0a[o][o_addr] [7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bram0a[o][o_addr][8]_i_1 
       (.I0(\s_inp_base_adr_reg_n_0_[8] ),
        .I1(\bram0a[o][o_addr][16]_i_4_n_0 ),
        .I2(\s_oil_base_adr_reg_n_0_[8] ),
        .I3(\bram0a[o][o_addr][16]_i_3_n_0 ),
        .I4(\bram0a_reg[o][o_addr][9]_i_2_n_5 ),
        .O(\bram0a[o][o_addr] [8]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bram0a[o][o_addr][9]_i_1 
       (.I0(\s_inp_base_adr_reg_n_0_[9] ),
        .I1(\bram0a[o][o_addr][16]_i_4_n_0 ),
        .I2(\s_oil_base_adr_reg_n_0_[9] ),
        .I3(\bram0a[o][o_addr][16]_i_3_n_0 ),
        .I4(\bram0a_reg[o][o_addr][9]_i_2_n_4 ),
        .O(\bram0a[o][o_addr] [9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][9]_i_3 
       (.I0(\s_oil_base_adr_reg_n_0_[9] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\s_inp_base_adr_reg_n_0_[9] ),
        .O(p_0_out[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][9]_i_4 
       (.I0(\s_oil_base_adr_reg_n_0_[8] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\s_inp_base_adr_reg_n_0_[8] ),
        .O(p_0_out[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][9]_i_5 
       (.I0(\s_oil_base_adr_reg_n_0_[7] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\s_inp_base_adr_reg_n_0_[7] ),
        .O(p_0_out[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_addr][9]_i_6 
       (.I0(\s_oil_base_adr_reg_n_0_[6] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\s_inp_base_adr_reg_n_0_[6] ),
        .O(p_0_out[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFF40554040)) 
    \bram0a[o][o_din][0]_i_1 
       (.I0(\bram0a[o][o_din][7]_i_2_n_0 ),
        .I1(mempcpy_scratch[16]),
        .I2(\bram0a[o][o_din][14]_i_3_n_0 ),
        .I3(\bram0a[o][o_din][23]_i_3_n_0 ),
        .I4(mempcpy_scratch[0]),
        .I5(\bram0a[o][o_din][0]_i_2_n_0 ),
        .O(\bram0a[o][o_din] [0]));
  LUT6 #(
    .INIT(64'h10FF100010001000)) 
    \bram0a[o][o_din][0]_i_2 
       (.I0(\s_inp_pos_in_line_reg_n_0_[1] ),
        .I1(\s_inp_pos_in_line_reg_n_0_[0] ),
        .I2(\t0_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(mempcpy_scratch[40]),
        .O(\bram0a[o][o_din][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40554040)) 
    \bram0a[o][o_din][10]_i_1 
       (.I0(\bram0a[o][o_din][14]_i_2_n_0 ),
        .I1(\bram0a[o][o_din][14]_i_3_n_0 ),
        .I2(mempcpy_scratch[26]),
        .I3(\bram0a[o][o_din][23]_i_3_n_0 ),
        .I4(mempcpy_scratch[10]),
        .I5(\bram0a[o][o_din][10]_i_2_n_0 ),
        .O(\bram0a[o][o_din] [10]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \bram0a[o][o_din][10]_i_2 
       (.I0(\t0_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\s_inp_pos_in_line_reg_n_0_[1] ),
        .I3(\s_inp_pos_in_line_reg_n_0_[0] ),
        .O(\bram0a[o][o_din][10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40554040)) 
    \bram0a[o][o_din][11]_i_1 
       (.I0(\bram0a[o][o_din][14]_i_2_n_0 ),
        .I1(\bram0a[o][o_din][14]_i_3_n_0 ),
        .I2(mempcpy_scratch[27]),
        .I3(\bram0a[o][o_din][23]_i_3_n_0 ),
        .I4(mempcpy_scratch[11]),
        .I5(\bram0a[o][o_din][11]_i_2_n_0 ),
        .O(\bram0a[o][o_din] [11]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \bram0a[o][o_din][11]_i_2 
       (.I0(\t0_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\s_inp_pos_in_line_reg_n_0_[1] ),
        .I3(\s_inp_pos_in_line_reg_n_0_[0] ),
        .O(\bram0a[o][o_din][11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40554040)) 
    \bram0a[o][o_din][12]_i_1 
       (.I0(\bram0a[o][o_din][14]_i_2_n_0 ),
        .I1(\bram0a[o][o_din][14]_i_3_n_0 ),
        .I2(mempcpy_scratch[28]),
        .I3(\bram0a[o][o_din][23]_i_3_n_0 ),
        .I4(mempcpy_scratch[12]),
        .I5(\bram0a[o][o_din][12]_i_2_n_0 ),
        .O(\bram0a[o][o_din] [12]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \bram0a[o][o_din][12]_i_2 
       (.I0(\t0_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\s_inp_pos_in_line_reg_n_0_[1] ),
        .I3(\s_inp_pos_in_line_reg_n_0_[0] ),
        .O(\bram0a[o][o_din][12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40554040)) 
    \bram0a[o][o_din][13]_i_1 
       (.I0(\bram0a[o][o_din][14]_i_2_n_0 ),
        .I1(\bram0a[o][o_din][14]_i_3_n_0 ),
        .I2(mempcpy_scratch[29]),
        .I3(\bram0a[o][o_din][23]_i_3_n_0 ),
        .I4(mempcpy_scratch[13]),
        .I5(\bram0a[o][o_din][13]_i_2_n_0 ),
        .O(\bram0a[o][o_din] [13]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \bram0a[o][o_din][13]_i_2 
       (.I0(\t0_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\s_inp_pos_in_line_reg_n_0_[1] ),
        .I3(\s_inp_pos_in_line_reg_n_0_[0] ),
        .O(\bram0a[o][o_din][13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40554040)) 
    \bram0a[o][o_din][14]_i_1 
       (.I0(\bram0a[o][o_din][14]_i_2_n_0 ),
        .I1(\bram0a[o][o_din][14]_i_3_n_0 ),
        .I2(mempcpy_scratch[30]),
        .I3(\bram0a[o][o_din][23]_i_3_n_0 ),
        .I4(mempcpy_scratch[14]),
        .I5(\bram0a[o][o_din][14]_i_4_n_0 ),
        .O(\bram0a[o][o_din] [14]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bram0a[o][o_din][14]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\s_inp_pos_in_line_reg_n_0_[1] ),
        .O(\bram0a[o][o_din][14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram0a[o][o_din][14]_i_3 
       (.I0(\bytes_first_line_reg_n_0_[2] ),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .O(\bram0a[o][o_din][14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \bram0a[o][o_din][14]_i_4 
       (.I0(\t0_reg_n_0_[6] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\s_inp_pos_in_line_reg_n_0_[1] ),
        .I3(\s_inp_pos_in_line_reg_n_0_[0] ),
        .O(\bram0a[o][o_din][14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F02000200020002)) 
    \bram0a[o][o_din][15]_i_1 
       (.I0(\bram0a[o][o_din][15]_i_2_n_0 ),
        .I1(\bram0a[o][o_din][15]_i_3_n_0 ),
        .I2(\s_inp_pos_in_line_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\s_inp_pos_in_line_reg_n_0_[0] ),
        .I5(\t0_reg_n_0_[7] ),
        .O(\bram0a[o][o_din] [15]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \bram0a[o][o_din][15]_i_2 
       (.I0(\bytes_first_line_reg_n_0_[2] ),
        .I1(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I2(\bram0a[o][o_din][31]_i_10_n_0 ),
        .O(\bram0a[o][o_din][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEFEFEFFFEFEFEF)) 
    \bram0a[o][o_din][15]_i_3 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(mempcpy_scratch[15]),
        .I3(\bytes_first_line_reg_n_0_[1] ),
        .I4(\bytes_first_line_reg_n_0_[2] ),
        .I5(mempcpy_scratch[31]),
        .O(\bram0a[o][o_din][15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444444444)) 
    \bram0a[o][o_din][16]_i_1 
       (.I0(\bram0a[o][o_din][23]_i_5_n_0 ),
        .I1(\t0_reg_n_0_[0] ),
        .I2(mempcpy_scratch[16]),
        .I3(\bram0a[o][o_din][23]_i_3_n_0 ),
        .I4(\bram0a[o][o_din][16]_i_2_n_0 ),
        .I5(\bram0a[o][o_din][23]_i_2_n_0 ),
        .O(\bram0a[o][o_din] [16]));
  LUT6 #(
    .INIT(64'h88F0880088008800)) 
    \bram0a[o][o_din][16]_i_2 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(mempcpy_scratch[32]),
        .I2(\bram0a[o][o_din][31]_i_10_n_0 ),
        .I3(\bytes_first_line_reg_n_0_[2] ),
        .I4(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I5(mempcpy_scratch[0]),
        .O(\bram0a[o][o_din][16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444444444)) 
    \bram0a[o][o_din][17]_i_1 
       (.I0(\bram0a[o][o_din][23]_i_5_n_0 ),
        .I1(\t0_reg_n_0_[1] ),
        .I2(mempcpy_scratch[17]),
        .I3(\bram0a[o][o_din][23]_i_3_n_0 ),
        .I4(\bram0a[o][o_din][17]_i_2_n_0 ),
        .I5(\bram0a[o][o_din][23]_i_2_n_0 ),
        .O(\bram0a[o][o_din] [17]));
  LUT6 #(
    .INIT(64'h88F0880088008800)) 
    \bram0a[o][o_din][17]_i_2 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(mempcpy_scratch[33]),
        .I2(\bram0a[o][o_din][31]_i_10_n_0 ),
        .I3(\bytes_first_line_reg_n_0_[2] ),
        .I4(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I5(mempcpy_scratch[1]),
        .O(\bram0a[o][o_din][17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444444444)) 
    \bram0a[o][o_din][18]_i_1 
       (.I0(\bram0a[o][o_din][23]_i_5_n_0 ),
        .I1(\t0_reg_n_0_[2] ),
        .I2(mempcpy_scratch[18]),
        .I3(\bram0a[o][o_din][23]_i_3_n_0 ),
        .I4(\bram0a[o][o_din][18]_i_2_n_0 ),
        .I5(\bram0a[o][o_din][23]_i_2_n_0 ),
        .O(\bram0a[o][o_din] [18]));
  LUT6 #(
    .INIT(64'h88F0880088008800)) 
    \bram0a[o][o_din][18]_i_2 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(mempcpy_scratch[34]),
        .I2(\bram0a[o][o_din][31]_i_10_n_0 ),
        .I3(\bytes_first_line_reg_n_0_[2] ),
        .I4(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I5(mempcpy_scratch[2]),
        .O(\bram0a[o][o_din][18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444444444)) 
    \bram0a[o][o_din][19]_i_1 
       (.I0(\bram0a[o][o_din][23]_i_5_n_0 ),
        .I1(\t0_reg_n_0_[3] ),
        .I2(mempcpy_scratch[19]),
        .I3(\bram0a[o][o_din][23]_i_3_n_0 ),
        .I4(\bram0a[o][o_din][19]_i_2_n_0 ),
        .I5(\bram0a[o][o_din][23]_i_2_n_0 ),
        .O(\bram0a[o][o_din] [19]));
  LUT6 #(
    .INIT(64'h88F0880088008800)) 
    \bram0a[o][o_din][19]_i_2 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(mempcpy_scratch[35]),
        .I2(\bram0a[o][o_din][31]_i_10_n_0 ),
        .I3(\bytes_first_line_reg_n_0_[2] ),
        .I4(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I5(mempcpy_scratch[3]),
        .O(\bram0a[o][o_din][19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40554040)) 
    \bram0a[o][o_din][1]_i_1 
       (.I0(\bram0a[o][o_din][7]_i_2_n_0 ),
        .I1(mempcpy_scratch[17]),
        .I2(\bram0a[o][o_din][14]_i_3_n_0 ),
        .I3(\bram0a[o][o_din][23]_i_3_n_0 ),
        .I4(mempcpy_scratch[1]),
        .I5(\bram0a[o][o_din][1]_i_2_n_0 ),
        .O(\bram0a[o][o_din] [1]));
  LUT6 #(
    .INIT(64'h10FF100010001000)) 
    \bram0a[o][o_din][1]_i_2 
       (.I0(\s_inp_pos_in_line_reg_n_0_[1] ),
        .I1(\s_inp_pos_in_line_reg_n_0_[0] ),
        .I2(\t0_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(mempcpy_scratch[41]),
        .O(\bram0a[o][o_din][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444444444)) 
    \bram0a[o][o_din][20]_i_1 
       (.I0(\bram0a[o][o_din][23]_i_5_n_0 ),
        .I1(\t0_reg_n_0_[4] ),
        .I2(mempcpy_scratch[20]),
        .I3(\bram0a[o][o_din][23]_i_3_n_0 ),
        .I4(\bram0a[o][o_din][20]_i_2_n_0 ),
        .I5(\bram0a[o][o_din][23]_i_2_n_0 ),
        .O(\bram0a[o][o_din] [20]));
  LUT6 #(
    .INIT(64'h88F0880088008800)) 
    \bram0a[o][o_din][20]_i_2 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(mempcpy_scratch[36]),
        .I2(\bram0a[o][o_din][31]_i_10_n_0 ),
        .I3(\bytes_first_line_reg_n_0_[2] ),
        .I4(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I5(mempcpy_scratch[4]),
        .O(\bram0a[o][o_din][20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444444444)) 
    \bram0a[o][o_din][21]_i_1 
       (.I0(\bram0a[o][o_din][23]_i_5_n_0 ),
        .I1(\t0_reg_n_0_[5] ),
        .I2(mempcpy_scratch[21]),
        .I3(\bram0a[o][o_din][23]_i_3_n_0 ),
        .I4(\bram0a[o][o_din][21]_i_2_n_0 ),
        .I5(\bram0a[o][o_din][23]_i_2_n_0 ),
        .O(\bram0a[o][o_din] [21]));
  LUT6 #(
    .INIT(64'h88F0880088008800)) 
    \bram0a[o][o_din][21]_i_2 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(mempcpy_scratch[37]),
        .I2(\bram0a[o][o_din][31]_i_10_n_0 ),
        .I3(\bytes_first_line_reg_n_0_[2] ),
        .I4(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I5(mempcpy_scratch[5]),
        .O(\bram0a[o][o_din][21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444444444)) 
    \bram0a[o][o_din][22]_i_1 
       (.I0(\bram0a[o][o_din][23]_i_5_n_0 ),
        .I1(\t0_reg_n_0_[6] ),
        .I2(mempcpy_scratch[22]),
        .I3(\bram0a[o][o_din][23]_i_3_n_0 ),
        .I4(\bram0a[o][o_din][22]_i_2_n_0 ),
        .I5(\bram0a[o][o_din][23]_i_2_n_0 ),
        .O(\bram0a[o][o_din] [22]));
  LUT6 #(
    .INIT(64'h88F0880088008800)) 
    \bram0a[o][o_din][22]_i_2 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(mempcpy_scratch[38]),
        .I2(\bram0a[o][o_din][31]_i_10_n_0 ),
        .I3(\bytes_first_line_reg_n_0_[2] ),
        .I4(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I5(mempcpy_scratch[6]),
        .O(\bram0a[o][o_din][22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA20FFFFAA20AA20)) 
    \bram0a[o][o_din][23]_i_1 
       (.I0(\bram0a[o][o_din][23]_i_2_n_0 ),
        .I1(\bram0a[o][o_din][23]_i_3_n_0 ),
        .I2(mempcpy_scratch[23]),
        .I3(\bram0a[o][o_din][23]_i_4_n_0 ),
        .I4(\bram0a[o][o_din][23]_i_5_n_0 ),
        .I5(\t0_reg_n_0_[7] ),
        .O(\bram0a[o][o_din] [23]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000007)) 
    \bram0a[o][o_din][23]_i_2 
       (.I0(\s_inp_pos_in_line_reg_n_0_[0] ),
        .I1(\s_inp_pos_in_line_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[5] ),
        .O(\bram0a[o][o_din][23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hAAF3)) 
    \bram0a[o][o_din][23]_i_3 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bram0a[o][o_din][31]_i_10_n_0 ),
        .I2(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I3(\bytes_first_line_reg_n_0_[2] ),
        .O(\bram0a[o][o_din][23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F80808080808080)) 
    \bram0a[o][o_din][23]_i_4 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(mempcpy_scratch[39]),
        .I2(\bytes_first_line_reg_n_0_[2] ),
        .I3(\bram0a[o][o_din][31]_i_10_n_0 ),
        .I4(mempcpy_scratch[7]),
        .I5(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .O(\bram0a[o][o_din][23]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \bram0a[o][o_din][23]_i_5 
       (.I0(\s_inp_pos_in_line_reg_n_0_[1] ),
        .I1(\s_inp_pos_in_line_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[5] ),
        .O(\bram0a[o][o_din][23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4F4F444F4444)) 
    \bram0a[o][o_din][24]_i_1 
       (.I0(\bram0a[o][o_din][31]_i_4_n_0 ),
        .I1(\t0_reg_n_0_[0] ),
        .I2(\bram0a[o][o_din][24]_i_2_n_0 ),
        .I3(\bram0a[o][o_din][31]_i_7_n_0 ),
        .I4(\bram0a[o][o_din][24]_i_3_n_0 ),
        .I5(\bram0a[o][o_din][24]_i_4_n_0 ),
        .O(\bram0a[o][o_din] [24]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hEEFE)) 
    \bram0a[o][o_din][24]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(mempcpy_scratch[0]),
        .O(\bram0a[o][o_din][24]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_din][24]_i_3 
       (.I0(mempcpy_scratch[8]),
        .I1(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I2(mempcpy_scratch[24]),
        .O(\bram0a[o][o_din][24]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFAEAAAEA)) 
    \bram0a[o][o_din][24]_i_4 
       (.I0(\bram0a[o][o_din][31]_i_9_n_0 ),
        .I1(mempcpy_scratch[24]),
        .I2(\bytes_first_line_reg_n_0_[2] ),
        .I3(\bytes_first_line_reg_n_0_[1] ),
        .I4(mempcpy_scratch[40]),
        .O(\bram0a[o][o_din][24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444F44)) 
    \bram0a[o][o_din][25]_i_1 
       (.I0(\bram0a[o][o_din][31]_i_4_n_0 ),
        .I1(\t0_reg_n_0_[1] ),
        .I2(\bram0a[o][o_din][25]_i_2_n_0 ),
        .I3(\bram0a[o][o_din][25]_i_3_n_0 ),
        .I4(\bram0a[o][o_din][31]_i_7_n_0 ),
        .I5(\bram0a[o][o_din][25]_i_4_n_0 ),
        .O(\bram0a[o][o_din] [25]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hEEFE)) 
    \bram0a[o][o_din][25]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(mempcpy_scratch[1]),
        .O(\bram0a[o][o_din][25]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hEFAAEAAA)) 
    \bram0a[o][o_din][25]_i_3 
       (.I0(\bram0a[o][o_din][31]_i_9_n_0 ),
        .I1(mempcpy_scratch[41]),
        .I2(\bytes_first_line_reg_n_0_[1] ),
        .I3(\bytes_first_line_reg_n_0_[2] ),
        .I4(mempcpy_scratch[25]),
        .O(\bram0a[o][o_din][25]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_din][25]_i_4 
       (.I0(mempcpy_scratch[9]),
        .I1(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I2(mempcpy_scratch[25]),
        .O(\bram0a[o][o_din][25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444F44)) 
    \bram0a[o][o_din][26]_i_1 
       (.I0(\bram0a[o][o_din][31]_i_4_n_0 ),
        .I1(\t0_reg_n_0_[2] ),
        .I2(\bram0a[o][o_din][26]_i_2_n_0 ),
        .I3(\bram0a[o][o_din][26]_i_3_n_0 ),
        .I4(\bram0a[o][o_din][31]_i_7_n_0 ),
        .I5(\bram0a[o][o_din][26]_i_4_n_0 ),
        .O(\bram0a[o][o_din] [26]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hEEFE)) 
    \bram0a[o][o_din][26]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(mempcpy_scratch[2]),
        .O(\bram0a[o][o_din][26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hEFAAEAAA)) 
    \bram0a[o][o_din][26]_i_3 
       (.I0(\bram0a[o][o_din][31]_i_9_n_0 ),
        .I1(mempcpy_scratch[42]),
        .I2(\bytes_first_line_reg_n_0_[1] ),
        .I3(\bytes_first_line_reg_n_0_[2] ),
        .I4(mempcpy_scratch[26]),
        .O(\bram0a[o][o_din][26]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_din][26]_i_4 
       (.I0(mempcpy_scratch[10]),
        .I1(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I2(mempcpy_scratch[26]),
        .O(\bram0a[o][o_din][26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444F44)) 
    \bram0a[o][o_din][27]_i_1 
       (.I0(\bram0a[o][o_din][31]_i_4_n_0 ),
        .I1(\t0_reg_n_0_[3] ),
        .I2(\bram0a[o][o_din][27]_i_2_n_0 ),
        .I3(\bram0a[o][o_din][27]_i_3_n_0 ),
        .I4(\bram0a[o][o_din][31]_i_7_n_0 ),
        .I5(\bram0a[o][o_din][27]_i_4_n_0 ),
        .O(\bram0a[o][o_din] [27]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hEEFE)) 
    \bram0a[o][o_din][27]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(mempcpy_scratch[3]),
        .O(\bram0a[o][o_din][27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hEFAAEAAA)) 
    \bram0a[o][o_din][27]_i_3 
       (.I0(\bram0a[o][o_din][31]_i_9_n_0 ),
        .I1(mempcpy_scratch[43]),
        .I2(\bytes_first_line_reg_n_0_[1] ),
        .I3(\bytes_first_line_reg_n_0_[2] ),
        .I4(mempcpy_scratch[27]),
        .O(\bram0a[o][o_din][27]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_din][27]_i_4 
       (.I0(mempcpy_scratch[11]),
        .I1(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I2(mempcpy_scratch[27]),
        .O(\bram0a[o][o_din][27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4F4F444F4444)) 
    \bram0a[o][o_din][28]_i_1 
       (.I0(\bram0a[o][o_din][31]_i_4_n_0 ),
        .I1(\t0_reg_n_0_[4] ),
        .I2(\bram0a[o][o_din][28]_i_2_n_0 ),
        .I3(\bram0a[o][o_din][31]_i_7_n_0 ),
        .I4(\bram0a[o][o_din][28]_i_3_n_0 ),
        .I5(\bram0a[o][o_din][28]_i_4_n_0 ),
        .O(\bram0a[o][o_din] [28]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hEEFE)) 
    \bram0a[o][o_din][28]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(mempcpy_scratch[4]),
        .O(\bram0a[o][o_din][28]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_din][28]_i_3 
       (.I0(mempcpy_scratch[12]),
        .I1(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I2(mempcpy_scratch[28]),
        .O(\bram0a[o][o_din][28]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFAEAAAEA)) 
    \bram0a[o][o_din][28]_i_4 
       (.I0(\bram0a[o][o_din][31]_i_9_n_0 ),
        .I1(mempcpy_scratch[28]),
        .I2(\bytes_first_line_reg_n_0_[2] ),
        .I3(\bytes_first_line_reg_n_0_[1] ),
        .I4(mempcpy_scratch[44]),
        .O(\bram0a[o][o_din][28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444F44)) 
    \bram0a[o][o_din][29]_i_1 
       (.I0(\bram0a[o][o_din][31]_i_4_n_0 ),
        .I1(\t0_reg_n_0_[5] ),
        .I2(\bram0a[o][o_din][29]_i_2_n_0 ),
        .I3(\bram0a[o][o_din][29]_i_3_n_0 ),
        .I4(\bram0a[o][o_din][31]_i_7_n_0 ),
        .I5(\bram0a[o][o_din][29]_i_4_n_0 ),
        .O(\bram0a[o][o_din] [29]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hEEFE)) 
    \bram0a[o][o_din][29]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(mempcpy_scratch[5]),
        .O(\bram0a[o][o_din][29]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hEFAAEAAA)) 
    \bram0a[o][o_din][29]_i_3 
       (.I0(\bram0a[o][o_din][31]_i_9_n_0 ),
        .I1(mempcpy_scratch[45]),
        .I2(\bytes_first_line_reg_n_0_[1] ),
        .I3(\bytes_first_line_reg_n_0_[2] ),
        .I4(mempcpy_scratch[29]),
        .O(\bram0a[o][o_din][29]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_din][29]_i_4 
       (.I0(mempcpy_scratch[13]),
        .I1(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I2(mempcpy_scratch[29]),
        .O(\bram0a[o][o_din][29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40554040)) 
    \bram0a[o][o_din][2]_i_1 
       (.I0(\bram0a[o][o_din][7]_i_2_n_0 ),
        .I1(mempcpy_scratch[18]),
        .I2(\bram0a[o][o_din][14]_i_3_n_0 ),
        .I3(\bram0a[o][o_din][23]_i_3_n_0 ),
        .I4(mempcpy_scratch[2]),
        .I5(\bram0a[o][o_din][2]_i_2_n_0 ),
        .O(\bram0a[o][o_din] [2]));
  LUT6 #(
    .INIT(64'h10FF100010001000)) 
    \bram0a[o][o_din][2]_i_2 
       (.I0(\s_inp_pos_in_line_reg_n_0_[1] ),
        .I1(\s_inp_pos_in_line_reg_n_0_[0] ),
        .I2(\t0_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(mempcpy_scratch[42]),
        .O(\bram0a[o][o_din][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444F44)) 
    \bram0a[o][o_din][30]_i_1 
       (.I0(\bram0a[o][o_din][31]_i_4_n_0 ),
        .I1(\t0_reg_n_0_[6] ),
        .I2(\bram0a[o][o_din][30]_i_2_n_0 ),
        .I3(\bram0a[o][o_din][30]_i_3_n_0 ),
        .I4(\bram0a[o][o_din][31]_i_7_n_0 ),
        .I5(\bram0a[o][o_din][30]_i_4_n_0 ),
        .O(\bram0a[o][o_din] [30]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hEEFE)) 
    \bram0a[o][o_din][30]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(mempcpy_scratch[6]),
        .O(\bram0a[o][o_din][30]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hEFAAEAAA)) 
    \bram0a[o][o_din][30]_i_3 
       (.I0(\bram0a[o][o_din][31]_i_9_n_0 ),
        .I1(mempcpy_scratch[46]),
        .I2(\bytes_first_line_reg_n_0_[1] ),
        .I3(\bytes_first_line_reg_n_0_[2] ),
        .I4(mempcpy_scratch[30]),
        .O(\bram0a[o][o_din][30]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_din][30]_i_4 
       (.I0(mempcpy_scratch[14]),
        .I1(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I2(mempcpy_scratch[30]),
        .O(\bram0a[o][o_din][30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001700000)) 
    \bram0a[o][o_din][31]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\bram0a[o][o_din][31]_i_3_n_0 ),
        .I5(rst),
        .O(\bram0a[o][o_din][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \bram0a[o][o_din][31]_i_10 
       (.I0(\bram0a[o][o_din][31]_i_12_n_0 ),
        .I1(\bram0a_reg[o][o_din][31]_i_13_n_7 ),
        .I2(\bram0a_reg[o][o_din][31]_i_14_n_7 ),
        .I3(\bram0a_reg[o][o_din][31]_i_14_n_6 ),
        .I4(\bram0a[o][o_din][31]_i_15_n_0 ),
        .I5(\bram0a[o][o_din][31]_i_16_n_0 ),
        .O(\bram0a[o][o_din][31]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \bram0a[o][o_din][31]_i_12 
       (.I0(\bram0a_reg[o][o_din][31]_i_14_n_5 ),
        .I1(\bram0a_reg[o][o_din][31]_i_13_n_6 ),
        .I2(\bram0a_reg[o][o_din][31]_i_21_n_7 ),
        .I3(\bram0a_reg[o][o_din][31]_i_13_n_4 ),
        .I4(\bram0a[o][o_din][31]_i_22_n_0 ),
        .O(\bram0a[o][o_din][31]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \bram0a[o][o_din][31]_i_15 
       (.I0(\bram0a_reg[o][o_din][31]_i_11_n_5 ),
        .I1(\mempcpy_scratch_reg[31]_i_6_n_7 ),
        .I2(\bram0a_reg[o][o_din][31]_i_21_n_6 ),
        .I3(\bram0a_reg[o][o_din][31]_i_13_n_5 ),
        .I4(\bram0a[o][o_din][31]_i_31_n_0 ),
        .O(\bram0a[o][o_din][31]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \bram0a[o][o_din][31]_i_16 
       (.I0(\bram0a_reg[o][o_din][31]_i_32_n_5 ),
        .I1(\mempcpy_scratch_reg[31]_i_15_n_5 ),
        .I2(\bram0a_reg[o][o_din][31]_i_14_n_4 ),
        .I3(\bram0a_reg[o][o_din][31]_i_21_n_4 ),
        .I4(\bram0a[o][o_din][31]_i_33_n_0 ),
        .O(\bram0a[o][o_din][31]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0a[o][o_din][31]_i_17 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\bram0a[o][o_din][31]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bram0a[o][o_din][31]_i_18 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\bram0a[o][o_din][31]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bram0a[o][o_din][31]_i_19 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\bram0a[o][o_din][31]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444F44)) 
    \bram0a[o][o_din][31]_i_2 
       (.I0(\bram0a[o][o_din][31]_i_4_n_0 ),
        .I1(\t0_reg_n_0_[7] ),
        .I2(\bram0a[o][o_din][31]_i_5_n_0 ),
        .I3(\bram0a[o][o_din][31]_i_6_n_0 ),
        .I4(\bram0a[o][o_din][31]_i_7_n_0 ),
        .I5(\bram0a[o][o_din][31]_i_8_n_0 ),
        .O(\bram0a[o][o_din] [31]));
  LUT2 #(
    .INIT(4'h9)) 
    \bram0a[o][o_din][31]_i_20 
       (.I0(\bytes_first_line_reg_n_0_[2] ),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .O(mempcpy_scratch4));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bram0a[o][o_din][31]_i_22 
       (.I0(\mempcpy_scratch_reg[31]_i_15_n_6 ),
        .I1(\mempcpy_scratch_reg[31]_i_15_n_7 ),
        .I2(\mempcpy_scratch_reg[31]_i_6_n_6 ),
        .I3(\bram0a_reg[o][o_din][31]_i_11_n_4 ),
        .O(\bram0a[o][o_din][31]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bram0a[o][o_din][31]_i_23 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\bram0a[o][o_din][31]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bram0a[o][o_din][31]_i_24 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\bram0a[o][o_din][31]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bram0a[o][o_din][31]_i_25 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\bram0a[o][o_din][31]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bram0a[o][o_din][31]_i_26 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\bram0a[o][o_din][31]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bram0a[o][o_din][31]_i_27 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\bram0a[o][o_din][31]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bram0a[o][o_din][31]_i_28 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\bram0a[o][o_din][31]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bram0a[o][o_din][31]_i_29 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\bram0a[o][o_din][31]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \bram0a[o][o_din][31]_i_3 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[2] ),
        .O(\bram0a[o][o_din][31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bram0a[o][o_din][31]_i_30 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\bram0a[o][o_din][31]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bram0a[o][o_din][31]_i_31 
       (.I0(\bram0a_reg[o][o_din][31]_i_21_n_5 ),
        .I1(\bram0a_reg[o][o_din][31]_i_11_n_6 ),
        .I2(\mempcpy_scratch_reg[31]_i_15_n_4 ),
        .I3(\bram0a_reg[o][o_din][31]_i_32_n_4 ),
        .O(\bram0a[o][o_din][31]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bram0a[o][o_din][31]_i_33 
       (.I0(\mempcpy_scratch_reg[31]_i_6_n_5 ),
        .I1(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I2(\bram0a_reg[o][o_din][31]_i_32_n_6 ),
        .I3(\bram0a_reg[o][o_din][31]_i_32_n_7 ),
        .O(\bram0a[o][o_din][31]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bram0a[o][o_din][31]_i_34 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\bram0a[o][o_din][31]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bram0a[o][o_din][31]_i_35 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\bram0a[o][o_din][31]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bram0a[o][o_din][31]_i_36 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\bram0a[o][o_din][31]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bram0a[o][o_din][31]_i_37 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\bram0a[o][o_din][31]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bram0a[o][o_din][31]_i_38 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\bram0a[o][o_din][31]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bram0a[o][o_din][31]_i_39 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\bram0a[o][o_din][31]_i_39_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \bram0a[o][o_din][31]_i_4 
       (.I0(\s_inp_pos_in_line_reg_n_0_[0] ),
        .I1(\s_inp_pos_in_line_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[5] ),
        .O(\bram0a[o][o_din][31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bram0a[o][o_din][31]_i_40 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\bram0a[o][o_din][31]_i_40_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bram0a[o][o_din][31]_i_41 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\bram0a[o][o_din][31]_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hEEFE)) 
    \bram0a[o][o_din][31]_i_5 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(mempcpy_scratch[7]),
        .O(\bram0a[o][o_din][31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hEFAAEAAA)) 
    \bram0a[o][o_din][31]_i_6 
       (.I0(\bram0a[o][o_din][31]_i_9_n_0 ),
        .I1(mempcpy_scratch[47]),
        .I2(\bytes_first_line_reg_n_0_[1] ),
        .I3(\bytes_first_line_reg_n_0_[2] ),
        .I4(mempcpy_scratch[31]),
        .O(\bram0a[o][o_din][31]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \bram0a[o][o_din][31]_i_7 
       (.I0(\bytes_first_line_reg_n_0_[2] ),
        .I1(\bram0a[o][o_din][31]_i_10_n_0 ),
        .O(\bram0a[o][o_din][31]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0a[o][o_din][31]_i_8 
       (.I0(mempcpy_scratch[15]),
        .I1(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I2(mempcpy_scratch[31]),
        .O(\bram0a[o][o_din][31]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \bram0a[o][o_din][31]_i_9 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .O(\bram0a[o][o_din][31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40554040)) 
    \bram0a[o][o_din][3]_i_1 
       (.I0(\bram0a[o][o_din][7]_i_2_n_0 ),
        .I1(mempcpy_scratch[19]),
        .I2(\bram0a[o][o_din][14]_i_3_n_0 ),
        .I3(\bram0a[o][o_din][23]_i_3_n_0 ),
        .I4(mempcpy_scratch[3]),
        .I5(\bram0a[o][o_din][3]_i_2_n_0 ),
        .O(\bram0a[o][o_din] [3]));
  LUT6 #(
    .INIT(64'h10FF100010001000)) 
    \bram0a[o][o_din][3]_i_2 
       (.I0(\s_inp_pos_in_line_reg_n_0_[1] ),
        .I1(\s_inp_pos_in_line_reg_n_0_[0] ),
        .I2(\t0_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(mempcpy_scratch[43]),
        .O(\bram0a[o][o_din][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40554040)) 
    \bram0a[o][o_din][4]_i_1 
       (.I0(\bram0a[o][o_din][7]_i_2_n_0 ),
        .I1(mempcpy_scratch[20]),
        .I2(\bram0a[o][o_din][14]_i_3_n_0 ),
        .I3(\bram0a[o][o_din][23]_i_3_n_0 ),
        .I4(mempcpy_scratch[4]),
        .I5(\bram0a[o][o_din][4]_i_2_n_0 ),
        .O(\bram0a[o][o_din] [4]));
  LUT6 #(
    .INIT(64'h10FF100010001000)) 
    \bram0a[o][o_din][4]_i_2 
       (.I0(\s_inp_pos_in_line_reg_n_0_[1] ),
        .I1(\s_inp_pos_in_line_reg_n_0_[0] ),
        .I2(\t0_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(mempcpy_scratch[44]),
        .O(\bram0a[o][o_din][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40554040)) 
    \bram0a[o][o_din][5]_i_1 
       (.I0(\bram0a[o][o_din][7]_i_2_n_0 ),
        .I1(mempcpy_scratch[21]),
        .I2(\bram0a[o][o_din][14]_i_3_n_0 ),
        .I3(\bram0a[o][o_din][23]_i_3_n_0 ),
        .I4(mempcpy_scratch[5]),
        .I5(\bram0a[o][o_din][5]_i_2_n_0 ),
        .O(\bram0a[o][o_din] [5]));
  LUT6 #(
    .INIT(64'h10FF100010001000)) 
    \bram0a[o][o_din][5]_i_2 
       (.I0(\s_inp_pos_in_line_reg_n_0_[1] ),
        .I1(\s_inp_pos_in_line_reg_n_0_[0] ),
        .I2(\t0_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(mempcpy_scratch[45]),
        .O(\bram0a[o][o_din][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40554040)) 
    \bram0a[o][o_din][6]_i_1 
       (.I0(\bram0a[o][o_din][7]_i_2_n_0 ),
        .I1(mempcpy_scratch[22]),
        .I2(\bram0a[o][o_din][14]_i_3_n_0 ),
        .I3(\bram0a[o][o_din][23]_i_3_n_0 ),
        .I4(mempcpy_scratch[6]),
        .I5(\bram0a[o][o_din][6]_i_2_n_0 ),
        .O(\bram0a[o][o_din] [6]));
  LUT6 #(
    .INIT(64'h000F000088888888)) 
    \bram0a[o][o_din][6]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(mempcpy_scratch[46]),
        .I2(\s_inp_pos_in_line_reg_n_0_[1] ),
        .I3(\s_inp_pos_in_line_reg_n_0_[0] ),
        .I4(\t0_reg_n_0_[6] ),
        .I5(\state_reg_n_0_[5] ),
        .O(\bram0a[o][o_din][6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40554040)) 
    \bram0a[o][o_din][7]_i_1 
       (.I0(\bram0a[o][o_din][7]_i_2_n_0 ),
        .I1(\bram0a[o][o_din][14]_i_3_n_0 ),
        .I2(mempcpy_scratch[23]),
        .I3(\bram0a[o][o_din][23]_i_3_n_0 ),
        .I4(mempcpy_scratch[7]),
        .I5(\bram0a[o][o_din][7]_i_3_n_0 ),
        .O(\bram0a[o][o_din] [7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \bram0a[o][o_din][7]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\s_inp_pos_in_line_reg_n_0_[0] ),
        .I4(\s_inp_pos_in_line_reg_n_0_[1] ),
        .O(\bram0a[o][o_din][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h10FF100010001000)) 
    \bram0a[o][o_din][7]_i_3 
       (.I0(\s_inp_pos_in_line_reg_n_0_[1] ),
        .I1(\s_inp_pos_in_line_reg_n_0_[0] ),
        .I2(\t0_reg_n_0_[7] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(mempcpy_scratch[47]),
        .O(\bram0a[o][o_din][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40554040)) 
    \bram0a[o][o_din][8]_i_1 
       (.I0(\bram0a[o][o_din][14]_i_2_n_0 ),
        .I1(\bram0a[o][o_din][14]_i_3_n_0 ),
        .I2(mempcpy_scratch[24]),
        .I3(\bram0a[o][o_din][23]_i_3_n_0 ),
        .I4(mempcpy_scratch[8]),
        .I5(\bram0a[o][o_din][8]_i_2_n_0 ),
        .O(\bram0a[o][o_din] [8]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \bram0a[o][o_din][8]_i_2 
       (.I0(\t0_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\s_inp_pos_in_line_reg_n_0_[1] ),
        .I3(\s_inp_pos_in_line_reg_n_0_[0] ),
        .O(\bram0a[o][o_din][8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40554040)) 
    \bram0a[o][o_din][9]_i_1 
       (.I0(\bram0a[o][o_din][14]_i_2_n_0 ),
        .I1(\bram0a[o][o_din][14]_i_3_n_0 ),
        .I2(mempcpy_scratch[25]),
        .I3(\bram0a[o][o_din][23]_i_3_n_0 ),
        .I4(mempcpy_scratch[9]),
        .I5(\bram0a[o][o_din][9]_i_2_n_0 ),
        .O(\bram0a[o][o_din] [9]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \bram0a[o][o_din][9]_i_2 
       (.I0(\t0_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\s_inp_pos_in_line_reg_n_0_[1] ),
        .I3(\s_inp_pos_in_line_reg_n_0_[0] ),
        .O(\bram0a[o][o_din][9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bram0a[o][o_en]_i_1 
       (.I0(\bram0a[o][o_en]_i_2_n_0 ),
        .I1(g0_b0__0_n_0),
        .I2(rst),
        .I3(o_mem0a_en),
        .O(\bram0a[o][o_en]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000031C131C131C1)) 
    \bram0a[o][o_en]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[5] ),
        .O(\bram0a[o][o_en]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h02FF020302020202)) 
    \bram0a[o][o_we][0]_i_1 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\bram0a[o][o_we][0]_i_2_n_0 ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\bram0a[o][o_we][0]_i_3_n_0 ),
        .O(\bram0a[o][o_we] [0]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram0a[o][o_we][0]_i_2 
       (.I0(\s_inp_pos_in_line_reg_n_0_[1] ),
        .I1(\s_inp_pos_in_line_reg_n_0_[0] ),
        .O(\bram0a[o][o_we][0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \bram0a[o][o_we][0]_i_3 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[5] ),
        .O(\bram0a[o][o_we][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0A0A0E0A)) 
    \bram0a[o][o_we][1]_i_1 
       (.I0(\bram0a[o][o_we][1]_i_2_n_0 ),
        .I1(\s_inp_pos_in_line_reg_n_0_[0] ),
        .I2(\s_inp_pos_in_line_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\bram0a[o][o_we] [1]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \bram0a[o][o_we][1]_i_2 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\bram0a[o][o_we][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000004FFFF)) 
    \bram0a[o][o_we][2]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\bram0a[o][o_we][2]_i_2_n_0 ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\bram0a[o][o_din][23]_i_5_n_0 ),
        .I5(\state_reg_n_0_[0] ),
        .O(\bram0a[o][o_we] [2]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram0a[o][o_we][2]_i_2 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .O(\bram0a[o][o_we][2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000BF)) 
    \bram0a[o][o_we][3]_i_1 
       (.I0(\bram0a[o][o_we][3]_i_3_n_0 ),
        .I1(\s_inp_pos_in_line_reg_n_0_[1] ),
        .I2(\s_inp_pos_in_line_reg_n_0_[0] ),
        .I3(\bram0a[o][o_we][3]_i_4_n_0 ),
        .I4(rst),
        .O(\bram0a[o][o_we][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000101000FF1010)) 
    \bram0a[o][o_we][3]_i_2 
       (.I0(\bram0a[o][o_we][3]_i_5_n_0 ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\bram0a[o][o_we][3]_i_6_n_0 ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\bram0a[o][o_we] [3]));
  LUT6 #(
    .INIT(64'h0000000301429622)) 
    \bram0a[o][o_we][3]_i_3 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[4] ),
        .I5(\state_reg_n_0_[5] ),
        .O(\bram0a[o][o_we][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEF7FFF9FFFBF9C1)) 
    \bram0a[o][o_we][3]_i_4 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\bram0a[o][o_we][3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram0a[o][o_we][3]_i_5 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\bram0a[o][o_we][3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \bram0a[o][o_we][3]_i_6 
       (.I0(\s_inp_pos_in_line_reg_n_0_[1] ),
        .I1(\s_inp_pos_in_line_reg_n_0_[0] ),
        .O(\bram0a[o][o_we][3]_i_6_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][10] 
       (.C(clk),
        .CE(\bram0a[o][o_addr][16]_i_1_n_0 ),
        .D(\bram0a[o][o_addr] [10]),
        .Q(o_mem0a_addr[8]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][11] 
       (.C(clk),
        .CE(\bram0a[o][o_addr][16]_i_1_n_0 ),
        .D(\bram0a[o][o_addr] [11]),
        .Q(o_mem0a_addr[9]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][12] 
       (.C(clk),
        .CE(\bram0a[o][o_addr][16]_i_1_n_0 ),
        .D(\bram0a[o][o_addr] [12]),
        .Q(o_mem0a_addr[10]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \bram0a_reg[o][o_addr][12]_i_2 
       (.CI(\bram0a_reg[o][o_addr][9]_i_2_n_0 ),
        .CO({\NLW_bram0a_reg[o][o_addr][12]_i_2_CO_UNCONNECTED [3],\bram0a_reg[o][o_addr][12]_i_2_n_1 ,\NLW_bram0a_reg[o][o_addr][12]_i_2_CO_UNCONNECTED [1],\bram0a_reg[o][o_addr][12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bram0a_reg[o][o_addr][12]_i_2_O_UNCONNECTED [3:2],\bram0a_reg[o][o_addr][12]_i_2_n_6 ,\bram0a_reg[o][o_addr][12]_i_2_n_7 }),
        .S({1'b0,1'b1,p_0_out[11:10]}));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][16] 
       (.C(clk),
        .CE(\bram0a[o][o_addr][16]_i_1_n_0 ),
        .D(\bram0a[o][o_addr] [16]),
        .Q(o_mem0a_addr[11]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][2] 
       (.C(clk),
        .CE(\bram0a[o][o_addr][16]_i_1_n_0 ),
        .D(\bram0a[o][o_addr] [2]),
        .Q(o_mem0a_addr[0]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][3] 
       (.C(clk),
        .CE(\bram0a[o][o_addr][16]_i_1_n_0 ),
        .D(\bram0a[o][o_addr] [3]),
        .Q(o_mem0a_addr[1]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][4] 
       (.C(clk),
        .CE(\bram0a[o][o_addr][16]_i_1_n_0 ),
        .D(\bram0a[o][o_addr] [4]),
        .Q(o_mem0a_addr[2]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][5] 
       (.C(clk),
        .CE(\bram0a[o][o_addr][16]_i_1_n_0 ),
        .D(\bram0a[o][o_addr] [5]),
        .Q(o_mem0a_addr[3]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \bram0a_reg[o][o_addr][5]_i_2 
       (.CI(1'b0),
        .CO({\bram0a_reg[o][o_addr][5]_i_2_n_0 ,\bram0a_reg[o][o_addr][5]_i_2_n_1 ,\bram0a_reg[o][o_addr][5]_i_2_n_2 ,\bram0a_reg[o][o_addr][5]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,p_0_out[3],1'b0}),
        .O({\bram0a_reg[o][o_addr][5]_i_2_n_4 ,\bram0a_reg[o][o_addr][5]_i_2_n_5 ,\bram0a_reg[o][o_addr][5]_i_2_n_6 ,\bram0a_reg[o][o_addr][5]_i_2_n_7 }),
        .S({p_0_out[5:4],\bram0a[o][o_addr][5]_i_6_n_0 ,p_0_out[2]}));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][6] 
       (.C(clk),
        .CE(\bram0a[o][o_addr][16]_i_1_n_0 ),
        .D(\bram0a[o][o_addr] [6]),
        .Q(o_mem0a_addr[4]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][7] 
       (.C(clk),
        .CE(\bram0a[o][o_addr][16]_i_1_n_0 ),
        .D(\bram0a[o][o_addr] [7]),
        .Q(o_mem0a_addr[5]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][8] 
       (.C(clk),
        .CE(\bram0a[o][o_addr][16]_i_1_n_0 ),
        .D(\bram0a[o][o_addr] [8]),
        .Q(o_mem0a_addr[6]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_addr][9] 
       (.C(clk),
        .CE(\bram0a[o][o_addr][16]_i_1_n_0 ),
        .D(\bram0a[o][o_addr] [9]),
        .Q(o_mem0a_addr[7]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \bram0a_reg[o][o_addr][9]_i_2 
       (.CI(\bram0a_reg[o][o_addr][5]_i_2_n_0 ),
        .CO({\bram0a_reg[o][o_addr][9]_i_2_n_0 ,\bram0a_reg[o][o_addr][9]_i_2_n_1 ,\bram0a_reg[o][o_addr][9]_i_2_n_2 ,\bram0a_reg[o][o_addr][9]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bram0a_reg[o][o_addr][9]_i_2_n_4 ,\bram0a_reg[o][o_addr][9]_i_2_n_5 ,\bram0a_reg[o][o_addr][9]_i_2_n_6 ,\bram0a_reg[o][o_addr][9]_i_2_n_7 }),
        .S(p_0_out[9:6]));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][0] 
       (.C(clk),
        .CE(\bram0a[o][o_din][31]_i_1_n_0 ),
        .D(\bram0a[o][o_din] [0]),
        .Q(o_mem0a_din[0]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][10] 
       (.C(clk),
        .CE(\bram0a[o][o_din][31]_i_1_n_0 ),
        .D(\bram0a[o][o_din] [10]),
        .Q(o_mem0a_din[10]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][11] 
       (.C(clk),
        .CE(\bram0a[o][o_din][31]_i_1_n_0 ),
        .D(\bram0a[o][o_din] [11]),
        .Q(o_mem0a_din[11]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][12] 
       (.C(clk),
        .CE(\bram0a[o][o_din][31]_i_1_n_0 ),
        .D(\bram0a[o][o_din] [12]),
        .Q(o_mem0a_din[12]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][13] 
       (.C(clk),
        .CE(\bram0a[o][o_din][31]_i_1_n_0 ),
        .D(\bram0a[o][o_din] [13]),
        .Q(o_mem0a_din[13]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][14] 
       (.C(clk),
        .CE(\bram0a[o][o_din][31]_i_1_n_0 ),
        .D(\bram0a[o][o_din] [14]),
        .Q(o_mem0a_din[14]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][15] 
       (.C(clk),
        .CE(\bram0a[o][o_din][31]_i_1_n_0 ),
        .D(\bram0a[o][o_din] [15]),
        .Q(o_mem0a_din[15]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][16] 
       (.C(clk),
        .CE(\bram0a[o][o_din][31]_i_1_n_0 ),
        .D(\bram0a[o][o_din] [16]),
        .Q(o_mem0a_din[16]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][17] 
       (.C(clk),
        .CE(\bram0a[o][o_din][31]_i_1_n_0 ),
        .D(\bram0a[o][o_din] [17]),
        .Q(o_mem0a_din[17]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][18] 
       (.C(clk),
        .CE(\bram0a[o][o_din][31]_i_1_n_0 ),
        .D(\bram0a[o][o_din] [18]),
        .Q(o_mem0a_din[18]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][19] 
       (.C(clk),
        .CE(\bram0a[o][o_din][31]_i_1_n_0 ),
        .D(\bram0a[o][o_din] [19]),
        .Q(o_mem0a_din[19]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][1] 
       (.C(clk),
        .CE(\bram0a[o][o_din][31]_i_1_n_0 ),
        .D(\bram0a[o][o_din] [1]),
        .Q(o_mem0a_din[1]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][20] 
       (.C(clk),
        .CE(\bram0a[o][o_din][31]_i_1_n_0 ),
        .D(\bram0a[o][o_din] [20]),
        .Q(o_mem0a_din[20]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][21] 
       (.C(clk),
        .CE(\bram0a[o][o_din][31]_i_1_n_0 ),
        .D(\bram0a[o][o_din] [21]),
        .Q(o_mem0a_din[21]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][22] 
       (.C(clk),
        .CE(\bram0a[o][o_din][31]_i_1_n_0 ),
        .D(\bram0a[o][o_din] [22]),
        .Q(o_mem0a_din[22]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][23] 
       (.C(clk),
        .CE(\bram0a[o][o_din][31]_i_1_n_0 ),
        .D(\bram0a[o][o_din] [23]),
        .Q(o_mem0a_din[23]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][24] 
       (.C(clk),
        .CE(\bram0a[o][o_din][31]_i_1_n_0 ),
        .D(\bram0a[o][o_din] [24]),
        .Q(o_mem0a_din[24]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][25] 
       (.C(clk),
        .CE(\bram0a[o][o_din][31]_i_1_n_0 ),
        .D(\bram0a[o][o_din] [25]),
        .Q(o_mem0a_din[25]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][26] 
       (.C(clk),
        .CE(\bram0a[o][o_din][31]_i_1_n_0 ),
        .D(\bram0a[o][o_din] [26]),
        .Q(o_mem0a_din[26]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][27] 
       (.C(clk),
        .CE(\bram0a[o][o_din][31]_i_1_n_0 ),
        .D(\bram0a[o][o_din] [27]),
        .Q(o_mem0a_din[27]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][28] 
       (.C(clk),
        .CE(\bram0a[o][o_din][31]_i_1_n_0 ),
        .D(\bram0a[o][o_din] [28]),
        .Q(o_mem0a_din[28]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][29] 
       (.C(clk),
        .CE(\bram0a[o][o_din][31]_i_1_n_0 ),
        .D(\bram0a[o][o_din] [29]),
        .Q(o_mem0a_din[29]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][2] 
       (.C(clk),
        .CE(\bram0a[o][o_din][31]_i_1_n_0 ),
        .D(\bram0a[o][o_din] [2]),
        .Q(o_mem0a_din[2]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][30] 
       (.C(clk),
        .CE(\bram0a[o][o_din][31]_i_1_n_0 ),
        .D(\bram0a[o][o_din] [30]),
        .Q(o_mem0a_din[30]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][31] 
       (.C(clk),
        .CE(\bram0a[o][o_din][31]_i_1_n_0 ),
        .D(\bram0a[o][o_din] [31]),
        .Q(o_mem0a_din[31]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0a_reg[o][o_din][31]_i_11 
       (.CI(1'b0),
        .CO({\bram0a_reg[o][o_din][31]_i_11_n_0 ,\bram0a_reg[o][o_din][31]_i_11_n_1 ,\bram0a_reg[o][o_din][31]_i_11_n_2 ,\bram0a_reg[o][o_din][31]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\bram0a[o][o_din][31]_i_17_n_0 ,1'b0}),
        .O({\bram0a_reg[o][o_din][31]_i_11_n_4 ,\bram0a_reg[o][o_din][31]_i_11_n_5 ,\bram0a_reg[o][o_din][31]_i_11_n_6 ,\bram0a_reg[o][o_din][31]_i_11_n_7 }),
        .S({\bram0a[o][o_din][31]_i_18_n_0 ,\bram0a[o][o_din][31]_i_19_n_0 ,mempcpy_scratch4,\bytes_first_line_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0a_reg[o][o_din][31]_i_13 
       (.CI(\bram0a_reg[o][o_din][31]_i_21_n_0 ),
        .CO({\bram0a_reg[o][o_din][31]_i_13_n_0 ,\bram0a_reg[o][o_din][31]_i_13_n_1 ,\bram0a_reg[o][o_din][31]_i_13_n_2 ,\bram0a_reg[o][o_din][31]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bram0a_reg[o][o_din][31]_i_13_n_4 ,\bram0a_reg[o][o_din][31]_i_13_n_5 ,\bram0a_reg[o][o_din][31]_i_13_n_6 ,\bram0a_reg[o][o_din][31]_i_13_n_7 }),
        .S({\bram0a[o][o_din][31]_i_23_n_0 ,\bram0a[o][o_din][31]_i_24_n_0 ,\bram0a[o][o_din][31]_i_25_n_0 ,\bram0a[o][o_din][31]_i_26_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0a_reg[o][o_din][31]_i_14 
       (.CI(\bram0a_reg[o][o_din][31]_i_11_n_0 ),
        .CO({\bram0a_reg[o][o_din][31]_i_14_n_0 ,\bram0a_reg[o][o_din][31]_i_14_n_1 ,\bram0a_reg[o][o_din][31]_i_14_n_2 ,\bram0a_reg[o][o_din][31]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bram0a_reg[o][o_din][31]_i_14_n_4 ,\bram0a_reg[o][o_din][31]_i_14_n_5 ,\bram0a_reg[o][o_din][31]_i_14_n_6 ,\bram0a_reg[o][o_din][31]_i_14_n_7 }),
        .S({\bram0a[o][o_din][31]_i_27_n_0 ,\bram0a[o][o_din][31]_i_28_n_0 ,\bram0a[o][o_din][31]_i_29_n_0 ,\bram0a[o][o_din][31]_i_30_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0a_reg[o][o_din][31]_i_21 
       (.CI(\bram0a_reg[o][o_din][31]_i_14_n_0 ),
        .CO({\bram0a_reg[o][o_din][31]_i_21_n_0 ,\bram0a_reg[o][o_din][31]_i_21_n_1 ,\bram0a_reg[o][o_din][31]_i_21_n_2 ,\bram0a_reg[o][o_din][31]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bram0a_reg[o][o_din][31]_i_21_n_4 ,\bram0a_reg[o][o_din][31]_i_21_n_5 ,\bram0a_reg[o][o_din][31]_i_21_n_6 ,\bram0a_reg[o][o_din][31]_i_21_n_7 }),
        .S({\bram0a[o][o_din][31]_i_34_n_0 ,\bram0a[o][o_din][31]_i_35_n_0 ,\bram0a[o][o_din][31]_i_36_n_0 ,\bram0a[o][o_din][31]_i_37_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0a_reg[o][o_din][31]_i_32 
       (.CI(\bram0a_reg[o][o_din][31]_i_13_n_0 ),
        .CO({\bram0a_reg[o][o_din][31]_i_32_n_0 ,\bram0a_reg[o][o_din][31]_i_32_n_1 ,\bram0a_reg[o][o_din][31]_i_32_n_2 ,\bram0a_reg[o][o_din][31]_i_32_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bram0a_reg[o][o_din][31]_i_32_n_4 ,\bram0a_reg[o][o_din][31]_i_32_n_5 ,\bram0a_reg[o][o_din][31]_i_32_n_6 ,\bram0a_reg[o][o_din][31]_i_32_n_7 }),
        .S({\bram0a[o][o_din][31]_i_38_n_0 ,\bram0a[o][o_din][31]_i_39_n_0 ,\bram0a[o][o_din][31]_i_40_n_0 ,\bram0a[o][o_din][31]_i_41_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][3] 
       (.C(clk),
        .CE(\bram0a[o][o_din][31]_i_1_n_0 ),
        .D(\bram0a[o][o_din] [3]),
        .Q(o_mem0a_din[3]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][4] 
       (.C(clk),
        .CE(\bram0a[o][o_din][31]_i_1_n_0 ),
        .D(\bram0a[o][o_din] [4]),
        .Q(o_mem0a_din[4]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][5] 
       (.C(clk),
        .CE(\bram0a[o][o_din][31]_i_1_n_0 ),
        .D(\bram0a[o][o_din] [5]),
        .Q(o_mem0a_din[5]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][6] 
       (.C(clk),
        .CE(\bram0a[o][o_din][31]_i_1_n_0 ),
        .D(\bram0a[o][o_din] [6]),
        .Q(o_mem0a_din[6]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][7] 
       (.C(clk),
        .CE(\bram0a[o][o_din][31]_i_1_n_0 ),
        .D(\bram0a[o][o_din] [7]),
        .Q(o_mem0a_din[7]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][8] 
       (.C(clk),
        .CE(\bram0a[o][o_din][31]_i_1_n_0 ),
        .D(\bram0a[o][o_din] [8]),
        .Q(o_mem0a_din[8]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_din][9] 
       (.C(clk),
        .CE(\bram0a[o][o_din][31]_i_1_n_0 ),
        .D(\bram0a[o][o_din] [9]),
        .Q(o_mem0a_din[9]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a EN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_en] 
       (.C(clk),
        .CE(1'b1),
        .D(\bram0a[o][o_en]_i_1_n_0 ),
        .Q(o_mem0a_en),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a WE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_we][0] 
       (.C(clk),
        .CE(\bram0a[o][o_we][3]_i_1_n_0 ),
        .D(\bram0a[o][o_we] [0]),
        .Q(o_mem0a_we[0]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a WE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_we][1] 
       (.C(clk),
        .CE(\bram0a[o][o_we][3]_i_1_n_0 ),
        .D(\bram0a[o][o_we] [1]),
        .Q(o_mem0a_we[1]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a WE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_we][2] 
       (.C(clk),
        .CE(\bram0a[o][o_we][3]_i_1_n_0 ),
        .D(\bram0a[o][o_we] [2]),
        .Q(o_mem0a_we[2]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a WE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0a_reg[o][o_we][3] 
       (.C(clk),
        .CE(\bram0a[o][o_we][3]_i_1_n_0 ),
        .D(\bram0a[o][o_we] [3]),
        .Q(o_mem0a_we[3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hABA8)) 
    \bram0b[o][o_addr][12]_i_2 
       (.I0(\s_inp_base_adr_reg_n_0_[11] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\s_oil_base_adr_reg_n_0_[11] ),
        .O(\bram0b[o][o_addr][12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \bram0b[o][o_addr][12]_i_3 
       (.I0(\s_inp_base_adr_reg_n_0_[10] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\s_oil_base_adr_reg_n_0_[10] ),
        .O(\bram0b[o][o_addr][12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \bram0b[o][o_addr][12]_i_4 
       (.I0(\s_inp_base_adr_reg_n_0_[9] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\s_oil_base_adr_reg_n_0_[9] ),
        .O(\bram0b[o][o_addr][12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000E00)) 
    \bram0b[o][o_addr][16]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\bram0b[o][o_addr][16]_i_3_n_0 ),
        .I4(\state_reg_n_0_[4] ),
        .I5(\state_reg_n_0_[2] ),
        .O(\bram0b[o][o_addr][16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \bram0b[o][o_addr][16]_i_2 
       (.I0(\s_oil_base_adr_reg_n_0_[16] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[4] ),
        .O(\bram0b[o][o_addr][16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \bram0b[o][o_addr][16]_i_3 
       (.I0(rst),
        .I1(\state_reg_n_0_[5] ),
        .O(\bram0b[o][o_addr][16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \bram0b[o][o_addr][4]_i_2 
       (.I0(\s_inp_base_adr_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\s_oil_base_adr_reg_n_0_[2] ),
        .O(\bram0b[o][o_addr][4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \bram0b[o][o_addr][4]_i_3 
       (.I0(\s_inp_base_adr_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\s_oil_base_adr_reg_n_0_[4] ),
        .O(\bram0b[o][o_addr][4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \bram0b[o][o_addr][4]_i_4 
       (.I0(\s_inp_base_adr_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\s_oil_base_adr_reg_n_0_[3] ),
        .O(\bram0b[o][o_addr][4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h01FD)) 
    \bram0b[o][o_addr][4]_i_5 
       (.I0(\s_oil_base_adr_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\s_inp_base_adr_reg_n_0_[2] ),
        .O(\bram0b[o][o_addr][4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \bram0b[o][o_addr][8]_i_2 
       (.I0(\s_inp_base_adr_reg_n_0_[8] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\s_oil_base_adr_reg_n_0_[8] ),
        .O(\bram0b[o][o_addr][8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \bram0b[o][o_addr][8]_i_3 
       (.I0(\s_inp_base_adr_reg_n_0_[7] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\s_oil_base_adr_reg_n_0_[7] ),
        .O(\bram0b[o][o_addr][8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \bram0b[o][o_addr][8]_i_4 
       (.I0(\s_inp_base_adr_reg_n_0_[6] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\s_oil_base_adr_reg_n_0_[6] ),
        .O(\bram0b[o][o_addr][8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \bram0b[o][o_addr][8]_i_5 
       (.I0(\s_inp_base_adr_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\s_oil_base_adr_reg_n_0_[5] ),
        .O(\bram0b[o][o_addr][8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA0000AAAA333F)) 
    \bram0b[o][o_din][0]_i_1 
       (.I0(mempcpy_scratch[8]),
        .I1(\bram0b[o][o_din][0]_i_2_n_0 ),
        .I2(\bram0b[o][o_din][0]_i_3_n_0 ),
        .I3(\bram0b[o][o_din][23]_i_3_n_0 ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\bram0b[o][o_din][15]_i_3_n_0 ),
        .O(\bram0b[o][o_din] [0]));
  LUT6 #(
    .INIT(64'hEEAEEEBFFFAEFFBF)) 
    \bram0b[o][o_din][0]_i_2 
       (.I0(\bram0b[o][o_din][31]_i_6_n_0 ),
        .I1(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I2(mempcpy_scratch[16]),
        .I3(\bram0b_reg[o][o_din][31]_i_5_n_5 ),
        .I4(mempcpy_scratch[0]),
        .I5(mempcpy_scratch[32]),
        .O(\bram0b[o][o_din][0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \bram0b[o][o_din][0]_i_3 
       (.I0(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I1(mempcpy_scratch[0]),
        .O(\bram0b[o][o_din][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0C0C5C0CAC0CF)) 
    \bram0b[o][o_din][10]_i_1 
       (.I0(\bram0b_reg[o][o_din][15]_i_2_n_7 ),
        .I1(mempcpy_scratch[18]),
        .I2(\state_reg_n_0_[0] ),
        .I3(\bram0b[o][o_din][15]_i_3_n_0 ),
        .I4(\bram0b[o][o_din][10]_i_2_n_0 ),
        .I5(\bram0b[o][o_din][10]_i_3_n_0 ),
        .O(\bram0b[o][o_din] [10]));
  LUT6 #(
    .INIT(64'hEEEEAEBFFFFFAEBF)) 
    \bram0b[o][o_din][10]_i_2 
       (.I0(\bram0b[o][o_din][15]_i_8_n_0 ),
        .I1(\bram0b_reg[o][o_din][31]_i_5_n_5 ),
        .I2(mempcpy_scratch[42]),
        .I3(mempcpy_scratch[10]),
        .I4(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I5(mempcpy_scratch[26]),
        .O(\bram0b[o][o_din][10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \bram0b[o][o_din][10]_i_3 
       (.I0(mempcpy_scratch[10]),
        .I1(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I2(\bram0b[o][o_din][31]_i_7_n_0 ),
        .O(\bram0b[o][o_din][10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0C0C5C0CAC0CF)) 
    \bram0b[o][o_din][11]_i_1 
       (.I0(\bram0b_reg[o][o_din][15]_i_2_n_7 ),
        .I1(mempcpy_scratch[19]),
        .I2(\state_reg_n_0_[0] ),
        .I3(\bram0b[o][o_din][15]_i_3_n_0 ),
        .I4(\bram0b[o][o_din][11]_i_2_n_0 ),
        .I5(\bram0b[o][o_din][11]_i_3_n_0 ),
        .O(\bram0b[o][o_din] [11]));
  LUT6 #(
    .INIT(64'hEEEEAEBFFFFFAEBF)) 
    \bram0b[o][o_din][11]_i_2 
       (.I0(\bram0b[o][o_din][15]_i_8_n_0 ),
        .I1(\bram0b_reg[o][o_din][31]_i_5_n_5 ),
        .I2(mempcpy_scratch[43]),
        .I3(mempcpy_scratch[11]),
        .I4(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I5(mempcpy_scratch[27]),
        .O(\bram0b[o][o_din][11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \bram0b[o][o_din][11]_i_3 
       (.I0(mempcpy_scratch[11]),
        .I1(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I2(\bram0b[o][o_din][31]_i_7_n_0 ),
        .O(\bram0b[o][o_din][11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0C0C5C0CAC0CF)) 
    \bram0b[o][o_din][12]_i_1 
       (.I0(\bram0b_reg[o][o_din][15]_i_2_n_7 ),
        .I1(mempcpy_scratch[20]),
        .I2(\state_reg_n_0_[0] ),
        .I3(\bram0b[o][o_din][15]_i_3_n_0 ),
        .I4(\bram0b[o][o_din][12]_i_2_n_0 ),
        .I5(\bram0b[o][o_din][12]_i_3_n_0 ),
        .O(\bram0b[o][o_din] [12]));
  LUT6 #(
    .INIT(64'hEEEEAEBFFFFFAEBF)) 
    \bram0b[o][o_din][12]_i_2 
       (.I0(\bram0b[o][o_din][15]_i_8_n_0 ),
        .I1(\bram0b_reg[o][o_din][31]_i_5_n_5 ),
        .I2(mempcpy_scratch[44]),
        .I3(mempcpy_scratch[12]),
        .I4(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I5(mempcpy_scratch[28]),
        .O(\bram0b[o][o_din][12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \bram0b[o][o_din][12]_i_3 
       (.I0(mempcpy_scratch[12]),
        .I1(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I2(\bram0b[o][o_din][31]_i_7_n_0 ),
        .O(\bram0b[o][o_din][12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0C0C5C0CAC0CF)) 
    \bram0b[o][o_din][13]_i_1 
       (.I0(\bram0b_reg[o][o_din][15]_i_2_n_7 ),
        .I1(mempcpy_scratch[21]),
        .I2(\state_reg_n_0_[0] ),
        .I3(\bram0b[o][o_din][15]_i_3_n_0 ),
        .I4(\bram0b[o][o_din][13]_i_2_n_0 ),
        .I5(\bram0b[o][o_din][13]_i_3_n_0 ),
        .O(\bram0b[o][o_din] [13]));
  LUT6 #(
    .INIT(64'hEEEEAEBFFFFFAEBF)) 
    \bram0b[o][o_din][13]_i_2 
       (.I0(\bram0b[o][o_din][15]_i_8_n_0 ),
        .I1(\bram0b_reg[o][o_din][31]_i_5_n_5 ),
        .I2(mempcpy_scratch[45]),
        .I3(mempcpy_scratch[13]),
        .I4(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I5(mempcpy_scratch[29]),
        .O(\bram0b[o][o_din][13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \bram0b[o][o_din][13]_i_3 
       (.I0(mempcpy_scratch[13]),
        .I1(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I2(\bram0b[o][o_din][31]_i_7_n_0 ),
        .O(\bram0b[o][o_din][13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0C0C5C0CAC0CF)) 
    \bram0b[o][o_din][14]_i_1 
       (.I0(\bram0b_reg[o][o_din][15]_i_2_n_7 ),
        .I1(mempcpy_scratch[22]),
        .I2(\state_reg_n_0_[0] ),
        .I3(\bram0b[o][o_din][15]_i_3_n_0 ),
        .I4(\bram0b[o][o_din][14]_i_2_n_0 ),
        .I5(\bram0b[o][o_din][14]_i_3_n_0 ),
        .O(\bram0b[o][o_din] [14]));
  LUT6 #(
    .INIT(64'hEEEEAEBFFFFFAEBF)) 
    \bram0b[o][o_din][14]_i_2 
       (.I0(\bram0b[o][o_din][15]_i_8_n_0 ),
        .I1(\bram0b_reg[o][o_din][31]_i_5_n_5 ),
        .I2(mempcpy_scratch[46]),
        .I3(mempcpy_scratch[14]),
        .I4(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I5(mempcpy_scratch[30]),
        .O(\bram0b[o][o_din][14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \bram0b[o][o_din][14]_i_3 
       (.I0(mempcpy_scratch[14]),
        .I1(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I2(\bram0b[o][o_din][31]_i_7_n_0 ),
        .O(\bram0b[o][o_din][14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0C0C5C0CAC0CF)) 
    \bram0b[o][o_din][15]_i_1 
       (.I0(\bram0b_reg[o][o_din][15]_i_2_n_7 ),
        .I1(mempcpy_scratch[23]),
        .I2(\state_reg_n_0_[0] ),
        .I3(\bram0b[o][o_din][15]_i_3_n_0 ),
        .I4(\bram0b[o][o_din][15]_i_4_n_0 ),
        .I5(\bram0b[o][o_din][15]_i_5_n_0 ),
        .O(\bram0b[o][o_din] [15]));
  LUT3 #(
    .INIT(8'h56)) 
    \bram0b[o][o_din][15]_i_10 
       (.I0(C[29]),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .I2(\bytes_second_line_reg_n_0_[1] ),
        .O(\bram0b[o][o_din][15]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \bram0b[o][o_din][15]_i_11 
       (.I0(C[28]),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .I2(\bytes_second_line_reg_n_0_[1] ),
        .O(\bram0b[o][o_din][15]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \bram0b[o][o_din][15]_i_12 
       (.I0(C[27]),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .I2(\bytes_second_line_reg_n_0_[1] ),
        .O(\bram0b[o][o_din][15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bram0b[o][o_din][15]_i_14 
       (.I0(\bram0b[o][o_din][15]_i_19_n_0 ),
        .I1(\bram0b[o][o_din][15]_i_20_n_0 ),
        .I2(\bram0b_reg[o][o_din][31]_i_13_n_7 ),
        .I3(\bram0b_reg[o][o_din][31]_i_14_n_4 ),
        .I4(\bram0b_reg[o][o_din][31]_i_13_n_5 ),
        .I5(\bram0b_reg[o][o_din][31]_i_13_n_6 ),
        .O(\bram0b[o][o_din][15]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bram0b[o][o_din][15]_i_15 
       (.I0(\bram0b_reg[o][o_din][31]_i_31_n_7 ),
        .I1(\bram0b_reg[o][o_din][31]_i_42_n_4 ),
        .I2(\bram0b_reg[o][o_din][31]_i_31_n_5 ),
        .I3(\bram0b_reg[o][o_din][31]_i_31_n_6 ),
        .O(\bram0b[o][o_din][15]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram0b[o][o_din][15]_i_16 
       (.I0(\bram0b_reg[o][o_din][31]_i_31_n_4 ),
        .I1(\bram0b_reg[o][o_din][31]_i_14_n_7 ),
        .O(\bram0b[o][o_din][15]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \bram0b[o][o_din][15]_i_17 
       (.I0(\bram0b_reg[o][o_din][31]_i_41_n_6 ),
        .I1(\bram0b_reg[o][o_din][31]_i_41_n_5 ),
        .I2(\bram0b_reg[o][o_din][31]_i_5_n_4 ),
        .I3(\bram0b_reg[o][o_din][31]_i_41_n_7 ),
        .I4(\bram0b[o][o_din][15]_i_21_n_0 ),
        .O(\bram0b[o][o_din][15]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bram0b[o][o_din][15]_i_18 
       (.I0(\bytes_second_line_reg_n_0_[1] ),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .O(\bram0b[o][o_din][15]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram0b[o][o_din][15]_i_19 
       (.I0(\bram0b_reg[o][o_din][15]_i_2_n_7 ),
        .I1(\bram0b_reg[o][o_din][15]_i_6_n_4 ),
        .O(\bram0b[o][o_din][15]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bram0b[o][o_din][15]_i_20 
       (.I0(\bram0b_reg[o][o_din][15]_i_6_n_5 ),
        .I1(\bram0b_reg[o][o_din][15]_i_6_n_6 ),
        .I2(\bram0b_reg[o][o_din][15]_i_6_n_7 ),
        .I3(\bram0b_reg[o][o_din][31]_i_13_n_4 ),
        .O(\bram0b[o][o_din][15]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bram0b[o][o_din][15]_i_21 
       (.I0(\bram0b_reg[o][o_din][31]_i_42_n_7 ),
        .I1(\bram0b_reg[o][o_din][31]_i_41_n_4 ),
        .I2(\bram0b_reg[o][o_din][31]_i_42_n_5 ),
        .I3(\bram0b_reg[o][o_din][31]_i_42_n_6 ),
        .O(\bram0b[o][o_din][15]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bram0b[o][o_din][15]_i_3 
       (.I0(\bytes_second_line_reg_n_0_[1] ),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .O(\bram0b[o][o_din][15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \bram0b[o][o_din][15]_i_4 
       (.I0(\bram0b[o][o_din][15]_i_8_n_0 ),
        .I1(mempcpy_scratch[15]),
        .I2(\bram0b_reg[o][o_din][31]_i_5_n_5 ),
        .I3(mempcpy_scratch[47]),
        .I4(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I5(mempcpy_scratch[31]),
        .O(\bram0b[o][o_din][15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \bram0b[o][o_din][15]_i_5 
       (.I0(mempcpy_scratch[15]),
        .I1(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I2(\bram0b[o][o_din][31]_i_7_n_0 ),
        .O(\bram0b[o][o_din][15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \bram0b[o][o_din][15]_i_7 
       (.I0(C[31]),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .I2(\bytes_second_line_reg_n_0_[1] ),
        .O(\bram0b[o][o_din][15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \bram0b[o][o_din][15]_i_8 
       (.I0(\bram0b[o][o_din][15]_i_14_n_0 ),
        .I1(\bram0b[o][o_din][15]_i_15_n_0 ),
        .I2(\bram0b_reg[o][o_din][31]_i_14_n_6 ),
        .I3(\bram0b_reg[o][o_din][31]_i_14_n_5 ),
        .I4(\bram0b[o][o_din][15]_i_16_n_0 ),
        .I5(\bram0b[o][o_din][15]_i_17_n_0 ),
        .O(\bram0b[o][o_din][15]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \bram0b[o][o_din][15]_i_9 
       (.I0(C[30]),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .I2(\bytes_second_line_reg_n_0_[1] ),
        .O(\bram0b[o][o_din][15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA3F330000)) 
    \bram0b[o][o_din][16]_i_1 
       (.I0(mempcpy_scratch[24]),
        .I1(\bram0b[o][o_din][16]_i_2_n_0 ),
        .I2(\bram0b[o][o_din][23]_i_3_n_0 ),
        .I3(\bram0b[o][o_din][16]_i_3_n_0 ),
        .I4(\bytes_second_line_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\bram0b[o][o_din] [16]));
  LUT5 #(
    .INIT(32'hFAFBFFFB)) 
    \bram0b[o][o_din][16]_i_2 
       (.I0(\bram0b[o][o_din][31]_i_6_n_0 ),
        .I1(mempcpy_scratch[16]),
        .I2(\bram0b_reg[o][o_din][31]_i_5_n_5 ),
        .I3(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I4(mempcpy_scratch[32]),
        .O(\bram0b[o][o_din][16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][16]_i_3 
       (.I0(mempcpy_scratch[0]),
        .I1(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I2(mempcpy_scratch[16]),
        .O(\bram0b[o][o_din][16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA3F330000)) 
    \bram0b[o][o_din][17]_i_1 
       (.I0(mempcpy_scratch[25]),
        .I1(\bram0b[o][o_din][17]_i_2_n_0 ),
        .I2(\bram0b[o][o_din][23]_i_3_n_0 ),
        .I3(\bram0b[o][o_din][17]_i_3_n_0 ),
        .I4(\bytes_second_line_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\bram0b[o][o_din] [17]));
  LUT5 #(
    .INIT(32'hFAFBFFFB)) 
    \bram0b[o][o_din][17]_i_2 
       (.I0(\bram0b[o][o_din][31]_i_6_n_0 ),
        .I1(mempcpy_scratch[17]),
        .I2(\bram0b_reg[o][o_din][31]_i_5_n_5 ),
        .I3(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I4(mempcpy_scratch[33]),
        .O(\bram0b[o][o_din][17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][17]_i_3 
       (.I0(mempcpy_scratch[1]),
        .I1(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I2(mempcpy_scratch[17]),
        .O(\bram0b[o][o_din][17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA3F330000)) 
    \bram0b[o][o_din][18]_i_1 
       (.I0(mempcpy_scratch[26]),
        .I1(\bram0b[o][o_din][18]_i_2_n_0 ),
        .I2(\bram0b[o][o_din][23]_i_3_n_0 ),
        .I3(\bram0b[o][o_din][18]_i_3_n_0 ),
        .I4(\bytes_second_line_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\bram0b[o][o_din] [18]));
  LUT5 #(
    .INIT(32'hFAFBFFFB)) 
    \bram0b[o][o_din][18]_i_2 
       (.I0(\bram0b[o][o_din][31]_i_6_n_0 ),
        .I1(mempcpy_scratch[18]),
        .I2(\bram0b_reg[o][o_din][31]_i_5_n_5 ),
        .I3(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I4(mempcpy_scratch[34]),
        .O(\bram0b[o][o_din][18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][18]_i_3 
       (.I0(mempcpy_scratch[2]),
        .I1(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I2(mempcpy_scratch[18]),
        .O(\bram0b[o][o_din][18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA3F330000)) 
    \bram0b[o][o_din][19]_i_1 
       (.I0(mempcpy_scratch[27]),
        .I1(\bram0b[o][o_din][19]_i_2_n_0 ),
        .I2(\bram0b[o][o_din][23]_i_3_n_0 ),
        .I3(\bram0b[o][o_din][19]_i_3_n_0 ),
        .I4(\bytes_second_line_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\bram0b[o][o_din] [19]));
  LUT5 #(
    .INIT(32'hFAFBFFFB)) 
    \bram0b[o][o_din][19]_i_2 
       (.I0(\bram0b[o][o_din][31]_i_6_n_0 ),
        .I1(mempcpy_scratch[19]),
        .I2(\bram0b_reg[o][o_din][31]_i_5_n_5 ),
        .I3(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I4(mempcpy_scratch[35]),
        .O(\bram0b[o][o_din][19]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][19]_i_3 
       (.I0(mempcpy_scratch[3]),
        .I1(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I2(mempcpy_scratch[19]),
        .O(\bram0b[o][o_din][19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA0000AAAA333F)) 
    \bram0b[o][o_din][1]_i_1 
       (.I0(mempcpy_scratch[9]),
        .I1(\bram0b[o][o_din][1]_i_2_n_0 ),
        .I2(\bram0b[o][o_din][1]_i_3_n_0 ),
        .I3(\bram0b[o][o_din][23]_i_3_n_0 ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\bram0b[o][o_din][15]_i_3_n_0 ),
        .O(\bram0b[o][o_din] [1]));
  LUT6 #(
    .INIT(64'hEEAEEEBFFFAEFFBF)) 
    \bram0b[o][o_din][1]_i_2 
       (.I0(\bram0b[o][o_din][31]_i_6_n_0 ),
        .I1(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I2(mempcpy_scratch[17]),
        .I3(\bram0b_reg[o][o_din][31]_i_5_n_5 ),
        .I4(mempcpy_scratch[1]),
        .I5(mempcpy_scratch[33]),
        .O(\bram0b[o][o_din][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \bram0b[o][o_din][1]_i_3 
       (.I0(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I1(mempcpy_scratch[1]),
        .O(\bram0b[o][o_din][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA3F330000)) 
    \bram0b[o][o_din][20]_i_1 
       (.I0(mempcpy_scratch[28]),
        .I1(\bram0b[o][o_din][20]_i_2_n_0 ),
        .I2(\bram0b[o][o_din][23]_i_3_n_0 ),
        .I3(\bram0b[o][o_din][20]_i_3_n_0 ),
        .I4(\bytes_second_line_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\bram0b[o][o_din] [20]));
  LUT5 #(
    .INIT(32'hFAFBFFFB)) 
    \bram0b[o][o_din][20]_i_2 
       (.I0(\bram0b[o][o_din][31]_i_6_n_0 ),
        .I1(mempcpy_scratch[20]),
        .I2(\bram0b_reg[o][o_din][31]_i_5_n_5 ),
        .I3(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I4(mempcpy_scratch[36]),
        .O(\bram0b[o][o_din][20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][20]_i_3 
       (.I0(mempcpy_scratch[4]),
        .I1(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I2(mempcpy_scratch[20]),
        .O(\bram0b[o][o_din][20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA3F330000)) 
    \bram0b[o][o_din][21]_i_1 
       (.I0(mempcpy_scratch[29]),
        .I1(\bram0b[o][o_din][21]_i_2_n_0 ),
        .I2(\bram0b[o][o_din][23]_i_3_n_0 ),
        .I3(\bram0b[o][o_din][21]_i_3_n_0 ),
        .I4(\bytes_second_line_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\bram0b[o][o_din] [21]));
  LUT5 #(
    .INIT(32'hFAFBFFFB)) 
    \bram0b[o][o_din][21]_i_2 
       (.I0(\bram0b[o][o_din][31]_i_6_n_0 ),
        .I1(mempcpy_scratch[21]),
        .I2(\bram0b_reg[o][o_din][31]_i_5_n_5 ),
        .I3(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I4(mempcpy_scratch[37]),
        .O(\bram0b[o][o_din][21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][21]_i_3 
       (.I0(mempcpy_scratch[5]),
        .I1(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I2(mempcpy_scratch[21]),
        .O(\bram0b[o][o_din][21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA3F330000)) 
    \bram0b[o][o_din][22]_i_1 
       (.I0(mempcpy_scratch[30]),
        .I1(\bram0b[o][o_din][22]_i_2_n_0 ),
        .I2(\bram0b[o][o_din][23]_i_3_n_0 ),
        .I3(\bram0b[o][o_din][22]_i_3_n_0 ),
        .I4(\bytes_second_line_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\bram0b[o][o_din] [22]));
  LUT5 #(
    .INIT(32'hFAFBFFFB)) 
    \bram0b[o][o_din][22]_i_2 
       (.I0(\bram0b[o][o_din][31]_i_6_n_0 ),
        .I1(mempcpy_scratch[22]),
        .I2(\bram0b_reg[o][o_din][31]_i_5_n_5 ),
        .I3(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I4(mempcpy_scratch[38]),
        .O(\bram0b[o][o_din][22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][22]_i_3 
       (.I0(mempcpy_scratch[6]),
        .I1(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I2(mempcpy_scratch[22]),
        .O(\bram0b[o][o_din][22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA3F330000)) 
    \bram0b[o][o_din][23]_i_1 
       (.I0(mempcpy_scratch[31]),
        .I1(\bram0b[o][o_din][23]_i_2_n_0 ),
        .I2(\bram0b[o][o_din][23]_i_3_n_0 ),
        .I3(\bram0b[o][o_din][23]_i_4_n_0 ),
        .I4(\bytes_second_line_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\bram0b[o][o_din] [23]));
  LUT5 #(
    .INIT(32'hFAFBFFFB)) 
    \bram0b[o][o_din][23]_i_2 
       (.I0(\bram0b[o][o_din][31]_i_6_n_0 ),
        .I1(mempcpy_scratch[23]),
        .I2(\bram0b_reg[o][o_din][31]_i_5_n_5 ),
        .I3(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I4(mempcpy_scratch[39]),
        .O(\bram0b[o][o_din][23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \bram0b[o][o_din][23]_i_3 
       (.I0(\bram0b[o][o_din][31]_i_7_n_0 ),
        .I1(\bram0b_reg[o][o_din][15]_i_2_n_7 ),
        .O(\bram0b[o][o_din][23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram0b[o][o_din][23]_i_4 
       (.I0(mempcpy_scratch[7]),
        .I1(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I2(mempcpy_scratch[23]),
        .O(\bram0b[o][o_din][23]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAF300)) 
    \bram0b[o][o_din][24]_i_1 
       (.I0(mempcpy_scratch[32]),
        .I1(\bram0b[o][o_din][24]_i_2_n_0 ),
        .I2(\bram0b[o][o_din][24]_i_3_n_0 ),
        .I3(\bytes_second_line_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\bram0b[o][o_din] [24]));
  LUT5 #(
    .INIT(32'hFAFBFFFB)) 
    \bram0b[o][o_din][24]_i_2 
       (.I0(\bram0b[o][o_din][31]_i_6_n_0 ),
        .I1(mempcpy_scratch[24]),
        .I2(\bram0b_reg[o][o_din][31]_i_5_n_5 ),
        .I3(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I4(mempcpy_scratch[40]),
        .O(\bram0b[o][o_din][24]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h80888000)) 
    \bram0b[o][o_din][24]_i_3 
       (.I0(\bram0b[o][o_din][31]_i_7_n_0 ),
        .I1(\bram0b_reg[o][o_din][15]_i_2_n_7 ),
        .I2(mempcpy_scratch[8]),
        .I3(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I4(mempcpy_scratch[24]),
        .O(\bram0b[o][o_din][24]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAF300)) 
    \bram0b[o][o_din][25]_i_1 
       (.I0(mempcpy_scratch[33]),
        .I1(\bram0b[o][o_din][25]_i_2_n_0 ),
        .I2(\bram0b[o][o_din][25]_i_3_n_0 ),
        .I3(\bytes_second_line_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\bram0b[o][o_din] [25]));
  LUT5 #(
    .INIT(32'hFAFBFFFB)) 
    \bram0b[o][o_din][25]_i_2 
       (.I0(\bram0b[o][o_din][31]_i_6_n_0 ),
        .I1(mempcpy_scratch[25]),
        .I2(\bram0b_reg[o][o_din][31]_i_5_n_5 ),
        .I3(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I4(mempcpy_scratch[41]),
        .O(\bram0b[o][o_din][25]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h80888000)) 
    \bram0b[o][o_din][25]_i_3 
       (.I0(\bram0b[o][o_din][31]_i_7_n_0 ),
        .I1(\bram0b_reg[o][o_din][15]_i_2_n_7 ),
        .I2(mempcpy_scratch[9]),
        .I3(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I4(mempcpy_scratch[25]),
        .O(\bram0b[o][o_din][25]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAF300)) 
    \bram0b[o][o_din][26]_i_1 
       (.I0(mempcpy_scratch[34]),
        .I1(\bram0b[o][o_din][26]_i_2_n_0 ),
        .I2(\bram0b[o][o_din][26]_i_3_n_0 ),
        .I3(\bytes_second_line_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\bram0b[o][o_din] [26]));
  LUT5 #(
    .INIT(32'hFAFBFFFB)) 
    \bram0b[o][o_din][26]_i_2 
       (.I0(\bram0b[o][o_din][31]_i_6_n_0 ),
        .I1(mempcpy_scratch[26]),
        .I2(\bram0b_reg[o][o_din][31]_i_5_n_5 ),
        .I3(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I4(mempcpy_scratch[42]),
        .O(\bram0b[o][o_din][26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h80888000)) 
    \bram0b[o][o_din][26]_i_3 
       (.I0(\bram0b[o][o_din][31]_i_7_n_0 ),
        .I1(\bram0b_reg[o][o_din][15]_i_2_n_7 ),
        .I2(mempcpy_scratch[10]),
        .I3(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I4(mempcpy_scratch[26]),
        .O(\bram0b[o][o_din][26]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAF300)) 
    \bram0b[o][o_din][27]_i_1 
       (.I0(mempcpy_scratch[35]),
        .I1(\bram0b[o][o_din][27]_i_2_n_0 ),
        .I2(\bram0b[o][o_din][27]_i_3_n_0 ),
        .I3(\bytes_second_line_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\bram0b[o][o_din] [27]));
  LUT5 #(
    .INIT(32'hFAFBFFFB)) 
    \bram0b[o][o_din][27]_i_2 
       (.I0(\bram0b[o][o_din][31]_i_6_n_0 ),
        .I1(mempcpy_scratch[27]),
        .I2(\bram0b_reg[o][o_din][31]_i_5_n_5 ),
        .I3(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I4(mempcpy_scratch[43]),
        .O(\bram0b[o][o_din][27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h80888000)) 
    \bram0b[o][o_din][27]_i_3 
       (.I0(\bram0b[o][o_din][31]_i_7_n_0 ),
        .I1(\bram0b_reg[o][o_din][15]_i_2_n_7 ),
        .I2(mempcpy_scratch[11]),
        .I3(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I4(mempcpy_scratch[27]),
        .O(\bram0b[o][o_din][27]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAF300)) 
    \bram0b[o][o_din][28]_i_1 
       (.I0(mempcpy_scratch[36]),
        .I1(\bram0b[o][o_din][28]_i_2_n_0 ),
        .I2(\bram0b[o][o_din][28]_i_3_n_0 ),
        .I3(\bytes_second_line_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\bram0b[o][o_din] [28]));
  LUT5 #(
    .INIT(32'hFAFBFFFB)) 
    \bram0b[o][o_din][28]_i_2 
       (.I0(\bram0b[o][o_din][31]_i_6_n_0 ),
        .I1(mempcpy_scratch[28]),
        .I2(\bram0b_reg[o][o_din][31]_i_5_n_5 ),
        .I3(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I4(mempcpy_scratch[44]),
        .O(\bram0b[o][o_din][28]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h80888000)) 
    \bram0b[o][o_din][28]_i_3 
       (.I0(\bram0b[o][o_din][31]_i_7_n_0 ),
        .I1(\bram0b_reg[o][o_din][15]_i_2_n_7 ),
        .I2(mempcpy_scratch[12]),
        .I3(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I4(mempcpy_scratch[28]),
        .O(\bram0b[o][o_din][28]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAF300)) 
    \bram0b[o][o_din][29]_i_1 
       (.I0(mempcpy_scratch[37]),
        .I1(\bram0b[o][o_din][29]_i_2_n_0 ),
        .I2(\bram0b[o][o_din][29]_i_3_n_0 ),
        .I3(\bytes_second_line_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\bram0b[o][o_din] [29]));
  LUT5 #(
    .INIT(32'hFAFBFFFB)) 
    \bram0b[o][o_din][29]_i_2 
       (.I0(\bram0b[o][o_din][31]_i_6_n_0 ),
        .I1(mempcpy_scratch[29]),
        .I2(\bram0b_reg[o][o_din][31]_i_5_n_5 ),
        .I3(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I4(mempcpy_scratch[45]),
        .O(\bram0b[o][o_din][29]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h80888000)) 
    \bram0b[o][o_din][29]_i_3 
       (.I0(\bram0b[o][o_din][31]_i_7_n_0 ),
        .I1(\bram0b_reg[o][o_din][15]_i_2_n_7 ),
        .I2(mempcpy_scratch[13]),
        .I3(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I4(mempcpy_scratch[29]),
        .O(\bram0b[o][o_din][29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA0000AAAA333F)) 
    \bram0b[o][o_din][2]_i_1 
       (.I0(mempcpy_scratch[10]),
        .I1(\bram0b[o][o_din][2]_i_2_n_0 ),
        .I2(\bram0b[o][o_din][2]_i_3_n_0 ),
        .I3(\bram0b[o][o_din][23]_i_3_n_0 ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\bram0b[o][o_din][15]_i_3_n_0 ),
        .O(\bram0b[o][o_din] [2]));
  LUT6 #(
    .INIT(64'hEEAEEEBFFFAEFFBF)) 
    \bram0b[o][o_din][2]_i_2 
       (.I0(\bram0b[o][o_din][31]_i_6_n_0 ),
        .I1(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I2(mempcpy_scratch[18]),
        .I3(\bram0b_reg[o][o_din][31]_i_5_n_5 ),
        .I4(mempcpy_scratch[2]),
        .I5(mempcpy_scratch[34]),
        .O(\bram0b[o][o_din][2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \bram0b[o][o_din][2]_i_3 
       (.I0(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I1(mempcpy_scratch[2]),
        .O(\bram0b[o][o_din][2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAF300)) 
    \bram0b[o][o_din][30]_i_1 
       (.I0(mempcpy_scratch[38]),
        .I1(\bram0b[o][o_din][30]_i_2_n_0 ),
        .I2(\bram0b[o][o_din][30]_i_3_n_0 ),
        .I3(\bytes_second_line_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\bram0b[o][o_din] [30]));
  LUT5 #(
    .INIT(32'hFAFBFFFB)) 
    \bram0b[o][o_din][30]_i_2 
       (.I0(\bram0b[o][o_din][31]_i_6_n_0 ),
        .I1(mempcpy_scratch[30]),
        .I2(\bram0b_reg[o][o_din][31]_i_5_n_5 ),
        .I3(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I4(mempcpy_scratch[46]),
        .O(\bram0b[o][o_din][30]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h80888000)) 
    \bram0b[o][o_din][30]_i_3 
       (.I0(\bram0b[o][o_din][31]_i_7_n_0 ),
        .I1(\bram0b_reg[o][o_din][15]_i_2_n_7 ),
        .I2(mempcpy_scratch[14]),
        .I3(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I4(mempcpy_scratch[30]),
        .O(\bram0b[o][o_din][30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \bram0b[o][o_din][31]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(rst),
        .O(\bram0b[o][o_din][31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \bram0b[o][o_din][31]_i_10 
       (.I0(C[5]),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .I2(\bytes_second_line_reg_n_0_[1] ),
        .O(\bram0b[o][o_din][31]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram0b[o][o_din][31]_i_11 
       (.I0(\bytes_second_line_reg_n_0_[1] ),
        .I1(C[4]),
        .O(\bram0b[o][o_din][31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bram0b[o][o_din][31]_i_12 
       (.I0(\bram0b[o][o_din][31]_i_28_n_0 ),
        .I1(\bram0b[o][o_din][31]_i_29_n_0 ),
        .I2(\bram0b[o][o_din][31]_i_30_n_0 ),
        .I3(\bram0b_reg[o][o_din][31]_i_31_n_6 ),
        .I4(\bram0b_reg[o][o_din][31]_i_14_n_5 ),
        .I5(\bram0b_reg[o][o_din][31]_i_13_n_5 ),
        .O(\bram0b[o][o_din][31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bram0b[o][o_din][31]_i_15 
       (.I0(\bram0b_reg[o][o_din][15]_i_6_n_7 ),
        .I1(\bram0b_reg[o][o_din][31]_i_13_n_4 ),
        .I2(\bram0b_reg[o][o_din][31]_i_41_n_4 ),
        .I3(\bram0b_reg[o][o_din][31]_i_31_n_7 ),
        .I4(\bram0b_reg[o][o_din][31]_i_42_n_7 ),
        .I5(\bram0b_reg[o][o_din][31]_i_42_n_4 ),
        .O(\bram0b[o][o_din][31]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \bram0b[o][o_din][31]_i_16 
       (.I0(\bram0b_reg[o][o_din][31]_i_8_n_4 ),
        .I1(\bram0b_reg[o][o_din][31]_i_17_n_6 ),
        .I2(\bram0b_reg[o][o_din][31]_i_17_n_5 ),
        .I3(\mempcpy_scratch_reg[31]_i_20_n_5 ),
        .I4(\bram0b[o][o_din][31]_i_43_n_0 ),
        .O(\bram0b[o][o_din][31]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \bram0b[o][o_din][31]_i_19 
       (.I0(\bram0b_reg[o][o_din][31]_i_18_n_7 ),
        .I1(\bram0b_reg[o][o_din][31]_i_60_n_7 ),
        .I2(\bram0b_reg[o][o_din][31]_i_18_n_5 ),
        .I3(\bram0b_reg[o][o_din][31]_i_61_n_6 ),
        .I4(\bram0b[o][o_din][31]_i_62_n_0 ),
        .O(\bram0b[o][o_din][31]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAFC00)) 
    \bram0b[o][o_din][31]_i_2 
       (.I0(mempcpy_scratch[39]),
        .I1(\bram0b[o][o_din][31]_i_3_n_0 ),
        .I2(\bram0b[o][o_din][31]_i_4_n_0 ),
        .I3(\bytes_second_line_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\bram0b[o][o_din] [31]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \bram0b[o][o_din][31]_i_20 
       (.I0(\bram0b_reg[o][o_din][31]_i_8_n_6 ),
        .I1(\bram0b_reg[o][o_din][31]_i_61_n_7 ),
        .I2(\bram0b_reg[o][o_din][31]_i_60_n_6 ),
        .I3(\mempcpy_scratch_reg[31]_i_20_n_7 ),
        .I4(\bram0b[o][o_din][31]_i_63_n_0 ),
        .O(\bram0b[o][o_din][31]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bram0b[o][o_din][31]_i_21 
       (.I0(\bytes_second_line_reg_n_0_[2] ),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(C[6]),
        .O(\bram0b[o][o_din][31]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h41)) 
    \bram0b[o][o_din][31]_i_22 
       (.I0(C[5]),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .I2(\bytes_second_line_reg_n_0_[1] ),
        .O(\bram0b[o][o_din][31]_i_22_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \bram0b[o][o_din][31]_i_23 
       (.I0(C[4]),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .O(\bram0b[o][o_din][31]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h02FD)) 
    \bram0b[o][o_din][31]_i_24 
       (.I0(C[6]),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(\bytes_second_line_reg_n_0_[2] ),
        .I3(C[7]),
        .O(\bram0b[o][o_din][31]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h42BD)) 
    \bram0b[o][o_din][31]_i_25 
       (.I0(C[5]),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(\bytes_second_line_reg_n_0_[2] ),
        .I3(C[6]),
        .O(\bram0b[o][o_din][31]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \bram0b[o][o_din][31]_i_26 
       (.I0(\bram0b[o][o_din][31]_i_23_n_0 ),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(\bytes_second_line_reg_n_0_[2] ),
        .I3(C[5]),
        .O(\bram0b[o][o_din][31]_i_26_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \bram0b[o][o_din][31]_i_27 
       (.I0(C[4]),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .O(\bram0b[o][o_din][31]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bram0b[o][o_din][31]_i_28 
       (.I0(\bram0b_reg[o][o_din][31]_i_14_n_7 ),
        .I1(\bram0b_reg[o][o_din][31]_i_31_n_4 ),
        .I2(\bram0b_reg[o][o_din][31]_i_41_n_7 ),
        .I3(\bram0b_reg[o][o_din][15]_i_6_n_4 ),
        .I4(\bram0b_reg[o][o_din][15]_i_2_n_7 ),
        .I5(\bram0b_reg[o][o_din][31]_i_5_n_4 ),
        .O(\bram0b[o][o_din][31]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \bram0b[o][o_din][31]_i_29 
       (.I0(\bram0b_reg[o][o_din][31]_i_41_n_6 ),
        .I1(\bram0b_reg[o][o_din][15]_i_6_n_6 ),
        .I2(\bram0b_reg[o][o_din][15]_i_6_n_5 ),
        .I3(\bram0b_reg[o][o_din][31]_i_42_n_5 ),
        .I4(\bram0b_reg[o][o_din][31]_i_14_n_6 ),
        .O(\bram0b[o][o_din][31]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h00003202)) 
    \bram0b[o][o_din][31]_i_3 
       (.I0(mempcpy_scratch[31]),
        .I1(\bram0b_reg[o][o_din][31]_i_5_n_5 ),
        .I2(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I3(mempcpy_scratch[47]),
        .I4(\bram0b[o][o_din][31]_i_6_n_0 ),
        .O(\bram0b[o][o_din][31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bram0b[o][o_din][31]_i_30 
       (.I0(\bram0b_reg[o][o_din][31]_i_42_n_6 ),
        .I1(\bram0b_reg[o][o_din][31]_i_41_n_5 ),
        .I2(\bram0b_reg[o][o_din][31]_i_13_n_6 ),
        .I3(\bram0b_reg[o][o_din][31]_i_31_n_5 ),
        .O(\bram0b[o][o_din][31]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \bram0b[o][o_din][31]_i_32 
       (.I0(C[26]),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .I2(\bytes_second_line_reg_n_0_[1] ),
        .O(\bram0b[o][o_din][31]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \bram0b[o][o_din][31]_i_33 
       (.I0(C[25]),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .I2(\bytes_second_line_reg_n_0_[1] ),
        .O(\bram0b[o][o_din][31]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \bram0b[o][o_din][31]_i_34 
       (.I0(C[24]),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .I2(\bytes_second_line_reg_n_0_[1] ),
        .O(\bram0b[o][o_din][31]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \bram0b[o][o_din][31]_i_35 
       (.I0(C[23]),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .I2(\bytes_second_line_reg_n_0_[1] ),
        .O(\bram0b[o][o_din][31]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \bram0b[o][o_din][31]_i_37 
       (.I0(C[22]),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .I2(\bytes_second_line_reg_n_0_[1] ),
        .O(\bram0b[o][o_din][31]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \bram0b[o][o_din][31]_i_38 
       (.I0(C[21]),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .I2(\bytes_second_line_reg_n_0_[1] ),
        .O(\bram0b[o][o_din][31]_i_38_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \bram0b[o][o_din][31]_i_39 
       (.I0(C[20]),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .I2(\bytes_second_line_reg_n_0_[1] ),
        .O(\bram0b[o][o_din][31]_i_39_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h80888000)) 
    \bram0b[o][o_din][31]_i_4 
       (.I0(\bram0b[o][o_din][31]_i_7_n_0 ),
        .I1(\bram0b_reg[o][o_din][15]_i_2_n_7 ),
        .I2(mempcpy_scratch[15]),
        .I3(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I4(mempcpy_scratch[31]),
        .O(\bram0b[o][o_din][31]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \bram0b[o][o_din][31]_i_40 
       (.I0(C[19]),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .I2(\bytes_second_line_reg_n_0_[1] ),
        .O(\bram0b[o][o_din][31]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bram0b[o][o_din][31]_i_43 
       (.I0(\mempcpy_scratch_reg[31]_i_8_n_6 ),
        .I1(\bram0b_reg[o][o_din][31]_i_61_n_4 ),
        .I2(\mempcpy_scratch_reg[31]_i_20_n_4 ),
        .I3(\mempcpy_scratch_reg[31]_i_20_n_6 ),
        .O(\bram0b[o][o_din][31]_i_43_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bram0b[o][o_din][31]_i_44 
       (.I0(\bytes_second_line_reg_n_0_[2] ),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(C[14]),
        .O(\bram0b[o][o_din][31]_i_44_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bram0b[o][o_din][31]_i_45 
       (.I0(\bytes_second_line_reg_n_0_[2] ),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(C[13]),
        .O(\bram0b[o][o_din][31]_i_45_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bram0b[o][o_din][31]_i_46 
       (.I0(\bytes_second_line_reg_n_0_[2] ),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(C[12]),
        .O(\bram0b[o][o_din][31]_i_46_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bram0b[o][o_din][31]_i_47 
       (.I0(\bytes_second_line_reg_n_0_[2] ),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(C[11]),
        .O(\bram0b[o][o_din][31]_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h02FD)) 
    \bram0b[o][o_din][31]_i_48 
       (.I0(C[14]),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(\bytes_second_line_reg_n_0_[2] ),
        .I3(C[15]),
        .O(\bram0b[o][o_din][31]_i_48_n_0 ));
  LUT4 #(
    .INIT(16'h02FD)) 
    \bram0b[o][o_din][31]_i_49 
       (.I0(C[13]),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(\bytes_second_line_reg_n_0_[2] ),
        .I3(C[14]),
        .O(\bram0b[o][o_din][31]_i_49_n_0 ));
  LUT4 #(
    .INIT(16'h02FD)) 
    \bram0b[o][o_din][31]_i_50 
       (.I0(C[12]),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(\bytes_second_line_reg_n_0_[2] ),
        .I3(C[13]),
        .O(\bram0b[o][o_din][31]_i_50_n_0 ));
  LUT4 #(
    .INIT(16'h02FD)) 
    \bram0b[o][o_din][31]_i_51 
       (.I0(C[11]),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(\bytes_second_line_reg_n_0_[2] ),
        .I3(C[12]),
        .O(\bram0b[o][o_din][31]_i_51_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bram0b[o][o_din][31]_i_52 
       (.I0(\bytes_second_line_reg_n_0_[2] ),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(C[10]),
        .O(\bram0b[o][o_din][31]_i_52_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bram0b[o][o_din][31]_i_53 
       (.I0(\bytes_second_line_reg_n_0_[2] ),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(C[9]),
        .O(\bram0b[o][o_din][31]_i_53_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bram0b[o][o_din][31]_i_54 
       (.I0(\bytes_second_line_reg_n_0_[2] ),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(C[8]),
        .O(\bram0b[o][o_din][31]_i_54_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bram0b[o][o_din][31]_i_55 
       (.I0(\bytes_second_line_reg_n_0_[2] ),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(C[7]),
        .O(\bram0b[o][o_din][31]_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h02FD)) 
    \bram0b[o][o_din][31]_i_56 
       (.I0(C[10]),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(\bytes_second_line_reg_n_0_[2] ),
        .I3(C[11]),
        .O(\bram0b[o][o_din][31]_i_56_n_0 ));
  LUT4 #(
    .INIT(16'h02FD)) 
    \bram0b[o][o_din][31]_i_57 
       (.I0(C[9]),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(\bytes_second_line_reg_n_0_[2] ),
        .I3(C[10]),
        .O(\bram0b[o][o_din][31]_i_57_n_0 ));
  LUT4 #(
    .INIT(16'h02FD)) 
    \bram0b[o][o_din][31]_i_58 
       (.I0(C[8]),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(\bytes_second_line_reg_n_0_[2] ),
        .I3(C[9]),
        .O(\bram0b[o][o_din][31]_i_58_n_0 ));
  LUT4 #(
    .INIT(16'h02FD)) 
    \bram0b[o][o_din][31]_i_59 
       (.I0(C[7]),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(\bytes_second_line_reg_n_0_[2] ),
        .I3(C[8]),
        .O(\bram0b[o][o_din][31]_i_59_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \bram0b[o][o_din][31]_i_6 
       (.I0(\bram0b[o][o_din][31]_i_12_n_0 ),
        .I1(\bram0b_reg[o][o_din][31]_i_13_n_7 ),
        .I2(\bram0b_reg[o][o_din][31]_i_14_n_4 ),
        .I3(\bram0b[o][o_din][31]_i_15_n_0 ),
        .I4(\bram0b_reg[o][o_din][15]_i_2_n_7 ),
        .O(\bram0b[o][o_din][31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bram0b[o][o_din][31]_i_62 
       (.I0(\bram0b_reg[o][o_din][31]_i_60_n_4 ),
        .I1(\bram0b_reg[o][o_din][31]_i_18_n_6 ),
        .I2(\mempcpy_scratch_reg[31]_i_8_n_7 ),
        .I3(\bram0b_reg[o][o_din][31]_i_60_n_5 ),
        .O(\bram0b[o][o_din][31]_i_62_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bram0b[o][o_din][31]_i_63 
       (.I0(\mempcpy_scratch_reg[31]_i_8_n_5 ),
        .I1(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I2(\bram0b_reg[o][o_din][31]_i_61_n_5 ),
        .I3(\bram0b_reg[o][o_din][31]_i_17_n_7 ),
        .O(\bram0b[o][o_din][31]_i_63_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \bram0b[o][o_din][31]_i_64 
       (.I0(C[18]),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .I2(\bytes_second_line_reg_n_0_[1] ),
        .O(\bram0b[o][o_din][31]_i_64_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \bram0b[o][o_din][31]_i_65 
       (.I0(C[17]),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .I2(\bytes_second_line_reg_n_0_[1] ),
        .O(\bram0b[o][o_din][31]_i_65_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \bram0b[o][o_din][31]_i_66 
       (.I0(C[16]),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .I2(\bytes_second_line_reg_n_0_[1] ),
        .O(\bram0b[o][o_din][31]_i_66_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \bram0b[o][o_din][31]_i_67 
       (.I0(C[15]),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .I2(\bytes_second_line_reg_n_0_[1] ),
        .O(\bram0b[o][o_din][31]_i_67_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bram0b[o][o_din][31]_i_68 
       (.I0(\bytes_second_line_reg_n_0_[1] ),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .O(\bram0b[o][o_din][31]_i_68_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bram0b[o][o_din][31]_i_69 
       (.I0(\bytes_second_line_reg_n_0_[1] ),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .O(\bram0b[o][o_din][31]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \bram0b[o][o_din][31]_i_7 
       (.I0(\bram0b[o][o_din][31]_i_16_n_0 ),
        .I1(\bram0b_reg[o][o_din][31]_i_17_n_4 ),
        .I2(\bram0b_reg[o][o_din][31]_i_18_n_4 ),
        .I3(\bram0b_reg[o][o_din][31]_i_8_n_5 ),
        .I4(\bram0b[o][o_din][31]_i_19_n_0 ),
        .I5(\bram0b[o][o_din][31]_i_20_n_0 ),
        .O(\bram0b[o][o_din][31]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bram0b[o][o_din][31]_i_70 
       (.I0(\bytes_second_line_reg_n_0_[1] ),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .O(\bram0b[o][o_din][31]_i_70_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bram0b[o][o_din][31]_i_71 
       (.I0(\bytes_second_line_reg_n_0_[1] ),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .O(\bram0b[o][o_din][31]_i_71_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \bram0b[o][o_din][31]_i_72 
       (.I0(C[10]),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .I2(\bytes_second_line_reg_n_0_[1] ),
        .O(\bram0b[o][o_din][31]_i_72_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \bram0b[o][o_din][31]_i_73 
       (.I0(C[9]),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .I2(\bytes_second_line_reg_n_0_[1] ),
        .O(\bram0b[o][o_din][31]_i_73_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \bram0b[o][o_din][31]_i_74 
       (.I0(C[8]),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .I2(\bytes_second_line_reg_n_0_[1] ),
        .O(\bram0b[o][o_din][31]_i_74_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \bram0b[o][o_din][31]_i_75 
       (.I0(C[7]),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .I2(\bytes_second_line_reg_n_0_[1] ),
        .O(\bram0b[o][o_din][31]_i_75_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \bram0b[o][o_din][31]_i_76 
       (.I0(C[14]),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .I2(\bytes_second_line_reg_n_0_[1] ),
        .O(\bram0b[o][o_din][31]_i_76_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \bram0b[o][o_din][31]_i_77 
       (.I0(C[13]),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .I2(\bytes_second_line_reg_n_0_[1] ),
        .O(\bram0b[o][o_din][31]_i_77_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \bram0b[o][o_din][31]_i_78 
       (.I0(C[12]),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .I2(\bytes_second_line_reg_n_0_[1] ),
        .O(\bram0b[o][o_din][31]_i_78_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \bram0b[o][o_din][31]_i_79 
       (.I0(C[11]),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .I2(\bytes_second_line_reg_n_0_[1] ),
        .O(\bram0b[o][o_din][31]_i_79_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bram0b[o][o_din][31]_i_80 
       (.I0(\bytes_second_line_reg_n_0_[2] ),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(C[22]),
        .O(\bram0b[o][o_din][31]_i_80_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bram0b[o][o_din][31]_i_81 
       (.I0(\bytes_second_line_reg_n_0_[2] ),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(C[21]),
        .O(\bram0b[o][o_din][31]_i_81_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bram0b[o][o_din][31]_i_82 
       (.I0(\bytes_second_line_reg_n_0_[2] ),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(C[20]),
        .O(\bram0b[o][o_din][31]_i_82_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bram0b[o][o_din][31]_i_83 
       (.I0(\bytes_second_line_reg_n_0_[2] ),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(C[19]),
        .O(\bram0b[o][o_din][31]_i_83_n_0 ));
  LUT4 #(
    .INIT(16'h02FD)) 
    \bram0b[o][o_din][31]_i_84 
       (.I0(C[22]),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(\bytes_second_line_reg_n_0_[2] ),
        .I3(C[23]),
        .O(\bram0b[o][o_din][31]_i_84_n_0 ));
  LUT4 #(
    .INIT(16'h02FD)) 
    \bram0b[o][o_din][31]_i_85 
       (.I0(C[21]),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(\bytes_second_line_reg_n_0_[2] ),
        .I3(C[22]),
        .O(\bram0b[o][o_din][31]_i_85_n_0 ));
  LUT4 #(
    .INIT(16'h02FD)) 
    \bram0b[o][o_din][31]_i_86 
       (.I0(C[20]),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(\bytes_second_line_reg_n_0_[2] ),
        .I3(C[21]),
        .O(\bram0b[o][o_din][31]_i_86_n_0 ));
  LUT4 #(
    .INIT(16'h02FD)) 
    \bram0b[o][o_din][31]_i_87 
       (.I0(C[19]),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(\bytes_second_line_reg_n_0_[2] ),
        .I3(C[20]),
        .O(\bram0b[o][o_din][31]_i_87_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bram0b[o][o_din][31]_i_88 
       (.I0(\bytes_second_line_reg_n_0_[2] ),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(C[18]),
        .O(\bram0b[o][o_din][31]_i_88_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bram0b[o][o_din][31]_i_89 
       (.I0(\bytes_second_line_reg_n_0_[2] ),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(C[17]),
        .O(\bram0b[o][o_din][31]_i_89_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \bram0b[o][o_din][31]_i_9 
       (.I0(C[6]),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .I2(\bytes_second_line_reg_n_0_[1] ),
        .O(\bram0b[o][o_din][31]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bram0b[o][o_din][31]_i_90 
       (.I0(\bytes_second_line_reg_n_0_[2] ),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(C[16]),
        .O(\bram0b[o][o_din][31]_i_90_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bram0b[o][o_din][31]_i_91 
       (.I0(\bytes_second_line_reg_n_0_[2] ),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(C[15]),
        .O(\bram0b[o][o_din][31]_i_91_n_0 ));
  LUT4 #(
    .INIT(16'h02FD)) 
    \bram0b[o][o_din][31]_i_92 
       (.I0(C[18]),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(\bytes_second_line_reg_n_0_[2] ),
        .I3(C[19]),
        .O(\bram0b[o][o_din][31]_i_92_n_0 ));
  LUT4 #(
    .INIT(16'h02FD)) 
    \bram0b[o][o_din][31]_i_93 
       (.I0(C[17]),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(\bytes_second_line_reg_n_0_[2] ),
        .I3(C[18]),
        .O(\bram0b[o][o_din][31]_i_93_n_0 ));
  LUT4 #(
    .INIT(16'h02FD)) 
    \bram0b[o][o_din][31]_i_94 
       (.I0(C[16]),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(\bytes_second_line_reg_n_0_[2] ),
        .I3(C[17]),
        .O(\bram0b[o][o_din][31]_i_94_n_0 ));
  LUT4 #(
    .INIT(16'h02FD)) 
    \bram0b[o][o_din][31]_i_95 
       (.I0(C[15]),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(\bytes_second_line_reg_n_0_[2] ),
        .I3(C[16]),
        .O(\bram0b[o][o_din][31]_i_95_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA0000AAAA333F)) 
    \bram0b[o][o_din][3]_i_1 
       (.I0(mempcpy_scratch[11]),
        .I1(\bram0b[o][o_din][3]_i_2_n_0 ),
        .I2(\bram0b[o][o_din][3]_i_3_n_0 ),
        .I3(\bram0b[o][o_din][23]_i_3_n_0 ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\bram0b[o][o_din][15]_i_3_n_0 ),
        .O(\bram0b[o][o_din] [3]));
  LUT6 #(
    .INIT(64'hEEAEEEBFFFAEFFBF)) 
    \bram0b[o][o_din][3]_i_2 
       (.I0(\bram0b[o][o_din][31]_i_6_n_0 ),
        .I1(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I2(mempcpy_scratch[19]),
        .I3(\bram0b_reg[o][o_din][31]_i_5_n_5 ),
        .I4(mempcpy_scratch[3]),
        .I5(mempcpy_scratch[35]),
        .O(\bram0b[o][o_din][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \bram0b[o][o_din][3]_i_3 
       (.I0(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I1(mempcpy_scratch[3]),
        .O(\bram0b[o][o_din][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA0000AAAA333F)) 
    \bram0b[o][o_din][4]_i_1 
       (.I0(mempcpy_scratch[12]),
        .I1(\bram0b[o][o_din][4]_i_2_n_0 ),
        .I2(\bram0b[o][o_din][4]_i_3_n_0 ),
        .I3(\bram0b[o][o_din][23]_i_3_n_0 ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\bram0b[o][o_din][15]_i_3_n_0 ),
        .O(\bram0b[o][o_din] [4]));
  LUT6 #(
    .INIT(64'hEEAEEEBFFFAEFFBF)) 
    \bram0b[o][o_din][4]_i_2 
       (.I0(\bram0b[o][o_din][31]_i_6_n_0 ),
        .I1(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I2(mempcpy_scratch[20]),
        .I3(\bram0b_reg[o][o_din][31]_i_5_n_5 ),
        .I4(mempcpy_scratch[4]),
        .I5(mempcpy_scratch[36]),
        .O(\bram0b[o][o_din][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \bram0b[o][o_din][4]_i_3 
       (.I0(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I1(mempcpy_scratch[4]),
        .O(\bram0b[o][o_din][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA0000AAAA333F)) 
    \bram0b[o][o_din][5]_i_1 
       (.I0(mempcpy_scratch[13]),
        .I1(\bram0b[o][o_din][5]_i_2_n_0 ),
        .I2(\bram0b[o][o_din][5]_i_3_n_0 ),
        .I3(\bram0b[o][o_din][23]_i_3_n_0 ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\bram0b[o][o_din][15]_i_3_n_0 ),
        .O(\bram0b[o][o_din] [5]));
  LUT6 #(
    .INIT(64'hEEAEEEBFFFAEFFBF)) 
    \bram0b[o][o_din][5]_i_2 
       (.I0(\bram0b[o][o_din][31]_i_6_n_0 ),
        .I1(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I2(mempcpy_scratch[21]),
        .I3(\bram0b_reg[o][o_din][31]_i_5_n_5 ),
        .I4(mempcpy_scratch[5]),
        .I5(mempcpy_scratch[37]),
        .O(\bram0b[o][o_din][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \bram0b[o][o_din][5]_i_3 
       (.I0(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I1(mempcpy_scratch[5]),
        .O(\bram0b[o][o_din][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA0000AAAA333F)) 
    \bram0b[o][o_din][6]_i_1 
       (.I0(mempcpy_scratch[14]),
        .I1(\bram0b[o][o_din][6]_i_2_n_0 ),
        .I2(\bram0b[o][o_din][6]_i_3_n_0 ),
        .I3(\bram0b[o][o_din][23]_i_3_n_0 ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\bram0b[o][o_din][15]_i_3_n_0 ),
        .O(\bram0b[o][o_din] [6]));
  LUT6 #(
    .INIT(64'hEEAEEEBFFFAEFFBF)) 
    \bram0b[o][o_din][6]_i_2 
       (.I0(\bram0b[o][o_din][31]_i_6_n_0 ),
        .I1(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I2(mempcpy_scratch[22]),
        .I3(\bram0b_reg[o][o_din][31]_i_5_n_5 ),
        .I4(mempcpy_scratch[6]),
        .I5(mempcpy_scratch[38]),
        .O(\bram0b[o][o_din][6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \bram0b[o][o_din][6]_i_3 
       (.I0(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I1(mempcpy_scratch[6]),
        .O(\bram0b[o][o_din][6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA0000AAAA333F)) 
    \bram0b[o][o_din][7]_i_1 
       (.I0(mempcpy_scratch[15]),
        .I1(\bram0b[o][o_din][7]_i_2_n_0 ),
        .I2(\bram0b[o][o_din][7]_i_3_n_0 ),
        .I3(\bram0b[o][o_din][23]_i_3_n_0 ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\bram0b[o][o_din][15]_i_3_n_0 ),
        .O(\bram0b[o][o_din] [7]));
  LUT6 #(
    .INIT(64'hEEAEEEBFFFAEFFBF)) 
    \bram0b[o][o_din][7]_i_2 
       (.I0(\bram0b[o][o_din][31]_i_6_n_0 ),
        .I1(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I2(mempcpy_scratch[23]),
        .I3(\bram0b_reg[o][o_din][31]_i_5_n_5 ),
        .I4(mempcpy_scratch[7]),
        .I5(mempcpy_scratch[39]),
        .O(\bram0b[o][o_din][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \bram0b[o][o_din][7]_i_3 
       (.I0(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I1(mempcpy_scratch[7]),
        .O(\bram0b[o][o_din][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0C0C5C0CAC0CF)) 
    \bram0b[o][o_din][8]_i_1 
       (.I0(\bram0b_reg[o][o_din][15]_i_2_n_7 ),
        .I1(mempcpy_scratch[16]),
        .I2(\state_reg_n_0_[0] ),
        .I3(\bram0b[o][o_din][15]_i_3_n_0 ),
        .I4(\bram0b[o][o_din][8]_i_2_n_0 ),
        .I5(\bram0b[o][o_din][8]_i_3_n_0 ),
        .O(\bram0b[o][o_din] [8]));
  LUT6 #(
    .INIT(64'hEEEEAEBFFFFFAEBF)) 
    \bram0b[o][o_din][8]_i_2 
       (.I0(\bram0b[o][o_din][15]_i_8_n_0 ),
        .I1(\bram0b_reg[o][o_din][31]_i_5_n_5 ),
        .I2(mempcpy_scratch[40]),
        .I3(mempcpy_scratch[8]),
        .I4(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I5(mempcpy_scratch[24]),
        .O(\bram0b[o][o_din][8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \bram0b[o][o_din][8]_i_3 
       (.I0(mempcpy_scratch[8]),
        .I1(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I2(\bram0b[o][o_din][31]_i_7_n_0 ),
        .O(\bram0b[o][o_din][8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0C0C5C0CAC0CF)) 
    \bram0b[o][o_din][9]_i_1 
       (.I0(\bram0b_reg[o][o_din][15]_i_2_n_7 ),
        .I1(mempcpy_scratch[17]),
        .I2(\state_reg_n_0_[0] ),
        .I3(\bram0b[o][o_din][15]_i_3_n_0 ),
        .I4(\bram0b[o][o_din][9]_i_2_n_0 ),
        .I5(\bram0b[o][o_din][9]_i_3_n_0 ),
        .O(\bram0b[o][o_din] [9]));
  LUT6 #(
    .INIT(64'hEEEEAEBFFFFFAEBF)) 
    \bram0b[o][o_din][9]_i_2 
       (.I0(\bram0b[o][o_din][15]_i_8_n_0 ),
        .I1(\bram0b_reg[o][o_din][31]_i_5_n_5 ),
        .I2(mempcpy_scratch[41]),
        .I3(mempcpy_scratch[9]),
        .I4(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I5(mempcpy_scratch[25]),
        .O(\bram0b[o][o_din][9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \bram0b[o][o_din][9]_i_3 
       (.I0(mempcpy_scratch[9]),
        .I1(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I2(\bram0b[o][o_din][31]_i_7_n_0 ),
        .O(\bram0b[o][o_din][9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFC1FF0000C100)) 
    \bram0b[o][o_en]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(g0_b0__1_n_0),
        .I4(rst),
        .I5(o_mem0b_en),
        .O(\bram0b[o][o_en]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100FFFF01000000)) 
    \bram0b[o][o_we][1]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\bram0b[o][o_we][3]_i_4_n_0 ),
        .I5(o_mem0b_we[0]),
        .O(\bram0b[o][o_we][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8FFFFAAA80000)) 
    \bram0b[o][o_we][2]_i_1 
       (.I0(\bram0b[o][o_we] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\bram0b[o][o_we][3]_i_3_n_0 ),
        .I3(\bram0a[o][o_we][0]_i_2_n_0 ),
        .I4(\bram0b[o][o_we][3]_i_4_n_0 ),
        .I5(o_mem0b_we[1]),
        .O(\bram0b[o][o_we][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8FFFFAAA80000)) 
    \bram0b[o][o_we][3]_i_1 
       (.I0(\bram0b[o][o_we] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\bram0b[o][o_we][3]_i_3_n_0 ),
        .I3(\s_inp_pos_in_line_reg_n_0_[1] ),
        .I4(\bram0b[o][o_we][3]_i_4_n_0 ),
        .I5(o_mem0b_we[2]),
        .O(\bram0b[o][o_we][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \bram0b[o][o_we][3]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[3] ),
        .O(\bram0b[o][o_we] ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bram0b[o][o_we][3]_i_3 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .O(\bram0b[o][o_we][3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \bram0b[o][o_we][3]_i_4 
       (.I0(\state_reg_n_0_[5] ),
        .I1(rst),
        .I2(\bram0b[o][o_we][3]_i_5_n_0 ),
        .O(\bram0b[o][o_we][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFCC1CFF3FFF3)) 
    \bram0b[o][o_we][3]_i_5 
       (.I0(\bram0a[o][o_we][3]_i_6_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\bram0b[o][o_we][3]_i_5_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][10] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][16]_i_1_n_0 ),
        .D(\bram0b[o][o_addr]0_in [10]),
        .Q(o_mem0b_addr[8]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][11] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][16]_i_1_n_0 ),
        .D(\bram0b[o][o_addr]0_in [11]),
        .Q(o_mem0b_addr[9]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][12] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][16]_i_1_n_0 ),
        .D(\bram0b[o][o_addr]0_in [12]),
        .Q(o_mem0b_addr[10]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \bram0b_reg[o][o_addr][12]_i_1 
       (.CI(\bram0b_reg[o][o_addr][8]_i_1_n_0 ),
        .CO({\bram0b[o][o_addr]0_in [12],\NLW_bram0b_reg[o][o_addr][12]_i_1_CO_UNCONNECTED [2],\bram0b_reg[o][o_addr][12]_i_1_n_2 ,\bram0b_reg[o][o_addr][12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bram0b_reg[o][o_addr][12]_i_1_O_UNCONNECTED [3],\bram0b[o][o_addr]0_in [11:9]}),
        .S({1'b1,\bram0b[o][o_addr][12]_i_2_n_0 ,\bram0b[o][o_addr][12]_i_3_n_0 ,\bram0b[o][o_addr][12]_i_4_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][16] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][16]_i_1_n_0 ),
        .D(\bram0b[o][o_addr][16]_i_2_n_0 ),
        .Q(o_mem0b_addr[11]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][2] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][16]_i_1_n_0 ),
        .D(\bram0b[o][o_addr]0_in [2]),
        .Q(o_mem0b_addr[0]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][3] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][16]_i_1_n_0 ),
        .D(\bram0b[o][o_addr]0_in [3]),
        .Q(o_mem0b_addr[1]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][4] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][16]_i_1_n_0 ),
        .D(\bram0b[o][o_addr]0_in [4]),
        .Q(o_mem0b_addr[2]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \bram0b_reg[o][o_addr][4]_i_1 
       (.CI(1'b0),
        .CO({\bram0b_reg[o][o_addr][4]_i_1_n_0 ,\bram0b_reg[o][o_addr][4]_i_1_n_1 ,\bram0b_reg[o][o_addr][4]_i_1_n_2 ,\bram0b_reg[o][o_addr][4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\bram0b[o][o_addr][4]_i_2_n_0 ,1'b0}),
        .O({\bram0b[o][o_addr]0_in [4:2],\NLW_bram0b_reg[o][o_addr][4]_i_1_O_UNCONNECTED [0]}),
        .S({\bram0b[o][o_addr][4]_i_3_n_0 ,\bram0b[o][o_addr][4]_i_4_n_0 ,\bram0b[o][o_addr][4]_i_5_n_0 ,1'b0}));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][5] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][16]_i_1_n_0 ),
        .D(\bram0b[o][o_addr]0_in [5]),
        .Q(o_mem0b_addr[3]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][6] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][16]_i_1_n_0 ),
        .D(\bram0b[o][o_addr]0_in [6]),
        .Q(o_mem0b_addr[4]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][7] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][16]_i_1_n_0 ),
        .D(\bram0b[o][o_addr]0_in [7]),
        .Q(o_mem0b_addr[5]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][8] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][16]_i_1_n_0 ),
        .D(\bram0b[o][o_addr]0_in [8]),
        .Q(o_mem0b_addr[6]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \bram0b_reg[o][o_addr][8]_i_1 
       (.CI(\bram0b_reg[o][o_addr][4]_i_1_n_0 ),
        .CO({\bram0b_reg[o][o_addr][8]_i_1_n_0 ,\bram0b_reg[o][o_addr][8]_i_1_n_1 ,\bram0b_reg[o][o_addr][8]_i_1_n_2 ,\bram0b_reg[o][o_addr][8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\bram0b[o][o_addr]0_in [8:5]),
        .S({\bram0b[o][o_addr][8]_i_2_n_0 ,\bram0b[o][o_addr][8]_i_3_n_0 ,\bram0b[o][o_addr][8]_i_4_n_0 ,\bram0b[o][o_addr][8]_i_5_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_addr][9] 
       (.C(clk),
        .CE(\bram0b[o][o_addr][16]_i_1_n_0 ),
        .D(\bram0b[o][o_addr]0_in [9]),
        .Q(o_mem0b_addr[7]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][0] 
       (.C(clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din] [0]),
        .Q(o_mem0b_din[0]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][10] 
       (.C(clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din] [10]),
        .Q(o_mem0b_din[10]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][11] 
       (.C(clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din] [11]),
        .Q(o_mem0b_din[11]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][12] 
       (.C(clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din] [12]),
        .Q(o_mem0b_din[12]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][13] 
       (.C(clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din] [13]),
        .Q(o_mem0b_din[13]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][14] 
       (.C(clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din] [14]),
        .Q(o_mem0b_din[14]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][15] 
       (.C(clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din] [15]),
        .Q(o_mem0b_din[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0b_reg[o][o_din][15]_i_13 
       (.CI(\mempcpy_scratch_reg[15]_i_8_n_0 ),
        .CO(\NLW_bram0b_reg[o][o_din][15]_i_13_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bram0b_reg[o][o_din][15]_i_13_O_UNCONNECTED [3:1],C[31]}),
        .S({1'b0,1'b0,1'b0,\bram0b[o][o_din][15]_i_18_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0b_reg[o][o_din][15]_i_2 
       (.CI(\bram0b_reg[o][o_din][15]_i_6_n_0 ),
        .CO(\NLW_bram0b_reg[o][o_din][15]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bram0b_reg[o][o_din][15]_i_2_O_UNCONNECTED [3:1],\bram0b_reg[o][o_din][15]_i_2_n_7 }),
        .S({1'b0,1'b0,1'b0,\bram0b[o][o_din][15]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0b_reg[o][o_din][15]_i_6 
       (.CI(\bram0b_reg[o][o_din][31]_i_13_n_0 ),
        .CO({\bram0b_reg[o][o_din][15]_i_6_n_0 ,\bram0b_reg[o][o_din][15]_i_6_n_1 ,\bram0b_reg[o][o_din][15]_i_6_n_2 ,\bram0b_reg[o][o_din][15]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI(C[30:27]),
        .O({\bram0b_reg[o][o_din][15]_i_6_n_4 ,\bram0b_reg[o][o_din][15]_i_6_n_5 ,\bram0b_reg[o][o_din][15]_i_6_n_6 ,\bram0b_reg[o][o_din][15]_i_6_n_7 }),
        .S({\bram0b[o][o_din][15]_i_9_n_0 ,\bram0b[o][o_din][15]_i_10_n_0 ,\bram0b[o][o_din][15]_i_11_n_0 ,\bram0b[o][o_din][15]_i_12_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][16] 
       (.C(clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din] [16]),
        .Q(o_mem0b_din[16]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][17] 
       (.C(clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din] [17]),
        .Q(o_mem0b_din[17]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][18] 
       (.C(clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din] [18]),
        .Q(o_mem0b_din[18]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][19] 
       (.C(clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din] [19]),
        .Q(o_mem0b_din[19]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][1] 
       (.C(clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din] [1]),
        .Q(o_mem0b_din[1]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][20] 
       (.C(clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din] [20]),
        .Q(o_mem0b_din[20]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][21] 
       (.C(clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din] [21]),
        .Q(o_mem0b_din[21]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][22] 
       (.C(clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din] [22]),
        .Q(o_mem0b_din[22]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][23] 
       (.C(clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din] [23]),
        .Q(o_mem0b_din[23]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][24] 
       (.C(clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din] [24]),
        .Q(o_mem0b_din[24]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][25] 
       (.C(clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din] [25]),
        .Q(o_mem0b_din[25]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][26] 
       (.C(clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din] [26]),
        .Q(o_mem0b_din[26]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][27] 
       (.C(clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din] [27]),
        .Q(o_mem0b_din[27]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][28] 
       (.C(clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din] [28]),
        .Q(o_mem0b_din[28]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][29] 
       (.C(clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din] [29]),
        .Q(o_mem0b_din[29]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][2] 
       (.C(clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din] [2]),
        .Q(o_mem0b_din[2]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][30] 
       (.C(clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din] [30]),
        .Q(o_mem0b_din[30]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][31] 
       (.C(clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din] [31]),
        .Q(o_mem0b_din[31]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0b_reg[o][o_din][31]_i_13 
       (.CI(\bram0b_reg[o][o_din][31]_i_14_n_0 ),
        .CO({\bram0b_reg[o][o_din][31]_i_13_n_0 ,\bram0b_reg[o][o_din][31]_i_13_n_1 ,\bram0b_reg[o][o_din][31]_i_13_n_2 ,\bram0b_reg[o][o_din][31]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI(C[26:23]),
        .O({\bram0b_reg[o][o_din][31]_i_13_n_4 ,\bram0b_reg[o][o_din][31]_i_13_n_5 ,\bram0b_reg[o][o_din][31]_i_13_n_6 ,\bram0b_reg[o][o_din][31]_i_13_n_7 }),
        .S({\bram0b[o][o_din][31]_i_32_n_0 ,\bram0b[o][o_din][31]_i_33_n_0 ,\bram0b[o][o_din][31]_i_34_n_0 ,\bram0b[o][o_din][31]_i_35_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0b_reg[o][o_din][31]_i_14 
       (.CI(\bram0b_reg[o][o_din][31]_i_31_n_0 ),
        .CO({\bram0b_reg[o][o_din][31]_i_14_n_0 ,\bram0b_reg[o][o_din][31]_i_14_n_1 ,\bram0b_reg[o][o_din][31]_i_14_n_2 ,\bram0b_reg[o][o_din][31]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI(C[22:19]),
        .O({\bram0b_reg[o][o_din][31]_i_14_n_4 ,\bram0b_reg[o][o_din][31]_i_14_n_5 ,\bram0b_reg[o][o_din][31]_i_14_n_6 ,\bram0b_reg[o][o_din][31]_i_14_n_7 }),
        .S({\bram0b[o][o_din][31]_i_37_n_0 ,\bram0b[o][o_din][31]_i_38_n_0 ,\bram0b[o][o_din][31]_i_39_n_0 ,\bram0b[o][o_din][31]_i_40_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0b_reg[o][o_din][31]_i_17 
       (.CI(\bram0b_reg[o][o_din][31]_i_18_n_0 ),
        .CO({\bram0b_reg[o][o_din][31]_i_17_n_0 ,\bram0b_reg[o][o_din][31]_i_17_n_1 ,\bram0b_reg[o][o_din][31]_i_17_n_2 ,\bram0b_reg[o][o_din][31]_i_17_n_3 }),
        .CYINIT(1'b0),
        .DI({\bram0b[o][o_din][31]_i_44_n_0 ,\bram0b[o][o_din][31]_i_45_n_0 ,\bram0b[o][o_din][31]_i_46_n_0 ,\bram0b[o][o_din][31]_i_47_n_0 }),
        .O({\bram0b_reg[o][o_din][31]_i_17_n_4 ,\bram0b_reg[o][o_din][31]_i_17_n_5 ,\bram0b_reg[o][o_din][31]_i_17_n_6 ,\bram0b_reg[o][o_din][31]_i_17_n_7 }),
        .S({\bram0b[o][o_din][31]_i_48_n_0 ,\bram0b[o][o_din][31]_i_49_n_0 ,\bram0b[o][o_din][31]_i_50_n_0 ,\bram0b[o][o_din][31]_i_51_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0b_reg[o][o_din][31]_i_18 
       (.CI(\bram0b_reg[o][o_din][31]_i_8_n_0 ),
        .CO({\bram0b_reg[o][o_din][31]_i_18_n_0 ,\bram0b_reg[o][o_din][31]_i_18_n_1 ,\bram0b_reg[o][o_din][31]_i_18_n_2 ,\bram0b_reg[o][o_din][31]_i_18_n_3 }),
        .CYINIT(1'b0),
        .DI({\bram0b[o][o_din][31]_i_52_n_0 ,\bram0b[o][o_din][31]_i_53_n_0 ,\bram0b[o][o_din][31]_i_54_n_0 ,\bram0b[o][o_din][31]_i_55_n_0 }),
        .O({\bram0b_reg[o][o_din][31]_i_18_n_4 ,\bram0b_reg[o][o_din][31]_i_18_n_5 ,\bram0b_reg[o][o_din][31]_i_18_n_6 ,\bram0b_reg[o][o_din][31]_i_18_n_7 }),
        .S({\bram0b[o][o_din][31]_i_56_n_0 ,\bram0b[o][o_din][31]_i_57_n_0 ,\bram0b[o][o_din][31]_i_58_n_0 ,\bram0b[o][o_din][31]_i_59_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0b_reg[o][o_din][31]_i_31 
       (.CI(\bram0b_reg[o][o_din][31]_i_42_n_0 ),
        .CO({\bram0b_reg[o][o_din][31]_i_31_n_0 ,\bram0b_reg[o][o_din][31]_i_31_n_1 ,\bram0b_reg[o][o_din][31]_i_31_n_2 ,\bram0b_reg[o][o_din][31]_i_31_n_3 }),
        .CYINIT(1'b0),
        .DI(C[18:15]),
        .O({\bram0b_reg[o][o_din][31]_i_31_n_4 ,\bram0b_reg[o][o_din][31]_i_31_n_5 ,\bram0b_reg[o][o_din][31]_i_31_n_6 ,\bram0b_reg[o][o_din][31]_i_31_n_7 }),
        .S({\bram0b[o][o_din][31]_i_64_n_0 ,\bram0b[o][o_din][31]_i_65_n_0 ,\bram0b[o][o_din][31]_i_66_n_0 ,\bram0b[o][o_din][31]_i_67_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0b_reg[o][o_din][31]_i_36 
       (.CI(\mempcpy_scratch_reg[31]_i_34_n_0 ),
        .CO({\bram0b_reg[o][o_din][31]_i_36_n_0 ,\bram0b_reg[o][o_din][31]_i_36_n_1 ,\bram0b_reg[o][o_din][31]_i_36_n_2 ,\bram0b_reg[o][o_din][31]_i_36_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(C[22:19]),
        .S({\bram0b[o][o_din][31]_i_68_n_0 ,\bram0b[o][o_din][31]_i_69_n_0 ,\bram0b[o][o_din][31]_i_70_n_0 ,\bram0b[o][o_din][31]_i_71_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0b_reg[o][o_din][31]_i_41 
       (.CI(\bram0b_reg[o][o_din][31]_i_5_n_0 ),
        .CO({\bram0b_reg[o][o_din][31]_i_41_n_0 ,\bram0b_reg[o][o_din][31]_i_41_n_1 ,\bram0b_reg[o][o_din][31]_i_41_n_2 ,\bram0b_reg[o][o_din][31]_i_41_n_3 }),
        .CYINIT(1'b0),
        .DI(C[10:7]),
        .O({\bram0b_reg[o][o_din][31]_i_41_n_4 ,\bram0b_reg[o][o_din][31]_i_41_n_5 ,\bram0b_reg[o][o_din][31]_i_41_n_6 ,\bram0b_reg[o][o_din][31]_i_41_n_7 }),
        .S({\bram0b[o][o_din][31]_i_72_n_0 ,\bram0b[o][o_din][31]_i_73_n_0 ,\bram0b[o][o_din][31]_i_74_n_0 ,\bram0b[o][o_din][31]_i_75_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0b_reg[o][o_din][31]_i_42 
       (.CI(\bram0b_reg[o][o_din][31]_i_41_n_0 ),
        .CO({\bram0b_reg[o][o_din][31]_i_42_n_0 ,\bram0b_reg[o][o_din][31]_i_42_n_1 ,\bram0b_reg[o][o_din][31]_i_42_n_2 ,\bram0b_reg[o][o_din][31]_i_42_n_3 }),
        .CYINIT(1'b0),
        .DI(C[14:11]),
        .O({\bram0b_reg[o][o_din][31]_i_42_n_4 ,\bram0b_reg[o][o_din][31]_i_42_n_5 ,\bram0b_reg[o][o_din][31]_i_42_n_6 ,\bram0b_reg[o][o_din][31]_i_42_n_7 }),
        .S({\bram0b[o][o_din][31]_i_76_n_0 ,\bram0b[o][o_din][31]_i_77_n_0 ,\bram0b[o][o_din][31]_i_78_n_0 ,\bram0b[o][o_din][31]_i_79_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0b_reg[o][o_din][31]_i_5 
       (.CI(1'b0),
        .CO({\bram0b_reg[o][o_din][31]_i_5_n_0 ,\bram0b_reg[o][o_din][31]_i_5_n_1 ,\bram0b_reg[o][o_din][31]_i_5_n_2 ,\bram0b_reg[o][o_din][31]_i_5_n_3 }),
        .CYINIT(1'b1),
        .DI({C[6:4],1'b1}),
        .O({\bram0b_reg[o][o_din][31]_i_5_n_4 ,\bram0b_reg[o][o_din][31]_i_5_n_5 ,\bram0b_reg[o][o_din][31]_i_5_n_6 ,\NLW_bram0b_reg[o][o_din][31]_i_5_O_UNCONNECTED [0]}),
        .S({\bram0b[o][o_din][31]_i_9_n_0 ,\bram0b[o][o_din][31]_i_10_n_0 ,\bram0b[o][o_din][31]_i_11_n_0 ,1'b1}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0b_reg[o][o_din][31]_i_60 
       (.CI(\bram0b_reg[o][o_din][31]_i_61_n_0 ),
        .CO({\bram0b_reg[o][o_din][31]_i_60_n_0 ,\bram0b_reg[o][o_din][31]_i_60_n_1 ,\bram0b_reg[o][o_din][31]_i_60_n_2 ,\bram0b_reg[o][o_din][31]_i_60_n_3 }),
        .CYINIT(1'b0),
        .DI({\bram0b[o][o_din][31]_i_80_n_0 ,\bram0b[o][o_din][31]_i_81_n_0 ,\bram0b[o][o_din][31]_i_82_n_0 ,\bram0b[o][o_din][31]_i_83_n_0 }),
        .O({\bram0b_reg[o][o_din][31]_i_60_n_4 ,\bram0b_reg[o][o_din][31]_i_60_n_5 ,\bram0b_reg[o][o_din][31]_i_60_n_6 ,\bram0b_reg[o][o_din][31]_i_60_n_7 }),
        .S({\bram0b[o][o_din][31]_i_84_n_0 ,\bram0b[o][o_din][31]_i_85_n_0 ,\bram0b[o][o_din][31]_i_86_n_0 ,\bram0b[o][o_din][31]_i_87_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0b_reg[o][o_din][31]_i_61 
       (.CI(\bram0b_reg[o][o_din][31]_i_17_n_0 ),
        .CO({\bram0b_reg[o][o_din][31]_i_61_n_0 ,\bram0b_reg[o][o_din][31]_i_61_n_1 ,\bram0b_reg[o][o_din][31]_i_61_n_2 ,\bram0b_reg[o][o_din][31]_i_61_n_3 }),
        .CYINIT(1'b0),
        .DI({\bram0b[o][o_din][31]_i_88_n_0 ,\bram0b[o][o_din][31]_i_89_n_0 ,\bram0b[o][o_din][31]_i_90_n_0 ,\bram0b[o][o_din][31]_i_91_n_0 }),
        .O({\bram0b_reg[o][o_din][31]_i_61_n_4 ,\bram0b_reg[o][o_din][31]_i_61_n_5 ,\bram0b_reg[o][o_din][31]_i_61_n_6 ,\bram0b_reg[o][o_din][31]_i_61_n_7 }),
        .S({\bram0b[o][o_din][31]_i_92_n_0 ,\bram0b[o][o_din][31]_i_93_n_0 ,\bram0b[o][o_din][31]_i_94_n_0 ,\bram0b[o][o_din][31]_i_95_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram0b_reg[o][o_din][31]_i_8 
       (.CI(1'b0),
        .CO({\bram0b_reg[o][o_din][31]_i_8_n_0 ,\bram0b_reg[o][o_din][31]_i_8_n_1 ,\bram0b_reg[o][o_din][31]_i_8_n_2 ,\bram0b_reg[o][o_din][31]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({\bram0b[o][o_din][31]_i_21_n_0 ,\bram0b[o][o_din][31]_i_22_n_0 ,\bram0b[o][o_din][31]_i_23_n_0 ,1'b1}),
        .O({\bram0b_reg[o][o_din][31]_i_8_n_4 ,\bram0b_reg[o][o_din][31]_i_8_n_5 ,\bram0b_reg[o][o_din][31]_i_8_n_6 ,\bram0b_reg[o][o_din][31]_i_8_n_7 }),
        .S({\bram0b[o][o_din][31]_i_24_n_0 ,\bram0b[o][o_din][31]_i_25_n_0 ,\bram0b[o][o_din][31]_i_26_n_0 ,\bram0b[o][o_din][31]_i_27_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][3] 
       (.C(clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din] [3]),
        .Q(o_mem0b_din[3]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][4] 
       (.C(clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din] [4]),
        .Q(o_mem0b_din[4]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][5] 
       (.C(clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din] [5]),
        .Q(o_mem0b_din[5]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][6] 
       (.C(clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din] [6]),
        .Q(o_mem0b_din[6]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][7] 
       (.C(clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din] [7]),
        .Q(o_mem0b_din[7]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][8] 
       (.C(clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din] [8]),
        .Q(o_mem0b_din[8]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b DIN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_din][9] 
       (.C(clk),
        .CE(\bram0b[o][o_din][31]_i_1_n_0 ),
        .D(\bram0b[o][o_din] [9]),
        .Q(o_mem0b_din[9]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b EN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_en] 
       (.C(clk),
        .CE(1'b1),
        .D(\bram0b[o][o_en]_i_1_n_0 ),
        .Q(o_mem0b_en),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b WE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_we][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\bram0b[o][o_we][1]_i_1_n_0 ),
        .Q(o_mem0b_we[0]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b WE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_we][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\bram0b[o][o_we][2]_i_1_n_0 ),
        .Q(o_mem0b_we[1]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b WE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram0b_reg[o][o_we][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\bram0b[o][o_we][3]_i_1_n_0 ),
        .Q(o_mem0b_we[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00002A0000000000)) 
    \bram1a[o][o_addr][16]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\j_reg_n_0_[2] ),
        .I2(\j_reg_n_0_[1] ),
        .I3(\bram1a[o][o_addr][16]_i_2_n_0 ),
        .I4(\bram1a[o][o_addr][16]_i_3_n_0 ),
        .I5(\bram0b[o][o_addr][16]_i_3_n_0 ),
        .O(\bram1a[o][o_addr][16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram1a[o][o_addr][16]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .O(\bram1a[o][o_addr][16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram1a[o][o_addr][16]_i_3 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bram1a[o][o_addr][5]_i_2 
       (.I0(\i_reg_n_0_[4] ),
        .O(\bram1a[o][o_addr][5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h66699996)) 
    \bram1a[o][o_addr][5]_i_3 
       (.I0(\i_reg_n_0_[4] ),
        .I1(\j_reg_n_0_[2] ),
        .I2(\j_reg_n_0_[0] ),
        .I3(\j_reg_n_0_[1] ),
        .I4(\i_reg_n_0_[5] ),
        .O(\bram1a[o][o_addr][5]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \bram1a[o][o_addr][5]_i_4 
       (.I0(\i_reg_n_0_[4] ),
        .I1(\j_reg_n_0_[0] ),
        .I2(\j_reg_n_0_[1] ),
        .O(\bram1a[o][o_addr][5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram1a[o][o_addr][5]_i_5 
       (.I0(\j_reg_n_0_[0] ),
        .I1(\i_reg_n_0_[3] ),
        .O(\bram1a[o][o_addr][5]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC2)) 
    \bram1a[o][o_addr][9]_i_2 
       (.I0(\j_reg_n_0_[2] ),
        .I1(\j_reg_n_0_[0] ),
        .I2(\j_reg_n_0_[1] ),
        .O(\bram1a[o][o_addr][9]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h32)) 
    \bram1a[o][o_addr][9]_i_3 
       (.I0(\j_reg_n_0_[1] ),
        .I1(\j_reg_n_0_[0] ),
        .I2(\j_reg_n_0_[2] ),
        .O(\bram1a[o][o_addr][9]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1E00)) 
    \bram1a[o][o_addr][9]_i_4 
       (.I0(\j_reg_n_0_[1] ),
        .I1(\j_reg_n_0_[0] ),
        .I2(\j_reg_n_0_[2] ),
        .I3(\i_reg_n_0_[5] ),
        .O(\bram1a[o][o_addr][9]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \bram1a[o][o_addr][9]_i_5 
       (.I0(\j_reg_n_0_[2] ),
        .I1(\j_reg_n_0_[1] ),
        .I2(\j_reg_n_0_[0] ),
        .O(\bram1a[o][o_addr][9]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bram1a[o][o_addr][9]_i_6 
       (.I0(\j_reg_n_0_[1] ),
        .O(\bram1a[o][o_addr][9]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hD2DB)) 
    \bram1a[o][o_addr][9]_i_7 
       (.I0(\i_reg_n_0_[5] ),
        .I1(\j_reg_n_0_[2] ),
        .I2(\j_reg_n_0_[0] ),
        .I3(\j_reg_n_0_[1] ),
        .O(\bram1a[o][o_addr][9]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFF0F0007)) 
    \bram1a[o][o_en]_i_1 
       (.I0(\j_reg_n_0_[2] ),
        .I1(\j_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\bram1a[o][o_en]_i_2_n_0 ),
        .I4(o_mem1a_en),
        .O(\bram1a[o][o_en]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \bram1a[o][o_en]_i_2 
       (.I0(rst),
        .I1(\state_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\bram1a[o][o_en]_i_2_n_0 ));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][16] 
       (.C(clk),
        .CE(\bram1a[o][o_addr][16]_i_1_n_0 ),
        .D(1'b1),
        .Q(o_mem1a_addr[8]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][2] 
       (.C(clk),
        .CE(\bram1a[o][o_addr][16]_i_1_n_0 ),
        .D(base_adr7[2]),
        .Q(o_mem1a_addr[0]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][3] 
       (.C(clk),
        .CE(\bram1a[o][o_addr][16]_i_1_n_0 ),
        .D(base_adr7[3]),
        .Q(o_mem1a_addr[1]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][4] 
       (.C(clk),
        .CE(\bram1a[o][o_addr][16]_i_1_n_0 ),
        .D(base_adr7[4]),
        .Q(o_mem1a_addr[2]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][5] 
       (.C(clk),
        .CE(\bram1a[o][o_addr][16]_i_1_n_0 ),
        .D(base_adr7[5]),
        .Q(o_mem1a_addr[3]),
        .R(1'b0));
  CARRY4 \bram1a_reg[o][o_addr][5]_i_1 
       (.CI(1'b0),
        .CO({\bram1a_reg[o][o_addr][5]_i_1_n_0 ,\bram1a_reg[o][o_addr][5]_i_1_n_1 ,\bram1a_reg[o][o_addr][5]_i_1_n_2 ,\bram1a_reg[o][o_addr][5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\i_reg_n_0_[4] ,\bram1a[o][o_addr][5]_i_2_n_0 ,\j_reg_n_0_[0] ,1'b0}),
        .O(base_adr7[5:2]),
        .S({\bram1a[o][o_addr][5]_i_3_n_0 ,\bram1a[o][o_addr][5]_i_4_n_0 ,\bram1a[o][o_addr][5]_i_5_n_0 ,\i_reg_n_0_[2] }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][6] 
       (.C(clk),
        .CE(\bram1a[o][o_addr][16]_i_1_n_0 ),
        .D(base_adr7[6]),
        .Q(o_mem1a_addr[4]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][7] 
       (.C(clk),
        .CE(\bram1a[o][o_addr][16]_i_1_n_0 ),
        .D(base_adr7[7]),
        .Q(o_mem1a_addr[5]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][8] 
       (.C(clk),
        .CE(\bram1a[o][o_addr][16]_i_1_n_0 ),
        .D(base_adr7[8]),
        .Q(o_mem1a_addr[6]),
        .R(1'b0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil1a ADDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_addr][9] 
       (.C(clk),
        .CE(\bram1a[o][o_addr][16]_i_1_n_0 ),
        .D(base_adr7[9]),
        .Q(o_mem1a_addr[7]),
        .R(1'b0));
  CARRY4 \bram1a_reg[o][o_addr][9]_i_1 
       (.CI(\bram1a_reg[o][o_addr][5]_i_1_n_0 ),
        .CO({base_adr7[9],\NLW_bram1a_reg[o][o_addr][9]_i_1_CO_UNCONNECTED [2],\bram1a_reg[o][o_addr][9]_i_1_n_2 ,\bram1a_reg[o][o_addr][9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\bram1a[o][o_addr][9]_i_2_n_0 ,\bram1a[o][o_addr][9]_i_3_n_0 ,\bram1a[o][o_addr][9]_i_4_n_0 }),
        .O({\NLW_bram1a_reg[o][o_addr][9]_i_1_O_UNCONNECTED [3],base_adr7[8:6]}),
        .S({1'b1,\bram1a[o][o_addr][9]_i_5_n_0 ,\bram1a[o][o_addr][9]_i_6_n_0 ,\bram1a[o][o_addr][9]_i_7_n_0 }));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil1a EN" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bram1a_reg[o][o_en] 
       (.C(clk),
        .CE(1'b1),
        .D(\bram1a[o][o_en]_i_1_n_0 ),
        .Q(o_mem1a_en),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFF8B008B)) 
    \bytes_first_line[1]_i_1 
       (.I0(\bytes_first_line_reg[1]_i_2_n_6 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\l_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(data2),
        .O(bytes_first_line[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \bytes_first_line[1]_i_3 
       (.I0(\l_reg_n_0_[0] ),
        .I1(\l_reg_n_0_[2] ),
        .O(\bytes_first_line[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bytes_first_line[1]_i_4 
       (.I0(\l_reg_n_0_[0] ),
        .I1(\l_reg_n_0_[1] ),
        .O(\bytes_first_line[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bytes_first_line[1]_i_5 
       (.I0(\l_reg_n_0_[0] ),
        .I1(\l_reg_n_0_[1] ),
        .O(\bytes_first_line[1]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \bytes_first_line[1]_i_6 
       (.I0(\l_reg_n_0_[0] ),
        .O(\bytes_first_line[1]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bytes_first_line[1]_i_7 
       (.I0(\l_reg_n_0_[0] ),
        .O(\bytes_first_line[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000044640000)) 
    \bytes_first_line[2]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\bytes_first_line_reg[2]_i_3_n_2 ),
        .I3(\bytes_first_line[2]_i_4_n_0 ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\bytes_first_line[2]_i_5_n_0 ),
        .O(\bytes_first_line[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \bytes_first_line[2]_i_11 
       (.I0(\l_reg_n_0_[3] ),
        .I1(\l_reg_n_0_[0] ),
        .I2(\l_reg_n_0_[1] ),
        .I3(\l_reg_n_0_[2] ),
        .O(\bytes_first_line[2]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \bytes_first_line[2]_i_13 
       (.I0(\l_reg_n_0_[3] ),
        .I1(\l_reg_n_0_[0] ),
        .I2(\l_reg_n_0_[1] ),
        .I3(\l_reg_n_0_[2] ),
        .O(\bytes_first_line[2]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h402A)) 
    \bytes_first_line[2]_i_14 
       (.I0(\l_reg_n_0_[3] ),
        .I1(\l_reg_n_0_[1] ),
        .I2(\l_reg_n_0_[0] ),
        .I3(\l_reg_n_0_[2] ),
        .O(\bytes_first_line[2]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h1285)) 
    \bytes_first_line[2]_i_15 
       (.I0(\l_reg_n_0_[3] ),
        .I1(\l_reg_n_0_[0] ),
        .I2(\l_reg_n_0_[1] ),
        .I3(\l_reg_n_0_[2] ),
        .O(\bytes_first_line[2]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bytes_first_line[2]_i_16 
       (.I0(\l_reg_n_0_[2] ),
        .I1(\l_reg_n_0_[0] ),
        .O(\bytes_first_line[2]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \bytes_first_line[2]_i_17 
       (.I0(\l_reg_n_0_[1] ),
        .I1(\l_reg_n_0_[2] ),
        .I2(\l_reg_n_0_[0] ),
        .O(\bytes_first_line[2]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bytes_first_line[2]_i_18 
       (.I0(\bytes_first_line_reg[1]_i_2_n_4 ),
        .I1(\bytes_first_line_reg[1]_i_2_n_5 ),
        .O(\bytes_first_line[2]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bytes_first_line[2]_i_19 
       (.I0(\bytes_first_line_reg[2]_i_8_n_2 ),
        .I1(\bytes_first_line_reg[2]_i_8_n_7 ),
        .O(\bytes_first_line[2]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h4155)) 
    \bytes_first_line[2]_i_2 
       (.I0(\bytes_first_line[2]_i_6_n_0 ),
        .I1(\s_inp_pos_in_line_reg[1]_i_3_n_5 ),
        .I2(data2),
        .I3(\state_reg_n_0_[4] ),
        .O(bytes_first_line[2]));
  LUT2 #(
    .INIT(4'h1)) 
    \bytes_first_line[2]_i_20 
       (.I0(\bytes_first_line_reg[2]_i_10_n_4 ),
        .I1(\bytes_first_line_reg[2]_i_10_n_5 ),
        .O(\bytes_first_line[2]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bytes_first_line[2]_i_21 
       (.I0(\bytes_first_line_reg[2]_i_10_n_6 ),
        .I1(\bytes_first_line_reg[2]_i_10_n_7 ),
        .O(\bytes_first_line[2]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \bytes_first_line[2]_i_4 
       (.I0(\l_reg_n_0_[3] ),
        .I1(\l_reg_n_0_[2] ),
        .I2(\l_reg_n_0_[1] ),
        .O(\bytes_first_line[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBFFF00FFFF)) 
    \bytes_first_line[2]_i_5 
       (.I0(\state_reg_n_0_[3] ),
        .I1(s_3_lines_reg_i_2_n_2),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[4] ),
        .O(\bytes_first_line[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h03301111)) 
    \bytes_first_line[2]_i_6 
       (.I0(\l_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\bytes_first_line_reg[1]_i_2_n_5 ),
        .I3(\bytes_first_line_reg[1]_i_2_n_6 ),
        .I4(\state_reg_n_0_[3] ),
        .O(\bytes_first_line[2]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bytes_first_line_reg[1] 
       (.C(clk),
        .CE(\bytes_first_line[2]_i_1_n_0 ),
        .D(bytes_first_line[1]),
        .Q(\bytes_first_line_reg_n_0_[1] ),
        .R(rst));
  CARRY4 \bytes_first_line_reg[1]_i_2 
       (.CI(1'b0),
        .CO({\bytes_first_line_reg[1]_i_2_n_0 ,\bytes_first_line_reg[1]_i_2_n_1 ,\bytes_first_line_reg[1]_i_2_n_2 ,\bytes_first_line_reg[1]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\bytes_first_line[1]_i_3_n_0 ,\bytes_first_line[1]_i_4_n_0 ,\l_reg_n_0_[0] ,1'b0}),
        .O({\bytes_first_line_reg[1]_i_2_n_4 ,\bytes_first_line_reg[1]_i_2_n_5 ,\bytes_first_line_reg[1]_i_2_n_6 ,\NLW_bytes_first_line_reg[1]_i_2_O_UNCONNECTED [0]}),
        .S({\bytes_first_line[1]_i_5_n_0 ,\bytes_first_line[1]_i_6_n_0 ,\bytes_first_line[1]_i_7_n_0 ,1'b0}));
  FDRE #(
    .INIT(1'b0)) 
    \bytes_first_line_reg[2] 
       (.C(clk),
        .CE(\bytes_first_line[2]_i_1_n_0 ),
        .D(bytes_first_line[2]),
        .Q(\bytes_first_line_reg_n_0_[2] ),
        .R(rst));
  CARRY4 \bytes_first_line_reg[2]_i_10 
       (.CI(\bytes_first_line_reg[1]_i_2_n_0 ),
        .CO({\bytes_first_line_reg[2]_i_10_n_0 ,\bytes_first_line_reg[2]_i_10_n_1 ,\bytes_first_line_reg[2]_i_10_n_2 ,\bytes_first_line_reg[2]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\bytes_first_line[2]_i_13_n_0 ,\bytes_first_line[2]_i_14_n_0 ,\bytes_first_line[2]_i_15_n_0 ,\bytes_first_line[2]_i_16_n_0 }),
        .O({\bytes_first_line_reg[2]_i_10_n_4 ,\bytes_first_line_reg[2]_i_10_n_5 ,\bytes_first_line_reg[2]_i_10_n_6 ,\bytes_first_line_reg[2]_i_10_n_7 }),
        .S({1'b1,1'b1,1'b1,\bytes_first_line[2]_i_17_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \bytes_first_line_reg[2]_i_12 
       (.CI(1'b0),
        .CO({\bytes_first_line_reg[2]_i_12_n_0 ,\bytes_first_line_reg[2]_i_12_n_1 ,\bytes_first_line_reg[2]_i_12_n_2 ,\bytes_first_line_reg[2]_i_12_n_3 }),
        .CYINIT(\bytes_first_line[2]_i_18_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_bytes_first_line_reg[2]_i_12_O_UNCONNECTED [3:0]),
        .S({\bytes_first_line_reg[2]_i_8_n_2 ,\bytes_first_line[2]_i_19_n_0 ,\bytes_first_line[2]_i_20_n_0 ,\bytes_first_line[2]_i_21_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \bytes_first_line_reg[2]_i_3 
       (.CI(\bytes_first_line_reg[2]_i_7_n_0 ),
        .CO({\NLW_bytes_first_line_reg[2]_i_3_CO_UNCONNECTED [3:2],\bytes_first_line_reg[2]_i_3_n_2 ,\bytes_first_line_reg[2]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_bytes_first_line_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\bytes_first_line_reg[2]_i_8_n_2 ,\bytes_first_line_reg[2]_i_8_n_2 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \bytes_first_line_reg[2]_i_7 
       (.CI(\bytes_first_line_reg[2]_i_9_n_0 ),
        .CO({\bytes_first_line_reg[2]_i_7_n_0 ,\bytes_first_line_reg[2]_i_7_n_1 ,\bytes_first_line_reg[2]_i_7_n_2 ,\bytes_first_line_reg[2]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_bytes_first_line_reg[2]_i_7_O_UNCONNECTED [3:0]),
        .S({\bytes_first_line_reg[2]_i_8_n_2 ,\bytes_first_line_reg[2]_i_8_n_2 ,\bytes_first_line_reg[2]_i_8_n_2 ,\bytes_first_line_reg[2]_i_8_n_2 }));
  CARRY4 \bytes_first_line_reg[2]_i_8 
       (.CI(\bytes_first_line_reg[2]_i_10_n_0 ),
        .CO({\NLW_bytes_first_line_reg[2]_i_8_CO_UNCONNECTED [3:2],\bytes_first_line_reg[2]_i_8_n_2 ,\NLW_bytes_first_line_reg[2]_i_8_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\bytes_first_line[2]_i_11_n_0 }),
        .O({\NLW_bytes_first_line_reg[2]_i_8_O_UNCONNECTED [3:1],\bytes_first_line_reg[2]_i_8_n_7 }),
        .S({1'b0,1'b0,1'b1,1'b1}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \bytes_first_line_reg[2]_i_9 
       (.CI(\bytes_first_line_reg[2]_i_12_n_0 ),
        .CO({\bytes_first_line_reg[2]_i_9_n_0 ,\bytes_first_line_reg[2]_i_9_n_1 ,\bytes_first_line_reg[2]_i_9_n_2 ,\bytes_first_line_reg[2]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_bytes_first_line_reg[2]_i_9_O_UNCONNECTED [3:0]),
        .S({\bytes_first_line_reg[2]_i_8_n_2 ,\bytes_first_line_reg[2]_i_8_n_2 ,\bytes_first_line_reg[2]_i_8_n_2 ,\bytes_first_line_reg[2]_i_8_n_2 }));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h44747774)) 
    \bytes_second_line[1]_i_1 
       (.I0(data2),
        .I1(\state_reg_n_0_[4] ),
        .I2(\l_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\bytes_first_line_reg[1]_i_2_n_6 ),
        .O(bytes_second_line[1]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hFF28)) 
    \bytes_second_line[2]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(data2),
        .I2(\s_inp_pos_in_line_reg[1]_i_3_n_5 ),
        .I3(\bytes_first_line[2]_i_6_n_0 ),
        .O(bytes_second_line[2]));
  FDRE #(
    .INIT(1'b0)) 
    \bytes_second_line_reg[1] 
       (.C(clk),
        .CE(\bytes_first_line[2]_i_1_n_0 ),
        .D(bytes_second_line[1]),
        .Q(\bytes_second_line_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \bytes_second_line_reg[2] 
       (.C(clk),
        .CE(\bytes_first_line[2]_i_1_n_0 ),
        .D(bytes_second_line[2]),
        .Q(\bytes_second_line_reg_n_0_[2] ),
        .R(rst));
  LUT6 #(
    .INIT(64'h0000000102408712)) 
    g0_b0
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[4] ),
        .I5(\state_reg_n_0_[5] ),
        .O(g0_b0_n_0));
  LUT6 #(
    .INIT(64'h000000030942934A)) 
    g0_b0__0
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[4] ),
        .I5(\state_reg_n_0_[5] ),
        .O(g0_b0__0_n_0));
  LUT6 #(
    .INIT(64'h000000000340171A)) 
    g0_b0__1
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[4] ),
        .I5(\state_reg_n_0_[5] ),
        .O(g0_b0__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[0]_i_1 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\i_reg_n_0_[0] ),
        .O(i[0]));
  LUT3 #(
    .INIT(8'h60)) 
    \i[1]_i_1 
       (.I0(\i_reg_n_0_[0] ),
        .I1(\i_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[5] ),
        .O(\i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \i[2]_i_1 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\i_reg_n_0_[1] ),
        .I2(\i_reg_n_0_[0] ),
        .I3(\i_reg_n_0_[2] ),
        .O(i[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \i[3]_i_1 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(\i_reg_n_0_[1] ),
        .I3(\i_reg_n_0_[2] ),
        .I4(\i_reg_n_0_[3] ),
        .O(i[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \i[4]_i_1 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\i_reg_n_0_[2] ),
        .I2(\i_reg_n_0_[1] ),
        .I3(\i_reg_n_0_[0] ),
        .I4(\i_reg_n_0_[3] ),
        .I5(\i_reg_n_0_[4] ),
        .O(i[4]));
  LUT6 #(
    .INIT(64'h0000000000001008)) 
    \i[5]_i_1 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[4] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\i[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \i[5]_i_2 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\i[5]_i_3_n_0 ),
        .I2(\i_reg_n_0_[3] ),
        .I3(\i_reg_n_0_[4] ),
        .I4(\i_reg_n_0_[5] ),
        .O(i[5]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \i[5]_i_3 
       (.I0(\i_reg_n_0_[0] ),
        .I1(\i_reg_n_0_[1] ),
        .I2(\i_reg_n_0_[2] ),
        .O(\i[5]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(clk),
        .CE(\i[5]_i_1_n_0 ),
        .D(i[0]),
        .Q(\i_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(clk),
        .CE(\i[5]_i_1_n_0 ),
        .D(\i[1]_i_1_n_0 ),
        .Q(\i_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(clk),
        .CE(\i[5]_i_1_n_0 ),
        .D(i[2]),
        .Q(\i_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[3] 
       (.C(clk),
        .CE(\i[5]_i_1_n_0 ),
        .D(i[3]),
        .Q(\i_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[4] 
       (.C(clk),
        .CE(\i[5]_i_1_n_0 ),
        .D(i[4]),
        .Q(\i_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[5] 
       (.C(clk),
        .CE(\i[5]_i_1_n_0 ),
        .D(i[5]),
        .Q(\i_reg_n_0_[5] ),
        .R(rst));
  LUT3 #(
    .INIT(8'h38)) 
    \j[0]_i_1 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\j[2]_i_2_n_0 ),
        .I2(\j_reg_n_0_[0] ),
        .O(\j[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h4F80)) 
    \j[1]_i_1 
       (.I0(\j_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\j[2]_i_2_n_0 ),
        .I3(\j_reg_n_0_[1] ),
        .O(\j[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h2AFF8000)) 
    \j[2]_i_1 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\j_reg_n_0_[1] ),
        .I2(\j_reg_n_0_[0] ),
        .I3(\j[2]_i_2_n_0 ),
        .I4(\j_reg_n_0_[2] ),
        .O(\j[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000028400)) 
    \j[2]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[2] ),
        .O(\j[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\j[0]_i_1_n_0 ),
        .Q(\j_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\j[1]_i_1_n_0 ),
        .Q(\j_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \j_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\j[2]_i_1_n_0 ),
        .Q(\j_reg_n_0_[2] ),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \l[0]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\l_reg_n_0_[0] ),
        .O(l[0]));
  LUT3 #(
    .INIT(8'h60)) 
    \l[1]_i_1 
       (.I0(\l_reg_n_0_[1] ),
        .I1(\l_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[4] ),
        .O(\l[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \l[2]_i_1 
       (.I0(\l_reg_n_0_[0] ),
        .I1(\l_reg_n_0_[1] ),
        .I2(\l_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[4] ),
        .O(\l[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001001)) 
    \l[3]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[0] ),
        .O(CEB2));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \l[3]_i_2 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\l_reg_n_0_[2] ),
        .I2(\l_reg_n_0_[1] ),
        .I3(\l_reg_n_0_[0] ),
        .I4(\l_reg_n_0_[3] ),
        .O(l[3]));
  FDRE #(
    .INIT(1'b0)) 
    \l_reg[0] 
       (.C(clk),
        .CE(CEB2),
        .D(l[0]),
        .Q(\l_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \l_reg[1] 
       (.C(clk),
        .CE(CEB2),
        .D(\l[1]_i_1_n_0 ),
        .Q(\l_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \l_reg[2] 
       (.C(clk),
        .CE(CEB2),
        .D(\l[2]_i_1_n_0 ),
        .Q(\l_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \l_reg[3] 
       (.C(clk),
        .CE(CEB2),
        .D(l[3]),
        .Q(\l_reg_n_0_[3] ),
        .R(rst));
  LUT6 #(
    .INIT(64'h8B8B8B88BBBBBBBB)) 
    \mempcpy_scratch[0]_i_1 
       (.I0(i_mem0a_dout[24]),
        .I1(\mempcpy_scratch[39]_i_3_n_0 ),
        .I2(\mempcpy_scratch[0]_i_2_n_0 ),
        .I3(\mempcpy_scratch[0]_i_3_n_0 ),
        .I4(\mempcpy_scratch[0]_i_4_n_0 ),
        .I5(\mempcpy_scratch[0]_i_5_n_0 ),
        .O(\mempcpy_scratch[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hEEFE)) 
    \mempcpy_scratch[0]_i_2 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .I2(mempcpy_scratch30_out[31]),
        .I3(mempcpy_scratch[0]),
        .O(\mempcpy_scratch[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBAAABAAAAAAAAA)) 
    \mempcpy_scratch[0]_i_3 
       (.I0(mempcpy_scratch30_out[31]),
        .I1(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I2(i_mem0b_dout[0]),
        .I3(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I4(i_mem0b_dout[16]),
        .I5(\bram0b[o][o_din][31]_i_7_n_0 ),
        .O(\mempcpy_scratch[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \mempcpy_scratch[0]_i_4 
       (.I0(\mempcpy_scratch[31]_i_10_n_0 ),
        .I1(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I2(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I3(i_mem0b_dout[0]),
        .O(\mempcpy_scratch[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA3ABF7FFF7FFF7FF)) 
    \mempcpy_scratch[0]_i_5 
       (.I0(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .I2(\bytes_first_line_reg_n_0_[1] ),
        .I3(i_mem0a_dout[0]),
        .I4(\bram0a[o][o_din][31]_i_10_n_0 ),
        .I5(\mempcpy_scratch[0]_i_6_n_0 ),
        .O(\mempcpy_scratch[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mempcpy_scratch[0]_i_6 
       (.I0(i_mem0a_dout[16]),
        .I1(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I2(i_mem0a_dout[0]),
        .O(\mempcpy_scratch[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCECCCFCFCFCDCFCF)) 
    \mempcpy_scratch[10]_i_1 
       (.I0(mempcpy_scratch30_out[31]),
        .I1(\mempcpy_scratch[10]_i_2_n_0 ),
        .I2(\mempcpy_scratch[10]_i_3_n_0 ),
        .I3(mempcpy_scratch[10]),
        .I4(\mempcpy_scratch[15]_i_5_n_0 ),
        .I5(\mempcpy_scratch[10]_i_4_n_0 ),
        .O(\mempcpy_scratch[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h2A08)) 
    \mempcpy_scratch[10]_i_2 
       (.I0(i_mem0b_dout[2]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\mempcpy_scratch[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBBBB)) 
    \mempcpy_scratch[10]_i_3 
       (.I0(\mempcpy_scratch[39]_i_3_n_0 ),
        .I1(\mempcpy_scratch[10]_i_5_n_0 ),
        .I2(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I3(\bram0a[o][o_din][31]_i_10_n_0 ),
        .I4(\mempcpy_scratch[10]_i_6_n_0 ),
        .O(\mempcpy_scratch[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF3F351F3F3F3F3F3)) 
    \mempcpy_scratch[10]_i_4 
       (.I0(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I1(\bram0b[o][o_din][31]_i_7_n_0 ),
        .I2(\mempcpy_scratch[10]_i_7_n_0 ),
        .I3(i_mem0b_dout[10]),
        .I4(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I5(\mempcpy_scratch[31]_i_10_n_0 ),
        .O(\mempcpy_scratch[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h00D5)) 
    \mempcpy_scratch[10]_i_5 
       (.I0(\bytes_first_line_reg_n_0_[2] ),
        .I1(i_mem0a_dout[10]),
        .I2(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I3(\bytes_first_line_reg_n_0_[1] ),
        .O(\mempcpy_scratch[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mempcpy_scratch[10]_i_6 
       (.I0(i_mem0a_dout[26]),
        .I1(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I2(i_mem0a_dout[10]),
        .O(\mempcpy_scratch[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'hABFB)) 
    \mempcpy_scratch[10]_i_7 
       (.I0(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I1(i_mem0b_dout[10]),
        .I2(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I3(i_mem0b_dout[26]),
        .O(\mempcpy_scratch[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCECCCFCFCFCDCFCF)) 
    \mempcpy_scratch[11]_i_1 
       (.I0(mempcpy_scratch30_out[31]),
        .I1(\mempcpy_scratch[11]_i_2_n_0 ),
        .I2(\mempcpy_scratch[11]_i_3_n_0 ),
        .I3(mempcpy_scratch[11]),
        .I4(\mempcpy_scratch[15]_i_5_n_0 ),
        .I5(\mempcpy_scratch[11]_i_4_n_0 ),
        .O(\mempcpy_scratch[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h2A08)) 
    \mempcpy_scratch[11]_i_2 
       (.I0(i_mem0b_dout[3]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\mempcpy_scratch[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBBBB)) 
    \mempcpy_scratch[11]_i_3 
       (.I0(\mempcpy_scratch[39]_i_3_n_0 ),
        .I1(\mempcpy_scratch[11]_i_5_n_0 ),
        .I2(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I3(\bram0a[o][o_din][31]_i_10_n_0 ),
        .I4(\mempcpy_scratch[11]_i_6_n_0 ),
        .O(\mempcpy_scratch[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF3F351F3F3F3F3F3)) 
    \mempcpy_scratch[11]_i_4 
       (.I0(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I1(\bram0b[o][o_din][31]_i_7_n_0 ),
        .I2(\mempcpy_scratch[11]_i_7_n_0 ),
        .I3(i_mem0b_dout[11]),
        .I4(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I5(\mempcpy_scratch[31]_i_10_n_0 ),
        .O(\mempcpy_scratch[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h00D5)) 
    \mempcpy_scratch[11]_i_5 
       (.I0(\bytes_first_line_reg_n_0_[2] ),
        .I1(i_mem0a_dout[11]),
        .I2(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I3(\bytes_first_line_reg_n_0_[1] ),
        .O(\mempcpy_scratch[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mempcpy_scratch[11]_i_6 
       (.I0(i_mem0a_dout[27]),
        .I1(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I2(i_mem0a_dout[11]),
        .O(\mempcpy_scratch[11]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'hABFB)) 
    \mempcpy_scratch[11]_i_7 
       (.I0(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I1(i_mem0b_dout[11]),
        .I2(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I3(i_mem0b_dout[27]),
        .O(\mempcpy_scratch[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCECCCFCFCFCDCFCF)) 
    \mempcpy_scratch[12]_i_1 
       (.I0(mempcpy_scratch30_out[31]),
        .I1(\mempcpy_scratch[12]_i_2_n_0 ),
        .I2(\mempcpy_scratch[12]_i_3_n_0 ),
        .I3(mempcpy_scratch[12]),
        .I4(\mempcpy_scratch[15]_i_5_n_0 ),
        .I5(\mempcpy_scratch[12]_i_4_n_0 ),
        .O(\mempcpy_scratch[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h2A08)) 
    \mempcpy_scratch[12]_i_2 
       (.I0(i_mem0b_dout[4]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\mempcpy_scratch[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBBBB)) 
    \mempcpy_scratch[12]_i_3 
       (.I0(\mempcpy_scratch[39]_i_3_n_0 ),
        .I1(\mempcpy_scratch[12]_i_5_n_0 ),
        .I2(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I3(\bram0a[o][o_din][31]_i_10_n_0 ),
        .I4(\mempcpy_scratch[12]_i_6_n_0 ),
        .O(\mempcpy_scratch[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF3F351F3F3F3F3F3)) 
    \mempcpy_scratch[12]_i_4 
       (.I0(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I1(\bram0b[o][o_din][31]_i_7_n_0 ),
        .I2(\mempcpy_scratch[12]_i_7_n_0 ),
        .I3(i_mem0b_dout[12]),
        .I4(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I5(\mempcpy_scratch[31]_i_10_n_0 ),
        .O(\mempcpy_scratch[12]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h00D5)) 
    \mempcpy_scratch[12]_i_5 
       (.I0(\bytes_first_line_reg_n_0_[2] ),
        .I1(i_mem0a_dout[12]),
        .I2(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I3(\bytes_first_line_reg_n_0_[1] ),
        .O(\mempcpy_scratch[12]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mempcpy_scratch[12]_i_6 
       (.I0(i_mem0a_dout[28]),
        .I1(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I2(i_mem0a_dout[12]),
        .O(\mempcpy_scratch[12]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hABFB)) 
    \mempcpy_scratch[12]_i_7 
       (.I0(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I1(i_mem0b_dout[12]),
        .I2(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I3(i_mem0b_dout[28]),
        .O(\mempcpy_scratch[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCECCCFCFCFCDCFCF)) 
    \mempcpy_scratch[13]_i_1 
       (.I0(mempcpy_scratch30_out[31]),
        .I1(\mempcpy_scratch[13]_i_2_n_0 ),
        .I2(\mempcpy_scratch[13]_i_3_n_0 ),
        .I3(mempcpy_scratch[13]),
        .I4(\mempcpy_scratch[15]_i_5_n_0 ),
        .I5(\mempcpy_scratch[13]_i_4_n_0 ),
        .O(\mempcpy_scratch[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h2A08)) 
    \mempcpy_scratch[13]_i_2 
       (.I0(i_mem0b_dout[5]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\mempcpy_scratch[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBBBB)) 
    \mempcpy_scratch[13]_i_3 
       (.I0(\mempcpy_scratch[39]_i_3_n_0 ),
        .I1(\mempcpy_scratch[13]_i_5_n_0 ),
        .I2(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I3(\bram0a[o][o_din][31]_i_10_n_0 ),
        .I4(\mempcpy_scratch[13]_i_6_n_0 ),
        .O(\mempcpy_scratch[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF3F351F3F3F3F3F3)) 
    \mempcpy_scratch[13]_i_4 
       (.I0(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I1(\bram0b[o][o_din][31]_i_7_n_0 ),
        .I2(\mempcpy_scratch[13]_i_7_n_0 ),
        .I3(i_mem0b_dout[13]),
        .I4(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I5(\mempcpy_scratch[31]_i_10_n_0 ),
        .O(\mempcpy_scratch[13]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h00D5)) 
    \mempcpy_scratch[13]_i_5 
       (.I0(\bytes_first_line_reg_n_0_[2] ),
        .I1(i_mem0a_dout[13]),
        .I2(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I3(\bytes_first_line_reg_n_0_[1] ),
        .O(\mempcpy_scratch[13]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mempcpy_scratch[13]_i_6 
       (.I0(i_mem0a_dout[29]),
        .I1(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I2(i_mem0a_dout[13]),
        .O(\mempcpy_scratch[13]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'hABFB)) 
    \mempcpy_scratch[13]_i_7 
       (.I0(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I1(i_mem0b_dout[13]),
        .I2(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I3(i_mem0b_dout[29]),
        .O(\mempcpy_scratch[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCECCCFCFCFCDCFCF)) 
    \mempcpy_scratch[14]_i_1 
       (.I0(mempcpy_scratch30_out[31]),
        .I1(\mempcpy_scratch[14]_i_2_n_0 ),
        .I2(\mempcpy_scratch[14]_i_3_n_0 ),
        .I3(mempcpy_scratch[14]),
        .I4(\mempcpy_scratch[15]_i_5_n_0 ),
        .I5(\mempcpy_scratch[14]_i_4_n_0 ),
        .O(\mempcpy_scratch[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h2A08)) 
    \mempcpy_scratch[14]_i_2 
       (.I0(i_mem0b_dout[6]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\mempcpy_scratch[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBBBB)) 
    \mempcpy_scratch[14]_i_3 
       (.I0(\mempcpy_scratch[39]_i_3_n_0 ),
        .I1(\mempcpy_scratch[14]_i_5_n_0 ),
        .I2(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I3(\bram0a[o][o_din][31]_i_10_n_0 ),
        .I4(\mempcpy_scratch[14]_i_6_n_0 ),
        .O(\mempcpy_scratch[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF3F351F3F3F3F3F3)) 
    \mempcpy_scratch[14]_i_4 
       (.I0(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I1(\bram0b[o][o_din][31]_i_7_n_0 ),
        .I2(\mempcpy_scratch[14]_i_7_n_0 ),
        .I3(i_mem0b_dout[14]),
        .I4(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I5(\mempcpy_scratch[31]_i_10_n_0 ),
        .O(\mempcpy_scratch[14]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h00D5)) 
    \mempcpy_scratch[14]_i_5 
       (.I0(\bytes_first_line_reg_n_0_[2] ),
        .I1(i_mem0a_dout[14]),
        .I2(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I3(\bytes_first_line_reg_n_0_[1] ),
        .O(\mempcpy_scratch[14]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mempcpy_scratch[14]_i_6 
       (.I0(i_mem0a_dout[30]),
        .I1(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I2(i_mem0a_dout[14]),
        .O(\mempcpy_scratch[14]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'hABFB)) 
    \mempcpy_scratch[14]_i_7 
       (.I0(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I1(i_mem0b_dout[14]),
        .I2(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I3(i_mem0b_dout[30]),
        .O(\mempcpy_scratch[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCECCCFCFCFCDCFCF)) 
    \mempcpy_scratch[15]_i_1 
       (.I0(mempcpy_scratch30_out[31]),
        .I1(\mempcpy_scratch[15]_i_3_n_0 ),
        .I2(\mempcpy_scratch[15]_i_4_n_0 ),
        .I3(mempcpy_scratch[15]),
        .I4(\mempcpy_scratch[15]_i_5_n_0 ),
        .I5(\mempcpy_scratch[15]_i_6_n_0 ),
        .O(\mempcpy_scratch[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \mempcpy_scratch[15]_i_10 
       (.I0(C[30]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h00D5)) 
    \mempcpy_scratch[15]_i_11 
       (.I0(\bytes_first_line_reg_n_0_[2] ),
        .I1(i_mem0a_dout[15]),
        .I2(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I3(\bytes_first_line_reg_n_0_[1] ),
        .O(\mempcpy_scratch[15]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mempcpy_scratch[15]_i_12 
       (.I0(i_mem0a_dout[31]),
        .I1(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I2(i_mem0a_dout[15]),
        .O(\mempcpy_scratch[15]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'hABFB)) 
    \mempcpy_scratch[15]_i_13 
       (.I0(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I1(i_mem0b_dout[15]),
        .I2(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I3(i_mem0b_dout[31]),
        .O(\mempcpy_scratch[15]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \mempcpy_scratch[15]_i_16 
       (.I0(C[29]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \mempcpy_scratch[15]_i_17 
       (.I0(C[28]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \mempcpy_scratch[15]_i_18 
       (.I0(C[27]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \mempcpy_scratch[15]_i_19 
       (.I0(C[26]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[15]_i_20 
       (.I0(\bytes_second_line_reg_n_0_[1] ),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[15]_i_21 
       (.I0(\bytes_second_line_reg_n_0_[1] ),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[15]_i_22 
       (.I0(\bytes_second_line_reg_n_0_[1] ),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[15]_i_23 
       (.I0(\bytes_second_line_reg_n_0_[1] ),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \mempcpy_scratch[15]_i_25 
       (.I0(C[25]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \mempcpy_scratch[15]_i_26 
       (.I0(C[24]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \mempcpy_scratch[15]_i_27 
       (.I0(C[23]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \mempcpy_scratch[15]_i_28 
       (.I0(C[22]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[15]_i_29 
       (.I0(\bytes_second_line_reg_n_0_[1] ),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h2A08)) 
    \mempcpy_scratch[15]_i_3 
       (.I0(i_mem0b_dout[7]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[15]_i_30 
       (.I0(\bytes_second_line_reg_n_0_[1] ),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[15]_i_31 
       (.I0(\bytes_second_line_reg_n_0_[1] ),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[15]_i_32 
       (.I0(\bytes_second_line_reg_n_0_[1] ),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \mempcpy_scratch[15]_i_34 
       (.I0(C[21]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \mempcpy_scratch[15]_i_35 
       (.I0(C[20]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \mempcpy_scratch[15]_i_36 
       (.I0(C[19]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \mempcpy_scratch[15]_i_37 
       (.I0(C[18]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \mempcpy_scratch[15]_i_39 
       (.I0(C[17]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hBBABBBBB)) 
    \mempcpy_scratch[15]_i_4 
       (.I0(\mempcpy_scratch[39]_i_3_n_0 ),
        .I1(\mempcpy_scratch[15]_i_11_n_0 ),
        .I2(\mempcpy_scratch[15]_i_12_n_0 ),
        .I3(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I4(\bram0a[o][o_din][31]_i_10_n_0 ),
        .O(\mempcpy_scratch[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \mempcpy_scratch[15]_i_40 
       (.I0(C[16]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_40_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \mempcpy_scratch[15]_i_41 
       (.I0(C[15]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_41_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \mempcpy_scratch[15]_i_42 
       (.I0(C[14]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_42_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \mempcpy_scratch[15]_i_44 
       (.I0(C[13]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_44_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \mempcpy_scratch[15]_i_45 
       (.I0(C[12]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_45_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \mempcpy_scratch[15]_i_46 
       (.I0(C[11]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_46_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \mempcpy_scratch[15]_i_47 
       (.I0(C[10]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_47_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \mempcpy_scratch[15]_i_49 
       (.I0(C[9]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_49_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[15]_i_5 
       (.I0(\bytes_first_line_reg_n_0_[2] ),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .O(\mempcpy_scratch[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \mempcpy_scratch[15]_i_50 
       (.I0(C[8]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_50_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \mempcpy_scratch[15]_i_51 
       (.I0(C[7]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_51_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \mempcpy_scratch[15]_i_52 
       (.I0(C[6]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_52_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \mempcpy_scratch[15]_i_53 
       (.I0(C[5]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_53_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mempcpy_scratch[15]_i_54 
       (.I0(C[4]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .O(\mempcpy_scratch[15]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hF3F351F3F3F3F3F3)) 
    \mempcpy_scratch[15]_i_6 
       (.I0(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I1(\bram0b[o][o_din][31]_i_7_n_0 ),
        .I2(\mempcpy_scratch[15]_i_13_n_0 ),
        .I3(i_mem0b_dout[15]),
        .I4(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I5(\mempcpy_scratch[31]_i_10_n_0 ),
        .O(\mempcpy_scratch[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \mempcpy_scratch[15]_i_9 
       (.I0(C[31]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000044744474)) 
    \mempcpy_scratch[16]_i_1 
       (.I0(\mempcpy_scratch[16]_i_2_n_0 ),
        .I1(\mempcpy_scratch[23]_i_5_n_0 ),
        .I2(\mempcpy_scratch[16]_i_3_n_0 ),
        .I3(\mempcpy_scratch[16]_i_4_n_0 ),
        .I4(i_mem0b_dout[8]),
        .I5(\mempcpy_scratch[39]_i_3_n_0 ),
        .O(\mempcpy_scratch[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3F3F2A3F3F3F3F3F)) 
    \mempcpy_scratch[16]_i_2 
       (.I0(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I1(\mempcpy_scratch[16]_i_5_n_0 ),
        .I2(\mempcpy_scratch[31]_i_10_n_0 ),
        .I3(i_mem0b_dout[16]),
        .I4(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I5(\bram0b[o][o_din][31]_i_7_n_0 ),
        .O(\mempcpy_scratch[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBA303030FFFFFFFF)) 
    \mempcpy_scratch[16]_i_3 
       (.I0(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I1(\mempcpy_scratch[30]_i_6_n_0 ),
        .I2(i_mem0a_dout[16]),
        .I3(i_mem0a_dout[0]),
        .I4(\bytes_first_line_reg_n_0_[1] ),
        .I5(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[16]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[16]_i_4 
       (.I0(mempcpy_scratch[16]),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \mempcpy_scratch[16]_i_5 
       (.I0(i_mem0b_dout[16]),
        .I1(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I2(i_mem0b_dout[0]),
        .I3(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .O(\mempcpy_scratch[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000044744474)) 
    \mempcpy_scratch[17]_i_1 
       (.I0(\mempcpy_scratch[17]_i_2_n_0 ),
        .I1(\mempcpy_scratch[23]_i_5_n_0 ),
        .I2(\mempcpy_scratch[17]_i_3_n_0 ),
        .I3(\mempcpy_scratch[17]_i_4_n_0 ),
        .I4(i_mem0b_dout[9]),
        .I5(\mempcpy_scratch[39]_i_3_n_0 ),
        .O(\mempcpy_scratch[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3F3F2A3F3F3F3F3F)) 
    \mempcpy_scratch[17]_i_2 
       (.I0(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I1(\mempcpy_scratch[17]_i_5_n_0 ),
        .I2(\mempcpy_scratch[31]_i_10_n_0 ),
        .I3(i_mem0b_dout[17]),
        .I4(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I5(\bram0b[o][o_din][31]_i_7_n_0 ),
        .O(\mempcpy_scratch[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFBBBBBB37333333)) 
    \mempcpy_scratch[17]_i_3 
       (.I0(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .I2(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I3(i_mem0a_dout[17]),
        .I4(\bram0a[o][o_din][31]_i_10_n_0 ),
        .I5(\mempcpy_scratch[17]_i_6_n_0 ),
        .O(\mempcpy_scratch[17]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[17]_i_4 
       (.I0(mempcpy_scratch[17]),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[17]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \mempcpy_scratch[17]_i_5 
       (.I0(i_mem0b_dout[17]),
        .I1(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I2(i_mem0b_dout[1]),
        .I3(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .O(\mempcpy_scratch[17]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \mempcpy_scratch[17]_i_6 
       (.I0(i_mem0a_dout[17]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(i_mem0a_dout[1]),
        .I3(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8888BBBB8B888B88)) 
    \mempcpy_scratch[18]_i_1 
       (.I0(i_mem0b_dout[10]),
        .I1(\mempcpy_scratch[39]_i_3_n_0 ),
        .I2(\mempcpy_scratch[18]_i_2_n_0 ),
        .I3(\mempcpy_scratch[18]_i_3_n_0 ),
        .I4(\mempcpy_scratch[18]_i_4_n_0 ),
        .I5(\mempcpy_scratch[23]_i_5_n_0 ),
        .O(\mempcpy_scratch[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[18]_i_2 
       (.I0(mempcpy_scratch[18]),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFBBBBBB37333333)) 
    \mempcpy_scratch[18]_i_3 
       (.I0(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .I2(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I3(i_mem0a_dout[18]),
        .I4(\bram0a[o][o_din][31]_i_10_n_0 ),
        .I5(\mempcpy_scratch[18]_i_5_n_0 ),
        .O(\mempcpy_scratch[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3F3F2A3F3F3F3F3F)) 
    \mempcpy_scratch[18]_i_4 
       (.I0(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I1(\mempcpy_scratch[18]_i_6_n_0 ),
        .I2(\mempcpy_scratch[31]_i_10_n_0 ),
        .I3(i_mem0b_dout[18]),
        .I4(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I5(\bram0b[o][o_din][31]_i_7_n_0 ),
        .O(\mempcpy_scratch[18]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \mempcpy_scratch[18]_i_5 
       (.I0(i_mem0a_dout[18]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(i_mem0a_dout[2]),
        .I3(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[18]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \mempcpy_scratch[18]_i_6 
       (.I0(i_mem0b_dout[18]),
        .I1(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I2(i_mem0b_dout[2]),
        .I3(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .O(\mempcpy_scratch[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000044744474)) 
    \mempcpy_scratch[19]_i_1 
       (.I0(\mempcpy_scratch[19]_i_2_n_0 ),
        .I1(\mempcpy_scratch[23]_i_5_n_0 ),
        .I2(\mempcpy_scratch[19]_i_3_n_0 ),
        .I3(\mempcpy_scratch[19]_i_4_n_0 ),
        .I4(i_mem0b_dout[11]),
        .I5(\mempcpy_scratch[39]_i_3_n_0 ),
        .O(\mempcpy_scratch[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3F3F2A3F3F3F3F3F)) 
    \mempcpy_scratch[19]_i_2 
       (.I0(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I1(\mempcpy_scratch[19]_i_5_n_0 ),
        .I2(\mempcpy_scratch[31]_i_10_n_0 ),
        .I3(i_mem0b_dout[19]),
        .I4(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I5(\bram0b[o][o_din][31]_i_7_n_0 ),
        .O(\mempcpy_scratch[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFBBBBBB37333333)) 
    \mempcpy_scratch[19]_i_3 
       (.I0(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .I2(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I3(i_mem0a_dout[19]),
        .I4(\bram0a[o][o_din][31]_i_10_n_0 ),
        .I5(\mempcpy_scratch[19]_i_6_n_0 ),
        .O(\mempcpy_scratch[19]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[19]_i_4 
       (.I0(mempcpy_scratch[19]),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[19]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \mempcpy_scratch[19]_i_5 
       (.I0(i_mem0b_dout[19]),
        .I1(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I2(i_mem0b_dout[3]),
        .I3(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .O(\mempcpy_scratch[19]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \mempcpy_scratch[19]_i_6 
       (.I0(i_mem0a_dout[19]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(i_mem0a_dout[3]),
        .I3(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8B88BBBBBBBB)) 
    \mempcpy_scratch[1]_i_1 
       (.I0(i_mem0a_dout[25]),
        .I1(\mempcpy_scratch[39]_i_3_n_0 ),
        .I2(\mempcpy_scratch[1]_i_2_n_0 ),
        .I3(\mempcpy_scratch[1]_i_3_n_0 ),
        .I4(\mempcpy_scratch[1]_i_4_n_0 ),
        .I5(\mempcpy_scratch[1]_i_5_n_0 ),
        .O(\mempcpy_scratch[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hEEFE)) 
    \mempcpy_scratch[1]_i_2 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .I2(mempcpy_scratch30_out[31]),
        .I3(mempcpy_scratch[1]),
        .O(\mempcpy_scratch[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBAAABAAAAAAAAA)) 
    \mempcpy_scratch[1]_i_3 
       (.I0(mempcpy_scratch30_out[31]),
        .I1(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I2(i_mem0b_dout[1]),
        .I3(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I4(i_mem0b_dout[17]),
        .I5(\bram0b[o][o_din][31]_i_7_n_0 ),
        .O(\mempcpy_scratch[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \mempcpy_scratch[1]_i_4 
       (.I0(\mempcpy_scratch[31]_i_10_n_0 ),
        .I1(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I2(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I3(i_mem0b_dout[1]),
        .O(\mempcpy_scratch[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBF15BFFFBFBFBFFF)) 
    \mempcpy_scratch[1]_i_5 
       (.I0(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I1(\mempcpy_scratch[1]_i_6_n_0 ),
        .I2(\bram0a[o][o_din][31]_i_10_n_0 ),
        .I3(\bytes_first_line_reg_n_0_[1] ),
        .I4(\bytes_first_line_reg_n_0_[2] ),
        .I5(i_mem0a_dout[1]),
        .O(\mempcpy_scratch[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mempcpy_scratch[1]_i_6 
       (.I0(i_mem0a_dout[17]),
        .I1(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I2(i_mem0a_dout[1]),
        .O(\mempcpy_scratch[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8888BBBB8B888B88)) 
    \mempcpy_scratch[20]_i_1 
       (.I0(i_mem0b_dout[12]),
        .I1(\mempcpy_scratch[39]_i_3_n_0 ),
        .I2(\mempcpy_scratch[20]_i_2_n_0 ),
        .I3(\mempcpy_scratch[20]_i_3_n_0 ),
        .I4(\mempcpy_scratch[20]_i_4_n_0 ),
        .I5(\mempcpy_scratch[23]_i_5_n_0 ),
        .O(\mempcpy_scratch[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[20]_i_2 
       (.I0(mempcpy_scratch[20]),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFBBBBBB37333333)) 
    \mempcpy_scratch[20]_i_3 
       (.I0(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .I2(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I3(i_mem0a_dout[20]),
        .I4(\bram0a[o][o_din][31]_i_10_n_0 ),
        .I5(\mempcpy_scratch[20]_i_5_n_0 ),
        .O(\mempcpy_scratch[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3F3F2A3F3F3F3F3F)) 
    \mempcpy_scratch[20]_i_4 
       (.I0(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I1(\mempcpy_scratch[20]_i_6_n_0 ),
        .I2(\mempcpy_scratch[31]_i_10_n_0 ),
        .I3(i_mem0b_dout[20]),
        .I4(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I5(\bram0b[o][o_din][31]_i_7_n_0 ),
        .O(\mempcpy_scratch[20]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \mempcpy_scratch[20]_i_5 
       (.I0(i_mem0a_dout[20]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(i_mem0a_dout[4]),
        .I3(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[20]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \mempcpy_scratch[20]_i_6 
       (.I0(i_mem0b_dout[20]),
        .I1(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I2(i_mem0b_dout[4]),
        .I3(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .O(\mempcpy_scratch[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8888BBBB8B888B88)) 
    \mempcpy_scratch[21]_i_1 
       (.I0(i_mem0b_dout[13]),
        .I1(\mempcpy_scratch[39]_i_3_n_0 ),
        .I2(\mempcpy_scratch[21]_i_2_n_0 ),
        .I3(\mempcpy_scratch[21]_i_3_n_0 ),
        .I4(\mempcpy_scratch[21]_i_4_n_0 ),
        .I5(\mempcpy_scratch[23]_i_5_n_0 ),
        .O(\mempcpy_scratch[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[21]_i_2 
       (.I0(mempcpy_scratch[21]),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFBBBBBB37333333)) 
    \mempcpy_scratch[21]_i_3 
       (.I0(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .I2(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I3(i_mem0a_dout[21]),
        .I4(\bram0a[o][o_din][31]_i_10_n_0 ),
        .I5(\mempcpy_scratch[21]_i_5_n_0 ),
        .O(\mempcpy_scratch[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3F3F2A3F3F3F3F3F)) 
    \mempcpy_scratch[21]_i_4 
       (.I0(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I1(\mempcpy_scratch[21]_i_6_n_0 ),
        .I2(\mempcpy_scratch[31]_i_10_n_0 ),
        .I3(i_mem0b_dout[21]),
        .I4(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I5(\bram0b[o][o_din][31]_i_7_n_0 ),
        .O(\mempcpy_scratch[21]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \mempcpy_scratch[21]_i_5 
       (.I0(i_mem0a_dout[21]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(i_mem0a_dout[5]),
        .I3(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[21]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \mempcpy_scratch[21]_i_6 
       (.I0(i_mem0b_dout[21]),
        .I1(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I2(i_mem0b_dout[5]),
        .I3(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .O(\mempcpy_scratch[21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8888BBBB8B888B88)) 
    \mempcpy_scratch[22]_i_1 
       (.I0(i_mem0b_dout[14]),
        .I1(\mempcpy_scratch[39]_i_3_n_0 ),
        .I2(\mempcpy_scratch[22]_i_2_n_0 ),
        .I3(\mempcpy_scratch[22]_i_3_n_0 ),
        .I4(\mempcpy_scratch[22]_i_4_n_0 ),
        .I5(\mempcpy_scratch[23]_i_5_n_0 ),
        .O(\mempcpy_scratch[22]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[22]_i_2 
       (.I0(mempcpy_scratch[22]),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFBBBBBB37333333)) 
    \mempcpy_scratch[22]_i_3 
       (.I0(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .I2(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I3(i_mem0a_dout[22]),
        .I4(\bram0a[o][o_din][31]_i_10_n_0 ),
        .I5(\mempcpy_scratch[22]_i_5_n_0 ),
        .O(\mempcpy_scratch[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFBFFFBFFFBF)) 
    \mempcpy_scratch[22]_i_4 
       (.I0(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I1(\bram0b[o][o_din][31]_i_7_n_0 ),
        .I2(i_mem0b_dout[22]),
        .I3(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I4(\mempcpy_scratch[22]_i_6_n_0 ),
        .I5(\mempcpy_scratch[31]_i_10_n_0 ),
        .O(\mempcpy_scratch[22]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \mempcpy_scratch[22]_i_5 
       (.I0(i_mem0a_dout[22]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(i_mem0a_dout[6]),
        .I3(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[22]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \mempcpy_scratch[22]_i_6 
       (.I0(i_mem0b_dout[22]),
        .I1(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I2(i_mem0b_dout[6]),
        .I3(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .O(\mempcpy_scratch[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8888BBBB8B888B88)) 
    \mempcpy_scratch[23]_i_1 
       (.I0(i_mem0b_dout[15]),
        .I1(\mempcpy_scratch[39]_i_3_n_0 ),
        .I2(\mempcpy_scratch[23]_i_2_n_0 ),
        .I3(\mempcpy_scratch[23]_i_3_n_0 ),
        .I4(\mempcpy_scratch[23]_i_4_n_0 ),
        .I5(\mempcpy_scratch[23]_i_5_n_0 ),
        .O(\mempcpy_scratch[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[23]_i_2 
       (.I0(mempcpy_scratch[23]),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFBBBBBB37333333)) 
    \mempcpy_scratch[23]_i_3 
       (.I0(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .I2(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I3(i_mem0a_dout[23]),
        .I4(\bram0a[o][o_din][31]_i_10_n_0 ),
        .I5(\mempcpy_scratch[23]_i_6_n_0 ),
        .O(\mempcpy_scratch[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3F2A3F3F3F3F3F3F)) 
    \mempcpy_scratch[23]_i_4 
       (.I0(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I1(\mempcpy_scratch[23]_i_7_n_0 ),
        .I2(\mempcpy_scratch[31]_i_10_n_0 ),
        .I3(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I4(i_mem0b_dout[23]),
        .I5(\bram0b[o][o_din][31]_i_7_n_0 ),
        .O(\mempcpy_scratch[23]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h1110)) 
    \mempcpy_scratch[23]_i_5 
       (.I0(mempcpy_scratch30_out[31]),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .I2(\mempcpy_scratch[47]_i_6_n_0 ),
        .I3(C[4]),
        .O(\mempcpy_scratch[23]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \mempcpy_scratch[23]_i_6 
       (.I0(i_mem0a_dout[23]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(i_mem0a_dout[7]),
        .I3(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[23]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \mempcpy_scratch[23]_i_7 
       (.I0(i_mem0b_dout[23]),
        .I1(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I2(i_mem0b_dout[7]),
        .I3(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .O(\mempcpy_scratch[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8B888B888B888BBB)) 
    \mempcpy_scratch[24]_i_1 
       (.I0(i_mem0b_dout[16]),
        .I1(\mempcpy_scratch[39]_i_3_n_0 ),
        .I2(\mempcpy_scratch[24]_i_2_n_0 ),
        .I3(\mempcpy_scratch[31]_i_5_n_0 ),
        .I4(\mempcpy_scratch[24]_i_3_n_0 ),
        .I5(\mempcpy_scratch[24]_i_4_n_0 ),
        .O(\mempcpy_scratch[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000EFFFEFFFEFFF)) 
    \mempcpy_scratch[24]_i_2 
       (.I0(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I1(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I2(i_mem0b_dout[24]),
        .I3(\bram0b[o][o_din][31]_i_7_n_0 ),
        .I4(\mempcpy_scratch[24]_i_5_n_0 ),
        .I5(\mempcpy_scratch[31]_i_10_n_0 ),
        .O(\mempcpy_scratch[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h51F3F3F300000000)) 
    \mempcpy_scratch[24]_i_3 
       (.I0(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I1(i_mem0a_dout[24]),
        .I2(\mempcpy_scratch[30]_i_6_n_0 ),
        .I3(i_mem0a_dout[8]),
        .I4(\bytes_first_line_reg_n_0_[1] ),
        .I5(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[24]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[24]_i_4 
       (.I0(mempcpy_scratch[24]),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[24]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h88C0)) 
    \mempcpy_scratch[24]_i_5 
       (.I0(i_mem0b_dout[8]),
        .I1(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I2(i_mem0b_dout[24]),
        .I3(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .O(\mempcpy_scratch[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000044744474)) 
    \mempcpy_scratch[25]_i_1 
       (.I0(\mempcpy_scratch[25]_i_2_n_0 ),
        .I1(\mempcpy_scratch[31]_i_5_n_0 ),
        .I2(\mempcpy_scratch[25]_i_3_n_0 ),
        .I3(\mempcpy_scratch[25]_i_4_n_0 ),
        .I4(i_mem0b_dout[17]),
        .I5(\mempcpy_scratch[39]_i_3_n_0 ),
        .O(\mempcpy_scratch[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000EFFFEFFFEFFF)) 
    \mempcpy_scratch[25]_i_2 
       (.I0(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I1(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I2(i_mem0b_dout[25]),
        .I3(\bram0b[o][o_din][31]_i_7_n_0 ),
        .I4(\mempcpy_scratch[25]_i_5_n_0 ),
        .I5(\mempcpy_scratch[31]_i_10_n_0 ),
        .O(\mempcpy_scratch[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBA303030FFFFFFFF)) 
    \mempcpy_scratch[25]_i_3 
       (.I0(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I1(\mempcpy_scratch[30]_i_6_n_0 ),
        .I2(i_mem0a_dout[25]),
        .I3(i_mem0a_dout[9]),
        .I4(\bytes_first_line_reg_n_0_[1] ),
        .I5(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[25]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[25]_i_4 
       (.I0(mempcpy_scratch[25]),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[25]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h88C0)) 
    \mempcpy_scratch[25]_i_5 
       (.I0(i_mem0b_dout[9]),
        .I1(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I2(i_mem0b_dout[25]),
        .I3(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .O(\mempcpy_scratch[25]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8B888B888B888BBB)) 
    \mempcpy_scratch[26]_i_1 
       (.I0(i_mem0b_dout[18]),
        .I1(\mempcpy_scratch[39]_i_3_n_0 ),
        .I2(\mempcpy_scratch[26]_i_2_n_0 ),
        .I3(\mempcpy_scratch[31]_i_5_n_0 ),
        .I4(\mempcpy_scratch[26]_i_3_n_0 ),
        .I5(\mempcpy_scratch[26]_i_4_n_0 ),
        .O(\mempcpy_scratch[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000EFFFEFFFEFFF)) 
    \mempcpy_scratch[26]_i_2 
       (.I0(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I1(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I2(i_mem0b_dout[26]),
        .I3(\bram0b[o][o_din][31]_i_7_n_0 ),
        .I4(\mempcpy_scratch[26]_i_5_n_0 ),
        .I5(\mempcpy_scratch[31]_i_10_n_0 ),
        .O(\mempcpy_scratch[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h51F3F3F300000000)) 
    \mempcpy_scratch[26]_i_3 
       (.I0(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I1(i_mem0a_dout[26]),
        .I2(\mempcpy_scratch[30]_i_6_n_0 ),
        .I3(i_mem0a_dout[10]),
        .I4(\bytes_first_line_reg_n_0_[1] ),
        .I5(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[26]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[26]_i_4 
       (.I0(mempcpy_scratch[26]),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[26]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h88C0)) 
    \mempcpy_scratch[26]_i_5 
       (.I0(i_mem0b_dout[10]),
        .I1(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I2(i_mem0b_dout[26]),
        .I3(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .O(\mempcpy_scratch[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8B888B888B888BBB)) 
    \mempcpy_scratch[27]_i_1 
       (.I0(i_mem0b_dout[19]),
        .I1(\mempcpy_scratch[39]_i_3_n_0 ),
        .I2(\mempcpy_scratch[27]_i_2_n_0 ),
        .I3(\mempcpy_scratch[31]_i_5_n_0 ),
        .I4(\mempcpy_scratch[27]_i_3_n_0 ),
        .I5(\mempcpy_scratch[27]_i_4_n_0 ),
        .O(\mempcpy_scratch[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000EFFFEFFFEFFF)) 
    \mempcpy_scratch[27]_i_2 
       (.I0(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I1(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I2(i_mem0b_dout[27]),
        .I3(\bram0b[o][o_din][31]_i_7_n_0 ),
        .I4(\mempcpy_scratch[27]_i_5_n_0 ),
        .I5(\mempcpy_scratch[31]_i_10_n_0 ),
        .O(\mempcpy_scratch[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h51F3F3F300000000)) 
    \mempcpy_scratch[27]_i_3 
       (.I0(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I1(i_mem0a_dout[27]),
        .I2(\mempcpy_scratch[30]_i_6_n_0 ),
        .I3(i_mem0a_dout[11]),
        .I4(\bytes_first_line_reg_n_0_[1] ),
        .I5(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[27]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[27]_i_4 
       (.I0(mempcpy_scratch[27]),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[27]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h88C0)) 
    \mempcpy_scratch[27]_i_5 
       (.I0(i_mem0b_dout[11]),
        .I1(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I2(i_mem0b_dout[27]),
        .I3(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .O(\mempcpy_scratch[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000044744474)) 
    \mempcpy_scratch[28]_i_1 
       (.I0(\mempcpy_scratch[28]_i_2_n_0 ),
        .I1(\mempcpy_scratch[31]_i_5_n_0 ),
        .I2(\mempcpy_scratch[28]_i_3_n_0 ),
        .I3(\mempcpy_scratch[28]_i_4_n_0 ),
        .I4(i_mem0b_dout[20]),
        .I5(\mempcpy_scratch[39]_i_3_n_0 ),
        .O(\mempcpy_scratch[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000EFFFEFFFEFFF)) 
    \mempcpy_scratch[28]_i_2 
       (.I0(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I1(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I2(i_mem0b_dout[28]),
        .I3(\bram0b[o][o_din][31]_i_7_n_0 ),
        .I4(\mempcpy_scratch[28]_i_5_n_0 ),
        .I5(\mempcpy_scratch[31]_i_10_n_0 ),
        .O(\mempcpy_scratch[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBA303030FFFFFFFF)) 
    \mempcpy_scratch[28]_i_3 
       (.I0(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I1(\mempcpy_scratch[30]_i_6_n_0 ),
        .I2(i_mem0a_dout[28]),
        .I3(i_mem0a_dout[12]),
        .I4(\bytes_first_line_reg_n_0_[1] ),
        .I5(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[28]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[28]_i_4 
       (.I0(mempcpy_scratch[28]),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[28]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h88C0)) 
    \mempcpy_scratch[28]_i_5 
       (.I0(i_mem0b_dout[12]),
        .I1(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I2(i_mem0b_dout[28]),
        .I3(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .O(\mempcpy_scratch[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000044744474)) 
    \mempcpy_scratch[29]_i_1 
       (.I0(\mempcpy_scratch[29]_i_2_n_0 ),
        .I1(\mempcpy_scratch[31]_i_5_n_0 ),
        .I2(\mempcpy_scratch[29]_i_3_n_0 ),
        .I3(\mempcpy_scratch[29]_i_4_n_0 ),
        .I4(i_mem0b_dout[21]),
        .I5(\mempcpy_scratch[39]_i_3_n_0 ),
        .O(\mempcpy_scratch[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000EFFFEFFFEFFF)) 
    \mempcpy_scratch[29]_i_2 
       (.I0(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I1(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I2(i_mem0b_dout[29]),
        .I3(\bram0b[o][o_din][31]_i_7_n_0 ),
        .I4(\mempcpy_scratch[29]_i_5_n_0 ),
        .I5(\mempcpy_scratch[31]_i_10_n_0 ),
        .O(\mempcpy_scratch[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBA303030FFFFFFFF)) 
    \mempcpy_scratch[29]_i_3 
       (.I0(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I1(\mempcpy_scratch[30]_i_6_n_0 ),
        .I2(i_mem0a_dout[29]),
        .I3(i_mem0a_dout[13]),
        .I4(\bytes_first_line_reg_n_0_[1] ),
        .I5(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[29]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[29]_i_4 
       (.I0(mempcpy_scratch[29]),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[29]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h88C0)) 
    \mempcpy_scratch[29]_i_5 
       (.I0(i_mem0b_dout[13]),
        .I1(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I2(i_mem0b_dout[29]),
        .I3(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .O(\mempcpy_scratch[29]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8B88BBBBBBBB)) 
    \mempcpy_scratch[2]_i_1 
       (.I0(i_mem0a_dout[26]),
        .I1(\mempcpy_scratch[39]_i_3_n_0 ),
        .I2(\mempcpy_scratch[2]_i_2_n_0 ),
        .I3(\mempcpy_scratch[2]_i_3_n_0 ),
        .I4(\mempcpy_scratch[2]_i_4_n_0 ),
        .I5(\mempcpy_scratch[2]_i_5_n_0 ),
        .O(\mempcpy_scratch[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hEEFE)) 
    \mempcpy_scratch[2]_i_2 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .I2(mempcpy_scratch30_out[31]),
        .I3(mempcpy_scratch[2]),
        .O(\mempcpy_scratch[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBAAABAAAAAAAAA)) 
    \mempcpy_scratch[2]_i_3 
       (.I0(mempcpy_scratch30_out[31]),
        .I1(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I2(i_mem0b_dout[2]),
        .I3(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I4(i_mem0b_dout[18]),
        .I5(\bram0b[o][o_din][31]_i_7_n_0 ),
        .O(\mempcpy_scratch[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \mempcpy_scratch[2]_i_4 
       (.I0(\mempcpy_scratch[31]_i_10_n_0 ),
        .I1(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I2(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I3(i_mem0b_dout[2]),
        .O(\mempcpy_scratch[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBF15BFFFBFBFBFFF)) 
    \mempcpy_scratch[2]_i_5 
       (.I0(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I1(\mempcpy_scratch[2]_i_6_n_0 ),
        .I2(\bram0a[o][o_din][31]_i_10_n_0 ),
        .I3(\bytes_first_line_reg_n_0_[1] ),
        .I4(\bytes_first_line_reg_n_0_[2] ),
        .I5(i_mem0a_dout[2]),
        .O(\mempcpy_scratch[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mempcpy_scratch[2]_i_6 
       (.I0(i_mem0a_dout[18]),
        .I1(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I2(i_mem0a_dout[2]),
        .O(\mempcpy_scratch[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000044744474)) 
    \mempcpy_scratch[30]_i_1 
       (.I0(\mempcpy_scratch[30]_i_2_n_0 ),
        .I1(\mempcpy_scratch[31]_i_5_n_0 ),
        .I2(\mempcpy_scratch[30]_i_3_n_0 ),
        .I3(\mempcpy_scratch[30]_i_4_n_0 ),
        .I4(i_mem0b_dout[22]),
        .I5(\mempcpy_scratch[39]_i_3_n_0 ),
        .O(\mempcpy_scratch[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FBFFFBFFFBFF)) 
    \mempcpy_scratch[30]_i_2 
       (.I0(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I1(i_mem0b_dout[30]),
        .I2(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I3(\bram0b[o][o_din][31]_i_7_n_0 ),
        .I4(\mempcpy_scratch[30]_i_5_n_0 ),
        .I5(\mempcpy_scratch[31]_i_10_n_0 ),
        .O(\mempcpy_scratch[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBA303030FFFFFFFF)) 
    \mempcpy_scratch[30]_i_3 
       (.I0(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I1(\mempcpy_scratch[30]_i_6_n_0 ),
        .I2(i_mem0a_dout[30]),
        .I3(i_mem0a_dout[14]),
        .I4(\bytes_first_line_reg_n_0_[1] ),
        .I5(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[30]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[30]_i_4 
       (.I0(mempcpy_scratch[30]),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[30]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h88C0)) 
    \mempcpy_scratch[30]_i_5 
       (.I0(i_mem0b_dout[14]),
        .I1(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I2(i_mem0b_dout[30]),
        .I3(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .O(\mempcpy_scratch[30]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDDDDDD8DD)) 
    \mempcpy_scratch[30]_i_6 
       (.I0(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I1(\mempcpy_scratch[30]_i_7_n_0 ),
        .I2(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I3(\mempcpy_scratch[30]_i_8_n_0 ),
        .I4(\bram0a[o][o_din][31]_i_15_n_0 ),
        .I5(\bram0a[o][o_din][31]_i_16_n_0 ),
        .O(\mempcpy_scratch[30]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \mempcpy_scratch[30]_i_7 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[30]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \mempcpy_scratch[30]_i_8 
       (.I0(\bram0a_reg[o][o_din][31]_i_14_n_6 ),
        .I1(\bram0a_reg[o][o_din][31]_i_14_n_7 ),
        .I2(\bram0a_reg[o][o_din][31]_i_13_n_7 ),
        .I3(\bram0a[o][o_din][31]_i_22_n_0 ),
        .I4(\mempcpy_scratch[30]_i_9_n_0 ),
        .O(\mempcpy_scratch[30]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \mempcpy_scratch[30]_i_9 
       (.I0(\bram0a_reg[o][o_din][31]_i_13_n_4 ),
        .I1(\bram0a_reg[o][o_din][31]_i_21_n_7 ),
        .I2(\bram0a_reg[o][o_din][31]_i_13_n_6 ),
        .I3(\bram0a_reg[o][o_din][31]_i_14_n_5 ),
        .O(\mempcpy_scratch[30]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8888BBBB8B888B88)) 
    \mempcpy_scratch[31]_i_1 
       (.I0(i_mem0b_dout[23]),
        .I1(\mempcpy_scratch[39]_i_3_n_0 ),
        .I2(\mempcpy_scratch[31]_i_2_n_0 ),
        .I3(\mempcpy_scratch[31]_i_3_n_0 ),
        .I4(\mempcpy_scratch[31]_i_4_n_0 ),
        .I5(\mempcpy_scratch[31]_i_5_n_0 ),
        .O(\mempcpy_scratch[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \mempcpy_scratch[31]_i_10 
       (.I0(\mempcpy_scratch[31]_i_28_n_0 ),
        .I1(\mempcpy_scratch[31]_i_29_n_0 ),
        .I2(\bram0b_reg[o][o_din][15]_i_2_n_7 ),
        .I3(\bram0b_reg[o][o_din][15]_i_6_n_5 ),
        .I4(\bram0b_reg[o][o_din][15]_i_6_n_4 ),
        .I5(\mempcpy_scratch[31]_i_30_n_0 ),
        .O(\mempcpy_scratch[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \mempcpy_scratch[31]_i_12 
       (.I0(C[15]),
        .I1(C[16]),
        .I2(C[13]),
        .I3(C[14]),
        .I4(\mempcpy_scratch[31]_i_36_n_0 ),
        .O(\mempcpy_scratch[31]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \mempcpy_scratch[31]_i_13 
       (.I0(C[7]),
        .I1(C[8]),
        .I2(C[5]),
        .I3(C[6]),
        .I4(\mempcpy_scratch[31]_i_38_n_0 ),
        .O(\mempcpy_scratch[31]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \mempcpy_scratch[31]_i_14 
       (.I0(C[31]),
        .I1(C[30]),
        .I2(C[29]),
        .I3(\mempcpy_scratch[31]_i_39_n_0 ),
        .I4(\mempcpy_scratch[31]_i_40_n_0 ),
        .O(\mempcpy_scratch[31]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \mempcpy_scratch[31]_i_16 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[31]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \mempcpy_scratch[31]_i_17 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[31]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \mempcpy_scratch[31]_i_18 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[31]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \mempcpy_scratch[31]_i_19 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[31]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[31]_i_2 
       (.I0(mempcpy_scratch[31]),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \mempcpy_scratch[31]_i_21 
       (.I0(\bytes_second_line_reg_n_0_[2] ),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(C[29]),
        .O(\mempcpy_scratch[31]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \mempcpy_scratch[31]_i_22 
       (.I0(\bytes_second_line_reg_n_0_[2] ),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(C[28]),
        .O(\mempcpy_scratch[31]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \mempcpy_scratch[31]_i_23 
       (.I0(\bytes_second_line_reg_n_0_[2] ),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(C[27]),
        .O(\mempcpy_scratch[31]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h02FD)) 
    \mempcpy_scratch[31]_i_24 
       (.I0(C[30]),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(\bytes_second_line_reg_n_0_[2] ),
        .I3(C[31]),
        .O(\mempcpy_scratch[31]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h02FD)) 
    \mempcpy_scratch[31]_i_25 
       (.I0(C[29]),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(\bytes_second_line_reg_n_0_[2] ),
        .I3(C[30]),
        .O(\mempcpy_scratch[31]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h02FD)) 
    \mempcpy_scratch[31]_i_26 
       (.I0(C[28]),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(\bytes_second_line_reg_n_0_[2] ),
        .I3(C[29]),
        .O(\mempcpy_scratch[31]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h02FD)) 
    \mempcpy_scratch[31]_i_27 
       (.I0(C[27]),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(\bytes_second_line_reg_n_0_[2] ),
        .I3(C[28]),
        .O(\mempcpy_scratch[31]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \mempcpy_scratch[31]_i_28 
       (.I0(\bram0b_reg[o][o_din][31]_i_31_n_7 ),
        .I1(\bram0b_reg[o][o_din][31]_i_31_n_6 ),
        .I2(\bram0b_reg[o][o_din][31]_i_42_n_5 ),
        .I3(\bram0b_reg[o][o_din][31]_i_42_n_4 ),
        .I4(\mempcpy_scratch[31]_i_53_n_0 ),
        .O(\mempcpy_scratch[31]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \mempcpy_scratch[31]_i_29 
       (.I0(\bram0b_reg[o][o_din][31]_i_41_n_7 ),
        .I1(\bram0b_reg[o][o_din][31]_i_41_n_6 ),
        .I2(\bram0b_reg[o][o_din][31]_i_5_n_5 ),
        .I3(\bram0b_reg[o][o_din][31]_i_5_n_4 ),
        .I4(\mempcpy_scratch[31]_i_54_n_0 ),
        .O(\mempcpy_scratch[31]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hBFBBBBBB37333333)) 
    \mempcpy_scratch[31]_i_3 
       (.I0(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .I2(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I3(i_mem0a_dout[31]),
        .I4(\bram0a[o][o_din][31]_i_10_n_0 ),
        .I5(\mempcpy_scratch[31]_i_7_n_0 ),
        .O(\mempcpy_scratch[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \mempcpy_scratch[31]_i_30 
       (.I0(\bram0b_reg[o][o_din][31]_i_13_n_7 ),
        .I1(\bram0b_reg[o][o_din][31]_i_13_n_6 ),
        .I2(\bram0b_reg[o][o_din][31]_i_14_n_5 ),
        .I3(\bram0b_reg[o][o_din][31]_i_14_n_4 ),
        .I4(\mempcpy_scratch[31]_i_55_n_0 ),
        .O(\mempcpy_scratch[31]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[31]_i_31 
       (.I0(\bytes_second_line_reg_n_0_[1] ),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[31]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \mempcpy_scratch[31]_i_32 
       (.I0(\bytes_second_line_reg_n_0_[2] ),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[31]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mempcpy_scratch[31]_i_33 
       (.I0(\bytes_second_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .O(\mempcpy_scratch[31]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \mempcpy_scratch[31]_i_36 
       (.I0(C[18]),
        .I1(C[17]),
        .I2(C[20]),
        .I3(C[19]),
        .O(\mempcpy_scratch[31]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \mempcpy_scratch[31]_i_38 
       (.I0(C[10]),
        .I1(C[9]),
        .I2(C[12]),
        .I3(C[11]),
        .O(\mempcpy_scratch[31]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \mempcpy_scratch[31]_i_39 
       (.I0(C[26]),
        .I1(C[25]),
        .I2(C[28]),
        .I3(C[27]),
        .O(\mempcpy_scratch[31]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h0000FBFFFBFFFBFF)) 
    \mempcpy_scratch[31]_i_4 
       (.I0(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I1(\bram0b[o][o_din][31]_i_7_n_0 ),
        .I2(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I3(i_mem0b_dout[31]),
        .I4(\mempcpy_scratch[31]_i_9_n_0 ),
        .I5(\mempcpy_scratch[31]_i_10_n_0 ),
        .O(\mempcpy_scratch[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \mempcpy_scratch[31]_i_40 
       (.I0(C[22]),
        .I1(C[21]),
        .I2(C[24]),
        .I3(C[23]),
        .O(\mempcpy_scratch[31]_i_40_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \mempcpy_scratch[31]_i_41 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[31]_i_41_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \mempcpy_scratch[31]_i_42 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[31]_i_42_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \mempcpy_scratch[31]_i_43 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[31]_i_43_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \mempcpy_scratch[31]_i_44 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[31]_i_44_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \mempcpy_scratch[31]_i_45 
       (.I0(\bytes_second_line_reg_n_0_[2] ),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(C[26]),
        .O(\mempcpy_scratch[31]_i_45_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \mempcpy_scratch[31]_i_46 
       (.I0(\bytes_second_line_reg_n_0_[2] ),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(C[25]),
        .O(\mempcpy_scratch[31]_i_46_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \mempcpy_scratch[31]_i_47 
       (.I0(\bytes_second_line_reg_n_0_[2] ),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(C[24]),
        .O(\mempcpy_scratch[31]_i_47_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \mempcpy_scratch[31]_i_48 
       (.I0(\bytes_second_line_reg_n_0_[2] ),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(C[23]),
        .O(\mempcpy_scratch[31]_i_48_n_0 ));
  LUT4 #(
    .INIT(16'h02FD)) 
    \mempcpy_scratch[31]_i_49 
       (.I0(C[26]),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(\bytes_second_line_reg_n_0_[2] ),
        .I3(C[27]),
        .O(\mempcpy_scratch[31]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h1111111111111110)) 
    \mempcpy_scratch[31]_i_5 
       (.I0(mempcpy_scratch30_out[31]),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .I2(C[4]),
        .I3(\mempcpy_scratch[31]_i_12_n_0 ),
        .I4(\mempcpy_scratch[31]_i_13_n_0 ),
        .I5(\mempcpy_scratch[31]_i_14_n_0 ),
        .O(\mempcpy_scratch[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h02FD)) 
    \mempcpy_scratch[31]_i_50 
       (.I0(C[25]),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(\bytes_second_line_reg_n_0_[2] ),
        .I3(C[26]),
        .O(\mempcpy_scratch[31]_i_50_n_0 ));
  LUT4 #(
    .INIT(16'h02FD)) 
    \mempcpy_scratch[31]_i_51 
       (.I0(C[24]),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(\bytes_second_line_reg_n_0_[2] ),
        .I3(C[25]),
        .O(\mempcpy_scratch[31]_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h02FD)) 
    \mempcpy_scratch[31]_i_52 
       (.I0(C[23]),
        .I1(\bytes_second_line_reg_n_0_[1] ),
        .I2(\bytes_second_line_reg_n_0_[2] ),
        .I3(C[24]),
        .O(\mempcpy_scratch[31]_i_52_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \mempcpy_scratch[31]_i_53 
       (.I0(\bram0b_reg[o][o_din][31]_i_31_n_4 ),
        .I1(\bram0b_reg[o][o_din][31]_i_31_n_5 ),
        .I2(\bram0b_reg[o][o_din][31]_i_14_n_6 ),
        .I3(\bram0b_reg[o][o_din][31]_i_14_n_7 ),
        .O(\mempcpy_scratch[31]_i_53_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \mempcpy_scratch[31]_i_54 
       (.I0(\bram0b_reg[o][o_din][31]_i_42_n_6 ),
        .I1(\bram0b_reg[o][o_din][31]_i_42_n_7 ),
        .I2(\bram0b_reg[o][o_din][31]_i_41_n_4 ),
        .I3(\bram0b_reg[o][o_din][31]_i_41_n_5 ),
        .O(\mempcpy_scratch[31]_i_54_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \mempcpy_scratch[31]_i_55 
       (.I0(\bram0b_reg[o][o_din][31]_i_13_n_4 ),
        .I1(\bram0b_reg[o][o_din][31]_i_13_n_5 ),
        .I2(\bram0b_reg[o][o_din][15]_i_6_n_6 ),
        .I3(\bram0b_reg[o][o_din][15]_i_6_n_7 ),
        .O(\mempcpy_scratch[31]_i_55_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[31]_i_56 
       (.I0(\bytes_second_line_reg_n_0_[1] ),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[31]_i_56_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[31]_i_57 
       (.I0(\bytes_second_line_reg_n_0_[1] ),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[31]_i_57_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[31]_i_58 
       (.I0(\bytes_second_line_reg_n_0_[1] ),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[31]_i_58_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[31]_i_59 
       (.I0(\bytes_second_line_reg_n_0_[1] ),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[31]_i_59_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[31]_i_60 
       (.I0(\bytes_second_line_reg_n_0_[1] ),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[31]_i_60_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[31]_i_61 
       (.I0(\bytes_second_line_reg_n_0_[1] ),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[31]_i_61_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[31]_i_62 
       (.I0(\bytes_second_line_reg_n_0_[1] ),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[31]_i_62_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[31]_i_63 
       (.I0(\bytes_second_line_reg_n_0_[1] ),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[31]_i_63_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[31]_i_64 
       (.I0(\bytes_second_line_reg_n_0_[1] ),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[31]_i_64_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[31]_i_65 
       (.I0(\bytes_second_line_reg_n_0_[1] ),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[31]_i_65_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[31]_i_66 
       (.I0(\bytes_second_line_reg_n_0_[1] ),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[31]_i_66_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \mempcpy_scratch[31]_i_67 
       (.I0(\bytes_second_line_reg_n_0_[1] ),
        .I1(\bytes_second_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[31]_i_67_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \mempcpy_scratch[31]_i_7 
       (.I0(i_mem0a_dout[31]),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(i_mem0a_dout[15]),
        .I3(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[31]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h88C0)) 
    \mempcpy_scratch[31]_i_9 
       (.I0(i_mem0b_dout[15]),
        .I1(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I2(i_mem0b_dout[31]),
        .I3(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .O(\mempcpy_scratch[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00003F00)) 
    \mempcpy_scratch[32]_i_1 
       (.I0(i_mem0b_dout[24]),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .I2(\bytes_first_line_reg_n_0_[1] ),
        .I3(mempcpy_scratch[32]),
        .I4(\mempcpy_scratch[47]_i_4_n_0 ),
        .I5(\mempcpy_scratch[39]_i_3_n_0 ),
        .O(\mempcpy_scratch[32]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00003F00)) 
    \mempcpy_scratch[33]_i_1 
       (.I0(i_mem0b_dout[25]),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .I2(\bytes_first_line_reg_n_0_[1] ),
        .I3(mempcpy_scratch[33]),
        .I4(\mempcpy_scratch[47]_i_4_n_0 ),
        .I5(\mempcpy_scratch[39]_i_3_n_0 ),
        .O(\mempcpy_scratch[33]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00003F00)) 
    \mempcpy_scratch[34]_i_1 
       (.I0(i_mem0b_dout[26]),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .I2(\bytes_first_line_reg_n_0_[1] ),
        .I3(mempcpy_scratch[34]),
        .I4(\mempcpy_scratch[47]_i_4_n_0 ),
        .I5(\mempcpy_scratch[39]_i_3_n_0 ),
        .O(\mempcpy_scratch[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00003F00)) 
    \mempcpy_scratch[35]_i_1 
       (.I0(i_mem0b_dout[27]),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .I2(\bytes_first_line_reg_n_0_[1] ),
        .I3(mempcpy_scratch[35]),
        .I4(\mempcpy_scratch[47]_i_4_n_0 ),
        .I5(\mempcpy_scratch[39]_i_3_n_0 ),
        .O(\mempcpy_scratch[35]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00003F00)) 
    \mempcpy_scratch[36]_i_1 
       (.I0(i_mem0b_dout[28]),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .I2(\bytes_first_line_reg_n_0_[1] ),
        .I3(mempcpy_scratch[36]),
        .I4(\mempcpy_scratch[47]_i_4_n_0 ),
        .I5(\mempcpy_scratch[39]_i_3_n_0 ),
        .O(\mempcpy_scratch[36]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00003F00)) 
    \mempcpy_scratch[37]_i_1 
       (.I0(i_mem0b_dout[29]),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .I2(\bytes_first_line_reg_n_0_[1] ),
        .I3(mempcpy_scratch[37]),
        .I4(\mempcpy_scratch[47]_i_4_n_0 ),
        .I5(\mempcpy_scratch[39]_i_3_n_0 ),
        .O(\mempcpy_scratch[37]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00003F00)) 
    \mempcpy_scratch[38]_i_1 
       (.I0(i_mem0b_dout[30]),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .I2(\bytes_first_line_reg_n_0_[1] ),
        .I3(mempcpy_scratch[38]),
        .I4(\mempcpy_scratch[47]_i_4_n_0 ),
        .I5(\mempcpy_scratch[39]_i_3_n_0 ),
        .O(\mempcpy_scratch[38]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002200011000)) 
    \mempcpy_scratch[39]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\mempcpy_scratch[39]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00003F00)) 
    \mempcpy_scratch[39]_i_2 
       (.I0(i_mem0b_dout[31]),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .I2(\bytes_first_line_reg_n_0_[1] ),
        .I3(mempcpy_scratch[39]),
        .I4(\mempcpy_scratch[47]_i_4_n_0 ),
        .I5(\mempcpy_scratch[39]_i_3_n_0 ),
        .O(\mempcpy_scratch[39]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \mempcpy_scratch[39]_i_3 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .O(\mempcpy_scratch[39]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8B88BBBBBBBB)) 
    \mempcpy_scratch[3]_i_1 
       (.I0(i_mem0a_dout[27]),
        .I1(\mempcpy_scratch[39]_i_3_n_0 ),
        .I2(\mempcpy_scratch[3]_i_2_n_0 ),
        .I3(\mempcpy_scratch[3]_i_3_n_0 ),
        .I4(\mempcpy_scratch[3]_i_4_n_0 ),
        .I5(\mempcpy_scratch[3]_i_5_n_0 ),
        .O(\mempcpy_scratch[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hEEFE)) 
    \mempcpy_scratch[3]_i_2 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .I2(mempcpy_scratch30_out[31]),
        .I3(mempcpy_scratch[3]),
        .O(\mempcpy_scratch[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBAAABAAAAAAAAA)) 
    \mempcpy_scratch[3]_i_3 
       (.I0(mempcpy_scratch30_out[31]),
        .I1(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I2(i_mem0b_dout[3]),
        .I3(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I4(i_mem0b_dout[19]),
        .I5(\bram0b[o][o_din][31]_i_7_n_0 ),
        .O(\mempcpy_scratch[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \mempcpy_scratch[3]_i_4 
       (.I0(\mempcpy_scratch[31]_i_10_n_0 ),
        .I1(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I2(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I3(i_mem0b_dout[3]),
        .O(\mempcpy_scratch[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBF15BFFFBFBFBFFF)) 
    \mempcpy_scratch[3]_i_5 
       (.I0(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I1(\mempcpy_scratch[3]_i_6_n_0 ),
        .I2(\bram0a[o][o_din][31]_i_10_n_0 ),
        .I3(\bytes_first_line_reg_n_0_[1] ),
        .I4(\bytes_first_line_reg_n_0_[2] ),
        .I5(i_mem0a_dout[3]),
        .O(\mempcpy_scratch[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mempcpy_scratch[3]_i_6 
       (.I0(i_mem0a_dout[19]),
        .I1(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I2(i_mem0a_dout[3]),
        .O(\mempcpy_scratch[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h444F4444)) 
    \mempcpy_scratch[40]_i_1 
       (.I0(\mempcpy_scratch[47]_i_3_n_0 ),
        .I1(i_mem0a_dout[0]),
        .I2(\mempcpy_scratch[47]_i_4_n_0 ),
        .I3(\mempcpy_scratch[47]_i_5_n_0 ),
        .I4(mempcpy_scratch[40]),
        .O(\mempcpy_scratch[40]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h444F4444)) 
    \mempcpy_scratch[41]_i_1 
       (.I0(\mempcpy_scratch[47]_i_3_n_0 ),
        .I1(i_mem0a_dout[1]),
        .I2(\mempcpy_scratch[47]_i_4_n_0 ),
        .I3(\mempcpy_scratch[47]_i_5_n_0 ),
        .I4(mempcpy_scratch[41]),
        .O(\mempcpy_scratch[41]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h444F4444)) 
    \mempcpy_scratch[42]_i_1 
       (.I0(\mempcpy_scratch[47]_i_3_n_0 ),
        .I1(i_mem0a_dout[2]),
        .I2(\mempcpy_scratch[47]_i_4_n_0 ),
        .I3(\mempcpy_scratch[47]_i_5_n_0 ),
        .I4(mempcpy_scratch[42]),
        .O(\mempcpy_scratch[42]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h444F4444)) 
    \mempcpy_scratch[43]_i_1 
       (.I0(\mempcpy_scratch[47]_i_3_n_0 ),
        .I1(i_mem0a_dout[3]),
        .I2(\mempcpy_scratch[47]_i_4_n_0 ),
        .I3(\mempcpy_scratch[47]_i_5_n_0 ),
        .I4(mempcpy_scratch[43]),
        .O(\mempcpy_scratch[43]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h444F4444)) 
    \mempcpy_scratch[44]_i_1 
       (.I0(\mempcpy_scratch[47]_i_3_n_0 ),
        .I1(i_mem0a_dout[4]),
        .I2(\mempcpy_scratch[47]_i_4_n_0 ),
        .I3(\mempcpy_scratch[47]_i_5_n_0 ),
        .I4(mempcpy_scratch[44]),
        .O(\mempcpy_scratch[44]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h444F4444)) 
    \mempcpy_scratch[45]_i_1 
       (.I0(\mempcpy_scratch[47]_i_3_n_0 ),
        .I1(i_mem0a_dout[5]),
        .I2(\mempcpy_scratch[47]_i_4_n_0 ),
        .I3(\mempcpy_scratch[47]_i_5_n_0 ),
        .I4(mempcpy_scratch[45]),
        .O(\mempcpy_scratch[45]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h444F4444)) 
    \mempcpy_scratch[46]_i_1 
       (.I0(\mempcpy_scratch[47]_i_3_n_0 ),
        .I1(i_mem0a_dout[6]),
        .I2(\mempcpy_scratch[47]_i_4_n_0 ),
        .I3(\mempcpy_scratch[47]_i_5_n_0 ),
        .I4(mempcpy_scratch[46]),
        .O(\mempcpy_scratch[46]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0021000001000020)) 
    \mempcpy_scratch[47]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\mempcpy_scratch[47]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h444F4444)) 
    \mempcpy_scratch[47]_i_2 
       (.I0(\mempcpy_scratch[47]_i_3_n_0 ),
        .I1(i_mem0a_dout[7]),
        .I2(\mempcpy_scratch[47]_i_4_n_0 ),
        .I3(\mempcpy_scratch[47]_i_5_n_0 ),
        .I4(mempcpy_scratch[47]),
        .O(\mempcpy_scratch[47]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \mempcpy_scratch[47]_i_3 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\mempcpy_scratch[47]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \mempcpy_scratch[47]_i_4 
       (.I0(\mempcpy_scratch[47]_i_6_n_0 ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .I2(\bytes_first_line_reg_n_0_[1] ),
        .I3(mempcpy_scratch30_out[31]),
        .O(\mempcpy_scratch[47]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \mempcpy_scratch[47]_i_5 
       (.I0(\bytes_first_line_reg_n_0_[2] ),
        .I1(\bytes_first_line_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\mempcpy_scratch[47]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \mempcpy_scratch[47]_i_6 
       (.I0(\mempcpy_scratch[31]_i_12_n_0 ),
        .I1(\mempcpy_scratch[31]_i_13_n_0 ),
        .I2(\mempcpy_scratch[47]_i_7_n_0 ),
        .I3(C[29]),
        .I4(C[30]),
        .I5(C[31]),
        .O(\mempcpy_scratch[47]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \mempcpy_scratch[47]_i_7 
       (.I0(C[23]),
        .I1(C[24]),
        .I2(C[21]),
        .I3(C[22]),
        .I4(\mempcpy_scratch[31]_i_39_n_0 ),
        .O(\mempcpy_scratch[47]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8B88BBBBBBBB)) 
    \mempcpy_scratch[4]_i_1 
       (.I0(i_mem0a_dout[28]),
        .I1(\mempcpy_scratch[39]_i_3_n_0 ),
        .I2(\mempcpy_scratch[4]_i_2_n_0 ),
        .I3(\mempcpy_scratch[4]_i_3_n_0 ),
        .I4(\mempcpy_scratch[4]_i_4_n_0 ),
        .I5(\mempcpy_scratch[4]_i_5_n_0 ),
        .O(\mempcpy_scratch[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hEEFE)) 
    \mempcpy_scratch[4]_i_2 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .I2(mempcpy_scratch30_out[31]),
        .I3(mempcpy_scratch[4]),
        .O(\mempcpy_scratch[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBAAABAAAAAAAAA)) 
    \mempcpy_scratch[4]_i_3 
       (.I0(mempcpy_scratch30_out[31]),
        .I1(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I2(i_mem0b_dout[4]),
        .I3(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I4(i_mem0b_dout[20]),
        .I5(\bram0b[o][o_din][31]_i_7_n_0 ),
        .O(\mempcpy_scratch[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \mempcpy_scratch[4]_i_4 
       (.I0(\mempcpy_scratch[31]_i_10_n_0 ),
        .I1(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I2(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I3(i_mem0b_dout[4]),
        .O(\mempcpy_scratch[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBF15BFFFBFBFBFFF)) 
    \mempcpy_scratch[4]_i_5 
       (.I0(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I1(\mempcpy_scratch[4]_i_6_n_0 ),
        .I2(\bram0a[o][o_din][31]_i_10_n_0 ),
        .I3(\bytes_first_line_reg_n_0_[1] ),
        .I4(\bytes_first_line_reg_n_0_[2] ),
        .I5(i_mem0a_dout[4]),
        .O(\mempcpy_scratch[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mempcpy_scratch[4]_i_6 
       (.I0(i_mem0a_dout[20]),
        .I1(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I2(i_mem0a_dout[4]),
        .O(\mempcpy_scratch[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8B88BBBBBBBB)) 
    \mempcpy_scratch[5]_i_1 
       (.I0(i_mem0a_dout[29]),
        .I1(\mempcpy_scratch[39]_i_3_n_0 ),
        .I2(\mempcpy_scratch[5]_i_2_n_0 ),
        .I3(\mempcpy_scratch[5]_i_3_n_0 ),
        .I4(\mempcpy_scratch[5]_i_4_n_0 ),
        .I5(\mempcpy_scratch[5]_i_5_n_0 ),
        .O(\mempcpy_scratch[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hEEFE)) 
    \mempcpy_scratch[5]_i_2 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .I2(mempcpy_scratch30_out[31]),
        .I3(mempcpy_scratch[5]),
        .O(\mempcpy_scratch[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBAAABAAAAAAAAA)) 
    \mempcpy_scratch[5]_i_3 
       (.I0(mempcpy_scratch30_out[31]),
        .I1(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I2(i_mem0b_dout[5]),
        .I3(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I4(i_mem0b_dout[21]),
        .I5(\bram0b[o][o_din][31]_i_7_n_0 ),
        .O(\mempcpy_scratch[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \mempcpy_scratch[5]_i_4 
       (.I0(\mempcpy_scratch[31]_i_10_n_0 ),
        .I1(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I2(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I3(i_mem0b_dout[5]),
        .O(\mempcpy_scratch[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBF15BFFFBFBFBFFF)) 
    \mempcpy_scratch[5]_i_5 
       (.I0(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I1(\mempcpy_scratch[5]_i_6_n_0 ),
        .I2(\bram0a[o][o_din][31]_i_10_n_0 ),
        .I3(\bytes_first_line_reg_n_0_[1] ),
        .I4(\bytes_first_line_reg_n_0_[2] ),
        .I5(i_mem0a_dout[5]),
        .O(\mempcpy_scratch[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mempcpy_scratch[5]_i_6 
       (.I0(i_mem0a_dout[21]),
        .I1(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I2(i_mem0a_dout[5]),
        .O(\mempcpy_scratch[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8B88BBBBBBBB)) 
    \mempcpy_scratch[6]_i_1 
       (.I0(i_mem0a_dout[30]),
        .I1(\mempcpy_scratch[39]_i_3_n_0 ),
        .I2(\mempcpy_scratch[6]_i_2_n_0 ),
        .I3(\mempcpy_scratch[6]_i_3_n_0 ),
        .I4(\mempcpy_scratch[6]_i_4_n_0 ),
        .I5(\mempcpy_scratch[6]_i_5_n_0 ),
        .O(\mempcpy_scratch[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hEEFE)) 
    \mempcpy_scratch[6]_i_2 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .I2(mempcpy_scratch30_out[31]),
        .I3(mempcpy_scratch[6]),
        .O(\mempcpy_scratch[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBAAABAAAAAAAAA)) 
    \mempcpy_scratch[6]_i_3 
       (.I0(mempcpy_scratch30_out[31]),
        .I1(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I2(i_mem0b_dout[6]),
        .I3(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I4(i_mem0b_dout[22]),
        .I5(\bram0b[o][o_din][31]_i_7_n_0 ),
        .O(\mempcpy_scratch[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \mempcpy_scratch[6]_i_4 
       (.I0(\mempcpy_scratch[31]_i_10_n_0 ),
        .I1(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I2(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I3(i_mem0b_dout[6]),
        .O(\mempcpy_scratch[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBF15BFFFBFBFBFFF)) 
    \mempcpy_scratch[6]_i_5 
       (.I0(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I1(\mempcpy_scratch[6]_i_6_n_0 ),
        .I2(\bram0a[o][o_din][31]_i_10_n_0 ),
        .I3(\bytes_first_line_reg_n_0_[1] ),
        .I4(\bytes_first_line_reg_n_0_[2] ),
        .I5(i_mem0a_dout[6]),
        .O(\mempcpy_scratch[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mempcpy_scratch[6]_i_6 
       (.I0(i_mem0a_dout[22]),
        .I1(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I2(i_mem0a_dout[6]),
        .O(\mempcpy_scratch[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8B88BBBBBBBB)) 
    \mempcpy_scratch[7]_i_1 
       (.I0(i_mem0a_dout[31]),
        .I1(\mempcpy_scratch[39]_i_3_n_0 ),
        .I2(\mempcpy_scratch[7]_i_2_n_0 ),
        .I3(\mempcpy_scratch[7]_i_3_n_0 ),
        .I4(\mempcpy_scratch[7]_i_4_n_0 ),
        .I5(\mempcpy_scratch[7]_i_5_n_0 ),
        .O(\mempcpy_scratch[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hEEFE)) 
    \mempcpy_scratch[7]_i_2 
       (.I0(\bytes_first_line_reg_n_0_[1] ),
        .I1(\bytes_first_line_reg_n_0_[2] ),
        .I2(mempcpy_scratch30_out[31]),
        .I3(mempcpy_scratch[7]),
        .O(\mempcpy_scratch[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBAAABAAAAAAAAA)) 
    \mempcpy_scratch[7]_i_3 
       (.I0(mempcpy_scratch30_out[31]),
        .I1(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I2(i_mem0b_dout[7]),
        .I3(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I4(i_mem0b_dout[23]),
        .I5(\bram0b[o][o_din][31]_i_7_n_0 ),
        .O(\mempcpy_scratch[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \mempcpy_scratch[7]_i_4 
       (.I0(\mempcpy_scratch[31]_i_10_n_0 ),
        .I1(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I2(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I3(i_mem0b_dout[7]),
        .O(\mempcpy_scratch[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBF15BFFFBFBFBFFF)) 
    \mempcpy_scratch[7]_i_5 
       (.I0(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I1(\mempcpy_scratch[7]_i_6_n_0 ),
        .I2(\bram0a[o][o_din][31]_i_10_n_0 ),
        .I3(\bytes_first_line_reg_n_0_[1] ),
        .I4(\bytes_first_line_reg_n_0_[2] ),
        .I5(i_mem0a_dout[7]),
        .O(\mempcpy_scratch[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mempcpy_scratch[7]_i_6 
       (.I0(i_mem0a_dout[23]),
        .I1(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I2(i_mem0a_dout[7]),
        .O(\mempcpy_scratch[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCECCCFCFCFCDCFCF)) 
    \mempcpy_scratch[8]_i_1 
       (.I0(mempcpy_scratch30_out[31]),
        .I1(\mempcpy_scratch[8]_i_2_n_0 ),
        .I2(\mempcpy_scratch[8]_i_3_n_0 ),
        .I3(mempcpy_scratch[8]),
        .I4(\mempcpy_scratch[15]_i_5_n_0 ),
        .I5(\mempcpy_scratch[8]_i_4_n_0 ),
        .O(\mempcpy_scratch[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h2A08)) 
    \mempcpy_scratch[8]_i_2 
       (.I0(i_mem0b_dout[0]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\mempcpy_scratch[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBBBB)) 
    \mempcpy_scratch[8]_i_3 
       (.I0(\mempcpy_scratch[39]_i_3_n_0 ),
        .I1(\mempcpy_scratch[8]_i_5_n_0 ),
        .I2(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I3(\bram0a[o][o_din][31]_i_10_n_0 ),
        .I4(\mempcpy_scratch[8]_i_6_n_0 ),
        .O(\mempcpy_scratch[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF3F351F3F3F3F3F3)) 
    \mempcpy_scratch[8]_i_4 
       (.I0(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I1(\bram0b[o][o_din][31]_i_7_n_0 ),
        .I2(\mempcpy_scratch[8]_i_7_n_0 ),
        .I3(i_mem0b_dout[8]),
        .I4(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I5(\mempcpy_scratch[31]_i_10_n_0 ),
        .O(\mempcpy_scratch[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h00D5)) 
    \mempcpy_scratch[8]_i_5 
       (.I0(\bytes_first_line_reg_n_0_[2] ),
        .I1(i_mem0a_dout[8]),
        .I2(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I3(\bytes_first_line_reg_n_0_[1] ),
        .O(\mempcpy_scratch[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mempcpy_scratch[8]_i_6 
       (.I0(i_mem0a_dout[24]),
        .I1(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I2(i_mem0a_dout[8]),
        .O(\mempcpy_scratch[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'hABFB)) 
    \mempcpy_scratch[8]_i_7 
       (.I0(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I1(i_mem0b_dout[8]),
        .I2(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I3(i_mem0b_dout[24]),
        .O(\mempcpy_scratch[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCFCFCFCFCDCDCCCD)) 
    \mempcpy_scratch[9]_i_1 
       (.I0(mempcpy_scratch30_out[31]),
        .I1(\mempcpy_scratch[9]_i_2_n_0 ),
        .I2(\mempcpy_scratch[9]_i_3_n_0 ),
        .I3(\mempcpy_scratch[9]_i_4_n_0 ),
        .I4(\mempcpy_scratch[9]_i_5_n_0 ),
        .I5(\mempcpy_scratch[9]_i_6_n_0 ),
        .O(\mempcpy_scratch[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h2A08)) 
    \mempcpy_scratch[9]_i_2 
       (.I0(i_mem0b_dout[1]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\mempcpy_scratch[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBBBB)) 
    \mempcpy_scratch[9]_i_3 
       (.I0(\mempcpy_scratch[39]_i_3_n_0 ),
        .I1(\mempcpy_scratch[9]_i_7_n_0 ),
        .I2(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I3(\bram0a[o][o_din][31]_i_10_n_0 ),
        .I4(\mempcpy_scratch[9]_i_8_n_0 ),
        .O(\mempcpy_scratch[9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBBBFFFBF)) 
    \mempcpy_scratch[9]_i_4 
       (.I0(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I1(\bram0b[o][o_din][31]_i_7_n_0 ),
        .I2(i_mem0b_dout[9]),
        .I3(\bram0b_reg[o][o_din][31]_i_8_n_7 ),
        .I4(i_mem0b_dout[25]),
        .O(\mempcpy_scratch[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \mempcpy_scratch[9]_i_5 
       (.I0(\mempcpy_scratch[31]_i_10_n_0 ),
        .I1(\mempcpy_scratch_reg[31]_i_8_n_4 ),
        .I2(\bram0b_reg[o][o_din][31]_i_5_n_6 ),
        .I3(i_mem0b_dout[9]),
        .O(\mempcpy_scratch[9]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \mempcpy_scratch[9]_i_6 
       (.I0(mempcpy_scratch30_out[31]),
        .I1(mempcpy_scratch[9]),
        .I2(\bytes_first_line_reg_n_0_[1] ),
        .I3(\bytes_first_line_reg_n_0_[2] ),
        .O(\mempcpy_scratch[9]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h00D5)) 
    \mempcpy_scratch[9]_i_7 
       (.I0(\bytes_first_line_reg_n_0_[2] ),
        .I1(i_mem0a_dout[9]),
        .I2(\mempcpy_scratch_reg[31]_i_6_n_4 ),
        .I3(\bytes_first_line_reg_n_0_[1] ),
        .O(\mempcpy_scratch[9]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mempcpy_scratch[9]_i_8 
       (.I0(i_mem0a_dout[25]),
        .I1(\bram0a_reg[o][o_din][31]_i_11_n_7 ),
        .I2(i_mem0a_dout[9]),
        .O(\mempcpy_scratch[9]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[0] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[0]_i_1_n_0 ),
        .Q(mempcpy_scratch[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[10] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[10]_i_1_n_0 ),
        .Q(mempcpy_scratch[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[11] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[11]_i_1_n_0 ),
        .Q(mempcpy_scratch[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[12] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[12]_i_1_n_0 ),
        .Q(mempcpy_scratch[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[13] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[13]_i_1_n_0 ),
        .Q(mempcpy_scratch[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[14] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[14]_i_1_n_0 ),
        .Q(mempcpy_scratch[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[15] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[15]_i_1_n_0 ),
        .Q(mempcpy_scratch[15]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mempcpy_scratch_reg[15]_i_14 
       (.CI(\mempcpy_scratch_reg[15]_i_24_n_0 ),
        .CO({\mempcpy_scratch_reg[15]_i_14_n_0 ,\mempcpy_scratch_reg[15]_i_14_n_1 ,\mempcpy_scratch_reg[15]_i_14_n_2 ,\mempcpy_scratch_reg[15]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI(C[25:22]),
        .O(\NLW_mempcpy_scratch_reg[15]_i_14_O_UNCONNECTED [3:0]),
        .S({\mempcpy_scratch[15]_i_25_n_0 ,\mempcpy_scratch[15]_i_26_n_0 ,\mempcpy_scratch[15]_i_27_n_0 ,\mempcpy_scratch[15]_i_28_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mempcpy_scratch_reg[15]_i_15 
       (.CI(\bram0b_reg[o][o_din][31]_i_36_n_0 ),
        .CO({\mempcpy_scratch_reg[15]_i_15_n_0 ,\mempcpy_scratch_reg[15]_i_15_n_1 ,\mempcpy_scratch_reg[15]_i_15_n_2 ,\mempcpy_scratch_reg[15]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(C[26:23]),
        .S({\mempcpy_scratch[15]_i_29_n_0 ,\mempcpy_scratch[15]_i_30_n_0 ,\mempcpy_scratch[15]_i_31_n_0 ,\mempcpy_scratch[15]_i_32_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mempcpy_scratch_reg[15]_i_2 
       (.CI(\mempcpy_scratch_reg[15]_i_7_n_0 ),
        .CO({\NLW_mempcpy_scratch_reg[15]_i_2_CO_UNCONNECTED [3:1],\mempcpy_scratch_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,C[30]}),
        .O({\NLW_mempcpy_scratch_reg[15]_i_2_O_UNCONNECTED [3:2],mempcpy_scratch30_out}),
        .S({1'b0,1'b0,\mempcpy_scratch[15]_i_9_n_0 ,\mempcpy_scratch[15]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mempcpy_scratch_reg[15]_i_24 
       (.CI(\mempcpy_scratch_reg[15]_i_33_n_0 ),
        .CO({\mempcpy_scratch_reg[15]_i_24_n_0 ,\mempcpy_scratch_reg[15]_i_24_n_1 ,\mempcpy_scratch_reg[15]_i_24_n_2 ,\mempcpy_scratch_reg[15]_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI(C[21:18]),
        .O(\NLW_mempcpy_scratch_reg[15]_i_24_O_UNCONNECTED [3:0]),
        .S({\mempcpy_scratch[15]_i_34_n_0 ,\mempcpy_scratch[15]_i_35_n_0 ,\mempcpy_scratch[15]_i_36_n_0 ,\mempcpy_scratch[15]_i_37_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mempcpy_scratch_reg[15]_i_33 
       (.CI(\mempcpy_scratch_reg[15]_i_38_n_0 ),
        .CO({\mempcpy_scratch_reg[15]_i_33_n_0 ,\mempcpy_scratch_reg[15]_i_33_n_1 ,\mempcpy_scratch_reg[15]_i_33_n_2 ,\mempcpy_scratch_reg[15]_i_33_n_3 }),
        .CYINIT(1'b0),
        .DI(C[17:14]),
        .O(\NLW_mempcpy_scratch_reg[15]_i_33_O_UNCONNECTED [3:0]),
        .S({\mempcpy_scratch[15]_i_39_n_0 ,\mempcpy_scratch[15]_i_40_n_0 ,\mempcpy_scratch[15]_i_41_n_0 ,\mempcpy_scratch[15]_i_42_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mempcpy_scratch_reg[15]_i_38 
       (.CI(\mempcpy_scratch_reg[15]_i_43_n_0 ),
        .CO({\mempcpy_scratch_reg[15]_i_38_n_0 ,\mempcpy_scratch_reg[15]_i_38_n_1 ,\mempcpy_scratch_reg[15]_i_38_n_2 ,\mempcpy_scratch_reg[15]_i_38_n_3 }),
        .CYINIT(1'b0),
        .DI(C[13:10]),
        .O(\NLW_mempcpy_scratch_reg[15]_i_38_O_UNCONNECTED [3:0]),
        .S({\mempcpy_scratch[15]_i_44_n_0 ,\mempcpy_scratch[15]_i_45_n_0 ,\mempcpy_scratch[15]_i_46_n_0 ,\mempcpy_scratch[15]_i_47_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mempcpy_scratch_reg[15]_i_43 
       (.CI(\mempcpy_scratch_reg[15]_i_48_n_0 ),
        .CO({\mempcpy_scratch_reg[15]_i_43_n_0 ,\mempcpy_scratch_reg[15]_i_43_n_1 ,\mempcpy_scratch_reg[15]_i_43_n_2 ,\mempcpy_scratch_reg[15]_i_43_n_3 }),
        .CYINIT(1'b0),
        .DI(C[9:6]),
        .O(\NLW_mempcpy_scratch_reg[15]_i_43_O_UNCONNECTED [3:0]),
        .S({\mempcpy_scratch[15]_i_49_n_0 ,\mempcpy_scratch[15]_i_50_n_0 ,\mempcpy_scratch[15]_i_51_n_0 ,\mempcpy_scratch[15]_i_52_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mempcpy_scratch_reg[15]_i_48 
       (.CI(1'b0),
        .CO({\mempcpy_scratch_reg[15]_i_48_n_0 ,\mempcpy_scratch_reg[15]_i_48_n_1 ,\mempcpy_scratch_reg[15]_i_48_n_2 ,\mempcpy_scratch_reg[15]_i_48_n_3 }),
        .CYINIT(1'b0),
        .DI({C[5:4],1'b1,1'b0}),
        .O(\NLW_mempcpy_scratch_reg[15]_i_48_O_UNCONNECTED [3:0]),
        .S({\mempcpy_scratch[15]_i_53_n_0 ,\mempcpy_scratch[15]_i_54_n_0 ,1'b1,1'b1}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mempcpy_scratch_reg[15]_i_7 
       (.CI(\mempcpy_scratch_reg[15]_i_14_n_0 ),
        .CO({\mempcpy_scratch_reg[15]_i_7_n_0 ,\mempcpy_scratch_reg[15]_i_7_n_1 ,\mempcpy_scratch_reg[15]_i_7_n_2 ,\mempcpy_scratch_reg[15]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI(C[29:26]),
        .O(\NLW_mempcpy_scratch_reg[15]_i_7_O_UNCONNECTED [3:0]),
        .S({\mempcpy_scratch[15]_i_16_n_0 ,\mempcpy_scratch[15]_i_17_n_0 ,\mempcpy_scratch[15]_i_18_n_0 ,\mempcpy_scratch[15]_i_19_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mempcpy_scratch_reg[15]_i_8 
       (.CI(\mempcpy_scratch_reg[15]_i_15_n_0 ),
        .CO({\mempcpy_scratch_reg[15]_i_8_n_0 ,\mempcpy_scratch_reg[15]_i_8_n_1 ,\mempcpy_scratch_reg[15]_i_8_n_2 ,\mempcpy_scratch_reg[15]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(C[30:27]),
        .S({\mempcpy_scratch[15]_i_20_n_0 ,\mempcpy_scratch[15]_i_21_n_0 ,\mempcpy_scratch[15]_i_22_n_0 ,\mempcpy_scratch[15]_i_23_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[16] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[16]_i_1_n_0 ),
        .Q(mempcpy_scratch[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[17] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[17]_i_1_n_0 ),
        .Q(mempcpy_scratch[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[18] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[18]_i_1_n_0 ),
        .Q(mempcpy_scratch[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[19] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[19]_i_1_n_0 ),
        .Q(mempcpy_scratch[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[1] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[1]_i_1_n_0 ),
        .Q(mempcpy_scratch[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[20] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[20]_i_1_n_0 ),
        .Q(mempcpy_scratch[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[21] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[21]_i_1_n_0 ),
        .Q(mempcpy_scratch[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[22] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[22]_i_1_n_0 ),
        .Q(mempcpy_scratch[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[23] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[23]_i_1_n_0 ),
        .Q(mempcpy_scratch[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[24] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[24]_i_1_n_0 ),
        .Q(mempcpy_scratch[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[25] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[25]_i_1_n_0 ),
        .Q(mempcpy_scratch[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[26] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[26]_i_1_n_0 ),
        .Q(mempcpy_scratch[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[27] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[27]_i_1_n_0 ),
        .Q(mempcpy_scratch[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[28] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[28]_i_1_n_0 ),
        .Q(mempcpy_scratch[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[29] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[29]_i_1_n_0 ),
        .Q(mempcpy_scratch[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[2] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[2]_i_1_n_0 ),
        .Q(mempcpy_scratch[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[30] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[30]_i_1_n_0 ),
        .Q(mempcpy_scratch[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[31] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[31]_i_1_n_0 ),
        .Q(mempcpy_scratch[31]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mempcpy_scratch_reg[31]_i_11 
       (.CI(1'b0),
        .CO({\mempcpy_scratch_reg[31]_i_11_n_0 ,\mempcpy_scratch_reg[31]_i_11_n_1 ,\mempcpy_scratch_reg[31]_i_11_n_2 ,\mempcpy_scratch_reg[31]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\bytes_first_line_reg_n_0_[2] ,\bytes_first_line_reg_n_0_[1] ,1'b0}),
        .O({C[6:4],\NLW_mempcpy_scratch_reg[31]_i_11_O_UNCONNECTED [0]}),
        .S({\mempcpy_scratch[31]_i_31_n_0 ,\mempcpy_scratch[31]_i_32_n_0 ,\mempcpy_scratch[31]_i_33_n_0 ,1'b1}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mempcpy_scratch_reg[31]_i_15 
       (.CI(\bram0a_reg[o][o_din][31]_i_32_n_0 ),
        .CO({\mempcpy_scratch_reg[31]_i_15_n_0 ,\mempcpy_scratch_reg[31]_i_15_n_1 ,\mempcpy_scratch_reg[31]_i_15_n_2 ,\mempcpy_scratch_reg[31]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\mempcpy_scratch_reg[31]_i_15_n_4 ,\mempcpy_scratch_reg[31]_i_15_n_5 ,\mempcpy_scratch_reg[31]_i_15_n_6 ,\mempcpy_scratch_reg[31]_i_15_n_7 }),
        .S({\mempcpy_scratch[31]_i_41_n_0 ,\mempcpy_scratch[31]_i_42_n_0 ,\mempcpy_scratch[31]_i_43_n_0 ,\mempcpy_scratch[31]_i_44_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mempcpy_scratch_reg[31]_i_20 
       (.CI(\bram0b_reg[o][o_din][31]_i_60_n_0 ),
        .CO({\mempcpy_scratch_reg[31]_i_20_n_0 ,\mempcpy_scratch_reg[31]_i_20_n_1 ,\mempcpy_scratch_reg[31]_i_20_n_2 ,\mempcpy_scratch_reg[31]_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({\mempcpy_scratch[31]_i_45_n_0 ,\mempcpy_scratch[31]_i_46_n_0 ,\mempcpy_scratch[31]_i_47_n_0 ,\mempcpy_scratch[31]_i_48_n_0 }),
        .O({\mempcpy_scratch_reg[31]_i_20_n_4 ,\mempcpy_scratch_reg[31]_i_20_n_5 ,\mempcpy_scratch_reg[31]_i_20_n_6 ,\mempcpy_scratch_reg[31]_i_20_n_7 }),
        .S({\mempcpy_scratch[31]_i_49_n_0 ,\mempcpy_scratch[31]_i_50_n_0 ,\mempcpy_scratch[31]_i_51_n_0 ,\mempcpy_scratch[31]_i_52_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mempcpy_scratch_reg[31]_i_34 
       (.CI(\mempcpy_scratch_reg[31]_i_35_n_0 ),
        .CO({\mempcpy_scratch_reg[31]_i_34_n_0 ,\mempcpy_scratch_reg[31]_i_34_n_1 ,\mempcpy_scratch_reg[31]_i_34_n_2 ,\mempcpy_scratch_reg[31]_i_34_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(C[18:15]),
        .S({\mempcpy_scratch[31]_i_56_n_0 ,\mempcpy_scratch[31]_i_57_n_0 ,\mempcpy_scratch[31]_i_58_n_0 ,\mempcpy_scratch[31]_i_59_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mempcpy_scratch_reg[31]_i_35 
       (.CI(\mempcpy_scratch_reg[31]_i_37_n_0 ),
        .CO({\mempcpy_scratch_reg[31]_i_35_n_0 ,\mempcpy_scratch_reg[31]_i_35_n_1 ,\mempcpy_scratch_reg[31]_i_35_n_2 ,\mempcpy_scratch_reg[31]_i_35_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(C[14:11]),
        .S({\mempcpy_scratch[31]_i_60_n_0 ,\mempcpy_scratch[31]_i_61_n_0 ,\mempcpy_scratch[31]_i_62_n_0 ,\mempcpy_scratch[31]_i_63_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mempcpy_scratch_reg[31]_i_37 
       (.CI(\mempcpy_scratch_reg[31]_i_11_n_0 ),
        .CO({\mempcpy_scratch_reg[31]_i_37_n_0 ,\mempcpy_scratch_reg[31]_i_37_n_1 ,\mempcpy_scratch_reg[31]_i_37_n_2 ,\mempcpy_scratch_reg[31]_i_37_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(C[10:7]),
        .S({\mempcpy_scratch[31]_i_64_n_0 ,\mempcpy_scratch[31]_i_65_n_0 ,\mempcpy_scratch[31]_i_66_n_0 ,\mempcpy_scratch[31]_i_67_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mempcpy_scratch_reg[31]_i_6 
       (.CI(\mempcpy_scratch_reg[31]_i_15_n_0 ),
        .CO({\NLW_mempcpy_scratch_reg[31]_i_6_CO_UNCONNECTED [3],\mempcpy_scratch_reg[31]_i_6_n_1 ,\mempcpy_scratch_reg[31]_i_6_n_2 ,\mempcpy_scratch_reg[31]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\mempcpy_scratch_reg[31]_i_6_n_4 ,\mempcpy_scratch_reg[31]_i_6_n_5 ,\mempcpy_scratch_reg[31]_i_6_n_6 ,\mempcpy_scratch_reg[31]_i_6_n_7 }),
        .S({\mempcpy_scratch[31]_i_16_n_0 ,\mempcpy_scratch[31]_i_17_n_0 ,\mempcpy_scratch[31]_i_18_n_0 ,\mempcpy_scratch[31]_i_19_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mempcpy_scratch_reg[31]_i_8 
       (.CI(\mempcpy_scratch_reg[31]_i_20_n_0 ),
        .CO({\NLW_mempcpy_scratch_reg[31]_i_8_CO_UNCONNECTED [3],\mempcpy_scratch_reg[31]_i_8_n_1 ,\mempcpy_scratch_reg[31]_i_8_n_2 ,\mempcpy_scratch_reg[31]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\mempcpy_scratch[31]_i_21_n_0 ,\mempcpy_scratch[31]_i_22_n_0 ,\mempcpy_scratch[31]_i_23_n_0 }),
        .O({\mempcpy_scratch_reg[31]_i_8_n_4 ,\mempcpy_scratch_reg[31]_i_8_n_5 ,\mempcpy_scratch_reg[31]_i_8_n_6 ,\mempcpy_scratch_reg[31]_i_8_n_7 }),
        .S({\mempcpy_scratch[31]_i_24_n_0 ,\mempcpy_scratch[31]_i_25_n_0 ,\mempcpy_scratch[31]_i_26_n_0 ,\mempcpy_scratch[31]_i_27_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[32] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[32]_i_1_n_0 ),
        .Q(mempcpy_scratch[32]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[33] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[33]_i_1_n_0 ),
        .Q(mempcpy_scratch[33]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[34] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[34]_i_1_n_0 ),
        .Q(mempcpy_scratch[34]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[35] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[35]_i_1_n_0 ),
        .Q(mempcpy_scratch[35]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[36] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[36]_i_1_n_0 ),
        .Q(mempcpy_scratch[36]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[37] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[37]_i_1_n_0 ),
        .Q(mempcpy_scratch[37]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[38] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[38]_i_1_n_0 ),
        .Q(mempcpy_scratch[38]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[39] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[39]_i_2_n_0 ),
        .Q(mempcpy_scratch[39]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[3] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[3]_i_1_n_0 ),
        .Q(mempcpy_scratch[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[40] 
       (.C(clk),
        .CE(\mempcpy_scratch[47]_i_1_n_0 ),
        .D(\mempcpy_scratch[40]_i_1_n_0 ),
        .Q(mempcpy_scratch[40]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[41] 
       (.C(clk),
        .CE(\mempcpy_scratch[47]_i_1_n_0 ),
        .D(\mempcpy_scratch[41]_i_1_n_0 ),
        .Q(mempcpy_scratch[41]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[42] 
       (.C(clk),
        .CE(\mempcpy_scratch[47]_i_1_n_0 ),
        .D(\mempcpy_scratch[42]_i_1_n_0 ),
        .Q(mempcpy_scratch[42]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[43] 
       (.C(clk),
        .CE(\mempcpy_scratch[47]_i_1_n_0 ),
        .D(\mempcpy_scratch[43]_i_1_n_0 ),
        .Q(mempcpy_scratch[43]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[44] 
       (.C(clk),
        .CE(\mempcpy_scratch[47]_i_1_n_0 ),
        .D(\mempcpy_scratch[44]_i_1_n_0 ),
        .Q(mempcpy_scratch[44]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[45] 
       (.C(clk),
        .CE(\mempcpy_scratch[47]_i_1_n_0 ),
        .D(\mempcpy_scratch[45]_i_1_n_0 ),
        .Q(mempcpy_scratch[45]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[46] 
       (.C(clk),
        .CE(\mempcpy_scratch[47]_i_1_n_0 ),
        .D(\mempcpy_scratch[46]_i_1_n_0 ),
        .Q(mempcpy_scratch[46]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[47] 
       (.C(clk),
        .CE(\mempcpy_scratch[47]_i_1_n_0 ),
        .D(\mempcpy_scratch[47]_i_2_n_0 ),
        .Q(mempcpy_scratch[47]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[4] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[4]_i_1_n_0 ),
        .Q(mempcpy_scratch[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[5] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[5]_i_1_n_0 ),
        .Q(mempcpy_scratch[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[6] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[6]_i_1_n_0 ),
        .Q(mempcpy_scratch[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[7] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[7]_i_1_n_0 ),
        .Q(mempcpy_scratch[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[8] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[8]_i_1_n_0 ),
        .Q(mempcpy_scratch[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \mempcpy_scratch_reg[9] 
       (.C(clk),
        .CE(\mempcpy_scratch[39]_i_1_n_0 ),
        .D(\mempcpy_scratch[9]_i_1_n_0 ),
        .Q(mempcpy_scratch[9]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    o_control0a_i_1
       (.I0(i_enable),
        .I1(\state_reg_n_0_[5] ),
        .I2(o_control0a_i_2_n_0),
        .I3(o_control0a),
        .O(o_control0a_i_1_n_0));
  LUT6 #(
    .INIT(64'h4001400000000000)) 
    o_control0a_i_2
       (.I0(rst),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(i_enable),
        .I5(o_control0a_i_3_n_0),
        .O(o_control0a_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h01)) 
    o_control0a_i_3
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[4] ),
        .O(o_control0a_i_3_n_0));
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0a CTRL" *) 
  FDRE o_control0a_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_control0a_i_1_n_0),
        .Q(o_control0a),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    o_control0b_i_1
       (.I0(i_enable),
        .I1(\state_reg_n_0_[5] ),
        .I2(o_control0a_i_2_n_0),
        .I3(o_control0b),
        .O(o_control0b_i_1_n_0));
  (* equivalent_register_removal = "no" *) 
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil0b CTRL" *) 
  FDRE o_control0b_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_control0b_i_1_n_0),
        .Q(o_control0b),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    o_control1a_i_1
       (.I0(i_enable),
        .I1(\state_reg_n_0_[5] ),
        .I2(o_control0a_i_2_n_0),
        .I3(o_control1a),
        .O(o_control1a_i_1_n_0));
  (* equivalent_register_removal = "no" *) 
  (* x_interface_info = "MAYO:user:BRAM_BUS_custom_rtl:1.0 BRAM_Add_oil1a CTRL" *) 
  FDRE o_control1a_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_control1a_i_1_n_0),
        .Q(o_control1a),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h47FF4700)) 
    s_3_lines_i_1
       (.I0(s_3_lines_reg_i_2_n_2),
        .I1(\state_reg_n_0_[4] ),
        .I2(\bytes_first_line_reg[2]_i_3_n_2 ),
        .I3(s_3_lines),
        .I4(s_3_lines_reg_n_0),
        .O(s_3_lines_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    s_3_lines_i_10
       (.I0(\l_reg_n_0_[3] ),
        .I1(\l_reg_n_0_[2] ),
        .I2(\l_reg_n_0_[0] ),
        .O(s_3_lines_i_10_n_0));
  LUT4 #(
    .INIT(16'h0444)) 
    s_3_lines_i_12
       (.I0(\l_reg_n_0_[3] ),
        .I1(\l_reg_n_0_[2] ),
        .I2(\l_reg_n_0_[0] ),
        .I3(\l_reg_n_0_[1] ),
        .O(s_3_lines_i_12_n_0));
  LUT3 #(
    .INIT(8'h8F)) 
    s_3_lines_i_13
       (.I0(\l_reg_n_0_[1] ),
        .I1(\l_reg_n_0_[0] ),
        .I2(\l_reg_n_0_[2] ),
        .O(s_3_lines_i_13_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    s_3_lines_i_14
       (.I0(\s_inp_pos_in_line_reg[1]_i_3_n_4 ),
        .I1(\s_inp_pos_in_line_reg[1]_i_3_n_5 ),
        .O(s_3_lines_i_14_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    s_3_lines_i_15
       (.I0(s_3_lines_reg_i_6_n_0),
        .I1(s_3_lines_reg_i_6_n_5),
        .O(s_3_lines_i_15_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    s_3_lines_i_16
       (.I0(s_3_lines_reg_i_8_n_1),
        .I1(s_3_lines_reg_i_6_n_6),
        .O(s_3_lines_i_16_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    s_3_lines_i_17
       (.I0(s_3_lines_reg_i_8_n_6),
        .I1(s_3_lines_reg_i_8_n_7),
        .O(s_3_lines_i_17_n_0));
  LUT6 #(
    .INIT(64'h0000000008200000)) 
    s_3_lines_i_3
       (.I0(\state[2]_i_3_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[5] ),
        .O(s_3_lines));
  LUT1 #(
    .INIT(2'h1)) 
    s_3_lines_i_5
       (.I0(s_3_lines_reg_i_6_n_0),
        .O(s_3_lines_i_5_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    s_3_lines_i_9
       (.I0(\l_reg_n_0_[0] ),
        .I1(\l_reg_n_0_[2] ),
        .I2(\l_reg_n_0_[3] ),
        .I3(\l_reg_n_0_[1] ),
        .O(s_3_lines_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_3_lines_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_3_lines_i_1_n_0),
        .Q(s_3_lines_reg_n_0),
        .R(rst));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 s_3_lines_reg_i_11
       (.CI(1'b0),
        .CO({s_3_lines_reg_i_11_n_0,s_3_lines_reg_i_11_n_1,s_3_lines_reg_i_11_n_2,s_3_lines_reg_i_11_n_3}),
        .CYINIT(s_3_lines_i_14_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_s_3_lines_reg_i_11_O_UNCONNECTED[3:0]),
        .S({s_3_lines_reg_i_6_n_0,s_3_lines_i_15_n_0,s_3_lines_i_16_n_0,s_3_lines_i_17_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 s_3_lines_reg_i_2
       (.CI(s_3_lines_reg_i_4_n_0),
        .CO({NLW_s_3_lines_reg_i_2_CO_UNCONNECTED[3:2],s_3_lines_reg_i_2_n_2,s_3_lines_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s_3_lines_i_5_n_0,1'b0}),
        .O(NLW_s_3_lines_reg_i_2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,s_3_lines_reg_i_6_n_0,s_3_lines_reg_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 s_3_lines_reg_i_4
       (.CI(s_3_lines_reg_i_7_n_0),
        .CO({s_3_lines_reg_i_4_n_0,s_3_lines_reg_i_4_n_1,s_3_lines_reg_i_4_n_2,s_3_lines_reg_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_s_3_lines_reg_i_4_O_UNCONNECTED[3:0]),
        .S({s_3_lines_reg_i_6_n_0,s_3_lines_reg_i_6_n_0,s_3_lines_reg_i_6_n_0,s_3_lines_reg_i_6_n_0}));
  CARRY4 s_3_lines_reg_i_6
       (.CI(1'b0),
        .CO({s_3_lines_reg_i_6_n_0,NLW_s_3_lines_reg_i_6_CO_UNCONNECTED[2],s_3_lines_reg_i_6_n_2,s_3_lines_reg_i_6_n_3}),
        .CYINIT(s_3_lines_reg_i_8_n_1),
        .DI({1'b0,s_3_lines_i_9_n_0,s_3_lines_i_10_n_0,1'b0}),
        .O({NLW_s_3_lines_reg_i_6_O_UNCONNECTED[3],s_3_lines_reg_i_6_n_5,s_3_lines_reg_i_6_n_6,NLW_s_3_lines_reg_i_6_O_UNCONNECTED[0]}),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 s_3_lines_reg_i_7
       (.CI(s_3_lines_reg_i_11_n_0),
        .CO({s_3_lines_reg_i_7_n_0,s_3_lines_reg_i_7_n_1,s_3_lines_reg_i_7_n_2,s_3_lines_reg_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_s_3_lines_reg_i_7_O_UNCONNECTED[3:0]),
        .S({s_3_lines_reg_i_6_n_0,s_3_lines_reg_i_6_n_0,s_3_lines_reg_i_6_n_0,s_3_lines_reg_i_6_n_0}));
  CARRY4 s_3_lines_reg_i_8
       (.CI(\s_inp_pos_in_line_reg[1]_i_3_n_0 ),
        .CO({NLW_s_3_lines_reg_i_8_CO_UNCONNECTED[3],s_3_lines_reg_i_8_n_1,NLW_s_3_lines_reg_i_8_CO_UNCONNECTED[1],s_3_lines_reg_i_8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s_3_lines_i_12_n_0,s_3_lines_i_13_n_0}),
        .O({NLW_s_3_lines_reg_i_8_O_UNCONNECTED[3:2],s_3_lines_reg_i_8_n_6,s_3_lines_reg_i_8_n_7}),
        .S({1'b0,1'b1,1'b1,1'b1}));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B8B888)) 
    \s_inp_base_adr[10]_i_1 
       (.I0(\s_inp_base_adr_reg[10]_i_2_n_2 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\l_reg_n_0_[3] ),
        .I3(\l_reg_n_0_[0] ),
        .I4(\l_reg_n_0_[2] ),
        .I5(\l_reg_n_0_[1] ),
        .O(s_inp_base_adr[10]));
  LUT4 #(
    .INIT(16'hCC98)) 
    \s_inp_base_adr[10]_i_3 
       (.I0(\l_reg_n_0_[1] ),
        .I1(\l_reg_n_0_[2] ),
        .I2(\l_reg_n_0_[3] ),
        .I3(\l_reg_n_0_[0] ),
        .O(\s_inp_base_adr[10]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h37C8)) 
    \s_inp_base_adr[10]_i_4 
       (.I0(\l_reg_n_0_[1] ),
        .I1(\l_reg_n_0_[2] ),
        .I2(\l_reg_n_0_[0] ),
        .I3(\l_reg_n_0_[3] ),
        .O(\s_inp_base_adr[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \s_inp_base_adr[2]_i_1 
       (.I0(\s_inp_base_adr_reg[4]_i_2_n_6 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\l_reg_n_0_[1] ),
        .O(s_inp_base_adr[2]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_inp_base_adr[3]_i_1 
       (.I0(\s_inp_base_adr_reg[4]_i_2_n_5 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\l_reg_n_0_[2] ),
        .O(s_inp_base_adr[3]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \s_inp_base_adr[4]_i_1 
       (.I0(\s_inp_base_adr_reg[4]_i_2_n_4 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\l_reg_n_0_[2] ),
        .I3(\l_reg_n_0_[3] ),
        .O(s_inp_base_adr[4]));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'hBBBE)) 
    \s_inp_base_adr[4]_i_3 
       (.I0(\i_reg_n_0_[3] ),
        .I1(\l_reg_n_0_[2] ),
        .I2(\l_reg_n_0_[1] ),
        .I3(\l_reg_n_0_[0] ),
        .O(\s_inp_base_adr[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hBE)) 
    \s_inp_base_adr[4]_i_4 
       (.I0(\i_reg_n_0_[2] ),
        .I1(\l_reg_n_0_[1] ),
        .I2(\l_reg_n_0_[0] ),
        .O(\s_inp_base_adr[4]_i_4_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_inp_base_adr[4]_i_5 
       (.I0(\i_reg_n_0_[1] ),
        .I1(\l_reg_n_0_[0] ),
        .O(\s_inp_base_adr[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6666666999999996)) 
    \s_inp_base_adr[4]_i_6 
       (.I0(\s_inp_base_adr[4]_i_3_n_0 ),
        .I1(\l_reg_n_0_[3] ),
        .I2(\l_reg_n_0_[0] ),
        .I3(\l_reg_n_0_[2] ),
        .I4(\l_reg_n_0_[1] ),
        .I5(\i_reg_n_0_[4] ),
        .O(\s_inp_base_adr[4]_i_6_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h99966999)) 
    \s_inp_base_adr[4]_i_7 
       (.I0(\i_reg_n_0_[3] ),
        .I1(\l_reg_n_0_[2] ),
        .I2(\l_reg_n_0_[1] ),
        .I3(\l_reg_n_0_[0] ),
        .I4(\i_reg_n_0_[2] ),
        .O(\s_inp_base_adr[4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \s_inp_base_adr[4]_i_8 
       (.I0(\s_inp_base_adr[4]_i_5_n_0 ),
        .I1(\l_reg_n_0_[0] ),
        .I2(\l_reg_n_0_[1] ),
        .I3(\i_reg_n_0_[2] ),
        .O(\s_inp_base_adr[4]_i_8_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \s_inp_base_adr[4]_i_9 
       (.I0(\i_reg_n_0_[1] ),
        .I1(\l_reg_n_0_[0] ),
        .O(\s_inp_base_adr[4]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hBBB8)) 
    \s_inp_base_adr[5]_i_1 
       (.I0(\s_inp_base_adr_reg[8]_i_2_n_7 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\l_reg_n_0_[2] ),
        .I3(\l_reg_n_0_[3] ),
        .O(s_inp_base_adr[5]));
  LUT5 #(
    .INIT(32'h888BBBB8)) 
    \s_inp_base_adr[6]_i_1 
       (.I0(\s_inp_base_adr_reg[8]_i_2_n_6 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\l_reg_n_0_[2] ),
        .I3(\l_reg_n_0_[3] ),
        .I4(\l_reg_n_0_[0] ),
        .O(s_inp_base_adr[6]));
  LUT6 #(
    .INIT(64'hB88BB88BB88BB8B8)) 
    \s_inp_base_adr[7]_i_1 
       (.I0(\s_inp_base_adr_reg[8]_i_2_n_5 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\l_reg_n_0_[1] ),
        .I3(\l_reg_n_0_[0] ),
        .I4(\l_reg_n_0_[3] ),
        .I5(\l_reg_n_0_[2] ),
        .O(s_inp_base_adr[7]));
  LUT6 #(
    .INIT(64'hBB88BB88B88BB888)) 
    \s_inp_base_adr[8]_i_1 
       (.I0(\s_inp_base_adr_reg[8]_i_2_n_4 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\l_reg_n_0_[1] ),
        .I3(\l_reg_n_0_[2] ),
        .I4(\l_reg_n_0_[3] ),
        .I5(\l_reg_n_0_[0] ),
        .O(s_inp_base_adr[8]));
  LUT6 #(
    .INIT(64'h00AA02ABFF55FD54)) 
    \s_inp_base_adr[8]_i_10 
       (.I0(\i_reg_n_0_[4] ),
        .I1(\l_reg_n_0_[1] ),
        .I2(\l_reg_n_0_[0] ),
        .I3(\l_reg_n_0_[3] ),
        .I4(\l_reg_n_0_[2] ),
        .I5(\i_reg_n_0_[5] ),
        .O(\s_inp_base_adr[8]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF00E)) 
    \s_inp_base_adr[8]_i_3 
       (.I0(\l_reg_n_0_[2] ),
        .I1(\l_reg_n_0_[3] ),
        .I2(\l_reg_n_0_[0] ),
        .I3(\l_reg_n_0_[1] ),
        .O(\s_inp_base_adr[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0F0E)) 
    \s_inp_base_adr[8]_i_4 
       (.I0(\l_reg_n_0_[2] ),
        .I1(\l_reg_n_0_[3] ),
        .I2(\l_reg_n_0_[0] ),
        .I3(\l_reg_n_0_[1] ),
        .O(\s_inp_base_adr[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \s_inp_base_adr[8]_i_5 
       (.I0(\i_reg_n_0_[5] ),
        .I1(\l_reg_n_0_[2] ),
        .I2(\l_reg_n_0_[3] ),
        .I3(\l_reg_n_0_[0] ),
        .I4(\l_reg_n_0_[1] ),
        .O(\s_inp_base_adr[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h01FE0000)) 
    \s_inp_base_adr[8]_i_6 
       (.I0(\l_reg_n_0_[1] ),
        .I1(\l_reg_n_0_[2] ),
        .I2(\l_reg_n_0_[0] ),
        .I3(\l_reg_n_0_[3] ),
        .I4(\i_reg_n_0_[4] ),
        .O(\s_inp_base_adr[8]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h93)) 
    \s_inp_base_adr[8]_i_7 
       (.I0(\l_reg_n_0_[0] ),
        .I1(\l_reg_n_0_[2] ),
        .I2(\l_reg_n_0_[1] ),
        .O(\s_inp_base_adr[8]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_inp_base_adr[8]_i_8 
       (.I0(\l_reg_n_0_[1] ),
        .O(\s_inp_base_adr[8]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h5A5A5A5B)) 
    \s_inp_base_adr[8]_i_9 
       (.I0(\i_reg_n_0_[5] ),
        .I1(\l_reg_n_0_[1] ),
        .I2(\l_reg_n_0_[0] ),
        .I3(\l_reg_n_0_[3] ),
        .I4(\l_reg_n_0_[2] ),
        .O(\s_inp_base_adr[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000055575557)) 
    \s_inp_base_adr[9]_i_1 
       (.I0(\l_reg_n_0_[3] ),
        .I1(\l_reg_n_0_[0] ),
        .I2(\l_reg_n_0_[2] ),
        .I3(\l_reg_n_0_[1] ),
        .I4(\s_inp_base_adr_reg[10]_i_2_n_7 ),
        .I5(\state_reg_n_0_[3] ),
        .O(s_inp_base_adr[9]));
  FDRE #(
    .INIT(1'b0)) 
    \s_inp_base_adr_reg[10] 
       (.C(clk),
        .CE(\s_inp_pos_in_line[1]_i_1_n_0 ),
        .D(s_inp_base_adr[10]),
        .Q(\s_inp_base_adr_reg_n_0_[10] ),
        .R(rst));
  CARRY4 \s_inp_base_adr_reg[10]_i_2 
       (.CI(\s_inp_base_adr_reg[8]_i_2_n_0 ),
        .CO({\NLW_s_inp_base_adr_reg[10]_i_2_CO_UNCONNECTED [3:2],\s_inp_base_adr_reg[10]_i_2_n_2 ,\NLW_s_inp_base_adr_reg[10]_i_2_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\s_inp_base_adr[10]_i_3_n_0 }),
        .O({\NLW_s_inp_base_adr_reg[10]_i_2_O_UNCONNECTED [3:1],\s_inp_base_adr_reg[10]_i_2_n_7 }),
        .S({1'b0,1'b0,1'b1,\s_inp_base_adr[10]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_inp_base_adr_reg[11] 
       (.C(clk),
        .CE(\s_inp_pos_in_line[1]_i_1_n_0 ),
        .D(1'b1),
        .Q(\s_inp_base_adr_reg_n_0_[11] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_inp_base_adr_reg[2] 
       (.C(clk),
        .CE(\s_inp_pos_in_line[1]_i_1_n_0 ),
        .D(s_inp_base_adr[2]),
        .Q(\s_inp_base_adr_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_inp_base_adr_reg[3] 
       (.C(clk),
        .CE(\s_inp_pos_in_line[1]_i_1_n_0 ),
        .D(s_inp_base_adr[3]),
        .Q(\s_inp_base_adr_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_inp_base_adr_reg[4] 
       (.C(clk),
        .CE(\s_inp_pos_in_line[1]_i_1_n_0 ),
        .D(s_inp_base_adr[4]),
        .Q(\s_inp_base_adr_reg_n_0_[4] ),
        .R(rst));
  CARRY4 \s_inp_base_adr_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\s_inp_base_adr_reg[4]_i_2_n_0 ,\s_inp_base_adr_reg[4]_i_2_n_1 ,\s_inp_base_adr_reg[4]_i_2_n_2 ,\s_inp_base_adr_reg[4]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_inp_base_adr[4]_i_3_n_0 ,\s_inp_base_adr[4]_i_4_n_0 ,\s_inp_base_adr[4]_i_5_n_0 ,1'b0}),
        .O({\s_inp_base_adr_reg[4]_i_2_n_4 ,\s_inp_base_adr_reg[4]_i_2_n_5 ,\s_inp_base_adr_reg[4]_i_2_n_6 ,\NLW_s_inp_base_adr_reg[4]_i_2_O_UNCONNECTED [0]}),
        .S({\s_inp_base_adr[4]_i_6_n_0 ,\s_inp_base_adr[4]_i_7_n_0 ,\s_inp_base_adr[4]_i_8_n_0 ,\s_inp_base_adr[4]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_inp_base_adr_reg[5] 
       (.C(clk),
        .CE(\s_inp_pos_in_line[1]_i_1_n_0 ),
        .D(s_inp_base_adr[5]),
        .Q(\s_inp_base_adr_reg_n_0_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_inp_base_adr_reg[6] 
       (.C(clk),
        .CE(\s_inp_pos_in_line[1]_i_1_n_0 ),
        .D(s_inp_base_adr[6]),
        .Q(\s_inp_base_adr_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_inp_base_adr_reg[7] 
       (.C(clk),
        .CE(\s_inp_pos_in_line[1]_i_1_n_0 ),
        .D(s_inp_base_adr[7]),
        .Q(\s_inp_base_adr_reg_n_0_[7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_inp_base_adr_reg[8] 
       (.C(clk),
        .CE(\s_inp_pos_in_line[1]_i_1_n_0 ),
        .D(s_inp_base_adr[8]),
        .Q(\s_inp_base_adr_reg_n_0_[8] ),
        .R(rst));
  CARRY4 \s_inp_base_adr_reg[8]_i_2 
       (.CI(\s_inp_base_adr_reg[4]_i_2_n_0 ),
        .CO({\s_inp_base_adr_reg[8]_i_2_n_0 ,\s_inp_base_adr_reg[8]_i_2_n_1 ,\s_inp_base_adr_reg[8]_i_2_n_2 ,\s_inp_base_adr_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_inp_base_adr[8]_i_3_n_0 ,\s_inp_base_adr[8]_i_4_n_0 ,\s_inp_base_adr[8]_i_5_n_0 ,\s_inp_base_adr[8]_i_6_n_0 }),
        .O({\s_inp_base_adr_reg[8]_i_2_n_4 ,\s_inp_base_adr_reg[8]_i_2_n_5 ,\s_inp_base_adr_reg[8]_i_2_n_6 ,\s_inp_base_adr_reg[8]_i_2_n_7 }),
        .S({\s_inp_base_adr[8]_i_7_n_0 ,\s_inp_base_adr[8]_i_8_n_0 ,\s_inp_base_adr[8]_i_9_n_0 ,\s_inp_base_adr[8]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_inp_base_adr_reg[9] 
       (.C(clk),
        .CE(\s_inp_pos_in_line[1]_i_1_n_0 ),
        .D(s_inp_base_adr[9]),
        .Q(\s_inp_base_adr_reg_n_0_[9] ),
        .R(rst));
  LUT2 #(
    .INIT(4'h8)) 
    \s_inp_pos_in_line[0]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\i_reg_n_0_[0] ),
        .O(s_inp_pos_in_line[0]));
  LUT6 #(
    .INIT(64'h0804040000080000)) 
    \s_inp_pos_in_line[1]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\s_inp_pos_in_line[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h87B78784)) 
    \s_inp_pos_in_line[1]_i_2 
       (.I0(\i_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\l_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(data2),
        .O(s_inp_pos_in_line[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \s_inp_pos_in_line[1]_i_4 
       (.I0(\l_reg_n_0_[1] ),
        .O(\s_inp_pos_in_line[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \s_inp_pos_in_line[1]_i_5 
       (.I0(\l_reg_n_0_[0] ),
        .I1(\l_reg_n_0_[1] ),
        .O(\s_inp_pos_in_line[1]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \s_inp_pos_in_line[1]_i_6 
       (.I0(\l_reg_n_0_[0] ),
        .O(\s_inp_pos_in_line[1]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_inp_pos_in_line[1]_i_7 
       (.I0(\l_reg_n_0_[0] ),
        .O(\s_inp_pos_in_line[1]_i_7_n_0 ));
  FDRE \s_inp_pos_in_line_reg[0] 
       (.C(clk),
        .CE(\s_inp_pos_in_line[1]_i_1_n_0 ),
        .D(s_inp_pos_in_line[0]),
        .Q(\s_inp_pos_in_line_reg_n_0_[0] ),
        .R(rst));
  FDRE \s_inp_pos_in_line_reg[1] 
       (.C(clk),
        .CE(\s_inp_pos_in_line[1]_i_1_n_0 ),
        .D(s_inp_pos_in_line[1]),
        .Q(\s_inp_pos_in_line_reg_n_0_[1] ),
        .R(rst));
  CARRY4 \s_inp_pos_in_line_reg[1]_i_3 
       (.CI(1'b0),
        .CO({\s_inp_pos_in_line_reg[1]_i_3_n_0 ,\s_inp_pos_in_line_reg[1]_i_3_n_1 ,\s_inp_pos_in_line_reg[1]_i_3_n_2 ,\s_inp_pos_in_line_reg[1]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\l_reg_n_0_[1] ,\s_inp_pos_in_line[1]_i_4_n_0 ,\l_reg_n_0_[0] ,1'b0}),
        .O({\s_inp_pos_in_line_reg[1]_i_3_n_4 ,\s_inp_pos_in_line_reg[1]_i_3_n_5 ,data2,\NLW_s_inp_pos_in_line_reg[1]_i_3_O_UNCONNECTED [0]}),
        .S({\s_inp_pos_in_line[1]_i_5_n_0 ,\s_inp_pos_in_line[1]_i_6_n_0 ,\s_inp_pos_in_line[1]_i_7_n_0 ,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \s_oil_base_adr[11]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .O(\s_oil_base_adr[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_oil_base_adr[2]_i_1 
       (.I0(base_adr7[2]),
        .I1(\state_reg_n_0_[4] ),
        .I2(\l_reg_n_0_[1] ),
        .O(\s_oil_base_adr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h8BB8B88B)) 
    \s_oil_base_adr[3]_i_1 
       (.I0(base_adr7[3]),
        .I1(\state_reg_n_0_[4] ),
        .I2(\l_reg_n_0_[2] ),
        .I3(\l_reg_n_0_[1] ),
        .I4(\l_reg_n_0_[0] ),
        .O(\s_oil_base_adr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB88B8B8BB8B8B88B)) 
    \s_oil_base_adr[4]_i_1 
       (.I0(base_adr7[4]),
        .I1(\state_reg_n_0_[4] ),
        .I2(\l_reg_n_0_[3] ),
        .I3(\l_reg_n_0_[0] ),
        .I4(\l_reg_n_0_[1] ),
        .I5(\l_reg_n_0_[2] ),
        .O(\s_oil_base_adr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBB8B8B8B88)) 
    \s_oil_base_adr[5]_i_1 
       (.I0(base_adr7[5]),
        .I1(\state_reg_n_0_[4] ),
        .I2(\l_reg_n_0_[3] ),
        .I3(\l_reg_n_0_[1] ),
        .I4(\l_reg_n_0_[0] ),
        .I5(\l_reg_n_0_[2] ),
        .O(\s_oil_base_adr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888888888BBBBBBB)) 
    \s_oil_base_adr[6]_i_1 
       (.I0(base_adr7[6]),
        .I1(\state_reg_n_0_[4] ),
        .I2(\l_reg_n_0_[2] ),
        .I3(\l_reg_n_0_[1] ),
        .I4(\l_reg_n_0_[0] ),
        .I5(\l_reg_n_0_[3] ),
        .O(\s_oil_base_adr[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888888888BBBBBBB)) 
    \s_oil_base_adr[7]_i_1 
       (.I0(base_adr7[7]),
        .I1(\state_reg_n_0_[4] ),
        .I2(\l_reg_n_0_[2] ),
        .I3(\l_reg_n_0_[1] ),
        .I4(\l_reg_n_0_[0] ),
        .I5(\l_reg_n_0_[3] ),
        .O(\s_oil_base_adr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8B8B8B8B8B8)) 
    \s_oil_base_adr[8]_i_1 
       (.I0(base_adr7[8]),
        .I1(\state_reg_n_0_[4] ),
        .I2(\l_reg_n_0_[3] ),
        .I3(\l_reg_n_0_[0] ),
        .I4(\l_reg_n_0_[1] ),
        .I5(\l_reg_n_0_[2] ),
        .O(\s_oil_base_adr[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_oil_base_adr[9]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(base_adr7[9]),
        .O(\s_oil_base_adr[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_oil_base_adr_reg[10] 
       (.C(clk),
        .CE(s_oil_base_adr),
        .D(1'b1),
        .Q(\s_oil_base_adr_reg_n_0_[10] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_oil_base_adr_reg[11] 
       (.C(clk),
        .CE(s_oil_base_adr),
        .D(\s_oil_base_adr[11]_i_1_n_0 ),
        .Q(\s_oil_base_adr_reg_n_0_[11] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_oil_base_adr_reg[16] 
       (.C(clk),
        .CE(s_oil_base_adr),
        .D(\state_reg_n_0_[4] ),
        .Q(\s_oil_base_adr_reg_n_0_[16] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_oil_base_adr_reg[2] 
       (.C(clk),
        .CE(s_oil_base_adr),
        .D(\s_oil_base_adr[2]_i_1_n_0 ),
        .Q(\s_oil_base_adr_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_oil_base_adr_reg[3] 
       (.C(clk),
        .CE(s_oil_base_adr),
        .D(\s_oil_base_adr[3]_i_1_n_0 ),
        .Q(\s_oil_base_adr_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_oil_base_adr_reg[4] 
       (.C(clk),
        .CE(s_oil_base_adr),
        .D(\s_oil_base_adr[4]_i_1_n_0 ),
        .Q(\s_oil_base_adr_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_oil_base_adr_reg[5] 
       (.C(clk),
        .CE(s_oil_base_adr),
        .D(\s_oil_base_adr[5]_i_1_n_0 ),
        .Q(\s_oil_base_adr_reg_n_0_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_oil_base_adr_reg[6] 
       (.C(clk),
        .CE(s_oil_base_adr),
        .D(\s_oil_base_adr[6]_i_1_n_0 ),
        .Q(\s_oil_base_adr_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_oil_base_adr_reg[7] 
       (.C(clk),
        .CE(s_oil_base_adr),
        .D(\s_oil_base_adr[7]_i_1_n_0 ),
        .Q(\s_oil_base_adr_reg_n_0_[7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_oil_base_adr_reg[8] 
       (.C(clk),
        .CE(s_oil_base_adr),
        .D(\s_oil_base_adr[8]_i_1_n_0 ),
        .Q(\s_oil_base_adr_reg_n_0_[8] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_oil_base_adr_reg[9] 
       (.C(clk),
        .CE(s_oil_base_adr),
        .D(\s_oil_base_adr[9]_i_1_n_0 ),
        .Q(\s_oil_base_adr_reg_n_0_[9] ),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_oil_pos_in_line[0]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\i_reg_n_0_[0] ),
        .O(\s_oil_pos_in_line[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000ABFF0155)) 
    \s_oil_pos_in_line[1]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\l_reg_n_0_[1] ),
        .I2(\l_reg_n_0_[2] ),
        .I3(\l_reg_n_0_[3] ),
        .I4(\s_oil_pos_in_line[1]_i_3_n_0 ),
        .I5(\s_oil_pos_in_line[1]_i_4_n_0 ),
        .O(s_oil_base_adr));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_oil_pos_in_line[1]_i_2 
       (.I0(\i_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\bytes_first_line_reg[1]_i_2_n_6 ),
        .O(\s_oil_pos_in_line[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_oil_pos_in_line[1]_i_3 
       (.I0(\j_reg_n_0_[2] ),
        .I1(\j_reg_n_0_[1] ),
        .O(\s_oil_pos_in_line[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFF7FFFFFFFF)) 
    \s_oil_pos_in_line[1]_i_4 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\s_oil_pos_in_line[1]_i_4_n_0 ));
  FDRE \s_oil_pos_in_line_reg[0] 
       (.C(clk),
        .CE(s_oil_base_adr),
        .D(\s_oil_pos_in_line[0]_i_1_n_0 ),
        .Q(\s_oil_pos_in_line_reg_n_0_[0] ),
        .R(rst));
  FDRE \s_oil_pos_in_line_reg[1] 
       (.C(clk),
        .CE(s_oil_base_adr),
        .D(\s_oil_pos_in_line[1]_i_2_n_0 ),
        .Q(\s_oil_pos_in_line_reg_n_0_[1] ),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFFFFF0001C0C1)) 
    \state[0]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state[0]_i_2_n_0 ),
        .I4(\state[0]_i_3_n_0 ),
        .I5(\state[0]_i_4_n_0 ),
        .O(state[0]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hF00B)) 
    \state[0]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(i_enable),
        .I2(\state_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[4] ),
        .O(\state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \state[0]_i_3 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAEFA)) 
    \state[0]_i_4 
       (.I0(\state[0]_i_5_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[5] ),
        .O(\state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2000000020202222)) 
    \state[0]_i_5 
       (.I0(\state[0]_i_6_n_0 ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(s_3_lines_reg_n_0),
        .I5(\state_reg_n_0_[0] ),
        .O(\state[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[0]_i_6 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[3] ),
        .O(\state[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4540)) 
    \state[1]_i_1 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state[1]_i_2_n_0 ),
        .I2(\state[1]_i_3_n_0 ),
        .I3(\state[1]_i_4_n_0 ),
        .I4(\state[1]_i_5_n_0 ),
        .O(state[1]));
  LUT6 #(
    .INIT(64'h000F0F0FF8F0F0F0)) 
    \state[1]_i_2 
       (.I0(\j_reg_n_0_[1] ),
        .I1(\j_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFF4F0F4)) 
    \state[1]_i_3 
       (.I0(s_3_lines_reg_n_0),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h40404140)) 
    \state[1]_i_4 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(i_enable),
        .I4(\state_reg_n_0_[3] ),
        .O(\state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000030400)) 
    \state[1]_i_5 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7500)) 
    \state[2]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state[2]_i_3_n_0 ),
        .I2(\state[2]_i_4_n_0 ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state[2]_i_5_n_0 ),
        .I5(\state[2]_i_6_n_0 ),
        .O(state[2]));
  LUT6 #(
    .INIT(64'hFFFFFF00FFFFFFAB)) 
    \state[2]_i_2 
       (.I0(\state_reg_n_0_[4] ),
        .I1(s_3_lines_reg_n_0),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[2] ),
        .O(\state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0155AAAA)) 
    \state[2]_i_3 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\l_reg_n_0_[1] ),
        .I2(\l_reg_n_0_[2] ),
        .I3(\l_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[3] ),
        .O(\state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \state[2]_i_4 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .O(\state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000002201001022)) 
    \state[2]_i_5 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAA00A808AA00A80)) 
    \state[2]_i_6 
       (.I0(\state[2]_i_7_n_0 ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state[4]_i_7_n_0 ),
        .O(\state[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \state[2]_i_7 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\state[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5555551155555545)) 
    \state[3]_i_2 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(i_enable),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[4] ),
        .O(\state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000F55FFDF)) 
    \state[3]_i_3 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state[4]_i_7_n_0 ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[5] ),
        .O(\state[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h01882200)) 
    \state[3]_i_4 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF04404044)) 
    \state[4]_i_1 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state[4]_i_2_n_0 ),
        .O(state[4]));
  LUT6 #(
    .INIT(64'hAAAAEAAAEAAAEAAA)) 
    \state[4]_i_2 
       (.I0(\state[4]_i_3_n_0 ),
        .I1(\state[4]_i_4_n_0 ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state[4]_i_5_n_0 ),
        .I4(\state[4]_i_6_n_0 ),
        .I5(\state[4]_i_7_n_0 ),
        .O(\state[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \state[4]_i_3 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\state[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[4]_i_4 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[5] ),
        .O(\state[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \state[4]_i_5 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[3] ),
        .O(\state[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[4]_i_6 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\state[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \state[4]_i_7 
       (.I0(\i_reg_n_0_[3] ),
        .I1(\i_reg_n_0_[4] ),
        .I2(\i_reg_n_0_[5] ),
        .O(\state[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF21200000)) 
    \state[5]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state[5]_i_2_n_0 ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state[5]_i_3_n_0 ),
        .I5(\state[5]_i_4_n_0 ),
        .O(state[5]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \state[5]_i_2 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\state[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAAAA8880)) 
    \state[5]_i_3 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\l_reg_n_0_[3] ),
        .I2(\l_reg_n_0_[2] ),
        .I3(\l_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[4] ),
        .O(\state[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \state[5]_i_4 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\state[5]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(state[0]),
        .Q(\state_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(state[1]),
        .Q(\state_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(state[2]),
        .Q(\state_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(state[3]),
        .Q(\state_reg_n_0_[3] ),
        .R(rst));
  MUXF7 \state_reg[3]_i_1 
       (.I0(\state[3]_i_3_n_0 ),
        .I1(\state[3]_i_4_n_0 ),
        .O(state[3]),
        .S(\state[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(state[4]),
        .Q(\state_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(state[5]),
        .Q(\state_reg_n_0_[5] ),
        .R(rst));
  LUT6 #(
    .INIT(64'hB88BBBBBB88B8888)) 
    \t0[0]_i_1 
       (.I0(\t0_reg[3]_i_2_n_7 ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\t0_reg[2]_i_2_n_7 ),
        .I3(\t0[0]_i_2_n_0 ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\t0[0]_i_3_n_0 ),
        .O(t0[0]));
  LUT6 #(
    .INIT(64'h1555555555555555)) 
    \t0[0]_i_2 
       (.I0(\t0_reg[4]_i_5_n_6 ),
        .I1(\t0_reg[2]_i_2_n_7 ),
        .I2(\t0_reg[2]_i_2_n_6 ),
        .I3(\t0_reg[2]_i_2_n_4 ),
        .I4(\t0_reg[2]_i_2_n_5 ),
        .I5(\t0_reg[4]_i_5_n_7 ),
        .O(\t0[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \t0[0]_i_3 
       (.I0(i_mem0a_dout[0]),
        .I1(i_mem0a_dout[8]),
        .I2(i_mem0a_dout[16]),
        .I3(\s_inp_pos_in_line_reg_n_0_[1] ),
        .I4(\s_inp_pos_in_line_reg_n_0_[0] ),
        .I5(i_mem0a_dout[24]),
        .O(\t0[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \t0[10]_i_1 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\t0_reg[11]_i_2_n_5 ),
        .O(t0[10]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \t0[11]_i_1 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\t0_reg[11]_i_2_n_4 ),
        .O(t0[11]));
  LUT2 #(
    .INIT(4'h6)) 
    \t0[11]_i_3 
       (.I0(\t0_reg_n_0_[11] ),
        .I1(tmp[11]),
        .O(\t0[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \t0[11]_i_4 
       (.I0(\t0_reg_n_0_[10] ),
        .I1(tmp[10]),
        .O(\t0[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \t0[11]_i_5 
       (.I0(\t0_reg_n_0_[9] ),
        .I1(tmp[9]),
        .O(\t0[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \t0[11]_i_6 
       (.I0(\t0_reg_n_0_[8] ),
        .I1(tmp[8]),
        .O(\t0[11]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \t0[12]_i_1 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\t0_reg[15]_i_3_n_7 ),
        .O(t0[12]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \t0[13]_i_1 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\t0_reg[15]_i_3_n_6 ),
        .O(t0[13]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \t0[14]_i_1 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\t0_reg[15]_i_3_n_5 ),
        .O(t0[14]));
  LUT6 #(
    .INIT(64'h2000000200040000)) 
    \t0[15]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\t0[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \t0[15]_i_2 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\t0_reg[15]_i_3_n_4 ),
        .O(t0[15]));
  LUT2 #(
    .INIT(4'h6)) 
    \t0[15]_i_4 
       (.I0(tmp[15]),
        .I1(\t0_reg_n_0_[15] ),
        .O(\t0[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \t0[15]_i_5 
       (.I0(\t0_reg_n_0_[14] ),
        .I1(tmp[14]),
        .O(\t0[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \t0[15]_i_6 
       (.I0(\t0_reg_n_0_[13] ),
        .I1(tmp[13]),
        .O(\t0[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \t0[15]_i_7 
       (.I0(\t0_reg_n_0_[12] ),
        .I1(tmp[12]),
        .O(\t0[15]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \t0[1]_i_1 
       (.I0(\t0_reg[3]_i_2_n_6 ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\t0[1]_i_2_n_0 ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\t0[1]_i_3_n_0 ),
        .O(t0[1]));
  LUT6 #(
    .INIT(64'h3878787878787878)) 
    \t0[1]_i_2 
       (.I0(\t0_reg[4]_i_5_n_6 ),
        .I1(\t0_reg[2]_i_2_n_7 ),
        .I2(\t0_reg[2]_i_2_n_6 ),
        .I3(\t0_reg[2]_i_2_n_4 ),
        .I4(\t0_reg[2]_i_2_n_5 ),
        .I5(\t0_reg[4]_i_5_n_7 ),
        .O(\t0[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \t0[1]_i_3 
       (.I0(i_mem0a_dout[9]),
        .I1(i_mem0a_dout[1]),
        .I2(i_mem0a_dout[25]),
        .I3(\s_inp_pos_in_line_reg_n_0_[0] ),
        .I4(\s_inp_pos_in_line_reg_n_0_[1] ),
        .I5(i_mem0a_dout[17]),
        .O(\t0[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \t0[2]_i_1 
       (.I0(\t0_reg[3]_i_2_n_5 ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\t0_reg[2]_i_2_n_5 ),
        .I3(\t0[2]_i_3_n_0 ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\t0[2]_i_4_n_0 ),
        .O(t0[2]));
  LUT2 #(
    .INIT(4'hB)) 
    \t0[2]_i_11 
       (.I0(O),
        .I1(\t0_reg[10]_0 ),
        .O(\t0[2]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h66969969)) 
    \t0[2]_i_12 
       (.I0(\t0_reg[2]_i_19_n_6 ),
        .I1(\t0_reg[10]_0 ),
        .I2(\t0[2]_i_31 ),
        .I3(\t0_reg[13]_0 [0]),
        .I4(\t0_reg[13]_0 [1]),
        .O(\t0[2]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \t0[2]_i_22 
       (.I0(\t0_reg_n_0_[14] ),
        .I1(\t0_reg_n_0_[9] ),
        .I2(\t0_reg_n_0_[4] ),
        .O(\t0[2]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \t0[2]_i_23 
       (.I0(\t0_reg_n_0_[13] ),
        .I1(\t0_reg_n_0_[8] ),
        .I2(\t0_reg_n_0_[3] ),
        .O(\t0[2]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \t0[2]_i_24 
       (.I0(\t0_reg_n_0_[12] ),
        .I1(\t0_reg_n_0_[7] ),
        .I2(\t0_reg_n_0_[2] ),
        .O(\t0[2]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \t0[2]_i_25 
       (.I0(\t0_reg_n_0_[6] ),
        .I1(\t0_reg_n_0_[11] ),
        .I2(\t0_reg_n_0_[1] ),
        .O(\t0[2]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \t0[2]_i_26 
       (.I0(\t0[2]_i_22_n_0 ),
        .I1(\t0_reg_n_0_[15] ),
        .I2(\t0_reg_n_0_[10] ),
        .I3(\t0_reg_n_0_[5] ),
        .O(\t0[2]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \t0[2]_i_27 
       (.I0(\t0_reg_n_0_[14] ),
        .I1(\t0_reg_n_0_[9] ),
        .I2(\t0_reg_n_0_[4] ),
        .I3(\t0[2]_i_23_n_0 ),
        .O(\t0[2]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \t0[2]_i_28 
       (.I0(\t0_reg_n_0_[13] ),
        .I1(\t0_reg_n_0_[8] ),
        .I2(\t0_reg_n_0_[3] ),
        .I3(\t0[2]_i_24_n_0 ),
        .O(\t0[2]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \t0[2]_i_29 
       (.I0(\t0_reg_n_0_[12] ),
        .I1(\t0_reg_n_0_[7] ),
        .I2(\t0_reg_n_0_[2] ),
        .I3(\t0[2]_i_25_n_0 ),
        .O(\t0[2]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFF00000080000000)) 
    \t0[2]_i_3 
       (.I0(\t0_reg[4]_i_5_n_7 ),
        .I1(\t0_reg[2]_i_2_n_5 ),
        .I2(\t0_reg[2]_i_2_n_4 ),
        .I3(\t0_reg[2]_i_2_n_6 ),
        .I4(\t0_reg[2]_i_2_n_7 ),
        .I5(\t0_reg[4]_i_5_n_6 ),
        .O(\t0[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \t0[2]_i_32 
       (.I0(\t0_reg_n_0_[13] ),
        .I1(\t0_reg_n_0_[8] ),
        .O(\t0[2]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \t0[2]_i_33 
       (.I0(\t0_reg_n_0_[12] ),
        .I1(\t0_reg_n_0_[7] ),
        .O(\t0[2]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \t0[2]_i_34 
       (.I0(\t0_reg_n_0_[6] ),
        .I1(\t0_reg_n_0_[11] ),
        .O(\t0[2]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \t0[2]_i_35 
       (.I0(\t0_reg_n_0_[15] ),
        .I1(\t0_reg_n_0_[10] ),
        .I2(\t0_reg_n_0_[5] ),
        .O(\t0[2]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \t0[2]_i_36 
       (.I0(\t0_reg_n_0_[8] ),
        .I1(\t0_reg_n_0_[13] ),
        .I2(\t0_reg_n_0_[9] ),
        .I3(\t0_reg_n_0_[14] ),
        .O(\t0[2]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \t0[2]_i_37 
       (.I0(\t0_reg_n_0_[7] ),
        .I1(\t0_reg_n_0_[12] ),
        .I2(\t0_reg_n_0_[8] ),
        .I3(\t0_reg_n_0_[13] ),
        .O(\t0[2]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \t0[2]_i_38 
       (.I0(\t0_reg_n_0_[11] ),
        .I1(\t0_reg_n_0_[6] ),
        .I2(\t0_reg_n_0_[7] ),
        .I3(\t0_reg_n_0_[12] ),
        .O(\t0[2]_i_38_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \t0[2]_i_39 
       (.I0(\t0_reg_n_0_[5] ),
        .I1(\t0_reg_n_0_[10] ),
        .I2(\t0_reg_n_0_[15] ),
        .I3(\t0_reg_n_0_[11] ),
        .I4(\t0_reg_n_0_[6] ),
        .O(\t0[2]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \t0[2]_i_4 
       (.I0(i_mem0a_dout[10]),
        .I1(i_mem0a_dout[2]),
        .I2(i_mem0a_dout[18]),
        .I3(\s_inp_pos_in_line_reg_n_0_[1] ),
        .I4(\s_inp_pos_in_line_reg_n_0_[0] ),
        .I5(i_mem0a_dout[26]),
        .O(\t0[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \t0[2]_i_41 
       (.I0(\t0_reg_n_0_[11] ),
        .I1(\t0_reg_n_0_[1] ),
        .I2(\t0_reg_n_0_[6] ),
        .O(\t0[2]_i_41_n_0 ));
  LUT5 #(
    .INIT(32'h69969696)) 
    \t0[2]_i_42 
       (.I0(\t0_reg_n_0_[6] ),
        .I1(\t0_reg_n_0_[11] ),
        .I2(\t0_reg_n_0_[1] ),
        .I3(\t0_reg_n_0_[0] ),
        .I4(\t0_reg_n_0_[5] ),
        .O(\t0[2]_i_42_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \t0[2]_i_43 
       (.I0(\t0_reg_n_0_[0] ),
        .I1(\t0_reg_n_0_[5] ),
        .I2(\t0_reg_n_0_[10] ),
        .O(\t0[2]_i_43_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \t0[2]_i_44 
       (.I0(\t0_reg_n_0_[9] ),
        .I1(\t0_reg_n_0_[4] ),
        .O(\t0[2]_i_44_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \t0[2]_i_45 
       (.I0(\t0_reg_n_0_[8] ),
        .I1(\t0_reg_n_0_[3] ),
        .O(\t0[2]_i_45_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \t0[2]_i_47 
       (.I0(\t0_reg_n_0_[7] ),
        .I1(\t0_reg_n_0_[2] ),
        .O(\t0[2]_i_47_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \t0[2]_i_48 
       (.I0(\t0_reg_n_0_[6] ),
        .I1(\t0_reg_n_0_[1] ),
        .O(\t0[2]_i_48_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \t0[2]_i_49 
       (.I0(\t0_reg_n_0_[5] ),
        .I1(\t0_reg_n_0_[0] ),
        .O(\t0[2]_i_49_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \t0[2]_i_5 
       (.I0(\t0_reg_n_0_[3] ),
        .I1(\t0_reg[2]_i_9_n_7 ),
        .O(\t0[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \t0[2]_i_50 
       (.I0(\t0_reg_n_0_[9] ),
        .I1(\t0_reg_n_0_[14] ),
        .I2(\t0_reg_n_0_[10] ),
        .I3(\t0_reg_n_0_[15] ),
        .O(\t0[2]_i_50_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \t0[2]_i_6 
       (.I0(\t0_reg_n_0_[2] ),
        .I1(\t0_reg[2]_i_10_n_5 ),
        .O(\t0[2]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \t0[2]_i_7 
       (.I0(\t0_reg_n_0_[1] ),
        .I1(\t0_reg[2]_i_10_n_6 ),
        .O(\t0[2]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \t0[2]_i_8 
       (.I0(\t0_reg_n_0_[0] ),
        .I1(\t0_reg[2]_i_10_n_7 ),
        .O(\t0[2]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \t0[3]_i_1 
       (.I0(\t0_reg[3]_i_2_n_4 ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\t0[3]_i_3_n_0 ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\t0[3]_i_4_n_0 ),
        .O(t0[3]));
  LUT6 #(
    .INIT(64'h3CF0F0F070F0F0F0)) 
    \t0[3]_i_3 
       (.I0(\t0_reg[4]_i_5_n_7 ),
        .I1(\t0_reg[2]_i_2_n_5 ),
        .I2(\t0_reg[2]_i_2_n_4 ),
        .I3(\t0_reg[2]_i_2_n_6 ),
        .I4(\t0_reg[2]_i_2_n_7 ),
        .I5(\t0_reg[4]_i_5_n_6 ),
        .O(\t0[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \t0[3]_i_4 
       (.I0(i_mem0a_dout[3]),
        .I1(i_mem0a_dout[11]),
        .I2(i_mem0a_dout[27]),
        .I3(\s_inp_pos_in_line_reg_n_0_[0] ),
        .I4(\s_inp_pos_in_line_reg_n_0_[1] ),
        .I5(i_mem0a_dout[19]),
        .O(\t0[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \t0[3]_i_5 
       (.I0(\t0_reg_n_0_[3] ),
        .I1(tmp[3]),
        .O(\t0[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \t0[3]_i_6 
       (.I0(\t0_reg_n_0_[2] ),
        .I1(tmp[2]),
        .O(\t0[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \t0[3]_i_7 
       (.I0(\t0_reg_n_0_[1] ),
        .I1(tmp[1]),
        .O(\t0[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \t0[3]_i_8 
       (.I0(\t0_reg_n_0_[0] ),
        .I1(tmp[0]),
        .O(\t0[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF350500003505)) 
    \t0[4]_i_1 
       (.I0(\t0[4]_i_2_n_0 ),
        .I1(\t0[4]_i_3_n_0 ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\t0[4]_i_4_n_0 ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\t0_reg[7]_i_2_n_7 ),
        .O(t0[4]));
  LUT6 #(
    .INIT(64'h55000F3355FF0F33)) 
    \t0[4]_i_2 
       (.I0(i_mem0a_dout[28]),
        .I1(i_mem0a_dout[4]),
        .I2(i_mem0a_dout[20]),
        .I3(\s_inp_pos_in_line_reg_n_0_[1] ),
        .I4(\s_inp_pos_in_line_reg_n_0_[0] ),
        .I5(i_mem0a_dout[12]),
        .O(\t0[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \t0[4]_i_3 
       (.I0(\t0_reg[4]_i_5_n_7 ),
        .I1(\t0_reg[2]_i_2_n_5 ),
        .I2(\t0_reg[2]_i_2_n_4 ),
        .I3(\t0_reg[2]_i_2_n_6 ),
        .I4(\t0_reg[2]_i_2_n_7 ),
        .O(\t0[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \t0[4]_i_4 
       (.I0(\t0_reg[4]_i_5_n_7 ),
        .I1(\t0_reg[2]_i_2_n_7 ),
        .I2(\t0_reg[2]_i_2_n_6 ),
        .I3(\t0_reg[2]_i_2_n_4 ),
        .I4(\t0_reg[2]_i_2_n_5 ),
        .I5(\t0_reg[4]_i_5_n_6 ),
        .O(\t0[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \t0[4]_i_6 
       (.I0(\t0_reg_n_0_[5] ),
        .I1(\t0_reg[2]_i_9_n_5 ),
        .O(\t0[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \t0[4]_i_7 
       (.I0(\t0_reg_n_0_[4] ),
        .I1(\t0_reg[2]_i_9_n_6 ),
        .O(\t0[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hA0A3)) 
    \t0[5]_i_1 
       (.I0(\t0_reg[7]_i_2_n_6 ),
        .I1(\t0[5]_i_2_n_0 ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[3] ),
        .O(t0[5]));
  LUT6 #(
    .INIT(64'h55000F3355FF0F33)) 
    \t0[5]_i_2 
       (.I0(i_mem0a_dout[29]),
        .I1(i_mem0a_dout[5]),
        .I2(i_mem0a_dout[21]),
        .I3(\s_inp_pos_in_line_reg_n_0_[1] ),
        .I4(\s_inp_pos_in_line_reg_n_0_[0] ),
        .I5(i_mem0a_dout[13]),
        .O(\t0[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hA0A3)) 
    \t0[6]_i_1 
       (.I0(\t0_reg[7]_i_2_n_5 ),
        .I1(\t0[6]_i_2_n_0 ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[3] ),
        .O(t0[6]));
  LUT6 #(
    .INIT(64'h55000F3355FF0F33)) 
    \t0[6]_i_2 
       (.I0(i_mem0a_dout[30]),
        .I1(i_mem0a_dout[6]),
        .I2(i_mem0a_dout[22]),
        .I3(\s_inp_pos_in_line_reg_n_0_[1] ),
        .I4(\s_inp_pos_in_line_reg_n_0_[0] ),
        .I5(i_mem0a_dout[14]),
        .O(\t0[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hA0A3)) 
    \t0[7]_i_1 
       (.I0(\t0_reg[7]_i_2_n_4 ),
        .I1(\t0[7]_i_3_n_0 ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[3] ),
        .O(t0[7]));
  LUT6 #(
    .INIT(64'h0F5500330F55FF33)) 
    \t0[7]_i_3 
       (.I0(i_mem0a_dout[23]),
        .I1(i_mem0a_dout[7]),
        .I2(i_mem0a_dout[31]),
        .I3(\s_inp_pos_in_line_reg_n_0_[0] ),
        .I4(\s_inp_pos_in_line_reg_n_0_[1] ),
        .I5(i_mem0a_dout[15]),
        .O(\t0[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \t0[7]_i_4 
       (.I0(\t0_reg_n_0_[7] ),
        .I1(tmp[7]),
        .O(\t0[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \t0[7]_i_5 
       (.I0(\t0_reg_n_0_[6] ),
        .I1(tmp[6]),
        .O(\t0[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \t0[7]_i_6 
       (.I0(\t0_reg_n_0_[5] ),
        .I1(tmp[5]),
        .O(\t0[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \t0[7]_i_7 
       (.I0(\t0_reg_n_0_[4] ),
        .I1(tmp[4]),
        .O(\t0[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \t0[8]_i_1 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\t0_reg[11]_i_2_n_7 ),
        .O(t0[8]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \t0[9]_i_1 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\t0_reg[11]_i_2_n_6 ),
        .O(t0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \t0_reg[0] 
       (.C(clk),
        .CE(\t0[15]_i_1_n_0 ),
        .D(t0[0]),
        .Q(\t0_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \t0_reg[10] 
       (.C(clk),
        .CE(\t0[15]_i_1_n_0 ),
        .D(t0[10]),
        .Q(\t0_reg_n_0_[10] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \t0_reg[11] 
       (.C(clk),
        .CE(\t0[15]_i_1_n_0 ),
        .D(t0[11]),
        .Q(\t0_reg_n_0_[11] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \t0_reg[11]_i_2 
       (.CI(\t0_reg[7]_i_2_n_0 ),
        .CO({\t0_reg[11]_i_2_n_0 ,\t0_reg[11]_i_2_n_1 ,\t0_reg[11]_i_2_n_2 ,\t0_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\t0_reg_n_0_[11] ,\t0_reg_n_0_[10] ,\t0_reg_n_0_[9] ,\t0_reg_n_0_[8] }),
        .O({\t0_reg[11]_i_2_n_4 ,\t0_reg[11]_i_2_n_5 ,\t0_reg[11]_i_2_n_6 ,\t0_reg[11]_i_2_n_7 }),
        .S({\t0[11]_i_3_n_0 ,\t0[11]_i_4_n_0 ,\t0[11]_i_5_n_0 ,\t0[11]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \t0_reg[12] 
       (.C(clk),
        .CE(\t0[15]_i_1_n_0 ),
        .D(t0[12]),
        .Q(\t0_reg_n_0_[12] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \t0_reg[13] 
       (.C(clk),
        .CE(\t0[15]_i_1_n_0 ),
        .D(t0[13]),
        .Q(\t0_reg_n_0_[13] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \t0_reg[14] 
       (.C(clk),
        .CE(\t0[15]_i_1_n_0 ),
        .D(t0[14]),
        .Q(\t0_reg_n_0_[14] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \t0_reg[15] 
       (.C(clk),
        .CE(\t0[15]_i_1_n_0 ),
        .D(t0[15]),
        .Q(\t0_reg_n_0_[15] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \t0_reg[15]_i_3 
       (.CI(\t0_reg[11]_i_2_n_0 ),
        .CO({\NLW_t0_reg[15]_i_3_CO_UNCONNECTED [3],\t0_reg[15]_i_3_n_1 ,\t0_reg[15]_i_3_n_2 ,\t0_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\t0_reg_n_0_[14] ,\t0_reg_n_0_[13] ,\t0_reg_n_0_[12] }),
        .O({\t0_reg[15]_i_3_n_4 ,\t0_reg[15]_i_3_n_5 ,\t0_reg[15]_i_3_n_6 ,\t0_reg[15]_i_3_n_7 }),
        .S({\t0[15]_i_4_n_0 ,\t0[15]_i_5_n_0 ,\t0[15]_i_6_n_0 ,\t0[15]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \t0_reg[1] 
       (.C(clk),
        .CE(\t0[15]_i_1_n_0 ),
        .D(t0[1]),
        .Q(\t0_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \t0_reg[2] 
       (.C(clk),
        .CE(\t0[15]_i_1_n_0 ),
        .D(t0[2]),
        .Q(\t0_reg_n_0_[2] ),
        .R(rst));
  CARRY4 \t0_reg[2]_i_10 
       (.CI(1'b0),
        .CO({\t0_reg[2]_i_10_n_0 ,\t0_reg[2]_i_10_n_1 ,\t0_reg[2]_i_10_n_2 ,\t0_reg[2]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\t0_reg[10]_0 ,1'b0,1'b0,1'b1}),
        .O({O,\t0_reg[2]_i_10_n_5 ,\t0_reg[2]_i_10_n_6 ,\t0_reg[2]_i_10_n_7 }),
        .S({S,\t0_reg[10]_0 }));
  CARRY4 \t0_reg[2]_i_15 
       (.CI(\t0_reg[2]_i_21_n_0 ),
        .CO({\t0_reg[2]_i_15_n_0 ,\t0_reg[2]_i_15_n_1 ,\t0_reg[2]_i_15_n_2 ,\t0_reg[2]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({\t0[2]_i_22_n_0 ,\t0[2]_i_23_n_0 ,\t0[2]_i_24_n_0 ,\t0[2]_i_25_n_0 }),
        .O({\t0_reg[10]_0 ,\NLW_t0_reg[2]_i_15_O_UNCONNECTED [2:0]}),
        .S({\t0[2]_i_26_n_0 ,\t0[2]_i_27_n_0 ,\t0[2]_i_28_n_0 ,\t0[2]_i_29_n_0 }));
  CARRY4 \t0_reg[2]_i_19 
       (.CI(\t0_reg[2]_i_10_n_0 ),
        .CO({\NLW_t0_reg[2]_i_19_CO_UNCONNECTED [3:1],\t0_reg[2]_i_19_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\t0_reg[13]_0 [0]}),
        .O({\NLW_t0_reg[2]_i_19_O_UNCONNECTED [3:2],\t0_reg[2]_i_19_n_6 ,\t0[2]_i_31 }),
        .S({1'b0,1'b0,\t0[2]_i_13 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \t0_reg[2]_i_2 
       (.CI(1'b0),
        .CO({\t0_reg[2]_i_2_n_0 ,\t0_reg[2]_i_2_n_1 ,\t0_reg[2]_i_2_n_2 ,\t0_reg[2]_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({\t0_reg_n_0_[3] ,\t0_reg_n_0_[2] ,\t0_reg_n_0_[1] ,\t0_reg_n_0_[0] }),
        .O({\t0_reg[2]_i_2_n_4 ,\t0_reg[2]_i_2_n_5 ,\t0_reg[2]_i_2_n_6 ,\t0_reg[2]_i_2_n_7 }),
        .S({\t0[2]_i_5_n_0 ,\t0[2]_i_6_n_0 ,\t0[2]_i_7_n_0 ,\t0[2]_i_8_n_0 }));
  CARRY4 \t0_reg[2]_i_20 
       (.CI(\t0_reg[2]_i_15_n_0 ),
        .CO({\t0_reg[2]_i_20_n_0 ,\t0_reg[2]_i_20_n_1 ,\t0_reg[2]_i_20_n_2 ,\t0_reg[2]_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({\t0[2]_i_32_n_0 ,\t0[2]_i_33_n_0 ,\t0[2]_i_34_n_0 ,\t0[2]_i_35_n_0 }),
        .O(\t0_reg[13]_0 ),
        .S({\t0[2]_i_36_n_0 ,\t0[2]_i_37_n_0 ,\t0[2]_i_38_n_0 ,\t0[2]_i_39_n_0 }));
  CARRY4 \t0_reg[2]_i_21 
       (.CI(\t0_reg[2]_i_40_n_0 ),
        .CO({\t0_reg[2]_i_21_n_0 ,\t0_reg[2]_i_21_n_1 ,\t0_reg[2]_i_21_n_2 ,\t0_reg[2]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\t0[2]_i_41_n_0 ,\t0_reg_n_0_[10] ,\t0_reg_n_0_[9] ,\t0_reg_n_0_[8] }),
        .O(\NLW_t0_reg[2]_i_21_O_UNCONNECTED [3:0]),
        .S({\t0[2]_i_42_n_0 ,\t0[2]_i_43_n_0 ,\t0[2]_i_44_n_0 ,\t0[2]_i_45_n_0 }));
  CARRY4 \t0_reg[2]_i_40 
       (.CI(1'b0),
        .CO({\t0_reg[2]_i_40_n_0 ,\t0_reg[2]_i_40_n_1 ,\t0_reg[2]_i_40_n_2 ,\t0_reg[2]_i_40_n_3 }),
        .CYINIT(1'b0),
        .DI({\t0_reg_n_0_[7] ,\t0_reg_n_0_[6] ,\t0_reg_n_0_[5] ,1'b0}),
        .O(\NLW_t0_reg[2]_i_40_O_UNCONNECTED [3:0]),
        .S({\t0[2]_i_47_n_0 ,\t0[2]_i_48_n_0 ,\t0[2]_i_49_n_0 ,\t0_reg_n_0_[4] }));
  CARRY4 \t0_reg[2]_i_46 
       (.CI(\t0_reg[2]_i_20_n_0 ),
        .CO(\NLW_t0_reg[2]_i_46_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_t0_reg[2]_i_46_O_UNCONNECTED [3:1],\t0_reg[9]_0 }),
        .S({1'b0,1'b0,1'b0,\t0[2]_i_50_n_0 }));
  CARRY4 \t0_reg[2]_i_9 
       (.CI(1'b0),
        .CO({\NLW_t0_reg[2]_i_9_CO_UNCONNECTED [3:2],\t0_reg[2]_i_9_n_2 ,\t0_reg[2]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\t0[2]_i_11_n_0 ,1'b0}),
        .O({\NLW_t0_reg[2]_i_9_O_UNCONNECTED [3],\t0_reg[2]_i_9_n_5 ,\t0_reg[2]_i_9_n_6 ,\t0_reg[2]_i_9_n_7 }),
        .S({1'b0,\t0[2]_i_12_n_0 ,\t0[2]_i_5_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \t0_reg[3] 
       (.C(clk),
        .CE(\t0[15]_i_1_n_0 ),
        .D(t0[3]),
        .Q(\t0_reg_n_0_[3] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \t0_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\t0_reg[3]_i_2_n_0 ,\t0_reg[3]_i_2_n_1 ,\t0_reg[3]_i_2_n_2 ,\t0_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\t0_reg_n_0_[3] ,\t0_reg_n_0_[2] ,\t0_reg_n_0_[1] ,\t0_reg_n_0_[0] }),
        .O({\t0_reg[3]_i_2_n_4 ,\t0_reg[3]_i_2_n_5 ,\t0_reg[3]_i_2_n_6 ,\t0_reg[3]_i_2_n_7 }),
        .S({\t0[3]_i_5_n_0 ,\t0[3]_i_6_n_0 ,\t0[3]_i_7_n_0 ,\t0[3]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \t0_reg[4] 
       (.C(clk),
        .CE(\t0[15]_i_1_n_0 ),
        .D(t0[4]),
        .Q(\t0_reg_n_0_[4] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \t0_reg[4]_i_5 
       (.CI(\t0_reg[2]_i_2_n_0 ),
        .CO({\NLW_t0_reg[4]_i_5_CO_UNCONNECTED [3:1],\t0_reg[4]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\t0_reg_n_0_[4] }),
        .O({\NLW_t0_reg[4]_i_5_O_UNCONNECTED [3:2],\t0_reg[4]_i_5_n_6 ,\t0_reg[4]_i_5_n_7 }),
        .S({1'b0,1'b0,\t0[4]_i_6_n_0 ,\t0[4]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \t0_reg[5] 
       (.C(clk),
        .CE(\t0[15]_i_1_n_0 ),
        .D(t0[5]),
        .Q(\t0_reg_n_0_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \t0_reg[6] 
       (.C(clk),
        .CE(\t0[15]_i_1_n_0 ),
        .D(t0[6]),
        .Q(\t0_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \t0_reg[7] 
       (.C(clk),
        .CE(\t0[15]_i_1_n_0 ),
        .D(t0[7]),
        .Q(\t0_reg_n_0_[7] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \t0_reg[7]_i_2 
       (.CI(\t0_reg[3]_i_2_n_0 ),
        .CO({\t0_reg[7]_i_2_n_0 ,\t0_reg[7]_i_2_n_1 ,\t0_reg[7]_i_2_n_2 ,\t0_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\t0_reg_n_0_[7] ,\t0_reg_n_0_[6] ,\t0_reg_n_0_[5] ,\t0_reg_n_0_[4] }),
        .O({\t0_reg[7]_i_2_n_4 ,\t0_reg[7]_i_2_n_5 ,\t0_reg[7]_i_2_n_6 ,\t0_reg[7]_i_2_n_7 }),
        .S({\t0[7]_i_4_n_0 ,\t0[7]_i_5_n_0 ,\t0[7]_i_6_n_0 ,\t0[7]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \t0_reg[8] 
       (.C(clk),
        .CE(\t0[15]_i_1_n_0 ),
        .D(t0[8]),
        .Q(\t0_reg_n_0_[8] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \t0_reg[9] 
       (.C(clk),
        .CE(\t0[15]_i_1_n_0 ),
        .D(t0[9]),
        .Q(\t0_reg_n_0_[9] ),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp[0]_i_1 
       (.I0(\tmp[0]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(tmp0[0]),
        .O(\tmp[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \tmp[0]_i_2 
       (.I0(i_mem1a_dout[0]),
        .I1(i_mem1a_dout[8]),
        .I2(i_mem1a_dout[16]),
        .I3(\s_oil_pos_in_line_reg_n_0_[1] ),
        .I4(\s_oil_pos_in_line_reg_n_0_[0] ),
        .I5(i_mem1a_dout[24]),
        .O(\tmp[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h956A6A6A)) 
    \tmp[10]_i_10 
       (.I0(\tmp[10]_i_6_n_0 ),
        .I1(\tmp_reg[10]_i_12_n_5 ),
        .I2(\tmp_reg[3]_i_4_n_4 ),
        .I3(\tmp[10]_i_17_n_0 ),
        .I4(tmp[6]),
        .O(\tmp[10]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp[10]_i_11 
       (.I0(\tmp_reg[10]_i_12_n_5 ),
        .I1(\tmp_reg[3]_i_4_n_4 ),
        .O(\tmp[10]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \tmp[10]_i_13 
       (.I0(\tmp_reg[3]_i_4_n_4 ),
        .I1(\tmp_reg[10]_i_12_n_5 ),
        .I2(tmp[6]),
        .I3(\tmp[10]_i_21_n_0 ),
        .O(\tmp[10]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp[10]_i_14 
       (.I0(\tmp_reg[10]_i_12_n_6 ),
        .I1(\tmp_reg[3]_i_4_n_5 ),
        .O(\tmp[10]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp[10]_i_15 
       (.I0(\tmp_reg[10]_i_12_n_7 ),
        .I1(\tmp_reg[3]_i_4_n_6 ),
        .O(\tmp[10]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp[10]_i_16 
       (.I0(\tmp_reg[3]_i_3_n_4 ),
        .I1(\tmp_reg[3]_i_4_n_7 ),
        .O(tmp0[3]));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \tmp[10]_i_17 
       (.I0(mempcpy_scratch[33]),
        .I1(\j_reg_n_0_[0] ),
        .I2(mempcpy_scratch[41]),
        .I3(\j_reg_n_0_[1] ),
        .I4(\j_reg_n_0_[2] ),
        .I5(\tmp[10]_i_32_n_0 ),
        .O(\tmp[10]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp[10]_i_18 
       (.I0(\tmp[14]_i_16_n_0 ),
        .I1(tmp[6]),
        .O(\tmp[10]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \tmp[10]_i_19 
       (.I0(tmp[7]),
        .I1(\tmp[14]_i_19_n_0 ),
        .I2(\tmp_reg[14]_i_15_n_6 ),
        .I3(\tmp_reg[14]_i_14_n_5 ),
        .O(\tmp[10]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \tmp[10]_i_20 
       (.I0(tmp[7]),
        .I1(\tmp[10]_i_17_n_0 ),
        .I2(\tmp_reg[14]_i_15_n_7 ),
        .I3(\tmp_reg[14]_i_14_n_6 ),
        .O(\tmp[10]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \tmp[10]_i_21 
       (.I0(mempcpy_scratch[32]),
        .I1(\j_reg_n_0_[0] ),
        .I2(mempcpy_scratch[40]),
        .I3(\j_reg_n_0_[1] ),
        .I4(\j_reg_n_0_[2] ),
        .I5(\tmp[10]_i_33_n_0 ),
        .O(\tmp[10]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h1777)) 
    \tmp[10]_i_22 
       (.I0(\tmp_reg[14]_i_14_n_5 ),
        .I1(\tmp_reg[14]_i_15_n_6 ),
        .I2(\tmp[14]_i_19_n_0 ),
        .I3(tmp[7]),
        .O(\tmp[10]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h1777)) 
    \tmp[10]_i_23 
       (.I0(\tmp_reg[14]_i_14_n_6 ),
        .I1(\tmp_reg[14]_i_15_n_7 ),
        .I2(\tmp[10]_i_17_n_0 ),
        .I3(tmp[7]),
        .O(\tmp[10]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \tmp[10]_i_24 
       (.I0(\tmp[14]_i_13_n_0 ),
        .I1(tmp[2]),
        .I2(tmp[1]),
        .I3(\tmp[14]_i_11_n_0 ),
        .I4(\tmp[15]_i_5_n_0 ),
        .I5(tmp[0]),
        .O(\tmp[10]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \tmp[10]_i_25 
       (.I0(\tmp[14]_i_16_n_0 ),
        .I1(tmp[2]),
        .I2(tmp[1]),
        .I3(\tmp[14]_i_13_n_0 ),
        .I4(\tmp[14]_i_11_n_0 ),
        .I5(tmp[0]),
        .O(\tmp[10]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \tmp[10]_i_26 
       (.I0(\tmp[14]_i_19_n_0 ),
        .I1(tmp[2]),
        .I2(tmp[1]),
        .I3(\tmp[14]_i_16_n_0 ),
        .I4(\tmp[14]_i_13_n_0 ),
        .I5(tmp[0]),
        .O(\tmp[10]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \tmp[10]_i_27 
       (.I0(\tmp[10]_i_17_n_0 ),
        .I1(tmp[2]),
        .I2(tmp[1]),
        .I3(\tmp[14]_i_19_n_0 ),
        .I4(\tmp[14]_i_16_n_0 ),
        .I5(tmp[0]),
        .O(\tmp[10]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    \tmp[10]_i_28 
       (.I0(\tmp[10]_i_24_n_0 ),
        .I1(\tmp[15]_i_5_n_0 ),
        .I2(tmp[1]),
        .I3(tmp[2]),
        .I4(\tmp[14]_i_11_n_0 ),
        .I5(\tmp[10]_i_34_n_0 ),
        .O(\tmp[10]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    \tmp[10]_i_29 
       (.I0(\tmp[10]_i_25_n_0 ),
        .I1(\tmp[14]_i_11_n_0 ),
        .I2(tmp[1]),
        .I3(tmp[2]),
        .I4(\tmp[14]_i_13_n_0 ),
        .I5(\tmp[10]_i_35_n_0 ),
        .O(\tmp[10]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE888E8880000)) 
    \tmp[10]_i_3 
       (.I0(\tmp_reg[14]_i_14_n_6 ),
        .I1(\tmp_reg[14]_i_15_n_7 ),
        .I2(\tmp[10]_i_17_n_0 ),
        .I3(tmp[7]),
        .I4(\tmp[10]_i_18_n_0 ),
        .I5(\tmp[10]_i_19_n_0 ),
        .O(\tmp[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    \tmp[10]_i_30 
       (.I0(\tmp[10]_i_26_n_0 ),
        .I1(\tmp[14]_i_13_n_0 ),
        .I2(tmp[1]),
        .I3(tmp[2]),
        .I4(\tmp[14]_i_16_n_0 ),
        .I5(\tmp[10]_i_36_n_0 ),
        .O(\tmp[10]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    \tmp[10]_i_31 
       (.I0(\tmp[10]_i_27_n_0 ),
        .I1(\tmp[14]_i_16_n_0 ),
        .I2(tmp[1]),
        .I3(tmp[2]),
        .I4(\tmp[14]_i_19_n_0 ),
        .I5(\tmp[10]_i_37_n_0 ),
        .O(\tmp[10]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tmp[10]_i_32 
       (.I0(mempcpy_scratch[25]),
        .I1(mempcpy_scratch[17]),
        .I2(\j_reg_n_0_[1] ),
        .I3(mempcpy_scratch[9]),
        .I4(\j_reg_n_0_[0] ),
        .I5(mempcpy_scratch[1]),
        .O(\tmp[10]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tmp[10]_i_33 
       (.I0(mempcpy_scratch[24]),
        .I1(mempcpy_scratch[16]),
        .I2(\j_reg_n_0_[1] ),
        .I3(mempcpy_scratch[8]),
        .I4(\j_reg_n_0_[0] ),
        .I5(mempcpy_scratch[0]),
        .O(\tmp[10]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp[10]_i_34 
       (.I0(\tmp[15]_i_4_n_0 ),
        .I1(tmp[0]),
        .O(\tmp[10]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp[10]_i_35 
       (.I0(\tmp[15]_i_5_n_0 ),
        .I1(tmp[0]),
        .O(\tmp[10]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp[10]_i_36 
       (.I0(\tmp[14]_i_11_n_0 ),
        .I1(tmp[0]),
        .O(\tmp[10]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp[10]_i_37 
       (.I0(\tmp[14]_i_13_n_0 ),
        .I1(tmp[0]),
        .O(\tmp[10]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hC880808080808080)) 
    \tmp[10]_i_4 
       (.I0(\tmp[14]_i_19_n_0 ),
        .I1(tmp[6]),
        .I2(\tmp[10]_i_20_n_0 ),
        .I3(\tmp[10]_i_17_n_0 ),
        .I4(\tmp_reg[3]_i_4_n_4 ),
        .I5(\tmp_reg[10]_i_12_n_5 ),
        .O(\tmp[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h807FFFFF7F800000)) 
    \tmp[10]_i_5 
       (.I0(\tmp_reg[10]_i_12_n_5 ),
        .I1(\tmp_reg[3]_i_4_n_4 ),
        .I2(\tmp[10]_i_17_n_0 ),
        .I3(\tmp[14]_i_19_n_0 ),
        .I4(tmp[6]),
        .I5(\tmp[10]_i_20_n_0 ),
        .O(\tmp[10]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \tmp[10]_i_6 
       (.I0(tmp[7]),
        .I1(\tmp[10]_i_21_n_0 ),
        .I2(\tmp_reg[10]_i_12_n_4 ),
        .I3(\tmp_reg[14]_i_14_n_7 ),
        .O(\tmp[10]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h96666999)) 
    \tmp[10]_i_7 
       (.I0(\tmp[10]_i_3_n_0 ),
        .I1(\tmp[10]_i_22_n_0 ),
        .I2(tmp[6]),
        .I3(\tmp[14]_i_13_n_0 ),
        .I4(\tmp[14]_i_21_n_0 ),
        .O(\tmp[10]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h96666999)) 
    \tmp[10]_i_8 
       (.I0(\tmp[10]_i_4_n_0 ),
        .I1(\tmp[10]_i_23_n_0 ),
        .I2(tmp[6]),
        .I3(\tmp[14]_i_16_n_0 ),
        .I4(\tmp[10]_i_19_n_0 ),
        .O(\tmp[10]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h556A6AAA)) 
    \tmp[10]_i_9 
       (.I0(\tmp[10]_i_5_n_0 ),
        .I1(tmp[7]),
        .I2(\tmp[10]_i_21_n_0 ),
        .I3(\tmp_reg[10]_i_12_n_4 ),
        .I4(\tmp_reg[14]_i_14_n_7 ),
        .O(\tmp[10]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \tmp[14]_i_10 
       (.I0(\tmp_reg[15]_i_6_n_1 ),
        .I1(tmp[7]),
        .I2(\tmp[15]_i_5_n_0 ),
        .O(\tmp[14]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \tmp[14]_i_11 
       (.I0(mempcpy_scratch[37]),
        .I1(\j_reg_n_0_[0] ),
        .I2(mempcpy_scratch[45]),
        .I3(\j_reg_n_0_[1] ),
        .I4(\j_reg_n_0_[2] ),
        .I5(\tmp[14]_i_25_n_0 ),
        .O(\tmp[14]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \tmp[14]_i_12 
       (.I0(\tmp_reg[15]_i_6_n_6 ),
        .I1(tmp[7]),
        .I2(\tmp[14]_i_11_n_0 ),
        .O(\tmp[14]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \tmp[14]_i_13 
       (.I0(mempcpy_scratch[36]),
        .I1(\j_reg_n_0_[0] ),
        .I2(mempcpy_scratch[44]),
        .I3(\j_reg_n_0_[1] ),
        .I4(\j_reg_n_0_[2] ),
        .I5(\tmp[14]_i_26_n_0 ),
        .O(\tmp[14]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \tmp[14]_i_16 
       (.I0(mempcpy_scratch[35]),
        .I1(\j_reg_n_0_[0] ),
        .I2(mempcpy_scratch[43]),
        .I3(\j_reg_n_0_[1] ),
        .I4(\j_reg_n_0_[2] ),
        .I5(\tmp[14]_i_39_n_0 ),
        .O(\tmp[14]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \tmp[14]_i_17 
       (.I0(tmp[6]),
        .I1(\tmp[14]_i_11_n_0 ),
        .O(\tmp[14]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \tmp[14]_i_18 
       (.I0(\tmp_reg[15]_i_6_n_7 ),
        .I1(tmp[7]),
        .I2(\tmp[14]_i_13_n_0 ),
        .O(\tmp[14]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \tmp[14]_i_19 
       (.I0(mempcpy_scratch[34]),
        .I1(\j_reg_n_0_[0] ),
        .I2(mempcpy_scratch[42]),
        .I3(\j_reg_n_0_[1] ),
        .I4(\j_reg_n_0_[2] ),
        .I5(\tmp[14]_i_40_n_0 ),
        .O(\tmp[14]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hF880808080808080)) 
    \tmp[14]_i_2 
       (.I0(\tmp[15]_i_4_n_0 ),
        .I1(tmp[6]),
        .I2(\tmp[14]_i_10_n_0 ),
        .I3(\tmp_reg[15]_i_6_n_6 ),
        .I4(tmp[7]),
        .I5(\tmp[14]_i_11_n_0 ),
        .O(\tmp[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp[14]_i_20 
       (.I0(\tmp[14]_i_13_n_0 ),
        .I1(tmp[6]),
        .O(\tmp[14]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \tmp[14]_i_21 
       (.I0(tmp[7]),
        .I1(\tmp[14]_i_16_n_0 ),
        .I2(\tmp_reg[14]_i_15_n_1 ),
        .I3(\tmp_reg[14]_i_14_n_4 ),
        .O(\tmp[14]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \tmp[14]_i_22 
       (.I0(\tmp_reg[15]_i_6_n_6 ),
        .I1(tmp[7]),
        .I2(\tmp[14]_i_11_n_0 ),
        .O(\tmp[14]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \tmp[14]_i_23 
       (.I0(\tmp_reg[15]_i_6_n_7 ),
        .I1(tmp[7]),
        .I2(\tmp[14]_i_13_n_0 ),
        .O(\tmp[14]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    \tmp[14]_i_24 
       (.I0(\tmp_reg[14]_i_14_n_4 ),
        .I1(\tmp_reg[14]_i_15_n_1 ),
        .I2(\tmp[14]_i_16_n_0 ),
        .I3(tmp[7]),
        .O(\tmp[14]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tmp[14]_i_25 
       (.I0(mempcpy_scratch[29]),
        .I1(mempcpy_scratch[21]),
        .I2(\j_reg_n_0_[1] ),
        .I3(mempcpy_scratch[13]),
        .I4(\j_reg_n_0_[0] ),
        .I5(mempcpy_scratch[5]),
        .O(\tmp[14]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tmp[14]_i_26 
       (.I0(mempcpy_scratch[28]),
        .I1(mempcpy_scratch[20]),
        .I2(\j_reg_n_0_[1] ),
        .I3(mempcpy_scratch[12]),
        .I4(\j_reg_n_0_[0] ),
        .I5(mempcpy_scratch[4]),
        .O(\tmp[14]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \tmp[14]_i_27 
       (.I0(\tmp[14]_i_13_n_0 ),
        .I1(tmp[5]),
        .I2(tmp[4]),
        .I3(\tmp[14]_i_11_n_0 ),
        .I4(\tmp[15]_i_5_n_0 ),
        .I5(tmp[3]),
        .O(\tmp[14]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \tmp[14]_i_28 
       (.I0(\tmp[14]_i_16_n_0 ),
        .I1(tmp[5]),
        .I2(tmp[4]),
        .I3(\tmp[14]_i_13_n_0 ),
        .I4(\tmp[14]_i_11_n_0 ),
        .I5(tmp[3]),
        .O(\tmp[14]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \tmp[14]_i_29 
       (.I0(\tmp[14]_i_19_n_0 ),
        .I1(tmp[5]),
        .I2(tmp[4]),
        .I3(\tmp[14]_i_16_n_0 ),
        .I4(\tmp[14]_i_13_n_0 ),
        .I5(tmp[3]),
        .O(\tmp[14]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hF880808080808080)) 
    \tmp[14]_i_3 
       (.I0(\tmp[15]_i_5_n_0 ),
        .I1(tmp[6]),
        .I2(\tmp[14]_i_12_n_0 ),
        .I3(\tmp_reg[15]_i_6_n_7 ),
        .I4(tmp[7]),
        .I5(\tmp[14]_i_13_n_0 ),
        .O(\tmp[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \tmp[14]_i_30 
       (.I0(\tmp[10]_i_17_n_0 ),
        .I1(tmp[5]),
        .I2(tmp[4]),
        .I3(\tmp[14]_i_19_n_0 ),
        .I4(\tmp[14]_i_16_n_0 ),
        .I5(tmp[3]),
        .O(\tmp[14]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    \tmp[14]_i_31 
       (.I0(\tmp[14]_i_27_n_0 ),
        .I1(\tmp[15]_i_5_n_0 ),
        .I2(tmp[4]),
        .I3(tmp[5]),
        .I4(\tmp[14]_i_11_n_0 ),
        .I5(\tmp[14]_i_41_n_0 ),
        .O(\tmp[14]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    \tmp[14]_i_32 
       (.I0(\tmp[14]_i_28_n_0 ),
        .I1(\tmp[14]_i_11_n_0 ),
        .I2(tmp[4]),
        .I3(tmp[5]),
        .I4(\tmp[14]_i_13_n_0 ),
        .I5(\tmp[14]_i_42_n_0 ),
        .O(\tmp[14]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    \tmp[14]_i_33 
       (.I0(\tmp[14]_i_29_n_0 ),
        .I1(\tmp[14]_i_13_n_0 ),
        .I2(tmp[4]),
        .I3(tmp[5]),
        .I4(\tmp[14]_i_16_n_0 ),
        .I5(\tmp[14]_i_43_n_0 ),
        .O(\tmp[14]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    \tmp[14]_i_34 
       (.I0(\tmp[14]_i_30_n_0 ),
        .I1(\tmp[14]_i_16_n_0 ),
        .I2(tmp[4]),
        .I3(tmp[5]),
        .I4(\tmp[14]_i_19_n_0 ),
        .I5(\tmp[14]_i_44_n_0 ),
        .O(\tmp[14]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp[14]_i_35 
       (.I0(\tmp[15]_i_4_n_0 ),
        .I1(tmp[2]),
        .O(\tmp[14]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \tmp[14]_i_36 
       (.I0(\tmp[14]_i_11_n_0 ),
        .I1(tmp[2]),
        .I2(tmp[1]),
        .I3(\tmp[15]_i_5_n_0 ),
        .I4(\tmp[15]_i_4_n_0 ),
        .I5(tmp[0]),
        .O(\tmp[14]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \tmp[14]_i_37 
       (.I0(\tmp[15]_i_5_n_0 ),
        .I1(tmp[1]),
        .I2(tmp[2]),
        .I3(\tmp[15]_i_4_n_0 ),
        .O(\tmp[14]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hE37F70805000F000)) 
    \tmp[14]_i_38 
       (.I0(tmp[0]),
        .I1(\tmp[14]_i_11_n_0 ),
        .I2(\tmp[15]_i_4_n_0 ),
        .I3(tmp[1]),
        .I4(\tmp[15]_i_5_n_0 ),
        .I5(tmp[2]),
        .O(\tmp[14]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tmp[14]_i_39 
       (.I0(mempcpy_scratch[27]),
        .I1(mempcpy_scratch[19]),
        .I2(\j_reg_n_0_[1] ),
        .I3(mempcpy_scratch[11]),
        .I4(\j_reg_n_0_[0] ),
        .I5(mempcpy_scratch[3]),
        .O(\tmp[14]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hE888FFFF0000E888)) 
    \tmp[14]_i_4 
       (.I0(\tmp_reg[14]_i_14_n_4 ),
        .I1(\tmp_reg[14]_i_15_n_1 ),
        .I2(\tmp[14]_i_16_n_0 ),
        .I3(tmp[7]),
        .I4(\tmp[14]_i_17_n_0 ),
        .I5(\tmp[14]_i_18_n_0 ),
        .O(\tmp[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tmp[14]_i_40 
       (.I0(mempcpy_scratch[26]),
        .I1(mempcpy_scratch[18]),
        .I2(\j_reg_n_0_[1] ),
        .I3(mempcpy_scratch[10]),
        .I4(\j_reg_n_0_[0] ),
        .I5(mempcpy_scratch[2]),
        .O(\tmp[14]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp[14]_i_41 
       (.I0(\tmp[15]_i_4_n_0 ),
        .I1(tmp[3]),
        .O(\tmp[14]_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp[14]_i_42 
       (.I0(\tmp[15]_i_5_n_0 ),
        .I1(tmp[3]),
        .O(\tmp[14]_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp[14]_i_43 
       (.I0(\tmp[14]_i_11_n_0 ),
        .I1(tmp[3]),
        .O(\tmp[14]_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp[14]_i_44 
       (.I0(\tmp[14]_i_13_n_0 ),
        .I1(tmp[3]),
        .O(\tmp[14]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE888E8880000)) 
    \tmp[14]_i_5 
       (.I0(\tmp_reg[14]_i_14_n_5 ),
        .I1(\tmp_reg[14]_i_15_n_6 ),
        .I2(\tmp[14]_i_19_n_0 ),
        .I3(tmp[7]),
        .I4(\tmp[14]_i_20_n_0 ),
        .I5(\tmp[14]_i_21_n_0 ),
        .O(\tmp[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8FEA1A801AEA7080)) 
    \tmp[14]_i_6 
       (.I0(\tmp[14]_i_22_n_0 ),
        .I1(tmp[6]),
        .I2(\tmp[15]_i_4_n_0 ),
        .I3(tmp[7]),
        .I4(\tmp_reg[15]_i_6_n_1 ),
        .I5(\tmp[15]_i_5_n_0 ),
        .O(\tmp[14]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h69999666)) 
    \tmp[14]_i_7 
       (.I0(\tmp[14]_i_3_n_0 ),
        .I1(\tmp[14]_i_10_n_0 ),
        .I2(tmp[6]),
        .I3(\tmp[15]_i_4_n_0 ),
        .I4(\tmp[14]_i_22_n_0 ),
        .O(\tmp[14]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h69999666)) 
    \tmp[14]_i_8 
       (.I0(\tmp[14]_i_4_n_0 ),
        .I1(\tmp[14]_i_12_n_0 ),
        .I2(tmp[6]),
        .I3(\tmp[15]_i_5_n_0 ),
        .I4(\tmp[14]_i_23_n_0 ),
        .O(\tmp[14]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h69999666)) 
    \tmp[14]_i_9 
       (.I0(\tmp[14]_i_5_n_0 ),
        .I1(\tmp[14]_i_24_n_0 ),
        .I2(\tmp[14]_i_11_n_0 ),
        .I3(tmp[6]),
        .I4(\tmp[14]_i_18_n_0 ),
        .O(\tmp[14]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \tmp[15]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[2] ),
        .O(\tmp[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \tmp[15]_i_10 
       (.I0(\tmp[14]_i_11_n_0 ),
        .I1(tmp[5]),
        .I2(tmp[4]),
        .I3(\tmp[15]_i_5_n_0 ),
        .I4(\tmp[15]_i_4_n_0 ),
        .I5(tmp[3]),
        .O(\tmp[15]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \tmp[15]_i_11 
       (.I0(\tmp[15]_i_5_n_0 ),
        .I1(tmp[4]),
        .I2(tmp[5]),
        .I3(\tmp[15]_i_4_n_0 ),
        .O(\tmp[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hE37F70805000F000)) 
    \tmp[15]_i_12 
       (.I0(tmp[3]),
        .I1(\tmp[14]_i_11_n_0 ),
        .I2(\tmp[15]_i_4_n_0 ),
        .I3(tmp[4]),
        .I4(\tmp[15]_i_5_n_0 ),
        .I5(tmp[5]),
        .O(\tmp[15]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \tmp[15]_i_3 
       (.I0(\tmp[15]_i_4_n_0 ),
        .I1(\tmp[15]_i_5_n_0 ),
        .I2(tmp[7]),
        .I3(\tmp_reg[15]_i_6_n_1 ),
        .O(\tmp[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \tmp[15]_i_4 
       (.I0(mempcpy_scratch[39]),
        .I1(\j_reg_n_0_[0] ),
        .I2(mempcpy_scratch[47]),
        .I3(\j_reg_n_0_[1] ),
        .I4(\j_reg_n_0_[2] ),
        .I5(\tmp[15]_i_7_n_0 ),
        .O(\tmp[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \tmp[15]_i_5 
       (.I0(mempcpy_scratch[38]),
        .I1(\j_reg_n_0_[0] ),
        .I2(mempcpy_scratch[46]),
        .I3(\j_reg_n_0_[1] ),
        .I4(\j_reg_n_0_[2] ),
        .I5(\tmp[15]_i_8_n_0 ),
        .O(\tmp[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tmp[15]_i_7 
       (.I0(mempcpy_scratch[31]),
        .I1(mempcpy_scratch[23]),
        .I2(\j_reg_n_0_[1] ),
        .I3(mempcpy_scratch[15]),
        .I4(\j_reg_n_0_[0] ),
        .I5(mempcpy_scratch[7]),
        .O(\tmp[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tmp[15]_i_8 
       (.I0(mempcpy_scratch[30]),
        .I1(mempcpy_scratch[22]),
        .I2(\j_reg_n_0_[1] ),
        .I3(mempcpy_scratch[14]),
        .I4(\j_reg_n_0_[0] ),
        .I5(mempcpy_scratch[6]),
        .O(\tmp[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp[15]_i_9 
       (.I0(\tmp[15]_i_4_n_0 ),
        .I1(tmp[5]),
        .O(\tmp[15]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp[1]_i_1 
       (.I0(\tmp[1]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(tmp0[1]),
        .O(\tmp[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \tmp[1]_i_2 
       (.I0(i_mem1a_dout[1]),
        .I1(i_mem1a_dout[9]),
        .I2(i_mem1a_dout[17]),
        .I3(\s_oil_pos_in_line_reg_n_0_[1] ),
        .I4(\s_oil_pos_in_line_reg_n_0_[0] ),
        .I5(i_mem1a_dout[25]),
        .O(\tmp[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp[2]_i_1 
       (.I0(\tmp[2]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(tmp0[2]),
        .O(\tmp[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \tmp[2]_i_2 
       (.I0(i_mem1a_dout[2]),
        .I1(i_mem1a_dout[10]),
        .I2(i_mem1a_dout[18]),
        .I3(\s_oil_pos_in_line_reg_n_0_[1] ),
        .I4(\s_oil_pos_in_line_reg_n_0_[0] ),
        .I5(i_mem1a_dout[26]),
        .O(\tmp[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \tmp[3]_i_1 
       (.I0(\tmp[3]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\tmp_reg[3]_i_3_n_4 ),
        .I3(\tmp_reg[3]_i_4_n_7 ),
        .O(\tmp[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \tmp[3]_i_10 
       (.I0(tmp[0]),
        .I1(\tmp[10]_i_17_n_0 ),
        .I2(tmp[1]),
        .I3(\tmp[10]_i_21_n_0 ),
        .O(\tmp[3]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp[3]_i_11 
       (.I0(\tmp[10]_i_21_n_0 ),
        .I1(tmp[0]),
        .O(\tmp[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \tmp[3]_i_12 
       (.I0(tmp[3]),
        .I1(\tmp[14]_i_16_n_0 ),
        .I2(\tmp[10]_i_17_n_0 ),
        .I3(tmp[5]),
        .I4(tmp[4]),
        .I5(\tmp[14]_i_19_n_0 ),
        .O(\tmp[3]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \tmp[3]_i_13 
       (.I0(\tmp[10]_i_17_n_0 ),
        .I1(tmp[4]),
        .I2(\tmp[10]_i_21_n_0 ),
        .I3(tmp[5]),
        .O(\tmp[3]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp[3]_i_14 
       (.I0(\tmp[10]_i_21_n_0 ),
        .I1(tmp[4]),
        .O(\tmp[3]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \tmp[3]_i_15 
       (.I0(\tmp[3]_i_12_n_0 ),
        .I1(tmp[5]),
        .I2(\tmp[10]_i_17_n_0 ),
        .I3(\tmp[10]_i_21_n_0 ),
        .I4(tmp[4]),
        .O(\tmp[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \tmp[3]_i_16 
       (.I0(tmp[5]),
        .I1(\tmp[10]_i_21_n_0 ),
        .I2(tmp[4]),
        .I3(\tmp[10]_i_17_n_0 ),
        .I4(tmp[3]),
        .I5(\tmp[14]_i_19_n_0 ),
        .O(\tmp[3]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \tmp[3]_i_17 
       (.I0(tmp[3]),
        .I1(\tmp[10]_i_17_n_0 ),
        .I2(tmp[4]),
        .I3(\tmp[10]_i_21_n_0 ),
        .O(\tmp[3]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp[3]_i_18 
       (.I0(\tmp[10]_i_21_n_0 ),
        .I1(tmp[3]),
        .O(\tmp[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \tmp[3]_i_2 
       (.I0(i_mem1a_dout[3]),
        .I1(i_mem1a_dout[11]),
        .I2(i_mem1a_dout[19]),
        .I3(\s_oil_pos_in_line_reg_n_0_[1] ),
        .I4(\s_oil_pos_in_line_reg_n_0_[0] ),
        .I5(i_mem1a_dout[27]),
        .O(\tmp[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \tmp[3]_i_5 
       (.I0(tmp[0]),
        .I1(\tmp[14]_i_16_n_0 ),
        .I2(\tmp[10]_i_17_n_0 ),
        .I3(tmp[2]),
        .I4(tmp[1]),
        .I5(\tmp[14]_i_19_n_0 ),
        .O(\tmp[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \tmp[3]_i_6 
       (.I0(\tmp[10]_i_17_n_0 ),
        .I1(tmp[1]),
        .I2(\tmp[10]_i_21_n_0 ),
        .I3(tmp[2]),
        .O(\tmp[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp[3]_i_7 
       (.I0(\tmp[10]_i_21_n_0 ),
        .I1(tmp[1]),
        .O(\tmp[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \tmp[3]_i_8 
       (.I0(\tmp[3]_i_5_n_0 ),
        .I1(tmp[2]),
        .I2(\tmp[10]_i_17_n_0 ),
        .I3(\tmp[10]_i_21_n_0 ),
        .I4(tmp[1]),
        .O(\tmp[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \tmp[3]_i_9 
       (.I0(tmp[2]),
        .I1(\tmp[10]_i_21_n_0 ),
        .I2(tmp[1]),
        .I3(\tmp[10]_i_17_n_0 ),
        .I4(tmp[0]),
        .I5(\tmp[14]_i_19_n_0 ),
        .O(\tmp[3]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp[4]_i_1 
       (.I0(\tmp[4]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(tmp0[4]),
        .O(\tmp[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \tmp[4]_i_2 
       (.I0(i_mem1a_dout[4]),
        .I1(i_mem1a_dout[12]),
        .I2(i_mem1a_dout[20]),
        .I3(\s_oil_pos_in_line_reg_n_0_[1] ),
        .I4(\s_oil_pos_in_line_reg_n_0_[0] ),
        .I5(i_mem1a_dout[28]),
        .O(\tmp[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp[5]_i_1 
       (.I0(\tmp[5]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(tmp0[5]),
        .O(\tmp[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \tmp[5]_i_2 
       (.I0(i_mem1a_dout[5]),
        .I1(i_mem1a_dout[13]),
        .I2(i_mem1a_dout[21]),
        .I3(\s_oil_pos_in_line_reg_n_0_[1] ),
        .I4(\s_oil_pos_in_line_reg_n_0_[0] ),
        .I5(i_mem1a_dout[29]),
        .O(\tmp[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp[6]_i_1 
       (.I0(\tmp[6]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(tmp0[6]),
        .O(\tmp[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \tmp[6]_i_2 
       (.I0(i_mem1a_dout[6]),
        .I1(i_mem1a_dout[14]),
        .I2(i_mem1a_dout[22]),
        .I3(\s_oil_pos_in_line_reg_n_0_[1] ),
        .I4(\s_oil_pos_in_line_reg_n_0_[0] ),
        .I5(i_mem1a_dout[30]),
        .O(\tmp[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001800000)) 
    \tmp[7]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\tmp[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp[7]_i_2 
       (.I0(\tmp[7]_i_3_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(tmp0[7]),
        .O(\tmp[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \tmp[7]_i_3 
       (.I0(i_mem1a_dout[7]),
        .I1(i_mem1a_dout[15]),
        .I2(i_mem1a_dout[31]),
        .I3(\s_oil_pos_in_line_reg_n_0_[0] ),
        .I4(\s_oil_pos_in_line_reg_n_0_[1] ),
        .I5(i_mem1a_dout[23]),
        .O(\tmp[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0] 
       (.C(clk),
        .CE(\tmp[7]_i_1_n_0 ),
        .D(\tmp[0]_i_1_n_0 ),
        .Q(tmp[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[10] 
       (.C(clk),
        .CE(\tmp[15]_i_1_n_0 ),
        .D(tmp0__0[10]),
        .Q(tmp[10]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_reg[10]_i_1 
       (.CI(\tmp_reg[10]_i_2_n_0 ),
        .CO({\tmp_reg[10]_i_1_n_0 ,\tmp_reg[10]_i_1_n_1 ,\tmp_reg[10]_i_1_n_2 ,\tmp_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\tmp[10]_i_3_n_0 ,\tmp[10]_i_4_n_0 ,\tmp[10]_i_5_n_0 ,\tmp[10]_i_6_n_0 }),
        .O({tmp0__0[10:8],tmp0[7]}),
        .S({\tmp[10]_i_7_n_0 ,\tmp[10]_i_8_n_0 ,\tmp[10]_i_9_n_0 ,\tmp[10]_i_10_n_0 }));
  CARRY4 \tmp_reg[10]_i_12 
       (.CI(\tmp_reg[3]_i_3_n_0 ),
        .CO({\tmp_reg[10]_i_12_n_0 ,\tmp_reg[10]_i_12_n_1 ,\tmp_reg[10]_i_12_n_2 ,\tmp_reg[10]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({\tmp[10]_i_24_n_0 ,\tmp[10]_i_25_n_0 ,\tmp[10]_i_26_n_0 ,\tmp[10]_i_27_n_0 }),
        .O({\tmp_reg[10]_i_12_n_4 ,\tmp_reg[10]_i_12_n_5 ,\tmp_reg[10]_i_12_n_6 ,\tmp_reg[10]_i_12_n_7 }),
        .S({\tmp[10]_i_28_n_0 ,\tmp[10]_i_29_n_0 ,\tmp[10]_i_30_n_0 ,\tmp[10]_i_31_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_reg[10]_i_2 
       (.CI(1'b0),
        .CO({\tmp_reg[10]_i_2_n_0 ,\tmp_reg[10]_i_2_n_1 ,\tmp_reg[10]_i_2_n_2 ,\tmp_reg[10]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\tmp[10]_i_11_n_0 ,\tmp_reg[10]_i_12_n_6 ,\tmp_reg[10]_i_12_n_7 ,\tmp_reg[3]_i_3_n_4 }),
        .O({tmp0[6:4],\NLW_tmp_reg[10]_i_2_O_UNCONNECTED [0]}),
        .S({\tmp[10]_i_13_n_0 ,\tmp[10]_i_14_n_0 ,\tmp[10]_i_15_n_0 ,tmp0[3]}));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[11] 
       (.C(clk),
        .CE(\tmp[15]_i_1_n_0 ),
        .D(tmp0__0[11]),
        .Q(tmp[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[12] 
       (.C(clk),
        .CE(\tmp[15]_i_1_n_0 ),
        .D(tmp0__0[12]),
        .Q(tmp[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[13] 
       (.C(clk),
        .CE(\tmp[15]_i_1_n_0 ),
        .D(tmp0__0[13]),
        .Q(tmp[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[14] 
       (.C(clk),
        .CE(\tmp[15]_i_1_n_0 ),
        .D(tmp0__0[14]),
        .Q(tmp[14]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_reg[14]_i_1 
       (.CI(\tmp_reg[10]_i_1_n_0 ),
        .CO({\tmp_reg[14]_i_1_n_0 ,\tmp_reg[14]_i_1_n_1 ,\tmp_reg[14]_i_1_n_2 ,\tmp_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\tmp[14]_i_2_n_0 ,\tmp[14]_i_3_n_0 ,\tmp[14]_i_4_n_0 ,\tmp[14]_i_5_n_0 }),
        .O(tmp0__0[14:11]),
        .S({\tmp[14]_i_6_n_0 ,\tmp[14]_i_7_n_0 ,\tmp[14]_i_8_n_0 ,\tmp[14]_i_9_n_0 }));
  CARRY4 \tmp_reg[14]_i_14 
       (.CI(\tmp_reg[3]_i_4_n_0 ),
        .CO({\tmp_reg[14]_i_14_n_0 ,\tmp_reg[14]_i_14_n_1 ,\tmp_reg[14]_i_14_n_2 ,\tmp_reg[14]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({\tmp[14]_i_27_n_0 ,\tmp[14]_i_28_n_0 ,\tmp[14]_i_29_n_0 ,\tmp[14]_i_30_n_0 }),
        .O({\tmp_reg[14]_i_14_n_4 ,\tmp_reg[14]_i_14_n_5 ,\tmp_reg[14]_i_14_n_6 ,\tmp_reg[14]_i_14_n_7 }),
        .S({\tmp[14]_i_31_n_0 ,\tmp[14]_i_32_n_0 ,\tmp[14]_i_33_n_0 ,\tmp[14]_i_34_n_0 }));
  CARRY4 \tmp_reg[14]_i_15 
       (.CI(\tmp_reg[10]_i_12_n_0 ),
        .CO({\NLW_tmp_reg[14]_i_15_CO_UNCONNECTED [3],\tmp_reg[14]_i_15_n_1 ,\NLW_tmp_reg[14]_i_15_CO_UNCONNECTED [1],\tmp_reg[14]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\tmp[14]_i_35_n_0 ,\tmp[14]_i_36_n_0 }),
        .O({\NLW_tmp_reg[14]_i_15_O_UNCONNECTED [3:2],\tmp_reg[14]_i_15_n_6 ,\tmp_reg[14]_i_15_n_7 }),
        .S({1'b0,1'b1,\tmp[14]_i_37_n_0 ,\tmp[14]_i_38_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[15] 
       (.C(clk),
        .CE(\tmp[15]_i_1_n_0 ),
        .D(tmp0__0[15]),
        .Q(tmp[15]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_reg[15]_i_2 
       (.CI(\tmp_reg[14]_i_1_n_0 ),
        .CO(\NLW_tmp_reg[15]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tmp_reg[15]_i_2_O_UNCONNECTED [3:1],tmp0__0[15]}),
        .S({1'b0,1'b0,1'b0,\tmp[15]_i_3_n_0 }));
  CARRY4 \tmp_reg[15]_i_6 
       (.CI(\tmp_reg[14]_i_14_n_0 ),
        .CO({\NLW_tmp_reg[15]_i_6_CO_UNCONNECTED [3],\tmp_reg[15]_i_6_n_1 ,\NLW_tmp_reg[15]_i_6_CO_UNCONNECTED [1],\tmp_reg[15]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\tmp[15]_i_9_n_0 ,\tmp[15]_i_10_n_0 }),
        .O({\NLW_tmp_reg[15]_i_6_O_UNCONNECTED [3:2],\tmp_reg[15]_i_6_n_6 ,\tmp_reg[15]_i_6_n_7 }),
        .S({1'b0,1'b1,\tmp[15]_i_11_n_0 ,\tmp[15]_i_12_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1] 
       (.C(clk),
        .CE(\tmp[7]_i_1_n_0 ),
        .D(\tmp[1]_i_1_n_0 ),
        .Q(tmp[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2] 
       (.C(clk),
        .CE(\tmp[7]_i_1_n_0 ),
        .D(\tmp[2]_i_1_n_0 ),
        .Q(tmp[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3] 
       (.C(clk),
        .CE(\tmp[7]_i_1_n_0 ),
        .D(\tmp[3]_i_1_n_0 ),
        .Q(tmp[3]),
        .R(rst));
  CARRY4 \tmp_reg[3]_i_3 
       (.CI(1'b0),
        .CO({\tmp_reg[3]_i_3_n_0 ,\tmp_reg[3]_i_3_n_1 ,\tmp_reg[3]_i_3_n_2 ,\tmp_reg[3]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\tmp[3]_i_5_n_0 ,\tmp[3]_i_6_n_0 ,\tmp[3]_i_7_n_0 ,1'b0}),
        .O({\tmp_reg[3]_i_3_n_4 ,tmp0[2:0]}),
        .S({\tmp[3]_i_8_n_0 ,\tmp[3]_i_9_n_0 ,\tmp[3]_i_10_n_0 ,\tmp[3]_i_11_n_0 }));
  CARRY4 \tmp_reg[3]_i_4 
       (.CI(1'b0),
        .CO({\tmp_reg[3]_i_4_n_0 ,\tmp_reg[3]_i_4_n_1 ,\tmp_reg[3]_i_4_n_2 ,\tmp_reg[3]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\tmp[3]_i_12_n_0 ,\tmp[3]_i_13_n_0 ,\tmp[3]_i_14_n_0 ,1'b0}),
        .O({\tmp_reg[3]_i_4_n_4 ,\tmp_reg[3]_i_4_n_5 ,\tmp_reg[3]_i_4_n_6 ,\tmp_reg[3]_i_4_n_7 }),
        .S({\tmp[3]_i_15_n_0 ,\tmp[3]_i_16_n_0 ,\tmp[3]_i_17_n_0 ,\tmp[3]_i_18_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4] 
       (.C(clk),
        .CE(\tmp[7]_i_1_n_0 ),
        .D(\tmp[4]_i_1_n_0 ),
        .Q(tmp[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5] 
       (.C(clk),
        .CE(\tmp[7]_i_1_n_0 ),
        .D(\tmp[5]_i_1_n_0 ),
        .Q(tmp[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6] 
       (.C(clk),
        .CE(\tmp[7]_i_1_n_0 ),
        .D(\tmp[6]_i_1_n_0 ),
        .Q(tmp[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7] 
       (.C(clk),
        .CE(\tmp[7]_i_1_n_0 ),
        .D(\tmp[7]_i_2_n_0 ),
        .Q(tmp[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[8] 
       (.C(clk),
        .CE(\tmp[15]_i_1_n_0 ),
        .D(tmp0__0[8]),
        .Q(tmp[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[9] 
       (.C(clk),
        .CE(\tmp[15]_i_1_n_0 ),
        .D(tmp0__0[9]),
        .Q(tmp[9]),
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
