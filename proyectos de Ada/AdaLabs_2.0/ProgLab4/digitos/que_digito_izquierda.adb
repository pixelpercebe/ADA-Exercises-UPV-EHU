with contar_digitos;

function que_digito_izquierda (num, pos : integer) return integer is

--ESPECIFICACION
--Pre: 0 < num y 0 < pos < 10
--post: nos devolvera un integer que nos indicara en que posicion de num se encuentra dig

  aux : integer := num;

begin

  return (num/10**(contar_digitos(num)-pos)) mod 10;

end que_digito_izquierda;