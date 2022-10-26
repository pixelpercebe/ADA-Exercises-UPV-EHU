package tipos_lab5 is
  type t_enteros is array (integer range <>) of integer;
  type t_mina is array (integer range <>) of character;
  
  type t_dias is (lunes, martes, miércoles, jueves, viernes, sabado, domingo);
  type t_temperaturas is array (t_dias) of float;
end tipos_lab5;