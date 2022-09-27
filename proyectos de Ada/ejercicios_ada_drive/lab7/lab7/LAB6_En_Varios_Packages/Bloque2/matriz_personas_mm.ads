WITH Persona; USE Persona;

PACKAGE Matriz_Personas_MM IS

   TYPE T_Matriz_Personas_MM IS ARRAY (Integer RANGE <>, Integer Range <>) OF T_Persona;

   Procedure Cargar_Personas_MM (S: String; M: out T_Matriz_Personas_MM);
   -- entrada: Secuencia de Personas (Fichero S)
   -- pre: Cada valor correspondiente a cada persona está en una línea. S es nombre de fichero
   -- post: devuelve un vector del tamaño del número de personas de S.


   PROCEDURE Escribir_Personas (M : T_Matriz_Personas_MM);
   -- salida Secuencia de Personas S (SE)
   -- pos: S está formada por las personas de V. Toda la información de la persona en una línea.

END Matriz_Personas_MM;
