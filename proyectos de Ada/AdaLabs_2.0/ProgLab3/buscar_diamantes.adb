with ada.text_IO, ada.integer_text_IO;
use ada.text_IO,ada.integer_text_IO;


procedure buscar_diamantes is

--ESPECIFICACION
--ENTRADA: Un String, mina_num (EE)
--PRE: El string contendra un numero, 0<=mina_num<=2
--SALIDA: Un integer, cont_diamantes (SE)
--POST: cont diamantes nos indicara el numero de diamantes que hay en el fichero, un diamante es : <> y estaran en una sola linea.

  cont_diamantes: integer := 0;
  F : File_Type ;
  nom_fich : String (1..9);
  char_actual,char_prev,mina_num: String(1..1);
  
begin
  put("En que mina quieres minar diamantes? introduce el numero de la mina 0, 1 o 2: ");
  get(mina_num);

  nom_fich := "mina" & mina_num & ".txt";
  Put("Ha seleccionado la " & nom_fich(1..nom_fich'last-4));
  new_line;

  open(F,in_file, nom_fich);

  while not end_of_file(F) loop
    char_prev := char_actual;
    get(F,char_actual);
    if char_prev = "<" and then char_actual = ">" then
      cont_diamantes := cont_diamantes + 1;
    end if;
  end loop;

  put("numero de diamantes encontrados: ");
  put(cont_diamantes,0);
  close(F);

end buscar_diamantes;

--casos de prueba:
-- caso1: fichero vacio: mina0 --> 0
-- caso2: ningun diamante: mina1 --> 1
-- caso3: varios diamantes: mina2 --> 6
