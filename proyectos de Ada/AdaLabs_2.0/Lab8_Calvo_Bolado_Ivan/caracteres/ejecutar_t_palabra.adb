WITH palabras,ada.Text_IO;use palabras,ada.Text_IO;
procedure ejecutar_t_palabra is

L:t_palabra;

begin

  --Cardipatia
  put_line("****caso1****");
  ejecutar_pruebas(L,"Cardiopatia",11,11);
  new_line;

  --Hipopotamo
  put_line("****caso2****");
  ejecutar_pruebas(L,"Hipopotamo",10,10);
  new_line;

  --H
  put_line("****caso3****");
  ejecutar_pruebas(L,"H",1,1);
  new_line;

  --Ho
  put_line("****caso4****");
  ejecutar_pruebas(L,"Ho",2,2);
  new_line;

  --(vacio)
  put_line("****caso5****");
  ejecutar_pruebas(L,"Cardiopatia",11,0);
  new_line;

  --Cardiorrespiratorios (20 posiciones)
    put_line("****caso6****");
  ejecutar_pruebas(L,"Cardiorrespiratorios",20,20);
  new_line;




end ejecutar_t_palabra;