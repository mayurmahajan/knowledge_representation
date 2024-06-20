% File ‘simple.lp’
boolean(t;f).

% direct effect
p(t,T+1) :- a(T), T=0..m-1.

% initial status are exogenous
1{p(B,0):boolean(B)}1.

% uniqueness and existence of values
:- not 1{p(B,T):boolean(B)}1, T=1..m.
% 1{p(B,T): boolean(B)}1 :- T=1..m.  % gets this p(f,1) p(t,0) and p(t,1) p(f,0)

% actions are exogenous
{a(T)} :- T=0..m-1.

% commonsense law of inertia
{p(B,T+1)} :- p(B,T), T=0..m-1.