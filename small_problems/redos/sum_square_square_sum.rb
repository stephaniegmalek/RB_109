=begin
input: integer -> positive
output: integer -> difference between the square of the sum of the first n positive
        integers and the sum of the squares of the first n positive integers

----- Examples -----
sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

----- Data Structure -----
integers, array

----- Algorithm -----
initialize a nums variable and assign it an array
- range from 1 to argument
initialize a square_of_sums variable and assign it the sum of all elements in nums
array squared
initialize a sum_of_squares variable and assign it the sum of squares
- transform each element in nums array to square and then add all together
return difference between square_of_sums and sum_of_squares
=end

def sum_square_difference(n)
  nums = (1..n).to_a
  square_of_sums = nums.reduce(:+)**2
  sum_of_squares = nums.map {|num| num**2}.reduce(:+)
  square_of_sums - sum_of_squares
end

p sum_square_difference(3) #== 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) #== 2640
p sum_square_difference(1) #== 0
p sum_square_difference(100) #== 25164150