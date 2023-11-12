// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Mon Jan 16 21:05:32 2023
// Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/osm/Documents/SECT-MAYO/MAYO/vivado/MAYO_KeyGen_v2/MAYO_KeyGen_v2.gen/sources_1/bd/Mayo_keygen/ip/Mayo_keygen_blink_led_0_0/Mayo_keygen_blink_led_0_0_sim_netlist.v
// Design      : Mayo_keygen_blink_led_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Mayo_keygen_blink_led_0_0,blink_led,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "blink_led,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Mayo_keygen_blink_led_0_0
   (clk,
    rst,
    in0,
    in1,
    in2,
    in3,
    in4,
    in5,
    led0,
    led1,
    led2,
    led3,
    led4,
    led5);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN Mayo_keygen_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  input in0;
  input in1;
  input in2;
  input in3;
  input in4;
  input in5;
  output led0;
  output led1;
  output led2;
  output led3;
  output led4;
  output led5;

  wire clk;
  wire in0;
  wire in1;
  wire in2;
  wire in3;
  wire in4;
  wire in5;
  wire led0;
  wire led1;
  wire led2;
  wire led3;
  wire led4;
  wire led5;
  wire rst;

  Mayo_keygen_blink_led_0_0_blink_led U0
       (.clk(clk),
        .in0(in0),
        .in1(in1),
        .in2(in2),
        .in3(in3),
        .in4(in4),
        .in5(in5),
        .led0(led0),
        .led1(led1),
        .led2(led2),
        .led3(led3),
        .led4(led4),
        .led5(led5),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "blink_led" *) 
module Mayo_keygen_blink_led_0_0_blink_led
   (led0,
    led1,
    led2,
    led3,
    led4,
    led5,
    rst,
    in0,
    clk,
    in1,
    in2,
    in3,
    in4,
    in5);
  output led0;
  output led1;
  output led2;
  output led3;
  output led4;
  output led5;
  input rst;
  input in0;
  input clk;
  input in1;
  input in2;
  input in3;
  input in4;
  input in5;

  wire clk;
  wire in0;
  wire in1;
  wire in2;
  wire in3;
  wire in4;
  wire in5;
  wire led0;
  wire led1;
  wire led2;
  wire led3;
  wire led4;
  wire led5;
  wire rst;

  FDRE led0_reg
       (.C(clk),
        .CE(1'b1),
        .D(in0),
        .Q(led0),
        .R(rst));
  FDRE led1_reg
       (.C(clk),
        .CE(1'b1),
        .D(in1),
        .Q(led1),
        .R(rst));
  FDRE led2_reg
       (.C(clk),
        .CE(1'b1),
        .D(in2),
        .Q(led2),
        .R(rst));
  FDRE led3_reg
       (.C(clk),
        .CE(1'b1),
        .D(in3),
        .Q(led3),
        .R(rst));
  FDRE led4_reg
       (.C(clk),
        .CE(1'b1),
        .D(in4),
        .Q(led4),
        .R(rst));
  FDRE led5_reg
       (.C(clk),
        .CE(1'b1),
        .D(in5),
        .Q(led5),
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
