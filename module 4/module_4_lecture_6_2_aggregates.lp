%n {in(X): vertex(X)} n.
% {in(X): vertex(X)}=n.
%{in(X)}:-vertex(X.
%:-#count{X:in(X)})!=n.

% 5 {p(X):q(X)} 7.
% {p(X)} :- q(X).
% #count{X:p(X)} <5
% #count{X:p(X)} >7

p(a,1).p(b,1).p(b,2).p(c,2).

q(N) :- N=#count{A,X: p(A,X)}.
r(N) :- N=#count{A: p(A,X)}.
s(N) :- N=#count{X: p(A,X)}.