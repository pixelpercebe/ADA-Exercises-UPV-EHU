with Ada.Text_IO; Use Ada.Text_IO;

PACKAGE Nombre IS
   TYPE T_Nombre IS RECORD
      Nom: String(1..30);
      Cont: Integer RANGE 0..30;
   END RECORD;


   PROCEDURE Cargar_Nombre(F: File_Type; Nom: out T_Nombre);
   -- entrada: un string (en fich= F)
   -- pre: F es un fichero abierto de lectura y contiene al menos algún caracter
   --      hasta final de línea.
   -- post: Nom contine el nombre obtenido de F.

   PROCEDURE Escribir_Nombre(Nom: T_Nombre);
   -- salida: String(SE)
   -- post: escribe el nombre de la calle y salta de línea
   --   NOTA: Sólo se escriben los caracteres de la calle, sin escribir la parte basura
   --      Es decir, considerando los caracteres desde el principio hasta el valor indicado por Cont.

   FUNCTION Menor(Nom1, Nom2: T_Nombre) RETURN Boolean;
   -- post: true sii el String contenido en Nom1 menor que el String contenido en Nom2
END Nombre;

