WITH Ada.Integer_Text_IO,Ada.Text_IO,Ada.Float_Text_IO;
USE Ada.Integer_Text_IO,Ada.Text_IO,Ada.Float_Text_IO;

PROCEDURE Calcular_Media IS

   --Especificacion
   --entrada: una secuencia de numeros enteros.
   --salida: un numero real.
   --pos: el numero real sera la media de los numeros de la secuencia.

   Cont,
   Num,
   Suma  : Integer;
   Media : Float;

BEGIN
   Suma := 0;
   Cont := 0;
   WHILE NOT End_Of_File LOOP
      Get(Num);
      Suma:= Suma+Num;
      Cont := Cont + 1;
   END LOOP;

   IF Cont /= 0 THEN
      Media := Float(Suma)/Float(Cont);
      Put(Media, 0,2,0);
   ELSE
      Media:= 0.00;
      Put(Media, 0,2,0);
   END IF;

END Calcular_Media;


--Casos de prueba
--entrada: 0 salida: 0.00
--entrada: 6 salida: 6.00
--entrada: 4 12 6 2 8 salida 6.40
