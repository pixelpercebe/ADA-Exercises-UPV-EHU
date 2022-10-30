with ada.integer_text_IO, tipos_lab5;
use ada.integer_text_IO, tipos_lab5;

--ESPECIFICACION
--POST: Devolvera la media de los numeros impares y la media de los numeros pares del vector de enteros. 


procedure calcular_media (V_enteros : in t_enteros; media_impar:out float; media_par : out float) is

cont_impar, cont_par : integer := 0;
begin

media_par := 0.0; media_impar := 0.0;

for i in V_enteros'range loop
  if V_enteros(i) mod 2 = 0 then
    media_par := media_par + (float(V_enteros(i)));
    cont_par := cont_par + 1;
  else
    media_impar := media_impar + (float(V_enteros(i)));
    cont_impar := cont_impar + 1;
  end if;
end loop;

if cont_par > 0 then
  media_par := media_par / Float(cont_par);
else 
  media_par := 0.0;
end if;
if cont_impar > 0 then
  media_impar := media_impar / Float(cont_impar);
else
  media_impar := 0.0;
end if;

end calcular_media;