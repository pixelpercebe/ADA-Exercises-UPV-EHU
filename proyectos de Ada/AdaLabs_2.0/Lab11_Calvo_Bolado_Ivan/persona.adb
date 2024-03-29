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


   PROCEDURE Escribir_Persona (P : T_Persona) IS
   BEGIN
      Put("     "); Put(P.NombreApellidos.Nombre); Put(P.NombreApellidos.Apellido1); Put(P.NombreApellidos.Apellido2);
      Put("     "); Put(P.Domicilio'Img);
      Put("     "); Put(P.Edad, 0);
      New_Line;
   END Escribir_Persona;

   
   function es_mayor_edad (P:t_persona) return boolean IS
   BEGIN
      return P.Edad >= 18;
   end es_mayor_edad;

   function mismo_nombre (P: t_persona; Nom: T_Nombre) return boolean IS
   begin
      return P.NombreApellidos = nom;
   end mismo_nombre;

END Persona;
