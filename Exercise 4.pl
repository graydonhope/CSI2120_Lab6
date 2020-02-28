secondLast(Z, [X|[Y]]):-
    Z is X.

secondLast(Z, [X|Y]):-
    secondLast(Z, Y).

