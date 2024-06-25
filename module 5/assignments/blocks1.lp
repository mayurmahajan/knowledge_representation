%%%%%%%%%%%%%%%%%%%
% File: blocks.lp: Blocks World 
%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Sort and Object Declaration
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Every block is a location 
location(B) :- block(B).

% The table is a location 
location(table).

%%%%%%%%%%%%%%%%%%%%%%%%%%
% State Description
%%%%%%%%%%%%%%%%%%%%%%%%%%

% Two blocks can't be on the same block at the same time 
:- 2 {on(BB, B, T)}, block(B), T = 0..m.

% Limited number of blocks can be on the table at the same time
:- maxblocksontable+1 {on(B, table, T) : block(B)}, T = 0..m.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Effect and Preconditions of Action
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Effect of moving a block 
on(B, L, T+1) :- move(B, L, T).

% Concurrent actions are limited by the number of grippers
:- not {move(BB, LL, T)} grippers, T = 0..m-1.

% A block can be moved only when it is clear 
:- move(B, L, T), on(B1, B, T).

% A block can't be moved onto a block that is being moved also 
:- move(B, B1, T), move(B1, L, T).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Domain Independent Axioms
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Fluents are initially exogenous 
1 {on(B, LL, 0) : location(LL)} 1 :- block(B).

% Uniqueness and existence of value constraints 
:- not 1 {on(B, LL, T)} 1, block(B), T=1..m.

% Actions are exogenous 
{move(B, L, T)} :- block(B), location(L), T = 0..m-1.

% Commonsense law of inertia 
{on(B, L, T+1)} :- on(B, L, T), T < m.

#show move/3.