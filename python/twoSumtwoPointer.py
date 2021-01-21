#two numbers in a sorted array that sum to a target
def twoSum(arr,target):
    left = 0
    right = len(arr) - 1
    while left < right:
        curr = arr[left] + arr[right]
        if curr < target:
            left +=1
        elif curr  > target:
            right -= 1
        else:
            return [left,right]
    return[-1,-1]

arr = [2,7,11,15]
target = 9

print(twoSum(arr,target))