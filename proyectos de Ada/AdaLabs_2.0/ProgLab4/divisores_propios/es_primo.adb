

function es_primo (num: integer) return boolean is

es_primo : boolean := True;
cont : Integer := 2;

begin
if num = 1 then
  es_primo := not es_primo;
end if;

while es_primo and then cont < num loop
  es_primo := not (num mod cont = 0);
  cont := cont + 1;
end loop;

return es_primo;

end es_primo;