% Definimos las plantas
planta(sauce).
planta(eucalipto).
planta(almendro).
planta(naranjo).
planta(manzano).
planta(ciruelo).
planta(cactus).

% Definimos los días
dia(1).
dia(2).
dia(3).

% Definimos los trabajadores
trabajador(juan1).
trabajador(juan2).
trabajador(juan3).

% Definimos las alergias de los trabajadores a las plantas
alergia(juan1, almendro).
alergia(juan1, naranjo).
alergia(juan1, sauce).
alergia(juan2, sauce).
alergia(juan2, cactus).
alergia(juan2, eucalipto).
alergia(juan3, eucalipto).

% Cada planta debe asignarse a exactamente un trabajador
1 { asignacion(P, T, D): dia(D), trabajador(T)} 1 :- planta(P).

% Un trabajador no puede plantar una planta si le tiene alergia
:- asignacion(P, T, D), planta(P), trabajador(T), dia(D), alergia(T, P).

% Cada trabajador puede plantar como máximo una planta al día
{ asignacion(P, T, D) : planta(P) } 1 :- trabajador(T), dia(D).

% juan3 no puede trabajar el segundo día
:- asignacion(P, juan3, 2), planta(P).

% cuando juan2 planta una planta, debe descansar al día siguiente
:- asignacion(P1, juan2, D), asignacion(P2, juan2, D+1).

% Pregunta por las asignaciones válidas
#show asignacion/3.
