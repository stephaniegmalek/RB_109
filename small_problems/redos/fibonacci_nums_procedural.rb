=begin
----- Problem -----
input: n, an integer
output: the nth fibonacci number

rules:
- fibonaci sequence is a series of numbers starting with 1 and 1 where each number is
  the sum of the two previous numbers:
  - F(1) = 1
  - F(2) = 1
  - F(n) = F(n - 1) + F(n - 2) where n > 2
- method should be procedural

----- Examples -----
fibonacci(20) == 6765
fibonacci(100) == 354224848179261915075
fibonacci(100_001) # => 4202692702.....8285979669707537501

----- Data Structure -----
integers

----- Algorithm -----
initalize num 1 variable and assign to 1
initalize num 2 variable and assign to 1
initalize n variable and assign to 3
iterate until n is equal to nth
- initalize sum variable and assign to result of num 1 + num 2
- reassign num 1 to num2
- reassign num 2 to sum
- increment n by 1
return sum
=end

def fibonacci(nth)
  num1, num2 = [1, 1]
  3.upto(nth) do
    num1, num2 = num2, num1 + num2
  end
  num2
end

p fibonacci(1) #== 1
p fibonacci(2) #== 1
p fibonacci(3) #== 2
p fibonacci(4) #== 3
p fibonacci(5) #== 5
p fibonacci(12) #== 144
p fibonacci(20) #== 6765
# p fibonacci(100) #== 354224848179261915075
# p fibonacci(100_001) # => 4202692702.....8285979669707537501
