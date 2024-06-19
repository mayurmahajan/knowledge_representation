


domain(1;2;3).
codomain(a;b;c).

{f(X,Y): codomain(Y)} = 1 :- domain(X).
:- {f(X,Y): domain(X)} = 0, codomain(Y).
X=X1 :- f(X,Y), f(X1,Y).
#show f/2.