WITH Persona;
USE Persona;

PACKAGE Vector_Personas IS

   TYPE T_Vector_Personas IS ARRAY (Integer RANGE <>) OF T_Persona;

   PROCEDURE Cargar_Personas (
         S :        String;
         V :    OUT T_Vector_Personas);
   -- entrada: Secuencia de Personas (Fichero S)
   -- pre: Cada valor correspondiente a nombre, apellido1, apellido, domicilio y edad de cada persona está en una línea.
   --   S es nombre de fichero y tiene información de al menos tantas personas como la capacidad de V
   -- post: V contine las primeras personas de S.


   PROCEDURE Escribir_Personas (
         V : T_Vector_Personas);
   -- salida Secuencia de Personas S (SE)
   -- pos: S está formada por las personas de V. Toda la información de la persona en una línea.

END Vector_Personas;
