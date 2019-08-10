-- Curso de VHDL #25
-- Testbench para mux_case.vhd
-- Autor: Felipe W. D. Pfrimer
-- Data: 09/08/2019

library ieee;
use ieee.std_logic_1164.all;

entity mux_case_tb is
end entity;

architecture sim of mux_case_tb is

    signal sel     : std_logic_vector(0 to 1) := "00";
    signal a,b,c,d : std_logic := '0';
    signal saida   : std_logic;

begin

    -- Entidade a ser testada: mux_case.vhd
    DUT:    entity work.mux_case(rtl) port map(sel, a, b, c, d, saida);

    -- Sinal a
    a_gen : process
    begin
        wait for 10 ns;
        a <= not a;
    end process ; -- a_gen

    -- Sinal b
    b_gen : process
    begin
        wait for 20 ns;
        b <= not b;
    end process ; -- b_gen
    
    -- Sinal c
    c_gen : process
    begin
        wait for 40 ns;
        c <= not c;
    end process ; -- c_gen

    -- Sinal d
    d_gen : process
    begin
        wait for 80 ns;
        d <= not d;
    end process ; -- d_gen
    
    -- Circula pelos quatro valores possíveis de sel
    sel_process : process
    begin
        sel <= "00";
        wait for 1 us;

        sel <= "01";
        wait for 1 us;

        sel <= "10";
        wait for 1 us;

        sel <= "11";
        wait;
    end process ; -- sel_process

end sim ; -- sim