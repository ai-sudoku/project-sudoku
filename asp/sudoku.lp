% Please insert the names and email addresses of the group members:
% 
%

subgrid_size(3).

% Hints:
% - For subgrid_size(s), subgrids can be identified by labels 0..s*s-1
% - A cell (x,y) can be mapped to the subgrid labeled (((x-1)/s)*s + (y-1)/s)

sudoku(X,Y,N) :- initial(X,Y,N).
{sudoku(X,Y,N) : N=1..9}=1:-X=1..9,Y=1..9.
:- sudoku(X,Y,M), sudoku(X',Y',N), X != Y', Y != Y', ((X-1)/3)*3 + (Y-1)/3 = ((X'-1)/3)*3 + (Y'-1)/3, M == N.
:- sudoku(X,Y,N), sudoku(X',Y,N), X != X'.
:- sudoku(X,Y,N), sudoku(X,Y',N), Y != Y'.

#show sudoku/3.
