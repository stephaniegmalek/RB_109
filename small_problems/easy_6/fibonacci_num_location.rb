# ----- Problem -----
# input: number of digits
# output: index of the first Fibonacci number that has the number of digits
#         specified by the input

# rules:
#       Explicit:
#       - Fibonacci series is a series of numbers: 1, 1, 2, 3, 5, 8, 13, 21
#         - first 2 nums are 1 
#         - each subsequent num is sum of previous 2 nums
#       - the first Fibonacci number has an index of 1
#       - arguments is always greater than or equal to 2

# ----- Examples -----
# find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# find_fibonacci_index_by_length(10) == 45
# find_fibonacci_index_by_length(100) == 476
# find_fibonacci_index_by_length(1000) == 4782
# find_fibonacci_index_by_length(10000) == 47847

# ----- Data Structure -----
# numbers/integers

# ----- Algorithm -----
# Calculate the Fibonacci series
# - first num is 1
# - second num is 1
# - sum is first num added to second num
# - first num is now second num
# - second num is now sum
# - repeat 

# Check is subsequent numbers size / number of digits and compare to argument 

# ----- Code -----

def find_fibonacci_index_by_length(length)
  first_num = 1
  second_num = 1
  index = 2
  loop do
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
    index += 1
    break if sum.to_s.size == length
  end
  index
end

p find_fibonacci_index_by_length(2) # == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) # == 12
p find_fibonacci_index_by_length(10) # == 45
p find_fibonacci_index_by_length(100) # == 476
p find_fibonacci_index_by_length(1000) # == 4782
p find_fibonacci_index_by_length(10000) # == 47847