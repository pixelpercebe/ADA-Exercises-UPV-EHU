WITH Ada.Text_IO, Vivienda;
USE Ada.Text_IO, Vivienda;

PROCEDURE Prueba_Vivienda IS
   F : File_Type;
   V : T_Vivienda;
BEGIN
   Open(F, In_File, "B/Eustasio_Amilibia2.txt");
   Skip_Line(F);  -- salta la primera l�nea. No interesa para esta prueba
   FOR I IN 1..9 LOOP
      Cargar_Vivienda(F, V);
      Escribir_Vivienda(V);
   END LOOP;
END Prueba_Vivienda;

