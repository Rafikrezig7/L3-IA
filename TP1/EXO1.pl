% ?- 2=1+1.	false	= tries to unify number 2 with the TERM 1+1. They are different structures → fails.
% ?- 2 is 1+1.	true	is evaluates 1+1 = 2, then checks 2 = 2 → true.
% ?- X=2, X=1+1.	false	X gets bound to 2 first. Then tries to unify 2 with 1+1 → fails.
% ?- X is 3+4.	X = 7	is evaluates 3+4 and binds X to 7.
% ?- X=5, X is 3+3.	false	X is bound to 5. Then checks 5 is 3+3 → 5 is 6 → false.
% ?- X=5 ; X is 3+3.	X=5 ; X=6	OR: first solution X=5, second solution X=6 (6 is 3+3).
% ?- N is 5, L is N+1.	N=5, L=6	N=5, then L is 5+1=6.
% ?- N is 5, L is N+1, Res = N+L.	N=5, L=6, Res=5+6	Res = binds to TERM 5+6, NOT 11!
% ?- N is 5, L is N+1, Res is N+L.	N=5, L=6, Res=11	Res is evaluates 5+6 = 11.
% ?- N is 5, L is N*(N+1)/2.	N=5, L=15	L is 5*(5+1)/2 = 5*6/2 = 30/2 = 15. (sum 1..5)
