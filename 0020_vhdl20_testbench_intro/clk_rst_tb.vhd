-- Curso de VHDL #20
-- Geração de sinais de Clock e Reset em testbenches
-- Autor: Felipe W. D. Pfrimer
-- Data: 31/07/2019

entity clk_rst_tb is
end entity;

architecture sim of clk_rst_tb is

    signal clk  :   bit := '0';
    signal rst  :   bit;

begin

    clk <=  not clk after 100 ns;
    rst <=  '0', 
            '1' after 120 ns, 
            '0' after 240 ns;

end sim ; -- sim