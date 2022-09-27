WITH Ada.Float_Text_IO; USE Ada.Float_Text_IO;

Package body Ambulatorio IS

   PROCEDURE Escribir_Matriz (
         M : T_Matriz_Probabilidad) IS
   BEGIN
      FOR I IN M'RANGE(1) LOOP
         FOR J IN M'RANGE(2) LOOP
            Put(M(I, J), 3, 2, 0);
         END LOOP;
         New_Line;
      END LOOP;
   END Escribir_Matriz;

--   FUNCTION Tiene_Sintoma (
--         P : IN     T_Paciente;
--         S : IN     T_Sintoma)
--     RETURN Boolean IS

--      BEGIN

--      END Tiene_Sintoma;


--   FUNCTION Padece_Enfermedad_Probable (
--         P : IN     T_Paciente;
--         E : IN     T_Enfermedad)
--     RETURN Float IS

--   BEGIN

--      END Padece_Enfermedad_Probable ;


--   FUNCTION Obtener_Estado_Pacientes (
--         VP : T_Vector_Pacientes;
--         LE : T_Lista_Enfermedades)
--     RETURN T_Matriz_Probabilidad IS

--      BEGIN
--
--      END Obtener_Estado_Pacientes;

END Ambulatorio;



