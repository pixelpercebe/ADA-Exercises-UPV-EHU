WITH Ada.Text_IO;
USE Ada.Text_IO;

Package body Lista_Enfermedades IS

   PROCEDURE Escribir_Enfermedades (
         LE : T_Lista_Enfermedades) IS
   BEGIN
      FOR I IN 1..LE.Num_Enfermedades LOOP
         Put(LE.Enfermedades(I).Nombre);
         Escribir_Sintomas(LE.Enfermedades(I).Sintomas);
      END LOOP;
   END Escribir_Enfermedades;


--   PROCEDURE Actualiza_Enfermedad (
--         L : IN OUT T_Lista_Enfermedades;
--         E :        T_Enfermedad) IS
--   BEGIN

   --   END Actualiza_Enfermedad;

END Lista_Enfermedades;



