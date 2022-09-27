WITH Ada.Integer_Text_IO, Ada.Text_IO;
USE Ada.Integer_Text_IO, Ada.Text_IO;

FUNCTION Hacer_Multiplicacion (multiando,Multidor: In Integer)RETURN Integer IS
   --Especificacion
   --POST: Producto es el resultado de sumar o restar el multiplicando sucesivamente el numero de veces que diga el multiplicador.

   Producto:Integer;
BEGIN
   Put(multiando);
   put(multidor);
   Producto := 0;
   FOR N IN 1..ABS(Multidor)LOOP
      Producto := Producto + ABS(multiando);
   END LOOP;

   IF (Multiando < 0) XOR (Multidor < 0) THEN
      Producto:= -Producto;
   END IF;
   return(Producto);
END Hacer_Multiplicacion;



