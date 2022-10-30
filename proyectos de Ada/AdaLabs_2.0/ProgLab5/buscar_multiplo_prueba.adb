with ada.integer_text_IO,ada.text_IO, buscar_multiplos, tipos_lab5;
use ada.integer_text_IO,ada.text_IO, tipos_lab5;

procedure buscar_multiplo_prueba is

vacio: t_enteros(1..0);
ninguno:t_enteros(1..5) := (1,2,4,5,7);
principio: t_enteros(1..6):= (6,2,4,7,1,2);
medio: t_enteros(1..5):= (1,25,6,8,13);
final: t_enteros(1..7):= (1,14,5,8,10,16,18);

num:integer:= 3;

begin

put_Line(buscar_multiplos(num,vacio)'img);
put_Line(buscar_multiplos(num,ninguno)'img);
put_Line(buscar_multiplos(num,principio)'img);
put_Line(buscar_multiplos(num,medio)'img);
put_Line(buscar_multiplos(num,final)'img);


end buscar_multiplo_prueba;