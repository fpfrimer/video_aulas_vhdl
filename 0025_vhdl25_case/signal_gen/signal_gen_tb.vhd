-- Curso de VHDL #25
-- Testbench para signal_gen.vhd
-- Autor: Felipe W. D. Pfrimer
-- Data: 09/08/2019

library ieee;
use ieee.std_logic_1164.all;

entity signal_gen_tb is
end signal_gen_tb;

architecture sim of signal_gen_tb is

    signal clk  :   std_logic := '0';
    signal rst  :   std_logic := '0';
    signal t    :   std_logic_vector(0 to 4);

    constant clockFrequency :   integer := 50e6;
    constant clockPeriod    :   time    := 1000 ms / clockFrequency;

begin

    DUT :   entity work.signal_gen(rtl) 
            generic map(clockFrequency, 50, 2_000)
            port    map(clk, rst, t);

    -- Geração de clock
    clk <= not clk after  clockPeriod / 2;

    -- Geração do reset
    rst <= '0';

    -- Medindo a largura do pulso
    process
        variable c_time   : time := 0 ns;
        variable d_time   : time := 0 ns;
    begin
        wait until rising_edge(t(0));
        c_time := now;

        wait until falling_edge(t(0));
        d_time := now - c_time;
        report "pulse duration = " & time'image(d_time);
        wait;        
    end process ; -- 

    -- Medindo a frequência do sinal
    process
        variable c_time   : time := 0 ns;
        variable d_time   : time := 0 ns;
        variable freq     : real;
    begin
        wait until rising_edge(t(0));
        c_time := now;

        wait until rising_edge(t(0));
        d_time := now - c_time;
        freq := 1.0e9 / real(d_time / 1 ns);
        report "Frequency = " & real'image(freq) & " Hz";
        wait;

    end process ; -- 

end sim ; -- sim