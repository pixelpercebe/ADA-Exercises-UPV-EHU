with ada.text_IO,  ada.integer_text_IO;
use ada.text_IO, ADA.integer_text_IO;


procedure esta_ordenado is

--ESPECIFICACION
--ENTRADA:
--PRE:
--SALIDA:
--POST:

num : integer := integer'first;
prev : integer := integer'first;
es_creciente : boolean := true;

begin

while prev <= num and then  not end_of_file loop
    prev := num;
    get(num);
end loop; 

if prev > num then
  es_creciente := False;
end if;

put(es_creciente'img);
end  esta_ordenado;