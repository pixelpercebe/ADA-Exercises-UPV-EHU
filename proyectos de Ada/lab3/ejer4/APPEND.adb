with ada.text_IO,Ada.integer_Text_IO;
Use ada.text_IO,ada.integer_Text_IO;

Procedure APPEND is
n:integer;
fich1,fich2:String(1..100);
F:File_Type;
begin
put("que dos ficheros deseas unir?");
get(fich1);
fich1:= (fich1 & ".txt");
Put(fich1);
get(fich2);
fich1:= (fich2 & ".txt");
put(fich2);
End append;