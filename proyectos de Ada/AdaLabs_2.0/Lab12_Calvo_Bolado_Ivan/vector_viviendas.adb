with vivienda,ada.Text_IO; use vivienda,ada.Text_IO;
package body vector_viviendas IS

PROCEDURE Cargar_Viviendas(F:File_Type; VVs: out t_Vector_Viviendas) is

i:integer:=VVs'first;
V:t_vivienda;
begin

while not End_Of_File(F) loop
  Cargar_Vivienda(F,V);
  VVs(i) := V;
  i := i+1;
end loop;

end Cargar_Viviendas;

PROCEDURE Escribir_Viviendas(VVs: t_Vector_Viviendas) is

begin

for i in VVs'range loop
  Escribir_Vivienda(VVs(i));
end loop;

end Escribir_Viviendas;

function contar_vivienda_vacia(VVs : t_Vector_Viviendas) return integer is
  cantidad : integer :=0;
begin
  for i in VVs'range loop
    if VVs(i).censados = 0 then
      cantidad := cantidad + 1;
    end if;
  end loop;
  return cantidad;
end contar_vivienda_vacia;

end vector_viviendas;