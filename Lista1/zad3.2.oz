declare
fun {NewPortObject2 Proc}
   Sin in
   thread for Msg in Sin do {Proc Msg} end end
   {NewPort Sin}
end

declare
fun {Rozmowca Fun Interlokutor}
   {NewPortObject2
    proc {$ Msg}
       {Browse Msg}
       {Send Interlokutor {Fun Msg}}
    end}
end

declare R1 R2 in
R1 = {Rozmowca fun {$ X} X + 1 end R2}
R2 = {Rozmowca fun {$ X} X - 1 end R1}
{Send R1 0}
