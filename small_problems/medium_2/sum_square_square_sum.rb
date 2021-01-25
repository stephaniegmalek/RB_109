=begin 
----- Problem -----
input: positive integers
output: the difference between the square of the sum of the first n positive integers
        and the sum of the squares of the first n positive integers

----- Examples -----
sum_square_difference(3) #== 22
# -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
# -> (6) **2 - (1 + 4 + 9)
# -> 36 - 14
# -> 22

sum_square_difference(10) #== 2640
# -> (1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10)**2 - (1**2 + 2**2 + 3**2 + 4**2 + 
      5**2 + 6**2 + 7**2 + 8**2 + 9**2 + 10**2)
# -> 55**2 - (1**2 + 2**2 + 3**2 + 4**2 + 5**2 + 6**2 + 7**2 + 8**2 + 9**2 + 10**2)
# -> 3025 - (1**2 + 2**2 + 3**2 + 4**2 + 5**2 + 6**2 + 7**2 + 8**2 + 9**2 + 10**2)
# -> 3025 - (1 + 4 + 9 + 16 + 25 + 36 + 49 + 64 + 81 + 100)
# -> 3025 - 385
# -> 2640

sum_square_difference(1) #== 0
sum_square_difference(100) #== 25164150

----- Data Structure -----
ranges, integers, arrays

----- Algorithm -----
initialize array from 1 to num
add all elements together 
square result

initialize second array from 1 to num
iterate thru array and square each element
add all elements together

subtract second result from first
=end

def sum_square_difference(num)
  sum = (1..num).to_a.reduce(:+)**2
  square = (1..num).to_a.map {|n| n**2}.reduce(:+)
  sum - square
end

# p sum_square_difference(3) #== 22
# p sum_square_difference(10) #== 2640
# p sum_square_difference(1) #== 0
# p sum_square_difference(100) #== 25164150

# Alternative 
# initialize sum variable
# initialize square variable
# iterate from 1 to num
# - add each n to sum
# - square each n and add to square
# square sum and subtract square 

def sum_square_difference_other(num)
  sum = 0
  square = 0
  1.upto(num) do |n|
    sum += n
    square += n**2
  end
  sum**2 - square 
end

p sum_square_difference_other(3)
p sum_square_difference_other(10)
p sum_square_difference_other(1)
p sum_square_difference_other(100)