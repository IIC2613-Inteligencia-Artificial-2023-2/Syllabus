% R0:
n(1..9).

% R1:
1{solucion(X,Y,N):n(N)}1 :- n(Y), n(X). 

% R2: 
:- solucion(X1,Y,N), solucion(X2,Y,N), X1 != X2.

% R3:
:- solucion(X,Y1,N), solucion(X,Y1,N), Y1 != Y2.



% % Existen 9 posiciones/valores, la grilla sera 9x9
% % una alternativa a esto es grid(1..9,1..9)
% n(1..9).


% % R1: Asignar exactamente un valor a cada posicion X,Y
% 1{solucion(X,Y,N):n(N)}1 :-  n(Y), n(X) .


% % R2: Cada columna tendra un unico valor N
% :- solucion(X1,Y,N), solucion(X2,Y,N), X1 != X2.


% % R3: Cada fila tendrá un unico valor N
% :- solucion(X,Y1,N), solucion(X,Y2,N), Y1 != Y2.


% % R4: Creamos un identificador para la subgrilla
% % OJO: esto no es muy útil para su tarea
% subgrid(X,Y,Z,W) :- n(X), n(Y), n(Z), n(W), (X-1)/3=(Z-1)/3,(Y-1)/3=(W-1)/3.


% % R5: Cada subgrilla tendrá un unico valor N
% :- subgrid(X,Y,Z,W), solucion(X,Y,N), solucion(Z,W,N), X!=Z, Y!=W.

% #show solucion/3.


% Alternativa 1: 

% R2: unicidad de columna
% 1{solucion(X,Y,N):n(Y)}1 :- n(X), n(N) .

% R3: unicidad de fila
% 1{solucion(X,Y,N):n(X)}1 :- n(Y), n(N).



% Alternativa 2, más fancy

% R1: variables iniciales
% #const n=3.
% grid(1..n*n,1..n*n).
% v(1..n*n).
% initial(X,Y,(((X-1)/n)*n + (Y-1)/n),V) :- initial(X,Y,V).
% solucion(X,Y,S,V) :- initial(X,Y,S,V). 

% R2: columna
% :-#sum{1,X,V:solucion(X,Y,S,V)} != n*n, X=(1..n*n).

% R3: fila
% :-#sum{1,Y,V:solucion(X,Y,S,V)} != n*n, Y=(1..n*n).

% R5: subgrilla
% :-#sum{1,S,V:solucion(X,Y,S,V)} != n*n, S=(0..n*n-1).

% R6: restringimos posibilidades
% (esto debido a que pre-definimos todos los posibles valores a tomar)
% {solucion(X,Y,S,V): v(V), not initial(X,_,_,V), not initial(_,Y,_,V), not initial(_,_,S,V)} = 1 :- gridR(X,Y,S).

% R7: reducimos variables para mostrar resultados (opcional)
% solucion(X,Y,V) :- solucion(X,Y,S,V).

% #show solucion/3.

