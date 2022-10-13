with ada.integer_text_IO, ada.text_IO, que_digito_izquierda;
use ada.integer_text_IO, ada.text_IO;

procedure que_digito_izquierda_prueba is

begin

  put(que_digito_izquierda(23456,1),0);
  put(que_digito_izquierda(23456,1),0);
  put(que_digito_izquierda(23456,1),0);
  put(que_digito_izquierda(23456,1),0);

end que_digito_izquierda_prueba;

--casos de prueba:
--caso1 (un solo numero) -->  5 y 1 = 5
--caso2 (el numeoro de la izq) --> 7894 y 1 = 7 
--caso3 (el numero izq la der) --> 
--caso4 (el numero del la izq) -->