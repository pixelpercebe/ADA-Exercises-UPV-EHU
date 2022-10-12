with ada.integer_text_IO,ada.text_IO,esta_digito;
use ada.integer_text_IO,ada.text_IO;

procedure todos_digitos_prueba is
  
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