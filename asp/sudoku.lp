% Please insert the names and email addresses of the group members:
%
%

subgrid_size(3).

% Hints:
% - For subgrid_size(s), subgrids can be identified by labels 0..s*s-1
% - A cell (x,y) can be mapped to the subgrid labeled (((x-1)/s)*s + (y-1)/s)

% Your implementation please...

subgrid_size(3).

num(1..9).
row(1..9).
col(1..9).

1 { sudoku(X,Y,N) : num(N) } 1 :- row(X), col(Y).

sudoku(X,Y,N) :- initial(X,Y,N).

:- sudoku(X,Y1,N), sudoku(X,Y2,N), Y1 < Y2.
:- sudoku(X1,Y,N), sudoku(X2,Y,N), X1 < X2.
:- sudoku(X1,Y1,N), sudoku(X2,Y2,N), (X1,Y1) < (X2,Y2), subgrid_size(S), ((X1-1)/S) = ((X2-1)/S), ((Y1-1)/S) = ((Y2-1)/S).



#show sudoku/3.
