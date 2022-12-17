WITH ADA.Text_IO,ada.integer_text_IO,ALista_Personas,persona; use ada.integer_text_IO, ada.Text_IO,ALista_Personas,persona;


procedure Pos_Persona_prueba is

act:A_Personas;
ant:A_Personas;
L  :A_Personas;

BEGIN

new_line;
new_line;
Cargar_Personas("Personas6.txt",L);
put_line(comparar(L.persona.NombreApellidos,L.sig.persona.NombreApellidos)'img);
Escribir_Personas(L);
Pos_Persona(L,L.sig.persona.NombreApellidos,ant,act);
Put_Line("Personas ant y act:");
Escribir_Persona(ant.persona);
Escribir_Persona(act.persona);


end Pos_Persona_prueba;