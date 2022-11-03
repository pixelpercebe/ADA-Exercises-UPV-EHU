with ada.Integer_text_IO,ada.text_IO,Tipos_Lab6, Posicion_Numero2; 
use ada.text_IO, ada.Integer_text_IO, Tipos_Lab6;

procedure Posicion_Numero2_prueba is

una_pos : T_Matriz2 (1..1) := (1 => (1,2,3,4,5));
I : Integer;
j : Integer;
begin

Posicion_Numero2(3,una_pos,I,J);

put(I);
new_line;
put(j);

end Posicion_Numero2_prueba;