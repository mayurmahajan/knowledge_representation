% each number 1..9 is assigned to one cell in each box
% N := 1...9 X1 := 1,4,7 Y1 := 1,4,7
{ a(X,Y,N) : X=1..9, Y=1..9, X1<=X, X<=X1+2, Y1<=Y, Y<= Y1+2 } 1 
:- N=1..9, X1=3*(0..2)+1, Y1=3*(0..2)+1.

% for same position there should be only one number
% no two different numbers given a row and a column
:- a(X,Y,N), a(X,Y,N1), N!=N1.

% no two different columns given a row and a number
:- a(X,Y,N), a(X,Y1,N), Y!=Y1.

% no two different columns given a row and a number
:- a(X,Y,N), a(X1,Y,N), X!=X1.


% knight
% :- a(R,C,N), a(R1,C1,N), |R1-R|+|C1-C|=3
% a(R,C,N), a(R1,C1,N1), gt(R,C,R1,C1), N<=N1.