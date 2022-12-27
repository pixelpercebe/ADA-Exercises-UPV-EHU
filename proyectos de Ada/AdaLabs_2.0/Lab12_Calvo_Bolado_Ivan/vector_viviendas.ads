with Vivienda; Use Vivienda;
WITH Ada.Text_IO; USE Ada.Text_IO;

PACKAGE Vector_Viviendas IS
   TYPE T_Vector_Viviendas IS ARRAY(Integer Range <>) OF T_Vivienda;

   PROCEDURE Cargar_Viviendas(F:File_Type; VVs: out t_Vector_Viviendas);
   -- entrada: secuencia viviendas (fich=F)
   -- pre: F es un fichero abierto. En F hay informaci�n de tantas viviendas como la capacidad de VVs.
   --      El fichero contiene la informaci�n de cada vivienda en una l�nea.
   --      Por cada vivienda aparece y en ese orden: Piso, Mano, Censados,
   --      y De_Quien (mirar ficheros de datos).
   -- post: VVs contine la informaci�n de todas las viviendas de F. VVs est� lleno.

   PROCEDURE Escribir_Viviendas(VVs: t_Vector_Viviendas);
   -- salida: secuencia de viviendas(SE)
   -- post: escribe informaci�n de las viviendas de VVs

   procedure contar_censados_y_vacia(VVs : t_Vector_Viviendas; censados, vacias : out integer);

END Vector_Viviendas;

