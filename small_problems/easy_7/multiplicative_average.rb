# ----- Problem -----
# input: an array of integers
# output: a string containing the result with 3 decimal places
#         - the result of multipling all the integers in the argument array together
#           then dividing by the number of entries in the array

# rules:
#       Explicit:
#       - assume argument array is non-empty


# ----- Examples -----
# show_multiplicative_average([3, 5])                # => The result is 7.500
# show_multiplicative_average([6])                   # => The result is 6.000
# show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

# ----- Data Structure -----
# arrays, integers, floats, strings

# ----- Algorithm -----
# mental model:
# - multiple all integers of array together, divide by size of array and round
#   result to 3 decimal places

# create product variable and assign it to 1
# iterate thru each element of array
# - multiple each element of array with product and assign product the result
# divide product by the size of the array to get average
# print out "the resut is average" with average containing 3 decimals

# ----- Code -----
def show_multiplicative_average(array)
  product = 1.0
  array.each { |num| product *= num }
  average = product / array.size
  puts "The result is #{format('%.3f', average)}"
end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

# Another version
def show_multiplicative_average2(array)
  product = array.inject(&:*).to_f
  average = product / array.size
  puts "The result is #{format('%.3f', average)}"
end

show_multiplicative_average2([3, 5])