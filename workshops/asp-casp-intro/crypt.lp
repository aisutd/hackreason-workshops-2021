solve([S,E,N,D,M,O,R,Y]) :-
  M = 1, 
  select(D, [0, 2, 3, 4, 5, 6, 7, 8, 9], L1),
  select(E, L1, L2),
  Y is (D + E) mod 10, C1 is (D+E) // 10,
  select(Y, L2, L3),
  select(N, L3, L4),
  select(R, L4, L5),
  E is (N + R + C1) mod 10, C2 is (N+R+C1) // 10,
  select(O, L5, L6),
  N is (E + O + C2) mod 10, C3 is (E+O+C2) // 10,
  select(S, L6, L7),
  O is (S + M + C3) mod 10, M is (S+M+C3) // 10.
  

select(X, [X|R], R).
select(X, [Y|T], [Y|R]) :- select(X,T,R).

%  S E N D
%+ M O R E
%---------
%M O N E Y
