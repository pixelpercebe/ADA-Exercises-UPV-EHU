with tipos_lab6; use tipos_lab6;

function Fila_Coincidente1 (Imagen1 : T_Matriz1) return Natural is

-- pos: Devuelve la primera fila coincidente de la matriz. Si no hay devolverá 0

fila : integer := Imagen1'first(1);
columna : integer := Imagen1'first(2);
coincidente : boolean := false;

begin

while fila <= imagen1'last(1) and then columna /= imagen1'last(2) loop
  columna := imagen1'first(2);
  while columna < imagen1'last(2) and then imagen1(fila, columna) = imagen1(fila,columna+1) loop
    columna := columna+1;
  end loop;
  if columna /= imagen1'last(2) then
  fila := fila+1;
  end if;
end loop;

if fila > imagen1'last(1) then
  fila:= 0;
end if;

return fila;
end Fila_Coincidente1;