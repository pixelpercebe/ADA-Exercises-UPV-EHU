with ada.float_text_IO, Tipos_Lab6, obtener_media1; use ada.float_text_IO,Tipos_Lab6;


procedure obtener_media1_prueba is

cuadrada: T_Matriz1(1..3,1..3) :=((1,2,3),(5,6,7),(8,9,10)); 
no_cuadrada: T_Matriz1(3..5,1..5) :=((1,2,3),(5,6,7),(8,9,10),(11,12,13),(14,15,16)); 

begin

Put(obtener_media1(cuadrada));

end obtener_media1_prueba;