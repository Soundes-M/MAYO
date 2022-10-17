library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

use work.MAYO_COMMON.all;
use work.UTILS_COMMON.all;

entity mayo_hash_arbiter is
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
end entity mayo_hash_arbiter;

architecture Behavioral of mayo_hash_arbiter is
	signal key_en : std_logic := '0' ;
	signal sam_en : std_logic := '0' ;
begin

	KEY_PR : process(rst,i_key_en,i_sam_en,i_done) is
	begin
			if (rst = '1') then
				key_en <= '0';
				sam_en <= '0';
			else
				if (i_key_en = '1') then
					key_en <= '1';
					sam_en <= '0';
				elsif(i_sam_en = '1') then
					sam_en <= '1';
					key_en <= '0';
				end if;

				if (falling_edge(i_done) and key_en ='1') then
					key_en <= '0';
				elsif (falling_edge(i_done) and sam_en = '1') then
					sam_en <= '0';
				end if;
			end if;
	end process;

	o_en           <= '1'             when ((i_key_en = '1') or (i_sam_en ='1')) else '0';
	o_mlen         <= i_key_mlen      when ((key_en = '1') or (i_key_en = '1')) else i_sam_mlen when ((sam_en = '1') or (i_sam_en = '1')) else (others           => '0');
	o_olen         <= i_key_olen      when ((key_en = '1') or (i_key_en = '1')) else i_sam_olen when ((sam_en = '1') or (i_sam_en = '1')) else (others           => '0');
	o_write_adr    <= i_key_write_adr when ((key_en = '1') or (i_key_en = '1')) else i_sam_write_adr when ((sam_en = '1') or (i_sam_en = '1')) else (others => '0');
	o_read_adr     <= i_key_read_adr  when ((key_en = '1') or (i_key_en = '1')) else i_sam_read_adr when ((sam_en = '1') or (i_sam_en = '1')) else (others   => '0');
	o_sam_done     <= i_done          when (sam_en = '1') else '0';
	o_sam_dyn_done <= i_dyn_done      when (sam_en = '1') else '0';
	o_key_done     <= i_done          when (key_en = '1') else '0';
	o_key_dyn_done <= i_dyn_done      when (key_en = '1') else '0';
end architecture Behavioral;