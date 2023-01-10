// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Dec 21 13:43:06 2022
// Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ BRAM64_sim_netlist.v
// Design      : BRAM64
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BRAM64,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30752)
`pragma protect data_block
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
y1KXSfN5RtHzlJkLoSRhm3oPnl3EWTljsMS+JTU=
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
