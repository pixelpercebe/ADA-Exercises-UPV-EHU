with Ada.Text_IO, Nombre; use Ada.Text_IO, Nombre;

PACKAGE Vivienda IS
   TYPE T_Vivienda IS RECORD
      Propietario: t_nombre;
      Piso: Natural RANGE 1..15;
      Mano: Character RANGE 'A'..'G';
      Censados: Natural;
   END RECORD;

   PROCEDURE Cargar_Vivienda(F:File_Type; V: out T_Vivienda);
   -- entrada: Información de una vivienda (F)
   -- pre: F es un fichero de entrada abierto que contine al menos una fila. En la fila están:
   --      piso, mano (ambos seguidos), número de personas censadas, y nombre del propietario.

   PROCEDURE Escribir_Vivienda(V: T_Vivienda);
   --salida: datos de la vivienda (SE)
   -- post: escribe la información de la vivienda V.

end Vivienda;
