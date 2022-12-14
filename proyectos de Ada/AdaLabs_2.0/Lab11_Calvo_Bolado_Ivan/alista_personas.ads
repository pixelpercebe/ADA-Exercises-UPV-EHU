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
   -- pre: Cada valor correspondiente a cada persona est� en una l�nea. S es nombre de fichero que
   --   como mucho hay tantas personas como la capacidad de de L.
   -- post: devuelve una lista con las personas de P que est�n en S.


   PROCEDURE Escribir_Personas (
         L : A_Personas);
   -- salida Secuencia de Personas S (SE)
   -- pos: S est� formada por las personas de L.

   procedure Pos_Persona(L: in A_Personas; P: T_Nombre; Ant, Act: out A_Personas);
   -- pre: L ordenado alfabéticamente por apellidos y nombre.
   -- post: devuelve los apuntadores Ant y Act para insertar/localicar a P.
   -- Ant apunta al elemento justo anterior de donde debiera estar esa
   -- persona P en L, Act apunta a la misma persona P, o si Ant=Act
   -- significa que se debe insertar como primero en L.

   function comparar(P1,P2:T_Nombre) return integer;

END ALista_Personas;
