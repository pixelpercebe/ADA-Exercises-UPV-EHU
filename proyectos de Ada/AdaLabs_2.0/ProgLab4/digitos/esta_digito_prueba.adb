with ada.integer_text_IO,ada.text_IO,esta_digito;
use ada.integer_text_IO, ada.text_IO;


procedure esta_digito_prueba is

begin

  put_line(esta_digito(3,3)'img); --caso1
  put_line(esta_digito(876,8)'img); --caso2
  put_line(esta_digito(62184,1)'img); --caso3
  put_line(esta_digito(11245,5)'img); --caso4
  put_line(esta_digito(0982,3)'img); --caso5

end esta_digito_prueba;

--casos de prueba:
--caso1 (el unico difgito es el buscado) --> 3,3 = true 
--caso2 (el digito esta al principio) --> 876,8 = true 
--caso3 (el digito esta en el centro) --> 62184,1 = true
--caso4 (el digito esta al final) --> 11245,5 = true
--caso5 (el digito no esta) --> 0982,3 = false