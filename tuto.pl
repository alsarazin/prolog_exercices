% 1.01
% Find the last element of a list.
my_last(X, [X]).
my_last(X, [_|T]) :- my_last(X,T).

% 1.02
% Find the last but one element of a list.
last_but_one(X, [X,_]).
last_but_one(X, [_|T]) :- last_but_one(X,T).

% 1.03
% Find the K'th element of a list.
element_at(X,[X|_],1).
element_at(X,[_|T],N) :- N > 1, N1 is N-1, element_at(X,T,N1).

% 1.04
% Find the number of elements of a list.
size_of_list([],0).
size_of_list([_|T],N) :- size_of_list(T,N1), N is N1+1.

% 1.05
% Reverse a list.
reverse(L1,L2) :- rev(L1,L2,[]).

rev([],L2,L2) :- !.
rev([H|T], L2, Acc) :- rev(T, L2, [H|Acc]).

% 1.06
% Find out whether a list is a palindrome.
palindrome([_]).







