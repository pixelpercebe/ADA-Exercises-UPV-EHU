WITH Lista_Enteros,ada.Text_IO,ada.float_text_IO;
USE Lista_Enteros,ada.Text_IO,ada.float_text_IO;

PROCEDURE Ejecutar_Lista_Enteros IS
   L: T_Lista_Enteros;
   P,I: float; 
BEGIN
   CargarF("enteros.txt", L);
   EscribirSE(L);
   

   --CASOS DE PRUEBA EJERCICIO 1.a
   PUT_line("(EJERCICIO 1.a) Calcular media de pares y media de imapres:");
   Media_Pares_Impares(L,P,I);
   PUT("Media pares:");PUT(P,0,2,0);
   NEW_LINE;
   PUT("Media pares:");PUT(I,0,2,0);
   new_line;

   --CASOS DE PRUEBA EJERCICIO 1.b
   PUT_line("(EJERCICIO 1.b) Comprobar multiplo:");
   put(boolean'image(Hay_Multiplo(0, L)));
   New_Line;
   put(boolean'image(Hay_Multiplo(3, L)));


   
END Ejecutar_Lista_Enteros;

