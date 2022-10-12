with contar_divisores_propios;

function es_primo (num: integer) return boolean is

--ESPECIFICACION
--Pre:num 0 < num
--post: Se devolvera un booleano que indicara si num es primo o no.

begin

return num /= 1 and then contar_divisores_propios(num) = 0;

end es_primo;