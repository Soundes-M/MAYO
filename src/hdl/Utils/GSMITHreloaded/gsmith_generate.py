ROWS = 60
COLS = 61

from enum import Enum


class Types(Enum):
    PIV = 0
    PIV_ROW = 1
    PIV_COL = 2
    BASIC = 3


class Block:
    i = 0
    j = 0
    type = None

    def __init__(self, type: Types, i: int, j: int):  #diagUp: bool,
        #  diagDown: bool, up: bool, right: bool, down: bool,
        #  left: bool) -> None:
        self.type = type
        self.i = i
        self.j = j
        # self.diagUp = diagUp
        # self.diagDown = diagDown
        # self.up = up
        # self.right = right
        # self.down = down
        # self.left = left


gsmith = [[]]


def start():
    print(f"library IEEE; \n\
use IEEE.STD_LOGIC_1164.ALL; \n\
use IEEE.NUMERIC_STD.ALL;\n\
\n\
entity gsmith_generated is\n\
	port (\n\
		clk  : in  std_logic;\n\
		rst  : in  std_logic;\n\
        enable : in std_logic;\n\
        lo       : in  std_logic;\n\
		fet      : in  std_logic;\n\
		data_in  : in  std_logic_vector(7 downto 0);\n\
		data_out : out std_logic_vector(7 downto 0);\n\
		i        : in  std_logic_vector(31 downto 0);\n\
		j        : in  std_logic_vector(31 downto 0);\n\
		done : out std_logic\n\
	);\n\
\n\
end entity gsmith_generated;\n\
\n\
architecture behav of gsmith_generated is\n\
	component basic_cell is\n\
		port (\n\
			clk                : in  std_logic;\n\
			rst                : in  std_logic;\n\
			en                 : in  std_logic;\n\
			load               : in  std_logic;\n\
			fetch              : in  std_logic;\n\
			data_in            : in  std_logic_vector(7 downto 0);\n\
			data_out           : out std_logic_vector(7 downto 0);\n\
			out1               : out std_logic_vector(7 downto 0); -- Upper neighbor\n\
			out2               : out std_logic_vector(7 downto 0); -- Upper left\n\
			lock_lower_row_out : out std_logic;                    -- Upper neighbor\n\
			lock_lower_row_in  : in  std_logic;                    -- Lower neighbor\n\
			in1                : in  std_logic_vector(7 downto 0); -- Lower neighbor\n\
			in2                : in  std_logic_vector(7 downto 0); -- Lower right\n\
			lock_row           : in  std_logic;\n\
			piv_found          : in  std_logic;\n\
			row_data           : in  std_logic_vector(7 downto 0);\n\
			col_data           : in  std_logic_vector(7 downto 0)\n\
		);\n\
	end component basic_cell;\n\
\n\
	component pivot_cell is\n\
		port (\n\
			clk       : in  std_logic;\n\
			rst       : in  std_logic;\n\
			en        : in  std_logic;\n\
			load      : in  std_logic;\n\
			fetch     : in  std_logic;\n\
			data_in   : in  std_logic_vector(7 downto 0);\n\
			data_out  : out std_logic_vector(7 downto 0);\n\
			in1       : in  std_logic_vector(7 downto 0);\n\
			in2       : in  std_logic_vector(7 downto 0);\n\
			row_data  : out std_logic_vector(7 downto 0);\n\
			piv_found : out std_logic\n\
		);\n\
	end component pivot_cell;\n\
\n\
	component pivotRow_cell is\n\
		port (\n\
			clk       : in  std_logic;\n\
			rst       : in  std_logic;\n\
			en        : in  std_logic;\n\
			load      : in  std_logic;\n\
			fetch     : in  std_logic;\n\
			data_in   : in  std_logic_vector(7 downto 0);\n\
			data_out  : out std_logic_vector(7 downto 0);\n\
			out1      : out std_logic_vector(7 downto 0);\n\
			out2      : out std_logic_vector(7 downto 0);\n\
			in1       : in  std_logic_vector(7 downto 0);\n\
			in2       : in  std_logic_vector(7 downto 0);\n\
			piv_found : in  std_logic;\n\
			row_data  : in  std_logic_vector(7 downto 0);\n\
			col_data  : out std_logic_vector(7 downto 0)\n\
		);\n\
	end component pivotRow_cell;\n\
\n\
	component pivotCol_cell is\n\
		port (\n\
			clk                : in  std_logic;\n\
			rst                : in  std_logic;\n\
			en                 : in  std_logic;\n\
			load               : in  std_logic;\n\
			fetch              : in  std_logic;\n\
			data_in            : in  std_logic_vector(7 downto 0);\n\
			data_out           : out std_logic_vector(7 downto 0);\n\
			out1               : out std_logic_vector(7 downto 0); -- Upper neighbor\n\
			lock_lower_row_out : out std_logic;                    -- Upper neighbor\n\
			lock_lower_row_in  : in  std_logic;                    -- Lower neighbor\n\
			in1                : in  std_logic_vector(7 downto 0); -- Lower neighbor\n\
			in2                : in  std_logic_vector(7 downto 0); -- Lower right\n\
			lock_row           : in  std_logic;\n\
			piv_found          : in  std_logic;\n\
			row_data           : out std_logic_vector(7 downto 0)\n\
		);\n\
	end component pivotCol_cell;\n\
\n\
	-- Matrix Size (ROWS*COLS)\n\
	CONSTANT ROWS : integer := {ROWS};\n\
	CONSTANT COLS : integer := {COLS};\n\
\n\
	signal s_piv_found : std_logic;\n\
	type vector8 is array (natural range <>) of std_logic_vector(7 downto 0);\n\
	type vector8_2d is array (0 to ROWS-1, 0 to COLS-1) of std_logic_vector(7 downto 0);\n\
	type vector1_2d is array (0 to ROWS-1, 0 to COLS-1) of std_logic;\n\
	signal s_row_data : vector8(0 to ROWS-1);\n\
	signal s_col_data : vector8(0 to COLS-1);\n\
	signal s_in1      : vector8_2d;\n\
	signal s_in2      : vector8_2d;\n\
    signal s_out1     : vector8_2d;\n\
    signal s_out2     : vector8_2d;\n\
    signal s_data_in  : vector8_2d;\n\
    signal s_data_out : vector8_2d;\n\
    signal s_fetch    : vector1_2d;\n\
	signal s_load     : vector1_2d;\n\
	signal tmp        : std_logic;\n\
	type vector1 is array (natural range <>) of std_logic;\n\
	signal s_locks_lower_in  : vector1_2d;\n\
    signal s_locks_lower_out : vector1_2d;\n\
	signal s_locks       : vector1(0 to ROWS-1); -- also called 'used' flag\n\
	signal en : std_logic := '0';\n\
	signal s_i, s_j          : unsigned(31 downto 0);\n\
    function check_locks(locks : vector1) return std_logic is \n\
	variable result : std_logic := '1'; \n\
	begin\n\
	for i in locks'range loop\n\
		if locks(i) = '0' then\n\
			result := '0';\n\
			exit;\n\
			end if;\n\
	end loop;\n\
	return result;\n\
end function;\n\
\n\
begin\n\
		pivot_gen : pivot_cell port map (\n\
			clk       => clk,\n\
			rst       => rst,\n\
			en        => en,\n\
			load => s_load(0,0),\n\
			fetch => s_fetch(0,0),\n\
			data_in => s_data_in(0,0),\n\
			data_out => s_data_out(0,0),\n\
			in1       => s_in1(0,0),\n\
			in2       => s_in2(0,0),\n\
			row_data  => s_row_data(0),\n\
			piv_found => s_piv_found\n\
		);\n\
        s_in1(0,0) <= s_out1(1,0); \n\
        s_in2(0,0) <= s_out2(1,1); \n\
          ")
    gsmith[0].append(Block(Types.PIV, 0, 0))


