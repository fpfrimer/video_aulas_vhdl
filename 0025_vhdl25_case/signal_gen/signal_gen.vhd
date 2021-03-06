-- Curso de VHDL #25
-- Gerador de sinais de controle utilizando case
-- Autor: Felipe W. D. Pfrimer
-- Data: 09/08/2019

library ieee;
use ieee.std_logic_1164.all;

entity signal_gen is
    generic(
        f_clk   :   integer := 50_000_000;  -- frequência de entrada em Hz
        f_out   :   integer := 50;          -- frequência do sinal de saída em Hz
        p_width :   integer := 2_000        -- largura do pulso em us
    );
    port (
        clk     :   in  std_logic;                  
        rst     :   in  std_logic;
        t       :   out std_logic_vector(0 to 4)
    );
	 
	 -- indica o número de pulsos do clock do sistema por ciclo do sinal de saída:
    constant  cycle_pulses : integer  :=  1_000_000/(f_out*p_width);

    -- indica o número de pulsos do clock de entrada por ciclo do sinal de saída:
    constant  clk_pulses   : integer  :=  f_clk/(f_out*cycle_pulses);
end entity;

architecture rtl of signal_gen is

    -- clock do sistema:
    signal    system_clk   :  std_logic    := '0';

    -- contador do sistema:
    signal    counter      :  integer range 0 to cycle_pulses := 0;       

begin

    -- Gera o clock do sistema para as configurações dos genéricos
    clk_div : process
        variable    i   :   integer range 0 to clk_pulses/2 := 0;
    begin
        wait until rising_edge(clk);
            i := i + 1;
            if i = clk_pulses/2 then
                system_clk <= not system_clk;
                i := 0;
            end if;        
    end process ; -- clk_div

    counter_cycles : process(system_clk, rst)
    begin
		if rst = '1'then
				counter <= 0;
        elsif  rising_edge(system_clk) then
            counter <= counter + 1;
            if counter = cycle_pulses - 1 then
                counter <= 0;
            end if;
        end if;
        -- wait on system_clk, rst;       
    end process ; -- counter_cycles

    signal_generation : process(counter)
    begin
        t <= "00000";
        case( counter ) is
        
            when 0 =>
                t(0) <= '1';

            when 1*cycle_pulses/5 =>
                t(1) <= '1';
            
            when 2*cycle_pulses/5 =>
                t(2) <= '1';
            
            when 3*cycle_pulses/5 =>
                t(3) <= '1';
            
            when 4*cycle_pulses/5 =>
                t(4) <= '1';
        
            when others =>
                null;
        end case ;
        
    end process ; -- signal_generation

end architecture ; -- rtl