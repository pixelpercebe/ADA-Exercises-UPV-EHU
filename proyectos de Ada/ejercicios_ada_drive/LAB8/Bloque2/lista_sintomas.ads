WITH Sintoma;
USE Sintoma;

Package Lista_Sintomas IS
   TYPE T_nodo_Sintomas;
   TYPE A_Lista_Sintomas IS ACCESS T_Nodo_Sintomas;
   type T_Nodo_Sintomas is
      RECORD
         Sintoma     : T_Sintoma;
         Sig: A_Lista_Sintomas;
      END RECORD;

   PROCEDURE Escribir_Sintomas (
      S : A_Lista_Sintomas);
      -- salida: secuencia de sintomas (SE)
      -- post: escribe los síntomas de la lista S


   FUNCTION Esta_Sintoma  (L: A_Lista_Sintomas; S: T_Sintoma)  RETURN Boolean;
   --post: true sii S está en L

END Lista_Sintomas;



