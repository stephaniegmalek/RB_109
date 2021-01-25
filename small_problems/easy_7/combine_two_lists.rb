# ----- Problem -----
# input: 2 arrays
# output: 1 array
#         - contains all elements from both input arrays
#         - elements are alternating between array 1 and array 2

# rules: 
#       Explicit:
#       - input arrays are non-empty
#       - input arrays have same number of elements
#       Implicit:
#       - array elements can be strings, numbers, etc

# ----- Examples -----
# interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
# interleave([1, 1, 1], [2, 2, 2]) == [1, 2, 1, 2, 1, 2]
# interleave(['a', 'b', 'c'], ['d', 'e', 'f']) == ['a', 'd', 'b', 'e', 'c', 'f']

# ----- Data Structure -----
# arrays

# ----- Algorithm -----
# mental model:
# - add first element from array 1 then first element from array 2, repeat

# create combined array variable and assign to empty array
# create index variable and assign to 0
# while index is less than size of array 1
# - add element at index of array 1 to combined array 
# - add element at index of array 2 to combined array
# - increment index by 1
# return combined array

# ----- Code -----
def interleave(array1, array2)
  combined = []
  array1.each_with_index do |element, index|
    combined << element << array2[index]
  end
  combined
end

p interleave([1, 2, 3], ['a', 'b', 'c']) 

# Further Exploration
def interleave2(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave2([1, 1, 1], [2, 2, 2])

