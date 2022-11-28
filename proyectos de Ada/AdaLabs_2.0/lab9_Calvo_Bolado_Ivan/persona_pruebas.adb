WITH Ada.Text_IO;
USE Ada.Text_IO;
WITH Persona;
USE Persona;

PROCEDURE Persona_Pruebas IS
   P1, P2, P3: T_Persona;
   F: File_Type;

BEGIN
   Open(F, In_File, "personas6.txt");
   P1:= Cargar_Persona(F);
   P2:= Cargar_Persona(F);
   P3:= Cargar_Persona(F);
   Put_Line("Se han cargado las 3 primeras personas del fichero personas6.txt");
   Escribir_Persona(P1); New_Line;
   Escribir_Persona(P2); New_Line;
   Escribir_Persona(P3); New_Line;
   New_Line; New_Line;

   Put("La primera persona es mayor de edad (debe poner true): "); put(Es_Mayor_Edad(P1)'img); new_line;
   Put("La segunda persona es mayor de edad (debe poner true): "); put(Es_Mayor_Edad(P2)'img); new_line;
   Put("La tercera persona no es mayor de edad (debe poner false): "); put(Es_Mayor_Edad(P3)'img); new_line;
   New_Line; New_Line;

   P1.NombreApellidos:= P2.NombreApellidos;
   Put_Line("Luego se ha hecho que las dos primeras personas se llamen igual ");
   Escribir_Persona(P1); New_Line;
   Escribir_Persona(P2); New_Line;
   Escribir_Persona(P3); New_Line;

   New_Line; New_Line;
   Put("La primera persona y nombre de la primera son la misma (debe poner true): "); put(Mismo_Nombre(P1, P1.NombreApellidos)'img); new_line;
   Put("La primera persona y nombre de la segunda son la misma (debe poner true): "); put(Mismo_Nombre(P1, P2.NombreApellidos)'img); new_line;
   Put("La primera persona y nombre de la tercera son la misma (debe poner false): "); put(Mismo_Nombre(P1, P3.NombreApellidos)'img); new_line;


END Persona_Pruebas;