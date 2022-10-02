----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/03/2022 10:27:16 PM
-- Design Name: 
-- Module Name: dsp_accumu_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity dsp_accumu_tb is
--  Port ( );
end dsp_accumu_tb;

architecture Behavioral of dsp_accumu_tb is


component dsp_accumu is
Port ( clk :in std_logic;
rst : in std_logic; 
ain,bin : in std_logic_vector(17 downto 0);
load: in std_logic;
s : out std_logic_vector(47 downto 0));
end component;

signal clk :std_logic := '0';
signal rst : std_logic := '0';
signal ain,bin : std_logic_vector(17 downto 0);
signal load:  std_logic;
signal s :  std_logic_vector(47 downto 0):= (others => '0');

constant clk_period : time := 10ns;
begin
    clk <= not clk after clk_period/2;
    dut : dsp_accumu port map(
        clk => clk,
        rst => rst,
        ain => ain,
        bin => bin,
        load =>  load,
        s => s);

tb : process is 
begin 
--    for i in 0 to 3 loop
--    n1(7*i+7 downto 7*i) <= std_logic_vector(to_unsigned(10,8));
--    n2(7*i+7 downto 7*i) <= std_logic_vector(to_unsigned(30,8));
--    end loop;
    wait for clk_period;
    ain <=  std_logic_vector(to_unsigned(20,18));
    bin <= std_logic_vector(to_unsigned(20,18));
    load <= '1';
    wait for 3*clk_period;
    load <= '0';
    wait until unsigned(s) = 5*(20*20);
    report "Found 2000 PASS" severity warning;
    load <= '1';
    ain <=  std_logic_vector(to_unsigned(10,18));
    bin <= std_logic_vector(to_unsigned(10,18));
    wait for 3*clk_period;
    load <= '0';
    wait until unsigned(s) = 10*(10*10);
    report "Found 1000 PASS" severity failure;
    wait;
    end process;


end Behavioral;
