
member(X, [X|T]).
member(X, [Y|T]) :- member(X, T).

append([], Y, Y).
append([H|T], Y, [H|Z]   ) :- append(T,Y,Z).

%naive reverse
%rev([],[]).
%rev([H|T], R) :- rev(T,Tr), append(Tr, [H], R).

%linear reverse
rev(L, R) :- rev(L, [], R).   %rev/3

rev([], P, P).
rev([H|T], P, R) :- rev(T, [H|P], R).

delete(X, [X|T], T).
delete(X, [Y|T], [Y|R]    ) :- delete(X, T, R).

qs([],[]).
qs([H|T], R) :- part(H, T, Smalls, Bigs), qs(Smalls, Rs), qs(Bigs, Rb), append(Rs, [H|Rb], R).

part(P, [], [], []).
part(P, [H|T], [H | S], B) :-  P >= H, part(P, T, S, B).
part(P, [H|T], S, [H | B]) :-  P <  H, part(P, T, S, B).

suml([], 0).
suml([H|T], R) :- suml(T, R1), R is H+R1.


