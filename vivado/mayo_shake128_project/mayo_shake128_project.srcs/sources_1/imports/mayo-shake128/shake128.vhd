library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.params.ALL;

entity shake128 is
	Port ( clk : in STD_LOGIC;
		reset : in  STD_LOGIC;
		d     : in  absorb_message_input_type;
		q     : out absorb_message_output_type);
end shake128;

-- This Module is responsible for feeding the message into the SHAKE128 algorithm
-- We only allow message sizes < 1344 
-- Taken from the SHAKE inside XMSS

-- TODO:
-- Add other state to in more message blocks with padding-
-- -> Keep Paddding states but Loop

-- Add others states to truncate Z to d bits.
-- Turn off shake absorb and truncate the first r bits of "S" to Z which is output of f(shake)  
-- In here it works the other way around so first is 1343 downto...)

architecture Behavioral of shake128 is

	constant padding_block : unsigned(255 downto 0) := x"1f00000000000000000000000000000000000000000000000000000000000000";
	constant padding       : unsigned(63 downto 0)  := x"1f00000000000080";

	type state_type is (S_IDLE, S_MSG_ABSORB_1, S_HASH, S_PADDING, S_HASH_START, S_SQUEEZE_1, S_SQUEEZE_2, S_SQUEEZE_3, S_SQUEEZE_4, S_SQUEEZE_5);

	type reg_type is record
		state : state_type;

		message       : unsigned(1343 downto 0); -- 1344 bit message block to be absorbed
		hash_output : std_logic_vector((n*8)-1 downto 0);
		
		remaining_len : integer range 0 to MAX_MLEN;
		remaining_output : integer ;

		is_padded, padding_next, done : std_logic;

		ctr : integer range 0 to 5;
		out_ctr :integer range 0 to 6;
	end record;

	type out_signals is record
		shake : shake_output_type;
	end record;
	signal shake_reset : std_logic;

	signal modules  : out_signals;
	signal shake_in : shake_input_type;

	signal r, r_in : reg_type;
begin

	--------- Wire up the hash module:
	shake128 : entity work.KECCAK
		port map(
			clk      => clk,
			reset    => shake_reset,
			start    => shake_in.start,
			absorb   => shake_in.start,
			data_in  => shake_in.din,
			ready    => modules.shake.ready,
			data_out => modules.shake.dout
		);
		
	

	
	-- q.o    <= modules.shake.dout(1343 downto 832);
    -- Output the first 256 Bit of the Keccak permutation
    q.o <= r.hash_output;
	q.done <= r.done;
	
	
	
    
	combinational : process (r, d, modules, reset)
		variable v    : reg_type;
	begin
		v := r;

		-- default assignments
		q.mnext        <= '0';
		q.o_valid     <= '0';
		v.done         := '0';
		v.padding_next := '0';
		shake_in.start <= '0';
		shake_reset    <= reset;

		case r.state is
			when S_IDLE =>
				if d.enable = '1' then
				    if reset = '1' then 
					   shake_reset              <= '1'; -- Reset the Keccak state to 0
					   v.remaining_output := d.outputLen;
					end if;
					v.message(319 downto 64) := unsigned(d.input);

					v.is_padded := '0';
					v.ctr       := 0;
					if d.len < 255 then
						v.remaining_len := 0;
						v.padding_next  := '1'; -- Indicate that the next block will start with padding
					else
						q.mnext         <= '1';
						v.remaining_len := d.len - 256;
					end if;
					v.state := S_MSG_ABSORB_1;
				end if;
			when S_MSG_ABSORB_1 =>
				-- In each cycle, shift the state 256 bit to the left and fill in the next 
				-- 256 bit of the message / padding
				-- Do this 4 times to fill maximum capcity in one block

				v.message := SHIFT_LEFT(r.message, 256);
				v.ctr     := r.ctr + 1;

				if r.remaining_len = 0 then
					if r.padding_next = '1' then -- padding_next defaults to 0 so we don't need to do this here
						v.message(319 downto 64) := padding_block;
						v.is_padded              := '1';
					else
						v.message(319 downto 64) := (others => '0');
					end if;

				elsif r.remaining_len = 256 then -- get the next message block and check whether we need do padding in the next block
					v.message(319 downto 64) := unsigned(d.input);
					v.padding_next           := '1';
					v.remaining_len          := 0;
				else
					v.message(319 downto 64) := unsigned(d.input);
					v.remaining_len          := r.remaining_len - 256;
					q.mnext                  <= '1';
				end if;
				if r.ctr = 3 then
					v.state := S_PADDING;
				end if;

			when S_PADDING => -- Append the last 64 Bit padding block
				if r.is_padded = '1' then
					v.message(63 downto 0) := (7 => '1', others => '0');
				else
					v.message(63 downto 0) := padding;
				end if;
				-- Enable the hash function (start signal needs 2 cycles)
				shake_in.start <= '1';
				shake_in.din <= std_logic_vector(r_in.message);
				v.state        := S_HASH_START;
				
			when S_HASH_START =>
				shake_in.start <= '1';
				shake_in.din <= std_logic_vector(r_in.message);
				v.state        := S_HASH;	
			when S_HASH =>
				-- Wait until hash is done
				if modules.shake.ready = '1' then
				    -- Squeeze
				    if (v.remaining_output >= 1344) then 
				        r.hash_output <= modules.shake.dout(1343 downto 1088);
				        v.state := S_SQUEEZE_1;
				    elsif(v.remaining_output < 1344) then 
				        
				    end if; 
				end if;
	       when S_SQUEEZE_1 => 
				        r.hash_output <= modules.shake.dout(1087 downto 832);
				        v.state := S_SQUEEZE_2;
	       when S_SQUEEZE_2 => 
	       				r.hash_output <= modules.shake.dout(831 downto 576);
				        v.state := S_SQUEEZE_3;
	       when S_SQUEEZE_3 => 
	       				r.hash_output <= modules.shake.dout(575 downto 320);
				        v.state := S_SQUEEZE_4;
	       when S_SQUEEZE_4 =>
	                    r.hash_output <= modules.shake.dout(319 downto 64);
				        v.state := S_SQUEEZE_5;
	       when S_SQUEEZE_5 =>  
				        r.hash_output <= modules.shake.dout(63 downto 0);
				        v.state := 
				    else 
				        v.remaining_output := 0;
				    end if;
				    if (v.remaining_output = 0 ) then  
					   v.done  := '1';
					end if;
					v.state := S_IDLE;
					
				end if;
		end case;

		r_in <= v;
	end process;


	sequential : process(clk)
	begin
		if rising_edge(clk) then
			if reset = '1' then
				r.state <= S_IDLE;
			elsif d.halt = '0' then
				r <= r_in;
			end if;

		end if;
	end process;

end Behavioral;

