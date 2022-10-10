with ada.text_IO,ada.integer_text_IO;
use ada.text_IO,ada.integer_text_IO;

function contar_divisores_propios (num: in integer) return integer is 

cont : integer := 0;

begin
for i in 2..num-1 loop
  if num mod i = 0 then
    cont := cont + 1;
  end if;
end loop;

return cont;

end contar_divisores_propios;