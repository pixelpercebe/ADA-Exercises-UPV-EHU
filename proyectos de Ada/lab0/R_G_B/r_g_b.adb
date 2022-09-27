WITH Ada.Text_IO, Ada.Integer_Text_IO;
USE Ada.Text_IO, Ada.Integer_Text_IO;

PROCEDURE R_G_B IS
   -- entrada: tres enteros, R, G, B (EE-entrada est�ndar/teclado).
   -- pre: R, G y B representan cada color de un p�xel. 0<=R, G, B<= 255
   -- salida: un entero, RGB (SE-salida est�ndar/pantalla)
   -- pos: 0<= RGB <= 16777215 y  RGB = R+ G* 256+ B* 2562

   Rgb,
   R,
   G,
   B   : Integer; -- declaraci�n de variables

BEGIN
   -- Leer los datos
   Put("dame el color rojo: ");
   Get(R);
   Put("dame el color verde: ");
   Get(G);
   Put("dame el color azul: ");
   Get(B);

   -- Tratar los datos
   RGB:= R+ G*256+ B*256**2;

   -- Escribir resultados
   Put("El valor del pixel es ");
   Put(RGB, 0);
   New_Line;
END R_G_B;

-- CASOS DE PRUEBA:
-- DATOS | RESULTADOS
-- R=0,G=0,B=0 | 0
-- R=255,G=255,B=255 | 16.777.215
-- R=100,G=0,B=0 | 100
-- R=69,G=1,B=0 | 325
-- R=69,G=1,B=0 | 3670039
-- R=0,G=0,B=56 | 3670016
-- R=45,G=67,B=15 | 1000237