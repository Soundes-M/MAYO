-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Sun Nov 12 18:20:09 2023
-- Host        : zenith running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/osm/Documents/Sect/SECT-MAYO/MAYO/vivado/hw-mayo/hw-mayo.gen/sources_1/bd/Mayo_sign/ip/Mayo_sign_MAYO_SIGNING_FSM_0_0/Mayo_sign_MAYO_SIGNING_FSM_0_0_stub.vhdl
-- Design      : Mayo_sign_MAYO_SIGNING_FSM_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mayo_sign_MAYO_SIGNING_FSM_0_0 is
  Port ( 
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

end Mayo_sign_MAYO_SIGNING_FSM_0_0;

architecture stub of Mayo_sign_MAYO_SIGNING_FSM_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,i_enable,i_secret,o_done,o_busy,o_err[1:0],o_trng_r,o_trng_w,o_trng_data[31:0],i_trng_data[31:0],i_trng_valid,i_trng_done,o_hash_en,o_hash_mlen[31:0],o_hash_olen[31:0],o_hash_write_adr[31:0],o_hash_read_adr[31:0],i_hash_done,i_hash_dyn_done,o_hash_memsel,o_sam_enable,i_sam_done,o_sam_mode,o_sam_oil_addr[31:0],o_red_enable,o_red_len[31:0],o_red_adr[31:0],o_red_bram_sel,i_red_done,o_memcpy_start,o_memcpy_src_adr[31:0],o_memcpy_dst_adr[31:0],o_memcpy_len[31:0],i_memcpy_done,o_memcpy_mem_port_sel[1:0],o_memcpy1_start,o_memcpy1_src_adr[31:0],o_memcpy1_dst_adr[31:0],o_memcpy1_len[31:0],i_memcpy1_done,o_memcpy1_mem_port_sel[1:0],o_p1p1t_enable,i_p1p1t_done,o_p1p1t_src_adr[31:0],o_p1p1t_dsta_adr[31:0],o_p1p1t_dstb_adr[31:0],o_p1p1t_ji_equal,o_lin_enable,i_lin_done,o_lin_bram_halt,o_lin_vec_addr[31:0],o_lin_coeffs_addr[31:0],o_lin_out_addr[31:0],o_lin_len[31:0],o_lin_demux_bram_sel[4:0],o_add_enable,o_add_v1_addr[31:0],o_add_v2_addr[31:0],o_add_out_addr[31:0],i_add_done,o_add_bram_sel[1:0],o_add_demux_bram_sel[4:0],o_sam_vin_en,i_sam_vin_done,o_sam_vin_input_adr[31:0],o_red_ext_en,i_red_ext_done,o_red_ext_input_adr[31:0],o_red_ext_output_adr[31:0],o_neg_enable,o_neg_len[31:0],o_neg_adr[31:0],i_neg_done,o_sam_oil_en,i_sam_oil_ret,i_sam_oil_done,o_add_oil_enable,i_add_oil_done,i_mem0a_dout[31:0],o_mem0a_din[31:0],o_mem0a_addr[31:0],o_mem0a_en,o_mem0a_rst,o_mem0a_we[3:0],i_mem0b_dout[31:0],o_mem0b_din[31:0],o_mem0b_addr[31:0],o_mem0b_en,o_mem0b_rst,o_mem0b_we[3:0],i_mem1a_dout[31:0],o_mem1a_din[31:0],o_mem1a_addr[31:0],o_mem1a_en,o_mem1a_rst,o_mem1a_we[3:0],i_mem2a_dout[31:0],o_mem2a_din[31:0],o_mem2a_addr[31:0],o_mem2a_en,o_mem2a_rst,o_mem2a_we[3:0],i_mem2b_dout[31:0],o_mem2b_din[31:0],o_mem2b_addr[31:0],o_mem2b_en,o_mem2b_rst,o_mem2b_we[3:0],o_control0a,o_control0b,o_control1a,o_control2a,o_control2b";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "MAYO_SIGNING_FSM,Vivado 2020.2";
begin
end;
