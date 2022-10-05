with ada.text_IO, ada.integer_text_IO;
use ada.text_IO, ada.integer_text_IO;



procedure buscar_multiplos is

  num, multiplo :integer;
  --es_multiplo : boolean := false;

begin

  put("Introduce un numero para buscar sus multiplos: ");
  get(num);
  new_line;
  Put("Introduce mas numeros para buscar su multiplo: ");
  get(multiplo);
  
  while multiplo mod num /= 0 and then not End_Of_File loop
    get(multiplo);
  end loop;

  if (multiplo mod num = 0) then 
    put("Existe un multiplo en la secuencia");
  else
    put("NO existe multipllo en la secuencia");
  end if;


end buscar_multiplos;