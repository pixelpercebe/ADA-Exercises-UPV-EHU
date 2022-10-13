
function contar_digitos (num : integer) return integer is

--ESPECIFICACION
--Pre: 0 < num
--post: de devolvera la cantidad de digitos que tiene le numero dado

begin

  return num'img(2..num'img'length)'length;

end contar_digitos;