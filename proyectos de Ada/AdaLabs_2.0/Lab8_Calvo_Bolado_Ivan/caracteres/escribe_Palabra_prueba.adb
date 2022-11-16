WITH palabras;use palabras;
procedure Escribe_Palabra_prueba is

L:t_palabra;

begin
  l.letras(1..4):=("hola");
  l.letras(5..max):=(others=>' ');
  l.cont:= 4;

  escribe_Palabra(L);



end Escribe_Palabra_prueba;