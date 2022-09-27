WITH Matriz_Temperaturas; USE Matriz_Temperaturas;
With ada.Text_IO; use ada.Text_IO;

PROCEDURE Cargar_Escribir_Prueba IS
   M1:T_Matriz_Temperaturas(Domingo..Lunes, 1..3);
   M2: T_Matriz_Temperaturas(Lunes..Viernes, 4..6);
   M3: T_Matriz_Temperaturas(T_Dias_Semana'RANGE, 1..5);

BEGIN
   put_Line("Carga de un a matriz vacia:");
   Cargar_Temperaturas(M1);
   Escribir_Temperaturas(M1);

   New_Line;
   put_Line("Carga de un a matriz de Lunes..Viernes de 4..6:");
   Cargar_Temperaturas(M2);
   Escribir_Temperaturas(M2);

   New_Line;
   put_Line("Carga de un a matriz de T_Dias_Semana'range, 1..5:");
   Cargar_Temperaturas(M3);
   Escribir_Temperaturas(M3);
END  Cargar_Escribir_Prueba;

