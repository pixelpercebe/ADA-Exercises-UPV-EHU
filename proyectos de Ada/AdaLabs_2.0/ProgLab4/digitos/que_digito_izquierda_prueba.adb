with ada.integer_text_IO, ada.text_IO, que_digito_izquierda;
use ada.integer_text_IO, ada.text_IO;

procedure que_digito_izquierda_prueba is

begin

  put(que_digito_izquierda(5,1),0); --caso1
  new_line;
  put(que_digito_izquierda(7894,1),0); --caso2
  new_line;
  put(que_digito_izquierda(23456,3),0); --caso3
  new_line;
  put(que_digito_izquierda(91556,5),0); --caso4

end que_digito_izquierda_prueba;

--casos de prueba:
--caso1 (un solo numero) -->  5 y 1 = 5
--caso2 (el numeoro de la izquierda) --> 7894 y 1 = 7 
--caso3 (el numero del centro) -->  23456,3 = 4
--caso4 (el numero del la derecha) --> 91556,5 = 6