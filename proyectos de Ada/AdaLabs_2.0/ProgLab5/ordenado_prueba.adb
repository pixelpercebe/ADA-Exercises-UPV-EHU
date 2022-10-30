with ada.text_IO, ordenado, tipos_lab5;
use ada.text_IO, tipos_lab5;


procedure ordenado_prueba is

v_vacio:    t_enteros(1..0);
v_uno :     t_enteros(1..1) := (4);
v_ordenado: t_enteros(1..4) := (1,2,3,4);
v_principio:t_enteros(1..4) := (3,1,2,3);
v_medio:    t_enteros(1..5) := (4,5,2,6,7);
v_final:    t_enteros(1..6) := (1,3,6,12,13,9);


begin

  put_line(ordenado(v_vacio)'img);
  put_line(ordenado(v_uno)'img);
  put_line(ordenado(v_ordenado)'img);
  put_line(ordenado(v_principio)'img);
  put_line(ordenado(v_medio)'img);
  put_line(ordenado(v_final)'img);

end ordenado_prueba;

--CASOS DE PRUEBA
--CASO1 (vector vacio) : () -> TRUE
--CASO2 (vector con un elemento) : (4) -> TRUE
--CASO3 (vector ordenado): (1,2,3,4) -> TRUE 
--CASO4 (desordenado al principio) : (3,1,2,3) -> FALSE 
--CASO5 (desordenado en el medio) : (4,5,2,6,7) -> FALSE
--CASO6 (desordenado al final) :(1,3,6,12,13,9) -> FALSE