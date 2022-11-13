PACKAGE Lista_Enteros IS
   TYPE T_Enteros IS ARRAY (1 .. 10) OF Integer;
   TYPE T_Lista_Enteros IS
      RECORD
         Lista : T_Enteros;
         Cont  : Integer;
   END RECORD;


   PROCEDURE CargarF (
         Fichero :        String;
         L       :    OUT T_Lista_Enteros);
      -- entrada: Secuencia de enteros S (en Fichero)
      -- pre: Fichero es el nombre de un fichero que contiene enteros;
      -- post: L contiene los como mucho los 10 primeros enteros del Fichero.


   PROCEDURE EscribirSE (
         L : T_Lista_Enteros);
      -- salida: secuencia de enteros (SE)
      -- post: Secuencia de los enteros de la lista L

   procedure EscribirMedias(L: T_Lista_Enteros);
      --Post: Escribe por pantala pos separado los resultados 
      --de calcular las medias de numeros pares e impares 

   procedure Media_Pares_Impares(L: T_Lista_Enteros; P, I: OUT Float);
      -- post: P es la media de los elementos pares de L e I la
      -- media de los impares. Si no hay pares devolverá como
      -- media de los pares float'first, y si no hay impares
      -- devolverá como su media float'first.
   FUNCTION Hay_Multiplo(N: Integer; L: T_Lista_Enteros) RETURN Boolean;
      -- post: Devuelve true sii L contiene algún múltiplo de N


   FUNCTION Esta_Creciente(L: T_Lista_Enteros) RETURN Boolean;
   -- post: Devuelve true sii L está en orden creciente1.



END Lista_Enteros;
