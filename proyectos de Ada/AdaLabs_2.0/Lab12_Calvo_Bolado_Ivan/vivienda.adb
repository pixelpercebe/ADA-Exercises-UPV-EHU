with ada.Text_IO, ada.integer_text_IO; use ada.integer_text_IO, ada.Text_IO;
package body vivienda is 

PROCEDURE Cargar_Vivienda(F:File_Type; V: out T_Vivienda) is
S:String(1..36);
N:positive;
begin
  Get_line(F,S,N);
  V.mano := S(2);
  V.piso := S'first;
  V.Censados := integer'value(S(4..5));
  v.Propietario.nom(1..N-(6-1)) := S(6..N);
  V.propietario.cont := N - 6;
end Cargar_Vivienda;

PROCEDURE Escribir_Vivienda(V: T_Vivienda) is

begin
  put_line("Piso y mano: ");
  Put(V.piso,0);put(V.mano);
  new_line;
  put_line("Propietario: ");
  put(V.propietario.nom(1..v.propietario.cont));
  new_line;
  put_line("Censados: ");
  put(V.censados);
  new_line;
  new_line;
end Escribir_Vivienda;

end vivienda;