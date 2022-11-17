with ada.Text_IO,lista_numeros;use lista_numeros,ada.Text_IO;

procedure esta_prueba is

L,ordenada,solo,repe: T_Lista;

begin
cargar_registros(L,ordenada,solo,repe);

  EscribirSE(solo);           --(8)
  put_line(esta(solo,8)'img); --caso1 (Lista de un elemento) -> TRUE

  EscribirSE(ordenada);       --(1 5 7 10 16)
  put_line(esta(ordenada,2)'img);   --caso2 (no esta) -> false

  EscribirSE(ordenada);       --(1 5 7 10 16)
  put_line(esta(ordenada,16)'img);--caso3 (esta al final) -> TRUE

  EscribirSE(L);              --(24,16,2,13,5,17)
  put_line(esta(L,24)'img);    --caso4 (esta al principio) -> TRUE
end esta_prueba;