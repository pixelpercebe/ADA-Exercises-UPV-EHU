with ada.text_IO,Lista_Personas; use ada.text_IO,lista_personas;


procedure filtra_edad_prueba is

   L: T_Lista_Personas;
   Lmay: T_Lista_Personas;
   Lmen: T_Lista_Personas;
begin

   put_line("Cargar fichero vacio"); Cargar_Personas("personas0.txt", L); -- Vac�o
   filtra_edad(L.lista(1..L.cont),LMay,LMen);
   Put_Line("La lista de persona mayores de edad esta formada por:");
   Put(LMay.Cont, 0);
   Put_Line(" personas");
   Escribir_Personas(LMay);
   Put_Line("La lista de persona menores de edad esta formada por:");
   Put(LMen.Cont, 0);
   Put_Line(" personas");
   Escribir_Personas(LMen);

   New_Line;
   put_line("Cargar fichero con una persona"); Cargar_Personas("personas1.txt", L); -- S�lo 1
   filtra_edad(L.lista(1..L.cont),LMay,LMen);
   Put_Line("La lista de persona mayores de edad esta formada por:");
   Put(LMay.Cont, 0);
   Put_Line(" personas");
   Escribir_Personas(LMay);
   Put_Line("La lista de persona menores de edad esta formada por:");
   Put(LMen.Cont, 0);
   Put_Line(" personas");
   Escribir_Personas(LMen);

   New_Line;
   put_line("Cargar fichero con 6 personas"); Cargar_Personas("personas6.txt", L); -- A medias
   filtra_edad(L.lista(1..L.cont),LMay,LMen);
   Put_Line("La lista de persona mayores de edad esta formada por:");
   Put(LMay.Cont, 0);
   Put_Line(" personas");
   Escribir_Personas(LMay);
   Put_Line("La lista de persona menores de edad esta formada por:");
   Put(LMen.Cont, 0);
   Put_Line(" personas");
   Escribir_Personas(LMen);

   New_Line;
   put_line("Cargar fichero con 18 personas, el maximo"); Cargar_Personas("personasMuchas.txt", L); -- lleno
   filtra_edad(L.lista(1..L.cont),LMay,LMen);
   Put_Line("La lista de persona mayores de edad esta formada por:");
   Put(LMay.Cont, 0);
   Put_Line(" personas");
   Escribir_Personas(LMay);
   Put_Line("La lista de persona menores de edad esta formada por:");
   Put(LMen.Cont, 0);
   Put_Line(" personas");
   Escribir_Personas(LMen);

end filtra_edad_prueba;