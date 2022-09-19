// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Sep  9 19:22:45 2022
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
H0Ox83uiK7jS7X/bweDgasvSIc7dkNF3Ajq+LUQ=
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
