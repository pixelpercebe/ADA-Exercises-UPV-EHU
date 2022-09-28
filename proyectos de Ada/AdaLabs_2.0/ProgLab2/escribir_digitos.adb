with ada.text_IO, ada.integer_text_IO;
use ada.text_IO,ada.integer_text_IO;

procedure escribir_digitos is
--especificacion
--entrada: Un numero natural, num (EE)
--post:Se recorrera el numero de derecha a uzquierda para separar sus digitos.
--salida: una secuencia con los digitos de num, "dig". un numero natural que representa su posicion en num, "pos". (SE)



num,div,dig: integer;
cont :integer := 0;
  
begin
put("introduce un numero: ");
get(num);

div := num;

while div > 0 loop
  div := div / 10;
  dig := div * 10;
  dig := num - aux;
  num := div;
  put (dig,0);
  cont := cont + 1;
end loop;
put("  numero de digitos = " & integer'image(cont));

end escribir_digitos;