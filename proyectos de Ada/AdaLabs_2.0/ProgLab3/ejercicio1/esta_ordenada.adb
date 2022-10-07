with ada.text_IO,  ada.integer_text_IO;
use ada.text_IO, ADA.integer_text_IO;


procedure esta_ordenado is

--ESPECIFICACION
--ENTRADA: Una secuencia de enteros, num (EE)
--SALIDA: Un booleano, es_creciente (SE)
--POST: Es creciente nos indicara si la secuencia de enteros esta ordenada crecientemente.

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

--casos de prueba:
--caso1, dos iteracion: {8,3} --> TRUE
--caso2, tres iteraciones: {-5,-3, -6} --> TRUE
--caso3, varias iteraciones : {1,45,56,89,102,109,3} --> FALSE
--caso4, muchas iteraciones : {-5,-3,1,45,56,89,102,109,102} --> FALSE