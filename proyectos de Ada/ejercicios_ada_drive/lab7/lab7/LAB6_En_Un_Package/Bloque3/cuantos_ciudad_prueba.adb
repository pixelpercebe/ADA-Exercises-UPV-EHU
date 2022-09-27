WITH Ada.Text_IO, Ada.Integer_Text_IO;
USE Ada.Text_IO, Ada.Integer_Text_IO;
WITH lab6_Lista_Personas;
USE lab6_Lista_Personas;

PROCEDURE Cuantos_ciudad_Prueba IS
   L: T_Lista_Personas;

BEGIN
   put("Cargar fichero vacio"); Cargar_Personas("personas0.txt", L); -- Vacío
   Put_Line("La lista de personas esta formada por:");
   Escribir_Personas(L);


   New_Line;
   put("Cargar fichero con una persona"); Cargar_Personas("personas1.txt", L); -- Sólo 1
   Put_Line("La lista de personas esta formada por:");
   Escribir_Personas(L);


   New_Line;
   put("Cargar fichero con 6 personas"); Cargar_Personas("personas6.txt", L); -- A medias
   Put_Line("La lista de personas esta formada por:");
   Escribir_Personas(l);


   New_Line;
   put("Cargar fichero con 10 personas"); Cargar_Personas("personas10.txt", L); -- lleno
   Put_Line("La lista de personas esta formada por:");
   Escribir_Personas(L);
   Cuantos_Ciudad(L,"Donostia");


END Cuantos_ciudad_Prueba;
