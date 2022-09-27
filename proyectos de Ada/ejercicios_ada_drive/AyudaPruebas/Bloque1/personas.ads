
PACKAGE Personas IS

   TYPE T_Persona IS
      RECORD
         NombreApellidos,
         Ciudad          : String (1 .. 15);
         Trabajando      : Boolean;
         Edad            : Integer;
      END RECORD;

   TYPE T_Vector_Personas IS ARRAY (Integer RANGE <>) OF T_Persona;


   PROCEDURE Escribir_Personas (
      V : T_Vector_Personas);
      --salida: Secuencia de T_Persona (SE)
      --pos: Escribe la informaci�n de cada persona del vector V en una l�nea
   procedure Actualizar_Ciudad(V: in out T_Vector_Personas; C1, C2: String);
      -- pre: C1 y C2 son nombres de ciudades
      -- post: Modifica la lista sustituyendo las ciudades C1 por C2.
   function Esta_Persona(V: in T_Vector_Personas; P: T_Persona) return boolean;
   -- post: devuelve true sii P est� en V. ��OJO!! Debe coincidir todas las
   -- caracter�sticas de la persona.

END Personas;
