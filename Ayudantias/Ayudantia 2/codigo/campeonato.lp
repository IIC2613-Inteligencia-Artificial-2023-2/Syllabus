jugador("Novak Djokovic").
jugador("Rafael Nadal").
jugador("Roger Federer").
jugador("Cristian Garan").
jugador("Nicolas Massu").
jugador("Carlos Alcaraz").
jugador("Andy Murray").
jugador("Alejandro Tabilo").

equipo(1..4).

% Todos los jugadores pertenecen a un equipo.
1{ juega_en(J, E) : equipo(E) }1 :- jugador(J).

% Todos los equipos tienen 2 jugadores.
2{ juega_en(J, E) : jugador(J) }2 :- equipo(E).

#show juega_en/2.
