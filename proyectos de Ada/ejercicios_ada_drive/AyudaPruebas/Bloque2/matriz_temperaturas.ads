
PACKAGE Matriz_Temperaturas IS
   TYPE T_Dias_Semana IS
         (Lunes,
          Martes,
          Miercoles,
          Jueves,
          Viernes,
          Sabado,
          Domingo);

   TYPE T_Matriz_Temperaturas IS ARRAY (T_Dias_Semana RANGE <>, Integer RANGE <>) OF Integer;
   TYPE T_Vector_Temperaturas IS ARRAY (T_Dias_Semana) OF Float;


   PROCEDURE Cargar_Temperaturas (
         M :    OUT T_Matriz_Temperaturas);
   -- entrada: Secuencia de Float, S (fichero temp.txt)
   -- pre: Hay en temp.txt al menos tantos números como V’legth(1)*V’lengt(2)
   -- post: devuelve en M las temperaturas de S.


   PROCEDURE Escribir_Temperaturas (
         M : T_Matriz_Temperaturas);
   --salida: Secuencia de Integer (SE)
   --pos: se esciben los valores de las matriz en M'Length(1) Filas x M'Length(2) columnas

END Matriz_Temperaturas;