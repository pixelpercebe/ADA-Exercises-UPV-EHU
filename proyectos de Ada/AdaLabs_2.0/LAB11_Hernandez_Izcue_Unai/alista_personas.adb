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
            Act:= Act.Sig;
         END LOOP;
      END IF;
   END Escribir_Personas;

  procedure Pos_Persona(L: in A_Personas; P: T_Nombre; Ant, Act: out A_Personas) is
      B:boolean;
   begin
      Ant:=L;
      Act:=L;
      while Act/=null and then not Alfa(P,Act.Persona.NombreApellidos) loop
         Ant := Act;
         Act := Act.Sig;
      end loop;
   end Pos_Persona;

   procedure Actualiza_Domicilio(L: in out A_Personas; Nom: T_Nombre; C: T_ciudad) is
      Act,Ant: A_Personas:=L;
   begin
      Pos_Persona(L,Nom,Ant,Act);
      if Act/=null and then act.persona.NombreApellidos = nom then
         Act.Persona.Domicilio:=C;
      end if;
   end Actualiza_Domicilio;

   procedure Inserta_Persona(L: in out A_Personas; P: A_Personas) is
      Act,Ant: A_Personas:=L;
   begin
      Pos_Persona(L,P.Persona.NombreApellidos,Ant,Act);
      if Act=Ant then --1 persona
         P.Sig:=L;
         L:=P;
      elsif Act=null then --0 persona
         L:=P;
      else -- X persona
         P.Sig:=Act;
         Ant.Sig:=P;
      end if;
   end Inserta_Persona;

   procedure Filtra_Edad(V: A_Personas; LMay, LMen: out A_Personas) is
      Aux,Act: A_Personas:=V;
   begin
      while Act/=null loop
         Aux:=Aux.Sig;
         Act.Sig:=null;
         if Es_Mayor_Edad(Act.Persona)=True then
            Inserta_Persona(LMay,Act);
         else
            Inserta_Persona(LMen,Act);
         end if;
         Act:=Aux;
      end loop;
   end Filtra_Edad;

   procedure Filtra_Ciudad(L: in out A_Personas; C: t_ciudad; LC: out A_Personas) is
      Act,Ant: A_Personas:=L;
   begin
      while Act/=null loop
         if Act.Persona.Domicilio=C then
            Ant:=Act.Sig;
            Act.Sig:=null;
            Inserta_Persona(LC,Act);
         end if;
         Ant:=Act;
         Act:=Act.Sig;
      end loop;
   end Filtra_Ciudad;

END ALista_Personas;
