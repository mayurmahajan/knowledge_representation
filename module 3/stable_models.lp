%p(1/N) :- N=0..1.
%p(1..3).

%q(X) :- p(X), X=2..4.


p(1,1..2).
q(X,Y) :- p(X,Y), X!=Y.
q(X,Y) :- q(Y,X).


q(1,)