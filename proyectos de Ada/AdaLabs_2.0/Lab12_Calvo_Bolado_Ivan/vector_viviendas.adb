with vivienda,ada.Text_IO; use vivienda,ada.Text_IO;
package body vector_viviendas IS

PROCEDURE Cargar_Viviendas(F:File_Type; VVs: out t_Vector_Viviendas) is

i:integer:=1;
V:t_vivienda;
begin

Skip_Line(F);
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

end vector_viviendas;