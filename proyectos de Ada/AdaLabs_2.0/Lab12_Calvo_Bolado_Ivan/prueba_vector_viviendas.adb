WITH Ada.Text_IO, Vector_Viviendas;
USE Ada.Text_IO, Vector_Viviendas;

PROCEDURE Prueba_Vector_Viviendas IS
   F : File_Type;
   V : T_Vector_Viviendas(1..9);
BEGIN
   Open(F, In_File, "B/Eustasio_Amilibia2.txt");
   skip_line(F); -- salta la primera línea. No interesa para esta prueba
   Cargar_Viviendas(F, V);
   Escribir_Viviendas(V);
END Prueba_Vector_Viviendas;

