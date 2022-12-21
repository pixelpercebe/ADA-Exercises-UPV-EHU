WITH Lista_Edificios, Nombre; USE Lista_Edificios, Nombre;

PACKAGE Barrio IS
   TYPE T_Nodo_Calle;
   TYPE A_Lista_Calles IS ACCESS T_Nodo_Calle;
   TYPE T_Nodo_Calle IS RECORD
         Calle: t_Nombre;
         Impares, Pares : a_lista_Edificios;
         Sig_Calle: A_Lista_Calles;
      END RECORD;

   PROCEDURE Cargar_Barrio(B: OUT A_Lista_Calles);
   -- entrada: secuencia de calles (fich="Calles.txt"),
   --   Secuencia de viviendas (ficheros de viviendas por cada calle: nom_calle.txt)
   --   con todos los datos de cada vivienda.
   -- post: B contiene toda la informaci�n del barrio.

   PROCEDURE Insertar_Ordenado(E: A_Lista_Calles; B: IN OUT A_Lista_Calles);
   -- pre: B est� ordenada por nombre de las calles
   -- post: Se inserta

   PROCEDURE Escribir_Barrio(B: A_Lista_Calles);
   -- salida: secuencia de edificios (SE)
   -- post: escribe la informaci�n de las viviendas del barrio B

end Barrio;
