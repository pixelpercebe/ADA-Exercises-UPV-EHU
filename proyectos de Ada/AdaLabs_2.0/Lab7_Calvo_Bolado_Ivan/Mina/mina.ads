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
   -- pre: Fichero es el nombre de un fichero que contiene sólo caracteres '<' y/o '>';
   -- post: L contiene como mucho los 20 primeros caracteres del Fichero.


   PROCEDURE EscribirSE (
         M : T_Lista_Mina);
   -- salida: secuencia de caracteres S (SE)
   -- post: S es la secuencia de los carcteres '<' y/o '>' de la lista L

END Mina;
