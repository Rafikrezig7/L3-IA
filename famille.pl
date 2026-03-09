% ===== FACTS =====
masculin(ali).
masculin(omar).
masculin(malik).
masculin(yacine).

feminin(layla).
feminin(liza).
feminin(anissa).
feminin(linda).

enfant(malik, layla).
enfant(malik, ali).
enfant(liza, ali).
enfant(anissa, malik).
enfant(linda, malik).
enfant(omar, liza).
enfant(yacine, linda).

% ===== RULES =====
pere(X, Y) :- enfant(Y, X), masculin(X).
mere(X, Y) :- enfant(Y, X), feminin(X).
parent(X, Y) :- pere(X, Y) ; mere(X, Y).
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
soeur(X, Y) :- feminin(X), parent(P, X), parent(P, Y), X \= Y.
frere(X, Y) :- masculin(X), parent(P, X), parent(P, Y), X \= Y.
%# 1. Sauvegarde ton fichier famille.pl (Ctrl+S)

% # 2. Lance Prolog
% swipl

% # 3. Charge le fichier
% ?- [famille].
% famille compiled 0.003 sec, 1,234 bytes true.

% # 4. MAINTENANT teste la requête (avec ESPACE après ?-)
% ?- soeur(linda, anissa).
% true.