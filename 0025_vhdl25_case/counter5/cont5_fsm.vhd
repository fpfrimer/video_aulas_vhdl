-- Curso de VHDL #25
-- Exemplo de uma máquina de estados - contador 
-- crescente e decrescente de módulo 5
-- Autor: Felipe W. D. Pfrimer
-- Data: 09/08/2019

library ieee;
use ieee.std_logic_1164.all;

entity cont5_fsm is
	port(
		clk, rst		:		in		std_logic;
		x				:		in		std_logic;	-- 1 contagem crescente
		q				:		out	std_logic_vector(2 downto 0)
	);
end entity;

architecture main of cont5_fsm is

	type estado_t is (s0, s1, s2, s3, s4);
	signal	s_atual, s_futuro	:	estado_t;	

begin

	atualiza_estado: process(clk, rst, s_futuro)
	begin
		if rst = '1' then
			s_atual <= s0;
		elsif rising_edge(clk) then
			s_atual <= s_futuro;
		end if;
	end process;
	
	comb:	process(s_atual, x)
	begin
		case s_atual is
			when s0 =>
				q <= "000";
				if x = '1' then	s_futuro <= s1;
				else			s_futuro <= s4;
				end if;
			when s1 =>
				q <= "001";
				if x = '1' then	s_futuro <= s2;
				else			s_futuro <= s0;
				end if;
			when s2 =>
				q <= "010";
				if x = '1' then	s_futuro <= s3;
				else			s_futuro <= s1;
				end if;
			when s3 =>
				q <= "011";
				if x = '1' then	s_futuro <= s4;
				else			s_futuro <= s2;
				end if;
			when s4 =>
				q <= "100";
				if x = '1' then	s_futuro <= s0;
				else			s_futuro <= s3;
				end if;
		end case;
	end process;

end architecture;