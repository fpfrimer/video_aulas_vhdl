-- Curso de VHDL #24
-- Contador genérico
-- Autor: Felipe W. D. Pfrimer
-- Data: 07/08/2019

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is
    generic(n   :   integer := 4);  -- Indica a quantidade de bits do contador
    port (
      clk, rst    : in    std_logic;
      q           : out   std_logic_vector(n - 1 downto 0)
    ) ;
end counter;

architecture rtl of counter is

    signal q_temp :  unsigned(n - 1 downto 0);

begin

    contagem : process( clk, rst )
    begin
        -- reset asíncrono
        if rst = '1' then
            q_temp <= (others => '0');
        elsif falling_edge(clk) then
            q_temp <= q_temp + 1;
        end if ;
    end process ; -- contagem

    q   <= std_logic_vector(q_temp);

end rtl ; -- rtl