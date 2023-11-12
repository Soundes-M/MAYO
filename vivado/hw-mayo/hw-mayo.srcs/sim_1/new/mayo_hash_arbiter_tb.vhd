----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/17/2022 09:38:38 PM
-- Design Name: 
-- Module Name: mayo_hash_arbiter_tb - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

use work.MAYO_COMMON.all;
use work.UTILS_COMMON.all;


entity mayo_hash_arbiter_tb is
--  Port ( );
end mayo_hash_arbiter_tb;

architecture Behavioral of mayo_hash_arbiter_tb is

	component mayo_hash_arbiter is
		port (
			rst : in std_logic;

			--HASH
			o_en        : out std_logic;
			o_mlen      : out std_logic_vector(PORT_WIDTH-1 downto 0);
			o_olen      : out std_logic_vector(PORT_WIDTH-1 downto 0);
			o_write_adr : out std_logic_vector(PORT_WIDTH-1 downto 0);
			o_read_adr  : out std_logic_vector(PORT_WIDTH-1 downto 0);
			i_done      : in  std_logic;
			i_dyn_done  : in  std_logic;

			i_key_en        : in  std_logic;
			i_key_mlen      : in  std_logic_vector(PORT_WIDTH-1 downto 0);
			i_key_olen      : in  std_logic_vector(PORT_WIDTH-1 downto 0);
			i_key_write_adr : in  std_logic_vector(PORT_WIDTH-1 downto 0);
			i_key_read_adr  : in  std_logic_vector(PORT_WIDTH-1 downto 0);
			o_key_done      : out std_logic;
			o_key_dyn_done  : out std_logic;

			i_sam_en        : in  std_logic;
			i_sam_mlen      : in  std_logic_vector(PORT_WIDTH-1 downto 0);
			i_sam_olen      : in  std_logic_vector(PORT_WIDTH-1 downto 0);
			i_sam_write_adr : in  std_logic_vector(PORT_WIDTH-1 downto 0);
			i_sam_read_adr  : in  std_logic_vector(PORT_WIDTH-1 downto 0);
			o_sam_done      : out std_logic;
			o_sam_dyn_done  : out std_logic
		);
	end component;

	constant clk_period : time      := 10 ns;
	signal clk          : std_logic := '0';
	signal reset        : std_logic := '0';


	signal mlen, olen , write_adr, read_adr : std_logic_vector(PORT_WIDTH-1 downto 0);
	signal en, done, dyn_done               : std_logic;

	signal key_en, key_done, key_dyn_done                  : std_logic;
	signal key_mlen, key_olen, key_write_adr, key_read_adr : std_logic_vector(PORT_WIDTH-1 downto 0);

	signal sam_en, sam_done, sam_dyn_done                  : std_logic;
	signal sam_mlen, sam_olen, sam_write_adr, sam_read_adr : std_logic_vector(PORT_WIDTH-1 downto 0);

begin

	clk   <= not clk after clk_period / 2 ;
	reset <= '1', '0' after 100 ns;

	arbiter : mayo_hash_arbiter
		port map (
			rst => reset,

			o_en        => en,
			o_mlen      => mlen,
			o_olen      => olen,
			o_write_adr => write_adr,
			o_read_adr  => read_adr,
			i_done      => done,
			i_dyn_done  => dyn_done,

			i_key_en        => key_en,
			i_key_mlen      => key_mlen,
			i_key_olen      => key_olen,
			i_key_write_adr => key_write_adr,
			i_key_read_adr  => key_read_adr,
			o_key_done      => key_done,
			o_key_dyn_done  => key_dyn_done,

			i_sam_en        => sam_en,
			i_sam_mlen      => sam_mlen,
			i_sam_olen      => sam_olen,
			i_sam_write_adr => sam_write_adr,
			i_sam_read_adr  => sam_read_adr,
			o_sam_done      => sam_done,
			o_sam_dyn_done  => sam_dyn_done
		);


	tb : process 
	begin

		report "Begin." severity note ; 
        wait for 100 ns;
		key_en        <= '1';
		key_mlen      <= x"deadbeef";
		key_olen      <= x"deadbeef";
		key_write_adr <= x"beefdead";
		key_read_adr  <= x"beefdead";

		wait for clk_period;

		key_en        <= '0';
		key_mlen      <= ZERO_32;
		key_olen      <= ZERO_32;
		key_write_adr <= ZERO_32;
		key_read_adr  <= ZERO_32;

		wait for 2*clk_period;
		dyn_done <= '1';
		wait for clk_period;
		done     <= '1';
		wait for clk_period;
		done <= '0';
		dyn_done <= '0';

		wait for 2*clk_period;
		sam_en        <= '1';
		sam_mlen      <= x"deadbeef";
		sam_olen      <= x"deadbeef";
		sam_write_adr <= x"beefdead";
		sam_read_adr  <= x"beefdead";

		wait for clk_period;

		sam_en        <= '0';
		sam_mlen      <= ZERO_32;
		sam_olen      <= ZERO_32;
		sam_write_adr <= ZERO_32;
		sam_read_adr  <= ZERO_32;

		wait for 2*clk_period;
		dyn_done <= '1';
		wait for clk_period;
		done     <= '1';
		wait for clk_period;
		done <= '0';
        dyn_done <= '0';

		wait for clk_period;

		report "Done." severity failure ; 
		
	end process;

end Behavioral;
