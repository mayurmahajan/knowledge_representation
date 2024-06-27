%%%%%%%%%%%%%%%%%%%%%
% File: blocks.lp: Blocks World
%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% sort and object declaration
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% blocks declaration
block(z).
block(l).
block(a).
block(b).
block(c).
block(o).
block(n).
block(d).
block(e).
block(j).
block(k).
block(f).
block(g).
block(h).
block(i).

% initial state
:- not on(z, table, 0).
:- not on(l, z, 0).
:- not on(a, l, 0).
:- not on(b, a, 0).
:- not on(c, b, 0).
:- not on(o, table, 0).
:- not on(n, o, 0).
:- not on(d, n, 0).
:- not on(e, d, 0).
:- not on(j, e, 0).
:- not on(k, j, 0).
:- not on(f, table, 0).
:- not on(g, f, 0).
:- not on(h, g, 0).
:- not on(i, h, 0).

% goal state
:- not on(e, j, m).
:- not on(a, e, m).
:- not on(n, a, m).
:- not on(i, d, m).
:- not on(h, i, m).
:- not on(z, h, m).
:- not on(o, z, m).
:- not on(k, g, m).
:- not on(c, k, m).
:- not on(b, c, m).
:- not on(l, b, m).


% every block is a location
location(B) :- block(B).

% the table is a location
location(table).

%%%%%%%%%%%%%%%%%%%%%%%%%
% state description
%%%%%%%%%%%%%%%%%%%%%%%%%

% two blocks can't be on the same block at the same time
:- 2 {on(BB,B,T)}, block(B), T = 0..m.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% effect and preconditions of action
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% effect of moving a block
on(B,L,T+1) :- move(B,L,T).

% a block can be moved only when it is clear
:- move(B,L,T), on(B1,B,T).

% a block can't be moved onto a block that is being moved also
:- move(B,B1,T), move(B1,L,T).

%%%%%%%%%%%%%%%%%%%%%%%%%
% domain independent axioms
%%%%%%%%%%%%%%%%%%%%%%%%%

% fluents are initially exogenous
1 {on(B,LL,0) : location(LL)} 1 :- block(B).

% uniqueness and existence of value constraints
:- not 1 {on(B,LL,T)} 1, block(B), T = 1..m.

% actions are exogenous
{move(B,L,T)} :- block(B), location(L), T = 0..m-1.

% commonsense law of inertia
{on(B,L,T+1)} :- on(B,L,T), T < m.

% Serializability constraints
% we cannot move block A onto block B if anything is on B
:- move(A,B,T), on(C,B,T), block(B).