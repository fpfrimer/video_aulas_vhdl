-- Curso de VHDL #22
-- Comparador de magnitude com sinal
-- Autor: Felipe W. D. Pfrimer
-- Data: 01/08/2019

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity signed_comparator is
    generic(
        n       : integer:= 4 -- quantidade de bits dos dados
    );
    port (
        a       : in  std_logic_vector(n-1 downto 0);
        b       : in  std_logic_vector(n-1 downto 0);
        a_gt_b  : out std_logic
    );
end entity;

architecture rtl of signed_comparator is
begin
    p_signed_comparator : process(a,b)
    begin
        if(signed(a) > signed(b)) then
            a_gt_b   <= '1';
        else
            a_gt_b   <= '0';
        end if;
    end process p_signed_comparator;
end architecture rtl;