WITH Vector_Personas; USE Vector_Personas;

PACKAGE Lista_Personas IS

   TYPE T_Lista_Personas IS RECORD
      Lista: T_Vector_Personas(1..10);
      Cont: Integer RANGE 0..10;
   END RECORD;


   Procedure Cargar_Personas (S: String; L: out T_Lista_Personas);
   -- entrada: Secuencia de Personas (Fichero S)
   -- pre: Cada valor correspondiente a cada persona est� en una l�nea. S es nombre de fichero que
   --   como mucho hay tantas personas como la capacidad de de L.
   -- post: devuelve una lista con las personas de S.


   PROCEDURE Escribir_Personas (L : T_Lista_Personas);
   -- salida Secuencia de Personas S (SE)
   -- pos: S est� formada por las personas de V. Toda la informaci�n de la persona en una l�nea.

END Lista_Personas;
