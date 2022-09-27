WITH Ada.Text_IO, ADa.Integer_Text_IO;
USE Ada.Text_IO, Ada.Integer_Text_IO;
WITH LAB6_Matriz_Personas;
USE LAB6_Matriz_Personas;

PROCEDURE Cargar_Escribir_Matriz_Personas_mm_Prueba1 IS
   M1: T_Matriz_Personas_MM(2..1, 1..3);
   M2: T_Matriz_Personas_MM(1..1, 4..4);
   M3: T_Matriz_Personas_MM(1..3, 1..5);

BEGIN
   put("Cargar fichero vacio"); Cargar_Personas_MM("personas0.txt", M1);
   Put_Line("La matriz MM de personas esta formada por:");
   Escribir_Personas(M1);
   Put(M1'Length*M1'length(2), 0);
   Put_Line(" personas");

   New_Line;
   put("Cargar fichero con una persona"); Cargar_Personas_MM("personas1.txt", M2);
   Put_Line("La matriz MM de personas esta formada por:");
   Escribir_Personas(M2);
   Put(M2'Length*M2'length(2), 0);
   Put_Line(" personas");

   New_Line;
   put("Cargar fichero con 15 personas"); Cargar_Personas_MM("personas15.txt", M3);
   Put_Line("La matriz MM de personas esta formada por:");
   Escribir_Personas(M3);
   Put(M3'Length*M3'length(2), 0);
   Put_Line(" personas");

END Cargar_Escribir_Matriz_Personas_MM_Prueba1;
