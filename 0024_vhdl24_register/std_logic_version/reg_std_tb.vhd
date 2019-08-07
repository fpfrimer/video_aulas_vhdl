library ieee;
use ieee.std_logic_1164.all;

entity reg_std_tb is
    constant n  :   integer := 1;
end entity;

architecture sim of reg_std_tb is

    signal clk      :   std_logic   := '0';
    signal rst      :   std_logic   := '1';
    signal data     :	std_logic_vector(n - 1 downto 0) := (others => '0');    
    signal q_async  :	std_logic_vector(n - 1 downto 0);

begin

    dut_async   : entity work.reg_std generic map(n) port map(clk, rst, data, q_async);

    clk_gen :  process
    begin
        wait for 50 ns;
        clk <= not clk;
    end process ;  
    
    rst <=  '1',
            '0'after 230 ns, 
            '1'after 270 ns;

    data <= (others => '0'),
            (others => '1') after 120 ns,
            (others => '0') after 170 ns,
            (others => '1') after 210 ns,
            (others => '0') after 340 ns;  

end sim ; -- sim