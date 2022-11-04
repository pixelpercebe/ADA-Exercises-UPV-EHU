with tipos_lab6;use tipos_lab6;

procedure Modifica_Fila2 (Imagen : in out T_Matriz2; V: T_Vector; I: Natural) is
-- pos: Modifica la matriz Imagen en su fila I con los valores del vector V

cont : integer := 0;
begin

for pos in v'range loop
  cont := cont + 1;
  imagen(I)(cont) := v(pos);
end loop;


end Modifica_Fila2;