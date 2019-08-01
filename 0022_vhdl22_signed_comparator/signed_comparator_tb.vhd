-- Curso de VHDL #22
-- Comparador de magnitude com sinal
-- Autor: Felipe W. D. Pfrimer
-- Data: 01/08/2019

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity signed_comparator_tb is
    constant n   :   integer := 4; -- Tamanho dos dados, quantidade de bits

    -- Constante que representa o menor valor com sinal
    constant most_negative  :   signed(n - 1 downto 0) := (n - 1 => '1', others => '0');

    -- Constante que representa o menor valor com sinal
    constant most_positive  :   signed(n - 1 downto 0) := (n - 1 => '0', others => '1');
end entity;

architecture sim of signed_comparator_tb is
    
    -- sinais inicializados com o menor valor possível:
    signal a, b     :   std_logic_vector(n-1 downto 0) := std_logic_vector(most_negative);
    
    signal a_gt_b   :   std_logic;    

begin

    -- Instanciação do DUT
    DUT :   entity work.signed_comparator(rtl)
        generic map (n)
        port    map (a, b, a_gt_b);

    
    inc : process is
        variable va, vb   :    signed(n-1 downto 0) := most_negative;   
    begin
        wait for 100 ns;
        va := va + 1;
        if va = most_negative then
            vb := vb + 1;        
        end if;

        a <= std_logic_vector(va);
        b <= std_logic_vector(vb);

        if vb = most_positive then 
            wait;
        end if;
    end process; -- inc

end sim ; -- sim