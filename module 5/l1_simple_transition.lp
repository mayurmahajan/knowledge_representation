p(t,1) :- a(0).
1{p(t,0); p(f,0)}1.
% p(f,0).
{a(0)}.
{p(t,1)} :- p(t,0).
{p(f,1)} :- p(f,0).
:- not 1{p(t,1); p(f,1)}1.




p(t,1) :- a(0).
p(f,0).
a(0).
{p(t,1)} :- p(t,0).
{p(f,1)} :- p(f,0).
:- not 1{p(t,1); p(f,1)}1.