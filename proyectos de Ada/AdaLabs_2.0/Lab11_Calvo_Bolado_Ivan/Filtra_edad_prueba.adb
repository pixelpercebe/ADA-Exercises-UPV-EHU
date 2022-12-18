with ada.text_IO,alista_Personas; use ada.text_IO,alista_personas;


procedure filtra_edad_prueba is

   L: A_Personas;
   Lmay: A_Personas;
   Lmen: A_Personas;
begin

   put_line("Cargar fichero vacio"); Cargar_Personas("personas0.txt", L); -- Vac�o
   escribir_personas(L); 
   filtra_edad(L,LMay,LMen);
   Put_Line("La lista de persona mayores de edad esta formada por:");
   Escribir_Personas(LMay);
   Put_Line("La lista de persona menores de edad esta formada por:");
   Escribir_Personas(LMen);

   New_Line;
   put_line("Cargar fichero con una persona"); Cargar_Personas("personas1.txt", L); -- S�lo 1
   escribir_personas(L); 
   filtra_edad(L,LMay,LMen);
   Put_Line("La lista de persona mayores de edad esta formada por:");
   Escribir_Personas(LMay);
   Put_Line("La lista de persona menores de edad esta formada por:");
   Escribir_Personas(LMen);

   New_Line;
   put_line("Cargar fichero con 6 personas"); Cargar_Personas("personas6.txt", L); -- A medias
   escribir_personas(L); 
   filtra_edad(L,LMay,LMen);
   Put_Line("La lista de persona mayores de edad esta formada por:");
   Escribir_Personas(LMay);
   Put_Line("La lista de persona menores de edad esta formada por:");
   Escribir_Personas(LMen);

   New_Line;
   put_line("Cargar fichero con 18 personas"); Cargar_Personas("personasMuchas.txt", L); --Muchas
   escribir_personas(L); 
   filtra_edad(L,LMay,LMen);
   Put_Line("La lista de persona mayores de edad esta formada por:");
   Escribir_Personas(LMay);
   Put_Line("La lista de persona menores de edad esta formada por:");
   Escribir_Personas(LMen);

end filtra_edad_prueba;