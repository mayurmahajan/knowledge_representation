% In general, it would be time-consuming to enumerate a lot of similar facts in a domain
% thus we always use rules to help us generate those facts.
% In problem 7, it’s difficult to enumerate all greater-than relations without a mistake
% thus we provide some rules that you can start from.

% ====================================================================

% define the directions of the greater-than symbols on each row
left_right(1, l, l, r, l, l, l).
left_right(2, l, r, l, r, l, l).
left_right(3, r, l, r, r, r, l).
left_right(4, r, l, l, l, r, l).
left_right(5, l, r, r, l, r, r).
left_right(6, l, r, l, l, l, r).
left_right(7, r, l, r, l, l, r).
left_right(8, r, r, l, r, l, l).
left_right(9, l, r, l, r, l, l).

up_down(1, u, u, d, u, u, d, d, d, d).
up_down(2, u, d, d, d, d, d, u, u, d).
up_down(4, d, u, d, u, u, d, u, u, u).
up_down(5, u, d, u, d, d, u, u, u, u).
up_down(7, d, u, d, d, u, d, d, u, u).
up_down(8, d, u, u, u, u, d, d, d, d).

% define the effect of the greater-than symbols on left-right directions
N1 < N2 :- left_right(R, D, _, _, _, _, _), D=l, a(R,1,N1), a(R,2,N2).
N1 < N2 :- left_right(R, _, D, _, _, _, _), D=l, a(R,2,N1), a(R,3,N2).
N1 < N2 :- left_right(R, _, _, D, _, _, _), D=l, a(R,4,N1), a(R,5,N2).
N1 < N2 :- left_right(R, _, _, _, D, _, _), D=l, a(R,5,N1), a(R,6,N2).
N1 < N2 :- left_right(R, _, _, _, _, D, _), D=l, a(R,7,N1), a(R,8,N2).
N1 < N2 :- left_right(R, _, _, _, _, _, D), D=l, a(R,8,N1), a(R,9,N2).

N1 > N2 :- left_right(R, D, _, _, _, _, _), D=r, a(R,1,N1), a(R,2,N2).
N1 > N2 :- left_right(R, _, D, _, _, _, _), D=r, a(R,2,N1), a(R,3,N2).
N1 > N2 :- left_right(R, _, _, D, _, _, _), D=r, a(R,4,N1), a(R,5,N2).
N1 > N2 :- left_right(R, _, _, _, D, _, _), D=r, a(R,5,N1), a(R,6,N2).
N1 > N2 :- left_right(R, _, _, _, _, D, _), D=r, a(R,7,N1), a(R,8,N2).
N1 > N2 :- left_right(R, _, _, _, _, _, D), D=r, a(R,8,N1), a(R,9,N2).

% you need to write down the remaining program below. For example, the first rule 
% should “define the effect of the greater-than symbols on up-down directions”

N1 < N2 :- up_down(C, D, _, _, _, _, _, _, _, _), D=u, a(1,C,N1), a(2,C,N2).
N1 < N2 :- up_down(C, _, D, _, _, _, _, _, _, _), D=u, a(2,C,N1), a(3,C,N2).
N1 < N2 :- up_down(C, _, _, D, _, _, _, _, _, _), D=u, a(3,C,N1), a(4,C,N2).
N1 < N2 :- up_down(C, _, _, _, D, _, _, _, _, _), D=u, a(4,C,N1), a(5,C,N2).
N1 < N2 :- up_down(C, _, _, _, _, D, _, _, _, _), D=u, a(5,C,N1), a(6,C,N2).
N1 < N2 :- up_down(C, _, _, _, _, _, D, _, _, _), D=u, a(6,C,N1), a(7,C,N2).
N1 < N2 :- up_down(C, _, _, _, _, _, _, D, _, _), D=u, a(7,C,N1), a(8,C,N2).

N1 > N2 :- up_down(C, D, _, _, _, _, _, _, _, _), D=d, a(1,C,N1), a(2,C,N2).
N1 > N2 :- up_down(C, _, D, _, _, _, _, _, _, _), D=d, a(2,C,N1), a(3,C,N2).
N1 > N2 :- up_down(C, _, _, D, _, _, _, _, _, _), D=d, a(3,C,N1), a(4,C,N2).
N1 > N2 :- up_down(C, _, _, _, D, _, _, _, _, _), D=d, a(4,C,N1), a(5,C,N2).
N1 > N2 :- up_down(C, _, _, _, _, D, _, _, _, _), D=d, a(5,C,N1), a(6,C,N2).
N1 > N2 :- up_down(C, _, _, _, _, _, D, _, _, _), D=d, a(6,C,N1), a(7,C,N2).
N1 > N2 :- up_down(C, _, _, _, _, _, _, D, _, _), D=d, a(7,C,N1), a(8,C,N2).

% write the remaining part of the clingo program below

% each number 1..9 is assigned to one cell in each box
% N := 1...9 X1 := 1,4,7 Y1 := 1,4,7
1 { a(X,Y,N) : X=1..9, Y=1..9, X1<=X, X<=X1+2, Y1<=Y, Y<= Y1+2 } 1 
:- N=1..9, X1=3*(0..2)+1, Y1=3*(0..2)+1.

% for same position there should be only one number
% no two different numbers given a row and a column
:- a(X,Y,N), a(X,Y,N1), N!=N1.

% no two different columns given a row and a number
:- a(X,Y,N), a(X,Y1,N), Y!=Y1.

% no two different columns given a row and a number
:- a(X,Y,N), a(X1,Y,N), X!=X1.