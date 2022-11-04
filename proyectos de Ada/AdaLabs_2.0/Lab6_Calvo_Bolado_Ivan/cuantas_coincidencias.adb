with tipos_lab6; use tipos_lab6;


procedure Cuantas_Coincidencias (Imagen1:T_Matriz1; Imagen2 : T_Matriz2;
Cuantas: out Natural) is

-- pos: Devuelve la cantidad de coincidencias en las mismas posiciones de
-- ambas matrices Imagen1, Imagen
I,J : Integer;

begin
  I := Imagen1'first(1);
  cuantas := 0;
  for I in Imagen1'range(1) loop
    J := Imagen2'first(2);
    for J in Imagen1'range(2) loop
      cuantas := cuantas + Boolean'pos(Imagen1(I,J)= Imagen2(I)(J));
    end loop;
  end loop;

end Cuantas_Coincidencias;