def piv_row():
    for i in range(1, COLS):
        if (i <= COLS - 2):
            print(f"	piv_row_{i} : pivotRow_cell port map(\n\
					clk       => clk,\n\
					rst       => rst,\n\
					en        => en,\n\
                  	load => s_load(0,{i}),\n\
					fetch => s_fetch(0,{i}),\n\
					data_in => s_data_in(0,{i}),\n\
					data_out => s_data_out(0,{i}),\n\
					out1      => s_out1(0,{i}),\n\
					out2      => s_out2(0,{i}),\n\
					in1       => s_in1(0,{i}),\n\
					in2       => s_in2(0,{i}),\n\
					piv_found => s_piv_found,\n\
					row_data  => s_row_data(0),\n\
					col_data  => s_col_data({i})\n\
				);\n\
                s_in1(0,{i}) <= s_out1(1,{i}); \n\
                s_in2(0,{i}) <= s_out2(1,{i+1}); \n\
                  ")
        else:
            print(f"	piv_row_last : pivotRow_cell port map(\n\
					clk       => clk,\n\
					rst       => rst,\n\
					en        => en,\n\
                    load => s_load(0,{i}),\n\
					fetch => s_fetch(0,{i}),\n\
					data_in => s_data_in(0,{i}),\n\
					data_out => s_data_out(0,{i}),\n\
					out1      => s_out1(0,COLS-1),\n\
					out2      => s_out2(0,COLS-1),\n\
					in1       => s_in1(0,COLS-1),\n\
					in2       => (others => '0'), -- TODO : Check if cycle is correct\n\
					piv_found => s_piv_found,\n\
					row_data  => s_row_data(0),\n\
					col_data  => s_col_data(COLS-1)\n\
				);\n\
                s_in1(0,{i}) <= s_out1(1,{i}); \n\
                  ")
        gsmith[0].append(Block(Types.PIV_ROW, 0, i))


