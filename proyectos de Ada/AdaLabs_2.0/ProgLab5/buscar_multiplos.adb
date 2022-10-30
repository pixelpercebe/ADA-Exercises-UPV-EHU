with tipos_lab5;
use tipos_lab5;

function buscar_multiplos (num : integer;v_enteros: t_enteros) return boolean is

i:integer:=v_enteros'first;

begin

while v_enteros'length > 0 and then  v_enteros(i) mod num /= 0 and then  i < v_enteros'last loop

i := i+1;  

end loop;

return  v_enteros'length > 0 and then v_enteros(i) mod num = 0;

end buscar_multiplos;