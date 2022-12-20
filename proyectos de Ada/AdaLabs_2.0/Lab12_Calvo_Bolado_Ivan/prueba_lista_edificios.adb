WITH Ada.Text_IO, Lista_Edificios, Nombre;
USE Ada.Text_IO, Lista_Edificios, Nombre;

PROCEDURE Prueba_Lista_Edificios IS
   Pares,
   Impares : A_Lista_Edificios;
   Nombre  : T_Nombre;
BEGIN
   Nombre.Nom(1..17):= "Eustasio_Amilibia";
   Nombre.Cont:=17;
   Cargar_Edificios_Calle_Num(Nombre, 2, False, Impares);
   Escribir_Edificios(Impares);
   Cargar_Edificios_Calle_Num(Nombre, 2, True, Pares);
   Escribir_Edificios(Pares);
END Prueba_Lista_Edificios;

