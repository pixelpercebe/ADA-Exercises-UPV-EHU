with ada.text_IO,ada.integer_text_IO, contar_divisores_propios;
use ada.text_IO,ada.integer_text_IO;

procedure contar_divisores_propios_prueba is

begin

  put(contar_divisores_propios(1),0);--caso1
  New_Line;
  put(contar_divisores_propios(12),0);--caso2
  New_Line;
  put(contar_divisores_propios(568),0);--caso4
  New_Line;
  put(contar_divisores_propios(1779),0);--caso5
  

end contar_divisores_propios_prueba;

--CASOS DE PRUEBA
--caso1 (una iteracion) -->0
--caso2 (pocas iteraciones) -->4
--caso4 (varias iteraciones) -->6
--caso5 (muchas iteraciones) -->2