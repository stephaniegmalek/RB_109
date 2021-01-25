=begin
----- Problem -----
input: nth
      - how many sequences of the fibonacci sequence
output: the nth Fibonacci number

rules:
      Explicit:
      - Fibonacci series is sequence of numbers starting with 1 and 1 where each number
        is the sum of the two previous numbers:
        1 + 1 = 2, 1 + 2 = 3, 2 + 3 = 5
        F(1) = 1
        F(2) = 1
        F(n) = F(n - 1) + F(n - 2) where n > 2
        
      - method must be recursive
        - when a method calls itself 
        - has a condition that stops the recursion
        - use the result returned by themselves

----- Examples -----
fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765

----- Data Structure ----
integers

----- Algorithm -----
if n greater than 2 return 1

n - 1 + n - 2
=end

def fibonacci(n)
  return 1 if n <= 2
  fibonacci(n - 1) + fibonacci(n - 2)
end

p fibonacci(1) #== 1
p fibonacci(2) #== 1
p fibonacci(3) #== 2
p fibonacci(4) #== 3
p fibonacci(5) #== 5
p fibonacci(12) #== 144
p fibonacci(20) #== 6765