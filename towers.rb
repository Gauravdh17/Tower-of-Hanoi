
def printMove(fr, to)
  $num_calls
  $num_calls += 1
  #~ puts "move disk at peg #{fr} to peg #{to}."
end

def towers(n, fr, to, spare)  
  if n == 1
    printMove(fr, to)
  else
    towers(n-1, fr, spare, to)       
    towers(1, fr, to, spare)    
    towers(n-1, spare, to, fr)    
  end
end

$num_calls = 0
for d in 1..18
  towers(d, 'A', 'B', 'C')
  puts $num_calls
end
#~ puts
#~ towers(2, 'A', 'B', 'C')
#~ puts $num_calls
#~ puts
#~ towers(3, 'A', 'B', 'C')
#~ puts $num_calls
#~ towers(29, 'A', 'B', 'C')
#~ puts $num_calls