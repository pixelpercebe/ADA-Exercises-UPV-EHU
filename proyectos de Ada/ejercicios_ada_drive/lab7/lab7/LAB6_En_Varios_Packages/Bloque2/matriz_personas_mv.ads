WITH Vector_Personas; USE Vector_Personas;

PACKAGE Matriz_Personas_MV IS

   TYPE T_Matriz_Personas_MV IS ARRAY (Integer RANGE <>) OF T_Vector_Personas(1..5);

   Procedure Cargar_Personas_MV (S: String; M: out T_Matriz_Personas_MV);
   -- entrada: Secuencia de Personas (Fichero S)
   -- pre: Cada valor correspondiente a cada persona est� en una l�nea. S es nombre de fichero
   -- post: devuelve un vector del tama�o del n�mero de personas de S.


   PROCEDURE Escribir_Personas (M : T_Matriz_Personas_MV);
   -- salida Secuencia de Personas S (SE)
   -- pos: S est� formada por las personas de V. Toda la informaci�n de la persona en una l�nea.

END Matriz_Personas_MV;
