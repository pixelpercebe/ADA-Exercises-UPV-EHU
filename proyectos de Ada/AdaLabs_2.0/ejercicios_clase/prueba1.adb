with ada.integer_text_IO, ada.text_IO;
use ada.integer_text_IO, ada.text_IO;

procedure prueba1 is

O,J,N: integer;
suma : integer := 0;

begin

get(N);

get(O);

get(J);

if O <= j then
  for i in O..J loop
    suma := suma + (N/10**(i-1)) mod 10;
  end loop;
end if;
put(suma);
end prueba1;