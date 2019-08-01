-- Curso de VHDL #21
-- Verificador de dígito BCD: verifica se o dígito é um BCD válido
-- Autor: Felipe W. D. Pfrimer
-- Data: 31/07/2019

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-----------------------------------------------------------------------------
entity bcd_checker is
    port (
        bcd         :   in  std_logic_vector(3 downto 0); -- Dígito BCD
        is_valid    :   out std_logic -- 0 para válido | 1 para inválido
    ) ;
end entity;
-----------------------------------------------------------------------------
architecture dataflow of bcd_checker is
    signal bcd_temp :   unsigned(3 downto 0);   -- Para permitir a comparação
begin

    bcd_temp <= unsigned(bcd);
    is_valid <= '1' when (bcd_temp > 9) else '0';

end architecture; -- dataflow