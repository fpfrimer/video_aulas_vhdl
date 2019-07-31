-- Curso de VHDL #17
-- Somador completo em VHDL
-- Autor: Felipe W. D. Pfrimer
-- Data: 14/07/2019

library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
  port (
    A, B    :   in  std_logic;
    CARRY_IN:   in  std_logic;
    SUM     :   out std_logic;
    CARRY   :   out std_logic
  ) ;
end full_adder;

architecture rtl of full_adder is

    -- Declaração do componente half_adder
    component half_adder is
        port (
          A, B    :   in  std_logic;
          SUM     :   out std_logic;
          CARRY   :   out std_logic
        ) ;
    end component half_adder;
    
    -- Sinais internos
    signal x, y, z  :   std_logic;

begin

    CARRY <= z or y;

    -- Instanciação nominal
    ha1: half_adder
        port map(
            A       =>  A,
            B       =>  B,
            SUM     =>  x,
            CARRY   =>  y
        );
    
    -- Instanciação posicional
    ha2: half_adder
        port map(x, CARRY_IN, SUM, Z);

end rtl ; -- rtl 