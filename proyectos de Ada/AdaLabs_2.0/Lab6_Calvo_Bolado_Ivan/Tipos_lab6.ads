package Tipos_Lab6 is
  Max: constant Integer := 255;
  subtype T_Valores_Max is Integer range 0..Max;
  type T_Matriz1 is array (Integer range <>, Integer range <>)
  of T_Valores_Max;
  type T_Fila is array (1..5) of T_Valores_Max;
  type T_Matriz2 is array (Integer range <>) of T_Fila;
  type T_Vector is array (Integer range <>) of T_Valores_Max;
  type T_Vector_Max is array (T_Valores_Max) of Natural;
end Tipos_Lab6;