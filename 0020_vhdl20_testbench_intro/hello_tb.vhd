-- Curso de VHDL #20
-- Hello World em VHDL
-- Autor: Felipe W. D. Pfrimer
-- Data: 31/07/2019

-- Note a entidade vazia
entity hello_tb is
end entity;

architecture sim of hello_tb is
begin

    process is
    begin    
        report "Hello World!";
        wait;
    end process;

end sim ; -- sim