-- Curso de VHDL #2
-- Exemplo de uma porta and
-- Autor: Felipe W. D. Pfrimer
-- Data: 27/05/2019

-- Bibliotecas e pacotes

-- Entidade
entity and_gate is
    port(
        a, b    :   in  bit;
        z       :   out bit
    );
end and_gate;

-- Arquitetura
architecture main of and_gate is
begin

    z <= a and b;
    
end architecture main;

-- Configuração 