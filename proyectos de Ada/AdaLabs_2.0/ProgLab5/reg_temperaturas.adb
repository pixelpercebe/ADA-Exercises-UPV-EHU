with tipos_lab5;
use tipos_lab5;

--ESPECIFICACION
--PRE: El rango del vector ira de lunes a domingo. (LUNES,MARTES,MIERCOLES,JUEVES,VIERNES,SABADO,DOMINGO)
--POST: Devolvera el dia de la semana con mayor temperatura. 

function reg_temperaturas (v_temp : t_temperaturas) return t_dias is

mayor: t_dias := v_temp'first;

begin

for i in v_temp'range loop

  if v_temp(i) > v_temp(mayor then
    mayor := i;
  end if;

end loop;

return mayor;

end reg_temperaturas;