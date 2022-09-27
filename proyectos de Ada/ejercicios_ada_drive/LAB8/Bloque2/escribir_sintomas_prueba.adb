WITH Sintoma, Lista_Sintomas; USE Sintoma, Lista_Sintomas;
WITH Ada.Text_IO; USE Ada.Text_IO;

PROCEDURE escribir_sintomas_prueba IS

   PROCEDURE Cargar_Lista_Sintomas (L: out A_Lista_Sintomas) IS

   BEGIN
      L:= NEW T_Nodo_Sintomas'(Vomitos,NULL);
      L:= NEW T_Nodo_Sintomas'(Mareos, L);
      L:= NEW T_Nodo_Sintomas'(Fiebre, L);
      L:= NEW T_Nodo_Sintomas'(Dolor_Cabeza, L);
   END Cargar_Lista_Sintomas;

   Act: A_Lista_Sintomas;
   act2: A_lista_sintomas;
BEGIN
   Cargar_Lista_Sintomas(Act);
   -- Llamar al subprograma de escribir una vez implementado.
   put_line("Esta es la lista de sintomas:");
   Escribir_Sintomas(Act);

   Put_Line("Esta es la lista de sintomas:");
   escribir_sintomas(act2)
End escribir_sintomas_prueba;
