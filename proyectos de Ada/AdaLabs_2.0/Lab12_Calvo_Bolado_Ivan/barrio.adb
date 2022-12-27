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



  function cuantos_censados(B : A_Lista_Calles) return Integer is
   censados,N,res : integer := 0;
   act : a_lista_calles := B;
  begin
   while act /= null loop 
    contar_censados_y_vacias(B.impares,censados,N);
    res := res + censados;
    contar_censados_y_vacias(B.pares,censados,N);
    res := res + censados;
    act := act.sig_calle;
   end loop;
   return res;
  end cuantos_censados;

  function cuantos_vacios(B: A_lista_calles) return integer is
    res,vacias,N  : integer := 0;
    act : a_lista_calles := B;
  begin
    while act /= null loop
      contar_censados_y_vacias(B.impares,N,vacias);
      res := res + vacias;
      contar_censados_y_vacias(B.pares,N,vacias);
      res := res + vacias;
      act := act.sig_calle;
    end loop;
    return res;
  end cuantos_vacios;



  procedure eliminar_barrio(B: in out a_lista_calles; nom: t_nombre; calle_nodo: out a_lista_calles) is
    act, ant: a_lista_calles := B;
  begin
    while act /= null and then act.calle = B.calle loop
      act := act.sig_calle;
    end loop;

 
    if B /= null and then act = ant then
      calle_nodo := act;
      B := B.sig_calle;
      calle_nodo.sig_calle := null;
    else if act /= null then
      calle_nodo := act;
      ant.sig_calle := act.sig_calle;
      calle_nodo.sig_calle := null;
    else
      calle_nodo:= null;
    end if;
    end if;

  end eliminar_barrio;


  procedure sustiutuir_barrio(B: in out a_lista_calles;nom_ant,nom_act : t_nombre) is

    Calle_nodo: a_lista_calles;

  begin

    eliminar_barrio(B,nom_ant,calle_nodo);

    if calle_nodo /= null then
      calle_nodo.calle := nom_act;
      Insertar_Ordenado(calle_nodo,calle_nodo);
    end if;

  end sustiutuir_barrio;



end barrio;