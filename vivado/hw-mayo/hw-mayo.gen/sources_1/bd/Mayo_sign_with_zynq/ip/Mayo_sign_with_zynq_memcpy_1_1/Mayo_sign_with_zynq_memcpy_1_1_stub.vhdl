-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Sat Dec  9 16:22:21 2023
-- Host        : zenith running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/osm/Documents/Sect/SECT-MAYO/MAYO/vivado/hw-mayo/hw-mayo.gen/sources_1/bd/Mayo_sign_with_zynq/ip/Mayo_sign_with_zynq_memcpy_1_1/Mayo_sign_with_zynq_memcpy_1_1_stub.vhdl
-- Design      : Mayo_sign_with_zynq_memcpy_1_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mayo_sign_with_zynq_memcpy_1_1 is
  Port ( 
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

end Mayo_sign_with_zynq_memcpy_1_1;

architecture stub of Mayo_sign_with_zynq_memcpy_1_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,start,i_src_adr[31:0],i_dst_adr[31:0],i_len[31:0],o_done,i_mem_port_sel[1:0],i_src_dout[31:0],o_src_din[31:0],o_src_addr[31:0],o_src_en,o_src_rst,o_src_we[3:0],o_src_control,i_dest_dout[31:0],o_dest_din[31:0],o_dest_addr[31:0],o_dest_en,o_dest_rst,o_dest_we[3:0],o_dest_control";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "memcpy,Vivado 2020.2";
begin
end;
