-- Curso de VHDL #18
-- Contador de 4 bits em VHDL
-- Autor: Felipe W. D. Pfrimer
-- Data: 24/07/2019

library ieee;
use ieee.std_logic_1164.all;

entity counter is
    port (
      clk, rst    :   in    std_logic;
      q           :   out   std_logic_vector(3 downto 0)
    ) ;
end counter;

architecture top of counter is

    signal x, q_temp    :   std_logic_vector(3 downto 0);

begin

    q <= q_temp;

    -- Somador
    U1: entity  work.carry_ripple_4bit_adder(main)
        port map(
            A           =>  q_temp,
            B           =>  x"1",
            CARRY_IN    =>  '0',
            S           =>  X,
            CARRY_OUT   =>  open
        );

    U2: entity  work.reg(behavioral)
        generic map(4)  -- Generec map posicional para registrador de 4 bits
        port map(
            clk => clk,
            rst => rst,
            data    =>  x,
            q   =>  q_temp
        );
end top ; -- top