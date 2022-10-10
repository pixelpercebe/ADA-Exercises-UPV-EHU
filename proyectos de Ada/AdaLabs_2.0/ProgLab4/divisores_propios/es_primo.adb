with contar_divisores_propios;

function es_primo (num: integer) return boolean is

begin

return num /= 1 and then contar_divisores_propios(num) = 0;

end es_primo;