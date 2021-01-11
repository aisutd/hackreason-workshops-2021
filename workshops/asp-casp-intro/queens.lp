gen(N, L) :- gen(N, [], L).
gen(0, L, L).
gen(N, L, R) :- N > 0, N1 is N-1, gen(N1, [N|L], R).

queen(N,Q) :- gen(N, L), placeQ(L, [], Q).
placeQ([], Q, Q).
placeQ(L, PB, R) :- selec(Q, L, RQs), safe([Q|PB]), 
                    placeQ(RQs, [Q|PB], R).

safe([]).
safe([X|Y]) :- noattack(X, 1, Y), safe(Y).

noattack(X,N,[]).
noattack(X,N, [Y|Z]) :- Y =\= X + N, Y =\= X - N, 
                        N1 is N+1, noattack(X,N1,Z).

selec(X, [X|R], R).
selec(X, [Y|T], [Y|R]) :- selec(X,T,R).
