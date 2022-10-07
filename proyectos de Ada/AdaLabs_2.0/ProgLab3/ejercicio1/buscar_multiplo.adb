with ada.text_IO, ada.integer_text_IO;
use ada.text_IO, ada.integer_text_IO;



procedure buscar_multiplos is

  num, multiplo :integer;
  es_multiplo : boolean := false;

begin

  put("Introduce un numero para buscar sus multiplos: ");
  get(num);
  Put("Introduce mas numeros para buscar su multiplo: ");
  
  while multiplo mod num /= 0 and then not End_Of_File and then num /= 0 loop
    get(multiplo);
  end loop;

  if multiplo mod num = 0 then
    es_multiplo := true;
  end if;

  if (num = 0 and then multiplo = 0) then
    es_multiplo := true;
  end if;

  Put(es_multiplo'img);

end buscar_multiplos;