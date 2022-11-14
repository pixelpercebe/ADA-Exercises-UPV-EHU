
Package body Lista_numeros is 

Procedure cargar_registros (L: IN OUT T_Lista) IS

begin
  L.numeros(1..6) := (24,16,2,13,5,17);
  L.cont:=6;
END cargar_registros;




function esta (L:t_lista; N:integer) return boolean is
  i : integer := L.numeros'first;
begin
  while i < L.cont and L.numeros(i) /= N loop
    i := i + 1;
  end loop;
  return L.numeros(i) = N;
end esta;


Procedure Elimina_I (L: in out t_lista; I:integer) is
begin

L.numeros(I..L.cont-1) := L.numeros(I+1..l.cont);
L.cont := L.cont - 1;

end Elimina_I;



end lista_numeros;