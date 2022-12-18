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



   --function Alfa (P1,P2: in T_Nombre) return Boolean is
   --begin
      --if (P1.Apellido1 < P2.Apellido1) then
         --return true;
      --end if;
      --if (P1.Apellido1 = P2.Apellido1 and P1.Apellido2 < P2.Apellido2) then
         --return true;
      --end if;
      --if (P1.Apellido1 = P2.Apellido1 and P1.Apellido2 = P2.Apellido2 and P1.Nombre < P2.Nombre) then
         --return true;
      --end if;
      --return False;
   --end Alfa;

   function Alfa (P1,P2: in T_Nombre) return Boolean is
   begin
      return ((P1.Apellido1<P2.Apellido1) or (P1.Apellido1=P2.Apellido1 and P1.Apellido2<P2.Apellido2) or (P1.Apellido1=P2.Apellido1 and P1.Apellido2=P2.Apellido2 and P1.Nombre<P2.Nombre));
   end Alfa;


   function Es_Mayor_Edad (P: T_Persona) return Boolean is
   begin
      if P.Edad>=18 then
         return True;
      else
         return False;
      end if;
   end Es_Mayor_Edad;
END Persona;
