=begin
----- Problem -----
input: n, an integer
output: an integer, the nth Fibonacci number

rules:
- must be a recursive method
  - calls itself once
  - have a condition to stop the recursion
  - use the result returned by self
- fibonaci sequence is a series of numbers starting with 1 and 1 where each number is
  the sum of the two previous numbers:
  - F(1) = 1
  - F(2) = 1
  - F(n) = F(n - 1) + F(n - 2) where n > 2

----- Examples -----
fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
f(1) + f(2)
f(n - 2) + f(n - 1)

fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765

----- Data Structure -----
integers

----- Algorithm -----
if n is less than 2, return 1
f(n - 2) + f(n - 1)
=end

def fibonacci(n)
  return 1 if n <= 2
  fibonacci(n - 2) + fibonacci(n - 1)
end

p fibonacci(1) #== 1
p fibonacci(2) #== 1
p fibonacci(3) #== 2
p fibonacci(4) #== 3
p fibonacci(5) #== 5
p fibonacci(12) #== 144
p fibonacci(20) #== 6765