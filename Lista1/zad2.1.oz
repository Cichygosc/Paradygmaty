declare
proc {NextState M N }
   case M
   of nil then N = 'pong'
   [] 'ping' then N = 'pong'
   [] 'pong' then N = 'ping'
   end
end

declare
proc {StreamObject S1 X1 ?T1}
   case S1
   of M|S2 then N T2 in
      {Browse X1#M}
      {NextState M N }
      T1=N|T2
      {StreamObject S2 X1 T2}
   else skip end
end

declare S0 T0 T in
thread {StreamObject S0 'Id1' T0} end
thread {StreamObject 'ping'|T0 'Id2' S0} end

