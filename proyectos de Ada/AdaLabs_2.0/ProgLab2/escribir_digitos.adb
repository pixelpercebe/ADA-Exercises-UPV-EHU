with ada.text_IO, ada.integer_text_IO;
use ada.text_IO,ada.integer_text_IO;

procedure escribir_digitos is
--especificacion
--entrada: Un numero positivo, num (EE)
--post:Se recorrera el numero de derecha a uzquierda para separar sus digitos.
--salida: una secuencia con los digitos de num, "dig". un numero natural que representa su posicion en num, "pos". (SE)



num,div,dig: integer;
cont :integer := 0;
  
begin
put("introduce un numero: ");
get(num);

div := num;

while div > 0 loop
  dig := div mod 10;
  div := div / 10;
  put (dig,0);
  cont := cont + 1;
end loop;
put("  numero de digitos =" & integer'image(cont));

end escribir_digitos;

--CASOS DE PRUEBA:
--Caso1, minimo de ciclos (1ciclo): 5 ---> 5 numero de digitos = 1
--caso2, pocos ciclos (2 ciclos): 25 ---> 52 numero de digitos = 2
--caso3, varios ciclos (3 ciclos): 1780 ---> 0871  numero de digitos = 4
--caso4, muchos ciclos (7 ciclos): 1876523 ---> 3256781  numero de digitos = 7 