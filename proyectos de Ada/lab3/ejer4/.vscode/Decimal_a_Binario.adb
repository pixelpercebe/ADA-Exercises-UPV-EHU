with ada.text_IO, ada.integer_text_IO; 
use ada.text_IO, ada.integer_text_IO;

--ESPECIFICACIÓN:
--entrada: Un natural, D (EE-entrada estándar/teclado)
--Pre: Número en base decimal.
--salida: Una secuencia de 0`s y 1's, B (SE salida estandar/pantalla)
--pos: B es una secuencia  de B's y 1's correspondiente al nùmero D en base 2.

procedure Decimal_a_binario is
D : integer;
Aux: Integer;

begin

Put("dame un numero natural en bse decimal: ");
Get(D);
Put("Los datos en binario son:");

While D <= 1 loop
    Aux := D rem 2;
    D := D / 2;
    put(integer'image(Aux) & ",");
end loop;

end Decimal_a_binario;