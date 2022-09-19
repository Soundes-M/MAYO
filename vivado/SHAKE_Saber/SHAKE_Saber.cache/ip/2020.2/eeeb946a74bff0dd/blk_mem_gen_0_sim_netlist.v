// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Sep  9 17:52:32 2022
// Host        : debian running 64-bit Debian GNU/Linux 11 (bullseye)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [63:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [63:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [63:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [63:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [63:0]dina;
  wire [63:0]dinb;
  wire [63:0]douta;
  wire [63:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     11.16975 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "64" *) 
  (* C_READ_WIDTH_B = "64" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "64" *) 
  (* C_WRITE_WIDTH_B = "64" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 49248)
`pragma protect data_block
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
`pragma protect end_protected
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
