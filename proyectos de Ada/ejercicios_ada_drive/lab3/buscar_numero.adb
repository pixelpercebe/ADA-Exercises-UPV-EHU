With Ada.Integer_Text_IO,Ada.Text_IO,Ada.Float_Text_IO;
Use Ada.Integer_Text_IO,Ada.Text_IO,Ada.Float_Text_IO;

procedure buscar_numero is
  cont,num_secuencia,num_buscado:integer;
  existe:boolean := False;
begin
  put("que numero quieres buscar en la secuencia: ");
  get(num_secuencia);

  loop
    Get(num_buscado);
    exit when num_buscado = num_secuencia or End_Of_File;
  end loop;
  existe := num_buscado = num_secuencia;
  put(boolean'image(existe));
end buscar_numero;