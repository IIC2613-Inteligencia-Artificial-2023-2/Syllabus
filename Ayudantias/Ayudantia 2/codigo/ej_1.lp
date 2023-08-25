profesor(jorge).
profesor(hans).

catedra(X) :- profesor(X).

catedra(X,Y) :- profesor(X), profesor(Y), X!=Y.

#show catedra/1.
#show catedra/2.