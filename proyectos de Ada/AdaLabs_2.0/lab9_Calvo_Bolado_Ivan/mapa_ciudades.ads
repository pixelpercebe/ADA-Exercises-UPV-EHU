WITH Persona, Lista_Personas; USE Persona, Lista_Personas;

PACKAGE Mapa_Ciudades IS

   TYPE T_Mapa_Ciudades IS ARRAY (T_Ciudad, 1..2) OF T_Lista_Personas;

   PROCEDURE Escribir_Mapa(M : T_Mapa_Ciudades);
   -- salida Secuencia de Personas S (SE)
   -- pos: S está formada por las personas de M.

END Mapa_Ciudades;
