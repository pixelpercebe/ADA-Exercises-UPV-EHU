with ada.Text_IO,vector_viviendas,ada.Integer_Text_IO; use ada.Text_IO,vector_viviendas,ada.Integer_Text_IO;
package body Lista_Edificios is

PROCEDURE Cargar_Edificios_Calle_Num(C: T_Nombre; Num: Natural; Pares: boolean; E: out a_Lista_Edificios) is

F:file_type;
N,i,cont:integer; --n = tamaño del VVs (numero de viviendas del loque)
act : a_Lista_Edificios;

begin
  --i controla el numero del edificio al que acceder
  --cont controla el numero de iteraciones
  cont := 1;
  E := null;
  --Una iteracion por edificio
  while cont <= num loop
    i := 2*cont - (boolean'pos(not pares)); --solo resta en caso de ser impar
    Open(F, In_File, "B/" & C.Nom(1..C.Cont) & Integer'Image(i)(2..2) & ".txt");

    get(F,N);
    if E = null then 
      E:=new t_Nodo_Edificio'(i,new t_Vector_Viviendas(1..N),null);
      Cargar_Viviendas(F,E.viviendas.all);
      act:= E;
    else 
      act.Sig_Edificio:= new t_Nodo_Edificio'(i,new t_Vector_Viviendas(1..N),null);
      act := act.Sig_Edificio;
      Cargar_Viviendas(F,act.viviendas.all);
    end if;

    cont := cont + 1;
    close (F);
  end loop;
  

end Cargar_Edificios_Calle_Num;


PROCEDURE Escribir_Edificios(E: a_Lista_Edificios) is
  act : a_Lista_Edificios := E;
begin
  put_line("DATOS SOBRE ESTE BLOQUE: ");
  while act /= null loop
    new_line;
    put("Numero del portal: "); put(act.num,0);
    new_line;
    put_line("Viviendas: ");
    new_line;
    Escribir_ViviendaS(act.Viviendas.all);
    act := act.Sig_Edificio;
  end loop;

end Escribir_Edificios;

function Contar_viviendas_vacia(E: a_lista_Edificios) return integer is
  ed_act : a_lista_Edificios := E;
  cantidad : integer := 0;
begin
  while ed_act /= null loop 
      cantidad := cantidad + contar_vivienda_vacia(ed_act.viviendas.all);
      ed_act := ed_act.Sig_Edificio;
  end loop;
  return cantidad;
end Contar_viviendas_vacia;

end Lista_Edificios;