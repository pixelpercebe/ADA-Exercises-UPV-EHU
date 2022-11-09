with tipos_lab6; use tipos_lab6;


procedure Obtener_Frecuencias1 (Imagen : T_Matriz1; H: out T_Vector_Max ) is
-- pos: H contiene por cada posición que corresponde a su mismo valor en la Imagen,
-- la frecuencia de aparición de dicho valor.
h : T_Vector_Max := (others=>0);
begin

for i in T_Matriz1'range(1) loop
  for j in t_matriz1'range(2) loop
    H(imagen(i..j)) := H(imagen(i..j)) + 1;
  end loop
end loop;