with ada.integer_text_IO, ada.text_IO,suma_digitos , digito_posicion_mayor;
use ada.integer_text_IO, ada.text_IO;

procedure es_especial is

suma_izq, suma_der : integer := 0;
num, dig, div, dig_mayor, pos_mayor : integer;
cont : integer := 1;
especial : boolean;

begin

get(num);
digito_posicion_mayor(num, pos_mayor, dig_mayor);
suma_der := suma_digitos(num,1,pos_mayor - 1);

div := num;

div := num/10**(pos_mayor);
while div /= 0 and suma_der > 0 loop
  dig := div mod 10;
  suma_der := suma_der - dig;
  div := div/ (10);

end loop;

put(boolean'image(suma_der = 0 and div = 0));
end es_especial;