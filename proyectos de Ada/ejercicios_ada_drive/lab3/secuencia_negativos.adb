With Ada.Integer_Text_IO,Ada.Text_IO,Ada.Float_Text_IO;
Use Ada.Integer_Text_IO,Ada.Text_IO,Ada.Float_Text_IO;

procedure secuencia_negativos is
  cont_negativos,cont_numeros,num:integer;
  secuencia_negativa:boolean := False;
begin
cont_negativos := 0;
cont_numeros := 0;
  loop
    get(num);
    if num < 0 then
    cont_negativos := cont_negativos + 1;
    end if;
    cont_numeros := cont_numeros + 1;
    exit when num >= 0 or End_Of_File;
  end loop;
  secuencia_negativa := cont_negativos = cont_numeros;
  put(boolean'image(secuencia_negativa));
end secuencia_negativos;