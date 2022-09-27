With Ada.integer_text_IO, Ada.text_IO;
use Ada.Integer_Text_IO, Ada.text_IO;

procedure  multiplicacion is
--Especificacion
--ENTRADA: Dos numeros enteros: multiplicador, multiplicando (EE)
--SALIDA: Un entero, Producto (SE)
--POST: Producto es el resultado de sumar o restar el multiplicando sucesivamente el numero de veces que diga el multiplicador. x*y = x+x+x...(y veces)

  multiplicador, multiplicando, producto : integer;
begin
  producto := multiplicando;
  put("¿Que dos numeros quieres multiplicar?");
  New_Line;
  get(multiplicando);
  put(Integer'Image(multiplicando) & " X ");
  Get (multiplicador);

  for n in 1..abs(multiplicador) loop
    if (multiplicando > 0 and multiplicador > 0) or (multiplicando < 0 and multiplicador < 0) then
      producto := abs(producto) + abs(multiplicando);
    elsif multiplicando < 0 and multiplicador > 0 then
      producto := multiplicando - abs(producto);
    elsif multiplicando > 0 and multiplicador < 0 then
      producto := -multiplicando - abs(producto);
    else
      producto := 0; 
    end if;
  end loop;

  put(producto);

end multiplicacion;

--Casos de prueba:
--CASO1:0*0 RESULTADO: 0
--CASO2:0*10 RESULTADO: 0
--CASO3:-0*8 RESULTADO: 0
--CASO4:1*-5 RESULTADO: -5
--CASO5:15*4 RESULTADO: 60
--CASO5:100*5600 RESULTADO: 560000
--CASO6:-123*732 RESULTADO: -90036