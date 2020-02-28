addSecond([Head|Tail], Sum):-
    addSecond(0, [Head|Tail], Sum), !.

addSecond(Counter, [Head|Tail], Sum):-
    1 is mod(Counter, 2),
    Counter1 is Counter + 1,
    addSecond(Counter1, Tail, Sum1),
    Sum is Sum1 + Head.

addSecond(Counter, [Head|Tail], Sum):-
    0 is mod(Counter, 2),
    Counter1 is Counter + 1,
    addSecond(Counter1, Tail, Sum).

addSecond(Counter, [], 0).
