// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Dec 21 13:52:57 2022
// Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/osm/Documents/SECT-MAYO/MAYO/vivado/SHAKE_Saber/SHAKE_Saber.runs/BRAM64_synth_1/BRAM64_sim_netlist.v
// Design      : BRAM64
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BRAM64,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module BRAM64
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [63:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [8:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [63:0]doutb;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire clkb;
  wire [63:0]dina;
  wire [63:0]doutb;
  wire [0:0]wea;
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
  wire [63:0]NLW_U0_douta_UNCONNECTED;
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     6.966099 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
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
  (* C_INIT_FILE = "BRAM64.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "512" *) 
  (* C_READ_DEPTH_B = "512" *) 
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
  (* C_WRITE_DEPTH_A = "512" *) 
  (* C_WRITE_DEPTH_B = "512" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "64" *) 
  (* C_WRITE_WIDTH_B = "64" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  BRAM64_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[63:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
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
        .web(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30640)
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
