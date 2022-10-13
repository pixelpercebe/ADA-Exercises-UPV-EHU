with contar_digitos, que_digito_izquierda;

with ada.integer_text_IO,ada.text_IO;
use ada.integer_text_IO, ada.text_IO;

function esta_digito (num, dig : integer) return boolean is

--ESPECIFICACION
--Pre: 0 < num  y 0 < dig
--post: devolvera si un digito se encuentra en el numero dado

  cont : integer := 1;
  esta: boolean := false;

begin

  while cont < contar_digitos(num) and then que_digito_izquierda(num, cont) /= dig loop
    cont := cont + 1;
  end loop;  

  esta := que_digito_izquierda(num, cont) = dig;
  return esta;

end esta_digito;