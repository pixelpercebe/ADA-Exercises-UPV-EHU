with ada.integer_text_IO, ada.text_IO,contar_digitos;
use ada.integer_text_IO,ada.text_IO;

procedure contar_digitos_prueba is

begin

  put(contar_digitos(1),0); --caso1
  New_Line;
  put(contar_digitos(85),0); --caso2
  New_line;
  put(contar_digitos(983),0); --caso3
  New_Line;
  put(contar_digitos(14151616),0); --caso4

end contar_digitos_prueba;

--casos de prueba:
--caso1 (un numero pequeño) --> 2 = 1
--caso2 (un numero meidano) --> 85 = 2
--caso3 (un numero grande) --> 983 = 3
--caso4 ( un numero muy grande) --> 14151616 = 8