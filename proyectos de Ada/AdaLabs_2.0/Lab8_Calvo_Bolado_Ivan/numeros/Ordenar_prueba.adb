  with ada.Text_IO,lista_numeros;use lista_numeros,ada.Text_IO;
  
  procedure Ordenar_prueba is
  L,ordenada,solo,repe: T_Lista;
  begin
  cargar_registros(L,ordenada,solo,repe);
  --casos de prueba de Ordenar()
  EscribirSE(L);        --(24 16 2 13 5 17)
  ordenar(L);           --caso1(Ordenar varios elementos)
  EscribirSE(L);        --(2 5 13 16 17 24)
  EscribirSE(solo);     --(8)
  ordenar(solo);        --caso2(Ordenar un elemento)
  EscribirSE(solo);     --(8)
  EscribirSE(repe);     --(9 9 9 9 9 9 9 9)
  ordenar(repe);        --caso3(Ordenar vector repetido)
  EscribirSE(repe);     --(9 9 9 9 9 9 9 9)
  EscribirSE(ordenada); --(1 5 7 10 16)
  ordenar(ordenada);    --caso4(ordenar lista ya ordenada)
  EscribirSE(ordenada); --(1 5 7 10 16)


  end Ordenar_prueba;
