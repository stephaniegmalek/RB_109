# ----- Problem -----
# input: array of integers
# output: average of integers in given array
# rules:
#       Explicit:
#       - input array will never be empty
#       - numbers in given array will always be positive integers
# mental model:
# - Add all of elements in array together, divide by number of elements in array

# ----- Examples -----
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# ----- Data Structures -----
# arrays, integers

# ----- Algorithm -----
# sum of array / array length

# ----- Code -----
def average(array)
  array.reduce(:+).to_f / array.length
end

puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])
