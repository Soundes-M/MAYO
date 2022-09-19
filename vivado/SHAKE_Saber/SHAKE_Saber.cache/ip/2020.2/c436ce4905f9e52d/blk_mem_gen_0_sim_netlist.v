// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Sep  9 13:44:36 2022
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
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [63:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [63:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [63:0]dina;
  wire [63:0]douta;
  wire ena;
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
  wire [63:0]NLW_U0_doutb_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.9043 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
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
  (* C_MEM_TYPE = "0" *) 
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
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "64" *) 
  (* C_WRITE_WIDTH_B = "64" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[63:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 48048)
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
