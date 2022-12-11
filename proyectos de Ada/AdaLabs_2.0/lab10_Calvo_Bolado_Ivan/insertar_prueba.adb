WITH ALista_Enteros, Ada.Text_IO; USE ALista_Enteros, Ada.Text_IO;
procedure insertar_prueba is

vacia,un_elem,L,ordenada: A_Lista;

begin

  put_line("--- INSERTAR AL PRINCIPIO ---");
  new_Line;
  put_line("1) cargando lista vacia...");
  CargarF("vacia.txt", vacia);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(vacia);
  put_line("Insertar al inicio el numero: 5");
  Insertar_al_principio(vacia,5);
  EscribirSE(vacia);

  new_Line;new_Line;
  put_line("2) cargando lista con un elemento...");
  cargarF("un_elem.txt",un_elem);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(un_elem);
  put_line("Insertar al inicio el numero: 141");
  Insertar_al_principio(un_elem,141);
  EscribirSE(un_elem);

  new_Line;new_Line;
  put_line("3) cargando lista con varios elementos...");
  cargarF("enteros.txt",L);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(L);
  put_line("Insertar al inicio el numero: 89");
  Insertar_al_principio(L,89);
  EscribirSE(L);

  new_Line;new_Line;
  put_line("4) cargando lista con varios elementos...");
  cargarF("enteros_ordenado.txt",ordenada);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(ordenada);
  put_line("Insertar al inicio el numero: 25");
  Insertar_al_principio(ordenada,25);
  EscribirSE(ordenada);


  new_Line;new_Line;
  put_line("--- INSERTAR AL FINAL ---");
  new_Line;
  put_line("1) cargando lista vacia...");
  CargarF("vacia.txt", vacia);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(vacia);
  put_line("Insertar el numero: 5");
  Insertar_al_final(vacia,5);
  EscribirSE(vacia);

  new_Line;new_Line;
  put_line("2) cargando lista con un elemento...");
  cargarF("un_elem.txt",un_elem);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(un_elem);
  put_line("Insertar al final el numero: 141");
  Insertar_al_final(un_elem,141);
  EscribirSE(un_elem);

  new_Line;new_Line;
  put_line("3) cargando lista con varios elementos...");
  cargarF("enteros.txt",L);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(L);
  put_line("Insertar al final el numero: 89");
  Insertar_al_final(L,89);
  EscribirSE(L);

  new_Line;new_Line;
  put_line("4) cargando lista con varios elementos...");
  cargarF("enteros_ordenado.txt",ordenada);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(ordenada);
  put_line("Insertar al final el numero: 25");
  Insertar_al_final(ordenada,25);
  EscribirSE(ordenada);

  new_Line;new_Line;
  put_line("--- INSERTAR ORDENADO ---");
  new_Line;
  put_line("1) cargando lista vacia...");
  CargarF("vacia.txt", vacia);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(vacia);
  put_line("Insertar ordenado el numero: 5");
  Insertar_ordenado(vacia,5);
  EscribirSE(vacia);

  new_Line;
  put_line("2) cargando lista con un elemento...");
  cargarF("un_elem.txt",un_elem);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(un_elem);
  put_line("Insertar ordenado el numero: 141");
  Insertar_ordenado(un_elem,141);
  EscribirSE(un_elem);
  
  new_Line;
  put_line("3) cargando lista con un elemento...");
  cargarF("un_elem.txt",un_elem);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(un_elem);
  put_line("Insertar ordenado el numero: 270");
  Insertar_ordenado(un_elem,270);
  EscribirSE(un_elem);

    new_Line;new_Line;
  put_line("4) cargando lista con varios elementos...");
  cargarF("enteros_ordenado.txt",ordenada);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(ordenada);
  put_line("Insertar ordenado el numero: 25");
  Insertar_ordenado(ordenada,25);
  EscribirSE(ordenada);

end insertar_prueba;