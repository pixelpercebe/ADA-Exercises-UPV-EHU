WITH Ada.Integer_Text_IO, Ada.Text_IO;
USE Ada.Integer_Text_IO, Ada.Text_IO;

PACKAGE BODY Vector_Personas IS

   Procedure Cargar_Personas (S: String; V: out T_Vector_Personas) IS
      F: File_Type;
    BEGIN
      open(F, In_File, S);
      for I in V'Range LOOP
         V(I):= Cargar_Persona(F); -- llamada al package Persona
      END LOOP;
      close(F);
   END Cargar_Personas;


   PROCEDURE Escribir_Personas (
         V : T_Vector_Personas) IS
   BEGIN
      FOR I IN V'RANGE LOOP
         Put(I, 3);
         Put_Line(": ");
         Escribir_Persona(V(I)); -- llamada al package Persona
      END LOOP;
   END Escribir_Personas;

   
   function Pos_Persona(V: in T_Vector_Personas; P: T_Nombre) return Natural IS

   sup: integer := V'last;
   inf: integer := V'first;
   med:integer;

   BEGIN

      loop

         med := (sup+inf) / 2;

         exit when inf > sup or else V(med).nombreApellidos = P;

         if V(med).nombreApellidos.nombre < P.nombre and V(med).nombreApellidos.apellido1 < P.apellido1 and V(med).nombreApellidos.apellido2 < P.apellido2  then
            sup := med-1;
            else if V(med).nombreApellidos.nombre > P.nombre and V(med).nombreApellidos.apellido1 > P.apellido1 and V(med).nombreApellidos.apellido2 > P.apellido2 then
               inf := med + 1;
            end if;
         end if;
      end loop;
      put(med);
      return med;
   end pos_persona;

   --loop
   --med := (sup+inf) / 2;
   --exit when inf > sup or else V(med) = num
   --if inf > sup or else V(med) /= num  then false
   --if V(med) = num or else sup > inf then true



   procedure Actualiza_Domicilio(V: in out T_Vector_Personas; Nom: T_Nombre;
   C: T_ciudad) IS

      pos: integer;

   BEGIN
      pos := pos_persona(V,nom);
      if V(pos).nombreApellidos = nom then
         V(pos).Domicilio := C;
      else
         V(pos+1..V'last) := V(pos..V'last-1);
         V(pos).Domicilio := C;
      end if;
   end Actualiza_Domicilio;


END Vector_Personas;