WITH Ada.Text_IO, Ada.Integer_Text_IO;
USE Ada.Text_IO,Ada.Integer_Text_IO;

PROCEDURE Sub_Digito_Posicion_Mayor (Num: IN Integer;Pos,Mayor:out integer) IS
--especificacion
--pre: Num > 0
--pos: la posicion del numero mayor se contara desde la derecha.
   division:integer;
   resto: Integer:= 0;
   Cont: Integer:= 0;
   Aux:Integer:= 0;
BEGIN
   division:= num;
   Mayor:=0;
   pos:=0;
   LOOP
      resto:= division mod 10;
      division:=division/10;
      Cont:=Cont + 1;
      IF Resto > Aux or num = 0 THEN
         Pos := Cont;
         Mayor := Resto;
         aux:=resto;
      END IF;
      exit when division = 0;
      END LOOP;
end Sub_Digito_Posicion_Mayor;


