with Tipos_lab6;
use Tipos_lab6;

procedure Posicion_Numero2 (N: T_Valores_Max; Imagen : T_Matriz2;
I, J: out Natural) is

-- pos: Devuelve la posición I, J en la que se encuentra la primera aparición del
-- número N en Imagen. Si ese número no parece, entonces los valores
-- serán 0 en ambos casos

begin
I := Imagen'first;
loop
  J := Imagen(I)'first;
  while J < Imagen(I)'last and then Imagen(I)(J) /= N loop
    J := J + 1;
  end loop;
  exit when Imagen(I)(J) = N or else I=Imagen'last;
  I := I + 1;
end loop;

if Imagen(I)(J) /= N then
  I := 0;
  J := 0;
end if;

end Posicion_Numero2;