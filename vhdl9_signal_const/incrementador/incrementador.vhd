-- Curso de VHDL #9
-- Exemplo de utilização de constantes
-- Autor: Felipe W. D. Pfrimer
-- Data: 10/06/2019

entity incrementador is
  port (
    data_in :   in  integer;
    data_out:   out integer
  ) ;
end incrementador;

architecture main of incrementador is

    constant    valor   :   integer := 3; 

begin

    data_out <= data_in + valor;

end main ; -- main