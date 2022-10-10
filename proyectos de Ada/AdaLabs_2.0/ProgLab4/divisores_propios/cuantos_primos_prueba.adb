with ada.integer_text_IO,ada.text_IO, es_primo;
use ada.integer_text_IO,ada.text_IO;


procedure cuantos_primos_prueba is

num : integer;
cont : integer :=0;

begin

while not end_of_file loop
  Get(num);
  if es_primo(num) then
    cont := cont + 1;
  end if;
end loop;

put(cont,0);
end cuantos_primos_prueba;