WITH ADa.Text_IO; USE Ada.Text_I

Package body Lista_Sintomas IS
   PROCEDURE Escribir_Sintomas (
         S : T_Lista_Sintomas) IS
   BEGIN
      Put("- (");
      FOR I IN 1.. S.Num_Sintomas LOOP
         put_Sintoma(S.Sintomas(I));
         Put(", ");
      END LOOP;
      Put_Line(")");
   END Escribir_Sintomas;

END Lista_Sintomas;



