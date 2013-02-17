require_relative 'Stack'

def tower( n, frompeg, topeg, auxpeg )
  if n == 1
  
    #If only one element, move the element and return
    temp = frompeg.lastElement
    topeg.push(temp)
	frompeg.pop
	
	print " from "
	frompeg.display
	print " to "
	topeg.display
	print " aux "
	auxpeg.display
	p "------------------------"
	
  else
    
    #Move top (n-1) elements from A to B using C as auxilary
    tower( n-1, frompeg, auxpeg, topeg )
	temp2 = frompeg.lastElement
	topeg.push(temp2)
	frompeg.pop
	
	print " from "
	frompeg.display
	print " to "
	topeg.display
	print " aux "
	auxpeg.display
	p "------------------------"
	
	#Move top (n-1) elements from B to C using A as auxilary
	tower( n-1,  auxpeg, topeg, frompeg )	
  end  
end


A = Stack.new
B = Stack.new
C = Stack.new

print("Enter the number of elements in the stack ")
n = gets().to_i
A.init(n)

p "***************************"
p "Initial values"
print "\nA = "
A.display
print "\nB = "
B.display
print "\nC = "
C.display
p "***************************"

tower( n, A, C , B )

p "***************************"
p "Values after the final move"
print "\nA = "
A.display
print "\nB = "
B.display
print "\nC = "
C.display
p "***************************"