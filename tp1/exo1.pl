% 1 ?- true.

% 2 ?- 2=1+1.
% false.

% 3 ?- 2 is 1+1.
% true.

% 4 ?- X=2,X=1+1.
% false.

% 5 ?- X is 3+4.
% X = 7.

% 6 ?- X=5, X is 3+3.
% false.

% 7 ?- X=5 ; X is 3+3.
% X = 5 ;
% X = 6.

% 8 ?- N is 5 , L is N+1.
% N = 5,
% L = 6.

% 9 ?- N is 5 , L is N+1 , Res = N+L.
% N = 5,
% L = 6,
% Res = 5+6.

% 10 ?- N is 5 , L is N+1 , Res is N+L.
% N = 5,
% L = 6,
% Res = 11.

% 11 ?- N is 5 , L is N*(N+1)/2.
% N = 5,
% L = 15.