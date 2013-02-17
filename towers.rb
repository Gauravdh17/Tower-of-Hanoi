
def printMove(fr, to)
  puts "move disk at peg #{fr} to peg #{to}."
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

towers(2, "A", "B", "C")
