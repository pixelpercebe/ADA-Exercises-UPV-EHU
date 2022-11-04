with Tipos_lab6,ada.Integer_text_IO, ada.text_IO;
use Tipos_lab6,ada.Integer_text_IO,ada.text_IO;

procedure Posicion_Numero1 (N: T_Valores_Max; Imagen : T_Matriz1;
I, J: out Natural) is


-- pos: Devuelve la posición I, J en la que se encuentra la primera aparición del
-- número N en Imagen. Si ese número no parece, entonces los valores
-- serán 0 en ambos casos.

begin
I := Imagen'first(1);
J := Imagen'first(2);

loop
  J := 1;
  while J < Imagen'last(2) and then Imagen(I,J) /= N loop
    J := J + 1;
  end loop;
  exit when Imagen(I,J) = N or else I=Imagen'last(1);
  I := I + 1;
end loop;

if Imagen(I,J) /= N then
  I := 0;
  J := 0;
end if;

end Posicion_Numero1;