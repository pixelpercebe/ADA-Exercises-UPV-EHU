WITH Mina; USE Mina;

PROCEDURE Ejecutar_Mina IS
   L: T_Lista_Mina;
BEGIN
   CargarF("mina2.txt", L);
   EscribirSE(L);
END Ejecutar_Mina;

