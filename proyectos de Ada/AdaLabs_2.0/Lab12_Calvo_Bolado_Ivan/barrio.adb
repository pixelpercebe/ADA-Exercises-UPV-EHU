with ada.text_IO,ada.integer_text_IO,lista_edificios; use ada.text_IO,ada.integer_text_IO, lista_edificios;

package body barrio IS

PROCEDURE Cargar_Barrio(B: OUT A_Lista_Calles) IS
  pares, Impares : Integer;
  vacio : character;
  act : a_lista_calles;
  F : File_Type;
begin
  B:=null;
  Open(F,in_File,"B/Calles.txt");
  while not end_of_file(F) loop
    if B = null then
      B := new t_nodo_calle;
      act := B;
    else
      act.Sig_Calle := new t_nodo_calle;
      act := act.sig_calle;
    end if;
      cargar_nombre(F,act.calle);
      get(F,impares);
      get(F,vacio);
      get(F,pares);
      skip_line(F);
      Cargar_Edificios_Calle_Num(act.calle,impares,false,act.impares);
      Cargar_Edificios_Calle_Num(act.calle,pares,true,act.pares);
  end loop;
  close(F);
end Cargar_Barrio;

PROCEDURE Insertar_Ordenado(E: A_Lista_Calles; B: IN OUT A_Lista_Calles) is

act : a_lista_calles := B;
ant : a_lista_calles := B;

begin

while act /= null and then menor(act.calle,E.calle) loop

 ant := act;
 act := act.sig_calle;

end loop;

if act = null then 
  ant := E;
  ant.sig_calle := B;
  B:=ant;
  else 
  E.sig_calle := ant.sig_calle;
  ant.sig_calle := E;
end if;

end Insertar_Ordenado;


PROCEDURE Escribir_Barrio(B: A_Lista_Calles) is

act : a_lista_calles := B;

begin

  while act /= null loop
    new_line;
    new_line;
    Escribir_Nombre(act.calle);
    new_line;
    put_line("***Portales Pares***");
    escribir_edificios(act.pares);
    new_line;
    put_line("***Portales Impares***");
    escribir_edificios(act.impares);
    act := act.sig_calle;
  end loop;
end Escribir_Barrio;



  function cuantos_censados(B : A_Lista_Calles) return integer is
   suma: integer;
   act : a_lista_calles := B;
  begin
   suma := 0;
   while act /= null loop
     suma := suma + act.impares.num + act.pares.num;
     act := act.sig_calle;
   end loop;
   return suma;
  end cuantos_censados;

  function cuantos_vacios(B: A_lista_calles) return integer is
    cantidad : integer := 0;
    act : a_lista_calles := B;
  begin
    while act /= null loop
      cantidad := cantidad + Contar_viviendas_vacia(act.impares) + Contar_viviendas_vacia(act.pares);
      act := act.sig_calle;
    end loop;
    return 0;
  end cuantos_vacios;

end barrio;