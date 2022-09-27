WITH Ada.Text_IO, ADa.Integer_Text_IO;
USE Ada.Text_IO, Ada.Integer_Text_IO;
WITH LAB6_Matriz_Personas;
USE Lab6_Matriz_Personas;

PROCEDURE Cargar_Escribir_Matriz_Personas_MV_Prueba1 IS
   M1: T_Matriz_Personas_MV(2..1);
   M2: T_Matriz_Personas_MV(1..1); -- única fila
   M3: T_Matriz_Personas_MV(1..3);

BEGIN
   put("Cargar fichero vacio"); Cargar_Personas_MV("personas0.txt", M1);
   Put_Line("La matriz MV de personas esta formada por:");
   Escribir_Personas(M1);
   Put(M1'Length*5, 0);
   Put_Line(" personas");

   New_Line;
   put("Cargar fichero con una persona"); Cargar_Personas_MV("personas6.txt", M2);
   Put_Line("La matriz MV de personas esta formada por:");
   Escribir_Personas(M2);
   Put(M2'Length*5, 0);
   Put_Line(" personas");

   New_Line;
   put("Cargar fichero con 15 personas"); Cargar_Personas_MV("personas15.txt", M3);
   Put_Line("La matriz MV de personas esta formada por:");
   Escribir_Personas(M3);
   Put(M3'Length*5, 0);
   Put_Line(" personas");

END Cargar_Escribir_Matriz_Personas_MV_Prueba1;
