-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Wed Oct 19 15:04:53 2022
-- Host        : osm-hzb running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top Mayo_keygen_AXI_LITE_Mayo_Keygen_0_0 -prefix
--               Mayo_keygen_AXI_LITE_Mayo_Keygen_0_0_ Mayo_keygen_AXI_LITE_Mayo_Keygen_0_0_stub.vhdl
-- Design      : Mayo_keygen_AXI_LITE_Mayo_Keygen_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mayo_keygen_AXI_LITE_Mayo_Keygen_0_0 is
  Port ( 
    CLK : in STD_LOGIC;
    ENABLE : in STD_LOGIC;
    RESET : in STD_LOGIC;
    o_done : out STD_LOGIC;
    i_debug : in STD_LOGIC;
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
    o_red_enable : out STD_LOGIC;
    o_red_len : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_red_adr : out STD_LOGIC_VECTOR ( 31 downto 0 );
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
    o_mem1a_control : out STD_LOGIC;
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

end Mayo_keygen_AXI_LITE_Mayo_Keygen_0_0;

architecture stub of Mayo_keygen_AXI_LITE_Mayo_Keygen_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,ENABLE,RESET,o_done,i_debug,o_trng_r,o_trng_w,o_trng_data[31:0],i_trng_data[31:0],i_trng_valid,i_trng_done,o_hash_en,o_hash_mlen[31:0],o_hash_olen[31:0],o_hash_write_adr[31:0],o_hash_read_adr[31:0],i_hash_done,i_hash_dyn_done,o_red_enable,o_red_len[31:0],o_red_adr[31:0],i_red_done,o_sam_enable,i_sam_done,o_sam_oil_addr[31:0],o_lin_enable,i_lin_done,o_lin_bram_halt,o_lin_vec_addr[31:0],o_lin_coeffs_addr[31:0],o_lin_out_addr[31:0],o_lin_len[31:0],o_add_enable,o_add_v1_addr[31:0],o_add_v2_addr[31:0],o_add_out_addr[31:0],i_add_done,o_neg_enable,o_neg_len[31:0],o_neg_adr[31:0],i_neg_done,i_mem0a_dout[31:0],o_mem0a_din[31:0],o_mem0a_addr[31:0],o_mem0a_en,o_mem0a_rst,o_mem0a_we[3:0],i_mem0b_dout[31:0],o_mem0b_din[31:0],o_mem0b_addr[31:0],o_mem0b_en,o_mem0b_rst,o_mem0b_we[3:0],i_mem1a_dout[31:0],o_mem1a_din[31:0],o_mem1a_addr[31:0],o_mem1a_en,o_mem1a_rst,o_mem1a_we[3:0],o_mem0a_control,o_mem0b_control,o_mem1a_control,s00_axi_aclk,s00_axi_aresetn,s00_axi_awaddr[4:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[4:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "AXI_LITE_Mayo_Keygen_v1_5,Vivado 2020.2";
begin
end;
