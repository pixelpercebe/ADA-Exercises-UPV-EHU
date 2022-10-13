with ada.integer_text_IO,ada.text_IO,esta_digito;
use ada.integer_text_IO,ada.text_IO;

procedure todos_digitos_prueba is

--Especificacion
--entrada: un digito entero , dig y una secuencia de enteros, {num} (EE)
--pre: 0 < dig < 10 y 0 < {num}
--salida: Un booleano (SE)
--post: El valor booleano nos indicara si el digito dado se encuentra en en numero de la secuencia introducido
  
  num : integer;
  dig: integer;

begin

  put_line("que digito buscas en la secuencia de numeros?");
  get(dig);
  put_line("Introduce la secuencia en la que quieres buscar este digito");

  while not end_of_file loop
    Get(num);
    put_line(esta_digito(num,dig)'img);
  end loop;
  
end todos_digitos_prueba;

--casos de prueba:
--caso1 (1 iteracion) --> 4 y {4} = true
--caso2 (2 iteraciones) --> 5 y {6,12} = false
--caso3 (varias iteraciones) --> 8 y {12, 1, 66, 32} = false 
--caso4 (muchas itearaciones) --> 77 y {14, 98, 761, 9, 14, 126, 1414, 77} = true