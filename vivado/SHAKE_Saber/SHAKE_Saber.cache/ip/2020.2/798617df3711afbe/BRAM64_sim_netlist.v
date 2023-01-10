// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Dec 21 13:48:50 2022
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
aGfWP3GALajWvjzbKKmq5lLwtWxuOFEhD8oxIac1yOE5ZWPFQp8RRvEMykbLzhHOI9e0ny0R8UgN
QB84cWnGpbdbqipWQ7AirN1D4lPEG/isRf1t74IrUFWIUK308DssmYo59A28yYoLcwu+ZOmPdfok
vFaB9TJgz/G/FSAc+NZc70iG9embcGtjZDejidVEmXoVuM2IugpaTzDaELYQMQ++0bWPgPYZBPWO
vlX8sbBPEGyi6+UW7MAGwu9qyfob0ef9S81PCU3KgSstAt6neGdyF2jUtIEQpVGkVzcD71FCKzpB
LD1b8RH9QnryS9lgWDC2cWUeLgz/Nde5U7H2orOiQdWMITrTOZFHpgiHD4ehnjon2bibh8eqinHa
azW/eHxeOSfWu6KnDjCxSBvfuJpVFcQXeTcvMRwoa7HxwwmWincarYBL2TcnfaH6pQkwfsdUP25/
uAG+eIZlFf3j6FwpNnU0MpPmF3ToxDlgeTWmXBshJ5eI8e8FCXptnxkob7WKcQOiDX5Zwqv9gGPd
UTRGe/6gap3VNcDdkJiNqRlNrwHWKTaw8pckdoXSGEWC3pOoaryupAmjaNf4QebK4DUg2hZoelge
5MvymCV8TzIy4OE1kVxvunTwdccxF0jdsEw7eK+6naHdJoFKHqkJpJgjAcBP0WFc1a5tdqKdcCDB
XjvVkHkmRrTHgnCbA7SbERumwbqJSlPAM2Zp+hQraFp+fbjmB/khDwfZYHIzynznBRgRrM1eAH/X
TzlQUgBUamdjPiEAMoAvWG9obCEKfKC1KupZCdhq+1akFlGp86fzhKYzn5RDn8shXOhkrA3b/vB4
5nIxyFjDEwH4uOBtgJXjUy1QF7uSvNxAlHrI51dz+6HmjzE+APl+9M5hbB5z0pjLMqi2cB2FmLI8
f2hTclM7MBk5pa9vYwGSlgdSmOuQ1XQ5qhdR5PXvu33S9ml6KIzZVRH/2VAhOO2h+wMygBJ5e+dl
6NRWd+chAU75CgpQePQDIIx3GHZ58b9kHOSnZZOokHYgkJ1ZbxmGKMt78zNVDgqg5aiCm+dR8BMC
OXxlRZ4xEmMHEArLy0paleJowMTm3VDYE9vnBM/KuZnUGQzUE2HBdO9Lfd0KSxr//vI3cFOMQMjR
+3pEycKG0zHrM2ASpKF/6+cAsXoSNLXh5Zl8mI/M758XUbiWuLC1YQKWKKlTloN9thMbTdbOcdYS
3g3kRjx+2MTr32JDswLOUWvhibBB93WiuWrtCd6jQGCJ/AsnH4xbinAdVNp5jioGtiDGiIfYqKwh
LybCDQxlRwUjXXFfS6C/7iSOqStDxFdyPJ35b3Kb6UyMiztz565wTOdbLqvic78k41VhmWeh1Zgx
XYE6TqgkZLi97tzFV6BeJOhz1VNqbJKpjgvwZddBY5x5sQLrZH1by1pt8oQnj0/L5glYUMv++hel
W8ObjZVWYbN8LMhZaQM9neJMKCjLuJFgIav0tk1X+jENIvJ0HVyfc7EAfGJZOP/SQVCd7TFvCBXV
ODBQ1FFfXnt/4VX//tlIfTgR3Au5IpHfsncQdWHydRp/Pdf9yW5c6GUcDMPKycMG4HhDywXPjEYU
a+O8X72dDVInsbh4tYY4Nlt3NayQAvp4Ja4IcPq5SN+LFit463DVS9NnWrxUYGq2O14SqrYu2P7X
NHIUS3/i2SpMlL4heczHkNGZQx8lLwZAoTSga5MEVMK6vm2xAiKfSXheatka+xnQoXxQIV4gCkRq
2tV5SgUwPCQn3GnUWqr1V3+OKUxUgZrCvzWHegQohLsWF97MxQQqN2P3oDAClpEUTMOTd2m3FBSc
R3S5wOP8IPcr28hIxIXbr+07HXOxca407dLh9OePJtMEcjPC/awUbD0Vrq/s8XhPNlPbHTjsF4qh
Ikt7a6N1u7WjswfiuRaj09HPDEQ38TSdlsnWG2EPj3Fuy3/gLMmQUds3XuCkLIvGeXJQosN1Kz3w
ofJrGl5FUjKTaMMiJX7/+iuPWI7Du3M4C4qeF9ponDwn/7bxsEpsVD4UpBEnfUHEulsYBDDz175h
AOzZrccpwqOOxFBNr5LtHyo0LcSy8mfd5K7wNeZ3zuXX62Nm2QZk9vpi4li13tzw7tlv+HXN8/l/
loto4UNvna3Px0FabQdsgJz7jvqMwupRnXl6v8bhzkzYcEh3ZFkatjOuUAqvjarfu6yoxIXuKyYI
mMuK15yQ8DPM1jdbCdcJDeH7lekUHL7p5v7l9GuZ3OEPQsfxnqiDnIaU/pUhAeP8nv6Idu6N64xX
LVikobchJP/I4kD9RpAjMlQQolEk+s7/kAHX5EO3Z/q8+/9somsKguf0diaZkjPbTg4zrunvF+I4
jZ/mF0k3lz6Vh4xzbjxrJ0PtDLNkC7wWuAKGe3ko5jQStcZHxGY8Y8Z4he82DDXjDzSnWHT4RHBl
jhBmDF/X+jUzyRt0NHfldO4G7CLhg95KpRzDuzz1f5ViCGtL2naNYYbCwulj+D9oqhvwofBTlYkL
IDd0kiHB4+47CzSOaTgRuvocRdgG73QZlhQxPC9DSDfFIPRYDEE5Jeca6AeRi18IovoebOvhXaVb
aOKk371Gj5jAJazxXMaXx+iWW+yWTQdirmcGYJAIIVoSkVno0/LE2CKBATndbj8Ng8ufRjntui/5
273cZsMiPRhh0QTlcOJOLmZUwfZzajcGFZF5N8f1En0YWGItaV+LuP94501ScfsDQtansuIHMUqF
Lrtd3tBPEPWwQwppKliJ6+9zMSTVHDG+qBpAVtFPQCp6Qva/rqYmPjVmeko8sN5Lz7pOPJxASxXK
k0A18kJhpOT1aB44nD4aeGYuiLHucIKBXFv7jYQNxxeLr4h1eFrVQ7j+CYbg5ACMT2O4BNn90Tdv
qArtws5/T+JAWbvxb4M7oc8ophxWj6xyXTEilWVN4WLcDElSQ2RgIvuiKKsjxdkdGcWZTUpHkJOE
0F0vp4rC6o6pTIyESA42lTWtOxj70WpAzAN59ASXEpAhZqQDihuHKgtXazVa17/cEdwHnLhiOxkO
5N6BFGYG++/Bzlzifo8w/DylLjJieNZwO+LZYmwsMeITLhVBhw7lpyMwL4pcQmgCtgo37lyJr/bg
vwZYu1iXTyNqqlzU9UrYlt5mrUSEUyNDkENSY69FDhfcFYRZympwsfGgMkB/9eeAStde6ikCyWdQ
HQpi7xvj42laKQJIII5QejVjCchxNnIQmzUh7vx41RUreDWqgDh0OaCZO8DGNQTjbxQu1bdyRmLe
JNP1vJPulPus88FIEQxQMpTqtRuu6SYapo+ZQZdS09ZZbG2PnT8KUcJTKSye5iBe8BRk8ovZBOwW
EoQ88W2DpGhM4uD9xu0DDZhT79w0ZEpWnJN5A7LA+aTX6D4BHAnTGRC7vCxHXVXE7jFs4JUNAG8k
d2/u+6RL8dyRtc+v1neywZki+D0Bi0T5oMpptmMOQhc/GlV5f+essAGvm0+l9LJeop4ARg3cdm8z
IrOj8q3aGbolk0wM9JLej/jEjz2rtgWzJtSRX28P8xa7DQUG+2LEol+UCL2Yd+cXPvsXwc1ro6mC
qx6dCopkFgp4UnxnAKaV+yc/wvyvWlkBTwzvpNa3FFSc5Zc9qVDgii/GdG+lwSlDqApriCiHr5h/
idob7jVDgCyLVejCQ3i88LUPABqGS/e9N3VFGe6bt2uLccwoyvBDA/3NvVSpcSgYF4E13j6fct/O
AT7SWtWBP6WqGhbF3nEPGbVkNGQYZT7Kcxq0MNU2orewQBn+16cXQwY5iFb1nA9K43TXEFaALLBS
2HyuIzfGLTj8V+Ai2j3PDySfH1MumHdIOHOhUb6AuzwsDUt35icrCunI9F35KZN/eQEH4126ZQD2
j8NxoEc9L0T5js3TNcMfhrAPmLc68PL4Uw4UGFoANCS2ESla0xD1/4c6X2Fki1SWJi+3I22yh3oV
dYZ6ieei4HT4XAijsj4ZQnd4UXQf700tIBLkiaIJl1gjKtD/7NLxQnpPjNgfio3D/Hil5f6CxDQF
DYJJFtWw8IdK0jbHKz0yD/5Z7cVorZpx/4+T2YJgVocGSteBlanwWAo/4ChgPgx5BEgTCELPJ8Pu
U208n//YW8HX3Vdlj4cW5P7FB/JhMbelhfxDbXfaAuQiiEguGwIW+6uZMKXrLjjkkgvFjYLa+GJV
ueYLaXng21rm7fPFglFYKhoNG+VjoRKcDhBI4mVlK4ZM6L/gcEAlo0jwP1Xq5LwW+DHNvhNl9tPn
69+l1oCWqDBGuo/jxsstWZ7MJvUgDdME+eE+wLwHe6RiMyqSylNuDiCxhYBm98D3uGcZVSyktH31
YmSr/h92XL6z9Ee6Qe/fCMQHsazchuZp32qU/FHiAP/e4HD8zrG+C5tTuggE7/s6T5UDSTmzEhNS
ExCBTT0tXLmIC696/QHxDPJhhLZIffOWJAA+4CwkDNK+HkHoGFMC8ctPcBWa3gV+XAGgHT1idmES
KmaKurt3YHFmwtR29cCJyGZkvUZSp7oCjZ5kGJV3LenLMRn+ZEohn0IywBHRZRVJ39FdMt8gZSCZ
M4ufro5H0GDwCaCiiG1aqLmgr1Lh/mMNiOvDnd0c/yeMBB5ZWWuuJGh0sWYIm2Z1vWd4HRKh1lxX
nmnf0yLbQN02Nsjzgsg2/OFbW7+tmF+rVLkufxt6qizubw1qTOi/rVyda5APkTgCIbQ+Xjrp9TVl
WwNejDkCMuxja9IyIQYAwkPQx7J/qoxwTYoeG2iluWpeUkwA61dCckQxA/ymQuJMVkF18E3LCJBl
5nYhsb4Gc1Fh5XBuEpvhtSbhT1iJl+/mlRG9BQ2P8sbMX/BSxsUs7LnL3iu9d9/2lfbcuw6pCVvf
azKFIeonY8mU461w+ZqgQv31WSMh05bLO4GCyUxd6RJIck+rdnTpg+tNgjsJe3EMO4LYMkJqrwdh
8y8V69fp7fl45En20V5cXtIyPxos1UIavvg0AZuDyqT73e//S73qwOgbDc4QAC86t7VUlGqtU7m9
/8HY1cwYgqYQ/PjzhF/UbKLC+BSdbYhxepbC5LgD1DJq9Dn0v/Q54bXvTu7NKyuyOyBQUPW/jhbo
4TLsdfEffoEQ9qRotab0H0Vt/c0QrlaHmmD5f3cV4IND2dk6JJDZa2b2jLvIu29YgxpY4mtnhE7V
E/GuyPP9pj3Vb3haUClLFkE0wZl0Bv//j170tOVJad1V8e/9gaZn1w8ZizYJ1M6YsydSGP25kEzC
VlW1D3QwgHIR0ab5PllvUR1IezWpsXIRR45nvZ8VSpV+GIHFJFTyeD9owKyAVNH3oNhznyBG9Y2r
eQUYhgR3gxzBfQCCoIKyQWxaPFDrLG60guK8MkT3taWVX1muKa+RHkxgijLITpToFk8cKqaArkOs
fMsWBb5tKT3dAploC5iZFjND3m6gQBRCdjQbFbE9b8Hq5lDuzgTf6fBhTw0oz3HHV1HOIipfArzb
mWfUszbwdKYZQxyjEdo+6C5b7bPDq9srya4aSJB7dPxJaMoX/JOW9wkpX+hih0NA49KWkLJg/7Vl
49IVwwy+xqGJkbrdQZ7eErwPGVhk010eBECVx9EX7iTvuUxy/U6MCd3QyuAGXrn/E/SKsZXjGTet
B03D54ndj57kJD/24S8wVp8gwNTQGv/ignL5vZlxDKlQHBHJcOI5dl49hDSL7PcR8bbebNCcjxxy
DtZdtKHRUpk3bqp4Fg2p2dLjeCP3s475hKBIJ+ZN7+B18BbtBHLAQI8eQcP+khtNZl4psFF6Uw9L
0N/dg6XPEW2b362ZbO8hmxj42auMiinfmP9xBogWkFyHNdaKbAHUgBN+WORBFQBt4JoBBFfoAocr
Y9piBsk/JpbumZO71+SSZh0rBqASLPo+n+hhk0573ecpNYv7n7vPVONt4b4SiHIKivu4fk29jLjn
bYHfL0pw14TUrerEAkTQCZl6N5IJDdtO+TF9yw7iD5UrTUI5tAHM7Lqso58Olu1Gt5o0SflPv4XK
AUx87aY0bU8aOYsTbz0IP2iXOQ2YNcLwhlO5zM1mc5EuLm55g+42VMwQBJwK9JcZmdiTWbywazDY
uSm/8VL36ShWR8rsaVNRoB4/WGwAz/OeGuKriIo3qSw78CBq/bsy1fFkhcRV/i5faMs85rwenatn
+jraR1otU1pzbNjNt//TFrkn9u4K4nRUXZhxAvUWKRUEWc2sae4nDtq1cHYVgNy/tNyATLdEYf8I
O8z/ICZYj0a71yq05iJbOcK7aA7MNb2be0smIaZN2/adcM1e89MsCBwh0eo9DmwHbx0JJxI+HVF8
qTbRMc5PKJHCv+qk7eywa4cMnoAb4xikakPUEcZ+LlRuMw7cuQVheWfwqZakIhDz78EAJs5uCDOl
aMlguNd9x1MbzOyfJ+j5d4RlVNW83U1DpoqzjCtjndVQPCdmppypmfzahWoZUQ2DVKUzlhmne1p3
hgd+LmQBYJzDAAl0ClJJI5ptA3IrSjUIJ3/sSN/OE9B9pkSoiU4VDlmYSGSDjAr1ONg/UX2tWd5w
NeFTfPxzzXScy/o2tZ+I0eUxBtZYCXzDb5jiZjcw+76hKAVlCLS+JHTECuZpxs79nY4w9zOjV4Q2
rKtKc1TU71zow0gY+LZ/BVrb35bx0qn4br42QBhNHOdyNfTW1l9C3Ky8nCQB9QAIvBWiKzWkKoFC
aDDu3EV+1/8k9gncC5a9xC5quf0lYRJCm4f1U17bo2RhFwXQjTTRYyy0Zh3H84Wfsze6+mrV+MHz
TitidzZSWUj1sZdhn97BxY7JCDbMPVnaD96n8jVFU3/DCrvwHygF2QSHFA4YE5Wg80+0JQhxn1QE
XDc1/yhix+yaor0vLjChlSX4M20ruGETgirG/HuEBA+s21bkYq1Y4avou7bMUOIMvth6c6JEVshf
xuXTZcQ4fXqtb8LXTp2Dl/1aTu0AS6/q8G/7hVXrVyBBL016b+93P9OIZFvHnLANziez3PwMmB/a
gU1aJ40TnibmFR7h40wZ2nKnSfmXQ5UFkxx558ulatyUT7J6EXkvuua7IwqlGDdieE8z8ieyMjfx
qYAZC1k7OV1MhJZCegofViyJMY4sRFSsAY8snfKEIMOEeQLW/JfTQm6sCjOmtlY/ByYvdHUPMFuX
3pFsSOlMY7/FNvtgCLQ5WxzFY6OOkJ3RjwISxxr63Rl3Ni8U00fwNNwvveQU37yib6kSNIeCrrjs
gR/JWUbUswCoMqZpx8dqf7pJq0BNBSyEaugoWnBhjLYdheBPsUwYtdOpbDtjA5Cupkg3u6B9gxY6
tZfDLnd1kVxRfzmh8RJTUhJj3UQALt5JujNwtdYcDcbryq2nWlAkgkIOcO2p4U2lCNSX4Ra5Ml+Z
MzcrAEjClCDMAmghAmpcdrjpjMb/z4JFDBaxnsXbmCynPYVwLIl9P45d2kOqyPdjQnn52DKalPsd
Cqqb/yFaQ/i7sm4vxOBLMsGnW87Oc+OjcYsc3aqtnNdGIRMlZagzv35JcJRUokSGLjjc7qPTiOoW
W0hPaGr/NTMh6xMxej8P5CpkOGyJKF0KXkhM3vs7vPZEquQtRlA5kki//S3bhwBq9fdlrVblUxEK
6TtuMKlYHYiP1goXtA4AHghqRg9LDEMoKqjC5m5zqKBEKJTcSJnAs6Z1jKygXUci97AcSQEOMNBv
qCVwUr11DdrgL16MqLgEkpSe0Q5K+gjmkaIsVwUzFiH6NUP8OUZDqSgBcvnnMW9ePJda2JixeF24
y7bwREZFVHxq87i+lFveA237v02L0ESyjKNMgqThly9vU9DAVzMiM/xXdfQ/AGxOrAyEkbCBhXFb
geyet91abBlVy+Qo/2QNrBfrsSrjow9VYeiGzsoah9l8700D2sRJxWlt7INBR3nBOlXMSaitjvIp
p2FGI3MC/YskmLE+DptUFzRlHo5wU9HaLnr1CJj+kCSKWu4lpVe7C3+Sf46jIGOEM78fQfIhLKbO
tmz6UDq7zFH/YswbjDy/UqBDoYl3tX34JeKpdSM73fwsju10UEKs5S0MB8OtC9UsFepGXbqYNj0Z
1q2nGmNsmGX177+ZLer+jvJpR8S+309D4DB4qpu5bE6NfXvOoFBtSOVRxdBonlRtQFg830oU490s
Fq5Uzl5ZUYXXnlDe3EraH1s0uym2vZubn9oGskNlaDdCq3wRkWXkBMrkElav/JSyvAJowgglC2JF
mDxTn/DB7qbhyAwPR9xGp2qMRuoVpv3Gchq/76+R1r3COSfflGUHd4Yzqm2rGVkWugSM3xAvXGBK
PEquuBQV+aZNo8XYea+pBJVKfBHvFY4QuBGParNa8e/1sUPi6V66pe0FRyJ1LF5K8G4o2Ouk9pRn
TY1MpeeGPBtEH5rfz+vqZ+r7MqJbhHJWgjmm181xKgSBD/LaI3HCTd+AYVqfzXJrAh4NZwKBsBKZ
IrukMkYBwduLi5um4TwJ2qU+zVxo3Kg35fCeNGtkJ1bAAjQL+hHrobcHHeVbOVdQAoMY8/x79zz1
UYzoHFJ0VtrJtWgJjHKfc/sSzKY5/IME8quSXgOP4hvDmp/PkCIAsBbuk3vs/qWk/FMtGlept1vo
MMQkVlJ3Atd2G+3yee0b+SC4D8Nm0JzmKYsG+ISAWaQZMSKndRhp5Kcy9b0X+u6Si363Ghiamb+i
YuQbNpEN6LRbfNK7Cv03aVXEE3UZ7BNbI5UAgQFBNVl6Rhy/7aaa+xZkjxtsvBQnpIX5bNG/sUE5
fcEA5qgQeJTj0BldxJyDgqdd3290wZ1sHeG/SqhU47C/6UaG6yTTCfBxWn3XV2PVX0IWrsAblB6Y
Y7166CVBLjuXkgqbSh6kXAqz2QvOVsj6JfzRlYRoXJKtSEr7aPwBI6Xuwdzl3ySM3Bv5YObTby2g
PsgjbNVmMQ6GTvlmKVsqJtSFt8Lmd01IOHega5nKsEAvYon18UZcgKq2sy9GHfj1vQHy8YtlQu9a
FurGxUVx/d8D/L7ISwuSzh7WrwLi2BSdJ1m0+Hl+/PwyEvNIBkOLvPIQQDllg3h00Izn0cAPc014
kPR3fEGDheJn+ModInXRm1m2Js39QfMHinagtoxXVMJo5uYipBz4a6qGPoPgB5rSjiyDHt5GtAf+
pRbtB7dtgMfjdhd98WOlBB2vxYiUY3MQ4bxsiBO6uFxiFmZg6/MmDhLv6RORJzqchDzP5KIZDnhD
z3BtmFRbP0QR/8XTk3AG5uipjslBZ7ZqeG5OtzH/FSjRdafU3bRTmcfPLljfYY0z61ZqgTAq3q2V
j2X1u15m49FDd5eUdYoim5o46R2H2154cHr320T9vpw6ZT7fA3IwrR/zUDKUvMDPwFVoXN1NT7W+
wlSep+OgYa57/HTUVFA34ifI6lhFQHrBjBNYt3jPX3XRlApbTrmstentOrv5WdTyLvshKNiNruw9
cPEtSPumcO+wo7xYWJPjkYWrk6pcAqcW4K5P1iMEPJ2fpcA5fqeF1iI0wvvbC9uFegJM5Kw2vXgR
siK+uwiqTjUbcjkDLmusTyBWFtrqel/WEJc5MGBG5Zs11GhowET7zLy1q75cgxHbPo121vzV209j
O4t3FWHSNnYKGN7krnoM0DVywRvDWer3aQ98M0IDnx376G7IOYR+51CCoOZAUddK0nrF0CvCIrKH
rrLownG+QRPRYOGF3tMCLU6s8BoU9/+ehhKcwGhSpbpyTqZsQ9zGgzTmkXC9CNJksttgJc9p17R9
c+r8+Enat5qmSMEz5Pc1MbEPo1mIs40K/4HG9SRX+JiaMssUf2A5jjer3aCXveYsmFp2/gyZymn9
vntVO+P7xOQaqojCusO4mAGHheeuyO6KeE8RjKgasddjeTSIQYv2RRC0cuTQjQqLjGdjARf/V19g
BiPJush6hTl9/fcGotpSRZCWqLv3ypdxrpjUTjhx41KCfHCovI05EsbKvGFVP1ERAjmhUFXEQez5
zRp6mxlv4NhrddLaHUJ9I8rzw8f3w4VNlXVIIvNrJLsncLC/J2+tJUzuvVdvNDdsgN2SOwBGGohK
E/pN0lVUIsN6J3lQTun53p96ujoLenURWhvwFC79wSD37j599eP+ULUYXWx1q/FaaEOIzSkk4sMj
PYBUdopA8JhjXrKPTQGWC5YfZN355Int+Uogbhf5FRFuGU4wF9iHxKWXeOfJuP/9/5+DEsSzjjId
Oz6xO2XJFRJXgivnPH2kGmaYUAt9ycRKQwUtBFg/48hRLcd5rrnpx8vMfhupD5HGDI3Mz/7zk6bZ
i1705/1balZl+12c8fvHh4YZ7opSdxx4V39Vvfrpw7urJPxwxlFrg0UBHCCUMjkyVOeFeZda3Ftd
xPNmRRhzm7odDNT8PsqBG+1lnAGEdnGOs/2WrRUjUj7WmQnDS8jydQOWXmnHHsBboWUOYjDDwVRP
d1tNhts65njuvbcJystXcDCwZfQ8/LKsrltVl7N5Rvw/gKHDZg/hUFGQNLE9N2exfX1yi54bHU7l
YJdOPwYPewcyM8B8SDs73ejNU64P7ljNNO1jypOLU4ElEYz6Ljfi/eeaZSj4vFgSD8o7VRI9zSyA
392FQ0zbzrpTQOzvCNILtQOmKmmi5L6Tuga2rZeqcOIIpN+hOdidTEnbYLd7kk70+TU7JIDSX8qg
4zyZXFxeXhoq87OJOwGKkSkPsxoBpvrF9fFasAwWpL+vYijPpF5Jgx7rPq5xENdfJjWzQxCMwoPb
lVBfmR8HzY2jCGE3ZdvOm6Sfe5Gsn2Lt22f2rt8h6u+wCkeHWX5lXeEh86XahXi9rLA7yKX2B8mx
e1R+zqoxWn5mIZh7UFISmCMnWDyvZkZYC9Bx8yKhgqNt9lD9nsUZ7ondwP8BDkvHllGhL3kXznHp
900QVSR30Un041ohFjyetFhreBm4lpCH5+iqSZZC1aFy0SLt23/iWSmtTLQF03pTkhVJ8YmUPBbX
Rzq/n+VI8hF3bdlkZm7JoMxHTtFbealhKIZgoXao/23YFGKFSGQRmHbCyicOnQ0Op2OurQPOZAUv
XhFtbA5bBWHhoUAj75413g7785hC1oMvv+FhUk6+5Hqf0EMTkqnlU++g9wNIwo01ZRmA3+WANjS6
ilIwSzsNnUwMRcYp4Fo3a5pzO6TSzmo6js5V+0LzSBomIzaN1wDc98ssCtvRMsOBrjgmS7X6gToE
i2Swgz0RMkcy/lnOJ6+/rvu0yzl8Pqsvah9FYVXECh9qy7fJ9k6rXU3QIgdPIMb2v9eVD6ytQCQF
5kEowNoG/XrGQUcX3JZ0YOX24fPlp1Wzd6WOqA1PPLGfx6Do6VcsvvRtwtHM1l7/sNs6I6ufzl6n
cr2i8VUozQXSC1Ur6tyczqPrGi2dIS2CnoGCOJ1fg+Kj0bXmXdkQBg0wDCbBguPPB3uC85DzIWpe
xD+Nw07a/locIeXAOinSB//4chL01bIIGdoqguK6jbXDPwL+CTosLAKJmi/UwA0xNnvsJXMb9TRY
drE+TJ749+gtFFwxpASYzxAnoQJ+vOZr842AR6Gc6yvg782dAqxbVkS7gz6fR+po/S9gAtxh9R4C
+Cy/yhhRvjAjaylCHIR7RMAVfN7+rphHFxaxA8y2wzYlxmndfXUtA8VmFvQQEvFUMu5nvZJ9H+mT
VOmyyoougpNjZWMWkpkXAyLLuvNxaAvERkdmfhwtPd/oTBt/VVQD2v7Q8OfcJf3BpnpITwYhsex8
OIwMl1CpCvZjS5TyJh0cYezxbqF6ayV98oBzKjPmbFh9Ci7GLlbhqvdaFLaV0ZhhzVeV6vBIqZGI
M45d8MpLXYfM/BIlCpkMf43n4JntHEkmENOOOzPuI7fnAf46Fq8O9oVzU1toDdHMzKnnkKE9xz0I
dg2QTIP2XSbSwSF5WtchJOAcy5ri7fRns/bSglAS1IsqV2uuEDgTpOGWe2iFuhmbNxh64EjO4Alc
W+OR7/U3OdfEQmBulRbjJ5u8HfQg/1ZACsT/0KmTOvyGrC4kpZWioy2GRjRb2Na3knXQQ1DpmJZ1
ndPbI1Tvakr1ifshAPI35ZSASk1FoXEexYpX0B5aaJzcYxrR9kTdQRy9m6HCGZKE3Pi1lxiQQsaj
AdgGqFxdvRnzTw+VBvZVlEvUPgIiFVy1oFr+Kxku2RhVQQUm0xw+Mtk/BTRyHFu+FG7CG/QiRkcv
Uv40s+gxU1/e79SU2pRTvUZox0ZLPlk5iseyQe6zFH47PUXcrGkX9jao/bP92BRpp6G4rEUGuag4
Z88wuUnqiECghayX+phq86cd1v7F9dblEwS93lp6e6g0HrYK2rHaiH40QhHV22IcS8zDoGnGaS93
zGe2bC0D6o3gNNnRyN2NjygBU/umFNMRpZWXtpxa2RfQ6mW8+FYbBwu+5NVlRZW4l/nJsk9bnzA4
7QtGvhz5tWEzWGCbxgM9GFGb3LpTDghuSy2VQyTQvENFnbB/dy9t8SjhhzjjBjL8pBs4/n+qdJAn
2a4/vRhmefVBH2q6zJKQQ1WyyF8TVzddY+UnO1DrdGx5F5qDX+LBqQOSc2tKsqhMziAQd7Tm/trP
tpLWEF4LUlCbCADxTgymOvLKQdk4cStsZ6Eb5nZkzlD/GdiYziBbsOQl8QkK0mkDRs6hs4Ab0kKB
vrBr+OWl4TwvcaoYwoGlda1V0wUtOb8bEnWAsw1gsacK5VUtiWH/whC2TptVeIQybx0dmjEVcSLE
pBrdQ7dSRsu4LjLoqCZsgQl9XQXME49Av8A5/nj6nR6UuNkIXE43wR0mvkXcEKiX7ht5MeRc80dw
qxwpbli5YuFxPX8HwyKgbyEwtnueSXT7lgcJ/eLMbkGDvdGbUD8bYfcMxYdIW1WpSNqFZ7IU/oGK
iut9NhxPju4wDZdf/Ju9zpBykH7Q0+2g+a993DP/MAQoeRBgXsZeAAjKlvjVcQ3jBvV1MHkoKwKZ
XzVoiEGoxe3C+5f5mr/GSbqinrKyzinqNHQM+0unUpmYZEoXlVHPRpLuPPQHgJx+9a3JuU1JIfOv
p0ZxsOI/JyzTZY4fY3uIfNf6OwsWZ5UlXQddDfBthbkbTCyjzUKidW40znHPlLKSbSnEF5Fa267t
zePy+jGZ1nUfpv2HHUPg1FSURnen0QGDCaKfcqX+1AA2Tf3yqB5Ko0qH49HqZbrP8iX61ijf2ofU
rDquAVMPa/ie4O+j61MZP8gZrYWS+GENQd3KEM7HcfBeduWVei5XX7v7rpu9DKUOe0CMIkSNOx8c
qhJhcXTd6DmpmE7bLoVEX4ChJ/BtOWF65YDmBBnCWoErf9YyyfEi/jh3fGwjtKoM1qQLLnnTdTnf
l3BA7zKSv62FAVCg7QBzc2rvlZPnV2mMBzZrtV/GPMfD2QjqBi277tbUaC9veXTco3xWZzpe2q84
e8X92EvufocHfuOXnduEt4JGHeVuqrfqWS85SK67uzKZ0KibKIoq1DxUTBLh+nOn+ipSMALk+Ffa
4MEUN0elmHQBlBPzAUIVS3HqJU0m6QYOFlywVOi4XUDsP7Ydu0xQVofhmZ7fXvNNIe51noiDxC+Z
IqVR7UV9iRCYcI4j5dpwdX46fDGgELxglnbXGgw5gtc55LIqIUCCCPCPJACH8xsJMHmrCZc3Eq9M
iMl/LfiEWFBIX4xFrxszSgdyf36hFQaRMrntJ2E1kexiGmVXISwiLWY+6FWpv5NfEzqSIOwsQIaG
iyiWnMWMb7AVM4exMOl22ICyKRorPYsBetxBfis8E61I0CEzJvkic9lLfjLX8Udt/KgIeWy6rP0R
x96T2Hs3WJvrvQXO6ybV+koSyd5Nt+qmBDYdgzOr8eZCLux8NHoHib309/qefCWNje3rjp2WUrCu
PXPZU4Eya7WpBflVRWeClGKWN53zuSygY5eQ449Ndu7qIvUbz/bqLkB5Cxj/n27sa0Jkb/ELWaau
/DbTIstMVSigRp6DefTwVCkX4WaQ/DVS84cZFFwL739NOrPBHn90Hz9A9wrA8a7dTVsIFCGn+j6m
PxBLJFFZUJE1JAJo3TgLcsuVJE8yCBEzy5++YJQiBr76B1JLQ3uWwD8Xw6sZZWYfB8G1NqA4AxmG
vJ112WDcEZifCiD57zi2liUP6FCxsQSBBOWuflWrvHX/T+S27RDtf0dPoVSEd9DnIspYYW83XfTr
323xOBJtPTt3tAnqw6DQVGuJzTC9s+nzbP2oZ6kdKq92UnYcOY3le3uKKu2mkNA7tekVVxVmqwRu
ITr1EkZz5mInfn6uNLa/8LPwIZgMySrb+SEHI9MIngacT7Jfne9EJ/kLJnjjRKYyL28st5KsRZoj
1E0pPPFaPfSyhQaVnQod6xFdCp4T7fIFW6hD/ikmK6zoHgUW4fR7Pa2j+TjksObvx4Ffzv7jTlDH
1VK8lIg7T70fa0tAGJLZKzEAwTo9ODUm7EjOvDPK8H8qVyPKqtjX43i+arXky+2p70UFbvk3qVSk
+0uFxZwAr0d+ip08EPLM+tigdC3OyWn/7V3FvrIdwUa0hv+TNxd04W/hDz/sQ1afJ3OC0gKO3zAf
TWwDUdr82jmAE6yxbpNX3rY5eoar4hT8Rox1IDek4Bei4a1UIxUEIIZ5rhdIq74pTaBjVe2tbNY0
kJ1dc4quIJC5OrBwD3MzDJGsGOu4Ymr17CtYbE6E4a4xEUNLWRFon+0EzsYYwDsQyag8Hz7yjnuJ
RRgIz68+yYukt0olKFeVCEiREzEAS20woF3wqnExD1pyfhuLoRYi7er5xz4KFUVnrWRLO+pR6Umm
GBt9b8sG52WsEmn8Z0+BkEzzrsFseRCj+gGhz2QGX7qxhuoG2yElH82+LXfTC9PfUzlqAiZ427Xq
dVTpplg67IixYEJQUoWV6gZYoHNs+BpJFkFWv9DwMkvAs0GQ95FpoFXzwn3iO4LZIMo6vHapNyjb
swxi9h5r8tNgqrbqOcB9zXzgu4oK9m2D5j7RDQwBnYCHyC3XCos1bSSxwRKnX4c1UhjFriYhgM3i
DcL/E6pQoeBN9EfOcAF9U6jwPgViovs35+9nA7aeqL6EjX+TFnYuTeDDIf/NPoINGpQmid/5V2hP
AbBrKJt+03qv9uBjeG/qjmeGzDbE1DKHXu3D1E1zfYY9Ti3bYB/juTk9mBLdqMCrPoCryCUkqoV2
3MRu7X7clG9x3Act7wK+YHMuIVcsgmnwzO9CKadTeGAdCHSz/96iUM0HqgpuLkpUSp0dW5wkO3HY
gaJa+rifk3MiILU+Z9BQpNOljEmYHkF9jTW66hemKuSQEOPwD6mVVG7ev9t16/PZ2rDPlmSmU2C3
bXaO4Dd9NJ+XffT444gc54qtuaT1DLMQ/3/00ouZPjjvtMbcnviVf4cWXE6J2pPtYkTLKtf1hjhf
6nMvz6Wy5rs4Rvrw5JoG/ky91GzcCHx+yUDLi5P9FO+iHoE/aSBDE4S3DunbWymjI+2ZILRhml1k
t929r6MGx65S3FpcKlFLfxzU4r6w/hq4xxJcOZ94s46z3x4/8cJ9CGFoS8OyC9PBCCtMv7HQsBa5
Som3NYerrfbRnJHZ92uuOiglzNGNYHDvOoEisii+5Jdepc/mAm4T1IDVWdvduKIIj65qVikvoVHL
SyD/DBDTzkjFofwKGH5MRHBKfNN6Nlr9WhInkjRTcF0DVySz9U0StFkJJzY7PzjqDWncEvu2cDyg
tfnantXF6EOxMdKWr8o1EMTE/UFHhRPRiumCoYqhaESdvqWVz3JtOAeM89aZeOpe24dxf6AP8zA9
k2JgBOHkk/u9vuzYwSXyKVfaENUW0Hm5krHXwQihnE/gSGXrczhAle9Xmgquor3c4Pip/QaFrzey
tojT8JkVTpM2JLhRqXoev57L772AJZOkCu2yoWnsRw8ODWR7wqtvR7QThks9O8g0Vu9uxgf9G74i
C1CKUaGwN22wt+yhYKsVO0jpSMoNts8NQAMY43RCSmEkLL2ATVOnyMmSKjd99wx5TNpFbyIuW6Ek
1e0nvLLi5icWRiqgC510eeqBgk6uefoSYRu42AQ0f07b/IiHK3twutv9uAb3tCdkk/9+dPfTux+r
/Bev4YM/0pZZrPrgz2sXBc8K0DinBuT12RTK1hW7voYZK9xoV/QmNe4Fnhw5B6wPj+5hnqNEejOb
0HEsQ99qe63SrGrBEPliIfG6lr09GA8jJrokw7V0JwG5OvEmAT3Vg4ffEvWPq3v++n79Q9mo+Byc
VH3aR/sMfQ2WvfHNGyyLruOf2swGuJ7KT+owB047OtjHLkcdNsS4gfmS8pK89MMOcSH0aXQ42atm
eQa2bPdIXj0YWwOdriNQ7PQMrtv8+xRUD9suwaoxcc+F08s6Dvc7oHbplRene0FKUpJQY7pBWc+N
wGtEydY+TbcDrcpPY9INbR5xLGQCrzIGedwixRFfNNDeQ/LGy/9Yn2tvu23xMPVvKSUR4WabcRD7
6qYYwrTsjbhQ5xmhRtqLFD5K+yqGYZnBVuTEMklHZAokzYKNdEavMGpvIN81i2JLsjccAT5O9YaB
hLEGYTVjqzaXkjIWXzQnECDcXfMfNpcnUiDnDAIZ9eIF2rEgNmzL8dsWQyy2XESV9K4aQ+4xTcJj
sJSZnoQv9jKdp8VBIousqKzZoScGdmBbicYsPjnRCX8wB02eURSi5l2d6Z2RN0NqmhHUPelTHmjR
i/piAYR/bWARSBXeP6MIasfB/dDJ9aQRB1itUj4YyoqHM+UOOy3+b7S/S9LOiPO4udsjv/Yliz4L
5pYnR57/Uo6Ea7bQuuzQEvYGWu1yn0XYFDSgzPlFPrWoDzoI42J58UYv56hbnnMPF/4w67uSQsn2
PMpctIdrgpK1ggxBnEVWqHQnuCK7TDFVqXtLV9qhrLd+YSfo5aj77jOWZ5wTHhzkzCMThGLtCD8g
kWtGcVIJ6A8w+jPjqeGYF7MMxXSbvhV1+gqGlDnJl3A5QriUjge2tgIIPHUx76quRIvHJdKaz98s
xhcTep8Y5v6gJnAYSfoSsLA+wlj19/HfJLS0tAX41JcFO3DIofbGOhsjoQVtWlUTMzYr8kZjiouU
Px4j2WvIqnX2IwnxeOSeH5+WbPZ57DdkKijRPH0qggmNJDZqfvlwdCpFdQJXNjE9uCKAeP6te7CG
6BmqYueYVmxLJmn6vSgPzTq4MUGlOM9PLHU/cRKzVp0EZjXHP4R7oA/7+aGtUMjQzY1qWw4WLcNE
+dLYfGUi1otKYFO70g/WI9WRCc0rxA3/7GAOyLQEdrDwRuU5QkdHmZ9gVw6U/uFIUUqB9I8UbkN+
lKjlbCsccgAqJe2/AO+vFKTo4yoZSevwnkc+BNA9+0bD2vzkeWXxtGN9ZU4CllairnShRhM0U163
YLvtmwQNc26JpEf1PIc27FN1tMO5UpcAAWs2ilYlqyk1vbnttfRbuNepxKe9tMGaIl2w39rX1FtY
/SrlxRe07gtHoKHv7i+6E0QgVkBXiL9N/W6WZX3sT02ijylzW60JXzrrIN7aLbvVTlDAA7UH080T
ahpK+G1spWHZV62wNl9qJ1kOCJsGE7sY/nTsB9u7HioeYRvsF5WiiVAITsCcu57QDPd24gdCg7hp
AcwX7jdvqjZgYL/AMaHlVtUp369r4wea4jImNdLOkH/ZuEd+WdkPrRsm1eAuOeA1SwlV+zbCc5D7
Z3cyxMRCxPs81l0HstADhTe96HJu8MR1xosCSWddndXmCxMhReEqyUIXp9kmQjKxgh5A5/p+75R1
QgXq/K+Va+ndeqfcHPyZ7nL+pmoOB18hCPrmHpqV5lab7jDEnlDcF37Wu2YKomFwwKp7t6RJ/Uio
iKsx3Cy6DYXDRxyX3wXR8sCcTYFMkgRiYyaVKkLTetTv6ucNjd+5f1dQnaG5RT0Yrw1fuUYaZqoj
T5s08GNt4wb7TmMXNcM1XcthsUvfOekoLwaowHk3pfSYpkMgsioU1DORU102JxRAsI1mN/9rbU9u
Cmilf0jitEdWij6k4lsrbTCBC/5W/U+zYAuLaaOSkqv949vJbT8m6R2qjnKh3XkC5WFsY4VUeaam
79rLrCQGFoN9jxIaOnCCwK0f3LzkAG8d7iThEiDQ3bkEwJOZyEoddDydflcQ4SKB9dE+j9P7xoMV
my++nfyAy//pvptqdc2+znRRvuzGMDf58CVheiyaO1vuYJ+ceWdoAaYGXwOFnpGroXRnFT65UG7T
EbAeV6lK+abxyn6oTpVqf2Yl2mESMW5WD3W35xK+NfHSJxNiECAiNDFZpYAQRY1DK09kQLZfxX4T
x+XzpHBrUZ5/LsFva2JQ951QNWGdbNYTr6EzBwGWsUiw8M0fRYN3Nykz/RLN88ql61ZfY4KWCYDq
tQG809zKw5HC2RK8Q4Me0J4dfJdiBpRW+v9kUFLF5Z5gUjEFDmilrnj7Q0LSylewv4DaPrgTSRzq
cBjFK7cgxwdy6rq7uu6uoydwSpsfHxFxpOvtNpZVhfMLd/LpcFrAlWdyRe+LsZiHzG9NOqbr7Xp5
mHIEXFKe4vOgh19AAJmXUsg5bzlc+JausZqodhJ8irfA0Lu83VGjVO/U3RbT4G3un/QI2ryRRGYJ
I5wUf1dRgPmS9vlsPKTuT8/3STOdedQLQ4oPNZrOU9kDDexFZNIfiszhWGolaS/HMdxAzspMHV+Z
tCGLuWN+lpy7c5hVPKo0jXg1PiUTqBj1tfgjKV1jlW+h6sHR1WIQTONUCMC9RJcY0Vn/UoqmTpkY
vFSHAHMpTuv+uM9KjedGNQrpTSY4cyyHqepqPZiAOl0I3jNWMbVk4E1MLyB8GymOXMW5l3CnsM7z
KUqqykycF5wfczsVRH/CtnW7YJiVFxCFIKPNS0upbvhczF9Rj73Mewr0PJUsvAgn1xHMpTQQZv2H
4Gy5UBhUWoulnT62xP7FiKPy05ZqAbG+m+altZxvRM7RazP2nCDD24hA4pkeY2BX4DHOmfWL85Xh
PCxSrExJhx+lVqlCOrkntEnwK6Y7yQwf/DKixS1cWxscSFXtWYb8C7xbepA+iJpNS/eaC23K7sTv
qQf1q/76lQWcHFYvlyKzs9SLyjtabSXOuto3VFKUgofKskv1bBIiZCJ+qaNVxHggMmttmpVFiNhS
bFq31VVYvtNUgoWG2q4269Q4to4sXrg5M6qm+H1wERTr2XTR0cDLgwnEMRu6d+jo41fLoz+InSFm
g1TmRAGhBSTrP7BqG3ZwfacXsZGRZwHE+TAZxzEx/pWe4v17dgpPUTujCJsl5q1yqPrzhwt+j8S1
Fsijtv7AZ7qIJh2IbNzGyOQAJYsHKDFqH5dxBXnbkSBYmtFt90SOeN4qAX6TkwdSH3g3OCd4LuMd
zNfqWkuAt6pGvV/2KkL2zGVuvma13BnowrPY9YgCf2PwLknkS6NWwMyZLVQlxScuazQtt/8uU7Fv
Te61OEvfUWVydxTxYveu3mjlb061B8kPy8/Ar7iQ7uPQplgNMo0FYK/g838EZapbkLoBF7/EczsL
HXfIcE2wtKlFt6gCCuD8Xwp9Dy46jku17LhTcb08kEWJUsKP1+wBIqupCxG7mbWmZh6/1j6bhB13
K1I4kveHUCvm0viFRJgy3lSxdVObnkVUdOj6K4zL34a1Nt7DUv2lXFT+qvGwzGYwq5rBB7espZ+Z
zDGA47HAKwqHc4xbYsikPWbetdwAQ/UeJj7uFdCHAAc6O1uVLNX8oZWx/W3WFpAFulI6MvXmjBeh
QieuSO0W2lUFPC7YAaXxkKp5FB2+dWn9h8jpipR/dHE56eEIoXqIIAI7/eMu2BW7NDeWh51dvbDv
IJOi14Rhqa2+538LU0TYxyXk+PhBQuT5VookJZs0WOWZ4SzJxMyK6lGeZEygpq6yReGoE6pPzg5/
9cUqaPIP252MWtWu1qoh7W94A0jiLXSyecejO29oGA9fQXarwc7m8a+xATD3X0aOk5w4tk/zag5E
MaO3xtcRFF7/dxaiJL0MtnW4SN/t3Zp8Vx1lcs0Smvd23g1X7x2t8l6XMKenrBgTRdmWt0iMnHRn
CG78RJInxdza/QcqsywJzuxACI9LPiKqprK/cdXHFzC7CP1PPtWi+g06EIMsyx8HQl6iInIQ97up
VRZarIPebDOkrsLo4l6ME93BkhKEUcqOZ8B3r9thjrbo1de+0RvonVISjAO2b1QzzkKhtkVWTIee
I3U4fqO8pO3AesjvpVbrPZLMOJcgPxI6a8NJtQWp1zkfaqUA2X5EQeTvTUcUXj9tFlNjj+EULCO6
QjoVLjqGvbsYotsYk7reHUFhZ3Wp5kDIlJP6Wun+SVeJSjCc++hO9lDbirG53UzPyCD60h1DD4Fy
z0QbYmF0xF8mKPKkM7ytRaiGnNZ6AJqL03oCB1yAxVkcu3SlYVbOmiEFgOh4N8ssxIshtJBYoSzY
SmUy+zTI5PmAkfurMfoo17PQFhYSfPCGZBPToq1sKhhD5ZV2EGxnupPJ7xXR27Jt+hcqGH10nDc2
biRZpm0AJBfuhaUAWcvyi44twFC7d2lFGtxLFtnweVQcUgmxJZ2HWbqd9Ayytj8lv7Hs4zqtB9Ju
g7jiVMEQFjbC8VuEpzfqTpuRkAwCpEnfdPMvSiA0RXuV3vLR8yEA/K6LKCIA1G6WBYfoUCrD9nm0
hBAWWeXL4bqIYTnwSU+ESfOSvJ7IveEkOBLek8CgxCyDThrOT1UBrzO/i4GbkhYugrwL9my7xcWD
iuDr6l3h77M6/DiFuPxnfOsEGcWltnF7azjrKYjHhAFYatKj5RZ1jDq+egCEXozyMT0VfscWFtLC
0PLv7K8lsQhYFwfZVQR96rCiw273JOjUAATgTDtI8u//dD4umCgpmnG7mvNlMLkW6YukwHAp6yf6
YsQ1ev2KK8sCC1n6lPtSKuKQpk5r1LNzZkM5ujVAHGz3NIdAbIKITDQL+QguIH4eVfPj7l/z/pKO
eavsUFdF9QvC6EIaXRZNUUimhKStsm67147iGo12C6qiy1e9nya8P0zJ2UJngeJVH4hgiLW7PoLM
RFKjUUMZ27jnttvDKJotQR7+QYRXncwxR7JExXaHldBOOELPRheVC5/g4MWuMHkB/cHzyN30ZYHd
HGpXXSPFRZjIwS7vWCP5VgtUihyXnYYxyCIBGGV4VZQTbigxFiB5g1bYKZJA946kv4OG1YdArgbC
KXmcG/aBAkdNBgve6GHgKLvfyhysPCY/SpmYjs7HJnU6gl8UtKgV94WlvwGMInAqL4fSp5/FDhtY
9DN5N6M8um+OiWQc3YgeIYGlDVOwd0i14dU9gJV8RBBYrgOyI1gBIYNUmxyrge27v397xjmO/fMB
DH2N2U3VkMdI+TJTKdUvOdPs3lQbXnKS5RgeaQqFvbgKfa4WPO01Cpp506M8QB1t1PXM5uhDuMG3
x+bIL5z38zSV4KsFud9p6FVb1w1O3/608+JuuO61bgkj5BKS8r3LD07puWREPoTgftOh4FVOd/My
5GRTvElf+ZDakxkO2FgbNP2emFEh4FSYE31LgYpXd8c7xK1ugyIi4fLHPWuR2yKs1EHUjDn7MlPI
pMG64PUEXmdyiE7LLp+iASQNYhZrf4gw7p959cR82dro/Tq+pZheygo0DjMvmVvHIq6Z1r0jzyNq
xxtyH/CtLjATQa/RRsfZj+rT3RiTHp6rUdiV0BcRV3i5UrTSNly/7k8UfeLKTtanoNKLUBNQbNcm
osXLMkYHdGGd7jcjugcez8UQC1q4bIspB0MysHWF3nZPtSIQm3/hryOgwcrx8uL/fx+89OQ1mY74
ACVwUxvh1nWe4KZlY3IHneexRTwB/x6QqbU4K9u20tG8jNKjVjdwGEnbGB3MG/BS3QjqjHX6v7gG
r1S6vXfkS64Th5nd+qJhbEZ0J+N5crMv9/CIgJ/nbqqeWYGHHjp93LtNNOV0Sl8OaM1Qr04kWGm2
f9ToVsJ/L/C3GxmQyOCfJaYHF1vvjcK7kL5BwQQftHpaozCwl2Nh1WFJC3Wy3/jrHtH00bcGBbhE
KCiAvgNRK7bw/Onp6FGjquNeafXxyfXjbPh1f4Gbx2AP9BqvCgNo5yLDHwPFIQuJNk7uES/nP48q
pgy6aE4TBfFRyxrzwdEWukP3qc8eM6PI1sLAl1+tgU6hcIMQBH0TpHGvmDG+SYoNR6qVmgcteFIk
3J0NhX3Sc+qvAVzJBFcdTeGprCLBrvBeKaBU1clpsCJ6IZcRyObSe6Xtt9NwIyCDVfP15rwc5Nja
wOI1LRgBO0xo7fCplIPgV+FDPKKcHnH81GaxBJavRh/cgFY5BKzuRWpIKRpMWgS9DtA4bO2HQcij
/QnisAe4cRbURFlDW04TEFP/1/TUg/ySg+I5TO4FkRGfEYhsAdVOo9bal21OI/gsbk5sPXc04poe
lMQJno6KOXx7iCEqKwWhWM+yIfRWmcictJO236OUEuhLO522jGg+J6rYE0N/OuvMKZB6LpO4qzXs
hHmZHacOhD3tNxEOgjnnjFVtJNCU5ZeGNcY37mCzGYfVu3tYtxRj+Uw2S3kxTBx0A1GriWZKKkUP
HJRYnCG53tPlxFUzBIFypCzZkWHnWOT6TL7fDSeTPCWi3DXwejRfTTpeegMiuFSjUd15pu+V1F4n
h6WIpQD88Up8xsSBZ9YV6xB+SbKXltnafBtb4NJcJEtAjfDWI0nmMrLRgMgcmFuCrO/8TNBS3Gkx
FtFQui7yU+TTKMCsxnkgkcvzJDeIr6HHFhSZF5Pjac4UKEIICKb8gWIXGdUbyGFisy6kLcyKicYl
P3/OiieSWTYkGuBzx8TIBbs3EMO9NDqQ3l3iVYJ3ZQ1oQh7NBMNVIpn25vrzK1WhOTvsGpjS8fCs
vfru5fI56auzpCVGNI5MJBAQPjZTm0bPU/yLkxDL4qvSPcuOJ+YLx6P5daSkELnezcRsH9GmMlUA
D9r5EWklF/9rf710CpE3sIQGnLs2vJxF7I9wzZ6EYUsBIDAiAmQzFkxJ9VQ4cCzOlqwZPgtxHmv2
jjhswtR0e/VbV4MkJ8IEgEeVuSRWhdO7Hrqikx3MJk1Obq0l9QPEQOnC38JzTo2yg3pOxq9vm5JO
8rivWyLdptGS12mdG7bWHwvat8RWJahJ6wwflD3peCeEdArl8gGGyS8m0rp+rl63MFxzN26Au4dh
U6DxoCrHlX2JYyDJuGGhoj+q9S9teQpAggGzfa7nJeQA33yR9/7x+zRNU3cgrzme6Nfj7vSN88b2
OSpNbAZ9ZJn7Ry1d5e18B+X7BjHqHHpr/pO5yxwEFI21wPS8pQ6YMDg4yWp2NhmxiWNIFpkHzpFe
2W1jO9gZv+EFLQ3KY28ub98N7ccEKkqOAOox/eHccyy9K1ov6B1dzLVwVYfQCTO/ZQyANy8hE+ZW
zORIN5ET3uwB5YYZU02YqqdFBKLSM5LWyXoGE0XXYWh+vFLgrbXTG2A7lmWPwke6yH3WKy0R3pau
Z2svsGK2qw9RD9WqDgTukVC2Gi65dxlaEZBxyx+/fTfbaug7SW2PSnG4PFsHkYFaTawhGgj59qGt
iT9KwSrIsqQwZgDGuYKfStraJLRG6qIJX7CacZtgZ1Pi9scqJmORVDAhQKN3AI/zuEaSaCkadotD
ddVc/d2jDfNp05s5EhORJP9W+D6wHX3Cx7NnrWd8U9VA0QAkZZyc73oQs94lSaHKE383TocU+w1C
v6SjbE0bIe6D/npvc1GzD0Cd6QP0/MHqahAYYUUufDTtlCLKlMnPWTc2aviD394nAxVncHUkHk/k
wZmRaa8QJ1hkFKZlaqYzqZT8f4Beo9jlJM+d0vzxZva56lhPn6WwK8AqW516hoITE59bFCKb7Xez
caMRwavSr1PJm26s7UbsdRWlbeNvNwd/gC5KzDgXnL/gO/QQCmlDpfpBgzE6SVW14Lg91Pk2lLFN
IbWAtpAllItKqrFZvp2wRaIEHJHb6SLH1yNcTwuX7al/d7iVee4yw5JoNpPgwzogF8RiZGbvciyX
XD91ELfVG5DrIYnbWmxGbtqAKuq99Ru9j84uhRRPbyx0jwnLjgTZOLQZKA59YkxRKY4LMwmnNcVo
VRHdu5GaGiqKryi/L58fjii+5fVdejYRWt0KnnIEgvYEaRUd4+lBl20siiRHtObrp9N8s6hENao2
Yf3mdXTtKSYM+YLiFKyKYw99yMWhL0BSBXhSoYWBByXGjiDSh85GOwQm6QsGauzBGgwkSxnJwPEQ
DlbtoU9ntnPNfMptCi3awxKz4E4jJHka6RiWvSD/xNfr9s9/DRUFXRCwnIfNbiWdo9RhVITpLkK4
m89ZJJ/tptpbvTbaP1pUrbKS9TIIj1lA1O/Evj6ZrUhJ6zVL4VnS2Q9+SU5vx1/3UY37yW+00osu
8EwPt8QRgLMWTJwqDCzph7VVVz3xIxsXYB0C1b2Qe8C/zNIpTq9VbHNBK6OOWZIVxS59B5ny+NKT
vEfyE9VG8kF0JhejxUq69Y/o/tghdRWxBPg3d0QdD1d6/nQQj7RFV3JV65yYbOh1sX9myVfoFOgk
eAl32BVfPEP2qkd+5P1OV0xS7nHm2IpWLfQ3Gm4oGfJ32FhOap6pwNrpeNxpYwwjOhRKTNtXN6kW
bYlXKL+QQBWNngtdiW4p9ig9QdKInv4dc0Qpsr64hMN6PpVwNMuRSnj9+ZX3S+ifTWBRxNsmmsE3
P7YFeiOsLstBBvTIIq1qLHQM+FCmMoo+vccziWuIE+5SNibIiF6vpdAZiXVEfMAGG34xNBGkGYoV
r0qGixwmFVeYzezCg+bPayOVwIJ1r57bcopLHcc21RbkrJBcxvleEEyEBrxsQ6vBV36iRDR9Z5C5
hS+V0SdNM879eQirMI/y1J1g9AoBjaCxdocV8JnziCNb5r7WEY1lHioPQczbCmw/E9TZki3iB0KZ
Ybfszp+0laJ5C9OLs4WonyyEiYqVz02R2eJOV2SlUt1YeK8SfFvJYpsgStUhgDTbtUQlQApWzEKg
gfAj0Tr8dHE1LIXLQW+9HIsjgxqhFcCH7PibaYWEdPx+HuWtIhz+qvRfgHkYv+S7Xg9JKT5h1sCT
2xBq4GUVoYnmCSFt3zbk2YlX+Nrej2dlRNHBG5/NnhBDpA/CSS25biRiVTPPrqn7mqmufUUl0TN7
U5Vz9oxcYTnefPdP2da9+J4cITVll7Z4g0OYMYRQ8vEi1Z0cIM+RyycKyY9dRAC27ktEdV0+WiNK
aSoQnUwE9ofSE9i+cnvYHDIxitKv9MG32Xrkf7rlVnM4vqA4WBc0dQVEB2+n9FVu4G0z19W2D/Lg
MQiHbIU4p3+ecrkK1HzR4HiBcsapv+3VC0m15dk2s0p52uhK/lGpaZIKbtBd3GLxdMghwlWrrIoB
thPO2Ba9/yEEWDhA9Jz+65WdCS1s24vm1xVeCQCL6AQLr8GCjOKaNGShCslQBIKzTov59g2eUkqQ
sx0NbPuZ1RphAQWYc2TByIGuHi3/Bw2EXugFxUg1g6jlwGmpwsJ7DgCC/gJdL+Ndet8XIN++tLJY
Lcm+HHMxntV8cbsUt/8yjn2jP8B1GWPfvxEq3ZTTV1EB7gtdUnxZdWd5mHJ6fTZE5hxKD4rwUXkb
Fi9hmsUv1pFvJBGwe5k/3xpQ5qCMuY0oBPEsCfpaUkm3P9mQRhZcVNTXY4kOua0PebMu4Dh5wZZd
108ZZbAfmHdm6dxEhrPPhcC1NXwXiypeXZlavx2llJCLuvuzSydwkF2iTVtqQogbUTiFb3FPzFEf
MetGn1in6O9Np8uqOZgTHG3TTs6rRXy4ulv6EvvlWxFcSPi3NIjtjoalMo3ejo3rsVMZK7MFD5Kg
MpQZGiUhwls5e5gWnadOCuW9BjqDHKn04c0G4Ez2ZUpq3sncVp/vx4Ln/twIrEWRd6tfgvGhdLf+
TS5o0FfMrgNP5rP2RaUEVTqNzzFKWZTkZGpgwNIUd4Jj3yK5Vt4NlbtO3NvqUnDMLBqnb+9Px6vZ
Z0CKNCE6XFb+dgk7MgKso4+NMHcKchTV76aelKerKT3srI1EjUs7l8StWjfKDrkAfxQmjLkqCtYr
vcou45ajPaD2XZiOpJChdLzx94XFOcBuqVmC+vkUusWewZa0KqYYHmh8OKYWLL+E8Ha/fitxuG6v
JYv0lfzIlKuWuB3Ax2YW1I+Cl9NwVyZd5h8RUqAlU10tCpuk4Go125ttTde2uaSCw4O3SjU7fQKe
lwvNxIBN7GQZ4mZtRSfq3gm6FLbM7Ua2JcsSiiSm12uCdjKlm8ybAVIeZEIJC0zDhoa6ZzbagXFA
SRJlN+0eVZ+lqQlyLZNgIP2ixWL8AVUU3A5qdrQnwg+zprX22hqcZqmGcxmZlj7V2OygwFak2Gia
2DeGyxxxKbY3w8hz+aPCya73RkFLPdNqedXyTjc3ZGPqau8r/VzUAGt8x0afMVEjjn8L9nIF/j2Q
IBKkADIz+m/9GKxRvVhcOZV4vp1U8Ep2i4l0n90QxBP35BwhKUK2lYDM3Llk9C7+TOXLTXQKzQzD
WxGb9JsqiIGguycFnN0bi/2BqVi98VrTPeiEAI+QVvk02BZOG8nzrFfRcUmSzx3N/wXj2aec7ZNA
eg3PpgzPO+IE6ANIEbLAzhHS47ECuZCb3u8NW+3ySyqWBk4tBmhwyHl0P4D/lAzAeEfOVZjXB40y
eBfuu72Lf2KsYg8j9/SAXD5aPRPDU22xhwaFT1oGF7dN0gHxIOIghi89JX9QeCrOqU73o+8Psm4W
6dS0GvHKhV6dRZZDOYcbC20urarf8cetTxQodH+qpL4WmEA7hTa4dy2owzPAclUcpUcWnDE3j8hi
9ZiGTKvJzyngxS8ag25cNyB2Hni4byD0eELYAAZ3Ui6v/RUJRvwdnPHo25vUhMc9sHOPTgBxPi1G
xRjRO7Dm/IPdglGm/SSLqcdV1BtVTqV5ihn82RoTlP3hPb8z9u6hKIpf8gr/N6aX1wdRlNII5bKt
S2qsJQN66J4f2aqZUqOadX8aRlBscOM66FDT9I46EcoSmK+zn0RgTBNr4hZf/gyiHt6+fRTqN1II
tKNn4JyBIum7vbBUC8S+/gXF0/ir3apZb4ItbIDmpcivMTyml5fyJlc/Kt4a4Q0y/jfosIqxQWBC
yvp7DY/59uV5AAgDLNcz+lXffw7FT2a2FgJ0kBO45wPUXj3FE/TlLF2htn+9lLMt3Q24JG+Wlsek
uuQHFnPDuWQ2vA39dnv5XcBKWSwgkxmiJAFemPmGB8wq51mjfqiDxK72gQPVjOW3APBSsam2ahwt
glSRFTp6QQBT9I9HimGhJh5PLePNDVPKY96ByyfN3+p3f0G4y4LAb4GlDxBLVY6CBJSkr1VIiNEg
iXpHFw0bqKudfVG7TLta2a9OQRdVfFU+MLklwOeTwbLM8c3vJzwGTO59dAFldDCEvvyjGyeIkxVI
wXSiJtSfWiC0sv8SW3Ncjzhs1E4YnfchNqwq7NF9BBHUcNmUJpRunWsN8scy9jfWYnAjIDJP3o90
W3gSfsbbrUvXj3IWwBFTZJOTj1ZZ1ASO3xPZtLFn3ojtCGOJ6P5MsHP4Fmf6fTKaf5ZX1SuvXLhT
/DaeNSwVsN7PeZNjCTs8AVYTQqOyYMLsudFd9n0btpSQEmPr6OIhcILTt1ZCMVp1WTIwT4VAYS3B
httQOSGZZ6ebMNJVa6mxwRwWyDS7OIWLeDVCX8tjvaLFiQ4WCW5zSuHPTfuNC14mO+MFX4nDphOR
FfF20X6OiOZeZmjWN7aObC8ZmWP8E5hFrlPdOab6bLZgwTjw2nhfHKZ8H0IJ5onjHww9egjF+yvp
03xByBvI2pnqRToucjJ5vKEt24vsmuBX3EK1lcZogCRqurcr3EHwwHr3XXOYzhf2ptl1GqmGGeTd
ZLsY5iFVQm/ilDGPpd3pZXgJTWr92a7GXGdYTSZz01GJErZc8ySNjUvqGHeexWYXNs8KSJ7VjUoN
n5cdrVjQSxy8/tIEX0neyrRSrIJNwUaaA5neLrxSZqtp041z/XyqU1JUXnGgvl5JwNr3CV6H1T4Y
vNAZ2wa5rlQ49LIVjHmrFMQQWdgxpUoveT8uf7OP19/SgaSLG9wHmg5aOUd3ypT5l//ZjmmErNDl
E6iEW6HBl7MV5WdzuCTyy+xD4geLAwGXMbW0w19XsFzGeKdfUgJz+cwpUle9e7Vu+gGmn950iow8
wS7m2eVs7ZVTJQHkPmUi8EKqG6HxL+5aRAXnG9ihVaa0KLxwbe5TOTBldvzZ8OO48+4GilecIKdX
Kod9E4or+KYl3GX51SEW50Y1fHs1r2q4tF/PcA31NUuxNh5GukWuUdhgdenhsYhMmxd/Qfjozb/B
uI/PAIUuG9/dRLwjRGg9a6mbPUf8hma2stmeB2zYuFtD7sa8L3rziS3U/EMBCk9UcmnAkrSUIUEV
057xZNwACd7mFfzYeiyIgSW8KJ5AYGedh5+dw489t1snjok2WDrtEOcEdFVeJSVA/FAKToV8GKLg
SLVTMtkLF+wXd8NelX8ayFI3md3T9nFsJ618VFLva/nvjjLUCLXf9ooE1WpMKXHaZkLRdlgI1vuz
Sv6V0fXCSneK2HtgDcvhqm0/1Gx+GfVeOcc/qd4/olibsugdVmODHzqBlJcHjeAB8FLm5AluBTNG
32tLnOsxvgU2f01eHgSz8lBjyGSlWvghrybtidR4VBO9X2UJPQV1ZRszkRQb+GxFRdVCyO6STnel
s0OEHCCSwFam51K+13BdxSZKGRyJQ9IWGP1+ZiMmQnWJQewMG5Qcy/3OlnApl3WxxlQXae98Jshy
MZiA3eBh/4Stce3L7FRCyCL+VBeS5MU8WBSOPQGc6Xy8pkaOtc8mkqARS1XKrzB5909Ory/ZsVO7
wcfqb7aCSZU+azBxuhAeYH6el4zsEAhaxwupvfJYizQZbWSmoWtMCacLdKn042Ga4JmBJKb+PYcp
TbtRBg826uh6U3EmJQbCQZ4FjeW79lQArxgO+Y/UyratkT/MlVJwvpcN5r4U1+6UEEz9f8BIO13X
WxBiKGrvt846mA6yIoUFGbs6ljscBo1PVCVcYs1W4/JXc+53NVHh3E5rZLwH6tUArCzHDOHUFzhj
wAh2kEJONXK+CNihUMbaVFIKF9Gn91FfJ6GsHg91VVoIbjRWfk9z037Y4G0hZciQuCfVF2TfTjGC
ThCzTsG70qo1xmNOsTOYJbNcbNmVEpZENHx7NxiygTdAtFYiOw95r9x5MkloEqqPhoCfBbh5bo2E
Ew5JF1QSkNUGpm8ozQFcx8RYC/mhBdW5uBi9KDn5FB6lbjxNTGn4HHCkAOcQDLRpH+2nV/etomGs
V9pgql09d7Nz5on1idwwwloe3+Pgq5xhvEtGoFzkiq5YD2GsWJBonUaJyE91cTB1dqYtvQfWPXw8
vuD8YG0mYz/dpAEtVb4bBBOelAFrYm/Kyat8yGTGbaNPd2hw0XOubpWM88USPT7JdfpXZYDjwrUA
A8rOTOPyn+ez1BA0jhDNmlnInJBkqSdRFSUQkb5/VfAla6/He2pEW68nQ9leuxxpu8T9k8dNft6l
lriSDr5a6dw+1yneMgRCfyamXNmjCXjFqH01vaLK5id2RPqVtBTSClcVq+rqIBMtDO3GsQC+DOlK
G5C4TlgWJlA8dhDBPbMo0tYq8nTw5ynGUbnCjwDzGAmaCOZByB/H36KNariLW41jpIzxVxLUkvrr
ljDFxypAxeSU5uf0E8ENME2T97HK2vJKab9FBBkVwuDLkf7b88IhDukKlZbzgX/cUYs7Da9LcY4J
oT6iwDbYZ/NlupXl288xVaqoigcAWOwmrbuWJ0b+GEJPtnZm2eG3AsRHYRVi11gMS8xK0EjlJj+/
HRnpMYbzT523z7dveJfSjT+ZAwonNiKB4Grmg5NJWyafnwd3GiM3pvyEoV19Cgq53AUmtDaf0eXz
p3LuPWBKuXHyB9ELGqs9dhfXZdr3lIQmhFihHYr/q6VrD3ycAnBfR2ksTGUCsCYjoDKjUIzetzNC
NT27FWE6YHLMs54MNGlUswqR8PZ1pCqwjHfHOBNTZCb4SHwq/ZfNVbjXD37AjplhDDAMaqhyGWvd
pOFHbw/sW5UKJRoGj4+JC2Vu9zGrtxsGYbCN9H7hKdON7oif0rc5ih46Kxj8eT+8saVt3lnXACyg
qsWwNEBNfcKAXmOvULJ5eapm233FSks4AGw/b70Ybs29ry8RHzeBn0z2uVAO2qQjkCxDT19mCO/j
bfar+wt9h4V8N8BozGJRx3dwiY3oQjjRnS+AQ3yMm0/dKcu3sUZXQgi5XKy/zt98Asx14gXE01Qv
3mfArJDqirxL+8Bu20AI3H69l1q7CFKMNdsY7NirPQC+yBg9Yty2AXg9h7JPJBH5UhshHa/AsQqS
jt0uQamiIRWZzUshdk54HTFhiKOcrlNTZ4GCn9s379O9vMSyi6D8f9Eu92LxnFp2Gj0HfD8tRUjB
wMGPNWrjdui2u2QGUSeCH3wEFk+z9IrmEsGeN41wkVTkpfEHXKk4mQKpVf2iDkAGcgqR+9x6oGDx
EXeihcaxM8zl1/OTwK9Ete0RIlXF+NIwAEx7Sz4i2Yt5HLMtXclZOnA+xBW+h0t6lvdz1INWVyR9
b3NY+bxNqXfBjXGQ3uvWAIAd2/07XOsoQfH1n2UsHIBKfYnyrxBDAUrTJZWGdXg3+olrSOrOp31u
hC7jeAkxCBZ3yuFzxRJ8ifLjbsmli6Xp7PrfTLnBZ08juPdWQ+/1uPNqVobSHbvyGZpucS4D++tV
aL2RdX5BKPxuRR93oZkbKBbnuDpT9ryzBnXns+7fg9B69hwxJtsEPO3mM5azGWlV49K19AUigO0/
B3j39Hp2w/9KfzYqlYT7cqQp/+sqOCcU8f+FUn4ZCCt0tG7Z6s7zSEoLN6I9bsyNHu1OAEzEAJXN
y1yE7eGwMRmEZqEiemBHteV2AL4Fhj9oIa7e1bErr3QoziXIqBP2o6fLWjgL5RY5moDCZoAFB575
m1tKPT3bHdivY9/LlLAM3F2auvuNyazDKX817lyJzO1nayAWgoQVuyyvQ+qBsadl1W37E3Fr5TmK
X3/mveSNTDZI/FwDRiq+lQxkmBotAU+1LgBZzx+28nEzPQzr/guX6XCY6rNPh8VvrCX0k9KdPlEx
XvfHeeScDVx2NY1hF0Wz4WqlnT9MXig7F+qCqq/wwVW96MOZHi1fgOrzE89WjLkC6bhJpBKYAfO8
l+2Z79ra/Yje9jZ/i08J0pbzjWKeY457DShSqeOVNeWjpNJsIJGxLZmeZ59WK+fg3cHM1ghnT+ZA
BzmjeOiV0bGpMA69FJXCKFuXiHWkG8j/2JGBnr9Xt9onTgxRFgRJiBzv3zp3WNu4FNVxqrdPdL3G
H0L8DciN0ucG66iw8cP4LlRUs59KUP7Y13tm7u/pbyIG4Ngvm3LkY0VB/ulCzv71Fu7Qj4aR1W7i
65rGY0wbg+znfGXmgFST4GCB42CYE1DTePA9LsP7PcEaUt0/+e1Hxo0GYb5gpBMc0q4IhNnHNJ9+
i5HDMi3+LRGh6xkXS4jQE4ZgwSs0LVwcLd18OJgA/Qg1Lk2cS1lvnsVY3Wfd0sVxNIJkR1XoEy51
ym9h7T/ENbOSF07vQRR3O+rtsSgcRwtnc6i4jrQM/Hstt0URGLFQFnEtfQCIRFauO/6AONaR0sEd
bu9172ZF3Xl/rRuI3+mo6tPz/thU/n9Ju2UOe0KqsH7OgWD9nj4fQAeQQWivmjOOhqHYbPD6vgiz
MHauVkASTIMALhUzDZcClYIgLWwNTOMHb3dn5KOIdUouObNitWpMhctolHkf0zNU7E+ek7UKDmlT
eYm+bGoWW9ayCBtdk6+9SzojWLKGdlIPIMvCVze9LetYPfCYQYCwH4gfKLyelTrlls7YOWodJkr5
DJ/tLzC2caAZeGdiFefxjm8H6n2bM5OY0YzF0VnEQkHL/qF0BR5NVuguAebLHjZciMftW600rwAB
2UCjdP3Sp/4eLtLT3EXwWESDqcy0LT5CcUf4a1m5+s9aPD7rqzfd2/gg0DDTwqKVIpBI2N+6eZb8
XLxD/EyUW9mRePIA6XVc21noW3OSmKM5Kq/9JZuJd1ZjvPz65DuGeEV4L+OZeUyCzzGOI4aAsGlt
SqHPSP3ZmMOtdoEWTlImt9o0sV9wOsaNZFxqPfDHqgIlCfFvPUinx7nQDmRhh7qucAhyx+HjogBV
oq+JDT4jtsEXnF9KbdISAXCImPeeZbeGCt9U4SyDf48LMLVj5k59bOtR25MEsN5Enzf4OiSZHsd4
10GFIqBDHM2YGWmBfVjc7ePJWxGUUoJWvW6A2rUApuCVFBeOA4O9ohhUPtGk1aUToN7O6wBKucaC
Fa0XqrfUZ5hZ77dH0IRrH3IRskHv+WcokkGwvvLmAZEy5kSeHSVHgOS0vOZm81CwLmR1XrDCioG+
8uVS6/Gt3mfkP+lm/D3IgcnTCeb7HpQnoFSjK/iSmAW+sMBhmcS5oUpCJJQdbOlqxblxa62oq3UA
KlbylgcL1RMyU8jyUK9oOuhvKtvzpTqWzFpTugEluIOcjjufrWihvwAZMN60faIUIM4+k1Edd6Lu
+HV9YheWKCuN0deTT3/WcY7ekQxoBhTO8qdb2K2qpLmK4SsAHljuyo6xe9G5rGyDa6wbSUyO9Gj2
LffI4ZsCCTJ3BtCNShwsZooKTaRFJR0GrHy50v/ACcWtg6c57zbKEOkHvisUse1dX5UNfV5sSuxQ
EnSgq2cD4rBgkOUkHTCQMXjQDz+m3DEDfv9xH+Wj1sSSxWrj+gp2qtZFlplAR1qirUPiaU8LroM4
uY4ZR81VfdAcP5YwyzA/Mvpg+3bk4WPX1SfcvUrE2DwumL+h7Ljgd+WuERP+2PZ0JDXcwKtuyV8O
VgUT953RaE+wLFCQ+pqNE9nPjO3qjVwuxTBW63q7Uwztf/HWBk/Lhsw1d6bGi2J0P0maPSYfAWq8
WUSq6PjW8AFpFH0eqI7HxovRMiFWtgdeexdisQ6zoIqnwiwK5RaCYsa3rHQiKoL33ifRYq+m4vvD
IxsR20VqlRxSucrCct4gTUjNZwzboY6Zd8K/nPJdWDH/qCKThZVg1XJu3gEckae4Ec7ZVnC/srwX
lL6m2oMkn0GNYk/TGxfP+zrXs5StzBpM2s6xiKKavmD66Q0PBXUJT5IX9GdKGPq+Ei4T+QiHcNiF
4JYvFptnSjSKkvRUPdHLQmpuDuUk2/qXKQEZmrY9UFCfG3VAv9puq1BZuAaZYoXSPgLl4kb5T+ip
Z80DT0hA6YXPHR6iKIMAvFbeYQ4vkQKyZ+8lwCkNlf5EvO/nqV19AXHWpAHWhht3kyI4SVoFiYV9
c19EsG6ClNFzW3Ur1Er8DB9P79Z9vqSdoT4IY9lhuZmls6GYReeuMLioCc/Tu28gjgIyiJunTzED
tBe60GIYNYHWTCWWMZUxyX9zWxnVUKFr+rMYMRHNyXf3WcwqaSC9rZVlsxMhZSKn2tWHMVVPTmAJ
CRVe83ZKBKYTptkC1yZswO0hGnnX9Nda0wAENZjMqezTYUAiEWyyZAKiyHLrfHZGFnKMqjVQtOJk
MkgCWLgLg5yge979f/K7DKkY3R1axI2vsstHsyffc3LVaMIy8BsIcCB0RHAbPFe8znQg4BB6nrcc
OPfzPXy+fzBtPt3GXpmJCAKTwYXiqzEn2vwfj/IyXHUtnmSm0stRI39mAU4wl+2AadwkiilhW63U
8T9pLkmqW84Hn6heD2/sdV0zhno34rF4A7UQ3M8yzKSLOfrjuUGnsuPnBXchLknixMBKWy4k3/2J
hA3+gSCBAfZEXrhg9fDfiU34K3IVzq70CFCCI7IMDIXRZjdywB73TSNj1nwAFDaVqJH8Z3769aJs
yiRC/w/R2fImBmfncxv7tY6NAmllK4sJXt5kBRLr5mz1qf3Yt57SsgWLVytRJyshjstolIhl59P4
5SFH+RTWhZIiaPvwnlpN6SQKUT7QFNnMkuuqhK1xx9T8cv6eIhmi7BHJVRpNrpHRiXZ4lBEua3t8
vwQkSU00qpyHBUHaQOJB+6QWjNjJ8MB362dd7415JCy6lKfiqmhg9S0Mxor1ZyFf9+tunSucddal
yqxdGyjxw/3OXESAmyq9OCIymYLs7iA4fKr1iJmI18aoDoA4JuZtJqkNhxdWkRDikgs6Phavtj3I
SOIekDxstlOylJYHN2qJJWTFuUjRYtPmuyvo/fKO8uYeu1FejBqxfhSjf8SJAxkSt5kLxopUDEij
AWornz1l9rvIs01GCrBtA5IQo7w5UwAqidSMXvYca2X7Bmz3z4goHUyIU7o86sxvLW7hWL9Y6EYJ
U/Qav7SFNCI/z+c9UaiB7cUd7h8kLcinjV2QoLQBcfar776q2pEPruJrr0KyF1QN7Uh8RDdv1xfE
sINls4o7LIL73PCnvjawm3vZQsbH/DYGLpgDQ26vgWR/mZQrJB/4Xj8avLZkIB0za0E5JzbbQrQs
Y7FBkNdzcY63TYSpBBwOsAlOmkDsD95uWcopn9eluWX1A2zG3Jg3fRCc0ifpAcrS88iR+RV7kbIA
YkYKVXQRSZaXEd+xqey6PCYUoE+rV/sD7GllueEtCqSRcB5ZHsICendx3AYldm9RGsBJ7bKuHrx9
FEMrCrrRRpDbU8QL9EoZP6CKVbsM/ThapYBLh4H79iv/ptdQFImu4kzqP/zWlgRo32xTbQkhjgGS
rK9HXFWgPk3b5cycSm/VYBGwjzr9DBLFl0MXetYirjvQY+DXA5rqupBoK+CpI0pTMEG7+rTm6NaO
sxqHdjWV2EgY2ZJ1HXGckY5ImxB5aiZ5DluaeV0+UOWkEa8vEowS9lvQVwygPFEwgYmryf6Vn5Pg
PN3IrHZBDuBDXzqunGGrp4YI1E4MjV9gekAqiNFPj9sr3EQ34UrNSaKFltLRoHv5l6vXulDGr2to
LR2q0F/mGJb6JB9mIDEd2pOosfGHs6alWqGgBs3o10YxobdeIZGT8RLVkj+AcfNhS5vLvhB8LPTQ
liOecBQEd6Z0rLVjMgJrlNDVcF2G8/N/w0gBI/6dx687iNujUaMzsU5WsO12HUMy5wjbZonz+6bz
AuO1bO2ylNztM6K9XjCze0k/C5TgT77vs5x6JES3gv9M6SHls3vp4gXnIYNrh2OxNbmBHQ3WoHa1
/83dXVHbArrh3yE8Apr6713fNNYo0S6UTCcW2iaMuCveTpi1kb3umfOLiij5Iq/nVcGHsjywfzux
dgkf8fllEJkUnKV9EgTveIDXdSoh8NfMfTCxHJLeCyENneimAMoMCo8eJ8PEnXiuF0qvP2qLRGG6
pIoUCavlX2JJzPo+1CuHSP3fIGUzQKZEYIYhNMC/AN59WlwD004HIDbJesdcAmvdPjUAbc+xGLVK
iydtMN46QpFx/ixmZbHIlwfPfToYG8W892322ZCWpVYEqgG0xhne/XSVVh6BCit+QM6Ja1/IIAge
42B6W+wJNB2QqadNT2q/0D7kCwYTsaBmP0cOvWgBofcYfYXDEDkZMdh7AFpMTacpC7l1nmRyrgls
eyi0mRi2cbmcRtBvAix6z8V4CwNG57DY6LB6KOLtN1lWsnnnDY+aEKDfFSSQgx6IUoJYe97J4hs9
QsB7JSn4GfgEPskjvs6RcZnfGONGWHZacu0NuPzi4urCqgnkNSIrCrFdWvg9bRv9TgwT1C5rJRQh
NqZcSKyyr//cWKF5mpdudlvk8NgpDmIBVEuzfLYI5OxLavFI7tlD2Bey/N7qRrCswrcqVmBWlfGo
sjsZySY2e7ugZDlf+4FMgkCBkuoUMGYtwO+79DT1dUUFnF2u/AAykOHGXOh9mdENGF3F11jTg6vQ
5qTD6bCrkOjGVENyYIXQpqCUtkPTQbROlc0IuUf13GRvtT++KhhMbnVPGyEy8gYorWHkBb9Ze/Zp
iMLOBRreWRpyG8x1mNTcOThtmpiLLdZMYjvnYsd9gnlU3ilj+RVIb+vTI5oxCfpkbzaHl8XhqPBO
SliuKUpKRablJD3rVeNNbYo+Dx3upcXrZ/cHWzfI88IGqtfIbCl50284W+j9iO4uBX1oGjswHxvh
85lQh5K0A8v3xD12Ld7wQuKwoM/KQ6ImLcqG0yF1gy1kGRJAZ3lbA4pkp72YozWtBmj75eJICDvc
mFXDr0p7mVbkTi6MyEU3zgESNqrciwMRXpQ+FMSCcj190qhq6W68v5pBBZxOyFr6d+WxL6tb0FSw
JGtNaOXVb0OHMhXE50hJTHI8bE8vvhEBTU5nT0Ph6UDx30icWkZz4DIYzVeUBbEaqFO6OLU0AuyG
Jeu68xDlcz0zxv2DFawuYyAQuzzA8mjTIoijwdq0t0mqppqJPMaBgDYcsbEaI/2gRajcB92MvZxD
VQ3/NyU6YbU0Aa5uM0pJcFDW9WB+ZBnIMvkNRZI/8erCH3/OU4Sh4UXAym1+7NmtFgySpV5w/4IL
mibEGWfkm/tUDTbOEr5BDEimCMsIlKTzsSUfLfBKFBNHJl+XXsNuNxfbe9YjXQExSnM3W67nrgxe
k6NB8eaN+YwBCJhA62aMUOTWxGdmxyWQXQCLe+eVv8qLFwNACbus9NUAOMd2QlO8K9vAp0mHeI1E
rVwxO9d5KdS3lUV36Ku9rKfwd5ye52yXIjZ+D5v1ZmhXz8uyJFuA9Jt9TIR5LCKO1LAPfjDB1z3U
7oqkfKLfagUjJuBD9YDPwo58Wq9X/smdKO2okWJdwKWdQ9KqwOIZkaoimF8mZ5bydS/acmxZOeqF
X1ObxHmP52XV2R5kHvwjynX47B66hplRg0In+Sb+dG69dNEPhRJ6u/ZQvf7/5Gu7luDf5YYWGkBj
P4j0svlolJeSd0+K9U/Ltkjz/xh+qodgTTbV3m7V1TO5io6loHCGHpF4OkjiPJcy5Au8XbQoAVeg
/KS2Idhd/up7+LpvSiGBa472agfCkxT4LIuQwgbYr0h4Ayai+hi8UQxRPq1OrRG7qX5sC3RWB8fq
5LtT9BHe34TZbqAR/YF6C7rfFDL41JrBavNjMk3aJu+ph0Fd9puhHZfPTQ1UV+ymEBV7bX2mwzuz
N8U/GTBxYwvxeSTowPt3g1eCQE6ZnjZXKQ/gNb/XIm5YXzU3rhSXF6ns3/qodZipNfaT/puQxv4J
C7tMOKnzfN1nj8ga3mpHa9Lppn65qspvTsvgO1sqDH3FArfBcVxYvJyRqvpYcqtyS8+xw0wNTx5s
1TGCN1x3jD3nfvw2NRjNdH7n1UAnyGZy9LFeOYY5Prd1lM4h3ybi+YUhcpIsDgMNBgxRuax1An+b
Mj8Jdx7Pys4JFK6AW3WUOg+qeRXlmLN7zNgSABVHKa2tNe9U8Q5aloQZrkFXXwcyfNVdkTRR8gte
h3E/CP58ZbHnbT9nIIwKjMh5g3rIhjNYNjXEL11RqJ7o0AL08BC1NokZSFiGg0GdU+XroSgMYqbB
9s9RCYBC+mD9VVt9wGR0qAhSCICdXL6MyeMTOM1TVfdrGghGz947v1Q521ggpAbwAze3hwUWjHb3
M5dloR+i4tSkAYt/xYMk+Io1iT6W5hu5ZEi4vNFzqra+9HP7yStD/OWHD/I15QvlHN4lVbOFEb0a
ALBCC4+i6mDXYXH5bkHwvSgbIWMpzCcp8zGb+l+HUB5Q9iXEQb9w4zOO6YFRymJECEKDYrQp2OAv
NzDQ+GWp9BECRSMYA82fCs6F8r+eK0CSU8IBW87NfsduJ+1V07y1VI0lELxnF4EzfnUB0xC9aXCR
BjVBZKParKQSoddqBuTqRdIYSmjL9Bx0n/Ut4/rcPUs/K9o17vcjdop15SESB1FnzVNFBIeJcsyN
9mlMD/45S5yoap5kdz+p/Iv4oL8iLoQ5OE6ce3ekhk2gdTHtNTqNy1SiFkuXMHj08Q0WhBYFr9U3
5MGu1c+VBeus30GkAO1cze38NQ7Rk4AMTNM353PPMw1O5sY0HVMn4ngfN+UD0Nbtt+QzXmVNAyca
7caXrU3GpqNyXH0Ocs+Q9RlxPW/Q8d5QsQdDZUkWqLHBZ74IOh7LwFaYNtCztOqVVGTcdVq/GVWV
RmlvcVSOsdlQkYQim0n3YgAyt1YYi6kepZs/eHsLxacSx/zCYsO1fba/Wo8O2CwvMNL6xMSJ+3I/
HWHOxsuwckVQN/TuOxEKTbo48Ka25mqE/ABmJTBuIroCB7YN7L646oECxz+uD8h3lp34YP62t3uS
1tO+HvSn/qlsv3LFtU5LA/EQNlr1CQjukP4cvLHZxAgUUyiVFWU43aw1pNL+T0zyk8QblhQexjvH
fSE77SfARtEKgGl6OK8kHYkSKjozMZ2YOlwSW7A45jUJJHybZS4RQ+rpFszihaC2cQXDGEQdQXRm
MzRU2SiXe757h8tBz51NguLwEh5U77X7OJmTtHV6x6E5TIhF+Vo27ygJdIMp6PLsHmnEDdQa0njy
0mNEJmNCmNks/Q6qmaJy7AZzp/uphBbe631jBXTgnn7nvfrPw+WGuY8eFpqyfB0d28Is0IEe1hnK
k9XhdPWMixCl2OQzCJUrdNcW5EwFyOWBxSCb8s+pZwQmmFrwYMg9vcTOTWjRaFMt5AzVvZYsNbdL
lDFlYqI1gtGJ4RN2A9i6t9mNGHVPEbrgymRpZJ/KsT9yUjeOkR2ucum1RP9PgzBqVhRCM8TkTNHG
t2qsqUBtI3qH4cevLGwKjkORLQqGCssnd5qsjWnWs3IIIIPgSplZB62qzOO241mwEQbvVsEvv9hu
pbtD3TnT5SQM6ReKs8g5dMWavisCEuGVbYYRpVOA1nHOJGOHiVPgeYRDyEs6WdlkWssrI4oBxTlc
klPp0rUwjjjuVjlXD4Ek5BK7WLYst3R3G+PMiMRwXJxSjTXByo3VNIwJgCqS6l4daxuKFqCQLjQg
VIR3Ep7wE0+iLZP4Ai72FGSMblJryyqKdat6bC3ly/hCJryXK/QYN+VgXOwS7oxzevRpGjvBsA3B
SJq1OmSj1GI/lcvoqgX5wiyxC0dTUhVbLIRZ7VFldk1Zr6pSnIU2QWX6iYzygr5RRiKSgQo+nU1Z
+JKNu8PSq9CdbWTJY7bhL4Qw9axfQ2DIaRM3r6VCQ07HXDcvCuq5tSXsO766b6GP8yr5JD50Y95x
piAiGsov3cV6+I/ZHhmb0ISkHv0He9zKdsWZV/xoup/YdJzWE93JE8FJNMJsD2Fr3ijFTJ/lOdOB
qthWgYyJJgpE5UAY13cpbLOqAIfXEhwEJNwgeop32Oo5dP6j53Bf+cpody1yzgia6JNhxHuFaF4X
cqY+JbJZSz2g7oeN66YUrR/jf61XAapBeIaxhJL0pEZ9KpjLK7IgLNzCkc4ft31laxTyNR0+BFP7
Mr5o+5xO15J75epRfQVhW9s9nvl+NEZAozAfghAaaI3dryHKGx/cp0/+nOoCY6e1FlIi2CZTQIEU
FLxeQ88R0bmhrES6J8Qix0jAKZzGAQaivXOy7YQMn9v9gk+d1SqkRcxeXH4kRiJrG67LH8PddDVz
loY/X0MHtEdlOxI9Fw91qbKgbOPgS1XOLWeRkeGzGxe39g204J2P6Sutujbm11xrhT0oIZy0lIt+
YOCII+OAiEILztlnScEbEBsriXJsxRoOoIURKitH4zuBDZEtZDSyqSf3eSrpArbAhe0jaqaVXQvT
CoO8wImr2G/jOp2UPvvTvW7lsc4AaAis3tgFvvEViXspK69S0Xoh5QcdEmhX+hb7cLdTnUxnVi9a
ccMQxdJhKExalnzhiBwC3ZE5BiKyDp3yy7tnyUxBV9ArKM7NgdUg7MMIz97Nqi4sKMugkkszwBq+
iR12TdpdISTV/reJzHBaMj4i413LpObx3UigZI8MWAbGdtdHlH1756BmUdRJSjslqP6+RDNgwzD+
UJDYB9m0ncHdH5SOd/bDtXaORXoD1CWhGyC4gfHMIyu4L7j7MzDPbtVMK2md42q0vJpaj8k5/InL
vs1qysehS0IKkBTNLnsMcE1hxwG3WstUxhhm5xup55k8aXkpylDqrfsvrpBENLukLuYTXpcvHXzz
k3HJ6FYlpY7JZbEUsO9g6lYBkKBVvvBOG2PVQ0xmUS9hvFPJyaL5IK/AyqT5eDAFpjfncsGqKUuS
QOesUZLdwlLdxCtcq9StP+6hnsmpw0A5zU2s2APy+RE1+D0D4ZPa2gm55CoZVe7/zLzZrWXWf8LP
xBPgOtESk463SABNfzB524INDDg4f8tqdnSbIzMy9AJrfxhPsy38BBlISo2XHV1bShKAyz9eViwl
1JzKSlhMp/kFk3NyKbFsjPavAh/D69mE2c3Q1lfH2s7xOMDmUbgFvbDwl4jlsK7SIvNcr44Om8j2
e3EwLXZGOqMU3+5sGi+kRdDFyKDp0w6KYhp9W5HxKdJpp5ZV8D5D/943NO2m34arMUkzKLLLfw6t
n+BEoDAybIu+aV+shAtAKlu/A1q22Wwx+gBwfQgk6CH2M1Ssss6MbWuTNLQ9iAjPwSesiaC1VGCg
BRlVT/5du60y/FyHImY5qnAQI7HoFreSjw1lX4m/Jd+NKcnWryHwxDcqfq0VOJJukFT5zsdblERZ
YD1mAwrv1P1+sgsqCzHfX3OGk6aeV7rH6tyDieWX0j4kOV8+OvERZJ0Cv2CtlQ0sWBu20fCaYeH+
5ES1gmi5+Rkwl2QY88IVrylWASFhMizVQmZrsYTcmeCjh//HkuvvGmX4y+HA/1tjv2rN/cOwZIGP
IcEVLp2hyNGW15a35ArYEmMo60dV9dtuS7JNej3cVBpuaKtoMuDWo43DA1lbaTmhnogWV+H32WdD
6+zDLjdkk9L7xvmO0/Ui6/W8fGoKLEwjT90B1tFFy7BWoWANO1jXtzri6pi3swdIn8VX5+9HFWgo
7BQ/f4881eCQwRMN5bGYJw+pUZ26JmP0qXTdhpaJZskDh7OnOqOfJwBhXf5qucWGD6eJuolldvLk
09Y+K84u0Oq6Z9ItlW5k+FATNiQMOhupoDg33OG12m8B+RRTgA/HMLxfbAaF/d6Jurvl0IjqWuj5
nub90jAo6SVIiCHZeOLHDKNoyuhiiRyBdxaXS5o=
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
