# ----- Problem -----
# input: number / integer
# output: number / integer
#  - the sum of the multiples of 3 and 5 between 1 and input number

# rules:
#   Explicit:
#   - the input number is greater than 1 
#   Implicit:
#   - there are no duplicates / repeats in the group of multiples

# ----- Examples -----
# multisum(3) == 3 
# multisum(5) == 8 --> (3 + 5)
# multisum(10) == 33 --> (3 + 5 + 6 + 9 + 10)
# multisum(1000) == 234168
# multisum(20) == 98 --> (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20)

# ----- Data Structure -----
# array of integers, range 1 to input number

# ----- Algorithm -----
# 1. create an empty array called multiples
# 2. Add multiples of 3 and 5 between 1 and input number to multiples array
#     - iterate through each number between 1 and input number
#       - if multiple of 3 or 5 add to multiples array
# 3. Sum up multiples array
# 4. Return sum 

# ----- Code -----
def multisum(number)
  multiples = []
  1.upto(number) do |num|
    multiples << num if num % 3 == 0 || num % 5 == 0
  end
  multiples.sum
end

p multisum(3)
p multisum(5)
p multisum(10)
p multisum(20)
p multisum(1000)
p multisum(2)