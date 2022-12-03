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

   procedure Obten_Mapa_Ciudades(L: in T_Lista_Personas; MC: out T_Mapa_Ciudades) IS
   --MC -> primera columna = mayores de edad, segunda columna = Menores de edad.

      LMay, LMen: T_Lista_Personas;
      

   begin

      Filtra_Edad(L.lista,LMay,LMen);
      
      for i in LMay.lista'first..LMay.cont loop
      --while L.cont > 0 and then i <= LMay.cont loop
         Inserta_Persona(MC(LMay.lista(i).Domicilio,1),LMay.lista(i));
         
      end loop;

      for i in LMen.lista'first..LMen.cont loop
      --while L.cont > 0 and then i <= LMay.cont loop
         Inserta_Persona(MC(LMen.lista(i).Domicilio,2),LMen.lista(i));
      
      end loop;

   end Obten_Mapa_Ciudades;
END Mapa_Ciudades;
