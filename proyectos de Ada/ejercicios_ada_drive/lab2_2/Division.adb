WITH Ada.Integer_Text_IO,Ada.Text_IO;
USE Ada.Integer_Text_IO,Ada.Text_IO;

PROCEDURE Division IS
   --Especificacion
   --ENTRADA: Dos numeros enteros, Divisor, Dividendo (EE)
   --SALIDA:Dos enteros, resto y cociente (SE)
   --POST:El cociente sera el numero de restas hasta que el resultado sea menor que el divisor, el resto sera el resultado de la ultima resta.

   Divisor,
   Dividendo,
   Cociente,
   Resto,
   Divisorabs : Integer;
BEGIN
   Put("Que dos numeros quieres dividir?: ");
   Get (Dividendo);
   Put (Integer'Image(Dividendo) & " / ");
   Get(Divisor);
   Resto := ABS(Dividendo);
   Cociente := 0;
   Divisorabs := ABS(Divisor);

   LOOP
      EXIT WHEN (Resto < Divisorabs) OR (Divisor = 0) OR (Dividendo = 0);
      Cociente := Cociente + 1;
      Resto := Resto - Divisorabs;
   END LOOP;

   IF (Dividendo < 0 and Divisor < 0) or (dividendo > 0 and Divisor > 0)THEN
      Put_Line("El resto es: " & Integer'Image(Resto));
      Put("el cociente: " & Integer'Image(Cociente));
   ELSIF (Dividendo < 0 OR Divisor < 0) THEN
      Put_Line("El resto es: " & Integer'Image(Resto));
      Put("el cociente: " & Integer'Image(-Cociente));
   ELSIF (Dividendo = 0) THEN
      Resto := 0;
      Cociente := 0;
      Put_Line("El resto es: " & Integer'Image(Resto));
      Put("el cociente: " & Integer'Image(Cociente));
   ELSE
      Put("indeterminacion");

   END IF;
END Division;

--CASOS DE PRUEBA
--CASO1:0/0 SALIDA: resto=0 cociente=0
--CASO2:0/5 SALIDA: resto=0 cociente=0
--CASO3:7/0 SALIDA: indeterminacion
--CASO4:18/3 SALIDA: resto=0  cociente=6
--CASO5:554/28 SALIDA: resto=22 cociente=19
--CASO6:6/18 SALIDA: resto:6 cociente=0  