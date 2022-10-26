with ada.integer_text_IO, tipos_lab5;
use ada.integer_text_IO, tipos_lab5;


procedure calcular_media (V_enteros : in t_enteros; media_impar:out float; media_par : out float) is

begin

media_par := 0.0; media_impar := 0.0;

for i in V_enteros'range loop
  if V_enteros(i) mod 2 = 0 then
    media_par := media_par + (float(V_enteros(i))/float(V_enteros'length));
  else
    media_impar := media_impar + (float(V_enteros(i))/float(V_enteros'length));
  end if;
end loop;

end calcular_media;