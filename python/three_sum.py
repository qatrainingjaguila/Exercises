# Find three numbers in a sorted array that sum to a target
def three_sum(arr, target):
    for i in range(0, len(arr)):
        new_target = target - arr[i]
        left = i+1
        right = len(arr)-1
        while left < right:
            curr_sum = arr[left] + arr[right]
            if curr_sum < new_target:
                left += 1
            elif curr_sum > new_target:
                right -= 1
            else:
                return [i, left, right]
    return [-1, -1, -1]


arr = [1, 2, 4, 5, 12]
target = 19
print(three_sum(arr, target))
