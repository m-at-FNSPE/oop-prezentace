fact(0, 1).
fact(X, Y):-
    X > 0,
    Z is X - 1,
    fact(Z, U),
    Y is U * X.
