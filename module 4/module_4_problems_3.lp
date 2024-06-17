% each number 1..9 is assigned to one cell in each box
% N := 1...9 X1 := 1,4,7 Y1 := 1,4,7
1 { cell(X,Y,N) : X=1..9, Y=1..9, X1<=X, X<=X1+2, Y1<=Y, Y<= Y1+2 } 1 
:- N=1..9, X1=3*(0..2)+1, Y1=3*(0..2)+1.

cell(1, 1, 8).
cell(2, 3, 3).
cell(2, 4, 6).
cell(3, 2, 7).
cell(3, 5, 9).
cell(3, 7, 2).
cell(4, 2, 5).
cell(4, 6, 7).
cell(5, 5, 4).
cell(5, 6, 5).
cell(5, 7, 7).
cell(6, 4, 1).
cell(6, 8, 3).
cell(7, 3, 1).
cell(7, 8, 6).
cell(7, 9, 8).
cell(8, 3, 8).
cell(8, 4, 5).
cell(8, 9, 1).
cell(9, 2, 9).
cell(9, 8, 4).

% for same position there should be only one number
% no two different numbers given a row and a column
:- cell(X,Y,N), cell(X,Y,N1), N!=N1.

% no two different columns given a row and a number
:- cell(X,Y,N), cell(X,Y1,N), Y!=Y1.

% no two different columns given a row and a number
:- cell(X,Y,N), cell(X1,Y,N), X!=X1.

