with ada.text_IO, ada.integer_text_IO;
use ada.text_IO,ada.integer_text_IO;

procedure calcular_triangular is
--especificacion
--entrada:
--pre:
--pos:
--salida:

num :integer;
result : integer := 0;
begin
get(num);
for i in 0..num loop
  result := result + i;
end loop;
put(result,0);
end calcular_triangular;