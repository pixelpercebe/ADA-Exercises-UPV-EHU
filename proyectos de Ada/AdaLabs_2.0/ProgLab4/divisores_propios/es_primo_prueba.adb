with ada.integer_text_IO, ada.text_IO,es_primo;
use ada.integer_text_IO,ada.text_IO;


procedure es_primo_prueba is

begin

Put(es_primo(1)'img); --caso1
New_Line;
Put(es_primo(5)'img); --caso2
New_Line;
Put(es_primo(89)'img); --caso3
New_Line;
Put(es_primo(243)'img); --caso4
New_Line;
Put(es_primo(8191)'img); --caso5


end es_primo_prueba;

--Casos de prueba:
--caso1 (el uno) --> false
--caso2 (un numero primo) --> true 
--caso3 (un numero pequeño) --> true
--caso4 (un numero mediano) --> false
--caso5 (un numero grande primo, muchas iteraciones) -->  true