p(1..3).
q(X) :- X=2..4, not p(X).


%p(1),p(2),p(3),p(4).
%q(X) :- X=2..4, not p(X).
%#show q/1.