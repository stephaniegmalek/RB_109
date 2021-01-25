=begin
----- Problem -----
input: array of integers
output: float rounded to 3 decimal places
        - multiple all integers together and divide by number of elements in array
rules:
- assume array is non-empty

----- Examples -----
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

----- Data Structure -----
array, integers, float

----- Algorithm -----
multiple all elements together
find size of array and make float
divide product by array size and round to 3 decimals

=end

def show_multiplicative_average(array)
  avg = array.reduce(&:*)/array.size.to_f
  puts "The result is #{format('%.3f', avg)}"
end

p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667