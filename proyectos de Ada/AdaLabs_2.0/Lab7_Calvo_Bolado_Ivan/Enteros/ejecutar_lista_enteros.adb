WITH Lista_Enteros; USE Lista_Enteros;

PROCEDURE Ejecutar_Lista_Enteros IS
   L: T_Lista_Enteros;
BEGIN
   CargarF("enteros.txt", L);
   EscribirSE(L);
END Ejecutar_Lista_Enteros;

