WITH Ada.Integer_Text_IO, Ada.Text_IO,Ada.float_Text_IO;
USE Ada.Integer_Text_IO, Ada.Text_IO,Ada.float_Text_IO;

Package body Lista_numeros is 

Procedure cargar_registros (L,ordenada,solo: IN OUT T_Lista) IS

begin
  L.numeros(1..6) := (24,16,2,13,5,17);
  L.cont:=6;
  ordenada.numeros(1..5) := (1,5,7,10,16);
  ordenada.cont:=5;
  solo.numeros(1..1) := (1=>8);
  solo.cont:=1;
END cargar_registros;

PROCEDURE EscribirSE (
         L : T_Lista) IS
   BEGIN
      FOR I IN 1.. L.Cont LOOP
         Put(L.NUMEROS(I),0); Put(' ');
      END LOOP;
      New_Line;
   end EscribirSE;


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


procedure Insertar_Orden (L: in out T_Lista;N: integer) IS

  i : integer := L.numeros'first;

BEGIN

  while i <= l.cont and L.numeros(i) < N loop

    i := i+1;

  end loop;

  L.numeros(i+1..l.cont+1) := l.numeros(i..l.cont);
  l.cont := l.cont+1;
  l.numeros(i):=N;

end Insertar_Orden;



function pos_min(L: t_lista; I: integer) return integer is

pos_min: integer:= I;

begin

for act in I+1..l.cont loop
    if l.numeros(act) < l.numeros(pos_MIN) then
      pos_min:= act;
    end if;
  end loop;
  return pos_MIN;
end pos_min;


end lista_numeros;