WITH Ada.Text_IO;
USE Ada.Text_IO;

PACKAGE Persona IS
   TYPE T_Nombre IS
      RECORD
         Nombre,
         Apellido1,
         Apellido2 : String (1 .. 25);
      END RECORD;

   TYPE T_Ciudad IS
         (Donostia,
          Irun,
          Usurbil,
          Zarautz,
          Azkoitia,
          Azpeitia,
          Hondarribia,
          Orio);

   TYPE T_Persona IS
      RECORD
         NombreApellidos : T_Nombre;
         Domicilio       : T_Ciudad;
         Edad            : Integer;
      END RECORD;

   FUNCTION Cargar_Persona (
         F : File_Type)
     RETURN T_Persona;
   -- entrada: Tres String Nom, Ap1, Ap2, una ciudad Ci, un entero Edad (en F)
   -- pre: Los valores corresponden a la informacion de una persona. F fichero abierto
   -- pos: Devuelve los datos de la entrada como una persona.


   PROCEDURE Escribir_Persona (
         P : T_Persona);
   -- salida: una Persona (SE)
   -- pos: Escribe la informacion de una persona en una linea.

   function es_mayor_edad (P:t_persona) return boolean;
   --Post: Devolvera un valor booleano indicando si la edad de la persona es >= 18.

   function mismo_nombre (P: t_persona; Nom: T_Nombre) return boolean;
   --post: Devolvera un booleano que indica si P y nom coinciden.


END Persona;
