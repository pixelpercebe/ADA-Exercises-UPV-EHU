WITH Ada.Integer_Text_IO, Ada.Text_IO;
USE Ada.Integer_Text_IO, Ada.Text_IO;

PACKAGE BODY Matriz_Temperaturas IS

   PROCEDURE Cargar_Temperaturas (
         M :    OUT T_Matriz_Temperaturas) IS
      F : File_Type;
   BEGIN
      Open(F, In_File, "temp.txt");
      FOR I IN M'RANGE(1) LOOP
         FOR J IN M'RANGE(2) LOOP
            Get(F, M(I, J));
         END LOOP;
      END LOOP;
      Close(F);
   END Cargar_Temperaturas;


   PROCEDURE Escribir_Temperaturas (
         M : T_Matriz_Temperaturas) IS
   BEGIN
      FOR I IN M'RANGE(1) LOOP
         FOR J IN M'RANGE(2) LOOP
            Put(M(I, J), 4);
         END LOOP;
         New_Line;
      END LOOP;
   END  Escribir_Temperaturas;

END Matriz_Temperaturas;