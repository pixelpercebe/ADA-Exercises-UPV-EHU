with ada.Integer_text_IO,ada.text_IO,Tipos_Lab6, Posicion_Numero2; 
use ada.text_IO, ada.Integer_text_IO, Tipos_Lab6;

procedure Posicion_Numero2_prueba is

una_posi : T_Matriz2 (1..1) := (1 => (1,2,3,4,5));
simetrico : T_Matriz2(14..16) := (14 =>(1,2,3,4,5),15=>(6,7,8,9,10),16=>(11,12,13,14,15));
no_esta : T_Matriz2(4..5):= (4=>(156,21,255,5,1),5=>(6,9,10,8,65));
I : Integer;
j : Integer;
begin

Posicion_Numero2(3,una_posi,I,J);
Put_line("El numero se encuentra en la linea:" & I'img & " y en la columna:" & j'img);
Posicion_Numero2(3,simetrico,I,J);
Put_line("El numero se encuentra en el array:" & I'img & " y en la posicion:" & j'img);
Posicion_Numero2(0,simetrico,I,J);
Put_line("El numero se encuentra en el array:" & I'img & " y en la posicion:" & j'img);

end Posicion_Numero2_prueba;