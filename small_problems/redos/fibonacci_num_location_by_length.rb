=begin
----- Problem -----
input: integer
       - number of digits
output: integer
        - index of the first fibonacci number that has the num of digits specified
          in input/argument
rules:
- argument is always greater than or equal to 2
- fibonacci sequence is 1 1 2 3 5 8 13 21
  - each subsequent number is the sum of the previous two:
    1 + 1 = 2
    1 + 2 = 3
    2 + 3 = 5
    3 + 5 = 8
    5 + 8 = 13
    8 + 13 = 21

----- Examples -----
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

----- Data Structure -----
integers

----- Algorithm -----
initialize num 1 variable to 1
initialize num 2 variable to 2
initialize count to 3
begin looping until sum is number of digits specified by argument
- initialize sum variable to num 1 + num 2
- increment count

return count
=end

def find_fibonacci_index_by_length(length)
  num1 = 1
  num2 = 1
  index = 2
  
  loop do
    index += 1
    sum = num1 + num2
    break if sum.to_s.size == length
    
    num1 = num2
    num2 = sum
  end
  index
end

p find_fibonacci_index_by_length(2) #== 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) #== 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) #== 45
p find_fibonacci_index_by_length(100) #== 476
p find_fibonacci_index_by_length(1000) #== 4782
p find_fibonacci_index_by_length(10000) #== 47847