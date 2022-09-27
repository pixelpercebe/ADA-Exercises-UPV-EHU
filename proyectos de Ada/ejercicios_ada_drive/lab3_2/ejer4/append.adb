WITH Ada.Text_IO,Ada.Integer_Text_IO;
USE Ada.Text_IO,Ada.Integer_Text_IO;


PROCEDURE Append IS

   --especificacion
   --entrada: Dos strings
   --pre:Los strings seran fich1 y fich2
   --salida:un fichero fich1_fich2
   --pos:se creara fich1_fich2 y contendra el contenido de fich1 y fich2 en el mismo orden en que se han introducido.

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
   Create(F, Out_File, "Fich1_Fich2.txt");
   Open(G,In_File,Fich1 & ".txt");
   Open(H,In_File,Fich2 & ".txt");
   Texto1:="                                   ";
   texto2:="                                   ";
   WHILE NOT End_Of_File(G) LOOP
      Get_Line(G,Texto1,N);
      Put_Line(F,Texto1);
      texto1:="                                   ";
   END LOOP;
   WHILE NOT End_Of_File(H) LOOP
      Get_Line(H,Texto2,N);
      Put_Line(F,Texto2);
      texto2:="                                   ";
   END LOOP;

END Append;

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
--varias lineas.
--¿Te parece? Son
--¿4 lineas o 5?
--No son 6
--.
----Todo en una linea de 35 caracteres.


