
Package body Lista_numeros is 


function esta (L:t_lista; N:integer) return boolean is
  i : integer := L.lista'first;
begin
  while i < L.cont and L.lista(i) /= N loop
    i := i + 1;
  end loop;
  return L.lista(i) /= N;
end esta;


Procedure Elimina_I (L: in out t_lista; I:integer) is
begin

L.lista(I..L.cont-1) := L.lista(I+1..l.cont);
L.cont := L.cont - 1;

end Elimina_I;



end lista_numeros;