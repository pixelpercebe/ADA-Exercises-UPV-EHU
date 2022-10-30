with ada.float_text_IO,ada.text_IO, calcular_media, tipos_lab5,ada.integer_text_IO;
use ada.float_text_IO,ada.text_IO, tipos_lab5, ada.integer_text_IO;

procedure calcular_media_prueba is
  V1: t_enteros(1..0);
  V2: t_enteros(1..4):=(1,2,3,4);
  V3: t_enteros(1..10):=(1,3,52,217,9,1145,132,1561,1778,1952);
  v4: t_enteros(1..10):=(2,4,6,8,10,12,14,16,18,20);
  v5: t_enteros(1..10):=(1,3,5,7,9,11,13,15,17,19);
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
  new_line;
  calcular_media(V5,impar,par);
  Put(impar,0,2,0);
  new_line;
  put(par,0,2,0);



end calcular_media_prueba;

--CASOS DE PRUEBA
--CASO1 (media vacio) :         () -> par=0.00, impar= 0.00
--CASO2 (media pocos numeros):  (1,2,3,4) -> par = 3, imapr = 2
--CASO3 (media muchos numeros): (1,3,52,217,9,1145,132,1561,1778,1952) -> par=978.50 , impar=489.33
--CASO4 (media solo pares) :    (2,4,6,8,10,12,14,16,18,20) -> par= 11.00 , impar= 0.00
--CASO5 (media solo impares) :  (1,3,5,7,9,11,13,15,17,19) -> par=0.00 ,impar= 10.00