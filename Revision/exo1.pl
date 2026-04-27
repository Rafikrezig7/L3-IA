homme(ali). 
homme(omar). 
homme(yacine). 

femme(sara). 
femme(lina). 

fruit(pomme). 
fruit(banane). 

legume(carotte). 
legume(tomate). 

soda(coca). 
soda(fanta). 

tabac(cigarette). 
tabac(chicha). 

aime(ali, pomme). 
aime(ali, coca). 
aime(omar, carotte). 
aime(omar, cigarette). 
aime(sara, banane). 
aime(sara, tomate). 
aime(lina, fanta). 
aime(yacine, chicha). 

aime_tabac(X,Y):- aime(X,Y),tabac(Y).

bonne_sante(X):- aime(X,Y),(fruit(Y);legume(Y)).

mauvaise_sante(X):-aime(X,Y),(soda(Y);tabac(Y)).

equilibre(X):-aime(X,Y),(fruit(Y);legume(Y)), \+ (aime(X,Z),(soda(Z);tabac(Z))).

compte(0).
compte(N):- N > 0,writeln(N), N1 is N-1, compte(N1).

pair(0).
pair(N):- N>0,N1 is N-2, pair(N1).

compte_bon(X,N):-findall(Y,(aime(X,Y),(fruit(Y);legume(Y))),L),length(L,N).