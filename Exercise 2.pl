element(chlorine,'Cl').
element(helium,'He').
element(hydrogen,'H').
element(nitrogen,'N').
element(oxygen,'O').

start():- print('Elements in the Periodic Table'),
    interactionE.
interactionE :- write('Symbol to look up?'),
               read(Symbol),
               lookup(Symbol).
lookup(Symbol):- element(Y, Symbol),
                 write(Y),
                 write(' is the element corresponding to '),
                 write(Symbol),nl,nl,!,
                 interactionE.
lookup(Symbol):- write('Don\'t know the symbol '),
                  write(Symbol), nl,
                  write('Exiting...'), !.
