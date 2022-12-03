WITH Persona, Lista_Personas; USE Persona, Lista_Personas;

PACKAGE Mapa_Ciudades IS

   TYPE T_Mapa_Ciudades IS ARRAY (T_Ciudad, 1..2) OF T_Lista_Personas;

   PROCEDURE Escribir_Mapa(M : T_Mapa_Ciudades);
   -- salida Secuencia de Personas S (SE)
   -- pos: S est� formada por las personas de M.

   procedure Obten_Mapa_Ciudades(L: in T_Lista_Personas; MC: out T_Mapa_Ciudades);
   -- pre: L ordenada alfabética por apellidos y nombre
   -- post: MC contiene clasificadas las personas por ciudad y mayoría o
   -- no de edad. Las listas del mapa también están ordenadas.

END Mapa_Ciudades;
