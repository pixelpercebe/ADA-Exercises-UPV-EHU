with tipos_lab5;
use tipos_lab5;

--ESPECIFICACION
--PRE: El rango del vector ira de lunes a domingo. (LUNES,MARTES,MIERCOLES,JUEVES,VIERNES,SABADO,DOMINGO)
--POST: Devolvera el dia de la semana con mayor temperatura. 

function ordenado (v_enteros: t_enteros) return boolean is 
i : integer:= v_enteros'first;
ordenado : boolean := true;

begin

if v_enteros'length > 1 then

  while ordenado and then i < v_enteros'last loop

    ordenado := v_enteros(i) <= v_enteros(i+1);
    i := i+1; 

  end loop;

end if;

return ordenado;

end ordenado;