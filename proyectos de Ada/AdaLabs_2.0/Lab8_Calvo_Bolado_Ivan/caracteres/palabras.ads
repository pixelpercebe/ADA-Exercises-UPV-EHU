package palabras is

  max: constant Integer := 20;
  type t_palabra is record
    Letras: string (1 .. max);
    Cont : Natural range 0..max;
  end record;

  procedure Ejecutar_pruebas(L: in out t_palabra; palabra:String; rango:integer; cont:Natural);
  --Pre: L será la lista donde se guardara la palabra, 
  --rango sera el limite superior del rango de la palabra, 1 <= rango <= Max
  --y cont sera hasta donde llegas los datos y donde empiezan los datos basura, 0 <= post <= rango
  --Post: Carga los elementos necesarios para los casos de 
  --prueba con palabras.

  procedure Escribe_Palabra(L: in t_palabra);
  --Salida: Una secuencia de caracteres (SE);
  --Post: Mostrara la palabra contenido en el String 
  --letras de L que es de tipo T_palabra

  procedure Giro_I(L:in out t_palabra;i:integer);
  --Pre:1 <= i <= l.cont;
  --Post: Devolvera una palabra con un giro por desplazamiento 
  --de I posiciones a la derecha de la palabra de L

  


 
end palabras;