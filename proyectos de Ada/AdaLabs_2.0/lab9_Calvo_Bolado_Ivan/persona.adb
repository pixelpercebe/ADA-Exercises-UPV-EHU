WITH Ada.Integer_Text_IO, Ada.Integer_Text_IO;
USE Ada.Integer_Text_IO, Ada.Integer_Text_IO;

PACKAGE BODY Persona IS

   FUNCTION Cargar_Persona (
         F : File_Type)
     RETURN T_Persona IS
      P          : T_Persona;
      N          : Integer;
      S: String(1..25);
   BEGIN
      P.NombreApellidos.Nombre:= (OTHERS=> ' ');
      Get_Line(F, P.NombreApellidos.Nombre, N);
      P.NombreApellidos.Apellido1:= (OTHERS=> ' ');
      Get_Line(F, P.NombreApellidos.Apellido1, N);
      P.NombreApellidos.Apellido2:= (OTHERS=> ' ');
      Get_Line(F, P.NombreApellidos.Apellido2, N);
      Get_line(F, S, N);
      P.Domicilio:= t_Ciudad'value(S(1..N));
      Get(F, P.Edad);
      skip_Line(F);
      return P;
   END Cargar_Persona;


   PROCEDURE Escribir_Persona (
         P : T_Persona) IS
   BEGIN
      Put("     "); Put_line(P.NombreApellidos.Nombre);
      put("     "); Put_line(P.NombreApellidos.Apellido1);
      put("     "); Put_line(P.NombreApellidos.Apellido2);
      put("     "); Put(P.Domicilio'img); New_line;
      put("     "); Put(P.Edad, 0);
      New_Line;
   END Escribir_Persona;

END Persona;
