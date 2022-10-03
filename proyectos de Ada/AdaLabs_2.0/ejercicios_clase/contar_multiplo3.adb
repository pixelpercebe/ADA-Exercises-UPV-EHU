with ada.text_IO, ada.integer_text_IO;
use ada.text_IO, ada.integer_text_IO;

procedure contar_multiplo3 is

--ESPECIFICACION
--ENTRADA: Secuencia de enteros, S = (s1..sn) (EE)
--PRE: n >= 0, para todo (1..n) si > 0
--SALIDA: 1 naturas, cont (SE)
--POST: Cont es la cantidad de multiplos de 3 en S

n : integer;
cont: integer := 0;

begin

while not end_of_file loop
  get(N);
  if N mod 3 = 0 then 
    cont := cont + 1;
  end if;
end loop;

put(cont,0);
end contar_multiplo3;