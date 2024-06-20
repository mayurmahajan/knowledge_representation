% {p(1..3)}.{q(1..3)}.
% {p(1..3, 1..3)}.
% 1 {p(1..3)} 2.

% 0 {p(a)}.
% 1 {p(a)}.
% {p(a)} 1.

% a domain b codomain
% for each element in B there is an element in a
% domain(1;2;).
% codomain(a;b;c).
% {f(X,Y): codomain(Y)} = 1 :- domain(X).
% :- {f(X,Y): domain(X)} = 0, codomain(Y).
% #show f/2.

#const n=5.
#count{X*Y: X=2..n, Y=2..n, X*Y<=n}.