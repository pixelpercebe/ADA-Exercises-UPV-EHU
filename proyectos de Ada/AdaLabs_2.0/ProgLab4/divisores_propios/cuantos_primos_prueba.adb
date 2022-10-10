with ada.integer_text_IO,ada.text_IO, es_primo;
use ada.integer_text_IO,ada.text_IO;


procedure cuantos_primos_prueba is

num : integer;
cont : integer :=0;

begin

while not end_of_file loop
  Get(num);
  cont := cont + boolean'pos(es_primo(num)); --convierto el valor booleano en su equivalente valor numerico, true = 1 y false = 0
end loop;

put(cont,0);
end cuantos_primos_prueba;