with ada.text_IO,lista_edificios; use ada.text_IO, lista_edificios;

package body barrio IS

PROCEDURE Cargar_Barrio(B: OUT A_Lista_Calles) IS
  pares, Impares : integer;
  vacio : character;
  act : a_lista_calles;
begin
  B:=null;
  Open(F,in_File,"B/calles.txt");
  while not end_of_file(F) loop
    if B = null then
      B := new t_nodo_calle;
      cargar_nombre(F,B.calle);
      get(F,impares);
      get(F,vacio);
      get(F,pares);
      Cargar_Edificios_Calle_Num(calle,impares,false,B.impares);
      Cargar_Edificios_Calle_Num(calle,pares,true,B.pares);
      act = B;
    else
      act.Sig_Calle = new t_nodo_calle;
      act := sig_calle;
      cargar_nombre(F,act.calle);
      get(F,impares);
      get(F,vacio);
      get(F,pares);
      Cargar_Edificios_Calle_Num(calle,impares,false,act.impares);
      Cargar_Edificios_Calle_Num(calle,pares,true,act.pares);
  end loop;
end Cargar_Barrio;


PROCEDURE Insertar_Ordenado(E: A_Lista_Calles; B: IN OUT A_Lista_Calles);

act = a_lista_calles;
ant = a_lista_calles;

begin

while act /= null and  then


end loop;

end Insertar_Ordenado;


PROCEDURE Escribir_Barrio(B: A_Lista_Calles);

begin



end Insertar_Ordenado;

end barrio;