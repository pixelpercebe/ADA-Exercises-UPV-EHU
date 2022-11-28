WITH Ada.Integer_Text_IO, Ada.Text_IO;
USE Ada.Integer_Text_IO, Ada.Text_IO;

PACKAGE BODY Vector_Personas IS

   Procedure Cargar_Personas (S: String; V: out T_Vector_Personas) IS
      F: File_Type;
    BEGIN
      open(F, In_File, S);
      for I in V'Range LOOP
         V(I):= Cargar_Persona(F); -- llamada al package Persona
      END LOOP;
      close(F);
   END Cargar_Personas;


   PROCEDURE Escribir_Personas (
         V : T_Vector_Personas) IS
   BEGIN
      FOR I IN V'RANGE LOOP
         Put(I, 3);
         Put_Line(": ");
         Escribir_Persona(V(I)); -- llamada al package Persona
      END LOOP;
   END Escribir_Personas;


   function Pos_Persona(V: in T_Vector_Personas; P: T_Nombre) return Natural IS

   sup: integer := V'last;
   inf: integer := V'first;
   med:integer;

   BEGIN
   med := sup/2

   while med /=0 and then V(med).nombreApellidos /= P and then sup /= inf

      

   end loop;

   end pos_persona;
END Vector_Personas;