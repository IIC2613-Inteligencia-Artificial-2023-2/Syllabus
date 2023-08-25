% vota(P, T) indica que una persona P vota en el tiempo T

#const n = 10.
tiempo(1..n). % Esto es equivalente a escribir: tiempo(1), tiempo(2), ... , tiempo(10).

persona(willy).
persona(blanca).
persona(dani).

% Todas las personas pueden votar máximo una vez
{ vota(P, T) : tiempo(T) } 1 :- persona(P).

% No pueden votar dos personas al mismo tiempo
:- vota(P1, T), vota(P2, T), P1 != P2.

#show vota/2.