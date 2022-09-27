with ada.text_IO, ada.Integer_text_IO;
use ada.text_IO,ada.Integer_text_IO;

PROCEDURE RGB IS
   -- entrada: un entero RGB (EE-entrada est�ndar/teclado).
   -- pre: RGB representa el color de un p�xel. 0<=RGB<=16777215
   -- salida: tres enteros, R, G, B (SE-salida est�ndar/pantalla).
   -- pos: 0<= R, G, B <= 255 y  RGB = R+ (G+B* 256) * 256

   RGB,
   R,
   G,
   B   : Integer; -- declaraci�n de variables
   K : constant Integer := 256;
BEGIN
   -- Lee los datos
   Put("dame el valor del pixel: ");
   Get(RGB);

   -- Trata los datos
   R:= RGB mod K;
   G:= (RGB/K) mod K;
   B:= (RGB/K)/K;

   -- Escribe resultados
   Put("El color rojo es: R= ");
   Put(R, 0);
   Put("El color verde es: G= ");
   Put(G, 0);
   Put("El color azul es: B= ");
   Put(B, 0);
   END RGB;

   --CASO 1: DATO : 0 RESULTADO: R:0, G:0, B:0
   --CASO 2: DATO : 16.777.215 RESULTADO: R:255, G:255, B:255
   --CASO 3: DATO : 100 RESULTADO: R:100, G:0, B:0
   --CASO 4: DATO : 3670039 RESULTADO: R:23, G:0, B:56
