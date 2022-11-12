WITH Ada.Text_IO;
USE Ada.Text_IO;

PACKAGE body Mina IS
   PROCEDURE CargarF (
         Fichero :        String;
         M       :    OUT T_Lista_Mina) IS
      F : File_Type;
   BEGIN
      put("**" & Fichero & "**");
      new_line;

      M.Cont:=0;
      Open(F, In_File, Fichero);
      WHILE NOT End_Of_File(F) AND M.Cont< M.Mina'Last LOOP
         M.Cont:= M.Cont+1;
         Get(F, M.Mina(M.Cont));
      END LOOP;
      Close(F);
   END CargarF;


   PROCEDURE EscribirSE (
         M : T_Lista_Mina) IS
   BEGIN
      FOR I IN 1.. M.Cont LOOP
         Put(M.Mina(I));
      END LOOP;
      New_Line;
   END EscribirSE;


   --Ejercicio 2.1
   FUNCTION Cuantos_Diamantes(M:T_Lista_Mina) RETURN Natural is

   cont:integer:=0;
   begin
   for i in 1..m.cont-1 loop
      cont := cont + boolean'pos(m.mina(i)='<' and m.mina(i+1) = '>');
   end loop;
   return cont;
   end Cuantos_Diamantes;

   --Ejercicio 2.2
   PROCEDURE Extrae(M: IN OUT T_Lista_Mina; D: OUT Natural) is

   i : integer := 1;
   begin
   D := 0;

   while i <= m.cont-1 loop
      if m.mina(i)='<' and m.mina(i+1) = '>' then
         m.mina(i..m.cont-2) := m.mina(i+2..m.cont);
         m.cont := m.cont-2;
         i := i-1;
         D := D + 1;
      else
         i := i+1;
      end if;
   end loop;
   
   end extrae;
END Mina;
