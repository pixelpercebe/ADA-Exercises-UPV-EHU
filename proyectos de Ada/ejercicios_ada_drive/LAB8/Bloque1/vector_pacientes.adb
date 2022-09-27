
Package body Vector_Pacientes IS

    PROCEDURE Escribir_Pacientes (
         VP : T_Vector_Pacientes) IS
   BEGIN
      FOR I IN VP'RANGE LOOP
         Put(VP(I).Nombre);
         Escribir_Sintomas(VP(I).Sintomas);
      END LOOP;
   END Escribir_Pacientes;

END Vector_Pacientes;



