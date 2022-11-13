WITH Lista_Enteros,ada.Text_IO,ada.float_text_IO;
USE Lista_Enteros,ada.Text_IO,ada.float_text_IO;

PROCEDURE Ejecutar_Lista_Enteros IS
   M,L,pares,impares,vacio,final, principio,repetidos: T_Lista_Enteros;
   
   
BEGIN
   cargar_Vectores(M,L,pares,impares,vacio,final, principio,repetidos);

   --CASOS DE PRUEBA EJERCICIO 1.a
   put_line("-> (EJERCICIO 1.a) Calcular media de pares y media de imapres:");
   EscribirMedias(pares);  --caso1 (solo pares) Media pares:-340282346639000000000000000000000000000.00 Media pares:25.00
   EscribirMedias(impares);--caso2 (solo impares) Media pares:30.00 Media pares:-340282346639000000000000000000000000000.00
   impares.cont :=1;
   EscribirMedias(impares);--caso3 (1 elemento) Media pares:2 Media pares:-340282346639000000000000000000000000000.00
   EscribirMedias(L);      --caso4 (varios elementos) Media pares:12.00 Media pares:33.00

   --CASOS DE PRUEBA EJERCICIO 1.b
   put_line("-> (EJERCICIO 1.b) Comprobar multiplo:");
   M.cont:=1;
   put_line(boolean'image(Hay_Multiplo(3, M))); --caso1 (1 solo elemento) -> true
   M.cont:=2;
   put_line(boolean'image(Hay_Multiplo(5, M))); --caso2 (2 elementos) -> false
   M.cont:=3;
   put_line(boolean'image(Hay_Multiplo(6, M))); --caso3 (0 como multiplo) -> true
   put_line(boolean'image(Hay_Multiplo(3, L))); --caso4 (varios elementos) -> true
   put_line(boolean'image(Hay_Multiplo(0, L))); --caso5 (Multiplos de 0) -> false

   --CASOS DE PRUEBA EJERCICIO 1.c
   put_line("-> (EJERCICIO 1.c) Comprobar si la secuencia es creciente:");
   put_line(Esta_Creciente(vacio)'img);      --caso1 (vacio) -> False
   m.cont:=1;
   put_line(Esta_Creciente(M)'img);          --caso2 (1 elemento) -> true
   put_line(Esta_Creciente(final)'img);      --caso3 (decreciente al final) -> false
   put_line(Esta_Creciente(principio)'img);  --caso4 (decreciente al principio) -> false
   put_line(Esta_Creciente(repetidos)'img);  --caso5 (elemetos repetidos) -> true

   

END Ejecutar_Lista_Enteros;

