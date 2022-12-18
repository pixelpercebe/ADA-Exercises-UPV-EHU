WITH Ada.Text_IO,ada.Integer_Text_IO;
USE Ada.Text_IO,ada.Integer_Text_IO;

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

   PROCEDURE Escribir_Persona (AP:A_Personas) IS
   BEGIN
      IF AP = null then
         put("NULL ");
         New_Line;
      else
         Put("     "); Put(AP.persona.NombreApellidos.Nombre); Put(AP.persona.NombreApellidos.Apellido1); Put(AP.persona.NombreApellidos.Apellido2);
         Put("     "); Put(AP.Persona.Domicilio'Img);
         Put("     "); Put(AP.Persona.Edad,0);
         New_Line;
      end if;
   END Escribir_Persona;

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
      while act /= null and then not mismo_nombre(act.persona,nom) loop
         act := act.sig;
      end loop;
      if act /= null and then mismo_nombre(act.persona,nom) then
         act.persona.domicilio := C;
      end if;
   END Actualiza_Domicilio;

   procedure Inserta_Persona(L: in out A_Personas; P: A_Personas) is
   pers1,pers2:A_Personas;
   begin
   Pos_Persona(L,P.persona.NombreApellidos,pers1,pers2);
   if pers1 /= null and then pers2 /= P then
      P.sig := pers1.sig;
      pers1.sig := P; 
   end if;
   end Inserta_Persona;

   procedure Filtra_Edad(L: A_Personas; LMay, LMen: out A_Personas) is 
      act:A_Personas:=L;
   begin
      while act /= null loop
         if es_mayor_edad(act.persona) then
            Inserta_Persona(LMay,act);
         else
            Inserta_Persona(LMen, act);
         end if;
         act := act.sig;
      end loop;
   end Filtra_Edad;


   procedure Filtra_Ciudad(L:in out A_Personas; C: t_ciudad; LC: out A_Personas) is
   act : A_Personas := L;
   begin

      while act /= null loop
         if act.persona.domicilio = C then 
            Inserta_Persona(LC,act);
            eliminar_persona(L,act.persona);
         end if;
         act := act.sig;
      end loop;

   end Filtra_Ciudad;

   procedure eliminar_persona (L: in out A_Personas; P: T_Persona) is
      ant: A_Personas := L;
      act: A_Personas := L;
   begin
      while act /= null and then act.persona /= P loop
         ant := act;
         act := ant.sig;
      end loop;
      if act /= null and then act.persona = P then
         if act = L then
            L := L.sig;
         else
            ant.sig := act.sig;
         end if;
      end if;
   end eliminar_persona;
END ALista_Personas;