def piv_col():
    for i in range(1, ROWS):
        if (i <= ROWS - 2):
            print(f"	piv_col_{i} : pivotCol_cell port map(\n\
					clk                => clk,\n\
					rst                => rst,\n\
					en                 => en,\n\
                  	load => s_load({i},0),\n\
					fetch => s_fetch({i},0),\n\
					data_in => s_data_in({i},0),\n\
					data_out => s_data_out({i},0),\n\
					out1               => s_out1({i},0),\n\
					lock_lower_row_out => s_locks_lower_out({i},0),\n\
					lock_lower_row_in  => s_locks_lower_in({i},0),\n\
					in1                => s_in1({i},0),\n\
					in2                => s_in2({i},0),\n\
					lock_row           => s_locks({i}),\n\
					piv_found          => s_piv_found,\n\
					row_data           => s_row_data({i})\n\
				); \n\
                s_in1({i},0) <= s_out1({i+1},0); \n\
                s_in2({i},0) <= s_out2({i+1},1); \n\
                s_locks_lower_in({i},0) <= s_locks_lower_out({i+1},0);  \n\
                  ")
        else:
            print(f"	last_piv_col : pivotCol_cell port map(\n\
					clk                => clk,\n\
					rst                => rst,\n\
					en                 => en,\n\
                  	load => s_load({i},0),\n\
					fetch => s_fetch({i},0),\n\
					data_in => s_data_in({i},0),\n\
					data_out => s_data_out({i},0),\n\
					out1               => s_out1({i},0),\n\
					lock_lower_row_out => s_locks_lower_out({i},0),\n\
					lock_lower_row_in  => '0',\n\
					in1                => (others => '0'),\n\
					in2                => s_in2({i},0),\n\
					lock_row           => s_locks({i}),\n\
					piv_found          => s_piv_found,\n\
					row_data           => s_row_data({i})\n\
				); \n\
                s_in2({i},0) <= s_out2(0,1); \n\
                  ")
        gsmith.append([Block(Types.PIV_COL, i, 0)])


