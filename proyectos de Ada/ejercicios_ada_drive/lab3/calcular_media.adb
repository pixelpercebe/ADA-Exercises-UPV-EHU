With Ada.Integer_Text_IO,Ada.Text_IO,Ada.Float_Text_IO;
Use Ada.Integer_Text_IO,Ada.Text_IO,Ada.Float_Text_IO;

procedure calcular_media is
  cont,num,suma:integer;
  media:float;

begin
  suma := 0;
  while not End_Of_File loop
    get(num);
    suma:= suma+num;
    cont := cont + 1;
  end loop;

  media := float(suma)/float(cont);
  put(media, 0,2,0);
  
end calcular_media;