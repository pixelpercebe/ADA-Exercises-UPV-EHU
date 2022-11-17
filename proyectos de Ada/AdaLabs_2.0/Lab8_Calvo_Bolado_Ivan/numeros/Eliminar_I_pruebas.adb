with ada.Text_IO,lista_numeros;use lista_numeros,ada.Text_IO;

procedure Eliminar_I_prueba is

L,ordenada,solo,repe: T_Lista;

begin
  cargar_registros(L,ordenada,solo,repe);
 
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

  end Eliminar_I_prueba;