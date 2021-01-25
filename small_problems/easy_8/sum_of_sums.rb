# ----- Problem -----
# input: array of numbers
# output: sum of the sums of each leading subsequence for argument array

# rules:
#       Explicit:
#       - the array will always contain at least one number

# ----- Examples -----
# sum_of_sums([3, 5, 2]) 
# == (3) + (3 + 5) + (3 + 5 + 2) 
# == 3 + 8 + 10 
# == (21)

# sum_of_sums([1, 5, 7, 3]) 
# == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) 
# == 1 + 6 + 13 + 16
# == (36)

# sum_of_sums([4]) == 4

# sum_of_sums([1, 2, 3, 4, 5]) 
# == (1) + (1 + 2) + (1 + 2 + 3) + (1 + 2 + 3 + 4) + (1, 2, 3, 4, 5)
# == 1 + 3 + 6 + 10 + 15
# == 35

# ----- Data Structure -----
# array of integers, sums

# ----- Algorithm -----
# mental model:
# - start with sum as 0 and add first number to it. now add second number to sum, 
#   that's sums new value. repeat for each number in list. now add each sum together

# create sum variable and assign to 0
# iterate thru list of numbers transform each number to sum
# - for each number, add to sum and assign sum to new value 
# add all sums together

# ----- Code -----
def sum_of_sums(array)
  sum = 0
  array.map { |num| sum += num }.reduce(:+)
end

p sum_of_sums([3, 5, 2])
p sum_of_sums([1, 5, 7, 3])
p sum_of_sums([4])
p sum_of_sums([1, 2, 3, 4, 5])

# Solution 2
def sum_of_sums_2(numbers)
  sum_total = 0
  1.upto(numbers.size) do |count|
    sum_total += numbers.slice(0, count).reduce(:+)
  end
  sum_total
end