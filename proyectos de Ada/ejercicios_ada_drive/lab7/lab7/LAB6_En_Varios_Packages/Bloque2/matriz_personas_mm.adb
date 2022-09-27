WITH Ada.Integer_Text_IO, Ada.Text_IO;
USE Ada.Integer_Text_IO, Ada.Text_IO;

PACKAGE BODY Matriz_Personas_MM IS

   PROCEDURE Cargar_Personas_MM (
         S :        String;
         M :    OUT T_Matriz_Personas_MM) IS
      F : File_Type;
   BEGIN
      Open(F, In_File, S);
      FOR I IN M'RANGE(1) LOOP
         FOR J IN M'RANGE(2) LOOP
            M(I, J):= Cargar_Persona(F); -- llamada al package Persona
         END LOOP;
      END LOOP;
      Close(F);
   END Cargar_Personas_MM;


   PROCEDURE Escribir_Personas (
         M : T_Matriz_Personas_MM) IS
   BEGIN
      FOR I IN M'RANGE(1) LOOP
         Put("Fila ");
         Put(I,0);
         New_Line;
         FOR J IN M'RANGE(2) LOOP
            Put("(");
            Put(I, 0);
            Put(", ");
            Put(J, 0);
            Put(") ");
            Escribir_Persona(M(I, J)); -- llamada al package Persona
         END LOOP;
      END LOOP;
   END Escribir_Personas;

END Matriz_Personas_MM;
