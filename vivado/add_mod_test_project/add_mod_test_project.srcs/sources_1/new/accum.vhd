----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/04/2022 12:39:24 PM
-- Design Name: 
-- Module Name: accum - Behavioral
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

entity accum is
	Port (clk : in std_logic;
		i_en                     :     std_logic;
		i_sel                    :     std_logic;
		rst                      : in  std_logic;
		ain0,ain1,ain2,ain3,bin0 : in  std_logic_vector(7 downto 0);
		res0,res1,res2,res3      : out std_logic_vector(31 downto 0));
end accum;

architecture Behavioral of accum is
	type array_32 is array(natural range <>) of std_logic_vector(31 downto 0);
	constant ZERO_32 : std_logic_vector(31 downto 0) := (others => '0');
	signal acc               : array_32(0 to 7) := (others => ZERO_32);
	attribute use_dsp        : string;
	attribute use_dsp of acc : signal is "yes";
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (rst = '1') then
				for k in 0 to 7 loop
					acc(k) <= (others => '0');
				end loop;

			else
				if i_en = '1' then
					if i_sel = '0' then
						acc(0) <= std_logic_vector(unsigned(acc(0)) + (unsigned(ain0) * (unsigned(bin0))));
						acc(1) <= std_logic_vector(unsigned(acc(1)) + (unsigned(ain1) * (unsigned(bin0))));
						acc(2) <= std_logic_vector(unsigned(acc(2)) + (unsigned(ain2) * (unsigned(bin0))));
						acc(3) <= std_logic_vector(unsigned(acc(3)) + (unsigned(ain3) * (unsigned(bin0))));
					else
						acc(4) <= std_logic_vector(unsigned(acc(4)) + (unsigned(ain0) * (unsigned(bin0))));
						acc(5) <= std_logic_vector(unsigned(acc(5)) + (unsigned(ain1) * (unsigned(bin0))));
						acc(6) <= std_logic_vector(unsigned(acc(6)) + (unsigned(ain2) * (unsigned(bin0))));
						acc(7) <= std_logic_vector(unsigned(acc(7)) + (unsigned(ain3) * (unsigned(bin0))));
					end if;
				end if;
			end if;
		end if;
	end process;

	res0 <= acc(0) when i_sel = '0' else acc(4);
	res1 <= acc(1) when i_sel = '0' else acc(5);
	res2 <= acc(2) when i_sel = '0' else acc(6);
	res3 <= acc(3) when i_sel = '0' else acc(7);

end Behavioral;
