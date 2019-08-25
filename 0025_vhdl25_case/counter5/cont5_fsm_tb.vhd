-- Curso de VHDL #25
-- Testbench para cont5_fsm.vhd
-- Autor: Felipe W. D. Pfrimer
-- Data: 09/08/2019

library ieee;
use ieee.std_logic_1164.all;

entity cont5_fsm_tb is
end cont5_fsm_tb;

architecture test of cont5_fsm_tb is

    signal clk, rst, x  :   std_logic := '0';
    signal q		    :   std_logic_vector(2 downto 0);

begin

    dut:    entity work.cont5_fsm(main) port map(clk,rst,x,q);

    clk <= not clk after 20 ns;

    rst <= '1' after 30 ns, '0' after 130 ns;

    x <= '1' after 500 ns;

end test ; -- test