WITH Ada.Integer_Text_IO, Ada.Float_Text_IO, Ada.Integer_Text_IO;
USE Ada.Integer_Text_IO, Ada.Float_Text_IO, Ada.Integer_Text_IO;

PACKAGE BODY LAB6_Vector_Personas IS
   ---- PERSONA -----
   FUNCTION Cargar_Persona (
         F : File_Type)
     RETURN T_Persona IS
      P          : T_Persona;
      Trabajando : String (1 .. 5);
      N          : Integer;
   BEGIN
      P.NombreApellidos:= (OTHERS=> ' ');
      Get_Line(F, P.NombreApellidos, N);
      Get_Line(F, P.Ciudad, N);
      P.Ciudad(N+1..P.Ciudad'Last):= (OTHERS=>' ');
      Get_Line(F, Trabajando, N);
      P.Trabajando:= Boolean'Value(Trabajando(1..N));
      Get(F, P.Edad);
      Get(F, P.Sueldo);
      skip_Line(F);
      return P;
   END Cargar_Persona;


   PROCEDURE Escribir_Persona (
         P : T_Persona) IS
   BEGIN
      Put(P.NombreApellidos);
      Put(" - ");
      Put(P.Ciudad);
      Put("- ");
      Put(Boolean'Image(P.Trabajando));
      Put("- ");      Put(P.Edad, 3);
      Put("- ");      Put(P.Sueldo, 6, 2, 0);
      New_Line;
   END Escribir_Persona;



   ---- VECTOR_PERSONA -----

   Procedure Cargar_Personas (S: String; V: out T_Vector_Personas) IS
      F: File_Type;
    BEGIN
      open(F, In_File, S);
      for I in V'Range LOOP
         V(I):= Cargar_Persona(F); -- llamada al package Persona
      END LOOP;
--      close(F);
   END Cargar_Personas;


   PROCEDURE Escribir_Personas (
         V : T_Vector_Personas) IS
   BEGIN
      FOR I IN V'RANGE LOOP
         Put(I, 3);
         Put(": ");
         Escribir_Persona(V(I)); -- llamada al package Persona
      END LOOP;
   END Escribir_Personas;

END LAB6_Vector_PersonaS;
