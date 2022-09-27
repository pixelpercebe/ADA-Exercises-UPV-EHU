with ada.text_IO, ada.integer_text_IO;
use ada.text_IO, ada.integer_text_IO;
--ESPECIFICACIÓN:
--ENTRADA: 1 numero entero.
--PRECONDICIÓN: Los divisores seran menores que el numero de entrada
--SALIDA: un numero entero, num (SE)
--POSTCONDICIÓN: sum sera la suma de divisores (sum  = divisores + sum).
procedure escribir_divisores is
num,sum: integer;
Begin
sum := 0;
Put("Introduce un numero: ");
Get(num);
Put_Line("Esta es la suma de todos los divisores: ");
  for divisores in 1..num-1 loop
    if num rem divisores = 0 then
      sum := sum + divisores;
    end if;
  end loop;
  put(sum);

end escribir_divisores;