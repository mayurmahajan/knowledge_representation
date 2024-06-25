
% | sort and object declaration (possible types, objects of that type)
% | state constraints
% | effect and preconditions of actions (for each action what are the effects on the next state?)
% | action constraints (condition for the action to be executed)
% | domain independent axioms
%   - fluents are initially exogenous
%   - uniqueness and existence of fluent values
%   - actions are exogenous
%   - Commonsense law of inertia


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% sort and object declaration
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% location is a superset, contains both block and table.

% every block is a location
%%% location(B) :- block(B).

% the table is a location
%%% location(table).


%%%%%%%%%%%%%%%%%%%
% state description
%%%%%%%%%%%%%%%%%%%
% no robots on two node
:- 2 {robotAt(R,object(node, ND),T): node(ND)}, robot(R), T = 0..n.

% no 2 robots on the same node
:- 2 {robotAt(R,object(node,ND),T):robot(R)}, node(ND), T=0..n.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% effect and preconditions of action
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% effect of moving a block
% robot move block B on to location L then the effect will be block B will be on top of location L the next time.
%%% on(B,L,T+1) :- move(B,L,T).

% concurrent actions are limited by num of grippers
% robots can execute limited number (gripper constraint) of move actions at the same time
%%% :- not {move(BB,LL,T)} grippers, T = 0..m-1.

% a block can be moved only when it is clear
% cannot move block B on some location L if there is a block B1 on top of it. (no middle movement)
%%% :- move(B,L,T), on(B1,B,T).

% a block can't be moved onto a block that is being moved also
%%% :- move(B,B1,T), move(B1,L,T).

%%%%%%%%%%%%%%%%%%%%%%%%%%%
% domain independent axioms
%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fluents are initially exogenous
%%% 1{on(B,LL,0):location(LL)}1 :- block(B).

% uniqueness and existence of value constraints
%%% :- not 1{on(B,LL,T)}1, block(B), T = 1..m.

% actions are exogenous
%%% {move(B,L,T)} :- block(B), location(L), T = 0..m-1.

% commonsense law of inertia
%%% {on(B,L,T+1)} :- on(B,L,T), T = 0..m-1.


#show robotAt/3.

% Command:
% cd project
% ../../../clingo.exe robot-scenario.lp robot-parser.lp robot-convert-input.lp robot.lp 0