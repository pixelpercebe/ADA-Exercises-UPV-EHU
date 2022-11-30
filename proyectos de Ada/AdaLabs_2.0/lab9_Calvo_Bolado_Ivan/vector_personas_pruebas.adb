WITH Ada.Text_IO, ADa.Integer_Text_IO;
USE Ada.Text_IO, Ada.Integer_Text_IO;
WITH Persona, Vector_Personas;
USE Persona, Vector_Personas;

PROCEDURE Vector_Personas_Pruebas IS
   V1 : T_Vector_Personas (1 .. 0);
   V2 : T_Vector_Personas (1 .. 1);
   V3 : T_Vector_Personas (5 .. 10);
   N1,
   N2,
      N3 : T_Nombre;
      C: T_Ciudad:= Usurbil;

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


   N3.Nombre:= (OTHERS=> ' '); -- �ltima persona del fichero "personas6.txt"
   N3.Apellido1:= (OTHERS=> ' ');
   N3.Apellido2:= (OTHERS=> ' ');
   N3.Nombre(1..3):= "Ana";
   N3.Apellido1(1..16):= "Zuazolacigorraga";
   N3.Apellido2(1..7):= "Alberdi";

   Put_Line("Cargar fichero con 6 personas");
   Cargar_Personas("personas6.txt", V3);
   Put_Line("El vector de personas esta formada por:");
   Escribir_Personas(V3);
   Put(V3'Length, 0);
   Put_Line(" personas");
   Put_Line("________________________________________________________________________________");
   Put_Line("        PRUEBAS Actualiza_Domicilio: primero, tercero y ultimo a USURBIL");
   Put_Line("______________________Y persona de apellido ZZZzolazigorraga____________________");

   Actualiza_Domicilio(V3, N1, C);
   Actualiza_Domicilio(V3, N2, C);
   Actualiza_Domicilio(V3, N3, C);
   N3.Apellido1(1..3):= "ZZZ";
   Actualiza_Domicilio(V3, N3, C);
   N3.Apellido1(1..3):= "Zua";
   Escribir_Personas(V3);

   Put_Line("_______________________________________________________________________________");
   Put_Line("                           PRUEBAS Pos_Persona");
   Put_Line("_______________________________________________________________________________");
   Put_Line("Cargar fichero vacio");
   Cargar_Personas("personas0.txt", V1);
   Put_Line("Casos de prueba con el vector vacio. El vector de personas esta formado por:");
   Escribir_Personas(V1);
   Put(V1'Length, 0);
   Put_Line(" personas");
   New_Line;

   Put("Caso 1: Vector vacio. La posicion en la que debera estar cualquier persona es la 1, y obtiene ==> ");
   Put(Pos_Persona(V1, N1), 0);
   New_Line;

   New_Line;
   New_Line;
   Put_Line("________________________________________________________________________________");
   Put_Line("Cargar fichero con una persona");
   Cargar_Personas("personas1.txt", V2);
   Put_Line("Casos de prueba con un vector de un elemento. El vector de personas esta formado por:");
   Escribir_Personas(V2);
   Put(V2'Length, 0);
   Put_Line(" persona");

   Put("Caso 2: Vector con un elemento que esta. Posicion de una persona que esta es la 1, y obtiene ==> ");
   Put(Pos_Persona(V2, N1), 0); New_Line;New_Line;

   Put("Caso 3: Vector con un elemento que no esta, pero deberia ir el 1, y obtiene ==> ");
   N1.Apellido1(1..7):= "Aguirre";
   Put(Pos_Persona(V2, N1), 0); New_Line;New_Line;

   Put("Caso 4: Vector con un elemento que no esta, pero deberia ir el 2, y obtiene ==> ");
   N1.Apellido1(1..7):= "Gomez  ";
   Put(Pos_Persona(V2, N1), 0); New_Line;New_Line;

   Put_Line("________________________________________________________________________________");
   Put_Line("El vector de personas esta formada por:");
   Escribir_Personas(V3);

   New_Line;
   New_Line;
   Put_line("Caso 5: Vector con 6 elementos. Persona esta en posicion 5, y obtiene ==> ");
   N1.Apellido1(1..7):= "Alberdi";
   put(N1.Apellido1); put(N1.Apellido2); put(N1.Nombre);
   Put(Pos_Persona(V3, N1), 0); New_Line;New_Line;

   Put_line("Caso 6: Vector con 6 elementos. Persona no esta pero deberia ir en posicion 5, y obtiene ==> ");
   N1.Apellido1(1..7):= "Aguirre";
   put(N1.Apellido1); put(N1.Apellido2); put(N1.Nombre);
   Put(Pos_Persona(V3, N1), 0); New_Line;New_Line;

   Put_line("Caso 7: Vector con 6 elementos. Persona esta en posicion 7, y obtiene ==> ");
   put(N2.Apellido1); put(N2.Apellido2); put(N2.Nombre);
   Put(Pos_Persona(V3, N2), 0); New_Line;New_Line;

   Put_line("Caso 8: Vector con 6 elementos. Persona que no esta, pero deberia ir en 7, y obtiene ==> ");
   N2.Apellido1(1..7):= "Lopez  ";
   put(N3.Apellido1); put(N3.Apellido2); put(N3.Nombre);
   Put(Pos_Persona(V3, N2), 0); New_Line;New_Line;

   Put_line("Caso 9: Vector con 6 elementos. Persona esta en ultima posicion 10, y obtiene ==> ");
   put(N3.Apellido1); put(N3.Apellido2); put(N3.Nombre);
   Put(Pos_Persona(V3, N3), 0); New_Line;New_Line;

   Put_line("Caso 10: Vector con 6 elementos. Persona que no esta, pero deberia ir despues del ultimo en 11 y obtiene ==> ");
   N3.Apellido1(1..6):= "Zuniga";
   put(N3.Apellido1); put(N3.Apellido2); put(N3.Nombre);
   Put(Pos_Persona(V3, N3), 0);

END Vector_Personas_Pruebas;