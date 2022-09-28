with ada.text_IO, ada.integer_text_IO;
use ada.text_IO,ada.integer_text_IO;

procedure calcular_triangular is
--especificacion
--entrada:Un numero natural, num (EE)
--pre: num cumplira que 0 < num <= 65535
--pos: el resultado sera el número triangular de num, calculado simulando el funcionamiento del sumatorio con sumas sucesivas.
--salida: Un numero natural, result (SE)

num :integer;
result : integer := 0;
begin
get(num);
for i in 0..num loop
  result := result + i;
end loop;
put(result,0);
end calcular_triangular;