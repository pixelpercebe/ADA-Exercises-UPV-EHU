WITH Ada.Text_IO;
USE Ada.Text_IO;

PACKAGE LAB6_Vector_Personas IS

   TYPE T_Persona IS
      RECORD
         NombreApellidos : String (1 .. 25);
         Ciudad          : String (1 .. 12);
         Trabajando      : Boolean;
         Edad            : Integer;
         Sueldo          : Float;
      END RECORD;

   TYPE T_Vector_Personas IS ARRAY (Integer RANGE <>) OF T_Persona;


   ---- PERSONA -----
   FUNCTION Cargar_Persona (
         F : File_Type)
     RETURN T_Persona;
   -- entrada: Tres String Nom, Ci, Tra, un entero Edad y un float Sueldo (F)
   -- pre: Los valores corresponden a la informacion de una persona. F fichero abierto
   -- pos: Devuelve los datos Nom, Ci, Tra, Edad y Sueldo en una tipo de
   --      dato persona.

   PROCEDURE Escribir_Persona (
         P : T_Persona);
   -- salida: una Persona (SE)
   -- pos: Escribe la información de una persona en una línea.


   ---- VECTOR_PERSONA -----
   PROCEDURE Cargar_Personas (
         S :        String;
         V :    OUT T_Vector_Personas);
   -- entrada: Secuencia de Personas (Fichero S)
   -- pre: Cada valor correspondiente a cada persona está en una línea.
   --   S es nombre de fichero y tiene información de tantas personas como la capacidad de V
   -- post: V contine las personas de S.


   PROCEDURE Escribir_Personas (
         V : T_Vector_Personas);
   -- salida Secuencia de Personas S (SE)
   -- pos: S está formada por las personas de V. Toda la información de la persona en una línea.

END LAB6_Vector_Personas;
