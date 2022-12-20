WITH Barrio;
USE Barrio;

PROCEDURE Prueba_Barrio IS
   Calles: A_Lista_Calles;
BEGIN
   Cargar_Barrio(Calles);

   Escribir_Barrio(Calles);
END Prueba_Barrio;