def basic_cells():
    for i in range(1, ROWS):
        for j in range(1, COLS):
            if (i == ROWS - 1 and j == COLS - 1):
                print(f"	last_cell : basic_cell port map(\n\
						clk                => clk,\n\
						rst                => rst,\n\
						en                 => en,\n\
                      	load => s_load({i},{j}),\n\
						fetch => s_fetch({i},{j}),\n\
						data_in => s_data_in({i},{j}),\n\
						data_out => s_data_out({i},{j}),\n\
						out1               => s_out1({i},{j}),\n\
						out2               => s_out2({i},{j}),\n\
						lock_lower_row_out => s_locks_lower_out({i},{j}),\n\
						lock_lower_row_in  => '0',\n\
						in1                => s_in1({i},{j}),\n\
						in2                => (others => '0'),\n\
						lock_row           => s_locks({i}),\n\
						piv_found          => s_piv_found,\n\
						row_data           => s_row_data({i}),\n\
						col_data           => s_col_data({j})\n\
					); \n\
                	s_in1({i},{j}) <= s_out1(0,{j}); \n\
                      ")
            elif (i == ROWS - 1):
                print(f"	last_row_cell_{j} : basic_cell port map(\n\
						clk                => clk,\n\
						rst                => rst,\n\
						en                 => en,\n\
                        load => s_load({i},{j}),\n\
						fetch => s_fetch({i},{j}),\n\
						data_in => s_data_in({i},{j}),\n\
						data_out => s_data_out({i},{j}),\n\
						out1               => s_out1({i},{j}),\n\
						out2               => s_out2({i},{j}),\n\
						lock_lower_row_out => s_locks_lower_out({i},{j}),\n\
						lock_lower_row_in  => '0',\n\
						in1                => s_in1({i},{j}),\n\
						in2                => s_in2({i},{j}),\n\
						lock_row           => s_locks({i}),\n\
						piv_found          => s_piv_found,\n\
						row_data           => s_row_data({i}),\n\
						col_data           => s_col_data({j})\n\
					); \n\
                	s_in1({i},{j}) <= s_out1(0,{j}); \n\
                	s_in2({i},{j}) <= s_out2(0,{j+1}); \n\
                      ")
            elif (j == COLS - 1):
                print(f"	last_col_cell_{i} : basic_cell port map(\n\
						clk                => clk,\n\
						rst                => rst,\n\
						en                 => en,\n\
                        load => s_load({i},{j}),\n\
						fetch => s_fetch({i},{j}),\n\
						data_in => s_data_in({i},{j}),\n\
						data_out => s_data_out({i},{j}),\n\
						out1               => s_out1({i},{j}),\n\
						out2               => s_out2({i},{j}),\n\
						lock_lower_row_out => s_locks_lower_out({i},{j}),\n\
						lock_lower_row_in  => s_locks_lower_in({i},{j}),\n\
						in1                => s_in1({i},{j}),\n\
						in2                => (others => '0'),\n\
						lock_row           => s_locks({i}),\n\
						piv_found          => s_piv_found,\n\
						row_data           => s_row_data({i}),\n\
						col_data           => s_col_data({j})\n\
					); \n\
                	s_in1({i},{j}) <= s_out1({i+1},{j}); \n\
                	s_locks_lower_in({i},{j}) <= s_locks_lower_out({i+1},{j});  \n\
                      ")
            else:
                print(f"	normal_cell_{i}_{j} : basic_cell port map(\n\
						clk                => clk,\n\
						rst                => rst,\n\
						en                 => en,\n\
                        load => s_load({i},{j}),\n\
						fetch => s_fetch({i},{j}),\n\
						data_in => s_data_in({i},{j}),\n\
						data_out => s_data_out({i},{j}),\n\
						out1               => s_out1({i},{j}),\n\
						out2               => s_out2({i},{j}),\n\
						lock_lower_row_out => s_locks_lower_out({i},{j}),\n\
						lock_lower_row_in  => s_locks_lower_in({i},{j}),\n\
						in1                => s_in1({i},{j}),\n\
						in2                => s_in2({i},{j}),\n\
						lock_row           => s_locks({i}),\n\
						piv_found          => s_piv_found,\n\
						row_data           => s_row_data({i}),\n\
						col_data           => s_col_data({j})\n\
					); \n\
                	s_in1({i},{j}) <= s_out1({i+1},{j}); \n\
                	s_in2({i},{j}) <= s_out2({i+1},{j+1}); \n\
                	s_locks_lower_in({i},{j}) <= s_locks_lower_out({i+1},{j});  \n\
                      ")
            gsmith[i].append(Block(Types.BASIC, i, j))


def misc():
    print("en <= enable;\n\
           done <= check_locks(s_locks);\n\
          \n\
	process(clk)\n\
		variable v_i : integer range 0 to ROWS-1;\n\
		variable v_j : integer range 0 to COLS-1\n\
	begin\n\
		if (rising_edge(clk)) then\n\
			if (rst = '1') then\n\
				v_i := 0;\n\
				v_j := 0;\n\
			else\n\
				v_i := to_integer(unsigned(i));\n\
				v_j := to_integer(unsigned(j));\n\
\n\
				if (lo = '1') then\n\
					s_load(v_i,v_j)    <= '1';\n\
					s_data_in(v_i,v_j) <= data_in;\n\
				else\n\
					s_load(v_i,v_j) <= '0';\n\
				end if;\n\
\n\
				if(fet = '1') then\n\
					s_fetch(v_i,v_j) <= '1';\n\
					data_out         <= s_data_out(v_i,v_j);\n\
				else\n\
					s_fetch(v_i,v_j) <= '0';\n\
				end if;\n\
			end if;\n\
		end if;\n\
	end process;")


def printGrid():

    def getLetter(type: Types):
        if type == Types.BASIC:
            return 'B'
        elif type == Types.PIV:
            return 'P'
        elif type == Types.PIV_COL:
            return 'C'
        elif type == Types.PIV_ROW:
            return 'R'
        else:
            raise Exception

    for x in gsmith:
        s = [getLetter(i.type) for i in x]
        print(*s, sep=' ')


