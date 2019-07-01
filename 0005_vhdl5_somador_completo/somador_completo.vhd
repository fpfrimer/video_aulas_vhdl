-- Curso de VHDL #5
-- Exemplo de um somador completo
-- Autor: Felipe W. D. Pfrimer
-- Data: 02/05/2019

entity somador_completo is
    port(
        A, B    :   in  bit; -- entradas
        TE      :   in  bit; -- Transporte de entrada
        S       :   out bit; -- Soma
        TS      :   out bit  -- Transposte de saída
    );
end entity;

architecture main of somador_completo is
begin
    S <= A xor B xor TE;
    TS <= (A and B) or (A and TE) or (B and TE);
end architecture;
-- Fim