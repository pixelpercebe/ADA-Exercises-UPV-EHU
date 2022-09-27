with ada.text_IO, ada.integer_text_IO;
use ada.text_IO,ada.integer_text_IO;

procedure escribir_digitos2 is
--Especificacion

num : integer;
cont :integer := 0;

begin
put("introduce un numero: ");
get(num);

for n in reverse integer'image(num)'first..integer'image(num)'last loop
  
  cont := cont + 1;
  put(integer'image(num)(n));
  
end loop;

put("numero de digitos = " & integer'image(cont-1)); --no entiendo porque le suma 1

end escribir_digitos2;