library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.params.ALL;

entity mayo_shake128 is
    Port ( clk_i : in STD_LOGIC;
        reset_i : in STD_LOGIC;

        halt_i   : in STD_LOGIC;
        enable_i : in STD_LOGIC;
        len_i    : in std_logic_vector(10 downto 0);
        outputLen_i : in std_logic_vector(31 downto 0);
        input_i  : in std_logic_vector((n*8)-1 downto 0);

        done_o   : out std_logic;
        mnext_o  : out std_logic;
        output_o : out std_logic_vector((n*8)-1 downto 0)
    );
end mayo_shake128;

architecture Behavioral of mayo_shake128 is
    component shake128 is
        Port ( clk : in STD_LOGIC;
            reset : in  STD_LOGIC;
            d     : in  absorb_message_input_type;
            q     : out absorb_message_output_type);
    end component;

    signal din : absorb_message_input_type;

    signal dout : absorb_message_output_type;
begin

    din.halt   <= halt_i;
    din.enable <= enable_i;
    din.len    <= to_integer(unsigned(len_i));
    din.input  <= input_i;
    din.outputLen <= to_integer(unsigned(outputLen_i));
    
    done_o   <= dout.done;
    mnext_o  <= dout.mnext;
    output_o <= dout.o;


    shake_inst : shake128
        port map (
            clk   => clk_i,
            reset => reset_i,
            d     => din,
            q     => dout
        );


end Behavioral;
