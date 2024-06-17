% domain
vertex(1..6).

edge(1,(2;3)).
edge(2,(4;1)).
edge(3,(1;4)).
edge(4,(3;5;6)).
edge(5,(4;6)).
edge(6,(4;5)).

% vc/1 is a set containing of n vertices of G
{vc(X): vertex(X)} = n.



{f(X,Y): vc(Y)} = 1 :- vertex(X).
:- {f(X,Y) : vertex(X)} = 0, vc(Y).

#show f/2.