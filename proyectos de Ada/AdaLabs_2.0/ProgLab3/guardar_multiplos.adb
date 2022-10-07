with ada.text_IO, ada.integer_text_IO;
use ada.text_IO,ada.integer_text_IO;


procedure guardar_multiplos is

F,mult2_fich, mult3_fich :File_Type;
char_actual, char_prev: String (1..1);
num : string(1..2);
begin

open(F,In_File,"datos.txt");
create(mult2_fich,out_File,"dos.txt");
create(mult3_fich,out_File,"tres.txt");

while not end_of_file(F) loop
  
  if End_Of_Line(F) then
    Skip_Line(F);
  else 
    get(F,char_actual);
    Put(char_actual);
  end if;

  if (char_actual = " " or else End_Of_Line(F)) and then Integer'value(char_actual) mod 2 = 0 then
    put(mult2_fich, num);
    put(mult2_fich, " ");
    num:= "";
  elsif (char_actual = " " or else End_Of_Line(F)) and then Integer'value(char_actual) mod 3 = 0 then
    put(mult3_fich, num);
    put(mult3_fich, " ");
    num := "";
  end if;

char_prev := char_actual;

end loop;

close(F);
close(mult2_fich);
close(mult3_fich);

end guardar_multiplos;