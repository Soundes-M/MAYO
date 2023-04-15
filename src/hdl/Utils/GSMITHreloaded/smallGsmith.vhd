library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity smallGsmith is
	port (
		clk    : in  std_logic;
		rst    : in  std_logic;
		enable : in  std_logic;
		done   : out std_logic
	);
end entity smallGsmith;


architecture Behavioral of smallGsmith is
	component basic_cell is
		port (
			clk                : in  std_logic;
			rst                : in  std_logic;
			en                 : in  std_logic;
			out1               : out std_logic_vector(7 downto 0); -- Upper neighbor
			out2               : out std_logic_vector(7 downto 0); -- Upper left
			lock_lower_row_out : out std_logic;                    -- Upper neighbor
			lock_lower_row_in  : in  std_logic;                    -- Lower neighbor
			in1                : in  std_logic_vector(7 downto 0); -- Lower neighbor
			in2                : in  std_logic_vector(7 downto 0); -- Lower right
			lock_row           : in  std_logic;
			piv_found          : in  std_logic;
			row_data           : in  std_logic_vector(7 downto 0);
			col_data           : in  std_logic_vector(7 downto 0)
		);
	end component basic_cell;

	component pivot_cell is
		port (
			clk       : in  std_logic;
			rst       : in  std_logic;
			en        : in  std_logic;
			in1       : in  std_logic_vector(7 downto 0);
			in2       : in  std_logic_vector(7 downto 0);
			row_data  : out std_logic_vector(7 downto 0);
			piv_found : out std_logic
		);
	end component pivot_cell;

	component pivotRow_cell is
		port (
			clk       : in  std_logic;
			rst       : in  std_logic;
			en        : in  std_logic;
			out1      : out std_logic_vector(7 downto 0);
			out2      : out std_logic_vector(7 downto 0);
			in1       : in  std_logic_vector(7 downto 0);
			in2       : in  std_logic_vector(7 downto 0);
			piv_found : in  std_logic;
			row_data  : in  std_logic_vector(7 downto 0);
			col_data  : out std_logic_vector(7 downto 0)
		);
	end component pivotRow_cell;

	component pivotCol_cell is
		port (
			clk                : in  std_logic;
			rst                : in  std_logic;
			en                 : in  std_logic;
			out1               : out std_logic_vector(7 downto 0); -- Upper neighbor
			lock_lower_row_out : out std_logic;                    -- Upper neighbor
			lock_lower_row_in  : in  std_logic;                    -- Lower neighbor
			in1                : in  std_logic_vector(7 downto 0); -- Lower neighbor
			in2                : in  std_logic_vector(7 downto 0); -- Lower right
			lock_row           : in  std_logic;
			piv_found          : in  std_logic;
			row_data           : out std_logic_vector(7 downto 0)
		);
	end component pivotCol_cell;

	-- Matrix Size (ROWS*COLS)
	CONSTANT ROWS : integer := 3;
	CONSTANT COLS : integer := 3;

	signal s_piv_found : std_logic;
	type vector8 is array (natural range <>) of std_logic_vector(7 downto 0);
	type vector8_2d is array (0 to ROWS-1, 0 to COLS-1) of std_logic_vector(7 downto 0);
	type vector1_2d is array (0 to ROWS-1, 0 to COLS-1) of std_logic;
	signal s_row_data : vector8(0 to ROWS-1);
	signal s_col_data : vector8(0 to COLS-1);
	signal s_io1      : vector8_2d;
	signal s_io2      : vector8_2d;
	signal tmp        : std_logic;
	type vector1 is array (natural range <>) of std_logic;
	signal s_locks_lower : vector1_2d;
	signal s_locks       : vector1(0 to ROWS-1); -- also called 'used' flag
	signal en            : std_logic := '1';

	signal s_in0 : std_logic_vector(7 downto 0) := (others => '0');
	signal s_in1 : std_logic_vector(7 downto 0) := (others => '0');
	signal s_in2 : std_logic_vector(7 downto 0) := (others => '0');
	signal s_in3 : std_logic_vector(7 downto 0) := (others => '0');

	signal s_row_data0 : std_logic_vector(7 downto 0) := (others => '0');
	signal s_row_data1 : std_logic_vector(7 downto 0) := (others => '0');

	signal s_col_data0 : std_logic_vector(7 downto 0) := (others => '0');

	signal s_locks_lower0 : std_logic := '0';
	signal s_locks_lower1 : std_logic := '0';

	signal s_lock_row : std_logic := '0';
	signal d          : std_logic := '1';







begin
	done <= d;
	en   <= enable;

		--00 pivot cell   
		pivot00 : pivot_cell port map (
			clk       => clk,
			rst       => rst,
			en        => en,
			in1       => s_in0,
			in2       => s_in1,
			row_data  => s_row_data0,
			piv_found => s_piv_found
		);

		pivRow : pivotRow_cell port map (
			clk       => clk,
			rst       => rst,
			en        => en,
			out1      => open,
			out2      => s_in2,
			in1       => s_in3,
			in2       => (others => '0'),
			piv_found => s_piv_found,
			row_data  => s_row_data0,
			col_data  => s_col_data0
		);

		pivCol : pivotCol_cell port map (
			clk                => clk,
			rst                => rst,
			en                 => en,
			out1               => s_in0,
			lock_lower_row_out => s_locks_lower0,
			lock_lower_row_in  => '0',
			in1                => (others => '0'),
			in2                => s_in2,
			lock_row           => s_lock_row,
			piv_found          => s_piv_found,
			row_data           => s_row_data1
		);

		basic : basic_cell port map(
			clk                => clk,
			rst                => rst,
			en                 => en,
			out1               => s_in3,
			out2               => s_in1,
			lock_lower_row_out => open,
			lock_lower_row_in  => '0',
			in1                => (others => '0'),
			in2                => (others => '0'),
			lock_row           => s_lock_row,
			piv_found          => s_piv_found,
			row_data           => s_row_data1,
			col_data           => s_col_data0
		);

end architecture Behavioral;