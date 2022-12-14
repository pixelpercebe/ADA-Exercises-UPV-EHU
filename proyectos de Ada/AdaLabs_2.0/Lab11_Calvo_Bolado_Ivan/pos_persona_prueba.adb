WITH ADA.Text_IO,ada.integer_text_IO,ALista_Personas,persona; use ada.integer_text_IO, ada.Text_IO,ALista_Personas,persona;


procedure Pos_Persona_prueba is

act:A_Personas;
ant:A_Personas;
L  :A_Personas;
nombrePer : T_Nombre;

BEGIN
nombrePer.nombre := (others => ' ');
nombrePer.nombre(1..7) := "Roberto";
put(nombrePer.nombre);
nombrePer.apellido1 := (others => ' ');
nombrePer.Apellido1(1..7) := "Alberdi";
put(nombrePer.Apellido1);
nombrePer.apellido2 := (others => ' ');
nombrePer.Apellido2(1..8) := "zarasola";
put(nombrePer.Apellido2);


new_line;
new_line;
Cargar_Personas("Personas6.txt",L);
put_line(comparar(L.persona.NombreApellidos,nombrePer)'img);
Escribir_Personas(L);
Pos_Persona(L,nombrePer,ant,act);
Put_Line("Personas ant y act:");
Escribir_Persona(ant.persona);
Escribir_Persona(act.persona);


end Pos_Persona_prueba;