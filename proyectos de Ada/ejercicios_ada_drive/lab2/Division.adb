With Ada.Integer_Text_IO,Ada.text_IO;
use ada.integer_text_IO,ada.text_IO;

procedure division is
--Especificacion
--ENTRADA: Dos numeros enteros, Divisor, Dividendo (EE)
--SALIDA:Dos enteros, resto y cociente (SE)
--POST:El cociente sera el numero de restas hasta que el resultado sea menor que el divisor, el resto sera el resultado de la ultima resta.

divisor,dividendo,cociente,resto,cont,divisorabs : integer;
begin
put("Que dos numeros quieres dividir?: ");
Get (dividendo);
Put (integer'image(dividendo) & " / ");
get(divisor);
resto := abs(dividendo);
cociente := 0;
divisorabs := abs(divisor);

loop
  exit when (resto < divisorabs) or (divisor = 0) or (dividendo = 0);
  cociente := cociente + 1;
  resto := resto - divisorabs;
end loop;

if (dividendo > 0 and divisor > 0) or (dividendo < 0 and divisor < 0) then
    Put_Line("El resto es: " & Integer'image(resto));
    put("el cociente: " & integer'image(cociente));
  elsif (dividendo < 0 or divisor < 0) then
    Put_Line("El resto es: " & Integer'image(resto));
    put("el cociente: " & integer'image(-cociente));
  elsif (dividendo = 0) then
    resto := 0;
    cociente := 0;
    Put_Line("El resto es: " & Integer'image(resto));
    put("el cociente: " & integer'image(cociente));
  else
    put("indeterminacion");

end if;
end division;
--CASOS DE PRUEBA
--CASO1:0/0 SALIDA: resto=0 cociente=0
--CASO2:0/5 SALIDA: resto=0 cociente=0
--CASO3:7/0 SALIDA: indeterminacion
--CASO4:18/3 SALIDA: resto=0  cociente=6 
--CASO5:554/28 SALIDA: resto=22 cociente=19
--CASO6:6/18 SALIDA: resto:6 cociente=0