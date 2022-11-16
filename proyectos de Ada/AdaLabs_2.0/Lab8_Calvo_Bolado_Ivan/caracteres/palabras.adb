package palabras is

  max: constant Integer := 20;
  type t_palabra is record
    Letras: string (1 .. max);
    Cont : Natural range 0..max;
  end record;


  Function Escribe_Palabra(L: in t_palabra);
  --Salida: Una secuencia de caracteres (SE);
  --Post: Mostrara por salida estandar la palabra contenido en el String letras de L que es de tipo T_palabra




 
end palabras;