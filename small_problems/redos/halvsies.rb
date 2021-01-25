=begin
----- Problem -----
input: array
output: 2 arrays as a pair of nested arrays: [ [], [] ]
        - first half of argument array in one nested array
        - second half of argument array in other nested array 

rules: 
- if argument array contains odd number of elements, the middle element should 
  be placed in the first half array 
- if arguement array empty, return empty nested arrays
- if only 1 element in argument, only one nested array has element

----- Examples -----
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

----- Data Structure -----
array, nested array

----- Algorithm -----
find the length of input then divide by 2 to get the middle point
initialize first half variable and assign it to first half of input
initialize second half variable and assign it to second half of input
initialize result variable and assign first half and second half as elements
=end

def halvsies(array)
  middle = (array.size / 2.0).round
  first = array[0, middle]
  second = array[middle..-1]
  [first, second]
end

p halvsies([1, 2, 3, 4]) #== [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) #== [[1, 5, 2], [4, 3]]
p halvsies([5]) #== [[5], []]
p halvsies([]) #== [[], []]
