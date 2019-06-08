-- Curso de VHDL #6
-- Exemplo de uma porta and (Aula 2) utilizado
-- na apresentação do quartus prime.
-- Autor: Felipe W. D. Pfrimer
-- Data: 08/06/2019

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