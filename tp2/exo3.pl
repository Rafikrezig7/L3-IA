/*
1)
val_aff(0). : base value means STOP when reaching  0
val_aff(N) :- : recursive of N
N>0 : condition of the recursive operation
write(N),nl, print N and creates newline
N1 is N-1 store new value in a new variable
val_aff(N1). recursive the new value
2)
val_aff(5):5>0 -> write(5) ->val_aff(4)
val_aff(4):4>0 -> write(4) ->val_aff(3)
val_aff(3):3>0 -> write(3) ->val_aff(2)
val_aff(2):2>0 -> write(2) ->val_aff(1)
val_aff(1):1>0 -> write(1) ->val_aff(0)
val_aff(0): -> Stop
Result 5
4
3
2
1
*/
val_aff(0).
val_aff(N) :- N > 0 , writeln(N), N1 is N - 1 , val_aff(N1).

aff_croissant(I,N) :- I>N.
aff_croissant(I,N) :- I=<N, writeln(I), I1 is I + 1 , aff_croissant(I1,N).

ecrit(0).
ecrit(N) :- N>0 , writeln('bonjour') , N1 is N-1, ecrit(N1).