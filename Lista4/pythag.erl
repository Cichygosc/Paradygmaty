% pythag

% pythag
-module(pythag).
-export([pythag/1]).

pythag(D) ->
	[ 
		{A, B, C} || 
			A <- lists:seq(1, D - 2),
			B <- lists:seq(A + 1, max(D - A - 1, A)),
			C <- lists:seq(D - A - B, D - A - B),
			A + B + C == D,
			A * A + B * B == C * C
	].


