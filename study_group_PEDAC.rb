# The objective is to return all pairs of integers from a given array of integers that have a difference of 2.
# The result array should be sorted in ascending order of values.
# Assume there are no duplicate integers in the array.
# The order of the integers in the input array should not matter.

=begin 
# PROBLEM
- we need to make pairs of integers
- pair = 2 integers that have a difference of 2
- the input is an array of numbers
- the output is an array of sub arrays
- the output needs to be sorted in ascending order
- does the main array need to be sorted?
- the input has no duplicates
- we shouldn't rely on the input being sorted

# EXAMPLES
p difference_of_two([1, 2, 3, 4]) ==  [[1, 3], [2, 4]]
p difference_of_two([4, 1, 2, 3]) == [[1, 3], [2, 4]]
p difference_of_two([1, 23, 3, 4, 7]) == [[1, 3]]
p difference_of_two([4, 3, 1, 5, 6]) == [[1, 3], [3, 5], [4, 6]]
p difference_of_two([2, 4]) == [[2, 4]]
p difference_of_two([1, 4, 7, 10, 13]) == []
- Output is all nested arrays
 - unless there are no pairs, then it's just an empty array
- output is sorted both as nested arrays and overall array
- even if the output is just one pair, that one pair is still a nested array
- a number can be used multiple times; the OUTPUT can have duplicate values

# DATA STRUCTURES
- arrays
  - nested arrays
  
# ALgorithm
mental model: 
- sort input and iterate thru list of numbers and get all possible pairs. Iterate
thru each pair and keep pairs with a difference of 2 
  
sort the input 
create variable to hold results
iterate thru list of numbers and find all pairs of numbers
- create pairs variable
- starting with first element, pair with second element, then third element then so on
- next starting with second element, pair with third element and so on

iterate thru the pairs and keep ones that have a difference of 2 
return the final result
  
=end

# ----- Code -----
def find_pairs(array)
  pairs =[]
  array[0..-2].each_with_index do |num1, idx|
    array[idx + 1..-1].each do |num2|
      pairs << [num1, num2]
    end
  end
  pairs
end

def difference_of_two(array)
  array = array.sort
  pairs = find_pairs(array)
  
  pairs.select { |a, b| b - a == 2 }.sort
end

p difference_of_two([1, 2, 3, 4])
p difference_of_two([4, 1, 2, 3]) #== [[1, 3], [2, 4]]
p difference_of_two([1, 23, 3, 4, 7]) #== [[1, 3]]
p difference_of_two([4, 3, 1, 5, 6]) #== [[1, 3], [3, 5], [4, 6]]
p difference_of_two([2, 4]) #== [[2, 4]]
p difference_of_two([1, 4, 7, 10, 13]) #== []





# def difference_of_two(arr)
#   results = []
  
#   arr[0..-2].each_with_index do |first_num, idx|
#     arr[idx+1..-1].each do |second_num|
#       if (first_num - second_num).abs == 2
#         results << [first_num, second_num].sort
#       end
#     end
    
#   end
#   results.sort
# end