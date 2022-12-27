with ada.Text_IO, ada.integer_text_IO,nombre; use ada.integer_text_IO, ada.Text_IO,nombre;
package body vivienda is 

PROCEDURE Cargar_Vivienda(F:File_Type; V: out T_Vivienda) is
N:character;
begin
    get(F,V.piso);
    get(F,V.mano);
    get(F,V.censados);
    get(F,N);
    cargar_nombre(F,V.propietario);
end Cargar_Vivienda;

PROCEDURE Escribir_Vivienda(V: T_Vivienda) is

begin
  put_line("Piso " & V.piso'img & V.mano & " Censados: " & V.censados'img & "- " & V.propietario.nom(1..v.propietario.cont));
end Escribir_Vivienda;


end vivienda;