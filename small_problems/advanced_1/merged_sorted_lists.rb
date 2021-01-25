=begin
----- Problem -----
input: 2 sorted arrays
output: new array containing all elements from both arguments in sorted order

rules:
      Explicit:
      - no solutions that require you to sort the result array
      - must build the result array one element at a time in the proper order
      - do not mutate the input arrays
      Implicit:
      - can have empty array as argument
      - can have duplicate elements 
      - argument array don't have to be same size

----- Examples -----
merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
merge([], [1, 4, 5]) == [1, 4, 5]
merge([1, 4, 5], []) == [1, 4, 5]

----- Data Structure -----
arrays, integers

----- Algorithm -----
initialize results variable
initialize current num variable
iterate thru argument arrays
- if array has num, add to results

=end

def merge(arr1, arr2)
  results = []
  num = 1
  while results.size < arr1.size + arr2.size do
    if arr1.include?(num)
      arr1.count(num).times { |_| results << num}
    elsif arr2.include?(num)
      arr2.count(num).times { |_| results << num}
    end
    num += 1
  end
  results
end

# p merge([1, 5, 9], [2, 6, 8]) #== [1, 2, 5, 6, 8, 9]
# p merge([1, 1, 3], [2, 2]) #== [1, 1, 2, 2, 3]
# p merge([], [1, 4, 5]) #== [1, 4, 5]
# p merge([1, 4, 5], []) #== [1, 4, 5]

# Launch School Solution
# initialize results variable
# initialize index for second argument
# iterate thru each value of first argument
# - iterate thru each value of second argument
#   - while idx is less than size and less than current value
#   - add to results
# - otherwise add current value to result
# return result and check that all elements of second argument included

def merge_alt(array1, array2)
  result = []
  idx2 = 0
  
  array1.each do |value|
    while idx2 < array2.size && array2[idx2] <= value
      result << array2[idx2]
      idx2 += 1
    end
    result << value
  end
  result.concat(array2[idx2..-1])
end

p merge_alt([1, 5, 9], [2, 6, 8])
p merge_alt([1, 1, 3], [2, 2]) 
p merge_alt([], [1, 4, 5])
p merge_alt([1, 4, 5], [])