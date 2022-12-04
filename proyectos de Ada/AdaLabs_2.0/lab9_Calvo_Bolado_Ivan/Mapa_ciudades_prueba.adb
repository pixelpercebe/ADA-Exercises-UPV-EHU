with ada.text_IO,Ada.Integer_Text_IO; use ada.text_IO,Ada.Integer_Text_IO;
WITH Mapa_Ciudades,Lista_Personas; use Mapa_Ciudades,Lista_Personas;

procedure Mapa_Ciudades_prueba is

  L : T_Lista_Personas;
  MC : T_Mapa_Ciudades;

BEGIN
  put_line("Cargar fichero vacio"); Cargar_Personas("personas0.txt", L); -- Vac�o
  put("1.) Se han cargado: ");
  Put(L.Cont, 0);
  put(" personas.");
  Obten_Mapa_Ciudades(L,MC);
  Escribir_Mapa(MC);
  put_line("MAPA CARGADO!");

  New_Line;
  put_line("Cargar fichero con una persona"); Cargar_Personas("personas1.txt", L); -- S�lo 1
  put("2.) Se han cargado: ");
  Put(L.Cont, 0);
  put(" personas.");
  Obten_Mapa_Ciudades(L,MC);
  Escribir_Mapa(MC);
  put_line("MAPA CARGADO!");
  
  New_Line;
  put_line("Cargar fichero con 6 personas"); Cargar_Personas("personas6.txt", L); -- A medias
  put("3.) Se han cargado: ");
  Put(L.Cont, 0);
  put(" personas.");
  Obten_Mapa_Ciudades(L,MC);
  Escribir_Mapa(MC);

  New_Line;
  put_line("Cargar fichero con 18 personas, el maximo"); Cargar_Personas("personasMuchas.txt", L); -- lleno
  put("4.) Se han cargado: ");
  Put(L.Cont, 0);
  put(" personas.");
  Obten_Mapa_Ciudades(L,MC);
  Escribir_Mapa(MC);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  

end Mapa_Ciudades_prueba;