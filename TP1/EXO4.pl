% facts
homme(mostafa). homme(ilyes). homme(samir).
femme(sara).
enfant(norhane).
aime(samir, tom_jerry).
aime(mostafa, sara).
aime(ilyes, sara).
aime(ilyes, norhane).

% rules
adorable(X) :- aime(_, X), homme(X).
adorable(X) :- aime(_, X), femme(X).
adorable(X) :- aime(_, X), enfant(X).
% or adorable(X):-aime(_,X),(homme(X);femme(X);enfant(X)).