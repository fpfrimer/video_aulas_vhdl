-- Curso de VHDL #18
-- Somador completo em VHDL
-- Autor: Felipe W. D. Pfrimer
-- Data: 21/07/2019

library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
  port (
    A, B    :   in  std_logic;
    CARRY_IN:   in  std_logic;
    SUM     :   out std_logic;
    CARRY   :   out std_logic
  ) ;
end full_adder;

--rtl1---------------------------------------------
architecture rtl1 of full_adder is
    -- Sinais internos
    signal x, y, z  :   std_logic;
begin

    CARRY <= z or y;

    -- Instanciação nominal
    ha1: entity work.half_adder(dataflow1)
        port map(
            A       =>  A,
            B       =>  B,
            SUM     =>  x,
            CARRY   =>  y
        );
    
    -- Instanciação posicional
    ha2: entity work.half_adder(dataflow2)
        port map(x, CARRY_IN, SUM, Z);

end rtl1 ; -- rtl1

--rtl2---------------------------------------------
architecture rtl2 of full_adder is
    signal inputs : std_logic_vector(2 downto 0);
    signal outputs: std_logic_vector(1 downto 0);
begin

    inputs(2) <= A;
    inputs(1) <= B;
    inputs(0) <= CARRY_IN;
    with inputs select
        outputs <=  "00" when "000",
                    "01" when "001",
                    "01" when "010",
                    "10" when "011",
                    "01" when "100",
                    "10" when "101",
                    "10" when "110",
                    "11" when others;
    SUM <= outputs(0);
    CARRY <= outputs(1);  

end rtl2 ; -- rtl2