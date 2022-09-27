WITH Ada.Text_IO, Ada.float_text_IO;
USE Ada.Text_IO, Ada.float_text_IO;

PROCEDURE Libras_A_Euros IS
   -- entrada: un natural, L (EE-entrada est�ndar/teclado).
   -- pre: L>=0, L representa dinero en libras.
   -- salida: un natural, E (SE-salida est�ndar/pantalla).
   -- pos: E es el valor en euros de L.

   L,
   E     :          Float;         -- declaraci�n de variables
   Valor : CONSTANT Float := 1.17;

BEGIN
   -- Lee los datos
   Put("Dame la cantidad de libras: ");
   Get(L);
   -- Trata el dato y escribe
   E := L * Valor;
   Put(E, 0, 2, 0);
   -- Escribe �ltimo d�gito

END Libras_A_Euros;


   -- CASOS DE PRUEBA:
   -- CASO 1: Dato : 0  Salida : 0
   -- CASO 2: Dato : 1  Salida : 1.17
   -- CASO 3: Dato : 123  Salida : 143.91