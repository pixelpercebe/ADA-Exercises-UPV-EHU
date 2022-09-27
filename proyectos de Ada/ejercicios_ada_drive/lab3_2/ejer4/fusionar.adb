WITH Ada.Text_IO,Ada.Integer_Text_IO;
USE Ada.Text_IO,Ada.Integer_Text_IO;


PROCEDURE Fusionar IS

   --especificacion
   --entrada: Dos strings
   --pre:Los strings seran fich1 y fich2
   --salida:un fichero fich1_fich2_fus.txt
   --pos:
   --se creara fich1_fich2_fus El contenido del nuevo fichero será tal que contenga
   --alternativamente en la primera línea la primera línea del primer fichero, en la segunda
   --línea la primera línea del segundo, en la tercera línea la segunda del primer fichero y así
   --Hasta El Final.

   Fich1,
   Fich2  : String (1 .. 5);
   F,
   G,
   H      : File_Type;
   Texto1 : String (1 .. 35);
   Texto2 : String (1 .. 35);
   N      : Integer;
BEGIN
   Put("En que orden quieres unir los ficheros fich1 y fich2?");
   Get(Fich1);
   Get(Fich2);
   Create(F, Out_File, "Fich1_Fich2_fus.txt");
   Open(G,In_File,Fich1 & ".txt");
   Open(H,In_File,Fich2 & ".txt");
   Texto1:="                                   ";
   Texto2:="                                   ";
   IF Fich1 = "fich1" THEN
      WHILE NOT End_Of_File(G) LOOP
         Get_Line(G,Texto1,N);
         Put_Line(F,Texto1);
         Texto1:="                                   ";
      END LOOP;
      WHILE NOT End_Of_File(H) LOOP
         Get_Line(H,Texto2,N);
         Put_Line(F,Texto2);
         Texto2:="                                   ";
      END LOOP;
   ELSE
      Get_Line(G,Texto1,N);
      Put_Line(F,Texto1);
      WHILE NOT End_Of_File(H) LOOP
         Get_Line(H,Texto2,N);
         Put_Line(F,Texto2);
         Texto2:="                                   ";
      END LOOP;
      WHILE NOT End_Of_File(G) LOOP
         Get_Line(G,Texto1,N);
         Put_Line(F,Texto1);
         Texto1:="                                   ";
      END LOOP;
   end if;
   END Fusionar;

   --CASOS DE PRUEBA
   --ENTRADA: fich1, fich2 SALIDA:
   --Todo en una linea de 35 caracteres.
   --Todo en
   --varias lineas.
   --¿Te parece? Son
   --¿4 lineas o 5?
   --No son 6
   --.

   --ENTRADA: fich2, fich1 SALIDA:
   --Todo en
   --Todo en una linea de 35 caracteres.
   --varias lineas.
   --¿Te parece? Son
   --¿4 lineas o 5?
   --No son 6
   --.



