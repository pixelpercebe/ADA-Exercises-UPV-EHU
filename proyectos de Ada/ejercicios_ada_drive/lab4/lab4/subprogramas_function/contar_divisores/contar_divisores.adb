with ada.text_IO, ada.integer_text_IO;
use ada.text_IO, ada.integer_text_IO;
FUNCTION Contar_Divisores (N:IN Integer)RETURN Integer IS
--ESPECIFICACIÓN:
--POSTCONDICIÓN: devolvera la cantidad de divisores propios de N.
cont: integer;
BEGIN
  cont := 0;
  for divisores in 1..N-1 loop
    if N rem divisores = 0 then
      cont := cont + 1;
    END IF;
  end loop;
return(cont);
end contar_divisores;