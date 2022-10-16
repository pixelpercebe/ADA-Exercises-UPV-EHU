with ada.integer_text_IO, ada.text_IO;
use ada.integer_text_IO, ada.text_IO;

function suma_digitos (N,O,J : integer) return integer is

suma : integer := 0;

begin

if O <= j then
  for i in O..J loop
    suma := suma + (N/10**(i-1)) mod 10;
  end loop;
end if;
return suma;
end suma_digitos;