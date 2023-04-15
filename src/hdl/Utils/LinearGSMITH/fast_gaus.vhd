library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity gaussian_elimination is
  generic (
    N : integer := 3  -- size of matrix
  );
  port (
    clk : in std_logic;
    A   : in std_logic_vector(N-1 downto 0); -- NxN matrix A
    b   : in std_logic_vector(N-1 downto 0); -- Nx1 vector b
    x   : out std_logic_vector(N-1 downto 0) -- Nx1 solution vector x
  );
end entity gaussian_elimination;

architecture behavioral of gaussian_elimination is
  type matrix is array (0 to N-1, 0 to N-1) of real;
  type vector is array (0 to N-1) of real;

  signal A_reg : matrix;
  signal b_reg : vector;

begin
  process(clk)
  begin
    if rising_edge(clk) then
      -- Copy input matrix A and vector b to registers
      for i in 0 to N-1 loop
        A_reg(i) := to_real(unsigned(A(i*N+N-1 downto i*N)));
        b_reg(i) := to_real(unsigned(b(i*N+N-1 downto i*N)));
      end loop;

      -- Perform Gaussian elimination
      for i in 0 to N-1 loop
        -- Search for maximum in column i
        variable maxRow : integer := i;
        for k in i+1 to N-1 loop
          if abs(A_reg(k)(i)) > abs(A_reg(maxRow)(i)) then
            maxRow := k;
          end if;
        end loop;

        -- Swap maximum row with current row (column by column)
        if maxRow /= i then
          for k in i to N-1 loop
            variable tmp : real := A_reg(maxRow)(k);
            A_reg(maxRow)(k) := A_reg(i)(k);
            A_reg(i)(k) := tmp;
          end loop;
          variable tmp : real := b_reg(maxRow);
          b_reg(maxRow) := b_reg(i);
          b_reg(i) := tmp;
        end if;

        -- Make all rows below this one 0 in current column
        for k in i+1 to N-1 loop
          variable c : real := -A_reg(k)(i)/A_reg(i)(i);
          for j in i to N-1 loop
            if i = j then
              A_reg(k)(j) := 0.0;
            else
              A_reg(k)(j) := A_reg(k)(j) + c * A_reg(i)(j);
            end if;
          end loop;
          b_reg(k) := b_reg(k) + c * b_reg(i);
        end loop;
      end loop;

      -- Perform back substitution
      for i in N-1 downto 0 loop
        variable sum : real := 0.0;
        for j in i+1 to N-1 loop
          sum := sum + A_reg(i)(j) * x(j);
        end loop;
        x(i) <= std_logic_vector(to_unsigned((b_reg(i) - sum) / A_reg(i)(i), x'length));
      end loop;
    end if;
  end process;
end architecture;