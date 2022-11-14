with lista_numeros, ada.Text_IO; use lista_numeros, ada.Text_IO;


procedure ejecutar_lista_numeros is

L: T_Lista;

begin
cargar_registros(L);

Put(esta(L,24)'img);

end ejecutar_lista_numeros;