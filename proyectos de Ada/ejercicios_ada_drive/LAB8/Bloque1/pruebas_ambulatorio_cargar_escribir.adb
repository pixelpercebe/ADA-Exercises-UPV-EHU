WITH Lista_Sintomas, Vector_Pacientes, Lista_Enfermedades;
USE Lista_Sintomas, Vector_Pacientes, Lista_Enfermedades;

PROCEDURE Pruebas_Ambulatorio_Cargar_Escribir IS

   PROCEDURE Inicializar (
         VP :    OUT T_Vector_Pacientes;
         LE :    OUT T_Lista_Enfermedades) IS
      E          : String (1 .. 20)  := (OTHERS => ' ');
      SE         : T_Vector_Sintomas;
      Sintomas   : T_Lista_Sintomas;
      Nom        : String (1 .. 25)  := (OTHERS => ' ');
      Enfermedad : T_Enfermedad;
   BEGIN
      -- ENFERMEDADES
--      LE.Num_Enfermedades:=0;

      E(1..7):= "Gripe_A";
      SE(1..4):= (Dolor_Cabeza, Fiebre, Mareos, Vomitos);
      Sintomas.Sintomas:= SE;
      Sintomas.Num_Sintomas:= 4;
      Enfermedad:= (E, Sintomas);
      LE.Lista(1):= Enfermedad;
      --ACtualiza_Enfermedad(LE, Enfermedad);

      E(1..11):= "Gripe_Comun";
      SE(1..3):= (Diarrea, Fiebre, Vomitos);
      Sintomas.Sintomas:= SE;
      Sintomas.Num_Sintomas:= 3;
      Enfermedad:= (E, Sintomas);
      LE.Lista(2):= Enfermedad;
      --ACtualiza_Enfermedad(LE, Enfermedad);

      E(1..11):= "Amigdalitis";
      SE(1..3):= (Dolor_Garganta, Fiebre, Malestar);
      Sintomas.Sintomas:= SE;
      Sintomas.Num_Sintomas:= 3;
      Enfermedad:= (E, Sintomas);
      LE.Lista(3):= Enfermedad;
      --ACtualiza_Enfermedad(LE, Enfermedad);

      LE.Num_Enfermedades:=3;

      New_Line;
      New_Line;

      -- PACIENTES
      Nom(1..14):= "Mena, Aritz   ";
      SE(1..4):= (Dolor_Cabeza, Fiebre, Mareos, Vomitos);
      Sintomas.Sintomas:= SE;
      Sintomas.Num_Sintomas:= 4;
      VP(1).Nombre:= Nom;
      VP(1).Sintomas:= Sintomas;

      Nom(1..14):= "Basterra, Ane ";
      SE(1..4):= (Dolor_Cabeza, Fiebre, Mareos, Vomitos);
      Sintomas.Sintomas:= SE;
      Sintomas.Num_Sintomas:= 4;
      VP(2).Nombre:= Nom;
      VP(2).Sintomas:= Sintomas;

      Nom(1..14):= "Bergara, Jon  ";
      SE(1..3):= (Dolor_Garganta, Fiebre, Malestar);
      Sintomas.Sintomas:= SE;
      Sintomas.Num_Sintomas:= 3;
      VP(3).Nombre:= Nom;
      VP(3).Sintomas:= Sintomas;

      Nom(1..14):= "Saez, Ander   ";
      SE(1..3):= (Diarrea, Dolor_Vientre, Fiebre);
      Sintomas.Sintomas:= SE;
      Sintomas.Num_Sintomas:= 3;
      VP(4).Nombre:= Nom;
      VP(4).Sintomas:= Sintomas;

   END Inicializar;

   PROCEDURE Prueba_Examen IS
      -- Declaración de variables solicitadas
      LS0,
      LS1,
      LS4 : T_Lista_Sintomas;
      P   : T_Paciente;
      E   : T_Enfermedad;
   BEGIN
      LS0.Num_Sintomas:=0; -- lista Vacía


      LS1.Sintomas(1):= Dolor_Cabeza;
      LS1.Num_Sintomas:= 1;

      LS4.Sintomas(1..4):= (Dolor_Cabeza, Fiebre, Mareos, Vomitos);
      LS4.Num_Sintomas:=4;

      P.Nombre:= (OTHERS => ' ');
      P.Nombre(1..11):= "Mena, Aritz" ;
      P.Sintomas:= LS4;

      E.Nombre(1..7):= "Gripe A";
      E.Nombre(8..20):= (OTHERS => ' ');
      E.Sintomas:= LS4;

      Put_Line("Lista De Síntomas LS0, Lista Vacía:");
      Escribir_Sintomas(LS0);
      New_Line;

      Put_Line("Lista De Síntomas LS1, Lista De Un Sintoma:");
      Escribir_Sintomas(LS1);
      New_Line;

      Put_Line("Lista De Síntomas LS0, Lista Vacía:");
      Escribir_Sintomas(LS4);

      Put_Line("Información del Paciente:");
      Put_Line(P.Nombre);
      Escribir_Sintomas(P.Sintomas);

      Put_Line("Información de la Enfermedad:");
      Put_Line(E.Nombre);
      Escribir_Sintomas(E.Sintomas);

   END Prueba_Examen;



   LE : T_Lista_Enfermedades;
   VP : T_Vector_Pacientes;

BEGIN
   Inicializar(VP, LE);
   New_Line;
   Put_Line("Cargadas estructuras");
   Escribir_Enfermedades(LE);
   New_Line;
   New_Line;
   Escribir_Pacientes(VP);


   Prueba_Examen;
END;



