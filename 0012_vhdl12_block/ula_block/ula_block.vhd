-- Curso de VHDL #12
-- Exemplo de uma unidade lógica aritmética (ULA) utilizando block
-- Autor: Felipe W. D. Pfrimer
-- Data: 01/07/2019

library ieee;
use ieee.numeric_bit.all; -- Uso de unsigned e signed

entity ula_block is
  port (
    Ai, Bi      :   in  unsigned(7 downto 0);
    S1, S0, M   :   in  bit;
    Fi          :   out unsigned(7 downto 0)
  ) ;
end ula_block;

architecture main of ula_block is

    signal H, G :   unsigned(7 downto 0);    

begin   

    -- unidade aritmética
    arith_unit: block
      signal sel_arith  :   bit_vector(1 downto 0);
    begin
      sel_arith <= S1 & S0;
      with sel_arith select
          G <=    Ai + Bi when "00",
                  Ai - Bi when "01",
                  Ai + x"01" when "10",
                  Ai - x"01" when others;
    end block arith_unit;
      
    -- unidade lógica
    logic_unit: block
      signal sel_logic  :   bit_vector(1 downto 0);
    begin
      sel_logic <= S1 & S0;
      with sel_logic select
          H <=    Ai and Bi when "00",
                  Ai or  Bi when "01",
                  Ai xor Bi when "10",
                  not Ai    when others;
    end block logic_unit; 
                
    -- Saída
    Fi <= G when M = '1' else H;

end main ; -- main