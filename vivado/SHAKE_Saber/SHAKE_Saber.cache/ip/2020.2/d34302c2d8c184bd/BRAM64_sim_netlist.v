// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Dec 21 13:52:56 2022
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
JI1fUaf1rwB/tsXCNd9zjGKmm9bvWABpYhe9sHU=
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
