WITH Ada.Integer_Text_IO, Ada.Text_IO;
USE Ada.Integer_Text_IO, Ada.Text_IO;

PACKAGE body Lista_Enteros IS
   PROCEDURE CargarF (
         Fichero :        String;
         L       :    OUT T_Lista_Enteros) is
   F: File_Type;
   BEGIN
      L.Cont:=0;
      open(F, In_File, Fichero);
      WHILE NOT End_Of_File(F) and L.Cont<L.Lista'last LOOP
         l.Cont:= L.Cont+1;
         Get(F, L.Lista(L.Cont));
      END LOOP;
      Close(F);
      end CargarF;


   PROCEDURE EscribirSE (
         L : T_Lista_Enteros) IS
   BEGIN
      FOR I IN 1.. L.Cont LOOP
         Put(L.Lista(I), 0); Put(' ');
      END LOOP;
      New_Line;
   end EscribirSE;

   procedure Media_Pares_Impares(L: T_Lista_Enteros; P, I: OUT Float) is
      cont : integer := 0;
   BEGIN
      P := Float'first;
      I := Float'first;

      for i in l.cont loop
         cont := cont + boolean'pos(l.lista(i) mod 2);
      end loop;
   end Media_Pares_Impares;  





END Lista_Enteros;
