def printMove(fr, to):
    global numCalls
    numCalls += 1
    print('move disk at peg ' + str(fr) + ' to peg ' + str(to))

def Towers(n, fr, to, spare):
    if n == 1:        
        printMove(fr, to)        
    else:        
        Towers(n-1, fr, spare, to)        
        Towers(1, fr, to, spare)        
        Towers(n-1, spare, to, fr)
        

numCalls = 0
Towers(1, 'A', 'B', 'C')
print numCalls
print
Towers(2, 'A', 'B', 'C')
print numCalls
print
Towers(3, 'A', 'B', 'C')
print numCalls
