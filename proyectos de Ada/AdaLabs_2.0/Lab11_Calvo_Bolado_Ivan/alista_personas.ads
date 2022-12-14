WITH Persona;
USE Persona;

PACKAGE ALista_Personas IS
   TYPE T_Nodo;
   TYPE A_Personas IS ACCESS T_Nodo;
   TYPE T_Nodo IS
      RECORD
         Persona : T_Persona;
         Sig     : A_Personas;
      END RECORD;

   PROCEDURE Cargar_Personas (
         S :        String;
         L :    OUT A_Personas);
   -- entrada: Secuencia de Personas P(Fichero S)
   -- pre: Cada valor correspondiente a cada persona está en una línea. S es nombre de fichero que
   --   como mucho hay tantas personas como la capacidad de de L.
   -- post: devuelve una lista con las personas de P que están en S.


   PROCEDURE Escribir_Personas (
         L : A_Personas);
   -- salida Secuencia de Personas S (SE)
   -- pos: S está formada por las personas de L.
END ALista_Personas;
