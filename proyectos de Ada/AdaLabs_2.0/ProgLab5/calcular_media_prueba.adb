with ada.float_text_IO,ada.text_IO, calcular_media, tipos_lab5,ada.integer_text_IO;
use ada.float_text_IO,ada.text_IO, tipos_lab5, ada.integer_text_IO;

procedure calcular_media_prueba is
  V1: t_enteros(1..0);
  V2: t_enteros(1..6):=(1,2,3,4,5,6);
  V3: t_enteros(1..10):=(1,3,5,7,9,11,13,15,17,19);
  v4: t_enteros(1..10):=(2,4,6,8,10,12,14,16,18,20);
  impar,par : float;

begin

  calcular_media(V1,impar,par);
  Put(impar,0,2,0);
  new_line;
  put(par,0,2,0);
  new_line;
  calcular_media(V2,impar,par);
  Put(impar,0,2,0);
  new_line;
  put(par,0,2,0);
  new_line;
  calcular_media(V3,impar,par);
  Put(impar,0,2,0);
  new_line;
  put(par,0,2,0);
  new_line;
  calcular_media(V4,impar,par);
  Put(impar,0,2,0);
  new_line;
  put(par,0,2,0);



end calcular_media_prueba;