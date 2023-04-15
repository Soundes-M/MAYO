--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
--Date        : Sat Apr  1 14:06:11 2023
--Host        : osm-hzb running 64-bit Ubuntu 20.04.6 LTS
--Command     : generate_target Mayo_keygen_no_zynq.bd
--Design      : Mayo_keygen_no_zynq
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BRAM_big_imp_13MOJ7Q is
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
    add_control : in STD_LOGIC;
    bram_control : in STD_LOGIC;
    clka : in STD_LOGIC;
    hash_control : in STD_LOGIC;
    lin_control : in STD_LOGIC;
    red_control : in STD_LOGIC
  );
end BRAM_big_imp_13MOJ7Q;

architecture STRUCTURE of BRAM_big_imp_13MOJ7Q is
  component Mayo_keygen_no_zynq_BIG_BRAM512K_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rsta_busy : out STD_LOGIC
  );
  end component Mayo_keygen_no_zynq_BIG_BRAM512K_0;
  component Mayo_keygen_no_zynq_arbit_brama1_0 is
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
  end component Mayo_keygen_no_zynq_arbit_brama1_0;
  signal BIG_BRAM512K_douta : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  signal arbit_brama1_BRAM_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal bram_control_1 : STD_LOGIC;
  signal mayo_linear_combinat_0_o_control1a : STD_LOGIC;
  signal mayo_linear_combinat_0_o_mem1a_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_linear_combinat_0_o_mem1a_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mayo_linear_combinat_0_o_mem1a_en : STD_LOGIC;
  signal mayo_linear_combinat_0_o_mem1a_rst : STD_LOGIC;
  signal mayo_linear_combinat_0_o_mem1a_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal red_control_1 : STD_LOGIC;
  signal NLW_BIG_BRAM512K_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_arbit_brama1_BRAM_rst_UNCONNECTED : STD_LOGIC;
  signal NLW_arbit_brama1_BRAM_neg_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_arbit_brama1_BRAM_sam_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  MAYO_SHAKE_1_BRAMA_addr(31 downto 0) <= BRAM_hash_addr(31 downto 0);
  MAYO_SHAKE_1_BRAMA_din(31 downto 0) <= BRAM_hash_din(31 downto 0);
  MAYO_SHAKE_1_BRAMA_en <= BRAM_hash_en;
  MAYO_SHAKE_1_BRAMA_we(3 downto 0) <= BRAM_hash_we(3 downto 0);
  MAYO_SHAKE_1_o_control <= hash_control;
  add_control_1 <= add_control;
  bram_control_1 <= bram_control;
  mayo_linear_combinat_0_o_control1a <= lin_control;
  mayo_linear_combinat_0_o_mem1a_addr(31 downto 0) <= BRAM_lin_addr(31 downto 0);
  mayo_linear_combinat_0_o_mem1a_din(31 downto 0) <= BRAM_lin_din(31 downto 0);
  mayo_linear_combinat_0_o_mem1a_en <= BRAM_lin_en;
  mayo_linear_combinat_0_o_mem1a_rst <= BRAM_lin_rst;
  mayo_linear_combinat_0_o_mem1a_we(3 downto 0) <= BRAM_lin_we(3 downto 0);
  processing_system7_0_FCLK_CLK0 <= clka;
  red_control_1 <= red_control;
BIG_BRAM512K: component Mayo_keygen_no_zynq_BIG_BRAM512K_0
     port map (
      addra(31 downto 0) => arbit_brama1_BRAM_addr(31 downto 0),
      clka => processing_system7_0_FCLK_CLK0,
      dina(31 downto 0) => arbit_brama1_BRAM_din(31 downto 0),
      douta(31 downto 0) => BIG_BRAM512K_douta(31 downto 0),
      ena => arbit_brama1_BRAM_en,
      rsta => '0',
      rsta_busy => NLW_BIG_BRAM512K_rsta_busy_UNCONNECTED,
      wea(3 downto 0) => arbit_brama1_BRAM_we(3 downto 0)
    );
