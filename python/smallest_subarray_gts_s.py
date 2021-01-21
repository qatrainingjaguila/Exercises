def smallest_gte_s(arr,s):
    min_size = float('inf')
    start = 0
    curr_sum = 0
    # end is the end of the sliding window,  val the corresponding value
    for end, val in enumerate(arr):
        curr_sum += val
        #
        while curr_sum >= s:
            min_size = min(min_size, end - start + 1)
            curr_sum -= arr[start]
            start += 1 #decrease window size
    return min_size

arr = [2,4,2,5,1]
s = 7

print("expected:", 2)
print("actual:",smallest_gte_s(arr,s))
        
