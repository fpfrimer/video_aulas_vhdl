-- Curso de VHDL #12
-- Exemplo de um latch utilizando block
-- Autor: Felipe W. D. Pfrimer
-- Data: 01/07/2019

library ieee;
use ieee.std_logic_1164.all;

entity latch_block is
  port (
    a    :   in  std_logic;
    sel  :   in  std_logic;
    x    :   out std_logic 
  ) ;
end latch_block;

architecture main of latch_block is
begin

    driver: block(sel = '1')
    begin
        x <= guarded a;
    end block driver;

end main ; -- main