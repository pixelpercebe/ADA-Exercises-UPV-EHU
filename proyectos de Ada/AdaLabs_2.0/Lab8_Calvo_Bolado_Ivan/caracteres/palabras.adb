with ada.Text_IO; use ada.Text_IO;
package body palabras is

  procedure Escribe_Palabra(L: in t_palabra) is
  begin
    for i in 1..l.cont loop
      put(l.letras(i));
    end loop;
  end escribe_Palabra;

  procedure Giro_I(L:in out t_lista;i:integer) is
    Aux:String(1..max);
  begin
    L.letras(l.cont-I..l.cont) = Aux(1..i);
    aux(i..max):=(other=>' ');
    L.letras(I..l.cont)=L.letras(l.cont-I..l.cont);
    l.letras(1..I)=aux(1..i);


  end Giro_I;

end palabras;