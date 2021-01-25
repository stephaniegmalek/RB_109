# ----- Problem -----
# input: an array
# output: a pair of nested arrays
#         - [[], []]
#         - contain first half and second half of original array respectively

# rules:
#       Explicit:
#       - if original array contains an odd number of elements, the middle element
#         should be placed in the first half array

# ----- Examples -----
# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# halvsies([5]) == [[5], []]
# halvsies([]) == [[], []]

# ----- Data Structure -----
# arrays, nested arrays 

# ----- Algorithm -----
# find the number of elements and divide by 2 to get middle point
# create first half array set to empty
# create second half array set to empty
# iterating thru input array
# - for each element
#   - if index is less than middle point add to first half array
#   - otherwise add to second half array

# return first half array and second half array in array 

# ----- Code -----
def halvsies(array)
  middle_idx = array.size / 2.0
  first_half = []
  second_half = []
  array.each_with_index do |ele, idx|
    if idx < middle_idx
      first_half << ele
    else
      second_half << ele
    end
  end
  [first_half, second_half]
end

def halvsies2(array)
  middle = (array.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end


p halvsies2([1, 2, 3, 4])
p halvsies2([1, 5, 2, 4, 3])
p halvsies2([1, 2, 3, 4, 5, 6, 7])
p halvsies2([5])
p halvsies2([])