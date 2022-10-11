with contar_digitos;

function que_digito_izquierda (num,pos : integer) return integer is

aux : integer := num;

begin

return (num/10**(contar_digitos(num)-pos)) mod 10;


end que_digito_izquierda;