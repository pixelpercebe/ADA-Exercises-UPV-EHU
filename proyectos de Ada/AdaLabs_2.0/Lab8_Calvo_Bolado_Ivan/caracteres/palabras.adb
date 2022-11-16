with ada.Text_IO; use ada.Text_IO;
package body palabras is

  procedure Escribe_Palabra(L: in t_palabra) is
  begin
    for i in 1..l.cont loop
      put(l.letras(i));
    end loop;
  end escribe_Palabra;

  procedure Giro_I(L:in out t_lista;i:integer) is
    Aux:String
  begin



  end Giro_I;

end palabras;