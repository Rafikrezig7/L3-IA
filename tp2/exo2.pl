a_pour_successeur(X, Y) :- Y is X + 1.
somme(X,Y,S) :- S is X + Y. 
max2(X,Y,Y) :- Y>=X.
max2(X,Y,X) :- X>Y.
double(X,Y) :- Y is X*2.
carre(X,Y) :- Y is X*X.
moyenne(X,Y,M) :- M is (X+Y)/2.
