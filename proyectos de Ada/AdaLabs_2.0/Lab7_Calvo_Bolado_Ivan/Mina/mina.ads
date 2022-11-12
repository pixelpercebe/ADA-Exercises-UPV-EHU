PACKAGE Mina IS
   subTYPE T_Mineral IS character range '<'.. '>';

   TYPE T_Mina IS ARRAY (1 .. 20) OF T_Mineral;

   TYPE T_Lista_Mina IS
      RECORD
         Mina : T_Mina;
         Cont : Integer;
      END RECORD;

   PROCEDURE CargarF (
         Fichero :        String;
         M       :    OUT T_Lista_Mina);
   -- entrada: Secuencia de caracteres S (en Fichero)
   -- pre: Fichero es el nombre de un fichero que contiene s�lo caracteres '<' y/o '>';
   -- post: L contiene como mucho los 20 primeros caracteres del Fichero.


   PROCEDURE EscribirSE (
         M : T_Lista_Mina);
   -- salida: secuencia de caracteres S (SE)
   -- post: S es la secuencia de los carcteres '<' y/o '>' de la lista L

   FUNCTION Cuantos_Diamantes(M:T_Lista_Mina) RETURN Natural;
   -- pre: M contine caracteres sólo '<' y/o '>'
   -- post: Indica cuántos caracteres seguidos '<', '>' (es decir diamantes "<>") hay en la mina.

   PROCEDURE Extrae(M: IN OUT T_Lista_Mina; D: OUT Natural);
   -- pre: M contine caracteres sólo '<' y/o '>'
   -- post: Extrae todos los diamantes de la mina M los directos y los que se van formando
   -- según se extrae. D indica cuántos diamantes se han extraído de la mina.
END Mina;
