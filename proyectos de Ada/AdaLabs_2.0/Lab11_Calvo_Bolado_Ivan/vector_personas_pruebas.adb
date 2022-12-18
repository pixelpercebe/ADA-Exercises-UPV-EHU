WITH Ada.Text_IO, ADa.Integer_Text_IO;
USE Ada.Text_IO, Ada.Integer_Text_IO;
WITH Persona, Alista_personas;
USE Persona, Alista_personas;

PROCEDURE Vector_Personas_Pruebas IS
   L1 : A_personas;
   L2 : A_personas;
   L3 : A_personas;
   N1,N2,N3 : T_Nombre;
   C: T_Ciudad:= Usurbil;
   ant,act : A_Personas;

BEGIN
   N1.Nombre:= (OTHERS=> ' '); -- Primera persona del fichero "personas1.txt" y "personas6.txt"
   N1.Apellido1:= (OTHERS=> ' ');
   N1.Apellido2:= (OTHERS=> ' ');
   N1.Nombre(1..7):= "Roberto";
   N1.Apellido1(1..7):= "Alberdi";
   N1.Apellido2(1..7):= "Recondo";


   N2.Nombre:= (OTHERS=> ' '); -- Persona intermedia (3) del fichero "personas6.txt" con valores ordenados
   N2.Apellido1:= (OTHERS=> ' ');
   N2.Apellido2:= (OTHERS=> ' ');
   N2.Nombre(1..4):= "Coro";
   N2.Apellido1(1..5):= "Perez";
   N2.Apellido2(1..9):= "Rodriguez";


   N3.Nombre:= (OTHERS=> ' '); -- Ultima persona del fichero "personas6.txt"
   N3.Apellido1:= (OTHERS=> ' ');
   N3.Apellido2:= (OTHERS=> ' ');
   N3.Nombre(1..3):= "Ana";
   N3.Apellido1(1..16):= "Zuazolacigorraga";
   N3.Apellido2(1..7):= "Alberdi";

   Put_Line("Cargar fichero con 6 personas");
   Cargar_Personas("personas6.txt", L3);
   Put_Line("La lista de personas esta formada por:");
   Escribir_Personas(L3);
   new_line;
   Put_Line("_______________________________________________________________________________");
   Put_Line("        PRUEBAS Actualiza_Domicilio: primero, tercero y ultimo a USURBIL");
   Put_Line("______________________Y persona de apellido ZZZzolazigorraga____________________");

   Actualiza_Domicilio(L3, N1, C);
   Actualiza_Domicilio(L3, N2, C);
   Actualiza_Domicilio(L3, N3, C);
   N3.Apellido1(1..3):= "ZZZ";
   Actualiza_Domicilio(L3, N3, C);
   N3.Apellido1(1..3):= "Zua";
   Escribir_Personas(L3);

   Put_Line("_______________________________________________________________________________");
   Put_Line("                           PRUEBAS Pos_Persona");
   Put_Line("_______________________________________________________________________________");
   Put_Line("Cargar fichero vacio");
   Cargar_Personas("personas0.txt", L1);
   Put_Line("Casos de prueba con el vector vacio. El lista de personas esta formado por:");
   Escribir_Personas(L1);
   New_Line;

   Put("Caso 1: Lista vacia. La posicion en la que debera estar cualquier persona es la 1, y obtiene que ");
   Pos_Persona(L1, N1,ant,act);
   new_line;
   put_line("Debe estar entre: ");
   Escribir_Persona(ant);
   Escribir_Persona(act);
   New_Line;

   New_Line;
   New_Line;
   Put_Line("________________________________________________________________________________");
   Put_Line("Cargar fichero con una persona");
   Cargar_Personas("personas1.txt", L2);
   Put_Line("Casos de prueba con un lista de un elemento. El lista de personas esta formado por:");
   Escribir_Personas(L2);
   Put("Caso 2: Lista con un elemento que esta. Posicion de una persona que esta es la 1, y obtiene que ");
   Pos_Persona(L2, N1,ant,act);
   new_line;
   put_line("Debe estar entre: ");
   Escribir_Persona(ant);
   Escribir_Persona(act);
   New_Line;New_Line;

   Put("Caso 3: Lista con un elemento que no esta, pero deberia ir el 1, y obtiene que ");
   N1.Apellido1(1..7):= "Aguirre";
   Pos_Persona(L2, N1,ant,act); 
   new_line;
   put_line("Debe estar entre: ");
   Escribir_Persona(ant);
   Escribir_Persona(act);
   New_Line;New_Line;

   Put("Caso 4: Lista con un elemento que no esta, pero deberia ir el 2, y obtiene que ");
   N1.Apellido1(1..7):= "Gomez  ";
   Pos_Persona(L2, N1,ant,act); 
   new_line;
   put_line("Debe estar entre: ");
   Escribir_Persona(ant);
   Escribir_Persona(act);
   New_Line;New_Line;

   Put_Line("________________________________________________________________________________");
   Put_Line("La lista de personas esta formada por:");
   Escribir_Personas(L3);

   New_Line;
   New_Line;
   Put_line("Caso 5: Lista con 6 elementos. Obtiene que ");
   N1.Apellido1(1..7):= "Alberdi";
   put(N1.Apellido1); put(N1.Apellido2); put(N1.Nombre);
   Pos_Persona(L3, N1,ant,act);
   new_line;
   put_line("Debe estar entre: ");
   Escribir_Persona(ant);
   Escribir_Persona(act);
   New_Line;New_Line;

   Put_line("Caso 6: Lista con 6 elementos. Obtiene que ");
   N1.Apellido1(1..7):= "Aguirre";
   put(N1.Apellido1); put(N1.Apellido2); put(N1.Nombre);
   Pos_Persona(L3, N1,ant,act);
   new_line;
   put_line("Debe estar entre: ");
   Escribir_Persona(ant);
   Escribir_Persona(act);
   New_Line;New_Line;

   Put_line("Caso 7: Lista con 6 elementos. Obtiene que ");
   put(N2.Apellido1); put(N2.Apellido2); put(N2.Nombre);
   Pos_Persona(L3, N2,ant,act);
   new_line;
   put_line("Debe estar entre: ");
   Escribir_Persona(ant);
   Escribir_Persona(act);
   New_Line;New_Line;

   Put_line("Caso 8: Lista con 6 elementos. Obtiene que ");
   N2.Apellido1(1..7):= "Lopez  ";
   put(N3.Apellido1); put(N3.Apellido2); put(N3.Nombre);
   Pos_Persona(L3, N2,ant,act);
   new_line;
   put_line("Debe estar entre: ");
   Escribir_Persona(ant);
   Escribir_Persona(act);
   New_Line;New_Line;

   Put_line("Caso 9: Lista con 6 elementos. Obtiene que ");
   put(N3.Apellido1); put(N3.Apellido2); put(N3.Nombre);
   Pos_Persona(L3, N3,ant,act);
   new_line;
   put_line("Debe estar entre: ");
   Escribir_Persona(ant);
   Escribir_Persona(act);
   New_Line;New_Line;

   Put_line("Caso 10: Lista con 6 elementos. Persona que no esta, pero Obtiene que ");
   N3.Apellido1(1..6):= "Zuniga";
   put(N3.Apellido1); put(N3.Apellido2); put(N3.Nombre);
   Pos_Persona(L3, N3,ant,act);
   new_line;
   put_line("Debe estar entre: ");
   Escribir_Persona(ant);
   Escribir_Persona(act);
   
END Vector_Personas_Pruebas;