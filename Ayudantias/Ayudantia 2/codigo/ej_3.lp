persona(juan).
persona(pedro).

helado(chocolate).
helado(vainilla).
helado(frutilla).

% Todas las personas comen uno o dos helados
1 { come_helado(A, B): helado(B) } 3 :- persona(A).

% Además, a juan no le gusta el helado de chocolate
%:- come_helado(juan, chocolate).

#show come_helado/2.