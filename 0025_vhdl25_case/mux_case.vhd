-- Curso de VHDL #25
-- Multiplexador utilizando o comando case
-- Autor: Felipe W. D. Pfrimer
-- Data: 09/08/2019

library ieee;
use ieee.std_logic_1164.all;

entity mux_case is
port(
    sel        : in     std_logic_vector(0 to 1);
    a,b,c,d    : in     std_logic;
    saida      : out    std_logic
    );
end mux_case;

architecture rtl of mux_case is
begin      
    process(a, b, c, d, sel)
    begin
        case sel is
            when "00"   => saida <= a;
            when "01"   => saida <= b;
            when "10"   => saida <= c;
            when others => saida <= d;
        end case;
    end process;
end rtl;