WITH Lista_Enteros,ada.Text_IO,ada.float_text_IO;
USE Lista_Enteros,ada.Text_IO,ada.float_text_IO;

PROCEDURE Ejecutar_Lista_Enteros IS
   M,L,pares,impares: T_Lista_Enteros;
   
   
BEGIN
   CargarF("enteros.txt", L);
   EscribirSE(L);
   M.lista(1..3):=(12,9,0);

   pares.lista(1..5):=(1,3,5,7,9);
   pares.Cont:=5;
   impares.lista(1..5):=(2,4,6,8,10);
   impares.Cont:=5;
   

   --CASOS DE PRUEBA EJERCICIO 1.a
   PUT_line("-> (EJERCICIO 1.a) Calcular media de pares y media de imapres:");
   EscribirMedias(pares);--caso1 (solo pares) Media pares:-340282346639000000000000000000000000000.00 Media pares:25.00
   EscribirMedias(impares);--caso2 (solo impares) Media pares:30.00 Media pares:-340282346639000000000000000000000000000.00
   impares.cont :=1;
   EscribirMedias(impares);--caso3 (1 elemento) Media pares:2 Media pares:-340282346639000000000000000000000000000.00
   EscribirMedias(L);--caso4 (varios elementos) Media pares:12.00 Media pares:33.00

   --CASOS DE PRUEBA EJERCICIO 1.b
   PUT_line("-> (EJERCICIO 1.b) Comprobar multiplo:");

   M.cont:=1;
   put_line(boolean'image(Hay_Multiplo(3, M))); --caso1 (1 solo elemento) -> true
   M.cont:=2;
   put_line(boolean'image(Hay_Multiplo(5, M))); --caso2 (2 elementos) -> false
   M.cont:=3;
   put_line(boolean'image(Hay_Multiplo(6, M))); --caso3 (0 como multiplo) -> true
   put_line(boolean'image(Hay_Multiplo(3, L))); --caso4 (varios elementos) -> true
   put_line(boolean'image(Hay_Multiplo(0, L))); --caso5 (Multiplos de 0) -> false


   

END Ejecutar_Lista_Enteros;

