WITH Ada.Integer_Text_IO, Ada.Text_IO,Ada.float_Text_IO;
USE Ada.Integer_Text_IO, Ada.Text_IO,Ada.float_Text_IO;

PACKAGE body Lista_Enteros IS

   PROCEDURE CargarF (
         Fichero :        String;
         L       :    OUT T_Lista_Enteros) is
   F: File_Type;
   BEGIN
      L.Cont:=0;
      open(F, In_File, Fichero);
      WHILE NOT End_Of_File(F) and L.Cont<L.Lista'last LOOP
         l.Cont:= L.Cont+1;
         Get(F, L.Lista(L.Cont));
      END LOOP;
      Close(F);
      end CargarF;


   PROCEDURE EscribirSE (
         L : T_Lista_Enteros) IS
   BEGIN
      FOR I IN 1.. L.Cont LOOP
         Put(L.Lista(I), 0); Put(' ');
      END LOOP;
      New_Line;
   end EscribirSE;


   procedure EscribirMedias(L: T_Lista_Enteros) is
P,I: float;
begin
Media_Pares_Impares(L,P,I);
   PUT("Media pares:");PUT(P,0,2,0); 
   NEW_LINE;
   PUT("Media pares:");PUT(I,0,2,0);
   new_line;
end EscribirMedias;


procedure cargar_registros(M,L,pares,impares ,vacio,final,principio,repetidos: in out T_Lista_Enteros) is
begin
   CargarF("enteros.txt", L);
   M.lista(1..3):=(12,9,0);
   pares.lista(1..5):=(1,3,5,7,9);
   pares.Cont:=5;
   impares.lista(1..5):=(2,4,6,8,10);
   impares.Cont:=5;
   vacio.lista(1..1):=(1=>1);
   vacio.cont:=0;
   final.lista(1..6):=(4,8,15,17,24,1);
   final.Cont:=6;
   principio.lista(1..4) := (5,4,6,12);
   principio.cont:=4;
   repetidos.lista(1..4):=(10,12,12,15);
end cargar_registros;






   --Ejercicio 1.a
   procedure Media_Pares_Impares(L: T_Lista_Enteros; P, I: OUT Float) is
      cont_par, cont_impar : integer := 0;
   BEGIN
      P := 0.0;
      I := 0.0;

      for pos in 1..l.cont loop
         if l.lista(pos) mod 2 = 0 then
            cont_par := cont_par + 1; 
            P := P + float(l.lista(pos));
         else
            cont_impar := cont_impar + 1; 
            I := I + float(l.lista(pos));
         end if;
      end loop;

      if cont_par = 0 then
         P := float'first;
      else if cont_impar = 0 then
         I := float'first;
      else
         P := P / float(cont_par);
         I := I / float(cont_impar);
      end if;
      end if;
      end Media_Pares_Impares;  

   --Ejercicio 1.b
   FUNCTION Hay_Multiplo(N: Integer; L: T_Lista_Enteros) RETURN Boolean is
      i : integer := 1;
   BEGIN
      while i < l.cont and then N /= 0 and then L.lista(i) mod N /= 0 LOOP
         i := i + 1;
      END LOOP;
      return i < l.cont and then N /= 0 and then l.lista(i) mod N = 0;
   end Hay_Multiplo;

   --Ejercicio 1.c
   FUNCTION Esta_Creciente(L: T_Lista_Enteros) RETURN Boolean is
      i : integer := 1;
   begin 
    while  i < l.cont and then L.lista(i) <= l.lista(i+1)  LOOP
         i := i + 1;
      END LOOP;
      return i = l.cont;
   end Esta_Creciente;

END Lista_Enteros;
