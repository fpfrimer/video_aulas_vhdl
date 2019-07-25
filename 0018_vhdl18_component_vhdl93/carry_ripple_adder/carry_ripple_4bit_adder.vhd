-- Curso de VHDL #18
-- Somador carry ripple de 4 bits em VHDL
-- Autor: Felipe W. D. Pfrimer
-- Data: 21/07/2019

library ieee;
use ieee.std_logic_1164.all;

entity carry_ripple_4bit_adder is
  port (
    -- Entrdas
    A, B        :   in  std_logic_vector(3 downto 0);
    CARRY_IN    :   in  std_logic;

    -- Saídas
    S           :   out std_logic_vector(3 downto 0);
    CARRY_OUT   :  out std_logic
  ) ;
end carry_ripple_4bit_adder;

architecture main of carry_ripple_4bit_adder is

    -- Sinais internos
    signal C1, C2, C3   :   std_logic;

begin

    -- Instanciações posicionais
    FA1: entity work.full_adder(rtl1) port map(A(0), B(0), CARRY_IN, S(0), C1);
    FA2: entity work.full_adder(rtl2) port map(A(1), B(1), C1      , S(1), C2);
    FA3: entity work.full_adder(rtl1) port map(A(2), B(2), C2      , S(2), C3);
    FA4: entity work.full_adder(rtl2) port map(A(3), B(3), C3      , S(3), CARRY_OUT);

end main ; -- main