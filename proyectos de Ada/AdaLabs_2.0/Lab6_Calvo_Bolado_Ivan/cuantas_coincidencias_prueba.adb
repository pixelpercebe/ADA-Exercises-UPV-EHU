with ada.Integer_text_IO,tipos_lab6,Cuantas_Coincidencias,ada.text_IO;
use ada.Integer_text_IO,tipos_lab6,ada.text_IO;

procedure Cuantas_Coincidencias_prueba is

no_hay1 : T_Matriz1(4..5,1..5) := ((201,202,203,204,205),(206,207,208,209,210));
no_hay2 : T_Matriz2 (4..5):= (4 =>(1,2,3,4,5),5=>(6,7,8,9,10));
extremos1 : T_Matriz1 (20..21,1..5) :=
extremos2 : T_Matriz2 (20..21) :=
coincidencias : integer;


begin

Cuantas_Coincidencias(no_hay1,no_hay2,coincidencias);
put(coincidencias,0);


end Cuantas_Coincidencias_prueba;