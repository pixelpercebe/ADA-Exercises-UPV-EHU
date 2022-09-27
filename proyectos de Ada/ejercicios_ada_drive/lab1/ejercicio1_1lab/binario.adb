WITH Ada.Integer_Text_IO; USE Ada.Integer_Text_IO;
with ada.Text_IO;use ada.Text_IO;

-- entrada: un natural, D (EE-entrada est�ndar/teclado).
-- pre: n�mero en base decimal.
-- salida: Una secuencias de 0�s y 1�s, B (SE).
-- pos: B es la secuencia de 0�s y 1�s del n�mero D en base 2

procedure binario is
   D,
   Aux : integer;
BEGIN
   Put("Dame un numero natural en base decimal:");
   Get(D);
   LOOP
      Aux := D rem 2;
      D := D/2;
      Put (Aux);
      EXIT WHEN
         D = 0;
   END LOOP;
end binario;