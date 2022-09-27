With Ada.Integer_Text_IO,Ada.text_IO;
use ada.integer_text_IO,ada.text_IO;

procedure division is
--Especificacion
--ENTRADA: Dos numeros enteros, Divisor, Dividendo (EE)
--PRE: (0<=dividendo<=100) y (0<divisor<=10)
--SALIDA:Dos enteros, resto y cociente (SE)
--POST:El cociente sera el numero de restas hasta que el resultado sea menor que el divisor, el resto sera el resultado de la ultima resta.

divisor,dividendo,cociente,resto,cont,divisorabs : integer;

begin

put("Que dos numeros naturales quieres dividir?: ");
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

IF (Dividendo < 0 XOR Divisor < 0) THEN
  Put_Line("El resto es: " & Integer'Image(Resto));
  Put("el cociente: " & Integer'Image(-Cociente));
ELSE
  Put_Line("El resto es: " & Integer'Image(Resto));
  Put("el cociente: " & Integer'Image(cociente));
END IF;
end division;

--CASOS DE PRUEBA
--CASO1:0/10 SALIDA: resto=0 cociente=0
--CASO2:100/1 SALIDA: resto=0 cociente=100
--CASO4:18/3 SALIDA: resto=0  cociente=6 
--CASO5:79/3 SALIDA: resto=1  cociente=26
--CASO6:100/10 SALIDA: resto=0 cociente=10