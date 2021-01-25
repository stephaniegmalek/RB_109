=begin
----- Problem -----
input: number
output: number after max rotations

rules:
    Explicit:
    - use `rotate_rightmost_digits` method
    - do not have to handle multiple zeroes
    Implicit:
    - max rotations is same as number of digits

----- Examples -----
max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845

----- Data Structure -----
numbers, strings, arrays

----- Algorithm -----
convert number to string to array
initialize variable to keep track of rotation 
for each rotation rotate the last nth number
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

def max_rotation(number)
  (number.to_s.size).downto(1) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end

# p max_rotation(735291) #== 321579
# p max_rotation(3) #== 3
# p max_rotation(35) #== 53
# p max_rotation(105) #== 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) #== 7_321_609_845

# Further Exploration
def full_rotation(number)
  num_arr = number.to_s.chars
  0.upto(num_arr.size - 2) do |idx|
   num_arr << num_arr.slice!(idx)
  end
  num_arr.join
end

p full_rotation(735291)
p full_rotation(100200)
p full_rotation(300)