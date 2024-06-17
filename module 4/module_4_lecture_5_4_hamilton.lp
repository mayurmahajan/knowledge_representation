% nodes
vertex(1..6).

% edges
edge(1,(2;3;4)).
edge(4,(1;2)).
edge(2,(4;5;6)).
edge(5,(3;4;6)).
edge(3,(1;4;5)).
edge(6,(2;3;5)).

% in(X,Y) is the set of edges included in the cycle and satisfies condition 1.

{in(X,Y): edge(X,Y)} = 1 :- vertex(X).
{in(X,Y): edge(X,Y)} = 1 :- vertex(Y).

% define reachability recursively
reachable(X) :- in(1,X).
reachable(Y) :- in(X,Y), reachable(X).

% satifies condition 2
:- not reachable(X), vertex(X).

% display
#show in/2.