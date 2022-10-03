with ada.text_IO, ada.integer_text_IO;
use ada.text_IO, ada.integer_text_IO;


procedure contar_vocales is

--especificacion
--ENTRADA: Secuencia de caracteres S = (S1,S2, ... ,SN,C)(EE)
--PRE: n >= 0, C= '.'
--SALIDA: 1 natural cont (SE)
--POST: cont es la cantidad de vocales de S

c : character; --F : File_type, (Ada.text_IO)
cont : natural := 0;

begin

--abrimos el fichero con 'Open(F)' lo definimos como un fichero de entrada 'Open(F,In_File)' 
--y especificamos el nombre del fichero que queremos recorrer(F,In_file, "nombre del fichero")

loop
  get(C); --get(F,C)
  exit when  c = '.';
  if C = 'A' or C = 'E' or C = 'I' or C = 'O' or C = 'U' then 
    cont := cont + 1;
  end if;
end loop;

--Cerramos el fichero 'close(F)'

put (cont,0);
end contar_vocales;