
with Tipos_Lab6;
use Tipos_Lab6;

function obtener_media1 (Imagen : T_Matriz1) return Float is

  media : float := 0.00;
  suma : integer := 0;
  cont : Integer := Imagen'length(1) * Imagen'length(2);

begin
  for linea in Imagen'range(1) loop
    for columna in Imagen'range(2) loop
      suma := suma + Imagen(linea,columna);
    end loop;
  end loop;

  media := Float(suma) / Float(cont);
  return media;

end obtener_media1;