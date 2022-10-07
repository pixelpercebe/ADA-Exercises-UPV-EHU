with ada.text_IO, ada.integer_text_IO,ada.float_text_IO;
use ada.text_IO, ada.integer_text_IO,ada.float_text_IO;

procedure calcular_medias is
--especificacion
--entrada: una secuencia de numeros enteros, num (EE)
--salida: dos numeros reales, media_impar y media_par (SE)
--pos: media_impar y media_par son las medias aritmeticas de los numeros pares e impares de la secuencia.

  num : integer;
  cont_par, cont_impar, suma_par, suma_impar: integer := 0;
  media_impar , media_par : float := 0.00;

begin
  put("Introduce los datos para calcular la medias: ");
  
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
  media_impar := float(suma_impar) / float(cont_impar);
  media_par := float(suma_par) / float(cont_par);

  put("media impares: ");
  put(media_impar,0,2,0);
  new_line;
  put("media pares: ");
  put(media_par,0,2,0);

end calcular_medias;

--casos de prueba:
--caso1 una iteración: {1} --> media impares: 1.00, media pares: 0.00
--caso2: dos iteraciones {1,2} --> media impares: 1.00, media pares: 2.00
--caso3: varias iteraciones {4,12,3,6,5,2,8} --> media impares: 13.67, media pares: 8.00
--caso4: numeros negativos : {-4,-12,-3,-1,-5,5,2,8,3} --> media impares: -0.20, media pares: -1.50