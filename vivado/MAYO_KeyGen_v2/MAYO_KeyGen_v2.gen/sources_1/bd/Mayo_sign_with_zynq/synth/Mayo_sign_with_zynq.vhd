--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
--Date        : Sat Jun 24 11:46:45 2023
--Host        : osm-hzb running 64-bit Ubuntu 20.04.6 LTS
--Command     : generate_target Mayo_sign_with_zynq.bd
--Design      : Mayo_sign_with_zynq
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BigBRAM1_imp_XLT6M8 is
  port (
    BRAM_Add_oil_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_oil_ctrl : in STD_LOGIC;
    BRAM_Add_oil_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_oil_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_oil_en : in STD_LOGIC;
    BRAM_Add_oil_rst : in STD_LOGIC;
    BRAM_Add_oil_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Add_vec_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_vec_ctrl : in STD_LOGIC;
    BRAM_Add_vec_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_vec_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_vec_en : in STD_LOGIC;
    BRAM_Add_vec_rst : in STD_LOGIC;
    BRAM_Add_vec_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Hash_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Hash_ctrl : in STD_LOGIC;
    BRAM_Hash_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Hash_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Hash_en : in STD_LOGIC;
    BRAM_Hash_rst : in STD_LOGIC;
    BRAM_Hash_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Lin_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Lin_ctrl : in STD_LOGIC;
    BRAM_Lin_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Lin_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Lin_en : in STD_LOGIC;
    BRAM_Lin_rst : in STD_LOGIC;
    BRAM_Lin_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Memcpy0_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Memcpy0_ctrl : in STD_LOGIC;
    BRAM_Memcpy0_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Memcpy0_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Memcpy0_en : in STD_LOGIC;
    BRAM_Memcpy0_rst : in STD_LOGIC;
    BRAM_Memcpy0_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Memcpy1_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Memcpy1_ctrl : in STD_LOGIC;
    BRAM_Memcpy1_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Memcpy1_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Memcpy1_en : in STD_LOGIC;
    BRAM_Memcpy1_rst : in STD_LOGIC;
    BRAM_Memcpy1_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_P1P1T_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_P1P1T_ctrl : in STD_LOGIC;
    BRAM_P1P1T_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_P1P1T_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_P1P1T_en : in STD_LOGIC;
    BRAM_P1P1T_rst : in STD_LOGIC;
    BRAM_P1P1T_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Red_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Red_ctrl : in STD_LOGIC;
    BRAM_Red_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Red_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Red_en : in STD_LOGIC;
    BRAM_Red_rst : in STD_LOGIC;
    BRAM_Red_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Sam_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_ctrl : in STD_LOGIC;
    BRAM_Sam_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_en : in STD_LOGIC;
    BRAM_Sam_oil_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_oil_ctrl : in STD_LOGIC;
    BRAM_Sam_oil_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_oil_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_oil_en : in STD_LOGIC;
    BRAM_Sam_oil_rst : in STD_LOGIC;
    BRAM_Sam_oil_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Sam_rst : in STD_LOGIC;
    BRAM_Sam_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Sign_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sign_ctrl : in STD_LOGIC;
    BRAM_Sign_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sign_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sign_en : in STD_LOGIC;
    BRAM_Sign_rst : in STD_LOGIC;
    BRAM_Sign_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_0 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    zero0 : in STD_LOGIC;
    zero32 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    zero4 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end BigBRAM1_imp_XLT6M8;

architecture STRUCTURE of BigBRAM1_imp_XLT6M8 is
  component Mayo_sign_with_zynq_BigBRAM_2_256K_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC
  );
  end component Mayo_sign_with_zynq_BigBRAM_2_256K_0;
  component Mayo_sign_with_zynq_mayo_bram_arbiter2_a_0 is
  port (
    BRAM_sign_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sign_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sign_en : in STD_LOGIC;
    BRAM_sign_rst : in STD_LOGIC;
    BRAM_sign_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_sign_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sign_control : in STD_LOGIC;
    BRAM_add_vec_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_vec_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_vec_en : in STD_LOGIC;
    BRAM_add_vec_rst : in STD_LOGIC;
    BRAM_add_vec_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_add_vec_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_vec_control : in STD_LOGIC;
    BRAM_lin_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_en : in STD_LOGIC;
    BRAM_lin_rst : in STD_LOGIC;
    BRAM_lin_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_lin_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_control : in STD_LOGIC;
    BRAM_neg_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_en : in STD_LOGIC;
    BRAM_neg_rst : in STD_LOGIC;
    BRAM_neg_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_neg_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_control : in STD_LOGIC;
    BRAM_red_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_en : in STD_LOGIC;
    BRAM_red_rst : in STD_LOGIC;
    BRAM_red_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_red_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_control : in STD_LOGIC;
    BRAM_sam_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_en : in STD_LOGIC;
    BRAM_sam_rst : in STD_LOGIC;
    BRAM_sam_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_sam_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_control : in STD_LOGIC;
    BRAM_memcpy0_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy0_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy0_en : in STD_LOGIC;
    BRAM_memcpy0_rst : in STD_LOGIC;
    BRAM_memcpy0_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_memcpy0_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy0_control : in STD_LOGIC;
    BRAM_memcpy1_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy1_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy1_en : in STD_LOGIC;
    BRAM_memcpy1_rst : in STD_LOGIC;
    BRAM_memcpy1_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_memcpy1_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy1_control : in STD_LOGIC;
    BRAM_p1p1t_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_p1p1t_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_p1p1t_en : in STD_LOGIC;
    BRAM_p1p1t_rst : in STD_LOGIC;
    BRAM_p1p1t_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_p1p1t_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_p1p1t_control : in STD_LOGIC;
    BRAM_red_ext_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_ext_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_ext_en : in STD_LOGIC;
    BRAM_red_ext_rst : in STD_LOGIC;
    BRAM_red_ext_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_red_ext_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_ext_control : in STD_LOGIC;
    BRAM_sam_vin_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_vin_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_vin_en : in STD_LOGIC;
    BRAM_sam_vin_rst : in STD_LOGIC;
    BRAM_sam_vin_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_sam_vin_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_vin_control : in STD_LOGIC;
    BRAM_sam_oil_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_oil_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_oil_en : in STD_LOGIC;
    BRAM_sam_oil_rst : in STD_LOGIC;
    BRAM_sam_oil_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_sam_oil_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_oil_control : in STD_LOGIC;
    BRAM_add_oil_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_oil_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_oil_en : in STD_LOGIC;
    BRAM_add_oil_rst : in STD_LOGIC;
    BRAM_add_oil_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_add_oil_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_oil_control : in STD_LOGIC;
    BRAM_hash_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_en : in STD_LOGIC;
    BRAM_hash_rst : in STD_LOGIC;
    BRAM_hash_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_hash_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_control : in STD_LOGIC;
    BRAM_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_en : out STD_LOGIC;
    BRAM_rst : out STD_LOGIC;
    BRAM_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_dout : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Mayo_sign_with_zynq_mayo_bram_arbiter2_a_0;
  component Mayo_sign_with_zynq_axi_bram_ctrl_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 17 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Mayo_sign_with_zynq_axi_bram_ctrl_0_0;
  signal BRAM_Add_vec_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_vec_1_CTRL : STD_LOGIC;
  signal BRAM_Add_vec_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_vec_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_vec_1_EN : STD_LOGIC;
  signal BRAM_Add_vec_1_RST : STD_LOGIC;
  signal BRAM_Add_vec_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_Hash_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Hash_1_CTRL : STD_LOGIC;
  signal BRAM_Hash_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Hash_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Hash_1_EN : STD_LOGIC;
  signal BRAM_Hash_1_RST : STD_LOGIC;
  signal BRAM_Hash_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_Lin_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Lin_1_CTRL : STD_LOGIC;
  signal BRAM_Lin_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Lin_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Lin_1_EN : STD_LOGIC;
  signal BRAM_Lin_1_RST : STD_LOGIC;
  signal BRAM_Lin_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_Memcpy0_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Memcpy0_1_CTRL : STD_LOGIC;
  signal BRAM_Memcpy0_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Memcpy0_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Memcpy0_1_EN : STD_LOGIC;
  signal BRAM_Memcpy0_1_RST : STD_LOGIC;
  signal BRAM_Memcpy0_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_Memcpy1_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Memcpy1_1_CTRL : STD_LOGIC;
  signal BRAM_Memcpy1_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Memcpy1_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Memcpy1_1_EN : STD_LOGIC;
  signal BRAM_Memcpy1_1_RST : STD_LOGIC;
  signal BRAM_Memcpy1_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_P1P1T_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_P1P1T_1_CTRL : STD_LOGIC;
  signal BRAM_P1P1T_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_P1P1T_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_P1P1T_1_EN : STD_LOGIC;
  signal BRAM_P1P1T_1_RST : STD_LOGIC;
  signal BRAM_P1P1T_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_Red_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Red_1_CTRL : STD_LOGIC;
  signal BRAM_Red_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Red_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Red_1_EN : STD_LOGIC;
  signal BRAM_Red_1_RST : STD_LOGIC;
  signal BRAM_Red_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_Sam_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Sam_1_CTRL : STD_LOGIC;
  signal BRAM_Sam_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Sam_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Sam_1_EN : STD_LOGIC;
  signal BRAM_Sam_1_RST : STD_LOGIC;
  signal BRAM_Sam_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_Sam_oil_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Sam_oil_1_CTRL : STD_LOGIC;
  signal BRAM_Sam_oil_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Sam_oil_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Sam_oil_1_EN : STD_LOGIC;
  signal BRAM_Sam_oil_1_RST : STD_LOGIC;
  signal BRAM_Sam_oil_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_Sign_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Sign_1_CTRL : STD_LOGIC;
  signal BRAM_Sign_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Sign_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Sign_1_EN : STD_LOGIC;
  signal BRAM_Sign_1_RST : STD_LOGIC;
  signal BRAM_Sign_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_memcpy0_din1_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_memcpy0_en1_1 : STD_LOGIC;
  signal BRAM_memcpy0_we1_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BigBRAM_2_256K_douta : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_CTRL : STD_LOGIC;
  signal Conn1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_EN : STD_LOGIC;
  signal Conn1_RST : STD_LOGIC;
  signal Conn1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Conn2_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn2_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_ARREADY : STD_LOGIC;
  signal Conn2_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Conn2_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn2_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_AWREADY : STD_LOGIC;
  signal Conn2_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Conn2_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_BVALID : STD_LOGIC;
  signal Conn2_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Conn2_RLAST : STD_LOGIC;
  signal Conn2_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_RVALID : STD_LOGIC;
  signal Conn2_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_WREADY : STD_LOGIC;
  signal Conn2_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_ADDR : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_CLK : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_EN : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_RST : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clk_0_1 : STD_LOGIC;
  signal mayo_bram_arbiter2_1_BRAM_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_bram_arbiter2_1_BRAM_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_bram_arbiter2_1_BRAM_en : STD_LOGIC;
  signal mayo_bram_arbiter2_1_BRAM_rst : STD_LOGIC;
  signal mayo_bram_arbiter2_1_BRAM_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_axi_aclk_1 : STD_LOGIC;
  signal s_axi_aresetn_1 : STD_LOGIC;
  signal NLW_BigBRAM_2_256K_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_BigBRAM_2_256K_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_mayo_bram_arbiter2_a_BRAM_neg_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_a_BRAM_red_ext_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_a_BRAM_sam_vin_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute BMM_INFO_ADDRESS_SPACE : string;
  attribute BMM_INFO_ADDRESS_SPACE of axi_bram_ctrl_0 : label is "byte  0x40000000 32 > Mayo_sign_with_zynq BigBRAM1/BigBRAM_2_256K";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of axi_bram_ctrl_0 : label is "yes";
begin
  BRAM_Add_oil_dout(31 downto 0) <= Conn1_DOUT(31 downto 0);
  BRAM_Add_vec_1_ADDR(31 downto 0) <= BRAM_Add_vec_addr(31 downto 0);
  BRAM_Add_vec_1_CTRL <= BRAM_Add_vec_ctrl;
  BRAM_Add_vec_1_DIN(31 downto 0) <= BRAM_Add_vec_din(31 downto 0);
  BRAM_Add_vec_1_EN <= BRAM_Add_vec_en;
  BRAM_Add_vec_1_RST <= BRAM_Add_vec_rst;
  BRAM_Add_vec_1_WE(3 downto 0) <= BRAM_Add_vec_we(3 downto 0);
  BRAM_Add_vec_dout(31 downto 0) <= BRAM_Add_vec_1_DOUT(31 downto 0);
  BRAM_Hash_1_ADDR(31 downto 0) <= BRAM_Hash_addr(31 downto 0);
  BRAM_Hash_1_CTRL <= BRAM_Hash_ctrl;
  BRAM_Hash_1_DIN(31 downto 0) <= BRAM_Hash_din(31 downto 0);
  BRAM_Hash_1_EN <= BRAM_Hash_en;
  BRAM_Hash_1_RST <= BRAM_Hash_rst;
  BRAM_Hash_1_WE(3 downto 0) <= BRAM_Hash_we(3 downto 0);
  BRAM_Hash_dout(31 downto 0) <= BRAM_Hash_1_DOUT(31 downto 0);
  BRAM_Lin_1_ADDR(31 downto 0) <= BRAM_Lin_addr(31 downto 0);
  BRAM_Lin_1_CTRL <= BRAM_Lin_ctrl;
  BRAM_Lin_1_DIN(31 downto 0) <= BRAM_Lin_din(31 downto 0);
  BRAM_Lin_1_EN <= BRAM_Lin_en;
  BRAM_Lin_1_RST <= BRAM_Lin_rst;
  BRAM_Lin_1_WE(3 downto 0) <= BRAM_Lin_we(3 downto 0);
  BRAM_Lin_dout(31 downto 0) <= BRAM_Lin_1_DOUT(31 downto 0);
  BRAM_Memcpy0_1_ADDR(31 downto 0) <= BRAM_Memcpy0_addr(31 downto 0);
  BRAM_Memcpy0_1_CTRL <= BRAM_Memcpy0_ctrl;
  BRAM_Memcpy0_1_DIN(31 downto 0) <= BRAM_Memcpy0_din(31 downto 0);
  BRAM_Memcpy0_1_EN <= BRAM_Memcpy0_en;
  BRAM_Memcpy0_1_RST <= BRAM_Memcpy0_rst;
  BRAM_Memcpy0_1_WE(3 downto 0) <= BRAM_Memcpy0_we(3 downto 0);
  BRAM_Memcpy0_dout(31 downto 0) <= BRAM_Memcpy0_1_DOUT(31 downto 0);
  BRAM_Memcpy1_1_ADDR(31 downto 0) <= BRAM_Memcpy1_addr(31 downto 0);
  BRAM_Memcpy1_1_CTRL <= BRAM_Memcpy1_ctrl;
  BRAM_Memcpy1_1_DIN(31 downto 0) <= BRAM_Memcpy1_din(31 downto 0);
  BRAM_Memcpy1_1_EN <= BRAM_Memcpy1_en;
  BRAM_Memcpy1_1_RST <= BRAM_Memcpy1_rst;
  BRAM_Memcpy1_1_WE(3 downto 0) <= BRAM_Memcpy1_we(3 downto 0);
  BRAM_Memcpy1_dout(31 downto 0) <= BRAM_Memcpy1_1_DOUT(31 downto 0);
  BRAM_P1P1T_1_ADDR(31 downto 0) <= BRAM_P1P1T_addr(31 downto 0);
  BRAM_P1P1T_1_CTRL <= BRAM_P1P1T_ctrl;
  BRAM_P1P1T_1_DIN(31 downto 0) <= BRAM_P1P1T_din(31 downto 0);
  BRAM_P1P1T_1_EN <= BRAM_P1P1T_en;
  BRAM_P1P1T_1_RST <= BRAM_P1P1T_rst;
  BRAM_P1P1T_1_WE(3 downto 0) <= BRAM_P1P1T_we(3 downto 0);
  BRAM_P1P1T_dout(31 downto 0) <= BRAM_P1P1T_1_DOUT(31 downto 0);
  BRAM_Red_1_ADDR(31 downto 0) <= BRAM_Red_addr(31 downto 0);
  BRAM_Red_1_CTRL <= BRAM_Red_ctrl;
  BRAM_Red_1_DIN(31 downto 0) <= BRAM_Red_din(31 downto 0);
  BRAM_Red_1_EN <= BRAM_Red_en;
  BRAM_Red_1_RST <= BRAM_Red_rst;
  BRAM_Red_1_WE(3 downto 0) <= BRAM_Red_we(3 downto 0);
  BRAM_Red_dout(31 downto 0) <= BRAM_Red_1_DOUT(31 downto 0);
  BRAM_Sam_1_ADDR(31 downto 0) <= BRAM_Sam_addr(31 downto 0);
  BRAM_Sam_1_CTRL <= BRAM_Sam_ctrl;
  BRAM_Sam_1_DIN(31 downto 0) <= BRAM_Sam_din(31 downto 0);
  BRAM_Sam_1_EN <= BRAM_Sam_en;
  BRAM_Sam_1_RST <= BRAM_Sam_rst;
  BRAM_Sam_1_WE(3 downto 0) <= BRAM_Sam_we(3 downto 0);
  BRAM_Sam_dout(31 downto 0) <= BRAM_Sam_1_DOUT(31 downto 0);
  BRAM_Sam_oil_1_ADDR(31 downto 0) <= BRAM_Sam_oil_addr(31 downto 0);
  BRAM_Sam_oil_1_CTRL <= BRAM_Sam_oil_ctrl;
  BRAM_Sam_oil_1_DIN(31 downto 0) <= BRAM_Sam_oil_din(31 downto 0);
  BRAM_Sam_oil_1_EN <= BRAM_Sam_oil_en;
  BRAM_Sam_oil_1_RST <= BRAM_Sam_oil_rst;
  BRAM_Sam_oil_1_WE(3 downto 0) <= BRAM_Sam_oil_we(3 downto 0);
  BRAM_Sam_oil_dout(31 downto 0) <= BRAM_Sam_oil_1_DOUT(31 downto 0);
  BRAM_Sign_1_ADDR(31 downto 0) <= BRAM_Sign_addr(31 downto 0);
  BRAM_Sign_1_CTRL <= BRAM_Sign_ctrl;
  BRAM_Sign_1_DIN(31 downto 0) <= BRAM_Sign_din(31 downto 0);
  BRAM_Sign_1_EN <= BRAM_Sign_en;
  BRAM_Sign_1_RST <= BRAM_Sign_rst;
  BRAM_Sign_1_WE(3 downto 0) <= BRAM_Sign_we(3 downto 0);
  BRAM_Sign_dout(31 downto 0) <= BRAM_Sign_1_DOUT(31 downto 0);
  BRAM_memcpy0_din1_1(31 downto 0) <= zero32(31 downto 0);
  BRAM_memcpy0_en1_1 <= zero0;
  BRAM_memcpy0_we1_1(3 downto 0) <= zero4(3 downto 0);
  Conn1_ADDR(31 downto 0) <= BRAM_Add_oil_addr(31 downto 0);
  Conn1_CTRL <= BRAM_Add_oil_ctrl;
  Conn1_DIN(31 downto 0) <= BRAM_Add_oil_din(31 downto 0);
  Conn1_EN <= BRAM_Add_oil_en;
  Conn1_RST <= BRAM_Add_oil_rst;
  Conn1_WE(3 downto 0) <= BRAM_Add_oil_we(3 downto 0);
  Conn2_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  Conn2_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  Conn2_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  Conn2_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  Conn2_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  Conn2_ARLOCK(0) <= S_AXI_arlock(0);
  Conn2_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  Conn2_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  Conn2_ARVALID(0) <= S_AXI_arvalid(0);
  Conn2_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  Conn2_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  Conn2_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  Conn2_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  Conn2_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  Conn2_AWLOCK(0) <= S_AXI_awlock(0);
  Conn2_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  Conn2_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  Conn2_AWVALID(0) <= S_AXI_awvalid(0);
  Conn2_BREADY(0) <= S_AXI_bready(0);
  Conn2_RREADY(0) <= S_AXI_rready(0);
  Conn2_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  Conn2_WLAST(0) <= S_AXI_wlast(0);
  Conn2_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  Conn2_WVALID(0) <= S_AXI_wvalid(0);
  S_AXI_arready(0) <= Conn2_ARREADY;
  S_AXI_awready(0) <= Conn2_AWREADY;
  S_AXI_bid(11 downto 0) <= Conn2_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= Conn2_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= Conn2_BVALID;
  S_AXI_rdata(31 downto 0) <= Conn2_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= Conn2_RID(11 downto 0);
  S_AXI_rlast(0) <= Conn2_RLAST;
  S_AXI_rresp(1 downto 0) <= Conn2_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= Conn2_RVALID;
  S_AXI_wready(0) <= Conn2_WREADY;
  clk_0_1 <= clk_0;
  s_axi_aclk_1 <= s_axi_aclk;
  s_axi_aresetn_1 <= s_axi_aresetn;
BigBRAM_2_256K: component Mayo_sign_with_zynq_BigBRAM_2_256K_0
     port map (
      addra(31 downto 0) => mayo_bram_arbiter2_1_BRAM_addr(31 downto 0),
      addrb(31 downto 18) => B"00000000000000",
      addrb(17 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(17 downto 0),
      clka => clk_0_1,
      clkb => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      dina(31 downto 0) => mayo_bram_arbiter2_1_BRAM_din(31 downto 0),
      dinb(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(31 downto 0),
      douta(31 downto 0) => BigBRAM_2_256K_douta(31 downto 0),
      doutb(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
      ena => mayo_bram_arbiter2_1_BRAM_en,
      enb => axi_bram_ctrl_0_BRAM_PORTA_EN,
      rsta => mayo_bram_arbiter2_1_BRAM_rst,
      rsta_busy => NLW_BigBRAM_2_256K_rsta_busy_UNCONNECTED,
      rstb => axi_bram_ctrl_0_BRAM_PORTA_RST,
      rstb_busy => NLW_BigBRAM_2_256K_rstb_busy_UNCONNECTED,
      wea(3 downto 0) => mayo_bram_arbiter2_1_BRAM_we(3 downto 0),
      web(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(3 downto 0)
    );
axi_bram_ctrl_0: component Mayo_sign_with_zynq_axi_bram_ctrl_0_0
     port map (
      bram_addr_a(17 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(17 downto 0),
      bram_clk_a => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      bram_en_a => axi_bram_ctrl_0_BRAM_PORTA_EN,
      bram_rddata_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
      bram_rst_a => axi_bram_ctrl_0_BRAM_PORTA_RST,
      bram_we_a(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(3 downto 0),
      bram_wrdata_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(31 downto 0),
      s_axi_aclk => s_axi_aclk_1,
      s_axi_araddr(17 downto 0) => Conn2_ARADDR(17 downto 0),
      s_axi_arburst(1 downto 0) => Conn2_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => Conn2_ARCACHE(3 downto 0),
      s_axi_aresetn => s_axi_aresetn_1,
      s_axi_arid(11 downto 0) => Conn2_ARID(11 downto 0),
      s_axi_arlen(7 downto 0) => Conn2_ARLEN(7 downto 0),
      s_axi_arlock => Conn2_ARLOCK(0),
      s_axi_arprot(2 downto 0) => Conn2_ARPROT(2 downto 0),
      s_axi_arready => Conn2_ARREADY,
      s_axi_arsize(2 downto 0) => Conn2_ARSIZE(2 downto 0),
      s_axi_arvalid => Conn2_ARVALID(0),
      s_axi_awaddr(17 downto 0) => Conn2_AWADDR(17 downto 0),
      s_axi_awburst(1 downto 0) => Conn2_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => Conn2_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => Conn2_AWID(11 downto 0),
      s_axi_awlen(7 downto 0) => Conn2_AWLEN(7 downto 0),
      s_axi_awlock => Conn2_AWLOCK(0),
      s_axi_awprot(2 downto 0) => Conn2_AWPROT(2 downto 0),
      s_axi_awready => Conn2_AWREADY,
      s_axi_awsize(2 downto 0) => Conn2_AWSIZE(2 downto 0),
      s_axi_awvalid => Conn2_AWVALID(0),
      s_axi_bid(11 downto 0) => Conn2_BID(11 downto 0),
      s_axi_bready => Conn2_BREADY(0),
      s_axi_bresp(1 downto 0) => Conn2_BRESP(1 downto 0),
      s_axi_bvalid => Conn2_BVALID,
      s_axi_rdata(31 downto 0) => Conn2_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => Conn2_RID(11 downto 0),
      s_axi_rlast => Conn2_RLAST,
      s_axi_rready => Conn2_RREADY(0),
      s_axi_rresp(1 downto 0) => Conn2_RRESP(1 downto 0),
      s_axi_rvalid => Conn2_RVALID,
      s_axi_wdata(31 downto 0) => Conn2_WDATA(31 downto 0),
      s_axi_wlast => Conn2_WLAST(0),
      s_axi_wready => Conn2_WREADY,
      s_axi_wstrb(3 downto 0) => Conn2_WSTRB(3 downto 0),
      s_axi_wvalid => Conn2_WVALID(0)
    );
mayo_bram_arbiter2_a: component Mayo_sign_with_zynq_mayo_bram_arbiter2_a_0
     port map (
      BRAM_add_oil_addr(31 downto 0) => Conn1_ADDR(31 downto 0),
      BRAM_add_oil_control => Conn1_CTRL,
      BRAM_add_oil_din(31 downto 0) => Conn1_DIN(31 downto 0),
      BRAM_add_oil_dout(31 downto 0) => Conn1_DOUT(31 downto 0),
      BRAM_add_oil_en => Conn1_EN,
      BRAM_add_oil_rst => Conn1_RST,
      BRAM_add_oil_we(3 downto 0) => Conn1_WE(3 downto 0),
      BRAM_add_vec_addr(31 downto 0) => BRAM_Add_vec_1_ADDR(31 downto 0),
      BRAM_add_vec_control => BRAM_Add_vec_1_CTRL,
      BRAM_add_vec_din(31 downto 0) => BRAM_Add_vec_1_DIN(31 downto 0),
      BRAM_add_vec_dout(31 downto 0) => BRAM_Add_vec_1_DOUT(31 downto 0),
      BRAM_add_vec_en => BRAM_Add_vec_1_EN,
      BRAM_add_vec_rst => BRAM_Add_vec_1_RST,
      BRAM_add_vec_we(3 downto 0) => BRAM_Add_vec_1_WE(3 downto 0),
      BRAM_addr(31 downto 0) => mayo_bram_arbiter2_1_BRAM_addr(31 downto 0),
      BRAM_din(31 downto 0) => mayo_bram_arbiter2_1_BRAM_din(31 downto 0),
      BRAM_dout(31 downto 0) => BigBRAM_2_256K_douta(31 downto 0),
      BRAM_en => mayo_bram_arbiter2_1_BRAM_en,
      BRAM_hash_addr(31 downto 0) => BRAM_Hash_1_ADDR(31 downto 0),
      BRAM_hash_control => BRAM_Hash_1_CTRL,
      BRAM_hash_din(31 downto 0) => BRAM_Hash_1_DIN(31 downto 0),
      BRAM_hash_dout(31 downto 0) => BRAM_Hash_1_DOUT(31 downto 0),
      BRAM_hash_en => BRAM_Hash_1_EN,
      BRAM_hash_rst => BRAM_Hash_1_RST,
      BRAM_hash_we(3 downto 0) => BRAM_Hash_1_WE(3 downto 0),
      BRAM_lin_addr(31 downto 0) => BRAM_Lin_1_ADDR(31 downto 0),
      BRAM_lin_control => BRAM_Lin_1_CTRL,
      BRAM_lin_din(31 downto 0) => BRAM_Lin_1_DIN(31 downto 0),
      BRAM_lin_dout(31 downto 0) => BRAM_Lin_1_DOUT(31 downto 0),
      BRAM_lin_en => BRAM_Lin_1_EN,
      BRAM_lin_rst => BRAM_Lin_1_RST,
      BRAM_lin_we(3 downto 0) => BRAM_Lin_1_WE(3 downto 0),
      BRAM_memcpy0_addr(31 downto 0) => BRAM_Memcpy0_1_ADDR(31 downto 0),
      BRAM_memcpy0_control => BRAM_Memcpy0_1_CTRL,
      BRAM_memcpy0_din(31 downto 0) => BRAM_Memcpy0_1_DIN(31 downto 0),
      BRAM_memcpy0_dout(31 downto 0) => BRAM_Memcpy0_1_DOUT(31 downto 0),
      BRAM_memcpy0_en => BRAM_Memcpy0_1_EN,
      BRAM_memcpy0_rst => BRAM_Memcpy0_1_RST,
      BRAM_memcpy0_we(3 downto 0) => BRAM_Memcpy0_1_WE(3 downto 0),
      BRAM_memcpy1_addr(31 downto 0) => BRAM_Memcpy1_1_ADDR(31 downto 0),
      BRAM_memcpy1_control => BRAM_Memcpy1_1_CTRL,
      BRAM_memcpy1_din(31 downto 0) => BRAM_Memcpy1_1_DIN(31 downto 0),
      BRAM_memcpy1_dout(31 downto 0) => BRAM_Memcpy1_1_DOUT(31 downto 0),
      BRAM_memcpy1_en => BRAM_Memcpy1_1_EN,
      BRAM_memcpy1_rst => BRAM_Memcpy1_1_RST,
      BRAM_memcpy1_we(3 downto 0) => BRAM_Memcpy1_1_WE(3 downto 0),
      BRAM_neg_addr(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_neg_control => BRAM_memcpy0_en1_1,
      BRAM_neg_din(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_neg_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_neg_dout_UNCONNECTED(31 downto 0),
      BRAM_neg_en => BRAM_memcpy0_en1_1,
      BRAM_neg_rst => BRAM_memcpy0_en1_1,
      BRAM_neg_we(3 downto 0) => BRAM_memcpy0_we1_1(3 downto 0),
      BRAM_p1p1t_addr(31 downto 0) => BRAM_P1P1T_1_ADDR(31 downto 0),
      BRAM_p1p1t_control => BRAM_P1P1T_1_CTRL,
      BRAM_p1p1t_din(31 downto 0) => BRAM_P1P1T_1_DIN(31 downto 0),
      BRAM_p1p1t_dout(31 downto 0) => BRAM_P1P1T_1_DOUT(31 downto 0),
      BRAM_p1p1t_en => BRAM_P1P1T_1_EN,
      BRAM_p1p1t_rst => BRAM_P1P1T_1_RST,
      BRAM_p1p1t_we(3 downto 0) => BRAM_P1P1T_1_WE(3 downto 0),
      BRAM_red_addr(31 downto 0) => BRAM_Red_1_ADDR(31 downto 0),
      BRAM_red_control => BRAM_Red_1_CTRL,
      BRAM_red_din(31 downto 0) => BRAM_Red_1_DIN(31 downto 0),
      BRAM_red_dout(31 downto 0) => BRAM_Red_1_DOUT(31 downto 0),
      BRAM_red_en => BRAM_Red_1_EN,
      BRAM_red_ext_addr(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_red_ext_control => BRAM_memcpy0_en1_1,
      BRAM_red_ext_din(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_red_ext_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_red_ext_dout_UNCONNECTED(31 downto 0),
      BRAM_red_ext_en => BRAM_memcpy0_en1_1,
      BRAM_red_ext_rst => BRAM_memcpy0_en1_1,
      BRAM_red_ext_we(3 downto 0) => BRAM_memcpy0_we1_1(3 downto 0),
      BRAM_red_rst => BRAM_Red_1_RST,
      BRAM_red_we(3 downto 0) => BRAM_Red_1_WE(3 downto 0),
      BRAM_rst => mayo_bram_arbiter2_1_BRAM_rst,
      BRAM_sam_addr(31 downto 0) => BRAM_Sam_1_ADDR(31 downto 0),
      BRAM_sam_control => BRAM_Sam_1_CTRL,
      BRAM_sam_din(31 downto 0) => BRAM_Sam_1_DIN(31 downto 0),
      BRAM_sam_dout(31 downto 0) => BRAM_Sam_1_DOUT(31 downto 0),
      BRAM_sam_en => BRAM_Sam_1_EN,
      BRAM_sam_oil_addr(31 downto 0) => BRAM_Sam_oil_1_ADDR(31 downto 0),
      BRAM_sam_oil_control => BRAM_Sam_oil_1_CTRL,
      BRAM_sam_oil_din(31 downto 0) => BRAM_Sam_oil_1_DIN(31 downto 0),
      BRAM_sam_oil_dout(31 downto 0) => BRAM_Sam_oil_1_DOUT(31 downto 0),
      BRAM_sam_oil_en => BRAM_Sam_oil_1_EN,
      BRAM_sam_oil_rst => BRAM_Sam_oil_1_RST,
      BRAM_sam_oil_we(3 downto 0) => BRAM_Sam_oil_1_WE(3 downto 0),
      BRAM_sam_rst => BRAM_Sam_1_RST,
      BRAM_sam_vin_addr(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_sam_vin_control => BRAM_memcpy0_en1_1,
      BRAM_sam_vin_din(31 downto 0) => BRAM_memcpy0_din1_1(31 downto 0),
      BRAM_sam_vin_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_sam_vin_dout_UNCONNECTED(31 downto 0),
      BRAM_sam_vin_en => BRAM_memcpy0_en1_1,
      BRAM_sam_vin_rst => BRAM_memcpy0_en1_1,
      BRAM_sam_vin_we(3 downto 0) => BRAM_memcpy0_we1_1(3 downto 0),
      BRAM_sam_we(3 downto 0) => BRAM_Sam_1_WE(3 downto 0),
      BRAM_sign_addr(31 downto 0) => BRAM_Sign_1_ADDR(31 downto 0),
      BRAM_sign_control => BRAM_Sign_1_CTRL,
      BRAM_sign_din(31 downto 0) => BRAM_Sign_1_DIN(31 downto 0),
      BRAM_sign_dout(31 downto 0) => BRAM_Sign_1_DOUT(31 downto 0),
      BRAM_sign_en => BRAM_Sign_1_EN,
      BRAM_sign_rst => BRAM_Sign_1_RST,
      BRAM_sign_we(3 downto 0) => BRAM_Sign_1_WE(3 downto 0),
      BRAM_we(3 downto 0) => mayo_bram_arbiter2_1_BRAM_we(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BigBRAM2_imp_1NKQM16 is
  port (
    BRAM_Add_vec1_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_vec1_ctrl : in STD_LOGIC;
    BRAM_Add_vec1_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_vec1_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_vec1_en : in STD_LOGIC;
    BRAM_Add_vec1_rst : in STD_LOGIC;
    BRAM_Add_vec1_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Add_vec_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_vec_ctrl : in STD_LOGIC;
    BRAM_Add_vec_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_vec_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_vec_en : in STD_LOGIC;
    BRAM_Add_vec_rst : in STD_LOGIC;
    BRAM_Add_vec_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Lin1_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Lin1_ctrl : in STD_LOGIC;
    BRAM_Lin1_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Lin1_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Lin1_en : in STD_LOGIC;
    BRAM_Lin1_rst : in STD_LOGIC;
    BRAM_Lin1_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Lin_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Lin_ctrl : in STD_LOGIC;
    BRAM_Lin_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Lin_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Lin_en : in STD_LOGIC;
    BRAM_Lin_rst : in STD_LOGIC;
    BRAM_Lin_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Memcpy0_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Memcpy0_ctrl : in STD_LOGIC;
    BRAM_Memcpy0_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Memcpy0_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Memcpy0_en : in STD_LOGIC;
    BRAM_Memcpy0_rst : in STD_LOGIC;
    BRAM_Memcpy0_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Neg_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Neg_ctrl : in STD_LOGIC;
    BRAM_Neg_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Neg_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Neg_en : in STD_LOGIC;
    BRAM_Neg_rst : in STD_LOGIC;
    BRAM_Neg_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_P1P1T_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_P1P1T_ctrl : in STD_LOGIC;
    BRAM_P1P1T_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_P1P1T_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_P1P1T_en : in STD_LOGIC;
    BRAM_P1P1T_rst : in STD_LOGIC;
    BRAM_P1P1T_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Red_ext1_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Red_ext1_ctrl : in STD_LOGIC;
    BRAM_Red_ext1_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Red_ext1_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Red_ext1_en : in STD_LOGIC;
    BRAM_Red_ext1_rst : in STD_LOGIC;
    BRAM_Red_ext1_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Sign1_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sign1_ctrl : in STD_LOGIC;
    BRAM_Sign1_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sign1_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sign1_en : in STD_LOGIC;
    BRAM_Sign1_rst : in STD_LOGIC;
    BRAM_Sign1_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Sign_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sign_ctrl : in STD_LOGIC;
    BRAM_Sign_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sign_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sign_en : in STD_LOGIC;
    BRAM_Sign_rst : in STD_LOGIC;
    BRAM_Sign_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Zero0 : in STD_LOGIC;
    Zero32 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Zero4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC
  );
end BigBRAM2_imp_1NKQM16;

architecture STRUCTURE of BigBRAM2_imp_1NKQM16 is
  component Mayo_sign_with_zynq_BigBRAM_3_256K_0 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Mayo_sign_with_zynq_BigBRAM_3_256K_0;
  component Mayo_sign_with_zynq_mayo_bram_arbiter2_a_1 is
  port (
    BRAM_sign_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sign_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sign_en : in STD_LOGIC;
    BRAM_sign_rst : in STD_LOGIC;
    BRAM_sign_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_sign_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sign_control : in STD_LOGIC;
    BRAM_add_vec_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_vec_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_vec_en : in STD_LOGIC;
    BRAM_add_vec_rst : in STD_LOGIC;
    BRAM_add_vec_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_add_vec_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_vec_control : in STD_LOGIC;
    BRAM_lin_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_en : in STD_LOGIC;
    BRAM_lin_rst : in STD_LOGIC;
    BRAM_lin_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_lin_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_control : in STD_LOGIC;
    BRAM_neg_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_en : in STD_LOGIC;
    BRAM_neg_rst : in STD_LOGIC;
    BRAM_neg_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_neg_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_control : in STD_LOGIC;
    BRAM_red_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_en : in STD_LOGIC;
    BRAM_red_rst : in STD_LOGIC;
    BRAM_red_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_red_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_control : in STD_LOGIC;
    BRAM_sam_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_en : in STD_LOGIC;
    BRAM_sam_rst : in STD_LOGIC;
    BRAM_sam_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_sam_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_control : in STD_LOGIC;
    BRAM_memcpy0_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy0_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy0_en : in STD_LOGIC;
    BRAM_memcpy0_rst : in STD_LOGIC;
    BRAM_memcpy0_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_memcpy0_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy0_control : in STD_LOGIC;
    BRAM_memcpy1_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy1_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy1_en : in STD_LOGIC;
    BRAM_memcpy1_rst : in STD_LOGIC;
    BRAM_memcpy1_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_memcpy1_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy1_control : in STD_LOGIC;
    BRAM_p1p1t_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_p1p1t_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_p1p1t_en : in STD_LOGIC;
    BRAM_p1p1t_rst : in STD_LOGIC;
    BRAM_p1p1t_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_p1p1t_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_p1p1t_control : in STD_LOGIC;
    BRAM_red_ext_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_ext_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_ext_en : in STD_LOGIC;
    BRAM_red_ext_rst : in STD_LOGIC;
    BRAM_red_ext_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_red_ext_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_ext_control : in STD_LOGIC;
    BRAM_sam_vin_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_vin_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_vin_en : in STD_LOGIC;
    BRAM_sam_vin_rst : in STD_LOGIC;
    BRAM_sam_vin_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_sam_vin_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_vin_control : in STD_LOGIC;
    BRAM_sam_oil_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_oil_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_oil_en : in STD_LOGIC;
    BRAM_sam_oil_rst : in STD_LOGIC;
    BRAM_sam_oil_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_sam_oil_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_oil_control : in STD_LOGIC;
    BRAM_add_oil_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_oil_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_oil_en : in STD_LOGIC;
    BRAM_add_oil_rst : in STD_LOGIC;
    BRAM_add_oil_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_add_oil_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_oil_control : in STD_LOGIC;
    BRAM_hash_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_en : in STD_LOGIC;
    BRAM_hash_rst : in STD_LOGIC;
    BRAM_hash_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_hash_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_control : in STD_LOGIC;
    BRAM_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_en : out STD_LOGIC;
    BRAM_rst : out STD_LOGIC;
    BRAM_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_dout : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Mayo_sign_with_zynq_mayo_bram_arbiter2_a_1;
  component Mayo_sign_with_zynq_mayo_bram_arbiter2_b_1 is
  port (
    BRAM_sign_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sign_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sign_en : in STD_LOGIC;
    BRAM_sign_rst : in STD_LOGIC;
    BRAM_sign_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_sign_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sign_control : in STD_LOGIC;
    BRAM_add_vec_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_vec_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_vec_en : in STD_LOGIC;
    BRAM_add_vec_rst : in STD_LOGIC;
    BRAM_add_vec_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_add_vec_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_vec_control : in STD_LOGIC;
    BRAM_lin_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_en : in STD_LOGIC;
    BRAM_lin_rst : in STD_LOGIC;
    BRAM_lin_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_lin_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_control : in STD_LOGIC;
    BRAM_neg_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_en : in STD_LOGIC;
    BRAM_neg_rst : in STD_LOGIC;
    BRAM_neg_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_neg_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_control : in STD_LOGIC;
    BRAM_red_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_en : in STD_LOGIC;
    BRAM_red_rst : in STD_LOGIC;
    BRAM_red_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_red_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_control : in STD_LOGIC;
    BRAM_sam_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_en : in STD_LOGIC;
    BRAM_sam_rst : in STD_LOGIC;
    BRAM_sam_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_sam_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_control : in STD_LOGIC;
    BRAM_memcpy0_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy0_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy0_en : in STD_LOGIC;
    BRAM_memcpy0_rst : in STD_LOGIC;
    BRAM_memcpy0_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_memcpy0_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy0_control : in STD_LOGIC;
    BRAM_memcpy1_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy1_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy1_en : in STD_LOGIC;
    BRAM_memcpy1_rst : in STD_LOGIC;
    BRAM_memcpy1_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_memcpy1_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy1_control : in STD_LOGIC;
    BRAM_p1p1t_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_p1p1t_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_p1p1t_en : in STD_LOGIC;
    BRAM_p1p1t_rst : in STD_LOGIC;
    BRAM_p1p1t_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_p1p1t_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_p1p1t_control : in STD_LOGIC;
    BRAM_red_ext_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_ext_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_ext_en : in STD_LOGIC;
    BRAM_red_ext_rst : in STD_LOGIC;
    BRAM_red_ext_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_red_ext_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_ext_control : in STD_LOGIC;
    BRAM_sam_vin_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_vin_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_vin_en : in STD_LOGIC;
    BRAM_sam_vin_rst : in STD_LOGIC;
    BRAM_sam_vin_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_sam_vin_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_vin_control : in STD_LOGIC;
    BRAM_sam_oil_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_oil_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_oil_en : in STD_LOGIC;
    BRAM_sam_oil_rst : in STD_LOGIC;
    BRAM_sam_oil_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_sam_oil_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_oil_control : in STD_LOGIC;
    BRAM_add_oil_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_oil_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_oil_en : in STD_LOGIC;
    BRAM_add_oil_rst : in STD_LOGIC;
    BRAM_add_oil_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_add_oil_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_oil_control : in STD_LOGIC;
    BRAM_hash_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_en : in STD_LOGIC;
    BRAM_hash_rst : in STD_LOGIC;
    BRAM_hash_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_hash_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_control : in STD_LOGIC;
    BRAM_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_en : out STD_LOGIC;
    BRAM_rst : out STD_LOGIC;
    BRAM_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_dout : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Mayo_sign_with_zynq_mayo_bram_arbiter2_b_1;
  signal BRAM_Add_vec1_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_vec1_1_CTRL : STD_LOGIC;
  signal BRAM_Add_vec1_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_vec1_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_vec1_1_EN : STD_LOGIC;
  signal BRAM_Add_vec1_1_RST : STD_LOGIC;
  signal BRAM_Add_vec1_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_Add_vec_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_vec_1_CTRL : STD_LOGIC;
  signal BRAM_Add_vec_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_vec_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_vec_1_EN : STD_LOGIC;
  signal BRAM_Add_vec_1_RST : STD_LOGIC;
  signal BRAM_Add_vec_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_Lin1_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Lin1_1_CTRL : STD_LOGIC;
  signal BRAM_Lin1_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Lin1_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Lin1_1_EN : STD_LOGIC;
  signal BRAM_Lin1_1_RST : STD_LOGIC;
  signal BRAM_Lin1_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_Lin_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Lin_1_CTRL : STD_LOGIC;
  signal BRAM_Lin_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Lin_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Lin_1_EN : STD_LOGIC;
  signal BRAM_Lin_1_RST : STD_LOGIC;
  signal BRAM_Lin_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_neg_din1_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_neg_en1_1 : STD_LOGIC;
  signal BRAM_neg_we1_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BigBRAM_3_256K_douta : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BigBRAM_3_256K_doutb : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_CTRL : STD_LOGIC;
  signal Conn1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_EN : STD_LOGIC;
  signal Conn1_RST : STD_LOGIC;
  signal Conn1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_CTRL : STD_LOGIC;
  signal Conn2_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_EN : STD_LOGIC;
  signal Conn2_RST : STD_LOGIC;
  signal Conn2_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn3_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_CTRL : STD_LOGIC;
  signal Conn3_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_EN : STD_LOGIC;
  signal Conn3_RST : STD_LOGIC;
  signal Conn3_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn4_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_CTRL : STD_LOGIC;
  signal Conn4_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_EN : STD_LOGIC;
  signal Conn4_RST : STD_LOGIC;
  signal Conn4_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn5_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn5_CTRL : STD_LOGIC;
  signal Conn5_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn5_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn5_EN : STD_LOGIC;
  signal Conn5_RST : STD_LOGIC;
  signal Conn5_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn6_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn6_CTRL : STD_LOGIC;
  signal Conn6_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn6_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn6_EN : STD_LOGIC;
  signal Conn6_RST : STD_LOGIC;
  signal Conn6_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clka_0_1 : STD_LOGIC;
  signal mayo_bram_arbiter2_0_BRAM_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_bram_arbiter2_0_BRAM_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_bram_arbiter2_0_BRAM_en : STD_LOGIC;
  signal mayo_bram_arbiter2_0_BRAM_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_bram_arbiter2_1_BRAM_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_bram_arbiter2_1_BRAM_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_bram_arbiter2_1_BRAM_en : STD_LOGIC;
  signal mayo_bram_arbiter2_1_BRAM_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mayo_bram_arbiter2_a_BRAM_rst_UNCONNECTED : STD_LOGIC;
  signal NLW_mayo_bram_arbiter2_a_BRAM_add_oil_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_a_BRAM_hash_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_a_BRAM_memcpy0_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_a_BRAM_memcpy1_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_a_BRAM_red_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_a_BRAM_red_ext_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_a_BRAM_sam_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_a_BRAM_sam_oil_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_a_BRAM_sam_vin_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_rst_UNCONNECTED : STD_LOGIC;
  signal NLW_mayo_bram_arbiter2_b_BRAM_add_oil_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_hash_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_memcpy1_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_neg_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_p1p1t_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_red_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_sam_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_sam_oil_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_sam_vin_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  BRAM_Add_vec1_1_ADDR(31 downto 0) <= BRAM_Add_vec1_addr(31 downto 0);
  BRAM_Add_vec1_1_CTRL <= BRAM_Add_vec1_ctrl;
  BRAM_Add_vec1_1_DIN(31 downto 0) <= BRAM_Add_vec1_din(31 downto 0);
  BRAM_Add_vec1_1_EN <= BRAM_Add_vec1_en;
  BRAM_Add_vec1_1_RST <= BRAM_Add_vec1_rst;
  BRAM_Add_vec1_1_WE(3 downto 0) <= BRAM_Add_vec1_we(3 downto 0);
  BRAM_Add_vec1_dout(31 downto 0) <= BRAM_Add_vec1_1_DOUT(31 downto 0);
  BRAM_Add_vec_1_ADDR(31 downto 0) <= BRAM_Add_vec_addr(31 downto 0);
  BRAM_Add_vec_1_CTRL <= BRAM_Add_vec_ctrl;
  BRAM_Add_vec_1_DIN(31 downto 0) <= BRAM_Add_vec_din(31 downto 0);
  BRAM_Add_vec_1_EN <= BRAM_Add_vec_en;
  BRAM_Add_vec_1_RST <= BRAM_Add_vec_rst;
  BRAM_Add_vec_1_WE(3 downto 0) <= BRAM_Add_vec_we(3 downto 0);
  BRAM_Add_vec_dout(31 downto 0) <= BRAM_Add_vec_1_DOUT(31 downto 0);
  BRAM_Lin1_1_ADDR(31 downto 0) <= BRAM_Lin1_addr(31 downto 0);
  BRAM_Lin1_1_CTRL <= BRAM_Lin1_ctrl;
  BRAM_Lin1_1_DIN(31 downto 0) <= BRAM_Lin1_din(31 downto 0);
  BRAM_Lin1_1_EN <= BRAM_Lin1_en;
  BRAM_Lin1_1_RST <= BRAM_Lin1_rst;
  BRAM_Lin1_1_WE(3 downto 0) <= BRAM_Lin1_we(3 downto 0);
  BRAM_Lin1_dout(31 downto 0) <= BRAM_Lin1_1_DOUT(31 downto 0);
  BRAM_Lin_1_ADDR(31 downto 0) <= BRAM_Lin_addr(31 downto 0);
  BRAM_Lin_1_CTRL <= BRAM_Lin_ctrl;
  BRAM_Lin_1_DIN(31 downto 0) <= BRAM_Lin_din(31 downto 0);
  BRAM_Lin_1_EN <= BRAM_Lin_en;
  BRAM_Lin_1_RST <= BRAM_Lin_rst;
  BRAM_Lin_1_WE(3 downto 0) <= BRAM_Lin_we(3 downto 0);
  BRAM_Lin_dout(31 downto 0) <= BRAM_Lin_1_DOUT(31 downto 0);
  BRAM_Memcpy0_dout(31 downto 0) <= Conn4_DOUT(31 downto 0);
  BRAM_Neg_dout(31 downto 0) <= Conn3_DOUT(31 downto 0);
  BRAM_P1P1T_dout(31 downto 0) <= Conn6_DOUT(31 downto 0);
  BRAM_Red_ext1_dout(31 downto 0) <= Conn5_DOUT(31 downto 0);
  BRAM_Sign1_dout(31 downto 0) <= Conn2_DOUT(31 downto 0);
  BRAM_Sign_dout(31 downto 0) <= Conn1_DOUT(31 downto 0);
  BRAM_neg_din1_1(31 downto 0) <= Zero32(31 downto 0);
  BRAM_neg_en1_1 <= Zero0;
  BRAM_neg_we1_1(3 downto 0) <= Zero4(3 downto 0);
  Conn1_ADDR(31 downto 0) <= BRAM_Sign_addr(31 downto 0);
  Conn1_CTRL <= BRAM_Sign_ctrl;
  Conn1_DIN(31 downto 0) <= BRAM_Sign_din(31 downto 0);
  Conn1_EN <= BRAM_Sign_en;
  Conn1_RST <= BRAM_Sign_rst;
  Conn1_WE(3 downto 0) <= BRAM_Sign_we(3 downto 0);
  Conn2_ADDR(31 downto 0) <= BRAM_Sign1_addr(31 downto 0);
  Conn2_CTRL <= BRAM_Sign1_ctrl;
  Conn2_DIN(31 downto 0) <= BRAM_Sign1_din(31 downto 0);
  Conn2_EN <= BRAM_Sign1_en;
  Conn2_RST <= BRAM_Sign1_rst;
  Conn2_WE(3 downto 0) <= BRAM_Sign1_we(3 downto 0);
  Conn3_ADDR(31 downto 0) <= BRAM_Neg_addr(31 downto 0);
  Conn3_CTRL <= BRAM_Neg_ctrl;
  Conn3_DIN(31 downto 0) <= BRAM_Neg_din(31 downto 0);
  Conn3_EN <= BRAM_Neg_en;
  Conn3_RST <= BRAM_Neg_rst;
  Conn3_WE(3 downto 0) <= BRAM_Neg_we(3 downto 0);
  Conn4_ADDR(31 downto 0) <= BRAM_Memcpy0_addr(31 downto 0);
  Conn4_CTRL <= BRAM_Memcpy0_ctrl;
  Conn4_DIN(31 downto 0) <= BRAM_Memcpy0_din(31 downto 0);
  Conn4_EN <= BRAM_Memcpy0_en;
  Conn4_RST <= BRAM_Memcpy0_rst;
  Conn4_WE(3 downto 0) <= BRAM_Memcpy0_we(3 downto 0);
  Conn5_ADDR(31 downto 0) <= BRAM_Red_ext1_addr(31 downto 0);
  Conn5_CTRL <= BRAM_Red_ext1_ctrl;
  Conn5_DIN(31 downto 0) <= BRAM_Red_ext1_din(31 downto 0);
  Conn5_EN <= BRAM_Red_ext1_en;
  Conn5_RST <= BRAM_Red_ext1_rst;
  Conn5_WE(3 downto 0) <= BRAM_Red_ext1_we(3 downto 0);
  Conn6_ADDR(31 downto 0) <= BRAM_P1P1T_addr(31 downto 0);
  Conn6_CTRL <= BRAM_P1P1T_ctrl;
  Conn6_DIN(31 downto 0) <= BRAM_P1P1T_din(31 downto 0);
  Conn6_EN <= BRAM_P1P1T_en;
  Conn6_RST <= BRAM_P1P1T_rst;
  Conn6_WE(3 downto 0) <= BRAM_P1P1T_we(3 downto 0);
  clka_0_1 <= clk;
BigBRAM_3_256K: component Mayo_sign_with_zynq_BigBRAM_3_256K_0
     port map (
      addra(31 downto 0) => mayo_bram_arbiter2_1_BRAM_addr(31 downto 0),
      addrb(31 downto 0) => mayo_bram_arbiter2_0_BRAM_addr(31 downto 0),
      clka => clka_0_1,
      clkb => clka_0_1,
      dina(31 downto 0) => mayo_bram_arbiter2_1_BRAM_din(31 downto 0),
      dinb(31 downto 0) => mayo_bram_arbiter2_0_BRAM_din(31 downto 0),
      douta(31 downto 0) => BigBRAM_3_256K_douta(31 downto 0),
      doutb(31 downto 0) => BigBRAM_3_256K_doutb(31 downto 0),
      ena => mayo_bram_arbiter2_1_BRAM_en,
      enb => mayo_bram_arbiter2_0_BRAM_en,
      wea(3 downto 0) => mayo_bram_arbiter2_1_BRAM_we(3 downto 0),
      web(3 downto 0) => mayo_bram_arbiter2_0_BRAM_we(3 downto 0)
    );
mayo_bram_arbiter2_a: component Mayo_sign_with_zynq_mayo_bram_arbiter2_a_1
     port map (
      BRAM_add_oil_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_add_oil_control => BRAM_neg_en1_1,
      BRAM_add_oil_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_add_oil_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_add_oil_dout_UNCONNECTED(31 downto 0),
      BRAM_add_oil_en => BRAM_neg_en1_1,
      BRAM_add_oil_rst => BRAM_neg_en1_1,
      BRAM_add_oil_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_add_vec_addr(31 downto 0) => BRAM_Add_vec_1_ADDR(31 downto 0),
      BRAM_add_vec_control => BRAM_Add_vec_1_CTRL,
      BRAM_add_vec_din(31 downto 0) => BRAM_Add_vec_1_DIN(31 downto 0),
      BRAM_add_vec_dout(31 downto 0) => BRAM_Add_vec_1_DOUT(31 downto 0),
      BRAM_add_vec_en => BRAM_Add_vec_1_EN,
      BRAM_add_vec_rst => BRAM_Add_vec_1_RST,
      BRAM_add_vec_we(3 downto 0) => BRAM_Add_vec_1_WE(3 downto 0),
      BRAM_addr(31 downto 0) => mayo_bram_arbiter2_1_BRAM_addr(31 downto 0),
      BRAM_din(31 downto 0) => mayo_bram_arbiter2_1_BRAM_din(31 downto 0),
      BRAM_dout(31 downto 0) => BigBRAM_3_256K_douta(31 downto 0),
      BRAM_en => mayo_bram_arbiter2_1_BRAM_en,
      BRAM_hash_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_hash_control => BRAM_neg_en1_1,
      BRAM_hash_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_hash_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_hash_dout_UNCONNECTED(31 downto 0),
      BRAM_hash_en => BRAM_neg_en1_1,
      BRAM_hash_rst => BRAM_neg_en1_1,
      BRAM_hash_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_lin_addr(31 downto 0) => BRAM_Lin_1_ADDR(31 downto 0),
      BRAM_lin_control => BRAM_Lin_1_CTRL,
      BRAM_lin_din(31 downto 0) => BRAM_Lin_1_DIN(31 downto 0),
      BRAM_lin_dout(31 downto 0) => BRAM_Lin_1_DOUT(31 downto 0),
      BRAM_lin_en => BRAM_Lin_1_EN,
      BRAM_lin_rst => BRAM_Lin_1_RST,
      BRAM_lin_we(3 downto 0) => BRAM_Lin_1_WE(3 downto 0),
      BRAM_memcpy0_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_memcpy0_control => BRAM_neg_en1_1,
      BRAM_memcpy0_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_memcpy0_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_memcpy0_dout_UNCONNECTED(31 downto 0),
      BRAM_memcpy0_en => BRAM_neg_en1_1,
      BRAM_memcpy0_rst => BRAM_neg_en1_1,
      BRAM_memcpy0_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_memcpy1_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_memcpy1_control => BRAM_neg_en1_1,
      BRAM_memcpy1_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_memcpy1_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_memcpy1_dout_UNCONNECTED(31 downto 0),
      BRAM_memcpy1_en => BRAM_neg_en1_1,
      BRAM_memcpy1_rst => BRAM_neg_en1_1,
      BRAM_memcpy1_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_neg_addr(31 downto 0) => Conn3_ADDR(31 downto 0),
      BRAM_neg_control => Conn3_CTRL,
      BRAM_neg_din(31 downto 0) => Conn3_DIN(31 downto 0),
      BRAM_neg_dout(31 downto 0) => Conn3_DOUT(31 downto 0),
      BRAM_neg_en => Conn3_EN,
      BRAM_neg_rst => Conn3_RST,
      BRAM_neg_we(3 downto 0) => Conn3_WE(3 downto 0),
      BRAM_p1p1t_addr(31 downto 0) => Conn6_ADDR(31 downto 0),
      BRAM_p1p1t_control => Conn6_CTRL,
      BRAM_p1p1t_din(31 downto 0) => Conn6_DIN(31 downto 0),
      BRAM_p1p1t_dout(31 downto 0) => Conn6_DOUT(31 downto 0),
      BRAM_p1p1t_en => Conn6_EN,
      BRAM_p1p1t_rst => Conn6_RST,
      BRAM_p1p1t_we(3 downto 0) => Conn6_WE(3 downto 0),
      BRAM_red_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_red_control => BRAM_neg_en1_1,
      BRAM_red_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_red_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_red_dout_UNCONNECTED(31 downto 0),
      BRAM_red_en => BRAM_neg_en1_1,
      BRAM_red_ext_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_red_ext_control => BRAM_neg_en1_1,
      BRAM_red_ext_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_red_ext_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_red_ext_dout_UNCONNECTED(31 downto 0),
      BRAM_red_ext_en => BRAM_neg_en1_1,
      BRAM_red_ext_rst => BRAM_neg_en1_1,
      BRAM_red_ext_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_red_rst => BRAM_neg_en1_1,
      BRAM_red_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_rst => NLW_mayo_bram_arbiter2_a_BRAM_rst_UNCONNECTED,
      BRAM_sam_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_sam_control => BRAM_neg_en1_1,
      BRAM_sam_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_sam_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_sam_dout_UNCONNECTED(31 downto 0),
      BRAM_sam_en => BRAM_neg_en1_1,
      BRAM_sam_oil_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_sam_oil_control => BRAM_neg_en1_1,
      BRAM_sam_oil_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_sam_oil_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_sam_oil_dout_UNCONNECTED(31 downto 0),
      BRAM_sam_oil_en => BRAM_neg_en1_1,
      BRAM_sam_oil_rst => BRAM_neg_en1_1,
      BRAM_sam_oil_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_sam_rst => BRAM_neg_en1_1,
      BRAM_sam_vin_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_sam_vin_control => BRAM_neg_en1_1,
      BRAM_sam_vin_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_sam_vin_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_sam_vin_dout_UNCONNECTED(31 downto 0),
      BRAM_sam_vin_en => BRAM_neg_en1_1,
      BRAM_sam_vin_rst => BRAM_neg_en1_1,
      BRAM_sam_vin_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_sam_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_sign_addr(31 downto 0) => Conn1_ADDR(31 downto 0),
      BRAM_sign_control => Conn1_CTRL,
      BRAM_sign_din(31 downto 0) => Conn1_DIN(31 downto 0),
      BRAM_sign_dout(31 downto 0) => Conn1_DOUT(31 downto 0),
      BRAM_sign_en => Conn1_EN,
      BRAM_sign_rst => Conn1_RST,
      BRAM_sign_we(3 downto 0) => Conn1_WE(3 downto 0),
      BRAM_we(3 downto 0) => mayo_bram_arbiter2_1_BRAM_we(3 downto 0)
    );
mayo_bram_arbiter2_b: component Mayo_sign_with_zynq_mayo_bram_arbiter2_b_1
     port map (
      BRAM_add_oil_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_add_oil_control => BRAM_neg_en1_1,
      BRAM_add_oil_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_add_oil_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_add_oil_dout_UNCONNECTED(31 downto 0),
      BRAM_add_oil_en => BRAM_neg_en1_1,
      BRAM_add_oil_rst => BRAM_neg_en1_1,
      BRAM_add_oil_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_add_vec_addr(31 downto 0) => BRAM_Add_vec1_1_ADDR(31 downto 0),
      BRAM_add_vec_control => BRAM_Add_vec1_1_CTRL,
      BRAM_add_vec_din(31 downto 0) => BRAM_Add_vec1_1_DIN(31 downto 0),
      BRAM_add_vec_dout(31 downto 0) => BRAM_Add_vec1_1_DOUT(31 downto 0),
      BRAM_add_vec_en => BRAM_Add_vec1_1_EN,
      BRAM_add_vec_rst => BRAM_Add_vec1_1_RST,
      BRAM_add_vec_we(3 downto 0) => BRAM_Add_vec1_1_WE(3 downto 0),
      BRAM_addr(31 downto 0) => mayo_bram_arbiter2_0_BRAM_addr(31 downto 0),
      BRAM_din(31 downto 0) => mayo_bram_arbiter2_0_BRAM_din(31 downto 0),
      BRAM_dout(31 downto 0) => BigBRAM_3_256K_doutb(31 downto 0),
      BRAM_en => mayo_bram_arbiter2_0_BRAM_en,
      BRAM_hash_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_hash_control => BRAM_neg_en1_1,
      BRAM_hash_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_hash_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_hash_dout_UNCONNECTED(31 downto 0),
      BRAM_hash_en => BRAM_neg_en1_1,
      BRAM_hash_rst => BRAM_neg_en1_1,
      BRAM_hash_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_lin_addr(31 downto 0) => BRAM_Lin1_1_ADDR(31 downto 0),
      BRAM_lin_control => BRAM_Lin1_1_CTRL,
      BRAM_lin_din(31 downto 0) => BRAM_Lin1_1_DIN(31 downto 0),
      BRAM_lin_dout(31 downto 0) => BRAM_Lin1_1_DOUT(31 downto 0),
      BRAM_lin_en => BRAM_Lin1_1_EN,
      BRAM_lin_rst => BRAM_Lin1_1_RST,
      BRAM_lin_we(3 downto 0) => BRAM_Lin1_1_WE(3 downto 0),
      BRAM_memcpy0_addr(31 downto 0) => Conn4_ADDR(31 downto 0),
      BRAM_memcpy0_control => Conn4_CTRL,
      BRAM_memcpy0_din(31 downto 0) => Conn4_DIN(31 downto 0),
      BRAM_memcpy0_dout(31 downto 0) => Conn4_DOUT(31 downto 0),
      BRAM_memcpy0_en => Conn4_EN,
      BRAM_memcpy0_rst => Conn4_RST,
      BRAM_memcpy0_we(3 downto 0) => Conn4_WE(3 downto 0),
      BRAM_memcpy1_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_memcpy1_control => BRAM_neg_en1_1,
      BRAM_memcpy1_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_memcpy1_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_memcpy1_dout_UNCONNECTED(31 downto 0),
      BRAM_memcpy1_en => BRAM_neg_en1_1,
      BRAM_memcpy1_rst => BRAM_neg_en1_1,
      BRAM_memcpy1_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_neg_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_neg_control => BRAM_neg_en1_1,
      BRAM_neg_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_neg_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_neg_dout_UNCONNECTED(31 downto 0),
      BRAM_neg_en => BRAM_neg_en1_1,
      BRAM_neg_rst => BRAM_neg_en1_1,
      BRAM_neg_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_p1p1t_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_p1p1t_control => BRAM_neg_en1_1,
      BRAM_p1p1t_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_p1p1t_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_p1p1t_dout_UNCONNECTED(31 downto 0),
      BRAM_p1p1t_en => BRAM_neg_en1_1,
      BRAM_p1p1t_rst => BRAM_neg_en1_1,
      BRAM_p1p1t_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_red_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_red_control => BRAM_neg_en1_1,
      BRAM_red_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_red_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_red_dout_UNCONNECTED(31 downto 0),
      BRAM_red_en => BRAM_neg_en1_1,
      BRAM_red_ext_addr(31 downto 0) => Conn5_ADDR(31 downto 0),
      BRAM_red_ext_control => Conn5_CTRL,
      BRAM_red_ext_din(31 downto 0) => Conn5_DIN(31 downto 0),
      BRAM_red_ext_dout(31 downto 0) => Conn5_DOUT(31 downto 0),
      BRAM_red_ext_en => Conn5_EN,
      BRAM_red_ext_rst => Conn5_RST,
      BRAM_red_ext_we(3 downto 0) => Conn5_WE(3 downto 0),
      BRAM_red_rst => BRAM_neg_en1_1,
      BRAM_red_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_rst => NLW_mayo_bram_arbiter2_b_BRAM_rst_UNCONNECTED,
      BRAM_sam_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_sam_control => BRAM_neg_en1_1,
      BRAM_sam_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_sam_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_sam_dout_UNCONNECTED(31 downto 0),
      BRAM_sam_en => BRAM_neg_en1_1,
      BRAM_sam_oil_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_sam_oil_control => BRAM_neg_en1_1,
      BRAM_sam_oil_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_sam_oil_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_sam_oil_dout_UNCONNECTED(31 downto 0),
      BRAM_sam_oil_en => BRAM_neg_en1_1,
      BRAM_sam_oil_rst => BRAM_neg_en1_1,
      BRAM_sam_oil_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_sam_rst => BRAM_neg_en1_1,
      BRAM_sam_vin_addr(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_sam_vin_control => BRAM_neg_en1_1,
      BRAM_sam_vin_din(31 downto 0) => BRAM_neg_din1_1(31 downto 0),
      BRAM_sam_vin_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_sam_vin_dout_UNCONNECTED(31 downto 0),
      BRAM_sam_vin_en => BRAM_neg_en1_1,
      BRAM_sam_vin_rst => BRAM_neg_en1_1,
      BRAM_sam_vin_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_sam_we(3 downto 0) => BRAM_neg_we1_1(3 downto 0),
      BRAM_sign_addr(31 downto 0) => Conn2_ADDR(31 downto 0),
      BRAM_sign_control => Conn2_CTRL,
      BRAM_sign_din(31 downto 0) => Conn2_DIN(31 downto 0),
      BRAM_sign_dout(31 downto 0) => Conn2_DOUT(31 downto 0),
      BRAM_sign_en => Conn2_EN,
      BRAM_sign_rst => Conn2_RST,
      BRAM_sign_we(3 downto 0) => Conn2_WE(3 downto 0),
      BRAM_we(3 downto 0) => mayo_bram_arbiter2_0_BRAM_we(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity LInear_Combination_imp_N2LWRV is
  port (
    BRAM_O_LinArb0a_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_LinArb0a_ctrl : out STD_LOGIC;
    BRAM_O_LinArb0a_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_LinArb0a_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_LinArb0a_en : out STD_LOGIC;
    BRAM_O_LinArb0a_rst : out STD_LOGIC;
    BRAM_O_LinArb0a_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_O_LinArb0b_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_LinArb0b_ctrl : out STD_LOGIC;
    BRAM_O_LinArb0b_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_LinArb0b_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_LinArb0b_en : out STD_LOGIC;
    BRAM_O_LinArb0b_rst : out STD_LOGIC;
    BRAM_O_LinArb0b_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_O_LinArb1a_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_LinArb1a_ctrl : out STD_LOGIC;
    BRAM_O_LinArb1a_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_LinArb1a_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_LinArb1a_en : out STD_LOGIC;
    BRAM_O_LinArb1a_rst : out STD_LOGIC;
    BRAM_O_LinArb1a_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_O_LinArb2a_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_LinArb2a_ctrl : out STD_LOGIC;
    BRAM_O_LinArb2a_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_LinArb2a_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_LinArb2a_en : out STD_LOGIC;
    BRAM_O_LinArb2a_rst : out STD_LOGIC;
    BRAM_O_LinArb2a_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_O_LinArb2b_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_LinArb2b_ctrl : out STD_LOGIC;
    BRAM_O_LinArb2b_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_LinArb2b_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_LinArb2b_en : out STD_LOGIC;
    BRAM_O_LinArb2b_rst : out STD_LOGIC;
    BRAM_O_LinArb2b_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_sel : in STD_LOGIC_VECTOR ( 4 downto 0 );
    clk_0 : in STD_LOGIC;
    i_bram_halt : in STD_LOGIC;
    i_coeffs_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_enable : in STD_LOGIC;
    i_len : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_out_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_vec_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_done : out STD_LOGIC;
    rst_0 : in STD_LOGIC
  );
end LInear_Combination_imp_N2LWRV;

architecture STRUCTURE of LInear_Combination_imp_N2LWRV is
  component Mayo_sign_with_zynq_mayo_lin_comb_arbiter_0_0 is
  port (
    bram_sel : in STD_LOGIC_VECTOR ( 4 downto 0 );
    o_mem0a_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mem0a_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mem0a_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mem0a_en : in STD_LOGIC;
    i_mem0a_rst : in STD_LOGIC;
    i_mem0a_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_control0a : in STD_LOGIC;
    o_mem0b_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mem0b_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mem0b_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mem0b_en : in STD_LOGIC;
    i_mem0b_rst : in STD_LOGIC;
    i_mem0b_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_control0b : in STD_LOGIC;
    o_mem1a_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mem1a_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mem1a_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mem1a_en : in STD_LOGIC;
    i_mem1a_rst : in STD_LOGIC;
    i_mem1a_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_control1a : in STD_LOGIC;
    i_BRAM0A_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM0A_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM0A_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM0A_en : out STD_LOGIC;
    o_BRAM0A_rst : out STD_LOGIC;
    o_BRAM0A_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_BRAM0A_control : out STD_LOGIC;
    i_BRAM0B_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM0B_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM0B_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM0B_en : out STD_LOGIC;
    o_BRAM0B_rst : out STD_LOGIC;
    o_BRAM0B_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_BRAM0B_control : out STD_LOGIC;
    i_BRAM1A_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM1A_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM1A_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM1A_en : out STD_LOGIC;
    o_BRAM1A_rst : out STD_LOGIC;
    o_BRAM1A_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_BRAM1A_control : out STD_LOGIC;
    i_BRAM2A_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM2A_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM2A_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM2A_en : out STD_LOGIC;
    o_BRAM2A_rst : out STD_LOGIC;
    o_BRAM2A_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_BRAM2A_control : out STD_LOGIC;
    i_BRAM2B_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM2B_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM2B_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM2B_en : out STD_LOGIC;
    o_BRAM2B_rst : out STD_LOGIC;
    o_BRAM2B_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_BRAM2B_control : out STD_LOGIC
  );
  end component Mayo_sign_with_zynq_mayo_lin_comb_arbiter_0_0;
  component Mayo_sign_with_zynq_mayo_linear_combinat_0_0 is
  port (
    i_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    i_enable : in STD_LOGIC;
    o_done : out STD_LOGIC;
    i_bram_halt : in STD_LOGIC;
    i_vec_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_coeffs_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_out_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_len : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mem0a_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0a_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0a_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0a_en : out STD_LOGIC;
    o_mem0a_rst : out STD_LOGIC;
    o_mem0a_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    i_mem0b_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0b_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0b_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0b_en : out STD_LOGIC;
    o_mem0b_rst : out STD_LOGIC;
    o_mem0b_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    i_mem1a_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem1a_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem1a_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem1a_en : out STD_LOGIC;
    o_mem1a_rst : out STD_LOGIC;
    o_mem1a_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_control0a : out STD_LOGIC;
    o_control0b : out STD_LOGIC;
    o_control1a : out STD_LOGIC
  );
  end component Mayo_sign_with_zynq_mayo_linear_combinat_0_0;
  signal Conn1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_CTRL : STD_LOGIC;
  signal Conn1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_EN : STD_LOGIC;
  signal Conn1_RST : STD_LOGIC;
  signal Conn1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_CTRL : STD_LOGIC;
  signal Conn2_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_EN : STD_LOGIC;
  signal Conn2_RST : STD_LOGIC;
  signal Conn2_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_lin_bram_halt : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_lin_coeffs_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_lin_enable : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_lin_len : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_lin_out_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_lin_vec_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal bram_sel_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal clk_0_1 : STD_LOGIC;
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_CTRL : STD_LOGIC;
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_EN : STD_LOGIC;
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_RST : STD_LOGIC;
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_CTRL : STD_LOGIC;
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_EN : STD_LOGIC;
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_RST : STD_LOGIC;
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_CTRL : STD_LOGIC;
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_EN : STD_LOGIC;
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_RST : STD_LOGIC;
  signal mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_linear_combinat_0_BRAM_Lin0a_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_linear_combinat_0_BRAM_Lin0a_CTRL : STD_LOGIC;
  signal mayo_linear_combinat_0_BRAM_Lin0a_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_linear_combinat_0_BRAM_Lin0a_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_linear_combinat_0_BRAM_Lin0a_EN : STD_LOGIC;
  signal mayo_linear_combinat_0_BRAM_Lin0a_RST : STD_LOGIC;
  signal mayo_linear_combinat_0_BRAM_Lin0a_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_linear_combinat_0_BRAM_Lin0b_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_linear_combinat_0_BRAM_Lin0b_CTRL : STD_LOGIC;
  signal mayo_linear_combinat_0_BRAM_Lin0b_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_linear_combinat_0_BRAM_Lin0b_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_linear_combinat_0_BRAM_Lin0b_EN : STD_LOGIC;
  signal mayo_linear_combinat_0_BRAM_Lin0b_RST : STD_LOGIC;
  signal mayo_linear_combinat_0_BRAM_Lin0b_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_linear_combinat_0_BRAM_Lin1a_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_linear_combinat_0_BRAM_Lin1a_CTRL : STD_LOGIC;
  signal mayo_linear_combinat_0_BRAM_Lin1a_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_linear_combinat_0_BRAM_Lin1a_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_linear_combinat_0_BRAM_Lin1a_EN : STD_LOGIC;
  signal mayo_linear_combinat_0_BRAM_Lin1a_RST : STD_LOGIC;
  signal mayo_linear_combinat_0_BRAM_Lin1a_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_linear_combinat_0_o_done : STD_LOGIC;
  signal rst_0_1 : STD_LOGIC;
begin
  BRAM_O_LinArb0a_addr(31 downto 0) <= Conn1_ADDR(31 downto 0);
  BRAM_O_LinArb0a_ctrl <= Conn1_CTRL;
  BRAM_O_LinArb0a_din(31 downto 0) <= Conn1_DIN(31 downto 0);
  BRAM_O_LinArb0a_en <= Conn1_EN;
  BRAM_O_LinArb0a_rst <= Conn1_RST;
  BRAM_O_LinArb0a_we(3 downto 0) <= Conn1_WE(3 downto 0);
  BRAM_O_LinArb0b_addr(31 downto 0) <= Conn2_ADDR(31 downto 0);
  BRAM_O_LinArb0b_ctrl <= Conn2_CTRL;
  BRAM_O_LinArb0b_din(31 downto 0) <= Conn2_DIN(31 downto 0);
  BRAM_O_LinArb0b_en <= Conn2_EN;
  BRAM_O_LinArb0b_rst <= Conn2_RST;
  BRAM_O_LinArb0b_we(3 downto 0) <= Conn2_WE(3 downto 0);
  BRAM_O_LinArb1a_addr(31 downto 0) <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_ADDR(31 downto 0);
  BRAM_O_LinArb1a_ctrl <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_CTRL;
  BRAM_O_LinArb1a_din(31 downto 0) <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_DIN(31 downto 0);
  BRAM_O_LinArb1a_en <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_EN;
  BRAM_O_LinArb1a_rst <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_RST;
  BRAM_O_LinArb1a_we(3 downto 0) <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_WE(3 downto 0);
  BRAM_O_LinArb2a_addr(31 downto 0) <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_ADDR(31 downto 0);
  BRAM_O_LinArb2a_ctrl <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_CTRL;
  BRAM_O_LinArb2a_din(31 downto 0) <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_DIN(31 downto 0);
  BRAM_O_LinArb2a_en <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_EN;
  BRAM_O_LinArb2a_rst <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_RST;
  BRAM_O_LinArb2a_we(3 downto 0) <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_WE(3 downto 0);
  BRAM_O_LinArb2b_addr(31 downto 0) <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_ADDR(31 downto 0);
  BRAM_O_LinArb2b_ctrl <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_CTRL;
  BRAM_O_LinArb2b_din(31 downto 0) <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_DIN(31 downto 0);
  BRAM_O_LinArb2b_en <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_EN;
  BRAM_O_LinArb2b_rst <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_RST;
  BRAM_O_LinArb2b_we(3 downto 0) <= mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_WE(3 downto 0);
  Conn1_DOUT(31 downto 0) <= BRAM_O_LinArb0a_dout(31 downto 0);
  Conn2_DOUT(31 downto 0) <= BRAM_O_LinArb0b_dout(31 downto 0);
  MAYO_SIGNING_FSM_0_o_lin_bram_halt <= i_bram_halt;
  MAYO_SIGNING_FSM_0_o_lin_coeffs_addr(31 downto 0) <= i_coeffs_addr(31 downto 0);
  MAYO_SIGNING_FSM_0_o_lin_enable <= i_enable;
  MAYO_SIGNING_FSM_0_o_lin_len(31 downto 0) <= i_len(31 downto 0);
  MAYO_SIGNING_FSM_0_o_lin_out_addr(31 downto 0) <= i_out_addr(31 downto 0);
  MAYO_SIGNING_FSM_0_o_lin_vec_addr(31 downto 0) <= i_vec_addr(31 downto 0);
  bram_sel_1(4 downto 0) <= bram_sel(4 downto 0);
  clk_0_1 <= clk_0;
  mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_DOUT(31 downto 0) <= BRAM_O_LinArb1a_dout(31 downto 0);
  mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_DOUT(31 downto 0) <= BRAM_O_LinArb2a_dout(31 downto 0);
  mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_DOUT(31 downto 0) <= BRAM_O_LinArb2b_dout(31 downto 0);
  o_done <= mayo_linear_combinat_0_o_done;
  rst_0_1 <= rst_0;
mayo_lin_comb_arbiter_0: component Mayo_sign_with_zynq_mayo_lin_comb_arbiter_0_0
     port map (
      bram_sel(4 downto 0) => bram_sel_1(4 downto 0),
      i_BRAM0A_dout(31 downto 0) => Conn1_DOUT(31 downto 0),
      i_BRAM0B_dout(31 downto 0) => Conn2_DOUT(31 downto 0),
      i_BRAM1A_dout(31 downto 0) => mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_DOUT(31 downto 0),
      i_BRAM2A_dout(31 downto 0) => mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_DOUT(31 downto 0),
      i_BRAM2B_dout(31 downto 0) => mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_DOUT(31 downto 0),
      i_control0a => mayo_linear_combinat_0_BRAM_Lin0a_CTRL,
      i_control0b => mayo_linear_combinat_0_BRAM_Lin0b_CTRL,
      i_control1a => mayo_linear_combinat_0_BRAM_Lin1a_CTRL,
      i_mem0a_addr(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin0a_ADDR(31 downto 0),
      i_mem0a_din(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin0a_DIN(31 downto 0),
      i_mem0a_en => mayo_linear_combinat_0_BRAM_Lin0a_EN,
      i_mem0a_rst => mayo_linear_combinat_0_BRAM_Lin0a_RST,
      i_mem0a_we(3 downto 0) => mayo_linear_combinat_0_BRAM_Lin0a_WE(3 downto 0),
      i_mem0b_addr(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin0b_ADDR(31 downto 0),
      i_mem0b_din(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin0b_DIN(31 downto 0),
      i_mem0b_en => mayo_linear_combinat_0_BRAM_Lin0b_EN,
      i_mem0b_rst => mayo_linear_combinat_0_BRAM_Lin0b_RST,
      i_mem0b_we(3 downto 0) => mayo_linear_combinat_0_BRAM_Lin0b_WE(3 downto 0),
      i_mem1a_addr(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin1a_ADDR(31 downto 0),
      i_mem1a_din(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin1a_DIN(31 downto 0),
      i_mem1a_en => mayo_linear_combinat_0_BRAM_Lin1a_EN,
      i_mem1a_rst => mayo_linear_combinat_0_BRAM_Lin1a_RST,
      i_mem1a_we(3 downto 0) => mayo_linear_combinat_0_BRAM_Lin1a_WE(3 downto 0),
      o_BRAM0A_addr(31 downto 0) => Conn1_ADDR(31 downto 0),
      o_BRAM0A_control => Conn1_CTRL,
      o_BRAM0A_din(31 downto 0) => Conn1_DIN(31 downto 0),
      o_BRAM0A_en => Conn1_EN,
      o_BRAM0A_rst => Conn1_RST,
      o_BRAM0A_we(3 downto 0) => Conn1_WE(3 downto 0),
      o_BRAM0B_addr(31 downto 0) => Conn2_ADDR(31 downto 0),
      o_BRAM0B_control => Conn2_CTRL,
      o_BRAM0B_din(31 downto 0) => Conn2_DIN(31 downto 0),
      o_BRAM0B_en => Conn2_EN,
      o_BRAM0B_rst => Conn2_RST,
      o_BRAM0B_we(3 downto 0) => Conn2_WE(3 downto 0),
      o_BRAM1A_addr(31 downto 0) => mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_ADDR(31 downto 0),
      o_BRAM1A_control => mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_CTRL,
      o_BRAM1A_din(31 downto 0) => mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_DIN(31 downto 0),
      o_BRAM1A_en => mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_EN,
      o_BRAM1A_rst => mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_RST,
      o_BRAM1A_we(3 downto 0) => mayo_lin_comb_arbiter_0_BRAM_O_LinArb1a_WE(3 downto 0),
      o_BRAM2A_addr(31 downto 0) => mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_ADDR(31 downto 0),
      o_BRAM2A_control => mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_CTRL,
      o_BRAM2A_din(31 downto 0) => mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_DIN(31 downto 0),
      o_BRAM2A_en => mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_EN,
      o_BRAM2A_rst => mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_RST,
      o_BRAM2A_we(3 downto 0) => mayo_lin_comb_arbiter_0_BRAM_O_LinArb2a_WE(3 downto 0),
      o_BRAM2B_addr(31 downto 0) => mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_ADDR(31 downto 0),
      o_BRAM2B_control => mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_CTRL,
      o_BRAM2B_din(31 downto 0) => mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_DIN(31 downto 0),
      o_BRAM2B_en => mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_EN,
      o_BRAM2B_rst => mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_RST,
      o_BRAM2B_we(3 downto 0) => mayo_lin_comb_arbiter_0_BRAM_O_LinArb2b_WE(3 downto 0),
      o_mem0a_dout(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin0a_DOUT(31 downto 0),
      o_mem0b_dout(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin0b_DOUT(31 downto 0),
      o_mem1a_dout(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin1a_DOUT(31 downto 0)
    );
mayo_linear_combinat_0: component Mayo_sign_with_zynq_mayo_linear_combinat_0_0
     port map (
      i_bram_halt => MAYO_SIGNING_FSM_0_o_lin_bram_halt,
      i_clk => clk_0_1,
      i_coeffs_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_lin_coeffs_addr(31 downto 0),
      i_enable => MAYO_SIGNING_FSM_0_o_lin_enable,
      i_len(31 downto 0) => MAYO_SIGNING_FSM_0_o_lin_len(31 downto 0),
      i_mem0a_dout(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin0a_DOUT(31 downto 0),
      i_mem0b_dout(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin0b_DOUT(31 downto 0),
      i_mem1a_dout(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin1a_DOUT(31 downto 0),
      i_out_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_lin_out_addr(31 downto 0),
      i_vec_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_lin_vec_addr(31 downto 0),
      o_control0a => mayo_linear_combinat_0_BRAM_Lin0a_CTRL,
      o_control0b => mayo_linear_combinat_0_BRAM_Lin0b_CTRL,
      o_control1a => mayo_linear_combinat_0_BRAM_Lin1a_CTRL,
      o_done => mayo_linear_combinat_0_o_done,
      o_mem0a_addr(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin0a_ADDR(31 downto 0),
      o_mem0a_din(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin0a_DIN(31 downto 0),
      o_mem0a_en => mayo_linear_combinat_0_BRAM_Lin0a_EN,
      o_mem0a_rst => mayo_linear_combinat_0_BRAM_Lin0a_RST,
      o_mem0a_we(3 downto 0) => mayo_linear_combinat_0_BRAM_Lin0a_WE(3 downto 0),
      o_mem0b_addr(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin0b_ADDR(31 downto 0),
      o_mem0b_din(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin0b_DIN(31 downto 0),
      o_mem0b_en => mayo_linear_combinat_0_BRAM_Lin0b_EN,
      o_mem0b_rst => mayo_linear_combinat_0_BRAM_Lin0b_RST,
      o_mem0b_we(3 downto 0) => mayo_linear_combinat_0_BRAM_Lin0b_WE(3 downto 0),
      o_mem1a_addr(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin1a_ADDR(31 downto 0),
      o_mem1a_din(31 downto 0) => mayo_linear_combinat_0_BRAM_Lin1a_DIN(31 downto 0),
      o_mem1a_en => mayo_linear_combinat_0_BRAM_Lin1a_EN,
      o_mem1a_rst => mayo_linear_combinat_0_BRAM_Lin1a_RST,
      o_mem1a_we(3 downto 0) => mayo_linear_combinat_0_BRAM_Lin1a_WE(3 downto 0),
      rst => rst_0_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SmallBRAM_imp_1VZXT5A is
  port (
    BRAM_Add_oil1_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_oil1_ctrl : in STD_LOGIC;
    BRAM_Add_oil1_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_oil1_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_oil1_en : in STD_LOGIC;
    BRAM_Add_oil1_rst : in STD_LOGIC;
    BRAM_Add_oil1_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Add_oil_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_oil_ctrl : in STD_LOGIC;
    BRAM_Add_oil_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_oil_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_oil_en : in STD_LOGIC;
    BRAM_Add_oil_rst : in STD_LOGIC;
    BRAM_Add_oil_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Add_vec_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_vec_ctrl : in STD_LOGIC;
    BRAM_Add_vec_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_vec_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Add_vec_en : in STD_LOGIC;
    BRAM_Add_vec_rst : in STD_LOGIC;
    BRAM_Add_vec_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Hash_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Hash_ctrl : in STD_LOGIC;
    BRAM_Hash_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Hash_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Hash_en : in STD_LOGIC;
    BRAM_Hash_rst : in STD_LOGIC;
    BRAM_Hash_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Lin1_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Lin1_ctrl : in STD_LOGIC;
    BRAM_Lin1_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Lin1_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Lin1_en : in STD_LOGIC;
    BRAM_Lin1_rst : in STD_LOGIC;
    BRAM_Lin1_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Lin_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Lin_ctrl : in STD_LOGIC;
    BRAM_Lin_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Lin_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Lin_en : in STD_LOGIC;
    BRAM_Lin_rst : in STD_LOGIC;
    BRAM_Lin_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_P1P1T_ctrl : in STD_LOGIC;
    BRAM_P1P1T_dout : out STD_LOGIC;
    BRAM_P1P1T_en : in STD_LOGIC;
    BRAM_P1P1T_rst : in STD_LOGIC;
    BRAM_Red_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Red_ctrl : in STD_LOGIC;
    BRAM_Red_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Red_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Red_en : in STD_LOGIC;
    BRAM_Red_ext1_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Red_ext1_ctrl : in STD_LOGIC;
    BRAM_Red_ext1_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Red_ext1_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Red_ext1_en : in STD_LOGIC;
    BRAM_Red_ext1_rst : in STD_LOGIC;
    BRAM_Red_ext1_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Red_ext_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Red_ext_ctrl : in STD_LOGIC;
    BRAM_Red_ext_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Red_ext_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Red_ext_en : in STD_LOGIC;
    BRAM_Red_ext_rst : in STD_LOGIC;
    BRAM_Red_ext_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Red_rst : in STD_LOGIC;
    BRAM_Red_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Sam_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_ctrl : in STD_LOGIC;
    BRAM_Sam_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_en : in STD_LOGIC;
    BRAM_Sam_oil1_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_oil1_ctrl : in STD_LOGIC;
    BRAM_Sam_oil1_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_oil1_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_oil1_en : in STD_LOGIC;
    BRAM_Sam_oil1_rst : in STD_LOGIC;
    BRAM_Sam_oil1_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Sam_oil_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_oil_ctrl : in STD_LOGIC;
    BRAM_Sam_oil_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_oil_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_oil_en : in STD_LOGIC;
    BRAM_Sam_oil_rst : in STD_LOGIC;
    BRAM_Sam_oil_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Sam_rst : in STD_LOGIC;
    BRAM_Sam_vin_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_vin_ctrl : in STD_LOGIC;
    BRAM_Sam_vin_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_vin_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sam_vin_en : in STD_LOGIC;
    BRAM_Sam_vin_rst : in STD_LOGIC;
    BRAM_Sam_vin_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Sam_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Sign1_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sign1_ctrl : in STD_LOGIC;
    BRAM_Sign1_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sign1_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sign1_en : in STD_LOGIC;
    BRAM_Sign1_rst : in STD_LOGIC;
    BRAM_Sign1_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_Sign_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sign_ctrl : in STD_LOGIC;
    BRAM_Sign_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sign_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_Sign_en : in STD_LOGIC;
    BRAM_Sign_rst : in STD_LOGIC;
    BRAM_Sign_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_0 : in STD_LOGIC;
    zero : in STD_LOGIC_VECTOR ( 31 downto 0 );
    zero0 : in STD_LOGIC;
    zero4 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end SmallBRAM_imp_1VZXT5A;

architecture STRUCTURE of SmallBRAM_imp_1VZXT5A is
  component Mayo_sign_with_zynq_SmallBRAM_1_8K_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC
  );
  end component Mayo_sign_with_zynq_SmallBRAM_1_8K_0;
  component Mayo_sign_with_zynq_mayo_bram_arbiter2_a_2 is
  port (
    BRAM_sign_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sign_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sign_en : in STD_LOGIC;
    BRAM_sign_rst : in STD_LOGIC;
    BRAM_sign_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_sign_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sign_control : in STD_LOGIC;
    BRAM_add_vec_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_vec_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_vec_en : in STD_LOGIC;
    BRAM_add_vec_rst : in STD_LOGIC;
    BRAM_add_vec_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_add_vec_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_vec_control : in STD_LOGIC;
    BRAM_lin_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_en : in STD_LOGIC;
    BRAM_lin_rst : in STD_LOGIC;
    BRAM_lin_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_lin_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_control : in STD_LOGIC;
    BRAM_neg_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_en : in STD_LOGIC;
    BRAM_neg_rst : in STD_LOGIC;
    BRAM_neg_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_neg_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_control : in STD_LOGIC;
    BRAM_red_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_en : in STD_LOGIC;
    BRAM_red_rst : in STD_LOGIC;
    BRAM_red_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_red_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_control : in STD_LOGIC;
    BRAM_sam_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_en : in STD_LOGIC;
    BRAM_sam_rst : in STD_LOGIC;
    BRAM_sam_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_sam_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_control : in STD_LOGIC;
    BRAM_memcpy0_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy0_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy0_en : in STD_LOGIC;
    BRAM_memcpy0_rst : in STD_LOGIC;
    BRAM_memcpy0_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_memcpy0_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy0_control : in STD_LOGIC;
    BRAM_memcpy1_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy1_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy1_en : in STD_LOGIC;
    BRAM_memcpy1_rst : in STD_LOGIC;
    BRAM_memcpy1_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_memcpy1_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy1_control : in STD_LOGIC;
    BRAM_p1p1t_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_p1p1t_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_p1p1t_en : in STD_LOGIC;
    BRAM_p1p1t_rst : in STD_LOGIC;
    BRAM_p1p1t_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_p1p1t_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_p1p1t_control : in STD_LOGIC;
    BRAM_red_ext_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_ext_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_ext_en : in STD_LOGIC;
    BRAM_red_ext_rst : in STD_LOGIC;
    BRAM_red_ext_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_red_ext_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_ext_control : in STD_LOGIC;
    BRAM_sam_vin_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_vin_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_vin_en : in STD_LOGIC;
    BRAM_sam_vin_rst : in STD_LOGIC;
    BRAM_sam_vin_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_sam_vin_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_vin_control : in STD_LOGIC;
    BRAM_sam_oil_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_oil_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_oil_en : in STD_LOGIC;
    BRAM_sam_oil_rst : in STD_LOGIC;
    BRAM_sam_oil_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_sam_oil_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_oil_control : in STD_LOGIC;
    BRAM_add_oil_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_oil_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_oil_en : in STD_LOGIC;
    BRAM_add_oil_rst : in STD_LOGIC;
    BRAM_add_oil_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_add_oil_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_oil_control : in STD_LOGIC;
    BRAM_hash_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_en : in STD_LOGIC;
    BRAM_hash_rst : in STD_LOGIC;
    BRAM_hash_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_hash_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_control : in STD_LOGIC;
    BRAM_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_en : out STD_LOGIC;
    BRAM_rst : out STD_LOGIC;
    BRAM_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_dout : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Mayo_sign_with_zynq_mayo_bram_arbiter2_a_2;
  component Mayo_sign_with_zynq_mayo_bram_arbiter2_b_2 is
  port (
    BRAM_sign_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sign_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sign_en : in STD_LOGIC;
    BRAM_sign_rst : in STD_LOGIC;
    BRAM_sign_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_sign_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sign_control : in STD_LOGIC;
    BRAM_add_vec_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_vec_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_vec_en : in STD_LOGIC;
    BRAM_add_vec_rst : in STD_LOGIC;
    BRAM_add_vec_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_add_vec_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_vec_control : in STD_LOGIC;
    BRAM_lin_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_en : in STD_LOGIC;
    BRAM_lin_rst : in STD_LOGIC;
    BRAM_lin_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_lin_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_control : in STD_LOGIC;
    BRAM_neg_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_en : in STD_LOGIC;
    BRAM_neg_rst : in STD_LOGIC;
    BRAM_neg_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_neg_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_control : in STD_LOGIC;
    BRAM_red_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_en : in STD_LOGIC;
    BRAM_red_rst : in STD_LOGIC;
    BRAM_red_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_red_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_control : in STD_LOGIC;
    BRAM_sam_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_en : in STD_LOGIC;
    BRAM_sam_rst : in STD_LOGIC;
    BRAM_sam_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_sam_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_control : in STD_LOGIC;
    BRAM_memcpy0_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy0_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy0_en : in STD_LOGIC;
    BRAM_memcpy0_rst : in STD_LOGIC;
    BRAM_memcpy0_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_memcpy0_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy0_control : in STD_LOGIC;
    BRAM_memcpy1_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy1_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy1_en : in STD_LOGIC;
    BRAM_memcpy1_rst : in STD_LOGIC;
    BRAM_memcpy1_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_memcpy1_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_memcpy1_control : in STD_LOGIC;
    BRAM_p1p1t_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_p1p1t_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_p1p1t_en : in STD_LOGIC;
    BRAM_p1p1t_rst : in STD_LOGIC;
    BRAM_p1p1t_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_p1p1t_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_p1p1t_control : in STD_LOGIC;
    BRAM_red_ext_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_ext_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_ext_en : in STD_LOGIC;
    BRAM_red_ext_rst : in STD_LOGIC;
    BRAM_red_ext_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_red_ext_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_ext_control : in STD_LOGIC;
    BRAM_sam_vin_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_vin_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_vin_en : in STD_LOGIC;
    BRAM_sam_vin_rst : in STD_LOGIC;
    BRAM_sam_vin_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_sam_vin_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_vin_control : in STD_LOGIC;
    BRAM_sam_oil_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_oil_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_oil_en : in STD_LOGIC;
    BRAM_sam_oil_rst : in STD_LOGIC;
    BRAM_sam_oil_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_sam_oil_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_oil_control : in STD_LOGIC;
    BRAM_add_oil_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_oil_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_oil_en : in STD_LOGIC;
    BRAM_add_oil_rst : in STD_LOGIC;
    BRAM_add_oil_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_add_oil_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_oil_control : in STD_LOGIC;
    BRAM_hash_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_en : in STD_LOGIC;
    BRAM_hash_rst : in STD_LOGIC;
    BRAM_hash_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_hash_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_control : in STD_LOGIC;
    BRAM_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_en : out STD_LOGIC;
    BRAM_rst : out STD_LOGIC;
    BRAM_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_dout : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Mayo_sign_with_zynq_mayo_bram_arbiter2_b_2;
  signal BRAM_Add_oil1_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_oil1_1_CTRL : STD_LOGIC;
  signal BRAM_Add_oil1_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_oil1_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_oil1_1_EN : STD_LOGIC;
  signal BRAM_Add_oil1_1_RST : STD_LOGIC;
  signal BRAM_Add_oil1_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_Add_oil_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_oil_1_CTRL : STD_LOGIC;
  signal BRAM_Add_oil_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_oil_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_oil_1_EN : STD_LOGIC;
  signal BRAM_Add_oil_1_RST : STD_LOGIC;
  signal BRAM_Add_oil_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_Hash_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Hash_1_CTRL : STD_LOGIC;
  signal BRAM_Hash_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Hash_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Hash_1_EN : STD_LOGIC;
  signal BRAM_Hash_1_RST : STD_LOGIC;
  signal BRAM_Hash_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_Red_ext_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Red_ext_1_CTRL : STD_LOGIC;
  signal BRAM_Red_ext_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Red_ext_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Red_ext_1_EN : STD_LOGIC;
  signal BRAM_Red_ext_1_RST : STD_LOGIC;
  signal BRAM_Red_ext_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_add_vec_din1_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_add_vec_en1_1 : STD_LOGIC;
  signal BRAM_neg_we_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_CTRL : STD_LOGIC;
  signal Conn1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_EN : STD_LOGIC;
  signal Conn1_RST : STD_LOGIC;
  signal Conn1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_CTRL : STD_LOGIC;
  signal Conn2_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_EN : STD_LOGIC;
  signal Conn2_RST : STD_LOGIC;
  signal Conn2_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn3_CTRL : STD_LOGIC;
  signal Conn3_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_EN : STD_LOGIC;
  signal Conn3_RST : STD_LOGIC;
  signal Conn4_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_CTRL : STD_LOGIC;
  signal Conn4_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_EN : STD_LOGIC;
  signal Conn4_RST : STD_LOGIC;
  signal Conn4_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn5_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn5_CTRL : STD_LOGIC;
  signal Conn5_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn5_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn5_EN : STD_LOGIC;
  signal Conn5_RST : STD_LOGIC;
  signal Conn5_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn6_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn6_CTRL : STD_LOGIC;
  signal Conn6_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn6_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn6_EN : STD_LOGIC;
  signal Conn6_RST : STD_LOGIC;
  signal Conn6_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn7_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn7_CTRL : STD_LOGIC;
  signal Conn7_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn7_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn7_EN : STD_LOGIC;
  signal Conn7_RST : STD_LOGIC;
  signal Conn7_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn8_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn8_CTRL : STD_LOGIC;
  signal Conn8_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn8_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn8_EN : STD_LOGIC;
  signal Conn8_RST : STD_LOGIC;
  signal Conn8_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn9_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn9_CTRL : STD_LOGIC;
  signal Conn9_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn9_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn9_EN : STD_LOGIC;
  signal Conn9_RST : STD_LOGIC;
  signal Conn9_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0a_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0a_CTRL : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0a_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0a_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0a_EN : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0a_RST : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0a_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0b_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0b_CTRL : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0b_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0b_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0b_EN : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0b_RST : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0b_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal SmallBRAM_1_8K_douta : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SmallBRAM_1_8K_doutb : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal clk_0_1 : STD_LOGIC;
  signal mayo_add_vectors_0_BRAM_Add_VecA_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_0_BRAM_Add_VecA_CTRL : STD_LOGIC;
  signal mayo_add_vectors_0_BRAM_Add_VecA_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_0_BRAM_Add_VecA_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_0_BRAM_Add_VecA_EN : STD_LOGIC;
  signal mayo_add_vectors_0_BRAM_Add_VecA_RST : STD_LOGIC;
  signal mayo_add_vectors_0_BRAM_Add_VecA_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_bram_arbiter2_0_BRAM_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_bram_arbiter2_0_BRAM_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_bram_arbiter2_0_BRAM_en : STD_LOGIC;
  signal mayo_bram_arbiter2_0_BRAM_rst : STD_LOGIC;
  signal mayo_bram_arbiter2_0_BRAM_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_bram_arbiter2_1_BRAM_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_bram_arbiter2_1_BRAM_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_bram_arbiter2_1_BRAM_en : STD_LOGIC;
  signal mayo_bram_arbiter2_1_BRAM_rst : STD_LOGIC;
  signal mayo_bram_arbiter2_1_BRAM_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SmallBRAM_1_8K_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_SmallBRAM_1_8K_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_mayo_bram_arbiter2_a_BRAM_memcpy0_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_a_BRAM_memcpy1_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_a_BRAM_neg_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_a_BRAM_p1p1t_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_add_vec_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_hash_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_memcpy0_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_memcpy1_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_neg_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_red_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_sam_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mayo_bram_arbiter2_b_BRAM_sam_vin_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  BRAM_Add_oil1_1_ADDR(31 downto 0) <= BRAM_Add_oil1_addr(31 downto 0);
  BRAM_Add_oil1_1_CTRL <= BRAM_Add_oil1_ctrl;
  BRAM_Add_oil1_1_DIN(31 downto 0) <= BRAM_Add_oil1_din(31 downto 0);
  BRAM_Add_oil1_1_EN <= BRAM_Add_oil1_en;
  BRAM_Add_oil1_1_RST <= BRAM_Add_oil1_rst;
  BRAM_Add_oil1_1_WE(3 downto 0) <= BRAM_Add_oil1_we(3 downto 0);
  BRAM_Add_oil1_dout(31 downto 0) <= BRAM_Add_oil1_1_DOUT(31 downto 0);
  BRAM_Add_oil_1_ADDR(31 downto 0) <= BRAM_Add_oil_addr(31 downto 0);
  BRAM_Add_oil_1_CTRL <= BRAM_Add_oil_ctrl;
  BRAM_Add_oil_1_DIN(31 downto 0) <= BRAM_Add_oil_din(31 downto 0);
  BRAM_Add_oil_1_EN <= BRAM_Add_oil_en;
  BRAM_Add_oil_1_RST <= BRAM_Add_oil_rst;
  BRAM_Add_oil_1_WE(3 downto 0) <= BRAM_Add_oil_we(3 downto 0);
  BRAM_Add_oil_dout(31 downto 0) <= BRAM_Add_oil_1_DOUT(31 downto 0);
  BRAM_Add_vec_dout(31 downto 0) <= mayo_add_vectors_0_BRAM_Add_VecA_DOUT(31 downto 0);
  BRAM_Hash_1_ADDR(31 downto 0) <= BRAM_Hash_addr(31 downto 0);
  BRAM_Hash_1_CTRL <= BRAM_Hash_ctrl;
  BRAM_Hash_1_DIN(31 downto 0) <= BRAM_Hash_din(31 downto 0);
  BRAM_Hash_1_EN <= BRAM_Hash_en;
  BRAM_Hash_1_RST <= BRAM_Hash_rst;
  BRAM_Hash_1_WE(3 downto 0) <= BRAM_Hash_we(3 downto 0);
  BRAM_Hash_dout(31 downto 0) <= BRAM_Hash_1_DOUT(31 downto 0);
  BRAM_Lin1_dout(31 downto 0) <= Conn2_DOUT(31 downto 0);
  BRAM_Lin_dout(31 downto 0) <= Conn1_DOUT(31 downto 0);
  BRAM_P1P1T_dout <= Conn3_DOUT(0);
  BRAM_Red_dout(31 downto 0) <= Conn7_DOUT(31 downto 0);
  BRAM_Red_ext1_dout(31 downto 0) <= Conn9_DOUT(31 downto 0);
  BRAM_Red_ext_1_ADDR(31 downto 0) <= BRAM_Red_ext_addr(31 downto 0);
  BRAM_Red_ext_1_CTRL <= BRAM_Red_ext_ctrl;
  BRAM_Red_ext_1_DIN(31 downto 0) <= BRAM_Red_ext_din(31 downto 0);
  BRAM_Red_ext_1_EN <= BRAM_Red_ext_en;
  BRAM_Red_ext_1_RST <= BRAM_Red_ext_rst;
  BRAM_Red_ext_1_WE(3 downto 0) <= BRAM_Red_ext_we(3 downto 0);
  BRAM_Red_ext_dout(31 downto 0) <= BRAM_Red_ext_1_DOUT(31 downto 0);
  BRAM_Sam_dout(31 downto 0) <= Conn8_DOUT(31 downto 0);
  BRAM_Sam_oil1_dout(31 downto 0) <= Conn5_DOUT(31 downto 0);
  BRAM_Sam_oil_dout(31 downto 0) <= Conn4_DOUT(31 downto 0);
  BRAM_Sam_vin_dout(31 downto 0) <= Conn6_DOUT(31 downto 0);
  BRAM_Sign1_dout(31 downto 0) <= MAYO_SIGNING_FSM_0_BRAM_Sign0b_DOUT(31 downto 0);
  BRAM_Sign_dout(31 downto 0) <= MAYO_SIGNING_FSM_0_BRAM_Sign0a_DOUT(31 downto 0);
  BRAM_add_vec_din1_1(31 downto 0) <= zero(31 downto 0);
  BRAM_add_vec_en1_1 <= zero0;
  BRAM_neg_we_1(3 downto 0) <= zero4(3 downto 0);
  Conn1_ADDR(31 downto 0) <= BRAM_Lin_addr(31 downto 0);
  Conn1_CTRL <= BRAM_Lin_ctrl;
  Conn1_DIN(31 downto 0) <= BRAM_Lin_din(31 downto 0);
  Conn1_EN <= BRAM_Lin_en;
  Conn1_RST <= BRAM_Lin_rst;
  Conn1_WE(3 downto 0) <= BRAM_Lin_we(3 downto 0);
  Conn2_ADDR(31 downto 0) <= BRAM_Lin1_addr(31 downto 0);
  Conn2_CTRL <= BRAM_Lin1_ctrl;
  Conn2_DIN(31 downto 0) <= BRAM_Lin1_din(31 downto 0);
  Conn2_EN <= BRAM_Lin1_en;
  Conn2_RST <= BRAM_Lin1_rst;
  Conn2_WE(3 downto 0) <= BRAM_Lin1_we(3 downto 0);
  Conn3_CTRL <= BRAM_P1P1T_ctrl;
  Conn3_EN <= BRAM_P1P1T_en;
  Conn3_RST <= BRAM_P1P1T_rst;
  Conn4_ADDR(31 downto 0) <= BRAM_Sam_oil_addr(31 downto 0);
  Conn4_CTRL <= BRAM_Sam_oil_ctrl;
  Conn4_DIN(31 downto 0) <= BRAM_Sam_oil_din(31 downto 0);
  Conn4_EN <= BRAM_Sam_oil_en;
  Conn4_RST <= BRAM_Sam_oil_rst;
  Conn4_WE(3 downto 0) <= BRAM_Sam_oil_we(3 downto 0);
  Conn5_ADDR(31 downto 0) <= BRAM_Sam_oil1_addr(31 downto 0);
  Conn5_CTRL <= BRAM_Sam_oil1_ctrl;
  Conn5_DIN(31 downto 0) <= BRAM_Sam_oil1_din(31 downto 0);
  Conn5_EN <= BRAM_Sam_oil1_en;
  Conn5_RST <= BRAM_Sam_oil1_rst;
  Conn5_WE(3 downto 0) <= BRAM_Sam_oil1_we(3 downto 0);
  Conn6_ADDR(31 downto 0) <= BRAM_Sam_vin_addr(31 downto 0);
  Conn6_CTRL <= BRAM_Sam_vin_ctrl;
  Conn6_DIN(31 downto 0) <= BRAM_Sam_vin_din(31 downto 0);
  Conn6_EN <= BRAM_Sam_vin_en;
  Conn6_RST <= BRAM_Sam_vin_rst;
  Conn6_WE(3 downto 0) <= BRAM_Sam_vin_we(3 downto 0);
  Conn7_ADDR(31 downto 0) <= BRAM_Red_addr(31 downto 0);
  Conn7_CTRL <= BRAM_Red_ctrl;
  Conn7_DIN(31 downto 0) <= BRAM_Red_din(31 downto 0);
  Conn7_EN <= BRAM_Red_en;
  Conn7_RST <= BRAM_Red_rst;
  Conn7_WE(3 downto 0) <= BRAM_Red_we(3 downto 0);
  Conn8_ADDR(31 downto 0) <= BRAM_Sam_addr(31 downto 0);
  Conn8_CTRL <= BRAM_Sam_ctrl;
  Conn8_DIN(31 downto 0) <= BRAM_Sam_din(31 downto 0);
  Conn8_EN <= BRAM_Sam_en;
  Conn8_RST <= BRAM_Sam_rst;
  Conn8_WE(3 downto 0) <= BRAM_Sam_we(3 downto 0);
  Conn9_ADDR(31 downto 0) <= BRAM_Red_ext1_addr(31 downto 0);
  Conn9_CTRL <= BRAM_Red_ext1_ctrl;
  Conn9_DIN(31 downto 0) <= BRAM_Red_ext1_din(31 downto 0);
  Conn9_EN <= BRAM_Red_ext1_en;
  Conn9_RST <= BRAM_Red_ext1_rst;
  Conn9_WE(3 downto 0) <= BRAM_Red_ext1_we(3 downto 0);
  MAYO_SIGNING_FSM_0_BRAM_Sign0a_ADDR(31 downto 0) <= BRAM_Sign_addr(31 downto 0);
  MAYO_SIGNING_FSM_0_BRAM_Sign0a_CTRL <= BRAM_Sign_ctrl;
  MAYO_SIGNING_FSM_0_BRAM_Sign0a_DIN(31 downto 0) <= BRAM_Sign_din(31 downto 0);
  MAYO_SIGNING_FSM_0_BRAM_Sign0a_EN <= BRAM_Sign_en;
  MAYO_SIGNING_FSM_0_BRAM_Sign0a_RST <= BRAM_Sign_rst;
  MAYO_SIGNING_FSM_0_BRAM_Sign0a_WE(3 downto 0) <= BRAM_Sign_we(3 downto 0);
  MAYO_SIGNING_FSM_0_BRAM_Sign0b_ADDR(31 downto 0) <= BRAM_Sign1_addr(31 downto 0);
  MAYO_SIGNING_FSM_0_BRAM_Sign0b_CTRL <= BRAM_Sign1_ctrl;
  MAYO_SIGNING_FSM_0_BRAM_Sign0b_DIN(31 downto 0) <= BRAM_Sign1_din(31 downto 0);
  MAYO_SIGNING_FSM_0_BRAM_Sign0b_EN <= BRAM_Sign1_en;
  MAYO_SIGNING_FSM_0_BRAM_Sign0b_RST <= BRAM_Sign1_rst;
  MAYO_SIGNING_FSM_0_BRAM_Sign0b_WE(3 downto 0) <= BRAM_Sign1_we(3 downto 0);
  clk_0_1 <= clk_0;
  mayo_add_vectors_0_BRAM_Add_VecA_ADDR(31 downto 0) <= BRAM_Add_vec_addr(31 downto 0);
  mayo_add_vectors_0_BRAM_Add_VecA_CTRL <= BRAM_Add_vec_ctrl;
  mayo_add_vectors_0_BRAM_Add_VecA_DIN(31 downto 0) <= BRAM_Add_vec_din(31 downto 0);
  mayo_add_vectors_0_BRAM_Add_VecA_EN <= BRAM_Add_vec_en;
  mayo_add_vectors_0_BRAM_Add_VecA_RST <= BRAM_Add_vec_rst;
  mayo_add_vectors_0_BRAM_Add_VecA_WE(3 downto 0) <= BRAM_Add_vec_we(3 downto 0);
SmallBRAM_1_8K: component Mayo_sign_with_zynq_SmallBRAM_1_8K_0
     port map (
      addra(31 downto 0) => mayo_bram_arbiter2_0_BRAM_addr(31 downto 0),
      addrb(31 downto 0) => mayo_bram_arbiter2_1_BRAM_addr(31 downto 0),
      clka => clk_0_1,
      clkb => clk_0_1,
      dina(31 downto 0) => mayo_bram_arbiter2_0_BRAM_din(31 downto 0),
      dinb(31 downto 0) => mayo_bram_arbiter2_1_BRAM_din(31 downto 0),
      douta(31 downto 0) => SmallBRAM_1_8K_douta(31 downto 0),
      doutb(31 downto 0) => SmallBRAM_1_8K_doutb(31 downto 0),
      ena => mayo_bram_arbiter2_0_BRAM_en,
      enb => mayo_bram_arbiter2_1_BRAM_en,
      rsta => mayo_bram_arbiter2_0_BRAM_rst,
      rsta_busy => NLW_SmallBRAM_1_8K_rsta_busy_UNCONNECTED,
      rstb => mayo_bram_arbiter2_1_BRAM_rst,
      rstb_busy => NLW_SmallBRAM_1_8K_rstb_busy_UNCONNECTED,
      wea(3 downto 0) => mayo_bram_arbiter2_0_BRAM_we(3 downto 0),
      web(3 downto 0) => mayo_bram_arbiter2_1_BRAM_we(3 downto 0)
    );
mayo_bram_arbiter2_a: component Mayo_sign_with_zynq_mayo_bram_arbiter2_a_2
     port map (
      BRAM_add_oil_addr(31 downto 0) => BRAM_Add_oil_1_ADDR(31 downto 0),
      BRAM_add_oil_control => BRAM_Add_oil_1_CTRL,
      BRAM_add_oil_din(31 downto 0) => BRAM_Add_oil_1_DIN(31 downto 0),
      BRAM_add_oil_dout(31 downto 0) => BRAM_Add_oil_1_DOUT(31 downto 0),
      BRAM_add_oil_en => BRAM_Add_oil_1_EN,
      BRAM_add_oil_rst => BRAM_Add_oil_1_RST,
      BRAM_add_oil_we(3 downto 0) => BRAM_Add_oil_1_WE(3 downto 0),
      BRAM_add_vec_addr(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecA_ADDR(31 downto 0),
      BRAM_add_vec_control => mayo_add_vectors_0_BRAM_Add_VecA_CTRL,
      BRAM_add_vec_din(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecA_DIN(31 downto 0),
      BRAM_add_vec_dout(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecA_DOUT(31 downto 0),
      BRAM_add_vec_en => mayo_add_vectors_0_BRAM_Add_VecA_EN,
      BRAM_add_vec_rst => mayo_add_vectors_0_BRAM_Add_VecA_RST,
      BRAM_add_vec_we(3 downto 0) => mayo_add_vectors_0_BRAM_Add_VecA_WE(3 downto 0),
      BRAM_addr(31 downto 0) => mayo_bram_arbiter2_0_BRAM_addr(31 downto 0),
      BRAM_din(31 downto 0) => mayo_bram_arbiter2_0_BRAM_din(31 downto 0),
      BRAM_dout(31 downto 0) => SmallBRAM_1_8K_douta(31 downto 0),
      BRAM_en => mayo_bram_arbiter2_0_BRAM_en,
      BRAM_hash_addr(31 downto 0) => BRAM_Hash_1_ADDR(31 downto 0),
      BRAM_hash_control => BRAM_Hash_1_CTRL,
      BRAM_hash_din(31 downto 0) => BRAM_Hash_1_DIN(31 downto 0),
      BRAM_hash_dout(31 downto 0) => BRAM_Hash_1_DOUT(31 downto 0),
      BRAM_hash_en => BRAM_Hash_1_EN,
      BRAM_hash_rst => BRAM_Hash_1_RST,
      BRAM_hash_we(3 downto 0) => BRAM_Hash_1_WE(3 downto 0),
      BRAM_lin_addr(31 downto 0) => Conn1_ADDR(31 downto 0),
      BRAM_lin_control => Conn1_CTRL,
      BRAM_lin_din(31 downto 0) => Conn1_DIN(31 downto 0),
      BRAM_lin_dout(31 downto 0) => Conn1_DOUT(31 downto 0),
      BRAM_lin_en => Conn1_EN,
      BRAM_lin_rst => Conn1_RST,
      BRAM_lin_we(3 downto 0) => Conn1_WE(3 downto 0),
      BRAM_memcpy0_addr(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_memcpy0_control => BRAM_add_vec_en1_1,
      BRAM_memcpy0_din(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_memcpy0_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_memcpy0_dout_UNCONNECTED(31 downto 0),
      BRAM_memcpy0_en => BRAM_add_vec_en1_1,
      BRAM_memcpy0_rst => BRAM_add_vec_en1_1,
      BRAM_memcpy0_we(3 downto 0) => BRAM_neg_we_1(3 downto 0),
      BRAM_memcpy1_addr(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_memcpy1_control => BRAM_add_vec_en1_1,
      BRAM_memcpy1_din(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_memcpy1_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_memcpy1_dout_UNCONNECTED(31 downto 0),
      BRAM_memcpy1_en => BRAM_add_vec_en1_1,
      BRAM_memcpy1_rst => BRAM_add_vec_en1_1,
      BRAM_memcpy1_we(3 downto 0) => BRAM_neg_we_1(3 downto 0),
      BRAM_neg_addr(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_neg_control => BRAM_add_vec_en1_1,
      BRAM_neg_din(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_neg_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_neg_dout_UNCONNECTED(31 downto 0),
      BRAM_neg_en => BRAM_add_vec_en1_1,
      BRAM_neg_rst => BRAM_add_vec_en1_1,
      BRAM_neg_we(3 downto 0) => BRAM_neg_we_1(3 downto 0),
      BRAM_p1p1t_addr(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_p1p1t_control => BRAM_add_vec_en1_1,
      BRAM_p1p1t_din(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_p1p1t_dout(31 downto 0) => NLW_mayo_bram_arbiter2_a_BRAM_p1p1t_dout_UNCONNECTED(31 downto 0),
      BRAM_p1p1t_en => BRAM_add_vec_en1_1,
      BRAM_p1p1t_rst => BRAM_add_vec_en1_1,
      BRAM_p1p1t_we(3 downto 0) => BRAM_neg_we_1(3 downto 0),
      BRAM_red_addr(31 downto 0) => Conn7_ADDR(31 downto 0),
      BRAM_red_control => Conn7_CTRL,
      BRAM_red_din(31 downto 0) => Conn7_DIN(31 downto 0),
      BRAM_red_dout(31 downto 0) => Conn7_DOUT(31 downto 0),
      BRAM_red_en => Conn7_EN,
      BRAM_red_ext_addr(31 downto 0) => BRAM_Red_ext_1_ADDR(31 downto 0),
      BRAM_red_ext_control => BRAM_Red_ext_1_CTRL,
      BRAM_red_ext_din(31 downto 0) => BRAM_Red_ext_1_DIN(31 downto 0),
      BRAM_red_ext_dout(31 downto 0) => BRAM_Red_ext_1_DOUT(31 downto 0),
      BRAM_red_ext_en => BRAM_Red_ext_1_EN,
      BRAM_red_ext_rst => BRAM_Red_ext_1_RST,
      BRAM_red_ext_we(3 downto 0) => BRAM_Red_ext_1_WE(3 downto 0),
      BRAM_red_rst => Conn7_RST,
      BRAM_red_we(3 downto 0) => Conn7_WE(3 downto 0),
      BRAM_rst => mayo_bram_arbiter2_0_BRAM_rst,
      BRAM_sam_addr(31 downto 0) => Conn8_ADDR(31 downto 0),
      BRAM_sam_control => Conn8_CTRL,
      BRAM_sam_din(31 downto 0) => Conn8_DIN(31 downto 0),
      BRAM_sam_dout(31 downto 0) => Conn8_DOUT(31 downto 0),
      BRAM_sam_en => Conn8_EN,
      BRAM_sam_oil_addr(31 downto 0) => Conn4_ADDR(31 downto 0),
      BRAM_sam_oil_control => Conn4_CTRL,
      BRAM_sam_oil_din(31 downto 0) => Conn4_DIN(31 downto 0),
      BRAM_sam_oil_dout(31 downto 0) => Conn4_DOUT(31 downto 0),
      BRAM_sam_oil_en => Conn4_EN,
      BRAM_sam_oil_rst => Conn4_RST,
      BRAM_sam_oil_we(3 downto 0) => Conn4_WE(3 downto 0),
      BRAM_sam_rst => Conn8_RST,
      BRAM_sam_vin_addr(31 downto 0) => Conn6_ADDR(31 downto 0),
      BRAM_sam_vin_control => Conn6_CTRL,
      BRAM_sam_vin_din(31 downto 0) => Conn6_DIN(31 downto 0),
      BRAM_sam_vin_dout(31 downto 0) => Conn6_DOUT(31 downto 0),
      BRAM_sam_vin_en => Conn6_EN,
      BRAM_sam_vin_rst => Conn6_RST,
      BRAM_sam_vin_we(3 downto 0) => Conn6_WE(3 downto 0),
      BRAM_sam_we(3 downto 0) => Conn8_WE(3 downto 0),
      BRAM_sign_addr(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0a_ADDR(31 downto 0),
      BRAM_sign_control => MAYO_SIGNING_FSM_0_BRAM_Sign0a_CTRL,
      BRAM_sign_din(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0a_DIN(31 downto 0),
      BRAM_sign_dout(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0a_DOUT(31 downto 0),
      BRAM_sign_en => MAYO_SIGNING_FSM_0_BRAM_Sign0a_EN,
      BRAM_sign_rst => MAYO_SIGNING_FSM_0_BRAM_Sign0a_RST,
      BRAM_sign_we(3 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0a_WE(3 downto 0),
      BRAM_we(3 downto 0) => mayo_bram_arbiter2_0_BRAM_we(3 downto 0)
    );
mayo_bram_arbiter2_b: component Mayo_sign_with_zynq_mayo_bram_arbiter2_b_2
     port map (
      BRAM_add_oil_addr(31 downto 0) => BRAM_Add_oil1_1_ADDR(31 downto 0),
      BRAM_add_oil_control => BRAM_Add_oil1_1_CTRL,
      BRAM_add_oil_din(31 downto 0) => BRAM_Add_oil1_1_DIN(31 downto 0),
      BRAM_add_oil_dout(31 downto 0) => BRAM_Add_oil1_1_DOUT(31 downto 0),
      BRAM_add_oil_en => BRAM_Add_oil1_1_EN,
      BRAM_add_oil_rst => BRAM_Add_oil1_1_RST,
      BRAM_add_oil_we(3 downto 0) => BRAM_Add_oil1_1_WE(3 downto 0),
      BRAM_add_vec_addr(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_add_vec_control => BRAM_add_vec_en1_1,
      BRAM_add_vec_din(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_add_vec_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_add_vec_dout_UNCONNECTED(31 downto 0),
      BRAM_add_vec_en => BRAM_add_vec_en1_1,
      BRAM_add_vec_rst => BRAM_add_vec_en1_1,
      BRAM_add_vec_we(3 downto 0) => BRAM_neg_we_1(3 downto 0),
      BRAM_addr(31 downto 0) => mayo_bram_arbiter2_1_BRAM_addr(31 downto 0),
      BRAM_din(31 downto 0) => mayo_bram_arbiter2_1_BRAM_din(31 downto 0),
      BRAM_dout(31 downto 0) => SmallBRAM_1_8K_doutb(31 downto 0),
      BRAM_en => mayo_bram_arbiter2_1_BRAM_en,
      BRAM_hash_addr(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_hash_control => BRAM_add_vec_en1_1,
      BRAM_hash_din(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_hash_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_hash_dout_UNCONNECTED(31 downto 0),
      BRAM_hash_en => BRAM_add_vec_en1_1,
      BRAM_hash_rst => BRAM_add_vec_en1_1,
      BRAM_hash_we(3 downto 0) => BRAM_neg_we_1(3 downto 0),
      BRAM_lin_addr(31 downto 0) => Conn2_ADDR(31 downto 0),
      BRAM_lin_control => Conn2_CTRL,
      BRAM_lin_din(31 downto 0) => Conn2_DIN(31 downto 0),
      BRAM_lin_dout(31 downto 0) => Conn2_DOUT(31 downto 0),
      BRAM_lin_en => Conn2_EN,
      BRAM_lin_rst => Conn2_RST,
      BRAM_lin_we(3 downto 0) => Conn2_WE(3 downto 0),
      BRAM_memcpy0_addr(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_memcpy0_control => BRAM_add_vec_en1_1,
      BRAM_memcpy0_din(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_memcpy0_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_memcpy0_dout_UNCONNECTED(31 downto 0),
      BRAM_memcpy0_en => BRAM_add_vec_en1_1,
      BRAM_memcpy0_rst => BRAM_add_vec_en1_1,
      BRAM_memcpy0_we(3 downto 0) => BRAM_neg_we_1(3 downto 0),
      BRAM_memcpy1_addr(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_memcpy1_control => BRAM_add_vec_en1_1,
      BRAM_memcpy1_din(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_memcpy1_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_memcpy1_dout_UNCONNECTED(31 downto 0),
      BRAM_memcpy1_en => BRAM_add_vec_en1_1,
      BRAM_memcpy1_rst => BRAM_add_vec_en1_1,
      BRAM_memcpy1_we(3 downto 0) => BRAM_neg_we_1(3 downto 0),
      BRAM_neg_addr(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_neg_control => BRAM_add_vec_en1_1,
      BRAM_neg_din(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_neg_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_neg_dout_UNCONNECTED(31 downto 0),
      BRAM_neg_en => BRAM_add_vec_en1_1,
      BRAM_neg_rst => BRAM_add_vec_en1_1,
      BRAM_neg_we(3 downto 0) => BRAM_neg_we_1(3 downto 0),
      BRAM_p1p1t_addr(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_p1p1t_control => Conn3_CTRL,
      BRAM_p1p1t_din(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_p1p1t_dout(31 downto 0) => Conn3_DOUT(31 downto 0),
      BRAM_p1p1t_en => Conn3_EN,
      BRAM_p1p1t_rst => Conn3_RST,
      BRAM_p1p1t_we(3 downto 0) => BRAM_neg_we_1(3 downto 0),
      BRAM_red_addr(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_red_control => BRAM_add_vec_en1_1,
      BRAM_red_din(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_red_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_red_dout_UNCONNECTED(31 downto 0),
      BRAM_red_en => BRAM_add_vec_en1_1,
      BRAM_red_ext_addr(31 downto 0) => Conn9_ADDR(31 downto 0),
      BRAM_red_ext_control => Conn9_CTRL,
      BRAM_red_ext_din(31 downto 0) => Conn9_DIN(31 downto 0),
      BRAM_red_ext_dout(31 downto 0) => Conn9_DOUT(31 downto 0),
      BRAM_red_ext_en => Conn9_EN,
      BRAM_red_ext_rst => Conn9_RST,
      BRAM_red_ext_we(3 downto 0) => Conn9_WE(3 downto 0),
      BRAM_red_rst => BRAM_add_vec_en1_1,
      BRAM_red_we(3 downto 0) => BRAM_neg_we_1(3 downto 0),
      BRAM_rst => mayo_bram_arbiter2_1_BRAM_rst,
      BRAM_sam_addr(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_sam_control => BRAM_add_vec_en1_1,
      BRAM_sam_din(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_sam_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_sam_dout_UNCONNECTED(31 downto 0),
      BRAM_sam_en => BRAM_add_vec_en1_1,
      BRAM_sam_oil_addr(31 downto 0) => Conn5_ADDR(31 downto 0),
      BRAM_sam_oil_control => Conn5_CTRL,
      BRAM_sam_oil_din(31 downto 0) => Conn5_DIN(31 downto 0),
      BRAM_sam_oil_dout(31 downto 0) => Conn5_DOUT(31 downto 0),
      BRAM_sam_oil_en => Conn5_EN,
      BRAM_sam_oil_rst => Conn5_RST,
      BRAM_sam_oil_we(3 downto 0) => Conn5_WE(3 downto 0),
      BRAM_sam_rst => BRAM_add_vec_en1_1,
      BRAM_sam_vin_addr(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_sam_vin_control => BRAM_add_vec_en1_1,
      BRAM_sam_vin_din(31 downto 0) => BRAM_add_vec_din1_1(31 downto 0),
      BRAM_sam_vin_dout(31 downto 0) => NLW_mayo_bram_arbiter2_b_BRAM_sam_vin_dout_UNCONNECTED(31 downto 0),
      BRAM_sam_vin_en => BRAM_add_vec_en1_1,
      BRAM_sam_vin_rst => BRAM_add_vec_en1_1,
      BRAM_sam_vin_we(3 downto 0) => BRAM_neg_we_1(3 downto 0),
      BRAM_sam_we(3 downto 0) => BRAM_neg_we_1(3 downto 0),
      BRAM_sign_addr(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0b_ADDR(31 downto 0),
      BRAM_sign_control => MAYO_SIGNING_FSM_0_BRAM_Sign0b_CTRL,
      BRAM_sign_din(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0b_DIN(31 downto 0),
      BRAM_sign_dout(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0b_DOUT(31 downto 0),
      BRAM_sign_en => MAYO_SIGNING_FSM_0_BRAM_Sign0b_EN,
      BRAM_sign_rst => MAYO_SIGNING_FSM_0_BRAM_Sign0b_RST,
      BRAM_sign_we(3 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0b_WE(3 downto 0),
      BRAM_we(3 downto 0) => mayo_bram_arbiter2_1_BRAM_we(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TRNG_imp_12AA6DP is
  port (
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    i_trng0_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_trng0_r : in STD_LOGIC;
    i_trng0_w : in STD_LOGIC;
    i_trng1_data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_trng1_r : in STD_LOGIC;
    i_trng1_w : in STD_LOGIC;
    i_trng2_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_trng2_r : in STD_LOGIC;
    i_trng2_w : in STD_LOGIC;
    i_trng_sel : in STD_LOGIC;
    o_trng0_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_trng0_done : out STD_LOGIC;
    o_trng0_valid : out STD_LOGIC;
    o_trng1_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_trng1_done : out STD_LOGIC;
    o_trng1_valid : out STD_LOGIC;
    o_trng2_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_trng2_done : out STD_LOGIC;
    o_trng2_valid : out STD_LOGIC;
    rst : in STD_LOGIC
  );
end TRNG_imp_12AA6DP;

architecture STRUCTURE of TRNG_imp_12AA6DP is
  component Mayo_sign_with_zynq_TRNG_0_0 is
  port (
    CLK_I : in STD_LOGIC;
    RST : in STD_LOGIC;
    R_I : in STD_LOGIC;
    W_I : in STD_LOGIC;
    TRNG_DATA_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TRNG_DATA_O : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRNG_VALID_O : out STD_LOGIC;
    TRNG_DONE_O : out STD_LOGIC
  );
  end component Mayo_sign_with_zynq_TRNG_0_0;
  component Mayo_sign_with_zynq_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component Mayo_sign_with_zynq_xlconcat_0_0;
  component Mayo_sign_with_zynq_mayo_trng_arbiter_0_0 is
  port (
    i_trng_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    o_trng_r : out STD_LOGIC;
    o_trng_w : out STD_LOGIC;
    o_trng_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_trng_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_trng_valid : in STD_LOGIC;
    i_trng_done : in STD_LOGIC;
    i_trng0_r : in STD_LOGIC;
    i_trng0_w : in STD_LOGIC;
    i_trng0_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_trng0_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_trng0_valid : out STD_LOGIC;
    o_trng0_done : out STD_LOGIC;
    i_trng1_r : in STD_LOGIC;
    i_trng1_w : in STD_LOGIC;
    i_trng1_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_trng1_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_trng1_valid : out STD_LOGIC;
    o_trng1_done : out STD_LOGIC;
    i_trng2_r : in STD_LOGIC;
    i_trng2_w : in STD_LOGIC;
    i_trng2_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_trng2_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_trng2_valid : out STD_LOGIC;
    o_trng2_done : out STD_LOGIC
  );
  end component Mayo_sign_with_zynq_mayo_trng_arbiter_0_0;
  signal In1_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRNG_0_TRNG_DATA_O : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRNG_0_TRNG_DONE_O : STD_LOGIC;
  signal TRNG_0_TRNG_VALID_O : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal i_trng0_data_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i_trng0_r_1 : STD_LOGIC;
  signal i_trng0_w_1 : STD_LOGIC;
  signal i_trng1_data1_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i_trng1_r_1 : STD_LOGIC;
  signal i_trng1_w_1 : STD_LOGIC;
  signal i_trng2_data_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i_trng2_r_1 : STD_LOGIC;
  signal i_trng2_w_1 : STD_LOGIC;
  signal i_trng_sel_1 : STD_LOGIC;
  signal mayo_trng_arbiter_0_o_trng0_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_trng_arbiter_0_o_trng0_done : STD_LOGIC;
  signal mayo_trng_arbiter_0_o_trng0_valid : STD_LOGIC;
  signal mayo_trng_arbiter_0_o_trng1_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_trng_arbiter_0_o_trng1_done : STD_LOGIC;
  signal mayo_trng_arbiter_0_o_trng1_valid : STD_LOGIC;
  signal mayo_trng_arbiter_0_o_trng2_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_trng_arbiter_0_o_trng2_done : STD_LOGIC;
  signal mayo_trng_arbiter_0_o_trng2_valid : STD_LOGIC;
  signal mayo_trng_arbiter_0_o_trng_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_trng_arbiter_0_o_trng_r : STD_LOGIC;
  signal mayo_trng_arbiter_0_o_trng_w : STD_LOGIC;
  signal rst_1 : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  In1_1(0) <= In1(0);
  clk_1 <= clk;
  i_trng0_data_1(31 downto 0) <= i_trng0_data(31 downto 0);
  i_trng0_r_1 <= i_trng0_r;
  i_trng0_w_1 <= i_trng0_w;
  i_trng1_data1_1(31 downto 0) <= i_trng1_data1(31 downto 0);
  i_trng1_r_1 <= i_trng1_r;
  i_trng1_w_1 <= i_trng1_w;
  i_trng2_data_1(31 downto 0) <= i_trng2_data(31 downto 0);
  i_trng2_r_1 <= i_trng2_r;
  i_trng2_w_1 <= i_trng2_w;
  i_trng_sel_1 <= i_trng_sel;
  o_trng0_data(31 downto 0) <= mayo_trng_arbiter_0_o_trng0_data(31 downto 0);
  o_trng0_done <= mayo_trng_arbiter_0_o_trng0_done;
  o_trng0_valid <= mayo_trng_arbiter_0_o_trng0_valid;
  o_trng1_data(31 downto 0) <= mayo_trng_arbiter_0_o_trng1_data(31 downto 0);
  o_trng1_done <= mayo_trng_arbiter_0_o_trng1_done;
  o_trng1_valid <= mayo_trng_arbiter_0_o_trng1_valid;
  o_trng2_data(31 downto 0) <= mayo_trng_arbiter_0_o_trng2_data(31 downto 0);
  o_trng2_done <= mayo_trng_arbiter_0_o_trng2_done;
  o_trng2_valid <= mayo_trng_arbiter_0_o_trng2_valid;
  rst_1 <= rst;
TRNG_0: component Mayo_sign_with_zynq_TRNG_0_0
     port map (
      CLK_I => clk_1,
      RST => rst_1,
      R_I => mayo_trng_arbiter_0_o_trng_r,
      TRNG_DATA_I(31 downto 0) => mayo_trng_arbiter_0_o_trng_data(31 downto 0),
      TRNG_DATA_O(31 downto 0) => TRNG_0_TRNG_DATA_O(31 downto 0),
      TRNG_DONE_O => TRNG_0_TRNG_DONE_O,
      TRNG_VALID_O => TRNG_0_TRNG_VALID_O,
      W_I => mayo_trng_arbiter_0_o_trng_w
    );
mayo_trng_arbiter_0: component Mayo_sign_with_zynq_mayo_trng_arbiter_0_0
     port map (
      i_trng0_data(31 downto 0) => i_trng0_data_1(31 downto 0),
      i_trng0_r => i_trng0_r_1,
      i_trng0_w => i_trng0_w_1,
      i_trng1_data(31 downto 0) => i_trng1_data1_1(31 downto 0),
      i_trng1_r => i_trng1_r_1,
      i_trng1_w => i_trng1_w_1,
      i_trng2_data(31 downto 0) => i_trng2_data_1(31 downto 0),
      i_trng2_r => i_trng2_r_1,
      i_trng2_w => i_trng2_w_1,
      i_trng_data(31 downto 0) => TRNG_0_TRNG_DATA_O(31 downto 0),
      i_trng_done => TRNG_0_TRNG_DONE_O,
      i_trng_sel(1 downto 0) => xlconcat_0_dout(1 downto 0),
      i_trng_valid => TRNG_0_TRNG_VALID_O,
      o_trng0_data(31 downto 0) => mayo_trng_arbiter_0_o_trng0_data(31 downto 0),
      o_trng0_done => mayo_trng_arbiter_0_o_trng0_done,
      o_trng0_valid => mayo_trng_arbiter_0_o_trng0_valid,
      o_trng1_data(31 downto 0) => mayo_trng_arbiter_0_o_trng1_data(31 downto 0),
      o_trng1_done => mayo_trng_arbiter_0_o_trng1_done,
      o_trng1_valid => mayo_trng_arbiter_0_o_trng1_valid,
      o_trng2_data(31 downto 0) => mayo_trng_arbiter_0_o_trng2_data(31 downto 0),
      o_trng2_done => mayo_trng_arbiter_0_o_trng2_done,
      o_trng2_valid => mayo_trng_arbiter_0_o_trng2_valid,
      o_trng_data(31 downto 0) => mayo_trng_arbiter_0_o_trng_data(31 downto 0),
      o_trng_r => mayo_trng_arbiter_0_o_trng_r,
      o_trng_w => mayo_trng_arbiter_0_o_trng_w
    );
xlconcat_0: component Mayo_sign_with_zynq_xlconcat_0_0
     port map (
      In0(0) => i_trng_sel_1,
      In1(0) => In1_1(0),
      dout(1 downto 0) => xlconcat_0_dout(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity add_vectors_imp_1WHQW is
  port (
    BRAM_O_Add0A_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_Add0A_ctrl : out STD_LOGIC;
    BRAM_O_Add0A_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_Add0A_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_Add0A_en : out STD_LOGIC;
    BRAM_O_Add0A_rst : out STD_LOGIC;
    BRAM_O_Add0A_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_O_Add1A_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_Add1A_ctrl : out STD_LOGIC;
    BRAM_O_Add1A_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_Add1A_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_Add1A_en : out STD_LOGIC;
    BRAM_O_Add1A_rst : out STD_LOGIC;
    BRAM_O_Add1A_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_O_Add2A_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_Add2A_ctrl : out STD_LOGIC;
    BRAM_O_Add2A_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_Add2A_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_Add2A_en : out STD_LOGIC;
    BRAM_O_Add2A_rst : out STD_LOGIC;
    BRAM_O_Add2A_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_O_Add2B_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_Add2B_ctrl : out STD_LOGIC;
    BRAM_O_Add2B_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_Add2B_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_O_Add2B_en : out STD_LOGIC;
    BRAM_O_Add2B_rst : out STD_LOGIC;
    BRAM_O_Add2B_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_sel : in STD_LOGIC_VECTOR ( 4 downto 0 );
    clk_0 : in STD_LOGIC;
    i_bram_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_enable : in STD_LOGIC;
    i_out_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_v1_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_v2_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_done : out STD_LOGIC;
    rst_0 : in STD_LOGIC
  );
end add_vectors_imp_1WHQW;

architecture STRUCTURE of add_vectors_imp_1WHQW is
  component Mayo_sign_with_zynq_mayo_add_vectors_arb_0_0 is
  port (
    bram_sel : in STD_LOGIC_VECTOR ( 4 downto 0 );
    o_mema_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mema_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mema_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mema_en : in STD_LOGIC;
    i_mema_rst : in STD_LOGIC;
    i_mema_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_controla : in STD_LOGIC;
    o_memb_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_memb_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_memb_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_memb_en : in STD_LOGIC;
    i_memb_rst : in STD_LOGIC;
    i_memb_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_controlb : in STD_LOGIC;
    o_memc_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_memc_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_memc_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_memc_en : in STD_LOGIC;
    i_memc_rst : in STD_LOGIC;
    i_memc_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_controlc : in STD_LOGIC;
    i_BRAM0A_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM0A_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM0A_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM0A_en : out STD_LOGIC;
    o_BRAM0A_rst : out STD_LOGIC;
    o_BRAM0A_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_BRAM0A_control : out STD_LOGIC;
    i_BRAM1A_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM1A_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM1A_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM1A_en : out STD_LOGIC;
    o_BRAM1A_rst : out STD_LOGIC;
    o_BRAM1A_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_BRAM1A_control : out STD_LOGIC;
    i_BRAM2A_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM2A_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM2A_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM2A_en : out STD_LOGIC;
    o_BRAM2A_rst : out STD_LOGIC;
    o_BRAM2A_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_BRAM2A_control : out STD_LOGIC;
    i_BRAM2B_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM2B_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM2B_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM2B_en : out STD_LOGIC;
    o_BRAM2B_rst : out STD_LOGIC;
    o_BRAM2B_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_BRAM2B_control : out STD_LOGIC
  );
  end component Mayo_sign_with_zynq_mayo_add_vectors_arb_0_0;
  component Mayo_sign_with_zynq_mayo_add_vectors_0_0 is
  port (
    i_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    i_enable : in STD_LOGIC;
    i_v1_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_v2_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_out_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_bram_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    o_done : out STD_LOGIC;
    i_mema_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mema_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mema_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mema_en : out STD_LOGIC;
    o_mema_rst : out STD_LOGIC;
    o_mema_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    i_memb_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memb_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memb_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memb_en : out STD_LOGIC;
    o_memb_rst : out STD_LOGIC;
    o_memb_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    i_memc_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memc_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memc_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memc_en : out STD_LOGIC;
    o_memc_rst : out STD_LOGIC;
    o_memc_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_controla : out STD_LOGIC;
    o_controlb : out STD_LOGIC;
    o_controlc : out STD_LOGIC
  );
  end component Mayo_sign_with_zynq_mayo_add_vectors_0_0;
  signal Conn1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_CTRL : STD_LOGIC;
  signal Conn1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_EN : STD_LOGIC;
  signal Conn1_RST : STD_LOGIC;
  signal Conn1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_add_bram_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_add_enable : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_add_out_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_add_v1_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_add_v2_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal bram_sel_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal clk_0_1 : STD_LOGIC;
  signal mayo_add_vectors_0_BRAM_Add_VecA_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_0_BRAM_Add_VecA_CTRL : STD_LOGIC;
  signal mayo_add_vectors_0_BRAM_Add_VecA_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_0_BRAM_Add_VecA_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_0_BRAM_Add_VecA_EN : STD_LOGIC;
  signal mayo_add_vectors_0_BRAM_Add_VecA_RST : STD_LOGIC;
  signal mayo_add_vectors_0_BRAM_Add_VecA_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_add_vectors_0_BRAM_Add_VecB_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_0_BRAM_Add_VecB_CTRL : STD_LOGIC;
  signal mayo_add_vectors_0_BRAM_Add_VecB_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_0_BRAM_Add_VecB_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_0_BRAM_Add_VecB_EN : STD_LOGIC;
  signal mayo_add_vectors_0_BRAM_Add_VecB_RST : STD_LOGIC;
  signal mayo_add_vectors_0_BRAM_Add_VecB_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_add_vectors_0_BRAM_Add_VecC_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_0_BRAM_Add_VecC_CTRL : STD_LOGIC;
  signal mayo_add_vectors_0_BRAM_Add_VecC_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_0_BRAM_Add_VecC_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_0_BRAM_Add_VecC_EN : STD_LOGIC;
  signal mayo_add_vectors_0_BRAM_Add_VecC_RST : STD_LOGIC;
  signal mayo_add_vectors_0_BRAM_Add_VecC_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_add_vectors_0_o_done : STD_LOGIC;
  signal mayo_add_vectors_arb_0_BRAM_O_Add1A_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_arb_0_BRAM_O_Add1A_CTRL : STD_LOGIC;
  signal mayo_add_vectors_arb_0_BRAM_O_Add1A_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_arb_0_BRAM_O_Add1A_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_arb_0_BRAM_O_Add1A_EN : STD_LOGIC;
  signal mayo_add_vectors_arb_0_BRAM_O_Add1A_RST : STD_LOGIC;
  signal mayo_add_vectors_arb_0_BRAM_O_Add1A_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_add_vectors_arb_0_BRAM_O_Add2A_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_arb_0_BRAM_O_Add2A_CTRL : STD_LOGIC;
  signal mayo_add_vectors_arb_0_BRAM_O_Add2A_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_arb_0_BRAM_O_Add2A_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_arb_0_BRAM_O_Add2A_EN : STD_LOGIC;
  signal mayo_add_vectors_arb_0_BRAM_O_Add2A_RST : STD_LOGIC;
  signal mayo_add_vectors_arb_0_BRAM_O_Add2A_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_add_vectors_arb_0_BRAM_O_Add2B_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_arb_0_BRAM_O_Add2B_CTRL : STD_LOGIC;
  signal mayo_add_vectors_arb_0_BRAM_O_Add2B_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_arb_0_BRAM_O_Add2B_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_arb_0_BRAM_O_Add2B_EN : STD_LOGIC;
  signal mayo_add_vectors_arb_0_BRAM_O_Add2B_RST : STD_LOGIC;
  signal mayo_add_vectors_arb_0_BRAM_O_Add2B_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst_0_1 : STD_LOGIC;
begin
  BRAM_O_Add0A_addr(31 downto 0) <= Conn1_ADDR(31 downto 0);
  BRAM_O_Add0A_ctrl <= Conn1_CTRL;
  BRAM_O_Add0A_din(31 downto 0) <= Conn1_DIN(31 downto 0);
  BRAM_O_Add0A_en <= Conn1_EN;
  BRAM_O_Add0A_rst <= Conn1_RST;
  BRAM_O_Add0A_we(3 downto 0) <= Conn1_WE(3 downto 0);
  BRAM_O_Add1A_addr(31 downto 0) <= mayo_add_vectors_arb_0_BRAM_O_Add1A_ADDR(31 downto 0);
  BRAM_O_Add1A_ctrl <= mayo_add_vectors_arb_0_BRAM_O_Add1A_CTRL;
  BRAM_O_Add1A_din(31 downto 0) <= mayo_add_vectors_arb_0_BRAM_O_Add1A_DIN(31 downto 0);
  BRAM_O_Add1A_en <= mayo_add_vectors_arb_0_BRAM_O_Add1A_EN;
  BRAM_O_Add1A_rst <= mayo_add_vectors_arb_0_BRAM_O_Add1A_RST;
  BRAM_O_Add1A_we(3 downto 0) <= mayo_add_vectors_arb_0_BRAM_O_Add1A_WE(3 downto 0);
  BRAM_O_Add2A_addr(31 downto 0) <= mayo_add_vectors_arb_0_BRAM_O_Add2A_ADDR(31 downto 0);
  BRAM_O_Add2A_ctrl <= mayo_add_vectors_arb_0_BRAM_O_Add2A_CTRL;
  BRAM_O_Add2A_din(31 downto 0) <= mayo_add_vectors_arb_0_BRAM_O_Add2A_DIN(31 downto 0);
  BRAM_O_Add2A_en <= mayo_add_vectors_arb_0_BRAM_O_Add2A_EN;
  BRAM_O_Add2A_rst <= mayo_add_vectors_arb_0_BRAM_O_Add2A_RST;
  BRAM_O_Add2A_we(3 downto 0) <= mayo_add_vectors_arb_0_BRAM_O_Add2A_WE(3 downto 0);
  BRAM_O_Add2B_addr(31 downto 0) <= mayo_add_vectors_arb_0_BRAM_O_Add2B_ADDR(31 downto 0);
  BRAM_O_Add2B_ctrl <= mayo_add_vectors_arb_0_BRAM_O_Add2B_CTRL;
  BRAM_O_Add2B_din(31 downto 0) <= mayo_add_vectors_arb_0_BRAM_O_Add2B_DIN(31 downto 0);
  BRAM_O_Add2B_en <= mayo_add_vectors_arb_0_BRAM_O_Add2B_EN;
  BRAM_O_Add2B_rst <= mayo_add_vectors_arb_0_BRAM_O_Add2B_RST;
  BRAM_O_Add2B_we(3 downto 0) <= mayo_add_vectors_arb_0_BRAM_O_Add2B_WE(3 downto 0);
  Conn1_DOUT(31 downto 0) <= BRAM_O_Add0A_dout(31 downto 0);
  MAYO_SIGNING_FSM_0_o_add_bram_sel(1 downto 0) <= i_bram_sel(1 downto 0);
  MAYO_SIGNING_FSM_0_o_add_enable <= i_enable;
  MAYO_SIGNING_FSM_0_o_add_out_addr(31 downto 0) <= i_out_addr(31 downto 0);
  MAYO_SIGNING_FSM_0_o_add_v1_addr(31 downto 0) <= i_v1_addr(31 downto 0);
  MAYO_SIGNING_FSM_0_o_add_v2_addr(31 downto 0) <= i_v2_addr(31 downto 0);
  bram_sel_1(4 downto 0) <= bram_sel(4 downto 0);
  clk_0_1 <= clk_0;
  mayo_add_vectors_arb_0_BRAM_O_Add1A_DOUT(31 downto 0) <= BRAM_O_Add1A_dout(31 downto 0);
  mayo_add_vectors_arb_0_BRAM_O_Add2A_DOUT(31 downto 0) <= BRAM_O_Add2A_dout(31 downto 0);
  mayo_add_vectors_arb_0_BRAM_O_Add2B_DOUT(31 downto 0) <= BRAM_O_Add2B_dout(31 downto 0);
  o_done <= mayo_add_vectors_0_o_done;
  rst_0_1 <= rst_0;
mayo_add_vectors_0: component Mayo_sign_with_zynq_mayo_add_vectors_0_0
     port map (
      i_bram_sel(1 downto 0) => MAYO_SIGNING_FSM_0_o_add_bram_sel(1 downto 0),
      i_clk => clk_0_1,
      i_enable => MAYO_SIGNING_FSM_0_o_add_enable,
      i_mema_dout(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecA_DOUT(31 downto 0),
      i_memb_dout(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecB_DOUT(31 downto 0),
      i_memc_dout(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecC_DOUT(31 downto 0),
      i_out_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_add_out_addr(31 downto 0),
      i_v1_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_add_v1_addr(31 downto 0),
      i_v2_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_add_v2_addr(31 downto 0),
      o_controla => mayo_add_vectors_0_BRAM_Add_VecA_CTRL,
      o_controlb => mayo_add_vectors_0_BRAM_Add_VecB_CTRL,
      o_controlc => mayo_add_vectors_0_BRAM_Add_VecC_CTRL,
      o_done => mayo_add_vectors_0_o_done,
      o_mema_addr(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecA_ADDR(31 downto 0),
      o_mema_din(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecA_DIN(31 downto 0),
      o_mema_en => mayo_add_vectors_0_BRAM_Add_VecA_EN,
      o_mema_rst => mayo_add_vectors_0_BRAM_Add_VecA_RST,
      o_mema_we(3 downto 0) => mayo_add_vectors_0_BRAM_Add_VecA_WE(3 downto 0),
      o_memb_addr(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecB_ADDR(31 downto 0),
      o_memb_din(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecB_DIN(31 downto 0),
      o_memb_en => mayo_add_vectors_0_BRAM_Add_VecB_EN,
      o_memb_rst => mayo_add_vectors_0_BRAM_Add_VecB_RST,
      o_memb_we(3 downto 0) => mayo_add_vectors_0_BRAM_Add_VecB_WE(3 downto 0),
      o_memc_addr(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecC_ADDR(31 downto 0),
      o_memc_din(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecC_DIN(31 downto 0),
      o_memc_en => mayo_add_vectors_0_BRAM_Add_VecC_EN,
      o_memc_rst => mayo_add_vectors_0_BRAM_Add_VecC_RST,
      o_memc_we(3 downto 0) => mayo_add_vectors_0_BRAM_Add_VecC_WE(3 downto 0),
      rst => rst_0_1
    );
mayo_add_vectors_arb_0: component Mayo_sign_with_zynq_mayo_add_vectors_arb_0_0
     port map (
      bram_sel(4 downto 0) => bram_sel_1(4 downto 0),
      i_BRAM0A_dout(31 downto 0) => Conn1_DOUT(31 downto 0),
      i_BRAM1A_dout(31 downto 0) => mayo_add_vectors_arb_0_BRAM_O_Add1A_DOUT(31 downto 0),
      i_BRAM2A_dout(31 downto 0) => mayo_add_vectors_arb_0_BRAM_O_Add2A_DOUT(31 downto 0),
      i_BRAM2B_dout(31 downto 0) => mayo_add_vectors_arb_0_BRAM_O_Add2B_DOUT(31 downto 0),
      i_controla => mayo_add_vectors_0_BRAM_Add_VecA_CTRL,
      i_controlb => mayo_add_vectors_0_BRAM_Add_VecB_CTRL,
      i_controlc => mayo_add_vectors_0_BRAM_Add_VecC_CTRL,
      i_mema_addr(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecA_ADDR(31 downto 0),
      i_mema_din(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecA_DIN(31 downto 0),
      i_mema_en => mayo_add_vectors_0_BRAM_Add_VecA_EN,
      i_mema_rst => mayo_add_vectors_0_BRAM_Add_VecA_RST,
      i_mema_we(3 downto 0) => mayo_add_vectors_0_BRAM_Add_VecA_WE(3 downto 0),
      i_memb_addr(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecB_ADDR(31 downto 0),
      i_memb_din(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecB_DIN(31 downto 0),
      i_memb_en => mayo_add_vectors_0_BRAM_Add_VecB_EN,
      i_memb_rst => mayo_add_vectors_0_BRAM_Add_VecB_RST,
      i_memb_we(3 downto 0) => mayo_add_vectors_0_BRAM_Add_VecB_WE(3 downto 0),
      i_memc_addr(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecC_ADDR(31 downto 0),
      i_memc_din(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecC_DIN(31 downto 0),
      i_memc_en => mayo_add_vectors_0_BRAM_Add_VecC_EN,
      i_memc_rst => mayo_add_vectors_0_BRAM_Add_VecC_RST,
      i_memc_we(3 downto 0) => mayo_add_vectors_0_BRAM_Add_VecC_WE(3 downto 0),
      o_BRAM0A_addr(31 downto 0) => Conn1_ADDR(31 downto 0),
      o_BRAM0A_control => Conn1_CTRL,
      o_BRAM0A_din(31 downto 0) => Conn1_DIN(31 downto 0),
      o_BRAM0A_en => Conn1_EN,
      o_BRAM0A_rst => Conn1_RST,
      o_BRAM0A_we(3 downto 0) => Conn1_WE(3 downto 0),
      o_BRAM1A_addr(31 downto 0) => mayo_add_vectors_arb_0_BRAM_O_Add1A_ADDR(31 downto 0),
      o_BRAM1A_control => mayo_add_vectors_arb_0_BRAM_O_Add1A_CTRL,
      o_BRAM1A_din(31 downto 0) => mayo_add_vectors_arb_0_BRAM_O_Add1A_DIN(31 downto 0),
      o_BRAM1A_en => mayo_add_vectors_arb_0_BRAM_O_Add1A_EN,
      o_BRAM1A_rst => mayo_add_vectors_arb_0_BRAM_O_Add1A_RST,
      o_BRAM1A_we(3 downto 0) => mayo_add_vectors_arb_0_BRAM_O_Add1A_WE(3 downto 0),
      o_BRAM2A_addr(31 downto 0) => mayo_add_vectors_arb_0_BRAM_O_Add2A_ADDR(31 downto 0),
      o_BRAM2A_control => mayo_add_vectors_arb_0_BRAM_O_Add2A_CTRL,
      o_BRAM2A_din(31 downto 0) => mayo_add_vectors_arb_0_BRAM_O_Add2A_DIN(31 downto 0),
      o_BRAM2A_en => mayo_add_vectors_arb_0_BRAM_O_Add2A_EN,
      o_BRAM2A_rst => mayo_add_vectors_arb_0_BRAM_O_Add2A_RST,
      o_BRAM2A_we(3 downto 0) => mayo_add_vectors_arb_0_BRAM_O_Add2A_WE(3 downto 0),
      o_BRAM2B_addr(31 downto 0) => mayo_add_vectors_arb_0_BRAM_O_Add2B_ADDR(31 downto 0),
      o_BRAM2B_control => mayo_add_vectors_arb_0_BRAM_O_Add2B_CTRL,
      o_BRAM2B_din(31 downto 0) => mayo_add_vectors_arb_0_BRAM_O_Add2B_DIN(31 downto 0),
      o_BRAM2B_en => mayo_add_vectors_arb_0_BRAM_O_Add2B_EN,
      o_BRAM2B_rst => mayo_add_vectors_arb_0_BRAM_O_Add2B_RST,
      o_BRAM2B_we(3 downto 0) => mayo_add_vectors_arb_0_BRAM_O_Add2B_WE(3 downto 0),
      o_mema_dout(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecA_DOUT(31 downto 0),
      o_memb_dout(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecB_DOUT(31 downto 0),
      o_memc_dout(31 downto 0) => mayo_add_vectors_0_BRAM_Add_VecC_DOUT(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hash_imp_ZIUEQR is
  port (
    BRAM_HashBig_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_HashBig_ctrl : out STD_LOGIC;
    BRAM_HashBig_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_HashBig_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_HashBig_en : out STD_LOGIC;
    BRAM_HashBig_rst : out STD_LOGIC;
    BRAM_HashBig_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_HashSmall_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_HashSmall_ctrl : out STD_LOGIC;
    BRAM_HashSmall_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_HashSmall_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_HashSmall_en : out STD_LOGIC;
    BRAM_HashSmall_rst : out STD_LOGIC;
    BRAM_HashSmall_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_sel : in STD_LOGIC;
    clk : in STD_LOGIC;
    i_key_en : in STD_LOGIC;
    i_key_mlen : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_key_olen : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_key_read_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_key_write_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_key_done : out STD_LOGIC;
    o_key_dyn_done : out STD_LOGIC;
    rst : in STD_LOGIC
  );
end hash_imp_ZIUEQR;

architecture STRUCTURE of hash_imp_ZIUEQR is
  component Mayo_sign_with_zynq_mayo_hash_bram_arbit_0_0 is
  port (
    bram_sel : in STD_LOGIC;
    hash_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    hash_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    hash_en : in STD_LOGIC;
    hash_control : in STD_LOGIC;
    hash_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    hash_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM0_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM0_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM0_en : out STD_LOGIC;
    BRAM0_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM0_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM0_rst : out STD_LOGIC;
    BRAM0_control : out STD_LOGIC;
    BRAM1_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM1_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM1_en : out STD_LOGIC;
    BRAM1_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM1_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM1_rst : out STD_LOGIC;
    BRAM1_control : out STD_LOGIC
  );
  end component Mayo_sign_with_zynq_mayo_hash_bram_arbit_0_0;
  component Mayo_sign_with_zynq_MAYO_SHAKE_1_0 is
  port (
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    mlen : in STD_LOGIC_VECTOR ( 31 downto 0 );
    olen : in STD_LOGIC_VECTOR ( 31 downto 0 );
    write_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    read_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dyn_done : out STD_LOGIC;
    done : out STD_LOGIC;
    o_control : out STD_LOGIC;
    BRAMA_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAMA_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAMA_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAMA_en : out STD_LOGIC;
    BRAMA_dout : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Mayo_sign_with_zynq_MAYO_SHAKE_1_0;
  signal MAYO_SHAKE_1_BRAMA_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SHAKE_1_BRAMA_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SHAKE_1_BRAMA_en : STD_LOGIC;
  signal MAYO_SHAKE_1_BRAMA_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MAYO_SHAKE_1_done : STD_LOGIC;
  signal MAYO_SHAKE_1_dyn_done : STD_LOGIC;
  signal MAYO_SHAKE_1_o_control : STD_LOGIC;
  signal bram_sel_1 : STD_LOGIC;
  signal i_key_en_1 : STD_LOGIC;
  signal i_key_mlen_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i_key_olen_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i_key_read_adr_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i_key_write_adr_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_hash_bram_arbit_0_BRAM_HashBig_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_hash_bram_arbit_0_BRAM_HashBig_CTRL : STD_LOGIC;
  signal mayo_hash_bram_arbit_0_BRAM_HashBig_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_hash_bram_arbit_0_BRAM_HashBig_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_hash_bram_arbit_0_BRAM_HashBig_EN : STD_LOGIC;
  signal mayo_hash_bram_arbit_0_BRAM_HashBig_RST : STD_LOGIC;
  signal mayo_hash_bram_arbit_0_BRAM_HashBig_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_hash_bram_arbit_0_BRAM_HashSmall_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_hash_bram_arbit_0_BRAM_HashSmall_CTRL : STD_LOGIC;
  signal mayo_hash_bram_arbit_0_BRAM_HashSmall_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_hash_bram_arbit_0_BRAM_HashSmall_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_hash_bram_arbit_0_BRAM_HashSmall_EN : STD_LOGIC;
  signal mayo_hash_bram_arbit_0_BRAM_HashSmall_RST : STD_LOGIC;
  signal mayo_hash_bram_arbit_0_BRAM_HashSmall_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_hash_bram_arbit_0_hash_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal rst_ps7_0_100M_peripheral_aresetn : STD_LOGIC;
begin
  BRAM_HashBig_addr(31 downto 0) <= mayo_hash_bram_arbit_0_BRAM_HashBig_ADDR(31 downto 0);
  BRAM_HashBig_ctrl <= mayo_hash_bram_arbit_0_BRAM_HashBig_CTRL;
  BRAM_HashBig_din(31 downto 0) <= mayo_hash_bram_arbit_0_BRAM_HashBig_DIN(31 downto 0);
  BRAM_HashBig_en <= mayo_hash_bram_arbit_0_BRAM_HashBig_EN;
  BRAM_HashBig_rst <= mayo_hash_bram_arbit_0_BRAM_HashBig_RST;
  BRAM_HashBig_we(3 downto 0) <= mayo_hash_bram_arbit_0_BRAM_HashBig_WE(3 downto 0);
  BRAM_HashSmall_addr(31 downto 0) <= mayo_hash_bram_arbit_0_BRAM_HashSmall_ADDR(31 downto 0);
  BRAM_HashSmall_ctrl <= mayo_hash_bram_arbit_0_BRAM_HashSmall_CTRL;
  BRAM_HashSmall_din(31 downto 0) <= mayo_hash_bram_arbit_0_BRAM_HashSmall_DIN(31 downto 0);
  BRAM_HashSmall_en <= mayo_hash_bram_arbit_0_BRAM_HashSmall_EN;
  BRAM_HashSmall_rst <= mayo_hash_bram_arbit_0_BRAM_HashSmall_RST;
  BRAM_HashSmall_we(3 downto 0) <= mayo_hash_bram_arbit_0_BRAM_HashSmall_WE(3 downto 0);
  bram_sel_1 <= bram_sel;
  i_key_en_1 <= i_key_en;
  i_key_mlen_1(31 downto 0) <= i_key_mlen(31 downto 0);
  i_key_olen_1(31 downto 0) <= i_key_olen(31 downto 0);
  i_key_read_adr_1(31 downto 0) <= i_key_read_adr(31 downto 0);
  i_key_write_adr_1(31 downto 0) <= i_key_write_adr(31 downto 0);
  mayo_hash_bram_arbit_0_BRAM_HashBig_DOUT(31 downto 0) <= BRAM_HashBig_dout(31 downto 0);
  mayo_hash_bram_arbit_0_BRAM_HashSmall_DOUT(31 downto 0) <= BRAM_HashSmall_dout(31 downto 0);
  o_key_done <= MAYO_SHAKE_1_done;
  o_key_dyn_done <= MAYO_SHAKE_1_dyn_done;
  processing_system7_0_FCLK_CLK0 <= clk;
  rst_ps7_0_100M_peripheral_aresetn <= rst;
MAYO_SHAKE_1: component Mayo_sign_with_zynq_MAYO_SHAKE_1_0
     port map (
      BRAMA_addr(31 downto 0) => MAYO_SHAKE_1_BRAMA_addr(31 downto 0),
      BRAMA_din(31 downto 0) => MAYO_SHAKE_1_BRAMA_din(31 downto 0),
      BRAMA_dout(31 downto 0) => mayo_hash_bram_arbit_0_hash_dout(31 downto 0),
      BRAMA_en => MAYO_SHAKE_1_BRAMA_en,
      BRAMA_we(3 downto 0) => MAYO_SHAKE_1_BRAMA_we(3 downto 0),
      clk => processing_system7_0_FCLK_CLK0,
      done => MAYO_SHAKE_1_done,
      dyn_done => MAYO_SHAKE_1_dyn_done,
      en => i_key_en_1,
      mlen(31 downto 0) => i_key_mlen_1(31 downto 0),
      o_control => MAYO_SHAKE_1_o_control,
      olen(31 downto 0) => i_key_olen_1(31 downto 0),
      read_adr(31 downto 0) => i_key_read_adr_1(31 downto 0),
      rst => rst_ps7_0_100M_peripheral_aresetn,
      write_adr(31 downto 0) => i_key_write_adr_1(31 downto 0)
    );
mayo_hash_bram_arbit_0: component Mayo_sign_with_zynq_mayo_hash_bram_arbit_0_0
     port map (
      BRAM0_addr(31 downto 0) => mayo_hash_bram_arbit_0_BRAM_HashSmall_ADDR(31 downto 0),
      BRAM0_control => mayo_hash_bram_arbit_0_BRAM_HashSmall_CTRL,
      BRAM0_din(31 downto 0) => mayo_hash_bram_arbit_0_BRAM_HashSmall_DIN(31 downto 0),
      BRAM0_dout(31 downto 0) => mayo_hash_bram_arbit_0_BRAM_HashSmall_DOUT(31 downto 0),
      BRAM0_en => mayo_hash_bram_arbit_0_BRAM_HashSmall_EN,
      BRAM0_rst => mayo_hash_bram_arbit_0_BRAM_HashSmall_RST,
      BRAM0_we(3 downto 0) => mayo_hash_bram_arbit_0_BRAM_HashSmall_WE(3 downto 0),
      BRAM1_addr(31 downto 0) => mayo_hash_bram_arbit_0_BRAM_HashBig_ADDR(31 downto 0),
      BRAM1_control => mayo_hash_bram_arbit_0_BRAM_HashBig_CTRL,
      BRAM1_din(31 downto 0) => mayo_hash_bram_arbit_0_BRAM_HashBig_DIN(31 downto 0),
      BRAM1_dout(31 downto 0) => mayo_hash_bram_arbit_0_BRAM_HashBig_DOUT(31 downto 0),
      BRAM1_en => mayo_hash_bram_arbit_0_BRAM_HashBig_EN,
      BRAM1_rst => mayo_hash_bram_arbit_0_BRAM_HashBig_RST,
      BRAM1_we(3 downto 0) => mayo_hash_bram_arbit_0_BRAM_HashBig_WE(3 downto 0),
      bram_sel => bram_sel_1,
      hash_addr(31 downto 0) => MAYO_SHAKE_1_BRAMA_addr(31 downto 0),
      hash_control => MAYO_SHAKE_1_o_control,
      hash_din(31 downto 0) => MAYO_SHAKE_1_BRAMA_din(31 downto 0),
      hash_dout(31 downto 0) => mayo_hash_bram_arbit_0_hash_dout(31 downto 0),
      hash_en => MAYO_SHAKE_1_BRAMA_en,
      hash_we(3 downto 0) => MAYO_SHAKE_1_BRAMA_we(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_1M5MB5Y is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_1M5MB5Y;

architecture STRUCTURE of m00_couplers_imp_1M5MB5Y is
  component Mayo_sign_with_zynq_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component Mayo_sign_with_zynq_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_m00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_m00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_m00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= m00_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= m00_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= m00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m00_couplers_to_auto_pc_WREADY;
  auto_pc_to_m00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m00_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  m00_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m00_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m00_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m00_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  m00_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m00_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m00_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component Mayo_sign_with_zynq_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_m00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_m00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => m00_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(7 downto 0) => m00_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m00_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m00_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m00_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => m00_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(7 downto 0) => m00_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m00_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m00_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m00_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => m00_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => m00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => m00_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => m00_couplers_to_auto_pc_RLAST,
      s_axi_rready => m00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m00_couplers_to_auto_pc_WLAST,
      s_axi_wready => m00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_1DK70GY is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m01_couplers_imp_1DK70GY;

architecture STRUCTURE of m01_couplers_imp_1DK70GY is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m01_couplers_to_m01_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_m01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m01_couplers_to_m01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_m01_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m01_couplers_to_m01_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= m01_couplers_to_m01_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= m01_couplers_to_m01_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(11 downto 0) <= m01_couplers_to_m01_couplers_ARID(11 downto 0);
  M_AXI_arlen(7 downto 0) <= m01_couplers_to_m01_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= m01_couplers_to_m01_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= m01_couplers_to_m01_couplers_ARPROT(2 downto 0);
  M_AXI_arsize(2 downto 0) <= m01_couplers_to_m01_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid(0) <= m01_couplers_to_m01_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= m01_couplers_to_m01_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= m01_couplers_to_m01_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(11 downto 0) <= m01_couplers_to_m01_couplers_AWID(11 downto 0);
  M_AXI_awlen(7 downto 0) <= m01_couplers_to_m01_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= m01_couplers_to_m01_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= m01_couplers_to_m01_couplers_AWPROT(2 downto 0);
  M_AXI_awsize(2 downto 0) <= m01_couplers_to_m01_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid(0) <= m01_couplers_to_m01_couplers_AWVALID(0);
  M_AXI_bready(0) <= m01_couplers_to_m01_couplers_BREADY(0);
  M_AXI_rready(0) <= m01_couplers_to_m01_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wlast(0) <= m01_couplers_to_m01_couplers_WLAST(0);
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m01_couplers_to_m01_couplers_WVALID(0);
  S_AXI_arready(0) <= m01_couplers_to_m01_couplers_ARREADY(0);
  S_AXI_awready(0) <= m01_couplers_to_m01_couplers_AWREADY(0);
  S_AXI_bid(11 downto 0) <= m01_couplers_to_m01_couplers_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m01_couplers_to_m01_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= m01_couplers_to_m01_couplers_RID(11 downto 0);
  S_AXI_rlast(0) <= m01_couplers_to_m01_couplers_RLAST(0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m01_couplers_to_m01_couplers_RVALID(0);
  S_AXI_wready(0) <= m01_couplers_to_m01_couplers_WREADY(0);
  m01_couplers_to_m01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_m01_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m01_couplers_to_m01_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m01_couplers_to_m01_couplers_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  m01_couplers_to_m01_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m01_couplers_to_m01_couplers_ARLOCK(0) <= S_AXI_arlock(0);
  m01_couplers_to_m01_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m01_couplers_to_m01_couplers_ARREADY(0) <= M_AXI_arready(0);
  m01_couplers_to_m01_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m01_couplers_to_m01_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m01_couplers_to_m01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_m01_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m01_couplers_to_m01_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m01_couplers_to_m01_couplers_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  m01_couplers_to_m01_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m01_couplers_to_m01_couplers_AWLOCK(0) <= S_AXI_awlock(0);
  m01_couplers_to_m01_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m01_couplers_to_m01_couplers_AWREADY(0) <= M_AXI_awready(0);
  m01_couplers_to_m01_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m01_couplers_to_m01_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m01_couplers_to_m01_couplers_BID(11 downto 0) <= M_AXI_bid(11 downto 0);
  m01_couplers_to_m01_couplers_BREADY(0) <= S_AXI_bready(0);
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RID(11 downto 0) <= M_AXI_rid(11 downto 0);
  m01_couplers_to_m01_couplers_RLAST(0) <= M_AXI_rlast(0);
  m01_couplers_to_m01_couplers_RREADY(0) <= S_AXI_rready(0);
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WLAST(0) <= S_AXI_wlast(0);
  m01_couplers_to_m01_couplers_WREADY(0) <= M_AXI_wready(0);
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_UO3720 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_UO3720;

architecture STRUCTURE of s00_couplers_imp_UO3720 is
  component Mayo_sign_with_zynq_auto_pc_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component Mayo_sign_with_zynq_auto_pc_1;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal auto_pc_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal auto_pc_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal auto_pc_to_s00_couplers_RLAST : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WLAST : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_pc_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_pc_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_pc_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(11 downto 0) <= auto_pc_to_s00_couplers_ARID(11 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_pc_to_s00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_pc_to_s00_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_pc_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_pc_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_pc_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_pc_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(11 downto 0) <= auto_pc_to_s00_couplers_AWID(11 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_pc_to_s00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= auto_pc_to_s00_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_pc_to_s00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_pc_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= auto_pc_to_s00_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= s00_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= s00_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BID(11 downto 0) <= M_AXI_bid(11 downto 0);
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RID(11 downto 0) <= M_AXI_rid(11 downto 0);
  auto_pc_to_s00_couplers_RLAST <= M_AXI_rlast;
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  s00_couplers_to_auto_pc_ARLEN(3 downto 0) <= S_AXI_arlen(3 downto 0);
  s00_couplers_to_auto_pc_ARLOCK(1 downto 0) <= S_AXI_arlock(1 downto 0);
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  s00_couplers_to_auto_pc_AWLEN(3 downto 0) <= S_AXI_awlen(3 downto 0);
  s00_couplers_to_auto_pc_AWLOCK(1 downto 0) <= S_AXI_awlock(1 downto 0);
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WID(11 downto 0) <= S_AXI_wid(11 downto 0);
  s00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component Mayo_sign_with_zynq_auto_pc_1
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_s00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_s00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(11 downto 0) => auto_pc_to_s00_couplers_ARID(11 downto 0),
      m_axi_arlen(7 downto 0) => auto_pc_to_s00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_pc_to_s00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_pc_to_s00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_pc_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_pc_to_s00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_pc_to_s00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_pc_to_s00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(11 downto 0) => auto_pc_to_s00_couplers_AWID(11 downto 0),
      m_axi_awlen(7 downto 0) => auto_pc_to_s00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_pc_to_s00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_pc_to_s00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_pc_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_pc_to_s00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bid(11 downto 0) => auto_pc_to_s00_couplers_BID(11 downto 0),
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rid(11 downto 0) => auto_pc_to_s00_couplers_RID(11 downto 0),
      m_axi_rlast => auto_pc_to_s00_couplers_RLAST,
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wlast => auto_pc_to_s00_couplers_WLAST,
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s00_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(3 downto 0) => s00_couplers_to_auto_pc_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => s00_couplers_to_auto_pc_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s00_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(3 downto 0) => s00_couplers_to_auto_pc_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => s00_couplers_to_auto_pc_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => s00_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s00_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wid(11 downto 0) => s00_couplers_to_auto_pc_WID(11 downto 0),
      s_axi_wlast => s00_couplers_to_auto_pc_WLAST,
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Mayo_sign_with_zynq_ps7_0_axi_periph_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M01_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M01_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M01_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M01_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M01_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M01_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end Mayo_sign_with_zynq_ps7_0_axi_periph_0;

architecture STRUCTURE of Mayo_sign_with_zynq_ps7_0_axi_periph_0 is
  component Mayo_sign_with_zynq_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component Mayo_sign_with_zynq_xbar_0;
  signal m00_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_ACLK_net : STD_LOGIC;
  signal ps7_0_axi_periph_ARESETN_net : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_RLAST : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_WLAST : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARBURST : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARID : STD_LOGIC_VECTOR ( 23 downto 12 );
  signal xbar_to_m01_couplers_ARLEN : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal xbar_to_m01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWBURST : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWID : STD_LOGIC_VECTOR ( 23 downto 12 );
  signal xbar_to_m01_couplers_AWLEN : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal xbar_to_m01_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m01_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_xbar_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_xbar_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_xbar_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
begin
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_ps7_0_axi_periph_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M00_AXI_awprot(2 downto 0) <= m00_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_ps7_0_axi_periph_AWVALID;
  M00_AXI_bready <= m00_couplers_to_ps7_0_axi_periph_BREADY;
  M00_AXI_rready <= m00_couplers_to_ps7_0_axi_periph_RREADY;
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_ps7_0_axi_periph_WVALID;
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M01_AXI_arburst(1 downto 0) <= m01_couplers_to_ps7_0_axi_periph_ARBURST(1 downto 0);
  M01_AXI_arcache(3 downto 0) <= m01_couplers_to_ps7_0_axi_periph_ARCACHE(3 downto 0);
  M01_AXI_arid(11 downto 0) <= m01_couplers_to_ps7_0_axi_periph_ARID(11 downto 0);
  M01_AXI_arlen(7 downto 0) <= m01_couplers_to_ps7_0_axi_periph_ARLEN(7 downto 0);
  M01_AXI_arlock(0) <= m01_couplers_to_ps7_0_axi_periph_ARLOCK(0);
  M01_AXI_arprot(2 downto 0) <= m01_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0);
  M01_AXI_arsize(2 downto 0) <= m01_couplers_to_ps7_0_axi_periph_ARSIZE(2 downto 0);
  M01_AXI_arvalid(0) <= m01_couplers_to_ps7_0_axi_periph_ARVALID(0);
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M01_AXI_awburst(1 downto 0) <= m01_couplers_to_ps7_0_axi_periph_AWBURST(1 downto 0);
  M01_AXI_awcache(3 downto 0) <= m01_couplers_to_ps7_0_axi_periph_AWCACHE(3 downto 0);
  M01_AXI_awid(11 downto 0) <= m01_couplers_to_ps7_0_axi_periph_AWID(11 downto 0);
  M01_AXI_awlen(7 downto 0) <= m01_couplers_to_ps7_0_axi_periph_AWLEN(7 downto 0);
  M01_AXI_awlock(0) <= m01_couplers_to_ps7_0_axi_periph_AWLOCK(0);
  M01_AXI_awprot(2 downto 0) <= m01_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0);
  M01_AXI_awsize(2 downto 0) <= m01_couplers_to_ps7_0_axi_periph_AWSIZE(2 downto 0);
  M01_AXI_awvalid(0) <= m01_couplers_to_ps7_0_axi_periph_AWVALID(0);
  M01_AXI_bready(0) <= m01_couplers_to_ps7_0_axi_periph_BREADY(0);
  M01_AXI_rready(0) <= m01_couplers_to_ps7_0_axi_periph_RREADY(0);
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M01_AXI_wlast(0) <= m01_couplers_to_ps7_0_axi_periph_WLAST(0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M01_AXI_wvalid(0) <= m01_couplers_to_ps7_0_axi_periph_WVALID(0);
  S00_AXI_arready <= ps7_0_axi_periph_to_s00_couplers_ARREADY;
  S00_AXI_awready <= ps7_0_axi_periph_to_s00_couplers_AWREADY;
  S00_AXI_bid(11 downto 0) <= ps7_0_axi_periph_to_s00_couplers_BID(11 downto 0);
  S00_AXI_bresp(1 downto 0) <= ps7_0_axi_periph_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= ps7_0_axi_periph_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= ps7_0_axi_periph_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(11 downto 0) <= ps7_0_axi_periph_to_s00_couplers_RID(11 downto 0);
  S00_AXI_rlast <= ps7_0_axi_periph_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= ps7_0_axi_periph_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= ps7_0_axi_periph_to_s00_couplers_RVALID;
  S00_AXI_wready <= ps7_0_axi_periph_to_s00_couplers_WREADY;
  m00_couplers_to_ps7_0_axi_periph_ARREADY <= M00_AXI_arready;
  m00_couplers_to_ps7_0_axi_periph_AWREADY <= M00_AXI_awready;
  m00_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_ps7_0_axi_periph_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_ps7_0_axi_periph_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_ps7_0_axi_periph_WREADY <= M00_AXI_wready;
  m01_couplers_to_ps7_0_axi_periph_ARREADY(0) <= M01_AXI_arready(0);
  m01_couplers_to_ps7_0_axi_periph_AWREADY(0) <= M01_AXI_awready(0);
  m01_couplers_to_ps7_0_axi_periph_BID(11 downto 0) <= M01_AXI_bid(11 downto 0);
  m01_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_ps7_0_axi_periph_BVALID(0) <= M01_AXI_bvalid(0);
  m01_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_ps7_0_axi_periph_RID(11 downto 0) <= M01_AXI_rid(11 downto 0);
  m01_couplers_to_ps7_0_axi_periph_RLAST(0) <= M01_AXI_rlast(0);
  m01_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_ps7_0_axi_periph_RVALID(0) <= M01_AXI_rvalid(0);
  m01_couplers_to_ps7_0_axi_periph_WREADY(0) <= M01_AXI_wready(0);
  ps7_0_axi_periph_ACLK_net <= ACLK;
  ps7_0_axi_periph_ARESETN_net <= ARESETN;
  ps7_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARID(11 downto 0) <= S00_AXI_arid(11 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARLEN(3 downto 0) <= S00_AXI_arlen(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARLOCK(1 downto 0) <= S00_AXI_arlock(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  ps7_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWID(11 downto 0) <= S00_AXI_awid(11 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWLEN(3 downto 0) <= S00_AXI_awlen(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWLOCK(1 downto 0) <= S00_AXI_awlock(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  ps7_0_axi_periph_to_s00_couplers_BREADY <= S00_AXI_bready;
  ps7_0_axi_periph_to_s00_couplers_RREADY <= S00_AXI_rready;
  ps7_0_axi_periph_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  ps7_0_axi_periph_to_s00_couplers_WID(11 downto 0) <= S00_AXI_wid(11 downto 0);
  ps7_0_axi_periph_to_s00_couplers_WLAST <= S00_AXI_wlast;
  ps7_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_WVALID <= S00_AXI_wvalid;
m00_couplers: entity work.m00_couplers_imp_1M5MB5Y
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m00_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => m00_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m00_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m00_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => m00_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m00_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m00_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m00_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m00_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m00_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(11 downto 0) => xbar_to_m00_couplers_ARID(11 downto 0),
      S_AXI_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => xbar_to_m00_couplers_AWID(11 downto 0),
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bid(11 downto 0) => xbar_to_m00_couplers_BID(11 downto 0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => xbar_to_m00_couplers_RID(11 downto 0),
      S_AXI_rlast => xbar_to_m00_couplers_RLAST,
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wlast => xbar_to_m00_couplers_WLAST(0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_1DK70GY
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => m01_couplers_to_ps7_0_axi_periph_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m01_couplers_to_ps7_0_axi_periph_ARCACHE(3 downto 0),
      M_AXI_arid(11 downto 0) => m01_couplers_to_ps7_0_axi_periph_ARID(11 downto 0),
      M_AXI_arlen(7 downto 0) => m01_couplers_to_ps7_0_axi_periph_ARLEN(7 downto 0),
      M_AXI_arlock(0) => m01_couplers_to_ps7_0_axi_periph_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => m01_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready(0) => m01_couplers_to_ps7_0_axi_periph_ARREADY(0),
      M_AXI_arsize(2 downto 0) => m01_couplers_to_ps7_0_axi_periph_ARSIZE(2 downto 0),
      M_AXI_arvalid(0) => m01_couplers_to_ps7_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => m01_couplers_to_ps7_0_axi_periph_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m01_couplers_to_ps7_0_axi_periph_AWCACHE(3 downto 0),
      M_AXI_awid(11 downto 0) => m01_couplers_to_ps7_0_axi_periph_AWID(11 downto 0),
      M_AXI_awlen(7 downto 0) => m01_couplers_to_ps7_0_axi_periph_AWLEN(7 downto 0),
      M_AXI_awlock(0) => m01_couplers_to_ps7_0_axi_periph_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => m01_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready(0) => m01_couplers_to_ps7_0_axi_periph_AWREADY(0),
      M_AXI_awsize(2 downto 0) => m01_couplers_to_ps7_0_axi_periph_AWSIZE(2 downto 0),
      M_AXI_awvalid(0) => m01_couplers_to_ps7_0_axi_periph_AWVALID(0),
      M_AXI_bid(11 downto 0) => m01_couplers_to_ps7_0_axi_periph_BID(11 downto 0),
      M_AXI_bready(0) => m01_couplers_to_ps7_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m01_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m01_couplers_to_ps7_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rid(11 downto 0) => m01_couplers_to_ps7_0_axi_periph_RID(11 downto 0),
      M_AXI_rlast(0) => m01_couplers_to_ps7_0_axi_periph_RLAST(0),
      M_AXI_rready(0) => m01_couplers_to_ps7_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m01_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m01_couplers_to_ps7_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wlast(0) => m01_couplers_to_ps7_0_axi_periph_WLAST(0),
      M_AXI_wready(0) => m01_couplers_to_ps7_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m01_couplers_to_ps7_0_axi_periph_WVALID(0),
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arburst(1 downto 0) => xbar_to_m01_couplers_ARBURST(3 downto 2),
      S_AXI_arcache(3 downto 0) => xbar_to_m01_couplers_ARCACHE(7 downto 4),
      S_AXI_arid(11 downto 0) => xbar_to_m01_couplers_ARID(23 downto 12),
      S_AXI_arlen(7 downto 0) => xbar_to_m01_couplers_ARLEN(15 downto 8),
      S_AXI_arlock(0) => xbar_to_m01_couplers_ARLOCK(1),
      S_AXI_arprot(2 downto 0) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      S_AXI_arready(0) => xbar_to_m01_couplers_ARREADY(0),
      S_AXI_arsize(2 downto 0) => xbar_to_m01_couplers_ARSIZE(5 downto 3),
      S_AXI_arvalid(0) => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awburst(1 downto 0) => xbar_to_m01_couplers_AWBURST(3 downto 2),
      S_AXI_awcache(3 downto 0) => xbar_to_m01_couplers_AWCACHE(7 downto 4),
      S_AXI_awid(11 downto 0) => xbar_to_m01_couplers_AWID(23 downto 12),
      S_AXI_awlen(7 downto 0) => xbar_to_m01_couplers_AWLEN(15 downto 8),
      S_AXI_awlock(0) => xbar_to_m01_couplers_AWLOCK(1),
      S_AXI_awprot(2 downto 0) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      S_AXI_awready(0) => xbar_to_m01_couplers_AWREADY(0),
      S_AXI_awsize(2 downto 0) => xbar_to_m01_couplers_AWSIZE(5 downto 3),
      S_AXI_awvalid(0) => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bid(11 downto 0) => xbar_to_m01_couplers_BID(11 downto 0),
      S_AXI_bready(0) => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m01_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => xbar_to_m01_couplers_RID(11 downto 0),
      S_AXI_rlast(0) => xbar_to_m01_couplers_RLAST(0),
      S_AXI_rready(0) => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m01_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wlast(0) => xbar_to_m01_couplers_WLAST(1),
      S_AXI_wready(0) => xbar_to_m01_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid(0) => xbar_to_m01_couplers_WVALID(1)
    );
s00_couplers: entity work.s00_couplers_imp_UO3720
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arid(11 downto 0) => s00_couplers_to_xbar_ARID(11 downto 0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awid(11 downto 0) => s00_couplers_to_xbar_AWID(11 downto 0),
      M_AXI_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bid(11 downto 0) => s00_couplers_to_xbar_BID(11 downto 0),
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rid(11 downto 0) => s00_couplers_to_xbar_RID(11 downto 0),
      M_AXI_rlast => s00_couplers_to_xbar_RLAST(0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast => s00_couplers_to_xbar_WLAST,
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARID(11 downto 0),
      S_AXI_arlen(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARLEN(3 downto 0),
      S_AXI_arlock(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARLOCK(1 downto 0),
      S_AXI_arprot(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => ps7_0_axi_periph_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => ps7_0_axi_periph_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWID(11 downto 0),
      S_AXI_awlen(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWLEN(3 downto 0),
      S_AXI_awlock(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWLOCK(1 downto 0),
      S_AXI_awprot(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => ps7_0_axi_periph_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => ps7_0_axi_periph_to_s00_couplers_AWVALID,
      S_AXI_bid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_BID(11 downto 0),
      S_AXI_bready => ps7_0_axi_periph_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => ps7_0_axi_periph_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_RID(11 downto 0),
      S_AXI_rlast => ps7_0_axi_periph_to_s00_couplers_RLAST,
      S_AXI_rready => ps7_0_axi_periph_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => ps7_0_axi_periph_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_WID(11 downto 0),
      S_AXI_wlast => ps7_0_axi_periph_to_s00_couplers_WLAST,
      S_AXI_wready => ps7_0_axi_periph_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => ps7_0_axi_periph_to_s00_couplers_WVALID
    );
xbar: component Mayo_sign_with_zynq_xbar_0
     port map (
      aclk => ps7_0_axi_periph_ACLK_net,
      aresetn => ps7_0_axi_periph_ARESETN_net,
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(3 downto 2) => xbar_to_m01_couplers_ARBURST(3 downto 2),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(7 downto 4) => xbar_to_m01_couplers_ARCACHE(7 downto 4),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(23 downto 12) => xbar_to_m01_couplers_ARID(23 downto 12),
      m_axi_arid(11 downto 0) => xbar_to_m00_couplers_ARID(11 downto 0),
      m_axi_arlen(15 downto 8) => xbar_to_m01_couplers_ARLEN(15 downto 8),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(1) => xbar_to_m01_couplers_ARLOCK(1),
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      m_axi_arprot(5 downto 3) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(7 downto 4) => NLW_xbar_m_axi_arqos_UNCONNECTED(7 downto 4),
      m_axi_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY(0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arregion(7 downto 4) => NLW_xbar_m_axi_arregion_UNCONNECTED(7 downto 4),
      m_axi_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      m_axi_arsize(5 downto 3) => xbar_to_m01_couplers_ARSIZE(5 downto 3),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(3 downto 2) => xbar_to_m01_couplers_AWBURST(3 downto 2),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(7 downto 4) => xbar_to_m01_couplers_AWCACHE(7 downto 4),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(23 downto 12) => xbar_to_m01_couplers_AWID(23 downto 12),
      m_axi_awid(11 downto 0) => xbar_to_m00_couplers_AWID(11 downto 0),
      m_axi_awlen(15 downto 8) => xbar_to_m01_couplers_AWLEN(15 downto 8),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(1) => xbar_to_m01_couplers_AWLOCK(1),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(5 downto 3) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(7 downto 4) => NLW_xbar_m_axi_awqos_UNCONNECTED(7 downto 4),
      m_axi_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY(0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awregion(7 downto 4) => NLW_xbar_m_axi_awregion_UNCONNECTED(7 downto 4),
      m_axi_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      m_axi_awsize(5 downto 3) => xbar_to_m01_couplers_AWSIZE(5 downto 3),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bid(23 downto 12) => xbar_to_m01_couplers_BID(11 downto 0),
      m_axi_bid(11 downto 0) => xbar_to_m00_couplers_BID(11 downto 0),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID(0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rid(23 downto 12) => xbar_to_m01_couplers_RID(11 downto 0),
      m_axi_rid(11 downto 0) => xbar_to_m00_couplers_RID(11 downto 0),
      m_axi_rlast(1) => xbar_to_m01_couplers_RLAST(0),
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST,
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID(0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wlast(1) => xbar_to_m01_couplers_WLAST(1),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s00_couplers_to_xbar_ARID(11 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s00_couplers_to_xbar_AWID(11 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bid(11 downto 0) => s00_couplers_to_xbar_BID(11 downto 0),
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s00_couplers_to_xbar_RID(11 downto 0),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wlast(0) => s00_couplers_to_xbar_WLAST,
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Mayo_sign_with_zynq is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Mayo_sign_with_zynq : entity is "Mayo_sign_with_zynq,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Mayo_sign_with_zynq,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=51,numReposBlks=40,numNonXlnxBlks=3,numHierBlks=11,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=22,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=2,da_clkrst_cnt=1,da_ps7_cnt=1,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of Mayo_sign_with_zynq : entity is "Mayo_sign_with_zynq.hwdef";
end Mayo_sign_with_zynq;

architecture STRUCTURE of Mayo_sign_with_zynq is
  component Mayo_sign_with_zynq_Ground0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component Mayo_sign_with_zynq_Ground0_0;
  component Mayo_sign_with_zynq_Ground32_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Mayo_sign_with_zynq_Ground32_0;
  component Mayo_sign_with_zynq_Ground4_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component Mayo_sign_with_zynq_Ground4_0;
  component Mayo_sign_with_zynq_mayo_reduce_0_0 is
  port (
    i_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    i_enable : in STD_LOGIC;
    i_bram_sel : in STD_LOGIC;
    i_len : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_dout0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_addr0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_din0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_en0 : out STD_LOGIC;
    o_rst0 : out STD_LOGIC;
    o_we0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    i_dout1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_addr1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_din1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_en1 : out STD_LOGIC;
    o_rst1 : out STD_LOGIC;
    o_we1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_done : out STD_LOGIC;
    o_control0 : out STD_LOGIC;
    o_control1 : out STD_LOGIC
  );
  end component Mayo_sign_with_zynq_mayo_reduce_0_0;
  component Mayo_sign_with_zynq_mayo_sample_oil_space_0_0 is
  port (
    i_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    i_enable : in STD_LOGIC;
    o_done : out STD_LOGIC;
    i_oil_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mode : in STD_LOGIC;
    o_trng_r : out STD_LOGIC;
    o_trng_w : out STD_LOGIC;
    o_trng_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_trng_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_trng_valid : in STD_LOGIC;
    i_trng_done : in STD_LOGIC;
    i_mema_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mema_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mema_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mema_en : out STD_LOGIC;
    o_mema_rst : out STD_LOGIC;
    o_mema_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_controla : out STD_LOGIC;
    i_memb_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memb_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memb_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memb_en : out STD_LOGIC;
    o_memb_rst : out STD_LOGIC;
    o_memb_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_controlb : out STD_LOGIC;
    o_trng_sel : out STD_LOGIC
  );
  end component Mayo_sign_with_zynq_mayo_sample_oil_space_0_0;
  component Mayo_sign_with_zynq_mayo_sample_vinegar_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    o_done : out STD_LOGIC;
    i_input_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_trng_r : out STD_LOGIC;
    o_trng_w : out STD_LOGIC;
    o_trng_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_trng_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_trng_valid : in STD_LOGIC;
    i_trng_done : in STD_LOGIC;
    o_trng_sel : out STD_LOGIC;
    i_memb_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memb_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memb_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memb_en : out STD_LOGIC;
    o_memb_rst : out STD_LOGIC;
    o_memb_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_controlb : out STD_LOGIC
  );
  end component Mayo_sign_with_zynq_mayo_sample_vinegar_0_0;
  component Mayo_sign_with_zynq_memcpy_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    start : in STD_LOGIC;
    i_src_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_dst_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_len : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_done : out STD_LOGIC;
    i_mem_port_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_src_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_src_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_src_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_src_en : out STD_LOGIC;
    o_src_rst : out STD_LOGIC;
    o_src_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_src_control : out STD_LOGIC;
    i_dest_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_dest_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_dest_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_dest_en : out STD_LOGIC;
    o_dest_rst : out STD_LOGIC;
    o_dest_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_dest_control : out STD_LOGIC
  );
  end component Mayo_sign_with_zynq_memcpy_0_0;
  component Mayo_sign_with_zynq_memcpy_1_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    start : in STD_LOGIC;
    i_src_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_dst_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_len : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_done : out STD_LOGIC;
    i_mem_port_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_src_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_src_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_src_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_src_en : out STD_LOGIC;
    o_src_rst : out STD_LOGIC;
    o_src_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_src_control : out STD_LOGIC;
    i_dest_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_dest_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_dest_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_dest_en : out STD_LOGIC;
    o_dest_rst : out STD_LOGIC;
    o_dest_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_dest_control : out STD_LOGIC
  );
  end component Mayo_sign_with_zynq_memcpy_1_0;
  component Mayo_sign_with_zynq_processing_system7_0_0 is
  port (
    TTC0_WAVE0_OUT : out STD_LOGIC;
    TTC0_WAVE1_OUT : out STD_LOGIC;
    TTC0_WAVE2_OUT : out STD_LOGIC;
    USB0_PORT_INDCTL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    USB0_VBUS_PWRSELECT : out STD_LOGIC;
    USB0_VBUS_PWRFAULT : in STD_LOGIC;
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IRQ_F2P : in STD_LOGIC_VECTOR ( 0 to 0 );
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component Mayo_sign_with_zynq_processing_system7_0_0;
  component Mayo_sign_with_zynq_mayo_axi_litev3_0_0 is
  port (
    o_Keygen_en : out STD_LOGIC;
    o_Signing_en : out STD_LOGIC;
    o_Verification_en : out STD_LOGIC;
    o_Debug : out STD_LOGIC;
    o_Expose : out STD_LOGIC;
    o_irq_en : out STD_LOGIC;
    i_Keygen_done : in STD_LOGIC;
    i_Signing_done : in STD_LOGIC;
    i_Verification_done : in STD_LOGIC;
    i_Keygen_busy : in STD_LOGIC;
    i_Signing_busy : in STD_LOGIC;
    i_Verification_busy : in STD_LOGIC;
    i_error : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_interrupt : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  end component Mayo_sign_with_zynq_mayo_axi_litev3_0_0;
  component Mayo_sign_with_zynq_rst_ps7_0_100M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component Mayo_sign_with_zynq_rst_ps7_0_100M_0;
  component Mayo_sign_with_zynq_xlconcat_0_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component Mayo_sign_with_zynq_xlconcat_0_1;
  component Mayo_sign_with_zynq_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  end component Mayo_sign_with_zynq_xlconstant_0_0;
  component Mayo_sign_with_zynq_mayo_add_oil_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    i_enable : in STD_LOGIC;
    o_done : out STD_LOGIC;
    i_mem0a_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0a_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0a_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0a_en : out STD_LOGIC;
    o_mem0a_rst : out STD_LOGIC;
    o_mem0a_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_control0a : out STD_LOGIC;
    i_mem0b_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0b_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0b_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0b_en : out STD_LOGIC;
    o_mem0b_rst : out STD_LOGIC;
    o_mem0b_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_control0b : out STD_LOGIC;
    i_mem1a_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem1a_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem1a_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem1a_en : out STD_LOGIC;
    o_mem1a_rst : out STD_LOGIC;
    o_mem1a_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_control1a : out STD_LOGIC
  );
  end component Mayo_sign_with_zynq_mayo_add_oil_0_0;
  component Mayo_sign_with_zynq_mayo_reduce_extension_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    o_done : out STD_LOGIC;
    i_input_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_output_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_mema_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mema_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mema_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mema_en : out STD_LOGIC;
    o_mema_rst : out STD_LOGIC;
    o_mema_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_controla : out STD_LOGIC;
    i_memb_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memb_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memb_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memb_en : out STD_LOGIC;
    o_memb_rst : out STD_LOGIC;
    o_memb_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_controlb : out STD_LOGIC;
    i_memc_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memc_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memc_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memc_en : out STD_LOGIC;
    o_memc_rst : out STD_LOGIC;
    o_memc_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_controlc : out STD_LOGIC
  );
  end component Mayo_sign_with_zynq_mayo_reduce_extension_0_0;
  component Mayo_sign_with_zynq_mayo_negate_0_0 is
  port (
    i_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    i_enable : in STD_LOGIC;
    i_len : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_doutb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_addrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_dinb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_enb : out STD_LOGIC;
    o_rstb : out STD_LOGIC;
    o_web : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_done : out STD_LOGIC;
    o_control : out STD_LOGIC
  );
  end component Mayo_sign_with_zynq_mayo_negate_0_0;
  component Mayo_sign_with_zynq_MAYO_P1P1T_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    enable : in STD_LOGIC;
    o_done : out STD_LOGIC;
    i_src_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_dsta_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_dstb_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_ji_equal : in STD_LOGIC;
    i_mem0b_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0b_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0b_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0b_en : out STD_LOGIC;
    o_mem0b_rst : out STD_LOGIC;
    o_mem0b_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_control0b : out STD_LOGIC;
    i_mem1a_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem1a_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem1a_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem1a_en : out STD_LOGIC;
    o_mem1a_rst : out STD_LOGIC;
    o_mem1a_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_control1a : out STD_LOGIC
  );
  end component Mayo_sign_with_zynq_MAYO_P1P1T_0_0;
  component Mayo_sign_with_zynq_mayo_sample_oil_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    o_ret : out STD_LOGIC;
    o_done : out STD_LOGIC;
    i_mem0a_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0a_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0a_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0a_en : out STD_LOGIC;
    o_mem0a_rst : out STD_LOGIC;
    o_mem0a_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_control0a : out STD_LOGIC;
    i_mem0b_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0b_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0b_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0b_en : out STD_LOGIC;
    o_mem0b_rst : out STD_LOGIC;
    o_mem0b_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_control0b : out STD_LOGIC;
    i_mem1a_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem1a_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem1a_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem1a_en : out STD_LOGIC;
    o_mem1a_rst : out STD_LOGIC;
    o_mem1a_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_control1a : out STD_LOGIC
  );
  end component Mayo_sign_with_zynq_mayo_sample_oil_0_0;
  component Mayo_sign_with_zynq_MAYO_SIGNING_FSM_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    i_enable : in STD_LOGIC;
    i_secret : in STD_LOGIC;
    o_done : out STD_LOGIC;
    o_busy : out STD_LOGIC;
    o_err : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_trng_r : out STD_LOGIC;
    o_trng_w : out STD_LOGIC;
    o_trng_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_trng_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_trng_valid : in STD_LOGIC;
    i_trng_done : in STD_LOGIC;
    o_hash_en : out STD_LOGIC;
    o_hash_mlen : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_hash_olen : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_hash_write_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_hash_read_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_hash_done : in STD_LOGIC;
    i_hash_dyn_done : in STD_LOGIC;
    o_hash_memsel : out STD_LOGIC;
    o_sam_enable : out STD_LOGIC;
    i_sam_done : in STD_LOGIC;
    o_sam_mode : out STD_LOGIC;
    o_sam_oil_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_red_enable : out STD_LOGIC;
    o_red_len : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_red_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_red_bram_sel : out STD_LOGIC;
    i_red_done : in STD_LOGIC;
    o_memcpy_start : out STD_LOGIC;
    o_memcpy_src_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memcpy_dst_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memcpy_len : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_memcpy_done : in STD_LOGIC;
    o_memcpy_mem_port_sel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_memcpy1_start : out STD_LOGIC;
    o_memcpy1_src_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memcpy1_dst_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memcpy1_len : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_memcpy1_done : in STD_LOGIC;
    o_memcpy1_mem_port_sel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_p1p1t_enable : out STD_LOGIC;
    i_p1p1t_done : in STD_LOGIC;
    o_p1p1t_src_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_p1p1t_dsta_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_p1p1t_dstb_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_p1p1t_ji_equal : out STD_LOGIC;
    o_lin_enable : out STD_LOGIC;
    i_lin_done : in STD_LOGIC;
    o_lin_bram_halt : out STD_LOGIC;
    o_lin_vec_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_lin_coeffs_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_lin_out_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_lin_len : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_lin_demux_bram_sel : out STD_LOGIC_VECTOR ( 4 downto 0 );
    o_add_enable : out STD_LOGIC;
    o_add_v1_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_add_v2_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_add_out_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_add_done : in STD_LOGIC;
    o_add_bram_sel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_add_demux_bram_sel : out STD_LOGIC_VECTOR ( 4 downto 0 );
    o_sam_vin_en : out STD_LOGIC;
    i_sam_vin_done : in STD_LOGIC;
    o_sam_vin_input_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_red_ext_en : out STD_LOGIC;
    i_red_ext_done : in STD_LOGIC;
    o_red_ext_input_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_red_ext_output_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_neg_enable : out STD_LOGIC;
    o_neg_len : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_neg_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_neg_done : in STD_LOGIC;
    o_sam_oil_en : out STD_LOGIC;
    i_sam_oil_ret : in STD_LOGIC;
    i_sam_oil_done : in STD_LOGIC;
    o_add_oil_enable : out STD_LOGIC;
    i_add_oil_done : in STD_LOGIC;
    i_mem0a_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0a_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0a_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0a_en : out STD_LOGIC;
    o_mem0a_rst : out STD_LOGIC;
    o_mem0a_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    i_mem0b_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0b_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0b_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem0b_en : out STD_LOGIC;
    o_mem0b_rst : out STD_LOGIC;
    o_mem0b_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    i_mem1a_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem1a_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem1a_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem1a_en : out STD_LOGIC;
    o_mem1a_rst : out STD_LOGIC;
    o_mem1a_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    i_mem2a_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem2a_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem2a_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem2a_en : out STD_LOGIC;
    o_mem2a_rst : out STD_LOGIC;
    o_mem2a_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    i_mem2b_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem2b_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem2b_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_mem2b_en : out STD_LOGIC;
    o_mem2b_rst : out STD_LOGIC;
    o_mem2b_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_control0a : out STD_LOGIC;
    o_control0b : out STD_LOGIC;
    o_control1a : out STD_LOGIC;
    o_control2a : out STD_LOGIC;
    o_control2b : out STD_LOGIC
  );
  end component Mayo_sign_with_zynq_MAYO_SIGNING_FSM_0_0;
  signal BRAM_Add_vec_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_vec_1_CTRL : STD_LOGIC;
  signal BRAM_Add_vec_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_vec_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Add_vec_1_EN : STD_LOGIC;
  signal BRAM_Add_vec_1_RST : STD_LOGIC;
  signal BRAM_Add_vec_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_Lin1_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Lin1_1_CTRL : STD_LOGIC;
  signal BRAM_Lin1_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Lin1_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Lin1_1_EN : STD_LOGIC;
  signal BRAM_Lin1_1_RST : STD_LOGIC;
  signal BRAM_Lin1_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_Lin_1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Lin_1_CTRL : STD_LOGIC;
  signal BRAM_Lin_1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Lin_1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_Lin_1_EN : STD_LOGIC;
  signal BRAM_Lin_1_RST : STD_LOGIC;
  signal BRAM_Lin_1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Ground0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Ground32_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Ground4_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal LInear_Combination_BRAM_O_LinArb1a_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal LInear_Combination_BRAM_O_LinArb1a_CTRL : STD_LOGIC;
  signal LInear_Combination_BRAM_O_LinArb1a_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal LInear_Combination_BRAM_O_LinArb1a_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal LInear_Combination_BRAM_O_LinArb1a_EN : STD_LOGIC;
  signal LInear_Combination_BRAM_O_LinArb1a_RST : STD_LOGIC;
  signal LInear_Combination_BRAM_O_LinArb1a_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal LInear_Combination_BRAM_O_LinArb2a_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal LInear_Combination_BRAM_O_LinArb2a_CTRL : STD_LOGIC;
  signal LInear_Combination_BRAM_O_LinArb2a_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal LInear_Combination_BRAM_O_LinArb2a_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal LInear_Combination_BRAM_O_LinArb2a_EN : STD_LOGIC;
  signal LInear_Combination_BRAM_O_LinArb2a_RST : STD_LOGIC;
  signal LInear_Combination_BRAM_O_LinArb2a_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal LInear_Combination_BRAM_O_LinArb2b_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal LInear_Combination_BRAM_O_LinArb2b_CTRL : STD_LOGIC;
  signal LInear_Combination_BRAM_O_LinArb2b_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal LInear_Combination_BRAM_O_LinArb2b_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal LInear_Combination_BRAM_O_LinArb2b_EN : STD_LOGIC;
  signal LInear_Combination_BRAM_O_LinArb2b_RST : STD_LOGIC;
  signal LInear_Combination_BRAM_O_LinArb2b_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MAYO_P1P1T_0_BRAM_P1P1T1a_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_P1P1T_0_BRAM_P1P1T1a_CTRL : STD_LOGIC;
  signal MAYO_P1P1T_0_BRAM_P1P1T1a_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_P1P1T_0_BRAM_P1P1T1a_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_P1P1T_0_BRAM_P1P1T1a_EN : STD_LOGIC;
  signal MAYO_P1P1T_0_BRAM_P1P1T1a_RST : STD_LOGIC;
  signal MAYO_P1P1T_0_BRAM_P1P1T1a_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MAYO_P1P1T_0_BRAM_P1P1T2a_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_P1P1T_0_BRAM_P1P1T2a_CTRL : STD_LOGIC;
  signal MAYO_P1P1T_0_BRAM_P1P1T2a_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_P1P1T_0_BRAM_P1P1T2a_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_P1P1T_0_BRAM_P1P1T2a_EN : STD_LOGIC;
  signal MAYO_P1P1T_0_BRAM_P1P1T2a_RST : STD_LOGIC;
  signal MAYO_P1P1T_0_BRAM_P1P1T2a_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MAYO_P1P1T_0_o_done : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0a_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0a_CTRL : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0a_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0a_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0a_EN : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0a_RST : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0a_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0b_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0b_CTRL : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0b_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0b_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0b_EN : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0b_RST : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign0b_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign1a_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign1a_CTRL : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign1a_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign1a_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign1a_EN : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign1a_RST : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign1a_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign2a_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign2a_CTRL : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign2a_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign2a_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign2a_EN : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign2a_RST : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign2a_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign2b_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign2b_CTRL : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign2b_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign2b_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_BRAM_Sign2b_EN : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign2b_RST : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_BRAM_Sign2b_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_add_bram_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_add_demux_bram_sel : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_add_enable : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_add_oil_enable : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_add_out_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_add_v1_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_add_v2_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_busy : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_done : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_err : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_hash_en : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_hash_memsel : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_hash_mlen : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_hash_olen : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_hash_read_adr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_hash_write_adr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_lin_bram_halt : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_lin_coeffs_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_lin_demux_bram_sel : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_lin_enable : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_lin_len : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_lin_out_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_lin_vec_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_memcpy1_dst_adr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_memcpy1_len : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_memcpy1_mem_port_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_memcpy1_src_adr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_memcpy1_start : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_memcpy_dst_adr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_memcpy_len : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_memcpy_mem_port_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_memcpy_src_adr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_memcpy_start : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_neg_adr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_neg_enable : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_neg_len : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_p1p1t_dsta_adr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_p1p1t_dstb_adr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_p1p1t_enable : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_p1p1t_ji_equal : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_p1p1t_src_adr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_red_adr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_red_bram_sel : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_red_enable : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_red_ext_en : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_red_ext_input_adr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_red_ext_output_adr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_red_len : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_sam_enable : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_sam_mode : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_sam_oil_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_sam_oil_en : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_sam_vin_en : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_sam_vin_input_adr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_trng_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SIGNING_FSM_0_o_trng_r : STD_LOGIC;
  signal MAYO_SIGNING_FSM_0_o_trng_w : STD_LOGIC;
  signal TRNG_o_trng0_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRNG_o_trng0_done : STD_LOGIC;
  signal TRNG_o_trng0_valid : STD_LOGIC;
  signal TRNG_o_trng1_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRNG_o_trng1_done : STD_LOGIC;
  signal TRNG_o_trng1_valid : STD_LOGIC;
  signal TRNG_o_trng2_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRNG_o_trng2_done : STD_LOGIC;
  signal TRNG_o_trng2_valid : STD_LOGIC;
  signal add_vectors_BRAM_O_Add1A_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal add_vectors_BRAM_O_Add1A_CTRL : STD_LOGIC;
  signal add_vectors_BRAM_O_Add1A_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal add_vectors_BRAM_O_Add1A_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal add_vectors_BRAM_O_Add1A_EN : STD_LOGIC;
  signal add_vectors_BRAM_O_Add1A_RST : STD_LOGIC;
  signal add_vectors_BRAM_O_Add1A_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal add_vectors_BRAM_O_Add2A_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal add_vectors_BRAM_O_Add2A_CTRL : STD_LOGIC;
  signal add_vectors_BRAM_O_Add2A_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal add_vectors_BRAM_O_Add2A_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal add_vectors_BRAM_O_Add2A_EN : STD_LOGIC;
  signal add_vectors_BRAM_O_Add2A_RST : STD_LOGIC;
  signal add_vectors_BRAM_O_Add2A_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal add_vectors_BRAM_O_Add2B_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal add_vectors_BRAM_O_Add2B_CTRL : STD_LOGIC;
  signal add_vectors_BRAM_O_Add2B_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal add_vectors_BRAM_O_Add2B_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal add_vectors_BRAM_O_Add2B_EN : STD_LOGIC;
  signal add_vectors_BRAM_O_Add2B_RST : STD_LOGIC;
  signal add_vectors_BRAM_O_Add2B_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hash_BRAM_HashBig_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hash_BRAM_HashBig_CTRL : STD_LOGIC;
  signal hash_BRAM_HashBig_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hash_BRAM_HashBig_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hash_BRAM_HashBig_EN : STD_LOGIC;
  signal hash_BRAM_HashBig_RST : STD_LOGIC;
  signal hash_BRAM_HashBig_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hash_BRAM_HashSmall_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hash_BRAM_HashSmall_CTRL : STD_LOGIC;
  signal hash_BRAM_HashSmall_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hash_BRAM_HashSmall_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hash_BRAM_HashSmall_EN : STD_LOGIC;
  signal hash_BRAM_HashSmall_RST : STD_LOGIC;
  signal hash_BRAM_HashSmall_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hash_o_key_done : STD_LOGIC;
  signal hash_o_key_dyn_done : STD_LOGIC;
  signal i_trng1_data1_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i_trng1_r_1 : STD_LOGIC;
  signal mayo_add_oil_0_BRAM_Add_oil0a_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_oil_0_BRAM_Add_oil0a_CTRL : STD_LOGIC;
  signal mayo_add_oil_0_BRAM_Add_oil0a_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_oil_0_BRAM_Add_oil0a_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_oil_0_BRAM_Add_oil0a_EN : STD_LOGIC;
  signal mayo_add_oil_0_BRAM_Add_oil0a_RST : STD_LOGIC;
  signal mayo_add_oil_0_BRAM_Add_oil0a_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_add_oil_0_BRAM_Add_oil0b_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_oil_0_BRAM_Add_oil0b_CTRL : STD_LOGIC;
  signal mayo_add_oil_0_BRAM_Add_oil0b_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_oil_0_BRAM_Add_oil0b_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_oil_0_BRAM_Add_oil0b_EN : STD_LOGIC;
  signal mayo_add_oil_0_BRAM_Add_oil0b_RST : STD_LOGIC;
  signal mayo_add_oil_0_BRAM_Add_oil0b_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_add_oil_0_BRAM_Add_oil1a_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_oil_0_BRAM_Add_oil1a_CTRL : STD_LOGIC;
  signal mayo_add_oil_0_BRAM_Add_oil1a_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_oil_0_BRAM_Add_oil1a_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_oil_0_BRAM_Add_oil1a_EN : STD_LOGIC;
  signal mayo_add_oil_0_BRAM_Add_oil1a_RST : STD_LOGIC;
  signal mayo_add_oil_0_BRAM_Add_oil1a_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_add_oil_0_o_done : STD_LOGIC;
  signal mayo_add_vectors_0_o_done : STD_LOGIC;
  signal mayo_axi_litev3_0_o_Expose : STD_LOGIC;
  signal mayo_axi_litev3_0_o_Signing_en : STD_LOGIC;
  signal mayo_axi_litev3_0_o_interrupt : STD_LOGIC;
  signal mayo_linear_combinat_0_o_done : STD_LOGIC;
  signal mayo_negate_0_BRAM_Negate_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_negate_0_BRAM_Negate_CTRL : STD_LOGIC;
  signal mayo_negate_0_BRAM_Negate_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_negate_0_BRAM_Negate_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_negate_0_BRAM_Negate_EN : STD_LOGIC;
  signal mayo_negate_0_BRAM_Negate_RST : STD_LOGIC;
  signal mayo_negate_0_BRAM_Negate_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_negate_0_o_done : STD_LOGIC;
  signal mayo_reduce_0_BRAM_Red0_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_0_BRAM_Red0_CTRL : STD_LOGIC;
  signal mayo_reduce_0_BRAM_Red0_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_0_BRAM_Red0_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_0_BRAM_Red0_EN : STD_LOGIC;
  signal mayo_reduce_0_BRAM_Red0_RST : STD_LOGIC;
  signal mayo_reduce_0_BRAM_Red0_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_reduce_0_BRAM_Red1_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_0_BRAM_Red1_CTRL : STD_LOGIC;
  signal mayo_reduce_0_BRAM_Red1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_0_BRAM_Red1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_0_BRAM_Red1_EN : STD_LOGIC;
  signal mayo_reduce_0_BRAM_Red1_RST : STD_LOGIC;
  signal mayo_reduce_0_BRAM_Red1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_reduce_0_o_done : STD_LOGIC;
  signal mayo_reduce_extension_0_BRAM_Red_Exta_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_extension_0_BRAM_Red_Exta_CTRL : STD_LOGIC;
  signal mayo_reduce_extension_0_BRAM_Red_Exta_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_extension_0_BRAM_Red_Exta_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_extension_0_BRAM_Red_Exta_EN : STD_LOGIC;
  signal mayo_reduce_extension_0_BRAM_Red_Exta_RST : STD_LOGIC;
  signal mayo_reduce_extension_0_BRAM_Red_Exta_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_reduce_extension_0_BRAM_Red_Extb_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_extension_0_BRAM_Red_Extb_CTRL : STD_LOGIC;
  signal mayo_reduce_extension_0_BRAM_Red_Extb_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_extension_0_BRAM_Red_Extb_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_extension_0_BRAM_Red_Extb_EN : STD_LOGIC;
  signal mayo_reduce_extension_0_BRAM_Red_Extb_RST : STD_LOGIC;
  signal mayo_reduce_extension_0_BRAM_Red_Extb_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_reduce_extension_0_BRAM_Red_Extc_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_extension_0_BRAM_Red_Extc_CTRL : STD_LOGIC;
  signal mayo_reduce_extension_0_BRAM_Red_Extc_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_extension_0_BRAM_Red_Extc_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_extension_0_BRAM_Red_Extc_EN : STD_LOGIC;
  signal mayo_reduce_extension_0_BRAM_Red_Extc_RST : STD_LOGIC;
  signal mayo_reduce_extension_0_BRAM_Red_Extc_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_reduce_extension_0_o_done : STD_LOGIC;
  signal mayo_sample_oil_0_BRAM_Sample_oil0a_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_0_BRAM_Sample_oil0a_CTRL : STD_LOGIC;
  signal mayo_sample_oil_0_BRAM_Sample_oil0a_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_0_BRAM_Sample_oil0a_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_0_BRAM_Sample_oil0a_EN : STD_LOGIC;
  signal mayo_sample_oil_0_BRAM_Sample_oil0a_RST : STD_LOGIC;
  signal mayo_sample_oil_0_BRAM_Sample_oil0a_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_sample_oil_0_BRAM_Sample_oil0b_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_0_BRAM_Sample_oil0b_CTRL : STD_LOGIC;
  signal mayo_sample_oil_0_BRAM_Sample_oil0b_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_0_BRAM_Sample_oil0b_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_0_BRAM_Sample_oil0b_EN : STD_LOGIC;
  signal mayo_sample_oil_0_BRAM_Sample_oil0b_RST : STD_LOGIC;
  signal mayo_sample_oil_0_BRAM_Sample_oil0b_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_sample_oil_0_BRAM_Sample_oil1a_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_0_BRAM_Sample_oil1a_CTRL : STD_LOGIC;
  signal mayo_sample_oil_0_BRAM_Sample_oil1a_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_0_BRAM_Sample_oil1a_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_0_BRAM_Sample_oil1a_EN : STD_LOGIC;
  signal mayo_sample_oil_0_BRAM_Sample_oil1a_RST : STD_LOGIC;
  signal mayo_sample_oil_0_BRAM_Sample_oil1a_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_sample_oil_0_o_done : STD_LOGIC;
  signal mayo_sample_oil_0_o_ret : STD_LOGIC;
  signal mayo_sample_oil_space_0_BRAM_Sama_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_space_0_BRAM_Sama_CTRL : STD_LOGIC;
  signal mayo_sample_oil_space_0_BRAM_Sama_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_space_0_BRAM_Sama_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_space_0_BRAM_Sama_EN : STD_LOGIC;
  signal mayo_sample_oil_space_0_BRAM_Sama_RST : STD_LOGIC;
  signal mayo_sample_oil_space_0_BRAM_Sama_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_sample_oil_space_0_BRAM_Samb_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_space_0_BRAM_Samb_CTRL : STD_LOGIC;
  signal mayo_sample_oil_space_0_BRAM_Samb_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_space_0_BRAM_Samb_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_space_0_BRAM_Samb_EN : STD_LOGIC;
  signal mayo_sample_oil_space_0_BRAM_Samb_RST : STD_LOGIC;
  signal mayo_sample_oil_space_0_BRAM_Samb_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_sample_oil_space_0_o_done : STD_LOGIC;
  signal mayo_sample_oil_space_0_o_trng_sel : STD_LOGIC;
  signal mayo_sample_oil_space_0_o_trng_w : STD_LOGIC;
  signal mayo_sample_vinegar_0_BRAM_Sam_vin0a_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_vinegar_0_BRAM_Sam_vin0a_CTRL : STD_LOGIC;
  signal mayo_sample_vinegar_0_BRAM_Sam_vin0a_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_vinegar_0_BRAM_Sam_vin0a_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_vinegar_0_BRAM_Sam_vin0a_EN : STD_LOGIC;
  signal mayo_sample_vinegar_0_BRAM_Sam_vin0a_RST : STD_LOGIC;
  signal mayo_sample_vinegar_0_BRAM_Sam_vin0a_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_sample_vinegar_0_o_done : STD_LOGIC;
  signal mayo_sample_vinegar_0_o_trng_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_vinegar_0_o_trng_r : STD_LOGIC;
  signal mayo_sample_vinegar_0_o_trng_sel : STD_LOGIC;
  signal mayo_sample_vinegar_0_o_trng_w : STD_LOGIC;
  signal memcpy_0_BRAM_Dest_PORTB_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal memcpy_0_BRAM_Dest_PORTB_CTRL : STD_LOGIC;
  signal memcpy_0_BRAM_Dest_PORTB_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal memcpy_0_BRAM_Dest_PORTB_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal memcpy_0_BRAM_Dest_PORTB_EN : STD_LOGIC;
  signal memcpy_0_BRAM_Dest_PORTB_RST : STD_LOGIC;
  signal memcpy_0_BRAM_Dest_PORTB_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal memcpy_0_BRAM_Src_PORTA_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal memcpy_0_BRAM_Src_PORTA_CTRL : STD_LOGIC;
  signal memcpy_0_BRAM_Src_PORTA_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal memcpy_0_BRAM_Src_PORTA_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal memcpy_0_BRAM_Src_PORTA_EN : STD_LOGIC;
  signal memcpy_0_BRAM_Src_PORTA_RST : STD_LOGIC;
  signal memcpy_0_BRAM_Src_PORTA_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal memcpy_0_o_done : STD_LOGIC;
  signal memcpy_1_BRAM_Src_PORTA_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal memcpy_1_BRAM_Src_PORTA_CTRL : STD_LOGIC;
  signal memcpy_1_BRAM_Src_PORTA_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal memcpy_1_BRAM_Src_PORTA_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal memcpy_1_BRAM_Src_PORTA_EN : STD_LOGIC;
  signal memcpy_1_BRAM_Src_PORTA_RST : STD_LOGIC;
  signal memcpy_1_BRAM_Src_PORTA_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal memcpy_1_o_done : STD_LOGIC;
  signal processing_system7_0_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal processing_system7_0_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_DDR_CAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_CKE : STD_LOGIC;
  signal processing_system7_0_DDR_CK_N : STD_LOGIC;
  signal processing_system7_0_DDR_CK_P : STD_LOGIC;
  signal processing_system7_0_DDR_CS_N : STD_LOGIC;
  signal processing_system7_0_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_ODT : STD_LOGIC;
  signal processing_system7_0_DDR_RAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_RESET_N : STD_LOGIC;
  signal processing_system7_0_DDR_WE_N : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_0_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M01_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M01_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M01_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M01_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M01_AXI_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M01_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M01_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_ps7_0_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_ps7_0_100M_peripheral_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_SmallBRAM_BRAM_P1P1T_dout_UNCONNECTED : STD_LOGIC;
  signal NLW_mayo_axi_litev3_0_o_Debug_UNCONNECTED : STD_LOGIC;
  signal NLW_mayo_axi_litev3_0_o_Keygen_en_UNCONNECTED : STD_LOGIC;
  signal NLW_mayo_axi_litev3_0_o_Verification_en_UNCONNECTED : STD_LOGIC;
  signal NLW_mayo_axi_litev3_0_o_irq_en_UNCONNECTED : STD_LOGIC;
  signal NLW_memcpy_1_o_dest_control_UNCONNECTED : STD_LOGIC;
  signal NLW_memcpy_1_o_dest_en_UNCONNECTED : STD_LOGIC;
  signal NLW_memcpy_1_o_dest_rst_UNCONNECTED : STD_LOGIC;
  signal NLW_memcpy_1_o_dest_addr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memcpy_1_o_dest_din_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_memcpy_1_o_dest_we_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_TTC0_WAVE0_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE1_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE2_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rst_ps7_0_100M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_ps7_0_100M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_100M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute BMM_INFO_PROCESSOR : string;
  attribute BMM_INFO_PROCESSOR of processing_system7_0 : label is "arm > Mayo_sign_with_zynq BigBRAM1/axi_bram_ctrl_0";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of processing_system7_0 : label is "yes";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of DDR_cas_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CAS_N";
  attribute X_INTERFACE_INFO of DDR_ck_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_N";
  attribute X_INTERFACE_INFO of DDR_ck_p : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_P";
  attribute X_INTERFACE_INFO of DDR_cke : signal is "xilinx.com:interface:ddrx:1.0 DDR CKE";
  attribute X_INTERFACE_INFO of DDR_cs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CS_N";
  attribute X_INTERFACE_INFO of DDR_odt : signal is "xilinx.com:interface:ddrx:1.0 DDR ODT";
  attribute X_INTERFACE_INFO of DDR_ras_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RAS_N";
  attribute X_INTERFACE_INFO of DDR_reset_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RESET_N";
  attribute X_INTERFACE_INFO of DDR_we_n : signal is "xilinx.com:interface:ddrx:1.0 DDR WE_N";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrn : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of FIXED_IO_ddr_vrn : signal is "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrp : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 RST.RST RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of DDR_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR ADDR";
  attribute X_INTERFACE_PARAMETER of DDR_addr : signal is "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of DDR_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR BA";
  attribute X_INTERFACE_INFO of DDR_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR DM";
  attribute X_INTERFACE_INFO of DDR_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR DQ";
  attribute X_INTERFACE_INFO of DDR_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_N";
  attribute X_INTERFACE_INFO of DDR_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_P";
  attribute X_INTERFACE_INFO of FIXED_IO_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO";
begin
BigBRAM1: entity work.BigBRAM1_imp_XLT6M8
     port map (
      BRAM_Add_oil_addr(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil1a_ADDR(31 downto 0),
      BRAM_Add_oil_ctrl => mayo_add_oil_0_BRAM_Add_oil1a_CTRL,
      BRAM_Add_oil_din(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil1a_DIN(31 downto 0),
      BRAM_Add_oil_dout(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil1a_DOUT(31 downto 0),
      BRAM_Add_oil_en => mayo_add_oil_0_BRAM_Add_oil1a_EN,
      BRAM_Add_oil_rst => mayo_add_oil_0_BRAM_Add_oil1a_RST,
      BRAM_Add_oil_we(3 downto 0) => mayo_add_oil_0_BRAM_Add_oil1a_WE(3 downto 0),
      BRAM_Add_vec_addr(31 downto 0) => add_vectors_BRAM_O_Add1A_ADDR(31 downto 0),
      BRAM_Add_vec_ctrl => add_vectors_BRAM_O_Add1A_CTRL,
      BRAM_Add_vec_din(31 downto 0) => add_vectors_BRAM_O_Add1A_DIN(31 downto 0),
      BRAM_Add_vec_dout(31 downto 0) => add_vectors_BRAM_O_Add1A_DOUT(31 downto 0),
      BRAM_Add_vec_en => add_vectors_BRAM_O_Add1A_EN,
      BRAM_Add_vec_rst => add_vectors_BRAM_O_Add1A_RST,
      BRAM_Add_vec_we(3 downto 0) => add_vectors_BRAM_O_Add1A_WE(3 downto 0),
      BRAM_Hash_addr(31 downto 0) => hash_BRAM_HashBig_ADDR(31 downto 0),
      BRAM_Hash_ctrl => hash_BRAM_HashBig_CTRL,
      BRAM_Hash_din(31 downto 0) => hash_BRAM_HashBig_DIN(31 downto 0),
      BRAM_Hash_dout(31 downto 0) => hash_BRAM_HashBig_DOUT(31 downto 0),
      BRAM_Hash_en => hash_BRAM_HashBig_EN,
      BRAM_Hash_rst => hash_BRAM_HashBig_RST,
      BRAM_Hash_we(3 downto 0) => hash_BRAM_HashBig_WE(3 downto 0),
      BRAM_Lin_addr(31 downto 0) => LInear_Combination_BRAM_O_LinArb1a_ADDR(31 downto 0),
      BRAM_Lin_ctrl => LInear_Combination_BRAM_O_LinArb1a_CTRL,
      BRAM_Lin_din(31 downto 0) => LInear_Combination_BRAM_O_LinArb1a_DIN(31 downto 0),
      BRAM_Lin_dout(31 downto 0) => LInear_Combination_BRAM_O_LinArb1a_DOUT(31 downto 0),
      BRAM_Lin_en => LInear_Combination_BRAM_O_LinArb1a_EN,
      BRAM_Lin_rst => LInear_Combination_BRAM_O_LinArb1a_RST,
      BRAM_Lin_we(3 downto 0) => LInear_Combination_BRAM_O_LinArb1a_WE(3 downto 0),
      BRAM_Memcpy0_addr(31 downto 0) => memcpy_0_BRAM_Dest_PORTB_ADDR(31 downto 0),
      BRAM_Memcpy0_ctrl => memcpy_0_BRAM_Dest_PORTB_CTRL,
      BRAM_Memcpy0_din(31 downto 0) => memcpy_0_BRAM_Dest_PORTB_DIN(31 downto 0),
      BRAM_Memcpy0_dout(31 downto 0) => memcpy_0_BRAM_Dest_PORTB_DOUT(31 downto 0),
      BRAM_Memcpy0_en => memcpy_0_BRAM_Dest_PORTB_EN,
      BRAM_Memcpy0_rst => memcpy_0_BRAM_Dest_PORTB_RST,
      BRAM_Memcpy0_we(3 downto 0) => memcpy_0_BRAM_Dest_PORTB_WE(3 downto 0),
      BRAM_Memcpy1_addr(31 downto 0) => memcpy_1_BRAM_Src_PORTA_ADDR(31 downto 0),
      BRAM_Memcpy1_ctrl => memcpy_1_BRAM_Src_PORTA_CTRL,
      BRAM_Memcpy1_din(31 downto 0) => memcpy_1_BRAM_Src_PORTA_DIN(31 downto 0),
      BRAM_Memcpy1_dout(31 downto 0) => memcpy_1_BRAM_Src_PORTA_DOUT(31 downto 0),
      BRAM_Memcpy1_en => memcpy_1_BRAM_Src_PORTA_EN,
      BRAM_Memcpy1_rst => memcpy_1_BRAM_Src_PORTA_RST,
      BRAM_Memcpy1_we(3 downto 0) => memcpy_1_BRAM_Src_PORTA_WE(3 downto 0),
      BRAM_P1P1T_addr(31 downto 0) => MAYO_P1P1T_0_BRAM_P1P1T1a_ADDR(31 downto 0),
      BRAM_P1P1T_ctrl => MAYO_P1P1T_0_BRAM_P1P1T1a_CTRL,
      BRAM_P1P1T_din(31 downto 0) => MAYO_P1P1T_0_BRAM_P1P1T1a_DIN(31 downto 0),
      BRAM_P1P1T_dout(31 downto 0) => MAYO_P1P1T_0_BRAM_P1P1T1a_DOUT(31 downto 0),
      BRAM_P1P1T_en => MAYO_P1P1T_0_BRAM_P1P1T1a_EN,
      BRAM_P1P1T_rst => MAYO_P1P1T_0_BRAM_P1P1T1a_RST,
      BRAM_P1P1T_we(3 downto 0) => MAYO_P1P1T_0_BRAM_P1P1T1a_WE(3 downto 0),
      BRAM_Red_addr(31 downto 0) => mayo_reduce_0_BRAM_Red1_ADDR(31 downto 0),
      BRAM_Red_ctrl => mayo_reduce_0_BRAM_Red1_CTRL,
      BRAM_Red_din(31 downto 0) => mayo_reduce_0_BRAM_Red1_DIN(31 downto 0),
      BRAM_Red_dout(31 downto 0) => mayo_reduce_0_BRAM_Red1_DOUT(31 downto 0),
      BRAM_Red_en => mayo_reduce_0_BRAM_Red1_EN,
      BRAM_Red_rst => mayo_reduce_0_BRAM_Red1_RST,
      BRAM_Red_we(3 downto 0) => mayo_reduce_0_BRAM_Red1_WE(3 downto 0),
      BRAM_Sam_addr(31 downto 0) => mayo_sample_oil_space_0_BRAM_Samb_ADDR(31 downto 0),
      BRAM_Sam_ctrl => mayo_sample_oil_space_0_BRAM_Samb_CTRL,
      BRAM_Sam_din(31 downto 0) => mayo_sample_oil_space_0_BRAM_Samb_DIN(31 downto 0),
      BRAM_Sam_dout(31 downto 0) => mayo_sample_oil_space_0_BRAM_Samb_DOUT(31 downto 0),
      BRAM_Sam_en => mayo_sample_oil_space_0_BRAM_Samb_EN,
      BRAM_Sam_oil_addr(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil1a_ADDR(31 downto 0),
      BRAM_Sam_oil_ctrl => mayo_sample_oil_0_BRAM_Sample_oil1a_CTRL,
      BRAM_Sam_oil_din(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil1a_DIN(31 downto 0),
      BRAM_Sam_oil_dout(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil1a_DOUT(31 downto 0),
      BRAM_Sam_oil_en => mayo_sample_oil_0_BRAM_Sample_oil1a_EN,
      BRAM_Sam_oil_rst => mayo_sample_oil_0_BRAM_Sample_oil1a_RST,
      BRAM_Sam_oil_we(3 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil1a_WE(3 downto 0),
      BRAM_Sam_rst => mayo_sample_oil_space_0_BRAM_Samb_RST,
      BRAM_Sam_we(3 downto 0) => mayo_sample_oil_space_0_BRAM_Samb_WE(3 downto 0),
      BRAM_Sign_addr(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign1a_ADDR(31 downto 0),
      BRAM_Sign_ctrl => MAYO_SIGNING_FSM_0_BRAM_Sign1a_CTRL,
      BRAM_Sign_din(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign1a_DIN(31 downto 0),
      BRAM_Sign_dout(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign1a_DOUT(31 downto 0),
      BRAM_Sign_en => MAYO_SIGNING_FSM_0_BRAM_Sign1a_EN,
      BRAM_Sign_rst => MAYO_SIGNING_FSM_0_BRAM_Sign1a_RST,
      BRAM_Sign_we(3 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign1a_WE(3 downto 0),
      S_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M01_AXI_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => ps7_0_axi_periph_M01_AXI_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => ps7_0_axi_periph_M01_AXI_ARCACHE(3 downto 0),
      S_AXI_arid(11 downto 0) => ps7_0_axi_periph_M01_AXI_ARID(11 downto 0),
      S_AXI_arlen(7 downto 0) => ps7_0_axi_periph_M01_AXI_ARLEN(7 downto 0),
      S_AXI_arlock(0) => ps7_0_axi_periph_M01_AXI_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => ps7_0_axi_periph_M01_AXI_ARPROT(2 downto 0),
      S_AXI_arready(0) => ps7_0_axi_periph_M01_AXI_ARREADY(0),
      S_AXI_arsize(2 downto 0) => ps7_0_axi_periph_M01_AXI_ARSIZE(2 downto 0),
      S_AXI_arvalid(0) => ps7_0_axi_periph_M01_AXI_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M01_AXI_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => ps7_0_axi_periph_M01_AXI_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => ps7_0_axi_periph_M01_AXI_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => ps7_0_axi_periph_M01_AXI_AWID(11 downto 0),
      S_AXI_awlen(7 downto 0) => ps7_0_axi_periph_M01_AXI_AWLEN(7 downto 0),
      S_AXI_awlock(0) => ps7_0_axi_periph_M01_AXI_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => ps7_0_axi_periph_M01_AXI_AWPROT(2 downto 0),
      S_AXI_awready(0) => ps7_0_axi_periph_M01_AXI_AWREADY(0),
      S_AXI_awsize(2 downto 0) => ps7_0_axi_periph_M01_AXI_AWSIZE(2 downto 0),
      S_AXI_awvalid(0) => ps7_0_axi_periph_M01_AXI_AWVALID(0),
      S_AXI_bid(11 downto 0) => ps7_0_axi_periph_M01_AXI_BID(11 downto 0),
      S_AXI_bready(0) => ps7_0_axi_periph_M01_AXI_BREADY(0),
      S_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      S_AXI_bvalid(0) => ps7_0_axi_periph_M01_AXI_BVALID(0),
      S_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => ps7_0_axi_periph_M01_AXI_RID(11 downto 0),
      S_AXI_rlast(0) => ps7_0_axi_periph_M01_AXI_RLAST(0),
      S_AXI_rready(0) => ps7_0_axi_periph_M01_AXI_RREADY(0),
      S_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      S_AXI_rvalid(0) => ps7_0_axi_periph_M01_AXI_RVALID(0),
      S_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      S_AXI_wlast(0) => ps7_0_axi_periph_M01_AXI_WLAST(0),
      S_AXI_wready(0) => ps7_0_axi_periph_M01_AXI_WREADY(0),
      S_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => ps7_0_axi_periph_M01_AXI_WVALID(0),
      clk_0 => processing_system7_0_FCLK_CLK0,
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      zero0 => Ground0_dout(0),
      zero32(31 downto 0) => Ground32_dout(31 downto 0),
      zero4(3 downto 0) => Ground4_dout(3 downto 0)
    );
BigBRAM2: entity work.BigBRAM2_imp_1NKQM16
     port map (
      BRAM_Add_vec1_addr(31 downto 0) => add_vectors_BRAM_O_Add2B_ADDR(31 downto 0),
      BRAM_Add_vec1_ctrl => add_vectors_BRAM_O_Add2B_CTRL,
      BRAM_Add_vec1_din(31 downto 0) => add_vectors_BRAM_O_Add2B_DIN(31 downto 0),
      BRAM_Add_vec1_dout(31 downto 0) => add_vectors_BRAM_O_Add2B_DOUT(31 downto 0),
      BRAM_Add_vec1_en => add_vectors_BRAM_O_Add2B_EN,
      BRAM_Add_vec1_rst => add_vectors_BRAM_O_Add2B_RST,
      BRAM_Add_vec1_we(3 downto 0) => add_vectors_BRAM_O_Add2B_WE(3 downto 0),
      BRAM_Add_vec_addr(31 downto 0) => add_vectors_BRAM_O_Add2A_ADDR(31 downto 0),
      BRAM_Add_vec_ctrl => add_vectors_BRAM_O_Add2A_CTRL,
      BRAM_Add_vec_din(31 downto 0) => add_vectors_BRAM_O_Add2A_DIN(31 downto 0),
      BRAM_Add_vec_dout(31 downto 0) => add_vectors_BRAM_O_Add2A_DOUT(31 downto 0),
      BRAM_Add_vec_en => add_vectors_BRAM_O_Add2A_EN,
      BRAM_Add_vec_rst => add_vectors_BRAM_O_Add2A_RST,
      BRAM_Add_vec_we(3 downto 0) => add_vectors_BRAM_O_Add2A_WE(3 downto 0),
      BRAM_Lin1_addr(31 downto 0) => LInear_Combination_BRAM_O_LinArb2b_ADDR(31 downto 0),
      BRAM_Lin1_ctrl => LInear_Combination_BRAM_O_LinArb2b_CTRL,
      BRAM_Lin1_din(31 downto 0) => LInear_Combination_BRAM_O_LinArb2b_DIN(31 downto 0),
      BRAM_Lin1_dout(31 downto 0) => LInear_Combination_BRAM_O_LinArb2b_DOUT(31 downto 0),
      BRAM_Lin1_en => LInear_Combination_BRAM_O_LinArb2b_EN,
      BRAM_Lin1_rst => LInear_Combination_BRAM_O_LinArb2b_RST,
      BRAM_Lin1_we(3 downto 0) => LInear_Combination_BRAM_O_LinArb2b_WE(3 downto 0),
      BRAM_Lin_addr(31 downto 0) => LInear_Combination_BRAM_O_LinArb2a_ADDR(31 downto 0),
      BRAM_Lin_ctrl => LInear_Combination_BRAM_O_LinArb2a_CTRL,
      BRAM_Lin_din(31 downto 0) => LInear_Combination_BRAM_O_LinArb2a_DIN(31 downto 0),
      BRAM_Lin_dout(31 downto 0) => LInear_Combination_BRAM_O_LinArb2a_DOUT(31 downto 0),
      BRAM_Lin_en => LInear_Combination_BRAM_O_LinArb2a_EN,
      BRAM_Lin_rst => LInear_Combination_BRAM_O_LinArb2a_RST,
      BRAM_Lin_we(3 downto 0) => LInear_Combination_BRAM_O_LinArb2a_WE(3 downto 0),
      BRAM_Memcpy0_addr(31 downto 0) => memcpy_0_BRAM_Src_PORTA_ADDR(31 downto 0),
      BRAM_Memcpy0_ctrl => memcpy_0_BRAM_Src_PORTA_CTRL,
      BRAM_Memcpy0_din(31 downto 0) => memcpy_0_BRAM_Src_PORTA_DIN(31 downto 0),
      BRAM_Memcpy0_dout(31 downto 0) => memcpy_0_BRAM_Src_PORTA_DOUT(31 downto 0),
      BRAM_Memcpy0_en => memcpy_0_BRAM_Src_PORTA_EN,
      BRAM_Memcpy0_rst => memcpy_0_BRAM_Src_PORTA_RST,
      BRAM_Memcpy0_we(3 downto 0) => memcpy_0_BRAM_Src_PORTA_WE(3 downto 0),
      BRAM_Neg_addr(31 downto 0) => mayo_negate_0_BRAM_Negate_ADDR(31 downto 0),
      BRAM_Neg_ctrl => mayo_negate_0_BRAM_Negate_CTRL,
      BRAM_Neg_din(31 downto 0) => mayo_negate_0_BRAM_Negate_DIN(31 downto 0),
      BRAM_Neg_dout(31 downto 0) => mayo_negate_0_BRAM_Negate_DOUT(31 downto 0),
      BRAM_Neg_en => mayo_negate_0_BRAM_Negate_EN,
      BRAM_Neg_rst => mayo_negate_0_BRAM_Negate_RST,
      BRAM_Neg_we(3 downto 0) => mayo_negate_0_BRAM_Negate_WE(3 downto 0),
      BRAM_P1P1T_addr(31 downto 0) => MAYO_P1P1T_0_BRAM_P1P1T2a_ADDR(31 downto 0),
      BRAM_P1P1T_ctrl => MAYO_P1P1T_0_BRAM_P1P1T2a_CTRL,
      BRAM_P1P1T_din(31 downto 0) => MAYO_P1P1T_0_BRAM_P1P1T2a_DIN(31 downto 0),
      BRAM_P1P1T_dout(31 downto 0) => MAYO_P1P1T_0_BRAM_P1P1T2a_DOUT(31 downto 0),
      BRAM_P1P1T_en => MAYO_P1P1T_0_BRAM_P1P1T2a_EN,
      BRAM_P1P1T_rst => MAYO_P1P1T_0_BRAM_P1P1T2a_RST,
      BRAM_P1P1T_we(3 downto 0) => MAYO_P1P1T_0_BRAM_P1P1T2a_WE(3 downto 0),
      BRAM_Red_ext1_addr(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Extc_ADDR(31 downto 0),
      BRAM_Red_ext1_ctrl => mayo_reduce_extension_0_BRAM_Red_Extc_CTRL,
      BRAM_Red_ext1_din(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Extc_DIN(31 downto 0),
      BRAM_Red_ext1_dout(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Extc_DOUT(31 downto 0),
      BRAM_Red_ext1_en => mayo_reduce_extension_0_BRAM_Red_Extc_EN,
      BRAM_Red_ext1_rst => mayo_reduce_extension_0_BRAM_Red_Extc_RST,
      BRAM_Red_ext1_we(3 downto 0) => mayo_reduce_extension_0_BRAM_Red_Extc_WE(3 downto 0),
      BRAM_Sign1_addr(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign2b_ADDR(31 downto 0),
      BRAM_Sign1_ctrl => MAYO_SIGNING_FSM_0_BRAM_Sign2b_CTRL,
      BRAM_Sign1_din(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign2b_DIN(31 downto 0),
      BRAM_Sign1_dout(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign2b_DOUT(31 downto 0),
      BRAM_Sign1_en => MAYO_SIGNING_FSM_0_BRAM_Sign2b_EN,
      BRAM_Sign1_rst => MAYO_SIGNING_FSM_0_BRAM_Sign2b_RST,
      BRAM_Sign1_we(3 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign2b_WE(3 downto 0),
      BRAM_Sign_addr(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign2a_ADDR(31 downto 0),
      BRAM_Sign_ctrl => MAYO_SIGNING_FSM_0_BRAM_Sign2a_CTRL,
      BRAM_Sign_din(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign2a_DIN(31 downto 0),
      BRAM_Sign_dout(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign2a_DOUT(31 downto 0),
      BRAM_Sign_en => MAYO_SIGNING_FSM_0_BRAM_Sign2a_EN,
      BRAM_Sign_rst => MAYO_SIGNING_FSM_0_BRAM_Sign2a_RST,
      BRAM_Sign_we(3 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign2a_WE(3 downto 0),
      Zero0 => Ground0_dout(0),
      Zero32(31 downto 0) => Ground32_dout(31 downto 0),
      Zero4(3 downto 0) => Ground4_dout(3 downto 0),
      clk => processing_system7_0_FCLK_CLK0
    );
Ground0: component Mayo_sign_with_zynq_Ground0_0
     port map (
      dout(0) => Ground0_dout(0)
    );
Ground32: component Mayo_sign_with_zynq_Ground32_0
     port map (
      dout(31 downto 0) => Ground32_dout(31 downto 0)
    );
Ground4: component Mayo_sign_with_zynq_Ground4_0
     port map (
      dout(3 downto 0) => Ground4_dout(3 downto 0)
    );
LInear_Combination: entity work.LInear_Combination_imp_N2LWRV
     port map (
      BRAM_O_LinArb0a_addr(31 downto 0) => BRAM_Lin_1_ADDR(31 downto 0),
      BRAM_O_LinArb0a_ctrl => BRAM_Lin_1_CTRL,
      BRAM_O_LinArb0a_din(31 downto 0) => BRAM_Lin_1_DIN(31 downto 0),
      BRAM_O_LinArb0a_dout(31 downto 0) => BRAM_Lin_1_DOUT(31 downto 0),
      BRAM_O_LinArb0a_en => BRAM_Lin_1_EN,
      BRAM_O_LinArb0a_rst => BRAM_Lin_1_RST,
      BRAM_O_LinArb0a_we(3 downto 0) => BRAM_Lin_1_WE(3 downto 0),
      BRAM_O_LinArb0b_addr(31 downto 0) => BRAM_Lin1_1_ADDR(31 downto 0),
      BRAM_O_LinArb0b_ctrl => BRAM_Lin1_1_CTRL,
      BRAM_O_LinArb0b_din(31 downto 0) => BRAM_Lin1_1_DIN(31 downto 0),
      BRAM_O_LinArb0b_dout(31 downto 0) => BRAM_Lin1_1_DOUT(31 downto 0),
      BRAM_O_LinArb0b_en => BRAM_Lin1_1_EN,
      BRAM_O_LinArb0b_rst => BRAM_Lin1_1_RST,
      BRAM_O_LinArb0b_we(3 downto 0) => BRAM_Lin1_1_WE(3 downto 0),
      BRAM_O_LinArb1a_addr(31 downto 0) => LInear_Combination_BRAM_O_LinArb1a_ADDR(31 downto 0),
      BRAM_O_LinArb1a_ctrl => LInear_Combination_BRAM_O_LinArb1a_CTRL,
      BRAM_O_LinArb1a_din(31 downto 0) => LInear_Combination_BRAM_O_LinArb1a_DIN(31 downto 0),
      BRAM_O_LinArb1a_dout(31 downto 0) => LInear_Combination_BRAM_O_LinArb1a_DOUT(31 downto 0),
      BRAM_O_LinArb1a_en => LInear_Combination_BRAM_O_LinArb1a_EN,
      BRAM_O_LinArb1a_rst => LInear_Combination_BRAM_O_LinArb1a_RST,
      BRAM_O_LinArb1a_we(3 downto 0) => LInear_Combination_BRAM_O_LinArb1a_WE(3 downto 0),
      BRAM_O_LinArb2a_addr(31 downto 0) => LInear_Combination_BRAM_O_LinArb2a_ADDR(31 downto 0),
      BRAM_O_LinArb2a_ctrl => LInear_Combination_BRAM_O_LinArb2a_CTRL,
      BRAM_O_LinArb2a_din(31 downto 0) => LInear_Combination_BRAM_O_LinArb2a_DIN(31 downto 0),
      BRAM_O_LinArb2a_dout(31 downto 0) => LInear_Combination_BRAM_O_LinArb2a_DOUT(31 downto 0),
      BRAM_O_LinArb2a_en => LInear_Combination_BRAM_O_LinArb2a_EN,
      BRAM_O_LinArb2a_rst => LInear_Combination_BRAM_O_LinArb2a_RST,
      BRAM_O_LinArb2a_we(3 downto 0) => LInear_Combination_BRAM_O_LinArb2a_WE(3 downto 0),
      BRAM_O_LinArb2b_addr(31 downto 0) => LInear_Combination_BRAM_O_LinArb2b_ADDR(31 downto 0),
      BRAM_O_LinArb2b_ctrl => LInear_Combination_BRAM_O_LinArb2b_CTRL,
      BRAM_O_LinArb2b_din(31 downto 0) => LInear_Combination_BRAM_O_LinArb2b_DIN(31 downto 0),
      BRAM_O_LinArb2b_dout(31 downto 0) => LInear_Combination_BRAM_O_LinArb2b_DOUT(31 downto 0),
      BRAM_O_LinArb2b_en => LInear_Combination_BRAM_O_LinArb2b_EN,
      BRAM_O_LinArb2b_rst => LInear_Combination_BRAM_O_LinArb2b_RST,
      BRAM_O_LinArb2b_we(3 downto 0) => LInear_Combination_BRAM_O_LinArb2b_WE(3 downto 0),
      bram_sel(4 downto 0) => MAYO_SIGNING_FSM_0_o_lin_demux_bram_sel(4 downto 0),
      clk_0 => processing_system7_0_FCLK_CLK0,
      i_bram_halt => MAYO_SIGNING_FSM_0_o_lin_bram_halt,
      i_coeffs_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_lin_coeffs_addr(31 downto 0),
      i_enable => MAYO_SIGNING_FSM_0_o_lin_enable,
      i_len(31 downto 0) => MAYO_SIGNING_FSM_0_o_lin_len(31 downto 0),
      i_out_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_lin_out_addr(31 downto 0),
      i_vec_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_lin_vec_addr(31 downto 0),
      o_done => mayo_linear_combinat_0_o_done,
      rst_0 => rst_ps7_0_100M_peripheral_reset(0)
    );
MAYO_P1P1T_0: component Mayo_sign_with_zynq_MAYO_P1P1T_0_0
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      enable => MAYO_SIGNING_FSM_0_o_p1p1t_enable,
      i_dsta_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_p1p1t_dsta_adr(31 downto 0),
      i_dstb_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_p1p1t_dstb_adr(31 downto 0),
      i_ji_equal => MAYO_SIGNING_FSM_0_o_p1p1t_ji_equal,
      i_mem0b_dout(31 downto 0) => MAYO_P1P1T_0_BRAM_P1P1T1a_DOUT(31 downto 0),
      i_mem1a_dout(31 downto 0) => MAYO_P1P1T_0_BRAM_P1P1T2a_DOUT(31 downto 0),
      i_src_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_p1p1t_src_adr(31 downto 0),
      o_control0b => MAYO_P1P1T_0_BRAM_P1P1T1a_CTRL,
      o_control1a => MAYO_P1P1T_0_BRAM_P1P1T2a_CTRL,
      o_done => MAYO_P1P1T_0_o_done,
      o_mem0b_addr(31 downto 0) => MAYO_P1P1T_0_BRAM_P1P1T1a_ADDR(31 downto 0),
      o_mem0b_din(31 downto 0) => MAYO_P1P1T_0_BRAM_P1P1T1a_DIN(31 downto 0),
      o_mem0b_en => MAYO_P1P1T_0_BRAM_P1P1T1a_EN,
      o_mem0b_rst => MAYO_P1P1T_0_BRAM_P1P1T1a_RST,
      o_mem0b_we(3 downto 0) => MAYO_P1P1T_0_BRAM_P1P1T1a_WE(3 downto 0),
      o_mem1a_addr(31 downto 0) => MAYO_P1P1T_0_BRAM_P1P1T2a_ADDR(31 downto 0),
      o_mem1a_din(31 downto 0) => MAYO_P1P1T_0_BRAM_P1P1T2a_DIN(31 downto 0),
      o_mem1a_en => MAYO_P1P1T_0_BRAM_P1P1T2a_EN,
      o_mem1a_rst => MAYO_P1P1T_0_BRAM_P1P1T2a_RST,
      o_mem1a_we(3 downto 0) => MAYO_P1P1T_0_BRAM_P1P1T2a_WE(3 downto 0),
      rst => rst_ps7_0_100M_peripheral_reset(0)
    );
MAYO_SIGNING_FSM_0: component Mayo_sign_with_zynq_MAYO_SIGNING_FSM_0_0
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      i_add_done => mayo_add_vectors_0_o_done,
      i_add_oil_done => mayo_add_oil_0_o_done,
      i_enable => mayo_axi_litev3_0_o_Signing_en,
      i_hash_done => hash_o_key_done,
      i_hash_dyn_done => hash_o_key_dyn_done,
      i_lin_done => mayo_linear_combinat_0_o_done,
      i_mem0a_dout(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0a_DOUT(31 downto 0),
      i_mem0b_dout(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0b_DOUT(31 downto 0),
      i_mem1a_dout(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign1a_DOUT(31 downto 0),
      i_mem2a_dout(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign2a_DOUT(31 downto 0),
      i_mem2b_dout(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign2b_DOUT(31 downto 0),
      i_memcpy1_done => memcpy_1_o_done,
      i_memcpy_done => memcpy_0_o_done,
      i_neg_done => mayo_negate_0_o_done,
      i_p1p1t_done => MAYO_P1P1T_0_o_done,
      i_red_done => mayo_reduce_0_o_done,
      i_red_ext_done => mayo_reduce_extension_0_o_done,
      i_sam_done => mayo_sample_oil_space_0_o_done,
      i_sam_oil_done => mayo_sample_oil_0_o_done,
      i_sam_oil_ret => mayo_sample_oil_0_o_ret,
      i_sam_vin_done => mayo_sample_vinegar_0_o_done,
      i_secret => mayo_axi_litev3_0_o_Expose,
      i_trng_data(31 downto 0) => TRNG_o_trng0_data(31 downto 0),
      i_trng_done => TRNG_o_trng0_done,
      i_trng_valid => TRNG_o_trng0_valid,
      o_add_bram_sel(1 downto 0) => MAYO_SIGNING_FSM_0_o_add_bram_sel(1 downto 0),
      o_add_demux_bram_sel(4 downto 0) => MAYO_SIGNING_FSM_0_o_add_demux_bram_sel(4 downto 0),
      o_add_enable => MAYO_SIGNING_FSM_0_o_add_enable,
      o_add_oil_enable => MAYO_SIGNING_FSM_0_o_add_oil_enable,
      o_add_out_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_add_out_addr(31 downto 0),
      o_add_v1_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_add_v1_addr(31 downto 0),
      o_add_v2_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_add_v2_addr(31 downto 0),
      o_busy => MAYO_SIGNING_FSM_0_o_busy,
      o_control0a => MAYO_SIGNING_FSM_0_BRAM_Sign0a_CTRL,
      o_control0b => MAYO_SIGNING_FSM_0_BRAM_Sign0b_CTRL,
      o_control1a => MAYO_SIGNING_FSM_0_BRAM_Sign1a_CTRL,
      o_control2a => MAYO_SIGNING_FSM_0_BRAM_Sign2a_CTRL,
      o_control2b => MAYO_SIGNING_FSM_0_BRAM_Sign2b_CTRL,
      o_done => MAYO_SIGNING_FSM_0_o_done,
      o_err(1 downto 0) => MAYO_SIGNING_FSM_0_o_err(1 downto 0),
      o_hash_en => MAYO_SIGNING_FSM_0_o_hash_en,
      o_hash_memsel => MAYO_SIGNING_FSM_0_o_hash_memsel,
      o_hash_mlen(31 downto 0) => MAYO_SIGNING_FSM_0_o_hash_mlen(31 downto 0),
      o_hash_olen(31 downto 0) => MAYO_SIGNING_FSM_0_o_hash_olen(31 downto 0),
      o_hash_read_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_hash_read_adr(31 downto 0),
      o_hash_write_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_hash_write_adr(31 downto 0),
      o_lin_bram_halt => MAYO_SIGNING_FSM_0_o_lin_bram_halt,
      o_lin_coeffs_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_lin_coeffs_addr(31 downto 0),
      o_lin_demux_bram_sel(4 downto 0) => MAYO_SIGNING_FSM_0_o_lin_demux_bram_sel(4 downto 0),
      o_lin_enable => MAYO_SIGNING_FSM_0_o_lin_enable,
      o_lin_len(31 downto 0) => MAYO_SIGNING_FSM_0_o_lin_len(31 downto 0),
      o_lin_out_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_lin_out_addr(31 downto 0),
      o_lin_vec_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_lin_vec_addr(31 downto 0),
      o_mem0a_addr(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0a_ADDR(31 downto 0),
      o_mem0a_din(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0a_DIN(31 downto 0),
      o_mem0a_en => MAYO_SIGNING_FSM_0_BRAM_Sign0a_EN,
      o_mem0a_rst => MAYO_SIGNING_FSM_0_BRAM_Sign0a_RST,
      o_mem0a_we(3 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0a_WE(3 downto 0),
      o_mem0b_addr(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0b_ADDR(31 downto 0),
      o_mem0b_din(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0b_DIN(31 downto 0),
      o_mem0b_en => MAYO_SIGNING_FSM_0_BRAM_Sign0b_EN,
      o_mem0b_rst => MAYO_SIGNING_FSM_0_BRAM_Sign0b_RST,
      o_mem0b_we(3 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0b_WE(3 downto 0),
      o_mem1a_addr(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign1a_ADDR(31 downto 0),
      o_mem1a_din(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign1a_DIN(31 downto 0),
      o_mem1a_en => MAYO_SIGNING_FSM_0_BRAM_Sign1a_EN,
      o_mem1a_rst => MAYO_SIGNING_FSM_0_BRAM_Sign1a_RST,
      o_mem1a_we(3 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign1a_WE(3 downto 0),
      o_mem2a_addr(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign2a_ADDR(31 downto 0),
      o_mem2a_din(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign2a_DIN(31 downto 0),
      o_mem2a_en => MAYO_SIGNING_FSM_0_BRAM_Sign2a_EN,
      o_mem2a_rst => MAYO_SIGNING_FSM_0_BRAM_Sign2a_RST,
      o_mem2a_we(3 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign2a_WE(3 downto 0),
      o_mem2b_addr(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign2b_ADDR(31 downto 0),
      o_mem2b_din(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign2b_DIN(31 downto 0),
      o_mem2b_en => MAYO_SIGNING_FSM_0_BRAM_Sign2b_EN,
      o_mem2b_rst => MAYO_SIGNING_FSM_0_BRAM_Sign2b_RST,
      o_mem2b_we(3 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign2b_WE(3 downto 0),
      o_memcpy1_dst_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_memcpy1_dst_adr(31 downto 0),
      o_memcpy1_len(31 downto 0) => MAYO_SIGNING_FSM_0_o_memcpy1_len(31 downto 0),
      o_memcpy1_mem_port_sel(1 downto 0) => MAYO_SIGNING_FSM_0_o_memcpy1_mem_port_sel(1 downto 0),
      o_memcpy1_src_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_memcpy1_src_adr(31 downto 0),
      o_memcpy1_start => MAYO_SIGNING_FSM_0_o_memcpy1_start,
      o_memcpy_dst_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_memcpy_dst_adr(31 downto 0),
      o_memcpy_len(31 downto 0) => MAYO_SIGNING_FSM_0_o_memcpy_len(31 downto 0),
      o_memcpy_mem_port_sel(1 downto 0) => MAYO_SIGNING_FSM_0_o_memcpy_mem_port_sel(1 downto 0),
      o_memcpy_src_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_memcpy_src_adr(31 downto 0),
      o_memcpy_start => MAYO_SIGNING_FSM_0_o_memcpy_start,
      o_neg_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_neg_adr(31 downto 0),
      o_neg_enable => MAYO_SIGNING_FSM_0_o_neg_enable,
      o_neg_len(31 downto 0) => MAYO_SIGNING_FSM_0_o_neg_len(31 downto 0),
      o_p1p1t_dsta_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_p1p1t_dsta_adr(31 downto 0),
      o_p1p1t_dstb_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_p1p1t_dstb_adr(31 downto 0),
      o_p1p1t_enable => MAYO_SIGNING_FSM_0_o_p1p1t_enable,
      o_p1p1t_ji_equal => MAYO_SIGNING_FSM_0_o_p1p1t_ji_equal,
      o_p1p1t_src_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_p1p1t_src_adr(31 downto 0),
      o_red_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_red_adr(31 downto 0),
      o_red_bram_sel => MAYO_SIGNING_FSM_0_o_red_bram_sel,
      o_red_enable => MAYO_SIGNING_FSM_0_o_red_enable,
      o_red_ext_en => MAYO_SIGNING_FSM_0_o_red_ext_en,
      o_red_ext_input_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_red_ext_input_adr(31 downto 0),
      o_red_ext_output_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_red_ext_output_adr(31 downto 0),
      o_red_len(31 downto 0) => MAYO_SIGNING_FSM_0_o_red_len(31 downto 0),
      o_sam_enable => MAYO_SIGNING_FSM_0_o_sam_enable,
      o_sam_mode => MAYO_SIGNING_FSM_0_o_sam_mode,
      o_sam_oil_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_sam_oil_addr(31 downto 0),
      o_sam_oil_en => MAYO_SIGNING_FSM_0_o_sam_oil_en,
      o_sam_vin_en => MAYO_SIGNING_FSM_0_o_sam_vin_en,
      o_sam_vin_input_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_sam_vin_input_adr(31 downto 0),
      o_trng_data(31 downto 0) => MAYO_SIGNING_FSM_0_o_trng_data(31 downto 0),
      o_trng_r => MAYO_SIGNING_FSM_0_o_trng_r,
      o_trng_w => MAYO_SIGNING_FSM_0_o_trng_w,
      rst => rst_ps7_0_100M_peripheral_reset(0)
    );
SmallBRAM: entity work.SmallBRAM_imp_1VZXT5A
     port map (
      BRAM_Add_oil1_addr(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil0b_ADDR(31 downto 0),
      BRAM_Add_oil1_ctrl => mayo_add_oil_0_BRAM_Add_oil0b_CTRL,
      BRAM_Add_oil1_din(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil0b_DIN(31 downto 0),
      BRAM_Add_oil1_dout(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil0b_DOUT(31 downto 0),
      BRAM_Add_oil1_en => mayo_add_oil_0_BRAM_Add_oil0b_EN,
      BRAM_Add_oil1_rst => mayo_add_oil_0_BRAM_Add_oil0b_RST,
      BRAM_Add_oil1_we(3 downto 0) => mayo_add_oil_0_BRAM_Add_oil0b_WE(3 downto 0),
      BRAM_Add_oil_addr(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil0a_ADDR(31 downto 0),
      BRAM_Add_oil_ctrl => mayo_add_oil_0_BRAM_Add_oil0a_CTRL,
      BRAM_Add_oil_din(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil0a_DIN(31 downto 0),
      BRAM_Add_oil_dout(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil0a_DOUT(31 downto 0),
      BRAM_Add_oil_en => mayo_add_oil_0_BRAM_Add_oil0a_EN,
      BRAM_Add_oil_rst => mayo_add_oil_0_BRAM_Add_oil0a_RST,
      BRAM_Add_oil_we(3 downto 0) => mayo_add_oil_0_BRAM_Add_oil0a_WE(3 downto 0),
      BRAM_Add_vec_addr(31 downto 0) => BRAM_Add_vec_1_ADDR(31 downto 0),
      BRAM_Add_vec_ctrl => BRAM_Add_vec_1_CTRL,
      BRAM_Add_vec_din(31 downto 0) => BRAM_Add_vec_1_DIN(31 downto 0),
      BRAM_Add_vec_dout(31 downto 0) => BRAM_Add_vec_1_DOUT(31 downto 0),
      BRAM_Add_vec_en => BRAM_Add_vec_1_EN,
      BRAM_Add_vec_rst => BRAM_Add_vec_1_RST,
      BRAM_Add_vec_we(3 downto 0) => BRAM_Add_vec_1_WE(3 downto 0),
      BRAM_Hash_addr(31 downto 0) => hash_BRAM_HashSmall_ADDR(31 downto 0),
      BRAM_Hash_ctrl => hash_BRAM_HashSmall_CTRL,
      BRAM_Hash_din(31 downto 0) => hash_BRAM_HashSmall_DIN(31 downto 0),
      BRAM_Hash_dout(31 downto 0) => hash_BRAM_HashSmall_DOUT(31 downto 0),
      BRAM_Hash_en => hash_BRAM_HashSmall_EN,
      BRAM_Hash_rst => hash_BRAM_HashSmall_RST,
      BRAM_Hash_we(3 downto 0) => hash_BRAM_HashSmall_WE(3 downto 0),
      BRAM_Lin1_addr(31 downto 0) => BRAM_Lin1_1_ADDR(31 downto 0),
      BRAM_Lin1_ctrl => BRAM_Lin1_1_CTRL,
      BRAM_Lin1_din(31 downto 0) => BRAM_Lin1_1_DIN(31 downto 0),
      BRAM_Lin1_dout(31 downto 0) => BRAM_Lin1_1_DOUT(31 downto 0),
      BRAM_Lin1_en => BRAM_Lin1_1_EN,
      BRAM_Lin1_rst => BRAM_Lin1_1_RST,
      BRAM_Lin1_we(3 downto 0) => BRAM_Lin1_1_WE(3 downto 0),
      BRAM_Lin_addr(31 downto 0) => BRAM_Lin_1_ADDR(31 downto 0),
      BRAM_Lin_ctrl => BRAM_Lin_1_CTRL,
      BRAM_Lin_din(31 downto 0) => BRAM_Lin_1_DIN(31 downto 0),
      BRAM_Lin_dout(31 downto 0) => BRAM_Lin_1_DOUT(31 downto 0),
      BRAM_Lin_en => BRAM_Lin_1_EN,
      BRAM_Lin_rst => BRAM_Lin_1_RST,
      BRAM_Lin_we(3 downto 0) => BRAM_Lin_1_WE(3 downto 0),
      BRAM_P1P1T_ctrl => '0',
      BRAM_P1P1T_dout => NLW_SmallBRAM_BRAM_P1P1T_dout_UNCONNECTED,
      BRAM_P1P1T_en => '0',
      BRAM_P1P1T_rst => '0',
      BRAM_Red_addr(31 downto 0) => mayo_reduce_0_BRAM_Red0_ADDR(31 downto 0),
      BRAM_Red_ctrl => mayo_reduce_0_BRAM_Red0_CTRL,
      BRAM_Red_din(31 downto 0) => mayo_reduce_0_BRAM_Red0_DIN(31 downto 0),
      BRAM_Red_dout(31 downto 0) => mayo_reduce_0_BRAM_Red0_DOUT(31 downto 0),
      BRAM_Red_en => mayo_reduce_0_BRAM_Red0_EN,
      BRAM_Red_ext1_addr(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Extb_ADDR(31 downto 0),
      BRAM_Red_ext1_ctrl => mayo_reduce_extension_0_BRAM_Red_Extb_CTRL,
      BRAM_Red_ext1_din(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Extb_DIN(31 downto 0),
      BRAM_Red_ext1_dout(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Extb_DOUT(31 downto 0),
      BRAM_Red_ext1_en => mayo_reduce_extension_0_BRAM_Red_Extb_EN,
      BRAM_Red_ext1_rst => mayo_reduce_extension_0_BRAM_Red_Extb_RST,
      BRAM_Red_ext1_we(3 downto 0) => mayo_reduce_extension_0_BRAM_Red_Extb_WE(3 downto 0),
      BRAM_Red_ext_addr(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Exta_ADDR(31 downto 0),
      BRAM_Red_ext_ctrl => mayo_reduce_extension_0_BRAM_Red_Exta_CTRL,
      BRAM_Red_ext_din(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Exta_DIN(31 downto 0),
      BRAM_Red_ext_dout(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Exta_DOUT(31 downto 0),
      BRAM_Red_ext_en => mayo_reduce_extension_0_BRAM_Red_Exta_EN,
      BRAM_Red_ext_rst => mayo_reduce_extension_0_BRAM_Red_Exta_RST,
      BRAM_Red_ext_we(3 downto 0) => mayo_reduce_extension_0_BRAM_Red_Exta_WE(3 downto 0),
      BRAM_Red_rst => mayo_reduce_0_BRAM_Red0_RST,
      BRAM_Red_we(3 downto 0) => mayo_reduce_0_BRAM_Red0_WE(3 downto 0),
      BRAM_Sam_addr(31 downto 0) => mayo_sample_oil_space_0_BRAM_Sama_ADDR(31 downto 0),
      BRAM_Sam_ctrl => mayo_sample_oil_space_0_BRAM_Sama_CTRL,
      BRAM_Sam_din(31 downto 0) => mayo_sample_oil_space_0_BRAM_Sama_DIN(31 downto 0),
      BRAM_Sam_dout(31 downto 0) => mayo_sample_oil_space_0_BRAM_Sama_DOUT(31 downto 0),
      BRAM_Sam_en => mayo_sample_oil_space_0_BRAM_Sama_EN,
      BRAM_Sam_oil1_addr(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil0b_ADDR(31 downto 0),
      BRAM_Sam_oil1_ctrl => mayo_sample_oil_0_BRAM_Sample_oil0b_CTRL,
      BRAM_Sam_oil1_din(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil0b_DIN(31 downto 0),
      BRAM_Sam_oil1_dout(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil0b_DOUT(31 downto 0),
      BRAM_Sam_oil1_en => mayo_sample_oil_0_BRAM_Sample_oil0b_EN,
      BRAM_Sam_oil1_rst => mayo_sample_oil_0_BRAM_Sample_oil0b_RST,
      BRAM_Sam_oil1_we(3 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil0b_WE(3 downto 0),
      BRAM_Sam_oil_addr(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil0a_ADDR(31 downto 0),
      BRAM_Sam_oil_ctrl => mayo_sample_oil_0_BRAM_Sample_oil0a_CTRL,
      BRAM_Sam_oil_din(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil0a_DIN(31 downto 0),
      BRAM_Sam_oil_dout(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil0a_DOUT(31 downto 0),
      BRAM_Sam_oil_en => mayo_sample_oil_0_BRAM_Sample_oil0a_EN,
      BRAM_Sam_oil_rst => mayo_sample_oil_0_BRAM_Sample_oil0a_RST,
      BRAM_Sam_oil_we(3 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil0a_WE(3 downto 0),
      BRAM_Sam_rst => mayo_sample_oil_space_0_BRAM_Sama_RST,
      BRAM_Sam_vin_addr(31 downto 0) => mayo_sample_vinegar_0_BRAM_Sam_vin0a_ADDR(31 downto 0),
      BRAM_Sam_vin_ctrl => mayo_sample_vinegar_0_BRAM_Sam_vin0a_CTRL,
      BRAM_Sam_vin_din(31 downto 0) => mayo_sample_vinegar_0_BRAM_Sam_vin0a_DIN(31 downto 0),
      BRAM_Sam_vin_dout(31 downto 0) => mayo_sample_vinegar_0_BRAM_Sam_vin0a_DOUT(31 downto 0),
      BRAM_Sam_vin_en => mayo_sample_vinegar_0_BRAM_Sam_vin0a_EN,
      BRAM_Sam_vin_rst => mayo_sample_vinegar_0_BRAM_Sam_vin0a_RST,
      BRAM_Sam_vin_we(3 downto 0) => mayo_sample_vinegar_0_BRAM_Sam_vin0a_WE(3 downto 0),
      BRAM_Sam_we(3 downto 0) => mayo_sample_oil_space_0_BRAM_Sama_WE(3 downto 0),
      BRAM_Sign1_addr(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0b_ADDR(31 downto 0),
      BRAM_Sign1_ctrl => MAYO_SIGNING_FSM_0_BRAM_Sign0b_CTRL,
      BRAM_Sign1_din(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0b_DIN(31 downto 0),
      BRAM_Sign1_dout(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0b_DOUT(31 downto 0),
      BRAM_Sign1_en => MAYO_SIGNING_FSM_0_BRAM_Sign0b_EN,
      BRAM_Sign1_rst => MAYO_SIGNING_FSM_0_BRAM_Sign0b_RST,
      BRAM_Sign1_we(3 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0b_WE(3 downto 0),
      BRAM_Sign_addr(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0a_ADDR(31 downto 0),
      BRAM_Sign_ctrl => MAYO_SIGNING_FSM_0_BRAM_Sign0a_CTRL,
      BRAM_Sign_din(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0a_DIN(31 downto 0),
      BRAM_Sign_dout(31 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0a_DOUT(31 downto 0),
      BRAM_Sign_en => MAYO_SIGNING_FSM_0_BRAM_Sign0a_EN,
      BRAM_Sign_rst => MAYO_SIGNING_FSM_0_BRAM_Sign0a_RST,
      BRAM_Sign_we(3 downto 0) => MAYO_SIGNING_FSM_0_BRAM_Sign0a_WE(3 downto 0),
      clk_0 => processing_system7_0_FCLK_CLK0,
      zero(31 downto 0) => Ground32_dout(31 downto 0),
      zero0 => Ground0_dout(0),
      zero4(3 downto 0) => Ground4_dout(3 downto 0)
    );
TRNG: entity work.TRNG_imp_12AA6DP
     port map (
      In1(0) => mayo_sample_vinegar_0_o_trng_sel,
      clk => processing_system7_0_FCLK_CLK0,
      i_trng0_data(31 downto 0) => MAYO_SIGNING_FSM_0_o_trng_data(31 downto 0),
      i_trng0_r => MAYO_SIGNING_FSM_0_o_trng_r,
      i_trng0_w => MAYO_SIGNING_FSM_0_o_trng_w,
      i_trng1_data1(31 downto 0) => i_trng1_data1_1(31 downto 0),
      i_trng1_r => i_trng1_r_1,
      i_trng1_w => mayo_sample_oil_space_0_o_trng_w,
      i_trng2_data(31 downto 0) => mayo_sample_vinegar_0_o_trng_data(31 downto 0),
      i_trng2_r => mayo_sample_vinegar_0_o_trng_r,
      i_trng2_w => mayo_sample_vinegar_0_o_trng_w,
      i_trng_sel => mayo_sample_oil_space_0_o_trng_sel,
      o_trng0_data(31 downto 0) => TRNG_o_trng0_data(31 downto 0),
      o_trng0_done => TRNG_o_trng0_done,
      o_trng0_valid => TRNG_o_trng0_valid,
      o_trng1_data(31 downto 0) => TRNG_o_trng1_data(31 downto 0),
      o_trng1_done => TRNG_o_trng1_done,
      o_trng1_valid => TRNG_o_trng1_valid,
      o_trng2_data(31 downto 0) => TRNG_o_trng2_data(31 downto 0),
      o_trng2_done => TRNG_o_trng2_done,
      o_trng2_valid => TRNG_o_trng2_valid,
      rst => rst_ps7_0_100M_peripheral_reset(0)
    );
add_vectors: entity work.add_vectors_imp_1WHQW
     port map (
      BRAM_O_Add0A_addr(31 downto 0) => BRAM_Add_vec_1_ADDR(31 downto 0),
      BRAM_O_Add0A_ctrl => BRAM_Add_vec_1_CTRL,
      BRAM_O_Add0A_din(31 downto 0) => BRAM_Add_vec_1_DIN(31 downto 0),
      BRAM_O_Add0A_dout(31 downto 0) => BRAM_Add_vec_1_DOUT(31 downto 0),
      BRAM_O_Add0A_en => BRAM_Add_vec_1_EN,
      BRAM_O_Add0A_rst => BRAM_Add_vec_1_RST,
      BRAM_O_Add0A_we(3 downto 0) => BRAM_Add_vec_1_WE(3 downto 0),
      BRAM_O_Add1A_addr(31 downto 0) => add_vectors_BRAM_O_Add1A_ADDR(31 downto 0),
      BRAM_O_Add1A_ctrl => add_vectors_BRAM_O_Add1A_CTRL,
      BRAM_O_Add1A_din(31 downto 0) => add_vectors_BRAM_O_Add1A_DIN(31 downto 0),
      BRAM_O_Add1A_dout(31 downto 0) => add_vectors_BRAM_O_Add1A_DOUT(31 downto 0),
      BRAM_O_Add1A_en => add_vectors_BRAM_O_Add1A_EN,
      BRAM_O_Add1A_rst => add_vectors_BRAM_O_Add1A_RST,
      BRAM_O_Add1A_we(3 downto 0) => add_vectors_BRAM_O_Add1A_WE(3 downto 0),
      BRAM_O_Add2A_addr(31 downto 0) => add_vectors_BRAM_O_Add2A_ADDR(31 downto 0),
      BRAM_O_Add2A_ctrl => add_vectors_BRAM_O_Add2A_CTRL,
      BRAM_O_Add2A_din(31 downto 0) => add_vectors_BRAM_O_Add2A_DIN(31 downto 0),
      BRAM_O_Add2A_dout(31 downto 0) => add_vectors_BRAM_O_Add2A_DOUT(31 downto 0),
      BRAM_O_Add2A_en => add_vectors_BRAM_O_Add2A_EN,
      BRAM_O_Add2A_rst => add_vectors_BRAM_O_Add2A_RST,
      BRAM_O_Add2A_we(3 downto 0) => add_vectors_BRAM_O_Add2A_WE(3 downto 0),
      BRAM_O_Add2B_addr(31 downto 0) => add_vectors_BRAM_O_Add2B_ADDR(31 downto 0),
      BRAM_O_Add2B_ctrl => add_vectors_BRAM_O_Add2B_CTRL,
      BRAM_O_Add2B_din(31 downto 0) => add_vectors_BRAM_O_Add2B_DIN(31 downto 0),
      BRAM_O_Add2B_dout(31 downto 0) => add_vectors_BRAM_O_Add2B_DOUT(31 downto 0),
      BRAM_O_Add2B_en => add_vectors_BRAM_O_Add2B_EN,
      BRAM_O_Add2B_rst => add_vectors_BRAM_O_Add2B_RST,
      BRAM_O_Add2B_we(3 downto 0) => add_vectors_BRAM_O_Add2B_WE(3 downto 0),
      bram_sel(4 downto 0) => MAYO_SIGNING_FSM_0_o_add_demux_bram_sel(4 downto 0),
      clk_0 => processing_system7_0_FCLK_CLK0,
      i_bram_sel(1 downto 0) => MAYO_SIGNING_FSM_0_o_add_bram_sel(1 downto 0),
      i_enable => MAYO_SIGNING_FSM_0_o_add_enable,
      i_out_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_add_out_addr(31 downto 0),
      i_v1_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_add_v1_addr(31 downto 0),
      i_v2_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_add_v2_addr(31 downto 0),
      o_done => mayo_add_vectors_0_o_done,
      rst_0 => rst_ps7_0_100M_peripheral_reset(0)
    );
hash: entity work.hash_imp_ZIUEQR
     port map (
      BRAM_HashBig_addr(31 downto 0) => hash_BRAM_HashBig_ADDR(31 downto 0),
      BRAM_HashBig_ctrl => hash_BRAM_HashBig_CTRL,
      BRAM_HashBig_din(31 downto 0) => hash_BRAM_HashBig_DIN(31 downto 0),
      BRAM_HashBig_dout(31 downto 0) => hash_BRAM_HashBig_DOUT(31 downto 0),
      BRAM_HashBig_en => hash_BRAM_HashBig_EN,
      BRAM_HashBig_rst => hash_BRAM_HashBig_RST,
      BRAM_HashBig_we(3 downto 0) => hash_BRAM_HashBig_WE(3 downto 0),
      BRAM_HashSmall_addr(31 downto 0) => hash_BRAM_HashSmall_ADDR(31 downto 0),
      BRAM_HashSmall_ctrl => hash_BRAM_HashSmall_CTRL,
      BRAM_HashSmall_din(31 downto 0) => hash_BRAM_HashSmall_DIN(31 downto 0),
      BRAM_HashSmall_dout(31 downto 0) => hash_BRAM_HashSmall_DOUT(31 downto 0),
      BRAM_HashSmall_en => hash_BRAM_HashSmall_EN,
      BRAM_HashSmall_rst => hash_BRAM_HashSmall_RST,
      BRAM_HashSmall_we(3 downto 0) => hash_BRAM_HashSmall_WE(3 downto 0),
      bram_sel => MAYO_SIGNING_FSM_0_o_hash_memsel,
      clk => processing_system7_0_FCLK_CLK0,
      i_key_en => MAYO_SIGNING_FSM_0_o_hash_en,
      i_key_mlen(31 downto 0) => MAYO_SIGNING_FSM_0_o_hash_mlen(31 downto 0),
      i_key_olen(31 downto 0) => MAYO_SIGNING_FSM_0_o_hash_olen(31 downto 0),
      i_key_read_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_hash_read_adr(31 downto 0),
      i_key_write_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_hash_write_adr(31 downto 0),
      o_key_done => hash_o_key_done,
      o_key_dyn_done => hash_o_key_dyn_done,
      rst => rst_ps7_0_100M_peripheral_reset(0)
    );
mayo_add_oil_0: component Mayo_sign_with_zynq_mayo_add_oil_0_0
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      i_enable => MAYO_SIGNING_FSM_0_o_add_oil_enable,
      i_mem0a_dout(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil0a_DOUT(31 downto 0),
      i_mem0b_dout(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil0b_DOUT(31 downto 0),
      i_mem1a_dout(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil1a_DOUT(31 downto 0),
      o_control0a => mayo_add_oil_0_BRAM_Add_oil0a_CTRL,
      o_control0b => mayo_add_oil_0_BRAM_Add_oil0b_CTRL,
      o_control1a => mayo_add_oil_0_BRAM_Add_oil1a_CTRL,
      o_done => mayo_add_oil_0_o_done,
      o_mem0a_addr(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil0a_ADDR(31 downto 0),
      o_mem0a_din(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil0a_DIN(31 downto 0),
      o_mem0a_en => mayo_add_oil_0_BRAM_Add_oil0a_EN,
      o_mem0a_rst => mayo_add_oil_0_BRAM_Add_oil0a_RST,
      o_mem0a_we(3 downto 0) => mayo_add_oil_0_BRAM_Add_oil0a_WE(3 downto 0),
      o_mem0b_addr(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil0b_ADDR(31 downto 0),
      o_mem0b_din(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil0b_DIN(31 downto 0),
      o_mem0b_en => mayo_add_oil_0_BRAM_Add_oil0b_EN,
      o_mem0b_rst => mayo_add_oil_0_BRAM_Add_oil0b_RST,
      o_mem0b_we(3 downto 0) => mayo_add_oil_0_BRAM_Add_oil0b_WE(3 downto 0),
      o_mem1a_addr(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil1a_ADDR(31 downto 0),
      o_mem1a_din(31 downto 0) => mayo_add_oil_0_BRAM_Add_oil1a_DIN(31 downto 0),
      o_mem1a_en => mayo_add_oil_0_BRAM_Add_oil1a_EN,
      o_mem1a_rst => mayo_add_oil_0_BRAM_Add_oil1a_RST,
      o_mem1a_we(3 downto 0) => mayo_add_oil_0_BRAM_Add_oil1a_WE(3 downto 0),
      rst => rst_ps7_0_100M_peripheral_reset(0)
    );
mayo_axi_litev3_0: component Mayo_sign_with_zynq_mayo_axi_litev3_0_0
     port map (
      i_Keygen_busy => Ground0_dout(0),
      i_Keygen_done => Ground0_dout(0),
      i_Signing_busy => MAYO_SIGNING_FSM_0_o_busy,
      i_Signing_done => MAYO_SIGNING_FSM_0_o_done,
      i_Verification_busy => Ground0_dout(0),
      i_Verification_done => Ground0_dout(0),
      i_error(7 downto 0) => xlconcat_0_dout(7 downto 0),
      o_Debug => NLW_mayo_axi_litev3_0_o_Debug_UNCONNECTED,
      o_Expose => mayo_axi_litev3_0_o_Expose,
      o_Keygen_en => NLW_mayo_axi_litev3_0_o_Keygen_en_UNCONNECTED,
      o_Signing_en => mayo_axi_litev3_0_o_Signing_en,
      o_Verification_en => NLW_mayo_axi_litev3_0_o_Verification_en_UNCONNECTED,
      o_interrupt => mayo_axi_litev3_0_o_interrupt,
      o_irq_en => NLW_mayo_axi_litev3_0_o_irq_en_UNCONNECTED,
      s00_axi_aclk => processing_system7_0_FCLK_CLK0,
      s00_axi_araddr(4 downto 0) => ps7_0_axi_periph_M00_AXI_ARADDR(4 downto 0),
      s00_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s00_axi_arprot(2 downto 0) => ps7_0_axi_periph_M00_AXI_ARPROT(2 downto 0),
      s00_axi_arready => ps7_0_axi_periph_M00_AXI_ARREADY,
      s00_axi_arvalid => ps7_0_axi_periph_M00_AXI_ARVALID,
      s00_axi_awaddr(4 downto 0) => ps7_0_axi_periph_M00_AXI_AWADDR(4 downto 0),
      s00_axi_awprot(2 downto 0) => ps7_0_axi_periph_M00_AXI_AWPROT(2 downto 0),
      s00_axi_awready => ps7_0_axi_periph_M00_AXI_AWREADY,
      s00_axi_awvalid => ps7_0_axi_periph_M00_AXI_AWVALID,
      s00_axi_bready => ps7_0_axi_periph_M00_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => ps7_0_axi_periph_M00_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      s00_axi_rready => ps7_0_axi_periph_M00_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => ps7_0_axi_periph_M00_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      s00_axi_wready => ps7_0_axi_periph_M00_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => ps7_0_axi_periph_M00_AXI_WVALID
    );
mayo_negate_0: component Mayo_sign_with_zynq_mayo_negate_0_0
     port map (
      i_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_neg_adr(31 downto 0),
      i_clk => processing_system7_0_FCLK_CLK0,
      i_doutb(31 downto 0) => mayo_negate_0_BRAM_Negate_DOUT(31 downto 0),
      i_enable => MAYO_SIGNING_FSM_0_o_neg_enable,
      i_len(31 downto 0) => MAYO_SIGNING_FSM_0_o_neg_len(31 downto 0),
      o_addrb(31 downto 0) => mayo_negate_0_BRAM_Negate_ADDR(31 downto 0),
      o_control => mayo_negate_0_BRAM_Negate_CTRL,
      o_dinb(31 downto 0) => mayo_negate_0_BRAM_Negate_DIN(31 downto 0),
      o_done => mayo_negate_0_o_done,
      o_enb => mayo_negate_0_BRAM_Negate_EN,
      o_rstb => mayo_negate_0_BRAM_Negate_RST,
      o_web(3 downto 0) => mayo_negate_0_BRAM_Negate_WE(3 downto 0),
      rst => rst_ps7_0_100M_peripheral_reset(0)
    );
mayo_reduce_0: component Mayo_sign_with_zynq_mayo_reduce_0_0
     port map (
      i_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_red_adr(31 downto 0),
      i_bram_sel => MAYO_SIGNING_FSM_0_o_red_bram_sel,
      i_clk => processing_system7_0_FCLK_CLK0,
      i_dout0(31 downto 0) => mayo_reduce_0_BRAM_Red0_DOUT(31 downto 0),
      i_dout1(31 downto 0) => mayo_reduce_0_BRAM_Red1_DOUT(31 downto 0),
      i_enable => MAYO_SIGNING_FSM_0_o_red_enable,
      i_len(31 downto 0) => MAYO_SIGNING_FSM_0_o_red_len(31 downto 0),
      o_addr0(31 downto 0) => mayo_reduce_0_BRAM_Red0_ADDR(31 downto 0),
      o_addr1(31 downto 0) => mayo_reduce_0_BRAM_Red1_ADDR(31 downto 0),
      o_control0 => mayo_reduce_0_BRAM_Red0_CTRL,
      o_control1 => mayo_reduce_0_BRAM_Red1_CTRL,
      o_din0(31 downto 0) => mayo_reduce_0_BRAM_Red0_DIN(31 downto 0),
      o_din1(31 downto 0) => mayo_reduce_0_BRAM_Red1_DIN(31 downto 0),
      o_done => mayo_reduce_0_o_done,
      o_en0 => mayo_reduce_0_BRAM_Red0_EN,
      o_en1 => mayo_reduce_0_BRAM_Red1_EN,
      o_rst0 => mayo_reduce_0_BRAM_Red0_RST,
      o_rst1 => mayo_reduce_0_BRAM_Red1_RST,
      o_we0(3 downto 0) => mayo_reduce_0_BRAM_Red0_WE(3 downto 0),
      o_we1(3 downto 0) => mayo_reduce_0_BRAM_Red1_WE(3 downto 0),
      rst => rst_ps7_0_100M_peripheral_reset(0)
    );
mayo_reduce_extension_0: component Mayo_sign_with_zynq_mayo_reduce_extension_0_0
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      en => MAYO_SIGNING_FSM_0_o_red_ext_en,
      i_input_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_red_ext_input_adr(31 downto 0),
      i_mema_dout(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Exta_DOUT(31 downto 0),
      i_memb_dout(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Extb_DOUT(31 downto 0),
      i_memc_dout(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Extc_DOUT(31 downto 0),
      i_output_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_red_ext_output_adr(31 downto 0),
      o_controla => mayo_reduce_extension_0_BRAM_Red_Exta_CTRL,
      o_controlb => mayo_reduce_extension_0_BRAM_Red_Extb_CTRL,
      o_controlc => mayo_reduce_extension_0_BRAM_Red_Extc_CTRL,
      o_done => mayo_reduce_extension_0_o_done,
      o_mema_addr(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Exta_ADDR(31 downto 0),
      o_mema_din(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Exta_DIN(31 downto 0),
      o_mema_en => mayo_reduce_extension_0_BRAM_Red_Exta_EN,
      o_mema_rst => mayo_reduce_extension_0_BRAM_Red_Exta_RST,
      o_mema_we(3 downto 0) => mayo_reduce_extension_0_BRAM_Red_Exta_WE(3 downto 0),
      o_memb_addr(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Extb_ADDR(31 downto 0),
      o_memb_din(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Extb_DIN(31 downto 0),
      o_memb_en => mayo_reduce_extension_0_BRAM_Red_Extb_EN,
      o_memb_rst => mayo_reduce_extension_0_BRAM_Red_Extb_RST,
      o_memb_we(3 downto 0) => mayo_reduce_extension_0_BRAM_Red_Extb_WE(3 downto 0),
      o_memc_addr(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Extc_ADDR(31 downto 0),
      o_memc_din(31 downto 0) => mayo_reduce_extension_0_BRAM_Red_Extc_DIN(31 downto 0),
      o_memc_en => mayo_reduce_extension_0_BRAM_Red_Extc_EN,
      o_memc_rst => mayo_reduce_extension_0_BRAM_Red_Extc_RST,
      o_memc_we(3 downto 0) => mayo_reduce_extension_0_BRAM_Red_Extc_WE(3 downto 0),
      rst => rst_ps7_0_100M_peripheral_reset(0)
    );
mayo_sample_oil_0: component Mayo_sign_with_zynq_mayo_sample_oil_0_0
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      en => MAYO_SIGNING_FSM_0_o_sam_oil_en,
      i_mem0a_dout(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil0a_DOUT(31 downto 0),
      i_mem0b_dout(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil0b_DOUT(31 downto 0),
      i_mem1a_dout(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil1a_DOUT(31 downto 0),
      o_control0a => mayo_sample_oil_0_BRAM_Sample_oil0a_CTRL,
      o_control0b => mayo_sample_oil_0_BRAM_Sample_oil0b_CTRL,
      o_control1a => mayo_sample_oil_0_BRAM_Sample_oil1a_CTRL,
      o_done => mayo_sample_oil_0_o_done,
      o_mem0a_addr(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil0a_ADDR(31 downto 0),
      o_mem0a_din(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil0a_DIN(31 downto 0),
      o_mem0a_en => mayo_sample_oil_0_BRAM_Sample_oil0a_EN,
      o_mem0a_rst => mayo_sample_oil_0_BRAM_Sample_oil0a_RST,
      o_mem0a_we(3 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil0a_WE(3 downto 0),
      o_mem0b_addr(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil0b_ADDR(31 downto 0),
      o_mem0b_din(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil0b_DIN(31 downto 0),
      o_mem0b_en => mayo_sample_oil_0_BRAM_Sample_oil0b_EN,
      o_mem0b_rst => mayo_sample_oil_0_BRAM_Sample_oil0b_RST,
      o_mem0b_we(3 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil0b_WE(3 downto 0),
      o_mem1a_addr(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil1a_ADDR(31 downto 0),
      o_mem1a_din(31 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil1a_DIN(31 downto 0),
      o_mem1a_en => mayo_sample_oil_0_BRAM_Sample_oil1a_EN,
      o_mem1a_rst => mayo_sample_oil_0_BRAM_Sample_oil1a_RST,
      o_mem1a_we(3 downto 0) => mayo_sample_oil_0_BRAM_Sample_oil1a_WE(3 downto 0),
      o_ret => mayo_sample_oil_0_o_ret,
      rst => rst_ps7_0_100M_peripheral_reset(0)
    );
mayo_sample_oil_space_0: component Mayo_sign_with_zynq_mayo_sample_oil_space_0_0
     port map (
      i_clk => processing_system7_0_FCLK_CLK0,
      i_enable => MAYO_SIGNING_FSM_0_o_sam_enable,
      i_mema_dout(31 downto 0) => mayo_sample_oil_space_0_BRAM_Sama_DOUT(31 downto 0),
      i_memb_dout(31 downto 0) => mayo_sample_oil_space_0_BRAM_Samb_DOUT(31 downto 0),
      i_mode => MAYO_SIGNING_FSM_0_o_sam_mode,
      i_oil_addr(31 downto 0) => MAYO_SIGNING_FSM_0_o_sam_oil_addr(31 downto 0),
      i_trng_data(31 downto 0) => TRNG_o_trng1_data(31 downto 0),
      i_trng_done => TRNG_o_trng1_done,
      i_trng_valid => TRNG_o_trng1_valid,
      o_controla => mayo_sample_oil_space_0_BRAM_Sama_CTRL,
      o_controlb => mayo_sample_oil_space_0_BRAM_Samb_CTRL,
      o_done => mayo_sample_oil_space_0_o_done,
      o_mema_addr(31 downto 0) => mayo_sample_oil_space_0_BRAM_Sama_ADDR(31 downto 0),
      o_mema_din(31 downto 0) => mayo_sample_oil_space_0_BRAM_Sama_DIN(31 downto 0),
      o_mema_en => mayo_sample_oil_space_0_BRAM_Sama_EN,
      o_mema_rst => mayo_sample_oil_space_0_BRAM_Sama_RST,
      o_mema_we(3 downto 0) => mayo_sample_oil_space_0_BRAM_Sama_WE(3 downto 0),
      o_memb_addr(31 downto 0) => mayo_sample_oil_space_0_BRAM_Samb_ADDR(31 downto 0),
      o_memb_din(31 downto 0) => mayo_sample_oil_space_0_BRAM_Samb_DIN(31 downto 0),
      o_memb_en => mayo_sample_oil_space_0_BRAM_Samb_EN,
      o_memb_rst => mayo_sample_oil_space_0_BRAM_Samb_RST,
      o_memb_we(3 downto 0) => mayo_sample_oil_space_0_BRAM_Samb_WE(3 downto 0),
      o_trng_data(31 downto 0) => i_trng1_data1_1(31 downto 0),
      o_trng_r => i_trng1_r_1,
      o_trng_sel => mayo_sample_oil_space_0_o_trng_sel,
      o_trng_w => mayo_sample_oil_space_0_o_trng_w,
      rst => rst_ps7_0_100M_peripheral_reset(0)
    );
mayo_sample_vinegar_0: component Mayo_sign_with_zynq_mayo_sample_vinegar_0_0
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      en => MAYO_SIGNING_FSM_0_o_sam_vin_en,
      i_input_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_sam_vin_input_adr(31 downto 0),
      i_memb_dout(31 downto 0) => mayo_sample_vinegar_0_BRAM_Sam_vin0a_DOUT(31 downto 0),
      i_trng_data(31 downto 0) => TRNG_o_trng2_data(31 downto 0),
      i_trng_done => TRNG_o_trng2_done,
      i_trng_valid => TRNG_o_trng2_valid,
      o_controlb => mayo_sample_vinegar_0_BRAM_Sam_vin0a_CTRL,
      o_done => mayo_sample_vinegar_0_o_done,
      o_memb_addr(31 downto 0) => mayo_sample_vinegar_0_BRAM_Sam_vin0a_ADDR(31 downto 0),
      o_memb_din(31 downto 0) => mayo_sample_vinegar_0_BRAM_Sam_vin0a_DIN(31 downto 0),
      o_memb_en => mayo_sample_vinegar_0_BRAM_Sam_vin0a_EN,
      o_memb_rst => mayo_sample_vinegar_0_BRAM_Sam_vin0a_RST,
      o_memb_we(3 downto 0) => mayo_sample_vinegar_0_BRAM_Sam_vin0a_WE(3 downto 0),
      o_trng_data(31 downto 0) => mayo_sample_vinegar_0_o_trng_data(31 downto 0),
      o_trng_r => mayo_sample_vinegar_0_o_trng_r,
      o_trng_sel => mayo_sample_vinegar_0_o_trng_sel,
      o_trng_w => mayo_sample_vinegar_0_o_trng_w,
      rst => rst_ps7_0_100M_peripheral_reset(0)
    );
memcpy_0: component Mayo_sign_with_zynq_memcpy_0_0
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      i_dest_dout(31 downto 0) => memcpy_0_BRAM_Dest_PORTB_DOUT(31 downto 0),
      i_dst_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_memcpy_dst_adr(31 downto 0),
      i_len(31 downto 0) => MAYO_SIGNING_FSM_0_o_memcpy_len(31 downto 0),
      i_mem_port_sel(1 downto 0) => MAYO_SIGNING_FSM_0_o_memcpy_mem_port_sel(1 downto 0),
      i_src_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_memcpy_src_adr(31 downto 0),
      i_src_dout(31 downto 0) => memcpy_0_BRAM_Src_PORTA_DOUT(31 downto 0),
      o_dest_addr(31 downto 0) => memcpy_0_BRAM_Dest_PORTB_ADDR(31 downto 0),
      o_dest_control => memcpy_0_BRAM_Dest_PORTB_CTRL,
      o_dest_din(31 downto 0) => memcpy_0_BRAM_Dest_PORTB_DIN(31 downto 0),
      o_dest_en => memcpy_0_BRAM_Dest_PORTB_EN,
      o_dest_rst => memcpy_0_BRAM_Dest_PORTB_RST,
      o_dest_we(3 downto 0) => memcpy_0_BRAM_Dest_PORTB_WE(3 downto 0),
      o_done => memcpy_0_o_done,
      o_src_addr(31 downto 0) => memcpy_0_BRAM_Src_PORTA_ADDR(31 downto 0),
      o_src_control => memcpy_0_BRAM_Src_PORTA_CTRL,
      o_src_din(31 downto 0) => memcpy_0_BRAM_Src_PORTA_DIN(31 downto 0),
      o_src_en => memcpy_0_BRAM_Src_PORTA_EN,
      o_src_rst => memcpy_0_BRAM_Src_PORTA_RST,
      o_src_we(3 downto 0) => memcpy_0_BRAM_Src_PORTA_WE(3 downto 0),
      rst => rst_ps7_0_100M_peripheral_reset(0),
      start => MAYO_SIGNING_FSM_0_o_memcpy_start
    );
memcpy_1: component Mayo_sign_with_zynq_memcpy_1_0
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      i_dest_dout(31 downto 0) => B"00000000000000000000000000001000",
      i_dst_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_memcpy1_dst_adr(31 downto 0),
      i_len(31 downto 0) => MAYO_SIGNING_FSM_0_o_memcpy1_len(31 downto 0),
      i_mem_port_sel(1 downto 0) => MAYO_SIGNING_FSM_0_o_memcpy1_mem_port_sel(1 downto 0),
      i_src_adr(31 downto 0) => MAYO_SIGNING_FSM_0_o_memcpy1_src_adr(31 downto 0),
      i_src_dout(31 downto 0) => memcpy_1_BRAM_Src_PORTA_DOUT(31 downto 0),
      o_dest_addr(31 downto 0) => NLW_memcpy_1_o_dest_addr_UNCONNECTED(31 downto 0),
      o_dest_control => NLW_memcpy_1_o_dest_control_UNCONNECTED,
      o_dest_din(31 downto 0) => NLW_memcpy_1_o_dest_din_UNCONNECTED(31 downto 0),
      o_dest_en => NLW_memcpy_1_o_dest_en_UNCONNECTED,
      o_dest_rst => NLW_memcpy_1_o_dest_rst_UNCONNECTED,
      o_dest_we(3 downto 0) => NLW_memcpy_1_o_dest_we_UNCONNECTED(3 downto 0),
      o_done => memcpy_1_o_done,
      o_src_addr(31 downto 0) => memcpy_1_BRAM_Src_PORTA_ADDR(31 downto 0),
      o_src_control => memcpy_1_BRAM_Src_PORTA_CTRL,
      o_src_din(31 downto 0) => memcpy_1_BRAM_Src_PORTA_DIN(31 downto 0),
      o_src_en => memcpy_1_BRAM_Src_PORTA_EN,
      o_src_rst => memcpy_1_BRAM_Src_PORTA_RST,
      o_src_we(3 downto 0) => memcpy_1_BRAM_Src_PORTA_WE(3 downto 0),
      rst => rst_ps7_0_100M_peripheral_reset(0),
      start => MAYO_SIGNING_FSM_0_o_memcpy1_start
    );
processing_system7_0: component Mayo_sign_with_zynq_processing_system7_0_0
     port map (
      DDR_Addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_ba(2 downto 0),
      DDR_CAS_n => DDR_cas_n,
      DDR_CKE => DDR_cke,
      DDR_CS_n => DDR_cs_n,
      DDR_Clk => DDR_ck_p,
      DDR_Clk_n => DDR_ck_n,
      DDR_DM(3 downto 0) => DDR_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_reset_n,
      DDR_ODT => DDR_odt,
      DDR_RAS_n => DDR_ras_n,
      DDR_VRN => FIXED_IO_ddr_vrn,
      DDR_VRP => FIXED_IO_ddr_vrp,
      DDR_WEB => DDR_we_n,
      FCLK_CLK0 => processing_system7_0_FCLK_CLK0,
      FCLK_RESET0_N => processing_system7_0_FCLK_RESET0_N,
      IRQ_F2P(0) => mayo_axi_litev3_0_o_interrupt,
      MIO(53 downto 0) => FIXED_IO_mio(53 downto 0),
      M_AXI_GP0_ACLK => processing_system7_0_FCLK_CLK0,
      M_AXI_GP0_ARADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      M_AXI_GP0_ARREADY => processing_system7_0_M_AXI_GP0_ARREADY,
      M_AXI_GP0_ARSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      M_AXI_GP0_ARVALID => processing_system7_0_M_AXI_GP0_ARVALID,
      M_AXI_GP0_AWADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      M_AXI_GP0_AWREADY => processing_system7_0_M_AXI_GP0_AWREADY,
      M_AXI_GP0_AWSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      M_AXI_GP0_AWVALID => processing_system7_0_M_AXI_GP0_AWVALID,
      M_AXI_GP0_BID(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      M_AXI_GP0_BREADY => processing_system7_0_M_AXI_GP0_BREADY,
      M_AXI_GP0_BRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      M_AXI_GP0_BVALID => processing_system7_0_M_AXI_GP0_BVALID,
      M_AXI_GP0_RDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      M_AXI_GP0_RID(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      M_AXI_GP0_RLAST => processing_system7_0_M_AXI_GP0_RLAST,
      M_AXI_GP0_RREADY => processing_system7_0_M_AXI_GP0_RREADY,
      M_AXI_GP0_RRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      M_AXI_GP0_RVALID => processing_system7_0_M_AXI_GP0_RVALID,
      M_AXI_GP0_WDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      M_AXI_GP0_WLAST => processing_system7_0_M_AXI_GP0_WLAST,
      M_AXI_GP0_WREADY => processing_system7_0_M_AXI_GP0_WREADY,
      M_AXI_GP0_WSTRB(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      M_AXI_GP0_WVALID => processing_system7_0_M_AXI_GP0_WVALID,
      PS_CLK => FIXED_IO_ps_clk,
      PS_PORB => FIXED_IO_ps_porb,
      PS_SRSTB => FIXED_IO_ps_srstb,
      TTC0_WAVE0_OUT => NLW_processing_system7_0_TTC0_WAVE0_OUT_UNCONNECTED,
      TTC0_WAVE1_OUT => NLW_processing_system7_0_TTC0_WAVE1_OUT_UNCONNECTED,
      TTC0_WAVE2_OUT => NLW_processing_system7_0_TTC0_WAVE2_OUT_UNCONNECTED,
      USB0_PORT_INDCTL(1 downto 0) => NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED(1 downto 0),
      USB0_VBUS_PWRFAULT => '0',
      USB0_VBUS_PWRSELECT => NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED
    );
ps7_0_axi_periph: entity work.Mayo_sign_with_zynq_ps7_0_axi_periph_0
     port map (
      ACLK => processing_system7_0_FCLK_CLK0,
      ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M00_ACLK => processing_system7_0_FCLK_CLK0,
      M00_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arprot(2 downto 0) => ps7_0_axi_periph_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arready => ps7_0_axi_periph_M00_AXI_ARREADY,
      M00_AXI_arvalid => ps7_0_axi_periph_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awprot(2 downto 0) => ps7_0_axi_periph_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awready => ps7_0_axi_periph_M00_AXI_AWREADY,
      M00_AXI_awvalid => ps7_0_axi_periph_M00_AXI_AWVALID,
      M00_AXI_bready => ps7_0_axi_periph_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => ps7_0_axi_periph_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => ps7_0_axi_periph_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => ps7_0_axi_periph_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => ps7_0_axi_periph_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => ps7_0_axi_periph_M00_AXI_WVALID,
      M01_ACLK => processing_system7_0_FCLK_CLK0,
      M01_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M01_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arburst(1 downto 0) => ps7_0_axi_periph_M01_AXI_ARBURST(1 downto 0),
      M01_AXI_arcache(3 downto 0) => ps7_0_axi_periph_M01_AXI_ARCACHE(3 downto 0),
      M01_AXI_arid(11 downto 0) => ps7_0_axi_periph_M01_AXI_ARID(11 downto 0),
      M01_AXI_arlen(7 downto 0) => ps7_0_axi_periph_M01_AXI_ARLEN(7 downto 0),
      M01_AXI_arlock(0) => ps7_0_axi_periph_M01_AXI_ARLOCK(0),
      M01_AXI_arprot(2 downto 0) => ps7_0_axi_periph_M01_AXI_ARPROT(2 downto 0),
      M01_AXI_arready(0) => ps7_0_axi_periph_M01_AXI_ARREADY(0),
      M01_AXI_arsize(2 downto 0) => ps7_0_axi_periph_M01_AXI_ARSIZE(2 downto 0),
      M01_AXI_arvalid(0) => ps7_0_axi_periph_M01_AXI_ARVALID(0),
      M01_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awburst(1 downto 0) => ps7_0_axi_periph_M01_AXI_AWBURST(1 downto 0),
      M01_AXI_awcache(3 downto 0) => ps7_0_axi_periph_M01_AXI_AWCACHE(3 downto 0),
      M01_AXI_awid(11 downto 0) => ps7_0_axi_periph_M01_AXI_AWID(11 downto 0),
      M01_AXI_awlen(7 downto 0) => ps7_0_axi_periph_M01_AXI_AWLEN(7 downto 0),
      M01_AXI_awlock(0) => ps7_0_axi_periph_M01_AXI_AWLOCK(0),
      M01_AXI_awprot(2 downto 0) => ps7_0_axi_periph_M01_AXI_AWPROT(2 downto 0),
      M01_AXI_awready(0) => ps7_0_axi_periph_M01_AXI_AWREADY(0),
      M01_AXI_awsize(2 downto 0) => ps7_0_axi_periph_M01_AXI_AWSIZE(2 downto 0),
      M01_AXI_awvalid(0) => ps7_0_axi_periph_M01_AXI_AWVALID(0),
      M01_AXI_bid(11 downto 0) => ps7_0_axi_periph_M01_AXI_BID(11 downto 0),
      M01_AXI_bready(0) => ps7_0_axi_periph_M01_AXI_BREADY(0),
      M01_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid(0) => ps7_0_axi_periph_M01_AXI_BVALID(0),
      M01_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rid(11 downto 0) => ps7_0_axi_periph_M01_AXI_RID(11 downto 0),
      M01_AXI_rlast(0) => ps7_0_axi_periph_M01_AXI_RLAST(0),
      M01_AXI_rready(0) => ps7_0_axi_periph_M01_AXI_RREADY(0),
      M01_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid(0) => ps7_0_axi_periph_M01_AXI_RVALID(0),
      M01_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wlast(0) => ps7_0_axi_periph_M01_AXI_WLAST(0),
      M01_AXI_wready(0) => ps7_0_axi_periph_M01_AXI_WREADY(0),
      M01_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid(0) => ps7_0_axi_periph_M01_AXI_WVALID(0),
      S00_ACLK => processing_system7_0_FCLK_CLK0,
      S00_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      S00_AXI_arid(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      S00_AXI_arlen(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      S00_AXI_arready => processing_system7_0_M_AXI_GP0_ARREADY,
      S00_AXI_arsize(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      S00_AXI_arvalid => processing_system7_0_M_AXI_GP0_ARVALID,
      S00_AXI_awaddr(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      S00_AXI_awid(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      S00_AXI_awlen(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      S00_AXI_awready => processing_system7_0_M_AXI_GP0_AWREADY,
      S00_AXI_awsize(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      S00_AXI_awvalid => processing_system7_0_M_AXI_GP0_AWVALID,
      S00_AXI_bid(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      S00_AXI_bready => processing_system7_0_M_AXI_GP0_BREADY,
      S00_AXI_bresp(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      S00_AXI_bvalid => processing_system7_0_M_AXI_GP0_BVALID,
      S00_AXI_rdata(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      S00_AXI_rid(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      S00_AXI_rlast => processing_system7_0_M_AXI_GP0_RLAST,
      S00_AXI_rready => processing_system7_0_M_AXI_GP0_RREADY,
      S00_AXI_rresp(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      S00_AXI_rvalid => processing_system7_0_M_AXI_GP0_RVALID,
      S00_AXI_wdata(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      S00_AXI_wid(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      S00_AXI_wlast => processing_system7_0_M_AXI_GP0_WLAST,
      S00_AXI_wready => processing_system7_0_M_AXI_GP0_WREADY,
      S00_AXI_wstrb(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      S00_AXI_wvalid => processing_system7_0_M_AXI_GP0_WVALID
    );
rst_ps7_0_100M: component Mayo_sign_with_zynq_rst_ps7_0_100M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_ps7_0_100M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => NLW_rst_ps7_0_100M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_ps7_0_100M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_ps7_0_100M_peripheral_aresetn(0),
      peripheral_reset(0) => rst_ps7_0_100M_peripheral_reset(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK0
    );
xlconcat_0: component Mayo_sign_with_zynq_xlconcat_0_1
     port map (
      In0(1 downto 0) => MAYO_SIGNING_FSM_0_o_err(1 downto 0),
      In1(5 downto 0) => xlconstant_0_dout(5 downto 0),
      dout(7 downto 0) => xlconcat_0_dout(7 downto 0)
    );
xlconstant_0: component Mayo_sign_with_zynq_xlconstant_0_0
     port map (
      dout(5 downto 0) => xlconstant_0_dout(5 downto 0)
    );
end STRUCTURE;
