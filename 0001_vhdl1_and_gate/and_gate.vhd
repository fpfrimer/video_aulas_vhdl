entity and_gate is
  port (
    a, b    :   in  bit;
    z       :   out bit
  ) ;
end and_gate ;

architecture logic of and_gate is
begin

    z <= a and b;

end architecture ; -- logic