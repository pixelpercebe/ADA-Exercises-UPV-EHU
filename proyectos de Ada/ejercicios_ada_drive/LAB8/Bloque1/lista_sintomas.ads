WITH Sintoma;
USE Sintoma;

Package Lista_Sintomas IS
   Max_Sintomas : CONSTANT Integer := 10;

   TYPE T_Vector_Sintomas IS ARRAY (1 .. Max_Sintomas) OF T_Sintoma;
   TYPE T_Lista_Sintomas IS
      RECORD
         Sintomas     : T_Vector_Sintomas;
         Num_Sintomas : Integer;
      END RECORD;

   PROCEDURE Escribir_Sintomas (
      S : T_Lista_Sintomas);
      -- salida: secuencia de sintomas (SE)
      -- post: escribe los síntomas de la lista S
END Lista_Sintomas;



