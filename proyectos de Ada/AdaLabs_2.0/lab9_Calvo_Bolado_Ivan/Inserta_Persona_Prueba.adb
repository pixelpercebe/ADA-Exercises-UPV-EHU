with ada.text_IO,ada.integer_text_IO,Lista_Personas,persona; 
use ada.text_IO,ada.integer_text_IO,lista_personas,persona;



procedure Inserta_Persona_prueba IS

L: T_Lista_Personas;
P1: t_persona;

BEGIN

  P1.NombreApellidos.Nombre:= (OTHERS=> ' ');
  P1.NombreApellidos.Apellido1:= (OTHERS=> ' ');
  P1.NombreApellidos.Apellido2:= (OTHERS=> ' ');
  P1.NombreApellidos.nombre(1..5) := "Ziker";
  P1.NombreApellidos.Apellido1(1..6) := "Zuzaya";
  P1.NombreApellidos.Apellido2(1..6) := "Zamora";
  P1.domicilio := Irun;
  P1.Edad := 19;
  
  put_line("Cargar fichero vacio"); Cargar_Personas("personas0.txt", L); -- Vac�o
  Inserta_Persona(L,p1);
  Put_Line("La lista de personas esta formada por:");
  Escribir_Personas(L);
  Put(L.Cont, 0);
  Put_Line(" personas");
  
  New_Line;
  put_line("Cargar fichero con una persona"); Cargar_Personas("personas1.txt", L); -- S�lo 1
  Inserta_Persona(L,p1);
  Put_Line("La lista de personas esta formada por:");
  Escribir_Personas(L);
  Put(L.Cont, 0);
  Put_Line(" persona");
  
  New_Line;
  put_line("Cargar fichero con 6 personas"); Cargar_Personas("personas6.txt", L); -- A medias
  Inserta_Persona(L,p1);
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
end Inserta_persona_prueba;