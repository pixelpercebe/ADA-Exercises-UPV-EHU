WITH Ada.Text_IO, Nombre;
USE Ada.Text_IO, Nombre;

PROCEDURE Prueba_Nombre IS
   F : File_Type;
   Nom : T_Nombre;

BEGIN
   Open(F, In_File, "B/Calles.txt");
   WHILE NOT End_Of_File(F) LOOP
      Cargar_Nombre(F, Nom);
      skip_line(F);  -- no tratamos en esta prueba los datos de cuántos portales pares e impares hay.
      Escribir_Nombre(Nom);
   END LOOP;
   Close(F);
END Prueba_Nombre;

