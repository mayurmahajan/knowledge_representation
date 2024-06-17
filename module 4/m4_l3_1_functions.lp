domain(1;2;3).
codomain(a;b).
{f(X,Y): codomain(Y)} = 1 :- domain(X).

#show f/2.

% {f(1,Y) : codomain(Y)} = 1 :- domain(1)
% {f(1,a) f(1, b)} = 1 
% {f(2,a) f(2, b)} = 1 
% {f(3,a) f(3, b)} = 1 