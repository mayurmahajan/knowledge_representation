vertex(1..6).

edge(1,(2;3;4)).
edge(4,(1;2)).
edge(2,(4;5;6)).
edge(5,(3;4;6)).
edge(3,(1;4;5)).
edge(6,(2;3;5)).


% in/1 is a set containing of n vertices of G
{in(X): vertex(X)}

% there must be an edge between the chosen vertices
:- in(X), in(Y), X!=Y, not edge(X,Y), not edge(Y,X).

#maximize{1,X: in(X)}.

#show in/1.