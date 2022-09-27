With Ada.integer_text_IO, Ada.text_IO;
use Ada.Integer_Text_IO, Ada.text_IO;

procedure multiplos_divisores is
--Especificacion
--ENTRADA: Dos naturales diferentes, num1 y num2 (EE)
--PRE: num1 > num2
--SALIDA: una serie de numeros naturales. (SE)
--POST:los numeros estaran entre num1 y num2 y seran divisores de num1 y multiplos de num2;

Num1,num2,aux : Integer;

begin
Put("Introduce dos numeros naturales diferentes: ");
get(aux);
Get (num2);
Num1 := integer'max(aux,num2);
num2 := integer'min(aux,num2);

if num2 = 0 then
  num1 := 0;
  put("no hay multiplos de 0");
end if;

for n in num2..num1-1 loop
  if (num1 mod n = 0) and (n mod num2 = 0) then
    put(integer'image(n) & " ");
  end if;
end loop;

end multiplos_divisores;

--CASOS DE PRUEBA
--CASO1:0 y 10 Salida: No hay multiplos de 0
--CASO2:1 y 24 salida: 1 2 3 4 6 8 12
--CASO3:7600 y 2 salida: 2  4  8  10  16  20  38  40  50  76  80  100  152  190  200  304  380  400  760  950  1520  1900  3800 
--CASO4: 50 y 400 salida: 50  100  200
--CASO5: 1 Y 11 salida: 1