arbit_brama1: component Mayo_keygen_no_zynq_arbit_brama1_0
     port map (
      BRAM_add_addr(31 downto 0) => BRAM_add_addr_1(31 downto 0),
      BRAM_add_din(31 downto 0) => BRAM_add_din_1(31 downto 0),
      BRAM_add_dout(31 downto 0) => arbit_brama1_BRAM_add_dout(31 downto 0),
      BRAM_add_en => BRAM_add_en_1,
      BRAM_add_rst => BRAM_add_rst1_1,
      BRAM_add_we(3 downto 0) => BRAM_add_we1_1(3 downto 0),
      BRAM_addr(31 downto 0) => arbit_brama1_BRAM_addr(31 downto 0),
      BRAM_din(31 downto 0) => arbit_brama1_BRAM_din(31 downto 0),
      BRAM_dout(31 downto 0) => BIG_BRAM512K_douta(31 downto 0),
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
      BRAM_rst => NLW_arbit_brama1_BRAM_rst_UNCONNECTED,
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BRAM_small_imp_16BUBJ2 is
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
    rst : in STD_LOGIC;
    sam_control1 : in STD_LOGIC
  );
end BRAM_small_imp_16BUBJ2;

architecture STRUCTURE of BRAM_small_imp_16BUBJ2 is
  component Mayo_keygen_no_zynq_Small_BRAM8k_0 is
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
  end component Mayo_keygen_no_zynq_Small_BRAM8k_0;
  component Mayo_keygen_no_zynq_arbit_brama0_0 is
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
  end component Mayo_keygen_no_zynq_arbit_brama0_0;
  component Mayo_keygen_no_zynq_arbit_bramb0_0 is
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
  end component Mayo_keygen_no_zynq_arbit_bramb0_0;
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
  signal rst_ps7_0_100M_peripheral_aresetn : STD_LOGIC;
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
  rst_ps7_0_100M_peripheral_aresetn <= rst;
  sam_control1_1 <= sam_control1;
Small_BRAM8k: component Mayo_keygen_no_zynq_Small_BRAM8k_0
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
arbit_brama0: component Mayo_keygen_no_zynq_arbit_brama0_0
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
arbit_bramb0: component Mayo_keygen_no_zynq_arbit_bramb0_0
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
entity TRNG_imp_G7X2XE is
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
end TRNG_imp_G7X2XE;

architecture STRUCTURE of TRNG_imp_G7X2XE is
  component Mayo_keygen_no_zynq_TRNG_0_0 is
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
  end component Mayo_keygen_no_zynq_TRNG_0_0;
  component Mayo_keygen_no_zynq_mayo_trng_arbiter_0_0 is
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
  end component Mayo_keygen_no_zynq_mayo_trng_arbiter_0_0;
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
TRNG_0: component Mayo_keygen_no_zynq_TRNG_0_0
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
mayo_trng_arbiter_0: component Mayo_keygen_no_zynq_mayo_trng_arbiter_0_0
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
entity hash_imp_EASPA4 is
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
end hash_imp_EASPA4;

