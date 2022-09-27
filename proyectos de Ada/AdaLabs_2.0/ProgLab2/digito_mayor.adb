with ada.text_IO,ada.integer_text_IO;
use ada.text_IO,ada.integer_text_IO;

procedure digito_mayor is
--especificacion
--entrada: 
--pre:
--post:
--salida:

num,div,act,prev: integer;
cont,mayor: integer := 0;
pos: integer:= 1;
  
begin
put("introduce un numero: ");
get(num);

div := num;

while div > 0 loop
  div := div / 10;
  act := num - div * 10;
  num := div;
  if (act > prev) then
    mayor := act;
    pos:= cont;
  end if;
  prev := act;
  cont := cont + 1;
end loop;

put("El mayor digito en el numero es:"& integer'image(mayor) & " y se encuentra en la posicion:" & integer'image(pos));

end digito_mayor;