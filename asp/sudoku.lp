% Please insert the names and email addresses of the group members:
% Dana Bechstädt, bechstaedt1@uni-potsdam.de
% Angelina Lorenz, lorenz12@uni-potsdam.de

subgrid_size(3).

% Hints:
% - For subgrid_size(s), subgrids can be identified by labels 0..s*s-1
% - A cell (x,y) can be mapped to the subgrid labeled (((x-1)/s)*s + (y-1)/s)

row(1..9).
col(1..9).
num(1..9).

{sudoku(R,C,N): num(N)} = 1 :- row(R) ,col(C).
sudoku(R,C,N) :- initial(R,C,N).

subgrid(R,C,A,B) :- row(R), row(A), col(C), col(B),(R-1)/3 == (A-1)/3, (C-1)/3 == (B-1)/3.

:- sudoku(R,C,N), sudoku(A,C,N), R!=A.
:- sudoku(R,C,N), sudoku(R,B,N), C!=B.
:- sudoku(R,C,V), sudoku(A,B,V), subgrid(R,C,A,B), R != A, C != B.

#show sudoku/3.
