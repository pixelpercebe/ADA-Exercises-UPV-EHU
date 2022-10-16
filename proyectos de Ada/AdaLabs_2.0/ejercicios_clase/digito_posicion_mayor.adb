with ada.integer_text_IO, ada.text_IO;
use ada.integer_text_IO,ada.text_IO;

procedure digito_posicion_mayor (N: in integer; cont2, dig_mayor: out integer) is

  div : integer;
  cont1,aux,resto: integer := 0;

begin

div := N;


while div /= 0 loop
  resto := div mod 10; 
  div := div/10;
  cont1 := cont1 + 1;

  if resto > aux then
    dig_mayor := resto;
    cont2 := cont1;
    aux := resto;
  end if;
  
end loop;

end digito_posicion_mayor;