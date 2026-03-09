Home(omar).homme(said).homme(fethi).homme(adam).femme(leila).femme(samira).femme(imene).femme(maria).
fruit(pommes).fruit(orange).fruit(tomate).
legumes(carottes). legumes(epinard).
soda(coca). soda(fanta). soda(pepsi).
tabac(cigarette). tabac(chicha). tabac(cigarette_elect). tabac(cigare).

aime(adam, pommes).  aime(omar, cigarette). aime(omar, cigare).
aime(omar, fanta).   aime(omar, pommes).    aime(samira, coca).
aime(samira, oranges). aime(samira, cigarette_elect).
aime(said, oranges). aime(said, chicha).
aime(leila, tomate). aime(leila, carottes). aime(leila, epinard).
aime(imene, pommes). aime(imene, carottes). aime(imene, epinard).
aime(maria, fanta).  aime(maria, chicha).
aime(fethi, pepsi).  aime(fethi, coca).     aime(fethi, cigarette).

bonne_sante(X) :- aime(X, Y), fruit(Y).
bonne_sante(X) :- aime(X, Y), legume(Y).
mauvaise_sante(X) :- aime(X, Y), tabac(Y).
mauvaise_sante(X) :- aime(X, Y), soda(Y).