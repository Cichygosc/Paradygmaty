declare
fun {FindHelper V T L}
   case T
   of leaf then L
   [] tree(key:K1 value:V1 left:L1 right:R1) then
      if V1 == V then
	 {FindHelper V L1 K1|{FindHelper V R1 L}}
      else
	 {FindHelper V L1 {FindHelper V R1 L}}
      end
   end
end

declare
fun {FindAll V T}
   {FindHelper V T nil}
end

declare R LC RC L2 L3 R2 R3 in
R = tree(key:50 value:5 left:LC right:RC)
LC = tree(key:25 value:12 left:L2 right:R2)
RC = tree(key:75 value:12 left:L3 right:R3)
L2 = tree(key:12 value:5 left:leaf right:leaf)
R2 = tree(key:28 value:8 left:leaf right:leaf)
L3 = tree(key:55 value:8 left:leaf right:leaf)
R3 = tree(key:112 value:12 left:leaf right:leaf)
{Browse {FindAll 5 R}}