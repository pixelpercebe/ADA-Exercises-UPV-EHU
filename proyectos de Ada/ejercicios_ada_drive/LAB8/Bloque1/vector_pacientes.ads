WITH Lista_Sintomas;
USE Lista_Sintomas;

Package Vector_Pacientes IS
   TYPE T_Paciente IS
      RECORD
         --por simplificar pondremos solo dos campos
         Nombre   : String (1 .. 25); -- nombre paciente
         Sintomas : T_Lista_Sintomas; --sus s�ntomas
      END RECORD;

   TYPE T_Vector_Pacientes IS ARRAY (1 .. 4) OF T_Paciente;

    PROCEDURE Escribir_Pacientes (
       VP : T_Vector_Pacientes);
       -- salida: un String, y una secuencia de s�ntomas (SE)
       -- pos: Escribe el nombre del paciente en una l�nea y luego los s�ntomas que tiene.

END Vector_Pacientes;



