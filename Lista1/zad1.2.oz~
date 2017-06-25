declare
proc {SMerge Xs Ys Zs}
   case Xs#Ys
   of nil#Ys then Zs = Ys
   [] Xs#nil then Zs = Xs
   [] (X|Xr)#(Y|Yr) then
      if X=<Y then Zr in
	 Zs = X|Zr
	 {SMerge Xr Ys Zr}
      else Zr in
	 Zs = Y|Zr
	 {SMerge Xs Yr Zr}
      end
   end
end

declare
fun {Merge L1 L2 L3}
   {SMerge L1 {SMerge L2 L3}}
end

{Browse {Merge [1 2 3] [1 3 4] [0 2 2]}}