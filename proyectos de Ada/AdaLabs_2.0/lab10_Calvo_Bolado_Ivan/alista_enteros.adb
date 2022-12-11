WITH Ada.Integer_Text_IO, Ada.Text_IO;
USE Ada.Integer_Text_IO, Ada.Text_IO;

PACKAGE body ALista_Enteros IS

   PROCEDURE CargarF (
         Fichero :        String;
         L       :    OUT A_Lista) is
      F: File_Type;
      N: Integer;
      Act: A_Lista;
   BEGIN
      num_elem:= 0;
      L:= null;
      open(F, In_File, Fichero);
      WHILE NOT End_Of_File(F) LOOP
         Get(F, N);
         IF L=NULL THEN L:= NEW T_Entero'(N, NULL); Act:=L;
         ELSE Act.Sig:= NEW T_Entero'(N,NULL); Act:= Act.Sig;
         END IF;
         num_elem := num_elem + 1;
      END LOOP;
      Close(F);
      end CargarF;


   PROCEDURE EscribirSE (
         L : A_Lista) IS
            Act: A_Lista:= L;
   BEGIN
      while Act/=null LOOP
         Put(Act.Val, 0); Put(' ');
         Act:= ACt.sig;
      END LOOP;
      New_Line;
      end EscribirSE;


      procedure Media_Pares_Impares(L: A_Lista; P, I: OUT Float) is

      cont_par,cont_impar: float := 0.0;
      act: A_Lista:= L; 

      BEGIN
         P := 0.0;
         I := 0.0;
         while act /= null loop
            if act.val mod 2 = 0 then
               P := P + float(act.val);
               cont_par:= cont_par + 1.0;
            else
               I := I + float(act.val);
               cont_impar := cont_impar + 1.0;
            end if;
            act := act.sig;
         end loop;

         if cont_par = 0.0 then
            P := float'first;
         else
            P := P/cont_par;
         end if;
         if cont_impar = 0.0 then
            I := float'first;
         else
            I := I/cont_impar;
         end if;

      end Media_Pares_Impares;



      function Hay_Multiplo(L: A_Lista; N: Integer) return Boolean is
      act: A_Lista:= L;
      Begin
         while N /= 0 and then act /= null and then act.val mod N /= 0 loop
            act  := act.sig;
         end loop;
         return N /= 0 and then act /= null and then act.val mod N = 0;
      end Hay_Multiplo;

      

      function Esta_Creciente(L: A_Lista) return Boolean is
      act:A_lista:=L;
      Begin
         while act /= null and then act.sig /= null and then act.val <= act.sig.val loop
            act := act.sig;
         end loop;  
            return act /= null and then act.sig = null;
      end Esta_Creciente;

      procedure Insertar_al_principio (L: in out A_lista; N: integer) is
      act : A_Lista:= L;
      begin
         act := NEW T_Entero'(N, L);
         L := act;
      end Insertar_al_principio;


      procedure Insertar_al_final (L: in out A_lista; N: Integer) is
      act: A_lista := L;
      aux: A_Lista ;
      begin
         while num_elem > 0 and then act.sig /= null loop
            act := act.sig;
         end loop;
         aux := new T_Entero'(N,null);
         if num_elem = 0 then
            L:= aux;
         else
         act.sig := aux;
         end if;
      end Insertar_al_final;

      procedure Insertar_ordenado (L: in out A_Lista; N: integer) is
      Ant, Act, Nuevo: A_Lista:= L;
      begin
         while Act /= null and then Act.val < N loop
            Ant:= Act;
            Act:= Act.Sig;
         end loop;
         if Act=Ant then 
            L:= new T_Entero'(N, L); 
         else 
            Ant.Sig:= new T_entero'(N, Act);
         end if;
      end Insertar_ordenado;


      procedure Eliminar_primero (L:in out A_lista) is
      begin
      if num_elem > 0 then
         L := L.sig;
      ELSE
         L := NULL;
      END IF;

      end Eliminar_primero;

      procedure Eliminar_Ultimo (L:in out A_lista) is
      ant,act : A_lista:= L;
      begin
      while num_elem > 0 and then act.sig /= null loop
         ant := act;
         act := act.sig;
      end loop;
      if ant = act then
         L := null;
      else
         ant.sig := null;
      end if;
      end Eliminar_Ultimo;

      procedure Elimianar_I (L: in out A_lista; I:integer) is
      act : A_lista := L;
      cont : integer := 2;
      begin
         while cont < I loop
            cont := cont + 1;
            act:=act.sig;
         end loop;
         if I = 1 then 
            L:= L.sig;
         end if;
         if act.sig /= null and then cont = I then--cont nunca podrá ser 1 ya ct siempre como maximo llegará a la penultima posi
            act.sig:= act.sig.sig;
         end if;
      
      end Elimianar_I;

      
END ALista_Enteros;
