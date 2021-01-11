
%People can talk.            
%Non-human animals can't talk.    
%Human-like cartoon characters can talk.   
%Fish can swim.              
%A fish is a non-human animal.        
%Nemo is a human_like cartoon character.   
%Nemo is a fish.             
%can nemo talk?
%can nemo swim?


%People can talk.            (in all worlds)
talk(X) :- people(X).

%Non-human animals can't talk.    (in real world)
-talk(X) :- non_human_animal(X), rw.

%Human-like cartoon characters can talk.   (in cartoon world)
talk(X) :- human_like_cc(X), cw.

%Fish can swim.              (in all worlds)
swim(X) :- fish(X).

%A fish is a non-human animal.        (in real world)
non_human_animal(X) :- fish(X), rw.

%Nemo is a human_like cartoon character.   (in cartoon world)
human_like_cc(nemo) :- cw.

%:- fish(nemo), human_like_cc(nemo).

%Nemo is a fish.             (in all worlds)
fish(nemo).

cw :- not rw.
rw :- not cw.

%can nemo talk?
%can nemo swim?
