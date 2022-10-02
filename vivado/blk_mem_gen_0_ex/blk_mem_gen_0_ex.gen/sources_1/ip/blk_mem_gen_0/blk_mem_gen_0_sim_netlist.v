// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Sep  9 19:22:45 2022
// Host        : debian running 64-bit Debian GNU/Linux 11 (bullseye)
// Command     : write_verilog -force -mode funcsim -rename_top blk_mem_gen_0 -prefix
//               blk_mem_gen_0_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
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
  blk_mem_gen_0_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30448)
`pragma protect data_block
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
0vdGpCahVAFVLA==
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
