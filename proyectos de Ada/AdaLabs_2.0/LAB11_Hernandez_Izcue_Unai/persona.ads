WITH Ada.Text_IO;
USE Ada.Text_IO;

PACKAGE Persona IS
  TYPE T_Nombre IS
      RECORD
        Nombre,
        Apellido1,
        Apellido2 : String (1 .. 25);
      END RECORD;

  TYPE T_Ciudad IS
        (Donostia,
          Irun,
          Usurbil,
          Zarautz,
          Azkoitia,
          Azpeitia,
          Hondarribia,
          Orio);

  TYPE T_Persona IS
      RECORD
        NombreApellidos : T_Nombre;
        Domicilio       : T_Ciudad;
        Edad            : Integer;
      END RECORD;

  FUNCTION Cargar_Persona (
        F : File_Type)
    RETURN T_Persona;
  -- entrada: Tres String Nom, Ap1, Ap2, una ciudad Ci, un entero Edad (en F)
  -- pre: Los valores corresponden a la informacion de una persona. F fichero abierto
  -- pos: Devuelve los datos de la entrada como una persona.


  PROCEDURE Escribir_Persona (
        P : T_Persona);
  -- salida: una Persona (SE)
  -- pos: Escribe la informaci�n de una persona en una l�nea.

  function Alfa (P1,P2: in T_Nombre) return Boolean;
  -- Pos: Boolean será true si P1 va primero ordenado alfabeticamente respecto P2 y siendo el mismo nombre sigue dando true

  function Es_Mayor_Edad (P: T_Persona) return Boolean;
  --ESPECIFICACIÓN--------------------------------------------------------------------
  -- pre: P.Edad>0
  -- post: Indica si Edad es >=18
  ------------------------------------------------------------------------------------
END Persona;
