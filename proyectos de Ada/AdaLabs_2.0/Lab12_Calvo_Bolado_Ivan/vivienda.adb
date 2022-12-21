with ada.Text_IO, ada.integer_text_IO; use ada.integer_text_IO, ada.Text_IO;
package body vivienda is 

PROCEDURE Cargar_Vivienda(F:File_Type; V: out T_Vivienda) is
propietario : String(1..30);
mano : character;
Censados : Natural;
Piso
N:positive;
begin
  Get(F,);
  V.mano := S(2);
  V.piso := S(1);
  V.Censados := S(4)
  v.Propietario := S(6..N);
end Cargar_Vivienda;

PROCEDURE Escribir_Vivienda(V: T_Vivienda) is

begin
  put_line("Piso y mano: ");
  Put(V.piso & V.mano);
  put_line("Propietario: ");
  put(V.propietario);
  put_line("Censados: ");
  put(V.censados);
end Escribir_Vivienda;

end vivienda;