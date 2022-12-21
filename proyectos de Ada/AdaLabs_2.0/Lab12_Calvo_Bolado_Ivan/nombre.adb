with ada.Text_IO; use ada.Text_IO;

package body nombre IS

PROCEDURE Cargar_Nombre(F: File_Type; Nom: out T_Nombre) IS
begin
  Get_Line(F,Nom.nom,nom.cont);
end Cargar_Nombre;

PROCEDURE Escribir_Nombre(Nom: T_Nombre) is
begin
  put(nom.nom(1..Nom.Cont));
  new_line;
end Escribir_Nombre;

FUNCTION Menor(Nom1, Nom2: T_Nombre) RETURN Boolean is
begin
  return (nom1.nom < nom2.nom);
end menor;

end nombre;