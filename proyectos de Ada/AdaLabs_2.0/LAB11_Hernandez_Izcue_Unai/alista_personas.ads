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
   -- post: devuelve los apuntadores Ant y Act para insertar/localizar a P.
   -- Ant apunta al elemento justo anterior de donde debiera estar esa
   -- persona P en L, Act apunta a la misma persona P, o si Ant=Act
   -- significa que se debe insertar como primero en L.

   procedure Actualiza_Domicilio(L: in out A_Personas; Nom: T_Nombre; C: T_ciudad);
   -- pre: Nom es el nombre y apellido de una persona y C es una
   -- ciudad. L ordenado alfabéticamente por apellidos y nombre.
   -- post: Modifica en L el domicilio de la persona Nom por C. Si no hay
   -- ninguna persona con el nombre Nom la lista no se modifica.

   procedure Inserta_Persona(L: in out A_Personas; P: A_Personas);
   -- pre: L ordenado alfabéticamente por apellidos y nombre. P es la
   -- información de una única persona.
   -- post: Se inserta ordenadamente P en L. Si la misma persona P ya está en
   -- L, no se actualiza L.

   procedure Filtra_Edad(V: A_Personas; LMay, LMen: out A_Personas);
   -- pre: V ordenado alfabéticamente por apellidos y nombre.
   -- post: LMay contiene las personas mayores de edad de L. LMen contiene las
   -- personas menores de edad de L. Las listas quedan también ordenadas.

   procedure Filtra_Ciudad(L: in out A_Personas; C: t_ciudad; LC: out A_Personas);
   -- pre: L ordenada alfabéticamente por apellidos y nombre.
   -- post: LC contiene las personas de L domiciliadas en la ciudad C.
   -- L se actualiza y ya no tiene ninguna persona de esa ciudad.
   -- LC también está ordenada.
END ALista_Personas;
