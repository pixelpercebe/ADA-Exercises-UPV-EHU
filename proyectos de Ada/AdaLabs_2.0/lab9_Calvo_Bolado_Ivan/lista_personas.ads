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


   Procedure Inserta_Persona(L: in out T_Lista_Personas; P: T_Persona);
   -- pre: L ordenado alfabéticamente por apellidos y nombre. L no llena.
   -- post: Se inserta ordenadamente P en L. Si la misma persona P ya está en
   -- L, no se actualiza L.

   --procedure Filtra_Edad(V: T_Vector_Personas; LMay, LMen: out T_Lista_Personas);
   -- pre: La longitud de V es menor o igual que la capacidad del tipo lista.
   -- V ordenado alfabéticamente por apellidos y nombre.
   -- post: LMay contiene las personas mayores de edad de V. LMen contiene las
   -- personas menores de edad de V. Las listas quedan también ordenadas.

END Lista_Personas;
