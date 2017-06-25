declare X in
X = {FoldR [1 2 3] fun {$ X Y} X|Y end [2 3 4]}
{Browse X}

declare X in
X = {FoldL [1 2 3] fun {$ X Y} Y|X end nil}
{Browse X}