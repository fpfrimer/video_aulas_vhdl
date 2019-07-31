-- Curso de VHDL #17
-- Somador carry ripple de 4 bits em VHDL
-- Autor: Felipe W. D. Pfrimer
-- Data: 14/07/2019

library ieee;
use ieee.std_logic_1164.all;

entity carry_ripple_adder is
  generic(n : integer := 12); -- Quantidade de bits das entradas e saída
  port (
    -- Entrdas
    A, B        :   in  std_logic_vector(n - 1 downto 0);
    CARRY_IN    :   in  std_logic;

    -- Saídas
    S           :   out std_logic_vector(n - 1 downto 0);
    CARRY_OUT   :  out std_logic
  ) ;
end carry_ripple_adder;

architecture main of carry_ripple_adder is

    -- Sinais internos
    signal C   :   std_logic_vector(0 to n);

begin

    CARRY_OUT <= C(n);
    C(0) <= CARRY_IN;
    -- Instanciação com generate
    gen:  for i in 0 to n - 1 generate
      FA: entity work.full_adder(rtl) port map(A(i), B(i), C(i), S(i), C(i + 1));
    end generate gen;

end main ; -- main