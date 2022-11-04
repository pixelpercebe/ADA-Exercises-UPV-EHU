with ada.Integer_text_IO,tipos_lab6,Cuantas_Coincidencias,ada.text_IO;
use ada.Integer_text_IO,tipos_lab6,ada.text_IO;

procedure Cuantas_Coincidencias_prueba is

no_hay1 : T_Matriz1(4..5,1..5) := ((201,202,203,204,205),(206,207,208,209,210));
no_hay2 : T_Matriz2 (4..5):= (4 =>(1,2,3,4,5),5=>(6,7,8,9,10));
extremos1 : T_Matriz1 (20..21,1..5) := ((54,35,2,4,7),(89,0,255,245,255));
extremos2 : T_Matriz2 (20..21) := (20 => (54,83,82,3,7),21 =>(89,8,32,1,255));
todos1 : T_Matriz1 (2..4,1..5) := ((others => 255),(others => 0),(others => 255)); 
todos2 : T_Matriz2 (2..4) := (2 => (others => 255),3=>(others => 0),4=>(others => 255));
coincidencias : integer;


begin

Cuantas_Coincidencias(no_hay1,no_hay2,coincidencias);
put(coincidencias,0);
new_line;
Cuantas_Coincidencias(extremos1,extremos2,coincidencias);
put(coincidencias,0);
new_line;
Cuantas_Coincidencias(todos1,todos2,coincidencias);
put(coincidencias,0);
end Cuantas_Coincidencias_prueba;

--Casos de prueba
--caso1 (Ningun elemento el comun) -> no_hay1 y no_hay2 = 0
--caso2 (Elementos en comun en los extremos de los arrays) -> extremos1 y extremos2 = 4
--caso3 (todos los elemmentos en comun) -> todos1 y todos2 = 