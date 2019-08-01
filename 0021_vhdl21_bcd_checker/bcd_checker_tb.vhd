-- Curso de VHDL #21
-- Testbench para o bcd_checker
-- Autor: Felipe W. D. Pfrimer
-- Data: 31/07/2019

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bcd_checker_tb is
end entity;

architecture sim of bcd_checker_tb is
    signal x            :   unsigned(3 downto 0) := "0000";
    signal bcd_tb       :   std_logic_vector(3 downto 0);
    signal is_valid_tb  :   std_logic;
begin

    DUT:    entity work.bcd_checker(dataflow) port map(bcd_tb, is_valid_tb);

    inc : process is
    begin

        wait for 100 ns;
        x <= x + 1;
        
    end process ; -- inc

    bcd_tb <= std_logic_vector(x);

end architecture;