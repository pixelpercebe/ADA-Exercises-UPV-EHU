WITH Mina,ada.Integer_Text_IO,ada.Text_IO; USE Mina,ada.Integer_Text_IO,ada.Text_IO;

PROCEDURE Ejecutar_Mina IS
   L,M,N: T_Lista_Mina;
   res : natural;
BEGIN

   CargarF("mina0.txt", L);
   EscribirSE(L);
   CargarF("mina1.txt", M);
   EscribirSE(M);
   CargarF("mina2.txt", N);
   EscribirSE(N);

   --CASOS DE PRUEBA EJERCICIO 2.1
   put_line("**Ejercicio 2.1**");
   put(Cuantos_Diamantes(L),0);
   NEW_LINE;
   put(Cuantos_Diamantes(M),0);
   NEW_LINE;
   put(Cuantos_Diamantes(N),0);
   NEW_LINE;


   --CASOS DE PRUEBA EJERCICIO 2.2
   put_line("**Ejercicio 2.2**");
   extrae(L,res);
   put(res,0);
   NEW_LINE;
   extrae(M,res);
   put(res,0);
   NEW_LINE;
   extrae(N,res);
   put(res,0);
END Ejecutar_Mina;

