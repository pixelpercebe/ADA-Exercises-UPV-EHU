WITH Ada.Text_IO, ADa.Integer_Text_IO;
USE Ada.Text_IO, Ada.Integer_Text_IO;
WITH Lista_Personas;
USE Lista_Personas;

PROCEDURE Cargar_Escribir_Lista_Personas_Prueba IS
   L: T_Lista_Personas;

BEGIN
   put_line("Cargar fichero vacio"); Cargar_Personas("personas0.txt", L); -- Vacío
   Put_Line("La lista de personas esta formada por:");
   Escribir_Personas(L);
   Put(L.Cont, 0);
   Put_Line(" personas");

   New_Line;
   put_line("Cargar fichero con una persona"); Cargar_Personas("personas1.txt", L); -- Sólo 1
   Put_Line("La lista de personas esta formada por:");
   Escribir_Personas(L);
   Put(L.Cont, 0);
   Put_Line(" persona");

   New_Line;
   put_line("Cargar fichero con 6 personas"); Cargar_Personas("personas6.txt", L); -- A medias
   Put_Line("La lista de personas esta formada por:");
   Escribir_Personas(l);
   Put(L.COnt, 0);
   Put_Line(" personas");

   New_Line;
   put_line("Cargar fichero con 18 personas, el maximo"); Cargar_Personas("personasMuchas.txt", L); -- lleno
   Put_Line("La lista de personas esta formada por:");
   Escribir_Personas(L);
   Put(L.Cont, 0);
   Put_Line(" personas");
END Cargar_Escribir_Lista_Personas_Prueba;
