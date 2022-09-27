WITH Ada.Integer_Text_IO,Ada.Text_IO;
USE Ada.Integer_Text_IO,Ada.Text_IO;
with contar_divisores;

PROCEDURE Cuantos_Divisores IS
   Num: Integer;
   divisores:integer;
BEGIN
   Put("Introduce un numero: ");
   Get(num);
   Put_Line("Esta es la cantidad de divisores menores que el mismo: ");
   Divisores:=Contar_Divisores(Num);
   put(divisores);
end Cuantos_Divisores;

--CASOS DE PRUEBA:
--CASO1: ENTRADA:2    CONTAR: 1
--CASO2: ENTRADA:3    CONTAR: 1
--CASO3: ENTRADA:257  CONTAR: 1
--CASO4: ENTRADA:4    CONTAR: 2
--CASO5: ENTRADA:93   CONTAR: 3
--CASO6: ENTRADA:3624 CONTAR: 15