-- Curso de VHDL #28
-- Contador de zeros à esquerda 
-- Autor: Felipe W. D. Pfrimer
-- Data: 09/08/2019

library ieee;
use ieee.std_logic_1164.all;

entity leading_zeros is
    port (
        data    :   in  std_logic_vector(9 downto 0);
        zeros   :   out integer range 0 to 10
    ) ;
end entity;

architecture behavior of leading_zeros is
begin

    process(data)
        variable count :    integer range 0 to 10;    
    begin
        count := 0;
        for i in data'range loop
            case data(i) is            
                when '0' => count := count + 1;
                when others => exit;            
            end case ;
        end loop ;
        zeros <= count;
    end process ;

end architecture ; -- behavior