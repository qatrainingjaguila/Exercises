def fibsum(x):
    if x == 0:
        return 0
    elif x == 1:
        return 1
    else: 
        return 1 + fibsum(x-1) + fibsum(x-2) 

def fibo2(n):
    if n <= 1:
        return n
    else:
        return(fibo2(n-1)+fibo2(n-2))

nterms = 5

for i in range(nterms):
    print('Next term:')
    print(fibo2(i))
    print('Sum:')
    print(fibsum(i))