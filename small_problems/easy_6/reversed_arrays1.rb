# ----- Problem -----
# input: an array
# output: SAME array, with elements reversed

# rules:
#       Explicit:
#       - return SAME array object -> mutate the caller
#       - can not use `Array#reverse` or `Array#reverse!`

# ----- Examples -----
# list = [1,2,3,4]
# result = reverse!(list)
# result == [4, 3, 2, 1]
# list == [4, 3, 2, 1]
# list.object_id == result.object_id

# list = %w(a b e d c)
# reverse!(list) == ["c", "d", "e", "b", "a"]
# list == ["c", "d", "e", "b", "a"]

# list = ['abc']
# reverse!(list) == ["abc"]
# list == ["abc"]

# list = []
# reverse!(list) == []
# list == []

# ----- Data Structure -----
# arrays

# ----- Algorithm -----

# element at index 0 becomes element at last index (-1)
# element at index 1 becomes element at second to last index (-2)
# element at last index becomes element at index 1
# element at second to last index becomes element at index 1 

# ----- Code -----
def reverse!(array)
  left_idx = 0
  right_idx = -1
  while left_idx < array.size / 2
    array[left_idx], array[right_idx] = array[right_idx], array[left_idx]
    left_idx += 1
    right_idx -= 1
  end
  array
end

list = [1, 2, 3, 4]
p reverse!(list)

list2 = %w(a b e d c)
p reverse!(list2)

list3 = ['abc']
p reverse!(list3)

p reverse!([])