with ada.integer_text_IO, ada.text_IO;
use ada.integer_text_IO,ada.text_IO;

procedure digito_posicion_mayor is

 N, div : integer;
 dig_mayor,cont1,cont2,aux,resto: integer := 0;

begin

get(N);
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

put_line("RESULTADO: ");
put_line("posicion: ");
put(cont2, 0);
new_line;
put_line("digito mayor: ");
put(dig_mayor, 0);

end digito_posicion_mayor;