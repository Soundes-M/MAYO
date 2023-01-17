--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
--Date        : Mon Jan 16 19:54:41 2023
--Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
--Command     : generate_target Mayo_keygen.bd
--Design      : Mayo_keygen
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BRAM_big1_imp_QBI0MO is
  port (
    BRAM_add_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_en : in STD_LOGIC;
    BRAM_add_rst : in STD_LOGIC;
    BRAM_add_rst1 : in STD_LOGIC;
    BRAM_add_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_add_we1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_hash_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_en : in STD_LOGIC;
    BRAM_hash_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_key_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_key_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_key_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_key_en : in STD_LOGIC;
    BRAM_key_rst : in STD_LOGIC;
    BRAM_key_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_lin_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_en : in STD_LOGIC;
    BRAM_lin_rst : in STD_LOGIC;
    BRAM_lin_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_neg_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_en : in STD_LOGIC;
    BRAM_red_rst : in STD_LOGIC;
    BRAM_red_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
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
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC;
    add_control : in STD_LOGIC;
    bram_control : in STD_LOGIC;
    clkb : in STD_LOGIC;
    hash_control : in STD_LOGIC;
    lin_control : in STD_LOGIC;
    red_control : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
end BRAM_big1_imp_QBI0MO;

architecture STRUCTURE of BRAM_big1_imp_QBI0MO is
  component Mayo_keygen_axi_bram_ctrl_0_1 is
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
  end component Mayo_keygen_axi_bram_ctrl_0_1;
  component Mayo_keygen_blk_mem_gen_0_2 is
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
  end component Mayo_keygen_blk_mem_gen_0_2;
  component Mayo_keygen_BIG_BRAM256KDP_0 is
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
  end component Mayo_keygen_BIG_BRAM256KDP_0;
  component Mayo_keygen_arbit_brama1_0 is
  port (
    BRAM_add_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_en : in STD_LOGIC;
    BRAM_add_rst : in STD_LOGIC;
    BRAM_add_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_add_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_en : in STD_LOGIC;
    BRAM_lin_rst : in STD_LOGIC;
    BRAM_lin_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_lin_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_en : in STD_LOGIC;
    BRAM_neg_rst : in STD_LOGIC;
    BRAM_neg_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_neg_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_en : in STD_LOGIC;
    BRAM_red_rst : in STD_LOGIC;
    BRAM_red_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_red_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_key_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_key_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_key_en : in STD_LOGIC;
    BRAM_key_rst : in STD_LOGIC;
    BRAM_key_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_key_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_en : in STD_LOGIC;
    BRAM_sam_rst : in STD_LOGIC;
    BRAM_sam_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_sam_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_en : in STD_LOGIC;
    BRAM_hash_rst : in STD_LOGIC;
    BRAM_hash_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_hash_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_en : out STD_LOGIC;
    BRAM_rst : out STD_LOGIC;
    BRAM_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    add_control : in STD_LOGIC;
    lin_control : in STD_LOGIC;
    neg_control : in STD_LOGIC;
    red_control : in STD_LOGIC;
    sam_control : in STD_LOGIC;
    hash_control : in STD_LOGIC;
    bram_control : in STD_LOGIC
  );
  end component Mayo_keygen_arbit_brama1_0;
  signal BIG_BRAM256KDP_doutb : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_add_addr_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_add_din_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_add_en_1 : STD_LOGIC;
  signal BRAM_add_rst1_1 : STD_LOGIC;
  signal BRAM_add_rst_1 : STD_LOGIC;
  signal BRAM_add_we1_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_add_we_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_key_addr_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_key_din_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_key_en_1 : STD_LOGIC;
  signal BRAM_key_rst_1 : STD_LOGIC;
  signal BRAM_key_we_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_neg_din_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_red_addr_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_red_din_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_red_en_1 : STD_LOGIC;
  signal BRAM_red_rst_1 : STD_LOGIC;
  signal BRAM_red_we_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Conn1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn1_ARLOCK : STD_LOGIC;
  signal Conn1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_ARREADY : STD_LOGIC;
  signal Conn1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_ARVALID : STD_LOGIC;
  signal Conn1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Conn1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn1_AWLOCK : STD_LOGIC;
  signal Conn1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_AWREADY : STD_LOGIC;
  signal Conn1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_AWVALID : STD_LOGIC;
  signal Conn1_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Conn1_BREADY : STD_LOGIC;
  signal Conn1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_BVALID : STD_LOGIC;
  signal Conn1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Conn1_RLAST : STD_LOGIC;
  signal Conn1_RREADY : STD_LOGIC;
  signal Conn1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_RVALID : STD_LOGIC;
  signal Conn1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_WLAST : STD_LOGIC;
  signal Conn1_WREADY : STD_LOGIC;
  signal Conn1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_WVALID : STD_LOGIC;
  signal MAYO_SHAKE_1_BRAMA_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SHAKE_1_BRAMA_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SHAKE_1_BRAMA_en : STD_LOGIC;
  signal MAYO_SHAKE_1_BRAMA_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MAYO_SHAKE_1_o_control : STD_LOGIC;
  signal add_control_1 : STD_LOGIC;
  signal arbit_brama1_BRAM_add_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal arbit_brama1_BRAM_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal arbit_brama1_BRAM_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal arbit_brama1_BRAM_en : STD_LOGIC;
  signal arbit_brama1_BRAM_hash_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal arbit_brama1_BRAM_key_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal arbit_brama1_BRAM_lin_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal arbit_brama1_BRAM_red_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal arbit_brama1_BRAM_rst : STD_LOGIC;
  signal arbit_brama1_BRAM_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_ADDR : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_CLK : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_EN : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_RST : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal bram_control_1 : STD_LOGIC;
  signal clka_1 : STD_LOGIC;
  signal mayo_linear_combinat_0_o_control1a : STD_LOGIC;
  signal mayo_linear_combinat_0_o_mem1a_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_linear_combinat_0_o_mem1a_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_linear_combinat_0_o_mem1a_en : STD_LOGIC;
  signal mayo_linear_combinat_0_o_mem1a_rst : STD_LOGIC;
  signal mayo_linear_combinat_0_o_mem1a_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal red_control_1 : STD_LOGIC;
  signal s_axi_aclk_1 : STD_LOGIC;
  signal s_axi_aresetn_1 : STD_LOGIC;
  signal NLW_BIG_BRAM256KDP_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_BIG_BRAM256KDP_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_BIG_BRAM256KDP1_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_BIG_BRAM256KDP1_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_BIG_BRAM256KDP1_douta_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_BIG_BRAM256KDP1_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_arbit_brama1_BRAM_neg_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_arbit_brama1_BRAM_sam_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute BMM_INFO_ADDRESS_SPACE : string;
  attribute BMM_INFO_ADDRESS_SPACE of axi_bram_ctrl_0 : label is "byte  0x40000000 32 > Mayo_keygen BRAM_big1/BIG_BRAM256KDP";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of axi_bram_ctrl_0 : label is "yes";
begin
  BRAM_add_addr_1(31 downto 0) <= BRAM_add_addr(31 downto 0);
  BRAM_add_din_1(31 downto 0) <= BRAM_add_din(31 downto 0);
  BRAM_add_dout(31 downto 0) <= arbit_brama1_BRAM_add_dout(31 downto 0);
  BRAM_add_en_1 <= BRAM_add_en;
  BRAM_add_rst1_1 <= BRAM_add_rst1;
  BRAM_add_rst_1 <= BRAM_add_rst;
  BRAM_add_we1_1(3 downto 0) <= BRAM_add_we1(3 downto 0);
  BRAM_add_we_1(3 downto 0) <= BRAM_add_we(3 downto 0);
  BRAM_hash_dout(31 downto 0) <= arbit_brama1_BRAM_hash_dout(31 downto 0);
  BRAM_key_addr_1(31 downto 0) <= BRAM_key_addr(31 downto 0);
  BRAM_key_din_1(31 downto 0) <= BRAM_key_din(31 downto 0);
  BRAM_key_dout(31 downto 0) <= arbit_brama1_BRAM_key_dout(31 downto 0);
  BRAM_key_en_1 <= BRAM_key_en;
  BRAM_key_rst_1 <= BRAM_key_rst;
  BRAM_key_we_1(3 downto 0) <= BRAM_key_we(3 downto 0);
  BRAM_lin_dout(31 downto 0) <= arbit_brama1_BRAM_lin_dout(31 downto 0);
  BRAM_neg_din_1(31 downto 0) <= BRAM_neg_din(31 downto 0);
  BRAM_red_addr_1(31 downto 0) <= BRAM_red_addr(31 downto 0);
  BRAM_red_din_1(31 downto 0) <= BRAM_red_din(31 downto 0);
  BRAM_red_dout(31 downto 0) <= arbit_brama1_BRAM_red_dout(31 downto 0);
  BRAM_red_en_1 <= BRAM_red_en;
  BRAM_red_rst_1 <= BRAM_red_rst;
  BRAM_red_we_1(3 downto 0) <= BRAM_red_we(3 downto 0);
  Conn1_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  Conn1_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  Conn1_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  Conn1_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  Conn1_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  Conn1_ARLOCK <= S_AXI_arlock;
  Conn1_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  Conn1_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  Conn1_ARVALID <= S_AXI_arvalid;
  Conn1_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  Conn1_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  Conn1_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  Conn1_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  Conn1_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  Conn1_AWLOCK <= S_AXI_awlock;
  Conn1_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  Conn1_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  Conn1_AWVALID <= S_AXI_awvalid;
  Conn1_BREADY <= S_AXI_bready;
  Conn1_RREADY <= S_AXI_rready;
  Conn1_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  Conn1_WLAST <= S_AXI_wlast;
  Conn1_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  Conn1_WVALID <= S_AXI_wvalid;
  MAYO_SHAKE_1_BRAMA_addr(31 downto 0) <= BRAM_hash_addr(31 downto 0);
  MAYO_SHAKE_1_BRAMA_din(31 downto 0) <= BRAM_hash_din(31 downto 0);
  MAYO_SHAKE_1_BRAMA_en <= BRAM_hash_en;
  MAYO_SHAKE_1_BRAMA_we(3 downto 0) <= BRAM_hash_we(3 downto 0);
  MAYO_SHAKE_1_o_control <= hash_control;
  S_AXI_arready <= Conn1_ARREADY;
  S_AXI_awready <= Conn1_AWREADY;
  S_AXI_bid(11 downto 0) <= Conn1_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= Conn1_BRESP(1 downto 0);
  S_AXI_bvalid <= Conn1_BVALID;
  S_AXI_rdata(31 downto 0) <= Conn1_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= Conn1_RID(11 downto 0);
  S_AXI_rlast <= Conn1_RLAST;
  S_AXI_rresp(1 downto 0) <= Conn1_RRESP(1 downto 0);
  S_AXI_rvalid <= Conn1_RVALID;
  S_AXI_wready <= Conn1_WREADY;
  add_control_1 <= add_control;
  bram_control_1 <= bram_control;
  clka_1 <= clkb;
  mayo_linear_combinat_0_o_control1a <= lin_control;
  mayo_linear_combinat_0_o_mem1a_addr(31 downto 0) <= BRAM_lin_addr(31 downto 0);
  mayo_linear_combinat_0_o_mem1a_din(31 downto 0) <= BRAM_lin_din(31 downto 0);
  mayo_linear_combinat_0_o_mem1a_en <= BRAM_lin_en;
  mayo_linear_combinat_0_o_mem1a_rst <= BRAM_lin_rst;
  mayo_linear_combinat_0_o_mem1a_we(3 downto 0) <= BRAM_lin_we(3 downto 0);
  red_control_1 <= red_control;
  s_axi_aclk_1 <= s_axi_aclk;
  s_axi_aresetn_1 <= s_axi_aresetn;
BIG_BRAM256KDP: component Mayo_keygen_blk_mem_gen_0_2
     port map (
      addra(31 downto 18) => B"00000000000000",
      addra(17 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(17 downto 0),
      addrb(31 downto 0) => arbit_brama1_BRAM_addr(31 downto 0),
      clka => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      clkb => clka_1,
      dina(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(31 downto 0),
      dinb(31 downto 0) => arbit_brama1_BRAM_din(31 downto 0),
      douta(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
      doutb(31 downto 0) => BIG_BRAM256KDP_doutb(31 downto 0),
      ena => axi_bram_ctrl_0_BRAM_PORTA_EN,
      enb => arbit_brama1_BRAM_en,
      rsta => axi_bram_ctrl_0_BRAM_PORTA_RST,
      rsta_busy => NLW_BIG_BRAM256KDP_rsta_busy_UNCONNECTED,
      rstb => arbit_brama1_BRAM_rst,
      rstb_busy => NLW_BIG_BRAM256KDP_rstb_busy_UNCONNECTED,
      wea(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(3 downto 0),
      web(3 downto 0) => arbit_brama1_BRAM_we(3 downto 0)
    );
BIG_BRAM256KDP1: component Mayo_keygen_BIG_BRAM256KDP_0
     port map (
      addra(31 downto 0) => B"00000000000000000000000000000000",
      addrb(31 downto 0) => B"00000000000000000000000000000000",
      clka => '0',
      clkb => '0',
      dina(31 downto 0) => B"00000000000000000000000000001000",
      dinb(31 downto 0) => B"00000000000000000000000000001000",
      douta(31 downto 0) => NLW_BIG_BRAM256KDP1_douta_UNCONNECTED(31 downto 0),
      doutb(31 downto 0) => NLW_BIG_BRAM256KDP1_doutb_UNCONNECTED(31 downto 0),
      ena => '0',
      enb => '0',
      rsta => '0',
      rsta_busy => NLW_BIG_BRAM256KDP1_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_BIG_BRAM256KDP1_rstb_busy_UNCONNECTED,
      wea(3 downto 0) => B"0000",
      web(3 downto 0) => B"0000"
    );
arbit_brama1: component Mayo_keygen_arbit_brama1_0
     port map (
      BRAM_add_addr(31 downto 0) => BRAM_add_addr_1(31 downto 0),
      BRAM_add_din(31 downto 0) => BRAM_add_din_1(31 downto 0),
      BRAM_add_dout(31 downto 0) => arbit_brama1_BRAM_add_dout(31 downto 0),
      BRAM_add_en => BRAM_add_en_1,
      BRAM_add_rst => BRAM_add_rst1_1,
      BRAM_add_we(3 downto 0) => BRAM_add_we1_1(3 downto 0),
      BRAM_addr(31 downto 0) => arbit_brama1_BRAM_addr(31 downto 0),
      BRAM_din(31 downto 0) => arbit_brama1_BRAM_din(31 downto 0),
      BRAM_dout(31 downto 0) => BIG_BRAM256KDP_doutb(31 downto 0),
      BRAM_en => arbit_brama1_BRAM_en,
      BRAM_hash_addr(31 downto 0) => MAYO_SHAKE_1_BRAMA_addr(31 downto 0),
      BRAM_hash_din(31 downto 0) => MAYO_SHAKE_1_BRAMA_din(31 downto 0),
      BRAM_hash_dout(31 downto 0) => arbit_brama1_BRAM_hash_dout(31 downto 0),
      BRAM_hash_en => MAYO_SHAKE_1_BRAMA_en,
      BRAM_hash_rst => BRAM_add_rst_1,
      BRAM_hash_we(3 downto 0) => MAYO_SHAKE_1_BRAMA_we(3 downto 0),
      BRAM_key_addr(31 downto 0) => BRAM_key_addr_1(31 downto 0),
      BRAM_key_din(31 downto 0) => BRAM_key_din_1(31 downto 0),
      BRAM_key_dout(31 downto 0) => arbit_brama1_BRAM_key_dout(31 downto 0),
      BRAM_key_en => BRAM_key_en_1,
      BRAM_key_rst => BRAM_key_rst_1,
      BRAM_key_we(3 downto 0) => BRAM_key_we_1(3 downto 0),
      BRAM_lin_addr(31 downto 0) => mayo_linear_combinat_0_o_mem1a_addr(31 downto 0),
      BRAM_lin_din(31 downto 0) => mayo_linear_combinat_0_o_mem1a_din(31 downto 0),
      BRAM_lin_dout(31 downto 0) => arbit_brama1_BRAM_lin_dout(31 downto 0),
      BRAM_lin_en => mayo_linear_combinat_0_o_mem1a_en,
      BRAM_lin_rst => mayo_linear_combinat_0_o_mem1a_rst,
      BRAM_lin_we(3 downto 0) => mayo_linear_combinat_0_o_mem1a_we(3 downto 0),
      BRAM_neg_addr(31 downto 0) => BRAM_neg_din_1(31 downto 0),
      BRAM_neg_din(31 downto 0) => BRAM_neg_din_1(31 downto 0),
      BRAM_neg_dout(31 downto 0) => NLW_arbit_brama1_BRAM_neg_dout_UNCONNECTED(31 downto 0),
      BRAM_neg_en => BRAM_add_rst_1,
      BRAM_neg_rst => BRAM_add_rst_1,
      BRAM_neg_we(3 downto 0) => BRAM_add_we_1(3 downto 0),
      BRAM_red_addr(31 downto 0) => BRAM_red_addr_1(31 downto 0),
      BRAM_red_din(31 downto 0) => BRAM_red_din_1(31 downto 0),
      BRAM_red_dout(31 downto 0) => arbit_brama1_BRAM_red_dout(31 downto 0),
      BRAM_red_en => BRAM_red_en_1,
      BRAM_red_rst => BRAM_red_rst_1,
      BRAM_red_we(3 downto 0) => BRAM_red_we_1(3 downto 0),
      BRAM_rst => arbit_brama1_BRAM_rst,
      BRAM_sam_addr(31 downto 0) => BRAM_neg_din_1(31 downto 0),
      BRAM_sam_din(31 downto 0) => BRAM_neg_din_1(31 downto 0),
      BRAM_sam_dout(31 downto 0) => NLW_arbit_brama1_BRAM_sam_dout_UNCONNECTED(31 downto 0),
      BRAM_sam_en => BRAM_add_rst_1,
      BRAM_sam_rst => BRAM_add_rst_1,
      BRAM_sam_we(3 downto 0) => BRAM_add_we_1(3 downto 0),
      BRAM_we(3 downto 0) => arbit_brama1_BRAM_we(3 downto 0),
      add_control => add_control_1,
      bram_control => bram_control_1,
      hash_control => MAYO_SHAKE_1_o_control,
      lin_control => mayo_linear_combinat_0_o_control1a,
      neg_control => BRAM_add_rst_1,
      red_control => red_control_1,
      sam_control => BRAM_add_rst_1
    );
axi_bram_ctrl_0: component Mayo_keygen_axi_bram_ctrl_0_1
     port map (
      bram_addr_a(17 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(17 downto 0),
      bram_clk_a => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      bram_en_a => axi_bram_ctrl_0_BRAM_PORTA_EN,
      bram_rddata_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
      bram_rst_a => axi_bram_ctrl_0_BRAM_PORTA_RST,
      bram_we_a(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(3 downto 0),
      bram_wrdata_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(31 downto 0),
      s_axi_aclk => s_axi_aclk_1,
      s_axi_araddr(17 downto 0) => Conn1_ARADDR(17 downto 0),
      s_axi_arburst(1 downto 0) => Conn1_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => Conn1_ARCACHE(3 downto 0),
      s_axi_aresetn => s_axi_aresetn_1,
      s_axi_arid(11 downto 0) => Conn1_ARID(11 downto 0),
      s_axi_arlen(7 downto 0) => Conn1_ARLEN(7 downto 0),
      s_axi_arlock => Conn1_ARLOCK,
      s_axi_arprot(2 downto 0) => Conn1_ARPROT(2 downto 0),
      s_axi_arready => Conn1_ARREADY,
      s_axi_arsize(2 downto 0) => Conn1_ARSIZE(2 downto 0),
      s_axi_arvalid => Conn1_ARVALID,
      s_axi_awaddr(17 downto 0) => Conn1_AWADDR(17 downto 0),
      s_axi_awburst(1 downto 0) => Conn1_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => Conn1_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => Conn1_AWID(11 downto 0),
      s_axi_awlen(7 downto 0) => Conn1_AWLEN(7 downto 0),
      s_axi_awlock => Conn1_AWLOCK,
      s_axi_awprot(2 downto 0) => Conn1_AWPROT(2 downto 0),
      s_axi_awready => Conn1_AWREADY,
      s_axi_awsize(2 downto 0) => Conn1_AWSIZE(2 downto 0),
      s_axi_awvalid => Conn1_AWVALID,
      s_axi_bid(11 downto 0) => Conn1_BID(11 downto 0),
      s_axi_bready => Conn1_BREADY,
      s_axi_bresp(1 downto 0) => Conn1_BRESP(1 downto 0),
      s_axi_bvalid => Conn1_BVALID,
      s_axi_rdata(31 downto 0) => Conn1_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => Conn1_RID(11 downto 0),
      s_axi_rlast => Conn1_RLAST,
      s_axi_rready => Conn1_RREADY,
      s_axi_rresp(1 downto 0) => Conn1_RRESP(1 downto 0),
      s_axi_rvalid => Conn1_RVALID,
      s_axi_wdata(31 downto 0) => Conn1_WDATA(31 downto 0),
      s_axi_wlast => Conn1_WLAST,
      s_axi_wready => Conn1_WREADY,
      s_axi_wstrb(3 downto 0) => Conn1_WSTRB(3 downto 0),
      s_axi_wvalid => Conn1_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BRAM_small_imp_EVICZV is
  port (
    BRAM_add_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_addr1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_din1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_dout1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_en : in STD_LOGIC;
    BRAM_add_en1 : in STD_LOGIC;
    BRAM_add_rst : in STD_LOGIC;
    BRAM_add_rst1 : in STD_LOGIC;
    BRAM_add_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_add_we1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_hash_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_en : in STD_LOGIC;
    BRAM_hash_we1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_key_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_key_addr1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_key_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_key_din1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_key_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_key_dout1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_key_en : in STD_LOGIC;
    BRAM_key_en1 : in STD_LOGIC;
    BRAM_key_rst : in STD_LOGIC;
    BRAM_key_rst1 : in STD_LOGIC;
    BRAM_key_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_key_we1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_lin_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_addr1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_din1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_dout1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_en : in STD_LOGIC;
    BRAM_lin_en1 : in STD_LOGIC;
    BRAM_lin_rst : in STD_LOGIC;
    BRAM_lin_rst1 : in STD_LOGIC;
    BRAM_lin_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_lin_we1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_neg_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_en : in STD_LOGIC;
    BRAM_neg_rst : in STD_LOGIC;
    BRAM_neg_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_red_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_en : in STD_LOGIC;
    BRAM_red_rst : in STD_LOGIC;
    BRAM_red_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_sam_addr1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_din1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_dout1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_en1 : in STD_LOGIC;
    BRAM_sam_rst1 : in STD_LOGIC;
    BRAM_sam_we1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Zero0 : in STD_LOGIC;
    Zero_32 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Zero_4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    add_control : in STD_LOGIC;
    add_control1 : in STD_LOGIC;
    bram_control : in STD_LOGIC;
    bram_control1 : in STD_LOGIC;
    clkb : in STD_LOGIC;
    hash_control : in STD_LOGIC;
    lin_control : in STD_LOGIC;
    lin_control1 : in STD_LOGIC;
    neg_control : in STD_LOGIC;
    red_control : in STD_LOGIC;
    sam_control1 : in STD_LOGIC
  );
end BRAM_small_imp_EVICZV;

architecture STRUCTURE of BRAM_small_imp_EVICZV is
  component Mayo_keygen_Small_BRAM8k_0 is
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
  end component Mayo_keygen_Small_BRAM8k_0;
  component Mayo_keygen_arbit_brama0_0 is
  port (
    BRAM_add_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_en : in STD_LOGIC;
    BRAM_add_rst : in STD_LOGIC;
    BRAM_add_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_add_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_en : in STD_LOGIC;
    BRAM_lin_rst : in STD_LOGIC;
    BRAM_lin_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_lin_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_en : in STD_LOGIC;
    BRAM_neg_rst : in STD_LOGIC;
    BRAM_neg_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_neg_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_en : in STD_LOGIC;
    BRAM_red_rst : in STD_LOGIC;
    BRAM_red_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_red_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_key_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_key_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_key_en : in STD_LOGIC;
    BRAM_key_rst : in STD_LOGIC;
    BRAM_key_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_key_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_en : in STD_LOGIC;
    BRAM_sam_rst : in STD_LOGIC;
    BRAM_sam_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_sam_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_en : in STD_LOGIC;
    BRAM_hash_rst : in STD_LOGIC;
    BRAM_hash_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_hash_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_en : out STD_LOGIC;
    BRAM_rst : out STD_LOGIC;
    BRAM_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    add_control : in STD_LOGIC;
    lin_control : in STD_LOGIC;
    neg_control : in STD_LOGIC;
    red_control : in STD_LOGIC;
    sam_control : in STD_LOGIC;
    hash_control : in STD_LOGIC;
    bram_control : in STD_LOGIC
  );
  end component Mayo_keygen_arbit_brama0_0;
  component Mayo_keygen_arbit_bramb0_0 is
  port (
    BRAM_add_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_add_en : in STD_LOGIC;
    BRAM_add_rst : in STD_LOGIC;
    BRAM_add_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_add_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_lin_en : in STD_LOGIC;
    BRAM_lin_rst : in STD_LOGIC;
    BRAM_lin_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_lin_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_neg_en : in STD_LOGIC;
    BRAM_neg_rst : in STD_LOGIC;
    BRAM_neg_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_neg_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_red_en : in STD_LOGIC;
    BRAM_red_rst : in STD_LOGIC;
    BRAM_red_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_red_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_key_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_key_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_key_en : in STD_LOGIC;
    BRAM_key_rst : in STD_LOGIC;
    BRAM_key_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_key_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_sam_en : in STD_LOGIC;
    BRAM_sam_rst : in STD_LOGIC;
    BRAM_sam_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_sam_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_hash_en : in STD_LOGIC;
    BRAM_hash_rst : in STD_LOGIC;
    BRAM_hash_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_hash_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_en : out STD_LOGIC;
    BRAM_rst : out STD_LOGIC;
    BRAM_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    add_control : in STD_LOGIC;
    lin_control : in STD_LOGIC;
    neg_control : in STD_LOGIC;
    red_control : in STD_LOGIC;
    sam_control : in STD_LOGIC;
    hash_control : in STD_LOGIC;
    bram_control : in STD_LOGIC
  );
  end component Mayo_keygen_arbit_bramb0_0;
  signal AXI_LITE_Mayo_Keygen_0_o_mem0a_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXI_LITE_Mayo_Keygen_0_o_mem0a_control : STD_LOGIC;
  signal AXI_LITE_Mayo_Keygen_0_o_mem0a_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXI_LITE_Mayo_Keygen_0_o_mem0a_en : STD_LOGIC;
  signal AXI_LITE_Mayo_Keygen_0_o_mem0a_rst : STD_LOGIC;
  signal AXI_LITE_Mayo_Keygen_0_o_mem0a_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_add_addr1_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_add_din1_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_add_en1_1 : STD_LOGIC;
  signal BRAM_add_rst1_1 : STD_LOGIC;
  signal BRAM_add_we1_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_hash_addr_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_hash_din_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_hash_en_1 : STD_LOGIC;
  signal BRAM_hash_we1_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_key_addr1_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_key_din1_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_key_en1_1 : STD_LOGIC;
  signal BRAM_key_rst1_1 : STD_LOGIC;
  signal BRAM_key_we1_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Small_BRAM8k_douta : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Small_BRAM8k_doutb : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Zero0_1 : STD_LOGIC;
  signal Zero_32_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Zero_4_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal add_control1_1 : STD_LOGIC;
  signal arbit_brama0_BRAM_add_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal arbit_brama0_BRAM_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal arbit_brama0_BRAM_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal arbit_brama0_BRAM_en : STD_LOGIC;
  signal arbit_brama0_BRAM_hash_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal arbit_brama0_BRAM_key_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal arbit_brama0_BRAM_lin_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal arbit_brama0_BRAM_neg_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal arbit_brama0_BRAM_red_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal arbit_brama0_BRAM_rst : STD_LOGIC;
  signal arbit_brama0_BRAM_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal arbit_bramb0_BRAM_add_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal arbit_bramb0_BRAM_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal arbit_bramb0_BRAM_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal arbit_bramb0_BRAM_en : STD_LOGIC;
  signal arbit_bramb0_BRAM_key_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal arbit_bramb0_BRAM_rst : STD_LOGIC;
  signal arbit_bramb0_BRAM_sam_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal arbit_bramb0_BRAM_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal bram_control1_1 : STD_LOGIC;
  signal hash_control_1 : STD_LOGIC;
  signal mayo_add_vectors_0_o_controla : STD_LOGIC;
  signal mayo_add_vectors_0_o_mema_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_0_o_mema_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_0_o_mema_en : STD_LOGIC;
  signal mayo_add_vectors_0_o_mema_rst : STD_LOGIC;
  signal mayo_add_vectors_0_o_mema_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_bram_arbiter_1_BRAM_lin_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_linear_combinat_0_o_control0a : STD_LOGIC;
  signal mayo_linear_combinat_0_o_control0b : STD_LOGIC;
  signal mayo_linear_combinat_0_o_mem0a_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_linear_combinat_0_o_mem0a_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_linear_combinat_0_o_mem0a_en : STD_LOGIC;
  signal mayo_linear_combinat_0_o_mem0a_rst : STD_LOGIC;
  signal mayo_linear_combinat_0_o_mem0a_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_linear_combinat_0_o_mem0b_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_linear_combinat_0_o_mem0b_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_linear_combinat_0_o_mem0b_en : STD_LOGIC;
  signal mayo_linear_combinat_0_o_mem0b_rst : STD_LOGIC;
  signal mayo_linear_combinat_0_o_mem0b_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_negate_0_o_addrb : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_negate_0_o_control : STD_LOGIC;
  signal mayo_negate_0_o_dinb : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_negate_0_o_enb : STD_LOGIC;
  signal mayo_negate_0_o_rstb : STD_LOGIC;
  signal mayo_negate_0_o_web : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_reduce_0_o_addrb : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_0_o_control : STD_LOGIC;
  signal mayo_reduce_0_o_dinb : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_0_o_enb : STD_LOGIC;
  signal mayo_reduce_0_o_rstb : STD_LOGIC;
  signal mayo_reduce_0_o_web : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_sample_oil_space_0_o_memb_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_space_0_o_memb_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_space_0_o_memb_en : STD_LOGIC;
  signal mayo_sample_oil_space_0_o_memb_rst : STD_LOGIC;
  signal mayo_sample_oil_space_0_o_memb_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal sam_control1_1 : STD_LOGIC;
  signal NLW_Small_BRAM8k_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_Small_BRAM8k_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_arbit_brama0_BRAM_sam_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_arbit_bramb0_BRAM_hash_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_arbit_bramb0_BRAM_neg_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_arbit_bramb0_BRAM_red_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  AXI_LITE_Mayo_Keygen_0_o_mem0a_addr(31 downto 0) <= BRAM_key_addr(31 downto 0);
  AXI_LITE_Mayo_Keygen_0_o_mem0a_control <= bram_control;
  AXI_LITE_Mayo_Keygen_0_o_mem0a_din(31 downto 0) <= BRAM_key_din(31 downto 0);
  AXI_LITE_Mayo_Keygen_0_o_mem0a_en <= BRAM_key_en;
  AXI_LITE_Mayo_Keygen_0_o_mem0a_rst <= BRAM_key_rst;
  AXI_LITE_Mayo_Keygen_0_o_mem0a_we(3 downto 0) <= BRAM_key_we(3 downto 0);
  BRAM_add_addr1_1(31 downto 0) <= BRAM_add_addr1(31 downto 0);
  BRAM_add_din1_1(31 downto 0) <= BRAM_add_din1(31 downto 0);
  BRAM_add_dout(31 downto 0) <= arbit_brama0_BRAM_add_dout(31 downto 0);
  BRAM_add_dout1(31 downto 0) <= arbit_bramb0_BRAM_add_dout(31 downto 0);
  BRAM_add_en1_1 <= BRAM_add_en1;
  BRAM_add_rst1_1 <= BRAM_add_rst1;
  BRAM_add_we1_1(3 downto 0) <= BRAM_add_we1(3 downto 0);
  BRAM_hash_addr_1(31 downto 0) <= BRAM_hash_addr(31 downto 0);
  BRAM_hash_din_1(31 downto 0) <= BRAM_hash_din(31 downto 0);
  BRAM_hash_dout(31 downto 0) <= arbit_brama0_BRAM_hash_dout(31 downto 0);
  BRAM_hash_en_1 <= BRAM_hash_en;
  BRAM_hash_we1_1(3 downto 0) <= BRAM_hash_we1(3 downto 0);
  BRAM_key_addr1_1(31 downto 0) <= BRAM_key_addr1(31 downto 0);
  BRAM_key_din1_1(31 downto 0) <= BRAM_key_din1(31 downto 0);
  BRAM_key_dout(31 downto 0) <= arbit_brama0_BRAM_key_dout(31 downto 0);
  BRAM_key_dout1(31 downto 0) <= arbit_bramb0_BRAM_key_dout(31 downto 0);
  BRAM_key_en1_1 <= BRAM_key_en1;
  BRAM_key_rst1_1 <= BRAM_key_rst1;
  BRAM_key_we1_1(3 downto 0) <= BRAM_key_we1(3 downto 0);
  BRAM_lin_dout(31 downto 0) <= arbit_brama0_BRAM_lin_dout(31 downto 0);
  BRAM_lin_dout1(31 downto 0) <= mayo_bram_arbiter_1_BRAM_lin_dout(31 downto 0);
  BRAM_neg_dout(31 downto 0) <= arbit_brama0_BRAM_neg_dout(31 downto 0);
  BRAM_red_dout(31 downto 0) <= arbit_brama0_BRAM_red_dout(31 downto 0);
  BRAM_sam_dout1(31 downto 0) <= arbit_bramb0_BRAM_sam_dout(31 downto 0);
  Zero0_1 <= Zero0;
  Zero_32_1(31 downto 0) <= Zero_32(31 downto 0);
  Zero_4_1(3 downto 0) <= Zero_4(3 downto 0);
  add_control1_1 <= add_control1;
  bram_control1_1 <= bram_control1;
  hash_control_1 <= hash_control;
  mayo_add_vectors_0_o_controla <= add_control;
  mayo_add_vectors_0_o_mema_addr(31 downto 0) <= BRAM_add_addr(31 downto 0);
  mayo_add_vectors_0_o_mema_din(31 downto 0) <= BRAM_add_din(31 downto 0);
  mayo_add_vectors_0_o_mema_en <= BRAM_add_en;
  mayo_add_vectors_0_o_mema_rst <= BRAM_add_rst;
  mayo_add_vectors_0_o_mema_we(3 downto 0) <= BRAM_add_we(3 downto 0);
  mayo_linear_combinat_0_o_control0a <= lin_control;
  mayo_linear_combinat_0_o_control0b <= lin_control1;
  mayo_linear_combinat_0_o_mem0a_addr(31 downto 0) <= BRAM_lin_addr(31 downto 0);
  mayo_linear_combinat_0_o_mem0a_din(31 downto 0) <= BRAM_lin_din(31 downto 0);
  mayo_linear_combinat_0_o_mem0a_en <= BRAM_lin_en;
  mayo_linear_combinat_0_o_mem0a_rst <= BRAM_lin_rst;
  mayo_linear_combinat_0_o_mem0a_we(3 downto 0) <= BRAM_lin_we(3 downto 0);
  mayo_linear_combinat_0_o_mem0b_addr(31 downto 0) <= BRAM_lin_addr1(31 downto 0);
  mayo_linear_combinat_0_o_mem0b_din(31 downto 0) <= BRAM_lin_din1(31 downto 0);
  mayo_linear_combinat_0_o_mem0b_en <= BRAM_lin_en1;
  mayo_linear_combinat_0_o_mem0b_rst <= BRAM_lin_rst1;
  mayo_linear_combinat_0_o_mem0b_we(3 downto 0) <= BRAM_lin_we1(3 downto 0);
  mayo_negate_0_o_addrb(31 downto 0) <= BRAM_neg_addr(31 downto 0);
  mayo_negate_0_o_control <= neg_control;
  mayo_negate_0_o_dinb(31 downto 0) <= BRAM_neg_din(31 downto 0);
  mayo_negate_0_o_enb <= BRAM_neg_en;
  mayo_negate_0_o_rstb <= BRAM_neg_rst;
  mayo_negate_0_o_web(3 downto 0) <= BRAM_neg_we(3 downto 0);
  mayo_reduce_0_o_addrb(31 downto 0) <= BRAM_red_addr(31 downto 0);
  mayo_reduce_0_o_control <= red_control;
  mayo_reduce_0_o_dinb(31 downto 0) <= BRAM_red_din(31 downto 0);
  mayo_reduce_0_o_enb <= BRAM_red_en;
  mayo_reduce_0_o_rstb <= BRAM_red_rst;
  mayo_reduce_0_o_web(3 downto 0) <= BRAM_red_we(3 downto 0);
  mayo_sample_oil_space_0_o_memb_addr(31 downto 0) <= BRAM_sam_addr1(31 downto 0);
  mayo_sample_oil_space_0_o_memb_din(31 downto 0) <= BRAM_sam_din1(31 downto 0);
  mayo_sample_oil_space_0_o_memb_en <= BRAM_sam_en1;
  mayo_sample_oil_space_0_o_memb_rst <= BRAM_sam_rst1;
  mayo_sample_oil_space_0_o_memb_we(3 downto 0) <= BRAM_sam_we1(3 downto 0);
  processing_system7_0_FCLK_CLK0 <= clkb;
  sam_control1_1 <= sam_control1;
Small_BRAM8k: component Mayo_keygen_Small_BRAM8k_0
     port map (
      addra(31 downto 0) => arbit_brama0_BRAM_addr(31 downto 0),
      addrb(31 downto 0) => arbit_bramb0_BRAM_addr(31 downto 0),
      clka => processing_system7_0_FCLK_CLK0,
      clkb => processing_system7_0_FCLK_CLK0,
      dina(31 downto 0) => arbit_brama0_BRAM_din(31 downto 0),
      dinb(31 downto 0) => arbit_bramb0_BRAM_din(31 downto 0),
      douta(31 downto 0) => Small_BRAM8k_douta(31 downto 0),
      doutb(31 downto 0) => Small_BRAM8k_doutb(31 downto 0),
      ena => arbit_brama0_BRAM_en,
      enb => arbit_bramb0_BRAM_en,
      rsta => arbit_brama0_BRAM_rst,
      rsta_busy => NLW_Small_BRAM8k_rsta_busy_UNCONNECTED,
      rstb => arbit_bramb0_BRAM_rst,
      rstb_busy => NLW_Small_BRAM8k_rstb_busy_UNCONNECTED,
      wea(3 downto 0) => arbit_brama0_BRAM_we(3 downto 0),
      web(3 downto 0) => arbit_bramb0_BRAM_we(3 downto 0)
    );
arbit_brama0: component Mayo_keygen_arbit_brama0_0
     port map (
      BRAM_add_addr(31 downto 0) => mayo_add_vectors_0_o_mema_addr(31 downto 0),
      BRAM_add_din(31 downto 0) => mayo_add_vectors_0_o_mema_din(31 downto 0),
      BRAM_add_dout(31 downto 0) => arbit_brama0_BRAM_add_dout(31 downto 0),
      BRAM_add_en => mayo_add_vectors_0_o_mema_en,
      BRAM_add_rst => mayo_add_vectors_0_o_mema_rst,
      BRAM_add_we(3 downto 0) => mayo_add_vectors_0_o_mema_we(3 downto 0),
      BRAM_addr(31 downto 0) => arbit_brama0_BRAM_addr(31 downto 0),
      BRAM_din(31 downto 0) => arbit_brama0_BRAM_din(31 downto 0),
      BRAM_dout(31 downto 0) => Small_BRAM8k_douta(31 downto 0),
      BRAM_en => arbit_brama0_BRAM_en,
      BRAM_hash_addr(31 downto 0) => BRAM_hash_addr_1(31 downto 0),
      BRAM_hash_din(31 downto 0) => BRAM_hash_din_1(31 downto 0),
      BRAM_hash_dout(31 downto 0) => arbit_brama0_BRAM_hash_dout(31 downto 0),
      BRAM_hash_en => BRAM_hash_en_1,
      BRAM_hash_rst => Zero0_1,
      BRAM_hash_we(3 downto 0) => BRAM_hash_we1_1(3 downto 0),
      BRAM_key_addr(31 downto 0) => AXI_LITE_Mayo_Keygen_0_o_mem0a_addr(31 downto 0),
      BRAM_key_din(31 downto 0) => AXI_LITE_Mayo_Keygen_0_o_mem0a_din(31 downto 0),
      BRAM_key_dout(31 downto 0) => arbit_brama0_BRAM_key_dout(31 downto 0),
      BRAM_key_en => AXI_LITE_Mayo_Keygen_0_o_mem0a_en,
      BRAM_key_rst => AXI_LITE_Mayo_Keygen_0_o_mem0a_rst,
      BRAM_key_we(3 downto 0) => AXI_LITE_Mayo_Keygen_0_o_mem0a_we(3 downto 0),
      BRAM_lin_addr(31 downto 0) => mayo_linear_combinat_0_o_mem0a_addr(31 downto 0),
      BRAM_lin_din(31 downto 0) => mayo_linear_combinat_0_o_mem0a_din(31 downto 0),
      BRAM_lin_dout(31 downto 0) => arbit_brama0_BRAM_lin_dout(31 downto 0),
      BRAM_lin_en => mayo_linear_combinat_0_o_mem0a_en,
      BRAM_lin_rst => mayo_linear_combinat_0_o_mem0a_rst,
      BRAM_lin_we(3 downto 0) => mayo_linear_combinat_0_o_mem0a_we(3 downto 0),
      BRAM_neg_addr(31 downto 0) => mayo_negate_0_o_addrb(31 downto 0),
      BRAM_neg_din(31 downto 0) => mayo_negate_0_o_dinb(31 downto 0),
      BRAM_neg_dout(31 downto 0) => arbit_brama0_BRAM_neg_dout(31 downto 0),
      BRAM_neg_en => mayo_negate_0_o_enb,
      BRAM_neg_rst => mayo_negate_0_o_rstb,
      BRAM_neg_we(3 downto 0) => mayo_negate_0_o_web(3 downto 0),
      BRAM_red_addr(31 downto 0) => mayo_reduce_0_o_addrb(31 downto 0),
      BRAM_red_din(31 downto 0) => mayo_reduce_0_o_dinb(31 downto 0),
      BRAM_red_dout(31 downto 0) => arbit_brama0_BRAM_red_dout(31 downto 0),
      BRAM_red_en => mayo_reduce_0_o_enb,
      BRAM_red_rst => mayo_reduce_0_o_rstb,
      BRAM_red_we(3 downto 0) => mayo_reduce_0_o_web(3 downto 0),
      BRAM_rst => arbit_brama0_BRAM_rst,
      BRAM_sam_addr(31 downto 0) => Zero_32_1(31 downto 0),
      BRAM_sam_din(31 downto 0) => Zero_32_1(31 downto 0),
      BRAM_sam_dout(31 downto 0) => NLW_arbit_brama0_BRAM_sam_dout_UNCONNECTED(31 downto 0),
      BRAM_sam_en => Zero0_1,
      BRAM_sam_rst => Zero0_1,
      BRAM_sam_we(3 downto 0) => Zero_4_1(3 downto 0),
      BRAM_we(3 downto 0) => arbit_brama0_BRAM_we(3 downto 0),
      add_control => mayo_add_vectors_0_o_controla,
      bram_control => AXI_LITE_Mayo_Keygen_0_o_mem0a_control,
      hash_control => hash_control_1,
      lin_control => mayo_linear_combinat_0_o_control0a,
      neg_control => mayo_negate_0_o_control,
      red_control => mayo_reduce_0_o_control,
      sam_control => Zero0_1
    );
arbit_bramb0: component Mayo_keygen_arbit_bramb0_0
     port map (
      BRAM_add_addr(31 downto 0) => BRAM_add_addr1_1(31 downto 0),
      BRAM_add_din(31 downto 0) => BRAM_add_din1_1(31 downto 0),
      BRAM_add_dout(31 downto 0) => arbit_bramb0_BRAM_add_dout(31 downto 0),
      BRAM_add_en => BRAM_add_en1_1,
      BRAM_add_rst => BRAM_add_rst1_1,
      BRAM_add_we(3 downto 0) => BRAM_add_we1_1(3 downto 0),
      BRAM_addr(31 downto 0) => arbit_bramb0_BRAM_addr(31 downto 0),
      BRAM_din(31 downto 0) => arbit_bramb0_BRAM_din(31 downto 0),
      BRAM_dout(31 downto 0) => Small_BRAM8k_doutb(31 downto 0),
      BRAM_en => arbit_bramb0_BRAM_en,
      BRAM_hash_addr(31 downto 0) => Zero_32_1(31 downto 0),
      BRAM_hash_din(31 downto 0) => Zero_32_1(31 downto 0),
      BRAM_hash_dout(31 downto 0) => NLW_arbit_bramb0_BRAM_hash_dout_UNCONNECTED(31 downto 0),
      BRAM_hash_en => Zero0_1,
      BRAM_hash_rst => Zero0_1,
      BRAM_hash_we(3 downto 0) => Zero_4_1(3 downto 0),
      BRAM_key_addr(31 downto 0) => BRAM_key_addr1_1(31 downto 0),
      BRAM_key_din(31 downto 0) => BRAM_key_din1_1(31 downto 0),
      BRAM_key_dout(31 downto 0) => arbit_bramb0_BRAM_key_dout(31 downto 0),
      BRAM_key_en => BRAM_key_en1_1,
      BRAM_key_rst => BRAM_key_rst1_1,
      BRAM_key_we(3 downto 0) => BRAM_key_we1_1(3 downto 0),
      BRAM_lin_addr(31 downto 0) => mayo_linear_combinat_0_o_mem0b_addr(31 downto 0),
      BRAM_lin_din(31 downto 0) => mayo_linear_combinat_0_o_mem0b_din(31 downto 0),
      BRAM_lin_dout(31 downto 0) => mayo_bram_arbiter_1_BRAM_lin_dout(31 downto 0),
      BRAM_lin_en => mayo_linear_combinat_0_o_mem0b_en,
      BRAM_lin_rst => mayo_linear_combinat_0_o_mem0b_rst,
      BRAM_lin_we(3 downto 0) => mayo_linear_combinat_0_o_mem0b_we(3 downto 0),
      BRAM_neg_addr(31 downto 0) => Zero_32_1(31 downto 0),
      BRAM_neg_din(31 downto 0) => Zero_32_1(31 downto 0),
      BRAM_neg_dout(31 downto 0) => NLW_arbit_bramb0_BRAM_neg_dout_UNCONNECTED(31 downto 0),
      BRAM_neg_en => Zero0_1,
      BRAM_neg_rst => Zero0_1,
      BRAM_neg_we(3 downto 0) => Zero_4_1(3 downto 0),
      BRAM_red_addr(31 downto 0) => Zero_32_1(31 downto 0),
      BRAM_red_din(31 downto 0) => Zero_32_1(31 downto 0),
      BRAM_red_dout(31 downto 0) => NLW_arbit_bramb0_BRAM_red_dout_UNCONNECTED(31 downto 0),
      BRAM_red_en => Zero0_1,
      BRAM_red_rst => Zero0_1,
      BRAM_red_we(3 downto 0) => Zero_4_1(3 downto 0),
      BRAM_rst => arbit_bramb0_BRAM_rst,
      BRAM_sam_addr(31 downto 0) => mayo_sample_oil_space_0_o_memb_addr(31 downto 0),
      BRAM_sam_din(31 downto 0) => mayo_sample_oil_space_0_o_memb_din(31 downto 0),
      BRAM_sam_dout(31 downto 0) => arbit_bramb0_BRAM_sam_dout(31 downto 0),
      BRAM_sam_en => mayo_sample_oil_space_0_o_memb_en,
      BRAM_sam_rst => mayo_sample_oil_space_0_o_memb_rst,
      BRAM_sam_we(3 downto 0) => mayo_sample_oil_space_0_o_memb_we(3 downto 0),
      BRAM_we(3 downto 0) => arbit_bramb0_BRAM_we(3 downto 0),
      add_control => add_control1_1,
      bram_control => bram_control1_1,
      hash_control => Zero0_1,
      lin_control => mayo_linear_combinat_0_o_control0b,
      neg_control => Zero0_1,
      red_control => Zero0_1,
      sam_control => sam_control1_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TRNG_imp_1KWX5GC is
  port (
    clk : in STD_LOGIC;
    i_trng0_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_trng0_r : in STD_LOGIC;
    i_trng0_w : in STD_LOGIC;
    i_trng1_data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_trng1_r : in STD_LOGIC;
    i_trng1_w : in STD_LOGIC;
    i_trng_sel : in STD_LOGIC;
    o_trng0_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_trng0_done : out STD_LOGIC;
    o_trng0_valid : out STD_LOGIC;
    o_trng1_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_trng1_done : out STD_LOGIC;
    o_trng1_valid : out STD_LOGIC;
    rst : in STD_LOGIC
  );
end TRNG_imp_1KWX5GC;

architecture STRUCTURE of TRNG_imp_1KWX5GC is
  component Mayo_keygen_TRNG_0_0 is
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
  end component Mayo_keygen_TRNG_0_0;
  component Mayo_keygen_mayo_trng_arbiter_0_0 is
  port (
    i_trng_sel : in STD_LOGIC;
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
    o_trng1_done : out STD_LOGIC
  );
  end component Mayo_keygen_mayo_trng_arbiter_0_0;
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
  signal i_trng_sel_1 : STD_LOGIC;
  signal mayo_trng_arbiter_0_o_trng0_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_trng_arbiter_0_o_trng0_done : STD_LOGIC;
  signal mayo_trng_arbiter_0_o_trng0_valid : STD_LOGIC;
  signal mayo_trng_arbiter_0_o_trng1_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_trng_arbiter_0_o_trng1_done : STD_LOGIC;
  signal mayo_trng_arbiter_0_o_trng1_valid : STD_LOGIC;
  signal mayo_trng_arbiter_0_o_trng_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_trng_arbiter_0_o_trng_r : STD_LOGIC;
  signal mayo_trng_arbiter_0_o_trng_w : STD_LOGIC;
  signal rst_1 : STD_LOGIC;
begin
  clk_1 <= clk;
  i_trng0_data_1(31 downto 0) <= i_trng0_data(31 downto 0);
  i_trng0_r_1 <= i_trng0_r;
  i_trng0_w_1 <= i_trng0_w;
  i_trng1_data1_1(31 downto 0) <= i_trng1_data1(31 downto 0);
  i_trng1_r_1 <= i_trng1_r;
  i_trng1_w_1 <= i_trng1_w;
  i_trng_sel_1 <= i_trng_sel;
  o_trng0_data(31 downto 0) <= mayo_trng_arbiter_0_o_trng0_data(31 downto 0);
  o_trng0_done <= mayo_trng_arbiter_0_o_trng0_done;
  o_trng0_valid <= mayo_trng_arbiter_0_o_trng0_valid;
  o_trng1_data(31 downto 0) <= mayo_trng_arbiter_0_o_trng1_data(31 downto 0);
  o_trng1_done <= mayo_trng_arbiter_0_o_trng1_done;
  o_trng1_valid <= mayo_trng_arbiter_0_o_trng1_valid;
  rst_1 <= rst;
TRNG_0: component Mayo_keygen_TRNG_0_0
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
mayo_trng_arbiter_0: component Mayo_keygen_mayo_trng_arbiter_0_0
     port map (
      i_trng0_data(31 downto 0) => i_trng0_data_1(31 downto 0),
      i_trng0_r => i_trng0_r_1,
      i_trng0_w => i_trng0_w_1,
      i_trng1_data(31 downto 0) => i_trng1_data1_1(31 downto 0),
      i_trng1_r => i_trng1_r_1,
      i_trng1_w => i_trng1_w_1,
      i_trng_data(31 downto 0) => TRNG_0_TRNG_DATA_O(31 downto 0),
      i_trng_done => TRNG_0_TRNG_DONE_O,
      i_trng_sel => i_trng_sel_1,
      i_trng_valid => TRNG_0_TRNG_VALID_O,
      o_trng0_data(31 downto 0) => mayo_trng_arbiter_0_o_trng0_data(31 downto 0),
      o_trng0_done => mayo_trng_arbiter_0_o_trng0_done,
      o_trng0_valid => mayo_trng_arbiter_0_o_trng0_valid,
      o_trng1_data(31 downto 0) => mayo_trng_arbiter_0_o_trng1_data(31 downto 0),
      o_trng1_done => mayo_trng_arbiter_0_o_trng1_done,
      o_trng1_valid => mayo_trng_arbiter_0_o_trng1_valid,
      o_trng_data(31 downto 0) => mayo_trng_arbiter_0_o_trng_data(31 downto 0),
      o_trng_r => mayo_trng_arbiter_0_o_trng_r,
      o_trng_w => mayo_trng_arbiter_0_o_trng_w
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hash_imp_1FCB8TA is
  port (
    BRAM0_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM0_control : out STD_LOGIC;
    BRAM0_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM0_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM0_en : out STD_LOGIC;
    BRAM0_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM1_control : out STD_LOGIC;
    BRAMA_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAMA_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAMA_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAMA_en : out STD_LOGIC;
    BRAMA_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
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
end hash_imp_1FCB8TA;

architecture STRUCTURE of hash_imp_1FCB8TA is
  component Mayo_keygen_MAYO_SHAKE_1_0 is
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
  end component Mayo_keygen_MAYO_SHAKE_1_0;
  component Mayo_keygen_mayo_hash_bram_arbit_0_0 is
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
    BRAM0_control : out STD_LOGIC;
    BRAM1_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM1_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM1_en : out STD_LOGIC;
    BRAM1_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM1_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM1_control : out STD_LOGIC
  );
  end component Mayo_keygen_mayo_hash_bram_arbit_0_0;
  signal BRAM0_dout_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAMA_dout_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  signal mayo_hash_bram_arbit_0_BRAM0_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_hash_bram_arbit_0_BRAM0_control : STD_LOGIC;
  signal mayo_hash_bram_arbit_0_BRAM0_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_hash_bram_arbit_0_BRAM0_en : STD_LOGIC;
  signal mayo_hash_bram_arbit_0_BRAM0_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_hash_bram_arbit_0_BRAM1_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_hash_bram_arbit_0_BRAM1_control : STD_LOGIC;
  signal mayo_hash_bram_arbit_0_BRAM1_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_hash_bram_arbit_0_BRAM1_en : STD_LOGIC;
  signal mayo_hash_bram_arbit_0_BRAM1_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_hash_bram_arbit_0_hash_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal rst_ps7_0_100M_peripheral_aresetn : STD_LOGIC;
begin
  BRAM0_addr(31 downto 0) <= mayo_hash_bram_arbit_0_BRAM0_addr(31 downto 0);
  BRAM0_control <= mayo_hash_bram_arbit_0_BRAM0_control;
  BRAM0_din(31 downto 0) <= mayo_hash_bram_arbit_0_BRAM0_din(31 downto 0);
  BRAM0_dout_1(31 downto 0) <= BRAM0_dout(31 downto 0);
  BRAM0_en <= mayo_hash_bram_arbit_0_BRAM0_en;
  BRAM0_we(3 downto 0) <= mayo_hash_bram_arbit_0_BRAM0_we(3 downto 0);
  BRAM1_control <= mayo_hash_bram_arbit_0_BRAM1_control;
  BRAMA_addr(31 downto 0) <= mayo_hash_bram_arbit_0_BRAM1_addr(31 downto 0);
  BRAMA_din(31 downto 0) <= mayo_hash_bram_arbit_0_BRAM1_din(31 downto 0);
  BRAMA_dout_1(31 downto 0) <= BRAMA_dout(31 downto 0);
  BRAMA_en <= mayo_hash_bram_arbit_0_BRAM1_en;
  BRAMA_we(3 downto 0) <= mayo_hash_bram_arbit_0_BRAM1_we(3 downto 0);
  bram_sel_1 <= bram_sel;
  i_key_en_1 <= i_key_en;
  i_key_mlen_1(31 downto 0) <= i_key_mlen(31 downto 0);
  i_key_olen_1(31 downto 0) <= i_key_olen(31 downto 0);
  i_key_read_adr_1(31 downto 0) <= i_key_read_adr(31 downto 0);
  i_key_write_adr_1(31 downto 0) <= i_key_write_adr(31 downto 0);
  o_key_done <= MAYO_SHAKE_1_done;
  o_key_dyn_done <= MAYO_SHAKE_1_dyn_done;
  processing_system7_0_FCLK_CLK0 <= clk;
  rst_ps7_0_100M_peripheral_aresetn <= rst;
MAYO_SHAKE_1: component Mayo_keygen_MAYO_SHAKE_1_0
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
mayo_hash_bram_arbit_0: component Mayo_keygen_mayo_hash_bram_arbit_0_0
     port map (
      BRAM0_addr(31 downto 0) => mayo_hash_bram_arbit_0_BRAM0_addr(31 downto 0),
      BRAM0_control => mayo_hash_bram_arbit_0_BRAM0_control,
      BRAM0_din(31 downto 0) => mayo_hash_bram_arbit_0_BRAM0_din(31 downto 0),
      BRAM0_dout(31 downto 0) => BRAM0_dout_1(31 downto 0),
      BRAM0_en => mayo_hash_bram_arbit_0_BRAM0_en,
      BRAM0_we(3 downto 0) => mayo_hash_bram_arbit_0_BRAM0_we(3 downto 0),
      BRAM1_addr(31 downto 0) => mayo_hash_bram_arbit_0_BRAM1_addr(31 downto 0),
      BRAM1_control => mayo_hash_bram_arbit_0_BRAM1_control,
      BRAM1_din(31 downto 0) => mayo_hash_bram_arbit_0_BRAM1_din(31 downto 0),
      BRAM1_dout(31 downto 0) => BRAMA_dout_1(31 downto 0),
      BRAM1_en => mayo_hash_bram_arbit_0_BRAM1_en,
      BRAM1_we(3 downto 0) => mayo_hash_bram_arbit_0_BRAM1_we(3 downto 0),
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
entity m00_couplers_imp_FZLD13 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
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
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
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
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_FZLD13;

architecture STRUCTURE of m00_couplers_imp_FZLD13 is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m00_couplers_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_m00_couplers_ARLOCK : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m00_couplers_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_m00_couplers_AWLOCK : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m00_couplers_to_m00_couplers_RLAST : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WLAST : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= m00_couplers_to_m00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= m00_couplers_to_m00_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(11 downto 0) <= m00_couplers_to_m00_couplers_ARID(11 downto 0);
  M_AXI_arlen(7 downto 0) <= m00_couplers_to_m00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock <= m00_couplers_to_m00_couplers_ARLOCK;
  M_AXI_arprot(2 downto 0) <= m00_couplers_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arsize(2 downto 0) <= m00_couplers_to_m00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= m00_couplers_to_m00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= m00_couplers_to_m00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= m00_couplers_to_m00_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(11 downto 0) <= m00_couplers_to_m00_couplers_AWID(11 downto 0);
  M_AXI_awlen(7 downto 0) <= m00_couplers_to_m00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock <= m00_couplers_to_m00_couplers_AWLOCK;
  M_AXI_awprot(2 downto 0) <= m00_couplers_to_m00_couplers_AWPROT(2 downto 0);
  M_AXI_awsize(2 downto 0) <= m00_couplers_to_m00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= m00_couplers_to_m00_couplers_AWVALID;
  M_AXI_bready <= m00_couplers_to_m00_couplers_BREADY;
  M_AXI_rready <= m00_couplers_to_m00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= m00_couplers_to_m00_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= m00_couplers_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m00_couplers_to_m00_couplers_WVALID;
  S_AXI_arready <= m00_couplers_to_m00_couplers_ARREADY;
  S_AXI_awready <= m00_couplers_to_m00_couplers_AWREADY;
  S_AXI_bid(11 downto 0) <= m00_couplers_to_m00_couplers_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_m00_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= m00_couplers_to_m00_couplers_RID(11 downto 0);
  S_AXI_rlast <= m00_couplers_to_m00_couplers_RLAST;
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_m00_couplers_RVALID;
  S_AXI_wready <= m00_couplers_to_m00_couplers_WREADY;
  m00_couplers_to_m00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m00_couplers_to_m00_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m00_couplers_to_m00_couplers_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  m00_couplers_to_m00_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m00_couplers_to_m00_couplers_ARLOCK <= S_AXI_arlock;
  m00_couplers_to_m00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_m00_couplers_ARREADY <= M_AXI_arready;
  m00_couplers_to_m00_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m00_couplers_to_m00_couplers_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_m00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m00_couplers_to_m00_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m00_couplers_to_m00_couplers_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  m00_couplers_to_m00_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m00_couplers_to_m00_couplers_AWLOCK <= S_AXI_awlock;
  m00_couplers_to_m00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_m00_couplers_AWREADY <= M_AXI_awready;
  m00_couplers_to_m00_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m00_couplers_to_m00_couplers_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_m00_couplers_BID(11 downto 0) <= M_AXI_bid(11 downto 0);
  m00_couplers_to_m00_couplers_BREADY <= S_AXI_bready;
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID <= M_AXI_bvalid;
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RID(11 downto 0) <= M_AXI_rid(11 downto 0);
  m00_couplers_to_m00_couplers_RLAST <= M_AXI_rlast;
  m00_couplers_to_m00_couplers_RREADY <= S_AXI_rready;
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID <= M_AXI_rvalid;
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WLAST <= S_AXI_wlast;
  m00_couplers_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_m00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_m00_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_1A4U015 is
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
end m01_couplers_imp_1A4U015;

architecture STRUCTURE of m01_couplers_imp_1A4U015 is
  component Mayo_keygen_auto_pc_0 is
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
  end component Mayo_keygen_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m01_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m01_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m01_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m01_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m01_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m01_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m01_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m01_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m01_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m01_couplers_WVALID : STD_LOGIC;
  signal m01_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m01_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m01_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m01_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m01_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m01_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m01_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m01_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m01_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m01_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m01_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m01_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m01_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m01_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m01_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m01_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_m01_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_m01_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_m01_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_m01_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m01_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m01_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m01_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m01_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= m01_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m01_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= m01_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= m01_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m01_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m01_couplers_to_auto_pc_WREADY;
  auto_pc_to_m01_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m01_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m01_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m01_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m01_couplers_WREADY <= M_AXI_wready;
  m01_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m01_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m01_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  m01_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m01_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m01_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m01_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m01_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m01_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m01_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m01_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m01_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  m01_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m01_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m01_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m01_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m01_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m01_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m01_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m01_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m01_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m01_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component Mayo_keygen_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m01_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m01_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_m01_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m01_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m01_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m01_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_m01_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m01_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m01_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m01_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m01_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m01_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m01_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m01_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m01_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m01_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m01_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m01_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m01_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => m01_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(7 downto 0) => m01_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m01_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m01_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m01_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m01_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m01_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m01_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m01_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m01_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m01_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m01_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => m01_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(7 downto 0) => m01_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m01_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m01_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m01_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m01_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m01_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m01_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m01_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => m01_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => m01_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m01_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m01_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m01_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => m01_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => m01_couplers_to_auto_pc_RLAST,
      s_axi_rready => m01_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m01_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m01_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m01_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m01_couplers_to_auto_pc_WLAST,
      s_axi_wready => m01_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m01_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m01_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1N9RZTZ is
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
end s00_couplers_imp_1N9RZTZ;

architecture STRUCTURE of s00_couplers_imp_1N9RZTZ is
  component Mayo_keygen_auto_pc_1 is
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
  end component Mayo_keygen_auto_pc_1;
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
auto_pc: component Mayo_keygen_auto_pc_1
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
entity Mayo_keygen_ps7_0_axi_periph_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arlock : out STD_LOGIC;
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awlock : out STD_LOGIC;
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
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
end Mayo_keygen_ps7_0_axi_periph_0;

architecture STRUCTURE of Mayo_keygen_ps7_0_axi_periph_0 is
  component Mayo_keygen_xbar_0 is
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
  end component Mayo_keygen_xbar_0;
  signal m00_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_ARLOCK : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWLOCK : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RLAST : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WLAST : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
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
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
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
  signal xbar_to_m01_couplers_ARQOS : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARREGION : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWBURST : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWID : STD_LOGIC_VECTOR ( 23 downto 12 );
  signal xbar_to_m01_couplers_AWLEN : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal xbar_to_m01_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWQOS : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWREGION : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_to_m01_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_xbar_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_xbar_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_xbar_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M00_AXI_arburst(1 downto 0) <= m00_couplers_to_ps7_0_axi_periph_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= m00_couplers_to_ps7_0_axi_periph_ARCACHE(3 downto 0);
  M00_AXI_arid(11 downto 0) <= m00_couplers_to_ps7_0_axi_periph_ARID(11 downto 0);
  M00_AXI_arlen(7 downto 0) <= m00_couplers_to_ps7_0_axi_periph_ARLEN(7 downto 0);
  M00_AXI_arlock <= m00_couplers_to_ps7_0_axi_periph_ARLOCK;
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0);
  M00_AXI_arsize(2 downto 0) <= m00_couplers_to_ps7_0_axi_periph_ARSIZE(2 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_ps7_0_axi_periph_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M00_AXI_awburst(1 downto 0) <= m00_couplers_to_ps7_0_axi_periph_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= m00_couplers_to_ps7_0_axi_periph_AWCACHE(3 downto 0);
  M00_AXI_awid(11 downto 0) <= m00_couplers_to_ps7_0_axi_periph_AWID(11 downto 0);
  M00_AXI_awlen(7 downto 0) <= m00_couplers_to_ps7_0_axi_periph_AWLEN(7 downto 0);
  M00_AXI_awlock <= m00_couplers_to_ps7_0_axi_periph_AWLOCK;
  M00_AXI_awprot(2 downto 0) <= m00_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0);
  M00_AXI_awsize(2 downto 0) <= m00_couplers_to_ps7_0_axi_periph_AWSIZE(2 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_ps7_0_axi_periph_AWVALID;
  M00_AXI_bready <= m00_couplers_to_ps7_0_axi_periph_BREADY;
  M00_AXI_rready <= m00_couplers_to_ps7_0_axi_periph_RREADY;
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M00_AXI_wlast <= m00_couplers_to_ps7_0_axi_periph_WLAST;
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_ps7_0_axi_periph_WVALID;
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M01_AXI_arprot(2 downto 0) <= m01_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0);
  M01_AXI_arvalid <= m01_couplers_to_ps7_0_axi_periph_ARVALID;
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M01_AXI_awprot(2 downto 0) <= m01_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0);
  M01_AXI_awvalid <= m01_couplers_to_ps7_0_axi_periph_AWVALID;
  M01_AXI_bready <= m01_couplers_to_ps7_0_axi_periph_BREADY;
  M01_AXI_rready <= m01_couplers_to_ps7_0_axi_periph_RREADY;
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M01_AXI_wvalid <= m01_couplers_to_ps7_0_axi_periph_WVALID;
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
  m00_couplers_to_ps7_0_axi_periph_BID(11 downto 0) <= M00_AXI_bid(11 downto 0);
  m00_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_ps7_0_axi_periph_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_ps7_0_axi_periph_RID(11 downto 0) <= M00_AXI_rid(11 downto 0);
  m00_couplers_to_ps7_0_axi_periph_RLAST <= M00_AXI_rlast;
  m00_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_ps7_0_axi_periph_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_ps7_0_axi_periph_WREADY <= M00_AXI_wready;
  m01_couplers_to_ps7_0_axi_periph_ARREADY <= M01_AXI_arready;
  m01_couplers_to_ps7_0_axi_periph_AWREADY <= M01_AXI_awready;
  m01_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_ps7_0_axi_periph_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_ps7_0_axi_periph_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_ps7_0_axi_periph_WREADY <= M01_AXI_wready;
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
m00_couplers: entity work.m00_couplers_imp_FZLD13
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => m00_couplers_to_ps7_0_axi_periph_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m00_couplers_to_ps7_0_axi_periph_ARCACHE(3 downto 0),
      M_AXI_arid(11 downto 0) => m00_couplers_to_ps7_0_axi_periph_ARID(11 downto 0),
      M_AXI_arlen(7 downto 0) => m00_couplers_to_ps7_0_axi_periph_ARLEN(7 downto 0),
      M_AXI_arlock => m00_couplers_to_ps7_0_axi_periph_ARLOCK,
      M_AXI_arprot(2 downto 0) => m00_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => m00_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arsize(2 downto 0) => m00_couplers_to_ps7_0_axi_periph_ARSIZE(2 downto 0),
      M_AXI_arvalid => m00_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => m00_couplers_to_ps7_0_axi_periph_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m00_couplers_to_ps7_0_axi_periph_AWCACHE(3 downto 0),
      M_AXI_awid(11 downto 0) => m00_couplers_to_ps7_0_axi_periph_AWID(11 downto 0),
      M_AXI_awlen(7 downto 0) => m00_couplers_to_ps7_0_axi_periph_AWLEN(7 downto 0),
      M_AXI_awlock => m00_couplers_to_ps7_0_axi_periph_AWLOCK,
      M_AXI_awprot(2 downto 0) => m00_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => m00_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awsize(2 downto 0) => m00_couplers_to_ps7_0_axi_periph_AWSIZE(2 downto 0),
      M_AXI_awvalid => m00_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bid(11 downto 0) => m00_couplers_to_ps7_0_axi_periph_BID(11 downto 0),
      M_AXI_bready => m00_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rid(11 downto 0) => m00_couplers_to_ps7_0_axi_periph_RID(11 downto 0),
      M_AXI_rlast => m00_couplers_to_ps7_0_axi_periph_RLAST,
      M_AXI_rready => m00_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wlast => m00_couplers_to_ps7_0_axi_periph_WLAST,
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
      S_AXI_arlock => xbar_to_m00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => xbar_to_m00_couplers_AWID(11 downto 0),
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock => xbar_to_m00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
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
m01_couplers: entity work.m01_couplers_imp_1A4U015
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m01_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => m01_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m01_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m01_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => m01_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m01_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m01_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m01_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m01_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m01_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m01_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m01_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m01_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m01_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arburst(1 downto 0) => xbar_to_m01_couplers_ARBURST(3 downto 2),
      S_AXI_arcache(3 downto 0) => xbar_to_m01_couplers_ARCACHE(7 downto 4),
      S_AXI_arid(11 downto 0) => xbar_to_m01_couplers_ARID(23 downto 12),
      S_AXI_arlen(7 downto 0) => xbar_to_m01_couplers_ARLEN(15 downto 8),
      S_AXI_arlock(0) => xbar_to_m01_couplers_ARLOCK(1),
      S_AXI_arprot(2 downto 0) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      S_AXI_arqos(3 downto 0) => xbar_to_m01_couplers_ARQOS(7 downto 4),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m01_couplers_ARREGION(7 downto 4),
      S_AXI_arsize(2 downto 0) => xbar_to_m01_couplers_ARSIZE(5 downto 3),
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awburst(1 downto 0) => xbar_to_m01_couplers_AWBURST(3 downto 2),
      S_AXI_awcache(3 downto 0) => xbar_to_m01_couplers_AWCACHE(7 downto 4),
      S_AXI_awid(11 downto 0) => xbar_to_m01_couplers_AWID(23 downto 12),
      S_AXI_awlen(7 downto 0) => xbar_to_m01_couplers_AWLEN(15 downto 8),
      S_AXI_awlock(0) => xbar_to_m01_couplers_AWLOCK(1),
      S_AXI_awprot(2 downto 0) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      S_AXI_awqos(3 downto 0) => xbar_to_m01_couplers_AWQOS(7 downto 4),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m01_couplers_AWREGION(7 downto 4),
      S_AXI_awsize(2 downto 0) => xbar_to_m01_couplers_AWSIZE(5 downto 3),
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bid(11 downto 0) => xbar_to_m01_couplers_BID(11 downto 0),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => xbar_to_m01_couplers_RID(11 downto 0),
      S_AXI_rlast => xbar_to_m01_couplers_RLAST,
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wlast => xbar_to_m01_couplers_WLAST(1),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
s00_couplers: entity work.s00_couplers_imp_1N9RZTZ
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
xbar: component Mayo_keygen_xbar_0
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
      m_axi_arqos(7 downto 4) => xbar_to_m01_couplers_ARQOS(7 downto 4),
      m_axi_arqos(3 downto 0) => NLW_xbar_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arregion(7 downto 4) => xbar_to_m01_couplers_ARREGION(7 downto 4),
      m_axi_arregion(3 downto 0) => NLW_xbar_m_axi_arregion_UNCONNECTED(3 downto 0),
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
      m_axi_awqos(7 downto 4) => xbar_to_m01_couplers_AWQOS(7 downto 4),
      m_axi_awqos(3 downto 0) => NLW_xbar_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awregion(7 downto 4) => xbar_to_m01_couplers_AWREGION(7 downto 4),
      m_axi_awregion(3 downto 0) => NLW_xbar_m_axi_awregion_UNCONNECTED(3 downto 0),
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
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rid(23 downto 12) => xbar_to_m01_couplers_RID(11 downto 0),
      m_axi_rid(11 downto 0) => xbar_to_m00_couplers_RID(11 downto 0),
      m_axi_rlast(1) => xbar_to_m01_couplers_RLAST,
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST,
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wlast(1) => xbar_to_m01_couplers_WLAST(1),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
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
entity Mayo_keygen is
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
    LD0 : out STD_LOGIC;
    LD1 : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Mayo_keygen : entity is "Mayo_keygen,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Mayo_keygen,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=35,numReposBlks=27,numNonXlnxBlks=3,numHierBlks=8,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=11,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=9,da_bram_cntlr_cnt=3,da_clkrst_cnt=14,da_ps7_cnt=1,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of Mayo_keygen : entity is "Mayo_keygen.hwdef";
end Mayo_keygen;

architecture STRUCTURE of Mayo_keygen is
  component Mayo_keygen_processing_system7_0_0 is
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
  end component Mayo_keygen_processing_system7_0_0;
  component Mayo_keygen_rst_ps7_0_100M_0 is
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
  end component Mayo_keygen_rst_ps7_0_100M_0;
  component Mayo_keygen_Ground0_2 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component Mayo_keygen_Ground0_2;
  component Mayo_keygen_Ground32_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Mayo_keygen_Ground32_0;
  component Mayo_keygen_Ground4_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component Mayo_keygen_Ground4_0;
  component Mayo_keygen_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component Mayo_keygen_xlconcat_0_0;
  component Mayo_keygen_mayo_axi_litev3_0_0 is
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
  end component Mayo_keygen_mayo_axi_litev3_0_0;
  component Mayo_keygen_mayo_add_vectors_0_0 is
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
  end component Mayo_keygen_mayo_add_vectors_0_0;
  component Mayo_keygen_mayo_linear_combinat_0_0 is
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
  end component Mayo_keygen_mayo_linear_combinat_0_0;
  component Mayo_keygen_mayo_negate_0_0 is
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
  end component Mayo_keygen_mayo_negate_0_0;
  component Mayo_keygen_mayo_reduce_0_0 is
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
  end component Mayo_keygen_mayo_reduce_0_0;
  component Mayo_keygen_mayo_sample_oil_space_0_0 is
  port (
    i_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    i_enable : in STD_LOGIC;
    o_done : out STD_LOGIC;
    i_oil_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_trng_r : out STD_LOGIC;
    o_trng_w : out STD_LOGIC;
    o_trng_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_trng_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_trng_valid : in STD_LOGIC;
    i_trng_done : in STD_LOGIC;
    i_memb_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memb_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memb_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_memb_en : out STD_LOGIC;
    o_memb_rst : out STD_LOGIC;
    o_memb_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_controlb : out STD_LOGIC;
    o_trng_sel : out STD_LOGIC
  );
  end component Mayo_keygen_mayo_sample_oil_space_0_0;
  component Mayo_keygen_MAYO_KEYGEN_FSM_0_0 is
  port (
    CLK : in STD_LOGIC;
    ENABLE : in STD_LOGIC;
    RESET : in STD_LOGIC;
    PUBLIC_KEY_ADDR_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SECRET_KEY_ADDR_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_busy : out STD_LOGIC;
    o_done : out STD_LOGIC;
    i_expose : in STD_LOGIC;
    i_debug : in STD_LOGIC;
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
    o_red_enable : out STD_LOGIC;
    o_red_len : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_red_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_red_bram_sel : out STD_LOGIC;
    i_red_done : in STD_LOGIC;
    o_sam_enable : out STD_LOGIC;
    i_sam_done : in STD_LOGIC;
    o_sam_oil_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_lin_enable : out STD_LOGIC;
    i_lin_done : in STD_LOGIC;
    o_lin_bram_halt : out STD_LOGIC;
    o_lin_vec_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_lin_coeffs_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_lin_out_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_lin_len : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_add_enable : out STD_LOGIC;
    o_add_v1_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_add_v2_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_add_out_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_add_done : in STD_LOGIC;
    o_add_bram_sel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_neg_enable : out STD_LOGIC;
    o_neg_len : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_neg_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_neg_done : in STD_LOGIC;
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
    o_mem0a_control : out STD_LOGIC;
    o_mem0b_control : out STD_LOGIC;
    o_mem1a_control : out STD_LOGIC
  );
  end component Mayo_keygen_MAYO_KEYGEN_FSM_0_0;
  signal BRAM0_dout_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_big_BRAM_add_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_big_BRAM_red_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_key_addr1_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_key_addr_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_key_rst1_1 : STD_LOGIC;
  signal BRAM_key_rst_1 : STD_LOGIC;
  signal BRAM_key_we_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BRAM_small_BRAM_add_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BRAM_small_BRAM_add_dout1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Ground1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Ground32_dout1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Ground4_dout1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MAYO_KEYGEN_FSM_0_o_add_bram_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal MAYO_KEYGEN_FSM_0_o_add_enable : STD_LOGIC;
  signal MAYO_KEYGEN_FSM_0_o_add_out_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_KEYGEN_FSM_0_o_add_v1_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_KEYGEN_FSM_0_o_add_v2_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_KEYGEN_FSM_0_o_busy : STD_LOGIC;
  signal MAYO_KEYGEN_FSM_0_o_done : STD_LOGIC;
  signal MAYO_KEYGEN_FSM_0_o_err : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal MAYO_KEYGEN_FSM_0_o_hash_en : STD_LOGIC;
  signal MAYO_KEYGEN_FSM_0_o_hash_memsel : STD_LOGIC;
  signal MAYO_KEYGEN_FSM_0_o_hash_mlen : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_KEYGEN_FSM_0_o_hash_olen : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_KEYGEN_FSM_0_o_hash_read_adr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_KEYGEN_FSM_0_o_hash_write_adr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_KEYGEN_FSM_0_o_lin_bram_halt : STD_LOGIC;
  signal MAYO_KEYGEN_FSM_0_o_lin_coeffs_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_KEYGEN_FSM_0_o_lin_enable : STD_LOGIC;
  signal MAYO_KEYGEN_FSM_0_o_lin_len : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_KEYGEN_FSM_0_o_lin_out_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_KEYGEN_FSM_0_o_lin_vec_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_KEYGEN_FSM_0_o_mem0a_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_KEYGEN_FSM_0_o_mem0a_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_KEYGEN_FSM_0_o_mem0a_en : STD_LOGIC;
  signal MAYO_KEYGEN_FSM_0_o_mem0a_rst : STD_LOGIC;
  signal MAYO_KEYGEN_FSM_0_o_mem0b_control : STD_LOGIC;
  signal MAYO_KEYGEN_FSM_0_o_mem0b_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_KEYGEN_FSM_0_o_mem0b_en : STD_LOGIC;
  signal MAYO_KEYGEN_FSM_0_o_mem0b_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MAYO_KEYGEN_FSM_0_o_mem1a_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_KEYGEN_FSM_0_o_mem1a_en : STD_LOGIC;
  signal MAYO_KEYGEN_FSM_0_o_mem1a_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MAYO_KEYGEN_FSM_0_o_neg_adr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_KEYGEN_FSM_0_o_neg_enable : STD_LOGIC;
  signal MAYO_KEYGEN_FSM_0_o_neg_len : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_KEYGEN_FSM_0_o_red_adr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_KEYGEN_FSM_0_o_red_bram_sel : STD_LOGIC;
  signal MAYO_KEYGEN_FSM_0_o_red_enable : STD_LOGIC;
  signal MAYO_KEYGEN_FSM_0_o_red_len : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_KEYGEN_FSM_0_o_sam_enable : STD_LOGIC;
  signal MAYO_KEYGEN_FSM_0_o_sam_oil_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_KEYGEN_FSM_0_o_trng_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_KEYGEN_FSM_0_o_trng_r : STD_LOGIC;
  signal MAYO_KEYGEN_FSM_0_o_trng_w : STD_LOGIC;
  signal MAYO_SHAKE_1_BRAMA_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SHAKE_1_BRAMA_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_SHAKE_1_BRAMA_en : STD_LOGIC;
  signal MAYO_SHAKE_1_BRAMA_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal TRNG_o_trng0_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRNG_o_trng0_done : STD_LOGIC;
  signal TRNG_o_trng0_valid : STD_LOGIC;
  signal TRNG_o_trng1_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TRNG_o_trng1_done : STD_LOGIC;
  signal TRNG_o_trng1_valid : STD_LOGIC;
  signal add_control_1 : STD_LOGIC;
  signal arbit_brama0_BRAM_key_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal arbit_brama0_BRAM_lin_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal arbit_brama0_BRAM_neg_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal arbit_brama0_BRAM_red_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal arbit_brama1_BRAM_hash_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal arbit_brama1_BRAM_key_dout1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal arbit_brama1_BRAM_lin_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal arbit_bramb0_BRAM_key_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal arbit_bramb0_BRAM_sam_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal bram_control_1 : STD_LOGIC;
  signal bram_control_2 : STD_LOGIC;
  signal hash_BRAM0_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hash_BRAM0_control : STD_LOGIC;
  signal hash_BRAM0_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hash_BRAM0_en : STD_LOGIC;
  signal hash_BRAM0_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hash_control_1 : STD_LOGIC;
  signal mayo_add_vectors_0_o_controla : STD_LOGIC;
  signal mayo_add_vectors_0_o_controlb : STD_LOGIC;
  signal mayo_add_vectors_0_o_done : STD_LOGIC;
  signal mayo_add_vectors_0_o_mema_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_0_o_mema_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_0_o_mema_en : STD_LOGIC;
  signal mayo_add_vectors_0_o_mema_rst : STD_LOGIC;
  signal mayo_add_vectors_0_o_mema_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_add_vectors_0_o_memb_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_0_o_memb_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_0_o_memb_en : STD_LOGIC;
  signal mayo_add_vectors_0_o_memb_rst : STD_LOGIC;
  signal mayo_add_vectors_0_o_memb_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_add_vectors_0_o_memc_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_0_o_memc_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_add_vectors_0_o_memc_en : STD_LOGIC;
  signal mayo_add_vectors_0_o_memc_rst : STD_LOGIC;
  signal mayo_add_vectors_0_o_memc_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_axi_litev3_0_o_Debug : STD_LOGIC;
  signal mayo_axi_litev3_0_o_Expose : STD_LOGIC;
  signal mayo_axi_litev3_0_o_Keygen_en : STD_LOGIC;
  signal mayo_axi_litev3_0_o_interrupt : STD_LOGIC;
  signal mayo_bram_arbiter_1_BRAM_lin_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_hash_arbiter_0_o_key_done : STD_LOGIC;
  signal mayo_hash_arbiter_0_o_key_dyn_done : STD_LOGIC;
  signal mayo_linear_combinat_0_o_control0a : STD_LOGIC;
  signal mayo_linear_combinat_0_o_control0b : STD_LOGIC;
  signal mayo_linear_combinat_0_o_control1a : STD_LOGIC;
  signal mayo_linear_combinat_0_o_done : STD_LOGIC;
  signal mayo_linear_combinat_0_o_mem0a_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_linear_combinat_0_o_mem0a_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_linear_combinat_0_o_mem0a_en : STD_LOGIC;
  signal mayo_linear_combinat_0_o_mem0a_rst : STD_LOGIC;
  signal mayo_linear_combinat_0_o_mem0a_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_linear_combinat_0_o_mem0b_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_linear_combinat_0_o_mem0b_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_linear_combinat_0_o_mem0b_en : STD_LOGIC;
  signal mayo_linear_combinat_0_o_mem0b_rst : STD_LOGIC;
  signal mayo_linear_combinat_0_o_mem0b_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_linear_combinat_0_o_mem1a_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_linear_combinat_0_o_mem1a_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_linear_combinat_0_o_mem1a_en : STD_LOGIC;
  signal mayo_linear_combinat_0_o_mem1a_rst : STD_LOGIC;
  signal mayo_linear_combinat_0_o_mem1a_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_negate_0_o_addrb : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_negate_0_o_control : STD_LOGIC;
  signal mayo_negate_0_o_dinb : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_negate_0_o_done : STD_LOGIC;
  signal mayo_negate_0_o_enb : STD_LOGIC;
  signal mayo_negate_0_o_rstb : STD_LOGIC;
  signal mayo_negate_0_o_web : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_reduce_0_o_addr1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_0_o_addrb : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_0_o_control : STD_LOGIC;
  signal mayo_reduce_0_o_control1 : STD_LOGIC;
  signal mayo_reduce_0_o_din0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_0_o_din1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_reduce_0_o_done : STD_LOGIC;
  signal mayo_reduce_0_o_en1 : STD_LOGIC;
  signal mayo_reduce_0_o_enb : STD_LOGIC;
  signal mayo_reduce_0_o_rst1 : STD_LOGIC;
  signal mayo_reduce_0_o_rstb : STD_LOGIC;
  signal mayo_reduce_0_o_we1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_reduce_0_o_web : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_sample_oil_space_0_o_controlb : STD_LOGIC;
  signal mayo_sample_oil_space_0_o_done : STD_LOGIC;
  signal mayo_sample_oil_space_0_o_memb_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_space_0_o_memb_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_space_0_o_memb_en : STD_LOGIC;
  signal mayo_sample_oil_space_0_o_memb_rst : STD_LOGIC;
  signal mayo_sample_oil_space_0_o_memb_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mayo_sample_oil_space_0_o_trng_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_sample_oil_space_0_o_trng_r : STD_LOGIC;
  signal mayo_sample_oil_space_0_o_trng_sel : STD_LOGIC;
  signal mayo_sample_oil_space_0_o_trng_w : STD_LOGIC;
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
  signal ps7_0_axi_periph_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_ARLOCK : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_AWLOCK : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_RLAST : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_WLAST : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_WVALID : STD_LOGIC;
  signal rst_ps7_0_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_ps7_0_100M_peripheral_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mayo_axi_litev3_0_o_Signing_en_UNCONNECTED : STD_LOGIC;
  signal NLW_mayo_axi_litev3_0_o_Verification_en_UNCONNECTED : STD_LOGIC;
  signal NLW_mayo_axi_litev3_0_o_irq_en_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE0_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE1_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE2_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rst_ps7_0_100M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_ps7_0_100M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_100M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute BMM_INFO_PROCESSOR : string;
  attribute BMM_INFO_PROCESSOR of processing_system7_0 : label is "arm > Mayo_keygen BRAM_big1/axi_bram_ctrl_0";
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
  attribute X_INTERFACE_INFO of DDR_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR ADDR";
  attribute X_INTERFACE_PARAMETER of DDR_addr : signal is "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of DDR_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR BA";
  attribute X_INTERFACE_INFO of DDR_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR DM";
  attribute X_INTERFACE_INFO of DDR_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR DQ";
  attribute X_INTERFACE_INFO of DDR_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_N";
  attribute X_INTERFACE_INFO of DDR_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_P";
  attribute X_INTERFACE_INFO of FIXED_IO_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO";
begin
  LD0 <= MAYO_KEYGEN_FSM_0_o_busy;
  LD1 <= MAYO_KEYGEN_FSM_0_o_done;
BRAM_big1: entity work.BRAM_big1_imp_QBI0MO
     port map (
      BRAM_add_addr(31 downto 0) => mayo_add_vectors_0_o_memc_addr(31 downto 0),
      BRAM_add_din(31 downto 0) => mayo_add_vectors_0_o_memc_din(31 downto 0),
      BRAM_add_dout(31 downto 0) => BRAM_big_BRAM_add_dout(31 downto 0),
      BRAM_add_en => mayo_add_vectors_0_o_memc_en,
      BRAM_add_rst => Ground1_dout(0),
      BRAM_add_rst1 => mayo_add_vectors_0_o_memc_rst,
      BRAM_add_we(3 downto 0) => Ground4_dout1(3 downto 0),
      BRAM_add_we1(3 downto 0) => mayo_add_vectors_0_o_memc_we(3 downto 0),
      BRAM_hash_addr(31 downto 0) => MAYO_SHAKE_1_BRAMA_addr(31 downto 0),
      BRAM_hash_din(31 downto 0) => MAYO_SHAKE_1_BRAMA_din(31 downto 0),
      BRAM_hash_dout(31 downto 0) => arbit_brama1_BRAM_hash_dout(31 downto 0),
      BRAM_hash_en => MAYO_SHAKE_1_BRAMA_en,
      BRAM_hash_we(3 downto 0) => MAYO_SHAKE_1_BRAMA_we(3 downto 0),
      BRAM_key_addr(31 downto 0) => BRAM_key_addr_1(31 downto 0),
      BRAM_key_din(31 downto 0) => MAYO_KEYGEN_FSM_0_o_mem1a_din(31 downto 0),
      BRAM_key_dout(31 downto 0) => arbit_brama1_BRAM_key_dout1(31 downto 0),
      BRAM_key_en => MAYO_KEYGEN_FSM_0_o_mem1a_en,
      BRAM_key_rst => BRAM_key_rst_1,
      BRAM_key_we(3 downto 0) => MAYO_KEYGEN_FSM_0_o_mem1a_we(3 downto 0),
      BRAM_lin_addr(31 downto 0) => mayo_linear_combinat_0_o_mem1a_addr(31 downto 0),
      BRAM_lin_din(31 downto 0) => mayo_linear_combinat_0_o_mem1a_din(31 downto 0),
      BRAM_lin_dout(31 downto 0) => arbit_brama1_BRAM_lin_dout(31 downto 0),
      BRAM_lin_en => mayo_linear_combinat_0_o_mem1a_en,
      BRAM_lin_rst => mayo_linear_combinat_0_o_mem1a_rst,
      BRAM_lin_we(3 downto 0) => mayo_linear_combinat_0_o_mem1a_we(3 downto 0),
      BRAM_neg_din(31 downto 0) => Ground32_dout1(31 downto 0),
      BRAM_red_addr(31 downto 0) => mayo_reduce_0_o_addr1(31 downto 0),
      BRAM_red_din(31 downto 0) => mayo_reduce_0_o_din1(31 downto 0),
      BRAM_red_dout(31 downto 0) => BRAM_big_BRAM_red_dout(31 downto 0),
      BRAM_red_en => mayo_reduce_0_o_en1,
      BRAM_red_rst => mayo_reduce_0_o_rst1,
      BRAM_red_we(3 downto 0) => mayo_reduce_0_o_we1(3 downto 0),
      S_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M00_AXI_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => ps7_0_axi_periph_M00_AXI_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => ps7_0_axi_periph_M00_AXI_ARCACHE(3 downto 0),
      S_AXI_arid(11 downto 0) => ps7_0_axi_periph_M00_AXI_ARID(11 downto 0),
      S_AXI_arlen(7 downto 0) => ps7_0_axi_periph_M00_AXI_ARLEN(7 downto 0),
      S_AXI_arlock => ps7_0_axi_periph_M00_AXI_ARLOCK,
      S_AXI_arprot(2 downto 0) => ps7_0_axi_periph_M00_AXI_ARPROT(2 downto 0),
      S_AXI_arready => ps7_0_axi_periph_M00_AXI_ARREADY,
      S_AXI_arsize(2 downto 0) => ps7_0_axi_periph_M00_AXI_ARSIZE(2 downto 0),
      S_AXI_arvalid => ps7_0_axi_periph_M00_AXI_ARVALID,
      S_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M00_AXI_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => ps7_0_axi_periph_M00_AXI_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => ps7_0_axi_periph_M00_AXI_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => ps7_0_axi_periph_M00_AXI_AWID(11 downto 0),
      S_AXI_awlen(7 downto 0) => ps7_0_axi_periph_M00_AXI_AWLEN(7 downto 0),
      S_AXI_awlock => ps7_0_axi_periph_M00_AXI_AWLOCK,
      S_AXI_awprot(2 downto 0) => ps7_0_axi_periph_M00_AXI_AWPROT(2 downto 0),
      S_AXI_awready => ps7_0_axi_periph_M00_AXI_AWREADY,
      S_AXI_awsize(2 downto 0) => ps7_0_axi_periph_M00_AXI_AWSIZE(2 downto 0),
      S_AXI_awvalid => ps7_0_axi_periph_M00_AXI_AWVALID,
      S_AXI_bid(11 downto 0) => ps7_0_axi_periph_M00_AXI_BID(11 downto 0),
      S_AXI_bready => ps7_0_axi_periph_M00_AXI_BREADY,
      S_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      S_AXI_bvalid => ps7_0_axi_periph_M00_AXI_BVALID,
      S_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => ps7_0_axi_periph_M00_AXI_RID(11 downto 0),
      S_AXI_rlast => ps7_0_axi_periph_M00_AXI_RLAST,
      S_AXI_rready => ps7_0_axi_periph_M00_AXI_RREADY,
      S_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      S_AXI_rvalid => ps7_0_axi_periph_M00_AXI_RVALID,
      S_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      S_AXI_wlast => ps7_0_axi_periph_M00_AXI_WLAST,
      S_AXI_wready => ps7_0_axi_periph_M00_AXI_WREADY,
      S_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      S_AXI_wvalid => ps7_0_axi_periph_M00_AXI_WVALID,
      add_control => add_control_1,
      bram_control => bram_control_1,
      clkb => processing_system7_0_FCLK_CLK0,
      hash_control => hash_control_1,
      lin_control => mayo_linear_combinat_0_o_control1a,
      red_control => mayo_reduce_0_o_control1,
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0)
    );
BRAM_small: entity work.BRAM_small_imp_EVICZV
     port map (
      BRAM_add_addr(31 downto 0) => mayo_add_vectors_0_o_mema_addr(31 downto 0),
      BRAM_add_addr1(31 downto 0) => mayo_add_vectors_0_o_memb_addr(31 downto 0),
      BRAM_add_din(31 downto 0) => mayo_add_vectors_0_o_mema_din(31 downto 0),
      BRAM_add_din1(31 downto 0) => mayo_add_vectors_0_o_memb_din(31 downto 0),
      BRAM_add_dout(31 downto 0) => BRAM_small_BRAM_add_dout(31 downto 0),
      BRAM_add_dout1(31 downto 0) => BRAM_small_BRAM_add_dout1(31 downto 0),
      BRAM_add_en => mayo_add_vectors_0_o_mema_en,
      BRAM_add_en1 => mayo_add_vectors_0_o_memb_en,
      BRAM_add_rst => mayo_add_vectors_0_o_mema_rst,
      BRAM_add_rst1 => mayo_add_vectors_0_o_memb_rst,
      BRAM_add_we(3 downto 0) => mayo_add_vectors_0_o_mema_we(3 downto 0),
      BRAM_add_we1(3 downto 0) => mayo_add_vectors_0_o_memb_we(3 downto 0),
      BRAM_hash_addr(31 downto 0) => hash_BRAM0_addr(31 downto 0),
      BRAM_hash_din(31 downto 0) => hash_BRAM0_din(31 downto 0),
      BRAM_hash_dout(31 downto 0) => BRAM0_dout_1(31 downto 0),
      BRAM_hash_en => hash_BRAM0_en,
      BRAM_hash_we1(3 downto 0) => hash_BRAM0_we(3 downto 0),
      BRAM_key_addr(31 downto 0) => MAYO_KEYGEN_FSM_0_o_mem0a_addr(31 downto 0),
      BRAM_key_addr1(31 downto 0) => BRAM_key_addr1_1(31 downto 0),
      BRAM_key_din(31 downto 0) => MAYO_KEYGEN_FSM_0_o_mem0a_din(31 downto 0),
      BRAM_key_din1(31 downto 0) => MAYO_KEYGEN_FSM_0_o_mem0b_din(31 downto 0),
      BRAM_key_dout(31 downto 0) => arbit_brama0_BRAM_key_dout(31 downto 0),
      BRAM_key_dout1(31 downto 0) => arbit_bramb0_BRAM_key_dout(31 downto 0),
      BRAM_key_en => MAYO_KEYGEN_FSM_0_o_mem0a_en,
      BRAM_key_en1 => MAYO_KEYGEN_FSM_0_o_mem0b_en,
      BRAM_key_rst => MAYO_KEYGEN_FSM_0_o_mem0a_rst,
      BRAM_key_rst1 => BRAM_key_rst1_1,
      BRAM_key_we(3 downto 0) => BRAM_key_we_1(3 downto 0),
      BRAM_key_we1(3 downto 0) => MAYO_KEYGEN_FSM_0_o_mem0b_we(3 downto 0),
      BRAM_lin_addr(31 downto 0) => mayo_linear_combinat_0_o_mem0a_addr(31 downto 0),
      BRAM_lin_addr1(31 downto 0) => mayo_linear_combinat_0_o_mem0b_addr(31 downto 0),
      BRAM_lin_din(31 downto 0) => mayo_linear_combinat_0_o_mem0a_din(31 downto 0),
      BRAM_lin_din1(31 downto 0) => mayo_linear_combinat_0_o_mem0b_din(31 downto 0),
      BRAM_lin_dout(31 downto 0) => arbit_brama0_BRAM_lin_dout(31 downto 0),
      BRAM_lin_dout1(31 downto 0) => mayo_bram_arbiter_1_BRAM_lin_dout(31 downto 0),
      BRAM_lin_en => mayo_linear_combinat_0_o_mem0a_en,
      BRAM_lin_en1 => mayo_linear_combinat_0_o_mem0b_en,
      BRAM_lin_rst => mayo_linear_combinat_0_o_mem0a_rst,
      BRAM_lin_rst1 => mayo_linear_combinat_0_o_mem0b_rst,
      BRAM_lin_we(3 downto 0) => mayo_linear_combinat_0_o_mem0a_we(3 downto 0),
      BRAM_lin_we1(3 downto 0) => mayo_linear_combinat_0_o_mem0b_we(3 downto 0),
      BRAM_neg_addr(31 downto 0) => mayo_negate_0_o_addrb(31 downto 0),
      BRAM_neg_din(31 downto 0) => mayo_negate_0_o_dinb(31 downto 0),
      BRAM_neg_dout(31 downto 0) => arbit_brama0_BRAM_neg_dout(31 downto 0),
      BRAM_neg_en => mayo_negate_0_o_enb,
      BRAM_neg_rst => mayo_negate_0_o_rstb,
      BRAM_neg_we(3 downto 0) => mayo_negate_0_o_web(3 downto 0),
      BRAM_red_addr(31 downto 0) => mayo_reduce_0_o_addrb(31 downto 0),
      BRAM_red_din(31 downto 0) => mayo_reduce_0_o_din0(31 downto 0),
      BRAM_red_dout(31 downto 0) => arbit_brama0_BRAM_red_dout(31 downto 0),
      BRAM_red_en => mayo_reduce_0_o_enb,
      BRAM_red_rst => mayo_reduce_0_o_rstb,
      BRAM_red_we(3 downto 0) => mayo_reduce_0_o_web(3 downto 0),
      BRAM_sam_addr1(31 downto 0) => mayo_sample_oil_space_0_o_memb_addr(31 downto 0),
      BRAM_sam_din1(31 downto 0) => mayo_sample_oil_space_0_o_memb_din(31 downto 0),
      BRAM_sam_dout1(31 downto 0) => arbit_bramb0_BRAM_sam_dout(31 downto 0),
      BRAM_sam_en1 => mayo_sample_oil_space_0_o_memb_en,
      BRAM_sam_rst1 => mayo_sample_oil_space_0_o_memb_rst,
      BRAM_sam_we1(3 downto 0) => mayo_sample_oil_space_0_o_memb_we(3 downto 0),
      Zero0 => Ground1_dout(0),
      Zero_32(31 downto 0) => Ground32_dout1(31 downto 0),
      Zero_4(3 downto 0) => Ground4_dout1(3 downto 0),
      add_control => mayo_add_vectors_0_o_controla,
      add_control1 => mayo_add_vectors_0_o_controlb,
      bram_control => bram_control_2,
      bram_control1 => MAYO_KEYGEN_FSM_0_o_mem0b_control,
      clkb => processing_system7_0_FCLK_CLK0,
      hash_control => hash_BRAM0_control,
      lin_control => mayo_linear_combinat_0_o_control0a,
      lin_control1 => mayo_linear_combinat_0_o_control0b,
      neg_control => mayo_negate_0_o_control,
      red_control => mayo_reduce_0_o_control,
      sam_control1 => mayo_sample_oil_space_0_o_controlb
    );
Ground1: component Mayo_keygen_Ground0_2
     port map (
      dout(0) => Ground1_dout(0)
    );
Ground33: component Mayo_keygen_Ground32_0
     port map (
      dout(31 downto 0) => Ground32_dout1(31 downto 0)
    );
Ground5: component Mayo_keygen_Ground4_0
     port map (
      dout(3 downto 0) => Ground4_dout1(3 downto 0)
    );
MAYO_KEYGEN_FSM_0: component Mayo_keygen_MAYO_KEYGEN_FSM_0_0
     port map (
      CLK => processing_system7_0_FCLK_CLK0,
      ENABLE => mayo_axi_litev3_0_o_Keygen_en,
      PUBLIC_KEY_ADDR_I(31 downto 0) => Ground32_dout1(31 downto 0),
      RESET => rst_ps7_0_100M_peripheral_reset(0),
      SECRET_KEY_ADDR_I(31 downto 0) => Ground32_dout1(31 downto 0),
      i_add_done => mayo_add_vectors_0_o_done,
      i_debug => mayo_axi_litev3_0_o_Debug,
      i_expose => mayo_axi_litev3_0_o_Expose,
      i_hash_done => mayo_hash_arbiter_0_o_key_done,
      i_hash_dyn_done => mayo_hash_arbiter_0_o_key_dyn_done,
      i_lin_done => mayo_linear_combinat_0_o_done,
      i_mem0a_dout(31 downto 0) => arbit_brama0_BRAM_key_dout(31 downto 0),
      i_mem0b_dout(31 downto 0) => arbit_bramb0_BRAM_key_dout(31 downto 0),
      i_mem1a_dout(31 downto 0) => arbit_brama1_BRAM_key_dout1(31 downto 0),
      i_neg_done => mayo_negate_0_o_done,
      i_red_done => mayo_reduce_0_o_done,
      i_sam_done => mayo_sample_oil_space_0_o_done,
      i_trng_data(31 downto 0) => TRNG_o_trng0_data(31 downto 0),
      i_trng_done => TRNG_o_trng0_done,
      i_trng_valid => TRNG_o_trng0_valid,
      o_add_bram_sel(1 downto 0) => MAYO_KEYGEN_FSM_0_o_add_bram_sel(1 downto 0),
      o_add_enable => MAYO_KEYGEN_FSM_0_o_add_enable,
      o_add_out_addr(31 downto 0) => MAYO_KEYGEN_FSM_0_o_add_out_addr(31 downto 0),
      o_add_v1_addr(31 downto 0) => MAYO_KEYGEN_FSM_0_o_add_v1_addr(31 downto 0),
      o_add_v2_addr(31 downto 0) => MAYO_KEYGEN_FSM_0_o_add_v2_addr(31 downto 0),
      o_busy => MAYO_KEYGEN_FSM_0_o_busy,
      o_done => MAYO_KEYGEN_FSM_0_o_done,
      o_err(1 downto 0) => MAYO_KEYGEN_FSM_0_o_err(1 downto 0),
      o_hash_en => MAYO_KEYGEN_FSM_0_o_hash_en,
      o_hash_memsel => MAYO_KEYGEN_FSM_0_o_hash_memsel,
      o_hash_mlen(31 downto 0) => MAYO_KEYGEN_FSM_0_o_hash_mlen(31 downto 0),
      o_hash_olen(31 downto 0) => MAYO_KEYGEN_FSM_0_o_hash_olen(31 downto 0),
      o_hash_read_adr(31 downto 0) => MAYO_KEYGEN_FSM_0_o_hash_read_adr(31 downto 0),
      o_hash_write_adr(31 downto 0) => MAYO_KEYGEN_FSM_0_o_hash_write_adr(31 downto 0),
      o_lin_bram_halt => MAYO_KEYGEN_FSM_0_o_lin_bram_halt,
      o_lin_coeffs_addr(31 downto 0) => MAYO_KEYGEN_FSM_0_o_lin_coeffs_addr(31 downto 0),
      o_lin_enable => MAYO_KEYGEN_FSM_0_o_lin_enable,
      o_lin_len(31 downto 0) => MAYO_KEYGEN_FSM_0_o_lin_len(31 downto 0),
      o_lin_out_addr(31 downto 0) => MAYO_KEYGEN_FSM_0_o_lin_out_addr(31 downto 0),
      o_lin_vec_addr(31 downto 0) => MAYO_KEYGEN_FSM_0_o_lin_vec_addr(31 downto 0),
      o_mem0a_addr(31 downto 0) => MAYO_KEYGEN_FSM_0_o_mem0a_addr(31 downto 0),
      o_mem0a_control => bram_control_2,
      o_mem0a_din(31 downto 0) => MAYO_KEYGEN_FSM_0_o_mem0a_din(31 downto 0),
      o_mem0a_en => MAYO_KEYGEN_FSM_0_o_mem0a_en,
      o_mem0a_rst => MAYO_KEYGEN_FSM_0_o_mem0a_rst,
      o_mem0a_we(3 downto 0) => BRAM_key_we_1(3 downto 0),
      o_mem0b_addr(31 downto 0) => BRAM_key_addr1_1(31 downto 0),
      o_mem0b_control => MAYO_KEYGEN_FSM_0_o_mem0b_control,
      o_mem0b_din(31 downto 0) => MAYO_KEYGEN_FSM_0_o_mem0b_din(31 downto 0),
      o_mem0b_en => MAYO_KEYGEN_FSM_0_o_mem0b_en,
      o_mem0b_rst => BRAM_key_rst1_1,
      o_mem0b_we(3 downto 0) => MAYO_KEYGEN_FSM_0_o_mem0b_we(3 downto 0),
      o_mem1a_addr(31 downto 0) => BRAM_key_addr_1(31 downto 0),
      o_mem1a_control => bram_control_1,
      o_mem1a_din(31 downto 0) => MAYO_KEYGEN_FSM_0_o_mem1a_din(31 downto 0),
      o_mem1a_en => MAYO_KEYGEN_FSM_0_o_mem1a_en,
      o_mem1a_rst => BRAM_key_rst_1,
      o_mem1a_we(3 downto 0) => MAYO_KEYGEN_FSM_0_o_mem1a_we(3 downto 0),
      o_neg_adr(31 downto 0) => MAYO_KEYGEN_FSM_0_o_neg_adr(31 downto 0),
      o_neg_enable => MAYO_KEYGEN_FSM_0_o_neg_enable,
      o_neg_len(31 downto 0) => MAYO_KEYGEN_FSM_0_o_neg_len(31 downto 0),
      o_red_adr(31 downto 0) => MAYO_KEYGEN_FSM_0_o_red_adr(31 downto 0),
      o_red_bram_sel => MAYO_KEYGEN_FSM_0_o_red_bram_sel,
      o_red_enable => MAYO_KEYGEN_FSM_0_o_red_enable,
      o_red_len(31 downto 0) => MAYO_KEYGEN_FSM_0_o_red_len(31 downto 0),
      o_sam_enable => MAYO_KEYGEN_FSM_0_o_sam_enable,
      o_sam_oil_addr(31 downto 0) => MAYO_KEYGEN_FSM_0_o_sam_oil_addr(31 downto 0),
      o_trng_data(31 downto 0) => MAYO_KEYGEN_FSM_0_o_trng_data(31 downto 0),
      o_trng_r => MAYO_KEYGEN_FSM_0_o_trng_r,
      o_trng_w => MAYO_KEYGEN_FSM_0_o_trng_w
    );
TRNG: entity work.TRNG_imp_1KWX5GC
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      i_trng0_data(31 downto 0) => MAYO_KEYGEN_FSM_0_o_trng_data(31 downto 0),
      i_trng0_r => MAYO_KEYGEN_FSM_0_o_trng_r,
      i_trng0_w => MAYO_KEYGEN_FSM_0_o_trng_w,
      i_trng1_data1(31 downto 0) => mayo_sample_oil_space_0_o_trng_data(31 downto 0),
      i_trng1_r => mayo_sample_oil_space_0_o_trng_r,
      i_trng1_w => mayo_sample_oil_space_0_o_trng_w,
      i_trng_sel => mayo_sample_oil_space_0_o_trng_sel,
      o_trng0_data(31 downto 0) => TRNG_o_trng0_data(31 downto 0),
      o_trng0_done => TRNG_o_trng0_done,
      o_trng0_valid => TRNG_o_trng0_valid,
      o_trng1_data(31 downto 0) => TRNG_o_trng1_data(31 downto 0),
      o_trng1_done => TRNG_o_trng1_done,
      o_trng1_valid => TRNG_o_trng1_valid,
      rst => rst_ps7_0_100M_peripheral_reset(0)
    );
hash: entity work.hash_imp_1FCB8TA
     port map (
      BRAM0_addr(31 downto 0) => hash_BRAM0_addr(31 downto 0),
      BRAM0_control => hash_BRAM0_control,
      BRAM0_din(31 downto 0) => hash_BRAM0_din(31 downto 0),
      BRAM0_dout(31 downto 0) => BRAM0_dout_1(31 downto 0),
      BRAM0_en => hash_BRAM0_en,
      BRAM0_we(3 downto 0) => hash_BRAM0_we(3 downto 0),
      BRAM1_control => hash_control_1,
      BRAMA_addr(31 downto 0) => MAYO_SHAKE_1_BRAMA_addr(31 downto 0),
      BRAMA_din(31 downto 0) => MAYO_SHAKE_1_BRAMA_din(31 downto 0),
      BRAMA_dout(31 downto 0) => arbit_brama1_BRAM_hash_dout(31 downto 0),
      BRAMA_en => MAYO_SHAKE_1_BRAMA_en,
      BRAMA_we(3 downto 0) => MAYO_SHAKE_1_BRAMA_we(3 downto 0),
      bram_sel => MAYO_KEYGEN_FSM_0_o_hash_memsel,
      clk => processing_system7_0_FCLK_CLK0,
      i_key_en => MAYO_KEYGEN_FSM_0_o_hash_en,
      i_key_mlen(31 downto 0) => MAYO_KEYGEN_FSM_0_o_hash_mlen(31 downto 0),
      i_key_olen(31 downto 0) => MAYO_KEYGEN_FSM_0_o_hash_olen(31 downto 0),
      i_key_read_adr(31 downto 0) => MAYO_KEYGEN_FSM_0_o_hash_read_adr(31 downto 0),
      i_key_write_adr(31 downto 0) => MAYO_KEYGEN_FSM_0_o_hash_write_adr(31 downto 0),
      o_key_done => mayo_hash_arbiter_0_o_key_done,
      o_key_dyn_done => mayo_hash_arbiter_0_o_key_dyn_done,
      rst => rst_ps7_0_100M_peripheral_reset(0)
    );
mayo_add_vectors_0: component Mayo_keygen_mayo_add_vectors_0_0
     port map (
      i_bram_sel(1 downto 0) => MAYO_KEYGEN_FSM_0_o_add_bram_sel(1 downto 0),
      i_clk => processing_system7_0_FCLK_CLK0,
      i_enable => MAYO_KEYGEN_FSM_0_o_add_enable,
      i_mema_dout(31 downto 0) => BRAM_small_BRAM_add_dout(31 downto 0),
      i_memb_dout(31 downto 0) => BRAM_small_BRAM_add_dout1(31 downto 0),
      i_memc_dout(31 downto 0) => BRAM_big_BRAM_add_dout(31 downto 0),
      i_out_addr(31 downto 0) => MAYO_KEYGEN_FSM_0_o_add_out_addr(31 downto 0),
      i_v1_addr(31 downto 0) => MAYO_KEYGEN_FSM_0_o_add_v1_addr(31 downto 0),
      i_v2_addr(31 downto 0) => MAYO_KEYGEN_FSM_0_o_add_v2_addr(31 downto 0),
      o_controla => mayo_add_vectors_0_o_controla,
      o_controlb => mayo_add_vectors_0_o_controlb,
      o_controlc => add_control_1,
      o_done => mayo_add_vectors_0_o_done,
      o_mema_addr(31 downto 0) => mayo_add_vectors_0_o_mema_addr(31 downto 0),
      o_mema_din(31 downto 0) => mayo_add_vectors_0_o_mema_din(31 downto 0),
      o_mema_en => mayo_add_vectors_0_o_mema_en,
      o_mema_rst => mayo_add_vectors_0_o_mema_rst,
      o_mema_we(3 downto 0) => mayo_add_vectors_0_o_mema_we(3 downto 0),
      o_memb_addr(31 downto 0) => mayo_add_vectors_0_o_memb_addr(31 downto 0),
      o_memb_din(31 downto 0) => mayo_add_vectors_0_o_memb_din(31 downto 0),
      o_memb_en => mayo_add_vectors_0_o_memb_en,
      o_memb_rst => mayo_add_vectors_0_o_memb_rst,
      o_memb_we(3 downto 0) => mayo_add_vectors_0_o_memb_we(3 downto 0),
      o_memc_addr(31 downto 0) => mayo_add_vectors_0_o_memc_addr(31 downto 0),
      o_memc_din(31 downto 0) => mayo_add_vectors_0_o_memc_din(31 downto 0),
      o_memc_en => mayo_add_vectors_0_o_memc_en,
      o_memc_rst => mayo_add_vectors_0_o_memc_rst,
      o_memc_we(3 downto 0) => mayo_add_vectors_0_o_memc_we(3 downto 0),
      rst => rst_ps7_0_100M_peripheral_reset(0)
    );
mayo_axi_litev3_0: component Mayo_keygen_mayo_axi_litev3_0_0
     port map (
      i_Keygen_busy => MAYO_KEYGEN_FSM_0_o_busy,
      i_Keygen_done => MAYO_KEYGEN_FSM_0_o_done,
      i_Signing_busy => Ground1_dout(0),
      i_Signing_done => Ground1_dout(0),
      i_Verification_busy => Ground1_dout(0),
      i_Verification_done => Ground1_dout(0),
      i_error(7 downto 0) => xlconcat_0_dout(7 downto 0),
      o_Debug => mayo_axi_litev3_0_o_Debug,
      o_Expose => mayo_axi_litev3_0_o_Expose,
      o_Keygen_en => mayo_axi_litev3_0_o_Keygen_en,
      o_Signing_en => NLW_mayo_axi_litev3_0_o_Signing_en_UNCONNECTED,
      o_Verification_en => NLW_mayo_axi_litev3_0_o_Verification_en_UNCONNECTED,
      o_interrupt => mayo_axi_litev3_0_o_interrupt,
      o_irq_en => NLW_mayo_axi_litev3_0_o_irq_en_UNCONNECTED,
      s00_axi_aclk => processing_system7_0_FCLK_CLK0,
      s00_axi_araddr(4 downto 0) => ps7_0_axi_periph_M01_AXI_ARADDR(4 downto 0),
      s00_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s00_axi_arprot(2 downto 0) => ps7_0_axi_periph_M01_AXI_ARPROT(2 downto 0),
      s00_axi_arready => ps7_0_axi_periph_M01_AXI_ARREADY,
      s00_axi_arvalid => ps7_0_axi_periph_M01_AXI_ARVALID,
      s00_axi_awaddr(4 downto 0) => ps7_0_axi_periph_M01_AXI_AWADDR(4 downto 0),
      s00_axi_awprot(2 downto 0) => ps7_0_axi_periph_M01_AXI_AWPROT(2 downto 0),
      s00_axi_awready => ps7_0_axi_periph_M01_AXI_AWREADY,
      s00_axi_awvalid => ps7_0_axi_periph_M01_AXI_AWVALID,
      s00_axi_bready => ps7_0_axi_periph_M01_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => ps7_0_axi_periph_M01_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      s00_axi_rready => ps7_0_axi_periph_M01_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => ps7_0_axi_periph_M01_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      s00_axi_wready => ps7_0_axi_periph_M01_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => ps7_0_axi_periph_M01_AXI_WVALID
    );
mayo_linear_combinat_0: component Mayo_keygen_mayo_linear_combinat_0_0
     port map (
      i_bram_halt => MAYO_KEYGEN_FSM_0_o_lin_bram_halt,
      i_clk => processing_system7_0_FCLK_CLK0,
      i_coeffs_addr(31 downto 0) => MAYO_KEYGEN_FSM_0_o_lin_coeffs_addr(31 downto 0),
      i_enable => MAYO_KEYGEN_FSM_0_o_lin_enable,
      i_len(31 downto 0) => MAYO_KEYGEN_FSM_0_o_lin_len(31 downto 0),
      i_mem0a_dout(31 downto 0) => arbit_brama0_BRAM_lin_dout(31 downto 0),
      i_mem0b_dout(31 downto 0) => mayo_bram_arbiter_1_BRAM_lin_dout(31 downto 0),
      i_mem1a_dout(31 downto 0) => arbit_brama1_BRAM_lin_dout(31 downto 0),
      i_out_addr(31 downto 0) => MAYO_KEYGEN_FSM_0_o_lin_out_addr(31 downto 0),
      i_vec_addr(31 downto 0) => MAYO_KEYGEN_FSM_0_o_lin_vec_addr(31 downto 0),
      o_control0a => mayo_linear_combinat_0_o_control0a,
      o_control0b => mayo_linear_combinat_0_o_control0b,
      o_control1a => mayo_linear_combinat_0_o_control1a,
      o_done => mayo_linear_combinat_0_o_done,
      o_mem0a_addr(31 downto 0) => mayo_linear_combinat_0_o_mem0a_addr(31 downto 0),
      o_mem0a_din(31 downto 0) => mayo_linear_combinat_0_o_mem0a_din(31 downto 0),
      o_mem0a_en => mayo_linear_combinat_0_o_mem0a_en,
      o_mem0a_rst => mayo_linear_combinat_0_o_mem0a_rst,
      o_mem0a_we(3 downto 0) => mayo_linear_combinat_0_o_mem0a_we(3 downto 0),
      o_mem0b_addr(31 downto 0) => mayo_linear_combinat_0_o_mem0b_addr(31 downto 0),
      o_mem0b_din(31 downto 0) => mayo_linear_combinat_0_o_mem0b_din(31 downto 0),
      o_mem0b_en => mayo_linear_combinat_0_o_mem0b_en,
      o_mem0b_rst => mayo_linear_combinat_0_o_mem0b_rst,
      o_mem0b_we(3 downto 0) => mayo_linear_combinat_0_o_mem0b_we(3 downto 0),
      o_mem1a_addr(31 downto 0) => mayo_linear_combinat_0_o_mem1a_addr(31 downto 0),
      o_mem1a_din(31 downto 0) => mayo_linear_combinat_0_o_mem1a_din(31 downto 0),
      o_mem1a_en => mayo_linear_combinat_0_o_mem1a_en,
      o_mem1a_rst => mayo_linear_combinat_0_o_mem1a_rst,
      o_mem1a_we(3 downto 0) => mayo_linear_combinat_0_o_mem1a_we(3 downto 0),
      rst => rst_ps7_0_100M_peripheral_reset(0)
    );
mayo_negate_0: component Mayo_keygen_mayo_negate_0_0
     port map (
      i_adr(31 downto 0) => MAYO_KEYGEN_FSM_0_o_neg_adr(31 downto 0),
      i_clk => processing_system7_0_FCLK_CLK0,
      i_doutb(31 downto 0) => arbit_brama0_BRAM_neg_dout(31 downto 0),
      i_enable => MAYO_KEYGEN_FSM_0_o_neg_enable,
      i_len(31 downto 0) => MAYO_KEYGEN_FSM_0_o_neg_len(31 downto 0),
      o_addrb(31 downto 0) => mayo_negate_0_o_addrb(31 downto 0),
      o_control => mayo_negate_0_o_control,
      o_dinb(31 downto 0) => mayo_negate_0_o_dinb(31 downto 0),
      o_done => mayo_negate_0_o_done,
      o_enb => mayo_negate_0_o_enb,
      o_rstb => mayo_negate_0_o_rstb,
      o_web(3 downto 0) => mayo_negate_0_o_web(3 downto 0),
      rst => rst_ps7_0_100M_peripheral_reset(0)
    );
mayo_reduce_0: component Mayo_keygen_mayo_reduce_0_0
     port map (
      i_adr(31 downto 0) => MAYO_KEYGEN_FSM_0_o_red_adr(31 downto 0),
      i_bram_sel => MAYO_KEYGEN_FSM_0_o_red_bram_sel,
      i_clk => processing_system7_0_FCLK_CLK0,
      i_dout0(31 downto 0) => arbit_brama0_BRAM_red_dout(31 downto 0),
      i_dout1(31 downto 0) => BRAM_big_BRAM_red_dout(31 downto 0),
      i_enable => MAYO_KEYGEN_FSM_0_o_red_enable,
      i_len(31 downto 0) => MAYO_KEYGEN_FSM_0_o_red_len(31 downto 0),
      o_addr0(31 downto 0) => mayo_reduce_0_o_addrb(31 downto 0),
      o_addr1(31 downto 0) => mayo_reduce_0_o_addr1(31 downto 0),
      o_control0 => mayo_reduce_0_o_control,
      o_control1 => mayo_reduce_0_o_control1,
      o_din0(31 downto 0) => mayo_reduce_0_o_din0(31 downto 0),
      o_din1(31 downto 0) => mayo_reduce_0_o_din1(31 downto 0),
      o_done => mayo_reduce_0_o_done,
      o_en0 => mayo_reduce_0_o_enb,
      o_en1 => mayo_reduce_0_o_en1,
      o_rst0 => mayo_reduce_0_o_rstb,
      o_rst1 => mayo_reduce_0_o_rst1,
      o_we0(3 downto 0) => mayo_reduce_0_o_web(3 downto 0),
      o_we1(3 downto 0) => mayo_reduce_0_o_we1(3 downto 0),
      rst => rst_ps7_0_100M_peripheral_reset(0)
    );
mayo_sample_oil_space_0: component Mayo_keygen_mayo_sample_oil_space_0_0
     port map (
      i_clk => processing_system7_0_FCLK_CLK0,
      i_enable => MAYO_KEYGEN_FSM_0_o_sam_enable,
      i_memb_dout(31 downto 0) => arbit_bramb0_BRAM_sam_dout(31 downto 0),
      i_oil_addr(31 downto 0) => MAYO_KEYGEN_FSM_0_o_sam_oil_addr(31 downto 0),
      i_trng_data(31 downto 0) => TRNG_o_trng1_data(31 downto 0),
      i_trng_done => TRNG_o_trng1_done,
      i_trng_valid => TRNG_o_trng1_valid,
      o_controlb => mayo_sample_oil_space_0_o_controlb,
      o_done => mayo_sample_oil_space_0_o_done,
      o_memb_addr(31 downto 0) => mayo_sample_oil_space_0_o_memb_addr(31 downto 0),
      o_memb_din(31 downto 0) => mayo_sample_oil_space_0_o_memb_din(31 downto 0),
      o_memb_en => mayo_sample_oil_space_0_o_memb_en,
      o_memb_rst => mayo_sample_oil_space_0_o_memb_rst,
      o_memb_we(3 downto 0) => mayo_sample_oil_space_0_o_memb_we(3 downto 0),
      o_trng_data(31 downto 0) => mayo_sample_oil_space_0_o_trng_data(31 downto 0),
      o_trng_r => mayo_sample_oil_space_0_o_trng_r,
      o_trng_sel => mayo_sample_oil_space_0_o_trng_sel,
      o_trng_w => mayo_sample_oil_space_0_o_trng_w,
      rst => rst_ps7_0_100M_peripheral_reset(0)
    );
processing_system7_0: component Mayo_keygen_processing_system7_0_0
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
ps7_0_axi_periph: entity work.Mayo_keygen_ps7_0_axi_periph_0
     port map (
      ACLK => processing_system7_0_FCLK_CLK0,
      ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M00_ACLK => processing_system7_0_FCLK_CLK0,
      M00_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => ps7_0_axi_periph_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => ps7_0_axi_periph_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arid(11 downto 0) => ps7_0_axi_periph_M00_AXI_ARID(11 downto 0),
      M00_AXI_arlen(7 downto 0) => ps7_0_axi_periph_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock => ps7_0_axi_periph_M00_AXI_ARLOCK,
      M00_AXI_arprot(2 downto 0) => ps7_0_axi_periph_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arready => ps7_0_axi_periph_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => ps7_0_axi_periph_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => ps7_0_axi_periph_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => ps7_0_axi_periph_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => ps7_0_axi_periph_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awid(11 downto 0) => ps7_0_axi_periph_M00_AXI_AWID(11 downto 0),
      M00_AXI_awlen(7 downto 0) => ps7_0_axi_periph_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock => ps7_0_axi_periph_M00_AXI_AWLOCK,
      M00_AXI_awprot(2 downto 0) => ps7_0_axi_periph_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awready => ps7_0_axi_periph_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => ps7_0_axi_periph_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => ps7_0_axi_periph_M00_AXI_AWVALID,
      M00_AXI_bid(11 downto 0) => ps7_0_axi_periph_M00_AXI_BID(11 downto 0),
      M00_AXI_bready => ps7_0_axi_periph_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => ps7_0_axi_periph_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rid(11 downto 0) => ps7_0_axi_periph_M00_AXI_RID(11 downto 0),
      M00_AXI_rlast => ps7_0_axi_periph_M00_AXI_RLAST,
      M00_AXI_rready => ps7_0_axi_periph_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => ps7_0_axi_periph_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wlast => ps7_0_axi_periph_M00_AXI_WLAST,
      M00_AXI_wready => ps7_0_axi_periph_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => ps7_0_axi_periph_M00_AXI_WVALID,
      M01_ACLK => processing_system7_0_FCLK_CLK0,
      M01_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M01_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arprot(2 downto 0) => ps7_0_axi_periph_M01_AXI_ARPROT(2 downto 0),
      M01_AXI_arready => ps7_0_axi_periph_M01_AXI_ARREADY,
      M01_AXI_arvalid => ps7_0_axi_periph_M01_AXI_ARVALID,
      M01_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awprot(2 downto 0) => ps7_0_axi_periph_M01_AXI_AWPROT(2 downto 0),
      M01_AXI_awready => ps7_0_axi_periph_M01_AXI_AWREADY,
      M01_AXI_awvalid => ps7_0_axi_periph_M01_AXI_AWVALID,
      M01_AXI_bready => ps7_0_axi_periph_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => ps7_0_axi_periph_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => ps7_0_axi_periph_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => ps7_0_axi_periph_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => ps7_0_axi_periph_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => ps7_0_axi_periph_M01_AXI_WVALID,
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
rst_ps7_0_100M: component Mayo_keygen_rst_ps7_0_100M_0
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
xlconcat_0: component Mayo_keygen_xlconcat_0_0
     port map (
      In0(1 downto 0) => MAYO_KEYGEN_FSM_0_o_err(1 downto 0),
      In1(3 downto 0) => Ground4_dout1(3 downto 0),
      In2(0) => Ground1_dout(0),
      In3(0) => Ground1_dout(0),
      dout(7 downto 0) => xlconcat_0_dout(7 downto 0)
    );
end STRUCTURE;
