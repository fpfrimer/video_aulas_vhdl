-- Curso de VHDL #18
-- Meio somador em VHDL
-- Autor: Felipe W. D. Pfrimer
-- Data: 21/07/2019

library ieee;
use ieee.std_logic_1164.all;

entity half_adder is
    port (
        A, B    :   in  std_logic;
        SUM     :   out std_logic;
        CARRY   :   out std_logic
    ) ;
end half_adder;

--dataflow1---------------------------------------
architecture dataflow1 of half_adder is
begin
    SUM     <= A xor B;
    CARRY   <= A and B;
end dataflow1 ; -- dataflow1

--dataflow2---------------------------------------
architecture dataflow2 of half_adder is
    signal inputs : std_logic_vector(1 downto 0);
    signal outputs: std_logic_vector(1 downto 0);
begin
    inputs  <= A & B;
    with inputs select
        outputs   <=  "00" when "00",
                      "01" when "01",
                      "01" when "10",
                      "10" when others;
    SUM   <= outputs(0);
    CARRY <= outputs(1);
end dataflow2 ; -- dataflow


