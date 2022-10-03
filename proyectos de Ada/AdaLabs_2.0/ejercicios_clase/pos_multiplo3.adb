with ada.text_IO, ada.integer_text_IO;
use ada.text_IO, ada.integer_text_IO;

procedure pos_multiplo3 is

N: integer;
pos:integer := 0;
multiplo3: boolean := False;

begin
while not end_of_file and not multiplo3 loop

  get(N);
--if N mod 3 = 0 then
--  multiplo3 := True;
--end if;

  multiplo3 := (N mod 3 = 0);
  pos := pos+1;

end loop;

if (multiplo3) then
  put("posicion de los multiplos de 3: ");
  put(pos,0);
else
  put("no hay multiplos de 3");
end if;
end pos_multiplo3;