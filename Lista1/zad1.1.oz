declare
fun {ReverseHelper L1 L2}
   case L1
   of nil then L2
   [] X|M1 then {ReverseHelper M1 X|L2}
   end
end

declare
fun {Reverse L}
   {ReverseHelper L nil}
end

declare A in
{Reverse [1 2 3] A}
{Browse A}
{Browse {Reverse [1 2 3]}}