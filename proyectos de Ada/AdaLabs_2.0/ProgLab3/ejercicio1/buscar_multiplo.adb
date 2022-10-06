with ada.text_IO, ada.integer_text_IO;
use ada.text_IO, ada.integer_text_IO;



procedure buscar_multiplos is

  num, multiplo :integer;
  es_multiplo : boolean := false;

begin

  put("Introduce un numero para buscar sus multiplos: ");
  get(num);
  Put("Introduce mas numeros para buscar su multiplo: ");
  get(multiplo);
  
  while num /= 0 and then not es_multiplo and then not End_Of_File loop
    get(multiplo);
    es_multiplo := multiplo mod num = 0;
  end loop;

  if (num = 0 and then multiplo = 0) then
    es_multiplo := true;
  else
    es_multiplo := false;
  end if;

end buscar_multiplos;