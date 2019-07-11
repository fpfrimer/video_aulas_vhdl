-- Curso de VHDL #15
-- Porta XOR de n entradas
-- Autor: Felipe W. D. Pfrimer
-- Data: 02/07/2019

library ieee;
use ieee.std_logic_1164.all;

entity xor_generate_v2 is
  generic(
    n   :   natural := 8 -- número de entradas
  );
  port (
    i   :   in      std_logic_vector(1 to n);
    o   :   out     std_logic
  ) ;
end xor_generate_v2;

architecture main of xor_generate_v2 is
    
    signal  a     :   std_logic_vector(1 to n-2);

begin
    
    g1: for x in 1 to n - 1 generate
        -- Primeira porta
        g2: if x = 1 generate
            a(1) <= i(1) xor i(2);
        end generate g2;

        -- ultima porta
        g3: if x = n - 1 generate
            o <= i(n) xor a(n-2);
        end generate g3;

        -- intermediárias
        g4: if (x > 1) and (x < n - 1) generate
          a(x) <= i(x+1) xor a(x-1);
        end generate g4;
    end generate g1;
    

end main ; -- main