LIBRARY IEEE;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

ENTITY MAYO_KEYGEN IS
  GENERIC (
    SIZE   : NATURAL := 999; -- typeholder
    SIZE_1 : NATURAL := 999
  );
  PORT (
    CLK               : IN    STD_LOGIC;
    ENABLE            : IN    STD_LOGIC;                     -- TODO: Optional or change to internal config regs
    RESET             : IN    STD_LOGIC;
    PUBLIC_KEY_ADDR_I : IN    STD_LOGIC_VECTOR(31 DOWNTO 0); -- TODO: 32 bits adr of ram needs more work in vivado aka. axi DMA
    SECRET_KEY_ADDR_I : IN    STD_LOGIC_VECTOR(31 DOWNTO 0); -- TODO: 32 bits adr of ram needs more work in vivado aka. axi DMA
    VALID_O           : OUT   STD_LOGIC_VECTOR(1 DOWNTO 0)   -- TODO: Maybe transform to type / 00-> nothing, 01 -> valid, 10 -> error , 11 -> reserved
  );
  -- data
END ENTITY MAYO_KEYGEN;

ARCHITECTURE RTL OF MAYO_KEYGEN IS

  -- MORE SIGNALS NEEDED HERE !
  -- NEOTRG initiated here

  TYPE STATES IS (S_RESET, S_START, S_FAILED, S_DONE);

  SIGNAL STATE : STATES := S_RESET; -- default to reset;

BEGIN

  -- sync clk
  KEYGEN : PROCESS (CLK) IS
  BEGIN

    IF (CLK'event AND CLK = '1') THEN

      CASE STATE IS

        WHEN S_RESET =>

          VALID_O <= "00";
          IF (ENABLE = '1') THEN
            STATE <= S_START;
          ELSE
            STATE <= RESET;
          END IF;

        WHEN S_START =>

          -- TODO: implement
          -- 1 generate seed public and secret
          -- 2 expand pk
          -- 3 sample
          -- 4 computep2
          -- add other cases here
          -- if internal reg is true or whatever then
          -- go to s_done otherwise stay
          STATE <= S_DONE;

        WHEN S_FAILED =>

          VALID_O <= "10";
          IF (RESET = '1') THEN
            STATE <= S_RESET;
          ELSE
            STATE <= S_FAILED;
          END IF;

        WHEN S_DONE =>

          VALID_O <= "01";
          IF (RESET = '1') THEN
            STATE <= S_RESET;
          ELSE
            STATE <= S_DONE;
          END IF;

      END CASE;

    END IF;

  END PROCESS KEYGEN;

END ARCHITECTURE RTL;
