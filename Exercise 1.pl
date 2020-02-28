countDown(N):- N>0, writeln(N), W is N-1, countDown(W).
countDown(N) :- N =< 0, !.

