----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/16/2022 08:04:30 PM
-- Design Name: 
-- Module Name: shake128_tb - Behavioral
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
use work.params.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity shake128_tb is
--  Port ( );
end shake128_tb;

architecture Behavioral of shake128_tb is
    signal clk   : std_logic := '0';
    signal done  : std_logic := '0';
    signal reset : std_logic := '0';
    signal ready : std_logic := '0';


    signal din : absorb_message_input_type := (
            halt   => '0',
            enable => '0',
            len    => 0,
            input  => (others => '0')
    );
    signal dout : absorb_message_output_type := (
            done  => '0',
            mnext => '0',
            o     => (others => '0')
    );
    constant clk_period : time := 10 ns;

    --shake
    component shake128 is
        Port ( clk : in STD_LOGIC;
            reset : in  STD_LOGIC;
            d     : in  absorb_message_input_type;
            q     : out absorb_message_output_type);
    end component;

    signal message   : std_logic_vector(1023 downto 0);
    signal message_2 : std_logic_vector(1279 downto 0);


begin
    --generator
    clk   <= not clk after clk_period/2;
    reset <= '1', '0' after clk_period*10 ;

    -- uut 
    shake_inst : shake128
        port map (
            clk   => clk,
            reset => reset,
            d     => din,
            q     => dout
        );

    tb : process
    begin

        wait until reset = '0';

        wait for clk_period;

        report "Simple test...";
        din.enable             <= '1';
        din.len                <= 32;
        din.input(31 downto 0) <= X"deadbeef";

        wait until dout.done = '1';
        if (dout.o /= X"4164fb1f2e99f6e900de9c2355e98cdf2461a9fee5a5c27f9c72d45c7c8f567f4b2f7c638ab7dad54bec1578906d1e67d031bf6daec999bfb3b13e388838c1f4") then
            report "Test Failed!" severity failure;
        else
            report "Success";
        end if;
        din.enable <= '0';
        wait for 2*clk_period;

        report "Advanced test 1...";
        message(63 downto 0)     <= X"269C9BCA09066EF2";
        message(127 downto 64)   <= X"E8FD703F07421B14";
        message(191 downto 128)  <= X"A9C953671A2259A7";
        message(255 downto 192)  <= X"3E3B04D63D7F5E6E";
        message(319 downto 256)  <= X"8D30BCA43B949871";
        message(383 downto 320)  <= X"11AAA3EE37802578";
        message(447 downto 384)  <= X"5A4F575526C75B93";
        message(511 downto 448)  <= X"8AE86C7D50D14295";
        message(575 downto 512)  <= X"D9E2E78FD26A1594";
        message(639 downto 576)  <= X"12D0C2B81F41C46B";
        message(703 downto 640)  <= X"14E76CA87A697438";
        message(767 downto 704)  <= X"528146147DDBFDDE";
        message(831 downto 768)  <= X"549A263596F26B84";
        message(895 downto 832)  <= X"3356D74685ED7F14";
        message(959 downto 896)  <= X"21799709DF702BBD";
        message(1023 downto 960) <= X"DEED98438E041971";

        din.len <= 1024;
        -- Input first block 
        -- WARNING: READING STARTS FROM THE END OF THE MESSAGE -> LEFT TO RIGHT
        wait for clk_period;
        din.input  <= message(1023 downto 768);
        din.enable <= '1';

        wait until dout.mnext = '1';
        wait for 1*clk_period;
        din.input <= message(767 downto 512);

        wait for clk_period;
        din.input <= message(511 downto 256);
        wait for clk_period;
        din.input <= message(255 downto 0);

        wait until dout.done = '1';
        if (dout.o /= X"5c04de01e2b1f0fa1f2c12dfbf4383a9ecd3494b606a8231b5efa4f7740a353f") then
            report "Test Failed!" severity failure;
        else
            report "Success";
        end if;

        din.enable <= '0';
        wait for 5*clk_period;

        report "Advanced test 2...";
        message_2(63 downto 0)      <= X"269C9BCA09066EF2";
        message_2(127 downto 64)    <= X"E8FD703F07421B14";
        message_2(191 downto 128)   <= X"A9C953671A2259A7";
        message_2(255 downto 192)   <= X"3E3B04D63D7F5E6E";
        message_2(319 downto 256)   <= X"8D30BCA43B949871";
        message_2(383 downto 320)   <= X"11AAA3EE37802578";
        message_2(447 downto 384)   <= X"5A4F575526C75B93";
        message_2(511 downto 448)   <= X"8AE86C7D50D14295";
        message_2(575 downto 512)   <= X"D9E2E78FD26A1594";
        message_2(639 downto 576)   <= X"12D0C2B81F41C46B";
        message_2(703 downto 640)   <= X"14E76CA87A697438";
        message_2(767 downto 704)   <= X"528146147DDBFDDE";
        message_2(831 downto 768)   <= X"549A263596F26B84";
        message_2(895 downto 832)   <= X"3356D74685ED7F14";
        message_2(959 downto 896)   <= X"21799709DF702BBD";
        message_2(1023 downto 960)  <= X"DEED98438E041971";
        message_2(1279 downto 1024) <= X"00000000000000000000000000000000000000000000000000000000deadbeef";

        din.len <= 1280;
        -- Input first block 
        -- WARNING: READING STARTS FROM THE END OF THE MESSAGE -> LEFT TO RIGHT
        wait for clk_period;
        din.input  <= message_2(1279 downto 1024);
        din.enable <= '1';

        wait until dout.mnext = '1';
        wait for 1*clk_period;
        din.input <= message_2(1023 downto 768);
        wait for clk_period;
        din.input <= message_2(767 downto 512);
        wait for clk_period;
        din.input <= message_2(511 downto 256);
        wait for clk_period;
        --wait until dout.mnext = '1'; -- Next Section

        din.input <= message_2(255 downto 0);
        wait until dout.done = '1';
        if (dout.o /= X"53076afa125c7c188105a7cef3973b9ea6ca2a38d05628bef1a4d8dbbc647de0") then
            report "Test Failed!" severity failure;
        else
            report "Success";
        end if;
        --wait for clk_period; 
        din.enable <= '0';
        din.input  <= (others => '0') ;

        wait for clk_period;

        report "DONE." severity failure;
        wait;
    end process;





end Behavioral;
