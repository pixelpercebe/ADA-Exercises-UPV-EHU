WITH Persona, Vector_Personas; USE Persona, Vector_Personas;

PACKAGE Lista_Personas IS
   Max: constant Natural:= 18;

   TYPE T_Lista_Personas IS RECORD
      Lista: T_Vector_Personas(1..Max);
      Cont: Natural RANGE 0..Max;
   END RECORD;


   Procedure Cargar_Personas (S: String; L: out T_Lista_Personas);
   -- entrada: Secuencia de Personas (Fichero S)
   -- pre: Cada valor correspondiente a cada persona est� en una l�nea. S es nombre de fichero que
   --   como mucho hay tantas personas como la capacidad de de L.
   -- post: devuelve una lista con las personas de S.


   PROCEDURE Escribir_Personas (L : T_Lista_Personas);
   -- salida Secuencia de Personas S (SE)
   -- pos: S est� formada por las personas de L.

END Lista_Personas;
