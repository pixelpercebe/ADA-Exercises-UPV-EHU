WITH Ada.Text_IO; USE Ada.Text_IO;

PACKAGE Persona IS

   TYPE T_Persona IS
      RECORD
         NombreApellidos : String (1 .. 25);
         Ciudad          : String (1 .. 12);
         Trabajando      : Boolean;
         Edad            : Integer;
         Sueldo          : Float;
      END RECORD;

   FUNCTION Cargar_Persona (F: File_Type) RETURN T_Persona;
   -- entrada: Tres String Nom, Ci, Tra, un entero Edad y un float Sueldo (F)
   -- pre: Los valores corresponden a la informacion de una persona. F fichero abierto
   -- pos: Devuelve los datos Nom, Ci, Tra, Edad y Sueldo en una tipo de
   --      dato persona.


   PROCEDURE Escribir_Persona (
         P : T_Persona);
   -- salida: una Persona (SE)
   -- pos: Escribe la información de una persona en una línea.

END Persona;
