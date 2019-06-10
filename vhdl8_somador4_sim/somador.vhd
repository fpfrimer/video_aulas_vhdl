-- Curso de VHDL #3
-- Exemplo de um somador de 4 bits
-- Autor: Felipe W. D. Pfrimer
-- Data: 27/05/2019

entity somador is
    port(
        a, b    :   in      integer range 0 to 15;
        z       :   out     integer range 0 to 15
    );
end entity somador;

architecture main of somador is
begin
    z <= a + b;
end main ; -- main