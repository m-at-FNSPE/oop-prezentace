female(helen).
female(svetlana).
female(stana).
female(edith).
female(anna).
female(susan).
female(marcella).
female(eva).

male(robert).
male(pablo).  % jaks
male(jan).  % jaks
male(pavel).  % zalesak
male(martin).
male(john).  % safranek
male(paul).  % rott
male(vojta).
male(matej).


parent_child(helen, svetlana).
parent_child(helen, pablo).
parent_child(robert, svetlana).
parent_child(robert, pablo).
parent_child(marcella, helen).
parent_child(marcella, eva).
parent_child(pavel, helen).
parent_child(pavel, eva).
parent_child(eva, matej).
parent_child(eva, vojta).
parent_child(paul, matej).
parent_child(paul, vojta).
parent_child(stana, edith).
parent_child(stana, robert).
parent_child(jan, edith).
parent_child(jan, robert).
parent_child(martin, susan).
parent_child(martin, anna).
parent_child(martin, john).
parent_child(edith, susan).
parent_child(edith, anna).
parent_child(edith, john).

siblings(X, Y) :-
    parent_child(Z, X),
    parent_child(Z, Y).

cousins(X, Y) :-
    parent_child(A, X),
    parent_child(B, A),
    parent_child(C, Y),
    parent_child(B, C),
    \+ siblings(X, Y).

list_cousins(P, L) :-
    list_cousins(P, [], L).

list_cousins(P, Acc, L) :-
    cousins(Cousin, P),
    \+ member(Cousin, Acc), !,
    list_cousins(P, [Cousin|Acc], L). 
list_cousins(_, L, L).
