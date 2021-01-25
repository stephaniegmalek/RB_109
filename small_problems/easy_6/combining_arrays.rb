# ----- Problem -----
# input: 2 arrays
# output: 1 array containing all values from argument arrays

# rules:
#       Explicit:
#       - no duplication of values in returned array, even if there are duplicates
#         in the original array. 
#       implicit:
#       - add all elements of one array and then the second

# ----- Examples -----
# merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
# merge([1, 3, 5], [2, 4, 6]) == [1, 3, 5, 2, 4, 6]
# merge([2, 2, 2], [3, 2]) == [2, 3]
# merge([1, 1, 1, 1], [1, 1]) == [1]

# ----- Data Structure -----
# arrays 

# ----- Algorithm -----
# create a merged array variable and set to empty array
# iterate through first input array 
# - add each element to merged array unless its the same an already added element 
# iterate through second input array
# - add each element to merged array unless its the same as an already added element

# ----- Code -----
def merge(array1, array2)
  merged = []
  array1.each { |element| merged << element unless merged.include?(element) }
  array2.each { |element| merged << element unless merged.include?(element) }
  merged
end

def merge2(arr1, arr2)
  arr1.concat(arr2).uniq
end

def merge3(arr1, arr2)
 (arr1 + arr2).uniq
end

def merge4(arr1, arr2)
  arr1 | arr2
end

p merge4([1, 3, 5], [3, 6, 9])
p merge4([1, 3, 5], [2, 4, 6])
p merge4([2, 2, 2], [3, 2])
p merge4([1, 1, 1, 1], [1, 1]) 