WITH Ada.Integer_Text_IO, Ada.Text_IO;
USE Ada.Integer_Text_IO, Ada.Text_IO;

PACKAGE BODY Mapa_Ciudades IS

   PROCEDURE Escribir_Mapa(
         M : T_Mapa_Ciudades) IS
            Blancos: String(1..11):= (others=>' ');
   BEGIN
      FOR I IN M'RANGE(1) LOOP
         Put("Fila ");
         Put(I'img); put(blancos(1..11-I'img'length));
         New_Line;
         FOR J IN M'RANGE(2) LOOP
            Put("(");
            Put(I'img);
            Put(", ");
            Put(J, 0);
            Put(") ");
            Escribir_Personas(M(I, J)); -- llamada al package Lista_Personas
         END LOOP;
      END LOOP;
   END Escribir_Mapa;

END Mapa_Ciudades;
