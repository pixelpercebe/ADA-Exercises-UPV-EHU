WITH Sintoma, Lista_Sintomas; USE Sintoma, Lista_Sintomas;
WITH Ada.Text_IO; USE Ada.Text_IO;

PROCEDURE esta_sintoma_prueba IS

   PROCEDURE Cargar_Lista_Sintomas (L: out A_Lista_Sintomas) IS

   BEGIN
      L:= NEW T_Nodo_Sintomas'(Vomitos,NULL);
      L:= NEW T_Nodo_Sintomas'(Mareos, L);
      L:= NEW T_Nodo_Sintomas'(Fiebre, L);
      L:= NEW T_Nodo_Sintomas'(Dolor_Cabeza, L);
   END Cargar_Lista_Sintomas;

   Act: A_Lista_Sintomas;

BEGIN
   Cargar_Lista_Sintomas(Act);
   -- Llamar al subprograma de escribir una vez implementado.

   Put_Line("El sintoma MAREOS esta en la lista?");
   Put_line(Boolean'Image(Esta_Sintoma(Act,MAREOS)));
   New_Line;

   Put_Line("El sintoma Dolor de cabeza esta en la lista?");
   Put_Line(Boolean'Image(Esta_Sintoma(Act,Dolor_Cabeza)));
   New_Line;

   Put_Line("El sintoma vomitos de cabeza esta en la lista?");
   Put_Line(Boolean'Image(Esta_Sintoma(Act,Vomitos)));
   New_Line;

   Put_Line("El sintoma Amnea esta en la lista?");
   Put_Line(Boolean'Image(Esta_Sintoma(Act,Amnea)));
   New_Line;

   Put_Line("El sintoma tos esta en la lista?");
   Put_Line(Boolean'Image(Esta_Sintoma(Act,TOS)));
   New_Line;

End esta_sintoma_prueba;
