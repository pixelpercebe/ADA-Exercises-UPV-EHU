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
      while act /= NULL and then comparar(act.persona.NombreApellidos, ant.persona.NombreApellidos) < 0 loop
         act := act.sig;
         ant := ant.sig;
      end loop;
   end Pos_Persona;


   function comparar(P1,P2:T_Nombre) return integer is

      res: integer;
      max_char: integer := 75;
      nombre1: String(1..max_char);
      nombre2: String(1..max_char);
   BEGIN
      nombre1 := (P1.Apellido1 & p1.Apellido2 & p1.nombre);
      nombre1 := (others => ' ');
      nombre2 := (P2.Apellido1 & p2.Apellido2 & p2.nombre);
      nombre2 := (others => ' ');

      if nombre1 > nombre2 then
         res := 1;
      else if nombre1 < nombre2 then
         res := -1;
      else
         res := 0;
      end if;
      end if;

      return res;

   end comparar;

END ALista_Personas;
