with lista_numeros, ada.Text_IO; use lista_numeros, ada.Text_IO;


procedure ejecutar_lista_numeros is

L,ordenada,solo,repe: T_Lista;

begin
  cargar_registros(L,ordenada,solo,repe);
  Put_line(esta(L,24)'img);

  --casos de prueba Eliminar_I()
  EscribirSE(solo); --(8)
  Elimina_I(solo,1);--caso1 (1 elemento)
  EscribirSE(solo); --()
  cargar_registros(L,ordenada,solo,repe);
  EscribirSE(L);  --(24 16 2 13 5 17)
  Elimina_I(L,1); --caso2 (eliminar al principio)
  EscribirSE(L);  --(16 2 13 5 17)
  cargar_registros(L,ordenada,solo,repe);
  EscribirSE(L);      --24 16 2 13 5 17
  Elimina_I(L,L.cont);--caso3 (eliminar al final)
  EscribirSE(L);      --(24 16 2 13 5)
  cargar_registros(L,ordenada,solo,repe);
  EscribirSE(L);  --(24 16 2 13 5 17)
  Elimina_I(L,3); --caso4 (eliminar en el centro)
  EscribirSE(L);  --(24 16 13 5 17)

  --Casos de prueba Insertar_Orden()
  EscribirSE(solo);           --(8)
  Insertar_Orden(solo,1);     --caso1 (Lista de un elemento)
  EscribirSE(solo);           --(1 8)

  EscribirSE(ordenada);       --(1 5 7 10 16)
  Insertar_Orden(ordenada,1); --caso2 (Insertar al principio)
  EscribirSE(ordenada);       --(1 1 5 7 10 16)
  Insertar_Orden(ordenada,20);--caso3 (Insertar al final)
  EscribirSE(ordenada);       --(1 1 5 7 10 16 20)
  Insertar_Orden(ordenada,9); --caso4 (Insertar en el medio)
  EscribirSE(ordenada);       --(1 1 5 7 9 10 16 20)

  EscribirSE(repe);           --9 9 9 9 9 9 9 9
  Insertar_Orden(repe,10);    --caso5(lista de elementos repetidos)
  EscribirSE(repe);           --9 9 9 9 9 9 9 9 10
  New_Line;

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



end ejecutar_lista_numeros;