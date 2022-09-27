WITH Ada.Text_IO;
USE Ada.Text_IO;

PACKAGE BODY Sintoma IS
   PROCEDURE Put_Sintoma (
         S : T_Sintoma) IS
      PACKAGE Sintoma_IO IS NEW enumeration_IO (T_Sintoma);
      USE Sintoma_IO;
   BEGIN
      Put(S);
   END Put_Sintoma;

END Sintoma;



