WITH Ada.Integer_Text_IO, Ada.Float_Text_IO, Ada.Integer_Text_IO;
USE Ada.Integer_Text_IO, Ada.Float_Text_IO, Ada.Integer_Text_IO;

PACKAGE BODY LAB6_Matriz_Personas IS
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
      Skip_Line(F);
      RETURN P;
   END Cargar_Persona;


   PROCEDURE Escribir_Persona (
         P : T_Persona) IS
   BEGIN
      Put(P.NombreApellidos);
      Put(" - ");
      Put(P.Ciudad);
      Put("- ");
      Put(Boolean'Image(P.Trabajando));
      Put("- ");
      Put(P.Edad, 3);
      Put("- ");
      Put(P.Sueldo, 6, 2, 0);
      New_Line;
   END Escribir_Persona;



   ---- VECTOR_PERSONA -----

   PROCEDURE Escribir_Personas (
         V : T_Vector_Personas) IS
   BEGIN
      FOR I IN V'RANGE LOOP
         Put(I, 3);
         Put(": ");
         Escribir_Persona(V(I)); -- llamada al package Persona
      END LOOP;
   END Escribir_Personas;


   ---- MATRIZ_PERSONA_MM -----
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

   ---- MATRIZ_PERSONA_MV -----
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
         Escribir_Personas(M(I)); -- llamada al package Persona
      END LOOP;
   END Escribir_Personas;
END LAB6_Matriz_PersonaS;
