WITH Ada.Text_IO, Ada.Integer_Text_IO;
USE Ada.Text_IO,Ada.Integer_Text_IO;
with Sub_Digito_Posicion_Mayor;

PROCEDURE Digito_Posicion_Mayor IS
   x,y :integer;
BEGIN
   Sub_Digito_Posicion_Mayor(0,X,Y);
   new_line;
   Put(X);
   Put(Y);
   Sub_Digito_Posicion_Mayor(15,X,Y);
   new_line;
   Put(X);
   put(y);
   Sub_Digito_Posicion_Mayor(14625,X,Y);
   new_line;
   Put(X);
   Put(Y);
   Sub_Digito_Posicion_Mayor(9261340,X,Y);
   new_line;
   Put(X);
   put(y);
END Digito_Posicion_Mayor;


--casos de prueba:
--0 --> digito mayor:0 pos:0
--55 --> digito mayor:5 pos:1
--14625 --> digito mayor:5 pos:3
--6291340 --> digito mayor:9 pos:7