architecture STRUCTURE of hash_imp_EASPA4 is
  component Mayo_keygen_no_zynq_MAYO_SHAKE_1_0 is
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
  end component Mayo_keygen_no_zynq_MAYO_SHAKE_1_0;
  component Mayo_keygen_no_zynq_mayo_hash_bram_arbit_0_0 is
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
  end component Mayo_keygen_no_zynq_mayo_hash_bram_arbit_0_0;
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
MAYO_SHAKE_1: component Mayo_keygen_no_zynq_MAYO_SHAKE_1_0
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
mayo_hash_bram_arbit_0: component Mayo_keygen_no_zynq_mayo_hash_bram_arbit_0_0
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
entity Mayo_keygen_no_zynq is
  port (
    clk : in STD_LOGIC;
    done : out STD_LOGIC;
    enable : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Mayo_keygen_no_zynq : entity is "Mayo_keygen_no_zynq,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Mayo_keygen_no_zynq,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=22,numReposBlks=18,numNonXlnxBlks=2,numHierBlks=4,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=11,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=2,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of Mayo_keygen_no_zynq : entity is "Mayo_keygen_no_zynq.hwdef";
end Mayo_keygen_no_zynq;

architecture STRUCTURE of Mayo_keygen_no_zynq is
  component Mayo_keygen_no_zynq_Ground0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component Mayo_keygen_no_zynq_Ground0_0;
  component Mayo_keygen_no_zynq_Ground32_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Mayo_keygen_no_zynq_Ground32_0;
  component Mayo_keygen_no_zynq_Ground4_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component Mayo_keygen_no_zynq_Ground4_0;
  component Mayo_keygen_no_zynq_MAYO_KEYGEN_FSM_0_0 is
  port (
    CLK : in STD_LOGIC;
    ENABLE : in STD_LOGIC;
    RESET : in STD_LOGIC;
    PUBLIC_KEY_ADDR_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SECRET_KEY_ADDR_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_busy : out STD_LOGIC;
    o_done : out STD_LOGIC;
    i_expose : in STD_LOGIC;
    i_irq : in STD_LOGIC;
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
  end component Mayo_keygen_no_zynq_MAYO_KEYGEN_FSM_0_0;
  component Mayo_keygen_no_zynq_mayo_add_vectors_0_0 is
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
  end component Mayo_keygen_no_zynq_mayo_add_vectors_0_0;
  component Mayo_keygen_no_zynq_mayo_linear_combinat_0_0 is
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
  end component Mayo_keygen_no_zynq_mayo_linear_combinat_0_0;
  component Mayo_keygen_no_zynq_mayo_negate_0_0 is
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
  end component Mayo_keygen_no_zynq_mayo_negate_0_0;
  component Mayo_keygen_no_zynq_mayo_reduce_0_0 is
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
  end component Mayo_keygen_no_zynq_mayo_reduce_0_0;
  component Mayo_keygen_no_zynq_mayo_sample_oil_space_0_0 is
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
  end component Mayo_keygen_no_zynq_mayo_sample_oil_space_0_0;
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
  signal Ground0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Ground32_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Ground4_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MAYO_KEYGEN_FSM_0_o_add_bram_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal MAYO_KEYGEN_FSM_0_o_add_enable : STD_LOGIC;
  signal MAYO_KEYGEN_FSM_0_o_add_out_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_KEYGEN_FSM_0_o_add_v1_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_KEYGEN_FSM_0_o_add_v2_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MAYO_KEYGEN_FSM_0_o_done : STD_LOGIC;
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
  signal arbit_brama1_BRAM_key_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal arbit_brama1_BRAM_lin_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal arbit_bramb0_BRAM_key_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal arbit_bramb0_BRAM_sam_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal bram_control_1 : STD_LOGIC;
  signal bram_control_2 : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal enable_1 : STD_LOGIC;
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
  signal rst_1 : STD_LOGIC;
  signal NLW_MAYO_KEYGEN_FSM_0_o_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_MAYO_KEYGEN_FSM_0_o_err_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  clk_1 <= clk;
  done <= MAYO_KEYGEN_FSM_0_o_done;
  enable_1 <= enable;
  rst_1 <= rst;
BRAM_big: entity work.BRAM_big_imp_13MOJ7Q
     port map (
      BRAM_add_addr(31 downto 0) => mayo_add_vectors_0_o_memc_addr(31 downto 0),
      BRAM_add_din(31 downto 0) => mayo_add_vectors_0_o_memc_din(31 downto 0),
      BRAM_add_dout(31 downto 0) => BRAM_big_BRAM_add_dout(31 downto 0),
      BRAM_add_en => mayo_add_vectors_0_o_memc_en,
      BRAM_add_rst => Ground0_dout(0),
      BRAM_add_rst1 => mayo_add_vectors_0_o_memc_rst,
      BRAM_add_we(3 downto 0) => Ground4_dout(3 downto 0),
      BRAM_add_we1(3 downto 0) => mayo_add_vectors_0_o_memc_we(3 downto 0),
      BRAM_hash_addr(31 downto 0) => MAYO_SHAKE_1_BRAMA_addr(31 downto 0),
      BRAM_hash_din(31 downto 0) => MAYO_SHAKE_1_BRAMA_din(31 downto 0),
      BRAM_hash_dout(31 downto 0) => arbit_brama1_BRAM_hash_dout(31 downto 0),
      BRAM_hash_en => MAYO_SHAKE_1_BRAMA_en,
      BRAM_hash_we(3 downto 0) => MAYO_SHAKE_1_BRAMA_we(3 downto 0),
      BRAM_key_addr(31 downto 0) => BRAM_key_addr_1(31 downto 0),
      BRAM_key_din(31 downto 0) => MAYO_KEYGEN_FSM_0_o_mem1a_din(31 downto 0),
      BRAM_key_dout(31 downto 0) => arbit_brama1_BRAM_key_dout(31 downto 0),
      BRAM_key_en => MAYO_KEYGEN_FSM_0_o_mem1a_en,
      BRAM_key_rst => BRAM_key_rst_1,
      BRAM_key_we(3 downto 0) => MAYO_KEYGEN_FSM_0_o_mem1a_we(3 downto 0),
      BRAM_lin_addr(31 downto 0) => mayo_linear_combinat_0_o_mem1a_addr(31 downto 0),
      BRAM_lin_din(31 downto 0) => mayo_linear_combinat_0_o_mem1a_din(31 downto 0),
      BRAM_lin_dout(31 downto 0) => arbit_brama1_BRAM_lin_dout(31 downto 0),
      BRAM_lin_en => mayo_linear_combinat_0_o_mem1a_en,
      BRAM_lin_rst => mayo_linear_combinat_0_o_mem1a_rst,
      BRAM_lin_we(3 downto 0) => mayo_linear_combinat_0_o_mem1a_we(3 downto 0),
      BRAM_neg_din(31 downto 0) => Ground32_dout(31 downto 0),
      BRAM_red_addr(31 downto 0) => mayo_reduce_0_o_addr1(31 downto 0),
      BRAM_red_din(31 downto 0) => mayo_reduce_0_o_din1(31 downto 0),
      BRAM_red_dout(31 downto 0) => BRAM_big_BRAM_red_dout(31 downto 0),
      BRAM_red_en => mayo_reduce_0_o_en1,
      BRAM_red_rst => mayo_reduce_0_o_rst1,
      BRAM_red_we(3 downto 0) => mayo_reduce_0_o_we1(3 downto 0),
      add_control => add_control_1,
      bram_control => bram_control_1,
      clka => clk_1,
      hash_control => hash_control_1,
      lin_control => mayo_linear_combinat_0_o_control1a,
      red_control => mayo_reduce_0_o_control1
    );
BRAM_small: entity work.BRAM_small_imp_16BUBJ2
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
      Zero0 => Ground0_dout(0),
      Zero_32(31 downto 0) => Ground32_dout(31 downto 0),
      Zero_4(3 downto 0) => Ground4_dout(3 downto 0),
      add_control => mayo_add_vectors_0_o_controla,
      add_control1 => mayo_add_vectors_0_o_controlb,
      bram_control => bram_control_2,
      bram_control1 => MAYO_KEYGEN_FSM_0_o_mem0b_control,
      clkb => clk_1,
      hash_control => hash_BRAM0_control,
      lin_control => mayo_linear_combinat_0_o_control0a,
      lin_control1 => mayo_linear_combinat_0_o_control0b,
      neg_control => mayo_negate_0_o_control,
      red_control => mayo_reduce_0_o_control,
      rst => rst_1,
      sam_control1 => mayo_sample_oil_space_0_o_controlb
    );
Ground0: component Mayo_keygen_no_zynq_Ground0_0
     port map (
      dout(0) => Ground0_dout(0)
    );
Ground32: component Mayo_keygen_no_zynq_Ground32_0
     port map (
      dout(31 downto 0) => Ground32_dout(31 downto 0)
    );
Ground4: component Mayo_keygen_no_zynq_Ground4_0
     port map (
      dout(3 downto 0) => Ground4_dout(3 downto 0)
    );
MAYO_KEYGEN_FSM_0: component Mayo_keygen_no_zynq_MAYO_KEYGEN_FSM_0_0
     port map (
      CLK => clk_1,
      ENABLE => enable_1,
      PUBLIC_KEY_ADDR_I(31 downto 0) => Ground32_dout(31 downto 0),
      RESET => rst_1,
      SECRET_KEY_ADDR_I(31 downto 0) => Ground32_dout(31 downto 0),
      i_add_done => mayo_add_vectors_0_o_done,
      i_debug => Ground0_dout(0),
      i_expose => Ground0_dout(0),
      i_hash_done => mayo_hash_arbiter_0_o_key_done,
      i_hash_dyn_done => mayo_hash_arbiter_0_o_key_dyn_done,
      i_irq => Ground0_dout(0),
      i_lin_done => mayo_linear_combinat_0_o_done,
      i_mem0a_dout(31 downto 0) => arbit_brama0_BRAM_key_dout(31 downto 0),
      i_mem0b_dout(31 downto 0) => arbit_bramb0_BRAM_key_dout(31 downto 0),
      i_mem1a_dout(31 downto 0) => arbit_brama1_BRAM_key_dout(31 downto 0),
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
      o_busy => NLW_MAYO_KEYGEN_FSM_0_o_busy_UNCONNECTED,
      o_done => MAYO_KEYGEN_FSM_0_o_done,
      o_err(1 downto 0) => NLW_MAYO_KEYGEN_FSM_0_o_err_UNCONNECTED(1 downto 0),
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
TRNG: entity work.TRNG_imp_G7X2XE
     port map (
      clk => clk_1,
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
      rst => rst_1
    );
hash: entity work.hash_imp_EASPA4
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
      clk => clk_1,
      i_key_en => MAYO_KEYGEN_FSM_0_o_hash_en,
      i_key_mlen(31 downto 0) => MAYO_KEYGEN_FSM_0_o_hash_mlen(31 downto 0),
      i_key_olen(31 downto 0) => MAYO_KEYGEN_FSM_0_o_hash_olen(31 downto 0),
      i_key_read_adr(31 downto 0) => MAYO_KEYGEN_FSM_0_o_hash_read_adr(31 downto 0),
      i_key_write_adr(31 downto 0) => MAYO_KEYGEN_FSM_0_o_hash_write_adr(31 downto 0),
      o_key_done => mayo_hash_arbiter_0_o_key_done,
      o_key_dyn_done => mayo_hash_arbiter_0_o_key_dyn_done,
      rst => rst_1
    );
mayo_add_vectors_0: component Mayo_keygen_no_zynq_mayo_add_vectors_0_0
     port map (
      i_bram_sel(1 downto 0) => MAYO_KEYGEN_FSM_0_o_add_bram_sel(1 downto 0),
      i_clk => clk_1,
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
      rst => rst_1
    );
mayo_linear_combinat_0: component Mayo_keygen_no_zynq_mayo_linear_combinat_0_0
     port map (
      i_bram_halt => MAYO_KEYGEN_FSM_0_o_lin_bram_halt,
      i_clk => clk_1,
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
      rst => rst_1
    );
mayo_negate_0: component Mayo_keygen_no_zynq_mayo_negate_0_0
     port map (
      i_adr(31 downto 0) => MAYO_KEYGEN_FSM_0_o_neg_adr(31 downto 0),
      i_clk => clk_1,
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
      rst => rst_1
    );
mayo_reduce_0: component Mayo_keygen_no_zynq_mayo_reduce_0_0
     port map (
      i_adr(31 downto 0) => MAYO_KEYGEN_FSM_0_o_red_adr(31 downto 0),
      i_bram_sel => MAYO_KEYGEN_FSM_0_o_red_bram_sel,
      i_clk => clk_1,
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
      rst => rst_1
    );
mayo_sample_oil_space_0: component Mayo_keygen_no_zynq_mayo_sample_oil_space_0_0
     port map (
      i_clk => clk_1,
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
      rst => rst_1
    );
end STRUCTURE;
