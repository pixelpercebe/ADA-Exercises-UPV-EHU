WITH Ada.Text_IO;
USE Ada.Text_IO;

PACKAGE BODY Lista_Personas IS

   PROCEDURE Cargar_Personas (
         S :        String;
         L :    OUT T_Lista_Personas) IS
      F : File_Type;
      I : Integer := 0;
   BEGIN
      Open(F, In_File, S);
      L.cont := 0;
      WHILE NOT End_Of_File(F) and I<L.Lista'last LOOP
         I:= I+1;
         Inserta_Persona(L,Cargar_Persona(F));
         --L.Lista(I):= Cargar_Persona(F); -- llamada al package Persona
      END LOOP;
      L.Cont:= I;
      Close(F);
   END Cargar_Personas;


   PROCEDURE Escribir_Personas (
         L : T_Lista_Personas) IS
   BEGIN
       Escribir_Personas(L.Lista(1..L.Cont)); -- llamada al package Vector_Personas
   END Escribir_Personas;


   Procedure Inserta_Persona(L: in out T_Lista_Personas; P: T_Persona) IS

      pos: integer;

   BEGIN

      pos := pos_persona(L.lista(1..L.cont),P.nombreApellidos);
      put(pos'img);
      if (pos <= L.cont and pos >= L.lista'first) and then (L.lista(pos) /= P) then
         L.lista(pos+1..L.Cont+1) := L.lista(pos..l.cont);
         L.lista(pos) := P;
         L.cont := L.cont + 1;
      else if (pos > L.cont) then
         L.cont := L.cont + 1;
         L.lista(pos) := P;
      end if;
      end if;
   END Inserta_Persona;


   procedure Filtra_Edad(V: T_Vector_Personas; LMay, LMen: out T_Lista_Personas) is


   BEGIN
   LMay.cont := 0;
   LMen.cont := 0;
   for i in V'range loop
      if V(i).edad < 18 then
         LMay.cont := LMay.cont + 1;
         Inserta_Persona(LMay,V(i));
      else
         LMen.cont := LMen.cont + 1;
         Inserta_Persona(LMen,V(i));
      end if;

   end loop;
   end filtra_edad;


END Lista_Personas;
