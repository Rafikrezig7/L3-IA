personne(ali,39).
personne(omar,24).
personne(youcef,17).
personne(said,59).
personne(lotfi,14).
personne(linda,9).

% 1 ?- true.

% 2 ?- personne(X,Age) , Age >20.
% X = ali,
% Age = 39 ;
% X = omar,
% Age = 24 ;
% X = said,
% Age = 59 ;
% false.

% 3 ?- personne(X,Age) , Age>=10, 20>=Age.
% X = youcef,
% Age = 17 ;
% X = lotfi,
% Age = 14 ;
% false.