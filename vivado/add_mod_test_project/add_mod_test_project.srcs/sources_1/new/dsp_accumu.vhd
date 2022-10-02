----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/03/2022 10:09:25 PM
-- Design Name: 
-- Module Name: dsp_accumu - Behavioral
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
use ieee.std_logic_signed.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity dsp_accumu is
Port ( clk :in std_logic;
rst : in std_logic; 
ain,bin : in std_logic_vector(17 downto 0);
load: in std_logic;
s : out std_logic_vector(47 downto 0));
end dsp_accumu;

architecture Behavioral of dsp_accumu is
signal ainr, binr :std_logic_vector(17 downto 0);
signal multr : std_logic_vector(35 downto 0);
signal acc : std_logic_vector(47 downto 0);

constant zero : std_logic_vector(47 downto 0) := (others => '0');

begin
process(clk) begin 
    if (rising_edge(clk)) then 
        if rst = '1' then 
            ainr <= (others => '0');
            binr <= (others => '0');
            multr <= (others => '0');
            acc <= (others => '0');
        else 
            ainr <= ain;
            binr <= bin;
            multr <= ainr * binr;
            if load = '1' then  -- Needs 3 Clks
                acc <= zero + multr ;
            else 
                acc <= acc + multr;
            end if;
        end if; 
     end if;
end process;
s <= acc;
end Behavioral;

