# ----- Problem -----
# input: array and search value
# output: boolean -> true or false
#       - return true if the search value is in the array
#       - return false if the search value is not in the array

# rules:
#       Explicit:
#       - cannot use the built in method `Array#include?`

# ----- Examples -----
# include?([1,2,3,4,5], 3) == true
# include?([1,2,3,4,5], 6) == false
# include?([], 3) == false
# include?([nil], nil) == true
# include?([], nil) == false

# ----- Data Structure -----
# arrays

# ----- Algorithm -----
# iterate thru input array
# - compare each element to search value
#   - if same return true
#   - else return false

# ----- Code -----
def include?(array, value)
  array.each { |element| return true if element == value }
  false
end

def include2?(array, value)
  !!array.find_index(value)
end

p include?([1, 2, 3, 4, 5], 3)
p include?([1,2,3,4,5], 6)
p include?([], 3)
p include?([nil], nil)
p include?([], nil)