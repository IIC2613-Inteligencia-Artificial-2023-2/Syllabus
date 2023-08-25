persona(willy).
persona(blanca).
persona(amanda).

int_lactosa(amanda). % amanda es intolerante a la lactosa

% una persona come helado si no es intolerante a la lactosa
come_helado(A, B) :- persona(A), not int_lactosa(A).

#show come_helado/2.