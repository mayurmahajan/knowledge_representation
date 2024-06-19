domain(1;2;3;4;5;6).
codomain(a;b;c).


{f(X,Y): codomain(Y)} = 1 :- domain(X).

% for each element in y in codomain, 
% the number of x that is mapped is zero 
% then it violates this constraint

:- {f(X,Y): domain(X)} = 0, codomain(Y).

#show f/2.