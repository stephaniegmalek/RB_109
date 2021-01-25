=begin
----- Problem -----
input: number and nth digit
output: number with nth digit rotated

rules:
    Explicit:
    - rotating just 1 digit results in the original number being returned
    - may use the `rotate_array` method
    - may assume that n is always a positive number

----- Examples -----
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

----- Data Structure -----
numbers, strings and arrays

----- Algorithm -----
convert number to string to array
split argument array at last nth number
- rotate the back half of array 
rejoin array, join back to string and convert to number

=end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  num_arr = number.to_s.chars
  num_arr[-n..-1] = rotate_array(num_arr[-n..-1])

  num_arr.join.to_i
end

p rotate_rightmost_digits(735291, 1) #== 735291
p rotate_rightmost_digits(735291, 2) #== 735219
p rotate_rightmost_digits(735291, 3) #== 735912
p rotate_rightmost_digits(735291, 4) #== 732915
p rotate_rightmost_digits(735291, 5) #== 752913
p rotate_rightmost_digits(735291, 6) #== 352917