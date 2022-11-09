WITH Ada.Text_IO;
USE Ada.Text_IO;

PACKAGE body Mina IS
   PROCEDURE CargarF (
         Fichero :        String;
         M       :    OUT T_Lista_Mina) IS
      F : File_Type;
   BEGIN
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

END Mina;
