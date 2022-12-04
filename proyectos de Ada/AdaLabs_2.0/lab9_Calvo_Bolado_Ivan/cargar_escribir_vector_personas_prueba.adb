WITH Ada.Text_IO, ADa.Integer_Text_IO;
USE Ada.Text_IO, Ada.Integer_Text_IO;
WITH Vector_Personas;
USE Vector_Personas;

PROCEDURE Cargar_Escribir_Vector_Personas_Prueba IS
   P1     : T_Vector_Personas (1 .. 0);

BEGIN
   put_line("Cargar fichero vacio"); Cargar_Personas("personas0.txt", P1);
   Put_Line("La lista de personas esta formada por:");
   Escribir_Personas(P1);
   Put(P1'Length, 0);
   Put_Line(" personas");

   New_Line;
   put_line("Cargar fichero con una persona"); Cargar_Personas("personas1.txt", P2);
   Put_Line("La lista de personas esta formada por:");
   Escribir_Personas(P2);
   Put(P2'Length, 0);
   Put_Line(" personas");

   New_Line;
   put_line("Cargar fichero con 6 personas"); Cargar_Personas("personas6.txt", P3);
   Put_Line("La lista de personas esta formada por:");
   Escribir_Personas(P3);
   Put(P3'Length, 0);
   Put_Line(" personas");

END Cargar_Escribir_Vector_Personas_Prueba;
