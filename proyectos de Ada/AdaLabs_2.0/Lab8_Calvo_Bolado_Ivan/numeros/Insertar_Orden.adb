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