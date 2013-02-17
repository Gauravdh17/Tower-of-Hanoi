class Stack  
  
  def initialize()
    @stk = Array.new
    @count = -1
    @lens = 5
  end
  
  # Method to add an element in the stack
  def push(element)  
    if(@stk.size == nil)
      p "Stack full"
    else
      @count = @count + 1
      @stk[@count] = element	  
    end
  end
  
  #method to delete an element in the stack
  def pop
    if(@stk.empty?)
      p "Stack empty"
    else
      @stk[@count] = nil
      @count = @count - 1
    end
  end
  
  #display all the elements in the stack
  def display
    p @stk
  end
  
  #get the element at the top of stack
  def lastElement
    return @stk[@count]
  end
  
  #Method to add the elements at the start just to initialize the stack
  def init(n)
    for s in 1..n do
      @stk.push(s)
    end
  end
end