if __name__ == "__main__":
    start()
    print("\n--Pivot Rows-----------")
    piv_row()
    print("\n--Pivot Cols-----------")
    piv_col()
    print("\n--Basic Cells----------")
    basic_cells()
    misc()
    print("end architecture behav;")
    #printGrid()

    prettyGrid = False
    if prettyGrid:
        import pygame

        rows = ROWS
        cols = COLS
        square_size = 60
        line_width0 = 2
        line_width = 5
        line_width2 = 7
        inbetween_space = 30

        # Define colors
        white = (255, 255, 255)
        green = (0, 255, 0)
        red = (255, 0, 0)
        black = (0, 0, 0)
        blue = (0, 0, 255)

        # Initialize Pygame
        pygame.init()

        # Create the screen
        screen_width = cols * (square_size + inbetween_space) + inbetween_space
        screen_height = rows * (square_size +
                                inbetween_space) + inbetween_space
        screen = pygame.display.set_mode((screen_width, screen_height))
        screen.fill(white)
        font = pygame.font.Font(None, 36)

        def middle(x):
            return x + square_size * 0.5

        def lineToTop(x, y):
            pygame.draw.line(screen, green, (middle(x), y),
                             (middle(x), y - inbetween_space), line_width)

        def lineToBottom(x, y):
            pygame.draw.line(screen, red, (middle(x), y + square_size),
                             (middle(x), y + square_size + inbetween_space),
                             line_width2)

        def lineToLeft(x, y):
            pygame.draw.line(screen, green, (x, middle(y)),
                             (x - inbetween_space, middle(y)), line_width)

        def lineToRight(x, y):
            pygame.draw.line(screen, red, (x + square_size, middle(y)),
                             (x + square_size + inbetween_space, middle(y)),
                             line_width2)

        def lineHorLoop(x, y, first):
            if first:
                pygame.draw.lines(
                    screen, blue, False,
                    [(x, y), (x, y - inbetween_space * 0.4),
                     (x + (COLS - 1) * (square_size + inbetween_space), y),
                     (x + (COLS - 1) * (square_size + inbetween_space),
                      y + inbetween_space * 0.4)], line_width0)
            else:
                pygame.draw.lines(
                    screen, blue, False,
                    [(x, y), (x, y - inbetween_space * 0.4),
                     (x - (COLS - 1) * (square_size + inbetween_space), y),
                     (x - (COLS - 1) * (square_size + inbetween_space),
                      y + inbetween_space * 0.4)], line_width0)

        def lineVerLoop(x, y, first):
            pass

        def lineDiagUp(x, y):
            pygame.draw.line(screen, black, (x, y),
                             (x - inbetween_space, y - inbetween_space),
                             line_width0)

        def lineDiagDown(x, y):
            pygame.draw.line(screen, black, (x + square_size, y + square_size),
                             (x + square_size + inbetween_space,
                              y + square_size + inbetween_space), line_width0)

    # Draw the grid

        for i in range(rows):
            for j in range(cols):
                # Calculate the position of the square
                x = j * (square_size + inbetween_space) + inbetween_space
                y = i * (square_size + inbetween_space) + inbetween_space

                # Draw the square
                if i == 0 and j == 0:
                    pygame.draw.circle(screen, black, (middle(x), middle(y)),
                                       square_size * 0.5, 2)
                else:
                    pygame.draw.rect(screen, black,
                                     (x, y, square_size, square_size), 2)

                # Draw the lines to its neighbors
                if i > 0:  # Connect to the square above
                    lineToTop(x, y)
                    #lineHorLoop(middle(x), y, False)
                if j > 0:  # Connect to the square to the left
                    lineToLeft(x, y)
                    lineDiagDown(x, y)
                if j < cols - 1:  # Connect to the square to the right
                    lineToRight(x, y)
                    lineDiagUp(x, y)
                if i < rows - 1:  # Connect to the square below
                    lineToBottom(x, y)

        for i in range(cols):
            text_surface = font.render(str(i), True, black)
            screen.blit(text_surface,
                        (i *
                         (square_size + inbetween_space) + inbetween_space +
                         square_size * .45, inbetween_space * .25))

        for i in range(rows):
            text_surface = font.render(str(i), True, black)
            screen.blit(text_surface, (inbetween_space * .25, i *
                                       (square_size + inbetween_space) +
                                       inbetween_space + square_size * .45))

    # Update the screen
        pygame.display.flip()

        # Run the game loop
        running = True
        while running:
            for event in pygame.event.get():
                if event.type == pygame.QUIT:
                    running = False

    # Quit Pygame
        pygame.quit()
