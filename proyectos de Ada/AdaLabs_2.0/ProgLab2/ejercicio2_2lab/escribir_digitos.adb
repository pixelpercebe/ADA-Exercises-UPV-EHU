with ada.text_IO, ada.integer_text_IO;
use ada.text_IO,ada.integer_text_IO;

procedure escribir_digitos is

--especificacion
--

num,div,aux: integer;
cont :integer := 0;
  
begin
put("introduce un numero: ");
get(num);

div := num;

while div > 0 loop
  div := div / 10;
  aux := div * 10;
  aux := num - aux;
  num := div;
  put (aux,0);
  cont := cont + 1;
end loop;
put("  numero de digitos = " & integer'image(cont));

end escribir_digitos;