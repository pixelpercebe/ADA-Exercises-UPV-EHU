with ALista_Enteros, ada.Text_IO,ada.float_text_IO; use ALista_Enteros, ada.Text_IO,ada.float_text_IO;

procedure Media_Pares_Impares is

  vacia,un_elem,L,ordenada,pares,impares: A_Lista;
  P,I: float;

Begin

  put_line("1) cargando lista vacia...");
  CargarF("vacia.txt", vacia);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  Media_Pares_Impares(vacia,P,I);
  put("-Elementos pares: ");put(P,0,2,0);
  new_Line;
  put("-Elementos impares: ");put(I,0,2,0);


  new_Line;new_Line;
  put_line("2) cargando lista con un elemento...");
  cargarF("un_elem.txt",un_elem);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  Media_Pares_Impares(un_elem,P,I);
  put("-Elementos pares: ");put(P,0,2,0);
  new_Line;
  put("-Elementos impares: ");put(I,0,2,0);


  new_Line;new_Line;
  put_line("3) cargando lista con varios elementos...");
  cargarF("enteros.txt",L);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  Media_Pares_Impares(L,P,I);
  put("-Elementos pares: ");put(P,0,2,0);
  new_Line;
  put("-Elementos impares: ");put(I,0,2,0);



  new_Line;new_Line;
  put_line("4) cargando lista con varios elementos...");
  cargarF("enteros_ordenado.txt",ordenada);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  Media_Pares_Impares(ordenada,P,I);
  put("-Elementos pares: ");put(P,0,2,0);
  new_Line;
  put("-Elementos impares: ");put(I,0,2,0);



  new_Line;new_Line;
  put_line("6) cargando lista con varios elementos pares...");
  cargarF("pares.txt",pares);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  Media_Pares_Impares(pares,P,I);
  put("-Elementos pares: ");put(P,0,2,0);
  new_Line;
  put("-Elementos impares: ");put(I,0,2,0);


  new_Line;new_Line;
  put_line("6) cargando lista con varios elementos impares...");
  cargarF("impares.txt",impares);
  put_line("lista con " & num_elem'img(2..num_elem'img'last) & " elementos cargada");
  Media_Pares_Impares(impares,P,I);
  put("-Elementos pares: ");put(P,0,2,0);
  new_Line;
  put("-Elementos impares: ");put(I,0,2,0);


end Media_Pares_Impares;