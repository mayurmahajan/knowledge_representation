% domain
vertex(1..6).

edge(1,(2;3;4)).
edge(4,(1;2)).
edge(2,(4;5;6)).
edge(5,(3;4;6)).
edge(3,(1;4;5)).
edge(6,(2;3;5)).

%edge(1,(2;4)).
%edge(4,(1)).
%edge(2,(1;3;5)).
%edge(5,(2;6)).
%edge(3,(2;6;7)).
%edge(6,(3;5)).


% in/1 is a set consisting of n vertices of G
{in(X): vertex(X)} = n.

% covered/2 is the set of edges of G that have
% an endpoint in/1

covered(X,Y) :- edge(X,Y), in(X).
covered(X,Y) :- edge(X,Y), in(Y).

% every edge of G is in covered/2

:- edge(X,Y), not covered(X,Y).

#show covered/2.



