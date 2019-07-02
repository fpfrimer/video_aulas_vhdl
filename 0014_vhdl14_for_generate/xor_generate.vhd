-- Curso de VHDL #14
-- Porta XOR de n entradas
-- Autor: Felipe W. D. Pfrimer
-- Data: 01/07/2019

library ieee;
use ieee.std_logic_1164.all;

entity xor_generate is
  generic(
    n   :   natural := 8 -- número de entradas
  );
  port (
    i   :   in      std_logic_vector(1 to n);
    o   :   out     std_logic
  ) ;
end xor_generate;

architecture main of xor_generate is
    
    signal  a     :   std_logic_vector(1 to n);

begin

    o <= a(n);
    a(1) <= i(1);
    g1: for i in 2 to n generate
        a(i) <= i(i) xor a(i - 1);
    end generate g1;
    

end main ; -- main