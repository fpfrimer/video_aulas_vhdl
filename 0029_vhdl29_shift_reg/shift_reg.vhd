-- Curso de VHDL #29
-- Exemplo de registrador de deslocamento 
-- Autor: Felipe W. D. Pfrimer
-- Data: 07/10/2019

library ieee;
use ieee.std_logic_1164.all;

entity shift_reg is
	
	port(
		d	:	in		std_logic;
		clk:	in		std_logic;
		rst:	in		std_logic;
		led:	out	std_logic_vector(9 downto 0)
	);
	
end entity;

architecture main of shift_reg is

begin

	process(d, clk, rst)
		variable aux	:	std_logic_vector(9 downto 0) := (others => '0');
	begin
	
		if rst = '1' then
			aux := (others => '0');
		elsif falling_edge(clk) then
			aux(8 downto 0) := aux(9 downto 1);
			aux(9) := d;
		end if;
		led <= aux;
	end process;

end architecture;