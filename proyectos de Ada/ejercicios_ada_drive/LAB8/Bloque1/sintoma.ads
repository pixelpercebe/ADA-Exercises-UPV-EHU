
package Sintoma IS
   TYPE T_Sintoma IS
         (Amnea,
          Diarrea,
          Dolor_Cabeza,
          Dolor_Garganta,
          Dolor_Vientre,
          Fiebre,
          Malestar,
          Mareos,
          Tos,
      Vomitos);

   PROCEDURE Put_Sintoma(S: T_Sintoma);
   -- salida: un sintoma  (SE)
   -- post: Escribe el sintoma S.
END;



