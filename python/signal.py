input1 = "hello"
charSet = set()
result=0

for char in input1:
    if char in charSet:
        result +=1
        print(result)
    charSet.add(char)

input('Press Enter to continue...')