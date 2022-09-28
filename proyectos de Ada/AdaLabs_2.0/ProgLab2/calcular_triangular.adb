with ada.text_IO, ada.integer_text_IO;
use ada.text_IO,ada.integer_text_IO;

procedure calcular_triangular is
--especificacion
--entrada:Un numero positivo, num (EE)
--pre: num cumplira que 0 < num <= 65535
--pos: el resultado sera el número triangular de num, calculado simulando el funcionamiento del sumatorio con sumas sucesivas.
--salida: Un numero natural, result (SE)

num :integer;
result : integer := 0;
begin
put("Introduce el numero del que quieres calcular el triangular: ");
get(num);
for i in 0..num loop
  result := result + i;
end loop;
put(result,0);
end calcular_triangular;

--CASOS DE PRUEBA:
--caso1, numero pequeño: 3 ---> 6
--caso3, numero mediano: 5789 ---> 16759155
--caso4: numero mediano: 30000 ---> 450015000
--caso5: numero grande: 65535 ---> 2147450880