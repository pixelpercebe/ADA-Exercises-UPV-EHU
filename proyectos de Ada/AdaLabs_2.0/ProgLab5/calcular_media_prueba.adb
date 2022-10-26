with ada.float_text_IO,ada.text_IO, calcular_media, tipos_lab5;
use ada.float_text_IO,ada.text_IO, tipos_lab5;

procedure calcular_media_prueba is
  V1: t_enteros(1..0);
  V2: t_enteros(1..6):=(1,2,3,4,5,6);
  V3: t_enteros(1..10):=(1,3,5,7,9,11,13,15,17,19);
  impar,par : float;

begin



  calcular_media(V2,impar,par);
  Put(impar,0,2,0);
  new_line;
  put(par,0,2,0);


end calcular_media_prueba;