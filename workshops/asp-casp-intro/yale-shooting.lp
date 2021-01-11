#include 'bec-kinjal.lp'.   %same bec as for holland-park problem

%Initially gun is not loaded.
%Initially the turkey is alive,
%Load event causes gun to be loaded,
%Shoot event causes turkey to be not alive if gun is Loaded,
%Shoot event causes gun to be not loaded.

%event(load).
%event(shoot).
%fluent(loaded).
%fluent(alive).

initiallyN(loaded).
initiallyP(alive).
initiates(load, loaded, T) :- happens(load, T).        %load causes loaded
terminates(shoot, loaded, T) :- happens(shoot, T).     %shoot causes not loaded
terminates(shoot, alive, T) :- happens(shoot, T).      %shoot causes not alive

happens(load, 1).              %load at time t=0
happens(shoot, 2).             %load at time t=0

:- happens(shoot,T1), holds(loaded,T2), T1 .<. T2. %can shoot only if loaded

%?- holds(alive,0.5).		% True
%?- holds(loaded,0.5).		% False
%?- holds(alive,1.5).		% True
%?- holds(loaded,1.5).		% True
%?- -holds(alive,2.5).		% True
%?- -holds(loaded,2.5).		% True
