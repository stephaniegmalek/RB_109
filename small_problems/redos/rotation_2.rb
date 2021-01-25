=begin
----- Problem -----
input: 2 integers
      - first is number whose digits will be rotated
      - second is the last n digits that are rotated 
        - eg, last 4 digits or last 3
rules:
- if n is 1, original number is returned
- use `rotate_array` method
- n will always be a positive integer

----- Examples -----
rotate_rightmost_digits(735291, 1) == 735291
-> 73529 1
rotate_rightmost_digits(735291, 2) == 735219
-> 7352 91
rotate_rightmost_digits(735291, 3) == 735912
-> 735 291 -> -3..-1
rotate_rightmost_digits(735291, 4) == 73 2915
-> 73 5291 -> -4..-1
rotate_rightmost_digits(735291, 5) == 7 52913
-> 7 35291 -> -5..-1
rotate_rightmost_digits(735291, 6) == 352917
-> 735291

----- Data Structure -----
integers, arrays, strings

----- Algorithm -----
- convert number to string to array
- pass in last n digits to rotate_array method 
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
