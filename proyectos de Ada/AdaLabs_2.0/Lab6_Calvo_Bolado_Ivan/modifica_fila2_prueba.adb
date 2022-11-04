with ada.integer_text_IO, tipos_lab6, Modifica_Fila2, ada.text_IO; use ada.integer_text_IO,tipos_lab6,ada.text_IO;

procedure Modifica_Fila2_prueba is

primera: T_Matriz2(12..13) :=((others => 3),(5,7,6,4,2));
v_prueba: T_Vector(4..8) := (1,2,3,4,5);
ultima: T_Matriz2(1..3) := ((others => 4),(others=>1),(others=>7));
f:integer;
begin

f := primera'first;
Modifica_Fila2(primera,v_prueba,f);

for i in primera'range loop
  for j in primera(i)'range loop
    put(primera(i)(j),0);
  end loop;
  new_line;
end loop;

put_line("---------------------------");

f := ultima'last;
Modifica_Fila2(ultima,v_prueba,f);

for i in ultima'range loop
  for j in ultima(i)'range loop
    put(ultima(i)(j),0);
  end loop;
  new_line;
end loop;

end Modifica_Fila2_prueba;

--casos de prueba
--vector: (4..8) := (1,2,3,4,5);
--caso1 (12..13) :=((others => 3),(5,7,6,4,2)) -> (12345),(57642);
--caso2 (1..3) := ((others => 4),(others=>1),(others=>7)) -> (44444),(11111),(12345);