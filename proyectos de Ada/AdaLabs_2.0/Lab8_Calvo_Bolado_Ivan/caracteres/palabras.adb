with ada.Text_IO; use ada.Text_IO;
package body palabras is

  procedure ejecutar_pruebas(L: in out t_palabra; palabra:String; rango:integer; cont:Natural) is

  begin
    put_line("Palabra: " & palabra);
    for i in 0..cont loop
    l.letras(1..rango):=(palabra);
    l.letras(rango+1..max):=(others=>' ');
    l.cont := cont;
    put_line("rotar " & i'img);
    Giro_I(L,i);
    escribe_Palabra(L);
    end loop;

  end ejecutar_pruebas;

  procedure Escribe_Palabra(L: in t_palabra) is
  begin
    for i in 1..l.cont loop
      put(l.letras(i));
    end loop;
    new_line;
  end escribe_Palabra;

  procedure Giro_I(L:in out t_palabra;i:integer) is
    Aux:String(1..max);
  begin
    Aux(1..i) := L.letras(l.cont-(I-1)..l.cont);
    aux(i+1..max):=(others => ' ');
    L.letras(i+1..l.cont) := L.letras(1..l.cont-I);
    l.letras(1..I):=aux(1..i);
  end Giro_I;

end palabras;