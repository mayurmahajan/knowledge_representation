

%A = domain B=codomain
% for every element in A(domain) there is exactly one element y in B(codomain)

domain(1;2;3;4).
codomain(a;b;c;d).

{f(X,Y): codomain(Y)} = 1 :- domain(X).
% X=X1 :- f(X,Y), f(X1,Y).
:- f(X,Y), f(X1,Y), X!=X1.

#show f/2.
