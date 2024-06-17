%% constraints: a rukle that has nothing in head ie bottom in head
%:-p(1).
% we do not want p(1) in stable model. hence it cuts the choices.


% p1,p2,p3,{p1,p2},{p2,p3},{p1,p3},{p1,p2,p3}
% after constraints: p2,p3,{p2,p3}
% {p(X):X=1..3}.
% :-p(1).

% set should contain p1
% {p(X):X=1..3}.
% :- not p(1).


% rule: not allowed for both p1 and p2 to be false simultaneously
% at leasr p1 or o2 must be true for answer set to be valid implies: p(1) v p(2)
% p1 or p2
% {p(X):X=1..3}.
% :- not p(1), not p(2).


% combination of p1 being true and p(2) being false is not allowed
% ie p(1) is true then p(2) must also be true. implies: p(1) -> p(2)
% {p(X):X=1..3}.
% :-p(1), not p(2).


% {p(X):X=1..3}.
% :-p(1), p(2).

%% cardinaliy = constrains here to do the sme job
%{p(a); q(b)} 1.

% not allowed pa and pb to be false simultaneously
%{p(a); q(b)}.
%:-p(a), q(b).

% another example
% 1 {p(a); p(b)}.

%{p(a); q(b)}.
%:-p(a), q(b).




%% practice not (pa and qb) : in set pa and qb cannot come together
%{p(a); q(b)}.
%:-p(a),q(b).

%% practice not (pa or qb) : one of pa or qa must be true
%{p(a); q(b)}.
%:-p(a);q(b).


%% practice : pa must be false OR q(b) must be true
%% 
{p(a); q(b)}.
:-p(a);not q(b).

% what makes body true?  if pa is true or not qb is true.
% so is pa exist then its bad
% or qb doesnt exist 
% both are or so both can exist pa qb
