with ada.text_IO, tipos_lab5, reg_temperaturas;
use ada.text_IO,tipos_lab5;



procedure reg_temperaturas_prueba is

iguales :   t_temperaturas := (10.5,10.5,10.5,10.5,10.5,10.5,10.5);
principio : t_temperaturas := (10.5,12.0,9.7,4.0,3.5,11.9,7.8);
medio :     t_temperaturas := (12.5,16.5,22.2,24.5,18.9,12.4,10.2);
final :     t_temperaturas := (12.5,16.5,22.2,21.5,23.9,26.4,27.2);

begin 

put_line(reg_temperaturas(iguales)'img);
put_line(reg_temperaturas(principio)'img);
put_line(reg_temperaturas(medio)'img);
put_line(reg_temperaturas(final)'img);

end reg_temperaturas_prueba;

--CASOS DE PRUEBA
--CASO1 (todos iguales) : (10.5,10.5,10.5,10.5,10.5,10.5,10.5)  = Lunes
--CASO2 (mayor al principio) : (10.5,12.0,9.7,4.0,3.5,11.9,7.8) = Martes
--CASO3 (mayor en el medio) :  (12.5,16.5,22.2,24.5,18.9,12.4,10.2) = Jueves
--CASO4 (mayor al final) : (12.5,16.5,22.2,21.5,23.9,26.4,27.2) = Domingo