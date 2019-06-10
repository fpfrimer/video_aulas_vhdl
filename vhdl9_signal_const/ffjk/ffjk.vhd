-- Curso de VHDL #9
-- Exemplo de utilização de sinais
-- Autor: Felipe W. D. Pfrimer
-- Data: 10/06/2019

entity ffjk is
  port (
    j, k, clk   :   in      bit;
    q, q_bar    :   buffer  bit
  ) ;
end ffjk;

architecture main of ffjk is

    signal a :  bit_vector(0 to 5);

begin

    a(0)    <= not (q_bar and j and clk);
    a(1)    <= not (q     and k and clk);
    a(2)    <= a(0) nand a(3);
    a(3)    <= a(1) nand a(2);
    a(4)    <= a(2) nand (not clk);
    a(5)    <= a(3) nand (not clk);
    q       <= a(4) nand q_bar;
    q_bar   <= a(5) nand q;

end main ; -- main