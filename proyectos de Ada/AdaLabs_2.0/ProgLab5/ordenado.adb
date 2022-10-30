with tipos_lab5;
use tipos_lab5;


function ordenado (v_enteros: t_enteros) return boolean is

i:integer:= v'first;
ordenado : integer := true;

begin

if v_enteros'length > 1 then

while ordenado and then i < v_enteros'last then

ordenado := v_enteros(i) < v_enteros(i+1);
i := i+1; 

end loop;

end if;

return ordenado;

end ordenado;