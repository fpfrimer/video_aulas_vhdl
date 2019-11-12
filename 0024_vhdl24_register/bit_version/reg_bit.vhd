-- reg_bit.vhd
-- ----------------------------------------------------
-- Generic parallel register
-- ----------------------------------------------------
-- (c) Black Mesa / Gordon Freeman - halflife.com
-- Novenber 8, 1998

-- Código semelhante ao da aula 18, onde foi utilizado o tipo bit no
-- lugar de std_logic

entity reg_bit is
	generic(
		n	:	integer := 8						-- Data width
	);
	port(
		clk		:	in	bit;						-- Clock signal
		rst		:	in	bit;						-- Reset signal
		data	:	in	bit_vector(n - 1 downto 0);	-- input data
		q		:	out	bit_vector(n - 1 downto 0)	-- output data
	);
end reg_bit;

------------------------------------------------------------------------------------
architecture async of reg_bit is
begin
	
	process(rst, clk, data)
	begin
		
		-- Reset if rst = 0
		if rst = '0' then
			q <= (others => '0');
		elsif clk'event and clk = '1' then -- register data on rising edge of clk
			q <= data;
		end if;
		
	end process;
	
end architecture; 

------------------------------------------------------------------------------------
architecture sync of reg_bit is
	begin
		
		process(rst, clk, data)
		begin
					
			-- register data on rising edge of clk
			if clk'event and clk = '1' then 
				-- Reset if rst = 0
				if rst = '0' then
					q <= (others => '0');
				else 
					q <= data;
				end if;
			end if;
			
		end process;
		
end architecture; 
