som(0,0).
som(N,S):-
N>0,N1 is N-1, som(N1,S1),S is S1 + N.
fact(0, 1).


fact(N, F) :-
    N > 0, N1 is N - 1,fact(N1, F1),F is N * F1.


/*
nbre_p(0). 
nbre_p(X) :- X > 0, X1 is X - 2, nbre_p(X1). 
checks if X is  even number
it subtract 0 everytime until it reaches 0 and when that happens that means success = X is odd
go below 0 =failure=X is odd
*/

impair(1).
impair(X) :- X > 1, X1 is X - 2, impair(X1).
