with Vector_Viviendas, Nombre; Use Vector_Viviendas, Nombre;

PACKAGE Lista_Edificios IS
   type a_Vector_Viviendas is access t_Vector_Viviendas;

   TYPE T_Nodo_Edificio;
   type a_Lista_Edificios is access t_Nodo_Edificio;
   TYPE T_Nodo_Edificio IS RECORD
      Num: Natural;
      Viviendas: A_Vector_Viviendas;
      Sig_Edificio: A_Lista_Edificios;
   END RECORD;

   PROCEDURE Cargar_Edificios_Calle_Num(C: T_Nombre; Num: Natural; Pares: boolean; E: out a_Lista_Edificios);
   -- entrada: secuencia viviendas (fich="B/"&C&N&".txt")
   -- pre: C es el nombre de una calle que exite. Num n�mero de portales pares/impares.
   --      Pares indica si Num se refiere a portales pares o impares.
   --      Existe Num ficheros en la carpeta B con nombre C a�adiendo Portal y extensi�n txt,
   --      contiene primero un n�mero que indica la cantidad de viviendas de ese portal.
   --      Luego por cada vivienda en cada l�nea aparece y en ese orden: Piso, Mano, Censados
   --      y Propietario (mirar ficheros de datos).
   -- post: E contine la informaci�n de todas los edificios de la calle C.

   PROCEDURE Escribir_Edificios(E: a_Lista_Edificios);
   -- salida: secuencia de viviendas(SE)
   -- post: escribe los edificios de L

   procedure Contar_censados_y_vacias(E: a_lista_Edificios; censados, vacias: out integer);
   --post: devuelve el numero de viviendas de un bloque que estan deshabitadas

END Lista_Edificios;

