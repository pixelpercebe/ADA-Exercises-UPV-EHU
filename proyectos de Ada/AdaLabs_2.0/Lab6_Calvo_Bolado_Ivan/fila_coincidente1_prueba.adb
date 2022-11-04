with ada.integer_text_IO,tipos_lab6,Fila_Coincidente1,ada.text_IO; use ada.integer_text_IO,ada.text_IO,tipos_lab6;

procedure fila_coincidente1_prueba is

ninguna: T_Matriz1(8..10,3..4) := ((1,2),(23,89),(255,234));
una : T_Matriz1(4..5,2..3) := ((2,4),(others => 2));
todas :T_Matriz1(2..4,7..9) :=((others=>1),(others=>6),(others=>19));

begin

put(fila_coincidente1(ninguna),0);
new_line;
put(fila_coincidente1(una),0);
new_line;
put(fila_coincidente1(todas),0);


end fila_coincidente1_prueba;



--casos de prueba
--caso1 (ninguna coincidente) -> (8..10,3..4) := ((1,2),(23,89),(255,234)) = 0;
--caso2 (una coincidente) -> (4..5,2..3) := ((2,4),(others => 2)) := 5;
--caso3 (todas coincidentes) -> (2..4,7..9) :=((others=1),(others=>6),(others=>19)) := 2