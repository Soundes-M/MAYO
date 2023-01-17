--------------------------------------------------------------------------------
-- Title       : Simple LED BLINKER
-- Project     : MAYO
--------------------------------------------------------------------------------
-- File        : led_blinker.vhd
-- Author      : User Name <user.email@user.company.com>
-- Company     : User Company Name
-- Created     : Mon Jan 16 20:50:28 2023
-- Last update : Mon Jan 16 20:51:30 2023
-- Platform    : Default Part Number
-- Standard    : <VHDL-2008 | VHDL-2002 | VHDL-1993 | VHDL-1987>
--------------------------------------------------------------------------------
-- Copyright (c) 2023 User Company Name
-------------------------------------------------------------------------------
-- Description: Blinks 5 leds according to inputs
--------------------------------------------------------------------------------
-- Revisions:  Revisions and documentation are controlled by
-- the revision control system (RCS).  The RCS should be consulted
-- on revision history.
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity blink_led is
    Port ( clk : in STD_LOGIC;
        rst : in std_logic;

        in0 : in std_logic;
        in1 : in std_logic;
        in2 : in std_logic;
        in3 : in std_logic;
        in4 : in std_logic;
        in5 : in std_logic;

        led0 : out STD_LOGIC;
        led1 : out STD_LOGIC;
        led2 : out STD_LOGIC;
        led3 : out STD_LOGIC;
        led4 : out STD_LOGIC;
        led5 : out STD_LOGIC);
end blink_led;

architecture Behavioral of blink_led is

begin

    process (clk)
    begin
        if rising_edge(clk) then
            if (rst = '1') then
                led0 <= '0';
                led1 <= '0';
                led2 <= '0';
                led3 <= '0';
                led4 <= '0';
                led5 <= '0';
            else
                if (in0 = '1') then
                    led0 <= '1';
                else
                    led0 <= '0';
                end if ;

                if (in1 = '1') then
                    led1 <= '1';
                else
                    led1 <= '0';
                end if ;

                if (in2 = '1') then
                    led2 <= '1';
                else
                    led2 <= '0';
                end if ;

                if (in3 = '1') then
                    led3 <= '1';
                else
                    led3 <= '0';
                end if ;

                if (in4 = '1') then
                    led4 <= '1';
                else
                    led4 <= '0';
                end if ;

                if (in5 = '1') then
                    led5 <= '1';
                else
                    led5 <= '0';
                end if ;

            end if;
        end if;
    end process;
end Behavioral;