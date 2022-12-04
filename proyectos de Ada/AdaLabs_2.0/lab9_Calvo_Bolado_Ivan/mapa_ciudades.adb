WITH Ada.Integer_Text_IO, Ada.Text_IO;
USE Ada.Integer_Text_IO, Ada.Text_IO;

PACKAGE BODY Mapa_Ciudades IS

   PROCEDURE Escribir_Mapa(
         M : T_Mapa_Ciudades) IS
            Blancos: String(1..11):= (others=>' ');
   BEGIN
      FOR I IN M'RANGE(1) LOOP
         new_line;
         Put("Fila ");
         Put(I'img); put(blancos(1..11-I'img'length));
         New_Line;
         FOR J IN M'RANGE(2) LOOP
            set_col(5);
            Put("(");
            Put(I'img);
            Put(", ");
            Put(J, 0);
            Put(") ");
            new_line;
            Escribir_Personas(M(I, J)); -- llamada al package Lista_Personas
         END LOOP;
         new_line;
      END LOOP;
   END Escribir_Mapa;

   procedure Obten_Mapa_Ciudades(L: in T_Lista_Personas; MC: out T_Mapa_Ciudades) IS
   --MC -> primera columna = mayores de edad, segunda columna = Menores de edad.
      LMay, LMen: T_Lista_Personas;
   begin
      --Podria ser un subprogrma aparte
      for i in T_Ciudad loop
      MC(i,1).cont := 0;
      MC(i,2).cont := 0;
      end loop;

      Filtra_Edad(L.lista(1..l.cont),LMay,LMen);
      for i in 1..LMay.cont loop
         Inserta_Persona(MC(LMay.lista(i).Domicilio,1),LMay.lista(i));
      end loop;
      for j in 1..LMen.cont loop
         Inserta_Persona(MC(LMen.lista(j).Domicilio,2),LMen.lista(j));
      end loop;
   end Obten_Mapa_Ciudades;
END Mapa_Ciudades;
