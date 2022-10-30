with tipos_lab5,ada.text_IO , ada.integer_text_IO,diamantes;
use tipos_lab5,ada.text_IO ,ada.integer_text_IO;


procedure diamantes_prueba is

v_vacio : t_mina(1..0);
v_ninguno: t_mina:=('>','<','<','<');
v_principio: t_mina:=('<','>','<','<','<','<');
v_medio: t_mina:=('>','<','<','>','<','>','<','<');
v_final: t_mina:=('<','<','<','<','<','<','<','>','<','>');

begin

put("esta mina contiene: ");
put(diamantes(v_vacio),0);
put(" diamantes");
new_line;
put("esta mina contiene: ");
put(diamantes(v_ninguno),0);
put(" diamantes");
new_line;
put("esta mina contiene: ");
put(diamantes(v_principio),0);
put(" diamantes");
new_line;
put("esta mina contiene: ");
put(diamantes(v_medio),0);
put(" diamantes");
new_line; 
put("esta mina contiene: ");
put(diamantes(v_final),0);
put(" diamantes");


end diamantes_prueba;


--CASOS DE PRUEBA
--CASO1 (vector vacio) :() = 0
--CASO2 (no hay minas): ('>','<','<','<') = 0
--CASO3 (minas al principio) : ('<','>','<','<','<','<') =  1
--CASO4 (minas en el medio) : ('>','<','<','<','>','<','>','<') = 2
--CASO5 (minas al final) : ('<','<','<','<','<','<','<','>','<','>') = 2