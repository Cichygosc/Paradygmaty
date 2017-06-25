arc(a, b).
arc(a, d).
arc(b, c).
arc(b, e).
arc(c, f).
arc(d, e).
arc(d, g).
arc(e, f).
arc(e, h).
arc(f, i).
arc(g, h).
arc(h, i).

path(X,X).
path(X,Y):-
	path(X,Y,[X]).

path(X,Y,L):-
	arc(X,Z),
	\+member(Z,L),
	(
	      Y=Z;
	      path(Z,Y,[X|L])
	).


jednokrotnie(X,L1):- select(X,L1,L2), \+ (member(X,L2)).
dwukrotnie(X,L1):- select(X,L1,L2), jednokrotnie(X,L2).


sito(N,Output) :-
  sieve(L,Output),
  numlist(2,N,L).

sieve(Input, Output) :-
        freeze(Input,
        (
          Input = [Hin|Tin] ->
          Output = [Hin|Tout],
          filter(Hin,Tin,Fout),
          sieve(Fout,Tout)
          ;
          Output = [])
        ).

filter(N, Input, Output) :-
  freeze(Input,
  ( 
  	Input = [X|T] ->
    ( 
      X mod N =:= 0 ->
      filter(N, T, Output) 
      ;
      Output = [X|Tout],
      filter(N, T, Tout)
    ) 
    ;
    Output = [])
  ).