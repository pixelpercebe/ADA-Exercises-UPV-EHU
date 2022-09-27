With Ada.Integer_Text_IO,Ada.Text_IO;
Use Ada.Integer_Text_IO,Ada.Text_IO;

procedure contar_secuencia is
  cont,num:integer;
begin
  while not End_Of_File loop
    get(num);
    cont := cont + 1;
  end loop;
  put(cont);
end contar_secuencia;