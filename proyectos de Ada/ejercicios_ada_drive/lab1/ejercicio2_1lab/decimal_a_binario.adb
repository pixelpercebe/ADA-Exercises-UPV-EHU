With ada.text_IO,ada.integer_text_IO;
use ada.text_IO,ada.integer_text_IO;
--ESPECIFICACIÓN:
--ENTRADA: Un natural, D (EE)
--PRECONDICIÓN: Numero en base decimal.
--SALILDA: una secuencia de ceros y unos.
--POSTCONDICIÓN:B es una secuencia de ceros y unos del número D en base 2.

--ALGORITMO:
--Leer un dato desde el teclado, D
--Inizializar el proceso:
--estructura iterativa loop
--  loop
--    B:= (Aux mod 2)*10**dig+B;  (DETERMINA EL VALOR Y LA POSICIÓN)
--  exit when aux <2;             (CUANDO LA DIVISION ES MENOR A 2 SALE DEL BUCLE)
--    dig := dig+1;               (VARIABLE QUE INCREMENTA EL EXPONENTE QUE DETEMINA LA POSICIÓN)
--    aux := aux/2;               (DIVISION ENTRE DOS, VA REDUCIENDO EL NUMERO HASTA 1 O 0)
--  end loop;
--Escribir resultado: (B) una secuencia de 0 y 1

procedure decimal_a_binario is
D,Aux,B,dig : integer;
begin
put("dame un numero natural:");
get(D);
aux := D;
B := 0;
dig := 0;
loop
  B:= (Aux mod 2)*10**dig+B;
  exit when aux <2;
    dig := dig+1;
    aux := aux/2;
  end loop;
  put(B, 6);
end decimal_a_binario;

--CASOS DE PRUEBA:
--CASO1:D=0    | RESULTADO:0
--CASO2:D=567  | RESULTADO:1000110111
--CASO3:D=47   | RESULTADO:111101
