with ada.text_IO,ada.integer_text_IO;
use ada.text_IO,ada.integer_text_IO;

procedure digito_mayor is
--especificacion
--entrada: Un nuero natural, num (EE)
--pre: el numero no tendra digitos repetidos.
--post: El numero sera recorrido de derecha a izquierda y sus posiciones tambien. si tiene digitos repetidos el primero sera el mayor.
--salida: dos numeros naturales, mayor y pos (SE)

num,div,act: integer;
cont,mayor,prev: integer := 0;
pos: integer:= 1;
  
begin
put("introduce un numero: ");
get(num);

div := num;
while div > 0 loop
  div := div / 10;
  act := num - div * 10;
  num := div;
  cont := cont + 1;
  if (act > prev) then
    mayor := act;
    pos := cont;
  end if;
  prev := act;
end loop;

put("El mayor digito en el numero es:"& integer'image(mayor) & " y se encuentra en la posicion:" & integer'image(pos));

end digito_mayor;

--CASOS DE PRUEBA:
--Caso1, minimo de ciclos (1ciclo): 5 ---> 5 y se encuentra en la posicion: 1
--caso2, pocos ciclos (2 ciclos): 52 ---> 5 y se encuentra en la posicion: 1
--caso3, varios ciclos (3 ciclos): 1920 ---> 9 y se encuentra en la posicion: 3
--caso4, muchos ciclos (6 ciclos): 8876523 --->  8 y se encuentra en la posicion: 6