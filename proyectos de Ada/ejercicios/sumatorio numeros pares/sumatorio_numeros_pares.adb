WITH Ada.Integer_Text_IO, Ada.Text_IO;
USE Ada.Integer_Text_IO, Ada.Text_IO;
PROCEDURE Sumatorio_Numeros_Pares IS
   num : integer;
begin
   Put("introduce la cantidad de los primeros n numeros pares que quieres sumar: ");
   Get(Num);
   Put(Num*(Num+1));
end sumatorio_Numeros_pares;
