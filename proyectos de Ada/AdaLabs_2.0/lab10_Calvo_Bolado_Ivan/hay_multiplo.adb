WITH ALista_Enteros, Ada.Text_IO; USE ALista_Enteros, Ada.Text_IO;
procedure Hay_Multiplo is

vacia,un_elem,L,ordenada,pares,impares: A_Lista;

begin

  put_line("1) cargando lista vacia...");
  CargarF("vacia.txt", vacia);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(vacia);
  put_line("Resultado esperado: FALSE");
  put_Line("Obtenemos: " & Hay_Multiplo(vacia,5)'img);


  new_Line;new_Line;
  put_line("2) cargando lista con un elemento...");
  cargarF("un_elem.txt",un_elem);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(un_elem);
  put_line("Resultado esperado: FALSE");
  put_Line("Obtenemos: " & Hay_Multiplo(un_elem,13)'img);


  new_Line;new_Line;
  put_line("3) cargando lista con varios elementos sin multiplo...");
  cargarF("enteros.txt",L);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(L);
  put_line("Resultado esperado: FALSE");
  put_Line("Obtenemos: " & Hay_Multiplo(L,7)'img);


  new_Line;new_Line;
  put_line("4) cargando lista con varios elementos multiplo al principio...");
  cargarF("enteros_ordenado.txt",ordenada);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(ordenada);
  put_line("Resultado esperado: TRUE");
  put_Line("Obtenemos: " & Hay_Multiplo(ordenada,3)'img);


  new_Line;new_Line;
  put_line("5) cargando lista con multiplo al final...");
  cargarF("pares.txt",pares);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  EscribirSE(pares);
  put_line("Resultado esperado: TRUE");
  put_Line("Obtenemos: " & Hay_Multiplo(pares,144)'img);

end Hay_Multiplo;