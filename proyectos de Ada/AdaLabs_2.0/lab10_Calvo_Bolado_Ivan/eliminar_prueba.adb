WITH ALista_Enteros, Ada.Text_IO; USE ALista_Enteros, Ada.Text_IO;
procedure eliminar_prueba is

vacia,un_elem,L,ordenada: A_Lista;

begin

  put_line("--- ELIMINAR PRIMERO ---");
  new_Line;
  put_line("1) cargando lista vacia...");
  CargarF("vacia.txt", vacia);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(vacia);
  Eliminar_primero(vacia);
  EscribirSE(vacia);

  new_Line;new_Line;
  put_line("2) cargando lista con un elemento...");
  cargarF("un_elem.txt",un_elem);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(un_elem);
  Eliminar_primero(un_elem);
  EscribirSE(un_elem);

  new_Line;new_Line;
  put_line("3) cargando lista con varios elementos...");
  cargarF("enteros.txt",L);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(L);
  Eliminar_primero(L);
  EscribirSE(L);

  new_Line;new_Line;
  put_line("4) cargando lista con varios elementos...");
  cargarF("enteros_ordenado.txt",ordenada);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(ordenada);
  Eliminar_primero(ordenada);
  EscribirSE(ordenada);


  new_Line;new_Line;
  put_line("--- ELIMINAR ULTIMO ---");
  new_Line;
  put_line("1) cargando lista vacia...");
  CargarF("vacia.txt", vacia);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(vacia);
  Eliminar_Ultimo(vacia);
  EscribirSE(vacia);

  new_Line;new_Line;
  put_line("2) cargando lista con un elemento...");
  cargarF("un_elem.txt",un_elem);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(un_elem);
  Eliminar_Ultimo(un_elem);
  EscribirSE(un_elem);

  new_Line;new_Line;
  put_line("3) cargando lista con varios elementos...");
  cargarF("enteros.txt",L);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(L);
  Eliminar_Ultimo(L);
  EscribirSE(L);

  new_Line;new_Line;
  put_line("4) cargando lista con varios elementos...");
  cargarF("enteros_ordenado.txt",ordenada);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(ordenada);
  Eliminar_Ultimo(ordenada);
  EscribirSE(ordenada);

  new_Line;new_Line;
  put_line("--- ELIMINAR I ---");
  
  new_Line;
  put_line("1) cargando lista con un elemento...");
  cargarF("un_elem.txt",un_elem);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(un_elem);
  Elimianar_I(un_elem,1);
  EscribirSE(un_elem);

  new_Line;new_Line;
  put_line("4) cargando lista con varios elementos...");
  cargarF("enteros.txt",L);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(L);
  put_line("eliminar el 6 elemento");
  Elimianar_I(L,6);
  EscribirSE(l);

    new_Line;new_Line;
  put_line("5) cargando lista con varios elementos...");
  cargarF("enteros.txt",L);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(L);
  put_line("eliminar el 3 elemento");
  Elimianar_I(L,3);
  EscribirSE(l);


    new_Line;new_Line;
  put_line("6) cargando lista con varios elementos...");
  cargarF("enteros_ordenado.txt",ordenada);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(ordenada);
  put_line("Eliminar el 1 elemento");
  Elimianar_I(ordenada,1);
  EscribirSE(ordenada);

end eliminar_prueba;