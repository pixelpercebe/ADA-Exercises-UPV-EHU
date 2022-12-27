WITH Barrio, ada.text_IO;
USE Barrio, ada.text_IO;

PROCEDURE Prueba_Barrio IS
   Calles: A_Lista_Calles;
   N:integer;
BEGIN
   Cargar_Barrio(Calles);

   Escribir_Barrio(Calles);

   put("Cantidad de viviendas vacias: ");
   N := cuantos_vacios(Calles);
   put(N'img);
END Prueba_Barrio;

