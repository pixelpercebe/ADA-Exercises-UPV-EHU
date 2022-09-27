WITH Ada.Text_IO;
USE Ada.Text_IO;

PACKAGE LAB6_Matriz_Personas IS

   TYPE T_Persona IS
      RECORD
         NombreApellidos : String (1 .. 25);
         Ciudad          : String (1 .. 12);
         Trabajando      : Boolean;
         Edad            : Integer;
         Sueldo          : Float;
      END RECORD;

   TYPE T_Vector_Personas IS ARRAY (Integer RANGE <>) OF T_Persona;

   TYPE T_Matriz_Personas_MM IS ARRAY (Integer RANGE <>, Integer RANGE <>) OF T_Persona;

   TYPE T_Matriz_Personas_MV IS ARRAY (Integer RANGE <>) OF T_Vector_Personas (1 .. 5);

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


   PROCEDURE Escribir_Personas (
         V : T_Vector_Personas);
   -- salida Secuencia de Personas S (SE)
   -- pos: S está formada por las personas de V. Toda la información de la persona en una línea.

   ---- MATRIZ_PERSONA_MM -----
   PROCEDURE Cargar_Personas_MM (
         S :        String;
         M :    OUT T_Matriz_Personas_MM);
   -- entrada: Secuencia de Personas (Fichero S)
   -- pre: Cada valor correspondiente a cada persona está en una línea. S es nombre de fichero
   -- post: devuelve un vector del tamaño del número de personas de S.

   PROCEDURE Escribir_Personas (
         M : T_Matriz_Personas_MM);
   -- salida Secuencia de Personas S (SE)
   -- pos: S está formada por las personas de V. Toda la información de la persona en una línea.


   ---- MATRIZ_PERSONA_MV -----
   PROCEDURE Cargar_Personas_MV (
         S :        String;
         M :    OUT T_Matriz_Personas_MV);
   -- entrada: Secuencia de Personas (Fichero S)
   -- pre: Cada valor correspondiente a cada persona está en una línea. S es nombre de fichero
   -- post: devuelve un vector del tamaño del número de personas de S.


   PROCEDURE Escribir_Personas (
         M : T_Matriz_Personas_MV);
   -- salida Secuencia de Personas S (SE)
   -- pos: S está formada por las personas de V. Toda la información de la persona en una línea.

END LAB6_Matriz_Personas;
