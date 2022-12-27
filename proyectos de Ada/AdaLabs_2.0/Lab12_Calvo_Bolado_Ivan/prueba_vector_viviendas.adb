WITH Ada.Text_IO, Vector_Viviendas;
USE Ada.Text_IO, Vector_Viviendas;

PROCEDURE Prueba_Vector_Viviendas IS
   F : File_Type;
   V : T_Vector_Viviendas(1..9);
   censados,vacios : integer;
BEGIN
   Open(F, In_File, "B/Eustasio_Amilibia2.txt");
   skip_line(F); -- salta la primera l�nea. No interesa para esta prueba
   Cargar_Viviendas(F, V);
   Escribir_Viviendas(V);
   contar_censados_y_vacia(V,censados,vacios);
   put_line(censados'img);
   put(vacios'img);
END Prueba_Vector_Viviendas;

