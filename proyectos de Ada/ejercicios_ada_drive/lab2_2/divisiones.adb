WITH Ada.Integer_Text_IO,Ada.Text_IO;
USE Ada.Integer_Text_IO,Ada.Text_IO;

PROCEDURE Divisiones IS
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

   IF (Dividendo < 0 XOR Divisor < 0) THEN
      Put_Line("El resto es: " & Integer'Image(Resto));
      Put("el cociente: " & Integer'Image(-Cociente));
   ELSE
      Put_Line("El resto es: " & Integer'Image(Resto));
      Put("el cociente: " & Integer'Image(cociente));
   END IF;
END Divisiones;