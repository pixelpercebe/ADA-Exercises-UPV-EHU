with lista_numeros, ada.Text_IO; use lista_numeros, ada.Text_IO;


procedure ejecutar_lista_numeros is

L,ordenada,solo: T_Lista;

begin
cargar_registros(L,ordenada,solo);
Put_line(esta(L,24)'img);

EscribirSE(L);
Elimina_I(L,3);
EscribirSE(L);
New_Line;
EscribirSE(ordenada);
Insertar_Orden(ordenada,11);
EscribirSE(ordenada);
EscribirSE(solo);
Insertar_Orden(solo,1);
EscribirSE(solo);


end ejecutar_lista_numeros;