LIBRARY IEEE;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;
  -- PACKAGE
PACKAGE MAYO_COMMON IS

  -- USEFUL FUNCTIONS

  FUNCTION P2KC2_MONO (K : positive) RETURN real;

  FUNCTION P1MONOMIALS (N : positive;O:POSITIVE) RETURN real;

  -- Parameters ---
  -- MAYO
  CONSTANT PRIME      : natural := 31; -- q =31
  CONSTANT PRIME_BITS : positive := 5;
  CONSTANT M          : positive := 60; -- #Equations in public key map P
  CONSTANT N          : positive := 62; -- #Variables in each QE of P
  CONSTANT O          : positive := 6;  -- Dimension of the secret linear subspace
  CONSTANT K          : positive := 10; -- Used to construct a larger map P*
  CONSTANT SEED_BYTES : positive := 16;
  CONSTANT HAS_BYTES  : positive := 32;

END PACKAGE MAYO_COMMON;

-- PACKAGE BODY

PACKAGE BODY MAYO_COMMON IS

  FUNCTION P2KC2_MONO (K : positive) RETURN real IS
  BEGIN

    RETURN (K * (K + 1) / 2);

  END FUNCTION;

  FUNCTION P1MONOMIALS (N : positive;O:POSITIVE) RETURN real IS
  BEGIN

    return ((N - O) * (N - O + 1) / 2 + (N - O) * O);

  END FUNCTION;

END PACKAGE BODY MAYO_COMMON;
