
function contar_divisores_propios (num: in integer) return integer is

--ESPECIFICACION
--Pre: 0 < num
--post: cont indicara el numero de divisores propios que tiene num

cont : integer := 0;

begin
  for i in 2..num-1 loop
    if num mod i = 0 then
      cont := cont + 1;
    end if;
  end loop;

  return cont;

end contar_divisores_propios;