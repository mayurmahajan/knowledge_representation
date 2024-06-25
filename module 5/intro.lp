% action : anything that can be executd and may change the state of the world.

% transition system - vertices: state of the world. edges: action.

% p=f
%% a=f -> p=f
%% a=t -> p=t

% p=t
%% a=f -> p=t
%% a=t -> p=t

% following are atoms
% p(t,0), p(t,0), p(f,0), p(f,0), a(0)

% effects of action
% if a(0) is true then p is t at time 1
p(t,1) :- a(0). 

% things p(t,1) :- a(0) doen't describe:
% 1) what is the value of p at t=0 ie at initia; state
% 2) how to determine  whether action a is executed?
% 3) how to determine value of p in final state if a is not executed.
% 4) exactly one of the atoms p(t,T) is true at any time t=0 or 1.

% 1) what is the value of p at t=0 ie at initial state
% initial state of system is arbitrary
% ex: 1 {p(t,0); p(f,0)}.

% ie. value of p in initial state is exogeneous (related to external factors).
1 {p(t,0); p(f,0)} 1. 

% telling clingo to chose one avtons

% 2) how to determine if action a is executed.
{a(0)}.
if {a(0)}. is there in final state, then {a(0)} is executed.

%% 3) how to determine value of p in final state ,if a is not executed.
% the commonsese law of inertia
% when t is true at time 0, then p is t at time 1.
{p(t,1):-p(t,0).
{p(f,1):-p(f,0).
:- not 1 {p(t,1); p(f,1)} 1.
% first two are default rules. 


%% when an ction is not executed, the value of p is descied from coom=n >>
% common law of inertia:

{p(t,1):-o(2,0)
{p(f,1):-o(2,0)



% lecture 2

