library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity gsmith is
	port (
		clk  : in  std_logic;
		rst  : in  std_logic;
		done : out std_logic
	);

end entity gsmith;

architecture behav of gsmith is

	component basic_cell is
		port (
			clk                : in  std_logic;
			rst                : in  std_logic;
			en                 : in  std_logic;
			load               : in  std_logic;
			fetch              : in  std_logic;
			data_in            : in  std_logic_vector(7 downto 0);
			data_out           : out std_logic_vector(7 downto 0);
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
			load      : in  std_logic;
			fetch     : in  std_logic;
			data_in   : in  std_logic_vector(7 downto 0);
			data_out  : out std_logic_vector(7 downto 0);
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
			load      : in  std_logic;
			fetch     : in  std_logic;
			data_in   : in  std_logic_vector(7 downto 0);
			data_out  : out std_logic_vector(7 downto 0);
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
			load               : in  std_logic;
			fetch              : in  std_logic;
			data_in            : in  std_logic_vector(7 downto 0);
			data_out           : out std_logic_vector(7 downto 0);
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
	CONSTANT ROWS : integer := 4;
	CONSTANT COLS : integer := 5;

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
	signal en            : std_logic := '0';

begin
		pivot_gen : pivot_cell port map (
			clk       => clk,
			rst       => rst,
			en        => en,
			in1       => s_io1(1,0),
			in2       => s_io2(1,0),
			row_data  => s_row_data(0),
			piv_found => s_piv_found
		);

	pivot_rows_gen : for i in 1 to COLS-1 generate
		normal_piv_row : if (i <= COLS-2 ) generate
				piv_row : pivotRow_cell port map(
					clk       => clk,
					rst       => rst,
					en        => en,
					out1      => s_io1(0,i),
					out2      => s_io2(0,i-1),
					in1       => s_io1(1,i),
					in2       => s_io2(1,i),
					piv_found => s_piv_found,
					row_data  => s_row_data(0),
					col_data  => s_col_data(i)
				);
		else generate -- Last (Special Case)
				piv_row_last : pivotRow_cell port map(
					clk       => clk,
					rst       => rst,
					en        => en,
					out1      => s_io1(0,COLS-1),
					out2      => s_io2(0,COLS-2),
					in1       => s_io1(1,COLS-1),
					in2       => (others => '0'), -- TODO : Check if cycle is correct
					piv_found => s_piv_found,
					row_data  => s_row_data(0),
					col_data  => s_col_data(COLS-1)
				);
		end generate;
	end generate pivot_rows_gen;

	pivot_cols_gen : for i in 1 to ROWS-1 generate
		normal_piv_col : if (i <= ROWS-2) generate
				piv_col : pivotCol_cell port map(
					clk                => clk,
					rst                => rst,
					en                 => en,
					out1               => s_io1(i,0),
					lock_lower_row_out => s_locks_lower(i,0),
					lock_lower_row_in  => s_locks_lower(i+1,0),
					in1                => s_io1(i+1,0),
					in2                => s_io2(i+1,0),
					lock_row           => s_locks(i),
					piv_found          => s_piv_found,
					row_data           => s_row_data(i)
				);
		else generate -- Last (Special Case)
				last_piv_col : pivotCol_cell port map(
					clk                => clk,
					rst                => rst,
					en                 => en,
					out1               => s_io1(ROWS-1,0),
					lock_lower_row_out => s_locks_lower(ROWS-1,0),
					lock_lower_row_in  => '0', -- NO INPUT as nothing lower than this
					in1                => s_io1(0,0),
					in2                => s_io2(0,0),
					lock_row           => s_locks(ROWS-1),
					piv_found          => s_piv_found,
					row_data           => s_row_data(ROWS-1)
				);
		end generate;
	end generate pivot_cols_gen;

	row_basic_cell_gen : for i in 1 to ROWS-1 generate
		col_basic_cell_gen : for j in 1 to COLS-1 generate
			last_normal_cell : if (i = ROwS-1 and j = COLS-1) generate
					last_cell : basic_cell port map(
						clk                => clk,
						rst                => rst,
						en                 => en,
						out1               => s_io1(i,j),
						out2               => s_io2(i,j-1),
						lock_lower_row_out => s_locks_lower(i,j),
						lock_lower_row_in  => '0',
						in1                => s_io1(0,j),
						in2                => (others => '0'),
						lock_row           => s_locks(i),
						piv_found          => s_piv_found,
						row_data           => s_row_data(i),
						col_data           => s_col_data(j)
					);
			elsif (i = ROWS-1 ) generate
					last_row_cell : basic_cell port map(
						clk                => clk,
						rst                => rst,
						en                 => en,
						out1               => s_io1(i,j),
						out2               => s_io2(i,j-1),
						lock_lower_row_out => s_locks_lower(i,j),
						lock_lower_row_in  => '0',
						in1                => s_io1(0,j),
						in2                => s_io2(0,j),
						lock_row           => s_locks(i),
						piv_found          => s_piv_found,
						row_data           => s_row_data(i),
						col_data           => s_col_data(j)
					);
			elsif (j = COLS-1 ) generate
					last_col_cell : basic_cell port map(
						clk                => clk,
						rst                => rst,
						en                 => en,
						out1               => s_io1(i,j),
						out2               => s_io2(i,j-1),
						lock_lower_row_out => s_locks_lower(i,j),
						lock_lower_row_in  => s_locks_lower(i+1,j),
						in1                => s_io1(i+1,j),
						in2                => (others => '0'),
						lock_row           => s_locks(i),
						piv_found          => s_piv_found,
						row_data           => s_row_data(i),
						col_data           => s_col_data(j)
					);
			else generate
					normal_cell : basic_cell port map(
						clk                => clk,
						rst                => rst,
						en                 => en,
						out1               => s_io1(i,j),
						out2               => s_io2(i,j-1),
						lock_lower_row_out => s_locks_lower(i,j),
						lock_lower_row_in  => s_locks_lower(i+1,j),
						in1                => s_io1(i+1,j),
						in2                => s_io2(i,j),
						lock_row           => s_locks(i),
						piv_found          => s_piv_found,
						row_data           => s_row_data(i),
						col_data           => s_col_data(j)
					);
			end generate;
		end generate col_basic_cell_gen;
	end generate row_basic_cell_gen;
end architecture behav;