with ada.integer_text_IO,ada.text_IO;
use ada.integer_text_IO,ada.text_IO;

procedure division is
--ESPECIFICACION--
--ENTRADA: 2 integers que respresentan el divisor y el dividendo de la division entera, divisor y dividend (EE) 
--PRE: se debe cumplir que (0 < divisor <= 10) y que (0 <= dividendo <= 100) 
--POST: El cociente sera el numero de restas posibles divident - divisor hasta que divident < divisor 
--y quotient sera el valor de divident despues realizar todas las restas.
--SALIDA: 2 integers con el cociente y el resto de la division entera, quotient y reminder (SE)

  divisor, dividend,remainder :integer; 
  quotient : integer := 0;
begin
  Put("Introduce el dividendo: ");
  Get(dividend);
  Put("Introduce el divisor: ");
  Get(divisor);

  while dividend - divisor >= 0 loop
    quotient := quotient + 1;
    dividend := dividend - divisor;
  end loop;
  remainder := dividend;
  
  put("cociente:" & integer'image(quotient));
  new_line;
  put("Resto:" & integer'image(remainder));
end division;

--CASOS DE PRUEBA:
--caso1, (dividendo cero)= dividendo:0 divisor:7 ---> cociente: 0 Resto: 0
--caso2, (divisor mayor que dividendo)= dividendo:4 divisor:5 ---> cociente: 0 Resto: 4
--Caso3, (dividendo impar entre divisor par)= dividendo: 9 divisor: 2 ---> cociente: 4 Resto: 1
--caso4, (dividendo par entre divisor impar)= dividendo: 20 divisor: 3 ---> cociente:6  Resto: 2
--caso5, (dividendo y divisor par)= dividendo: 344 divisor: 12 ---> cociente: 28 Resto: 8
--caso6, (dividendo y divisor impar)= dividendo: 45 divisor: 15 ---> cociente: 3 Resto: 0