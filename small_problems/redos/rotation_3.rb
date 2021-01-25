=begin
----- Problem -----
input: integer 
output: integer -> maximum rotation of argument

rules:
- use `rotate_rightmost_digits' method 
- do not have to handle multiple zeros 
- number of maximum rotations is number of digits - 1

----- Example -----
max_rotation(735291) == 321579
rotation 1:  735291 -> 352917  -> -6..-1
rotation 2: 3 52917 -> 3 29175 -> -5..-1
rotation 3: 32 9175 -> 32 1759 -> -4..-1
rotation 4: 321 759 -> 321 597 -> -3..-1
rotation 5: 3215 97 -> 3215 79 -> -2..-1

max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
rotation 1:  105 -> 051
rotation 2: 0 51 -> 0 15

max_rotation(8_703_529_146) == 7_321_609_845

----- Data Structure -----
integers, strings, array

----- Algorithm -----
initalize num of rotation variable and assign to num of digits in argument
iterate num of rotations
- pass in number and rotation to 'rotate_rightmost_digits' method 
- assign result to number variable
return number 
=end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  num_arr = number.to_s.chars
  num_arr[-n..-1] = rotate_array(num_arr[-n..-1])
  num_arr.join.to_i
end

def max_rotation(number)
  num_of_rotations = number.to_s.size
  num_of_rotations.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end

p max_rotation(735291) == 321579
# p max_rotation(3) #== 3
# p max_rotation(35) #== 53
p max_rotation(105) #== 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) == 7_321_609_845