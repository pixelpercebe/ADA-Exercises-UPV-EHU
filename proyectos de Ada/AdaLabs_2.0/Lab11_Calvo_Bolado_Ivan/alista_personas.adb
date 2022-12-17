WITH Ada.Text_IO;
USE Ada.Text_IO;

PACKAGE BODY ALista_Personas IS

   PROCEDURE Cargar_Personas (
         S :        String;
         L :    OUT A_Personas) IS
      F   : File_Type;
      P   : T_Persona;
      Act : A_Personas;
   BEGIN
      L:= NULL;
      Open(F, In_File, S);
      WHILE NOT End_Of_File(F) LOOP
         P:= Cargar_Persona(F);
         IF L=NULL THEN
            L:= NEW T_Nodo'(P, NULL);
            Act:=L;
         ELSE
            Act.Sig:= NEW T_Nodo'(P,NULL);
            Act:= Act.Sig;
         END IF;
      END LOOP;
      Close(F);
   END Cargar_Personas;


   PROCEDURE Escribir_Personas (
         L : A_Personas) IS
      Act : A_Personas := L;
   BEGIN
      IF L=NULL THEN
         Put_Line("NULL");
      ELSE
         WHILE Act/=NULL LOOP
            Escribir_Persona(Act.Persona); -- llamada al package Persona
            Act:= ACt.Sig;
         END LOOP;
      END IF;
   END Escribir_Personas;

   procedure Pos_Persona(L: in A_Personas; P: T_Nombre; Ant, Act: out A_Personas) IS
   BEGIN
      Act := L;
      Ant := L;
      while act /= NULL and then comparar(act.persona.NombreApellidos,P) < 0 loop
         ant := act;
         act := ant.sig;
      end loop;
   end Pos_Persona;


   function comparar(P1,P2:T_Nombre) return integer is
      res: integer;
   BEGIN
      if (P1.apellido1 > P2.Apellido1) or (P1.apellido1 = P2.apellido1 and P1.apellido2 > P2.apellido2) or 
         (P1.apellido1 = P2.apellido1 and P1.apellido2 = P2.apellido2 and P1.nombre > P2.nombre) then
         res := 1;
      else if (P1.apellido1 < P2.Apellido1) or (P1.apellido1 = P2.apellido1 and P1.apellido2 < P2.apellido2) or 
         (P1.apellido1 = P2.apellido1 and P1.apellido2 = P2.apellido2 and P1.nombre < P2.nombre) then
         res := -1;
      else
         res := 0;
      end if;
      end if;
      return res;
   end comparar;

   procedure Actualiza_Domicilio(L: in out A_Personas; Nom: T_Nombre; C: T_ciudad) IS 
   act : A_Personas := L;
   BEGIN
      while act /= null and then act.persona.NombreApellidos /= nom loop
         act := act.sig;
      end loop;
      if act.persona.NombreApellidos = nom then
         act.persona.domicilio := C;
      end if;
   END Actualiza_Domicilio;

   procedure Inserta_Persona(L: in out A_Personas; P: A_Personas) is


   begin
   pos := Pos_Persona();
   if not ((pos <= L.cont and pos >= L.lista'first) and then Mismo_Nombre(L.lista(pos) , P.Nombre_Apellidos))

   end if;


   end Inserta_Persona;
END ALista_Personas;
