with ada.text_IO, ada.integer_text_IO;
use ada.text_IO, ada.integer_text_IO;



procedure buscar_multiplos is

--especificacion
--entrada: Un numero entero, num y una secuencia de enteros, multiplo (EE)
--salida: un booleano, es_multiplo;
--pos: es_multilplo nos indicara si en la secuencia existe por lo menos un multiplo de num, siendo todos los numeros multiplos de 0 (y al reves).

  num, multiplo :integer;
  es_multiplo : boolean := false;

begin

  put("Introduce un numero para buscar sus multiplos: ");
  get(num);
  Put("Introduce mas numeros para buscar su multiplo: ");
  
  while multiplo mod num /= 0 and then not End_Of_File and then num /= 0 loop
    get(multiplo);
  end loop;

  if  multiplo mod num = 0 then
    es_multiplo := true;
  end if;

  if (num = 0 and then multiplo = 0) then
    es_multiplo := true;
  end if;

  Put(es_multiplo'img);

end buscar_multiplos;


--casos de prueba:
--caso1, no entra en el bucle: 0 y {0} --> TRUE
--caso2, entra una vez: 4 y {8} --> TRUE
--caso3, sale por END_OF_FILE: 5 y {1,2,44,8,11} --> FALSE
--caso4, varias iteraciones : 6 y {1,45,2,3,89,109,0} --> TRUE