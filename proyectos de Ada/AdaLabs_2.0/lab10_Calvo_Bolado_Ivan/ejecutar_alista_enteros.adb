WITH ALista_Enteros, Ada.Text_IO; USE ALista_Enteros, Ada.Text_IO;

PROCEDURE Ejecutar_ALista_Enteros IS
   L: A_Lista;
BEGIN
   put_Line("Cargo y escribo un fichero de enteros desordenado: (3 12 45 5 67 45)");
   CargarF("enteros.txt", L);
   EscribirSE(L);
   put("numero de elementos: ");
   put(num_elem'img(2..num_elem'img'last));

   new_Line; new_Line;
   put_Line("Cargo y escribo un fichero de enteros ordenado: (3  15 32 45 55 67)");
   CargarF("enteros_ordenado.txt", L);
   EscribirSE(L);
   put("numero de elementos: ");
   put(num_elem'img(2..num_elem'img'last));
END Ejecutar_ALista_Enteros;

