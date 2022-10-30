with tipos_lab5;
use tipos_lab5;

--ESPECIFICACION
--PRE: el vector contendra los caracteres '<' y '>'
--POST: Devolvera la cantidad de diamantes que hay en el vector mina,Un diamante está formado por los caracteres '<' y '>' seguidos y en ese
--mismo orden, es decir, "<>". 

function diamantes (v_enteros : t_mina) return integer is

cont: integer := 0;

begin


for i in v_enteros'first..v_enteros'last-1 loop
  
  cont := cont + boolean'pos(v_enteros(i) = '<' and then v_enteros(i + 1) = '>');

end loop;

return cont;

end diamantes;