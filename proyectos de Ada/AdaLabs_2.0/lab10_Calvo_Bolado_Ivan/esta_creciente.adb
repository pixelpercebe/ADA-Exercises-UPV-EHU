with ALista_Enteros, ada.Text_IO; use ALista_Enteros, ada.Text_IO;

procedure Esta_Creciente is

vacia,un_elem,L,ordenada,inicio, final: A_lista;

begin

  put_line("1) cargando lista vacia...");
  CargarF("vacia.txt", vacia);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(vacia);
  put_line("Resultado esperado: FALSE");
  put_Line("Obtenemos: " & Esta_Creciente(vacia)'img);
  

  new_Line;new_Line;
  put_line("2) cargando lista con un elemento...");
  cargarF("un_elem.txt",un_elem);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(un_elem);
  put_line("Resultado esperado: TRUE");
  put_Line("Obtenemos: " & Esta_Creciente(un_elem)'img);


  new_Line;new_Line;
  put_line("3) cargando lista con varios elementos...");
  cargarF("enteros.txt",L);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(L);
  put_line("Resultado esperado: FALSE");
  put_Line("Obtenemos: " & Esta_Creciente(L)'img);


  new_Line;new_Line;
  put_line("4) cargando lista con varios elementos ordenada...");
  cargarF("enteros_ordenado.txt",ordenada);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(ordenada);
  put_line("Resultado esperado: TRUE");
  put_Line("Obtenemos: " & Esta_Creciente(ordenada)'img);




  new_Line;new_Line;
  put_line("6) cargando lista con varios elementos desordenados al inicio...");
  cargarF("desordenada_inicio.txt",inicio);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(ordenada);
  put_line("Resultado esperado: FALSE");
  put_Line("Obtenemos: " & Esta_Creciente(inicio)'img);


  new_Line;new_Line;
  put_line("6) cargando lista con varios elementos desordenados al final...");
  cargarF("desordenada_final.txt",final);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(ordenada);
  put_line("Resultado esperado: FALSE");
  put_Line("Obtenemos: " & Esta_Creciente(final)'img);

end Esta_Creciente;