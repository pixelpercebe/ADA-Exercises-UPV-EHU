WITH Ada.Integer_Text_IO,Ada.Text_IO;
USE Ada.Integer_Text_IO,Ada.Text_IO;

procedure prueba is

x: boolean;
num: integer;

BEGIN

get(num); --coge un numero (entero)
num := num mod 10; --se divide entre 10, solo si el resto es 0 sera multiplo de 10, y se guarda el resto en la variable.
x := num = 0; --Se compara el resto con 0, si se cumple la igualdad el resultado = TRUE, si no se cumple = FALSE
put("numero multiplo de 10?: " & boolean'image(x)); --lo escribe todo en forma de String.

end prueba;