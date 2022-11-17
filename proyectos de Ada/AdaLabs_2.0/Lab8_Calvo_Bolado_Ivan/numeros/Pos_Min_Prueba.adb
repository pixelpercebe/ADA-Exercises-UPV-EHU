  with ada.Text_IO,lista_numeros;use lista_numeros,ada.Text_IO;

  procedure pos_min_prueba is
  L,ordenada,solo,repe: T_Lista;
  begin
  cargar_registros(L,ordenada,solo,repe);
  --casos de prueba de Pos_min()
  cargar_registros(L,ordenada,solo,repe);
  EscribirSE(repe);               --(9 9 9 9 9 9 9 9)                     
  put_line(pos_min(repe,1)'img);  --caso1(elementos repetidos) -> pos: 1
  EscribirSE(solo);               --(8)
  put_line(pos_min(solo,1)'img);  --caso2(un solo elemento) -> pos: 1
  EscribirSE(L);                  --(24 16 2 13 5 17)
  put_line(pos_min(L,4)'img);     --caso3(la mitad del vector) -> pos: 5
  put_line(pos_min(L,6)'img);     --caso3(solo el ultimo elemento del vector) -> pos: 6
  new_line;


  end pos_min_prueba;