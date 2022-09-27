WITH Ada.Integer_Text_IO, Ada.Text_IO;
use Ada.Integer_Text_IO, Ada.Text_IO;

PROCEDURE Que_Hago IS
-- entrada: Un numero natural (EE)
-- pre: Un numero reprensente una cantidad de segundos.

-- salida: 3 naturales, horas, minutos y segundos (SE)
-- post:

-- declaraci�n de variables
segundos, horas, minutos, segundos_resultado : Natural;
CTE: CONSTANT Natural:= 60;

BEGIN
   -- Lee el dato
   Put("dame una cantidad de segundos: ");
   Get(segundos);
   Put(segundos, 0);
   put(" son ");

   -- Trata el dato
   segundos_resultado:= segundos mod CTE;
   segundos:= segundos / CTE;
   minutos:= segundos mod CTE;
   horas:= (segundos / CTE) mod CTE;

      -- Escribe resultado
   Put("(horas: ");
   Put(horas, 3);
   Put(", minutos: ");
   Put(minutos, 2);
   Put(", segundos: ");
   Put(segundos_resultado, 2);

   Put_Line(")");
END Que_Hago;
