WITH ADa.Text_IO; USE Ada.Text_IO;

Package body Lista_Sintomas IS
   PROCEDURE Escribir_Sintomas (
         S : A_Lista_Sintomas) IS
   act:a_lista_sintomas:=S;
   BEGIN
      WHILE Act/=NULL LOOP
         Put_Sintoma(Act.Sintoma);
         new_line;
         act:=act.sig;
      END LOOP;
   END Escribir_Sintomas;


   FUNCTION Esta_Sintoma  (L: A_Lista_Sintomas; S: T_Sintoma)  RETURN Boolean IS
      act:a_lista_sintomas := L;
   BEGIN
      WHILE  ACT /= NULL AND THEN act.sintoma < s LOOP
         act:= act.sig;
      END loop;
      return act /= null and then act.sintoma = s;
   END Esta_Sintoma;


END Lista_Sintomas;



