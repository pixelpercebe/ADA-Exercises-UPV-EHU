WITH Lista_Sintomas;
USE Lista_Sintomas;

PACKAGE Lista_Enfermedades IS
   TYPE T_Enfermedad IS
      RECORD
         Nombre   : String (1 .. 20);
         Sintomas : T_Lista_Sintomas;
      END RECORD;
   Max_Enfermedades : CONSTANT Integer := 100;
   TYPE T_Vector_Enfermedades IS ARRAY (1 .. Max_Enfermedades) OF T_Enfermedad;

   TYPE T_Lista_Enfermedades IS
      RECORD
         Enfermedades     : T_Vector_Enfermedades;
         Num_Enfermedades : Integer;
      END RECORD;


   PROCEDURE Escribir_Enfermedades (
      LE : T_Lista_Enfermedades);
      -- salida: Secuencia de Enfermedades (SE)
      -- post: Escribe información de cada una de las enfermedades incluidas en LE

--   PROCEDURE Actualiza_Enfermedad (
--         L : IN OUT T_Lista_Enfermedades;
--      E :        T_Enfermedad);
--      --- pre: L ordenada por nombre de enfermedad
--      --- post: Actualiza la lista L insertando ordenadamente la enfermedad E,
--      --      si es que no está an la lista. Si E está en la lista entonces actualiza
--      --      sólo los síntomas con los síntomas dados en E.


END Lista_Enfermedades;



