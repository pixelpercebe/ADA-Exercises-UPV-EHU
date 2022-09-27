WITH Lista_Sintomas, Vector_Pacientes, Lista_Enfermedades;
USE Lista_Sintomas, Vector_Pacientes, Lista_Enfermedades;

Package Ambulatorio IS
   TYPE T_Matriz_Probabilidad IS ARRAY (Integer RANGE <>, Integer RANGE <>) OF Float;

   PROCEDURE Escribir_Matriz (
      M : T_Matriz_Probabilidad);
      -- salida: secuencia de Float (SE)
      -- pos: Escribe la informaci�n de la matriz por filas

--   FUNCTION Tiene_Sintoma (
--         P : IN     T_Paciente;
--         S : IN     T_Sintoma)
--     RETURN Boolean ;
--      --- pre: Los s�ntomas del paciente est�n en orden creciente
--      --- post: Indicar� si el paciente tiene ese s�ntoma.

--   FUNCTION Padece_Enfermedad_Probable (
--         P : IN     T_Paciente;
--         E : IN     T_Enfermedad)
--     RETURN Float;
--      --- pre: Los s�ntomas del paciente y de las enfermedades est�n en orden
--      ---		creciente
--      --- post: Devolver� la probabilidad de que el paciente tenga la enfermedad.

--   FUNCTION Obtener_Estado_Pacientes (
--         VP : T_Vector_Pacientes;
--         LE : T_Lista_Enfermedades)
--     RETURN T_Matriz_Probabilidad;
--    -- pre: VP y LE, no son vac�as.
--    -- pos: devuelve una matriz con las probabilidades de que
--    --   cada paciente pueda padecer cada una de las enfermedades
--    --   de la lista. La probabilidad se calcula dividiendo el
--    --   n�mero de s�ntomas de dicha enfermedad que tiene el paciente,
--    --   entre la cantidad total de s�ntomas de dicha enfermedad.


END Ambulatorio;



