WITH Ada.Text_IO,Ada.Integer_Text_IO;
USE Ada.Text_IO,Ada.Integer_Text_IO;

PROCEDURE Tabla_Multiplicar IS

   Num : Integer;

BEGIN

   LOOP
      get(num);
      EXIT WHEN End_Of_File;
      Put("tabla del" & Integer'Image(Num));
      New_Line;
      FOR N IN 0..10 LOOP
         Put(Integer'Image(N) & " X " & Integer'Image(Num) & " = " & Integer'Image(N*Num));
         new_line;
      END LOOP;
   END LOOP;


END Tabla_Multiplicar;
