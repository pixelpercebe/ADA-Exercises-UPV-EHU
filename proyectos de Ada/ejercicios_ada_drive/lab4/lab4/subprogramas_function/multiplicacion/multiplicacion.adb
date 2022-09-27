WITH Ada.Integer_Text_IO, Ada.Text_IO;
USE Ada.Integer_Text_IO, Ada.Text_IO;
WITH Hacer_Multiplicacion;

PROCEDURE Multiplicacion IS
BEGIN
   Put(Hacer_Multiplicacion(0,0));
   New_Line;
   Put(Hacer_Multiplicacion(0,10));
   New_Line;
   Put(Hacer_Multiplicacion(0,-8));
   New_Line;
   Put(Hacer_Multiplicacion(1,-5));
   New_Line;
   Put(Hacer_Multiplicacion(15,4));
   New_Line;
   Put(Hacer_Multiplicacion(100,5600));
   new_line;


END Multiplicacion;

--Casos de prueba:
--CASO1:0*0 RESULTADO: 0
--CASO2:0*10 RESULTADO: 0
--CASO3:-0*-8 RESULTADO: 0
--CASO4:1*-5 RESULTADO: -5
--CASO5:15*4 RESULTADO: 60
--CASO5:100*5600 RESULTADO: 560000
--CASO6:-123*732 RESULTADO: -90036   