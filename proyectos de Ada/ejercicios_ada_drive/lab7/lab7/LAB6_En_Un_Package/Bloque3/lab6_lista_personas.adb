WITH Ada.Integer_Text_IO, Ada.Float_Text_IO, Ada.Integer_Text_IO;
USE Ada.Integer_Text_IO, Ada.Float_Text_IO, Ada.Integer_Text_IO;

PACKAGE BODY LAB6_Lista_Personas IS
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

   PROCEDURE Escribir_Personas (
         V : T_Vector_Personas) IS
   BEGIN
      FOR I IN V'RANGE LOOP
         Put(I, 3);
         Put(": ");
         Escribir_Persona(V(I)); -- llamada al package Persona
      END LOOP;
   END Escribir_Personas;

   ---- LISTA_PERSONA -----
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

   --CUANTOS_CIUDAD--
   function Cuantos_Ciudad (L: T_Lista_Personas; S:String) RETURN Integer IS
      Cont : Integer := 0;
   BEGIN
      FOR I IN l.cont LOOP
         IF L.ciudad(I) = S THEN
            Cont:= Cont +1;
         END IF;
      END LOOP;
      return cont;
   end cuantos_ciudad;
END LAB6_Lista_Personas;
