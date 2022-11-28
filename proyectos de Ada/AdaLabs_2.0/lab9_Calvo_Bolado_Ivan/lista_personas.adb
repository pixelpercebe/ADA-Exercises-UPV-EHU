WITH Ada.Text_IO;
USE Ada.Text_IO;

PACKAGE BODY Lista_Personas IS

   PROCEDURE Cargar_Personas (
         S :        String;
         L :    OUT T_Lista_Personas) IS
      F : File_Type;
      I : Integer   := 0;
   BEGIN
      Open(F, In_File, S);
      WHILE NOT End_Of_File(F) and I<L.Lista'last LOOP
         I:= I+1;
         L.Lista(I):= Cargar_Persona(F); -- llamada al package Persona
      END LOOP;
      L.Cont:= I;
      Close(F);
   END Cargar_Personas;


   PROCEDURE Escribir_Personas (
         L : T_Lista_Personas) IS
   BEGIN
       Escribir_Personas(L.Lista(1..L.Cont)); -- llamada al package Vector_Personas
   END Escribir_Personas;

END Lista_Personas;
