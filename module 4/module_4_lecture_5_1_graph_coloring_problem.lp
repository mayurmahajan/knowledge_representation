vertex(1..6).

edge(1,(2;3;4)).
edge(4,(1;2)).
edge(2,(4;5;6)).
edge(5,(3;4;6)).
edge(3,(1;4;5)).
edge(6,(2;3;5)).


% each vertex is mapped to a color
% for each vertex X map a color
{color(X,C): C=1..n} =1 :- vertex(X).

%edge(X,Y) :- edge(Y,X).

% the adjacent vertices should be of different color
:- color(X1, C), color(X2,C), edge(X1,X2), edge(X2,X).

#show color/2.