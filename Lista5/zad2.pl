jednokrotnie(X,L1):- select(X,L1,L2), \+ (member(X,L2)).
dwukrotnie(X,L1):- select(X,L1,L2), jednokrotnie(X,L2).