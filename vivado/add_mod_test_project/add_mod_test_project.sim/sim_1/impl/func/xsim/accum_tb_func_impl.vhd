-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Thu Aug  4 15:36:10 2022
-- Host        : debian running 64-bit Debian GNU/Linux 11 (bullseye)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/osm/Documents/SECT-MAYO/MAYO/vivado/add_mod_test_project/add_mod_test_project.sim/sim_1/impl/func/xsim/accum_tb_func_impl.vhd
-- Design      : accum
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity accum is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    ain : in STD_LOGIC_VECTOR ( 7 downto 0 );
    bin : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of accum : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of accum : entity is "58841850";
end accum;

architecture STRUCTURE of accum is
  signal ain_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal bin_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal rst_IBUF : STD_LOGIC;
  signal s_OBUF : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_acc_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_acc_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_acc_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_acc_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_acc_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_acc_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_acc_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_acc_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_acc_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_acc_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of acc_reg : label is "{SYNTH-12 {cell *THIS*}}";
begin
acc_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 0) => ain_IBUF(7 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_acc_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 8) => B"0000000000",
      B(7 downto 0) => bin_IBUF(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_acc_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_acc_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_acc_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '1',
      CLK => clk_IBUF_BUFG,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_acc_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0100101",
      OVERFLOW => NLW_acc_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 0) => s_OBUF(47 downto 0),
      PATTERNBDETECT => NLW_acc_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_acc_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_acc_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => rst_IBUF,
      UNDERFLOW => NLW_acc_reg_UNDERFLOW_UNCONNECTED
    );
\ain_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ain(0),
      O => ain_IBUF(0)
    );
\ain_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ain(1),
      O => ain_IBUF(1)
    );
\ain_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ain(2),
      O => ain_IBUF(2)
    );
\ain_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ain(3),
      O => ain_IBUF(3)
    );
\ain_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ain(4),
      O => ain_IBUF(4)
    );
\ain_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ain(5),
      O => ain_IBUF(5)
    );
\ain_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ain(6),
      O => ain_IBUF(6)
    );
\ain_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ain(7),
      O => ain_IBUF(7)
    );
\bin_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => bin(0),
      O => bin_IBUF(0)
    );
\bin_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => bin(1),
      O => bin_IBUF(1)
    );
\bin_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => bin(2),
      O => bin_IBUF(2)
    );
\bin_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => bin(3),
      O => bin_IBUF(3)
    );
\bin_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => bin(4),
      O => bin_IBUF(4)
    );
\bin_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => bin(5),
      O => bin_IBUF(5)
    );
\bin_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => bin(6),
      O => bin_IBUF(6)
    );
\bin_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => bin(7),
      O => bin_IBUF(7)
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst,
      O => rst_IBUF
    );
\s_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(0),
      O => s(0)
    );
\s_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(10),
      O => s(10)
    );
\s_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(11),
      O => s(11)
    );
\s_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(12),
      O => s(12)
    );
\s_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(13),
      O => s(13)
    );
\s_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(14),
      O => s(14)
    );
\s_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(15),
      O => s(15)
    );
\s_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(16),
      O => s(16)
    );
\s_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(17),
      O => s(17)
    );
\s_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(18),
      O => s(18)
    );
\s_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(19),
      O => s(19)
    );
\s_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(1),
      O => s(1)
    );
\s_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(20),
      O => s(20)
    );
\s_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(21),
      O => s(21)
    );
\s_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(22),
      O => s(22)
    );
\s_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(23),
      O => s(23)
    );
\s_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(24),
      O => s(24)
    );
\s_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(25),
      O => s(25)
    );
\s_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(26),
      O => s(26)
    );
\s_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(27),
      O => s(27)
    );
\s_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(28),
      O => s(28)
    );
\s_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(29),
      O => s(29)
    );
\s_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(2),
      O => s(2)
    );
\s_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(30),
      O => s(30)
    );
\s_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(31),
      O => s(31)
    );
\s_OBUF[32]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(32),
      O => s(32)
    );
\s_OBUF[33]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(33),
      O => s(33)
    );
\s_OBUF[34]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(34),
      O => s(34)
    );
\s_OBUF[35]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(35),
      O => s(35)
    );
\s_OBUF[36]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(36),
      O => s(36)
    );
\s_OBUF[37]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(37),
      O => s(37)
    );
\s_OBUF[38]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(38),
      O => s(38)
    );
\s_OBUF[39]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(39),
      O => s(39)
    );
\s_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(3),
      O => s(3)
    );
\s_OBUF[40]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(40),
      O => s(40)
    );
\s_OBUF[41]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(41),
      O => s(41)
    );
\s_OBUF[42]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(42),
      O => s(42)
    );
\s_OBUF[43]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(43),
      O => s(43)
    );
\s_OBUF[44]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(44),
      O => s(44)
    );
\s_OBUF[45]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(45),
      O => s(45)
    );
\s_OBUF[46]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(46),
      O => s(46)
    );
\s_OBUF[47]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(47),
      O => s(47)
    );
\s_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(4),
      O => s(4)
    );
\s_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(5),
      O => s(5)
    );
\s_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(6),
      O => s(6)
    );
\s_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(7),
      O => s(7)
    );
\s_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(8),
      O => s(8)
    );
\s_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF(9),
      O => s(9)
    );
end STRUCTURE;
