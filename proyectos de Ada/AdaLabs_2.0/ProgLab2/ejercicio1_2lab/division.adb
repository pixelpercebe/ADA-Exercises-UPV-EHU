with ada.integer_text_IO,ada.text_IO;
use ada.integer_text_IO,ada.text_IO;

procedure division is
--ESPECIFICACION--
--ENTRADA: 2 integers que respresentan el divisor y el dividendo de la division entera, divisor y dividend (EE) 
--PRE: se debe cumplir que (0 < divisor <= 10) y que (0 <= dividendo <= 100) 
--POST: El cociente sera el numero de restas posibles divident - divisor hasta que divident < divisor 
--y quotient sera el valor de divident despues realizar todas las restas.
--SALIDA: 2 integers con el cociente y el resto de la division entera, quotient y reminder (SE)

  divisor, dividend, remainder, quotient : integer;
begin
  Put("Introduce el dividendo: ");
  Get(dividend);
  Put("Introduce el divisor: ");
  Get(divisor);

  remainder := 0;
  if dividend = 0 then
    remainder := dividend;
    quotient := 0;
  else
    while dividend >= divisor loop
      dividend := dividend - divisor;
      remainder := remainder + 1;
      quotient := dividend;
    end loop;
  end if;
  put("cociente:" & integer'image(quotient));
  new_line;
  put("Resto:" & integer'image(remainder));
end division;