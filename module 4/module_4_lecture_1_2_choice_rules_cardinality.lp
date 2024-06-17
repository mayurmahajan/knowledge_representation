%% 512 stable models
% 1 {p(1..6)}.

%% 6*5*4/3*2*1
% 3 {p(1..6)} 3.


%% 
% 0 {p(a)}.
% 1 {p(a)}.
% {p(a)} 1.

%% local and global variables
% 1 {p(X); q(X)} 1 :- X=1..2.


%% local variable changes only inside the set: { p(1); p(2)}
%{p(I): I=1..3}. 

%% local??
%{p(1..3)}.

%% gloabal variable generates multiple rules ie number of rules become large: {p(1)}. {p(2)}. etc
%{p(I)} :- I=1..3.

%% local and global together
{q(I,J):J=1..3} :- I=1..2.