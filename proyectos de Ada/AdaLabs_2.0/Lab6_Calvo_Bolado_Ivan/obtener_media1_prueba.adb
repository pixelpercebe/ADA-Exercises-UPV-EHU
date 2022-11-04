with ada.float_text_IO, Tipos_Lab6, ada.text_IO, obtener_media1; use ada.float_text_IO,Tipos_Lab6, ada.text_IO;


procedure obtener_media1_prueba is

cuadrada: T_Matriz1(1..3,1..3) :=((1,2,3),(5,6,7),(8,9,10)); 
no_cuadrada: T_Matriz1(3..5,1..5) :=((1,2,3,4,5),(6,7,8,9,10),(11,12,13,14,15)); 

begin


Put(obtener_media1(cuadrada),0,2,0);
new_line;
Put(obtener_media1(no_cuadrada),0,2,0);

end obtener_media1_prueba;

--casos dde pueba
--caso1 (una matriz cuadrada) -> ((1,2,3),(5,6,7),(8,9,10)) = 5.67
--caso2 (una matriz no cuadrada) -> ((1,2,3,4,5),(6,7,8,9,10),(11,12,13,14,15)) = 8