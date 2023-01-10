--------------------------------------------------------------------------------
-- Title       : MAYO
-- Project     : Default Project Name
--------------------------------------------------------------------------------
-- File        : dual_port_bram.vhd
-- Author      : User Name <user.email@user.company.com>
-- Company     : User Company Name
-- Created     : Sat Dec 31 16:33:18 2022
-- Last update : Sat Dec 31 16:39:20 2022
-- Platform    : Default Part Number
-- Standard    : <VHDL-2008 | VHDL-2002 | VHDL-1993 | VHDL-1987>
--------------------------------------------------------------------------------
-- Copyright (c) 2022 User Company Name
-------------------------------------------------------------------------------
-- Description: 
--------------------------------------------------------------------------------
-- Revisions:  Revisions and documentation are controlled by
-- the revision control system (RCS).  The RCS should be consulted
-- on revision history.
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity dual_port_bram is
    generic (
        DATA_WIDTH : integer := 32;
        ADDR_WIDTH : integer := 16
    );
    port (
        clk    : in  std_logic;
        rst    : in  std_logic;
        we_a   : in  std_logic;
        addr_a : in  unsigned(ADDR_WIDTH-1 downto 0);
        din_a  : in  std_logic_vector(DATA_WIDTH-1 downto 0);
        dout_a : out std_logic_vector(DATA_WIDTH-1 downto 0);
        be_a   : in  std_logic_vector(DATA_WIDTH/8-1 downto 0);
        we_b   : in  std_logic;
        addr_b : in  unsigned(ADDR_WIDTH-1 downto 0);
        din_b  : in  std_logic_vector(DATA_WIDTH-1 downto 0);
        dout_b : out std_logic_vector(DATA_WIDTH-1 downto 0);
        be_b   : in  std_logic_vector(DATA_WIDTH/8-1 downto 0)
    );
end dual_port_bram;

architecture behavioral of dual_port_bram is
    type memory_array is array (0 to 2**ADDR_WIDTH-1) of std_logic_vector(DATA_WIDTH-1 downto 0);
    signal mem        : memory_array;
    signal dout_a_reg : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal dout_b_reg : std_logic_vector(DATA_WIDTH-1 downto 0);


begin
    -- Port A
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                mem <= (others => (others => '0'));

            elsif we_a = '1' then
                for i in 0 to DATA_WIDTH/8-1 loop
                    if be_a(i) = '1' then
                        mem(to_integer(addr_a))(8*i+7 downto 8*i) <= din_a(8*i+7 downto 8*i);
                    end if;
                end loop;
            end if;
            dout_a_reg <= mem(to_integer(addr_a));
        end if;
    end process;
    dout_a <= dout_a_reg;

    -- Port B
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                mem <= (others => (others => '0'));

            elsif we_b = '1' then
                for i in 0 to DATA_WIDTH/8-1 loop
                    if be_b(i) = '1' then
                        mem(to_integer(addr_b))(8*i+7 downto 8*i) <= din_b(8*i+7 downto 8*i);
                    end if;
                end loop;
            end if;
            dout_b_reg <= mem(to_integer(addr_b));
        end if;
    end process;
    dout_b <= dout_b_reg;
end behavioral;

