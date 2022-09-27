WITH Ada.Text_IO, ADa.Integer_Text_IO;
USE Ada.Text_IO, Ada.Integer_Text_IO;
WITH Personas;
USE Personas;

PROCEDURE Escribir_Personas_Prueba IS
   Nom    : String (1 .. 15)            := "Maite Urretaviz";
   Ciudad : String (1 .. 15)            := "Donostia       ";
   P1     : T_Vector_Personas (1 .. 0);
   P      : T_Persona                   := (Nom, Ciudad, True, 8);
   P2     : T_Vector_Personas (1 .. 1)  := (1 => P);
   P3     : T_Vector_Personas (5 .. 10);

BEGIN
   P3(5):= P2(1);
   Nom:=(OTHERS=> ' ');
   Nom(1..3):= "Ana";
   P3(6):= (Nom, Ciudad, True, 35);
   P3(7):= ("Juan           ", "Azpeitia       ", False, 13);
   P3(8):= P3(7);
   P3(9):= ("Coro           ", "Zarautz        ", False, 18);
   P3(10).NombreApellidos:= "Roberto        ";
   P3(10).Ciudad:= Ciudad;
   P3(10).Trabajando:= True;
   P3(10).Edad:= 36;

   Put_Line("La lista de personas esta formada por:");
   Escribir_Personas(P1);
   Put(P1'Length, 0);
   Put_Line(" personas");

   New_Line;
   Put_Line("La lista de personas esta formada por:");
   Escribir_Personas(P2);
   Put(P2'Length, 0);
   Put_Line(" personas");

   New_Line;
   Put_Line("La lista de personas esta formada por:");
   Escribir_Personas(P3);
   Put(P3'Length, 0);
   Put_Line(" personas");
END Escribir_Personas_Prueba;
