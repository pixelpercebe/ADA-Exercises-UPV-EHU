with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

-- entrada: un natural, D (EE-entrada estándar/teclado).
-- pre: número en base decimal.
-- salida: Una secuencias de 0’s y 1’s, B (SE).
-- pos: B es la secuencia de 0’s y 1’s del número D en base 2

procedure binario_a_decimal is
    D,
    Aux : integer;
BEGIN
    Put("Dame un numero natural:");
    get(D);
    if D = 0 then
        put(0);
    end if;
    while D >= 1  loop
        Aux := D rem 2;
        D := D/2;
        put(Aux);
    end loop;
end binario_a_decimal;

--CASOS DE PRUEBA:
--caso1: D=0    | resultado: 0
--caso2: D=567  | resultado: 1 1 1 0 1 1 0 0 0 1
--caso3: D=16   | resultado: 0 0 0 0 1
--caso4: D=47   | resultado: 1 1 1 1 0 1

-- ¿Con una sentencia loop se podría evitar repetir el put (dentro y fuera del
-- bucle)? SI
-- ¿Cómo?

--loop
--  Aux := D rem 2;
--  put(Aux);
--  D := D/2;
--  exit when
--      d = 0
--end loop
