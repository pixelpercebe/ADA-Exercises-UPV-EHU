with ada.text_IO,ada.integer_text_IO,ALista_Personas,persona; 
use ada.text_IO,ada.integer_text_IO,ALista_Personas,persona;



procedure Inserta_Persona_prueba IS

L: A_Personas;
P1: T_Persona;
aux: A_personas;
BEGIN
  P1.NombreApellidos.Nombre:= (OTHERS=> ' ');
  P1.NombreApellidos.Apellido1:= (OTHERS=> ' ');
  P1.NombreApellidos.Apellido2:= (OTHERS=> ' ');
  P1.NombreApellidos.nombre(1..5) := "Ziker";
  P1.NombreApellidos.Apellido1(1..6) := "Zuzaya";
  P1.NombreApellidos.Apellido2(1..6) := "Zamora";
  P1.domicilio := Irun;
  P1.Edad := 19;
  aux := new t_nodo'(P1,NULL);
  
  put_line("Cargar fichero vacio y añadimos a Ziker"); Cargar_Personas("personas0.txt", L); -- Vac�o
  Inserta_Persona(L,aux);
  Put_Line("La lista de personas esta formada por:");
  Escribir_Personas(L);
  
  New_Line;
  put_line("Cargar fichero con una persona y añadimos a Ziker"); Cargar_Personas("personas1.txt", L); -- S�lo 1
  Inserta_Persona(L,aux);
  Put_Line("La lista de personas esta formada por:");
  Escribir_Personas(L);  
  
  New_Line;
  put_line("Cargar fichero con 6 personas y añadimos a Ziker"); Cargar_Personas("personas6.txt", L); -- A medias
  Inserta_Persona(L,aux);
  Put_Line("La lista de personas esta formada por:");
  Escribir_Personas(l);
  
  New_Line;
  put_line("Cargar fichero con 18 personas y añadimos a Ziker"); Cargar_Personas("personasMuchas.txt", L); -- Muchos
  Put_Line("La lista de personas esta formada por:");
  Inserta_Persona(L,aux);
  Escribir_Personas(L);
end Inserta_persona_prueba;