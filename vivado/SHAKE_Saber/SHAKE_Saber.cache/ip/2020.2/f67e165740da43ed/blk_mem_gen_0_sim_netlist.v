// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Sep  9 19:15:45 2022
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
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [63:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [63:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.50945 mW" *) 
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
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[63:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 48576)
`pragma protect data_block
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
MRU3B2CbVFVQXtd2
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
