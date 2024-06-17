% p(1,10; 2,20).
% q(S):- S=#sum{X,Y: p(X,Y)}.
% r(S):- S=#sum{Y,X: p(X,Y)}.

p(S) :- S= #sum{N*N,N : N=-2..2}.
p(S) :- S= #sum{N*N : N=-2..2}.