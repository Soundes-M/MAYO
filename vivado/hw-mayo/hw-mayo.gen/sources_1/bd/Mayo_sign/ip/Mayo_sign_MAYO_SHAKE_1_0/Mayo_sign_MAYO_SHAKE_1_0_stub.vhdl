-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Sun Nov 12 18:20:44 2023
-- Host        : zenith running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/osm/Documents/Sect/SECT-MAYO/MAYO/vivado/hw-mayo/hw-mayo.gen/sources_1/bd/Mayo_sign/ip/Mayo_sign_MAYO_SHAKE_1_0/Mayo_sign_MAYO_SHAKE_1_0_stub.vhdl
-- Design      : Mayo_sign_MAYO_SHAKE_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mayo_sign_MAYO_SHAKE_1_0 is
  Port ( 
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

end Mayo_sign_MAYO_SHAKE_1_0;

architecture stub of Mayo_sign_MAYO_SHAKE_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rst,clk,en,mlen[31:0],olen[31:0],write_adr[31:0],read_adr[31:0],dyn_done,done,o_control,BRAMA_we[3:0],BRAMA_addr[31:0],BRAMA_din[31:0],BRAMA_en,BRAMA_dout[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "MAYO_SHAKE,Vivado 2020.2";
begin
end;
