with ada.text_IO, ada.integer_text_IO;
use ada.text_IO, ada.integer_text_IO;

procedure calcular_medias is
  num : integer;
  cont_par, cont_impar, suma_par, suma_impar: integer := 0;
  media_impar , media_par : float := 0.00;

begin

  while not end_of_file loop
    get(num);

    if (num mod 2 = 0) then
      suma_par := suma_par + num;
      cont_par := cont_par + 1;
    else
      suma_impar := suma_impar + num;
      cont_impar := cont_impar + 1;
    end if;

    end loop;
  media_impar := float(suma_impar) /float(cont_impar);
  media_par := float(suma_par) /float(cont_par);

  put("media impares: ");
  put(media_impar'img);
  new_line;
  put("media pares: ");
  put(media_par'img);

end calcular_medias;