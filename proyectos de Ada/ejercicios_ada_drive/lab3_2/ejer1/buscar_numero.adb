With Ada.Integer_Text_IO,Ada.Text_IO,Ada.Float_Text_IO;
Use Ada.Integer_Text_IO,Ada.Text_IO,Ada.Float_Text_IO;

PROCEDURE Buscar_Numero IS

   --especificacion
   --entrada: un numero y una secuencia de numeros enteros.
   --salida: un boolean
   --pos:el boolean indicara si el numero esta en la secuencia.
  cont,num_secuencia,num_buscado:integer;
  existe:boolean := False;
begin
  put("que numero quieres buscar en la secuencia: ");
  get(num_secuencia);
  loop
    Get(num_buscado);
    exit when num_buscado = num_secuencia or End_Of_File;
  end loop;
  existe := num_buscado = num_secuencia;
  put(boolean'image(existe));
END Buscar_Numero;

--casos de prueba
--entrada: (vacio) salida:
