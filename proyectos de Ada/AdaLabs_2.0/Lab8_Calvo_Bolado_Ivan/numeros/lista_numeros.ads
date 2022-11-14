package lista_numeros is

maxNum: constant integer := 50;
type t_numeros is array(1..maxNum) of integer;
type t_lista is record
  numeros : t_numeros;
  cont: natural range 0..maxNum;
end record;

procedure cargar_registros(L: in out t_lista);
--Post: carga los registros necesarios para los casos de prueba.


function esta (L:t_lista; N:integer) return boolean;
--Post: Devolvera true sii el entero N esta en la lista.

Procedure Elimina_I (L: in out t_lista; I:integer);
--Pre: La lista L no estará vacia y 1 <= I <= Longitud(L)
--Post: Se devolvera la lista de L sin el elemento de la posicion I, 
--con los elementos segun estaban.

end lista_numeros;