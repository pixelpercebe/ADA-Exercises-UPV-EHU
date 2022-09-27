WITH Ada.Text_IO, Persona;
USE Ada.Text_IO, Persona;

PACKAGE BODY Lista_Personas IS

   PROCEDURE Cargar_Personas (
         S :        String;
         L :    OUT T_Lista_Personas) IS
      F : File_Type;
      I : Integer   := 0;
   BEGIN
      Open(F, In_File, S);
      WHILE NOT End_Of_File(F) LOOP
         I:= I+1;
         L.Lista(I):= Cargar_Persona(F); -- llamada al package Persona
      END LOOP;
      L.Cont:= I;
      Close(F);
   END Cargar_Personas;


   PROCEDURE Escribir_Personas (
         L : T_Lista_Personas) IS
   BEGIN
      FOR I IN 1..L.Cont LOOP
         Escribir_Persona(L.Lista(I)); -- llamada al package Persona
      END LOOP;
   END Escribir_Personas;

END Lista_Personas;
