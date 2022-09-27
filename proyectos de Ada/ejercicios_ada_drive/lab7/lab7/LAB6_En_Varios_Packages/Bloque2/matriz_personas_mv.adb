WITH Ada.Integer_Text_IO, Ada.Text_IO, Persona, Vector_Personas;
USE Ada.Integer_Text_IO, Ada.Text_IO, Persona, Vector_Personas;

PACKAGE BODY Matriz_Personas_MV IS

   PROCEDURE Cargar_Personas_MV (
         S :        String;
         M :    OUT T_Matriz_Personas_MV) IS
      F : File_Type;
   BEGIN
      Open(F, In_File, S);
      FOR I IN M'RANGE(1) LOOP
         FOR J IN M(I)'RANGE LOOP
            M(I)(J):= Cargar_Persona(F); -- llamada al package Persona
         END LOOP;
      END LOOP;
      Close(F);
   END Cargar_Personas_MV;


   PROCEDURE Escribir_Personas (
         M : T_Matriz_Personas_MV) IS
   BEGIN
      FOR I IN M'RANGE(1) LOOP
         Put("Fila ");
         Put(I,0);
         New_Line;

         Escribir_Personas(M(I)); -- llamada al package Vector_Persona
      END LOOP;
   END Escribir_Personas;

END Matriz_Personas_MV;
