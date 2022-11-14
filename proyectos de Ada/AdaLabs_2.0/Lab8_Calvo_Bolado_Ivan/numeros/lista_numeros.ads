package lista_numeros is

maxNum: constant integer := 50;
type t_numeros is array(1..maxNum) of integer;
type t_lista is record
  numeros : t_numeros;
  cont: natural range 0..maxNum;
end record;

procedure cargar_registros(L,ordenada,solo: in out t_lista);
--Post: carga los registros necesarios para los casos de prueba.


function esta (L:t_lista; N:integer) return boolean;
--Post: Devolvera true sii el entero N esta en la lista.

Procedure Elimina_I (L: in out t_lista; I:integer);
--Pre: La lista L no estará vacia y 1 <= I <= Longitud(L)
--Post: Se devolvera la lista de L sin el elemento de la posicion I, 
--con los elementos segun estaban.

PROCEDURE EscribirSE (L: T_Lista);
  -- salida: secuencia de enteros (SE)
  -- post: Secuencia de los enteros de la lista L

  procedure Insertar_Orden(L: in out t_lista; N:integer);
  --Pre: La lista estara ordenada crecientemente y no estara llena (L.cont < Maxnum)
  --Post: insertara ordenadamente el entero N en la lista.
end lista_numeros;