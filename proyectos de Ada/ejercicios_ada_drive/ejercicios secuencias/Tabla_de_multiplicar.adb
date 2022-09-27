WITH Ada.Text_IO,Ada.Integer_Text_IO;
USE Ada.Text_IO,Ada.Integer_Text_IO;

PROCEDURE Tabla_De_Multiplicar IS
   --Especificación
   --entrada: una secuencia de enteros.
   --pre:numeros entre 0  y 9

   Num : Integer;

BEGIN
   WHILE NOT End_Of_File LOOP
      Get(Num);
      IF Num < 10 THEN
         Put("tabla del" & Integer'Image(Num));
         New_Line;
         FOR N IN 0..10 LOOP
            Put(Integer'Image(N) & " X " & Integer'Image(Num) & " = " & Integer'Image(N*Num));
            New_Line;
         END LOOP;
      END IF;
   END LOOP;
END Tabla_De_Multiplicar;
