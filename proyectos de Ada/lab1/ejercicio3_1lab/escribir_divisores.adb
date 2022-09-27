with ada.text_IO, ada.integer_text_IO;
use ada.text_IO, ada.integer_text_IO;
--ESPECIFICACION 1:
--ENTRADA: Un entero, num.
--PRECONDICIÓN: Los divisores seran menores que el numero de entrada.
--SALIDA: Una secuencia de divisores.
--POSTCONDICION: divisores sera la secuencia de numeros divisores de "num".
procedure escribir_divisores is
num,sum,cont: integer;
Begin
sum := 0;
cont := 0;
Put("Introduce un numero: ");
Get(num);
Put_Line("Estos son todos los divisores menores que el mismo: ");
  for divisores in 1..num-1 loop
    if num rem divisores = 0 then
      put(divisores);
      sum := sum + divisores;
      cont := cont + 1;
    end if;
  end loop;
New_Line;
Put_line("La suma de los divisores es: " & Integer'Image(sum));
Put_Line("En total hay " & integer'image(cont) & " divisores");

end escribir_divisores;

--CASOS DE PRUEBA:
--CASO1: ENTRADA:2    ESCRIBIR: 1 SUMAR: 1 CONTAR: 1
--CASO2: ENTRADA:3    ESCRIBIR: 1 SUMAR: 1 CONTAR: 1
--CASO3: ENTRADA:257  ESCRIBIR: 1 SUMAR: 1 CONTAR: 1
--CASO4: ENTRADA:4    ESCRIBIR: 1,2 SUMAR: 3 CONTAR: 2
--CASO5: ENTRADA:93   ESCRIBIR: 1,3,31 SUMAR: 35 CONTAR: 3
--CASO6: ENTRADA:3624 ESCRIBIR: 1,2,3,4,6,8,12,24,151,302,453,604,906,1208,1812 SUMAR: 5496 CONTAR: 15