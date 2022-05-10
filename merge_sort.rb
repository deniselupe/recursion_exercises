def merge_sort(arr)
  return arr if arr.length <= 1

  left_arr = arr[0...arr.length / 2]
  right_arr = arr[arr.length / 2...arr.length]

  # This will continue to split the array by halves, until the function
  # eventually receives a array with length of 1, which is then the function
  # can start returning values to their respecitve caller
  sorted_left = merge_sort(left_arr)
  sorted_right = merge_sort(right_arr)

  merge_logic(sorted_left, sorted_right)
end

# Identifies the smallest number between left[0] and right[0], then removes
# it from its respective array. It recursively does this until either
# the left array or right arrays is empty, which is then when the function returns
# the array that isn't empty. In each return, the smallest_num identified in that
# stack gets added to the beginning of the returned array, thus creating a sorted
# array in ascending order
def merge_logic(left, right)
  return left if right.empty?
  return right if left.empty?

  smallest_num = left[0] < right[0] ? left.shift : right.shift

  merged_arr = merge_logic(left, right)
  merged_arr.unshift(smallest_num)
end

array = [6, 5, 3, 1, 8, 7, 2, 4]
print merge_sort(array)
