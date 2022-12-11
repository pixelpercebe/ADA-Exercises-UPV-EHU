Package ALista_Enteros IS
      num_elem:integer; --numero de elementos de la lista dinamica
      TYPE T_Entero;
      type A_Lista IS access t_Entero;
      TYPE T_Entero IS
      RECORD
         Val: Integer;
         Sig: A_Lista;
      END RECORD;


      PROCEDURE CargarF (
         Fichero :        String;
         L       :    OUT A_Lista);
      -- entrada: Secuencia de enteros S (en Fichero)
      -- pre: Fichero es el nombre de un fichero que contiene enteros;
      -- post: L contiene los enteros de la secuencia S del Fichero.


      PROCEDURE EscribirSE (
         L : A_Lista);
      -- salida: secuencia de enteros (SE)
      -- post: Secuencia de los enteros de la lista L

   
      procedure Media_Pares_Impares(L: A_Lista; P, I: OUT Float);
      -- post: P es la media de los elementos pares de L e I la
      -- media de los impares. Si no hay pares devolverá como
      -- media de los pares float'first, y si no hay impares
      -- devolverá como su media float'first.


      function Hay_Multiplo(L: A_Lista; N: Integer) return Boolean;
      -- post: Devuelve true sii L contiene algún múltiplo de N


      function Esta_Creciente(L: A_Lista) return Boolean;
      -- post: Devuelve true sii L está en orden creciente1.

      procedure Insertar_al_principio (L: in out A_lista; N: integer);
      -- Post: N esta insertado en la primera posicion de la lista.

      procedure Insertar_al_final (L: in out A_lista; N: integer);
      -- Post: N esta insertado en la ultima posicion de la lista.

      procedure Insertar_ordenado (L:in out A_Lista; N: integer);
      --post: N esta insertado en la posicion que le corresponde 
      --siendo l creciente.

      procedure Eliminar_primero (L: in out A_lista);

      procedure Eliminar_Ultimo (L: in out A_lista);

      procedure Elimianar_I (L: in out A_lista; I: integer);
END ALista_Enteros;
