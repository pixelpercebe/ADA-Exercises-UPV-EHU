WITH Ada.Text_IO,Ada.integer_text_IO;
USE Ada.Text_IO,Ada.integer_text_IO;

-- ESPECIFICACIÓN:
-- entrada: dos enteros, M y N (EE-entrada estándar/teclado).
-- salida:.dos enteros X e Y (SE-salida estándar/pantalla).
-- pos: X>=Y y (( X=M y Y=N) o ( X=N y Y=M))

PROCEDURE Descendente IS
   N,
   M,
   X,
   Y : Integer; -- declaraci�n de variables

BEGIN
   -- Lee los datos
   Put("dame el primer numero: ");
   Get(N);
   Put("dame el segundo numero: ");
   Get(M);

   -- Trata los datos
   IF M > N THEN
      X:= M;
      Y:= N;
   ELSE
      X:= N;
      Y:= M;
   END IF;

   -- Escribe resultados
   Put("Los numeros en orden descendente son: ");
   Put(X);
   Put(Y);
END Descendente;

--CASO 1: N:23,M:23   |  23 23
--CASO 2: N:78,M:23   |  78 23
--CASO 3: N:23,M:89   |  89 23
--CASO 4: N:23,M:0    | -23 0
--CASO 5: N:-23,M:-12 | -12-23
--CASO 6: N:-83,M:67  |  67-83
