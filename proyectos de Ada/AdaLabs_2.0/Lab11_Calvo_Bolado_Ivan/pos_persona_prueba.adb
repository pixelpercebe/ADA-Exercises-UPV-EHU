WITH ADA.Text_IO,ada.integer_text_IO,ALista_Personas,persona; use ada.integer_text_IO, ada.Text_IO,ALista_Personas,persona;


procedure Pos_Persona_prueba is

act:A_Personas;
ant:A_Personas;
L  :A_Personas;
nombrePer : T_Nombre;

BEGIN

nombrePer.nombre := "Roberto";
nombrePer.nombre := (others => ' ');
nombrePer.Apellido1 := "Alberdi";
nombrePer.apellido1 := (others => ' ');
nombrePer.Apellido2 := "Macias";
nombrePer.apellido2 := (others => ' ');


Cargar_Personas("Personas6.txt",L);
Escribir_Personas(L);
Pos_Persona(L,nombrePer,ant,act);
Put_Line("Personas ant y act:");
Escribir_Persona(ant.persona);
Escribir_Persona(act.persona);


end Pos_Persona_prueba;