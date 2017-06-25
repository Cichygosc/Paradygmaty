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
