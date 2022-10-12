with ada.integer_text_IO,ada.text_IO, es_primo;
use ada.integer_text_IO,ada.text_IO;


procedure cuantos_primos_prueba is

--ESPECIFICACION
--Entrada: Una secuencia, {num} (EE)
--Pre: 0 < num
--Salida: Un numero entero positivo, cont (SE)
--post: Cont indicara el numero de numeros primos de la secuencia {num}

num : integer;
cont : integer :=0;

begin

while not end_of_file loop
  Get(num);
  cont := cont + boolean'pos(es_primo(num)); --convierto el valor booleano en su equivalente valor numerico, true = 1 y false = 0
end loop;

put(cont,0);
end cuantos_primos_prueba;


--casps de prueba:
--caso1 (numero 1) --> {1 } =
--caso2 (secuencia de primos) --> {1, 2, 3, 5 } =
--caso3 (secuencia larga numeros pequeños) --> {1, 2, 3, 4, 5, 6, 7, 8, 9} =
--caso4 (secuencia larga de numeros grandes) --> {22, 5614, 13, 21, 1546, 98634} =