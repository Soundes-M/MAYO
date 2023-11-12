----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/18/2023 04:28:08 PM
-- Design Name: 
-- Module Name: bram_test - Behavioral
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
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

entity bram_test is
--  Port ( );
end bram_test;

architecture Behavioral of bram_test is
	COMPONENT Test_BRAM0
		PORT (
			clka      : IN  STD_LOGIC;
			rsta      : IN  STD_LOGIC;
			ena       : IN  STD_LOGIC;
			wea       : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
			addra     : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
			dina      : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
			douta     : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			clkb      : IN  STD_LOGIC;
			rstb      : IN  STD_LOGIC;
			enb       : IN  STD_LOGIC;
			web       : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
			addrb     : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
			dinb      : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
			doutb     : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			rsta_busy : OUT STD_LOGIC;
			rstb_busy : OUT STD_LOGIC
		);
	END COMPONENT;

	-- Testbench DUT ports
	signal addra     : std_logic_vector(31 downto 0);
	signal addrb     : std_logic_vector(31 downto 0);
	signal dina      : std_logic_vector(31 downto 0);
	signal dinb      : std_logic_vector(31 downto 0);
	signal clka      : std_logic;
	signal clkb      : std_logic;
	signal wea       : std_logic_vector(3 downto 0);
	signal web       : std_logic_vector(3 downto 0);
	signal ena       : std_logic;
	signal enb       : std_logic;
	signal rsta      : std_logic := '0';
	signal rstb      : std_logic := '0';
	signal rsta_busy : std_logic;
	signal rstb_busy : std_logic;
	signal douta     : std_logic_vector(31 downto 0);
	signal doutb     : std_logic_vector(31 downto 0);
	signal i         : integer := 0;

	-- Other constants
	constant C_CLK_PERIOD : time := 10 ns; -- NS
	signal clk            : std_logic;
	signal reset          : std_logic;
	signal reg            : std_logic_vector(31 downto 0);


begin

	bram : Test_BRAM0
		PORT MAP (
			clka      => clka,
			rsta      => rsta,
			ena       => ena,
			wea       => wea,
			addra     => addra,
			dina      => dina,
			douta     => douta,
			clkb      => clkb,
			rstb      => rstb,
			enb       => enb,
			web       => web,
			addrb     => addrb,
			dinb      => dinb,
			doutb     => doutb,
			rsta_busy => rsta_busy,
			rstb_busy => rstb_busy
		);

	-----------------------------------------------------------
	-- Clocks and Reset
	-----------------------------------------------------------
	clka <= clk;
	clkb <= clk;
	CLK_GEN : process
	begin
		clk <= '1';
		wait for C_CLK_PERIOD / 2;
		clk <= '0';
		wait for C_CLK_PERIOD / 2;
	end process CLK_GEN;

	rsta <= reset;
	rstb <= reset;
	RESET_GEN : process
	begin
		reset <= '1',
			'0' after 20.0*C_CLK_PERIOD;
		wait;
	end process RESET_GEN;

	tb : process
	begin

		while i <= 1024 loop
			--WRITE
			addra <= std_logic_vector(to_unsigned(i,32));
			wea   <= "1111";
			ena   <= '1';
			dina  <= std_logic_vector(to_unsigned(i,32));
			wait for C_CLK_PERIOD;
			i <= i +4;
		end loop;

		wait for C_CLK_PERIOD;
		wea <= "0000";
		ena <= '0';
		i   <= 0 ;
		
        wait for C_CLK_PERIOD;
		while i <= 16 loop
			-- STOP
			ena <= '0';
			report "CC0:";
			wait for C_CLK_PERIOD;
            
			-- READ
			addra <= std_logic_vector(to_unsigned(i,32));
			wea   <= "0000";
			ena   <= '1';
			report "CC1: "  & integer'image(to_integer(unsigned(addra))) & " " & integer'image(to_integer(unsigned(douta))) & " " & integer'image(to_integer(unsigned(reg)));
			wait for C_CLK_PERIOD;
			
			reg <= douta;
			if (unsigned(douta) /= to_unsigned(i,32)) then
				report "Wrong data" severity error;
			end if;
            ena   <= '0';
            report "CC2: "  & integer'image(to_integer(unsigned(addra))) & " " & integer'image(to_integer(unsigned(douta))) & " " & integer'image(to_integer(unsigned(reg)));
            wait for C_CLK_PERIOD;
			i <= i +4;
		end loop;
		report "Done" severity failure;
	end process tb;

end Behavioral;
