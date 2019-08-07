-- reg_std.vhd
-- ----------------------------------------------------
-- Generic parallel register
-- ----------------------------------------------------
-- (c) Black Mesa / Gordon Freeman - halflife.com
-- Novenber 8, 1998

-- Código quase idêntico ao da aula 18, onde foi alterado apenas
-- o nome da entidade

library ieee;
use ieee.std_logic_1164.all;

entity reg_std is
	generic(
		n	:	integer := 8								-- Data width
	);
	port(
		clk		:	in	std_logic;							-- Clock signal
		rst		:	in	std_logic;							-- Reset signal
		data	:	in	std_logic_vector(n - 1 downto 0);	-- input data
		q		:	out	std_logic_vector(n - 1 downto 0) 	-- output data
	);
end reg_std;

architecture behavioral of reg_std is
begin
	
	process(rst, clk, data)
	begin
		
		-- Reset if rst = 0
		if rst = '0' then
			q <= (others => '0');
		elsif rising_edge(clk) then -- register data on rising edge of clk
			q <= data;
		end if;
		
	end process;
	
end behavioral; 