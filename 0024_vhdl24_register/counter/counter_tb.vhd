-- Curso de VHDL #24
-- Testbench para counter.vhd
-- Autor: Felipe W. D. Pfrimer
-- Data: 07/08/2019

library ieee;
use ieee.std_logic_1164.all;

entity counter_tb is
    constant    n   :   integer := 4; -- quantidade de bits do contador (DUT)
end counter_tb;

architecture sim of counter_tb is

    signal clk  :   std_logic   := '0';
    signal rst  :   std_logic   := '0';
    signal q    :   std_logic_vector(n - 1 downto 0) := (others => '0');

begin

    DUT :   entity work.counter generic map(n) port map(clk, rst, q);

    clock : process
    begin
        wait for 50 ns; -- clock de 10 MHz
        clk <= not clk;
    end process ; -- clock

    reset : process
    begin
        rst <= '0';
        wait for 120 ns;

        rst <= '1';
        wait for 120 ns;

        rst <= '0';
        wait;

    end process ; -- reset

end sim ; -- sim